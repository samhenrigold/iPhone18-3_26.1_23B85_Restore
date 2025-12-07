void *sub_1C6D3784C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = sub_1C6D78630();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v60 - v17;
  sub_1C6B3C1F8(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v69 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 200))
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDCE7188;
    v24 = sub_1C6D79AC0();
    sub_1C6D78D30("Found no configured maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings, not pruning embeddings", 102, 2, &dword_1C6B09000, v23, v24, MEMORY[0x1E69E7CC0]);
    goto LABEL_14;
  }

  v25 = *(a1 + 192);
  swift_beginAccess();
  v26 = v25 * *a4;
  if (COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v26 < 9.22337204e18)
  {
    v67 = v20;
    v4 = v26;
    if (qword_1EDCE7180 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_9:
  sub_1C6B1D314(0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C6D7EB10;
  v28 = MEMORY[0x1E69E6438];
  *(v27 + 56) = MEMORY[0x1E69E63B0];
  *(v27 + 64) = v28;
  v29 = MEMORY[0x1E69E6530];
  *(v27 + 32) = v25;
  v30 = MEMORY[0x1E69E65A8];
  *(v27 + 96) = v29;
  *(v27 + 104) = v30;
  *(v27 + 72) = v4;
  sub_1C6D79AC0();
  sub_1C6D78D30("Pruning with maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings of %f resulting in a maxAllowedSeenEmbeddings of %lu", v60, v61);

  swift_beginAccess();
  v31 = *a3;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C6D7E630;
  *(v32 + 56) = v29;
  *(v32 + 64) = v30;
  *(v32 + 32) = v4;
  sub_1C6D79AC0();
  if (v31 <= v4)
  {
    sub_1C6D78D30("Count of label 0 article embeddings did not exceed maximum of %lu", *&v60);

LABEL_14:

    v42 = sub_1C6D32424(v41);

    swift_beginAccess();
    return v42;
  }

  sub_1C6D78D30("Preparing to prune 0 label embeddings to total of %lu", *&v60);

  v33 = *a2;
  v34 = *(*a2 + 16);
  if (v34)
  {
    v35 = v4;
    v36 = sub_1C6B67500(*(*a2 + 16), 0);
    v37 = v67;
    sub_1C6B68478(v71, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v34, v33);
    v39 = v38;
    v40 = v71[0];
    v65 = v71[3];
    v66 = v71[2];
    v64 = v71[4];
    swift_bridgeObjectRetain_n();
    sub_1C6B688C4(v40);
    if (v39 != v34)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = v35;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
    v37 = v67;
  }

  v62 = v4;
  v71[0] = v36;
  sub_1C6D32814(v71);

  v44 = *(v71[0] + 16);
  if (v44)
  {
    v64 = 0;
    v45 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v61 = v71[0];
    v46 = v71[0] + v45;
    v47 = *(v37 + 72);
    v48 = (v68 + 32);
    v65 = (v68 + 16);
    v66 = (v68 + 8);
    v67 = v47;
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v52 = v69;
      sub_1C6D3B544(v46, v69, sub_1C6B3C1F8);
      v53 = *v48;
      (*v48)(v18, v52, v9);
      if (sub_1C6D78620())
      {
        (*v65)(v70, v18, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1C6B67290(0, v42[2] + 1, 1, v42);
        }

        v55 = v42[2];
        v54 = v42[3];
        if (v55 >= v54 >> 1)
        {
          v42 = sub_1C6B67290((v54 > 1), v55 + 1, 1, v42);
        }

        v49 = v68;
        (*(v68 + 8))(v18, v9);
        v42[2] = v55 + 1;
        v50 = v42 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55;
        v51 = v70;
      }

      else
      {
        v56 = v64;
        if (v64 >= v62)
        {
          (*v66)(v18, v9);
          goto LABEL_21;
        }

        (*v65)(v63, v18, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1C6B67290(0, v42[2] + 1, 1, v42);
        }

        v58 = v42[2];
        v57 = v42[3];
        if (v58 >= v57 >> 1)
        {
          v42 = sub_1C6B67290((v57 > 1), v58 + 1, 1, v42);
        }

        v64 = v56 + 1;
        v59 = v68;
        (*(v68 + 8))(v18, v9);
        v42[2] = v58 + 1;
        v50 = v42 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58;
        v51 = v63;
      }

      v53(v50, v51, v9);
LABEL_21:
      v46 += v67;
      if (!--v44)
      {

        return v42;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C6D37FE8(void *a1)
{
  v3 = v1;
  sub_1C6D3BC64(0, &unk_1EC1D98F8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D3BC10();
  sub_1C6D7A300();
  LOBYTE(v14) = 0;
  sub_1C6D7A080();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = v14;
    v13[23] = 1;
    sub_1C6D3BCC8(&v15, v13);
    sub_1C6B1CCBC();
    sub_1C6D7A090();
    sub_1C6B1C9F0(v14, *(&v14 + 1));
    LOBYTE(v14) = 2;
    sub_1C6D7A040();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6D381C0()
{
  v1 = 0x6E69646465626D65;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1C6D38220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6D3B894(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6D38248(uint64_t a1)
{
  v2 = sub_1C6D3BC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6D38284(uint64_t a1)
{
  v2 = sub_1C6D3BC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C6D382C0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1C6D3B9AC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C6D383D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1C6D78EB0();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6D384A0, 0, 0);
}

uint64_t sub_1C6D384A0(uint64_t a1)
{
  if (qword_1EDCE7180 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCE7188;
  *(v1 + 112) = qword_1EDCE7188;
  v3 = sub_1C6D79AC0();
  sub_1C6D78D30("Generating user embedding", 25, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
  sub_1C6D78EA0();
  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v1;
  v4[1] = sub_1C6D385B0;

  return sub_1C6D328BC(v1 + 32);
}

uint64_t sub_1C6D385B0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1C6D3883C;
  }

  else
  {

    v2 = sub_1C6D386CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1C6D386CC(uint64_t a1)
{
  sub_1C6D78EA0();
  sub_1C6B1D314(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  v3 = sub_1C6D78E90();
  result = sub_1C6D78E90();
  v5 = v3 - result;
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = v1[13];
    v8 = v1[11];
    v7 = v1[12];
    v9 = v1[10];
    v10 = v1[8];
    v11 = MEMORY[0x1E69E6438];
    *(v2 + 56) = MEMORY[0x1E69E63B0];
    *(v2 + 64) = v11;
    *(v2 + 32) = v5 / 1000000.0;
    sub_1C6D79AC0();
    sub_1C6D78D30("Finished generating user embeddings in %.0f milliseconds", v15);

    v10(v12);
    v13 = *(v8 + 8);
    v13(v7, v9);
    v13(v6, v9);

    v14 = v1[1];

    return v14();
  }

  return result;
}

uint64_t sub_1C6D3883C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[8];
  (*(v0[11] + 8))(v0[13], v0[10]);
  v4 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v5 = swift_allocObject();
  v0[2] = 0;
  *(v5 + 16) = xmmword_1C6D7E630;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v6 = v0[2];
  v7 = v0[3];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1C6D78D30("Failed to generate user embedding %{public}@", 44, 2, &dword_1C6B09000, v2, v4, v5);

  v3(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C6D389B8()
{
  UserEmbeddingManager.userEmbedding.getter(&v6);
  v0 = v6;
  if (v6)
  {
    v1 = v7;
    sub_1C6D75B70();
    swift_allocObject();
    sub_1C6D75B60();
    v6 = v0;
    v7 = v1;
    sub_1C6D3B73C();
    v4 = sub_1C6D75B50();

    return v4;
  }

  else
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDCE7188;
    v3 = sub_1C6D79AA0();
    sub_1C6D78D30("failed to obtain user embedding", 31, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
    return 0;
  }
}

uint64_t sub_1C6D38BD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C6BB6A40;

  return sub_1C6D383D0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1C6D38CB4()
{
  result = qword_1EDCE6530;
  if (!qword_1EDCE6530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE6530);
  }

  return result;
}

void sub_1C6D38D1C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
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
        sub_1C6B3C1F8(0);
        v6 = sub_1C6D797F0();
        *(v6 + 16) = v5;
      }

      sub_1C6B3C1F8(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1C6D390A0(v8, v9, a1, v4);
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
    sub_1C6D38E48(0, v2, 1, a1);
  }
}

void sub_1C6D38E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6B3C1F8(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v32 - v20;
  v34 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v39 = v22;
    v33 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v37 = v24;
    v38 = a3;
    v35 = v27;
    v36 = v26;
    while (1)
    {
      sub_1C6D3B544(v27, v21, sub_1C6B3C1F8);
      sub_1C6D3B544(v24, v16, sub_1C6B3C1F8);
      v28 = *(v9 + 48);
      v29 = *&v21[v28];
      v30 = *&v16[v28];
      sub_1C6D3B6DC(v16, sub_1C6B3C1F8);
      sub_1C6D3B6DC(v21, sub_1C6B3C1F8);
      if (v30 >= v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v24 = v37 + v33;
        v26 = v36 - 1;
        v27 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      sub_1C6D3B674(v27, v12, sub_1C6B3C1F8);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C6D3B674(v12, v24, sub_1C6B3C1F8);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D390A0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v115 = a1;
  sub_1C6B3C1F8(0);
  v10 = v9;
  v123 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v118 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v126 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v127 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v112 - v21;
  v125 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_135;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = a4;
    }

    else
    {
LABEL_129:
      v107 = sub_1C6C73C90(a4);
    }

    v129 = v107;
    a4 = *(v107 + 2);
    if (a4 >= 2)
    {
      while (*v125)
      {
        v108 = *&v107[16 * a4];
        v109 = v107;
        v110 = *&v107[16 * a4 + 24];
        sub_1C6D39A04(*v125 + *(v123 + 72) * v108, *v125 + *(v123 + 72) * *&v107[16 * a4 + 16], *v125 + *(v123 + 72) * v110, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v110 < v108)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_1C6C73C90(v109);
        }

        if (a4 - 2 >= *(v109 + 2))
        {
          goto LABEL_123;
        }

        v111 = &v109[16 * a4];
        *v111 = v108;
        *(v111 + 1) = v110;
        v129 = v109;
        sub_1C6C73C04(a4 - 1);
        v107 = v129;
        a4 = *(v129 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v114 = a4;
  v128 = v10;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v119 = v25;
    if (v24 + 1 >= v23)
    {
      v23 = v24 + 1;
    }

    else
    {
      v28 = *(v123 + 72);
      v5 = *v125 + v28 * v27;
      v122 = *v125;
      v29 = v122;
      sub_1C6D3B544(v122 + v28 * v27, v22, sub_1C6B3C1F8);
      v30 = v29 + v28 * v26;
      v31 = v26;
      v32 = v127;
      sub_1C6D3B544(v30, v127, sub_1C6B3C1F8);
      v33 = *(v10 + 48);
      v34 = *&v22[v33];
      v35 = *(v32 + v33);
      sub_1C6D3B6DC(v32, sub_1C6B3C1F8);
      sub_1C6D3B6DC(v22, sub_1C6B3C1F8);
      v113 = v31;
      v36 = v31 + 2;
      v124 = v28;
      v37 = v122 + v28 * (v31 + 2);
      while (v23 != v36)
      {
        sub_1C6D3B544(v37, v22, sub_1C6B3C1F8);
        v38 = v127;
        sub_1C6D3B544(v5, v127, sub_1C6B3C1F8);
        v39 = *(v128 + 48);
        v40 = *&v22[v39];
        v41 = *(v38 + v39);
        sub_1C6D3B6DC(v38, sub_1C6B3C1F8);
        sub_1C6D3B6DC(v22, sub_1C6B3C1F8);
        ++v36;
        v37 += v124;
        v5 += v124;
        if (v35 < v34 == v41 >= v40)
        {
          v23 = v36 - 1;
          break;
        }
      }

      v26 = v113;
      a4 = v114;
      v10 = v128;
      if (v35 < v34)
      {
        if (v23 < v113)
        {
          goto LABEL_126;
        }

        if (v113 < v23)
        {
          v112 = v6;
          v42 = v124 * (v23 - 1);
          v43 = v23 * v124;
          v44 = v23;
          v45 = v23;
          v46 = v113;
          v47 = v113 * v124;
          do
          {
            if (v46 != --v45)
            {
              v48 = *v125;
              if (!*v125)
              {
                goto LABEL_132;
              }

              v5 = v48 + v47;
              sub_1C6D3B674(v48 + v47, v118, sub_1C6B3C1F8);
              if (v47 < v42 || v5 >= v48 + v43)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C6D3B674(v118, v48 + v42, sub_1C6B3C1F8);
            }

            ++v46;
            v42 -= v124;
            v43 -= v124;
            v47 += v124;
          }

          while (v46 < v45);
          v6 = v112;
          v26 = v113;
          a4 = v114;
          v10 = v128;
          v23 = v44;
        }
      }
    }

    v49 = v125[1];
    if (v23 < v49)
    {
      if (__OFSUB__(v23, v26))
      {
        goto LABEL_125;
      }

      if (v23 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_127;
        }

        if ((v26 + a4) >= v49)
        {
          v50 = v125[1];
        }

        else
        {
          v50 = v26 + a4;
        }

        if (v50 < v26)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v23 != v50)
        {
          break;
        }
      }
    }

    v24 = v23;
    if (v23 < v26)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v119;
    }

    else
    {
      v25 = sub_1C6B657D0(0, *(v119 + 2) + 1, 1, v119);
    }

    a4 = *(v25 + 2);
    v51 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v51 >> 1)
    {
      v25 = sub_1C6B657D0((v51 > 1), a4 + 1, 1, v25);
    }

    *(v25 + 2) = v5;
    v52 = &v25[16 * a4];
    *(v52 + 4) = v26;
    *(v52 + 5) = v24;
    v53 = *v115;
    if (!*v115)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v54 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v55 = *(v25 + 4);
          v56 = *(v25 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_52:
          if (v58)
          {
            goto LABEL_113;
          }

          v71 = &v25[16 * v5];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_116;
          }

          v77 = &v25[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_120;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v81 = &v25[16 * v5];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_66:
        if (v76)
        {
          goto LABEL_115;
        }

        v84 = &v25[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_118;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v54 - 1;
        if (v54 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v125)
        {
          goto LABEL_131;
        }

        v92 = v25;
        v93 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v54 + 40];
        sub_1C6D39A04(*v125 + *(v123 + 72) * v93, *v125 + *(v123 + 72) * *&v25[16 * v54 + 32], *v125 + *(v123 + 72) * v5, v53);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v93)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v94 = v92;
        }

        else
        {
          v94 = sub_1C6C73C90(v92);
        }

        v10 = v128;
        if (a4 >= *(v94 + 2))
        {
          goto LABEL_110;
        }

        v95 = &v94[16 * a4];
        *(v95 + 4) = v93;
        *(v95 + 5) = v5;
        v129 = v94;
        sub_1C6C73C04(v54);
        v25 = v129;
        v5 = *(v129 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v25[16 * v5 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_111;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_112;
      }

      v66 = &v25[16 * v5];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_114;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_117;
      }

      if (v70 >= v62)
      {
        v88 = &v25[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_121;
        }

        if (v57 < v91)
        {
          v54 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = v125[1];
    a4 = v114;
    if (v24 >= v23)
    {
      goto LABEL_96;
    }
  }

  v112 = v6;
  v113 = v26;
  a4 = *v125;
  v96 = *(v123 + 72);
  v97 = *v125 + v96 * (v23 - 1);
  v98 = -v96;
  v99 = v26 - v23;
  v116 = v96;
  v117 = v50;
  v5 = a4 + v23 * v96;
LABEL_86:
  v124 = v23;
  v120 = v5;
  v121 = v99;
  v122 = v97;
  v100 = v128;
  while (1)
  {
    sub_1C6D3B544(v5, v22, sub_1C6B3C1F8);
    v101 = v127;
    sub_1C6D3B544(v97, v127, sub_1C6B3C1F8);
    v102 = *(v100 + 48);
    v103 = *&v22[v102];
    v104 = *(v101 + v102);
    sub_1C6D3B6DC(v101, sub_1C6B3C1F8);
    sub_1C6D3B6DC(v22, sub_1C6B3C1F8);
    if (v104 >= v103)
    {
LABEL_85:
      v23 = v124 + 1;
      v24 = v117;
      v97 = v122 + v116;
      v99 = v121 - 1;
      v5 = v120 + v116;
      if (v124 + 1 != v117)
      {
        goto LABEL_86;
      }

      v6 = v112;
      v26 = v113;
      v10 = v128;
      if (v117 < v113)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v105 = v126;
    sub_1C6D3B674(v5, v126, sub_1C6B3C1F8);
    v100 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6D3B674(v105, v97, sub_1C6B3C1F8);
    v97 += v98;
    v5 += v98;
    if (__CFADD__(v99++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1C6D39A04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = a3;
  sub_1C6B3C1F8(0);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v44 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v53 = a1;
  v52 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44[1] = v4;
    v27 = a4 + v20;
    if (v20 < 1)
    {
      v30 = a4 + v20;
    }

    else
    {
      v28 = -v16;
      v29 = a4 + v20;
      v30 = v27;
      v46 = v28;
      v47 = a4;
      do
      {
        v44[0] = v30;
        v31 = a2;
        v32 = a2 + v28;
        while (1)
        {
          v34 = v50;
          if (v31 <= a1)
          {
            v53 = v31;
            v51 = v44[0];
            goto LABEL_59;
          }

          v45 = v30;
          v50 += v28;
          v35 = v29 + v28;
          sub_1C6D3B544(v35, v14, sub_1C6B3C1F8);
          v36 = v32;
          v37 = v32;
          v38 = v14;
          v39 = v48;
          sub_1C6D3B544(v37, v48, sub_1C6B3C1F8);
          v40 = *(v49 + 48);
          v41 = *(v38 + v40);
          v42 = *(v39 + v40);
          v43 = v39;
          v14 = v38;
          sub_1C6D3B6DC(v43, sub_1C6B3C1F8);
          sub_1C6D3B6DC(v38, sub_1C6B3C1F8);
          if (v42 < v41)
          {
            break;
          }

          v30 = v35;
          if (v34 < v29 || v50 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v36;
          }

          else
          {
            v32 = v36;
            if (v34 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v47;
          v28 = v46;
          if (!v33)
          {
            a2 = v31;
            goto LABEL_58;
          }
        }

        if (v34 < v31 || v50 >= v31)
        {
          a2 = v36;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v45;
          v28 = v46;
        }

        else
        {
          v30 = v45;
          v28 = v46;
          a2 = v36;
          if (v34 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v47);
    }

LABEL_58:
    v53 = a2;
    v51 = v30;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v19;
    v51 = a4 + v19;
    if (v19 >= 1 && a2 < v50)
    {
      do
      {
        sub_1C6D3B544(a2, v14, sub_1C6B3C1F8);
        v23 = v48;
        sub_1C6D3B544(a4, v48, sub_1C6B3C1F8);
        v24 = *(v49 + 48);
        v25 = *&v14[v24];
        v26 = *(v23 + v24);
        sub_1C6D3B6DC(v23, sub_1C6B3C1F8);
        sub_1C6D3B6DC(v14, sub_1C6B3C1F8);
        if (v26 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = a4 + v16;
          a4 += v16;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        a1 += v16;
        v53 = a1;
      }

      while (a4 < v21 && a2 < v50);
    }
  }

LABEL_59:
  sub_1C6C73DEC(&v53, &v52, &v51);
}

uint64_t sub_1C6D39EFC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C6D7A260();
  sub_1C6D79610();
  v6 = sub_1C6D7A2B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C6D7A130() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C6C25AB0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1C6D3A2E8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1C6D3A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C6D75DE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1C6D3B790(&unk_1EDCE7B10, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v33 = a1;
  v11 = sub_1C6D79500();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = v6;
    v30 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v32 + 48) + v19 * v14, v5);
      sub_1C6D3B790(&unk_1EDCE7B00, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v20 = sub_1C6D79560();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v29;
        a2 = v30;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    v34 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6C25D64(v24);
      v25 = v34;
    }

    v6 = v29;
    a2 = v30;
    (*(v29 + 32))(v30, *(v25 + 48) + v19 * v14, v5);
    sub_1C6D3A4AC(v14);
    v21 = 0;
    *v22 = v34;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

unint64_t sub_1C6D3A2E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C6D79CD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C6D7A260();

        sub_1C6D79610();
        v10 = sub_1C6D7A2B0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C6D3A4AC(int64_t a1)
{
  v3 = sub_1C6D75DE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1C6D79CD0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1C6D3B790(&unk_1EDCE7B10, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        v24 = sub_1C6D79500();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }
}

uint64_t sub_1C6D3A7B8()
{
  v0 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v80 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v79, v3);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1C6D78630();
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v5);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75CD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75DE0();
  v83 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v66 - v18;
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 URLsForDirectory:13 inDomains:1];

  v23 = sub_1C6D79780();
  if (*(v23 + 16))
  {
    (*(v83 + 16))(v19, v23 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v12);

    *&v84 = 0xD000000000000017;
    *(&v84 + 1) = 0x80000001C6DA8F70;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F70], v7);
    sub_1C6B16CF0();
    sub_1C6D75DD0();
    (*(v8 + 8))(v11, v7);
    v24 = [v20 defaultManager];
    sub_1C6D75DB0();
    v25 = sub_1C6D79570();

    v26 = [v24 fileExistsAtPath_];

    v27 = v83;
    if (v26)
    {
      v73 = v19;
      if (qword_1EDCE7180 != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v28 = qword_1EDCE7188;
        sub_1C6B1D314(0);
        v75 = v29;
        v30 = swift_allocObject();
        v74 = xmmword_1C6D7E630;
        *(v30 + 16) = xmmword_1C6D7E630;
        sub_1C6D3B790(&qword_1EDCEA3B0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v31 = sub_1C6D7A0E0();
        v33 = v32;
        *(v30 + 56) = MEMORY[0x1E69E6158];
        v23 = sub_1C6B2064C();
        *(v30 + 64) = v23;
        *(v30 + 32) = v31;
        *(v30 + 40) = v33;
        v34 = sub_1C6D79AC0();
        v35 = v28;
        sub_1C6D78D30("Found overrides at %{public}@", 29, 2, &dword_1C6B09000, v28, v34, v30);

        v36 = v76;
        v37 = sub_1C6D75E00();
        if (v36)
        {
          v39 = *(v27 + 8);
          v39(v15, v12);
          v39(v73, v12);
          return v23;
        }

        v46 = v38;
        v47 = v37;
        v48 = swift_allocObject();
        *(v48 + 16) = v74;
        v49 = sub_1C6D75E20();
        *(v48 + 56) = MEMORY[0x1E69E6158];
        *(v48 + 64) = v23;
        *(v48 + 32) = v49;
        *(v48 + 40) = v50;
        v51 = sub_1C6D79AC0();
        sub_1C6D78D30("Found data %{public}@", 21, 2, &dword_1C6B09000, v35, v51, v48);

        sub_1C6D75B10();
        swift_allocObject();
        sub_1C6D75B00();
        sub_1C6B1B49C(0, &qword_1EC1D98C8, &type metadata for AppUserEmbeddingManager.Override, MEMORY[0x1E69E62F8]);
        sub_1C6D3B2F0();
        sub_1C6D75AF0();
        v68 = v47;

        v52 = v84;
        v53 = swift_allocObject();
        *(v53 + 16) = v74;
        v54 = *(v52 + 16);
        v55 = MEMORY[0x1E69E65A8];
        *(v53 + 56) = MEMORY[0x1E69E6530];
        *(v53 + 64) = v55;
        *(v53 + 32) = v54;
        sub_1C6D79AC0();
        sub_1C6D78D30("Found %lu overrides", v66);

        if (!v54)
        {
          break;
        }

        v66 = v46;
        v76 = 0;
        v67 = v15;
        v87 = MEMORY[0x1E69E7CC0];
        sub_1C6B39AC8(0, v54, 0);
        v56 = 0;
        v23 = v87;
        v69 = v82 + 32;
        v15 = (v52 + 64);
        v71 = v52;
        v72 = v12;
        v70 = v54;
        while (v56 < *(v52 + 16))
        {
          *&v74 = v56;
          v75 = v23;
          v57 = *(v15 - 3);
          v58 = *(v15 - 2);
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          sub_1C6B1CD10(v57, v58);

          sub_1C6B1CD10(v57, v58);
          sub_1C6D78A70();
          sub_1C6D3B790(&qword_1EDCEA770, 255, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v59 = v78;
          v60 = v76;
          sub_1C6D78BE0();
          v76 = v60;
          if (v60)
          {

            sub_1C6B1C9F0(v68, v66);
            sub_1C6B1C9F0(v57, v58);

            v64 = *(v83 + 8);
            v23 = v72;
            v64(v67, v72);
            v64(v73, v23);

            return v23;
          }

          sub_1C6B1CD10(*v59, *(v59 + 8));
          sub_1C6D3B6DC(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D78610();
          sub_1C6B1C9F0(v57, v58);

          v23 = v75;
          v87 = v75;
          v62 = *(v75 + 16);
          v61 = *(v75 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C6B39AC8((v61 > 1), v62 + 1, 1);
            v23 = v87;
          }

          v56 = v74 + 1;
          *(v23 + 16) = v62 + 1;
          (*(v82 + 32))(v23 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, v81, v77);
          v15 += 40;
          v52 = v71;
          v12 = v72;
          v27 = v83;
          if (v70 == v56)
          {

            sub_1C6B1C9F0(v68, v66);
            v65 = *(v27 + 8);
            v65(v67, v12);
            v65(v73, v12);
            return v23;
          }
        }

        __break(1u);
LABEL_20:
        swift_once();
      }

      sub_1C6B1C9F0(v68, v46);
      v63 = *(v27 + 8);
      v63(v15, v12);
      v63(v73, v12);
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      v23 = sub_1C6D75DB0();
      v42 = v41;
      sub_1C6D3B29C();
      swift_allocError();
      *v43 = v23;
      *(v43 + 8) = v42;
      *(v43 + 16) = 1;
      swift_willThrow();
      v44 = *(v27 + 8);
      v44(v15, v12);
      v44(v19, v12);
    }
  }

  else
  {

    sub_1C6D3B29C();
    swift_allocError();
    *v40 = 0xD00000000000001ELL;
    *(v40 + 8) = 0x80000001C6DA8FF0;
    *(v40 + 16) = 1;
    swift_willThrow();
  }

  return v23;
}

unint64_t sub_1C6D3B29C()
{
  result = qword_1EC1D98B8;
  if (!qword_1EC1D98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98B8);
  }

  return result;
}

unint64_t sub_1C6D3B2F0()
{
  result = qword_1EC1D98D0;
  if (!qword_1EC1D98D0)
  {
    sub_1C6B1B49C(255, &qword_1EC1D98C8, &type metadata for AppUserEmbeddingManager.Override, MEMORY[0x1E69E62F8]);
    sub_1C6D3B38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98D0);
  }

  return result;
}

unint64_t sub_1C6D3B38C()
{
  result = qword_1EC1D98D8;
  if (!qword_1EC1D98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98D8);
  }

  return result;
}

uint64_t sub_1C6D3B3F4(uint64_t a1, uint64_t a2)
{
  sub_1C6B3C1F8(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C6D3B458(uint64_t a1)
{
  if (!qword_1EDCDFB98)
  {
    sub_1C6B3C1F8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB98);
    }
  }
}

uint64_t sub_1C6D3B4C4(uint64_t a1, uint64_t a2)
{
  sub_1C6B1B7C0(0, &qword_1EDCDFB90, sub_1C6D3B458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D3B544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D3B5AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1B7C0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D3B618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B1B7C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D3B674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D3B6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6D3B73C()
{
  result = qword_1EDCE2548;
  if (!qword_1EDCE2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2548);
  }

  return result;
}

uint64_t sub_1C6D3B790(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C6D3B7D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6D3B820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6D3B894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEF34366573614267 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6D7A130();

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

uint64_t sub_1C6D3B9AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C6D3BC64(0, &qword_1EC1D98E0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D3BC10();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v20 = sub_1C6D79FE0();
  v23 = 1;
  sub_1C6B1C938();
  sub_1C6D79FF0();
  v12 = v21;
  v11 = v22;
  LOBYTE(v21) = 2;
  v13 = sub_1C6D79FA0();
  v15 = v14;
  v16 = *(v7 + 8);
  v19 = v13;
  v16(v10, v6);
  sub_1C6B1CD10(v12, v11);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1C6B1C9F0(v12, v11);

  v18 = v19;
  *a2 = v20;
  a2[1] = v12;
  a2[2] = v11;
  a2[3] = v18;
  a2[4] = v15;
  return result;
}

unint64_t sub_1C6D3BC10()
{
  result = qword_1EC1D98E8;
  if (!qword_1EC1D98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D98E8);
  }

  return result;
}

void sub_1C6D3BC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6D3BC10();
    v7 = a3(a1, &type metadata for AppUserEmbeddingManager.Override.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6D3BD38()
{
  result = qword_1EC1D9908;
  if (!qword_1EC1D9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9908);
  }

  return result;
}

unint64_t sub_1C6D3BD90()
{
  result = qword_1EC1D9910;
  if (!qword_1EC1D9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9910);
  }

  return result;
}

unint64_t sub_1C6D3BDE8()
{
  result = qword_1EC1D9918;
  if (!qword_1EC1D9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9918);
  }

  return result;
}

uint64_t sub_1C6D3BE60(void *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1C6B11310(0, &unk_1EDCE7A38, MEMORY[0x1E6996108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v25 - v5;
  sub_1C6B11310(0, &qword_1EDCE7A48, MEMORY[0x1E69960E8], v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v25[14] = v15;
  v25[15] = sub_1C6D422DC(qword_1EDCE8C90, type metadata accessor for ComputeServiceConfigurationManager, &unk_1C6D96CC0);
  v25[11] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = type metadata accessor for NewsAppFeatureResolvers();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  v25[9] = v18;
  v25[10] = sub_1C6D422DC(&qword_1EDCE9FF8, type metadata accessor for NewsAppFeatureResolvers, &protocol conformance descriptor for NewsAppFeatureResolvers);
  v25[6] = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41FFC(0, &qword_1EDCE7A28, MEMORY[0x1E6996188]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = type metadata accessor for PackageService();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v25[4] = v20;
  v25[5] = sub_1C6D422DC(qword_1EDCE9D20, type metadata accessor for PackageService, &protocol conformance descriptor for PackageService);
  v25[1] = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1C6D78640();
  sub_1C6D77FE0();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v10, 1, v22);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (*(v23 + 32))(v14, v10, v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1C6D786A0();
  sub_1C6D77FE0();
  result = (*(*(v24 - 8) + 48))(v6, 1, v24);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D78730();
  result = sub_1C6D77FD0();
  if (result)
  {
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    swift_allocObject();
    return sub_1C6D784D0();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3C334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    a2[3] = &type metadata for NewsRadarAttachmentProvider;
    result = sub_1C6D42288();
    a2[4] = result;
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D3C3C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1C6D78680();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1C6D78670();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D786E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1C6D78700();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v19 = [result possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    if ([v19 respondsToSelector_])
    {
      v20 = [v19 newsTabiConfiguration];
      swift_unknownObjectRelease();
      v21 = [v20 unloadGraphOnBackgroundConfiguration];

      v22 = [v21 graphIdleDuration];
      v23 = (v22 / 1000);
    }

    else
    {
      swift_unknownObjectRelease();
      v23 = 10.0;
    }

    *v15 = 50;
    (*(v12 + 104))(v15, *MEMORY[0x1E6996110], v11);
    sub_1C6D786F0();
    (*(v7 + 104))(v10, *MEMORY[0x1E69960F0], v24);
    *v6 = v23;
    *(v6 + 8) = 0;
    (*(v25 + 104))(v6, *MEMORY[0x1E69960F8], v26);
    return sub_1C6D78660();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3C768(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    type metadata accessor for ComputeServiceAdSegmentProvider();
    v3 = swift_allocObject();
    sub_1C6D42238(0, &unk_1EC1D9920, MEMORY[0x1E69E6370], MEMORY[0x1E69D6550]);
    swift_allocObject();
    *(v3 + 16) = sub_1C6D78080();
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D3C850(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType);
  result = sub_1C6D77FE0();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    result = sub_1C6D77FD0();
    if (result)
    {
      v3 = result;
      type metadata accessor for ComputeServiceCohortMembershipService();
      v4 = swift_allocObject();
      sub_1C6B15E34(&v5, v4 + 16);
      *(v4 + 56) = v3;
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

void *sub_1C6D3C948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6F00, &protocol descriptor for ArticleFeaturesFactoryType);
  result = sub_1C6D77FE0();
  if (!v8[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for ComputeServiceMyMagazinesPersonalizationService();
    swift_allocObject();
    result = sub_1C6B78FEC(v8, v5, v6);
    a2[3] = v7;
    a2[4] = &off_1F46733D8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3CAA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  v4 = v3;
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for <> ComputeService<A>;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D3CB58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6F00, &protocol descriptor for ArticleFeaturesFactoryType);
  result = sub_1C6D77FE0();
  if (!v25[3])
  {
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6550, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE9100, &protocol descriptor for UserEmbeddingProviderType);
  result = sub_1C6D77FE0();
  if (v24[3])
  {
    v6 = type metadata accessor for ComputeServiceScoringService();
    v7 = objc_allocWithZone(v6);
    if (qword_1EDCEA920 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCEA540;
    v9 = sub_1C6D79A90();
    sub_1C6D78D30("Initalizing ComputeServiceScoringService", 40, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
    sub_1C6B16F28(v25, &v7[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_articleFeaturesFactory]);
    *&v7[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_computeService] = v4;

    v10 = [v3 cachedSubscription];
    if (objc_getAssociatedObject(v10, v10 + 1))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    v11 = MEMORY[0x1E69E7CA0];
    if (*(&v21 + 1))
    {
      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v12 = v18;
        v13 = [v18 integerValue];
        if (v13 == -1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C6D42104(&v22, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6D42238);
    }

    v12 = 0;
    v13 = 0;
LABEL_17:
    if (objc_getAssociatedObject(v10, ~v13))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v14 = v18;
        v15 = [v14 integerValue];

        v16 = v15 - 68;
LABEL_25:
        v7[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_isSubscribed] = (v16 ^ v13) & 1;
        *&v7[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_paidAccessChecker] = v5;
        sub_1C6B16F28(v24, &v7[OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_userEmbeddingProvider]);
        v19.receiver = v7;
        v19.super_class = v6;
        swift_unknownObjectRetain();
        v17 = objc_msgSendSuper2(&v19, sel_init);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
        return v17;
      }
    }

    else
    {
      sub_1C6D42104(&v22, &qword_1EDCE7CC0, v11 + 8, MEMORY[0x1E69E6720], sub_1C6D42238);
    }

LABEL_24:

    v16 = -68;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3D0D8(void *a1)
{
  sub_1C6B10DA0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1C6D75DE0();
  sub_1C6D77FC0();
  v15 = *(*(v14 - 8) + 48);
  result = v15(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D77FC0();
  result = v15(v9, 1, v14);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D77FC0();
  result = v15(v5, 1, v14);
  if (result != 1)
  {
    sub_1C6D41FFC(0, &qword_1EDCE7A28, MEMORY[0x1E6996188]);
    swift_allocObject();
    return sub_1C6D78840();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6D3D34C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeFeaturesFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F4675DE8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D3D3F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    result = sub_1C6D77FD0();
    if (result)
    {
      v4 = result;
      type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
      v5 = swift_allocObject();
      v6 = sub_1C6B60D60(MEMORY[0x1E69E7CC0]);
      sub_1C6D42164(0);
      v7 = swift_allocObject();
      *(v7 + 24) = 0;
      *(v7 + 16) = v6;
      v5[4] = v7;
      v5[5] = 0;
      v5[2] = v3;
      v5[3] = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6D3D53C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType);
  result = sub_1C6D77FE0();
  if (!v47)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6FF0, &protocol descriptor for RecipeFeaturesFactoryType);
  result = sub_1C6D77FE0();
  if (!v45)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &unk_1EDCDFCE8, MEMORY[0x1E69B4F20]);
  result = sub_1C6D77FE0();
  if (!v43)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = v6;
  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeUserEventHistoryFeaturesFactory();
  result = sub_1C6D77FD0();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v28 = &v28;
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for RecipeFeaturesFactory();
    v39[3] = v14;
    v39[4] = &off_1F4675DE8;
    v39[0] = v13;
    v15 = type metadata accessor for ComputeServiceRecipeScoringService();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v39, v14);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v38[3] = v14;
    v38[4] = &off_1F4675DE8;
    v38[0] = v22;
    v23 = v29;
    v16[2] = v5;
    v16[3] = v23;
    sub_1C6B16F28(v38, (v16 + 4));
    v24 = v47;
    v25 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v25 + 8))(&v31, v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v40[4] = v35;
    v40[5] = v36;
    *v41 = *v37;
    *&v41[14] = *&v37[14];
    v40[0] = v31;
    v40[1] = v32;
    v40[2] = v33;
    v40[3] = v34;
    v26 = *(&v32 + 1);
    sub_1C6B11190(v40);
    v16[9] = v26;
    sub_1C6B15E34(&v42, (v16 + 10));
    v16[15] = v7;
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(v44);
    v27 = v30;
    v30[3] = v15;
    v27[4] = &off_1F4675F70;
    *v27 = v16;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1C6D3D9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E10, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, qword_1EDCE6FF0, &protocol descriptor for RecipeFeaturesFactoryType);
  result = sub_1C6D77FE0();
  if (v24)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for RecipeFeaturesFactory();
    v22[3] = v13;
    v22[4] = &off_1F4675DE8;
    v22[0] = v12;
    v14 = type metadata accessor for ComputeServiceRecipeDiversificationService();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    v17 = MEMORY[0x1EEE9AC00](v16, v16);
    v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[7] = v13;
    v15[8] = &off_1F4675DE8;
    v15[3] = v6;
    v15[4] = v21;
    v15[2] = v5;
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a2[3] = v14;
    a2[4] = &off_1F4676010;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6D3DC84(void *a1, void *a2)
{
  v60 = a1;
  v70 = *MEMORY[0x1E69E9840];
  sub_1C6D41FFC(0, &qword_1EDCE7A30, MEMORY[0x1E6996180]);
  v58 = *(v3 - 1);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v51 - v5;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  sub_1C6D3E3E0(a2, &v66);
  v56 = v67;
  v57 = v66;
  v54 = v69;
  v55 = v68;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6B11310(0, &qword_1EDCE6678, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  v63 = v21;
  sub_1C6D77FC0();
  v22 = MEMORY[0x1E69E7CC0];
  if (v66)
  {
    v23 = v66;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v66 = MEMORY[0x1E69E7CC0];
  v24 = *(v23 + 2);
  v64 = v23;
  if (v24)
  {
    v51 = a2;
    v25 = 0;
    while (v25 < *(v23 + 2))
    {
      (*(v7 + 16))(v20, &v23[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25], v6);
      sub_1C6D3E7FC(&v65);
      ++v25;
      (*(v7 + 8))(v20, v6);
      sub_1C6B19EF0(v65);
      v23 = v64;
      if (v24 == v25)
      {
        v52 = v66;
        a2 = v51;
        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_10:
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C6D77FC0();
  if (v66)
  {
    v26 = v66;
  }

  else
  {
    v26 = v22;
  }

  v66 = v22;
  v27 = v26[2];
  v63 = v26;
  if (v27)
  {
    v28 = 0;
    while (v28 < v26[2])
    {
      (*(v7 + 16))(v16, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, v6);
      sub_1C6D3E7FC(&v65);
      ++v28;
      (*(v7 + 8))(v16, v6);
      sub_1C6B19EF0(v65);
      v26 = v63;
      if (v27 == v28)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_31;
  }

LABEL_17:
  v66 = v57;
  v67 = v56;
  v68 = v55;
  v69 = v54;
  v30 = v58;
  v29 = v59;
  v31 = v53;
  (*(v58 + 104))(v53, *MEMORY[0x1E6996178], v59);
  sub_1C6D78850();

  (*(v30 + 8))(v31, v29);
  if (v24)
  {
    v32 = objc_opt_self();
    v59 = *(v7 + 16);
    v60 = v32;
    v33 = &v64[(*(v7 + 80) + 32) & ~*(v7 + 80)];
    v58 = *(v7 + 72);
    do
    {
      v36 = v61;
      v59(v61, v33, v6);
      v37 = [v60 defaultManager];
      v38 = sub_1C6D75D30();
      (*(v7 + 8))(v36, v6);
      v66 = 0;
      LODWORD(v36) = [v37 removeItemAtURL:v38 error:&v66];

      if (v36)
      {
        v39 = v66;
      }

      else
      {
        v34 = v66;
        v35 = sub_1C6D75CC0();

        swift_willThrow();
      }

      v33 += v58;
      --v24;
    }

    while (v24);
  }

  if (v27)
  {
    v64 = objc_opt_self();
    v42 = *(v7 + 16);
    v40 = v7 + 16;
    v41 = v42;
    v43 = v63 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    do
    {
      v47 = v62;
      v41(v62, v43, v6);
      v48 = [v64 defaultManager];
      v49 = sub_1C6D75D30();
      (*(v40 - 8))(v47, v6);
      v66 = 0;
      LODWORD(v47) = [v48 removeItemAtURL:v49 error:&v66];

      if (v47)
      {
        v50 = v66;
      }

      else
      {
        v45 = v66;
        v46 = sub_1C6D75CC0();

        swift_willThrow();
      }

      v43 += v44;
      --v27;
    }

    while (v27);
  }

  sub_1C6B189DC(v57, v56, v55, v54);
}

uint64_t sub_1C6D3E3E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B11310(0, &qword_1EDCE7AF8, sub_1C6B10DA0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v20 - v6;
  v8 = sub_1C6D75DE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10DA0(0);
  v14 = v13;
  sub_1C6D77FC0();
  result = (*(*(v14 - 8) + 48))(v7, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1C6B19E68(v7, sub_1C6B10DA0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    v16 = sub_1C6D75E00();
    v18 = v17;
    sub_1C6B11220();
    sub_1C6D75AF0();
    (*(v9 + 8))(v12, v8);
    sub_1C6B1C9F0(v16, v18);

    v19 = v22;
    *a2 = v20[2];
    *(a2 + 8) = v21;
    *(a2 + 24) = v19;
  }

  return result;
}

uint64_t sub_1C6D3E7FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v65 = *MEMORY[0x1E69E9840];
  sub_1C6B11310(0, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v62 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - v8;
  v10 = sub_1C6D75DE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v63 = &v48 - v16;
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_1C6D75D30();
  sub_1C6B11310(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v59 = v19;
  v20 = swift_allocObject();
  v58 = xmmword_1C6D7E630;
  *(v20 + 16) = xmmword_1C6D7E630;
  v21 = *MEMORY[0x1E695DB78];
  *(v20 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v57 = v21;
  v22 = sub_1C6D79760();

  v64 = 0;
  v23 = [v17 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:v22 options:4 error:&v64];

  v24 = v64;
  if (v23)
  {
    v25 = sub_1C6D79780();
    v26 = v24;
  }

  else
  {
    v27 = v64;
    v28 = sub_1C6D75CC0();

    swift_willThrow();
    v2 = 0;
    v25 = MEMORY[0x1E69E7CC0];
  }

  v29 = v10;
  v56 = *(v25 + 16);
  if (v56)
  {
    v30 = 0;
    v54 = v11 + 16;
    v49 = (v11 + 32);
    v52 = (v11 + 8);
    v51 = MEMORY[0x1E69E7CC0];
    v55 = v25;
    while (1)
    {
      if (v30 >= *(v25 + 16))
      {
        __break(1u);
      }

      v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v60 = *(v11 + 72);
      v61 = v33;
      (*(v11 + 16))(v63, v25 + v33 + v60 * v30, v29);
      inited = swift_initStackObject();
      *(inited + 16) = v58;
      v35 = v57;
      *(inited + 32) = v57;
      v36 = v35;
      sub_1C6B20798(inited);
      swift_setDeallocating();
      sub_1C6B19E68(inited + 32, type metadata accessor for URLResourceKey);
      sub_1C6D75CE0();
      if (v2)
      {

        v2 = 0;
        v37 = 1;
      }

      else
      {
        v37 = 0;
      }

      v38 = sub_1C6D75CA0();
      v39 = *(v38 - 8);
      (*(v39 + 56))(v9, v37, 1, v38);
      v40 = v62;
      sub_1C6D42070(v9, v62);
      if ((*(v39 + 48))(v40, 1, v38) == 1)
      {
        v31 = MEMORY[0x1E69688C8];
        v32 = MEMORY[0x1E69E6720];
        sub_1C6D42104(v9, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720], sub_1C6B11310);
        sub_1C6D42104(v62, &qword_1EDCE63A8, v31, v32, sub_1C6B11310);
        v25 = v55;
      }

      else
      {
        v41 = v62;
        v42 = sub_1C6D75C50();
        LODWORD(v53) = v42;
        sub_1C6D42104(v9, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720], sub_1C6B11310);
        (*(v39 + 8))(v41, v38);
        v25 = v55;
        if (v53 != 2 && (v42 & 1) != 0)
        {
          v53 = *v49;
          v53(v50, v63, v29);
          v43 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6B18934(0, v43[2] + 1, 1);
            v43 = v64;
          }

          v46 = v43[2];
          v45 = v43[3];
          if (v46 >= v45 >> 1)
          {
            sub_1C6B18934((v45 > 1), v46 + 1, 1);
            v43 = v64;
          }

          v43[2] = v46 + 1;
          v51 = v43;
          v53(v43 + v61 + v46 * v60, v50, v29);
          goto LABEL_8;
        }
      }

      (*v52)(v63, v29);
LABEL_8:
      if (v56 == ++v30)
      {
        goto LABEL_22;
      }
    }
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_22:

  *v48 = v51;
  return result;
}

void *sub_1C6D3EF14(void *a1)
{
  v2 = sub_1C6D780D0();
  MEMORY[0x1EEE9AC00](v2, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      type metadata accessor for ComputeServiceRefreshBackgroundWorker();
      v7 = swift_allocObject();
      sub_1C6D422DC(&unk_1EDCE7AA0, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
      sub_1C6B11310(0, &qword_1EDCE6658, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
      sub_1C6B25098();
      sub_1C6D79CB0();
      sub_1C6D41F94(0);
      swift_allocObject();
      v8 = sub_1C6D78020();
      v7[3] = v6;
      v7[4] = v8;
      v7[2] = v5;
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

uint64_t sub_1C6D3F124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for ComputeServiceRetentionTokenVendor();
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    a2[4] = sub_1C6D422DC(&unk_1EDCE03A8, type metadata accessor for ComputeServiceRetentionTokenVendor, &unk_1C6D82984);
    *a2 = v5;
    v6 = *MEMORY[0x1E69960E0];
    v7 = sub_1C6D78640();
    v8 = *(*(v7 - 8) + 104);

    return v8(a2, v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3F220(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    type metadata accessor for ComputeServiceStartupTask();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 18) = 0;
    *(result + 24) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D3F2EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = sub_1C6D75CD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10DA0(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1C6D75DE0();
  sub_1C6D77FC0();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19[2] = a2;
    v19[3] = a3;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F58], v7);
    sub_1C6B16CF0();
    sub_1C6D75DC0();
    (*(v8 + 8))(v11, v7);
    return (*(v17 + 8))(v15, v16);
  }

  return result;
}

void *sub_1C6D3F520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v15 == 2)
  {
    __break(1u);
  }

  else
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
    result = sub_1C6D77FD0();
    if (result)
    {
      v5 = [result possiblyUnfetchedAppConfiguration];
      swift_unknownObjectRelease();
      if (([v5 respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        if (qword_1EDCE7170 != -1)
        {
          swift_once();
        }

        v11 = qword_1EDCE7178;
        v12 = sub_1C6D79AC0();
        result = sub_1C6D78D30("Storing personalization requests is disabled as no requests are specified to collect", 84, 2, &dword_1C6B09000, v11, v12, MEMORY[0x1E69E7CC0]);
        goto LABEL_17;
      }

      v6 = [v5 internalPersonalizationRequestsToCollect];
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = sub_1C6D79780();

        if (*(v7 + 16))
        {
          if (qword_1EDCE7170 != -1)
          {
            swift_once();
          }

          v8 = qword_1EDCE7178;
          v9 = sub_1C6D79AC0();
          sub_1C6D78D30("Storing requests is enabled", 27, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
          v10 = sub_1C6B1E610(v7);

          goto LABEL_18;
        }
      }

LABEL_14:
      if (qword_1EDCE7170 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDCE7178;
      v14 = sub_1C6D79AC0();
      result = sub_1C6D78D30("Storing personalization requests is disabled", 44, 2, &dword_1C6B09000, v13, v14, MEMORY[0x1E69E7CC0]);
LABEL_17:
      v10 = 0;
LABEL_18:
      *a2 = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D3F7DC()
{
  sub_1C6D771B0();
  sub_1C6D771A0();
  if (qword_1EDCE6168 != -1)
  {
    swift_once();
  }

  sub_1C6D77190();
}

uint64_t sub_1C6D3F864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v70 = sub_1C6D75CD0();
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v5);
  v69 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C6D75DE0();
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v8);
  v60 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v68 = v57 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v57 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B11310(0, &qword_1EDCE6678, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1C6D77FC0();
  v17 = v73[0];
  if (!v73[0])
  {
    __break(1u);
  }

  v18 = *(v73[0] + 16);
  v58 = a2;
  v59 = v7;
  if (v18)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1C6B18934(0, v18, 0);
    v19 = v72;
    v20 = v7 + 16;
    v21 = *(v7 + 16);
    v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v57[1] = v17;
    v65 = v22;
    *&v66 = v21;
    v23 = v17 + v22;
    v64 = *(v20 + 56);
    v63 = *MEMORY[0x1E6968F68];
    v61 = (v4 + 8);
    v62 = (v4 + 104);
    v24 = (v20 - 8);
    v67 = v20;
    v25 = (v20 + 16);
    v26 = v71;
    do
    {
      v27 = v68;
      (v66)(v68, v23, v26);
      strcpy(v73, "configuration");
      HIWORD(v73[1]) = -4864;
      v28 = v16;
      v30 = v69;
      v29 = v70;
      (*v62)(v69, v63, v70);
      sub_1C6B16CF0();
      sub_1C6D75DC0();
      v26 = v71;
      (*v61)(v30, v29);
      (*v24)(v27, v26);
      v72 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C6B18934((v31 > 1), v32 + 1, 1);
        v26 = v71;
        v19 = v72;
      }

      *(v19 + 16) = v32 + 1;
      v33 = v64;
      (*v25)(v19 + v65 + v32 * v64, v28, v26);
      v23 += v33;
      --v18;
      v16 = v28;
    }

    while (v18);

    v7 = v59;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v26 = v71;
  }

  v34 = v60;
  v70 = *(v19 + 16);
  if (!v70)
  {
LABEL_18:

    return (*(v7 + 56))(v58, 1, 1, v26);
  }

  v35 = objc_opt_self();
  v36 = 0;
  v68 = (v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  v69 = v35;
  v67 = v7 + 16;
  v37 = (v7 + 8);
  v66 = xmmword_1C6D7E630;
  while (1)
  {
    if (v36 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    (*(v7 + 16))(v34, &v68[*(v7 + 72) * v36], v26);
    LOBYTE(v73[0]) = 0;
    v45 = [v69 defaultManager];
    v41 = v26;
    sub_1C6D75DA0();
    v46 = sub_1C6D79570();

    v47 = [v45 fileExistsAtPath:v46 isDirectory:v73];

    if (v47)
    {
      break;
    }

LABEL_12:
    ++v36;
    (*v37)(v34, v41);
    v26 = v41;
    if (v70 == v36)
    {
      goto LABEL_18;
    }
  }

  if (v73[0])
  {
    if (qword_1EDCE66F8 != -1)
    {
      swift_once();
    }

    v38 = qword_1EDCE6700;
    v39 = sub_1C6D79AA0();
    sub_1C6B1A610(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740]);
    v40 = swift_allocObject();
    *(v40 + 16) = v66;
    sub_1C6D422DC(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v41 = v71;
    v42 = sub_1C6D7A0E0();
    v44 = v43;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1C6B2064C();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    v34 = v60;
    sub_1C6D78D30("Found a directory at location where a configuration was expected %{public}@", 75, 2, &dword_1C6B09000, v38, v39, v40);

    v7 = v59;
    goto LABEL_12;
  }

  if (qword_1EDCE66F8 == -1)
  {
    goto LABEL_20;
  }

LABEL_22:
  swift_once();
LABEL_20:
  v49 = qword_1EDCE6700;
  sub_1C6B1A610(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740]);
  v50 = swift_allocObject();
  *(v50 + 16) = v66;
  sub_1C6D422DC(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v51 = v71;
  v52 = sub_1C6D7A0E0();
  v54 = v53;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1C6B2064C();
  *(v50 + 32) = v52;
  *(v50 + 40) = v54;
  v55 = sub_1C6D79AC0();
  sub_1C6D78D30("Found tabi configuration at %{public}@", 38, 2, &dword_1C6B09000, v49, v55, v50);

  v56 = v58;
  (*(v7 + 32))(v58, v34, v51);
  return (*(v7 + 56))(v56, 0, 1, v51);
}

void *sub_1C6D40058@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, SEL *a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a2;
  v27 = a3;
  v29 = sub_1C6D75CD0();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C6D75DE0();
  v12 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v17 = result;
    sub_1C6B11310(0, &qword_1EDCE64B0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
    v25 = *(v12 + 72);
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C6D7EB10;
    v23[1] = v19 + v18;
    v20 = [v17 privateDataDirectory];
    sub_1C6D795A0();
    v24 = a4;

    sub_1C6D75CF0();

    v30 = v26;
    v31 = v27;
    v21 = v29;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F58], v29);
    sub_1C6B16CF0();
    sub_1C6D75DC0();
    (*(v8 + 8))(v11, v21);
    (*(v12 + 8))(v15, v28);
    v22 = [v17 *v24];
    sub_1C6D795A0();

    sub_1C6D75D00();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v19;
  return result;
}

id sub_1C6D4038C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ComputeServiceConfigurationManager();
    result = sub_1C6D77FD0();
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for ComputeServiceUnloaderService());
      return sub_1C6CBF700(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6D404A0(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, a2, a3);
  result = sub_1C6D77FE0();
  if (v12)
  {
    a4(0);
    v10 = swift_allocObject();
    a5(v11, v10 + 16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D4059C(void *a1)
{
  sub_1C6B1A610(0, &qword_1EDCE6498, &qword_1EDCE7910, &protocol descriptor for NewsFeatureResolver);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7EB10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for UserEventsFeatureResolver(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    *(v2 + 56) = v3;
    *(v2 + 64) = sub_1C6D422DC(&qword_1EDCE6FC8, type metadata accessor for UserEventsFeatureResolver, &unk_1C6D86DF0);
    *(v2 + 32) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6D41EEC(0, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);
    v7 = v6;
    result = sub_1C6D77FD0();
    if (result)
    {
      v8 = result;
      *(v2 + 96) = v7;
      *(v2 + 104) = sub_1C6D41F50(&qword_1EDCE6C10, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver, &unk_1C6D88448);
      *(v2 + 72) = v8;
      type metadata accessor for NewsAppFeatureResolvers();
      result = swift_allocObject();
      *(result + 16) = v2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D4075C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleEventFeaturesProvider();
  result = sub_1C6D77FD0();
  if (result)
  {
    v2 = result;
    type metadata accessor for UserEventsFeatureResolver(0);
    v3 = swift_allocObject();
    v4 = OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_features;
    v5 = sub_1C6D78810();
    (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
    v6 = v3 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    *(v3 + 16) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D40838()
{
  sub_1C6D41EEC(0, &qword_1EDCE6C08, type metadata accessor for CurrentTimestampFeatureResolver);

  return swift_allocObject();
}

uint64_t sub_1C6D40888()
{
  v0 = sub_1C6D75F80();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  v5 = swift_allocObject();
  sub_1C6D75F70();
  v6 = sub_1C6D75F60();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  return v5;
}

uint64_t sub_1C6D4097C()
{
  type metadata accessor for ArticleFeaturesFactory();

  return swift_allocObject();
}

uint64_t sub_1C6D409B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleUserEventHistoryFeaturesFactory();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C69C(0, &qword_1EDCE7E50, 0x1E69B5610);
    v4 = sub_1C6D77FD0();
    type metadata accessor for ArticleEventFeaturesProvider();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D40A6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A98(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType);
  result = sub_1C6D77FE0();
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver);
    v4 = v3;
    result = sub_1C6D77FD0();
    if (result)
    {
      v5 = result;
      type metadata accessor for ArticleUserEventHistoryFeaturesFactory();
      v6 = swift_allocObject();
      v11[3] = v4;
      v11[4] = &protocol witness table for <> SessionDataProvider<A>;
      v11[0] = v5;
      sub_1C6B16F28(v11, v6 + 16);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v9 = *(v8 + 8);

      v10 = v9(v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v11);
      *(v6 + 56) = v10 & 1;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D40BE8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for ComputeServiceStartupTask();
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_1C6D422DC(&qword_1EDCE18D8, type metadata accessor for ComputeServiceStartupTask, &unk_1C6D8307C);
    v5[0] = v4;
    sub_1C6D780B0();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D40CB0(void *a1)
{
  v2 = sub_1C6D75CD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75DE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C69C(0, &qword_1EDCE7F00, 0x1E69B5210);
  result = sub_1C6D77FD0();
  if (result)
  {
    v13 = result;
    v14 = [result contentDirectory];

    sub_1C6D795A0();
    sub_1C6D75D00();

    v15[0] = 0xD000000000000019;
    v15[1] = 0x80000001C6DA97A0;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
    sub_1C6B16CF0();
    sub_1C6D75DD0();
    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6D40F14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FC0();
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = type metadata accessor for NewsComputationalGraphRequestProcessor(0);
    v3 = objc_allocWithZone(v2);
    *&v3[qword_1EC1D8F78] = v6;
    v4 = &v3[qword_1EC1D8F80];
    *v4 = 0x676775732D676174;
    *(v4 + 1) = 0xEF736E6F69747365;
    v5.receiver = v3;
    v5.super_class = v2;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

uint64_t sub_1C6D41054@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for FileLog.Configuration(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = objc_opt_self();
  v14 = [v13 kilobytes];
  v15 = [v13 megabytes];
  sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
  sub_1C6D75B80();
  *v12 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D41EEC(0, &qword_1EDCEA330, MEMORY[0x1E69960C8]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v17 = result;
    type metadata accessor for FileLog(0);
    v18 = swift_allocObject();
    v19 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
    v20 = sub_1C6D75DE0();
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    *(v18 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files) = MEMORY[0x1E69E7CC0];
    *(v18 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls) = MEMORY[0x1E69E7CD0];
    *(v18 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus) = 0;
    sub_1C6B1EA98(v12, v18 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration);
    v21 = (v18 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory);
    *v21 = v17;
    v21[1] = a2;
    v21[2] = a3;
    type metadata accessor for FileLog.TargetDirectory(0);
    result = swift_storeEnumTagMultiPayload();
    *a4 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D412A0()
{
  sub_1C6D78730();
  swift_allocObject();
  return sub_1C6D78720();
}

void *sub_1C6D412D8(uint64_t *a1, void *a2)
{
  v4 = sub_1C6D78680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B11310(0, &unk_1EDCE7A38, MEMORY[0x1E6996108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v42 - v11;
  v13 = sub_1C6D786A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v46 = a2;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = v14;
  sub_1C6D77FE0();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_1C6D78690();
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E6996100])
  {
    (*(v14 + 8))(v17, v13);
    return (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 8))(v8, v4);
  v20 = v46;
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_1C6B11310(0, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FC0();
  v21 = v51;
  if (v51 == 1)
  {
    goto LABEL_25;
  }

  if (!v51)
  {
    return (*(v18 + 8))(v17, v13);
  }

  if ((NFInternalBuild() & 1) == 0)
  {
    (*(v18 + 8))(v17, v13);
    return sub_1C6B1EB48(v21);
  }

  v43 = v18;
  v44 = v17;
  if (sub_1C6B1E978(0x2D656C6369747261, 0xEF676E69726F6373, v21))
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
    result = sub_1C6D77FC0();
    v22 = v51;
    if (v51 != 1)
    {
      v23 = type metadata accessor for NewsComputationalGraphRequestProcessor(0);
      v24 = objc_allocWithZone(v23);
      *&v24[qword_1EC1D8F78] = v22;
      v25 = &v24[qword_1EC1D8F80];
      *v25 = 0x2D656C6369747261;
      *(v25 + 1) = 0xEF676E69726F6373;
      v47.receiver = v24;
      v47.super_class = v23;
      v26 = objc_msgSendSuper2(&v47, sel_init);
      sub_1C6D78710();

      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  if ((sub_1C6B1E978(0x676775732D676174, 0xEF736E6F69747365, v21) & 1) == 0)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FC0();
  v27 = v51;
  if (v51 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = type metadata accessor for NewsComputationalGraphRequestProcessor(0);
  v29 = objc_allocWithZone(v28);
  *&v29[qword_1EC1D8F78] = v27;
  v30 = &v29[qword_1EC1D8F80];
  *v30 = 0x676775732D676174;
  *(v30 + 1) = 0xEF736E6F69747365;
  v48.receiver = v29;
  v48.super_class = v28;
  v31 = objc_msgSendSuper2(&v48, sel_init);
  sub_1C6D78710();

LABEL_13:
  if (sub_1C6B1E978(0x726F63732D676174, 0xEB00000000676E69, v21))
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
    result = sub_1C6D77FC0();
    v32 = v51;
    if (v51 != 1)
    {
      v33 = type metadata accessor for NewsComputationalGraphRequestProcessor(0);
      v34 = objc_allocWithZone(v33);
      *&v34[qword_1EC1D8F78] = v32;
      v35 = &v34[qword_1EC1D8F80];
      *v35 = 0x726F63732D676174;
      *(v35 + 1) = 0xEB00000000676E69;
      v49.receiver = v34;
      v49.super_class = v33;
      v36 = objc_msgSendSuper2(&v49, sel_init);
      sub_1C6D78710();

      goto LABEL_16;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

LABEL_16:
  if (sub_1C6B1E978(0x732D657069636572, 0xEE00676E69726F63, v21))
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_1C6B11310(0, &qword_1EDCE6710, type metadata accessor for FileLog, MEMORY[0x1E69E6720]);
    result = sub_1C6D77FC0();
    v37 = v51;
    if (v51 != 1)
    {
      sub_1C6B1EB48(v21);
      v38 = type metadata accessor for NewsComputationalGraphRequestProcessor(0);
      v39 = objc_allocWithZone(v38);
      *&v39[qword_1EC1D8F78] = v37;
      v40 = &v39[qword_1EC1D8F80];
      *v40 = 0x726F63732D676174;
      *(v40 + 1) = 0xEB00000000676E69;
      v50.receiver = v39;
      v50.super_class = v38;
      v41 = objc_msgSendSuper2(&v50, sel_init);
      sub_1C6D78710();

      return (*(v43 + 8))(v44, v13);
    }

    goto LABEL_29;
  }

  (*(v43 + 8))(v44, v13);
  return sub_1C6B1EB48(v21);
}

void *sub_1C6D41B60()
{
  v26 = sub_1C6D78DA0();
  v0 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v1);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B10DA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D78550();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D75DE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78490();
  sub_1C6D78540();
  (*(v9 + 8))(v12, v8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1C6B19E68(v7, sub_1C6B10DA0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v14 + 32))(v17, v7, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C6D75DA0();
    *(v19 + 24) = v20;
    *v3 = v19;
    v21 = v26;
    (*(v0 + 104))(v3, *MEMORY[0x1E69D7968], v26);
    v18 = sub_1C6B672C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = v18[2];
    v22 = v18[3];
    if (v23 >= v22 >> 1)
    {
      v18 = sub_1C6B672C4((v22 > 1), v23 + 1, 1, v18);
    }

    (*(v14 + 8))(v17, v13);
    v18[2] = v23 + 1;
    (*(v0 + 32))(v18 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v23, v3, v21);
  }

  return v18;
}

void sub_1C6D41EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6B134B8();
    v7 = a3(a1, &type metadata for ComputeServiceConfiguration, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C6D41F50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6D41EEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6D41F94(uint64_t a1)
{
  if (!qword_1EDCE5E18)
  {
    sub_1C6D780E0();
    v1 = sub_1C6D78040();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5E18);
    }
  }
}

void sub_1C6D41FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Package(255);
    v7 = sub_1C6B134B8();
    v8 = a3(a1, &type metadata for ComputeServiceConfiguration, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C6D42070(uint64_t a1, uint64_t a2)
{
  sub_1C6B11310(0, &qword_1EDCE63A8, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D42104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1C6D42164(uint64_t a1)
{
  if (!qword_1EDCDF778)
  {
    sub_1C6D421CC(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C6D79D90();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF778);
    }
  }
}

void sub_1C6D421CC(uint64_t a1)
{
  if (!qword_1EDCDFC50)
  {
    sub_1C6D78810();
    sub_1C6B614F4();
    v1 = sub_1C6D794F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDFC50);
    }
  }
}

void sub_1C6D42238(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C6D42288()
{
  result = qword_1EDCE26D8;
  if (!qword_1EDCE26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE26D8);
  }

  return result;
}

uint64_t sub_1C6D422DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D42358(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v35 = v6;
    v40 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C6B39624(0, v7, 0);
    v39 = v41;
    v9 = a1 + 56;
    result = sub_1C6D79CC0();
    v11 = result;
    v12 = 0;
    v32 = a1 + 64;
    v33 = v7;
    v34 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v15 = *(*(a1 + 48) + 16 * v11 + 8);
      MEMORY[0x1EEE9AC00](result, v10);
      *(&v31 - 2) = v16;
      *(&v31 - 1) = v15;
      sub_1C6D5B1C4(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);

      v17 = a1;
      v18 = v35;
      v19 = v40;
      sub_1C6D78C30();
      v40 = v19;

      v20 = v39;
      v41 = v39;
      v22 = *(v39 + 16);
      v21 = *(v39 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C6B39624((v21 > 1), v22 + 1, 1);
        v20 = v41;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = v20;
      result = sub_1C6D5B51C(v18, v20 + v23 + *(v36 + 72) * v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v13 = 1 << *(v17 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      a1 = v17;
      v9 = v34;
      v24 = *(v34 + 8 * v14);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v10 = v38;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v32 + 8 * v14);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1C6B360A8(v11, v38, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v11, v38, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v33)
      {
        return v39;
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
  }

  return result;
}

id sub_1C6D426DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1C6B39B18(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_1C6D79CC0();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = [*(*(a1 + 56) + 8 * v5) eventCount];
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_1C6B39B18((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 8 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1C6B360A8(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void (*sub_1C6D42908(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA56240](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1C6D79E90();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void (*sub_1C6D42A1C(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

long double sub_1C6D42AB0(uint64x2_t *a1, long double result)
{
  v2 = a1[1].u64[0];
  if (v2 < 2)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = a1[2].i64[v3];
    v6 = __CFADD__(v4, v5);
    v4 += v5;
    if (v6)
    {
      break;
    }

    if (v2 == ++v3)
    {
      v7 = v4 / v2;
      if (v2 < 4)
      {
        v8 = 0;
        v9 = 0.0;
        goto LABEL_11;
      }

      v8 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v10 = vdupq_lane_s64(*&v7, 0);
      v11 = a1 + 3;
      v9 = 0.0;
      v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = vsubq_f64(vcvtq_f64_u64(v11[-1]), v10);
        v14 = vsubq_f64(vcvtq_f64_u64(*v11), v10);
        v15 = vmulq_f64(v13, v13);
        v16 = vmulq_f64(v14, v14);
        v9 = v9 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v2 != v8)
      {
LABEL_11:
        v17 = v2 - v8;
        v18 = &a1[2] + v8;
        do
        {
          v19 = *v18++;
          v9 = v9 + (v19 - v7) * (v19 - v7);
          --v17;
        }

        while (v17);
      }

      return sqrt(v9 / (v2 - 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t UserEventHistoryAggregateStoreFactory.__allocating_init(dataProvider:configurationManager:rootDirectory:aggregateStoreMetadataEndpoint:subscriptionController:readingHistory:headlineService:personalizationData:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v65 = a6;
  v66 = a8;
  v69 = a7;
  v70 = a4;
  v64 = a5;
  v71 = a3;
  v72 = a2;
  v73 = a1;
  v67 = sub_1C6D77F80();
  MEMORY[0x1EEE9AC00](v67, v8);
  v68 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D75DE0();
  v56 = v10;
  v53 = *(v10 - 8);
  v11 = v53;
  MEMORY[0x1EEE9AC00](v10, v12);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1E6968FB0];
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v63 = &v50 - v19;
  v57 = sub_1C6D79AF0();
  v20 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C6D79AE0();
  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = sub_1C6D78E80();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v28 = swift_allocObject();
  v29 = *(v11 + 56);
  v60 = v11 + 56;
  v61 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  v59 = v29;
  v29((v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL), 1, 1, v10);
  *(v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = 0;
  v55 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue;
  v54 = sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  v52 = "eddingPersistenceEnabled";
  sub_1C6D78E50();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&unk_1EDCE7EB8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v30 = MEMORY[0x1E69E8030];
  sub_1C6B1839C(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C6B17FD4(&qword_1EDCE7F28, &qword_1EDCE7F30, v30);
  v31 = v53;
  v32 = v58;
  sub_1C6D79CB0();
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8090], v57);
  *(v28 + v55) = sub_1C6D79B20();
  v33 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter;
  v34 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v34 setAllowedUnits_];
  [v34 setCountStyle_];
  *(v28 + v33) = v34;
  v35 = v56;
  v36 = v72;
  *(v28 + 16) = v73;
  sub_1C6B16F28(v36, v28 + 24);
  sub_1C6D5B3CC(v71, v32, &unk_1EDCEA3A0, v62);
  if ((*(v31 + 48))(v32, 1, v35) == 1)
  {
    v37 = v63;
    v59(v63, 1, 1, v35);
  }

  else
  {
    v38 = v51;
    (*(v31 + 32))(v51, v32, v35);

    v37 = v63;
    sub_1C6D75D50();
    (*(v31 + 8))(v38, v35);
    v59(v37, 0, 1, v35);
  }

  v39 = v61;
  swift_beginAccess();
  v40 = MEMORY[0x1E6968FB0];
  sub_1C6D5D000(v37, v28 + v39, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v41 = v70;
  sub_1C6B16F28(v70, v28 + 64);
  v43 = v64;
  v42 = v65;
  *(v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) = v64;
  *(v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory) = v42;
  v44 = v69;
  sub_1C6B16F28(v69, v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService);
  v45 = v66;
  *(v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) = v66;
  swift_unownedRetainStrong();
  v64 = v43;
  v65 = v42;
  v46 = v45;
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v28;
  v74 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&qword_1EDCE7AB0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  v47 = MEMORY[0x1E69D6420];
  sub_1C6B1839C(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B17FD4(&qword_1EDCE6660, &qword_1EDCE6670, v47);
  sub_1C6D79CB0();
  sub_1C6D5B20C(0);
  swift_allocObject();
  v48 = sub_1C6D781B0();

  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_1C6D5B4AC(v71, &unk_1EDCEA3A0, v40);
  __swift_destroy_boxed_opaque_existential_1(v72);
  *(v28 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = v48;

  return v28;
}

uint64_t sub_1C6D433E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C74034(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1C6D5B5E0(v5);
  *a1 = v2;
  return result;
}

void sub_1C6D43454(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v3 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v68 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v65[-v9];
  v69 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v69, v10);
  v79 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v3);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v78 = &v65[-v14];
  v77 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v15 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v16);
  v72 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v71 = &v65[-v20];
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v3);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v65[-v23];
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v80 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v76 = &v65[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v3);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v65[-v30];
  v32 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v83 = &v65[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v40 = &v65[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = *(v2 + 16);
  v42 = *(v41 + 16);
  if (v42)
  {
    v82 = v24;
    v43 = 0;
    v44 = v15;
    v45 = v41 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v84 = (v33 + 48);
    v80 += 6;
    v81 = v45;
    v74 = (v44 + 48);
    v75 = v37;
    v70 = v25;
    do
    {
      if (v43 >= *(v41 + 16))
      {
        __break(1u);
        return;
      }

      sub_1C6D5B364(v45 + *(v37 + 72) * v43, v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6D5B3CC(v40, v31, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6D5B44C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if ((*v84)(v31, 1, v32) == 1)
      {
        sub_1C6D5B4AC(v31, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      }

      else
      {
        v46 = v42;
        v47 = v83;
        sub_1C6D5B51C(v31, v83, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v48 = v82;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v82);
        sub_1C6D5B44C(v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if ((*v80)(v48, 1, v25) == 1)
        {
          sub_1C6D5B4AC(v48, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_11:
          v42 = v46;
          v45 = v81;
          goto LABEL_4;
        }

        v49 = v32;
        v50 = v76;
        sub_1C6D5B51C(v48, v76, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v51 = v78;
        sub_1C6D5B3CC(&v50[*(v25 + 20)], v78, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        sub_1C6D5B44C(v50, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        if ((*v74)(v51, 1, v77) == 1)
        {
          sub_1C6D5B4AC(v51, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v32 = v49;
          v37 = v75;
          goto LABEL_11;
        }

        v52 = v71;
        sub_1C6D5B51C(v51, v71, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        v53 = v52;
        v54 = v72;
        sub_1C6D5B51C(v53, v72, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        sub_1C6D5B51C(v54, v79, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
        v42 = v46;
        if (v73)
        {
          v32 = v49;
          v45 = v81;
          if (v73 == 1)
          {
            v55 = *&v79[*(v69 + 20)];
            v56 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
            swift_beginAccess();
            v57 = v55 + v56;
            v58 = v67;
            sub_1C6D5B3CC(v57, v67, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
            v66 = (*(*(v59 - 8) + 48))(v58, 1, v59);
            sub_1C6D5B4AC(v58, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            sub_1C6D5B44C(v79, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v25 = v70;
            v37 = v75;
            if (v66 != 1)
            {
              return;
            }
          }

          else
          {
            sub_1C6D5B44C(v79, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v25 = v70;
            v37 = v75;
          }
        }

        else
        {
          v60 = *&v79[*(v69 + 20)];
          v61 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
          swift_beginAccess();
          v62 = v60 + v61;
          v63 = v68;
          sub_1C6D5B3CC(v62, v68, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v64 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
          v66 = (*(*(v64 - 8) + 48))(v63, 1, v64);
          sub_1C6D5B4AC(v63, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D5B44C(v79, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v25 = v70;
          v32 = v49;
          v37 = v75;
          v45 = v81;
          if (v66 != 1)
          {
            return;
          }
        }
      }

LABEL_4:
      ++v43;
    }

    while (v42 != v43);
  }
}

uint64_t sub_1C6D43E04@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v96 = a1;
  v99 = a3;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v92 = (&v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v91 = (&v89 - v8);
  v9 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v90 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v95 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v94 = &v89 - v21;
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v97 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v9);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v89 - v27;
  v29 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v98 = &v89 - v36;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v9);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v89 - v39;
  v41 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v40);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v46 = &qword_1EDCE52B0;
    v47 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v48 = v40;
LABEL_5:
    sub_1C6D5B4AC(v48, v46, v47);
    return (*(v100 + 56))(v99, 1, 2, v101);
  }

  sub_1C6D5B51C(v40, v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B3CC(&v45[*(v41 + 20)], v28, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v46 = &qword_1EDCE5398;
    v47 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata;
    v48 = v28;
    goto LABEL_5;
  }

  v50 = v98;
  sub_1C6D5B51C(v28, v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5B364(v50, v33, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v51 = v97;
  sub_1C6D5B51C(v33, v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v53 = v100;
  v52 = v101;
  if (!v96)
  {
    v59 = v100;
    v60 = *(v51 + *(v22 + 20));
    v61 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
    swift_beginAccess();
    v56 = v52;
    v62 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v63 = v95;
    sub_1C6D5B3CC(v60 + v61, v95, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v96 = *(v59 + 48);
    v64 = (v96)(v63, 1, v56);
    sub_1C6D5B4AC(v63, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v64 == 1)
    {
      sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6D5B44C(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return (*(v59 + 56))(v99, 1, 2, v56);
    }

    v70 = v60 + v61;
    v53 = v90;
    sub_1C6D5B3CC(v70, v90, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v71 = v96;
    v72 = (v96)(v53, 1, v56);
    v67 = v99;
    if (v72 == 1)
    {
      v73 = v92;
      *v92 = xmmword_1C6D7F510;
      sub_1C6D78A30();
      sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v74 = (v71)(v53, 1, v56);
      v69 = v100;
      if (v74 != 1)
      {
        sub_1C6D5B4AC(v53, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

LABEL_30:
      result = sub_1C6D5B44C(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v75 = *v73;
      v82 = v73[1];
      v83 = v82 >> 62;
      if ((v82 >> 62) > 1)
      {
        if (v83 != 2)
        {
          if (!v93)
          {
            goto LABEL_47;
          }

          goto LABEL_49;
        }

        v86 = v75 + 16;
        v84 = *(v75 + 16);
        v85 = *(v86 + 8);
        v81 = __OFSUB__(v85, v84);
        v75 = v85 - v84;
        if (v81)
        {
          __break(1u);
LABEL_37:
          v81 = __OFSUB__(HIDWORD(v75), v75);
          LODWORD(v75) = HIDWORD(v75) - v75;
          if (!v81)
          {
            v75 = v75;
            goto LABEL_39;
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }
      }

      else if (v83)
      {
        v81 = __OFSUB__(HIDWORD(v75), v75);
        LODWORD(v75) = HIDWORD(v75) - v75;
        if (v81)
        {
          goto LABEL_52;
        }

        v75 = v75;
      }

      else
      {
        v75 = BYTE6(v82);
      }

      if (v93 == v75 / 2)
      {
LABEL_47:
        sub_1C6D5B364(v73, v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v88 = 0;
LABEL_50:
        (*(v69 + 56))(v67, v88, 2, v56);
        return sub_1C6D5B44C(v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

LABEL_49:
      v88 = 2;
      goto LABEL_50;
    }

LABEL_29:
    sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v73 = v92;
    sub_1C6D5B51C(v53, v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v69 = v100;
    goto LABEL_30;
  }

  if (v96 == 1)
  {
    v54 = *(v51 + *(v22 + 20));
    v55 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    v56 = v94;
    sub_1C6D5B3CC(v54 + v55, v94, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v57 = *(v53 + 48);
    v58 = v57(v56, 1, v52);
    sub_1C6D5B4AC(v56, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v58 == 1)
    {
      sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6D5B44C(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return (*(v53 + 56))(v99, 1, 2, v101);
    }

    v65 = v54 + v55;
    v66 = v89;
    sub_1C6D5B3CC(v65, v89, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v67 = v101;
    v68 = v57(v66, 1, v101);
    v69 = v99;
    if (v68 == 1)
    {
      v62 = v91;
      *v91 = xmmword_1C6D7F510;
      sub_1C6D78A30();
      sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      if (v57(v66, 1, v67) != 1)
      {
        sub_1C6D5B4AC(v66, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v62 = v91;
      sub_1C6D5B51C(v66, v91, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

    result = sub_1C6D5B44C(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v75 = *v62;
    v76 = *(v62 + 1);
    v77 = v76 >> 62;
    if ((v76 >> 62) <= 1)
    {
      if (!v77)
      {
        v75 = BYTE6(v76);
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (v77 != 2)
    {
      if (!v93)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    v80 = v75 + 16;
    v78 = *(v75 + 16);
    v79 = *(v80 + 8);
    v81 = __OFSUB__(v79, v78);
    v75 = v79 - v78;
    if (!v81)
    {
LABEL_39:
      if (v93 == v75 / 2)
      {
LABEL_40:
        sub_1C6D5B364(v62, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v87 = 0;
LABEL_43:
        (*(v53 + 56))(v69, v87, 2, v67);
        return sub_1C6D5B44C(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

LABEL_42:
      v87 = 2;
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_1C6D5B44C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5B44C(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B44C(v51, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  return (*(v53 + 56))(v99, 1, 2, v52);
}

uint64_t UserEventHistoryAggregateStoreFactory.init(dataProvider:configurationManager:rootDirectory:aggregateStoreMetadataEndpoint:subscriptionController:readingHistory:headlineService:personalizationData:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v68 = a6;
  v69 = a8;
  v72 = a7;
  v73 = a4;
  v67 = a5;
  v74 = a3;
  v75 = a2;
  v76 = a1;
  v70 = sub_1C6D77F80();
  MEMORY[0x1EEE9AC00](v70, v10);
  v71 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75DE0();
  v59 = v12;
  v58 = *(v12 - 8);
  v13 = v58;
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1E6968FB0];
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v53 - v21;
  v61 = sub_1C6D79AF0();
  v22 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C6D79AE0();
  MEMORY[0x1EEE9AC00](v26, v27);
  v28 = sub_1C6D78E80();
  v30 = MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = *(v13 + 56);
  v63 = v13 + 56;
  v64 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  v62 = v31;
  (v31)(v8 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL, 1, 1, v12, v30);
  *(v8 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = 0;
  v57 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_refreshQueue;
  v56 = sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  v55 = "eddingPersistenceEnabled";
  sub_1C6D78E50();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&unk_1EDCE7EB8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v32 = MEMORY[0x1E69E8030];
  sub_1C6B1839C(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v33 = v32;
  v34 = v60;
  sub_1C6B17FD4(&qword_1EDCE7F28, &qword_1EDCE7F30, v33);
  sub_1C6D79CB0();
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8090], v61);
  v35 = v58;
  *(v8 + v57) = sub_1C6D79B20();
  v36 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter;
  v37 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v37 setAllowedUnits_];
  [v37 setCountStyle_];
  *(v9 + v36) = v37;
  v38 = v59;
  v39 = v75;
  *(v9 + 16) = v76;
  sub_1C6B16F28(v39, v9 + 24);
  sub_1C6D5B3CC(v74, v34, &unk_1EDCEA3A0, v65);
  if ((*(v35 + 48))(v34, 1, v38) == 1)
  {
    v40 = v66;
    v62(v66, 1, 1, v38);
  }

  else
  {
    v41 = v54;
    (*(v35 + 32))(v54, v34, v38);

    v40 = v66;
    sub_1C6D75D50();
    (*(v35 + 8))(v41, v38);
    v62(v40, 0, 1, v38);
  }

  v42 = v64;
  swift_beginAccess();
  v43 = MEMORY[0x1E6968FB0];
  sub_1C6D5D000(v40, v9 + v42, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v44 = v73;
  sub_1C6B16F28(v73, v9 + 64);
  v46 = v67;
  v45 = v68;
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) = v67;
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory) = v45;
  v47 = v72;
  sub_1C6B16F28(v72, v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService);
  v48 = v69;
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) = v69;
  swift_unownedRetainStrong();
  v67 = v46;
  v68 = v45;
  v49 = v48;
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v9;
  v77 = MEMORY[0x1E69E7CC0];
  sub_1C6D5B1C4(&qword_1EDCE7AB0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  v50 = MEMORY[0x1E69D6420];
  sub_1C6B1839C(0, &qword_1EDCE6670, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1C6B17FD4(&qword_1EDCE6660, &qword_1EDCE6670, v50);
  sub_1C6D79CB0();
  sub_1C6D5B20C(0);
  swift_allocObject();
  v51 = sub_1C6D781B0();

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1C6D5B4AC(v74, &unk_1EDCEA3A0, v43);
  __swift_destroy_boxed_opaque_existential_1(v75);
  *(v9 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore) = v51;

  return v9;
}

uint64_t sub_1C6D452C4@<X0>(uint64_t *x8_0@<X8>)
{
  swift_unownedRetainStrong();
  sub_1C6D45308(x8_0);
}

void sub_1C6D45308(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1C6D45608(0, v37);
  v4 = v37[0];
  v5 = v37[1];
  v6 = v37[2];
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDCE74A0;
  sub_1C6B1D314(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v9 = UserEventHistoryAggregateStore.description.getter();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v12 = sub_1C6D79AC0();
  v26 = v7;
  sub_1C6D78D30("Found cached aggregate Store %{public}@", 39, 2, &dword_1C6B09000, v7, v12, v8);

  v13 = v2[6];
  v14 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v13);
  (*(v14 + 8))(v30, v13, v14);
  v15 = v31;
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v20 = v35;
  v19 = v36;
  sub_1C6B16E58(v31, v32, v33, v34, v35, v36);
  sub_1C6B11190(v30);
  if (!v15)
  {
    goto LABEL_6;
  }

  v21 = v18;
  sub_1C6B16EC0(v15, v16, v17, v18, v20, v19);
  v22 = [v21 enablementRequirements];
  if (v22)
  {
    v23 = v22;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v24 = sub_1C6D45EC8(&v27);

    if ((v24 & 1) == 0)
    {
LABEL_6:

      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }
  }

  else
  {
    v25 = sub_1C6D79AC0();
    sub_1C6D78D30("Found no enablement requirements for stateless personalization, aggregate store is valid", 88, 2, &dword_1C6B09000, v26, v25, MEMORY[0x1E69E7CC0]);
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
}

NewsPersonalization::UserEventHistoryAggregateStore_optional __swiftcall UserEventHistoryAggregateStoreFactory.userEventHistoryAggregateStore()()
{
  if (*(v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore))
  {

    sub_1C6D781A0();
  }

  else
  {
    __break(1u);
  }

  result.value.decayRate = v4;
  result.value.aggregateIdentifierToEvents._rawValue = v2;
  result.value.aggregates._rawValue = v1;
  result.is_nil = v3;
  return result;
}

uint64_t UserEventHistoryAggregateStoreFactory.refreshAggregateStore()()
{
  sub_1C6B1BAAC(0);
  v0 = sub_1C6D78320();

  return v0;
}

void sub_1C6D45608(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v66 - v8;
  v10 = sub_1C6D75DE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDCE74A0;
    v16 = sub_1C6D79AC0();
    sub_1C6D78D30("Aggregate store with for browsing requested, skipping cache lookup", 66, 2, &dword_1C6B09000, v15, v16, MEMORY[0x1E69E7CC0]);
LABEL_9:
    sub_1C6D5D2C8();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    return;
  }

  v17 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  swift_beginAccess();
  sub_1C6D5B3CC(v2 + v17, v9, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C6D5B4AC(v9, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDCE74A0;
    v19 = sub_1C6D79AC0();
    sub_1C6D78D30("UserEventHistoryAggregateStoreFactory configured with no cache, not attempting to fetch aggregate store", 103, 2, &dword_1C6B09000, v18, v19, MEMORY[0x1E69E7CC0]);
    goto LABEL_9;
  }

  v21 = v2;
  (*(v11 + 32))(v14, v9, v10);
  v22 = [objc_opt_self() defaultManager];
  sub_1C6D75DB0();
  v23 = sub_1C6D79570();

  v24 = [v22 fileExistsAtPath_];

  if (!v24)
  {
    sub_1C6D5D2C8();
    swift_allocError();
    *v39 = 2;
    swift_willThrow();

    (*(v11 + 8))(v14, v10);
    return;
  }

  v71 = v22;
  v25 = sub_1C6D75E00();
  v27 = MEMORY[0x1E69E6158];
  v72 = v3;
  if (!v3)
  {
    v40 = v26;
    v69 = v25;
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDCE74A0;
    sub_1C6B1D314(0);
    v66 = v42;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C6D7E630;
    v73 = 0;
    v74 = 0xE000000000000000;
    v44 = *(v21 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter);
    v45 = v40 >> 62;
    v67 = v41;
    v68 = v40;
    if ((v40 >> 62) > 1)
    {
      v46 = 0;
      if (v45 != 2 || (v48 = *(v69 + 16), v47 = *(v69 + 24), v46 = v47 - v48, !__OFSUB__(v47, v48)))
      {
LABEL_27:
        v49 = [v44 stringFromByteCount_];
        v50 = sub_1C6D795A0();
        v52 = v51;

        MEMORY[0x1CCA55B00](v50, v52);

        v53 = v73;
        v54 = v74;
        *(v43 + 56) = v27;
        v55 = sub_1C6B2064C();
        *(v43 + 64) = v55;
        *(v43 + 32) = v53;
        *(v43 + 40) = v54;
        v56 = sub_1C6D79AC0();
        sub_1C6D78D30("Found a cached aggregate store of size %{public}@", 49, 2, &dword_1C6B09000, v67, v56, v43);

        sub_1C6D75B10();
        swift_allocObject();
        sub_1C6D75B00();
        sub_1C6D5D31C();
        v57 = v68;
        v58 = v69;
        v59 = v72;
        sub_1C6D75AF0();
        if (v59)
        {

          LODWORD(v72) = sub_1C6D79AA0();
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_1C6D7EB10;
          sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v61 = sub_1C6D7A0E0();
          v62 = MEMORY[0x1E69E6158];
          *(v60 + 56) = MEMORY[0x1E69E6158];
          *(v60 + 64) = v55;
          *(v60 + 32) = v61;
          *(v60 + 40) = v63;
          v73 = 0;
          v74 = 0xE000000000000000;
          v75 = v59;
          sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
          sub_1C6D79E60();
          v64 = v73;
          v65 = v74;
          *(v60 + 96) = v62;
          *(v60 + 104) = v55;
          *(v60 + 72) = v64;
          *(v60 + 80) = v65;
          sub_1C6D78D30("Error decoding data from %{public}@, clearing. Error: %{public}@", 64, 2, &dword_1C6B09000, v67, v72, v60);

          sub_1C6D4D8A4(v71);
          (*(v11 + 8))(v14, v10);

          sub_1C6B1C9F0(v69, v68);
        }

        else
        {
          (*(v11 + 8))(v14, v10);

          sub_1C6B1C9F0(v58, v57);
        }

        return;
      }

      __break(1u);
    }

    else if (!v45)
    {
      v46 = BYTE6(v40);
      goto LABEL_27;
    }

    if (__OFSUB__(HIDWORD(v69), v69))
    {
      __break(1u);
      return;
    }

    v46 = HIDWORD(v69) - v69;
    goto LABEL_27;
  }

  v69 = 0;
  v28 = MEMORY[0x1E69E6158];
  v70 = a2;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v68 = qword_1EDCE74A0;
  v29 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C6D7EB10;
  sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v31 = sub_1C6D7A0E0();
  v33 = v32;
  *(v30 + 56) = v27;
  v34 = sub_1C6B2064C();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v73 = 0;
  v74 = 0xE000000000000000;
  v35 = v72;
  v75 = v72;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v36 = v73;
  v37 = v74;
  *(v30 + 96) = v28;
  *(v30 + 104) = v34;
  *(v30 + 72) = v36;
  *(v30 + 80) = v37;
  sub_1C6D78D30("Error reading data from %{public}@, clearing. Error: %{public}@", 63, 2, &dword_1C6B09000, v68, v29, v30);

  v38 = v71;
  sub_1C6D4D8A4(v71);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6D45EC8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C6D77050();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(v10 + 16);
  if (v11 < [v2 minimumAggregateCount])
  {
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDCE74A0;
    sub_1C6B1D314(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7EB10;
    v58 = *(v10 + 16);
    v14 = sub_1C6D7A0E0();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1C6B2064C();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v58 = [v2 minimumAggregateCount];
    v19 = sub_1C6D7A0E0();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v21 = sub_1C6D79AC0();
    sub_1C6D78D30("Aggregate store validation failed, its aggregate count %{public}@ did not satisfy the minimum aggregate count requirement %{public}@", 132, 2, &dword_1C6B09000, v12, v21, v13);
LABEL_5:

    return 0;
  }

  sub_1C6D77030();
  v22 = sub_1C6D76FE0();
  v24 = v23;
  (*(v5 + 8))(v9, v4);
  if (!*(v10 + 16))
  {

    goto LABEL_14;
  }

  v25 = sub_1C6B5DEA8(v22, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_14:
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v40 = qword_1EDCE74A0;
    v41 = sub_1C6D79AC0();
    sub_1C6D78D30("Aggregate store validation failed, it did not have a baseline", 61, 2, &dword_1C6B09000, v40, v41, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  v28 = [*(*(v10 + 56) + 8 * v25) eventCount];
  v29 = [v2 minimumEventCount];
  if (v29 >= 1 && v28 < v29)
  {
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDCE74A0;
    sub_1C6B1D314(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C6D7EB10;
    v58 = v28;
    v32 = sub_1C6D7A0E0();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1C6B2064C();
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v58 = [v2 minimumEventCount];
    v37 = sub_1C6D7A0E0();
    *(v31 + 96) = v35;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    v39 = sub_1C6D79AC0();
    sub_1C6D78D30("Aggregate store validation failed, its baseline event count %{public}@ did not satisfy the minimum event count requirement %{public}@", 133, 2, &dword_1C6B09000, v30, v39, v31);
    goto LABEL_5;
  }

  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDCE74A0;
  sub_1C6B1D314(0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C6D80210;
  v58 = *(v10 + 16);
  v45 = sub_1C6D7A0E0();
  v47 = v46;
  v48 = MEMORY[0x1E69E6158];
  *(v44 + 56) = MEMORY[0x1E69E6158];
  v49 = sub_1C6B2064C();
  *(v44 + 64) = v49;
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v58 = [v2 minimumAggregateCount];
  v50 = sub_1C6D7A0E0();
  *(v44 + 96) = v48;
  *(v44 + 104) = v49;
  *(v44 + 72) = v50;
  *(v44 + 80) = v51;
  v58 = v28;
  v52 = sub_1C6D7A0E0();
  *(v44 + 136) = v48;
  *(v44 + 144) = v49;
  *(v44 + 112) = v52;
  *(v44 + 120) = v53;
  v58 = [v2 minimumEventCount];
  v54 = sub_1C6D7A0E0();
  *(v44 + 176) = v48;
  *(v44 + 184) = v49;
  *(v44 + 152) = v54;
  *(v44 + 160) = v55;
  v56 = sub_1C6D79AC0();
  sub_1C6D78D30("Aggregate store passed validation with %{public}@ aggregates satisfying minimum of %{public}@ and %{public}@ baseline events satisfy minimum of %{public}@", 154, 2, &dword_1C6B09000, v43, v56, v44);

  return 1;
}

uint64_t sub_1C6D463FC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a6;
  sub_1C6B1839C(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v84 - v15;
  v96 = sub_1C6D75F50();
  v100 = *(v96 - 8);
  v17 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v96, v18);
  v95 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v99 = v84 - v21;
  v22 = swift_allocObject();
  v97 = a2;
  v98 = a1;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v101 = v22;
  v23 = qword_1EDCE7498;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDCE74A0;
  v25 = sub_1C6D79A90();
  sub_1C6B1D314(0);
  v94 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C6D7E630;
  aBlock[0] = a5;
  v28 = sub_1C6D7A0E0();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1C6B2064C();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_1C6D78D30("Looking for %{public}@ articles in reading history", 50, 2, &dword_1C6B09000, v24, v25, v27);

  if (a5 < 1)
  {

    aBlock[0] = MEMORY[0x1E69E7CC0];
    return (v98)(aBlock);
  }

  v32 = [*(*(v102 + 16) + 16) earliestSessionDate];
  if (v32)
  {
    v33 = v32;
    sub_1C6D75F20();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v96;
  v36 = v100;
  (*(v100 + 56))(v12, v34, 1, v96);
  sub_1C6C35894(v12, v16);
  if ((*(v36 + 48))(v16, 1, v35) == 1)
  {

    sub_1C6D5B4AC(v16, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    v37 = sub_1C6D79A90();
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30("Didn't find an earliestSessionDate so not providing any headlines from reading history for processing", 101, 2, &dword_1C6B09000, v24, v37, MEMORY[0x1E69E7CC0]);
    aBlock[0] = v38;
    return (v98)(aBlock);
  }

  v90 = v24;
  v40 = v17;
  v93 = a5;
  v41 = v36 + 32;
  v42 = *(v36 + 32);
  v43 = v99;
  v42(v99, v16, v35);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = (v44 + 16);
  v92 = *(v102 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_readingHistory);
  v46 = v95;
  v86 = *(v36 + 16);
  v86(v95, v43, v35);
  v84[1] = v36 + 16;
  v47 = *(v36 + 80);
  v48 = (v47 + 24) & ~v47;
  v87 = v40;
  v89 = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = v44;
  v88 = v41;
  v85 = v42;
  v42((v49 + v48), v46, v35);
  aBlock[4] = sub_1C6D5D1A8;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6D46FE4;
  aBlock[3] = &block_descriptor_16;
  v50 = _Block_copy(aBlock);
  v91 = v44;

  v51 = [v92 sortedVisitedArticleIDsSatisfying_];
  _Block_release(v50);
  v52 = MEMORY[0x1E69E6158];
  sub_1C6D79780();

  v53 = sub_1C6B75C84();
  v93 = v54;
  v56 = v55;
  v58 = v57;
  v59 = sub_1C6D79A90();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1C6D807C0;
  swift_beginAccess();
  v61 = *v45;
  v62 = v52;
  v103 = v61;
  v63 = sub_1C6D7A0E0();
  *(v60 + 56) = v52;
  *(v60 + 64) = v31;
  *(v60 + 32) = v63;
  *(v60 + 40) = v64;
  v94 = v58;
  v65 = v58 >> 1;
  if (__OFSUB__(v65, v56))
  {
    __break(1u);
    goto LABEL_25;
  }

  v103 = v65 - v56;
  v66 = sub_1C6D7A0E0();
  *(v60 + 96) = v52;
  *(v60 + 104) = v31;
  *(v60 + 72) = v66;
  *(v60 + 80) = v67;
  sub_1C6D5B1C4(&qword_1EDCE6380, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v68 = sub_1C6D7A0E0();
  *(v60 + 136) = v52;
  *(v60 + 144) = v31;
  *(v60 + 112) = v68;
  *(v60 + 120) = v69;
  sub_1C6D78D30("Considered %{public}@ total reading history headlines and found %{public}@ headlines IDs from reading history before earliest session date %{public}@", 149, 2, &dword_1C6B09000, v90, v59, v60);

  if (v56 != v65)
  {
    v98 = ~v89;
    __swift_project_boxed_opaque_existential_1((v102 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService), *(v102 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService + 24));
    v62 = v94;
    if ((v94 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_16:
      sub_1C6B6E3BC(v53, v93, v56, v62);
      v70 = v96;
      v71 = v99;
      v72 = v85;
      goto LABEL_21;
    }

    sub_1C6D7A190();
    swift_unknownObjectRetain_n();
    v73 = swift_dynamicCastClass();
    if (!v73)
    {
      swift_unknownObjectRelease();
      v73 = MEMORY[0x1E69E7CC0];
    }

    v74 = *(v73 + 16);

    if (v74 == v65 - v56)
    {
      v75 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v70 = v96;
      v71 = v99;
      v72 = v85;
      if (v75)
      {
LABEL_22:
        v76 = [objc_opt_self() defaultCachePolicy];
        sub_1C6D79350();

        v77 = v95;
        v86(v95, v71, v70);
        v78 = (v89 + 16) & v98;
        v79 = (v87 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        v72(v80 + v78, v77, v70);
        v81 = (v80 + v79);
        v82 = v101;
        *v81 = sub_1C6C1EB50;
        v81[1] = v82;
        v83 = sub_1C6D78210();
        sub_1C6D782B0();
        swift_unknownObjectRelease();

        (*(v100 + 8))(v71, v70);
      }

LABEL_21:
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v103 = MEMORY[0x1E69E7CC0];
  (v98)(&v103);
  swift_unknownObjectRelease();
  (*(v100 + 8))(v99, v35);
}

BOOL sub_1C6D46D54(void *a1, uint64_t a2)
{
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  *(a2 + 16) = v15;
  v16 = [a1 lastVisitedAt];
  if (v16)
  {
    v17 = v16;
    sub_1C6D75F20();

    (*(v5 + 32))(v12, v8, v4);
    sub_1C6D75F10();
    v19 = v18;
    sub_1C6D75F10();
    v21 = v20;
    (*(v5 + 8))(v12, v4);
    return v19 < v21;
  }

  if (qword_1EDCE7498 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v23 = qword_1EDCE74A0;
  v24 = sub_1C6D79A90();
  sub_1C6B1D314(0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6D7E630;
  v29 = 0;
  v30 = 0xE000000000000000;
  v28 = a1;
  sub_1C6B0F7A8(0, &qword_1EDCE6568, &protocolRef_FCReadingHistoryItem);
  sub_1C6D79E60();
  v26 = v29;
  v27 = v30;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C6B2064C();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_1C6D78D30("Reading history item had no lastVisitedAt specified %{public}@", 62, 2, &dword_1C6B09000, v23, v24, v25);

  return 0;
}

uint64_t sub_1C6D46FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1C6D47040(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = *a1;
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDCE74A0;
  v5 = sub_1C6D79A90();
  sub_1C6B1D314(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D7EB10;
  if (v3 >> 62)
  {
    sub_1C6D79E90();
  }

  v7 = sub_1C6D7A0E0();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6B2064C();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_1C6D75F50();
  sub_1C6D5B1C4(&qword_1EDCE6380, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v12 = sub_1C6D7A0E0();
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  sub_1C6D78D30("Got back %{public}@ headlines from reading history before earliest session date %{public}@", 90, 2, &dword_1C6B09000, v4, v5, v6);

  return a3(v3);
}

uint64_t sub_1C6D471F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDCE74A0;
  v9 = sub_1C6D79AC0();
  sub_1C6D78D30("Found valid configuration", 25, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
  v21 = v4;
  LOBYTE(v22) = v6;
  sub_1C6D5D150(0, &unk_1EDCE5DB8, &type metadata for StatelessPersonalizationConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v10 = v3;
  v11 = v2;
  v12 = v5;
  v13 = v4;
  v14 = v7;
  sub_1C6D78300();
  v15 = [v14 featureFlags];
  [v15 readingHistoryItemCountToProcess];

  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1C6B1839C(0, &unk_1EDCE5D50, sub_1C6B1BE60, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1C6D78350();
  v18 = sub_1C6D78210();
  v19 = sub_1C6D781F0();

  return v19;
}

id sub_1C6D47420(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCE74A0;
  v11 = sub_1C6D79AC0();
  sub_1C6D78D30("Building aggregateStore", 23, 2, &dword_1C6B09000, v10, v11, MEMORY[0x1E69E7CC0]);
  v12 = [v9 eventConditionalsConfigurations];
  result = [v8 defaultTopicsConfig];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  v15 = [v7 requiredDimensions];
  v16 = [v7 fittingConfiguration];
  v17 = [v16 embeddingType];

  result = [*(a3 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_subscriptionController) subscribedTagIDs];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_1C6D79780();

  v20 = sub_1C6B1E610(v19);

  sub_1C6D47674(v12, v6, v9, v14, v15, v17, v20, a2, &v25, a4 & 1);

  v21 = v25;
  v22 = v26;
  v23 = v27;
  if ((a4 & 1) == 0)
  {
    sub_1C6D4C430(&v25);
  }

  v25 = v21;
  v26 = v22;
  v27 = v23;
  sub_1C6D5D150(0, &qword_1EDCE5DB0, &type metadata for UserEventHistoryAggregateStore, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6D47674@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v11 = v10;
  v757 = a8;
  v756 = a7;
  v696 = a6;
  v686 = a5;
  v761 = a3;
  v760 = a2;
  v759 = a1;
  v649 = a9;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v628 = (&v626 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v718 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v718, v16);
  v717 = &v626 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v713 = &v626 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v712 = &v626 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v637 = &v626 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v656 = &v626 - v30;
  v741 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v753 = *(v741 - 8);
  MEMORY[0x1EEE9AC00](v741, v31);
  v693 = &v626 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v692 = &v626 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v635 = &v626 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v716 = &v626 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v634 = &v626 - v44;
  sub_1C6B1839C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v18);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v735 = &v626 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v655 = &v626 - v50;
  v739 = sub_1C6D789A0();
  v752 = *(v739 - 8);
  MEMORY[0x1EEE9AC00](v739, v51);
  v734 = &v626 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v654 = &v626 - v55;
  v748 = sub_1C6D77050();
  v750 = *(v748 - 8);
  MEMORY[0x1EEE9AC00](v748, v56);
  v762 = &v626 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v765 = (&v626 - v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  v672 = &v626 - v63;
  v751 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v754 = *(v751 - 8);
  MEMORY[0x1EEE9AC00](v751, v64);
  v631 = (&v626 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v66, v67);
  v633 = (&v626 - v68);
  v630 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v630, v69);
  v657 = &v626 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v632 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v632, v71);
  v638 = &v626 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = _s23EmbeddingValidityResultOMa(0);
  MEMORY[0x1EEE9AC00](v73 - 8, v74);
  v668 = &v626 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76, v77);
  v667 = &v626 - v78;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v18);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v629 = &v626 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82, v83);
  v729 = &v626 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v733 = &v626 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v653 = &v626 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v660 = &v626 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v662 = &v626 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v691 = &v626 - v99;
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v18);
  MEMORY[0x1EEE9AC00](v100 - 8, v101);
  v746 = &v626 - v102;
  v714 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v745 = *(v714 - 8);
  MEMORY[0x1EEE9AC00](v714, v103);
  v636 = &v626 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105, v106);
  v639 = &v626 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v661 = &v626 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v763 = &v626 - v113;
  v652 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v674 = *(v652 - 8);
  MEMORY[0x1EEE9AC00](v652, v114);
  v747 = &v626 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116, v117);
  v659 = &v626 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v758 = &v626 - v121;
  v122 = sub_1C6D78A00();
  v647 = *(v122 - 8);
  v648 = v122;
  MEMORY[0x1EEE9AC00](v122, v123);
  v670 = &v626 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1C6D78D60();
  v645 = *(v125 - 8);
  v646 = v125;
  MEMORY[0x1EEE9AC00](v125, v126);
  v128 = &v626 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1C6D78D90();
  v642 = *(v129 - 8);
  v643 = v129;
  MEMORY[0x1EEE9AC00](v129, v130);
  v132 = &v626 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v133 = qword_1EDCE74A0;
  sub_1C6D78D70();
  v641 = v132;
  sub_1C6D78D80();
  sub_1C6D78D40();
  v644 = v128;
  sub_1C6D78D50();
  tf_os_signpost_aggregate_store_generation_begin();
  sub_1C6B1D314(0);
  v705 = v134;
  v135 = swift_allocObject();
  v698 = xmmword_1C6D7E630;
  *(v135 + 16) = xmmword_1C6D7E630;
  *&v783[0] = 0;
  *(&v783[0] + 1) = 0xE000000000000000;
  v136 = MEMORY[0x1E69E7CC8];
  if (a10)
  {
    v137 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v137 = 0;
  }

  if (a10)
  {
    v138 = 0;
  }

  else
  {
    v138 = 7632239;
  }

  if (a10)
  {
    v139 = 0xE000000000000000;
  }

  else
  {
    v139 = 0xE300000000000000;
  }

  MEMORY[0x1CCA55B00](v138, v139);

  v140 = v783[0];
  *(v135 + 56) = MEMORY[0x1E69E6158];
  v699 = sub_1C6B2064C();
  *(v135 + 64) = v699;
  *(v135 + 32) = v140;
  v141 = sub_1C6D79AC0();
  v707 = v133;
  sub_1C6D78D30("Creating a user event history aggregate store with%{public}@ events", 67, 2, &dword_1C6B09000, v133, v141, v135);

  v142 = swift_allocObject();
  v755 = v142;
  *(v142 + 16) = v136;
  v697 = (v142 + 16);
  v143 = swift_allocObject();
  v682 = v143;
  *(v143 + 16) = v137;
  v742 = v143 + 16;
  v144 = swift_allocObject();
  v669 = v144;
  *(v144 + 16) = 0;
  v650 = (v144 + 16);
  v145 = swift_allocObject();
  v681 = v145;
  *(v145 + 16) = 0;
  v685 = (v145 + 16);
  v146 = swift_allocObject();
  v680 = v146;
  *(v146 + 16) = 0;
  v683 = (v146 + 16);
  v147 = swift_allocObject();
  v679 = v147;
  *(v147 + 16) = 0;
  v663 = (v147 + 16);
  v148 = swift_allocObject();
  v678 = v148;
  *(v148 + 16) = 0;
  v664 = (v148 + 16);
  v149 = swift_allocObject();
  v677 = v149;
  *(v149 + 16) = 0;
  v665 = (v149 + 16);
  v150 = swift_allocObject();
  v676 = v150;
  *(v150 + 16) = 0;
  v666 = (v150 + 16);
  CACurrentMediaTime();
  v151 = v11[6];
  v152 = v11[7];
  v702 = v11;
  __swift_project_boxed_opaque_existential_1(v11 + 3, v151);
  (*(v152 + 8))(&v776, v151, v152);
  v783[4] = v780;
  v783[5] = v781;
  v784[0] = v782[0];
  *(v784 + 14) = *(v782 + 14);
  v783[0] = v776;
  v783[1] = v777;
  v783[2] = v778;
  v783[3] = v779;
  sub_1C6B11190(v783);
  v715 = 0;
  if (LOBYTE(v784[1]) == 1)
  {
    v715 = [objc_allocWithZone(MEMORY[0x1E69B5670]) init];
  }

  v153 = v702[6];
  v154 = v702[7];
  __swift_project_boxed_opaque_existential_1(v702 + 3, v153);
  (*(v154 + 8))(v774, v153, v154);
  v780 = v774[4];
  v781 = v774[5];
  v782[0] = *v775;
  *(v782 + 14) = *&v775[14];
  v776 = v774[0];
  v777 = v774[1];
  v778 = v774[2];
  v779 = v774[3];
  sub_1C6B11190(&v776);
  if (LOBYTE(v782[1]) == 1)
  {
    v155 = [objc_allocWithZone(MEMORY[0x1E69B5668]) init];
  }

  else
  {
    v155 = 0;
  }

  v156 = v761;
  v157 = [v761 featureFlags];
  v158 = [v157 enableSingleLifetimeSeenEventPerArticle];

  v159 = MEMORY[0x1E69E7CD0];
  if (v158)
  {
    v160 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v160 = 0;
  }

  v161 = swift_allocObject();
  v689 = v161;
  *(v161 + 16) = v160;
  v695 = (v161 + 16);
  v162 = [v156 featureFlags];
  v163 = [v162 enableSingleLifetimeSeenEventPerArticle];

  if (v163)
  {
    v164 = v159;
  }

  else
  {
    v164 = 0;
  }

  v165 = swift_allocObject();
  v688 = v165;
  *(v165 + 16) = v164;
  v694 = (v165 + 16);
  v166 = [a4 topicsConfig];
  sub_1C6B0C69C(0, &unk_1EDCEA4F0, 0x1E69B5470);
  v167 = sub_1C6D79780();

  if (v167 >> 62)
  {
    v168 = sub_1C6D79E90();
    v749 = v155;
    if (v168)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v168 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v749 = v155;
    if (v168)
    {
LABEL_25:
      *&v774[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39B38(0, v168 & ~(v168 >> 63), 0);
      if (v168 < 0)
      {
        goto LABEL_304;
      }

      v169 = 0;
      v170 = *&v774[0];
      v171 = v167;
      v764 = (v167 & 0xC000000000000001);
      *&v766 = v167;
      v172 = v168;
      do
      {
        if (v764)
        {
          v173 = MEMORY[0x1CCA56240](v169, v171);
        }

        else
        {
          v173 = *(v171 + 8 * v169 + 32);
        }

        v174 = v173;
        v175 = [v173 topicID];
        v176 = sub_1C6D795A0();
        v178 = v177;

        *&v774[0] = v170;
        v180 = *(v170 + 16);
        v179 = *(v170 + 24);
        if (v180 >= v179 >> 1)
        {
          sub_1C6B39B38((v179 > 1), v180 + 1, 1);
          v170 = *&v774[0];
        }

        ++v169;
        *(v170 + 16) = v180 + 1;
        v181 = (v170 + 24 * v180);
        v181[4] = v176;
        v181[5] = v178;
        v181[6] = v174;
        v171 = v766;
      }

      while (v172 != v169);

      v155 = v749;
      goto LABEL_36;
    }
  }

  v170 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v182 = MEMORY[0x1E69E7CC8];
  if (*(v170 + 16))
  {
    sub_1C6B61548(0, &unk_1EDCDF660, &unk_1EDCEA4F0, 0x1E69B5470);
    v182 = sub_1C6D79F20();
  }

  *&v774[0] = v182;
  v167 = 0;
  sub_1C6D5C81C(v170, 1, v774);
  v183 = swift_allocObject();

  v675 = v183;
  *(v183 + 16) = *&v774[0];
  v711 = (v183 + 16);
  v184 = swift_allocObject();
  v687 = v184;
  *(v184 + 16) = v756;
  v640 = v184 + 16;

  v185 = sub_1C6D79A90();
  v186 = swift_allocObject();
  *(v186 + 16) = v698;
  if (v757 >> 62)
  {
    goto LABEL_293;
  }

  for (i = *((v757 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    *&v774[0] = i;
    v188 = sub_1C6D7A0E0();
    v189 = v699;
    *(v186 + 56) = MEMORY[0x1E69E6158];
    *(v186 + 64) = v189;
    *(v186 + 32) = v188;
    *(v186 + 40) = v190;
    sub_1C6D78D30("Processing %{public}@ headlines from reading history", 52, 2, &dword_1C6B09000, v707, v185, v186);

    v191 = [v761 eventConditionalsConfigurations];
    v192 = [v191 articleReadEventConditionals];

    [v192 minimumDuration];
    v194 = v193;
    v195 = v193;

    if ((*&v195 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    if (v194 <= -9.22337204e18)
    {
      goto LABEL_295;
    }

    if (v194 >= 9.22337204e18)
    {
      goto LABEL_296;
    }

    v196 = v670;
    v197 = sub_1C6D789D0();
    *&v766 = &v626;
    MEMORY[0x1EEE9AC00](v197, v198);
    v199 = v680;
    v200 = v681;
    *(&v626 - 22) = v681;
    *(&v626 - 21) = v199;
    v201 = v696;
    v202 = v686;
    *(&v626 - 20) = v696;
    *(&v626 - 19) = v202;
    v203 = v676;
    *(&v626 - 18) = v677;
    *(&v626 - 17) = v203;
    v204 = v678;
    *(&v626 - 16) = v679;
    *(&v626 - 15) = v204;
    v205 = v702;
    *(&v626 - 14) = v715;
    *(&v626 - 13) = v205;
    v206 = v688;
    *(&v626 - 12) = v689;
    *(&v626 - 11) = v206;
    v207 = v761;
    *(&v626 - 10) = v759;
    *(&v626 - 9) = v207;
    v208 = v755;
    *(&v626 - 8) = v687;
    *(&v626 - 7) = v208;
    *(&v626 - 6) = v760;
    *(&v626 - 5) = v155;
    v209 = v682;
    v623 = v682;
    v624 = v675;
    v625 = v196;
    sub_1C6D42908(sub_1C6D5CB50, (&v626 - 24), v757);
    v703 = v167;
    v210 = swift_allocObject();
    v210[2] = v669;
    v210[3] = v200;
    v210[4] = v680;
    v210[5] = v201;
    v210[6] = v202;
    v211 = v678;
    v210[7] = v677;
    v210[8] = v203;
    v210[9] = v679;
    v210[10] = v211;
    v210[11] = v715;
    v210[12] = v205;
    v212 = v688;
    v210[13] = v689;
    v210[14] = v212;
    v213 = v761;
    v210[15] = v759;
    v210[16] = v213;
    v214 = v755;
    v210[17] = v687;
    v210[18] = v214;
    v210[19] = v760;
    v210[20] = v155;
    v210[21] = v209;
    v210[22] = v675;
    v671 = v155;
    *&v766 = sel_featureFlags;

    v215 = v205;

    v690 = v759;
    v216 = v761;

    v651 = v760;

    v684 = v715;
    v756 = v216;
    v217 = [v216 v766];
    v218 = [v217 eventLimit];

    v658 = v210;
    if (v218)
    {
      v219 = [v218 integerValue];

      v220 = swift_allocObject();
      *(v220 + 16) = v698;
      v221 = MEMORY[0x1E69E65A8];
      *(v220 + 56) = MEMORY[0x1E69E6530];
      *(v220 + 64) = v221;
      *(v220 + 32) = v219;
      sub_1C6D79AC0();
      sub_1C6D78D30("Processing user event history sessions with event limit %lu", v626);

      v222 = v215[2];
      v223 = swift_allocObject();
      *(v223 + 16) = 0;
      v224 = swift_allocObject();
      *(v224 + 16) = v223;
      *(v224 + 24) = v219;
      v225 = *(*v222 + 160);

      v225(sub_1C6CDD34C, v224, 1, sub_1C6D5CBAC, v210);
    }

    else
    {
      v226 = sub_1C6D79AC0();
      sub_1C6D78D30("Processing user event history sessions", 38, 2, &dword_1C6B09000, v707, v226, MEMORY[0x1E69E7CC0]);
      v227 = *(*v215[2] + 160);

      v227(0, 0, 1, sub_1C6D5CBAC, v210);
    }

    v155 = v742;
    v228 = v748;
    v229 = v750;
    v230 = v685;
    v186 = v674;
    v231 = v758;
    v232 = [v756 featureFlags];
    v233 = [v232 enableSyntheticTagFollowEvents];

    if (v233)
    {
      v234 = v230;
      v235 = sub_1C6D79A90();
      v236 = swift_allocObject();
      *(v236 + 16) = v698;
      v237 = v640;
      swift_beginAccess();
      *&v774[0] = *(*v237 + 16);
      v238 = sub_1C6D7A0E0();
      v239 = v699;
      *(v236 + 56) = MEMORY[0x1E69E6158];
      *(v236 + 64) = v239;
      *(v236 + 32) = v238;
      *(v236 + 40) = v240;
      sub_1C6D78D30("Processing %{public}@ historical tag follows", 44, 2, &dword_1C6B09000, v707, v235, v236);

      v167 = v703;
      v242 = sub_1C6D42358(v241);
      v703 = v167;

      v704 = *(v242 + 16);
      if (v704)
      {
        v243 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v706 = v242;
        v719 = v243;
        v701 = v242 + v243;
        v230 = v234;
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        v244 = 0;
        v700 = (v745 + 48);
        v764 = (v754 + 6);
        v627 = (v753 + 56);
        v229 = v750;
        v754 = (v750 + 8);
        v738 = (v752 + 48);
        v710 = (v752 + 32);
        v737 = (v752 + 8);
        v736 = (v753 + 48);
        v761 = (v750 + 16);
        v726 = (v750 + 88);
        v725 = *MEMORY[0x1E69E36C0];
        v724 = *MEMORY[0x1E69E36A8];
        v723 = *MEMORY[0x1E69E36B0];
        v721 = *MEMORY[0x1E69E36B8];
        v709 = (v750 + 96);
        v720 = *MEMORY[0x1E69E36C8];
        v245 = v746;
        v185 = v755;
        while (1)
        {
          if (v244 >= *(v706 + 16))
          {
            goto LABEL_289;
          }

          v246 = *(v186 + 72);
          v722 = v244;
          v740 = v246;
          sub_1C6D5B364(v701 + v246 * v244, v231, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          if (__OFADD__(*v230, 1))
          {
LABEL_290:
            __break(1u);
            goto LABEL_291;
          }

          ++*v230;
          v167 = qword_1EDCE5660;
          sub_1C6D5B3CC(v231, v245, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          if ((*v700)(v245, 1, v714) == 1)
          {
            sub_1C6D5B44C(v231, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
            sub_1C6D5B4AC(v245, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            goto LABEL_196;
          }

          sub_1C6D5B51C(v245, v763, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v167 = v691;
          Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v691);
          v757 = *v764;
          v247 = (v757)(v167, 1, v751);
          sub_1C6D5B4AC(v167, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          if (v247 != 1)
          {
            if (__OFADD__(*v683, 1))
            {
              goto LABEL_292;
            }

            ++*v683;
          }

          if (v696)
          {
            if (v696 == 1)
            {
              v167 = v667;
              sub_1C6D43E04(1, v686, v667);
              v248 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
              v249 = (*(*(v248 - 8) + 48))(v167, 2, v248);
              if (!v249)
              {
                if (__OFADD__(*v665, 1))
                {
                  goto LABEL_311;
                }

                ++*v665;
                v254 = v667;
LABEL_71:
                sub_1C6D5B44C(v254, _s23EmbeddingValidityResultOMa);
                goto LABEL_72;
              }

              if (v249 != 1)
              {
                v250 = v666;
                v251 = *v666 + 1;
                if (__OFADD__(*v666, 1))
                {
                  goto LABEL_309;
                }

LABEL_66:
                *v250 = v251;
              }
            }
          }

          else
          {
            v167 = v668;
            sub_1C6D43E04(0, v686, v668);
            v252 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
            v253 = (*(*(v252 - 8) + 48))(v167, 2, v252);
            if (!v253)
            {
              if (__OFADD__(*v663, 1))
              {
                goto LABEL_308;
              }

              ++*v663;
              v254 = v668;
              goto LABEL_71;
            }

            if (v253 != 1)
            {
              v250 = v664;
              v251 = *v664 + 1;
              if (__OFADD__(*v664, 1))
              {
                goto LABEL_310;
              }

              goto LABEL_66;
            }
          }

LABEL_72:
          v255 = v230;
          v256 = v763;
          if (v715)
          {
            sub_1C6D4F618(v763);
          }

          v167 = *v695;
          v257 = *v694;

          sub_1C6D4DB40(v256, v167, v257, v690, v773);

          if (!v773[1])
          {
            v258 = [v756 aggregateModificationConfigurations];
            *&v774[0] = 0;
            BYTE8(v774[0]) = 1;
            v259 = sub_1C6C40FC8(v256, v774);

            v261 = v661;
            v260 = v662;
            v743 = v259;
            if (!v259)
            {
              if (qword_1EDCE9828 != -1)
              {
                swift_once();
              }

              v167 = qword_1EDCE9830;
              v276 = sub_1C6D79AA0();
              v277 = swift_allocObject();
              *(v277 + 16) = v698;
              v278 = v763;
              v279 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
              v280 = v699;
              *(v277 + 56) = MEMORY[0x1E69E6158];
              *(v277 + 64) = v280;
              *(v277 + 32) = v279;
              *(v277 + 40) = v281;
              sub_1C6D78D30("Found nil aggregate modifications for event %{public}@", 54, 2, &dword_1C6B09000, v167, v276, v277);

              sub_1C6D5B44C(v278, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v231 = v758;
              sub_1C6D5B44C(v758, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              v245 = v746;
              v186 = v674;
              v185 = v755;
              v282 = v722;
              v230 = v255;
              v229 = v750;
              goto LABEL_197;
            }

            sub_1C6D5B364(v256, v661, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v263 = v657;
            if (EnumCaseMultiPayload)
            {
              sub_1C6D5B44C(v261, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v264 = v639;
              sub_1C6D5B364(v256, v639, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v265 = swift_getEnumCaseMultiPayload();
              v229 = v750;
              if (v265 == 1)
              {
                sub_1C6D5B51C(v264, v263, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
                v266 = v694;
                swift_beginAccess();
                if (*v266)
                {
                  v267 = v629;
                  sub_1C6D5B3CC(v263 + *(v630 + 20), v629, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v268 = v751;
                  v269 = v757;
                  v270 = (v757)(v267, 1, v751);
                  v271 = v654;
                  if (v270 == 1)
                  {
                    v272 = v269;
                    v273 = v631;
                    *v631 = 0;
                    v273[1] = 0xE000000000000000;
                    (*v627)(v273 + *(v268 + 20), 1, 1, v741);
                    sub_1C6D78A30();
                    v274 = v268;
                    v275 = v273;
                    if (v272(v267, 1, v274) != 1)
                    {
                      sub_1C6D5B4AC(v267, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                    }
                  }

                  else
                  {
                    v275 = v631;
                    sub_1C6D5B51C(v267, v631, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }

                  v302 = v275;
                  v303 = *v275;
                  v304 = *(v302 + 8);

                  sub_1C6D5B44C(v302, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  sub_1C6B1E6A8(&v770, v303, v304);
                  swift_endAccess();

                  v263 = v657;
                  v299 = v755;
                }

                else
                {
                  swift_endAccess();
                  v299 = v755;
                  v271 = v654;
                }

                sub_1C6D5B44C(v263, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
                v285 = v653;
              }

              else
              {
                sub_1C6D5B44C(v264, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
                v293 = v636;
                sub_1C6D5B364(v256, v636, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
                if (swift_getEnumCaseMultiPayload() == 9)
                {
                  v294 = v628;
                  sub_1C6D5B51C(v293, v628, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
                  v295 = *v294;
                  v296 = v294[1];
                  swift_beginAccess();
                  sub_1C6D39EFC(v295, v296);
                  swift_endAccess();

                  v297 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
                  v298 = v294;
                }

                else
                {
                  v297 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
                  v298 = v293;
                }

                sub_1C6D5B44C(v298, v297);
                v285 = v653;
                v271 = v654;
                v299 = v755;
              }
            }

            else
            {
              v283 = v638;
              sub_1C6D5B51C(v261, v638, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              v284 = v695;
              swift_beginAccess();
              v285 = v653;
              v229 = v750;
              if (*v284)
              {
                sub_1C6D5B3CC(v283 + *(v632 + 20), v260, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v286 = v751;
                v287 = v757;
                if ((v757)(v260, 1, v751) == 1)
                {
                  v288 = v260;
                  v289 = v633;
                  *v633 = 0;
                  v289[1] = 0xE000000000000000;
                  (*v627)(v289 + *(v286 + 20), 1, 1, v741);
                  sub_1C6D78A30();
                  v290 = v288;
                  v291 = v289;
                  v292 = v287(v290, 1, v286);
                  v271 = v654;
                  if (v292 != 1)
                  {
                    sub_1C6D5B4AC(v662, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }
                }

                else
                {
                  v291 = v633;
                  sub_1C6D5B51C(v260, v633, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v271 = v654;
                }

                v300 = *v291;
                v301 = v291[1];

                sub_1C6D5B44C(v291, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                sub_1C6B1E6A8(&v770, v300, v301);
                swift_endAccess();

                v283 = v638;
              }

              else
              {
                swift_endAccess();
                v271 = v654;
              }

              sub_1C6D5B44C(v283, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              v299 = v755;
            }

            v744 = sub_1C6CCEBD8(sub_1C6D5CFDC, v299, v651);
            v305 = v672;
            sub_1C6D77030();
            v745 = sub_1C6D4F0A0(v305, v299, v749, v756);
            v753 = *v754;
            (v753)(v305, v228);
            v732 = *(v652 + 24);
            v306 = v655;
            sub_1C6D5B3CC(v758 + v732, v655, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            v307 = *v738;
            v167 = v739;
            v308 = (*v738)(v306, 1, v739);
            v731 = v307;
            if (v308 == 1)
            {
              sub_1C6D78990();
              if (v307(v306, 1, v167) != 1)
              {
                sub_1C6D5B4AC(v306, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              }
            }

            else
            {
              (*v710)(v271, v306, v167);
            }

            sub_1C6D78970();
            v310 = v309;
            v730 = *v737;
            v730(v271, v167);
            v311 = v310 * 1000.0;
            v312 = v656;
            if (COERCE__INT64(fabs(v310 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_297;
            }

            if (v311 <= -1.0)
            {
              goto LABEL_298;
            }

            if (v311 >= 1.84467441e19)
            {
              goto LABEL_299;
            }

            [v745 setTimestamp_];
            v313 = [v743 baselineModificationData];
            [v756 decayRate];
            v314 = v660;
            Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v660);
            v315 = v751;
            v316 = (v757)(v314, 1, v751);
            if (v316 == 1)
            {
              sub_1C6D5B4AC(v314, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v317 = 0;
              v318 = 0;
            }

            else
            {
              sub_1C6D5B3CC(&v314[*(v315 + 20)], v312, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              if ((*v736)(v312, 1, v741) == 1)
              {
                sub_1C6D5B4AC(v312, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                sub_1C6D5B44C(v314, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v317 = 0;
                v318 = 1;
              }

              else
              {
                v319 = v312;
                v320 = v634;
                sub_1C6D5B51C(v319, v634, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v321 = v320;
                v322 = v716;
                sub_1C6D5B51C(v321, v716, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v323 = v717;
                sub_1C6D5B51C(v322, v717, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                v324 = *(v323 + *(v718 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
                swift_beginAccess();
                v317 = *v324;
                v318 = *(v324 + 8);
                sub_1C6D5B44C(v323, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                sub_1C6D5B44C(v660, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              }
            }

            *&v774[0] = v317;
            BYTE8(v774[0]) = v318;
            BYTE9(v774[0]) = v316 == 1;
            Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v285);
            v325 = v751;
            v326 = (v757)(v285, 1, v751);
            if (v326 == 1)
            {
              sub_1C6D5B4AC(v285, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v186 = 0;
              v167 = 0;
            }

            else
            {
              v327 = v637;
              sub_1C6D5B3CC(&v285[*(v325 + 20)], v637, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              if ((*v736)(v327, 1, v741) == 1)
              {
                sub_1C6D5B4AC(v327, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                sub_1C6D5B44C(v285, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v186 = 0;
                v167 = 1;
              }

              else
              {
                v328 = v327;
                v329 = v635;
                sub_1C6D5B51C(v328, v635, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v330 = v329;
                v331 = v716;
                sub_1C6D5B51C(v330, v716, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v332 = v717;
                sub_1C6D5B51C(v331, v717, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                v333 = *(v332 + *(v718 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
                swift_beginAccess();
                v186 = *v333;
                v167 = *(v333 + 8);
                sub_1C6D5B44C(v332, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                sub_1C6D5B44C(v285, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              }
            }

            v770 = v186;
            v771 = v167;
            v772 = v326 == 1;
            sub_1C6CE69E0(v763, v774, &v770);
            [v313 clicks];
            v334 = v758;
            v335 = v745;
            if (v336 > 0.0 || ([v313 impressions], v337 > 0.0))
            {
              v167 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
              [v335 impressions];
              [v313 impressions];
              [v313 impressions];
              sub_1C6D798D0();
              v339 = v338;
              [v335 clicks];
              [v313 clicks];
              [v313 impressions];
              sub_1C6D798D0();
              [v335 setClicks_];
              [v335 setImpressions_];
              v340 = [v335 eventCount];
              if (v340 == -1)
              {
                goto LABEL_303;
              }

              [v335 setEventCount_];
            }

            swift_beginAccess();
            v341 = *v155;
            if (*v155)
            {
              v342 = [v335 featureKey];
              if (!v342)
              {
                goto LABEL_317;
              }

              v343 = v342;
              v186 = sub_1C6D795A0();
              v345 = v344;

              if (*(v341 + 16))
              {
                v346 = sub_1C6B5DEA8(v186, v345);
                v186 = v347;

                v348 = MEMORY[0x1E69E7CC0];
                if (v186)
                {
                  v348 = *(*(v341 + 56) + 8 * v346);
                }
              }

              else
              {

                v348 = MEMORY[0x1E69E7CC0];
              }

              swift_endAccess();
              sub_1C6D5B364(v334, v659, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v348 = sub_1C6B666CC(0, v348[2] + 1, 1, v348);
              }

              v185 = v755;
              v349 = v348;
              v167 = v348[2];
              v673 = v349;
              v350 = v349[3];
              if (v167 >= v350 >> 1)
              {
                v673 = sub_1C6B666CC((v350 > 1), v167 + 1, 1, v673);
              }

              v351 = v673;
              v673[2] = v167 + 1;
              sub_1C6D5B51C(v659, v351 + v719 + v167 * v740, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
            }

            else
            {
              swift_endAccess();
              v673 = 0;
              v185 = v755;
            }

            swift_beginAccess();
            if (*v155)
            {
              v352 = [v335 featureKey];
              if (!v352)
              {
                goto LABEL_318;
              }

              v353 = v352;
              v167 = sub_1C6D795A0();
              v355 = v354;

              sub_1C6BC24C0(v356, v167, v355);
              v185 = v755;
            }

            swift_endAccess();
            v245 = v746;
            v728 = v744[2];
            if (!v728)
            {
LABEL_195:

              sub_1C6D5B44C(v763, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
              v231 = v758;
              sub_1C6D5B44C(v758, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

              v230 = v685;
              v186 = v674;
              goto LABEL_196;
            }

            v357 = 0;
            v727 = v744 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
            while (2)
            {
              if (v357 >= v744[2])
              {
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
LABEL_289:
                __break(1u);
                goto LABEL_290;
              }

              v362 = &v727[*(v229 + 72) * v357];
              v363 = v765;
              v760 = *(v229 + 16);
              (v760)(v765, v362, v228);
              v364 = v756;
              v155 = sub_1C6D4F0A0(v363, v185, v749, v756);
              v365 = v735;
              sub_1C6D5B3CC(v758 + v732, v735, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              v167 = v739;
              v366 = v731;
              if (v731(v365, 1, v739) == 1)
              {
                v185 = v734;
                sub_1C6D78990();
                v367 = v366(v365, 1, v167);
                v186 = v751;
                v368 = v733;
                if (v367 != 1)
                {
                  sub_1C6D5B4AC(v365, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                }
              }

              else
              {
                v185 = v734;
                (*v710)(v734, v365, v167);
                v186 = v751;
                v368 = v733;
              }

              sub_1C6D78970();
              v370 = v369;
              v730(v185, v167);
              v371 = v370 * 1000.0;
              if (COERCE__INT64(fabs(v370 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_285;
              }

              if (v371 <= -1.0)
              {
                goto LABEL_286;
              }

              if (v371 >= 1.84467441e19)
              {
                goto LABEL_287;
              }

              *&v766 = v155;
              [v155 setTimestamp_];
              v759 = [v743 aggregateModificationData];
              [v364 decayRate];
              v373 = v372;
              Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v368);
              v374 = v757;
              v375 = (v757)(v368, 1, v186);
              if (v375 == 1)
              {
                sub_1C6D5B4AC(v368, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v376 = 0;
                LODWORD(v752) = 0;
                v377 = v729;
              }

              else
              {
                v378 = v712;
                sub_1C6D5B3CC(&v368[*(v186 + 20)], v712, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                v379 = (*v736)(v378, 1, v741);
                v377 = v729;
                if (v379 == 1)
                {
                  sub_1C6D5B4AC(v378, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  sub_1C6D5B44C(v368, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v376 = 0;
                  LODWORD(v752) = 1;
                }

                else
                {
                  v380 = v692;
                  sub_1C6D5B51C(v378, v692, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v381 = v380;
                  v382 = v716;
                  sub_1C6D5B51C(v381, v716, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v383 = v382;
                  v384 = v717;
                  sub_1C6D5B51C(v383, v717, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v385 = *(v384 + *(v718 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
                  swift_beginAccess();
                  v386 = v357;
                  v387 = v375;
                  v388 = *v385;
                  LODWORD(v752) = *(v385 + 8);
                  sub_1C6D5B44C(v384, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v389 = v368;
                  v376 = v388;
                  v375 = v387;
                  v357 = v386;
                  v364 = v756;
                  sub_1C6D5B44C(v389, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                }

                v374 = v757;
              }

              Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v377);
              v390 = v374(v377, 1, v186);
              if (v390 == 1)
              {
                sub_1C6D5B4AC(v377, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                v391 = 0;
                v186 = 0;
              }

              else
              {
                v392 = v713;
                sub_1C6D5B3CC(&v377[*(v186 + 20)], v713, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                if ((*v736)(v392, 1, v741) == 1)
                {
                  sub_1C6D5B4AC(v392, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  sub_1C6D5B44C(v377, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v391 = 0;
                  v186 = 1;
                }

                else
                {
                  v708 = v376;
                  v393 = v377;
                  v394 = v693;
                  sub_1C6D5B51C(v392, v693, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v395 = v394;
                  v396 = v716;
                  sub_1C6D5B51C(v395, v716, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  v397 = v717;
                  sub_1C6D5B51C(v396, v717, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v398 = *(v397 + *(v718 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
                  swift_beginAccess();
                  v391 = *v398;
                  v186 = *(v398 + 8);
                  sub_1C6D5B44C(v397, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                  v399 = v393;
                  v376 = v708;
                  sub_1C6D5B44C(v399, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                }
              }

              v400 = [v364 biases];
              Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
              v401 = sub_1C6D79570();

              if (v375 == 1 || (*&v774[0] = v376, BYTE8(v774[0]) = v752, Com_Apple_News_Personalization_FeedType.string.getter(), !v402))
              {
                v403 = 0;
                if (v390 == 1)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                v403 = sub_1C6D79570();

                if (v390 == 1)
                {
LABEL_168:
                  v405 = 0;
                  goto LABEL_169;
                }
              }

              *&v774[0] = v391;
              BYTE8(v774[0]) = v186;
              Com_Apple_News_Personalization_GroupType.string.getter();
              if (!v404)
              {
                goto LABEL_168;
              }

              v405 = sub_1C6D79570();

LABEL_169:
              v406 = v760;
              [v400 biasForEventType:v401 feedType:v403 groupType:v405];
              v408 = v407;

              v409 = v762;
              v228 = v748;
              (v406)(v762, v765, v748);
              v410 = (*v726)(v409, v228);
              if (v410 == v725 || v410 == v724 || v410 == v723 || v410 == v721 || v410 != v720)
              {
                (v753)(v762, v228);
                v419 = 0;
                v229 = v750;
                v421 = v759;
              }

              else
              {
                v411 = v762;
                (*v709)(v762, v228);
                v412 = *(v411 + 16);
                v413 = *(v411 + 24);

                v414 = v711;
                swift_beginAccess();
                v415 = *v414;
                v416 = *(v415 + 16);

                v229 = v750;
                if (v416 && (v417 = sub_1C6B5DEA8(v412, v413), (v418 & 1) != 0))
                {
                  v419 = *(*(v415 + 56) + 8 * v417);
                  v420 = v419;
                }

                else
                {
                  v419 = 0;
                }

                v421 = v759;
                swift_endAccess();
                swift_bridgeObjectRelease_n();
              }

              v167 = v766;
              NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v421, v745, v419, v373, v408);

              v155 = v742;
              swift_beginAccess();
              v422 = *v155;
              if (*v155)
              {
                v423 = [v167 featureKey];
                v424 = v755;
                if (!v423)
                {
                  goto LABEL_314;
                }

                v425 = v423;
                v426 = sub_1C6D795A0();
                v428 = v427;

                if (*(v422 + 16))
                {
                  v429 = sub_1C6B5DEA8(v426, v428);
                  v431 = v430;

                  v167 = MEMORY[0x1E69E7CC0];
                  if (v431)
                  {
                    v167 = *(*(v422 + 56) + 8 * v429);
                  }
                }

                else
                {

                  v167 = MEMORY[0x1E69E7CC0];
                }

                swift_endAccess();
                sub_1C6D5B364(v758, v747, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                v186 = v424;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v167 = sub_1C6B666CC(0, *(v167 + 16) + 1, 1, v167);
                }

                v433 = *(v167 + 16);
                v432 = *(v167 + 24);
                if (v433 >= v432 >> 1)
                {
                  v167 = sub_1C6B666CC((v432 > 1), v433 + 1, 1, v167);
                }

                *(v167 + 16) = v433 + 1;
                sub_1C6D5B51C(v747, v167 + v719 + v433 * v740, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                v185 = v186;
              }

              else
              {
                swift_endAccess();
                v167 = 0;
                v185 = v755;
              }

              swift_beginAccess();
              if (*v155)
              {
                v434 = [v766 featureKey];
                if (!v434)
                {
                  goto LABEL_315;
                }

                v358 = v434;
                v186 = sub_1C6D795A0();
                v360 = v359;

                sub_1C6BC24C0(v361, v186, v360);
              }

              ++v357;
              swift_endAccess();

              (v753)(v765, v228);

              v245 = v746;
              if (v728 == v357)
              {
                goto LABEL_195;
              }

              continue;
            }
          }

          sub_1C6D5B44C(v256, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D5B44C(v231, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          v245 = v746;
          v185 = v755;
          v230 = v255;
          v229 = v750;
LABEL_196:
          v282 = v722;
LABEL_197:
          v244 = v282 + 1;
          if (v244 == v704)
          {

            if (!v749)
            {
              goto LABEL_206;
            }

            goto LABEL_204;
          }
        }
      }

      v185 = v755;
      v230 = v234;
      v229 = v750;
      if (!v749)
      {
        goto LABEL_206;
      }
    }

    else
    {
      v185 = v755;
      if (!v749)
      {
        goto LABEL_206;
      }
    }

LABEL_204:
    v435 = v671;
    v436 = v672;
    sub_1C6D77030();
    v437 = sub_1C6D4F0A0(v436, v185, v749, v756);
    (*(v229 + 8))(v436, v228);
    v167 = [v437 eventCount];

    if ((v167 & 0x8000000000000000) != 0)
    {
      goto LABEL_305;
    }

    [v435 setBaselineStatelessEventCount_];

LABEL_206:
    v155 = v756;
    v438 = [v756 legacyBridgeConfiguration];
    v439 = [v438 priorStatelessAggregatesWithLegacyAggregates];

    if ((v439 & 1) == 0)
    {
      v440 = [v155 legacyBridgeConfiguration];
      v441 = [v440 createStatelessAggregatesWhichOnlyExistInLegacy];

      if (!v441)
      {
        break;
      }
    }

    v442 = swift_allocObject();
    *(v442 + 16) = v698;
    v443 = [v155 legacyBridgeConfiguration];
    v444 = [v443 description];
    v445 = sub_1C6D795A0();
    v447 = v446;

    v448 = v699;
    *(v442 + 56) = MEMORY[0x1E69E6158];
    *(v442 + 64) = v448;
    *(v442 + 32) = v445;
    *(v442 + 40) = v447;
    v449 = sub_1C6D79AC0();
    v450 = v707;
    sub_1C6D78D30("Processing legacy aggregates with legacy bridging configuration %{public}@", 74, 2, &dword_1C6B09000, v707, v449, v442);

    v451 = [v155 legacyBridgeConfiguration];
    LODWORD(v443) = [v451 priorStatelessAggregatesWithLegacyAggregates];

    if (v443)
    {
      v452 = sub_1C6D79AC0();
      sub_1C6D78D30("Prioring stateless aggregates with legacy aggregates", 52, 2, &dword_1C6B09000, v450, v452, MEMORY[0x1E69E7CC0]);
    }

    v453 = [*(v702 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_personalizationData) allAggregates];
    sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
    v454 = sub_1C6D79490();

    v455 = [v155 legacyBridgeConfiguration];
    v456 = [v455 createStatelessAggregatesWhichOnlyExistInLegacy];

    v457 = 0;
    v458 = v697;
    if (v456)
    {

      v457 = sub_1C6B69168();
    }

    v773[0] = v457;
    v770 = 0;
    v769[0] = 0;
    v459 = [v155 legacyBridgeConfiguration];
    LODWORD(v762) = [v459 disablePrioringBaseline];

    swift_beginAccess();
    v460 = *v458;
    sub_1C6B61548(0, &unk_1EDCEA460, &qword_1EDCEA4D0, 0x1E69B6EE8);
    v461 = sub_1C6D79EF0();
    v462 = v461;
    v463 = v460 + 64;
    v464 = 1 << v460[32];
    v465 = -1;
    if (v464 < 64)
    {
      v465 = ~(-1 << v464);
    }

    v186 = v465 & *(v460 + 8);
    v466 = (v464 + 63) >> 6;
    v760 = (v461 + 64);
    v765 = v155;

    v763 = v460;

    v185 = 0;
    v467 = v454;
    v468 = v462;
    *&v766 = v467;
    v761 = v462;
    if (!v186)
    {
LABEL_216:
      v470 = v185;
      v167 = v697;
      while (1)
      {
        v185 = v470 + 1;
        if (__OFADD__(v470, 1))
        {
          __break(1u);
LABEL_283:
          __break(1u);
          goto LABEL_284;
        }

        if (v185 >= v466)
        {
          break;
        }

        v471 = *&v463[8 * v185];
        ++v470;
        if (v471)
        {
          v469 = __clz(__rbit64(v471));
          v186 = (v471 - 1) & v471;
          goto LABEL_221;
        }
      }

      v481 = v765;

      *v167 = v468;

      v482 = [v481 legacyBridgeConfiguration];
      v167 = [v482 priorStatelessAggregatesWithLegacyAggregates];

      if (v167)
      {
        v167 = swift_allocObject();
        *(v167 + 16) = xmmword_1C6D7EB10;
        v483 = v770;
        v484 = MEMORY[0x1E69E65A8];
        v485 = MEMORY[0x1E69E6530];
        *(v167 + 56) = MEMORY[0x1E69E6530];
        *(v167 + 64) = v484;
        *(v167 + 32) = v483;
        v486 = v769[0];
        *(v167 + 96) = v485;
        *(v167 + 104) = v484;
        *(v167 + 72) = v486;
        sub_1C6D79AC0();
        sub_1C6D78D30("Finished prioring stateless aggregates, priored %lld and left %lld untouched", v626, v627);
      }

      if (v773[0])
      {
        v487 = v773[0];
      }

      else
      {
        v487 = MEMORY[0x1E69E7CD0];
      }

      v489 = v487 + 56;
      v488 = *(v487 + 56);
      v764 = v487;
      v490 = 1 << *(v487 + 32);
      v491 = -1;
      if (v490 < 64)
      {
        v491 = ~(-1 << v490);
      }

      v186 = v491 & v488;
      v492 = (v490 + 63) >> 6;
      v759 = v773[0];

      v185 = 0;
      v228 = v748;
      if (!v186)
      {
LABEL_232:
        while (1)
        {
          v493 = v185 + 1;
          if (__OFADD__(v185, 1))
          {
            goto LABEL_283;
          }

          if (v493 >= v492)
          {

            v523 = [v765 legacyBridgeConfiguration];
            v524 = [v523 createStatelessAggregatesWhichOnlyExistInLegacy];

            if (v524)
            {
              v525 = swift_allocObject();
              *(v525 + 16) = v698;
              v526 = v685;
              if (v759)
              {
                v527 = *(v759 + 2);
              }

              else
              {
                v527 = 0;
              }

              v528 = v707;
              v530 = MEMORY[0x1E69E65A8];
              *(v525 + 56) = MEMORY[0x1E69E6530];
              *(v525 + 64) = v530;
              *(v525 + 32) = v527;
              sub_1C6D79AC0();
              sub_1C6D78D30("Created %lld aggregates from legacy aggregates", v626);
            }

            else
            {

              v528 = v707;
              v526 = v685;
            }

            goto LABEL_250;
          }

          v186 = *(v489 + 8 * v493);
          ++v185;
          if (v186)
          {
            v185 = v493;
            goto LABEL_236;
          }
        }
      }

      while (1)
      {
LABEL_236:
        while (1)
        {
          v494 = __clz(__rbit64(v186));
          v186 &= v186 - 1;
          v495 = v764[6] + ((v185 << 10) | (16 * v494));
          v496 = *v495;
          v155 = *(v495 + 8);
          v497 = *(v467 + 16);

          if (v497)
          {
            v498 = sub_1C6B5DEA8(v496, v155);
            if (v499)
            {
              break;
            }
          }

          v518 = v489;
          v519 = v492;
          v520 = sub_1C6D79AA0();
          v167 = swift_allocObject();
          *(v167 + 16) = v698;
          v521 = v699;
          *(v167 + 56) = MEMORY[0x1E69E6158];
          *(v167 + 64) = v521;
          *(v167 + 32) = v496;
          *(v167 + 40) = v155;
          v522 = v520;
          v492 = v519;
          v489 = v518;
          v228 = v748;
          sub_1C6D78D30("Failed to find a legacy aggregate for unprocessed key %{public}@", 64, 2, &dword_1C6B09000, v707, v522, v167);

          if (!v186)
          {
            goto LABEL_232;
          }
        }

        v761 = v496;
        v762 = v155;
        v500 = *(*(v467 + 56) + 8 * v498);
        v501 = objc_allocWithZone(MEMORY[0x1E69B6EE8]);
        v167 = v500;
        v502 = [v501 init];
        if (!v502)
        {
          break;
        }

        v503 = v502;
        v504 = [v167 featureKey];
        [v503 setFeatureKey_];

        [v503 setEventCount_];
        [v503 setTimestamp_];
        [v167 clicks];
        [v167 impressions];
        v505 = v765;
        v506 = [v765 legacyBridgeConfiguration];
        [v506 legacyDecayRate];

        [v505 decayRate];
        v507 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        v763 = v167;
        v508 = v507;
        LODWORD(v760) = [v507 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

        v509 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v509 legacyMultiplier];

        v510 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v510 legacyMaxLinearImpressionCount];

        v511 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v511 statelessMaxLinearImpressionCount];

        v625 = 0;
        sub_1C6D798E0();
        [v503 setClicks_];
        v512 = v763;
        [v763 impressions];
        [v512 impressions];
        v513 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v513 legacyDecayRate];

        [v505 decayRate];
        v514 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        LODWORD(v760) = [v514 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

        v515 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v515 legacyMultiplier];

        v516 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v516 legacyMaxLinearImpressionCount];

        v517 = [v505 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
        [v517 statelessMaxLinearImpressionCount];

        v625 = 0;
        sub_1C6D798E0();
        [v503 setImpressions_];
        v155 = v697;
        swift_beginAccess();
        v167 = v503;
        sub_1C6BC214C(v503, v761, v762);
        swift_endAccess();

        v228 = v748;
        v467 = v766;
        if (!v186)
        {
          goto LABEL_232;
        }
      }

LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);

      __break(1u);
      goto LABEL_319;
    }

    while (1)
    {
      v469 = __clz(__rbit64(v186));
      v186 &= v186 - 1;
LABEL_221:
      v155 = v469 | (v185 << 6);
      v472 = *(v763 + 7);
      v473 = (*(v763 + 6) + 16 * v155);
      v474 = v473[1];
      v764 = *v473;
      *&v774[0] = *(v472 + 8 * v155);
      v475 = *&v774[0];

      v476 = v475;
      v167 = v703;
      sub_1C6D5A71C(v774, v773, v762, v765, v766, v769, &v770, v768);
      v703 = v167;

      *&v760[(v155 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v155;
      v468 = v761;
      v477 = (*(v761 + 6) + 16 * v155);
      *v477 = v764;
      v477[1] = v474;
      *(v468[7] + 8 * v155) = v768[0];
      v478 = v468[2];
      v479 = __OFADD__(v478, 1);
      v480 = v478 + 1;
      if (v479)
      {
        break;
      }

      v468[2] = v480;
      v467 = v766;
      if (!v186)
      {
        goto LABEL_216;
      }
    }

LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    ;
  }

  v529 = sub_1C6D79AC0();
  v526 = v230;
  v528 = v707;
  sub_1C6D78D30("Not processing legacy aggregates, legacy aggregate bridging is disabled", 71, 2, &dword_1C6B09000, v707, v529, MEMORY[0x1E69E7CC0]);
LABEL_250:
  v531 = v650;
  v532 = swift_allocObject();
  *(v532 + 16) = xmmword_1C6D807C0;
  swift_beginAccess();
  v773[0] = *v531;
  v533 = sub_1C6D7A0E0();
  v534 = MEMORY[0x1E69E6158];
  v535 = v699;
  *(v532 + 56) = MEMORY[0x1E69E6158];
  *(v532 + 64) = v535;
  *(v532 + 32) = v533;
  *(v532 + 40) = v536;
  swift_beginAccess();
  v770 = *v526;
  v537 = sub_1C6D7A0E0();
  *(v532 + 96) = v534;
  *(v532 + 104) = v535;
  *(v532 + 72) = v537;
  *(v532 + 80) = v538;
  v539 = v697;
  swift_beginAccess();
  v769[0] = *(*v539 + 2);
  v540 = sub_1C6D7A0E0();
  *(v532 + 136) = v534;
  *(v532 + 144) = v535;
  *(v532 + 112) = v540;
  *(v532 + 120) = v541;
  v542 = sub_1C6D79AC0();
  sub_1C6D78D30("Initialized UserEventHistoryAggregateStore with %{public}@ sessions %{public}@ events result in %{public}@ aggregates", 117, 2, &dword_1C6B09000, v528, v542, v532);

  v543 = v749;
  if (v749)
  {
    v544 = v671;
    v545 = v672;
    sub_1C6D77030();
    v546 = v755;
    v547 = v756;
    v548 = sub_1C6D4F0A0(v545, v755, v543, v756);
    *&v766 = *(v750 + 8);
    (v766)(v545, v228);
    v167 = [v548 timestamp];

    if ((v167 & 0x8000000000000000) != 0)
    {
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
      goto LABEL_312;
    }

    [v544 setBaselineTimestamp_];

    v549 = v544;
    sub_1C6D77030();
    v550 = sub_1C6D4F0A0(v545, v546, v543, v547);
    (v766)(v545, v228);
    v167 = [v550 eventCount];

    if ((v167 & 0x8000000000000000) != 0)
    {
      goto LABEL_307;
    }

    [v549 setBaselineTotalEventCount_];
  }

  v186 = v697;

  v167 = v703;
  v552 = sub_1C6D426DC(v551);

  v155 = v702[11];
  v185 = v702[12];
  v553 = __swift_project_boxed_opaque_existential_1(v702 + 8, v155);
  sub_1C6D79920();
  if ((*&v554 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_300;
  }

  if (v554 <= -9.22337204e18)
  {
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  if (v554 >= 9.22337204e18)
  {
    goto LABEL_302;
  }

  v555 = *(*v186 + 16);
  v556 = v552[1].u64[0];
  v763 = v167;
  *&v766 = v553;
  v765 = v155;
  v764 = v555;
  if (v556)
  {
    v557 = 0;
    v558 = 0;
    while (1)
    {
      v559 = v552[2].i64[v557];
      v560 = __CFADD__(v558, v559);
      v558 += v559;
      if (v560)
      {
        goto LABEL_288;
      }

      if (v556 == ++v557)
      {
        v561 = v558 / v556;
        goto LABEL_263;
      }
    }
  }

  v561 = 0.0;
LABEL_263:
  v562 = v554;
  v563 = sub_1C6D42AB0(v552, v554);

  v564 = *v685;
  v565 = v683;
  swift_beginAccess();
  v566 = *v565;
  v567 = v663;
  swift_beginAccess();
  v568 = *v567;
  v569 = v664;
  swift_beginAccess();
  v570 = *v569;
  v571 = v665;
  swift_beginAccess();
  v572 = *v571;
  v573 = v666;
  swift_beginAccess();
  (*(v185 + 8))(v562, v764, v564, v566, v568, v570, v572, *v573, v561, v563, v715, v749, v765, v185);
  v574 = v756;
  v575 = [v756 featureFlags];
  v576 = [v575 uniqueAggregateLimit];

  if (!v576)
  {
    goto LABEL_278;
  }

  v577 = [v576 integerValue];

  v578 = v697;
  v579 = *(*v697 + 2);
  v580 = swift_allocObject();
  *(v580 + 16) = xmmword_1C6D7EB10;
  if (v579 > v577)
  {
    v765 = (v579 - v577);
    v766 = xmmword_1C6D7EB10;
    v767[0] = v577;
    v581 = sub_1C6D7A0E0();
    v582 = MEMORY[0x1E69E6158];
    v583 = v699;
    *(v580 + 56) = MEMORY[0x1E69E6158];
    *(v580 + 64) = v583;
    *(v580 + 32) = v581;
    *(v580 + 40) = v584;
    v767[0] = v579;
    v585 = sub_1C6D7A0E0();
    *(v580 + 96) = v582;
    *(v580 + 104) = v583;
    *(v580 + 72) = v585;
    *(v580 + 80) = v586;
    v587 = sub_1C6D79AC0();
    sub_1C6D78D30("Observed configured unique aggregate limit %{public}@ which exceeds created aggregate count %{public}@", 102, 2, &dword_1C6B09000, v707, v587, v580);

    v767[0] = sub_1C6B6E7AC(v588);
    v167 = v763;
    sub_1C6D433E8(v767);
    if (v167)
    {
LABEL_319:

      __break(1u);
      return result;
    }

    if ((v577 & 0x8000000000000000) == 0)
    {
      v589 = v767[0];
      if (*(v767[0] + 16) >= v577)
      {
        if (v577)
        {
          v764 = 0;
          v767[0] = MEMORY[0x1E69E7CC0];
          sub_1C6B39280(0, v577, 0);
          v590 = v767[0];
          v591 = v589 + 5;
          do
          {
            v593 = *(v591 - 1);
            v592 = *v591;
            v767[0] = v590;
            v595 = *(v590 + 16);
            v594 = *(v590 + 24);

            if (v595 >= v594 >> 1)
            {
              sub_1C6B39280((v594 > 1), v595 + 1, 1);
              v590 = v767[0];
            }

            *(v590 + 16) = v595 + 1;
            v596 = v590 + 16 * v595;
            *(v596 + 32) = v593;
            *(v596 + 40) = v592;
            v591 += 3;
            --v577;
          }

          while (v577);

          v578 = v697;
        }

        else
        {

          v590 = MEMORY[0x1E69E7CC0];
        }

        v604 = sub_1C6B1E610(v590);

        v606 = sub_1C6D5CE1C(v605, v604);

        swift_bridgeObjectRelease_n();
        *v578 = v606;

        v607 = swift_allocObject();
        *(v607 + 16) = v766;
        v767[0] = v765;
        v608 = sub_1C6D7A0E0();
        v609 = MEMORY[0x1E69E6158];
        v610 = v699;
        *(v607 + 56) = MEMORY[0x1E69E6158];
        *(v607 + 64) = v610;
        *(v607 + 32) = v608;
        *(v607 + 40) = v611;
        v767[0] = (*v578)[2];
        v612 = sub_1C6D7A0E0();
        *(v607 + 96) = v609;
        *(v607 + 104) = v610;
        *(v607 + 72) = v612;
        *(v607 + 80) = v613;
        v614 = sub_1C6D79AC0();
        sub_1C6D78D30("Removed %{public}@ aggregates, limited to %{public}@", 52, 2, &dword_1C6B09000, v707, v614, v607);
        goto LABEL_277;
      }

LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
      goto LABEL_316;
    }

LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v767[0] = v577;
  v597 = sub_1C6D7A0E0();
  v598 = MEMORY[0x1E69E6158];
  v599 = v699;
  *(v580 + 56) = MEMORY[0x1E69E6158];
  *(v580 + 64) = v599;
  *(v580 + 32) = v597;
  *(v580 + 40) = v600;
  v767[0] = v579;
  v601 = sub_1C6D7A0E0();
  *(v580 + 96) = v598;
  *(v580 + 104) = v599;
  *(v580 + 72) = v601;
  *(v580 + 80) = v602;
  v603 = sub_1C6D79AC0();
  sub_1C6D78D30("Configured unique aggregate limit %{public}@ doesn't exceeds created aggregate count %{public}@", 95, 2, &dword_1C6B09000, v707, v603, v580);
LABEL_277:

  v574 = v756;
LABEL_278:
  v615 = *(v755 + 16);
  swift_beginAccess();
  if (*(v682 + 16))
  {
    v616 = *(v682 + 16);
  }

  else
  {
    v616 = MEMORY[0x1E69E7CC8];
  }

  [v574 decayRate];
  v618 = v617;
  v619 = v644;
  sub_1C6D78D50();
  tf_os_signpost_aggregate_store_generation_end();

  (*(v645 + 8))(v619, v646);
  (*(v642 + 8))(v641, v643);

  v620 = v648;
  v621 = v649;
  *v649 = v615;
  v621[1] = v616;
  v621[2] = v618;
  (*(v647 + 8))(v670, v620);
}

uint64_t sub_1C6D4C430(uint64_t a1)
{
  v2 = v1;
  v194 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6968FB0];
  sub_1C6B1839C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v171 - v7;
  v9 = sub_1C6D75DE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v184 = v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v186 = v171 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v171 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v171 - v22;
  v24 = *(a1 + 8);
  v188 = *a1;
  v189 = v24;
  v25 = *(a1 + 16);
  v26 = OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL;
  swift_beginAccess();
  sub_1C6D5B3CC(v2 + v26, v8, &unk_1EDCEA3A0, v4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C6D5B4AC(v8, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    if (qword_1EDCE7498 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDCE74A0;
    v28 = sub_1C6D79AC0();
    return sub_1C6D78D30("UserEventHistoryAggregateStoreFactory configured with no cache, not attempting to cache user event history aggregate store", 122, 2, &dword_1C6B09000, v27, v28, MEMORY[0x1E69E7CC0]);
  }

  (*(v10 + 32))(v23, v8, v9);
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  sub_1C6D75D80();
  v32 = sub_1C6D75D30();
  v33 = *(v10 + 8);
  v187 = v9;
  v183 = v10 + 8;
  v185 = v33;
  v33(v19, v9);
  v190 = 0;
  v34 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v190];

  if (v34)
  {
    v179 = v19;
    v181 = v23;
    v180 = v30;
    v35 = qword_1EDCE7498;
    v36 = v190;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDCE74A0;
    sub_1C6B1D314(0);
    v39 = v38;
    v40 = swift_allocObject();
    v182 = xmmword_1C6D7E630;
    *(v40 + 16) = xmmword_1C6D7E630;
    v41 = v188;
    v42 = v189;
    v190 = v188;
    v191 = v189;
    v192 = v25;
    v43 = UserEventHistoryAggregateStore.description.getter();
    v45 = v44;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v46 = sub_1C6B2064C();
    *(v40 + 64) = v46;
    *(v40 + 32) = v43;
    *(v40 + 40) = v45;
    v47 = sub_1C6D79AC0();
    v48 = v37;
    sub_1C6D78D30("Encoding aggregate store %{public}@", 35, 2, &dword_1C6B09000, v37, v47, v40);

    v49 = sub_1C6D75B70();
    swift_allocObject();
    sub_1C6D75B60();
    v190 = v41;
    v191 = v42;
    v192 = v25;
    sub_1C6D5C7A8();
    v57 = sub_1C6D75B50();
    v59 = v58;
    v174 = v49;
    v60 = v46;
    v175 = v48;

    v177 = v39;
    v61 = swift_allocObject();
    v62 = v61;
    *(v61 + 16) = v182;
    v190 = 0;
    v191 = 0xE000000000000000;
    v63 = *(v2 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_sizeFormatter);
    v64 = v59 >> 62;
    v178 = v57;
    v176 = v59;
    if ((v59 >> 62) > 1)
    {
      v65 = 0;
      v66 = MEMORY[0x1E69E6158];
      if (v64 != 2 || (v68 = *(v178 + 16), v67 = *(v178 + 24), v65 = v67 - v68, !__OFSUB__(v67, v68)))
      {
LABEL_22:
        v69 = [v63 stringFromByteCount_];
        v70 = sub_1C6D795A0();
        v72 = v71;

        MEMORY[0x1CCA55B00](v70, v72);

        v73 = v190;
        v74 = v191;
        v62[7] = v66;
        v62[8] = v60;
        v62[4] = v73;
        v62[5] = v74;
        v75 = sub_1C6D79AC0();
        v76 = v60;
        v173 = v63;
        v77 = v175;
        sub_1C6D78D30("Encoded aggregate store for cache with size %{public}@", 54, 2, &dword_1C6B09000, v175, v75, v62);

        v78 = swift_allocObject();
        *(v78 + 16) = v182;
        v79 = sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v80 = sub_1C6D7A0E0();
        *(v78 + 56) = v66;
        *(v78 + 64) = v76;
        *(v78 + 32) = v80;
        *(v78 + 40) = v81;
        v82 = sub_1C6D79AC0();
        sub_1C6D78D30("Writing aggregate store to %{public}@", 37, 2, &dword_1C6B09000, v77, v82, v78);

        v83 = v176;
        sub_1C6D75E70();
        v171[1] = v79;
        v172 = v76;
        sub_1C6D77FA0();
        if ((sub_1C6D77F90() & 1) == 0)
        {
          v185(v181, v187);
          return sub_1C6B1C9F0(v178, v83);
        }

        v84 = sub_1C6D79AC0();
        sub_1C6D78D30("Encoding human readable aggregate store", 39, 2, &dword_1C6B09000, v77, v84, MEMORY[0x1E69E7CC0]);
        swift_allocObject();
        sub_1C6D75B60();
        type metadata accessor for HumanReadableUserEventHistoryAggregateStore();
        v85 = swift_allocObject();
        v86 = v189;
        v85[2] = v188;
        v85[3] = v86;
        v85[4] = v25;
        v190 = v85;
        sub_1C6D5B1C4(&qword_1EDCDFFB8, type metadata accessor for HumanReadableUserEventHistoryAggregateStore, &unk_1C6D918AC);

        v87 = sub_1C6D75B50();
        v89 = v88;
        v189 = 0;

        result = swift_allocObject();
        v90 = result;
        *(result + 16) = v182;
        v190 = 0;
        v191 = 0xE000000000000000;
        v91 = v89 >> 62;
        v92 = v172;
        v93 = MEMORY[0x1E69E6158];
        if ((v89 >> 62) > 1)
        {
          v95 = 0;
          v94 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
          v96 = &selRef_adSegmentsOutputName;
          if (v91 != 2)
          {
            goto LABEL_35;
          }

          v98 = *(v87 + 16);
          v97 = *(v87 + 24);
          v95 = v97 - v98;
          if (!__OFSUB__(v97, v98))
          {
            goto LABEL_35;
          }

          __break(1u);
        }

        else
        {
          v94 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
          if (!v91)
          {
            v95 = BYTE6(v89);
LABEL_34:
            v96 = &selRef_adSegmentsOutputName;
LABEL_35:
            v174 = v87;
            v188 = v89;
            v99 = [v173 v96[161]];
            v100 = sub_1C6D795A0();
            v102 = v101;

            MEMORY[0x1CCA55B00](v100, v102);

            v103 = v190;
            v104 = v191;
            v90[7] = v93;
            v90[8] = v92;
            v90[4] = v103;
            v90[5] = v104;
            v105 = sub_1C6D79AC0();
            sub_1C6D78D30("Encoded human readable aggregate store for cache with size %{public}@", 69, 2, &dword_1C6B09000, v175, v105, v90);

            v106 = v179;
            sub_1C6D75D80();
            sub_1C6D75D50();
            v107 = v187;
            v108 = v185;
            v185(v106, v187);
            v109 = v94[77];
            v110 = v180;
            v111 = [v180 v109];
            sub_1C6D75DB0();
            v112 = sub_1C6D79570();

            LODWORD(v99) = [v111 fileExistsAtPath_];

            if (v99)
            {
              sub_1C6D75D80();
              sub_1C6D75D50();
              v108(v106, v107);
              v113 = [v110 defaultManager];
              sub_1C6D75DB0();
              v114 = sub_1C6D79570();

              v115 = [v113 fileExistsAtPath_];

              v116 = v110;
              if (v115)
              {
                v117 = swift_allocObject();
                *(v117 + 16) = v182;
                v118 = sub_1C6D7A0E0();
                v119 = MEMORY[0x1E69E6158];
                v120 = v172;
                *(v117 + 56) = MEMORY[0x1E69E6158];
                *(v117 + 64) = v120;
                *(v117 + 32) = v118;
                *(v117 + 40) = v121;
                v122 = sub_1C6D79AC0();
                v123 = v175;
                sub_1C6D78D30("Removing previous aggregate store at %{public}@", 47, 2, &dword_1C6B09000, v175, v122, v117);

                v124 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
                v125 = [v116 defaultManager];
                v126 = sub_1C6D75D30();
                v190 = 0;
                v127 = [v125 removeItemAtURL:v126 error:&v190];

                if (v127)
                {
                  v128 = v190;
                }

                else
                {
                  v131 = v190;
                  v132 = sub_1C6D75CC0();

                  swift_willThrow();
                  v133 = sub_1C6D79AA0();
                  v134 = swift_allocObject();
                  *(v134 + 16) = v182;
                  v190 = 0;
                  v191 = 0xE000000000000000;
                  v193 = v132;
                  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
                  sub_1C6D79E60();
                  v135 = v190;
                  v136 = v191;
                  *(v134 + 56) = v119;
                  *(v134 + 64) = v120;
                  *(v134 + 32) = v135;
                  *(v134 + 40) = v136;
                  v137 = v133;
                  v124 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
                  sub_1C6D78D30("Failed to remove previous human readable user event history aggregate store: %{public}@", 87, 2, &dword_1C6B09000, v123, v137, v134);

                  v189 = 0;
                }
              }

              else
              {
                v119 = MEMORY[0x1E69E6158];
                v123 = v175;
                v120 = v172;
                v124 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
              }

              v138 = [v116 v124[77]];
              v139 = sub_1C6D75D30();
              v140 = v184;
              v141 = sub_1C6D75D30();
              v190 = 0;
              v142 = [v138 copyItemAtURL:v139 toURL:v141 error:&v190];

              v143 = v190;
              if (v142)
              {
                v144 = swift_allocObject();
                *(v144 + 16) = v182;
                v145 = v143;
                v129 = v187;
                v146 = sub_1C6D7A0E0();
                *(v144 + 56) = v119;
                *(v144 + 64) = v120;
                *(v144 + 32) = v146;
                *(v144 + 40) = v147;
                v148 = sub_1C6D79AC0();
                sub_1C6D78D30("Copied previous aggregate store to %{public}@", 45, 2, &dword_1C6B09000, v123, v148, v144);
              }

              else
              {
                v149 = v190;
                v150 = sub_1C6D75CC0();

                swift_willThrow();
                v151 = sub_1C6D79AA0();
                v152 = swift_allocObject();
                *(v152 + 16) = v182;
                v190 = 0;
                v191 = 0xE000000000000000;
                v193 = v150;
                sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
                sub_1C6D79E60();
                v153 = v190;
                v154 = v191;
                *(v152 + 56) = v119;
                *(v152 + 64) = v120;
                *(v152 + 32) = v153;
                *(v152 + 40) = v154;
                sub_1C6D78D30("Failed to copy previous human readable user event history aggregate store: %{public}@", 85, 2, &dword_1C6B09000, v123, v151, v152);

                v189 = 0;
                v129 = v187;
              }

              v185(v140, v129);
              v130 = v186;
            }

            else
            {
              v129 = v107;
              v119 = MEMORY[0x1E69E6158];
              v123 = v175;
              v130 = v186;
            }

            v155 = swift_allocObject();
            *(v155 + 16) = v182;
            v156 = sub_1C6D7A0E0();
            v157 = v172;
            *(v155 + 56) = v119;
            *(v155 + 64) = v157;
            *(v155 + 32) = v156;
            *(v155 + 40) = v158;
            v159 = sub_1C6D79AC0();
            sub_1C6D78D30("Writing aggregate store to %{public}@", 37, 2, &dword_1C6B09000, v123, v159, v155);

            v160 = v174;
            v162 = v188;
            v161 = v189;
            sub_1C6D75E70();
            if (v161)
            {
              v163 = v185;
              v185(v130, v129);
              v164 = sub_1C6D79AA0();
              v165 = v162;
              v166 = swift_allocObject();
              *(v166 + 16) = v182;
              v190 = 0;
              v191 = 0xE000000000000000;
              v193 = v161;
              sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
              sub_1C6D79E60();
              v167 = v190;
              v168 = v191;
              *(v166 + 56) = v119;
              *(v166 + 64) = v157;
              *(v166 + 32) = v167;
              *(v166 + 40) = v168;
              sub_1C6D78D30("Failed to write human readable user event history aggregate store: %{public}@", 77, 2, &dword_1C6B09000, v175, v164, v166);

              sub_1C6B1C9F0(v160, v165);
              sub_1C6B1C9F0(v178, v176);
              return v163(v181, v129);
            }

            else
            {
              sub_1C6B1C9F0(v160, v162);
              sub_1C6B1C9F0(v178, v176);
              v169 = v130;
              v170 = v185;
              v185(v169, v129);
              return v170(v181, v129);
            }
          }
        }

        if (__OFSUB__(HIDWORD(v87), v87))
        {
          __break(1u);
          return result;
        }

        v95 = HIDWORD(v87) - v87;
        goto LABEL_34;
      }

      __break(1u);
    }

    else if (!v64)
    {
      v65 = BYTE6(v59);
LABEL_21:
      v66 = MEMORY[0x1E69E6158];
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v57), v57))
    {
      __break(1u);
    }

    v65 = HIDWORD(v57) - v57;
    goto LABEL_21;
  }

  v50 = v190;
  v51 = sub_1C6D75CC0();

  swift_willThrow();
  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDCE74A0;
  v53 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C6D7E630;
  v190 = 0;
  v191 = 0xE000000000000000;
  v193 = v51;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v55 = v190;
  v56 = v191;
  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1C6B2064C();
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  sub_1C6D78D30("Failed to create directory for caching user event history aggregate store: %{public}@", 85, 2, &dword_1C6B09000, v52, v53, v54);

  return (v185)(v23, v187);
}

void sub_1C6D4D8A4(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = sub_1C6D75D30();
  v19 = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:&v19];

  v3 = v19;
  if (a1)
  {
    sub_1C6D5D2C8();
    v4 = swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = v3;
  }

  else
  {
    v7 = v19;
    v4 = sub_1C6D75CC0();

    swift_willThrow();
  }

  if (qword_1EDCE7498 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDCE74A0;
  v9 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6D7EB10;
  sub_1C6D75DE0();
  sub_1C6D5B1C4(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v11 = sub_1C6D7A0E0();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1C6B2064C();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v16 = v19;
  v17 = v20;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  sub_1C6D78D30("Error clearing data. Error: %{public}@", 38, 2, &dword_1C6B09000, v8, v9, v10, v4);

  sub_1C6D5D2C8();
  swift_allocError();
  *v18 = 2;
  swift_willThrow();
}

uint64_t sub_1C6D4DB40@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t)@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v188 = a4;
  v186 = a3;
  v193 = a2;
  v195 = a5;
  v196 = a1;
  v184 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v184, v5);
  v192 = (&v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v182, v7);
  v194 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v177 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v185 = &v169 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v175 = &v169 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v183 = &v169 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v191 = &v169 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v174 = &v169 - v27;
  v28 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v189 = *(v28 - 8);
  v190 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v178 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v181 = (&v169 - v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v176 = &v169 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v180 = (&v169 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v179 = &v169 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v169 - v45;
  sub_1C6B1839C(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v9);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v50 = &v169 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v169 - v53;
  v55 = sub_1C6D78A00();
  v187 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v169 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v169 - v61;
  v63 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v169 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v169 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D5B364(v196, v70, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) < 0x12)
  {
    result = sub_1C6D5B44C(v70, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v73 = v195;
    *v195 = 0;
    v73[1] = 0;
    return result;
  }

  v74 = v193;
  v170 = v46;
  v171 = v58;
  v75 = v191;
  v172 = v50;
  v173 = v55;
  v196 = v66;
  v77 = v189;
  v76 = v190;
  if (!EnumCaseMultiPayload)
  {
    v87 = v194;
    sub_1C6D5B51C(v70, v194, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    if (v74)
    {
      v88 = v76;
      v89 = v74;
      v90 = v183;
      v91 = *(v182 + 20);
      sub_1C6D5B3CC(v87 + v91, v183, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v92 = *(v77 + 48);
      if (v92(v90, 1, v88) == 1)
      {
        v93 = v180;
        *v180 = 0;
        v93[1] = 0xE000000000000000;
        v94 = *(v88 + 20);
        v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v95 - 8) + 56))(v93 + v94, 1, 1, v95);
        sub_1C6D78A30();
        if (v92(v90, 1, v88) != 1)
        {
          sub_1C6D5B4AC(v90, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v93 = v180;
        sub_1C6D5B51C(v90, v180, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v128 = *v93;
      v129 = v93[1];

      sub_1C6D5B44C(v93, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      LOBYTE(v128) = sub_1C6B1E978(v128, v129, v89);

      v87 = v194;
      if (v128)
      {
        v198 = 0;
        v199 = 0xE000000000000000;
        v130 = v194;
        sub_1C6D79D50();
        MEMORY[0x1CCA55B00](0x20656C6369747241, 0xE800000000000000);
        v131 = v175;
        sub_1C6D5B3CC(v130 + v91, v175, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        if (v92(v131, 1, v88) == 1)
        {
          v132 = v176;
          *v176 = 0;
          *(v132 + 1) = 0xE000000000000000;
          v133 = *(v88 + 20);
          v134 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
          (*(*(v134 - 8) + 56))(&v132[v133], 1, 1, v134);
          sub_1C6D78A30();
          v135 = v92(v131, 1, v88);
          v115 = v195;
          if (v135 != 1)
          {
            sub_1C6D5B4AC(v131, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        else
        {
          v132 = v176;
          sub_1C6D5B51C(v131, v176, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v115 = v195;
        }

        v161 = *v132;
        v162 = *(v132 + 1);

        sub_1C6D5B44C(v132, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        MEMORY[0x1CCA55B00](v161, v162);

        MEMORY[0x1CCA55B00](0xD000000000000072, 0x80000001C6DA9BD0);
        v157 = v198;
        v158 = v199;
        v159 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        v160 = v194;
        goto LABEL_49;
      }
    }

    v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
    v137 = v87;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v96 = v196;
    sub_1C6D5B51C(v70, v196, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v193 = *(v63 + 28);
    v194 = v63;
    v97 = &v96[v193];
    v98 = v54;
    sub_1C6D5B3CC(v97, v54, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v99 = v187;
    v100 = *(v187 + 48);
    v101 = v173;
    v102 = v100(v98, 1, v173);
    v186 = v100;
    if (v102 == 1)
    {
      sub_1C6D789F0();
      if (v100(v98, 1, v101) != 1)
      {
        sub_1C6D5B4AC(v98, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      (*(v99 + 32))(v62, v98, v101);
    }

    v103 = sub_1C6D789E0();
    v192 = *(v99 + 8);
    v192(v62, v101);
    v104 = v103;
    v105 = v188;
    v106 = [v188 articleReadEventConditionals];
    [v106 minimumDuration];
    v108 = v107;

    if (v108 > v104)
    {
      v198 = 0;
      v199 = 0xE000000000000000;
      sub_1C6D79D50();
      MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6DA9C50);
      v109 = v75;
      sub_1C6D5B3CC(&v196[*(v194 + 24)], v75, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v110 = *(v77 + 48);
      if (v110(v75, 1, v76) == 1)
      {
        v111 = v179;
        *v179 = 0;
        *(v111 + 1) = 0xE000000000000000;
        v112 = *(v76 + 20);
        v113 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v113 - 8) + 56))(&v111[v112], 1, 1, v113);
        sub_1C6D78A30();
        v114 = v110(v109, 1, v76);
        v115 = v195;
        v116 = v186;
        if (v114 != 1)
        {
          sub_1C6D5B4AC(v109, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v145 = v75;
        v111 = v179;
        sub_1C6D5B51C(v145, v179, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v115 = v195;
        v116 = v186;
      }

      v146 = *v111;
      v147 = *(v111 + 1);

      sub_1C6D5B44C(v111, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      MEMORY[0x1CCA55B00](v146, v147);

      MEMORY[0x1CCA55B00](0xD000000000000013, 0x80000001C6DA9C70);
      v148 = v196;
      v149 = v172;
      sub_1C6D5B3CC(&v196[v193], v172, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v150 = v173;
      v151 = v116(v149, 1, v173);
      v152 = v171;
      if (v151 == 1)
      {
        sub_1C6D789F0();
        if (v116(v149, 1, v150) != 1)
        {
          sub_1C6D5B4AC(v149, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        (*(v187 + 32))(v171, v149, v150);
      }

      v154 = sub_1C6D789E0();
      v192(v152, v150);
      v197 = v154;
      v155 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v155);

      MEMORY[0x1CCA55B00](0xD000000000000031, 0x80000001C6DA9C90);
      v156 = [v188 articleReadEventConditionals];
      [v156 minimumDuration];

      sub_1C6D79910();
      v157 = v198;
      v158 = v199;
      v159 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
      v160 = v148;
      goto LABEL_49;
    }

    v117 = v196;
    v118 = *(*v196 + 16);
    v119 = [v105 articleReadEventConditionals];
    v120 = [v119 minimumScrollEventCount];

    if (v118 < v120)
    {
      v198 = 0;
      v199 = 0xE000000000000000;
      sub_1C6D79D50();
      MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6DA9C50);
      v121 = &v117[*(v194 + 24)];
      v122 = v174;
      sub_1C6D5B3CC(v121, v174, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v123 = *(v77 + 48);
      v124 = v76;
      if (v123(v122, 1, v76) == 1)
      {
        v125 = v170;
        *v170 = 0;
        *(v125 + 1) = 0xE000000000000000;
        v126 = *(v76 + 20);
        v127 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v127 - 8) + 56))(&v125[v126], 1, 1, v127);
        sub_1C6D78A30();
        if (v123(v122, 1, v124) != 1)
        {
          sub_1C6D5B4AC(v122, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v125 = v170;
        sub_1C6D5B51C(v122, v170, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v165 = *v125;
      v166 = *(v125 + 1);

      sub_1C6D5B44C(v125, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      MEMORY[0x1CCA55B00](v165, v166);

      MEMORY[0x1CCA55B00](0xD000000000000017, 0x80000001C6DA9CD0);
      v197 = v118;
      v167 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v167);

      MEMORY[0x1CCA55B00](0xD000000000000030, 0x80000001C6DA9CF0);
      v197 = v120;
      v168 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v168);

      v157 = v198;
      v158 = v199;
      result = sub_1C6D5B44C(v196, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v115 = v195;
      goto LABEL_50;
    }

    v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
    v137 = v117;
LABEL_42:
    result = sub_1C6D5B44C(v137, v136);
    v153 = v195;
    *v195 = 0;
    v153[1] = 0;
    return result;
  }

  v78 = v192;
  sub_1C6D5B51C(v70, v192, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  v79 = v186;
  if (!v186)
  {
    goto LABEL_36;
  }

  v80 = v76;
  v81 = v185;
  v82 = *(v184 + 20);
  sub_1C6D5B3CC(v78 + v82, v185, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v83 = *(v77 + 48);
  if (v83(v81, 1, v80) == 1)
  {
    v84 = v181;
    *v181 = 0;
    v84[1] = 0xE000000000000000;
    v85 = *(v80 + 20);
    v86 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v86 - 8) + 56))(v84 + v85, 1, 1, v86);
    sub_1C6D78A30();
    if (v83(v81, 1, v80) != 1)
    {
      sub_1C6D5B4AC(v81, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    v84 = v181;
    sub_1C6D5B51C(v81, v181, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v138 = *v84;
  v139 = v84[1];

  sub_1C6D5B44C(v84, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  LOBYTE(v138) = sub_1C6B1E978(v138, v139, v79);

  if ((v138 & 1) == 0)
  {
LABEL_36:
    v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
    v137 = v78;
    goto LABEL_42;
  }

  v198 = 0;
  v199 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0x20656C6369747241, 0xE800000000000000);
  v140 = v177;
  sub_1C6D5B3CC(v78 + v82, v177, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v83(v140, 1, v80) == 1)
  {
    v141 = v178;
    *v178 = 0;
    *(v141 + 1) = 0xE000000000000000;
    v142 = *(v80 + 20);
    v143 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v143 - 8) + 56))(&v141[v142], 1, 1, v143);
    sub_1C6D78A30();
    v144 = v83(v140, 1, v80);
    v115 = v195;
    if (v144 != 1)
    {
      sub_1C6D5B4AC(v140, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    v141 = v178;
    sub_1C6D5B51C(v140, v178, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v115 = v195;
  }

  v163 = *v141;
  v164 = *(v141 + 1);

  sub_1C6D5B44C(v141, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1CCA55B00](v163, v164);

  MEMORY[0x1CCA55B00](0xD0000000000000BELL, 0x80000001C6DA9B10);
  v157 = v198;
  v158 = v199;
  v159 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
  v160 = v78;
LABEL_49:
  result = sub_1C6D5B44C(v160, v159);
LABEL_50:
  *v115 = v157;
  v115[1] = v158;
  return result;
}

unint64_t sub_1C6D4EFE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D76FE0();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (!*(v6 + 16))
  {
LABEL_5:

    goto LABEL_6;
  }

  v7 = sub_1C6B5DEA8(v3, v5);
  v9 = v8;

  if (v9)
  {
    v10 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    result = [v10 eventCount];
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  swift_endAccess();
  return 0;
}

char *sub_1C6D4F0A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v51 = a4;
  v7 = sub_1C6D77050();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49[-v14];
  v16 = sub_1C6D76FE0();
  v18 = v17;
  swift_beginAccess();
  v19 = *(a2 + 16);
  if (*(v19 + 16))
  {
    v20 = sub_1C6B5DEA8(v16, v18);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      v23 = v22;

      return v23;
    }
  }

  swift_endAccess();
  (*(v8 + 16))(v15, a1, v7);
  v25 = (*(v8 + 88))(v15, v7);
  if (v25 == *MEMORY[0x1E69E36C0] || v25 == *MEMORY[0x1E69E36A8] || v25 == *MEMORY[0x1E69E36B0])
  {
    v26 = v15;
    v27 = *(v8 + 8);
    v27(v26, v7);
    goto LABEL_8;
  }

  if (v25 == *MEMORY[0x1E69E36B8])
  {
    v43 = v15;
    v27 = *(v8 + 8);
    v27(v43, v7);
    if (!a3)
    {
      goto LABEL_8;
    }

    v44 = [a3 aggregateCounts];
    result = [v44 channelTopic];
    if (!__OFADD__(result, 1))
    {
      [v44 setChannelTopic_];
LABEL_27:

      goto LABEL_8;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v25 == *MEMORY[0x1E69E36C8])
  {
    v45 = v15;
    v27 = *(v8 + 8);
    v27(v45, v7);
    if (!a3)
    {
      goto LABEL_8;
    }

    v44 = [a3 aggregateCounts];
    result = [v44 tag];
    if (!__OFADD__(result, 1))
    {
      [v44 setTag_];
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v50 = *MEMORY[0x1E69E36D0];
  v46 = v25;
  v47 = v15;
  v27 = *(v8 + 8);
  v27(v47, v7);
  if (v46 == v50 && a3 != 0)
  {
    v44 = [a3 aggregateCounts];
    result = [v44 group];
    if (!__OFADD__(result, 1))
    {
      [v44 setGroup_];
      goto LABEL_27;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_8:
  result = [objc_allocWithZone(MEMORY[0x1E69B6EE8]) init];
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = sub_1C6D79570();
  [v28 setFeatureKey_];

  sub_1C6D77030();
  sub_1C6D5B1C4(&qword_1EDCE6208, MEMORY[0x1E69E36D8], MEMORY[0x1E69E36E0]);
  LOBYTE(v29) = sub_1C6D79560();
  v27(v11, v7);
  v30 = v51;
  v31 = [v51 priorsConfiguration];
  v32 = v31;
  if (v29)
  {
    v33 = &selRef_baselineFeaturePrior;
  }

  else
  {
    v33 = &selRef_generalFeaturePrior;
  }

  v34 = [v31 *v33];

  [v34 clicks];
  v36 = v35;

  [v28 setClicks_];
  v37 = [v30 priorsConfiguration];
  v38 = [v37 *v33];

  [v38 impressions];
  v40 = v39;

  [v28 setImpressions_];
  swift_beginAccess();
  v41 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1C6BC55B8(v41, v16, v18, isUniquelyReferenced_nonNull_native);

  *(a2 + 16) = v52;
  swift_endAccess();
  return v41;
}

char *sub_1C6D4F618(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D5B364(a1, v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      result = [v1 articleVisitedEventCount];
      v8 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v9 = &selRef_setArticleVisitedEventCount_;
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_27;
    case 2u:
      result = [v1 articleReadEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
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
        __break(1u);
      }

      else
      {
        v9 = &selRef_setArticleReadEventCount_;
LABEL_24:
        [v1 *v9];
        return sub_1C6D5B44C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      }

      return result;
    case 3u:
      result = [v1 articleSharedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_29;
      }

      v9 = &selRef_setArticleSharedEventCount_;
      goto LABEL_24;
    case 4u:
      result = [v1 articleLikedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_34;
      }

      v9 = &selRef_setArticleLikedEventCount_;
      goto LABEL_24;
    case 5u:
      result = [v1 articleDislikedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_28;
      }

      v9 = &selRef_setArticleDislikedEventCount_;
      goto LABEL_24;
    case 6u:
      result = [v1 articleSavedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_36;
      }

      v9 = &selRef_setArticleSavedEventCount_;
      goto LABEL_24;
    case 7u:
      result = [v1 tagMutedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_31;
      }

      v9 = &selRef_setTagMutedEventCount_;
      goto LABEL_24;
    case 8u:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      return sub_1C6D5B44C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    case 9u:
      result = [v1 tagFollowedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_33;
      }

      v9 = &selRef_setTagFollowedEventCount_;
      goto LABEL_24;
    case 0xAu:
      result = [v1 tagUnfollowedEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_35;
      }

      v9 = &selRef_setTagUnfollowedEventCount_;
      goto LABEL_24;
    case 0xBu:
      result = [v1 feedViewEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_32;
      }

      v9 = &selRef_setFeedViewEventCount_;
      goto LABEL_24;
    default:
      result = [v1 articleSeenEventCount];
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_30;
      }

      v9 = &selRef_setArticleSeenEventCount_;
      goto LABEL_24;
  }
}

void sub_1C6D4F8BC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, size_t a10, uint64_t a11, unint64_t a12, char *a13, void *a14, char *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t (**a22)(size_t, uint64_t))
{
  v1002 = a8;
  v1003 = a6;
  v1004 = a7;
  v1024 = a5;
  v1050 = a4;
  v1022 = a3;
  v1081 = a2;
  v1075 = a22;
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v959 = (&v957 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25, v26);
  v960 = (&v957 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v1005 = (&v957 - v30);
  v1085 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v1085, v31);
  v1084 = &v957 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v1029 = &v957 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v1028 = &v957 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v977 = &v957 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v976 = &v957 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v1030 = &v957 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v1095 = (&v957 - v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v979 = &v957 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v978 = &v957 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v1032 = &v957 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v1031 = &v957 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v1036 = (&v957 - v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  v1035 = &v957 - v69;
  v1105 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v1020 = *(v1105 - 8);
  MEMORY[0x1EEE9AC00](v1105, v70);
  v1015 = &v957 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v73);
  v1014 = &v957 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v970 = &v957 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v969 = &v957 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v1017 = &v957 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v1016 = &v957 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v972 = &v957 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v971 = &v957 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v1019 = &v957 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v1018 = &v957 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v1034 = &v957 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v1083 = &v957 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v1033 = &v957 - v107;
  sub_1C6B1839C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v33);
  MEMORY[0x1EEE9AC00](v108 - 8, v109);
  v1068 = &v957 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v112);
  v993 = &v957 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v1069 = &v957 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v998 = &v957 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v1064 = (&v957 - v122);
  MEMORY[0x1EEE9AC00](v123, v124);
  v1041 = &v957 - v125;
  v1096 = sub_1C6D789A0();
  v1045 = *(v1096 - 8);
  MEMORY[0x1EEE9AC00](v1096, v126);
  v1071 = &v957 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128, v129);
  v1007 = &v957 - v130;
  MEMORY[0x1EEE9AC00](v131, v132);
  v1072 = &v957 - v133;
  MEMORY[0x1EEE9AC00](v134, v135);
  v996 = &v957 - v136;
  MEMORY[0x1EEE9AC00](v137, v138);
  v1066 = (&v957 - v139);
  MEMORY[0x1EEE9AC00](v140, v141);
  v1054 = &v957 - v142;
  v1112 = sub_1C6D77050();
  v1106 = *(v1112 - 8);
  MEMORY[0x1EEE9AC00](v1112, v143);
  v1091 = &v957 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v145, v146);
  v1098 = &v957 - v147;
  MEMORY[0x1EEE9AC00](v148, v149);
  v1092 = &v957 - v150;
  MEMORY[0x1EEE9AC00](v151, v152);
  v1100 = &v957 - v153;
  MEMORY[0x1EEE9AC00](v154, v155);
  v1063 = &v957 - v156;
  MEMORY[0x1EEE9AC00](v157, v158);
  v1101 = (&v957 - v159);
  MEMORY[0x1EEE9AC00](v160, v161);
  v1009 = &v957 - v162;
  v982 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v982, v163);
  v980 = &v957 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v165, v166);
  v981 = &v957 - v167;
  MEMORY[0x1EEE9AC00](v168, v169);
  v1042 = (&v957 - v170);
  v989 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v989, v171);
  v983 = &v957 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v173, v174);
  v984 = &v957 - v175;
  MEMORY[0x1EEE9AC00](v176, v177);
  v1043 = &v957 - v178;
  v179 = _s23EmbeddingValidityResultOMa(0);
  MEMORY[0x1EEE9AC00](v179 - 8, v180);
  v1011 = &v957 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v182, v183);
  v999 = &v957 - v184;
  MEMORY[0x1EEE9AC00](v185, v186);
  v1013 = &v957 - v187;
  MEMORY[0x1EEE9AC00](v188, v189);
  v1001 = &v957 - v190;
  MEMORY[0x1EEE9AC00](v191, v192);
  v1086 = &v957 - v193;
  MEMORY[0x1EEE9AC00](v194, v195);
  v1073 = &v957 - v196;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v33);
  MEMORY[0x1EEE9AC00](v197 - 8, v198);
  v961 = &v957 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v200, v201);
  v1059 = &v957 - v202;
  MEMORY[0x1EEE9AC00](v203, v204);
  v1058 = &v957 - v205;
  MEMORY[0x1EEE9AC00](v206, v207);
  v990 = &v957 - v208;
  MEMORY[0x1EEE9AC00](v209, v210);
  v991 = &v957 - v211;
  MEMORY[0x1EEE9AC00](v212, v213);
  v966 = &v957 - v214;
  MEMORY[0x1EEE9AC00](v215, v216);
  v1010 = &v957 - v217;
  MEMORY[0x1EEE9AC00](v218, v219);
  v964 = &v957 - v220;
  MEMORY[0x1EEE9AC00](v221, v222);
  v1060 = &v957 - v223;
  MEMORY[0x1EEE9AC00](v224, v225);
  v1061 = &v957 - v226;
  MEMORY[0x1EEE9AC00](v227, v228);
  v994 = &v957 - v229;
  MEMORY[0x1EEE9AC00](v230, v231);
  v995 = &v957 - v232;
  MEMORY[0x1EEE9AC00](v233, v234);
  v968 = &v957 - v235;
  MEMORY[0x1EEE9AC00](v236, v237);
  v1012 = &v957 - v238;
  MEMORY[0x1EEE9AC00](v239, v240);
  v1006 = &v957 - v241;
  MEMORY[0x1EEE9AC00](v242, v243);
  v1062 = &v957 - v244;
  MEMORY[0x1EEE9AC00](v245, v246);
  v1065 = &v957 - v247;
  MEMORY[0x1EEE9AC00](v248, v249);
  v1038 = &v957 - v250;
  MEMORY[0x1EEE9AC00](v251, v252);
  v1039 = &v957 - v253;
  MEMORY[0x1EEE9AC00](v254, v255);
  v1097 = &v957 - v256;
  MEMORY[0x1EEE9AC00](v257, v258);
  v1074 = &v957 - v259;
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v33);
  MEMORY[0x1EEE9AC00](v260 - 8, v261);
  v1023 = &v957 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v263, v264);
  v1026 = &v957 - v265;
  MEMORY[0x1EEE9AC00](v266, v267);
  v269 = &v957 - v268;
  v270 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v271 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270, v272);
  v973 = &v957 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v274, v275);
  v986 = &v957 - v276;
  MEMORY[0x1EEE9AC00](v277, v278);
  v992 = &v957 - v279;
  MEMORY[0x1EEE9AC00](v280, v281);
  v974 = &v957 - v282;
  MEMORY[0x1EEE9AC00](v283, v284);
  v1099 = &v957 - v285;
  MEMORY[0x1EEE9AC00](v286, v287);
  v988 = &v957 - v288;
  MEMORY[0x1EEE9AC00](v289, v290);
  v997 = &v957 - v291;
  MEMORY[0x1EEE9AC00](v292, v293);
  v1040 = (&v957 - v294);
  MEMORY[0x1EEE9AC00](v295, v296);
  v1108 = &v957 - v297;
  MEMORY[0x1EEE9AC00](v298, v299);
  v1044 = &v957 - v300;
  MEMORY[0x1EEE9AC00](v301, v302);
  v1052 = (&v957 - v303);
  MEMORY[0x1EEE9AC00](v304, v305);
  v1107 = &v957 - v306;
  v307 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v1090 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307, v308);
  v1077 = &v957 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v310, v311);
  v985 = &v957 - v312;
  MEMORY[0x1EEE9AC00](v313, v314);
  v1078 = (&v957 - v315);
  MEMORY[0x1EEE9AC00](v316, v317);
  v1093 = &v957 - v318;
  MEMORY[0x1EEE9AC00](v319, v320);
  v987 = &v957 - v321;
  MEMORY[0x1EEE9AC00](v322, v323);
  v1079 = &v957 - v324;
  MEMORY[0x1EEE9AC00](v325, v326);
  v1094 = &v957 - v327;
  MEMORY[0x1EEE9AC00](v328, v329);
  v1037 = (&v957 - v330);
  MEMORY[0x1EEE9AC00](v331, v332);
  v334 = &v957 - v333;
  v335 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v1102 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335, v336);
  v962 = (&v957 - ((v337 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v338, v339);
  v965 = (&v957 - v340);
  MEMORY[0x1EEE9AC00](v341, v342);
  v963 = (&v957 - v343);
  MEMORY[0x1EEE9AC00](v344, v345);
  v967 = (&v957 - v346);
  MEMORY[0x1EEE9AC00](v347, v348);
  v1021 = (&v957 - v349);
  MEMORY[0x1EEE9AC00](v350, v351);
  v1027 = (&v957 - v352);
  MEMORY[0x1EEE9AC00](v353, v354);
  v356 = &v957 - v355;
  ObjectType = swift_getObjectType();
  sub_1C6D71158(ObjectType);
  v1113 = v1075;
  v1080 = v356;
  v1114 = v356;
  v358 = sub_1C6D5B1C4(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
  v1070 = v307;
  v359 = v1111;
  sub_1C6D78C30();
  v360 = v1081;
  v361 = v359;
  swift_beginAccess();
  v362 = v360[2];
  v363 = __OFADD__(v362, 1);
  v364 = v362 + 1;
  if (v363)
  {
    goto LABEL_421;
  }

  v1025 = v359;
  v1008 = a18;
  v1104 = a17;
  v1082 = a21;
  v1103 = a19;
  v1110 = a20;
  v1111 = a15;
  v975 = a16;
  v1048 = a14;
  v1057 = a13;
  v1047 = a11;
  v1053 = a12;
  v1049 = a10;
  v1000 = a9;
  v1076 = v1045;
  v360[2] = v364;
  sub_1C6D5B3CC(v334, v269, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v365 = *(v271 + 6);
  v271 += 48;
  v1067 = v270;
  v1055 = v365;
  v366 = v365(v269, 1, v270);
  v1109 = v335;
  v1056 = v271;
  v1046 = v358;
  if (v366 == 1)
  {
    sub_1C6D5B44C(v334, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v367 = sub_1C6D5B4AC(v269, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v271 = v1099;
    v334 = v1075;
    v361 = v1095;
    goto LABEL_137;
  }

  v1087 = v334;
  sub_1C6D5B51C(v269, v1107, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v369 = v1074;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1074);
  v370 = *(v1102 + 48);
  v1089 = (v1102 + 48);
  v1088 = v370;
  v371 = v370(v369, 1, v335);
  sub_1C6D5B4AC(v369, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v361 = v1095;
  v358 = v1053;
  v334 = v1049;
  v372 = v1097;
  v269 = v1086;
  if (v371 != 1)
  {
    v360 = v1022;
    swift_beginAccess();
    v373 = v360[2];
    v363 = __OFADD__(v373, 1);
    v374 = v373 + 1;
    if (v363)
    {
      goto LABEL_424;
    }

    v360[2] = v374;
  }

  if (!v1050)
  {
    goto LABEL_14;
  }

  if (v1050 != 1)
  {
    goto LABEL_18;
  }

  v269 = v1073;
  sub_1C6D43E04(1, v1024, v1073);
  v375 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v376 = (*(*(v375 - 8) + 48))(v269, 2, v375);
  if (v376)
  {
    if (v376 == 1)
    {
      goto LABEL_18;
    }

    v377 = v1004;
    swift_beginAccess();
    v378 = *(v377 + 16);
    v363 = __OFADD__(v378, 1);
    v379 = v378 + 1;
    if (!v363)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    sub_1C6D43E04(0, v1024, v269);
    v380 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v381 = (*(*(v380 - 8) + 48))(v269, 2, v380);
    if (v381)
    {
      if (v381 == 1)
      {
        goto LABEL_18;
      }

      v377 = v1000;
      swift_beginAccess();
      v382 = *(v377 + 16);
      v363 = __OFADD__(v382, 1);
      v379 = v382 + 1;
      if (!v363)
      {
LABEL_17:
        *(v377 + 16) = v379;
LABEL_18:
        v383 = v1107;
        if (!v334)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
      goto LABEL_449;
    }

    goto LABEL_36;
  }

  v409 = v1003;
  swift_beginAccess();
  v410 = *(v409 + 16);
  v363 = __OFADD__(v410, 1);
  v411 = v410 + 1;
  if (!v363)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:
  v409 = v1002;
  swift_beginAccess();
  v412 = *(v409 + 16);
  v363 = __OFADD__(v412, 1);
  v411 = v412 + 1;
  if (v363)
  {
    __break(1u);
    goto LABEL_438;
  }

LABEL_37:
  *(v409 + 16) = v411;
  sub_1C6D5B44C(v269, _s23EmbeddingValidityResultOMa);
  v383 = v1107;
  if (v334)
  {
LABEL_19:
    sub_1C6D4F618(v383);
  }

LABEL_20:
  swift_beginAccess();
  v384 = *(v358 + 16);
  v385 = v1057;
  swift_beginAccess();
  v386 = *(v385 + 2);

  sub_1C6D4DB40(v383, v384, v386, v1048, &v1130);

  if (v1131)
  {

    v387 = v383;
LABEL_22:
    sub_1C6D5B44C(v387, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v367 = sub_1C6D5B44C(v1087, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v271 = v1099;
    goto LABEL_136;
  }

  v388 = [v1111 aggregateModificationConfigurations];
  v1132 = 0;
  v1133 = 1;
  v389 = sub_1C6C40FC8(v383, &v1132);

  v1051 = v389;
  if (!v389)
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v402 = qword_1EDCE9830;
    v403 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v404 = swift_allocObject();
    *(v404 + 16) = xmmword_1C6D7E630;
    v405 = v1107;
    v406 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
    v408 = v407;
    *(v404 + 56) = MEMORY[0x1E69E6158];
    *(v404 + 64) = sub_1C6B2064C();
    *(v404 + 32) = v406;
    *(v404 + 40) = v408;
    sub_1C6D78D30("Found nil aggregate modifications for event %{public}@", 54, 2, &dword_1C6B09000, v402, v403, v404);

    v387 = v405;
    goto LABEL_22;
  }

  v390 = v1052;
  sub_1C6D5B364(v383, v1052, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (!swift_getEnumCaseMultiPayload())
  {
    v413 = v1043;
    sub_1C6D5B51C(v390, v1043, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    swift_beginAccess();
    if (*(v358 + 16))
    {
      sub_1C6D5B3CC(v413 + *(v989 + 20), v372, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v414 = v1109;
      v415 = v1088;
      if (v1088(v372, 1, v1109) == 1)
      {
        v416 = v1027;
        *v1027 = 0;
        v416[1] = 0xE000000000000000;
        (*(v1020 + 56))(v416 + *(v414 + 20), 1, 1, v1105);
        sub_1C6D78A30();
        if (v415(v372, 1, v414) != 1)
        {
          sub_1C6D5B4AC(v372, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v416 = v1027;
        sub_1C6D5B51C(v372, v1027, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v422 = *v416;
      v423 = v416[1];

      sub_1C6D5B44C(v416, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B1E6A8(&v1127, v422, v423);
      swift_endAccess();
      sub_1C6D5B44C(v1043, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    else
    {
      swift_endAccess();
      sub_1C6D5B44C(v413, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    v271 = v1099;
    goto LABEL_54;
  }

  sub_1C6D5B44C(v390, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v391 = v1044;
  sub_1C6D5B364(v383, v1044, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v271 = v1099;
  v269 = v1054;
  if (EnumCaseMultiPayload == 1)
  {
    v393 = v391;
    v394 = v1042;
    sub_1C6D5B51C(v393, v1042, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    v395 = v1057;
    swift_beginAccess();
    if (*(v395 + 2))
    {
      v396 = v394 + *(v982 + 20);
      v397 = v1006;
      sub_1C6D5B3CC(v396, v1006, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v398 = v1109;
      v399 = v1088;
      if (v1088(v397, 1, v1109) == 1)
      {
        v400 = v1020;
        v401 = v1021;
        *v1021 = 0;
        v401[1] = 0xE000000000000000;
        (*(v400 + 56))(v401 + *(v398 + 20), 1, 1, v1105);
        sub_1C6D78A30();
        if (v399(v397, 1, v398) != 1)
        {
          sub_1C6D5B4AC(v397, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }
      }

      else
      {
        v401 = v1021;
        sub_1C6D5B51C(v397, v1021, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      v424 = *v401;
      v425 = v401[1];

      sub_1C6D5B44C(v401, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B1E6A8(&v1127, v424, v425);
      swift_endAccess();
      sub_1C6D5B44C(v1042, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

LABEL_54:
      v269 = v1054;
      goto LABEL_55;
    }

    swift_endAccess();
    v421 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
  }

  else
  {
    sub_1C6D5B44C(v391, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v394 = v1040;
    sub_1C6D5B364(v383, v1040, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v417 = v394;
      v394 = v1005;
      sub_1C6D5B51C(v417, v1005, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v418 = *v394;
      v419 = v394[1];
      swift_beginAccess();
      v420 = v419;
      v269 = v1054;
      sub_1C6D39EFC(v418, v420);
      swift_endAccess();

      v421 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
    }

    else
    {
      v421 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
    }
  }

  sub_1C6D5B44C(v394, v421);
LABEL_55:
  v426 = v1104;
  v1052 = sub_1C6CCEBD8(sub_1C6D5D45C, v1104, v1008);
  v427 = v1009;
  sub_1C6D77030();
  v1054 = sub_1C6D4F0A0(v427, v426, v1103, v1111);
  v428 = *(v1106 + 8);
  v1074 = (v1106 + 8);
  v1073 = v428;
  v428(v427, v1112);
  v1044 = *(v1070 + 24);
  v429 = v1041;
  sub_1C6D5B3CC(&v1087[v1044], v1041, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v430 = v1076;
  v431 = v1076 + 48;
  v432 = *(v1076 + 48);
  v358 = v1096;
  v433 = (v432)(v429, 1, v1096);
  v1043 = v431;
  v1042 = v432;
  if (v433 == 1)
  {
    sub_1C6D78990();
    if ((v432)(v429, 1, v358) != 1)
    {
      sub_1C6D5B4AC(v429, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v430 + 32))(v269, v429, v358);
  }

  v360 = v269;
  sub_1C6D78970();
  v435 = v434;
  v436 = *(v430 + 8);
  v334 = v430 + 8;
  v1041 = v334;
  v1040 = v436;
  (v436)(v269, v358);
  v437 = v435 * 1000.0;
  if (COERCE__INT64(fabs(v435 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_427;
  }

  v358 = v1038;
  v269 = v1039;
  v360 = v1107;
  if (v437 <= -1.0)
  {
    goto LABEL_428;
  }

  if (v437 >= 1.84467441e19)
  {
    goto LABEL_429;
  }

  [v1054 setTimestamp_];
  v438 = [v1051 baselineModificationData];
  [v1111 decayRate];
  v440 = v439;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v269);
  v441 = v1109;
  v442 = v1088(v269, 1, v1109);
  if (v442 == 1)
  {
    sub_1C6D5B4AC(v269, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v443 = 0;
    v444 = 0;
  }

  else
  {
    v445 = v269 + *(v441 + 20);
    v446 = v1035;
    sub_1C6D5B3CC(v445, v1035, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v1020 + 48))(v446, 1, v1105) == 1)
    {
      sub_1C6D5B4AC(v446, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v269, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v443 = 0;
      v444 = 1;
    }

    else
    {
      v447 = v446;
      v448 = v1033;
      sub_1C6D5B51C(v447, v1033, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v449 = v448;
      v450 = v1083;
      sub_1C6D5B51C(v449, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v451 = v358;
      v452 = v1084;
      sub_1C6D5B51C(v450, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v453 = *(v452 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
      swift_beginAccess();
      v443 = *v453;
      v444 = *(v453 + 8);
      v454 = v452;
      v358 = v451;
      v360 = v1107;
      sub_1C6D5B44C(v454, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      sub_1C6D5B44C(v1039, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v1132 = v443;
  v1133 = v444;
  v1134 = v442 == 1;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v358);
  v455 = v1109;
  v456 = v1088(v358, 1, v1109);
  if (v456 == 1)
  {
    sub_1C6D5B4AC(v358, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v457 = 0;
    v269 = 0;
  }

  else
  {
    v458 = v358 + *(v455 + 20);
    v459 = v1036;
    sub_1C6D5B3CC(v458, v1036, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v1020 + 48))(v459, 1, v1105) == 1)
    {
      sub_1C6D5B4AC(v459, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v358, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v457 = 0;
      v269 = 1;
    }

    else
    {
      v460 = v459;
      v461 = v1034;
      sub_1C6D5B51C(v460, v1034, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v462 = v461;
      v463 = v1083;
      sub_1C6D5B51C(v462, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v1097 = v438;
      v464 = v358;
      v465 = v1084;
      sub_1C6D5B51C(v463, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v466 = *(v465 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
      swift_beginAccess();
      v457 = *v466;
      v269 = *(v466 + 8);
      v360 = v1107;
      sub_1C6D5B44C(v465, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v467 = v464;
      v438 = v1097;
      sub_1C6D5B44C(v467, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v1127 = v457;
  LOBYTE(v1128) = v269;
  BYTE1(v1128) = v456 == 1;
  v468 = sub_1C6CE69E0(v360, &v1132, &v1127);
  v358 = v1054;
  NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v438, v1054, 0, v440, v468);

  v469 = v1110;
  swift_beginAccess();
  v470 = v469[2];
  if (v470)
  {
    v471 = [v358 featureKey];
    if (v471)
    {
      v472 = v471;
      v473 = sub_1C6D795A0();
      v475 = v474;

      if (*(v470 + 16))
      {
        v476 = sub_1C6B5DEA8(v473, v475);
        v478 = v477;

        if (v478)
        {
          v360 = *(*(v470 + 56) + 8 * v476);

          goto LABEL_80;
        }
      }

      else
      {
      }

      v360 = MEMORY[0x1E69E7CC0];
LABEL_80:
      v334 = v1045;
      swift_endAccess();
      v269 = v1037;
      sub_1C6D5B364(v1087, v1037, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v271 = v1099;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_81;
      }

      goto LABEL_436;
    }

LABEL_449:
    __break(1u);
LABEL_450:
    __break(1u);
LABEL_451:
    __break(1u);
LABEL_452:
    __break(1u);
LABEL_453:
    __break(1u);
LABEL_454:
    __break(1u);
    return;
  }

  swift_endAccess();
  v958 = 0;
  v479 = v1096;
  v334 = v1045;
  while (1)
  {
    v360 = v1110;
    swift_beginAccess();
    if (v360[2])
    {
      v484 = [v358 featureKey];
      if (!v484)
      {
        goto LABEL_450;
      }

      v485 = v484;
      v486 = sub_1C6D795A0();
      v269 = v487;

      v360 = v1110 + 2;
      sub_1C6BC24C0(v488, v486, v269);
      v334 = v1045;
    }

    swift_endAccess();
    v1039 = v1052[2];
    if (v1039)
    {
      v358 = 0;
      v1038 = v1052 + ((*(v1106 + 80) + 32) & ~*(v1106 + 80));
      v1086 = (v1106 + 16);
      v1006 = (v334 + 32);
      v1037 = (v1020 + 48);
      v1036 = (v1106 + 88);
      LODWORD(v1035) = *MEMORY[0x1E69E36C0];
      LODWORD(v1034) = *MEMORY[0x1E69E36A8];
      LODWORD(v1033) = *MEMORY[0x1E69E36B0];
      LODWORD(v1027) = *MEMORY[0x1E69E36B8];
      LODWORD(v1021) = *MEMORY[0x1E69E36C8];
      v1005 = (v1106 + 96);
      while (v358 < v1052[2])
      {
        v269 = *(v1106 + 16);
        v494 = v1101;
        (v269)(v1101, &v1038[*(v1106 + 72) * v358], v1112);
        v495 = sub_1C6D4F0A0(v494, v1104, v1103, v1111);
        v496 = v1064;
        sub_1C6D5B3CC(&v1087[v1044], v1064, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        v497 = v1042;
        if ((v1042)(v496, 1, v479) == 1)
        {
          v361 = v1066;
          sub_1C6D78990();
          v498 = (v497)(v496, 1, v479);
          v334 = v1109;
          v271 = v1065;
          if (v498 != 1)
          {
            sub_1C6D5B4AC(v496, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          }
        }

        else
        {
          v361 = v1066;
          (*v1006)(v1066, v496, v479);
          v334 = v1109;
          v271 = v1065;
        }

        v360 = v361;
        sub_1C6D78970();
        v500 = v499;
        (v1040)(v361, v479);
        v501 = v500 * 1000.0;
        if (COERCE__INT64(fabs(v500 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_410;
        }

        if (v501 <= -1.0)
        {
          goto LABEL_411;
        }

        if (v501 >= 1.84467441e19)
        {
          goto LABEL_412;
        }

        v1097 = v495;
        [v495 setTimestamp_];
        v502 = [v1051 aggregateModificationData];
        [v1111 decayRate];
        v504 = v503;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v271);
        v505 = v1088(v271, 1, v334);
        if (v505 == 1)
        {
          sub_1C6D5B4AC(v271, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v506 = 0;
          v507 = 0;
        }

        else
        {
          v508 = &v271[*(v334 + 20)];
          v509 = v1031;
          sub_1C6D5B3CC(v508, v1031, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v1037)(v509, 1, v1105) == 1)
          {
            sub_1C6D5B4AC(v509, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v271, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v506 = 0;
            v507 = 1;
          }

          else
          {
            v510 = v1018;
            sub_1C6D5B51C(v509, v1018, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v511 = v510;
            v512 = v1083;
            sub_1C6D5B51C(v511, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v513 = v512;
            v514 = v1084;
            sub_1C6D5B51C(v513, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v515 = *(v514 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
            swift_beginAccess();
            v506 = *v515;
            v507 = *(v515 + 8);
            v516 = v514;
            v479 = v1096;
            sub_1C6D5B44C(v516, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v271, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        v1132 = v506;
        v1133 = v507;
        v1134 = v505 == 1;
        v517 = v1062;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1062);
        v518 = v1109;
        v519 = v1088(v517, 1, v1109);
        if (v519 == 1)
        {
          sub_1C6D5B4AC(v517, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v520 = 0;
          v521 = 0;
        }

        else
        {
          v522 = v1032;
          sub_1C6D5B3CC(&v517[*(v518 + 20)], v1032, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v1037)(v522, 1, v1105) == 1)
          {
            sub_1C6D5B4AC(v522, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v517, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v520 = 0;
            v521 = 1;
          }

          else
          {
            v523 = v1019;
            sub_1C6D5B51C(v522, v1019, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v524 = v523;
            v525 = v1083;
            sub_1C6D5B51C(v524, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v526 = v525;
            v527 = v1084;
            sub_1C6D5B51C(v526, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v528 = *(v527 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
            swift_beginAccess();
            v520 = *v528;
            v521 = *(v528 + 8);
            v529 = v527;
            v479 = v1096;
            sub_1C6D5B44C(v529, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v517, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        v1127 = v520;
        LOBYTE(v1128) = v521;
        BYTE1(v1128) = v519 == 1;
        v530 = sub_1C6CE69E0(v1107, &v1132, &v1127);
        v531 = v1063;
        v532 = v1112;
        (v269)(v1063, v1101, v1112);
        v533 = (*v1036)(v531, v532);
        if (v533 == v1035 || v533 == v1034 || v533 == v1033 || v533 == v1027 || v533 != v1021)
        {
          (v1073)(v531, v1112);
          v269 = 0;
          v361 = v1095;
        }

        else
        {
          (*v1005)(v531, v1112);
          v534 = *(v531 + 2);
          v535 = *(v531 + 3);

          v536 = v1082;
          swift_beginAccess();
          v537 = *(v536 + 16);
          v538 = *(v537 + 16);

          if (v538 && (v539 = sub_1C6B5DEA8(v534, v535), (v540 & 1) != 0))
          {
            v269 = *(*(v537 + 56) + 8 * v539);
            v541 = v269;
          }

          else
          {
            v269 = 0;
          }

          v361 = v1095;
          swift_endAccess();
          swift_bridgeObjectRelease_n();
        }

        v542 = v502;
        v543 = v502;
        v493 = v1097;
        NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v542, v1054, v269, v504, v530);

        v544 = v1110;
        swift_beginAccess();
        v545 = v544[2];
        if (v545)
        {
          v546 = [v493 featureKey];
          if (!v546)
          {
            goto LABEL_443;
          }

          v547 = v546;
          v548 = sub_1C6D795A0();
          v550 = v549;

          if (*(v545 + 16))
          {
            v551 = sub_1C6B5DEA8(v548, v550);
            v553 = v552;

            v334 = MEMORY[0x1E69E7CC0];
            if (v553)
            {
              v334 = *(*(v545 + 56) + 8 * v551);
            }
          }

          else
          {

            v334 = MEMORY[0x1E69E7CC0];
          }

          swift_endAccess();
          sub_1C6D5B364(v1087, v1079, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v334 = sub_1C6B666CC(0, *(v334 + 16) + 1, 1, v334);
          }

          v493 = v1097;
          v269 = *(v334 + 16);
          v554 = *(v334 + 24);
          if (v269 >= v554 >> 1)
          {
            v334 = sub_1C6B666CC((v554 > 1), v269 + 1, 1, v334);
          }

          *(v334 + 16) = v269 + 1;
          sub_1C6D5B51C(v1079, v334 + ((*(v1090 + 80) + 32) & ~*(v1090 + 80)) + *(v1090 + 72) * v269, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        }

        else
        {
          swift_endAccess();
          v334 = 0;
        }

        v360 = v1110;
        swift_beginAccess();
        if (v360[2])
        {
          v555 = [v493 featureKey];
          if (!v555)
          {
            goto LABEL_444;
          }

          v489 = v555;
          v269 = sub_1C6D795A0();
          v491 = v490;

          v360 = v1110 + 2;
          sub_1C6BC24C0(v492, v269, v491);
          v493 = v1097;
        }

        ++v358;
        swift_endAccess();

        (v1073)(v1101, v1112);

        v271 = v1099;
        if (v1039 == v358)
        {
          goto LABEL_135;
        }
      }

      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
      goto LABEL_435;
    }

LABEL_135:

    sub_1C6D5B44C(v1107, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6D5B44C(v1087, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

LABEL_136:
    v334 = v1075;
    v358 = v1046;
LABEL_137:
    MEMORY[0x1EEE9AC00](v367, v368);
    v556 = v1080;
    *(&v957 - 2) = v334;
    *(&v957 - 1) = v556;
    v269 = v1094;
    v557 = v1025;
    sub_1C6D78C30();
    v1040 = v557;
    v360 = v1081;
    swift_beginAccess();
    v558 = v360[2];
    v363 = __OFADD__(v558, 1);
    v559 = v558 + 1;
    if (v363)
    {
      goto LABEL_422;
    }

    v360[2] = v559;
    v560 = v1026;
    sub_1C6D5B3CC(v269, v1026, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (v1055(v560, 1, v1067) == 1)
    {
      sub_1C6D5B44C(v269, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v561 = sub_1C6D5B4AC(v560, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_140:
      v358 = v1067;
      v361 = v1057;
      v563 = v1040;
      goto LABEL_273;
    }

    sub_1C6D5B51C(v560, v1108, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v564 = v1012;
    Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1012);
    v565 = *(v1102 + 48);
    v1107 = (v1102 + 48);
    v1101 = v565;
    v566 = v565(v564, 1, v1109);
    sub_1C6D5B4AC(v564, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v567 = v1096;
    v334 = v1049;
    v269 = v1013;
    if (v566 != 1)
    {
      v360 = v1022;
      swift_beginAccess();
      v568 = v360[2];
      v363 = __OFADD__(v568, 1);
      v569 = v568 + 1;
      if (v363)
      {
        goto LABEL_425;
      }

      v360[2] = v569;
    }

    if (!v1050)
    {
      goto LABEL_151;
    }

    if (v1050 != 1)
    {
      goto LABEL_155;
    }

    v269 = v1001;
    sub_1C6D43E04(1, v1024, v1001);
    v570 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v571 = (*(*(v570 - 8) + 48))(v269, 2, v570);
    if (v571)
    {
      if (v571 == 1)
      {
        goto LABEL_155;
      }

      v572 = v1004;
      swift_beginAccess();
      v573 = *(v572 + 16);
      v363 = __OFADD__(v573, 1);
      v574 = v573 + 1;
      if (!v363)
      {
        goto LABEL_154;
      }

      __break(1u);
LABEL_151:
      sub_1C6D43E04(0, v1024, v269);
      v575 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
      v576 = (*(*(v575 - 8) + 48))(v269, 2, v575);
      if (v576)
      {
        if (v576 != 1)
        {
          v572 = v1000;
          swift_beginAccess();
          v577 = *(v572 + 16);
          v363 = __OFADD__(v577, 1);
          v574 = v577 + 1;
          if (v363)
          {
            goto LABEL_440;
          }

LABEL_154:
          *(v572 + 16) = v574;
        }

LABEL_155:
        v578 = v1108;
        if (!v334)
        {
          goto LABEL_157;
        }

LABEL_156:
        sub_1C6D4F618(v578);
        goto LABEL_157;
      }

      goto LABEL_172;
    }

    v604 = v1003;
    swift_beginAccess();
    v605 = *(v604 + 16);
    v363 = __OFADD__(v605, 1);
    v606 = v605 + 1;
    if (!v363)
    {
      goto LABEL_173;
    }

    __break(1u);
LABEL_172:
    v604 = v1002;
    swift_beginAccess();
    v607 = *(v604 + 16);
    v363 = __OFADD__(v607, 1);
    v606 = v607 + 1;
    if (v363)
    {
      goto LABEL_439;
    }

LABEL_173:
    *(v604 + 16) = v606;
    sub_1C6D5B44C(v269, _s23EmbeddingValidityResultOMa);
    v578 = v1108;
    if (v334)
    {
      goto LABEL_156;
    }

LABEL_157:
    v579 = v1053;
    swift_beginAccess();
    v580 = *(v579 + 16);
    v581 = v1057;
    swift_beginAccess();
    v582 = *(v581 + 2);

    sub_1C6D4DB40(v578, v580, v582, v1048, &v1127);

    if (!v1128)
    {
      v583 = [v1111 aggregateModificationConfigurations];
      v1130 = 0;
      LOBYTE(v1131) = 1;
      v584 = sub_1C6C40FC8(v578, &v1130);

      v1074 = v584;
      if (!v584)
      {
        if (qword_1EDCE9828 != -1)
        {
          swift_once();
        }

        v597 = qword_1EDCE9830;
        v598 = sub_1C6D79AA0();
        sub_1C6B1D314(0);
        v599 = swift_allocObject();
        *(v599 + 16) = xmmword_1C6D7E630;
        v600 = v1108;
        v601 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
        v603 = v602;
        *(v599 + 56) = MEMORY[0x1E69E6158];
        *(v599 + 64) = sub_1C6B2064C();
        *(v599 + 32) = v601;
        *(v599 + 40) = v603;
        sub_1C6D78D30("Found nil aggregate modifications for event %{public}@", 54, 2, &dword_1C6B09000, v597, v598, v599);

        sub_1C6D5B44C(v600, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v561 = sub_1C6D5B44C(v1094, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        v334 = v1075;
        goto LABEL_140;
      }

      v585 = v997;
      sub_1C6D5B364(v578, v997, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1C6D5B44C(v585, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v586 = v988;
        sub_1C6D5B364(v578, v988, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v587 = v586;
          v588 = v981;
          sub_1C6D5B51C(v587, v981, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
          v589 = v1057;
          swift_beginAccess();
          v358 = v998;
          if (!*(v589 + 2))
          {
            swift_endAccess();
            sub_1C6D5B44C(v588, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
            goto LABEL_191;
          }

          v590 = v588 + *(v982 + 20);
          v591 = v964;
          sub_1C6D5B3CC(v590, v964, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v592 = v1109;
          v593 = v1101;
          if (v1101(v591, 1, v1109) == 1)
          {
            v594 = v963;
            *v963 = 0;
            v594[1] = 0xE000000000000000;
            (*(v1020 + 56))(v594 + *(v592 + 20), 1, 1, v1105);
            sub_1C6D78A30();
            v595 = v592;
            v596 = v594;
            if (v593(v591, 1, v595) != 1)
            {
              sub_1C6D5B4AC(v591, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v596 = v963;
            sub_1C6D5B51C(v591, v963, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v629 = *v596;
          v630 = v596[1];

          sub_1C6D5B44C(v596, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v1124, v629, v630);
          swift_endAccess();
          v627 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
          v628 = v981;
LABEL_190:
          sub_1C6D5B44C(v628, v627);

LABEL_191:
          v631 = v1104;
          v1079 = sub_1C6CCEBD8(sub_1C6D5D45C, v1104, v1008);
          v632 = v1009;
          sub_1C6D77030();
          v1086 = sub_1C6D4F0A0(v632, v631, v1103, v1111);
          v633 = *(v1106 + 8);
          v1088 = (v1106 + 8);
          v1087 = v633;
          (v633)(v632, v1112);
          v1073 = *(v1070 + 24);
          sub_1C6D5B3CC(&v1094[v1073], v358, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          v634 = v1076;
          v635 = (v1076 + 48);
          v636 = *(v1076 + 48);
          v637 = v636(v358, 1, v567);
          v1066 = v635;
          v1065 = v636;
          if (v637 == 1)
          {
            v360 = v996;
            sub_1C6D78990();
            v638 = v636(v358, 1, v567);
            v269 = v1107;
            if (v638 != 1)
            {
              sub_1C6D5B4AC(v358, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            }
          }

          else
          {
            v360 = v996;
            (*(v634 + 32))(v996, v358, v567);
            v269 = v1107;
          }

          sub_1C6D78970();
          v640 = v639;
          v641 = *(v634 + 8);
          v334 = v634 + 8;
          v1064 = v334;
          v1063 = v641;
          (v641)(v360, v567);
          v642 = v640 * 1000.0;
          if (COERCE__INT64(fabs(v640 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_430;
          }

          v643 = v995;
          if (v642 <= -1.0)
          {
            goto LABEL_431;
          }

          if (v642 >= 1.84467441e19)
          {
            goto LABEL_432;
          }

          [v1086 setTimestamp_];
          v644 = [v1074 baselineModificationData];
          [v1111 decayRate];
          v646 = v645;
          Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v643);
          v647 = v1109;
          v648 = v1101(v643, 1, v1109);
          if (v648 == 1)
          {
            sub_1C6D5B4AC(v643, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v649 = 0;
            v650 = 0;
          }

          else
          {
            v651 = &v643[*(v647 + 20)];
            v652 = v978;
            sub_1C6D5B3CC(v651, v978, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            if ((*(v1020 + 48))(v652, 1, v1105) == 1)
            {
              sub_1C6D5B4AC(v652, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              sub_1C6D5B44C(v643, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v649 = 0;
              v650 = 1;
            }

            else
            {
              v653 = v652;
              v654 = v971;
              sub_1C6D5B51C(v653, v971, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v655 = v654;
              v656 = v1083;
              sub_1C6D5B51C(v655, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v358 = v1084;
              sub_1C6D5B51C(v656, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              v657 = *(v358 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
              swift_beginAccess();
              v649 = *v657;
              v650 = *(v657 + 8);
              sub_1C6D5B44C(v358, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              sub_1C6D5B44C(v643, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          v1130 = v649;
          LOBYTE(v1131) = v650;
          BYTE1(v1131) = v648 == 1;
          v658 = v994;
          Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v994);
          v659 = v1109;
          v660 = v1101(v658, 1, v1109);
          if (v660 == 1)
          {
            sub_1C6D5B4AC(v658, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v661 = 0;
            v662 = 0;
          }

          else
          {
            v663 = &v658[*(v659 + 20)];
            v664 = v979;
            sub_1C6D5B3CC(v663, v979, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            if ((*(v1020 + 48))(v664, 1, v1105) == 1)
            {
              sub_1C6D5B4AC(v664, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              sub_1C6D5B44C(v658, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v661 = 0;
              v662 = 1;
            }

            else
            {
              v665 = v664;
              v666 = v972;
              sub_1C6D5B51C(v665, v972, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v667 = v666;
              v668 = v1083;
              sub_1C6D5B51C(v667, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
              v358 = v1084;
              sub_1C6D5B51C(v668, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              v669 = *(v358 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
              swift_beginAccess();
              v661 = *v669;
              v662 = *(v669 + 8);
              sub_1C6D5B44C(v358, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
              sub_1C6D5B44C(v658, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          v1124 = v661;
          v1125 = v662;
          v1126 = v660 == 1;
          v670 = sub_1C6CE69E0(v1108, &v1130, &v1124);
          v671 = v1086;
          NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v644, v1086, 0, v646, v670);

          v672 = v1110;
          swift_beginAccess();
          v673 = v672[2];
          if (!v673)
          {
            swift_endAccess();
            v1036 = 0;
            v682 = v1096;
            v269 = v1072;
LABEL_221:
            v688 = v1110;
            swift_beginAccess();
            if (v688[2])
            {
              v689 = [v1086 featureKey];
              if (!v689)
              {
                goto LABEL_452;
              }

              v690 = v689;
              v691 = sub_1C6D795A0();
              v693 = v692;

              sub_1C6BC24C0(v694, v691, v693);
              v269 = v1072;
            }

            swift_endAccess();
            v360 = v1069;
            v1062 = *(v1079 + 2);
            if (v1062)
            {
              v334 = 0;
              v1054 = &v1079[(*(v1106 + 80) + 32) & ~*(v1106 + 80)];
              v1097 = (v1106 + 16);
              v1038 = (v1045 + 32);
              v1044 = v1020 + 48;
              v1052 = (v1106 + 88);
              LODWORD(v1051) = *MEMORY[0x1E69E36C0];
              LODWORD(v1043) = *MEMORY[0x1E69E36A8];
              LODWORD(v1042) = *MEMORY[0x1E69E36B0];
              LODWORD(v1041) = *MEMORY[0x1E69E36B8];
              LODWORD(v1039) = *MEMORY[0x1E69E36C8];
              v1037 = (v1106 + 96);
              while (v334 < *(v1079 + 2))
              {
                v695 = &v1054[*(v1106 + 72) * v334];
                v696 = v1100;
                v1089 = *(v1106 + 16);
                v1089(v1100, v695, v1112);
                v697 = sub_1C6D4F0A0(v696, v1104, v1103, v1111);
                sub_1C6D5B3CC(&v1094[v1073], v360, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                v358 = v1066;
                v698 = v1065;
                if ((v1065)(v360, 1, v682) == 1)
                {
                  sub_1C6D78990();
                  v699 = v698(v360, 1, v682);
                  v271 = v1061;
                  if (v699 != 1)
                  {
                    sub_1C6D5B4AC(v360, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                  }
                }

                else
                {
                  (*v1038)(v269, v360, v682);
                  v271 = v1061;
                }

                v360 = v269;
                sub_1C6D78970();
                v701 = v700;
                (v1063)(v269, v682);
                v702 = v701 * 1000.0;
                if (COERCE__INT64(fabs(v701 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_414;
                }

                if (v702 <= -1.0)
                {
                  goto LABEL_415;
                }

                if (v702 >= 1.84467441e19)
                {
                  goto LABEL_416;
                }

                [v697 setTimestamp_];
                v703 = [v1074 aggregateModificationData];
                [v1111 decayRate];
                v705 = v704;
                Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v271);
                v706 = v1109;
                v707 = v1101(v271, 1, v1109);
                if (v707 == 1)
                {
                  sub_1C6D5B4AC(v271, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v708 = 0;
                  v709 = 0;
                }

                else
                {
                  sub_1C6D5B3CC(&v271[*(v706 + 20)], v361, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  if ((*v1044)(v361, 1, v1105) == 1)
                  {
                    sub_1C6D5B4AC(v361, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    sub_1C6D5B44C(v271, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                    v708 = 0;
                    v709 = 1;
                  }

                  else
                  {
                    v710 = v1016;
                    sub_1C6D5B51C(v361, v1016, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v711 = v710;
                    v712 = v1083;
                    sub_1C6D5B51C(v711, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v713 = v712;
                    v714 = v1084;
                    sub_1C6D5B51C(v713, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    v715 = *(v714 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
                    swift_beginAccess();
                    v708 = *v715;
                    v709 = *(v715 + 8);
                    v716 = v714;
                    v682 = v1096;
                    sub_1C6D5B44C(v716, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    sub_1C6D5B44C(v271, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }
                }

                v1130 = v708;
                LOBYTE(v1131) = v709;
                BYTE1(v1131) = v707 == 1;
                v717 = v1060;
                Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1060);
                v718 = v1109;
                v719 = v1101(v717, 1, v1109);
                if (v719 == 1)
                {
                  sub_1C6D5B4AC(v717, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  v720 = 0;
                  v721 = 0;
                }

                else
                {
                  v722 = v1030;
                  sub_1C6D5B3CC(&v717[*(v718 + 20)], v1030, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                  if ((*v1044)(v722, 1, v1105) == 1)
                  {
                    sub_1C6D5B4AC(v722, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    sub_1C6D5B44C(v717, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                    v720 = 0;
                    v721 = 1;
                  }

                  else
                  {
                    v723 = v1017;
                    sub_1C6D5B51C(v722, v1017, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v724 = v723;
                    v725 = v1083;
                    sub_1C6D5B51C(v724, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
                    v726 = v725;
                    v727 = v1084;
                    sub_1C6D5B51C(v726, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    v728 = *(v727 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
                    swift_beginAccess();
                    v720 = *v728;
                    v721 = *(v728 + 8);
                    v729 = v727;
                    v682 = v1096;
                    sub_1C6D5B44C(v729, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
                    sub_1C6D5B44C(v717, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
                  }
                }

                v1124 = v720;
                v1125 = v721;
                v1126 = v719 == 1;
                v730 = sub_1C6CE69E0(v1108, &v1130, &v1124);
                v358 = v1092;
                v731 = v1112;
                v1089(v1092, v1100, v1112);
                v732 = (*v1052)(v358, v731);
                v733 = v697;
                if (v732 == v1051 || v732 == v1043 || v732 == v1042 || v732 == v1041 || v732 != v1039)
                {
                  (v1087)(v1092, v1112);
                  v741 = 0;
                  v361 = v1095;
                }

                else
                {
                  v734 = v1092;
                  (*v1037)(v1092, v1112);
                  v735 = *(v734 + 2);
                  v358 = *(v734 + 3);

                  v736 = v1082;
                  swift_beginAccess();
                  v737 = *(v736 + 16);
                  v738 = *(v737 + 16);

                  if (v738 && (v739 = sub_1C6B5DEA8(v735, v358), (v740 & 1) != 0))
                  {
                    v741 = *(*(v737 + 56) + 8 * v739);
                    v742 = v741;
                  }

                  else
                  {
                    v741 = 0;
                  }

                  v361 = v1095;
                  swift_endAccess();
                  swift_bridgeObjectRelease_n();
                }

                NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v703, v1086, v741, v705, v730);

                v743 = v1110;
                swift_beginAccess();
                v744 = v743[2];
                if (v744)
                {
                  v745 = [v733 featureKey];
                  if (!v745)
                  {
                    goto LABEL_445;
                  }

                  v746 = v745;
                  v747 = sub_1C6D795A0();
                  v749 = v748;

                  if (*(v744 + 16))
                  {
                    v750 = sub_1C6B5DEA8(v747, v749);
                    v752 = v751;

                    v753 = MEMORY[0x1E69E7CC0];
                    if (v752)
                    {
                      v753 = *(*(v744 + 56) + 8 * v750);
                    }
                  }

                  else
                  {

                    v753 = MEMORY[0x1E69E7CC0];
                  }

                  swift_endAccess();
                  sub_1C6D5B364(v1094, v1078, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v753 = sub_1C6B666CC(0, v753[2] + 1, 1, v753);
                  }

                  v358 = v753[2];
                  v754 = v753[3];
                  if (v358 >= v754 >> 1)
                  {
                    v753 = sub_1C6B666CC((v754 > 1), v358 + 1, 1, v753);
                  }

                  v753[2] = v358 + 1;
                  sub_1C6D5B51C(v1078, v753 + ((*(v1090 + 80) + 32) & ~*(v1090 + 80)) + *(v1090 + 72) * v358, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
                }

                else
                {
                  swift_endAccess();
                }

                v755 = v1110;
                swift_beginAccess();
                if (v755[2])
                {
                  v756 = [v733 featureKey];
                  if (!v756)
                  {
                    goto LABEL_446;
                  }

                  v757 = v756;
                  v358 = sub_1C6D795A0();
                  v759 = v758;

                  sub_1C6BC24C0(v760, v358, v759);
                }

                ++v334;
                swift_endAccess();

                (v1087)(v1100, v1112);

                v271 = v1099;
                v360 = v1069;
                v269 = v1072;
                if (v1062 == v334)
                {
                  goto LABEL_271;
                }
              }

              goto LABEL_413;
            }

LABEL_271:

            sub_1C6D5B44C(v1108, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            sub_1C6D5B44C(v1094, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

            goto LABEL_272;
          }

          v674 = [v671 featureKey];
          if (!v674)
          {
            goto LABEL_451;
          }

          v675 = v674;
          v358 = sub_1C6D795A0();
          v677 = v676;

          v678 = v1094;
          if (*(v673 + 16))
          {
            v679 = sub_1C6B5DEA8(v358, v677);
            v358 = v680;

            if (v358)
            {
              v681 = *(*(v673 + 56) + 8 * v679);

LABEL_216:
              v683 = v987;
              swift_endAccess();
              sub_1C6D5B364(v678, v683, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              v684 = swift_isUniquelyReferenced_nonNull_native();
              v269 = v1072;
              if ((v684 & 1) == 0)
              {
                v681 = sub_1C6B666CC(0, v681[2] + 1, 1, v681);
              }

              v686 = v681[2];
              v685 = v681[3];
              v1036 = v681;
              if (v686 >= v685 >> 1)
              {
                v1036 = sub_1C6B666CC((v685 > 1), v686 + 1, 1, v1036);
              }

              v687 = v1036;
              v1036[2] = v686 + 1;
              sub_1C6D5B51C(v683, v687 + ((*(v1090 + 80) + 32) & ~*(v1090 + 80)) + *(v1090 + 72) * v686, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
              v682 = v1096;
              goto LABEL_221;
            }
          }

          else
          {
          }

          v681 = MEMORY[0x1E69E7CC0];
          goto LABEL_216;
        }

        sub_1C6D5B44C(v586, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v609 = v974;
        sub_1C6D5B364(v578, v974, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v619 = v960;
          sub_1C6D5B51C(v609, v960, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
          v620 = *v619;
          v621 = v619[1];
          swift_beginAccess();
          sub_1C6D39EFC(v620, v621);
          swift_endAccess();

          v622 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
          v623 = v619;
LABEL_184:
          sub_1C6D5B44C(v623, v622);
          v358 = v998;
          goto LABEL_191;
        }

        v624 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

      else
      {
        v608 = v585;
        v609 = v984;
        sub_1C6D5B51C(v608, v984, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v610 = v1053;
        swift_beginAccess();
        if (*(v610 + 16))
        {
          v611 = v609 + *(v989 + 20);
          v612 = v968;
          sub_1C6D5B3CC(v611, v968, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v613 = v1109;
          v614 = v1101;
          v615 = v1101(v612, 1, v1109);
          v358 = v998;
          if (v615 == 1)
          {
            v616 = v967;
            *v967 = 0;
            v616[1] = 0xE000000000000000;
            (*(v1020 + 56))(v616 + *(v613 + 20), 1, 1, v1105);
            sub_1C6D78A30();
            v617 = v613;
            v618 = v616;
            if (v614(v612, 1, v617) != 1)
            {
              sub_1C6D5B4AC(v612, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v618 = v967;
            sub_1C6D5B51C(v612, v967, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v625 = *v618;
          v626 = v618[1];

          sub_1C6D5B44C(v618, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v1124, v625, v626);
          swift_endAccess();
          v627 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
          v628 = v984;
          goto LABEL_190;
        }

        swift_endAccess();
        v624 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      }

      v622 = v624;
      v623 = v609;
      goto LABEL_184;
    }

    sub_1C6D5B44C(v578, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v561 = sub_1C6D5B44C(v1094, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
LABEL_272:
    v334 = v1075;
    v563 = v1040;
    v358 = v1067;
    v361 = v1057;
LABEL_273:
    MEMORY[0x1EEE9AC00](v561, v562);
    v761 = v1080;
    *(&v957 - 2) = v334;
    *(&v957 - 1) = v761;
    v334 = v1093;
    sub_1C6D78C30();
    v269 = v563;
    v360 = v1081;
    swift_beginAccess();
    v762 = v360[2];
    v363 = __OFADD__(v762, 1);
    v763 = v762 + 1;
    if (v363)
    {
      goto LABEL_423;
    }

    v360[2] = v763;
    v764 = v1023;
    sub_1C6D5B3CC(v334, v1023, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (v1055(v764, 1, v358) == 1)
    {
      sub_1C6D5B44C(v334, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6D5B4AC(v764, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      goto LABEL_408;
    }

    sub_1C6D5B51C(v764, v271, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v765 = v1010;
    Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1010);
    v766 = *(v1102 + 48);
    v1102 += 48;
    v1108 = v766;
    v767 = (v766)(v765, 1, v1109);
    sub_1C6D5B4AC(v765, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v768 = v1096;
    v334 = v1011;
    if (v767 != 1)
    {
      v360 = v1022;
      swift_beginAccess();
      v769 = v360[2];
      v363 = __OFADD__(v769, 1);
      v770 = v769 + 1;
      if (v363)
      {
        goto LABEL_426;
      }

      v360[2] = v770;
    }

    if (!v1050)
    {
      goto LABEL_286;
    }

    if (v1050 != 1)
    {
      goto LABEL_295;
    }

    v334 = v999;
    sub_1C6D43E04(1, v1024, v999);
    v771 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v772 = (*(*(v771 - 8) + 48))(v334, 2, v771);
    if (v772)
    {
      if (v772 == 1)
      {
        goto LABEL_295;
      }

      v773 = v1004;
      swift_beginAccess();
      v774 = *(v773 + 16);
      v363 = __OFADD__(v774, 1);
      v775 = v774 + 1;
      if (!v363)
      {
        goto LABEL_289;
      }

      __break(1u);
LABEL_286:
      sub_1C6D43E04(0, v1024, v334);
      v776 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
      v777 = (*(*(v776 - 8) + 48))(v334, 2, v776);
      if (v777)
      {
        if (v777 == 1)
        {
          goto LABEL_295;
        }

        v773 = v1000;
        swift_beginAccess();
        v778 = *(v773 + 16);
        v363 = __OFADD__(v778, 1);
        v775 = v778 + 1;
        if (v363)
        {
          goto LABEL_442;
        }

LABEL_289:
        *(v773 + 16) = v775;
        goto LABEL_295;
      }

LABEL_293:
      v779 = v1002;
      swift_beginAccess();
      v782 = *(v779 + 16);
      v363 = __OFADD__(v782, 1);
      v781 = v782 + 1;
      if (v363)
      {
        goto LABEL_441;
      }

      goto LABEL_294;
    }

    v779 = v1003;
    swift_beginAccess();
    v780 = *(v779 + 16);
    v363 = __OFADD__(v780, 1);
    v781 = v780 + 1;
    if (v363)
    {
      __break(1u);
      goto LABEL_293;
    }

LABEL_294:
    *(v779 + 16) = v781;
    sub_1C6D5B44C(v334, _s23EmbeddingValidityResultOMa);
LABEL_295:
    v1065 = v563;
    if (v1049)
    {
      sub_1C6D4F618(v271);
    }

    v783 = v1053;
    swift_beginAccess();
    v784 = *(v783 + 16);
    swift_beginAccess();
    v785 = *(v361 + 16);

    sub_1C6D4DB40(v271, v784, v785, v1048, v1129);

    if (v1129[1])
    {
      goto LABEL_298;
    }

    v786 = [v1111 aggregateModificationConfigurations];
    v1121 = 0;
    v1122 = 1;
    v787 = sub_1C6C40FC8(v271, &v1121);

    v1089 = v787;
    if (!v787)
    {
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      v797 = qword_1EDCE9830;
      v798 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v799 = swift_allocObject();
      *(v799 + 16) = xmmword_1C6D7E630;
      v800 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
      v802 = v801;
      *(v799 + 56) = MEMORY[0x1E69E6158];
      *(v799 + 64) = sub_1C6B2064C();
      *(v799 + 32) = v800;
      *(v799 + 40) = v802;
      sub_1C6D78D30("Found nil aggregate modifications for event %{public}@", 54, 2, &dword_1C6B09000, v797, v798, v799);
LABEL_298:

      sub_1C6D5B44C(v271, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6D5B44C(v1093, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      goto LABEL_408;
    }

    v788 = v992;
    sub_1C6D5B364(v271, v992, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C6D5B44C(v788, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v789 = v986;
      sub_1C6D5B364(v271, v986, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v790 = swift_getEnumCaseMultiPayload();
      v269 = v1007;
      if (v790 == 1)
      {
        v791 = v789;
        v792 = v980;
        sub_1C6D5B51C(v791, v980, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        swift_beginAccess();
        if (*(v361 + 16))
        {
          v793 = v961;
          sub_1C6D5B3CC(v792 + *(v982 + 20), v961, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v794 = v1109;
          v795 = v1108;
          if ((v1108)(v793, 1, v1109) == 1)
          {
            v796 = v962;
            *v962 = 0;
            v796[1] = 0xE000000000000000;
            (*(v1020 + 56))(v796 + *(v794 + 20), 1, 1, v1105);
            sub_1C6D78A30();
            if ((v795)(v793, 1, v794) != 1)
            {
              sub_1C6D5B4AC(v793, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v796 = v962;
            sub_1C6D5B51C(v793, v962, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v817 = *v796;
          v818 = v796[1];

          sub_1C6D5B44C(v796, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v1115, v817, v818);
          swift_endAccess();
          sub_1C6D5B44C(v980, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

          v269 = v1007;
          goto LABEL_324;
        }

        swift_endAccess();
        v814 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
      }

      else
      {
        sub_1C6D5B44C(v789, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v792 = v973;
        sub_1C6D5B364(v271, v973, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v808 = v959;
          sub_1C6D5B51C(v792, v959, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
          v809 = *v808;
          v810 = v808[1];
          swift_beginAccess();
          v811 = v810;
          v269 = v1007;
          sub_1C6D39EFC(v809, v811);
          swift_endAccess();

          v812 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
          v813 = v808;
LABEL_319:
          sub_1C6D5B44C(v813, v812);
LABEL_324:
          v361 = v1109;
          goto LABEL_325;
        }

        v814 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

LABEL_318:
      v812 = v814;
      v813 = v792;
      goto LABEL_319;
    }

    v803 = v788;
    v792 = v983;
    sub_1C6D5B51C(v803, v983, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    v804 = v1053;
    swift_beginAccess();
    v269 = v1007;
    if (!*(v804 + 16))
    {
      swift_endAccess();
      v814 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      goto LABEL_318;
    }

    v805 = v966;
    sub_1C6D5B3CC(v792 + *(v989 + 20), v966, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v361 = v1109;
    v806 = v1108;
    if ((v1108)(v805, 1, v1109) == 1)
    {
      v807 = v965;
      *v965 = 0;
      v807[1] = 0xE000000000000000;
      (*(v1020 + 56))(v807 + *(v361 + 20), 1, 1, v1105);
      sub_1C6D78A30();
      if ((v806)(v805, 1, v361) != 1)
      {
        sub_1C6D5B4AC(v805, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v807 = v965;
      sub_1C6D5B51C(v805, v965, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }

    v815 = *v807;
    v816 = v807[1];

    sub_1C6D5B44C(v807, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B1E6A8(&v1115, v815, v816);
    swift_endAccess();
    sub_1C6D5B44C(v983, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);

    v269 = v1007;
LABEL_325:
    v819 = v1104;
    v1092 = sub_1C6CCEBD8(sub_1C6D5D45C, v1104, v1008);
    v820 = v1009;
    sub_1C6D77030();
    v1094 = sub_1C6D4F0A0(v820, v819, v1103, v1111);
    v821 = *(v1106 + 8);
    v1097 = (v1106 + 8);
    v1095 = v821;
    v821(v820, v1112);
    v1088 = *(v1070 + 24);
    v822 = v993;
    sub_1C6D5B3CC(v1088 + v1093, v993, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v823 = v1076;
    v358 = v1076 + 48;
    v824 = *(v1076 + 48);
    v825 = v824(v822, 1, v768);
    v1087 = v824;
    if (v825 == 1)
    {
      sub_1C6D78990();
      if (v824(v822, 1, v768) != 1)
      {
        sub_1C6D5B4AC(v822, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      (*(v823 + 32))(v269, v822, v768);
    }

    v360 = v269;
    sub_1C6D78970();
    v827 = v826;
    v828 = *(v823 + 8);
    v334 = v823 + 8;
    v1086 = v828;
    (v828)(v269, v768);
    v829 = v827 * 1000.0;
    if (COERCE__INT64(fabs(v827 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_433;
    }

    v830 = v991;
    if (v829 <= -1.0)
    {
      goto LABEL_434;
    }

    v1076 = v334;
    if (v829 < 1.84467441e19)
    {
      break;
    }

LABEL_435:
    __break(1u);
LABEL_436:
    v360 = sub_1C6B666CC(0, v360[2] + 1, 1, v360);
LABEL_81:
    v482 = v360[2];
    v481 = v360[3];
    v958 = v360;
    if (v482 >= v481 >> 1)
    {
      v958 = sub_1C6B666CC((v481 > 1), v482 + 1, 1, v958);
    }

    v483 = v958;
    v958[2] = v482 + 1;
    sub_1C6D5B51C(v269, v483 + ((*(v1090 + 80) + 32) & ~*(v1090 + 80)) + *(v1090 + 72) * v482, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v479 = v1096;
  }

  [v1094 setTimestamp_];
  v831 = [v1089 baselineModificationData];
  [v1111 decayRate];
  v833 = v832;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v830);
  v834 = (v1108)(v830, 1, v361);
  v1100 = v358;
  if (v834 == 1)
  {
    sub_1C6D5B4AC(v830, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v835 = 0;
    v836 = 0;
  }

  else
  {
    v837 = v976;
    sub_1C6D5B3CC(&v830[*(v361 + 20)], v976, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v1020 + 48))(v837, 1, v1105) == 1)
    {
      sub_1C6D5B4AC(v837, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v830, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v835 = 0;
      v836 = 1;
    }

    else
    {
      v838 = v837;
      v839 = v969;
      sub_1C6D5B51C(v838, v969, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v840 = v839;
      v841 = v1083;
      sub_1C6D5B51C(v840, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v842 = v1084;
      sub_1C6D5B51C(v841, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v843 = *(v842 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
      swift_beginAccess();
      v835 = *v843;
      v836 = *(v843 + 8);
      v844 = v842;
      v358 = v1100;
      sub_1C6D5B44C(v844, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      sub_1C6D5B44C(v830, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v1121 = v835;
  v1122 = v836;
  v1123 = v834 == 1;
  v845 = v990;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v990);
  v846 = (v1108)(v845, 1, v361);
  if (v846 == 1)
  {
    sub_1C6D5B4AC(v845, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v847 = 0;
    v848 = 0;
  }

  else
  {
    v849 = v977;
    sub_1C6D5B3CC(&v845[*(v361 + 20)], v977, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v1020 + 48))(v849, 1, v1105) == 1)
    {
      sub_1C6D5B4AC(v849, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6D5B44C(v845, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v847 = 0;
      v848 = 1;
    }

    else
    {
      v850 = v845;
      v851 = v849;
      v852 = v970;
      sub_1C6D5B51C(v851, v970, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v853 = v852;
      v854 = v1083;
      sub_1C6D5B51C(v853, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v855 = v1084;
      sub_1C6D5B51C(v854, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v856 = *(v855 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
      swift_beginAccess();
      v847 = *v856;
      v848 = *(v856 + 8);
      v857 = v855;
      v358 = v1100;
      sub_1C6D5B44C(v857, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      sub_1C6D5B44C(v850, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  v1115 = v847;
  v1116 = v848;
  v1117 = v846 == 1;
  v858 = sub_1C6CE69E0(v271, &v1121, &v1115);
  v859 = v1094;
  NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v831, v1094, 0, v833, v858);

  v860 = v1110;
  swift_beginAccess();
  v861 = v860[2];
  if (v861)
  {
    v862 = [v859 featureKey];
    if (!v862)
    {
      goto LABEL_453;
    }

    v863 = v862;
    v864 = sub_1C6D795A0();
    v866 = v865;

    v867 = v1093;
    if (*(v861 + 16))
    {
      v868 = sub_1C6B5DEA8(v864, v866);
      v870 = v869;

      if (v870)
      {
        v871 = *(*(v861 + 56) + 8 * v868);

        goto LABEL_350;
      }
    }

    else
    {
    }

    v871 = MEMORY[0x1E69E7CC0];
LABEL_350:
    v334 = v1045;
    swift_endAccess();
    v872 = v985;
    sub_1C6D5B364(v867, v985, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v873 = swift_isUniquelyReferenced_nonNull_native();
    v269 = v1071;
    if ((v873 & 1) == 0)
    {
      v871 = sub_1C6B666CC(0, v871[2] + 1, 1, v871);
    }

    v875 = v871[2];
    v874 = v871[3];
    v1064 = v871;
    if (v875 >= v874 >> 1)
    {
      v1064 = sub_1C6B666CC((v874 > 1), v875 + 1, 1, v1064);
    }

    v876 = v1064;
    v1064[2] = v875 + 1;
    sub_1C6D5B51C(v872, v876 + ((*(v1090 + 80) + 32) & ~*(v1090 + 80)) + *(v1090 + 72) * v875, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v358 = v1100;
  }

  else
  {
    swift_endAccess();
    v1064 = 0;
    v269 = v1071;
    v334 = v1045;
  }

  v877 = v1110;
  swift_beginAccess();
  if (v877[2])
  {
    v878 = [v859 featureKey];
    if (!v878)
    {
      goto LABEL_454;
    }

    v879 = v878;
    v880 = sub_1C6D795A0();
    v882 = v881;

    sub_1C6BC24C0(v883, v880, v882);
    v269 = v1071;
    v334 = v1045;
  }

  swift_endAccess();
  v360 = v1068;
  v1081 = *(v1092 + 2);
  if (v1081)
  {
    v361 = 0;
    v1079 = &v1092[(*(v1106 + 80) + 32) & ~*(v1106 + 80)];
    v1107 = (v1106 + 16);
    v1067 = (v334 + 32);
    v1078 = (v1020 + 48);
    v1075 = (v1106 + 88);
    LODWORD(v1074) = *MEMORY[0x1E69E36C0];
    LODWORD(v1073) = *MEMORY[0x1E69E36A8];
    LODWORD(v1072) = *MEMORY[0x1E69E36B0];
    LODWORD(v1070) = *MEMORY[0x1E69E36B8];
    LODWORD(v1069) = *MEMORY[0x1E69E36C8];
    v1066 = (v1106 + 96);
    while (v361 < *(v1092 + 2))
    {
      v884 = v271;
      v885 = &v1079[*(v1106 + 72) * v361];
      v886 = v1098;
      v1101 = *(v1106 + 16);
      v1101(v1098, v885, v1112);
      v887 = sub_1C6D4F0A0(v886, v1104, v1103, v1111);
      sub_1C6D5B3CC(v1088 + v1093, v360, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v334 = v1096;
      v271 = v1087;
      if ((v1087)(v360, 1, v1096) == 1)
      {
        sub_1C6D78990();
        if ((v271)(v360, 1, v334) != 1)
        {
          sub_1C6D5B4AC(v360, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        }
      }

      else
      {
        (*v1067)(v269, v360, v334);
      }

      v360 = v269;
      sub_1C6D78970();
      v889 = v888;
      (v1086)(v269, v334);
      v890 = v889 * 1000.0;
      if (COERCE__INT64(fabs(v889 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_418;
      }

      if (v890 <= -1.0)
      {
        goto LABEL_419;
      }

      if (v890 >= 1.84467441e19)
      {
        goto LABEL_420;
      }

      v271 = v884;
      v891 = v887;
      [v887 setTimestamp_];
      v892 = [v1089 aggregateModificationData];
      [v1111 decayRate];
      v894 = v893;
      v895 = v1058;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1058);
      v896 = v1109;
      v897 = (v1108)(v895, 1, v1109);
      if (v897 == 1)
      {
        sub_1C6D5B4AC(v895, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v898 = 0;
        v899 = 0;
      }

      else
      {
        v900 = &v895[*(v896 + 20)];
        v901 = v1028;
        sub_1C6D5B3CC(v900, v1028, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v1078)(v901, 1, v1105) == 1)
        {
          sub_1C6D5B4AC(v901, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v895, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v898 = 0;
          v899 = 1;
        }

        else
        {
          v902 = v1014;
          sub_1C6D5B51C(v901, v1014, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v903 = v902;
          v904 = v1083;
          sub_1C6D5B51C(v903, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v905 = v904;
          v906 = v1084;
          sub_1C6D5B51C(v905, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v907 = *(v906 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
          swift_beginAccess();
          v908 = v895;
          v898 = *v907;
          v899 = *(v907 + 8);
          sub_1C6D5B44C(v906, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v909 = v908;
          v271 = v1099;
          sub_1C6D5B44C(v909, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v891 = v887;
      }

      v1121 = v898;
      v1122 = v899;
      v1123 = v897 == 1;
      v910 = v1059;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v1059);
      v911 = v1109;
      v912 = (v1108)(v910, 1, v1109);
      if (v912 == 1)
      {
        sub_1C6D5B4AC(v910, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v913 = 0;
        v914 = 0;
      }

      else
      {
        v915 = v1029;
        sub_1C6D5B3CC(&v910[*(v911 + 20)], v1029, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v1078)(v915, 1, v1105) == 1)
        {
          sub_1C6D5B4AC(v915, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v910, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v913 = 0;
          v914 = 1;
        }

        else
        {
          v916 = v915;
          v917 = v1015;
          sub_1C6D5B51C(v916, v1015, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v918 = v917;
          v919 = v1083;
          sub_1C6D5B51C(v918, v1083, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v920 = v919;
          v921 = v1084;
          sub_1C6D5B51C(v920, v1084, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v922 = *(v921 + *(v1085 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
          swift_beginAccess();
          v923 = v910;
          v913 = *v922;
          v914 = *(v922 + 8);
          sub_1C6D5B44C(v921, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v924 = v923;
          v271 = v1099;
          sub_1C6D5B44C(v924, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v891 = v887;
      }

      v1118 = v913;
      v1119 = v914;
      v1120 = v912 == 1;
      v925 = sub_1C6CE69E0(v271, &v1121, &v1118);
      v334 = v1091;
      v926 = v1112;
      v1101(v1091, v1098, v1112);
      v927 = (*v1075)(v334, v926);
      if (v927 == v1074 || v927 == v1073 || v927 == v1072 || v927 == v1070 || v927 != v1069)
      {
        v1095(v1091, v1112);
        v936 = 0;
      }

      else
      {
        v928 = v1091;
        (*v1066)(v1091, v1112);
        v929 = *(v928 + 2);
        v930 = *(v928 + 3);

        v931 = v1082;
        swift_beginAccess();
        v932 = *(v931 + 16);
        v933 = *(v932 + 16);

        if (v933 && (v934 = sub_1C6B5DEA8(v929, v930), (v935 & 1) != 0))
        {
          v936 = *(*(v932 + 56) + 8 * v934);
          v937 = v936;
        }

        else
        {
          v936 = 0;
        }

        swift_endAccess();
        swift_bridgeObjectRelease_n();
      }

      NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(v892, v1094, v936, v894, v925);

      v938 = v1110;
      swift_beginAccess();
      v939 = v938[2];
      if (v939)
      {
        v940 = [v891 featureKey];
        if (!v940)
        {
          goto LABEL_447;
        }

        v941 = v940;
        v942 = sub_1C6D795A0();
        v944 = v943;

        if (*(v939 + 16))
        {
          v945 = sub_1C6B5DEA8(v942, v944);
          v947 = v946;

          v948 = MEMORY[0x1E69E7CC0];
          if (v947)
          {
            v948 = *(*(v939 + 56) + 8 * v945);
          }
        }

        else
        {

          v948 = MEMORY[0x1E69E7CC0];
        }

        swift_endAccess();
        sub_1C6D5B364(v1093, v1077, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v948 = sub_1C6B666CC(0, v948[2] + 1, 1, v948);
        }

        v358 = v1100;
        v334 = v948[2];
        v949 = v948[3];
        if (v334 >= v949 >> 1)
        {
          v948 = sub_1C6B666CC((v949 > 1), v334 + 1, 1, v948);
        }

        v948[2] = v334 + 1;
        sub_1C6D5B51C(v1077, v948 + ((*(v1090 + 80) + 32) & ~*(v1090 + 80)) + *(v1090 + 72) * v334, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      }

      else
      {
        swift_endAccess();
        v358 = v1100;
      }

      v950 = v1110;
      swift_beginAccess();
      if (v950[2])
      {
        v951 = [v891 featureKey];
        if (!v951)
        {
          goto LABEL_448;
        }

        v952 = v951;
        v953 = sub_1C6D795A0();
        v955 = v954;

        sub_1C6BC24C0(v956, v953, v955);
        v358 = v1100;
      }

      ++v361;
      swift_endAccess();

      v1095(v1098, v1112);

      v360 = v1068;
      v269 = v1071;
      if (v1081 == v361)
      {
        goto LABEL_407;
      }
    }

    goto LABEL_417;
  }

LABEL_407:

  sub_1C6D5B44C(v271, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6D5B44C(v1093, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

LABEL_408:
  sub_1C6D5B44C(v1080, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t sub_1C6D566D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_1C6D5687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_1C6D56A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v23 = a3;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D78A00();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a2, v12, v15);
  v18 = a4(0);
  v19 = *(v18 + 24);
  sub_1C6D5B4AC(a1 + v19, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v13 + 32))(a1 + v19, v17, v12);
  (*(v13 + 56))(a1 + v19, 0, 1, v12);
  sub_1C6D5B364(v23, v11, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v20 = *(v18 + 20);
  sub_1C6D5B4AC(a1 + v20, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B51C(v11, a1 + v20, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v8 + 56))(a1 + v20, 0, 1, v7);
}

uint64_t sub_1C6D56C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_1C6D56E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a2, v10, v13);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v17 = *(v16 + 28);
  sub_1C6D5B4AC(a1 + v17, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v11 + 32))(a1 + v17, v15, v10);
  (*(v11 + 56))(a1 + v17, 0, 1, v10);
  sub_1C6D5B364(v21, v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v18 = *(v16 + 24);
  sub_1C6D5B4AC(a1 + v18, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D5B51C(v9, a1 + v18, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v6 + 56))(a1 + v18, 0, 1, v5);
}

id sub_1C6D5709C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, int *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23)
{
  v413 = a8;
  v428 = a7;
  v433 = a6;
  v426 = a5;
  v447 = a4;
  v454 = a1;
  v24 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v395 = (&v393 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v458 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v458, v27);
  v457 = &v393 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1E69E6720];
  sub_1C6B1839C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v452 = &v393 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v451 = &v393 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v409 = &v393 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v393 - v41;
  v482 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v502 = *(v482 - 8);
  MEMORY[0x1EEE9AC00](v482, v43);
  v438 = &v393 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v437 = &v393 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v401 = &v393 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v456 = &v393 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v400 = &v393 - v56;
  v57 = sub_1C6D77050();
  v477 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v58);
  v504 = &v393 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v490 = &v393 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v418 = &v393 - v65;
  v66 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v505 = *(v66 - 1);
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = (&v393 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = (&v393 - v72);
  v397 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v397, v74);
  v417 = &v393 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v399, v76);
  v407 = &v393 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = _s23EmbeddingValidityResultOMa(0);
  MEMORY[0x1EEE9AC00](v78 - 8, v79);
  v425 = &v393 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v82);
  v424 = &v393 - v83;
  sub_1C6B1839C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v29);
  MEMORY[0x1EEE9AC00](v84 - 8, v85);
  v421 = &v393 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v88);
  v470 = &v393 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v469 = &v393 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v415 = &v393 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v420 = &v393 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v405 = &v393 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v434 = &v393 - v104;
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v29);
  MEMORY[0x1EEE9AC00](v105 - 8, v106);
  v445 = &v393 - v107;
  v498 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v501 = *(v498 - 8);
  MEMORY[0x1EEE9AC00](v498, v108);
  v406 = &v393 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110, v111);
  v503 = &v393 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v410 = &v393 - v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  v423 = &v393 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v506 = &v393 - v121;
  v416 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v446 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416, v122);
  v488 = &v393 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124, v125);
  v422 = &v393 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v500 = (&v393 - v129);
  sub_1C6B1839C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v29);
  MEMORY[0x1EEE9AC00](v130 - 8, v131);
  v489 = &v393 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v133, v134);
  v419 = &v393 - v135;
  MEMORY[0x1EEE9AC00](v136, v137);
  v139 = &v393 - v138;
  v486 = sub_1C6D789A0();
  v140 = *(v486 - 8);
  MEMORY[0x1EEE9AC00](v486, v141);
  v468 = &v393 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143, v144);
  v429 = &v393 - v145;
  MEMORY[0x1EEE9AC00](v146, v147);
  v149 = &v393 - v148;
  swift_beginAccess();
  v150 = *(a3 + 16);
  v151 = __OFADD__(v150, 1);
  v152 = v150 + 1;
  if (v151)
  {
    goto LABEL_194;
  }

  v398 = v73;
  v396 = v69;
  v491 = v57;
  v408 = v42;
  v499 = v140;
  *(a3 + 16) = v152;
  if (qword_1EDCE7498 != -1)
  {
    goto LABEL_195;
  }

LABEL_3:
  v493 = v66;
  v450 = qword_1EDCE74A0;
  LODWORD(v508) = sub_1C6D79A90();
  sub_1C6B1D314(0);
  v453 = v153;
  v154 = swift_allocObject();
  v435 = xmmword_1C6D807C0;
  *(v154 + 16) = xmmword_1C6D807C0;
  v155 = v454;
  v157 = *v454;
  v156 = v454[1];
  *(v154 + 56) = MEMORY[0x1E69E6158];
  v459 = sub_1C6B2064C();
  *(v154 + 64) = v459;
  *(v154 + 32) = v157;
  *(v154 + 40) = v156;
  v514 = 0;
  v515 = 0xE000000000000000;
  v158 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6D5B3CC(v155 + *(v158 + 36), v139, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v159 = *(v140 + 48);
  v160 = v486;
  v161 = v159(v139, 1, v486);
  v480 = v140 + 48;
  v479 = v159;
  if (v161 == 1)
  {

    sub_1C6D78990();
    if (v159(v139, 1, v160) != 1)
    {
      sub_1C6D5B4AC(v139, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v140 + 32))(v149, v139, v160);
  }

  sub_1C6D79E60();
  v162 = *(v140 + 8);
  v481 = v140 + 8;
  v478 = v162;
  v162(v149, v160);
  v163 = v514;
  v164 = v515;
  v165 = MEMORY[0x1E69E6158];
  v166 = v459;
  *(v154 + 96) = MEMORY[0x1E69E6158];
  *(v154 + 104) = v166;
  *(v154 + 72) = v163;
  *(v154 + 80) = v164;
  v167 = v454[2];
  v514 = *(v167 + 16);
  v168 = sub_1C6D7A0E0();
  *(v154 + 136) = v165;
  *(v154 + 144) = v166;
  *(v154 + 112) = v168;
  *(v154 + 120) = v169;
  sub_1C6D78D30("Processing session %{public}@ - %{public}@ with %{public}@ events", 65, 2, &dword_1C6B09000, v450, v508, v154);

  v444 = *(v167 + 16);
  if (!v444)
  {
    return result;
  }

  v414 = a20;
  v476 = a19;
  v449 = a23;
  v475 = a21;
  v171 = a22;
  v507 = a17;
  v393 = a18;
  v432 = a16;
  v66 = a15;
  v431 = a13;
  v140 = a14;
  v441 = a12;
  v139 = a11;
  v460 = (*(v446 + 80) + 32) & ~*(v446 + 80);
  v443 = v167 + v460;
  v172 = v490;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v402 = a9;
  v149 = v172;
  v173 = v500;
  swift_beginAccess();
  v439 = a14;
  swift_beginAccess();
  v436 = a15;
  swift_beginAccess();
  v403 = a10;
  swift_beginAccess();
  v404 = a11;
  swift_beginAccess();
  v174 = 0;
  v442 = (v501 + 12);
  v505 += 6;
  v394 = (v502 + 56);
  v497 = (v477 + 8);
  v455 = (v499 + 32);
  v474 = (v502 + 48);
  v502 = v477 + 16;
  v411 = 0x80000001C6D9E000;
  v412 = 0x80000001C6D9E040;
  v467 = (v477 + 88);
  v466 = *MEMORY[0x1E69E36C0];
  v465 = *MEMORY[0x1E69E36A8];
  v464 = *MEMORY[0x1E69E36B0];
  v462 = *MEMORY[0x1E69E36B8];
  v461 = *MEMORY[0x1E69E36C8];
  v448 = (v477 + 96);
  v440 = xmmword_1C6D7E630;
  v430 = v167;
  v487 = a22;
  while (1)
  {
    if (v174 >= *(v167 + 16))
    {
      goto LABEL_187;
    }

    v176 = *(v446 + 72);
    v463 = v174;
    v483 = v176;
    sub_1C6D5B364(v443 + v176 * v174, v173, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v177 = *(v447 + 16);
    v151 = __OFADD__(v177, 1);
    v178 = v177 + 1;
    if (v151)
    {
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_3;
    }

    v139 = v454[5];
    v179 = *(v454 + 48);
    *(v447 + 16) = v178;
    v180 = v173;
    v66 = v173;
    v181 = v445;
    v140 = qword_1EDCE5660;
    sub_1C6D5B3CC(v180, v445, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if ((*v442)(v181, 1, v498) != 1)
    {
      break;
    }

    sub_1C6D5B44C(v66, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    result = sub_1C6D5B4AC(v181, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v175 = v463;
    v173 = v66;
LABEL_10:
    v174 = v175 + 1;
    if (v174 == v444)
    {
      return result;
    }
  }

  sub_1C6D5B51C(v181, v506, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v182 = v434;
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v434);
  v66 = v493;
  v499 = *v505;
  v183 = (v499)(v182, 1, v493);
  sub_1C6D5B4AC(v182, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v184 = v183 == 1;
  v185 = v441;
  if (!v184)
  {
    v186 = *(v426 + 16);
    v151 = __OFADD__(v186, 1);
    v187 = v186 + 1;
    if (v151)
    {
      goto LABEL_189;
    }

    *(v426 + 16) = v187;
  }

  if (!v433)
  {
    v193 = v425;
    sub_1C6D43E04(0, v428, v425);
    v194 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    result = (*(*(v194 - 8) + 48))(v193, 2, v194);
    if (!result)
    {
      v219 = *(v403 + 16);
      v151 = __OFADD__(v219, 1);
      v220 = v219 + 1;
      v221 = v441;
      if (v151)
      {
        goto LABEL_199;
      }

      *(v403 + 16) = v220;
      sub_1C6D5B44C(v425, _s23EmbeddingValidityResultOMa);
      v196 = v506;
      if (!v221)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v185 = v441;
    if (result != 1)
    {
      v190 = v404;
      v195 = *(v404 + 16);
      v151 = __OFADD__(v195, 1);
      v192 = v195 + 1;
      if (v151)
      {
        goto LABEL_198;
      }

LABEL_27:
      *(v190 + 16) = v192;
      v196 = v506;
      if (!v185)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_31:
    v196 = v506;
    if (!v185)
    {
LABEL_33:
      v199 = *(v439 + 16);
      v140 = *(v436 + 2);

      sub_1C6D4DB40(v196, v199, v140, v432, v513);

      if (v513[1])
      {

        v200 = v196;
LABEL_35:
        sub_1C6D5B44C(v200, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v173 = v500;
        result = sub_1C6D5B44C(v500, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
LABEL_180:
        v167 = v430;
        v175 = v463;
        goto LABEL_10;
      }

      v201 = [v507 aggregateModificationConfigurations];
      v511 = v139;
      LOBYTE(v512) = v179;
      v202 = sub_1C6C40FC8(v196, &v511);

      v203 = v423;
      v484 = v202;
      if (!v202)
      {
        if (qword_1EDCE9828 != -1)
        {
          swift_once();
        }

        v214 = qword_1EDCE9830;
        v140 = sub_1C6D79AA0();
        v139 = swift_allocObject();
        *(v139 + 16) = v440;
        v215 = v506;
        v216 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
        v217 = v459;
        *(v139 + 56) = MEMORY[0x1E69E6158];
        *(v139 + 64) = v217;
        *(v139 + 32) = v216;
        *(v139 + 40) = v218;
        sub_1C6D78D30("Found nil aggregate modifications for event %{public}@", 54, 2, &dword_1C6B09000, v214, v140, v139);

        v200 = v215;
        goto LABEL_35;
      }

      sub_1C6D5B364(v196, v423, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v205 = v417;
      v206 = v421;
      if (EnumCaseMultiPayload)
      {
        sub_1C6D5B44C(v203, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v207 = v410;
        sub_1C6D5B364(v196, v410, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1C6D5B51C(v207, v205, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
          v208 = v436;
          swift_beginAccess();
          if (*(v208 + 2))
          {
            sub_1C6D5B3CC(v205 + *(v397 + 20), v206, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v209 = v499;
            if ((v499)(v206, 1, v66) == 1)
            {
              v210 = v206;
              v211 = v396;
              *v396 = 0;
              v211[1] = 0xE000000000000000;
              (*v394)(v211 + v66[5], 1, 1, v482);
              sub_1C6D78A30();
              v212 = v209(v210, 1, v66);
              v66 = v500;
              v213 = v491;
              if (v212 != 1)
              {
                sub_1C6D5B4AC(v421, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              }
            }

            else
            {
              v238 = v206;
              v211 = v396;
              sub_1C6D5B51C(v238, v396, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v66 = v500;
              v213 = v491;
            }

            v239 = *v211;
            v240 = v211[1];

            sub_1C6D5B44C(v211, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            sub_1C6B1E6A8(&v509, v239, v240);
            swift_endAccess();

            v235 = v419;
          }

          else
          {
            swift_endAccess();
            v66 = v500;
            v235 = v419;
            v213 = v491;
          }

          sub_1C6D5B44C(v205, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
          v140 = v420;
        }

        else
        {
          sub_1C6D5B44C(v207, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v229 = v406;
          sub_1C6D5B364(v196, v406, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          if (swift_getEnumCaseMultiPayload() == 9)
          {
            v230 = v395;
            sub_1C6D5B51C(v229, v395, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
            v231 = *v230;
            v232 = v230[1];
            swift_beginAccess();
            sub_1C6D39EFC(v231, v232);
            swift_endAccess();

            v233 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
            v234 = v230;
          }

          else
          {
            v233 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
            v234 = v229;
          }

          sub_1C6D5B44C(v234, v233);
          v235 = v419;
          v140 = v420;
          v66 = v500;
          v213 = v491;
        }
      }

      else
      {
        v222 = v407;
        sub_1C6D5B51C(v203, v407, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v223 = v439;
        swift_beginAccess();
        if (*(v223 + 16))
        {
          v224 = v405;
          sub_1C6D5B3CC(v222 + *(v399 + 20), v405, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v225 = v499;
          v226 = (v499)(v224, 1, v66);
          v213 = v491;
          if (v226 == 1)
          {
            v227 = v398;
            *v398 = 0;
            v227[1] = 0xE000000000000000;
            (*v394)(v227 + v66[5], 1, 1, v482);
            sub_1C6D78A30();
            v228 = v225(v224, 1, v66);
            v66 = v500;
            if (v228 != 1)
            {
              sub_1C6D5B4AC(v405, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            }
          }

          else
          {
            v227 = v398;
            sub_1C6D5B51C(v224, v398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v66 = v500;
          }

          v236 = *v227;
          v237 = v227[1];

          sub_1C6D5B44C(v227, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B1E6A8(&v509, v236, v237);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v66 = v500;
          v213 = v491;
        }

        sub_1C6D5B44C(v222, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v235 = v419;
        v140 = v420;
      }

      v241 = v476;
      v485 = sub_1C6CCEBD8(sub_1C6D5D45C, v476, v414);
      v242 = v418;
      sub_1C6D77030();
      v492 = sub_1C6D4F0A0(v242, v241, v475, v507);
      v496 = *v497;
      v496(v242, v213);
      v473 = *(v416 + 24);
      sub_1C6D5B3CC(v66 + v473, v235, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v139 = v486;
      v243 = v479;
      if (v479(v235, 1, v486) == 1)
      {
        sub_1C6D78990();
        if (v243(v235, 1, v139) != 1)
        {
          sub_1C6D5B4AC(v235, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        }
      }

      else
      {
        (*v455)(v429, v235, v139);
      }

      sub_1C6D78970();
      v245 = v244;
      v478(v429, v139);
      v246 = v245 * 1000.0;
      v247 = v492;
      if (COERCE__INT64(fabs(v245 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_190;
      }

      if (v246 <= -1.0)
      {
        goto LABEL_191;
      }

      if (v246 >= 1.84467441e19)
      {
        goto LABEL_192;
      }

      [v492 setTimestamp_];
      v248 = [v484 baselineModificationData];
      [v507 decayRate];
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v140);
      v249 = v493;
      v250 = (v499)(v140, 1, v493);
      if (v250 == 1)
      {
        sub_1C6D5B4AC(v140, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v251 = 0;
        v252 = 0;
      }

      else
      {
        v253 = v140 + v249[5];
        v254 = v140;
        v255 = v408;
        sub_1C6D5B3CC(v253, v408, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v474)(v255, 1, v482) == 1)
        {
          sub_1C6D5B4AC(v255, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v140, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v251 = 0;
          v252 = 1;
        }

        else
        {
          v256 = v255;
          v257 = v400;
          sub_1C6D5B51C(v256, v400, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v258 = v257;
          v259 = v456;
          sub_1C6D5B51C(v258, v456, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v260 = v457;
          sub_1C6D5B51C(v259, v457, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v261 = *(v260 + *(v458 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
          swift_beginAccess();
          v251 = *v261;
          v252 = *(v261 + 8);
          v262 = v260;
          v247 = v492;
          sub_1C6D5B44C(v262, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          sub_1C6D5B44C(v254, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v66 = v500;
        v213 = v491;
      }

      v511 = v251;
      LOBYTE(v512) = v252;
      BYTE1(v512) = v250 == 1;
      v263 = v415;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v415);
      v264 = v493;
      v265 = (v499)(v263, 1, v493);
      if (v265 == 1)
      {
        sub_1C6D5B4AC(v263, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v139 = 0;
        v140 = 0;
      }

      else
      {
        v266 = &v263[v264[5]];
        v267 = v409;
        sub_1C6D5B3CC(v266, v409, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
        if ((*v474)(v267, 1, v482) == 1)
        {
          sub_1C6D5B4AC(v267, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          sub_1C6D5B44C(v263, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v139 = 0;
          v140 = 1;
        }

        else
        {
          v268 = v263;
          v269 = v267;
          v270 = v401;
          sub_1C6D5B51C(v269, v401, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v271 = v270;
          v272 = v456;
          sub_1C6D5B51C(v271, v456, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v273 = v457;
          sub_1C6D5B51C(v272, v457, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v274 = *(v273 + *(v458 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
          swift_beginAccess();
          v139 = *v274;
          v140 = *(v274 + 8);
          sub_1C6D5B44C(v273, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          v275 = v268;
          v213 = v491;
          v66 = v500;
          sub_1C6D5B44C(v275, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        }

        v247 = v492;
      }

      v509 = v139;
      LOBYTE(v510) = v140;
      BYTE1(v510) = v265 == 1;
      sub_1C6CE69E0(v506, &v511, &v509);
      [v248 clicks];
      if (v276 > 0.0 || ([v248 impressions], v277 > 0.0))
      {
        v140 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        [v247 impressions];
        [v248 impressions];
        [v248 impressions];
        sub_1C6D798D0();
        v279 = v278;
        [v247 clicks];
        [v248 clicks];
        [v248 impressions];
        sub_1C6D798D0();
        [v247 setClicks_];
        [v247 setImpressions_];
        v280 = [v247 eventCount];
        if (v280 == -1)
        {
          goto LABEL_193;
        }

        [v247 setEventCount_];
      }

      swift_beginAccess();
      v281 = *(v171 + 16);
      if (v281)
      {
        result = [v247 featureKey];
        if (!result)
        {
          goto LABEL_202;
        }

        v140 = result;
        v139 = sub_1C6D795A0();
        v283 = v282;

        if (*(v281 + 16))
        {
          v140 = sub_1C6B5DEA8(v139, v283);
          v139 = v284;

          v285 = MEMORY[0x1E69E7CC0];
          if (v139)
          {
            v285 = *(*(v281 + 56) + 8 * v140);
          }
        }

        else
        {

          v285 = MEMORY[0x1E69E7CC0];
        }

        swift_endAccess();
        sub_1C6D5B364(v66, v422, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v285 = sub_1C6B666CC(0, v285[2] + 1, 1, v285);
        }

        v286 = v285;
        v287 = v285[2];
        v427 = v286;
        v288 = v286[3];
        if (v287 >= v288 >> 1)
        {
          v427 = sub_1C6B666CC((v288 > 1), v287 + 1, 1, v427);
        }

        v289 = v427;
        v427[2] = v287 + 1;
        sub_1C6D5B51C(v422, v289 + v460 + v287 * v483, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      }

      else
      {
        swift_endAccess();
        v427 = 0;
      }

      v290 = v486;
      swift_beginAccess();
      if (*(v171 + 16))
      {
        result = [v247 featureKey];
        if (!result)
        {
          goto LABEL_203;
        }

        v291 = result;
        v292 = sub_1C6D795A0();
        v140 = v293;

        sub_1C6BC24C0(v294, v292, v140);
        v290 = v486;
      }

      swift_endAccess();
      v173 = v66;
      v66 = v493;
      v472 = v485[2];
      if (!v472)
      {
LABEL_179:

        sub_1C6D5B44C(v506, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        sub_1C6D5B44C(v173, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

        goto LABEL_180;
      }

      v295 = 0;
      v471 = v485 + ((*(v477 + 80) + 32) & ~*(v477 + 80));
      while (1)
      {
        if (v295 >= v485[2])
        {
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        v296 = *(v477 + 72);
        v508 = v295;
        v501 = *(v477 + 16);
        (v501)(v149, &v471[v296 * v295], v213);
        v297 = sub_1C6D4F0A0(v149, v476, v475, v507);
        v298 = v173 + v473;
        v299 = v489;
        sub_1C6D5B3CC(v298, v489, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        v300 = v479;
        if (v479(v299, 1, v290) == 1)
        {
          v140 = v468;
          sub_1C6D78990();
          v301 = v300(v299, 1, v290);
          v302 = v470;
          v303 = v469;
          v149 = v506;
          v139 = v499;
          if (v301 != 1)
          {
            sub_1C6D5B4AC(v489, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          }
        }

        else
        {
          v140 = v468;
          (*v455)(v468, v299, v290);
          v302 = v470;
          v303 = v469;
          v149 = v506;
          v139 = v499;
        }

        sub_1C6D78970();
        v305 = v304;
        v478(v140, v290);
        v306 = v305 * 1000.0;
        if (COERCE__INT64(fabs(v305 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_183;
        }

        if (v306 <= -1.0)
        {
          goto LABEL_184;
        }

        if (v306 >= 1.84467441e19)
        {
          goto LABEL_185;
        }

        [v297 setTimestamp_];
        v307 = [v484 aggregateModificationData];
        [v507 decayRate];
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v303);
        v308 = (v139)(v303, 1, v66);
        if (v308 == 1)
        {
          sub_1C6D5B4AC(v303, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v495 = 0;
          v494 = 0;
        }

        else
        {
          v309 = v451;
          sub_1C6D5B3CC(&v303[v66[5]], v451, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v474)(v309, 1, v482) == 1)
          {
            sub_1C6D5B4AC(v309, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v303, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v495 = 0;
            v494 = 1;
          }

          else
          {
            v310 = v437;
            sub_1C6D5B51C(v309, v437, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v311 = v310;
            v312 = v456;
            sub_1C6D5B51C(v311, v456, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v313 = v312;
            v314 = v457;
            sub_1C6D5B51C(v313, v457, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v315 = *(v314 + *(v458 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
            swift_beginAccess();
            v495 = *v315;
            v494 = *(v315 + 8);
            sub_1C6D5B44C(v314, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v303, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }

          v139 = v499;
        }

        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v302);
        v316 = (v139)(v302, 1, v66);
        if (v316 == 1)
        {
          sub_1C6D5B4AC(v302, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v317 = 0;
          v318 = 0;
        }

        else
        {
          v319 = v452;
          sub_1C6D5B3CC(&v302[v66[5]], v452, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          if ((*v474)(v319, 1, v482) == 1)
          {
            sub_1C6D5B4AC(v319, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            sub_1C6D5B44C(v302, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
            v317 = 0;
            v318 = 1;
          }

          else
          {
            v320 = v438;
            sub_1C6D5B51C(v319, v438, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v321 = v320;
            v322 = v456;
            sub_1C6D5B51C(v321, v456, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
            v323 = v322;
            v324 = v457;
            sub_1C6D5B51C(v323, v457, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            v325 = *(v324 + *(v458 + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
            swift_beginAccess();
            v317 = *v325;
            v318 = *(v325 + 8);
            sub_1C6D5B44C(v324, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
            sub_1C6D5B44C(v302, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          }
        }

        ++v508;
        v139 = [v507 biases];
        sub_1C6D5B364(v506, v503, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        swift_getEnumCaseMultiPayload();
        sub_1C6D5B44C(v503, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v326 = sub_1C6D79570();

        if (v308 == 1 || (v511 = v495, LOBYTE(v512) = v494, Com_Apple_News_Personalization_FeedType.string.getter(), !v327))
        {
          v140 = 0;
          if (v316 == 1)
          {
LABEL_131:
            v329 = 0;
            v149 = v490;
            goto LABEL_133;
          }
        }

        else
        {
          v140 = sub_1C6D79570();

          if (v316 == 1)
          {
            goto LABEL_131;
          }
        }

        v511 = v317;
        LOBYTE(v512) = v318;
        Com_Apple_News_Personalization_GroupType.string.getter();
        v149 = v490;
        if (v328)
        {
          v329 = sub_1C6D79570();
        }

        else
        {
          v329 = 0;
        }

LABEL_133:
        v330 = v501;
        [v139 biasForEventType:v326 feedType:v140 groupType:v329];

        v331 = v504;
        v213 = v491;
        (v330)(v504, v149, v491);
        v332 = (*v467)(v331, v213);
        if (v332 == v466 || v332 == v465 || v332 == v464 || v332 == v462 || v332 != v461)
        {
          v496(v504, v213);
          v66 = 0;
          v171 = v487;
        }

        else
        {
          v333 = v149;
          v334 = v504;
          v335 = v213;
          (*v448)(v504, v213);
          v139 = *(v334 + 2);
          v140 = *(v334 + 3);

          v336 = v449;
          swift_beginAccess();
          v337 = *(v336 + 16);
          v338 = *(v337 + 16);

          if (v338 && (v339 = sub_1C6B5DEA8(v139, v140), (v340 & 1) != 0))
          {
            v66 = *(*(v337 + 56) + 8 * v339);
            v341 = v66;
          }

          else
          {
            v66 = 0;
          }

          v342 = v487;
          v213 = v335;
          swift_endAccess();
          swift_bridgeObjectRelease_n();
          v149 = v333;
          v171 = v342;
        }

        [v307 clicks];
        if (v343 > 0.0 || ([v307 impressions], v344 > 0.0))
        {
          [v297 impressions];
          [v307 impressions];
          [v307 impressions];
          sub_1C6D798D0();
          v346 = v345;
          [v297 clicks];
          [v307 clicks];
          [v307 impressions];
          sub_1C6D798D0();
          v348 = v347;
          if (v66)
          {
            v349 = v66;
            if ([v349 capAtBaseline])
            {
              v501 = v349;
              v350 = sub_1C6D79A90();
              v351 = swift_allocObject();
              *(v351 + 16) = v440;
              v511 = 0;
              v512 = 0xE000000000000000;
              v352 = [v297 featureKey];
              if (v352)
              {
                v353 = v352;
                v354 = sub_1C6D795A0();
                v356 = v355;
              }

              else
              {
                v354 = 0;
                v356 = 0;
              }

              v509 = v354;
              v510 = v356;
              v357 = MEMORY[0x1E69E6158];
              sub_1C6D5D150(0, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              v358 = sub_1C6D795F0();
              MEMORY[0x1CCA55B00](v358);

              v359 = v511;
              v360 = v512;
              v361 = v459;
              *(v351 + 56) = v357;
              *(v351 + 64) = v361;
              *(v351 + 32) = v359;
              *(v351 + 40) = v360;
              sub_1C6D78D30("Found capAtBaseline set for aggregate %{public}@", 48, 2, &dword_1C6B09000, v450, v350, v351);

              v362 = 0.0;
              if (v346 > 0.0)
              {
                v363 = v348 / v346;
                if (v348 / v346 <= 0.0)
                {
                  v363 = 0.0;
                }

                v362 = 1.0;
                if (v363 <= 1.0)
                {
                  v362 = v363;
                }
              }

              [v492 ctr];
              v140 = v491;
              v149 = v490;
              if (v364 >= v362)
              {
                LODWORD(v495) = sub_1C6D79A90();
                v139 = swift_allocObject();
                *(v139 + 16) = v435;
                v511 = 0;
                v512 = 0xE000000000000000;
                sub_1C6D79910();
                v373 = v511;
                v374 = v512;
                v375 = MEMORY[0x1E69E6158];
                v376 = v459;
                *(v139 + 56) = MEMORY[0x1E69E6158];
                *(v139 + 64) = v376;
                *(v139 + 32) = v373;
                *(v139 + 40) = v374;
                v511 = 0;
                v512 = 0xE000000000000000;
                sub_1C6D79910();
                v377 = v511;
                v378 = v512;
                *(v139 + 96) = v375;
                *(v139 + 104) = v376;
                *(v139 + 72) = v377;
                *(v139 + 80) = v378;
                v511 = 0;
                v512 = 0xE000000000000000;
                sub_1C6D79910();
                v379 = v511;
                v380 = v512;
                *(v139 + 136) = v375;
                *(v139 + 144) = v376;
                *(v139 + 112) = v379;
                *(v139 + 120) = v380;
                sub_1C6D78D30("Found aggregateCTR %{public}@ did not exceeded baseline CTR %{public}@, leaving aggregate uncapped with new clicks %{public}@", 125, 2, &dword_1C6B09000, v450, v495, v139);
              }

              else
              {
                v348 = v346 * v364;
                LODWORD(v495) = sub_1C6D79A90();
                v365 = swift_allocObject();
                *(v365 + 16) = v435;
                v511 = 0;
                v512 = 0xE000000000000000;
                sub_1C6D79910();
                v366 = v511;
                v367 = v512;
                v139 = MEMORY[0x1E69E6158];
                v368 = v459;
                *(v365 + 56) = MEMORY[0x1E69E6158];
                *(v365 + 64) = v368;
                *(v365 + 32) = v366;
                *(v365 + 40) = v367;
                v511 = 0;
                v512 = 0xE000000000000000;
                sub_1C6D79910();
                v369 = v511;
                v370 = v512;
                *(v365 + 96) = v139;
                *(v365 + 104) = v368;
                *(v365 + 72) = v369;
                *(v365 + 80) = v370;
                v511 = 0;
                v512 = 0xE000000000000000;
                sub_1C6D79910();
                v371 = v511;
                v372 = v512;
                *(v365 + 136) = v139;
                *(v365 + 144) = v368;
                *(v365 + 112) = v371;
                *(v365 + 120) = v372;
                sub_1C6D78D30("Found aggregateCTR %{public}@ exceeded baseline CTR %{public}@, capping aggregate with new clicks %{public}@", 108, 2, &dword_1C6B09000, v450, v495, v365);
              }

              v171 = v487;
            }

            else
            {
              v140 = v213;
            }
          }

          else
          {
            v140 = v213;
          }

          [v297 setClicks_];
          [v297 setImpressions_];
          v381 = [v297 eventCount];
          if (v381 == -1)
          {
            goto LABEL_186;
          }

          [v297 setEventCount_];
          v213 = v140;
        }

        swift_beginAccess();
        v382 = *(v171 + 16);
        if (v382)
        {
          result = [v297 featureKey];
          v66 = v493;
          if (!result)
          {
            goto LABEL_201;
          }

          v383 = result;
          v139 = sub_1C6D795A0();
          v385 = v384;

          if (*(v382 + 16))
          {
            v386 = sub_1C6B5DEA8(v139, v385);
            v139 = v387;

            v388 = MEMORY[0x1E69E7CC0];
            if (v139)
            {
              v388 = *(*(v382 + 56) + 8 * v386);
            }
          }

          else
          {

            v388 = MEMORY[0x1E69E7CC0];
          }

          swift_endAccess();
          sub_1C6D5B364(v500, v488, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v388 = sub_1C6B666CC(0, v388[2] + 1, 1, v388);
          }

          v140 = v388[2];
          v389 = v388[3];
          if (v140 >= v389 >> 1)
          {
            v388 = sub_1C6B666CC((v389 > 1), v140 + 1, 1, v388);
          }

          v388[2] = v140 + 1;
          sub_1C6D5B51C(v488, v388 + v460 + v140 * v483, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        }

        else
        {
          swift_endAccess();
          v66 = v493;
        }

        swift_beginAccess();
        if (*(v171 + 16))
        {
          result = [v297 featureKey];
          if (!result)
          {
            goto LABEL_200;
          }

          v390 = result;
          v140 = sub_1C6D795A0();
          v139 = v391;

          sub_1C6BC24C0(v392, v140, v139);
        }

        swift_endAccess();

        v496(v149, v213);

        v295 = v508;
        v290 = v486;
        v247 = v492;
        v173 = v500;
        if (v472 == v508)
        {
          goto LABEL_179;
        }
      }
    }

LABEL_32:
    sub_1C6D4F618(v196);
    goto LABEL_33;
  }

  if (v433 != 1)
  {
    goto LABEL_31;
  }

  v188 = v424;
  sub_1C6D43E04(1, v428, v424);
  v189 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  result = (*(*(v189 - 8) + 48))(v188, 2, v189);
  if (result)
  {
    v185 = v441;
    if (result != 1)
    {
      v190 = v402;
      v191 = *(v402 + 16);
      v151 = __OFADD__(v191, 1);
      v192 = v191 + 1;
      if (v151)
      {
        goto LABEL_197;
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  v197 = *(v413 + 16);
  v151 = __OFADD__(v197, 1);
  v198 = v197 + 1;
  if (!v151)
  {
    *(v413 + 16) = v198;
    sub_1C6D5B44C(v424, _s23EmbeddingValidityResultOMa);
    v185 = v441;
    goto LABEL_31;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
  return result;
}

uint64_t sub_1C6D5A574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1839C(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  v13 = a2;
  v14 = a3;
  sub_1C6D5B1C4(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6D5D000(v9, a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
}

void sub_1C6D5A71C(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v9 = v8;
  v85 = a7;
  v87 = a6;
  v88 = a5;
  v15 = sub_1C6D77050();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  if (a3)
  {
    v84 = a4;
    v86 = a8;
    a4 = a2;
    v89 = v21;
    v22 = [v21 featureKey];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1C6D795A0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_1C6D77030();
    v27 = sub_1C6D76FE0();
    v29 = v28;
    v31 = *(v16 + 8);
    v30 = (v16 + 8);
    v31(v20, v15);
    if (v26)
    {
      if (v24 == v27 && v26 == v29)
      {
        goto LABEL_27;
      }

      v33 = sub_1C6D7A130();

      v9 = v8;
      a2 = a4;
      a8 = v86;
      v21 = v89;
      a4 = v84;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    else
    {

      v9 = v8;
      a2 = a4;
      a8 = v86;
      v21 = v89;
      a4 = v84;
    }
  }

  v30 = &selRef_adSegmentsOutputName;
  v34 = [a4 legacyBridgeConfiguration];
  v20 = [v34 priorStatelessAggregatesWithLegacyAggregates];

  if (v20)
  {
    v89 = v21;
    v35 = [v21 featureKey];
    if (!v35)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v36 = v35;
    v21 = sub_1C6D795A0();
    v38 = v37;

    v20 = v88;
    if (!v88[2])
    {
      goto LABEL_32;
    }

    v39 = v21;
    v21 = v88;
    v20 = sub_1C6B5DEA8(v39, v38);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      goto LABEL_33;
    }

    v30 = *(v21[7] + 8 * v20);
    v42 = [a4 &selRef_fetchAggregateMapForPersonalizingItem_completion_ + 3];
    v43 = [v42 allowAllLegacyAggregatesToActAsPriors];

    v20 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    if ((v43 & 1) != 0 || (v44 = -[SEL eventCount](v30, sel_eventCount), [v89 eventCount] < v44))
    {
      v86 = a8;
      v88 = v9;
      if (__OFADD__(*v85, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      ++*v85;
      v21 = v89;
      [v89 clicks];
      v20 = v30;
      [(SEL *)v30 clicks];
      [(SEL *)v30 impressions];
      v45 = [a4 legacyBridgeConfiguration];
      [v45 legacyDecayRate];

      [v21 impressions];
      [a4 decayRate];
      v46 = [a4 legacyBridgeConfiguration];
      [v46 avoidDoubleCountingWhenPrioringWithLegacyAggregates];
      a8 = a4;

      v47 = [a4 legacyBridgeConfiguration];
      [v47 legacyMultiplier];

      v48 = [a4 legacyBridgeConfiguration];
      [v48 legacyMaxLinearImpressionCount];

      v49 = [a4 legacyBridgeConfiguration];
      [v49 statelessMaxLinearImpressionCount];

      sub_1C6D798E0();
      [v21 setClicks_];
      [v21 impressions];
      [(SEL *)v30 impressions];
      [(SEL *)v30 impressions];
      v50 = [a4 legacyBridgeConfiguration];
      [v50 legacyDecayRate];

      [v21 impressions];
      [a4 decayRate];
      v51 = [a4 legacyBridgeConfiguration];
      a4 = [v51 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

      v52 = [a8 legacyBridgeConfiguration];
      [v52 legacyMultiplier];

      v53 = [a8 legacyBridgeConfiguration];
      [v53 legacyMaxLinearImpressionCount];

      v54 = [a8 legacyBridgeConfiguration];
      [v54 statelessMaxLinearImpressionCount];

      sub_1C6D798E0();
      [v21 setImpressions_];
      v55 = [a8 legacyBridgeConfiguration];
      v56 = [v55 avoidDoubleCountingWhenPrioringWithLegacyAggregates];

      v30 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
      v57 = [v20 eventCount];
      v58 = [v21 eventCount];
      if (v56)
      {
        v43 = v86;
        if (v58 < v57)
        {
          v59 = [v20 eventCount];
          v60 = [v89 eventCount];
          v61 = v59 >= v60;
          v62 = v59 - v60;
          if (!v61)
          {
            __break(1u);
            goto LABEL_24;
          }

LABEL_45:
          v75 = [v89 v30[83]];
          v71 = &v75[v62];
          if (!__CFADD__(v75, v62))
          {
            goto LABEL_46;
          }

          goto LABEL_53;
        }

LABEL_44:
        v62 = 0;
        goto LABEL_45;
      }

LABEL_37:
      v71 = &v57[v58];
      v43 = v86;
      if (!__CFADD__(v58, v57))
      {
LABEL_46:
        v76 = v89;
        [v89 setEventCount_];

        *v43 = v76;
        v77 = *a2;
        v78 = v76;
        if (!v77)
        {
          return;
        }

        v58 = [v78 featureKey];
        if (v58)
        {
          goto LABEL_48;
        }

LABEL_56:
        __break(1u);
        return;
      }

      __break(1u);
    }

    if (__OFADD__(*v87, 1))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ++*v87;
    v72 = v89;
    *a8 = v89;
    v73 = *a2;
    v74 = v72;
    if (!v73)
    {
      return;
    }

    v58 = [v74 featureKey];
    if (v58)
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_24:
  *a8 = v21;
  v63 = *a2;
  v64 = v21;
  if (!v63)
  {
    return;
  }

  v58 = [v64 featureKey];
  if (v58)
  {
LABEL_48:
    v79 = v58;
    v80 = sub_1C6D795A0();
    v82 = v81;

    sub_1C6D39EFC(v80, v82);

    return;
  }

  __break(1u);
LABEL_27:

  a2 = a4;
  a8 = v86;
  v21 = v89;
LABEL_28:
  if (qword_1EDCE7498 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v65 = qword_1EDCE74A0;
    v66 = sub_1C6D79AC0();
    sub_1C6D78D30("Ignoring prioring baseline", 26, 2, &dword_1C6B09000, v65, v66, MEMORY[0x1E69E7CC0]);
    *a8 = v21;
    v67 = *a2;
    v68 = v21;
    if (!v67)
    {
      break;
    }

    v58 = [v68 featureKey];
    if (v58)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_32:

LABEL_33:
    if (!__OFADD__(*v87, 1))
    {
      ++*v87;
      v69 = v89;
      *a8 = v89;
      v57 = *a2;
      v70 = v69;
      if (!v57)
      {
        return;
      }

      v58 = [v70 featureKey];
      if (!v58)
      {
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_51:
    swift_once();
  }
}

void *UserEventHistoryAggregateStoreFactory.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  sub_1C6D5B4AC(v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_cachedAggregateStoreURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_headlineService));

  return v0;
}

uint64_t UserEventHistoryAggregateStoreFactory.__deallocating_deinit()
{
  UserEventHistoryAggregateStoreFactory.deinit();

  return swift_deallocClassInstance();
}

void sub_1C6D5B10C()
{
  if (*(*v1 + OBJC_IVAR____TtC19NewsPersonalization37UserEventHistoryAggregateStoreFactory_lazyStore))
  {

    sub_1C6D781A0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C6D5B1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D5B20C(uint64_t a1)
{
  if (!qword_1EDCE7A90)
  {
    sub_1C6D5D150(255, &qword_1EDCE6DA0, &type metadata for UserEventHistoryAggregateStore, MEMORY[0x1E69E6720]);
    v1 = sub_1C6D781C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7A90);
    }
  }
}

uint64_t sub_1C6D5B288@<X0>(uint64_t *a1@<X8>)
{
  swift_unownedRetainStrong();
  sub_1C6D45308(a1);
}

uint64_t sub_1C6D5B364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D5B3CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1839C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D5B44C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D5B4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B1839C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D5B51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D5B5E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6D7A0C0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6B3C6B0(0);
        v5 = sub_1C6D797F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C6D5B81C(v7, v8, a1, v4);
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
    return sub_1C6D5B6DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6D5B6DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 24 * a3);
    v6 = result - a3;
LABEL_5:
    v19 = a3;
    v7 = *(v4 + 24 * a3 + 16);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v8 = *(v5 - 1);

      v9 = v7;

      v10 = v8;
      v11 = [v9 eventCount];
      v12 = [v10 eventCount];

      if (v12 >= v11)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 3;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *v5;
      v14 = v5[1];
      v7 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v14;
      *(v5 - 1) = v7;
      *(v5 - 3) = v13;
      v5 -= 3;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C6D5B81C(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v108 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = v10;
    v10 = *v108;
    if (!*v108)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1C6C73C90(v5);
      v5 = result;
    }

    v96 = *(v5 + 16);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v96 - 1);
        v98 = *(v5 + 16 * v96);
        v99 = *(v5 + 16 * (v96 - 1) + 40);
        sub_1C6D5BF60((v97 + 24 * v98), (v97 + 24 * *(v5 + 16 * (v96 - 1) + 32)), v97 + 24 * v99, v10);
        if (v6)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C6C73C90(v5);
        }

        if (v96 - 2 >= *(v5 + 16))
        {
          goto LABEL_115;
        }

        v100 = (v5 + 16 * v96);
        *v100 = v98;
        v100[1] = v99;
        result = sub_1C6C73C04(v7);
        v96 = *(v5 + 16);
        v7 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v104 = v10;
      v106 = v6;
      v13 = *(*v7 + 24 * v12 + 16);
      v110 = 24 * v11;
      v14 = *v7 + 24 * v11;
      v15 = *(v14 + 16);

      v16 = v13;

      v17 = v15;
      v115 = [v16 eventCount];
      v113 = [v17 eventCount];

      v102 = v11;
      v18 = v11 + 2;
      v5 = v14 + 64;
      v117 = v8;
      while (v8 != v18)
      {
        v19 = *v5;
        v20 = *(v5 - 24);

        v21 = v19;

        v22 = v20;
        v23 = [v21 eventCount];
        v24 = [v22 eventCount];

        v8 = v117;
        ++v18;
        v5 += 24;
        if (v113 < v115 == v24 >= v23)
        {
          v8 = v18 - 1;
          break;
        }
      }

      v10 = v104;
      v6 = v106;
      v7 = a3;
      v25 = v110;
      v11 = v102;
      if (v113 < v115)
      {
        if (v8 < v102)
        {
          goto LABEL_118;
        }

        if (v102 < v8)
        {
          v26 = 0;
          v27 = 24 * v8;
          v28 = v102;
          do
          {
            if (v28 != v8 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = v34 + v25;
              v30 = v34 + v27;
              v31 = *v29;
              v32 = *(v29 + 8);
              v33 = *(v30 - 24);
              *(v29 + 16) = *(v30 - 8);
              *v29 = v33;
              *(v30 - 24) = v31;
              *(v30 - 16) = v32;
            }

            ++v28;
            --v26;
            v27 -= 24;
            v25 += 24;
          }

          while (v28 < v8 + v26);
        }
      }
    }

    v35 = v7[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v35)
        {
          v36 = v7[1];
        }

        else
        {
          v36 = v11 + a4;
        }

        if (v36 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v36)
        {
          break;
        }
      }
    }

    v37 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_1C6B657D0((v38 > 1), v39 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v11;
    *(v41 + 5) = v37;
    v42 = *v108;
    if (!*v108)
    {
      goto LABEL_126;
    }

    v111 = v37;
    if (v39)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v10 + 4);
          v44 = *(v10 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_48:
          if (v46)
          {
            goto LABEL_105;
          }

          v59 = &v10[16 * v40];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_108;
          }

          v65 = &v10[16 * v5 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_112;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v69 = &v10[16 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_62:
        if (v64)
        {
          goto LABEL_107;
        }

        v72 = &v10[16 * v5];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_69:
        v80 = v5 - 1;
        if (v5 - 1 >= v40)
        {
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v81 = *&v10[16 * v80 + 32];
        v82 = *&v10[16 * v5 + 40];
        sub_1C6D5BF60((*v7 + 24 * v81), (*v7 + 24 * *&v10[16 * v5 + 32]), *v7 + 24 * v82, v42);
        if (v6)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C6C73C90(v10);
        }

        if (v80 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v83 = &v10[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1C6C73C04(v5);
        v40 = *(v10 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v10[16 * v40 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_103;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_104;
      }

      v54 = &v10[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_106;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_109;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v5 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v111;
    if (v111 >= v8)
    {
      goto LABEL_89;
    }
  }

  v105 = v10;
  v107 = v6;
  v84 = *v7;
  v85 = (*v7 + 24 * v8);
  v103 = v11;
  v86 = v11 - v8;
  v112 = v36;
LABEL_80:
  v116 = v85;
  v118 = v8;
  v87 = *(v84 + 24 * v8 + 16);
  v114 = v86;
  v88 = v86;
  while (1)
  {
    v89 = *(v85 - 1);

    v90 = v87;

    v91 = v89;
    v92 = [v90 eventCount];
    v5 = [v91 eventCount];

    if (v5 >= v92)
    {
LABEL_79:
      v8 = v118 + 1;
      v85 = v116 + 3;
      v37 = v112;
      v86 = v114 - 1;
      if (v118 + 1 != v112)
      {
        goto LABEL_80;
      }

      v10 = v105;
      v6 = v107;
      v7 = a3;
      v11 = v103;
      if (v112 < v103)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v84)
    {
      break;
    }

    v93 = *v85;
    v94 = v85[1];
    v87 = v85[2];
    *v85 = *(v85 - 3);
    v85[2] = *(v85 - 1);
    *(v85 - 2) = v94;
    *(v85 - 1) = v87;
    *(v85 - 3) = v93;
    v85 -= 3;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1C6D5BF60(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = (__src - __dst) / 24;
  v8 = a3 - __src;
  v9 = (a3 - __src) / 24;
  if (v7 >= v9)
  {
    v23 = __src;
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      v24 = a4;
      memmove(a4, __src, 24 * v9);
      a4 = v24;
    }

    v12 = &a4[24 * v9];
    v11 = a4;
    if (v8 >= 24 && v23 > v5)
    {
      v44 = v5;
      v41 = a4;
LABEL_23:
      v43 = v23;
      v25 = v4 - 24;
      do
      {
        v26 = v25;
        v27 = (v25 + 24);
        v28 = *(v12 - 1);
        v29 = *(v43 - 1);
        v30 = v12;

        v31 = v28;

        v32 = v29;
        v33 = [v31 eventCount];
        v34 = [v32 eventCount];

        if (v34 < v33)
        {
          v37 = v43 - 24;
          if (v27 != v43)
          {
            v38 = *v37;
            *(v26 + 16) = *(v43 - 1);
            *v26 = v38;
          }

          v11 = v41;
          v12 = v30;
          if (v30 <= v41 || (v23 = v43 - 24, v4 = v26, v37 <= v44))
          {
            v23 = v43 - 24;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v35 = v30 - 24;
        if (v27 != v30)
        {
          v36 = *v35;
          *(v26 + 16) = *(v30 - 1);
          *v26 = v36;
        }

        v25 = v26 - 24;
        v12 = v35;
        v11 = v41;
      }

      while (v35 > v41);
      v12 = v35;
      v23 = v43;
    }
  }

  else
  {
    v11 = a4;
    if (a4 != __dst || &__dst[24 * v7] <= a4)
    {
      memmove(a4, __dst, 24 * v7);
    }

    v12 = &v11[24 * v7];
    if (v6 >= 24 && __src < v4)
    {
      v13 = __src;
      v42 = v12;
      while (1)
      {
        v14 = *(v13 + 2);
        v15 = *(v11 + 2);

        v16 = v14;

        v17 = v15;
        v18 = [v16 eventCount];
        v19 = [v17 eventCount];

        if (v19 >= v18)
        {
          break;
        }

        v20 = v13;
        v21 = v5 == v13;
        v13 += 24;
        if (!v21)
        {
          goto LABEL_13;
        }

LABEL_14:
        v5 += 24;
        v12 = v42;
        if (v11 >= v42 || v13 >= v4)
        {
          goto LABEL_16;
        }
      }

      v20 = v11;
      v21 = v5 == v11;
      v11 += 24;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      *(v5 + 2) = *(v20 + 2);
      *v5 = v22;
      goto LABEL_14;
    }

LABEL_16:
    v23 = v5;
  }

LABEL_34:
  v39 = (v12 - v11) / 24;
  if (v23 != v11 || v23 >= &v11[24 * v39])
  {
    memmove(v23, v11, 24 * v39);
  }

  return 1;
}

unint64_t *sub_1C6D5C2C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C6D5CC00(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1C6D5C360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C6B75B9C(0);
  result = sub_1C6D79F20();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x1CCA56710](*(v9 + 40), v17, 4);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 4 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6D5C55C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C6B61548(0, &unk_1EDCEA460, &qword_1EDCEA4D0, 0x1E69B6EE8);
  result = sub_1C6D79F20();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1C6D7A260();

    v33 = v21;
    sub_1C6D79610();
    result = sub_1C6D7A2B0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1C6D5C7A8()
{
  result = qword_1EDCE0628;
  if (!qword_1EDCE0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0628);
  }

  return result;
}

void sub_1C6D5C81C(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  for (i = (a1 + 48); ; i += 3)
  {
    v26 = *(i - 2);
    v27 = *(i - 1);
    v28 = *i;
    v29 = *v4;

    v30 = v28;
    v31 = sub_1C6B5DEA8(v26, v27);
    v33 = v29[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      break;
    }

    v37 = v32;
    if (v29[3] < v36)
    {
      sub_1C6B728DC(v36, a2 & 1);
      v31 = sub_1C6B5DEA8(v26, v27);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      v39 = *v4;
      if (v37)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (a2)
    {
      goto LABEL_12;
    }

    v43 = v3;
    v44 = v30;
    v45 = v31;
    sub_1C6B7521C();
    v31 = v45;
    v30 = v44;
    v3 = v43;
    v39 = *v4;
    if (v37)
    {
LABEL_3:
      v51 = v3;
      v47 = v30;
      v52 = v31;
      v7 = qword_1EDCE7498;
      v8 = *(v39[7] + 8 * v31);
      if (v7 != -1)
      {
        swift_once();
      }

      v50 = qword_1EDCE74A0;
      v49 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C6D807C0;
      v48 = v8;
      v10 = [v8 topicID];
      v11 = sub_1C6D795A0();
      v13 = v12;

      v14 = MEMORY[0x1E69E6158];
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1C6B2064C();
      *(v9 + 64) = v15;
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v16 = [v8 description];
      v17 = sub_1C6D795A0();
      v19 = v18;

      *(v9 + 96) = v14;
      *(v9 + 104) = v15;
      *(v9 + 72) = v17;
      *(v9 + 80) = v19;
      v20 = [v47 description];
      v21 = sub_1C6D795A0();
      v23 = v22;

      *(v9 + 136) = MEMORY[0x1E69E6158];
      *(v9 + 144) = v15;
      *(v9 + 112) = v21;
      *(v9 + 120) = v23;
      sub_1C6D78D30("Found duplicate topic configs for topicID %{public}@. Config 1: %{public}@, Config 2: %{public}@", 96, 2, &dword_1C6B09000, v50, v49, v9);

      v24 = v39[7];
      v25 = *(v24 + 8 * v52);
      *(v24 + 8 * v52) = v48;

      v4 = a3;
      v3 = v51;
      goto LABEL_6;
    }

LABEL_13:
    v39[(v31 >> 6) + 8] |= 1 << v31;
    v40 = (v39[6] + 16 * v31);
    *v40 = v26;
    v40[1] = v27;
    *(v39[7] + 8 * v31) = v30;
    v41 = v39[2];
    v35 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v35)
    {
      goto LABEL_19;
    }

    v39[2] = v42;
LABEL_6:
    a2 = 1;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1C6D7A1C0();
  __break(1u);
}

void sub_1C6D5CC00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v28 = v14;
      v18 = *(*(a3 + 56) + 8 * v14);
      sub_1C6D7A260();

      v31 = v18;
      sub_1C6D79610();
      v19 = sub_1C6D7A2B0();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(a4 + 48) + 16 * v21);
          v24 = *v23 == v17 && v23[1] == v16;
          if (v24 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_26:
          sub_1C6D5C55C(a1, a2, v29, a3);
          return;
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_1C6D5CE1C(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1C6D5C2C4(v14, v7, a1, a2);
      MEMORY[0x1CCA57100](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1C6D5CC00((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_1C6D5D000(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1839C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1C6D5D150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL sub_1C6D5D1A8(void *a1)
{
  sub_1C6D75F50();
  v3 = *(v1 + 16);

  return sub_1C6D46D54(a1, v3);
}

uint64_t sub_1C6D5D21C(unint64_t *a1)
{
  v3 = *(sub_1C6D75F50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1C6D47040(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1C6D5D2C8()
{
  result = qword_1EDCE0160;
  if (!qword_1EDCE0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0160);
  }

  return result;
}

unint64_t sub_1C6D5D31C()
{
  result = qword_1EDCE0618;
  if (!qword_1EDCE0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0618);
  }

  return result;
}

uint64_t sub_1C6D5D3A8(uint64_t a1)
{
  v1 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1C6D5D404()
{
  result = qword_1EC1D9960[0];
  if (!qword_1EC1D9960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1D9960);
  }

  return result;
}

uint64_t sub_1C6D5D474(id *a1)
{
  v2 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v3 = objc_msgSend(v2, sel_notificationScoringServiceConfigurationJSONData)) != 0)
  {
    v4 = v3;
    v5 = sub_1C6D75E60();
    v7 = v6;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6D5D9C4();
    sub_1C6D75AF0();
    if (v1)
    {

      if (qword_1EC1D5A98 != -1)
      {
        swift_once();
      }

      v8 = qword_1EC1D85A0;
      v9 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C6D7E630;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1C6B2064C();
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      sub_1C6D78D30("Failed to decode notification scoring service configuration, returning default. Error=%{public}@", 96, 2, &dword_1C6B09000, v8, v9, v10, v1);

      v11 = MEMORY[0x1E69E7CC0];
      sub_1C6B61080(MEMORY[0x1E69E7CC0]);
      sub_1C6B5F1EC(v11);
      sub_1C6D5D974();
      swift_allocObject();
      v12 = sub_1C6D78300();
      sub_1C6B1C9F0(v5, v7);

      return v12;
    }

    else
    {

      if (qword_1EC1D5A98 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC1D85A0;
      sub_1C6B1D314(0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C6D7E630;
      sub_1C6D79E60();
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1C6B2064C();
      *(v18 + 32) = 0;
      *(v18 + 40) = 0xE000000000000000;
      v19 = sub_1C6D79AC0();
      sub_1C6D78D30("Resolved configuration %{public}@", 33, 2, &dword_1C6B09000, v17, v19, v18);

      sub_1C6D5D974();
      swift_allocObject();
      v20 = sub_1C6D78300();
      sub_1C6B1C9F0(v5, v7);
      return v20;
    }
  }

  else
  {
    if (qword_1EC1D5A98 != -1)
    {
      swift_once();
    }

    v14 = qword_1EC1D85A0;
    v15 = sub_1C6D79AC0();
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30("Didn't find notification scoring service configuration, returning default", 73, 2, &dword_1C6B09000, v14, v15, MEMORY[0x1E69E7CC0]);
    sub_1C6B61080(v16);
    sub_1C6B5F1EC(v16);
    sub_1C6D5D974();
    swift_allocObject();
    return sub_1C6D78300();
  }
}

uint64_t sub_1C6D5D8A4()
{
  sub_1C6C7F778();
  sub_1C6D783A0();
  v0 = sub_1C6D78210();
  v1 = sub_1C6D782A0();

  return v1;
}

void sub_1C6D5D974()
{
  if (!qword_1EC1D9978)
  {
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9978);
    }
  }
}

unint64_t sub_1C6D5D9C4()
{
  result = qword_1EC1D9980;
  if (!qword_1EC1D9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9980);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return sub_1C6D78A30();
}

uint64_t Com_Apple_News_Personalization_SessionArticle.legacy.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D603F8(v1 + *(v7 + 20), v6, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_1C6D602BC(v6, a1, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  sub_1C6D60388(v6, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D78A30();
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_1EDCE41F8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_1EDCE4200;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticle.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);

  return sub_1C6D5DDB0(a1, v3);
}

uint64_t sub_1C6D5DDB0(uint64_t a1, uint64_t a2)
{
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D5DE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D5F804(a1, v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v8 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D60388(a2 + v8, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D602BC(v7, a2 + v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  return (*(*(v9 - 8) + 56))(a2 + v8, 0, 1, v9);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.legacy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D60388(v1 + v3, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D602BC(a1, v1 + v3, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionArticle.legacy.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  *(v5 + 12) = v14;
  sub_1C6D603F8(v1 + v14, v9, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6D60388(v9, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D78A30();
    v17 = *(v10 + 20);
    if (qword_1EDCE41F8 != -1)
    {
      swift_once();
    }

    *(v13 + v17) = qword_1EDCE4200;
  }

  else
  {
    sub_1C6D602BC(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  return sub_1C6D5E2D8;
}

void sub_1C6D5E2D8(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = *(*a1 + 12);
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1C6D5F804((*a1)[3], v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D60388(v10 + v6, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D602BC(v7, v10 + v6, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    (*(v5 + 56))(v10 + v6, 0, 1, v4);
    sub_1C6D6025C(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    sub_1C6D60388(v10 + v6, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D602BC(v8, v10 + v6, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    (*(v5 + 56))(v10 + v6, 0, 1, v4);
  }

  free(v8);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL static Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C6D5F7A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1C6D5F804(a1, v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5F804(a2, v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v11 = *&v7[v10];
  v12 = *(v9 + v10);
  v14 = 0;
  if (v11 == v12 || (, , v13 = sub_1C6D2D7CC(v11, v12), , , v13))
  {
    sub_1C6D78A40();
    sub_1C6D5FE10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    if (sub_1C6D79560())
    {
      v14 = 1;
    }
  }

  sub_1C6D6025C(v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D6025C(v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  return v14;
}

uint64_t sub_1C6D5E730(uint64_t a1, uint64_t a2)
{
  sub_1C6D5F7A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1C6D5F804(a1, v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5F804(a2, &v7[v9], type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  LOBYTE(a2) = _s19NewsPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, &v7[v9]);
  sub_1C6D6025C(&v7[v9], type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D6025C(v7, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t sub_1C6D5E840()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5310);
  __swift_project_value_buffer(v0, qword_1EDCE5310);
  sub_1C6D60324(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "legacy";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionArticle._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5308 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6D5EB54(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D5EB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v49 = &v44 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - v22;
  sub_1C6D60324(0, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, v11);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v50 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v44 - v30;
  v47 = v5;
  v32 = *(v5 + 56);
  v51 = v4;
  v32(&v44 - v30, 1, 1, v4, v29);
  v33 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D603F8(v56 + v33, v15, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v44 = v17;
  v45 = v16;
  v34 = (*(v17 + 48))(v15, 1, v16);
  if (v34 == 1)
  {
    sub_1C6D60388(v15, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v35 = v51;
  }

  else
  {
    sub_1C6D602BC(v15, v23, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v36 = v48;
    sub_1C6D602BC(v23, v48, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D60388(v31, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v37 = v36;
    v38 = v49;
    sub_1C6D602BC(v37, v49, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D602BC(v38, v31, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v35 = v51;
    (v32)(v31, 0, 1, v51);
  }

  sub_1C6D5FE10(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v39 = v52;
  sub_1C6D78BB0();
  v40 = v50;
  if (v39)
  {
    return sub_1C6D60388(v31, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  sub_1C6D603F8(v31, v50, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  if ((*(v47 + 48))(v40, 1, v35) == 1)
  {
    sub_1C6D60388(v31, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    return sub_1C6D60388(v40, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    v42 = v46;
    sub_1C6D602BC(v40, v46, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    if (v34 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6D60388(v31, &qword_1EC1D99B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v43 = v56;
    sub_1C6D60388(v56 + v33, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D602BC(v42, v43 + v33, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    return (*(v44 + 56))(v43 + v33, 0, 1, v45);
  }
}

uint64_t Com_Apple_News_Personalization_SessionArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6D5F1F8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6D5F1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D603F8(a1 + *(v13 + 20), v8, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_1C6D60388(v8, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  }

  sub_1C6D602BC(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D5FE10(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D78CF0();
  return sub_1C6D6025C(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
}

uint64_t Com_Apple_News_Personalization_SessionArticle.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D5FE10(&qword_1EC1D9990, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D5F4C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_1C6D78A30();
}

uint64_t sub_1C6D5F590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D5FE10(&qword_1EC1D99A0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D5F60C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5308 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D5F6B4(uint64_t a1)
{
  v2 = sub_1C6D5FE10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D5F720(uint64_t a1, uint64_t a2)
{
  sub_1C6D5FE10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);

  return sub_1C6D78C20();
}

void sub_1C6D5F7A0(uint64_t a1)
{
  if (!qword_1EC1D9988)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9988);
    }
  }
}

uint64_t sub_1C6D5F804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_1C6D5F7A0(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v37 - v16;
  sub_1C6D601C8(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = v5;
  v38 = v13;
  v39 = v8;
  v40 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v23 = *(v40 + 20);
  v24 = *(v19 + 48);
  sub_1C6D603F8(a1 + v23, v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D603F8(a2 + v23, &v22[v24], &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v25 = *(v10 + 48);
  if (v25(v22, 1, v9) == 1)
  {
    if (v25(&v22[v24], 1, v9) == 1)
    {
      sub_1C6D60388(v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
LABEL_13:
      sub_1C6D78A40();
      sub_1C6D5FE10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v26 = sub_1C6D79560();
      return v26 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6D603F8(v22, v17, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v25(&v22[v24], 1, v9) == 1)
  {
    sub_1C6D6025C(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
LABEL_8:
    sub_1C6D6025C(v22, sub_1C6D601C8);
    goto LABEL_9;
  }

  v27 = &v22[v24];
  v28 = v38;
  sub_1C6D602BC(v27, v38, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v29 = v39;
  v30 = &v39[*(v37 + 48)];
  sub_1C6D5F804(v17, v39, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D5F804(v28, v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v31 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v32 = *(v29 + v31);
  v33 = *(v30 + v31);
  if (v32 == v33 || (, , v34 = sub_1C6D2D7CC(v32, v33), , , v34))
  {
    sub_1C6D78A40();
    sub_1C6D5FE10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v35 = sub_1C6D79560();
    sub_1C6D6025C(v28, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D6025C(v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v29, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D60388(v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if (v35)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C6D6025C(v28, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D6025C(v30, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v29, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6D6025C(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6D60388(v22, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  }

LABEL_9:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C6D5FE10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D5FFA0(uint64_t a1)
{
  sub_1C6D60324(319, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6D60064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C6B35080);
}

uint64_t sub_1C6D600BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C6B3513C);
}

uint64_t sub_1C6D60124(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1C6D601C8(uint64_t a1)
{
  if (!qword_1EC1D99A8)
  {
    sub_1C6D60324(255, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D99A8);
    }
  }
}

uint64_t sub_1C6D6025C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D602BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6D60324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6D60388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D60324(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D603F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D60324(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL FeatureState.isEnabled.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  v7 = (*(*(*(a1 + 16) - 8) + 48))(v6, 1);
  if (v7 != 1)
  {
    (*(v3 + 8))(v6, a1);
  }

  return v7 != 1;
}

uint64_t ConfigurationManagerType.fetchArticleEmbeddingsConfigurationIfNeeded(cachedOnly:)(char a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D783A0();
  v3 = sub_1C6D78210();
  sub_1C6B0C69C(0, &qword_1EDCE6530, 0x1E69B53D0);
  v4 = sub_1C6D782B0();

  return v4;
}

double StatelessPersonalizationConfiguration.init(articleEmbeddingsConfiguration:featureConfiguration:personalizationTreatment:statelessConfiguration:statelessAllowedForExtensions:trainingConfiguration:)@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, void *a6@<X5>, void *a7@<X8>)
{
  v9 = a3;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a6)
        {
          *a7 = a1;
          a7[1] = a2;
          a7[2] = a3;
          a7[3] = a4;
          a7[4] = a5 & 1;
          a7[5] = a6;
          return result;
        }

        sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
        v19 = sub_1C6D79BD0();
        v20 = sub_1C6D79AC0();
        sub_1C6D78D30("failed to create stateless personalization configuration due to missing training configuration", 94, 2, &dword_1C6B09000, v19, v20, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v17 = sub_1C6D79AB0();
        sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
        v18 = sub_1C6D79BD0();
        sub_1C6D78D30("failed to create stateless personalization configuration due to missing stateless configuration", 95, 2, &dword_1C6B09000, v18, v17, MEMORY[0x1E69E7CC0]);

        v9 = a6;
      }
    }

    else
    {
      v15 = sub_1C6D79AB0();
      sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
      v16 = sub_1C6D79BD0();
      sub_1C6D78D30("failed to create stateless personalization configuration due to missing feature configuration", 93, 2, &dword_1C6B09000, v16, v15, MEMORY[0x1E69E7CC0]);

      v9 = a4;
    }
  }

  else
  {
    v13 = sub_1C6D79AB0();
    sub_1C6B0C69C(0, &qword_1EDCEA8B8, 0x1E69E9BF8);
    v14 = sub_1C6D79BD0();
    sub_1C6D78D30("failed to create stateless personalization configuration due to missing embeddings configuration", 96, 2, &dword_1C6B09000, v14, v13, MEMORY[0x1E69E7CC0]);

    v9 = a2;
  }

  result = 0.0;
  *(a7 + 1) = 0u;
  *(a7 + 2) = 0u;
  *a7 = 0u;
  return result;
}

__n128 Configuration.init(articleEmbeddingsScoringState:clientSideEngagementBoostEnabled:fallbackToReverseChronSorting:newsTabiPersonalizationState:personalizationTreatment:statelessPersonalizationState:extensionStatelessPersonalizationState:publisherDampeningConfig:shadowPublisherDampeningConfig:statelessPersonalizationPublisherFavorability:personalizationAnalyticsEnabled:tabiTagScoringEnabled:tabiCohortMembershipsEnabled:aggregatesInXavierEnabled:aggregatesInExtensionsXavierEnabled:tabiScoringInExtensionsEnabled:)@<Q0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, char a17)
{
  v17 = *a1;
  v18 = *a4;
  v19 = *a7;
  *a9 = v17;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = v18;
  *(a9 + 24) = a5;
  v20 = *(a6 + 16);
  *(a9 + 32) = *a6;
  *(a9 + 48) = v20;
  result = *(a6 + 32);
  *(a9 + 64) = result;
  *(a9 + 80) = v19;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 112) = a12;
  *(a9 + 113) = a13;
  *(a9 + 114) = a14;
  *(a9 + 115) = a15;
  *(a9 + 116) = a16;
  *(a9 + 117) = a17;
  return result;
}

uint64_t FeatureState.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x1EEE9AC00](a1, v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  type metadata accessor for FeatureState.Errors(0, v10, v12, v13);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t FeatureState.Feature.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t FeatureState.Feature.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1C6D60B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6D60C0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1C6D60C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6D60CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1C6D60D64@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureState.Feature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id Configuration.articleEmbeddingsScoringState.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id Configuration.newsTabiPersonalizationState.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

id Configuration.statelessPersonalizationState.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1C6B16E58(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C6D60E88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1C6D61008(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1C6D61234(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C6D6127C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6D612D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 118))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6D61320(uint64_t result, int a2, int a3)
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
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 118) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 118) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(uint64_t a1)
{
  result = qword_1EDCE42A8;
  if (!qword_1EDCE42A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6D61730@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6D618C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleDisliked.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleDisliked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleDisliked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6D61E90()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D99B8);
  __swift_project_value_buffer(v0, qword_1EC1D99B8);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleDisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D62130(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D62130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D62B7C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D6223C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D6223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6D62B7C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleDisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  sub_1C6D62B7C(&qword_1EC1D99D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D62518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D62B7C(&qword_1EC1D99E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D62594@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D6263C(uint64_t a1)
{
  v2 = sub_1C6D62B7C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D626A8(uint64_t a1, uint64_t a2)
{
  sub_1C6D62B7C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B28_SessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6D62B7C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6D62B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(v1 + *(v7 + 24), v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C44DFC(v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(uint64_t a1)
{
  result = qword_1EDCE37F0;
  if (!qword_1EDCE37F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 28);
  sub_1C6C44DFC(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 24);
  sub_1C6C44DFC(v1 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(v0 + *(v6 + 28), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C44DFC(v5, &qword_1EDCDFD00, v1);
  return v8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(v1 + *(v8 + 28), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6D63310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(a1 + *(v8 + 24), v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t sub_1C6D634C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 24);
  sub_1C6C44DFC(a2 + v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6C42988;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.hasMetadata.getter()
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(v0 + *(v5 + 24), v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C44DFC(v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 24);
  sub_1C6C44DFC(v0 + v1, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6D63A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(a1 + *(v9 + 28), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C44DFC(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6D63BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 28);
  sub_1C6C44DFC(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 28);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C43400;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 28);
  sub_1C6C44DFC(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6D6411C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D99F0);
  __swift_project_value_buffer(v0, qword_1EC1D99F0);
  sub_1C6C450C0(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "duration";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6D64560(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6D644AC(a1, v5, a2, a3);
        break;
      case 1:
        sub_1C6D78B50();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6D644AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6D65684(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6D64560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6D78A00();
  sub_1C6D65684(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6D646C8(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6D648EC(v3, a1, a2, a3);
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6D646C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(a1 + *(v14 + 24), v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C44DFC(v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6D65684(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6C02E68(v13);
}

uint64_t sub_1C6D648EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6C44D7C(a1 + *(v15 + 28), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6D65684(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6D65684(&qword_1EC1D9A08, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D64C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D65684(&qword_1EC1D9A18, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D64C88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D99F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D64D30(uint64_t a1)
{
  v2 = sub_1C6D65684(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D64D9C(uint64_t a1, uint64_t a2)
{
  sub_1C6D65684(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69AAB70];
  v8 = MEMORY[0x1E69E6720];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v57 = &v50 - v11;
  sub_1C6C45124(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v7);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v50 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v50 - v23;
  sub_1C6C45124(0, &qword_1EC1D68C8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v50 - v28;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v51 = v13;
  v53 = v4;
  v52 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  v30 = *(v52 + 24);
  v31 = *(v26 + 48);
  v54 = a1;
  sub_1C6C44D7C(a1 + v30, v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v55 = a2;
  sub_1C6C44D7C(a2 + v30, &v29[v31], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v32 = *(v17 + 48);
  if (v32(v29, 1, v16) != 1)
  {
    sub_1C6C44D7C(v29, v24, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    if (v32(&v29[v31], 1, v16) != 1)
    {
      sub_1C6B3E2B0(&v29[v31], v20);
      v36 = _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleMetadataV2eeoiySbAC_ACtFZ_0(v24, v20);
      sub_1C6C02E68(v20);
      sub_1C6C02E68(v24);
      sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1C6C02E68(v24);
LABEL_7:
    v33 = &qword_1EC1D68C8;
    v34 = qword_1EDCE2DF8;
    v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
LABEL_15:
    sub_1C6C4519C(v29, v33, v34, v35);
    goto LABEL_16;
  }

  if (v32(&v29[v31], 1, v16) != 1)
  {
    goto LABEL_7;
  }

  sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_9:
  v37 = *(v52 + 28);
  v38 = *(v51 + 48);
  v39 = MEMORY[0x1E69AAB70];
  v29 = v58;
  sub_1C6C44D7C(v54 + v37, v58, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6C44D7C(v55 + v37, &v29[v38], &qword_1EDCDFD00, v39);
  v40 = v59;
  v41 = *(v59 + 48);
  v42 = v53;
  if (v41(v29, 1, v53) == 1)
  {
    if (v41(&v29[v38], 1, v42) == 1)
    {
      sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_19:
      sub_1C6D78A40();
      sub_1C6D65684(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_14;
  }

  v43 = v57;
  sub_1C6C44D7C(v29, v57, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v41(&v29[v38], 1, v42) == 1)
  {
    (*(v40 + 8))(v43, v42);
LABEL_14:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    goto LABEL_15;
  }

  v46 = &v29[v38];
  v47 = v56;
  (*(v40 + 32))(v56, v46, v42);
  sub_1C6D65684(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v48 = sub_1C6D79560();
  v49 = *(v40 + 8);
  v49(v47, v42);
  v49(v43, v42);
  sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v48)
  {
    goto LABEL_19;
  }

LABEL_16:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1C6D65684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D656CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v167 = a2;
  v170 = a5;
  v6 = sub_1C6D77430();
  v159 = *(v6 - 8);
  v160 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v158 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1C6D773B0();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v9);
  v147 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D773E0();
  v155 = *(v11 - 8);
  v156 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v154 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v153 = &v144 - v16;
  v17 = sub_1C6D77EC0();
  v151 = *(v17 - 8);
  v152 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v150 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1C6CFD4FC(0, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v157 = &v144 - v23;
  v164 = sub_1C6D77E80();
  v166 = *(v164 - 8);
  v25 = MEMORY[0x1EEE9AC00](v164, v24);
  v146 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD308(0, v25);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v27, v29);
  v163 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD4FC(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v20);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v144 - v33;
  sub_1C6CFD4FC(0, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v20);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v161 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v144 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v162 = &v144 - v44;
  v168 = sub_1C6D77800();
  v165 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v45);
  v169 = &v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C47418(0);
  v48 = v47;
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = &v144 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1C6D77290();
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  (*(v57 + 16))(&v144 - v56, a1, v53, v55);
  if (swift_dynamicCast())
  {
    (*(v49 + 8))(v52, v48);
    v58 = sub_1C6D77270();
    v59 = v171;
    v60 = sub_1C6D77330();
    v62 = v61;

    if (!v59)
    {
      sub_1C6CFD560(&qword_1EDCE5F50, MEMORY[0x1E69B4778], MEMORY[0x1E69B4788]);
      sub_1C6D75AF0();
      v171 = 0;
      sub_1C6D777C0();
      v64 = sub_1C6D77E60();
      v65 = *(v64 - 8);
      v66 = (*(v65 + 48))(v34, 1, v64);
      v145 = v62;
      v144 = v60;
      if (v66 == 1)
      {
        sub_1C6CFD430(v34, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v67);
        v68 = 1;
        v69 = v162;
      }

      else
      {
        v69 = v162;
        sub_1C6D77E50();
        (*(v65 + 8))(v34, v64);
        v68 = 0;
      }

      v70 = v166;
      v71 = *(v166 + 56);
      v72 = v164;
      v71(v69, v68, 1, v164);
      (*(v70 + 104))(v41, *MEMORY[0x1E69B4B58], v72);
      v73 = v71(v41, 0, 1, v72);
      v74 = *(v28 + 48);
      v75 = v163;
      sub_1C6CFD39C(v69, v163, v73);
      sub_1C6CFD39C(v41, v75 + v74, v76);
      v77 = *(v70 + 48);
      if (v77(v75, 1, v72) == 1)
      {
        v79 = MEMORY[0x1E69B4BF0];
        sub_1C6CFD430(v41, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v78);
        sub_1C6CFD430(v69, &qword_1EDCE5E40, v79, v80);
        v81 = v77(v75 + v74, 1, v72);
        v83 = v169;
        v84 = v170;
        if (v81 == 1)
        {
          sub_1C6CFD430(v75, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v82);
LABEL_21:
          if (qword_1EDCEA6A0 != -1)
          {
            swift_once();
          }

          v105 = qword_1EDCEA6A8;
          sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1C6D7E630;
          v107 = v158;
          v108 = v169;
          sub_1C6D77790();
          v109 = sub_1C6D77420();
          v111 = v110;
          (*(v159 + 8))(v107, v160);
          *(v106 + 56) = MEMORY[0x1E69E6158];
          *(v106 + 64) = sub_1C6B2064C();
          *(v106 + 32) = v109;
          *(v106 + 40) = v111;
          v112 = sub_1C6D79AC0();
          sub_1C6D78D30("Skipping emitting read action as the article was opened from the shared with you feed. ArticleID: %@", 100, 2, &dword_1C6B09000, v105, v112, v106, v144, v145);
LABEL_33:
          sub_1C6B1C9F0(v144, v145);

          (*(v165 + 8))(v108, v168);
          v143 = sub_1C6D76F90();
          (*(*(v143 - 8) + 56))(v84, 1, 1, v143);
          return;
        }
      }

      else
      {
        v85 = v161;
        sub_1C6CFD39C(v75, v161, v78);
        if (v77(v75 + v74, 1, v72) != 1)
        {
          v97 = v166;
          v98 = v146;
          (*(v166 + 32))(v146, v75 + v74, v72);
          sub_1C6CFD560(&qword_1EDCE5E48, MEMORY[0x1E69B4BF0], MEMORY[0x1E69B4BF8]);
          v99 = sub_1C6D79560();
          v100 = *(v97 + 8);
          v101 = v100(v98, v72);
          v102 = MEMORY[0x1E69B4BF0];
          sub_1C6CFD430(v41, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v101);
          sub_1C6CFD430(v69, &qword_1EDCE5E40, v102, v103);
          v104 = v100(v161, v72);
          sub_1C6CFD430(v75, &qword_1EDCE5E40, v102, v104);
          v83 = v169;
          v84 = v170;
          if (v99)
          {
            goto LABEL_21;
          }

LABEL_15:
          v89 = v157;
          sub_1C6D777B0();
          v90 = sub_1C6D774A0();
          v91 = *(v90 - 8);
          if ((*(v91 + 48))(v89, 1, v90) == 1)
          {
            sub_1C6CFD430(v89, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8], v92);
          }

          else
          {
            v93 = sub_1C6D77490();
            v94 = v89;
            v96 = v95;
            (*(v91 + 8))(v94, v90);
            if (v93 == 0xD000000000000015 && 0x80000001C6DA75C0 == v96)
            {

              v83 = v169;
            }

            else
            {
              v113 = sub_1C6D7A130();

              v83 = v169;
              if ((v113 & 1) == 0)
              {
                if (qword_1EDCEA6A0 != -1)
                {
                  swift_once();
                }

                v136 = qword_1EDCEA6A8;
                sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
                v137 = swift_allocObject();
                *(v137 + 16) = xmmword_1C6D7E630;
                v138 = v158;
                v108 = v169;
                sub_1C6D77790();
                v139 = sub_1C6D77420();
                v141 = v140;
                (*(v159 + 8))(v138, v160);
                *(v137 + 56) = MEMORY[0x1E69E6158];
                *(v137 + 64) = sub_1C6B2064C();
                *(v137 + 32) = v139;
                *(v137 + 40) = v141;
                v142 = sub_1C6D79AC0();
                sub_1C6D78D30("Skipping emitting read action as the article was opened from an unexpected source. ArticleID: %@", 96, 2, &dword_1C6B09000, v136, v142, v137, v144, v145);
                goto LABEL_33;
              }
            }
          }

          v114 = v150;
          sub_1C6D777D0();
          v115 = v153;
          sub_1C6D77EB0();
          (*(v151 + 8))(v114, v152);
          v117 = v154;
          v116 = v155;
          v118 = v156;
          (*(v155 + 104))(v154, *MEMORY[0x1E69B44C8], v156);
          sub_1C6CFD560(&unk_1EDCE5FE0, MEMORY[0x1E69B4538], MEMORY[0x1E69B4540]);
          LOBYTE(v114) = sub_1C6D79560();
          v119 = *(v116 + 8);
          v119(v117, v118);
          v119(v115, v118);
          if ((v114 & 1) == 0)
          {
            v127 = v168;
            v84[3] = v168;
            v128 = MEMORY[0x1E69B4778];
            v84[4] = sub_1C6CFD560(&qword_1EDCE5F68, MEMORY[0x1E69B4778], &protocol conformance descriptor for ArticleViewEvent.Model);
            v84[5] = sub_1C6CFD560(&qword_1EDCE5F60, v128, &protocol conformance descriptor for ArticleViewEvent.Model);
            boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v84);
            v130 = v165;
            (*(v165 + 16))(boxed_opaque_existential_2, v83, v127);
            v131 = v147;
            sub_1C6D777F0();
            v132 = sub_1C6D773A0();
            sub_1C6B1C9F0(v144, v145);
            (*(v148 + 8))(v131, v149);
            (*(v130 + 8))(v83, v127);
            v84[6] = v132;
            v133 = *MEMORY[0x1E69E35F0];
            v134 = sub_1C6D76F90();
            v135 = *(v134 - 8);
            (*(v135 + 104))(v84, v133, v134);
            (*(v135 + 56))(v84, 0, 1, v134);
            return;
          }

          if (qword_1EDCEA6A0 != -1)
          {
            swift_once();
          }

          v120 = qword_1EDCEA6A8;
          sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_1C6D7E630;
          v122 = v158;
          v108 = v169;
          sub_1C6D77790();
          v123 = sub_1C6D77420();
          v125 = v124;
          (*(v159 + 8))(v122, v160);
          *(v121 + 56) = MEMORY[0x1E69E6158];
          *(v121 + 64) = sub_1C6B2064C();
          *(v121 + 32) = v123;
          *(v121 + 40) = v125;
          v126 = sub_1C6D79AC0();
          sub_1C6D78D30("Encountered an ArticleViewEvent with viewAction userNavigation. This represents a peek at the article rather than a full visit, skipping emitting articleRead action. ArticleID: %@", 179, 2, &dword_1C6B09000, v120, v126, v121, v144, v145);
          goto LABEL_33;
        }

        v87 = MEMORY[0x1E69B4BF0];
        sub_1C6CFD430(v41, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v86);
        sub_1C6CFD430(v69, &qword_1EDCE5E40, v87, v88);
        (*(v166 + 8))(v85, v72);
        v83 = v169;
        v84 = v170;
      }

      sub_1C6CFD4A0(v75, v82);
      goto LABEL_15;
    }
  }

  else
  {
    v63 = sub_1C6D76F90();
    (*(*(v63 - 8) + 56))(v170, 1, 1, v63);
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(uint64_t a1)
{
  result = qword_1EDCE4808;
  if (!qword_1EDCE4808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6D66C10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6D66DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTrackVisited.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventTrackVisited.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTrackVisited.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6D67370()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9A20);
  __swift_project_value_buffer(v0, qword_1EC1D9A20);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTrackVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D67610(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D67610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D6805C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D6771C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D6771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6D6805C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  sub_1C6D6805C(&qword_1EC1D9A38, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D679F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D6805C(&qword_1EC1D9A50, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D67A74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D67B1C(uint64_t a1)
{
  v2 = sub_1C6D6805C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D67B88(uint64_t a1, uint64_t a2)
{
  sub_1C6D6805C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6D6805C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6D6805C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D680A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a5@<X8>)
{
  v48 = a2;
  v8 = sub_1C6D77380();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C6D77A10();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v12);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B90950(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v44 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6D68678(&qword_1EDCE5F08, MEMORY[0x1E69B48C0], MEMORY[0x1E69B48C8]);
      v29 = v49;
      v30 = v52;
      sub_1C6D75AF0();
      sub_1C6D77A00();
      v32 = sub_1C6D77360();
      v34 = v33;
      (*(v45 + 8))(v11, v46);
      if (v34)
      {
        (*(v47 + 8))(v29, v30);
        sub_1C6B1C9F0(v26, v28);
        *a5 = v32;
        a5[1] = v34;
        v35 = *MEMORY[0x1E69E35E8];
        v36 = sub_1C6D76F90();
        v37 = *(v36 - 8);
        (*(v37 + 104))(a5, v35, v36);
        (*(v37 + 56))(a5, 0, 1, v36);
      }

      else
      {
        v48 = a5;
        if (qword_1EDCE03B8 != -1)
        {
          swift_once();
        }

        v46 = qword_1EDCE03C0;
        v38 = sub_1C6D79AA0();
        sub_1C6B1D314(0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C6D7E630;
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_1C6D79E60();
        v40 = v30;
        v41 = v50;
        v42 = v51;
        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 64) = sub_1C6B2064C();
        *(v39 + 32) = v41;
        *(v39 + 40) = v42;
        sub_1C6D78D30("Encountered an AppSessionEndEvent without an app session ID specified: %{public}@", 81, 2, &dword_1C6B09000, v46, v38, v39);
        sub_1C6B1C9F0(v26, v28);

        (*(v47 + 8))(v29, v40);
        v43 = sub_1C6D76F90();
        (*(*(v43 - 8) + 56))(v48, 1, 1, v43);
      }
    }
  }

  else
  {
    v31 = sub_1C6D76F90();
    (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
  }
}

uint64_t sub_1C6D68678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FileLog.File.init(data:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FileLog.log(file:)(uint64_t *a1)
{
  v20 = *v1;
  v3 = sub_1C6D78E30();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6D78E80();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  if (qword_1EDCE6718 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  v16 = v20;
  v15[6] = v14;
  v15[7] = v16;
  aBlock[4] = sub_1C6D6DBBC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6B20B90;
  aBlock[3] = &block_descriptor_17;
  v17 = _Block_copy(aBlock);

  sub_1C6B1CD10(v11, v12);

  sub_1C6D78E60();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1C6D70320(qword_1EDCE7FD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1C6B10FF4(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C6D70368(&qword_1EDCE7F58, &qword_1EDCE7F60, v18, MEMORY[0x1E69E6328]);
  sub_1C6D79CB0();
  MEMORY[0x1CCA55FE0](0, v10, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v3);
  (*(v7 + 8))(v10, v21);
}

void sub_1C6D68A68(void *a1)
{
  v2 = *(sub_1C6D75DE0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6C74048(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1C6D6E03C(v5);
  *a1 = v3;
}

uint64_t FileLog.File.init(name:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C6D75B70();
  swift_allocObject();
  sub_1C6D75B60();
  v9 = sub_1C6D75B50();
  v11 = v10;

  if (v4)
  {
  }

  else
  {
    *a4 = v9;
    a4[1] = v11;
    a4[2] = a1;
    a4[3] = a2;
  }

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t sub_1C6D68BE0@<X0>(char *a1@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = sub_1C6D75CD0();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D78550();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v60 - v12;
  v14 = sub_1C6D75DE0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v65 = &v60 - v21;
  v22 = type metadata accessor for FileLog.TargetDirectory(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6D700D4(v66, v25, type metadata accessor for FileLog.TargetDirectory);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v15 + 32))(a1, v25, v14);
    v28 = 0;
    v29 = a1;
    return (*(v15 + 56))(v29, v28, 1, v14);
  }

  v66 = a1;
  v26 = *v25;
  v61 = v25[1];
  v27 = v25[2];
  sub_1C6D78490();
  sub_1C6D78540();
  (*(v6 + 8))(v9, v5);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v60 = v26;
    v30 = v62;
    v68 = v61;
    v69 = v27;
    v32 = v63;
    v31 = v64;
    (*(v63 + 104))(v62, *MEMORY[0x1E6968F58], v64);
    sub_1C6B16CF0();
    sub_1C6D75DC0();
    (*(v32 + 8))(v30, v31);

    v33 = *(v15 + 8);
    v33(v13, v14);
    v64 = v15;
    v34 = *(v15 + 32);
    v35 = v65;
    v34(v65, v18, v14);
    if (sub_1C6D75D10())
    {
      v36 = [objc_opt_self() defaultManager];
      v37 = sub_1C6D75D30();
      v68 = 0;
      v38 = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v68];

      if (v38)
      {
        v39 = v68;

        v29 = v66;
        v34(v66, v35, v14);
        v28 = 0;
LABEL_15:
        v15 = v64;
        return (*(v15 + 56))(v29, v28, 1, v14);
      }

      v44 = v14;
      v48 = v68;
      v49 = sub_1C6D75CC0();

      swift_willThrow();
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v63 = qword_1EDCE7930;
      LODWORD(v62) = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C6D7EB10;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v51 = v65;
      v52 = sub_1C6D7A0E0();
      v54 = v53;
      v55 = MEMORY[0x1E69E6158];
      *(v50 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1C6B2064C();
      *(v50 + 64) = v56;
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;
      v68 = 0;
      v69 = 0xE000000000000000;
      v67 = v49;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v57 = v68;
      v58 = v69;
      *(v50 + 96) = v55;
      *(v50 + 104) = v56;
      *(v50 + 72) = v57;
      *(v50 + 80) = v58;
      v14 = v44;
      sub_1C6D78D30("Failed to prepare target directory %{public}@ with error %{public}@", 67, 2, &dword_1C6B09000, v63, v62, v50);

      v47 = v51;
    }

    else
    {
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v40 = qword_1EDCE7930;
      v41 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1C6D7E630;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v43 = sub_1C6D7A0E0();
      v44 = v14;
      v46 = v45;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1C6B2064C();
      *(v42 + 32) = v43;
      *(v42 + 40) = v46;
      v14 = v44;
      sub_1C6D78D30("Target directory %{public}@ isn't a directory path", 50, 2, &dword_1C6B09000, v40, v41, v42);

      v47 = v35;
    }

    v33(v47, v44);
    v28 = 1;
    v29 = v66;
    goto LABEL_15;
  }

  sub_1C6D702B0(v13, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
  v28 = 1;
  v29 = v66;
  return (*(v15 + 56))(v29, v28, 1, v14);
}

uint64_t FileLog.targetDirectory.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
  swift_beginAccess();
  sub_1C6B18038(v1 + v7, v6);
  v8 = sub_1C6D75DE0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1C6D702B0(v6, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    sub_1C6D68BE0(a1);
    swift_beginAccess();
    sub_1C6D6DBCC(a1, v1 + v7);
    return swift_endAccess();
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }
}

uint64_t sub_1C6D695AC()
{
  v0 = sub_1C6D79AE0();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = sub_1C6D79AF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D78E80();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  sub_1C6D78E50();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v2);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1C6D70320(&unk_1EDCE7EB8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v9 = MEMORY[0x1E69E8030];
  sub_1C6B10FF4(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C6D70368(&qword_1EDCE7F28, &qword_1EDCE7F30, v9, MEMORY[0x1E69E6328]);
  sub_1C6D79CB0();
  result = sub_1C6D79B20();
  qword_1EDCE6720 = result;
  return result;
}

uint64_t FileLog.__allocating_init(configuration:targetDirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FileLog.init(configuration:targetDirectory:)(a1, a2);
  return v4;
}

uint64_t sub_1C6D6989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v3 = sub_1C6D75CD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C6D75F80();
  v8 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75DE0();
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  v21 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v21;
  sub_1C6D75D20();
  sub_1C6D75F70();
  v22 = sub_1C6D75F60();
  v24 = v23;
  (*(v8 + 8))(v11, v48);
  v51 = v22;
  v52 = v24;
  v25 = *MEMORY[0x1E6968F58];
  v41 = *(v4 + 104);
  v41(v7, v25, v3);
  v43 = sub_1C6B16CF0();
  sub_1C6D75DC0();
  v26 = *(v4 + 8);
  v46 = v7;
  v27 = v7;
  v48 = v3;
  v28 = v3;
  v29 = v49;
  v30 = v50;
  v42 = v26;
  v26(v27, v28);

  v31 = *(v30 + 1);
  v31(v16, v29);
  v32 = [objc_opt_self() defaultManager];
  v50 = v20;
  v33 = sub_1C6D75D30();
  v51 = 0;
  LOBYTE(v16) = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v51];

  v34 = v51;
  if (v16)
  {
    v51 = v44;
    v52 = v45;
    v35 = v46;
    v36 = v48;
    v41(v46, *MEMORY[0x1E6968F68], v48);
    v37 = v34;

    v38 = v50;
    sub_1C6D75DC0();
    v42(v35, v36);

    return (v31)(v38, v29);
  }

  else
  {
    v40 = v51;
    sub_1C6D75CC0();

    swift_willThrow();
    return (v31)(v50, v29);
  }
}

uint64_t sub_1C6D69CB4@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  sub_1C6B68CA8(0);
  v82 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v79 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v80 = &v68 - v11;
  sub_1C6B68D1C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v72 = &v68 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v75 = &v68 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v71 = &v68 - v34;
  v35 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_files;
  swift_beginAccess();
  v73 = v1;
  v36 = *(v1 + v35);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v83 = v14;
  if (v37)
  {
    v69 = v25;
    v70 = v17;
    v85 = MEMORY[0x1E69E7CC0];

    sub_1C6B39B88(0, v37, 0);
    v38 = v85;
    v39 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v68 = v36;
    v40 = v36 + v39;
    v41 = *(v3 + 72);
    v42 = (v14 + 32);
    v77 = (v14 + 16);
    v78 = v41;
    v76 = v21;
    v43 = v80;
    do
    {
      sub_1C6D700D4(v40, v43, sub_1C6B68CA8);
      v44 = v81;
      sub_1C6D700D4(v43, v81, sub_1C6B68CA8);
      v45 = *(v82 + 48);
      v46 = sub_1C6D75DE0();
      v47 = v13;
      v48 = v79;
      (*(*(v46 - 8) + 32))(v79, v44, v46);
      v84 = *v42;
      v84(v48 + v45, &v44[v45], v47);
      (*v77)(v21, v48 + v45, v47);
      sub_1C6D7013C(v48, sub_1C6B68CA8);
      sub_1C6D7013C(v43, sub_1C6B68CA8);
      v85 = v38;
      v50 = *(v38 + 16);
      v49 = *(v38 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1C6B39B88((v49 > 1), v50 + 1, 1);
        v38 = v85;
      }

      *(v38 + 16) = v50 + 1;
      v14 = v83;
      v21 = v76;
      v84(v38 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v83 + 72) * v50, v76, v47);
      v40 += v78;
      --v37;
      v13 = v47;
    }

    while (v37);

    v25 = v69;
    v17 = v70;
  }

  v51 = [objc_opt_self() bytes];
  v52 = sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
  v53 = v75;
  sub_1C6D75B80();
  v54 = v72;
  v55 = v53;
  v56 = *(v14 + 16);
  v56(v72, v55, v13);
  v57 = *(v38 + 16);
  if (v57)
  {
    v58 = *(v14 + 80);
    v84 = (v14 + 16);
    v59 = v38 + ((v58 + 32) & ~v58);
    v60 = *(v14 + 72);
    v81 = v56;
    v82 = v60;
    v61 = v14;
    v62 = v14 + 8;
    v63 = (v61 + 32);
    v79 = (v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v80 = v52;
    v64 = v25;
    do
    {
      (v81)(v64, v59, v13);
      sub_1C6D75B90();
      v65 = *v62;
      (*v62)(v64, v13);
      v65(v54, v13);
      (*v63)(v54, v17, v13);
      v59 += v82;
      --v57;
    }

    while (v57);

    v14 = v83;
  }

  else
  {

    v65 = *(v14 + 8);
  }

  v65(v75, v13);
  v66 = v71;
  (*(v14 + 32))(v71, v54, v13);
  sub_1C6D75BB0();
  return (v65)(v66, v13);
}

void sub_1C6D6A2BC(char *a1)
{
  v131 = a1;
  v135 = *MEMORY[0x1E69E9840];
  sub_1C6B68CA8(0);
  v3 = v2;
  v111 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B68D1C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D75CA0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D75DE0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  if (!*(v1 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus))
  {
    v117 = v1;
    v129 = v14;
    *&v130 = v9;
    v121 = v101 - v26;
    v105 = v28;
    v106 = v27;
    v114 = v13;
    v107 = v12;
    v108 = v8;
    v115 = v6;
    v109 = v3;
    v110 = v25;
    v102 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus;
    v120 = objc_opt_self();
    v29 = [v120 defaultManager];
    v30 = sub_1C6D75D30();
    sub_1C6B10FF4(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
    v125 = v31;
    v32 = swift_allocObject();
    v116 = xmmword_1C6D7EB10;
    *(v32 + 16) = xmmword_1C6D7EB10;
    v33 = *MEMORY[0x1E695DA98];
    v34 = *MEMORY[0x1E695DB50];
    *(v32 + 32) = *MEMORY[0x1E695DA98];
    *(v32 + 40) = v34;
    type metadata accessor for URLResourceKey(0);
    v35 = v33;
    v124 = v34;
    v36 = sub_1C6D79760();

    v133 = 0;
    v37 = [v29 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:v36 options:5 error:&v133];

    v38 = v133;
    if (v37)
    {
      v39 = v110;
      v40 = sub_1C6D79780();
      v41 = v38;

      v133 = v40;

      sub_1C6D68A68(&v133);

      v42 = v133[2];
      v43 = v121;
      if (v42)
      {
        v45 = *(v19 + 16);
        v44 = v19 + 16;
        v128 = v45;
        v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
        v101[1] = v133;
        v47 = v133 + v46;
        v113 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_files;
        v112 = (v129 + 8);
        v104 = (v130 + 32);
        v103 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls;
        v123 = (v44 - 8);
        v122 = *(v44 + 56);
        v130 = xmmword_1C6D7E630;
        v119 = v17;
        v118 = v44;
        do
        {
          v131 = v47;
          v128(v43);
          inited = swift_initStackObject();
          *(inited + 16) = v130;
          v51 = v124;
          *(inited + 32) = v124;
          v52 = v51;
          sub_1C6B20798(inited);
          swift_setDeallocating();
          sub_1C6D7013C(inited + 32, type metadata accessor for URLResourceKey);
          sub_1C6D75CE0();

          sub_1C6D75C90();
          LOBYTE(inited) = v53;
          (*v112)(v17, v114);
          if (inited)
          {
            v129 = v42;
            v54 = MEMORY[0x1E69E6158];
            if (qword_1EDCE7928 != -1)
            {
              swift_once();
            }

            v55 = qword_1EDCE7930;
            sub_1C6B1D314(0);
            v126 = v56;
            v57 = swift_allocObject();
            *(v57 + 16) = v130;
            sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v43 = v121;
            v58 = sub_1C6D7A0E0();
            v59 = v39;
            v61 = v60;
            *(v57 + 56) = v54;
            v62 = sub_1C6B2064C();
            *(v57 + 64) = v62;
            *(v57 + 32) = v58;
            *(v57 + 40) = v61;
            v63 = sub_1C6D79AC0();
            v127 = v55;
            sub_1C6D78D30("Failed to get size for file at URL %{public}@, attempting to delete", 67, 2, &dword_1C6B09000, v55, v63, v57);

            v64 = [v120 defaultManager];
            v65 = sub_1C6D75D30();
            v133 = 0;
            LODWORD(v57) = [v64 removeItemAtURL:v65 error:&v133];

            if (v57)
            {
              v48 = *v123;
              v49 = v133;
              v48(v43, v59);
            }

            else
            {
              v66 = v133;
              v67 = sub_1C6D75CC0();

              swift_willThrow();
              v68 = sub_1C6D79AA0();
              v69 = swift_allocObject();
              *(v69 + 16) = v116;
              v70 = sub_1C6D7A0E0();
              v71 = MEMORY[0x1E69E6158];
              *(v69 + 56) = MEMORY[0x1E69E6158];
              *(v69 + 64) = v62;
              *(v69 + 32) = v70;
              *(v69 + 40) = v72;
              v133 = 0;
              v134 = 0xE000000000000000;
              v132 = v67;
              sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
              sub_1C6D79E60();
              v73 = v133;
              v74 = v134;
              *(v69 + 96) = v71;
              *(v69 + 104) = v62;
              *(v69 + 72) = v73;
              *(v69 + 80) = v74;
              sub_1C6D78D30("Failed to delete file at URL %{public}@ with error %{public}@", 61, 2, &dword_1C6B09000, v127, v68, v69);

              (*v123)(v43, v59);
            }

            v39 = v59;
            v17 = v119;
            v42 = v129;
          }

          else
          {
            v75 = [objc_opt_self() bytes];
            sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
            v76 = v107;
            sub_1C6D75B80();
            v77 = *(v109 + 48);
            v78 = v115;
            (v128)(v115, v43, v39);
            (*v104)(v78 + v77, v76, v108);
            v79 = v117;
            v80 = v113;
            swift_beginAccess();
            v81 = *(v79 + v80);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v79 + v80) = v81;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v81 = sub_1C6B672F8(0, v81[2] + 1, 1, v81);
              *(v117 + v113) = v81;
            }

            v84 = v81[2];
            v83 = v81[3];
            if (v84 >= v83 >> 1)
            {
              v81 = sub_1C6B672F8((v83 > 1), v84 + 1, 1, v81);
            }

            v81[2] = v84 + 1;
            sub_1C6B162C8(v115, v81 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v84, sub_1C6B68CA8);
            *(v117 + v113) = v81;
            swift_endAccess();
            v85 = v106;
            v39 = v110;
            (v128)(v106, v43, v110);
            swift_beginAccess();
            v86 = v105;
            sub_1C6C245D4(v105, v85);
            swift_endAccess();
            v87 = *v123;
            (*v123)(v86, v39);
            v87(v43, v39);
          }

          v47 = &v131[v122];
          --v42;
        }

        while (v42);
      }

      v88 = 2;
    }

    else
    {
      v89 = v133;
      v90 = sub_1C6D75CC0();

      swift_willThrow();
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v91 = qword_1EDCE7930;
      v92 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v93 = swift_allocObject();
      *(v93 + 16) = v116;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v94 = sub_1C6D7A0E0();
      v96 = v95;
      v97 = MEMORY[0x1E69E6158];
      *(v93 + 56) = MEMORY[0x1E69E6158];
      v98 = sub_1C6B2064C();
      *(v93 + 64) = v98;
      *(v93 + 32) = v94;
      *(v93 + 40) = v96;
      v133 = 0;
      v134 = 0xE000000000000000;
      v132 = v90;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v99 = v133;
      v100 = v134;
      *(v93 + 96) = v97;
      *(v93 + 104) = v98;
      *(v93 + 72) = v99;
      *(v93 + 80) = v100;
      sub_1C6D78D30("Failed to process target directory %{public}@ with error %{public}@", 67, 2, &dword_1C6B09000, v91, v92, v93);

      v88 = 1;
    }

    *(v117 + v102) = v88;
  }
}

uint64_t sub_1C6D6AFA8(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v56 = a2;
  v55 = sub_1C6D75F50();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v46 - v6;
  sub_1C6D7019C(0);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D75CA0();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v46 - v16;
  sub_1C6B10FF4(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v54 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v46 - v23;
  sub_1C6B10FF4(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v50 = xmmword_1C6D7E630;
  *(inited + 16) = xmmword_1C6D7E630;
  v26 = *MEMORY[0x1E695DA98];
  *(inited + 32) = *MEMORY[0x1E695DA98];
  v27 = v26;
  sub_1C6B20798(inited);
  swift_setDeallocating();
  sub_1C6D7013C(inited + 32, type metadata accessor for URLResourceKey);
  v28 = v52;
  sub_1C6D75CE0();
  v48 = v11;
  if (v28)
  {

    v29 = v55;
    (*(v58 + 56))(v24, 1, 1, v55);
  }

  else
  {

    sub_1C6D75C80();
    (*(v49 + 8))(v17, v11);
    v29 = v55;
  }

  v30 = swift_initStackObject();
  *(v30 + 16) = v50;
  *(v30 + 32) = v27;
  v31 = v30 + 32;
  sub_1C6B20798(v30);
  swift_setDeallocating();
  sub_1C6D7013C(v31, type metadata accessor for URLResourceKey);
  v32 = v53;
  sub_1C6D75CE0();
  v33 = v54;

  sub_1C6D75C80();
  (*(v49 + 8))(v32, v48);
  v34 = v58;
  v35 = *(v57 + 48);
  v36 = MEMORY[0x1E6969530];
  sub_1C6D70230(v24, v10, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  sub_1C6D70230(v33, &v10[v35], &qword_1EDCEA960, v36);
  v37 = *(v34 + 48);
  v38 = v37(v10, 1, v29);
  v39 = v37(&v10[v35], 1, v29);
  if (v38 == 1)
  {
    if (v39 != 1)
    {
      sub_1C6D702B0(&v10[v35], &qword_1EDCEA960, MEMORY[0x1E6969530]);
    }

    v40 = 0;
  }

  else if (v39 == 1)
  {
    (*(v34 + 8))(v10, v29);
    v40 = 1;
  }

  else
  {
    v41 = *(v34 + 32);
    v42 = v46;
    v41(v46, v10, v29);
    v43 = v47;
    v41(v47, &v10[v35], v29);
    v40 = sub_1C6D75EE0();
    v44 = *(v34 + 8);
    v44(v43, v29);
    v44(v42, v29);
  }

  return v40 & 1;
}

uint64_t sub_1C6D6B5AC(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v322 = a5;
  v324 = a4;
  *&v315 = a3;
  v314 = a2;
  v330 = *MEMORY[0x1E69E9840];
  sub_1C6D6DFD0(0);
  v303 = v6;
  v286 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v300 = v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1C6B10FF4(0, &qword_1EDCE65B8, sub_1C6D6DFD0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v302 = v275 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v307 = (v275 - v15);
  v285 = sub_1C6D75FF0();
  v284 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285, v16);
  v296 = v275 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10FF4(0, &qword_1EDCE64F8, sub_1C6B68CA8, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v288 = v275 - v20;
  sub_1C6B68CA8(0);
  v312 = v21;
  v299 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v298 = v275 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v297 = v275 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v304 = v275 - v29;
  sub_1C6B68D1C(0);
  v289 = v30;
  v305 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v295 = v275 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v294 = v275 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v290 = v275 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v306 = v275 - v41;
  v292 = sub_1C6D75CA0();
  v291 = *(v292 - 1);
  MEMORY[0x1EEE9AC00](v292, v42);
  v301 = v275 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v311 = sub_1C6D75F80();
  v310 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311, v44);
  v309 = v275 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_1C6D75CD0();
  v318 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317, v46);
  v48 = v275 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], v9);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v293 = v275 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v308 = v275 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = v275 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = v275 - v61;
  v63 = sub_1C6D75DE0();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v65);
  v287 = v275 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v313 = v275 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v316 = v275 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v320 = (v275 - v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  v319 = v275 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v323 = v275 - v81;
  v82 = OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL;
  swift_beginAccess();
  sub_1C6B18038(a1 + v82, v58);
  v83 = *(v64 + 48);
  v84 = v83(v58, 1, v63);
  v321 = v64;
  if (v84 == 1)
  {
    sub_1C6D702B0(v58, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
    sub_1C6D68BE0(v62);
    swift_beginAccess();
    v85 = a1;
    sub_1C6D6DBCC(v62, a1 + v82);
    swift_endAccess();
    if (v83(v62, 1, v63) == 1)
    {
      sub_1C6D702B0(v62, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v86 = qword_1EDCE7930;
      v87 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1C6D7E630;
      *(v88 + 56) = MEMORY[0x1E69E6158];
      *(v88 + 64) = sub_1C6B2064C();
      v89 = v322;
      *(v88 + 32) = v324;
      *(v88 + 40) = v89;

      sub_1C6D78D30("Failed to log file %{public}@ because no target directory was available", 71, 2, &dword_1C6B09000, v86, v87, v88);
    }

    v93 = v63;
    v282 = v83;
    v91 = *(v321 + 32);
    v92 = (v321 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  else
  {
    v282 = v83;
    v85 = a1;
    v91 = *(v64 + 32);
    v91(v62, v58, v63);
    (*(v64 + 56))(v62, 0, 1, v63);
    v92 = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v93 = v63;
  }

  v94 = v323;
  v281 = v92;
  v91(v323, v62, v93);
  sub_1C6D6A2BC(v94);
  if (*(v85 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_targetDirectoryProcessingStatus) == 2)
  {
    v280 = v91;
    v95 = v322;
    v326 = v324;
    v327 = v322;
    v96 = v318;
    v97 = v317;
    v318[13](v48, *MEMORY[0x1E6968F68], v317);
    sub_1C6B16CF0();
    swift_bridgeObjectRetain_n();
    v98 = v320;
    sub_1C6D75DC0();
    (v96[1])(v48, v97);

    v99 = v319;
    sub_1C6D75D60();
    v100 = *(v321 + 8);
    v283 = v93;
    v317 = v321 + 8;
    v318 = v100;
    (v100)(v98, v93);
    v101 = OBJC_IVAR____TtC19NewsPersonalization7FileLog_urls;
    swift_beginAccess();
    v102 = *(v85 + v101);

    v103 = v99;
    v104 = sub_1C6D04560(v99, v102);

    if (v104)
    {

      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v105 = qword_1EDCE7930;
      v106 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1C6D7E630;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v108 = v283;
      v109 = sub_1C6D7A0E0();
      v111 = v110;
      *(v107 + 56) = MEMORY[0x1E69E6158];
      *(v107 + 64) = sub_1C6B2064C();
      *(v107 + 32) = v109;
      *(v107 + 40) = v111;
      sub_1C6D78D30("Failed to log file at URL %{public}@ because a file already exists at that location", 83, 2, &dword_1C6B09000, v105, v106, v107);

      v112 = v318;
      (v318)(v103, v108);
      return v112(v323, v108);
    }

    v117 = v85;
    v279 = v101;
    v326 = v314;
    v327 = v315;
    v328 = v324;
    v329 = v95;
    sub_1C6D6989C(&v326, v316);
    sub_1C6D75E70();
    v118 = v323;
    *&v315 = 0;
    v132 = v320;
    sub_1C6D75D80();
    v133 = v309;
    sub_1C6D75F70();
    sub_1C6D75F60();
    (*(v310 + 1))(v133, v311);
    v134 = v308;
    URL.zipForExport(filename:)(v308);

    v135 = v283;
    v136 = v318;
    (v318)(v132, v283);
    v137 = (v282)(v134, 1, v135);
    v138 = v103;
    if (v137 == 1)
    {
      sub_1C6D702B0(v134, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
      v139 = MEMORY[0x1E69E6158];
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v140 = qword_1EDCE7930;
      v141 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1C6D7E630;
      *(v142 + 56) = v139;
      *(v142 + 64) = sub_1C6B2064C();
      v143 = v322;
      *(v142 + 32) = v324;
      *(v142 + 40) = v143;
      sub_1C6D78D30("Failed to get zipped URL for file %{public}@", 44, 2, &dword_1C6B09000, v140, v141, v142);

      v144 = v283;
      v136(v316, v283);
      v136(v103, v144);
      return (v136)(v118, v144);
    }

    v280(v313, v134, v135);
    v145 = MEMORY[0x1E69E6158];
    v146 = v135;
    if (qword_1EDCE7928 != -1)
    {
      swift_once();
    }

    v147 = qword_1EDCE7930;
    sub_1C6B1D314(0);
    v322 = v148;
    v149 = swift_allocObject();
    v311 = xmmword_1C6D7E630;
    *(v149 + 16) = xmmword_1C6D7E630;
    v314 = sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v150 = sub_1C6D7A0E0();
    v152 = v151;
    *(v149 + 56) = v145;
    v324 = sub_1C6B2064C();
    *(v149 + 64) = v324;
    *(v149 + 32) = v150;
    *(v149 + 40) = v152;
    v153 = sub_1C6D79AC0();
    sub_1C6D78D30("Zipped file data to %{public}@", 30, 2, &dword_1C6B09000, v147, v153, v149);

    sub_1C6B10FF4(0, &qword_1EDCE7CE0, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = v311;
    v155 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v156 = v155;
    sub_1C6B20798(inited);
    swift_setDeallocating();
    sub_1C6D7013C(inited + 32, type metadata accessor for URLResourceKey);
    v157 = v301;
    v158 = v315;
    sub_1C6D75CE0();
    if (v158)
    {

LABEL_29:
      v162 = sub_1C6D79AA0();
      v163 = swift_allocObject();
      *(v163 + 16) = v311;
      v164 = v313;
      v165 = sub_1C6D7A0E0();
      v166 = v324;
      *(v163 + 56) = MEMORY[0x1E69E6158];
      *(v163 + 64) = v166;
      *(v163 + 32) = v165;
      *(v163 + 40) = v167;
      sub_1C6D78D30("Failed to get size of zipped file at %{public}@", 47, 2, &dword_1C6B09000, v147, v162, v163);

      v136(v164, v146);
      v136(v316, v146);
      v136(v138, v146);
      return (v136)(v323, v146);
    }

    v159 = sub_1C6D75C90();
    v161 = v160;
    (*(v291 + 8))(v157, v292);
    if (v161)
    {
      goto LABEL_29;
    }

    *&v315 = v159;
    v276 = v117;
    v292 = objc_opt_self();
    v168 = [v292 defaultManager];
    v169 = v313;
    v170 = sub_1C6D75D30();
    v171 = sub_1C6D75D30();
    v326 = 0;
    v172 = [v168 moveItemAtURL:v170 toURL:v171 error:&v326];

    v173 = v326;
    if (v172)
    {
      v174 = objc_opt_self();
      v175 = v173;
      v309 = v174;
      v176 = [v174 bytes];
      v177 = sub_1C6B0C69C(0, &unk_1EDCE7E40, 0x1E696B050);
      v178 = v306;
      v275[2] = v177;
      sub_1C6D75B80();
      v179 = *(v312 + 48);
      v321 = *(v321 + 16);
      v180 = v304;
      (v321)(v304, v138, v146);
      v181 = *(v305 + 32);
      v278 = v305 + 32;
      v310 = v181;
      (v181)(v180 + v179, v178, v289);
      v182 = v276;
      v183 = (v276 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_files);
      swift_beginAccess();
      v184 = v288;
      sub_1C6B162C8(v180, v288, sub_1C6B68CA8);
      v282 = v183;
      sub_1C6D19CFC(0, 0, v184);
      swift_endAccess();
      v185 = v287;
      (v321)(v287, v138, v146);
      swift_beginAccess();
      v186 = v320;
      sub_1C6C245D4(v320, v185);
      swift_endAccess();
      v136(v186, v146);
      sub_1C6D69CB4(v290);
      v187 = swift_allocObject();
      v315 = xmmword_1C6D7EB10;
      *(v187 + 16) = xmmword_1C6D7EB10;
      v188 = sub_1C6D7A0E0();
      v189 = v324;
      *(v187 + 56) = MEMORY[0x1E69E6158];
      *(v187 + 64) = v189;
      *(v187 + 32) = v188;
      *(v187 + 40) = v190;
      v321 = v182 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration;
      v191 = *(v182 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration);
      v192 = v306;
      v288 = v191;
      v193 = v289;
      v194 = v305;
      sub_1C6D75BB0();
      v320 = sub_1C6B68D1C;
      v291 = sub_1C6D70320(&qword_1EDCE7B28, sub_1C6B68D1C, MEMORY[0x1E69680A0]);
      v195 = sub_1C6D7A0E0();
      v197 = v196;
      v301 = *(v194 + 8);
      v305 = v194 + 8;
      (v301)(v192, v193);
      *(v187 + 96) = MEMORY[0x1E69E6158];
      *(v187 + 104) = v189;
      *(v187 + 72) = v195;
      *(v187 + 80) = v197;
      v198 = sub_1C6D79AC0();
      sub_1C6D78D30("Logged file to %{public}@, total size %{public}@", 48, 2, &dword_1C6B09000, v147, v198, v187);

      type metadata accessor for FileLog.Configuration(0);
      v199 = v193;
      v200 = v290;
      v275[1] = sub_1C6D70320(&qword_1EDCE7B30, v320, MEMORY[0x1E6968088]);
      if (sub_1C6D79540())
      {
        sub_1C6D75BA0();
        v201 = swift_allocObject();
        *(v201 + 16) = v311;
        v202 = v306;
        sub_1C6D75BB0();
        v203 = sub_1C6D7A0E0();
        v205 = v204;
        (v301)(v202, v199);
        v206 = v324;
        *(v201 + 56) = MEMORY[0x1E69E6158];
        *(v201 + 64) = v206;
        *(v201 + 32) = v203;
        *(v201 + 40) = v205;
        v207 = sub_1C6D79AC0();
        *&v311 = v147;
        sub_1C6D78D30("Found need to prune %{public}@", 30, 2, &dword_1C6B09000, v147, v207, v201);

        v208 = [v309 bytes];
        sub_1C6D75B80();
        sub_1C6D75FE0();
        v209 = *v282;
        v210 = *(*v282 + 16);
        v287 = (v286 + 7);
        v286 += 6;

        v321 = 0;
        v211 = v199;
        v212 = v303;
        v213 = v302;
        v277 = v209;
        while (1)
        {
          if (v210)
          {
            v224 = *(v209 + 16);
            v225 = v321;
            if (v210 == v224)
            {
              v225 = *(v209 + 16);
            }

            v321 = v225 - 1;
            if (__OFSUB__(v225, 1))
            {
              __break(1u);
LABEL_49:
              __break(1u);
            }

            v210 = (v210 - 1);
            if (v210 >= v224)
            {
              goto LABEL_49;
            }

            v226 = *(v212 + 48);
            v227 = v300;
            sub_1C6D700D4(v209 + ((*(v299 + 80) + 32) & ~*(v299 + 80)) + *(v299 + 72) * v210, &v300[v226], sub_1C6B68CA8);
            *v213 = v321;
            sub_1C6B162C8(&v227[v226], v213 + *(v212 + 48), sub_1C6B68CA8);
            v228 = 0;
          }

          else
          {
            v228 = 1;
          }

          (*v287)(v213, v228, 1, v212);
          v229 = v307;
          sub_1C6D70230(v213, v307, &qword_1EDCE65B8, sub_1C6D6DFD0);
          if ((*v286)(v229, 1, v212) == 1)
          {
            break;
          }

          v320 = v210;
          v309 = *v307;
          v230 = v307 + *(v212 + 48);
          v231 = v312;
          v232 = *(v312 + 48);
          v233 = v298;
          v234 = v280;
          v280(v298, v230, v283);
          v235 = v310;
          v310(&v233[v232], &v230[v232], v211);
          v236 = *(v231 + 48);
          v237 = v297;
          v234(v297, v233, v283);
          v235(v237 + v236, &v233[v232], v211);
          v238 = swift_allocObject();
          *(v238 + 16) = v315;
          v239 = sub_1C6D7A0E0();
          v240 = MEMORY[0x1E69E6158];
          v241 = v324;
          *(v238 + 56) = MEMORY[0x1E69E6158];
          *(v238 + 64) = v241;
          *(v238 + 32) = v239;
          *(v238 + 40) = v242;
          v308 = v236;
          v243 = v306;
          sub_1C6D75BB0();
          v244 = sub_1C6D7A0E0();
          v246 = v245;
          v247 = v243;
          v248 = v301;
          (v301)(v247, v211);
          *(v238 + 96) = v240;
          *(v238 + 104) = v241;
          v249 = v283;
          *(v238 + 72) = v244;
          *(v238 + 80) = v246;
          v250 = sub_1C6D79AC0();
          sub_1C6D78D30("Pruning %{public}@ (%{public}@)", 31, 2, &dword_1C6B09000, v311, v250, v238);

          v251 = [v292 defaultManager];
          v252 = v304;
          sub_1C6D700D4(v237, v304, sub_1C6B68CA8);
          v253 = *(v312 + 48);
          v254 = sub_1C6D75D30();
          v248(v252 + v253, v211);
          (v318)(v252, v249);
          v326 = 0;
          LODWORD(v253) = [v251 removeItemAtURL:v254 error:&v326];

          if (v253)
          {
            v255 = v326;
            v256 = v306;
            v257 = v295;
            sub_1C6D75B90();
            v248(v257, v211);
            v310(v257, v256, v211);
            sub_1C6D75FC0();
            swift_beginAccess();
            v258 = v293;
            sub_1C6D3A038(v237, v293);
            swift_endAccess();
            sub_1C6D702B0(v258, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);
            LOBYTE(v258) = sub_1C6D79540();
            sub_1C6D7013C(v237, sub_1C6B68CA8);
            v212 = v303;
            v213 = v302;
            v209 = v277;
            v210 = v320;
            if ((v258 & 1) == 0)
            {
              break;
            }
          }

          else
          {
            v214 = v326;
            v215 = sub_1C6D75CC0();

            swift_willThrow();
            v216 = sub_1C6D79AA0();
            v217 = swift_allocObject();
            *(v217 + 16) = v315;
            v218 = sub_1C6D7A0E0();
            v219 = MEMORY[0x1E69E6158];
            v220 = v324;
            *(v217 + 56) = MEMORY[0x1E69E6158];
            *(v217 + 64) = v220;
            *(v217 + 32) = v218;
            *(v217 + 40) = v221;
            v326 = 0;
            v327 = 0xE000000000000000;
            v325 = v215;
            sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
            sub_1C6D79E60();
            v222 = v326;
            v223 = v327;
            *(v217 + 96) = v219;
            *(v217 + 104) = v220;
            *(v217 + 72) = v222;
            *(v217 + 80) = v223;
            sub_1C6D78D30("Failed to prune file at URL %{public}@ with error %{public}@", 60, 2, &dword_1C6B09000, v311, v216, v217);

            sub_1C6D7013C(v237, sub_1C6B68CA8);
            v212 = v303;
            v213 = v302;
            v209 = v277;
            v210 = v320;
          }
        }

        swift_beginAccess();
        sub_1C6B10FF4(0, &qword_1EDCDFAF0, sub_1C6B68CA8, MEMORY[0x1E69E62F8]);
        sub_1C6D70368(&qword_1EDCDFAE8, &qword_1EDCDFAF0, sub_1C6B68CA8, MEMORY[0x1E69E6318]);
        sub_1C6D70368(&qword_1EDCDFAE0, &qword_1EDCDFAF0, sub_1C6B68CA8, MEMORY[0x1E69E6348]);
        sub_1C6D79A60();
        swift_endAccess();
        v261 = swift_allocObject();
        *(v261 + 16) = v315;
        v262 = v306;
        sub_1C6D75BB0();
        v263 = sub_1C6D7A0E0();
        v265 = v264;
        v266 = v301;
        (v301)(v262, v211);
        v267 = MEMORY[0x1E69E6158];
        v268 = v324;
        *(v261 + 56) = MEMORY[0x1E69E6158];
        *(v261 + 64) = v268;
        *(v261 + 32) = v263;
        *(v261 + 40) = v265;
        sub_1C6D69CB4(v262);
        v269 = sub_1C6D7A0E0();
        v271 = v270;
        v266(v262, v211);
        *(v261 + 96) = v267;
        *(v261 + 104) = v268;
        *(v261 + 72) = v269;
        *(v261 + 80) = v271;
        v272 = sub_1C6D79AC0();
        sub_1C6D78D30("Finished pruning with %{public}@ pruned, total log size: %{public}@", 67, 2, &dword_1C6B09000, v311, v272, v261);

        (*(v284 + 8))(v296, v285);
        v266(v295, v211);
        v266(v294, v211);
        v266(v290, v211);
        v273 = v283;
        v274 = v318;
        (v318)(v313, v283);
        v274(v316, v273);
        v274(v319, v273);
        return (v274)(v323, v273);
      }

      else
      {
        (v301)(v200, v193);
        v136(v313, v146);
        v136(v316, v146);
        v136(v319, v146);
        return (v136)(v323, v146);
      }
    }

    else
    {
      v259 = v326;
      v260 = sub_1C6D75CC0();

      *&v315 = v260;
      swift_willThrow();
      v136(v169, v146);
      v136(v316, v146);
      if (qword_1EDCE7928 != -1)
      {
        swift_once();
      }

      v119 = qword_1EDCE7930;
      v120 = sub_1C6D79AA0();
      sub_1C6B1D314(0);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1C6D7EB10;
      sub_1C6D70320(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v122 = sub_1C6D7A0E0();
      v123 = v138;
      v125 = v124;
      v126 = MEMORY[0x1E69E6158];
      *(v121 + 56) = MEMORY[0x1E69E6158];
      v127 = sub_1C6B2064C();
      *(v121 + 64) = v127;
      *(v121 + 32) = v122;
      *(v121 + 40) = v125;
      v326 = 0;
      v327 = 0xE000000000000000;
      v128 = v315;
      v325 = v315;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v129 = v326;
      v130 = v327;
      *(v121 + 96) = v126;
      *(v121 + 104) = v127;
      *(v121 + 72) = v129;
      *(v121 + 80) = v130;
      sub_1C6D78D30("Failed to write file to URL %{public}@ with error %{public}@", 60, 2, &dword_1C6B09000, v119, v120, v121);

      v131 = v318;
      (v318)(v123, v146);
      return v131(v323, v146);
    }
  }

  else
  {
    if (qword_1EDCE7928 != -1)
    {
      swift_once();
    }

    v113 = qword_1EDCE7930;
    v114 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1C6D7E630;
    *(v115 + 56) = MEMORY[0x1E69E6158];
    *(v115 + 64) = sub_1C6B2064C();
    v116 = v322;
    *(v115 + 32) = v324;
    *(v115 + 40) = v116;

    sub_1C6D78D30("Failed to log file %{public}@ because target directory wasn't successfully processed", 84, 2, &dword_1C6B09000, v113, v114, v115);

    return (*(v321 + 8))(v94, v93);
  }
}

uint64_t sub_1C6D6DBCC(uint64_t a1, uint64_t a2)
{
  sub_1C6B10FF4(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t FileLog.deinit()
{
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration, type metadata accessor for FileLog.Configuration);
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory, type metadata accessor for FileLog.TargetDirectory);
  sub_1C6D702B0(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);

  return v0;
}

uint64_t FileLog.__deallocating_deinit()
{
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog_configuration, type metadata accessor for FileLog.Configuration);
  sub_1C6D7013C(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectory, type metadata accessor for FileLog.TargetDirectory);
  sub_1C6D702B0(v0 + OBJC_IVAR____TtC19NewsPersonalization7FileLog__targetDirectoryURL, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0]);

  return swift_deallocClassInstance();
}

void sub_1C6D6DEA4(uint64_t a1)
{
  if (!qword_1EDCEA328)
  {
    sub_1C6B37F88(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA328);
    }
  }
}

void sub_1C6D6DF0C(uint64_t a1)
{
  sub_1C6B10C98(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_1C6D6DF7C()
{
  result = qword_1EC1D9A70;
  if (!qword_1EC1D9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9A70);
  }

  return result;
}

void sub_1C6D6DFD0(uint64_t a1)
{
  if (!qword_1EDCE65C0)
  {
    sub_1C6B68CA8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE65C0);
    }
  }
}

void sub_1C6D6E03C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
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
        sub_1C6D75DE0();
        v6 = sub_1C6D797F0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C6D75DE0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C6D6E448(v8, v9, a1, v4);
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
    sub_1C6D6E168(0, v2, 1, a1);
  }
}

void sub_1C6D6E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = sub_1C6D75DE0();
  v9 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v10);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v17);
  v40 = a2;
  if (a3 != a2)
  {
    v53 = &v38 - v18;
    v20 = *a4;
    v22 = *(v9 + 16);
    v21 = v9 + 16;
    v23 = *(v21 + 56);
    v51 = v22;
    v52 = (v21 - 8);
    v24 = (v20 + v23 * (a3 - 1));
    v46 = -v23;
    v47 = (v21 + 16);
    v25 = a1 - a3;
    v48 = v20;
    v49 = v21;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v4;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v45;
      while (1)
      {
        v29 = v53;
        v30 = v51;
        (v51)(v53, v26, v28, v19);
        v30(v15, v24, v28);
        v31 = sub_1C6D6AFA8(v29, v15);
        v54 = v27;
        if (v27)
        {
          v37 = *v52;
          (*v52)(v15, v28);
          v37(v29, v28);
          return;
        }

        v32 = v31;
        v33 = *v52;
        (*v52)(v15, v28);
        v33(v29, v28);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return;
        }

        v34 = *v47;
        v35 = v50;
        (*v47)(v50, v26, v28);
        swift_arrayInitWithTakeFrontToBack();
        v34(v24, v35, v28);
        v24 += v46;
        v26 += v46;
        v36 = __CFADD__(v25++, 1);
        v27 = v54;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v27 = v54;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C6D6E448(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v211 = a4;
  v210 = a1;
  v5 = sub_1C6D75F50();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v221 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v220 = &v206 - v11;
  sub_1C6D7019C(0);
  v232 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v248 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1C6D75CA0();
  v15 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223, v16);
  v231 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v233 = &v206 - v20;
  sub_1C6B10FF4(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v230 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v249 = &v206 - v26;
  v27 = sub_1C6D75DE0();
  MEMORY[0x1EEE9AC00](v27, v28);
  v212 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v224 = &v206 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v234 = &v206 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v251 = &v206 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v206 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v208 = &v206 - v47;
  v52.n128_f64[0] = MEMORY[0x1EEE9AC00](v48, v49);
  v207 = &v206 - v53;
  v218 = a3;
  v54 = a3[1];
  v217 = v51;
  if (v54 < 1)
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v6 = *v210;
    if (*v210)
    {
      v15 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v250;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_170;
      }

      v199 = v15;
      goto LABEL_136;
    }

    goto LABEL_179;
  }

  v215 = v50;
  v55 = 0;
  v238 = v51 + 16;
  v237 = (v51 + 8);
  v235 = (v51 + 32);
  v229 = *MEMORY[0x1E695DA98];
  v240 = (v6 + 56);
  v222 = (v15 + 8);
  v228 = (v6 + 48);
  v219 = (v6 + 32);
  v225 = (v6 + 8);
  v56 = MEMORY[0x1E69E7CC0];
  v241 = v5;
  v239 = v27;
  while (1)
  {
    v213 = v56;
    v236 = v55;
    if (v55 + 1 >= v54)
    {
      v74 = v55 + 1;
      v75 = v211;
    }

    else
    {
      v57 = v55;
      v216 = v54;
      v58 = *v218;
      v59 = *(v51 + 72);
      v6 = *v218 + v59 * (v55 + 1);
      v60 = *(v51 + 16);
      v61 = v207;
      v60(v207, v6, v27, v52);
      v247 = v58;
      v62 = v58 + v59 * v57;
      v63 = v208;
      (v60)(v208, v62, v27);
      v64 = v250;
      LODWORD(v246) = sub_1C6D6AFA8(v61, v63);
      if (v64)
      {
        v205 = *v237;
        (*v237)(v63, v27);
        v205(v61, v27);
        goto LABEL_147;
      }

      v250 = 0;
      v15 = v27;
      v65 = *v237;
      (*v237)(v63, v15);
      v65(v61, v15);
      v66 = v236 + 2;
      v67 = v247 + v59 * (v236 + 2);
      v68 = v59;
      v247 = v59;
      while (v216 != v66)
      {
        v15 = v239;
        (v60)(v44, v67, v239);
        v69 = v44;
        v70 = v215;
        (v60)(v215, v6, v15);
        v71 = v250;
        v72 = sub_1C6D6AFA8(v69, v70);
        v250 = v71;
        if (v71)
        {
          v65(v70, v15);
          v65(v69, v15);
          goto LABEL_147;
        }

        v73 = v72;
        v65(v70, v15);
        v65(v69, v15);
        ++v66;
        v68 = v247;
        v67 += v247;
        v6 += v247;
        v44 = v69;
        if ((v246 ^ v73))
        {
          v74 = v66 - 1;
          goto LABEL_13;
        }
      }

      v74 = v216;
LABEL_13:
      v51 = v217;
      v75 = v211;
      v5 = v241;
      v76 = v213;
      v27 = v239;
      if (v246)
      {
        if (v74 < v236)
        {
          goto LABEL_173;
        }

        if (v236 < v74)
        {
          v15 = v68 * (v74 - 1);
          v77 = v74 * v68;
          v216 = v74;
          v78 = v236;
          v79 = v236 * v68;
          v209 = v44;
          do
          {
            if (v78 != --v74)
            {
              v81 = *v218;
              if (!*v218)
              {
                goto LABEL_177;
              }

              v6 = v81 + v79;
              v82 = *v235;
              (*v235)(v212, v81 + v79, v239, v76);
              if (v79 < v15 || v6 >= v81 + v77)
              {
                v80 = v239;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v80 = v239;
                if (v79 != v15)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v82((v81 + v15), v212, v80);
              v51 = v217;
              v75 = v211;
              v5 = v241;
              v76 = v213;
              v44 = v209;
              v68 = v247;
            }

            ++v78;
            v15 -= v68;
            v77 -= v68;
            v79 += v68;
          }

          while (v78 < v74);
          v27 = v239;
          v74 = v216;
        }
      }
    }

    v83 = v218[1];
    if (v74 >= v83)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v74, v236))
    {
      goto LABEL_169;
    }

    if (v74 - v236 >= v75)
    {
LABEL_35:
      v6 = v74;
      goto LABEL_36;
    }

    if (__OFADD__(v236, v75))
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      return;
    }

    if (v236 + v75 < v83)
    {
      v83 = v236 + v75;
    }

    if (v83 < v236)
    {
      goto LABEL_172;
    }

    if (v74 == v83)
    {
      goto LABEL_35;
    }

    v214 = v83;
    v209 = v44;
    v245 = *v218;
    v131 = v51;
    sub_1C6B20704(0);
    v247 = v132;
    v227 = *(v131 + 72);
    v226 = *(v131 + 16);
    v133 = v234;
LABEL_89:
    v216 = v74;
    v135 = v74;
LABEL_90:
    v136 = v135 - 1;
    v137 = v245;
    v138 = v227;
    v243 = v245 + v227 * v135;
    v139 = v226;
    v226(v251);
    v244 = v136;
    v242 = v137 + v136 * v138;
    v139(v133);
    v140 = v229;
    v253 = v229;
    v6 = sub_1C6D79D30();
    v141 = v6 + 56;
    v142 = v253;
    v246 = v140;
    sub_1C6D795A0();
    sub_1C6D7A260();
    v143 = v142;
    sub_1C6D79610();
    v15 = sub_1C6D7A2B0();

    v144 = -1 << *(v6 + 32);
    v145 = v15 & ~v144;
    v146 = v145 >> 6;
    v147 = *(v6 + 56 + 8 * (v145 >> 6));
    v148 = 1 << v145;
    if (((1 << v145) & v147) == 0)
    {
      goto LABEL_99;
    }

    v149 = ~v144;
LABEL_92:
    v150 = sub_1C6D795A0();
    v152 = v151;
    v153 = sub_1C6D795A0();
    v15 = v154;
    if (v150 != v153 || v152 != v154)
    {
      break;
    }

LABEL_103:
    v5 = v241;
LABEL_104:
    sub_1C6D7013C(&v253, type metadata accessor for URLResourceKey);
    v159 = v233;
    v160 = v250;
    sub_1C6D75CE0();
    if (v160)
    {

      (*v240)(v249, 1, 1, v5);
    }

    else
    {

      sub_1C6D75C80();
      (*v222)(v159, v223);
    }

    v252 = v246;
    v6 = sub_1C6D79D30();
    v161 = v6 + 56;
    v162 = v252;
    sub_1C6D795A0();
    sub_1C6D7A260();
    v163 = v162;
    sub_1C6D79610();
    v15 = sub_1C6D7A2B0();

    v164 = -1 << *(v6 + 32);
    v165 = v15 & ~v164;
    v166 = v165 >> 6;
    v167 = *(v6 + 56 + 8 * (v165 >> 6));
    v168 = 1 << v165;
    if (((1 << v165) & v167) != 0)
    {
      v250 = v163;
      v169 = ~v164;
      while (1)
      {
        v170 = sub_1C6D795A0();
        v172 = v171;
        v174 = sub_1C6D795A0();
        v175 = v170;
        v15 = v173;
        if (v175 == v174 && v172 == v173)
        {

          goto LABEL_120;
        }

        v177 = sub_1C6D7A130();

        if (v177)
        {
          break;
        }

        v165 = (v165 + 1) & v169;
        v166 = v165 >> 6;
        v167 = *(v161 + 8 * (v165 >> 6));
        v168 = 1 << v165;
        if (((1 << v165) & v167) == 0)
        {
          v163 = v250;
          goto LABEL_116;
        }
      }

LABEL_120:
      v5 = v241;
      v27 = v239;
    }

    else
    {
LABEL_116:
      *(v161 + 8 * v166) = v168 | v167;
      *(*(v6 + 48) + 8 * v165) = v163;
      v178 = *(v6 + 16);
      v99 = __OFADD__(v178, 1);
      v179 = v178 + 1;
      v5 = v241;
      v27 = v239;
      if (v99)
      {
        goto LABEL_151;
      }

      *(v6 + 16) = v179;
    }

    sub_1C6D7013C(&v252, type metadata accessor for URLResourceKey);
    v180 = v231;
    v133 = v234;
    sub_1C6D75CE0();
    v181 = v230;

    sub_1C6D75C80();
    (*v222)(v180, v223);
    v182 = *(v232 + 48);
    v183 = MEMORY[0x1E6969530];
    v184 = v248;
    sub_1C6D70230(v249, v248, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    sub_1C6D70230(v181, v184 + v182, &qword_1EDCEA960, v183);
    v185 = *v228;
    LODWORD(v183) = (*v228)(v184, 1, v5);
    v186 = v185(v184 + v182, 1, v5);
    v250 = 0;
    if (v183 != 1)
    {
      if (v186 == 1)
      {
        (*v225)(v248, v5);
        v187 = *v237;
        (*v237)(v133, v27);
        v187(v251, v27);
        v188 = v236;
      }

      else
      {
        v189 = *v219;
        v190 = v220;
        v191 = v248;
        (*v219)(v220, v248, v5);
        v192 = v191 + v182;
        v193 = v221;
        v189(v221, v192, v5);
        LOBYTE(v189) = sub_1C6D75EE0();
        v194 = *v225;
        (*v225)(v193, v5);
        v194(v190, v5);
        v15 = *v237;
        (*v237)(v133, v27);
        (v15)(v251, v27);
        v188 = v236;
        if ((v189 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      if (!v245)
      {
        goto LABEL_174;
      }

      v195 = *v235;
      v15 = v224;
      (*v235)(v224, v243, v27);
      v196 = v242;
      swift_arrayInitWithTakeFrontToBack();
      v195(v196, v15, v27);
      v135 = v244;
      if (v244 == v188)
      {
        goto LABEL_88;
      }

      goto LABEL_90;
    }

    if (v186 != 1)
    {
      sub_1C6D702B0(v248 + v182, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    }

    v15 = v237;
    v134 = *v237;
    (*v237)(v133, v27);
    v134(v251, v27);
LABEL_88:
    v74 = v216 + 1;
    if (v216 + 1 != v214)
    {
      goto LABEL_89;
    }

    v44 = v209;
    v6 = v214;
LABEL_36:
    v84 = v236;
    if (v6 < v236)
    {
      goto LABEL_168;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v56 = v213;
    }

    else
    {
      v56 = sub_1C6B657D0(0, *(v213 + 2) + 1, 1, v213);
    }

    v86 = *(v56 + 2);
    v85 = *(v56 + 3);
    v15 = v86 + 1;
    v51 = v217;
    if (v86 >= v85 >> 1)
    {
      v197 = sub_1C6B657D0((v85 > 1), v86 + 1, 1, v56);
      v51 = v217;
      v56 = v197;
    }

    *(v56 + 2) = v15;
    v87 = &v56[16 * v86];
    *(v87 + 4) = v84;
    *(v87 + 5) = v6;
    v214 = v6;
    v6 = *v210;
    if (!*v210)
    {
      goto LABEL_178;
    }

    if (v86)
    {
      while (1)
      {
        v88 = v15 - 1;
        if (v15 >= 4)
        {
          break;
        }

        if (v15 == 3)
        {
          v89 = *(v56 + 4);
          v90 = *(v56 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_56:
          if (v92)
          {
            goto LABEL_157;
          }

          v105 = &v56[16 * v15];
          v107 = *v105;
          v106 = *(v105 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_160;
          }

          v111 = &v56[16 * v88 + 32];
          v113 = *v111;
          v112 = *(v111 + 1);
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_164;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v15 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v115 = &v56[16 * v15];
        v117 = *v115;
        v116 = *(v115 + 1);
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_70:
        if (v110)
        {
          goto LABEL_159;
        }

        v118 = &v56[16 * v88];
        v120 = *(v118 + 4);
        v119 = *(v118 + 5);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_162;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_77:
        v126 = v88 - 1;
        if (v88 - 1 >= v15)
        {
          goto LABEL_152;
        }

        if (!*v218)
        {
          goto LABEL_175;
        }

        v127 = v56;
        v15 = *&v56[16 * v126 + 32];
        v128 = *&v56[16 * v88 + 40];
        v129 = v250;
        sub_1C6D6FA38(*v218 + *(v51 + 72) * v15, *v218 + *(v51 + 72) * *&v56[16 * v88 + 32], *v218 + *(v51 + 72) * v128, v6);
        v250 = v129;
        if (v129)
        {
          goto LABEL_147;
        }

        if (v128 < v15)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1C6C73C90(v127);
        }

        if (v126 >= *(v127 + 2))
        {
          goto LABEL_154;
        }

        v130 = &v127[16 * v126];
        *(v130 + 4) = v15;
        *(v130 + 5) = v128;
        v254 = v127;
        sub_1C6C73C04(v88);
        v56 = v254;
        v15 = *(v254 + 2);
        v51 = v217;
        if (v15 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = &v56[16 * v15 + 32];
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_155;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_156;
      }

      v100 = &v56[16 * v15];
      v102 = *v100;
      v101 = *(v100 + 1);
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_158;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_161;
      }

      if (v104 >= v96)
      {
        v122 = &v56[16 * v88 + 32];
        v124 = *v122;
        v123 = *(v122 + 1);
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_167;
        }

        if (v91 < v125)
        {
          v88 = v15 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v54 = v218[1];
    v55 = v214;
    if (v214 >= v54)
    {
      goto LABEL_133;
    }
  }

  v156 = sub_1C6D7A130();

  if (v156)
  {

    goto LABEL_103;
  }

  v145 = (v145 + 1) & v149;
  v146 = v145 >> 6;
  v147 = *(v141 + 8 * (v145 >> 6));
  v148 = 1 << v145;
  if (((1 << v145) & v147) != 0)
  {
    goto LABEL_92;
  }

  v5 = v241;
LABEL_99:
  *(v141 + 8 * v146) = v148 | v147;
  *(*(v6 + 48) + 8 * v145) = v143;
  v157 = *(v6 + 16);
  v99 = __OFADD__(v157, 1);
  v158 = v157 + 1;
  if (!v99)
  {
    *(v6 + 16) = v158;
    goto LABEL_104;
  }

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
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v199 = sub_1C6C73C90(v15);
LABEL_136:
  v254 = v199;
  v15 = *(v199 + 2);
  v200 = v217;
  if (v15 >= 2)
  {
    while (*v218)
    {
      v201 = *&v199[16 * v15];
      v202 = v199;
      v203 = *&v199[16 * v15 + 24];
      sub_1C6D6FA38(*v218 + *(v200 + 72) * v201, *v218 + *(v200 + 72) * *&v199[16 * v15 + 16], *v218 + *(v200 + 72) * v203, v6);
      if (v5)
      {
        goto LABEL_147;
      }

      if (v203 < v201)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v202 = sub_1C6C73C90(v202);
      }

      if (v15 - 2 >= *(v202 + 2))
      {
        goto LABEL_166;
      }

      v204 = &v202[16 * v15];
      *v204 = v201;
      *(v204 + 1) = v203;
      v254 = v202;
      sub_1C6C73C04(v15 - 1);
      v199 = v254;
      v15 = *(v254 + 2);
      v200 = v217;
      if (v15 <= 1)
      {
        goto LABEL_147;
      }
    }

    goto LABEL_176;
  }

LABEL_147:
}

void sub_1C6D6FA38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80 = a3;
  v9 = sub_1C6D75DE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  MEMORY[0x1EEE9AC00](&v65 - v18, v19);
  v23 = &v65 - v22;
  v76 = *(v24 + 72);
  if (!v76)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v76 == -1)
  {
    goto LABEL_66;
  }

  v25 = v80 - a2;
  if (v80 - a2 == 0x8000000000000000 && v76 == -1)
  {
    goto LABEL_67;
  }

  v26 = (a2 - a1) / v76;
  v83 = a1;
  v82 = a4;
  v78 = v9;
  if (v26 >= v25 / v76)
  {
    v74 = v21;
    v75 = v15;
    v28 = v25 / v76 * v76;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v28;
    if (v28 >= 1)
    {
      v41 = v75;
      v42 = -v76;
      v71 = (v10 + 16);
      v72 = (v10 + 8);
      v43 = v40;
      v77 = a4;
      v68 = a1;
      v69 = -v76;
      do
      {
        v79 = v5;
        v66 = v40;
        v44 = a2;
        v45 = a2 + v42;
        v70 = v45;
        v73 = v44;
        while (1)
        {
          v48 = v80;
          if (v44 <= a1)
          {
            v83 = v44;
            v63 = v66;
LABEL_62:
            v81 = v63;
            goto LABEL_64;
          }

          v67 = v40;
          v76 = v43;
          v49 = v43 + v42;
          v50 = *v71;
          v51 = v78;
          (*v71)(v41, v43 + v42, v78);
          v52 = v45;
          v53 = v42;
          v54 = v74;
          v50(v74, v52, v51);
          v55 = v79;
          v56 = sub_1C6D6AFA8(v41, v54);
          v79 = v55;
          if (v55)
          {
            v64 = *v72;
            (*v72)(v54, v51);
            v64(v41, v51);
            v83 = v73;
            v63 = v67;
            goto LABEL_62;
          }

          v57 = v56;
          v80 = v48 + v53;
          v58 = *v72;
          (*v72)(v54, v51);
          v58(v41, v51);
          if (v57)
          {
            break;
          }

          v40 = v49;
          v59 = v68;
          if (v48 < v76 || v80 >= v76)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v69;
            v45 = v70;
            v46 = v77;
          }

          else
          {
            v42 = v69;
            v45 = v70;
            v46 = v77;
            if (v48 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v43 = v49;
          v47 = v49 > v46;
          v41 = v75;
          a1 = v59;
          v44 = v73;
          if (!v47)
          {
            a2 = v73;
            goto LABEL_63;
          }
        }

        a1 = v68;
        if (v48 < v73 || v80 >= v73)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v61 = v77;
          v5 = v79;
          v40 = v67;
          v42 = v69;
        }

        else
        {
          v60 = v48 == v73;
          v42 = v69;
          a2 = v70;
          v61 = v77;
          v5 = v79;
          v40 = v67;
          if (!v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v41 = v75;
        v43 = v76;
      }

      while (v76 > v61);
    }

LABEL_63:
    v83 = a2;
    v81 = v40;
  }

  else
  {
    v27 = v26 * v76;
    v75 = v20;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v74 = a4 + v27;
    v81 = a4 + v27;
    if (v27 >= 1 && a2 < v80)
    {
      v30 = *(v10 + 16);
      v73 = v10 + 16;
      v71 = v30;
      v72 = (v10 + 8);
      while (1)
      {
        v31 = a2;
        v32 = a4;
        v33 = v71;
        (v71)(v23, a2, v9);
        v34 = v23;
        v35 = v75;
        v77 = v32;
        (v33)(v75, v32, v9);
        v36 = sub_1C6D6AFA8(v34, v35);
        if (v5)
        {
          break;
        }

        v37 = v36;
        v79 = 0;
        v38 = *v72;
        (*v72)(v35, v9);
        v38(v34, v9);
        v23 = v34;
        if (v37)
        {
          v39 = v76;
          a2 = v31 + v76;
          if (a1 < v31 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v77;
        }

        else
        {
          v39 = v76;
          a4 = v77 + v76;
          a2 = v31;
          if (a1 < v77 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v82 = a4;
        }

        a1 += v39;
        v83 = a1;
        v5 = v79;
        if (a4 < v74)
        {
          v9 = v78;
          if (a2 < v80)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v62 = *v72;
      (*v72)(v35, v9);
      v62(v34, v9);
    }
  }

LABEL_64:
  sub_1C6C73E04(&v83, &v82, &v81);
}

uint64_t sub_1C6D700D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D7013C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6D7019C(uint64_t a1)
{
  if (!qword_1EDCEA398)
  {
    sub_1C6B10FF4(255, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA398);
    }
  }
}

uint64_t sub_1C6D70230(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B10FF4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D702B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B10FF4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D70320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D70368(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B10FF4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6D703C8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for RecommendedTagsService.OutputNames(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  v34 = a2;
  v17 = a1;
  sub_1C6D784F0();
  if (!v3)
  {
    v36 = v13;
    v32 = 0;
    sub_1C6D78500();
    v18 = v35;

    v19 = [v18 recommendedTagsConfiguration];

    if (!v19)
    {
      sub_1C6D70F58();
      v17 = swift_allocError();
      swift_willThrow();
      v26 = v36;
      goto LABEL_9;
    }

    v20 = &selRef_bundleInputOutputConfiguration;
    if ((a3 & 1) == 0)
    {
      v20 = &selRef_nonBundleInputOutputConfiguration;
    }

    v21 = [v19 *v20];
    v22 = [v21 recommendationsOutputName];
    sub_1C6D795A0();

    sub_1C6D783C0();
    v23 = [v21 recommendationsScoreOutputName];
    sub_1C6D795A0();

    sub_1C6D783C0();
    sub_1C6BB320C();
    v24 = v32;
    v25 = sub_1C6D786C0();
    if (v24)
    {
      v17 = v24;

      sub_1C6D70FAC(v10);
      v26 = v36;
LABEL_9:
      (*(v26 + 8))(v16, v12);
      return v17;
    }

    v27 = v25;
    v28 = sub_1C6D786D0();
    v29 = v36;
    v17 = sub_1C6C1A420(v27, v28);

    sub_1C6D70FAC(v10);
    (*(v29 + 8))(v16, v12);
  }

  return v17;
}

uint64_t type metadata accessor for RecommendedTagsService.OutputNames(uint64_t a1)
{
  result = qword_1EC1D9A80;
  if (!qword_1EC1D9A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6D70774@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75F80();
  v82 = *(v12 - 8);
  *&v83 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for RecommendedTagsService.OutputNames(0);
  MEMORY[0x1EEE9AC00](v81, v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C6D783E0();
  v19 = *(v84 - 8);
  v21 = MEMORY[0x1EEE9AC00](v84, v20);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [*(a1 + 24) recommendedTagsConfiguration];
  if (!v24)
  {
    sub_1C6D70F58();
    swift_allocError();
    return swift_willThrow();
  }

  v76 = a4;
  v77 = v19;
  v78 = v4;
  if (a2)
  {
    v25 = &selRef_bundleInputOutputConfiguration;
  }

  else
  {
    v25 = &selRef_nonBundleInputOutputConfiguration;
  }

  v26 = *v25;
  v79 = a3;
  v27 = v24;
  v28 = [v24 v26];
  v29 = [v28 contextFeatureKey];
  sub_1C6D795A0();

  v85 = v23;
  sub_1C6D783C0();

  v30 = [v27 *v25];
  v31 = [v30 recommendationsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  v32 = [v30 recommendationsScoreOutputName];
  sub_1C6D795A0();

  v33 = *(v81 + 20);
  v81 = v18;
  v73 = v33;
  sub_1C6D783C0();

  v75 = v27;
  v34 = [v27 contextConfiguration];
  [v34 maximumTagCount];

  v35 = sub_1C6B75C84();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1C6D75F70();
  v42 = sub_1C6D75F60();
  v74 = v43;
  (*(v82 + 1))(v15, v83);
  v79 = v42;
  if ((v41 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v44 = v84;
LABEL_7:
    sub_1C6B6E3BC(v35, v37, v39, v41);
    v46 = v45;
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  sub_1C6D7A190();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  v44 = v84;
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v48 + 16);

  if (__OFSUB__(v41 >> 1, v39))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v49 != (v41 >> 1) - v39)
  {
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v46 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v46)
  {
    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

LABEL_16:
  v84 = v35;
  sub_1C6B9656C(v46);
  v51 = v50;

  sub_1C6D71008(0, &qword_1EDCE7D20, sub_1C6B9F304);
  sub_1C6B9F304(0);
  v53 = v52 - 8;
  v54 = (*(*(v52 - 8) + 80) + 32) & ~*(*(v52 - 8) + 80);
  v55 = swift_allocObject();
  v83 = xmmword_1C6D7E630;
  *(v55 + 16) = xmmword_1C6D7E630;
  v56 = v55 + v54;
  v57 = *(v53 + 56);
  v58 = v77;
  v59 = v77 + 16;
  v60 = *(v77 + 16);
  v60(v56, v85, v44);
  *(v56 + v57) = v51;
  v61 = *MEMORY[0x1E6996130];
  v62 = sub_1C6D78760();
  (*(*(v62 - 8) + 104))(v56 + v57, v61, v62);
  sub_1C6D787D0();
  v82 = "oupingEligibilityPolicy";
  sub_1C6D71008(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
  v63 = *(v59 + 56);
  v64 = (*(v59 + 64) + 32) & ~*(v59 + 64);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1C6D7EB10;
  v66 = v65 + v64;
  v67 = v81;
  v60(v66, v81, v44);
  v60(v66 + v63, (v67 + v73), v44);
  sub_1C6C07550(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v68 = v74;

  v69 = v79;
  sub_1C6D78790();
  if (qword_1EC1D5AA0 != -1)
  {
    swift_once();
  }

  v70 = qword_1EC1D85A8;
  sub_1C6D71008(0, &qword_1EDCEA8A0, sub_1C6B47670);
  v71 = swift_allocObject();
  *(v71 + 16) = v83;
  *(v71 + 56) = MEMORY[0x1E69E6158];
  *(v71 + 64) = sub_1C6B2064C();
  *(v71 + 32) = v69;
  *(v71 + 40) = v68;
  v72 = sub_1C6D79AC0();
  sub_1C6D78D30("Running on global graph with request ID %{public}@", 50, 2, &dword_1C6B09000, v70, v72, v71);
  swift_unknownObjectRelease();

  sub_1C6D70FAC(v67);
  return (*(v58 + 8))(v85, v44);
}

unint64_t sub_1C6D70F58()
{
  result = qword_1EC1D9A78;
  if (!qword_1EC1D9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9A78);
  }

  return result;
}

uint64_t sub_1C6D70FAC(uint64_t a1)
{
  v2 = type metadata accessor for RecommendedTagsService.OutputNames(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6D71008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6D71094(uint64_t a1)
{
  result = sub_1C6D783E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6D71104()
{
  result = qword_1EC1D9A90;
  if (!qword_1EC1D9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9A90);
  }

  return result;
}

uint64_t sub_1C6D71158(uint64_t a1)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D720F4(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78C30();
}

uint64_t sub_1C6D71200(uint64_t a1)
{
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  sub_1C6D720F4(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);
  return sub_1C6D78C30();
}

id sub_1C6D712A8(unsigned __int8 *a1, id a2)
{
  if ([a2 respondsToSelector_])
  {
    v4 = [a2 hasAudioTrack];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  if ([a2 respondsToSelector_])
  {
    v5 = [a2 isFeatured];
  }

  else
  {
    v5 = 0;
  }

  a1[1] = v5;
  if ([a2 respondsToSelector_])
  {
    v6 = [a2 isEvergreen];
  }

  else
  {
    v6 = 0;
  }

  a1[2] = v6;
  a1[3] = [a2 isANF];
  a1[4] = [a2 isPaid];
  result = [a2 hasVideo];
  a1[5] = result;
  return result;
}

uint64_t sub_1C6D713B4(uint64_t *a1, void *a2, uint64_t a3)
{
  sub_1C6D72018(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v18[-v9];
  v11 = [a2 identifier];
  v12 = sub_1C6D795A0();
  v14 = v13;

  *a1 = v12;
  a1[1] = v14;
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v19 = a3;
  v20 = a2;
  sub_1C6D720F4(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D78C30();
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return sub_1C6D7206C(v10, a1 + *(v16 + 20), &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
}

void sub_1C6D7159C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C6D72018(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v88 = &v87 - v8;
  v9 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v87 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v91 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D72018(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v87 - v16;
  v18 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v99 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a2 publisherID];
  if (v23)
  {
    v89 = v17;
    v24 = v19;
    v25 = v18;
    v26 = a2;
    v27 = a3;
    v28 = v23;
    v29 = sub_1C6D795A0();
    v31 = v30;

    v32 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + v32);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v34 = sub_1C6D2BEA8(v34);
      *(a1 + v32) = v34;
    }

    swift_beginAccess();
    *(v34 + 3) = v29;
    *(v34 + 4) = v31;

    a3 = v27;
    a2 = v26;
    v18 = v25;
    v19 = v24;
    v17 = v89;
  }

  v35 = [a2 topicIDs];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1C6D79780();

    v38 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(a1 + v38);
    if ((v39 & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v40 = sub_1C6D2BEA8(v40);
      *(a1 + v38) = v40;
    }

    swift_beginAccess();
    *(v40 + 2) = v37;
  }

  v41 = [a2 iAdCategories];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1C6D79780();

    v44 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a1 + v44);
    if ((v45 & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v46 = sub_1C6D2BEA8(v46);
      *(a1 + v44) = v46;
    }

    v47 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    *&v46[v47] = v43;
  }

  sub_1C6D71200(a3);
  v48 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(a1 + v48);
  if ((v49 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v50 = sub_1C6D2BEA8(v50);
    *(a1 + v48) = v50;
  }

  sub_1C6BB7E24(v99, v17, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  (*(v19 + 56))(v17, 0, 1, v18);
  v51 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D7206C(v17, &v50[v51], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  swift_endAccess();
  if (([a2 respondsToSelector_] & 1) == 0)
  {
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v54 = 0;
    v53 = v93;
    if (v55)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v52 = [a2 bodyTextLength];
  v53 = v93;
  if (HIDWORD(v52))
  {
    v54 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_21;
    }

LABEL_20:
    v56 = *(a1 + v48);
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    *(a1 + v48) = sub_1C6D2BEA8(v56);
    goto LABEL_21;
  }

  v54 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v57 = *(a1 + v48);
  v58 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *(v57 + v58) = v54;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v48);
  if ((v59 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v60 = sub_1C6D2BEA8(v60);
    *(a1 + v48) = v60;
  }

  v61 = &v60[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  swift_beginAccess();
  *v61 = 0;
  v61[8] = 1;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a1 + v48);
  if ((v62 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v63 = sub_1C6D2BEA8(v63);
    *(a1 + v48) = v63;
  }

  v64 = &v63[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  swift_beginAccess();
  *v64 = 0;
  v64[8] = 1;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *(a1 + v48);
  if ((v65 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v66 = sub_1C6D2BEA8(v66);
    *(a1 + v48) = v66;
  }

  v67 = &v66[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  swift_beginAccess();
  *v67 = 0;
  v67[8] = 1;
  if ([a2 respondsToSelector_])
  {
    v68 = [a2 float16TitleEncoding];
    if (v68)
    {
      v69 = v68;
      v70 = sub_1C6D75E60();
      v72 = v71;

      v97 = v70;
      v98 = v72;
      v96 = 0;
      v94 = 0u;
      v95 = 0u;
      sub_1C6B1CD10(v70, v72);
      sub_1C6D78A70();
      sub_1C6D720F4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6D78C00();
      if (v53)
      {
        v73 = sub_1C6D79AA0();
        sub_1C6B1D314(0);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1C6D7EB10;
        v75 = [a2 articleID];
        v76 = sub_1C6D795A0();
        v78 = v77;

        v79 = MEMORY[0x1E69E6158];
        *(v74 + 56) = MEMORY[0x1E69E6158];
        v80 = sub_1C6B2064C();
        *(v74 + 64) = v80;
        *(v74 + 32) = v76;
        *(v74 + 40) = v78;
        *&v94 = 0;
        *(&v94 + 1) = 0xE000000000000000;
        v97 = v53;
        sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
        sub_1C6D79E60();
        v81 = v94;
        *(v74 + 96) = v79;
        *(v74 + 104) = v80;
        *(v74 + 72) = v81;
        sub_1C6B1AAB0();
        v82 = sub_1C6D79BD0();
        sub_1C6D78D30("Failed to include embedding when creating session article from headline %{public}@, error: %{public}@", 101, 2, &dword_1C6B09000, v82, v73, v74);
        sub_1C6B1C9F0(v70, v72);
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1C6B1C9F0(v70, v72);
          v83 = *(a1 + v48);
        }

        else
        {
          type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
          swift_allocObject();

          v83 = sub_1C6D2BEA8(v84);
          sub_1C6B1C9F0(v70, v72);

          *(a1 + v48) = v83;
        }

        v85 = v88;
        sub_1C6BB7E24(v91, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v87 + 56))(v85, 0, 1, v92);
        v86 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
        swift_beginAccess();
        sub_1C6D7206C(v85, &v83[v86], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        swift_endAccess();
      }
    }
  }
}

void sub_1C6D72018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6D7206C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D72018(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D720F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6D72234(uint64_t a1, uint64_t a2)
{
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.legacy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6D746A8(v2, &v12 - v6, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1C6D7456C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  sub_1C6D74638(v7, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  result = sub_1C6D78A30();
  v11 = a1 + *(v9 + 32);
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_1C6D7247C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D72C8C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D74638(a2, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D7456C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.legacy.setter(uint64_t a1)
{
  sub_1C6D74638(v1, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D7456C(a1, v1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.legacy.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6D746A8(v1, v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6D74638(v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    sub_1C6D78A30();
    v16 = v13 + *(v10 + 32);
    *v16 = 0;
    *(v16 + 4) = 1;
  }

  else
  {
    sub_1C6D7456C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  return sub_1C6D72884;
}

void sub_1C6D72884(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6D72C8C((*a1)[3], v6, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    sub_1C6D74638(v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D7456C(v6, v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  else
  {
    sub_1C6D74638(**a1, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D7456C(v7, v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C6D72C28(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1C6D72C8C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D72C8C(a2, &v7[v9], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  LOBYTE(a2) = _s19NewsPersonalization010Com_Apple_a1_B51Storage_CompressedSessionEventArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, &v7[v9]);
  sub_1C6D7450C(&v7[v9], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  return a2 & 1;
}

void sub_1C6D72C28(uint64_t a1)
{
  if (!qword_1EC1D9AB0)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9AB0);
    }
  }
}

uint64_t sub_1C6D72C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D72CF4(uint64_t a1, uint64_t a2)
{
  sub_1C6D72C28(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1C6D72C8C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D72C8C(a2, &v7[v9], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  LOBYTE(a2) = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.== infix(_:_:)();
  sub_1C6D7450C(&v7[v9], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t sub_1C6D72E04()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9A98);
  __swift_project_value_buffer(v0, qword_1EC1D9A98);
  sub_1C6D745D4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "legacy";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D730A4(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D730A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v43 - v22;
  sub_1C6D745D4(0, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, v11);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v49 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v43 - v30;
  v46 = v5;
  v32 = *(v5 + 56);
  v50 = v4;
  v32(&v43 - v30, 1, 1, v4, v29);
  sub_1C6D746A8(v55, v15, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v43 = v17;
  v44 = v16;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6D74638(v15, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    v34 = v50;
  }

  else
  {
    sub_1C6D7456C(v15, v23, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    v35 = v47;
    sub_1C6D7456C(v23, v47, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D74638(v31, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v36 = v35;
    v37 = v48;
    sub_1C6D7456C(v36, v48, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    sub_1C6D7456C(v37, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v34 = v50;
    (v32)(v31, 0, 1, v50);
  }

  sub_1C6D74118(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v38 = v51;
  sub_1C6D78BB0();
  v39 = v49;
  if (v38)
  {
    return sub_1C6D74638(v31, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  sub_1C6D746A8(v31, v49, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  if ((*(v46 + 48))(v39, 1, v34) == 1)
  {
    sub_1C6D74638(v31, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    return sub_1C6D74638(v39, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  else
  {
    v41 = v45;
    sub_1C6D7456C(v39, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6D74638(v31, qword_1EDCE2B50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v42 = v55;
    sub_1C6D74638(v55, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6D7456C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    return (*(v43 + 56))(v42, 0, 1, v44);
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D73704(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D73704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D746A8(a1, v8, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_1C6D74638(v8, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  }

  sub_1C6D7456C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D74118(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D78CF0();
  return sub_1C6D7450C(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6D74118(&qword_1EC1D9AB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D739C0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_1C6D78A30();
}

uint64_t sub_1C6D73A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D74118(&qword_1EC1D9AC8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D73AF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5C10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D73BA0(uint64_t a1)
{
  v2 = sub_1C6D74118(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D73C0C(uint64_t a1, uint64_t a2)
{
  sub_1C6D74118(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1C6D72C28(0);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - v14;
  sub_1C6D74478(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  v31 = a1;
  sub_1C6D746A8(a1, v19, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v32 = a2;
  sub_1C6D746A8(a2, &v19[v21], &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v22 = *(v9 + 48);
  if (v22(v19, 1, v8) == 1)
  {
    if (v22(&v19[v21], 1, v8) == 1)
    {
      sub_1C6D74638(v19, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
LABEL_9:
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
      sub_1C6D78A40();
      sub_1C6D74118(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v23 = sub_1C6D79560();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6D746A8(v19, v15, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v22(&v19[v21], 1, v8) == 1)
  {
    sub_1C6D7450C(v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
LABEL_6:
    sub_1C6D7450C(v19, sub_1C6D74478);
    goto LABEL_7;
  }

  v24 = &v19[v21];
  v25 = v29;
  sub_1C6D7456C(v24, v29, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v26 = *(v30 + 48);
  sub_1C6D72C8C(v15, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D72C8C(v25, &v7[v26], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v27 = _s19NewsPersonalization010Com_Apple_a1_B51Storage_CompressedSessionEventArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, &v7[v26]);
  sub_1C6D7450C(v25, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D7450C(&v7[v26], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D7450C(v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6D74638(v19, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1C6D74118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D74260(uint64_t a1)
{
  sub_1C6D745D4(319, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6D74314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C6B35EE0);
}

uint64_t sub_1C6D7436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C6B35F58);
}

uint64_t sub_1C6D743D4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1C6D74478(uint64_t a1)
{
  if (!qword_1EC1D9AD0)
  {
    sub_1C6D745D4(255, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9AD0);
    }
  }
}

uint64_t sub_1C6D7450C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6D7456C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6D745D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6D74638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D745D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D746A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D745D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D74728@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 8))(v6, v3, v4);
  if (v7)
  {
    sub_1C6BA012C(v7, a1);
  }

  else
  {
    sub_1C6D74C04(0);
    sub_1C6D74CA8();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1C6B11190(v6);
}

uint64_t sub_1C6D747F4(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6D74814, 0, 0);
}

uint64_t sub_1C6D74814()
{
  v1 = v0[33];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[34] = (*(v3 + 24))(0, v2, v3);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1C6D748F4;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6D748F4()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1C6D74B00;
  }

  else
  {

    v2 = sub_1C6D74A10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6D74A10()
{
  v1 = *(v0 + 16);
  *(v0 + 152) = *(v0 + 32);
  v2 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 136) = v1;
  v3 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 246) = *(v0 + 126);
  *(v0 + 184) = v3;
  v4 = *(v0 + 152);
  if (v4)
  {
    sub_1C6BA012C(v4, *(v0 + 256));
  }

  else
  {
    sub_1C6D74C04(0);
    sub_1C6D74CA8();
    swift_allocError();
    swift_willThrow();
  }

  sub_1C6B11190(v0 + 136);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C6D74B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6D74B68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BB6A40;

  return sub_1C6D747F4(a1);
}

void sub_1C6D74C04(uint64_t a1)
{
  if (!qword_1EC1D9AD8)
  {
    v2 = sub_1C6D74C5C();
    v5 = type metadata accessor for FeatureState.Errors(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC1D9AD8);
    }
  }
}

unint64_t sub_1C6D74C5C()
{
  result = qword_1EDCDF870;
  if (!qword_1EDCDF870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCDF870);
  }

  return result;
}

unint64_t sub_1C6D74CA8()
{
  result = qword_1EC1D9AE0;
  if (!qword_1EC1D9AE0)
  {
    sub_1C6D74C04(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9AE0);
  }

  return result;
}

void sub_1C6D74D00(uint64_t a1, id a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    v8 = a2;
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDCE7548;
    v10 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6D7EB10;
    sub_1C6D75DE0();
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v12 = sub_1C6D7A0E0();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C6B2064C();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = 0;
    *(v11 + 80) = 0xE000000000000000;
    sub_1C6D78D30("Attempted to clear %{public}@, but received error %{public}@", 60, 2, &dword_1C6B09000, v9, v10, v11);

    type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors(0);
    sub_1C6B1B2E8(&qword_1EC1D9AE8, type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors, &unk_1C6D96D94);
    v17 = swift_allocError();
    *v18 = a2;
    swift_storeEnumTagMultiPayload();
    v19 = a2;
    a4(v17);
  }

  else if (a1)
  {
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDCE7548;
    sub_1C6B1D314(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v23 = sub_1C6D7A0E0();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C6B2064C();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = sub_1C6D79AC0();
    sub_1C6D78D30("Successfully cleared %{public}@", 31, 2, &dword_1C6B09000, v21, v26, v22);

    a6(v27);
  }

  else
  {
    if (qword_1EDCE7540 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDCE7548;
    v29 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B1B2E8(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v31 = sub_1C6D7A0E0();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C6B2064C();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_1C6D78D30("Attempted to clear %{public}@, but indication of failure with no error", 70, 2, &dword_1C6B09000, v28, v29, v30);

    type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors(0);
    sub_1C6B1B2E8(&qword_1EC1D9AE8, type metadata accessor for NewsPersonalizationDataCleanupStartupTask.Errors, &unk_1C6D96D94);
    v34 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a4(v34);
  }
}

uint64_t sub_1C6D75204(uint64_t a1)
{
  if (qword_1EDCE7540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCE7548;
  v2 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C6B2064C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1C6D78D30("Failed to cleanup all personalization data with error %{public}@", 64, 2, &dword_1C6B09000, v1, v2, v3);
}

uint64_t sub_1C6D75338()
{

  v1 = OBJC_IVAR____TtC19NewsPersonalization41NewsPersonalizationDataCleanupStartupTask_privateDataDirectory;
  v2 = sub_1C6D75DE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1C6D75404(uint64_t a1, void *a2)
{
  v5 = *(sub_1C6D75DE0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  sub_1C6D74D00(a1, a2, v2 + v6, v10, v11, v12);
}

uint64_t sub_1C6D754C4(uint64_t a1)
{
  result = sub_1C6B10A98(319, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  if (v2 <= 0x3F)
  {
    result = sub_1C6D75DE0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C6D75548(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v43 = a2;
  v8 = sub_1C6D77E40();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C6D77910();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D759E0(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v38 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6D75A74(&qword_1EC1D9B00, MEMORY[0x1E69B47F8], MEMORY[0x1E69B4800]);
      v29 = v44;
      sub_1C6D75AF0();
      v31 = v40;
      sub_1C6D77900();
      v32 = sub_1C6D77E30();
      v34 = v33;
      sub_1C6B1C9F0(v26, v28);
      (*(v41 + 8))(v31, v42);
      (*(v39 + 8))(v13, v29);
      *a5 = v32;
      a5[1] = v34;
      v35 = *MEMORY[0x1E69E3688];
      v36 = sub_1C6D76F90();
      v37 = *(v36 - 8);
      (*(v37 + 104))(a5, v35, v36);
      (*(v37 + 56))(a5, 0, 1, v36);
    }
  }

  else
  {
    v30 = sub_1C6D76F90();
    (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
  }
}

void sub_1C6D759E0(uint64_t a1)
{
  if (!qword_1EDCE6088)
  {
    sub_1C6D77920();
    sub_1C6D75A74(&qword_1EDCE5F28, MEMORY[0x1E69B4808], MEMORY[0x1E69B47F0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6088);
    }
  }
}

uint64_t sub_1C6D75A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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