uint64_t ImagePlaygroundStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704278, &qword_1D2ACABD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = v1[4];
  v24 = v1[3];
  v25 = v7;
  v26 = v1[5];
  v8 = v1[2];
  v22 = v1[1];
  v23 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D2A505A8();
  sub_1D2AC74A4();
  LOBYTE(v17) = 0;
  v13 = v15[1];
  sub_1D2AC72D4();
  if (!v13)
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    v27 = 1;
    sub_1D2A50254(&v22, v16);
    sub_1D2A505FC();
    sub_1D2AC72C4();
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[0] = v17;
    v16[1] = v18;
    sub_1D2A2E61C(v16, &qword_1EC704270, &qword_1D2ACABD0);
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t ImagePlaygroundStyle.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  v6 = v1[3];
  v7 = v2;
  v8 = v1[5];
  v3 = v1[2];
  v5[0] = v1[1];
  v5[1] = v3;
  sub_1D2AC6C74();
  if (!*(&v5[0] + 1))
  {
    return sub_1D2AC7464();
  }

  sub_1D2AC7464();

  sub_1D2AC6C74();
  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (*(&v6 + 1))
  {
    sub_1D2AC6C74();
  }

  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (*(&v8 + 1))
  {
    sub_1D2AC6C74();
  }

  return sub_1D2A2E61C(v5, &qword_1EC704270, &qword_1D2ACABD0);
}

uint64_t ImagePlaygroundStyle.hashValue.getter()
{
  v1 = v0[4];
  v5 = v0[3];
  v6 = v1;
  v7 = v0[5];
  v2 = v0[2];
  v4[0] = v0[1];
  v4[1] = v2;
  sub_1D2AC7444();
  sub_1D2AC6C74();
  if (*(&v4[0] + 1))
  {
    sub_1D2AC7464();

    sub_1D2AC6C74();
    sub_1D2AC6C74();
    sub_1D2AC7464();
    if (*(&v5 + 1))
    {
      sub_1D2AC6C74();
    }

    sub_1D2AC6C74();
    sub_1D2AC7464();
    if (*(&v7 + 1))
    {
      sub_1D2AC6C74();
    }

    sub_1D2A2E61C(v4, &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    sub_1D2AC7464();
  }

  return sub_1D2AC7484();
}

uint64_t ImagePlaygroundStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704290, &qword_1D2ACABE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A505A8();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    return sub_1D2A2E61C(&v42, &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    v8 = v5;
    v9 = v34;
    LOBYTE(v42) = 0;
    v10 = sub_1D2AC7234();
    v12 = v11;
    v33 = v10;
    v58 = 1;
    sub_1D2A50650();
    sub_1D2AC7224();
    (*(v8 + 8))(v7, v4);
    v13 = v49;
    v30 = v49;
    v14 = v50;
    v31 = v53;
    v32 = v52;
    v15 = v55;
    v28 = v55;
    v29 = v50;
    v26 = v56;
    v27 = v51;
    v24 = v57;
    v25 = v54;
    memset(v35, 0, sizeof(v35));
    sub_1D2A2E61C(v35, &qword_1EC704270, &qword_1D2ACABD0);
    *&v36 = v33;
    *(&v36 + 1) = v12;
    v37 = v13;
    v17 = v26;
    v16 = v27;
    *&v38 = v14;
    *(&v38 + 1) = v27;
    *&v39 = v32;
    *(&v39 + 1) = v31;
    v18 = v25;
    *&v40 = v25;
    *(&v40 + 1) = v15;
    v19 = v24;
    *&v41 = v26;
    *(&v41 + 1) = v24;
    v20 = v39;
    v9[2] = v38;
    v9[3] = v20;
    v21 = v41;
    v9[4] = v40;
    v9[5] = v21;
    v22 = v37;
    *v9 = v36;
    v9[1] = v22;
    sub_1D2A2D244(&v36, &v42);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v42 = v33;
    *(&v42 + 1) = v12;
    v43 = v30;
    *&v44 = v29;
    *(&v44 + 1) = v16;
    *&v45 = v32;
    *(&v45 + 1) = v31;
    *&v46 = v18;
    *(&v46 + 1) = v28;
    v47 = v17;
    v48 = v19;
    return sub_1D2A2DDA8(&v42);
  }
}

uint64_t sub_1D2A4FA70(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D2AC6C74();
  if (!v4)
  {
    return sub_1D2AC7464();
  }

  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 64);
  v12 = *(v1 + 80);
  *&v8 = v3;
  *(&v8 + 1) = v4;
  sub_1D2AC7464();
  v13[0] = v3;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v14 = *(v1 + 32);
  v15 = v5;
  v6 = *(v1 + 80);
  v16 = *(v1 + 64);
  v17 = v6;
  sub_1D2A501EC(v13, v18);
  ImagePlaygroundStyle.RepresentationInfo.hash(into:)(a1);
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[0] = v8;
  v18[1] = v9;
  return sub_1D2A50224(v18);
}

uint64_t sub_1D2A4FB38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D2AC7444();
  sub_1D2AC6C74();
  if (v3)
  {
    v8 = *(v1 + 32);
    v9 = *(v1 + 48);
    v10 = *(v1 + 64);
    v11 = *(v1 + 80);
    *&v7 = v2;
    *(&v7 + 1) = v3;
    sub_1D2AC7464();
    v12[0] = v2;
    v12[1] = v3;
    v4 = *(v1 + 48);
    v13 = *(v1 + 32);
    v14 = v4;
    v5 = *(v1 + 80);
    v15 = *(v1 + 64);
    v16 = v5;
    sub_1D2A501EC(v12, v17);
    ImagePlaygroundStyle.RepresentationInfo.hash(into:)(v18);
    v17[2] = v9;
    v17[3] = v10;
    v17[4] = v11;
    v17[0] = v7;
    v17[1] = v8;
    sub_1D2A50224(v17);
  }

  else
  {
    sub_1D2AC7464();
  }

  return sub_1D2AC7484();
}

uint64_t sub_1D2A4FC18@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_1D2A4FC24(char *result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D2A4474C(result, v10, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

_OWORD *_s15ImagePlayground0aB5StyleV3allSayACGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B58, &qword_1D2AC9D98);
  v0 = swift_allocObject();
  v0[1] = xmmword_1D2AC9060;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v1 = unk_1EE089390;
  v22[2] = xmmword_1EE089380;
  v22[3] = unk_1EE089390;
  v2 = xmmword_1EE0893A0;
  v3 = unk_1EE0893B0;
  v22[4] = xmmword_1EE0893A0;
  v22[5] = unk_1EE0893B0;
  v4 = xmmword_1EE089360;
  v5 = xmmword_1EE089370;
  v22[0] = xmmword_1EE089360;
  v22[1] = xmmword_1EE089370;
  v0[4] = xmmword_1EE089380;
  v0[5] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1D2A2D244(v22, v24);
  if (qword_1EE0895E0 != -1)
  {
    swift_once();
  }

  v6 = unk_1EE089618;
  v23[2] = xmmword_1EE089608;
  v23[3] = unk_1EE089618;
  v7 = xmmword_1EE089628;
  v8 = unk_1EE089638;
  v23[4] = xmmword_1EE089628;
  v23[5] = unk_1EE089638;
  v9 = xmmword_1EE0895E8;
  v10 = xmmword_1EE0895F8;
  v23[0] = xmmword_1EE0895E8;
  v23[1] = xmmword_1EE0895F8;
  v0[10] = xmmword_1EE089608;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v8;
  v0[8] = v9;
  v0[9] = v10;
  sub_1D2A2D244(v23, v24);
  if (qword_1EE0893C8 != -1)
  {
    swift_once();
  }

  v11 = unk_1EE089400;
  v24[2] = xmmword_1EE0893F0;
  v24[3] = unk_1EE089400;
  v12 = xmmword_1EE089410;
  v13 = unk_1EE089420;
  v24[4] = xmmword_1EE089410;
  v24[5] = unk_1EE089420;
  v14 = xmmword_1EE0893D0;
  v15 = xmmword_1EE0893E0;
  v24[0] = xmmword_1EE0893D0;
  v24[1] = xmmword_1EE0893E0;
  v0[16] = xmmword_1EE0893F0;
  v0[17] = v11;
  v0[18] = v12;
  v0[19] = v13;
  v0[14] = v14;
  v0[15] = v15;
  v19[3] = &type metadata for ImagePlaygroundFeatures;
  v19[4] = sub_1D2A4FF8C();
  LOBYTE(v19[0]) = 0;
  sub_1D2A2D244(v24, v21);
  v16 = sub_1D2AC60E4();
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v16)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2AC95B0;
    if (qword_1EE089570 != -1)
    {
      swift_once();
    }

    v21[2] = xmmword_1EE089598;
    v21[3] = unk_1EE0895A8;
    v21[4] = xmmword_1EE0895B8;
    v21[5] = unk_1EE0895C8;
    v21[0] = xmmword_1EE089578;
    v21[1] = xmmword_1EE089588;
    memmove((inited + 32), &xmmword_1EE089578, 0x60uLL);
    v20 = v0;
    sub_1D2A2D244(v21, v19);
    sub_1D2A4FC24(inited);
    return v20;
  }

  return v0;
}

unint64_t sub_1D2A4FF8C()
{
  result = qword_1EE089340;
  if (!qword_1EE089340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE089340);
  }

  return result;
}

uint64_t _s15ImagePlayground0aB5StyleV18RepresentationInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v13 = a2[8];
  v14 = a1[8];
  v15 = a2[9];
  v16 = a1[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D2AC7354() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v4 != v9 || v5 != v8) && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v17 == v10 && v18 == v11 || (sub_1D2AC7354() & 1) != 0)
  {
    if (v16)
    {
      if (v15 && (v14 == v13 && v16 == v15 || (sub_1D2AC7354() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v15)
    {
      return 1;
    }
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D2A50198()
{
  result = qword_1EC704260;
  if (!qword_1EC704260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704260);
  }

  return result;
}

uint64_t sub_1D2A50254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704270, &qword_1D2ACABD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A502C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v53[2] = *(a1 + 3);
  v53[3] = v6;
  v7 = *(a1 + 5);
  v8 = *(a1 + 2);
  v53[0] = *(a1 + 1);
  v53[1] = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v13 = *(a2 + 5);
  v54[3] = *(a2 + 4);
  v54[4] = v13;
  v14 = *(a2 + 3);
  v54[1] = v12;
  v54[2] = v14;
  v53[4] = v7;
  v54[0] = v11;
  if (v4 == v9 && v5 == v10 || (v15 = 0, (sub_1D2AC7354() & 1) != 0))
  {
    v16 = v53[0];
    v17 = v54[0];
    if (*(&v53[0] + 1))
    {
      v43 = v53[0];
      v18 = *(a1 + 3);
      v44 = *(a1 + 2);
      v45 = v18;
      v19 = *(a1 + 5);
      v46 = *(a1 + 4);
      v47 = v19;
      v40 = v18;
      v41 = v46;
      v42 = v19;
      v38 = v53[0];
      v39 = v44;
      if (*(&v54[0] + 1))
      {
        v20 = *(a2 + 3);
        v34 = *(a2 + 2);
        v35 = v20;
        v21 = *(a2 + 5);
        v36 = *(a2 + 4);
        v37 = v21;
        v33 = v54[0];
        v15 = _s15ImagePlayground0aB5StyleV18RepresentationInfoV2eeoiySbAE_AEtFZ_0(&v38, &v33);
        v31[2] = v35;
        v31[3] = v36;
        v31[4] = v37;
        v31[0] = v33;
        v31[1] = v34;
        sub_1D2A50254(v53, v32);
        sub_1D2A50254(v54, v32);
        sub_1D2A50254(&v43, v32);
        sub_1D2A50224(v31);
        v32[2] = v40;
        v32[3] = v41;
        v32[4] = v42;
        v32[0] = v38;
        v32[1] = v39;
        sub_1D2A50224(v32);
        v33 = v16;
        v22 = *(a1 + 3);
        v34 = *(a1 + 2);
        v35 = v22;
        v23 = *(a1 + 5);
        v36 = *(a1 + 4);
        v37 = v23;
        sub_1D2A2E61C(&v33, &qword_1EC704270, &qword_1D2ACABD0);
        return v15 & 1;
      }

      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      sub_1D2A50254(v53, v32);
      sub_1D2A50254(v54, v32);
      sub_1D2A50254(&v43, v32);
      sub_1D2A50224(&v33);
    }

    else
    {
      if (!*(&v54[0] + 1))
      {
        v43 = *&v53[0];
        v28 = *(a1 + 3);
        v44 = *(a1 + 2);
        v45 = v28;
        v29 = *(a1 + 5);
        v46 = *(a1 + 4);
        v47 = v29;
        sub_1D2A50254(v53, &v38);
        sub_1D2A50254(v54, &v38);
        sub_1D2A2E61C(&v43, &qword_1EC704270, &qword_1D2ACABD0);
        v15 = 1;
        return v15 & 1;
      }

      sub_1D2A50254(v53, &v43);
      sub_1D2A50254(v54, &v43);
    }

    v43 = v16;
    v24 = *(a1 + 3);
    v44 = *(a1 + 2);
    v45 = v24;
    v25 = *(a1 + 5);
    v46 = *(a1 + 4);
    v47 = v25;
    v48 = v17;
    v26 = *(a2 + 3);
    v49 = *(a2 + 2);
    v50 = v26;
    v27 = *(a2 + 5);
    v51 = *(a2 + 4);
    v52 = v27;
    sub_1D2A2E61C(&v43, &qword_1EC7042D8, &unk_1D2ACB0E0);
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_1D2A505A8()
{
  result = qword_1EC704280;
  if (!qword_1EC704280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704280);
  }

  return result;
}

unint64_t sub_1D2A505FC()
{
  result = qword_1EC704288;
  if (!qword_1EC704288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704288);
  }

  return result;
}

unint64_t sub_1D2A50650()
{
  result = qword_1EC704298;
  if (!qword_1EC704298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704298);
  }

  return result;
}

unint64_t sub_1D2A506A8()
{
  result = qword_1EC7042A0;
  if (!qword_1EC7042A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ImagePlayground0aB5StyleV18RepresentationInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D2A50734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D2A5077C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2A50800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D2A50848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2A508D0()
{
  result = qword_1EC7042A8;
  if (!qword_1EC7042A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042A8);
  }

  return result;
}

unint64_t sub_1D2A50928()
{
  result = qword_1EC7042B0;
  if (!qword_1EC7042B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042B0);
  }

  return result;
}

unint64_t sub_1D2A50980()
{
  result = qword_1EC7042B8;
  if (!qword_1EC7042B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042B8);
  }

  return result;
}

unint64_t sub_1D2A509D8()
{
  result = qword_1EC7042C0;
  if (!qword_1EC7042C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042C0);
  }

  return result;
}

unint64_t sub_1D2A50A30()
{
  result = qword_1EC7042C8;
  if (!qword_1EC7042C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042C8);
  }

  return result;
}

unint64_t sub_1D2A50A88()
{
  result = qword_1EC7042D0;
  if (!qword_1EC7042D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042D0);
  }

  return result;
}

uint64_t sub_1D2A50ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E696B636162 && a2 == 0xED000074706D6F72 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C69466E6F6369 && a2 == 0xEC000000656D616ELL || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D2ADEB30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D2A50CAC()
{
  result = qword_1EE088768;
  if (!qword_1EE088768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088768);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupport.UseCase(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1D2A50DA4()
{
  result = qword_1EE088758;
  if (!qword_1EE088758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088758);
  }

  return result;
}

unint64_t sub_1D2A50DFC()
{
  result = qword_1EE088760;
  if (!qword_1EE088760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088760);
  }

  return result;
}

uint64_t sub_1D2A50E50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1D2A4E4AC();
  if (v7 & 1) != 0 || (v8 = v6, v9 = sub_1D2A4E4AC(), (v10))
  {
    sub_1D2A4E4AC();
    if ((v11 & 1) != 0 && ((sub_1D2A4E4AC(), (v12 & 1) == 0) || v2 == v4 && v3 == v5 || (sub_1D2AC7354() & 1) == 0))
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (v8 < v9)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t CGImagePropertyOrientation.init(uiOrientation:)(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1D2ACB1D0[a1 - 1];
  }
}

uint64_t sub_1D2A50FE8(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1D2AC6274();
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2A51078, 0, 0);
}

uint64_t sub_1D2A51078()
{
  *(v0 + 96) = dyld_get_active_platform();
  sub_1D2AC6234();
  sub_1D2AC6264();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D2A513AC;
  v2 = *(v0 + 48);

  return MEMORY[0x1EEDC07D0](v2);
}

uint64_t sub_1D2A513AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1D2A51760;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1D2A514D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2A514D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1D2A515E0;
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DBF8](v6, v3, v3, 0, 0, &unk_1D2ACB208, v4, v3);
}

uint64_t sub_1D2A515E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2A516F8, 0, 0);
}

uint64_t sub_1D2A516F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2A51760()
{
  v14 = v0;
  v1 = v0[8];
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D2AC7084();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1D38A7100](0xD000000000000013, 0x80000001D2ADEBE0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E0, &qword_1D2ACB1F8);
  sub_1D2AC7164();
  MEMORY[0x1D38A7100](0x676E697275642029, 0xEF70756B6F6F6C20);
  v2 = v0[2];
  v3 = v0[3];
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2AC63B4();
  __swift_project_value_buffer(v4, qword_1EC7040C0);

  v5 = sub_1D2AC6394();
  v6 = sub_1D2AC6EA4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D2ABAFCC(v2, v3, v13);
    _os_log_impl(&dword_1D2A17000, v5, v6, "GP extension could not be loaded: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A8460](v8, -1, -1);
    MEMORY[0x1D38A8460](v7, -1, -1);
  }

  v9 = v0[5];
  v10 = sub_1D2AC62D4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2A519E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 84) = a4;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042F0, &qword_1D2ACB210);
  *(v4 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2A51AC0, 0, 0);
}

uint64_t sub_1D2A51AC0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 84);
  v3 = *(v0 + 48);
  v4 = sub_1D2AC6DD4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;

  sub_1D2A529B4(v1, &unk_1D2ACB220, v6);
  sub_1D2A2E61C(v1, &qword_1EC7044B0, &qword_1D2ACA040);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = 0x4024000000000000;
  sub_1D2A529B4(v1, &unk_1D2ACB230, v7);
  sub_1D2A2E61C(v1, &qword_1EC7044B0, &qword_1D2ACA040);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042F8, &qword_1D2ACB238);
  *v8 = v0;
  v8[1] = sub_1D2A51CBC;
  v10 = *(v0 + 56);

  return MEMORY[0x1EEE6D8A0](v10, 0, 0, v9);
}

uint64_t sub_1D2A51CBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2A51DB8, 0, 0);
}

uint64_t sub_1D2A51DB8()
{
  v21 = v0;
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 32);
  if (v4 == 1)
  {
    v6 = sub_1D2AC62D4();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    if (v3(v1, 1, v2) != 1)
    {
      sub_1D2A2E61C(*(v0 + 56), &qword_1EC7042F0, &qword_1D2ACB210);
    }
  }

  else
  {
    sub_1D2A5369C(v1, *(v0 + 32));
  }

  v7 = *(v0 + 32);
  v8 = sub_1D2AC62D4();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 84);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D2AC7084();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x1D38A7100](0xD000000000000015, 0x80000001D2ADEC00);
    *(v0 + 80) = v9;
    v10 = sub_1D2AC7324();
    MEMORY[0x1D38A7100](v10);

    MEMORY[0x1D38A7100](0xD000000000000026, 0x80000001D2ADEC20);
    sub_1D2AC6DF4();
    MEMORY[0x1D38A7100](0x73646E6F63657320, 0xE800000000000000);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D2AC63B4();
    __swift_project_value_buffer(v13, qword_1EC7040C0);

    v14 = sub_1D2AC6394();
    v15 = sub_1D2AC6EA4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D2ABAFCC(v12, v11, v20);
      _os_log_impl(&dword_1D2A17000, v14, v15, "GP extension could not be loaded: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1D38A8460](v17, -1, -1);
      MEMORY[0x1D38A8460](v16, -1, -1);
    }
  }

  sub_1D2AC6D84();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D2A5215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D2A52180, 0, 0);
}

uint64_t sub_1D2A52180()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  *v4 = v0;
  v4[1] = sub_1D2A52290;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000015, 0x80000001D2ADEC50, sub_1D2A5387C, v3, v5);
}

uint64_t sub_1D2A52290()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D2A523A0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_1D2AC62D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v19 = sub_1D2AC6254();
  if (*(v19 + 16))
  {
    v20 = *(v10 + 16);
    v20(v13, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v32 = a2;
    v21 = *(v10 + 32);
    v21(v16, v13, v9);
    v21(v18, v16, v9);
    v20(v8, v18, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
    sub_1D2AC6D64();
    return (*(v10 + 8))(v18, v9);
  }

  else
  {

    if (sub_1D2AC6DE4())
    {
      (*(v10 + 56))(v8, 1, 1, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
      return sub_1D2AC6D64();
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1D2AC7084();
      MEMORY[0x1D38A7100](0xD000000000000015, 0x80000001D2ADEC00);
      v33 = a3;
      v23 = sub_1D2AC7324();
      MEMORY[0x1D38A7100](v23);

      MEMORY[0x1D38A7100](0xD00000000000002FLL, 0x80000001D2ADEC70);
      v25 = v34;
      v24 = v35;
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v26 = sub_1D2AC63B4();
      __swift_project_value_buffer(v26, qword_1EC7040C0);

      v27 = sub_1D2AC6394();
      v28 = sub_1D2AC6EA4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1D2ABAFCC(v25, v24, &v34);
        _os_log_impl(&dword_1D2A17000, v27, v28, "GP extension could not be loaded: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x1D38A8460](v30, -1, -1);
        MEMORY[0x1D38A8460](v29, -1, -1);
      }

      MEMORY[0x1EEE9AC00](v31);
      *(&v32 - 4) = a1;
      *(&v32 - 3) = a2;
      *(&v32 - 4) = a3;
      return sub_1D2AC6074();
    }
  }
}

uint64_t (*sub_1D2A52858(uint64_t a1, uint64_t a2, int a3))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a2, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = a3;

  return sub_1D2A538C0;
}

uint64_t sub_1D2A529B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1D2A53754(a1, v20 - v9);
  v11 = sub_1D2AC6DD4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D2A2E61C(v10, &qword_1EC7044B0, &qword_1D2ACA040);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D2AC6D44();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2AC6DC4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1D2A52BCC(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_1D2AC7144();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2A52C90, 0, 0);
}

uint64_t sub_1D2A52C90()
{
  v1 = sub_1D2AC74B4();
  v3 = v2;
  sub_1D2AC73C4();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1D2A52D6C;

  return sub_1D2A52FAC(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2A52D6C()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1D2A5395C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1D2A52F04;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2A52F04()
{
  v1 = *(v0 + 16);
  v2 = sub_1D2AC62D4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D2A52FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D2AC7134();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D2A530AC, 0, 0);
}

uint64_t sub_1D2A530AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D2AC7144();
  v5 = sub_1D2A5370C(&qword_1EC704300, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D2AC73A4();
  sub_1D2A5370C(&qword_1EC704308, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D2AC7154();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D2A5323C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D2A5323C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2A533F8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D2A533F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2A53464(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A519E4(a1, a2, v6, v7);
}

uint64_t sub_1D2A5351C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A5215C(a1, v4, v5, v6, v7);
}

uint64_t sub_1D2A535E0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2A2E260;

  return sub_1D2A52BCC(a1, v4);
}

uint64_t sub_1D2A5369C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A5370C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2A53754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A537C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2A2E260;

  return sub_1D2A4455C(a1, v4);
}

uint64_t sub_1D2A5388C(uint64_t a1)
{
  sub_1D2AC6254();
}

uint64_t sub_1D2A538C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return sub_1D2A523A0(v3, v0 + v2, v4);
}

uint64_t sub_1D2A53960@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  *v6 = sub_1D2AC66E4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704560, &qword_1D2ACB8A8);
  sub_1D2A53E10(v1, &v6[*(v7 + 44)]);
  v8 = sub_1D2AC68B4();
  v9 = sub_1D2AC65E4();
  v10 = &v6[*(v4 + 44)];
  *v10 = v9;
  v10[8] = v8;
  v11 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1D2A60E30(v1, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativePlaygroundRemoteView);
  sub_1D2AC6DA4();
  v14 = sub_1D2AC6D94();
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_1D2A60E98(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for GenerativePlaygroundRemoteView);
  v18 = sub_1D2AC6DD4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v32 - v21;
  sub_1D2AC6DB4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = sub_1D2AC65B4();
    v36 = &v32;
    v34 = *(v35 - 8);
    MEMORY[0x1EEE9AC00](v35);
    v32 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = a1;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1D2AC7084();

    v38 = 0xD000000000000031;
    v39 = 0x80000001D2ADF030;
    v37 = 54;
    v24 = sub_1D2AC7324();
    MEMORY[0x1D38A7100](v24);

    MEMORY[0x1EEE9AC00](v25);
    (*(v19 + 16))(&v32 - v21, &v32 - v21, v18);
    v26 = v32;
    sub_1D2AC65A4();
    (*(v19 + 8))(v22, v18);
    v27 = v33;
    sub_1D2A60FDC(v6, v33);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7036F8, &qword_1D2AC9080);
    return (*(v34 + 32))(v27 + *(v28 + 36), v26, v35);
  }

  else
  {
    v30 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC703700, &qword_1D2AC9088) + 36));
    v31 = sub_1D2AC6574();
    (*(v19 + 32))(&v30[*(v31 + 20)], &v32 - v21, v18);
    *v30 = &unk_1D2ACB8B8;
    *(v30 + 1) = v16;
    return sub_1D2A60FDC(v6, a1);
  }
}

uint64_t sub_1D2A53E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704570, &qword_1D2ACB8C8);
  v3 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v5 = v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704578, &qword_1D2ACB8D0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = v40 - v7;
  v8 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v43 = *(v8 - 1);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704580, &qword_1D2ACB8D8);
  MEMORY[0x1EEE9AC00](v46);
  v11 = (v40 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v40 - v13;
  if (*(a1 + v8[9]) != 1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260), sub_1D2AC6A24(), v15 = type metadata accessor for _AppExtensionHostView.Configuration(0), v16 = v6, v17 = (*(*(v15 - 8) + 48))(v14, 1, v15), sub_1D2A2E61C(v14, &unk_1EC7043C0, &qword_1D2ACA0B0), v17 == 1))
  {
    sub_1D2AC64F4();
    v18 = v48;
    (*(v3 + 16))(v45, v5, v48);
    swift_storeEnumTagMultiPayload();
    sub_1D2A6104C();
    sub_1D2A2DB64(&qword_1EC704590, &qword_1EC704570, &qword_1D2ACB8C8, MEMORY[0x1E697BF38]);
    sub_1D2AC6714();
    return (*(v3 + 8))(v5, v18);
  }

  else
  {
    v19 = type metadata accessor for _AppExtensionHostView(0);
    v42 = v16;
    v20 = v19;
    v21 = a1;
    sub_1D2AC6A44();
    v22 = *(a1 + v8[5]);
    v23 = v8[8];
    v24 = (a1 + v8[7]);
    v25 = *v24;
    v26 = v24[1];
    v27 = a1 + v23;
    v29 = *(a1 + v23);
    v28 = *(a1 + v23 + 8);
    v41 = v28;
    v30 = *(v27 + 16);
    v40[3] = v30;
    type metadata accessor for _AppExtensionHostView.MutableState();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *v11 = v31;
    *(v11 + v20[6]) = v22;
    v32 = (v11 + v20[7]);
    *v32 = v25;
    v32[1] = v26;
    v33 = v11 + v20[8];
    *v33 = v29;
    *(v33 + 1) = v28;
    v33[16] = v30;
    v34 = v44;
    sub_1D2A60E30(v21, v44, type metadata accessor for GenerativePlaygroundRemoteView);
    v35 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v36 = swift_allocObject();
    sub_1D2A60E98(v34, v36 + v35, type metadata accessor for GenerativePlaygroundRemoteView);
    v37 = v45;
    v38 = (v11 + *(v46 + 36));
    *v38 = 0;
    v38[1] = 0;
    v38[2] = sub_1D2A61108;
    v38[3] = v36;
    sub_1D2A2E5B4(v11, v37, &qword_1EC704580, &qword_1D2ACB8D8);
    swift_storeEnumTagMultiPayload();

    sub_1D2A2E6B8(v25, v26);
    sub_1D2A46754(v29, v41);
    sub_1D2A6104C();
    sub_1D2A2DB64(&qword_1EC704590, &qword_1EC704570, &qword_1D2ACB8C8, MEMORY[0x1E697BF38]);
    sub_1D2AC6714();
    return sub_1D2A2E61C(v11, &qword_1EC704580, &qword_1D2ACB8D8);
  }
}

uint64_t sub_1D2A5436C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  type metadata accessor for GenerativePlaygroundRemoteView(0);
  sub_1D2A5822C();
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D2A2E5B4(v5, v3, &unk_1EC7043C0, &qword_1D2ACA0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
  sub_1D2AC6A34();
  return sub_1D2A2E61C(v5, &unk_1EC7043C0, &qword_1D2ACA0B0);
}

uint64_t sub_1D2A544B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v3[3] = swift_task_alloc();
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v4 = swift_task_alloc();
  v3[6] = v4;
  v5 = sub_1D2AC62D4();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D2AC6DA4();
  v3[12] = sub_1D2AC6D94();
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = sub_1D2A54658;

  return sub_1D2A50FE8(v4);
}

uint64_t sub_1D2A54658()
{

  v1 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A54794, v1, v0);
}

uint64_t sub_1D2A54794()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    v5 = v0[4];
    sub_1D2A2E61C(v0[6], &qword_1EC7042E8, &qword_1D2ACB8C0);
    v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1D2A2E5B4(v4, v5, &unk_1EC7043C0, &qword_1D2ACA0B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
    sub_1D2AC6A34();
    sub_1D2A2E61C(v4, &unk_1EC7043C0, &qword_1D2ACA0B0);
    goto LABEL_15;
  }

  v7 = 0xD000000000000014;
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[2];
  v13 = *(v11 + 32);
  v13(v9, v0[6], v10);
  (*(v11 + 16))(v8, v9, v10);
  v14 = *(v12 + *(type metadata accessor for GenerativePlaygroundRemoteView(0) + 24));
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v17 = "editorWithMultiSelectionPicker";
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      if (v14 == 3)
      {
        v15 = "multiSelectionPicker";
LABEL_12:
        v17 = v15 - 32;
        goto LABEL_13;
      }

      v17 = "multiSelectionPicker";
      v7 = 0xD000000000000015;
    }

LABEL_13:
    v16 = v17 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v14)
  {
    v7 = 0xD00000000000001ELL;
    v15 = "editorWithMultiSelectionPicker";
    goto LABEL_12;
  }

  v16 = 0xE600000000000000;
  v7 = 0x726F74696465;
LABEL_14:
  v26 = v0[10];
  v18 = v0[7];
  v19 = v0[8];
  v20 = v0[5];
  v21 = v0[3];
  v13(v21, v0[9], v18);
  v22 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v23 = (v21 + *(v22 + 20));
  *v23 = v7;
  v23[1] = v16;
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_1D2A2E5B4(v21, v20, &unk_1EC7043C0, &qword_1D2ACA0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
  sub_1D2AC6A34();
  sub_1D2A2E61C(v21, &unk_1EC7043C0, &qword_1D2ACA0B0);
  (*(v19 + 8))(v26, v18);
LABEL_15:

  v24 = v0[1];

  return v24();
}

void *sub_1D2A54AF0()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1D2A54B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1D2A54C50(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6084();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2A20764(0, &qword_1EC704508, 0x1E6966D50);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D2AC6F94();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_1D2A54DE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration;
  swift_beginAccess();
  sub_1D2A60974(a1, v1 + v7);
  swift_endAccess();
  swift_getKeyPath();
  v12 = v1;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v8 = *(v1 + 16);
  if (v8)
  {
    sub_1D2A2E5B4(v2 + v7, v6, &qword_1EC704488, &qword_1D2ACB720);
    v9 = v8;
    sub_1D2AC6F54();
  }

  return sub_1D2A2E61C(a1, &qword_1EC704488, &qword_1D2ACB720);
}

uint64_t sub_1D2A54F54()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  if (*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection))
  {
    if (*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D2AC6084();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = 0;
    }
  }

  return result;
}

void *sub_1D2A550A8()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  v2 = v1;
  return v1;
}

void sub_1D2A55158(void *a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6084();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2A20764(0, &qword_1EC704500, 0x1E696B0B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D2AC6F94();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1D2A54F54();
}

uint64_t sub_1D2A5531C()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  return *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose);
}

uint64_t sub_1D2A553C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  *a2 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose);
  return result;
}

uint64_t sub_1D2A55474(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A5558C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2A555C8()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  return *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
}

uint64_t sub_1D2A55678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v5 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D2A55734(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
  v4 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) != 1)
  {
    if ((a2 & 1) != 0 || v4 != result)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    if ((a2 & 1) == 0 || result)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if ((a2 & 1) != 0 && result)
  {
    goto LABEL_11;
  }

LABEL_12:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6084();
}

uint64_t sub_1D2A5588C(void (*a1)(void), uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v5 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v5)
  {
    v14 = a1;
    v15 = a2;
    *&v11 = MEMORY[0x1E69E9820];
    *(&v11 + 1) = 1107296256;
    v12 = sub_1D2A44320;
    v13 = &block_descriptor_402;
    v6 = _Block_copy(&v11);
    v7 = v5;

    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v16, v17);
    sub_1D2A206F8(v17, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    return v16;
  }

  else
  {
    sub_1D2A2DF64();
    v10 = swift_allocError();
    a1(v10);

    return 0;
  }
}

uint64_t sub_1D2A55A84(void *a1)
{
  v2 = v1;
  v83 = *MEMORY[0x1E69E9840];
  v4 = sub_1D2AC6B04();
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D2AC6B24();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D2AC6B44();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v62 - v11;
  if (v1[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose])
  {
    KeyPath = swift_getKeyPath();
    v65 = v7;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v62 - 2) = v1;
    *(&v62 - 8) = 0;
    aBlock = v1;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6084();
    v74 = 0;

    v7 = v65;
  }

  else
  {
    v74 = 0;
    v1[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose] = 0;
  }

  v13 = a1;
  sub_1D2A54C50(a1);
  aBlock = 0;
  v14 = [v13 makeXPCConnectionWithError_];
  v15 = aBlock;
  v67 = v4;
  if (v14)
  {
    v65 = v10;
    isa = GPServiceProtocolInterface()().super.isa;
    [v14 setRemoteObjectInterface_];

    [v14 setExportedObject_];
    v17 = GPHostProtocolInterface()().super.isa;
    [v14 setExportedInterface_];

    v81 = sub_1D2A567E0;
    v82 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1D2A61284;
    v80 = &block_descriptor_378;
    v18 = _Block_copy(&aBlock);
    [v14 setInterruptionHandler_];
    _Block_release(v18);
    v81 = sub_1D2A567EC;
    v82 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1D2A61284;
    v80 = &block_descriptor_381;
    v19 = _Block_copy(&aBlock);
    [v14 setInvalidationHandler_];
    _Block_release(v19);
    [v14 resume];
    v81 = sub_1D2A568E8;
    v82 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1D2A44320;
    v80 = &block_descriptor_384;
    v20 = _Block_copy(&aBlock);
    v21 = [v14 remoteObjectProxyWithErrorHandler_];
    _Block_release(v20);
    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044F8, &qword_1D2ACB818);
    swift_dynamicCast();
    v22 = v76;
    v64 = v14;
    sub_1D2A55158(v14);
    [v22 willBeginServiceConfiguration];
    v23 = &v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken];
    if ((v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken + 32] & 1) == 0)
    {
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      v26 = *&v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken + 8];
      aBlock = *v23;
      v78 = v26;
      v79 = v25;
      v80 = v24;
      v27 = sub_1D2A569D0(&aBlock, &v81);
      v29 = v28;
      v30 = sub_1D2AC5F14();
      [v22 setResponsibleAuditToken_];

      sub_1D2A47944(v27, v29);
    }

    swift_getKeyPath();
    aBlock = v2;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6094();

    v31 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v32 = *&v2[v31];
    v33 = *(v32 + 16);
    if (v33)
    {
      v63 = v22;
      v34 = v7;

      v35 = v32 + 40;
      do
      {
        v36 = *(v35 - 8);

        v36(v37);

        v35 += 16;
        --v33;
      }

      while (v33);

      v7 = v34;
      v22 = v63;
    }

    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    *(&v62 - 2) = v2;
    *(&v62 - 1) = MEMORY[0x1E69E7CC0];
    aBlock = v2;
    sub_1D2AC6084();

    [v22 didFinishServiceConfiguration];

    swift_unknownObjectRelease();
    v10 = v65;
  }

  else
  {
    v39 = v15;
    v40 = sub_1D2AC5E64();

    swift_willThrow();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D2AC63B4();
    __swift_project_value_buffer(v41, qword_1EC7040C0);
    v42 = v40;
    v43 = sub_1D2AC6394();
    v44 = sub_1D2AC6E94();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_1D2A17000, v43, v44, "Could not make XPC connection: %@", v45, 0xCu);
      sub_1D2A2E61C(v46, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v46, -1, -1);
      MEMORY[0x1D38A8460](v45, -1, -1);
    }

    if (*&v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection])
    {
      v49 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v49);
      *(&v62 - 2) = v2;
      *(&v62 - 1) = 0;
      aBlock = v2;
      sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
      sub_1D2AC6084();
    }

    else
    {
      sub_1D2A54F54();
    }
  }

  swift_getKeyPath();
  aBlock = v2;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v51 = &v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state];
  v52 = *&v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state];
  if (v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8])
  {
    if (v52)
    {
      *v51 = 1;
      v51[8] = 1;
    }

    else
    {
      v61 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v61);
      *(&v62 - 4) = v2;
      *(&v62 - 3) = 1;
      *(&v62 - 16) = 1;
      aBlock = v2;
      sub_1D2AC6084();
    }
  }

  else
  {
    sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
    v53 = sub_1D2AC6ED4();
    sub_1D2AC6B34();
    v54 = v66;
    sub_1D2AC6B54();
    v74 = *(v7 + 1);
    v55 = v68;
    v74(v10, v68);
    v56 = swift_allocObject();
    *(v56 + 16) = v2;
    *(v56 + 24) = v52;
    v81 = sub_1D2A60764;
    v82 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1D2A61284;
    v80 = &block_descriptor_374;
    v57 = _Block_copy(&aBlock);

    v58 = v69;
    sub_1D2AC6B14();
    v75 = MEMORY[0x1E69E7CC0];
    sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
    sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
    v59 = v71;
    v60 = v67;
    sub_1D2AC7004();
    MEMORY[0x1D38A7300](v54, v58, v59, v57);
    _Block_release(v57);

    (*(v73 + 8))(v59, v60);
    (*(v70 + 8))(v58, v72);
    v74(v54, v55);
  }

  return result;
}

void sub_1D2A567F8(const char *a1)
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2AC63B4();
  __swift_project_value_buffer(v2, qword_1EC7040C0);
  oslog = sub_1D2AC6394();
  v3 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1D38A8460](v4, -1, -1);
  }
}

void sub_1D2A568E8()
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2AC63B4();
  __swift_project_value_buffer(v0, qword_1EC7040C0);
  oslog = sub_1D2AC6394();
  v1 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v1, "Error during connection to remote ", v2, 2u);
    MEMORY[0x1D38A8460](v2, -1, -1);
  }
}

uint64_t sub_1D2A569D0(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1D2A6076C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1D2A608A8(v3, v4);
    }

    else
    {
      v6 = sub_1D2A60824(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1D2A56A8C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  if ((*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) & 1) == 0 && *(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state) == a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A56BE0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D2A56C24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = a1;

    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = sub_1D2A571CC;
    v6[4] = 0;
    v6[5] = sub_1D2A2DFD4;
    v6[6] = v4;
    swift_getKeyPath();
    *&aBlock = v2;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    swift_bridgeObjectRetain_n();

    sub_1D2AC6094();

    v7 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v7)
    {
      v31 = sub_1D2A571CC;
      v32 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v29 = sub_1D2A44320;
      v30 = &block_descriptor_363;
      v8 = _Block_copy(&aBlock);
      v9 = v7;

      v10 = [v9 remoteObjectProxyWithErrorHandler_];
      _Block_release(v8);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v33, v34);
      sub_1D2A206F8(v34, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v11 = v33;
      if (v33)
      {
        sub_1D2A571EC(v33, a1);

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v12 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v13 = sub_1D2AC63B4();
      __swift_project_value_buffer(v13, qword_1EC7040C0);
      v14 = v12;
      v15 = sub_1D2AC6394();
      v16 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v12;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_1D2A17000, v15, v16, "Could not send allowed generation styles to remote view: %@. May not be an error if the connection is not established yet, will retry.", v17, 0xCu);
        sub_1D2A2E61C(v18, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v18, -1, -1);
        MEMORY[0x1D38A8460](v17, -1, -1);
      }
    }

    v21 = swift_allocObject();
    *(v21 + 16) = sub_1D2A2E6B4;
    *(v21 + 24) = v6;
    swift_getKeyPath();
    *&aBlock = v2;

    sub_1D2AC6094();

    *&aBlock = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v22 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v23 = *(v2 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D2A4486C(0, v23[2] + 1, 1, v23);
      *(v2 + v22) = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1D2A4486C((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = sub_1D2A2E724;
    v27[5] = v21;
    *(v2 + v22) = v23;
    swift_endAccess();
    *&aBlock = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void sub_1D2A571EC(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    sub_1D2AC7104();
    v5 = (a2 + 64);
    do
    {
      v17 = v3;
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v5[1];
      v11 = v5[2];
      v10 = v5[3];
      v15 = v5[5];
      v16 = v5[4];
      v12 = v5[6];
      v13 = v5[7];

      sub_1D2A5FAF0(v6, v7, v8, v9, v11, v10, v16, v15, v12, v13);
      sub_1D2AC6BF4();

      sub_1D2A2D7CC(v6, v7, v8, v9, v11, v10, v16, v15, v12, v13);
      sub_1D2AC70E4();
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v5 += 12;
      v3 = v17 - 1;
    }

    while (v17 != 1);
    v2 = a1;
  }

  sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
  v18 = sub_1D2AC6D24();

  [v2 setAllowedGenerationStyles_];
}

void sub_1D2A573B8(void *a1, uint64_t (*a2)(void), const char *a3, ...)
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2AC63B4();
  __swift_project_value_buffer(v6, qword_1EC7040C0);
  v7 = a1;
  oslog = sub_1D2AC6394();
  v8 = a2();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D2A17000, oslog, v8, a3, v9, 0xCu);
    sub_1D2A2E61C(v10, &unk_1EC704400, &unk_1D2ADA9A0);
    MEMORY[0x1D38A8460](v10, -1, -1);
    MEMORY[0x1D38A8460](v9, -1, -1);
  }
}

void sub_1D2A57524(void *a1, void *a2)
{
  v3 = sub_1D2AC6BF4();
  [a1 setSelectedGenerationStyle_];
}

void sub_1D2A5766C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = a1;
    v3 = sub_1D2AC5F14();
    a1 = v4;
  }

  v5 = v3;
  [a1 setRecipeData_];
}

void sub_1D2A57700(void *a1, double a2)
{
  sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
  v3 = sub_1D2AC6F84();
  [a1 setPreviewAspectRatio_];
}

void sub_1D2A577E0(void *a1, unsigned __int8 a2, SEL *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 *a3];
}

void sub_1D2A578F8(void *a1, uint64_t a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1D2A20764(0, a3, a4);
  v7 = sub_1D2AC6D24();
  [a1 *a5];
}

void sub_1D2A579A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1D2AC6BF4();
  v7 = [v5 integerForKey_];

  if (v7 <= 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = 0;
    v21 = v1;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6084();
  }

  else
  {
    sub_1D2A54F54();
  }

  swift_getKeyPath();
  v21 = v1;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose))
  {
    if (*(v1 + 16))
    {
      v10 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v10);
      *(&v20 - 2) = v1;
      *(&v20 - 1) = 0;
      v21 = v1;
      sub_1D2AC6084();
    }

    return;
  }

  swift_getKeyPath();
  v21 = v1;
  sub_1D2AC6094();

  v11 = (v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8))
  {
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    *(&v20 - 4) = v1;
    *(&v20 - 3) = 0;
    *(&v20 - 16) = 0;
    v21 = v1;
    goto LABEL_12;
  }

  v13 = *v11;
  if (v8 >= *v11)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v13 == v18)
    {
      *(v11 + 8) = 0;
      goto LABEL_13;
    }

    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    *(&v20 - 4) = v1;
    *(&v20 - 3) = v18;
    *(&v20 - 16) = 0;
    v21 = v1;
LABEL_12:
    sub_1D2AC6084();

LABEL_13:
    sub_1D2A58460(0);
    return;
  }

  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14);
  *(&v20 - 4) = v1;
  *(&v20 - 3) = 0;
  *(&v20 - 16) = 1;
  v21 = v1;
  sub_1D2AC6084();

  swift_getKeyPath();
  v21 = v1;
  sub_1D2AC6094();

  v15 = *(v1 + 16);
  if (v15)
  {
    v16 = sub_1D2AC6F34();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = v15;
    sub_1D2AC6F54();
  }
}

void sub_1D2A57EF0()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v1)
  {
    v18 = sub_1D2A5820C;
    v19 = 0;
    *&v15 = MEMORY[0x1E69E9820];
    *(&v15 + 1) = 1107296256;
    v16 = sub_1D2A44320;
    v17 = &block_descriptor_348;
    v2 = _Block_copy(&v15);
    v3 = v1;

    v4 = [v3 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v20, v21);
    sub_1D2A206F8(v21, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v5 = v20;
    if (v20)
    {
      [v20 startUpscaling];
    }
  }

  else
  {
    sub_1D2A2DF64();
    v6 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v7 = sub_1D2AC63B4();
    __swift_project_value_buffer(v7, qword_1EC7040C0);
    v8 = v6;
    v9 = sub_1D2AC6394();
    v10 = sub_1D2AC6E94();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1D2A17000, v9, v10, "Could not send message to remote view: %@", v11, 0xCu);
      sub_1D2A2E61C(v12, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v12, -1, -1);
      MEMORY[0x1D38A8460](v11, -1, -1);
    }
  }
}

void sub_1D2A5822C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) == 1)
  {
    *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v8 - 2) = v0;
    *(&v8 - 8) = 1;
    v9 = v0;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    sub_1D2AC6084();
  }

  swift_getKeyPath();
  v9 = v0;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = sub_1D2AC6F34();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = v5;
    sub_1D2AC6F54();
  }
}

uint64_t sub_1D2A58460(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v285 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v285 - v8;
  v10 = sub_1D2AC6F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v291 = &v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
    if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) == 1 && *v13)
    {
      *v13 = 1;
      *(v13 + 8) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v285 - 4) = v2;
      *(&v285 - 3) = 1;
      *(&v285 - 16) = 1;
      *&v320[0] = v2;
      sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
      sub_1D2AC6084();
    }
  }

  v15 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration;
  swift_beginAccess();
  sub_1D2A2E5B4(v2 + v15, v9, &qword_1EC704488, &qword_1D2ACB720);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D2A2E61C(v9, &qword_1EC704488, &qword_1D2ACB720);
  }

  v17 = v291;
  (*(v11 + 32))(v291, v9, v10);
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager___observationRegistrar;
  *&v320[0] = v2;
  v293 = sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  v294 = v18;
  sub_1D2AC6094();

  v19 = *(v2 + 16);
  if (v19)
  {
    (*(v11 + 16))(v7, v17, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v20 = v19;
    sub_1D2AC6F54();
  }

  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles))
  {

    sub_1D2A56C24(v21);
  }

  v22 = (v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v23 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
  v316 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
  v317 = v23;
  v24 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
  v318 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
  v319 = v24;
  v25 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
  v315[0] = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v315[1] = v25;
  v320[0] = v315[0];
  v320[1] = v25;
  v320[2] = v316;
  v320[3] = v23;
  v320[4] = v318;
  v320[5] = v24;
  v292 = v11;
  v290 = v10;
  if (*(&v315[0] + 1))
  {
    v26 = v22[3];
    v304 = v22[2];
    v305 = v26;
    v27 = v22[5];
    v306 = v22[4];
    v307 = v27;
    v28 = v22[1];
    v303[0] = *v22;
    v303[1] = v28;
    v308[2] = v304;
    v308[3] = v26;
    v308[4] = v306;
    v308[5] = v27;
    v308[0] = v303[0];
    v308[1] = v28;
    sub_1D2A2D244(v303, &v298);
    sub_1D2A2D244(v320, &v298);
    sub_1D2A2E61C(v308, &qword_1EC7044F0, &unk_1D2AC9D50);
    v29 = v22[3];
    v311 = v22[2];
    v312 = v29;
    v30 = v22[5];
    v313 = v22[4];
    v314 = v30;
    v31 = v22[1];
    v309 = *v22;
    v310 = v31;
    v32 = *(&v309 + 1);
    if (!*(&v309 + 1))
    {
      v45 = v315;
LABEL_29:
      sub_1D2A2E61C(v45, &qword_1EC7044F0, &unk_1D2AC9D50);
      goto LABEL_30;
    }

    v33 = v309;
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v35 = v22[4];
    *(v34 + 64) = v22[3];
    *(v34 + 80) = v35;
    *(v34 + 96) = v22[5];
    v36 = v22[2];
    *(v34 + 32) = v22[1];
    *(v34 + 48) = v36;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = sub_1D2A57398;
    v38[4] = 0;
    v38[5] = sub_1D2A60680;
    v38[6] = v34;
    swift_getKeyPath();
    v295 = v2;
    sub_1D2A2E5B4(&v309, &v298, &qword_1EC7044F0, &unk_1D2AC9D50);
    sub_1D2A2E5B4(&v309, &v298, &qword_1EC7044F0, &unk_1D2AC9D50);

    sub_1D2AC6094();

    v39 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v39)
    {
      v301 = sub_1D2A57398;
      v302 = 0;
      *&v298 = MEMORY[0x1E69E9820];
      *(&v298 + 1) = 1107296256;
      v299 = sub_1D2A44320;
      v300 = &block_descriptor_337;
      v40 = _Block_copy(&v298);
      v41 = v39;

      v42 = [v41 remoteObjectProxyWithErrorHandler_];
      _Block_release(v40);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v296, v297);
      sub_1D2A206F8(v297, &v298);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v43 = v296;
      v11 = v292;
      if (v296)
      {
        v44 = sub_1D2AC6BF4();
        [v43 setSelectedGenerationStyle_];

LABEL_28:
        sub_1D2A2E61C(v315, &qword_1EC7044F0, &unk_1D2AC9D50);

        v45 = &v309;
        goto LABEL_29;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v46 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v47 = sub_1D2AC63B4();
      __swift_project_value_buffer(v47, qword_1EC7040C0);
      v48 = v46;
      v49 = sub_1D2AC6394();
      v50 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v46;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_1D2A17000, v49, v50, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v51, 0xCu);
        sub_1D2A2E61C(v52, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v52, -1, -1);
        MEMORY[0x1D38A8460](v51, -1, -1);
      }
    }

    v55 = swift_allocObject();
    *(v55 + 16) = sub_1D2A2E6B4;
    *(v55 + 24) = v38;
    swift_getKeyPath();
    *&v298 = v2;

    sub_1D2AC6094();

    *&v298 = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v56 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v57 = *(v2 + v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v56) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1D2A4486C(0, v57[2] + 1, 1, v57);
      *(v2 + v56) = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    v11 = v292;
    if (v60 >= v59 >> 1)
    {
      v57 = sub_1D2A4486C((v59 > 1), v60 + 1, 1, v57);
    }

    v57[2] = v60 + 1;
    v61 = &v57[2 * v60];
    v61[4] = sub_1D2A2E724;
    v61[5] = v55;
    *(v2 + v56) = v57;
    swift_endAccess();
    *&v298 = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_28;
  }

LABEL_30:
  v62 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy);
  if (v62 == 3)
  {
    goto LABEL_44;
  }

  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = sub_1D2A57580;
  v65[4] = 0;
  v65[5] = sub_1D2A6065C;
  v65[6] = v63;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  v66 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v66)
  {
    *&v311 = sub_1D2A57580;
    *(&v311 + 1) = 0;
    *&v309 = MEMORY[0x1E69E9820];
    *(&v309 + 1) = 1107296256;
    *&v310 = sub_1D2A44320;
    *(&v310 + 1) = &block_descriptor_322;
    v67 = _Block_copy(&v309);
    v68 = v66;

    v69 = [v68 remoteObjectProxyWithErrorHandler_];
    _Block_release(v67);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v303, v308);
    sub_1D2A206F8(v308, &v309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v70 = *&v303[0];
    if (*&v303[0])
    {
      v71 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      [v70 setPersonalizationPolicy_];

      goto LABEL_44;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v72 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v73 = sub_1D2AC63B4();
    __swift_project_value_buffer(v73, qword_1EC7040C0);
    v74 = v72;
    v75 = sub_1D2AC6394();
    v76 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      v79 = v72;
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v80;
      *v78 = v80;
      _os_log_impl(&dword_1D2A17000, v75, v76, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v77, 0xCu);
      sub_1D2A2E61C(v78, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v78, -1, -1);
      MEMORY[0x1D38A8460](v77, -1, -1);
    }
  }

  v81 = swift_allocObject();
  *(v81 + 16) = sub_1D2A2E6B4;
  *(v81 + 24) = v65;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v82 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v83 = *(v2 + v82);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v82) = v83;
  if ((v84 & 1) == 0)
  {
    v83 = sub_1D2A4486C(0, v83[2] + 1, 1, v83);
    *(v2 + v82) = v83;
  }

  v86 = v83[2];
  v85 = v83[3];
  v11 = v292;
  if (v86 >= v85 >> 1)
  {
    v83 = sub_1D2A4486C((v85 > 1), v86 + 1, 1, v83);
  }

  v83[2] = v86 + 1;
  v87 = &v83[2 * v86];
  v87[4] = sub_1D2A2E724;
  v87[5] = v81;
  *(v2 + v82) = v83;
  swift_endAccess();
  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_44:
  v88 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
  v89 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
  if (v89 >> 62)
  {
    if (!sub_1D2AC7024())
    {
      goto LABEL_59;
    }
  }

  else if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

  v90 = *(v2 + v88);
  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = swift_allocObject();
  v93[2] = v92;
  v93[3] = sub_1D2A575AC;
  v93[4] = 0;
  v93[5] = sub_1D2A605D4;
  v93[6] = v91;
  swift_getKeyPath();
  *&v309 = v2;
  swift_bridgeObjectRetain_n();

  sub_1D2AC6094();

  v94 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v94)
  {
    *&v311 = sub_1D2A575AC;
    *(&v311 + 1) = 0;
    *&v309 = MEMORY[0x1E69E9820];
    *(&v309 + 1) = 1107296256;
    *&v310 = sub_1D2A44320;
    *(&v310 + 1) = &block_descriptor_218;
    v95 = _Block_copy(&v309);
    v96 = v94;

    v97 = [v96 remoteObjectProxyWithErrorHandler_];
    _Block_release(v95);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v303, v308);
    sub_1D2A206F8(v308, &v309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v98 = *&v303[0];
    if (*&v303[0])
    {
      sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
      v99 = sub_1D2AC6D24();
      [v98 setPromptElements_];

      goto LABEL_59;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v100 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v101 = sub_1D2AC63B4();
    __swift_project_value_buffer(v101, qword_1EC7040C0);
    v102 = v100;
    v103 = sub_1D2AC6394();
    v104 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v105 = 138412290;
      v107 = v100;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      *(v105 + 4) = v108;
      *v106 = v108;
      _os_log_impl(&dword_1D2A17000, v103, v104, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v105, 0xCu);
      sub_1D2A2E61C(v106, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v106, -1, -1);
      MEMORY[0x1D38A8460](v105, -1, -1);
    }
  }

  v289 = v90;
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1D2A2DF48;
  *(v109 + 24) = v93;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v110 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v111 = *(v2 + v110);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v110) = v111;
  if ((v112 & 1) == 0)
  {
    v111 = sub_1D2A4486C(0, v111[2] + 1, 1, v111);
    *(v2 + v110) = v111;
  }

  v114 = v111[2];
  v113 = v111[3];
  if (v114 >= v113 >> 1)
  {
    v111 = sub_1D2A4486C((v113 > 1), v114 + 1, 1, v111);
  }

  v111[2] = v114 + 1;
  v115 = &v111[2 * v114];
  v115[4] = sub_1D2A2D5EC;
  v115[5] = v109;
  *(v2 + v110) = v111;
  swift_endAccess();
  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

  v11 = v292;
LABEL_59:
  v116 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  if (!v116)
  {
    goto LABEL_73;
  }

  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  v118 = swift_allocObject();
  swift_weakInit();
  v119 = swift_allocObject();
  v119[2] = v118;
  v119[3] = sub_1D2A575E8;
  v119[4] = 0;
  v119[5] = sub_1D2A6064C;
  v119[6] = v117;
  swift_getKeyPath();
  *&v309 = v2;
  v120 = v116;

  sub_1D2AC6094();

  v121 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v121)
  {
    *&v311 = sub_1D2A575E8;
    *(&v311 + 1) = 0;
    *&v309 = MEMORY[0x1E69E9820];
    *(&v309 + 1) = 1107296256;
    *&v310 = sub_1D2A44320;
    *(&v310 + 1) = &block_descriptor_307;
    v122 = _Block_copy(&v309);
    v123 = v121;

    v124 = [v123 remoteObjectProxyWithErrorHandler_];
    _Block_release(v122);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v303, v308);
    sub_1D2A206F8(v308, &v309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v125 = *&v303[0];
    if (*&v303[0])
    {
      [*&v303[0] setSourceImage_];

      goto LABEL_73;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v126 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v127 = sub_1D2AC63B4();
    __swift_project_value_buffer(v127, qword_1EC7040C0);
    v128 = v126;
    v129 = sub_1D2AC6394();
    v130 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v131 = 138412290;
      v133 = v126;
      v134 = _swift_stdlib_bridgeErrorToNSError();
      *(v131 + 4) = v134;
      *v132 = v134;
      _os_log_impl(&dword_1D2A17000, v129, v130, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v131, 0xCu);
      sub_1D2A2E61C(v132, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v132, -1, -1);
      MEMORY[0x1D38A8460](v131, -1, -1);
    }
  }

  v289 = v117;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_1D2A2E6B4;
  *(v135 + 24) = v119;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v136 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v137 = *(v2 + v136);
  v138 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v136) = v137;
  if ((v138 & 1) == 0)
  {
    v137 = sub_1D2A4486C(0, v137[2] + 1, 1, v137);
    *(v2 + v136) = v137;
  }

  v140 = v137[2];
  v139 = v137[3];
  if (v140 >= v139 >> 1)
  {
    v137 = sub_1D2A4486C((v139 > 1), v140 + 1, 1, v137);
  }

  v137[2] = v140 + 1;
  v141 = &v137[2 * v140];
  v141[4] = sub_1D2A2E724;
  v141[5] = v135;
  *(v2 + v136) = v137;
  swift_endAccess();
  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

  v11 = v292;
LABEL_73:
  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) != 1)
  {
    goto LABEL_87;
  }

  *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = 1;
  v142 = swift_allocObject();
  *(v142 + 16) = 1;
  v143 = swift_allocObject();
  swift_weakInit();
  v144 = swift_allocObject();
  v144[2] = v143;
  v144[3] = sub_1D2A57618;
  v144[4] = 0;
  v144[5] = sub_1D2A6063C;
  v144[6] = v142;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  v145 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v145)
  {
    *&v311 = sub_1D2A57618;
    *(&v311 + 1) = 0;
    *&v309 = MEMORY[0x1E69E9820];
    *(&v309 + 1) = 1107296256;
    *&v310 = sub_1D2A44320;
    *(&v310 + 1) = &block_descriptor_292;
    v146 = _Block_copy(&v309);
    v147 = v145;

    v148 = [v147 remoteObjectProxyWithErrorHandler_];
    _Block_release(v146);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v303, v308);
    sub_1D2A206F8(v308, &v309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v149 = *&v303[0];
    if (*&v303[0])
    {
      [*&v303[0] setIsLoadingRecipe_];

      goto LABEL_87;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v150 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v151 = sub_1D2AC63B4();
    __swift_project_value_buffer(v151, qword_1EC7040C0);
    v152 = v150;
    v153 = sub_1D2AC6394();
    v154 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *v155 = 138412290;
      v157 = v150;
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v155 + 4) = v158;
      *v156 = v158;
      _os_log_impl(&dword_1D2A17000, v153, v154, "Could not send isLoadingRecipe to remote view: %@. May not be an error if the connection is not established yet, will retry.", v155, 0xCu);
      sub_1D2A2E61C(v156, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v156, -1, -1);
      MEMORY[0x1D38A8460](v155, -1, -1);
    }
  }

  v159 = swift_allocObject();
  *(v159 + 16) = sub_1D2A2E6B4;
  *(v159 + 24) = v144;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v160 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v161 = *(v2 + v160);
  v162 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v160) = v161;
  if ((v162 & 1) == 0)
  {
    v161 = sub_1D2A4486C(0, v161[2] + 1, 1, v161);
    *(v2 + v160) = v161;
  }

  v164 = v161[2];
  v163 = v161[3];
  v11 = v292;
  if (v164 >= v163 >> 1)
  {
    v161 = sub_1D2A4486C((v163 > 1), v164 + 1, 1, v161);
  }

  v161[2] = v164 + 1;
  v165 = &v161[2 * v164];
  v165[4] = sub_1D2A2E724;
  v165[5] = v159;
  *(v2 + v160) = v161;
  swift_endAccess();
  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_87:
  v166 = (v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
  v167 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8);
  if (v167 >> 60 == 15)
  {
    goto LABEL_105;
  }

  v168 = *v166;
  sub_1D2A479B4(*v166, *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8));
  sub_1D2A479B4(v168, v167);
  sub_1D2A479B4(v168, v167);
  sub_1D2A47930(v168, v167);
  v170 = *v166;
  v169 = v166[1];
  v171 = swift_allocObject();
  *(v171 + 16) = v170;
  *(v171 + 24) = v169;
  v172 = swift_allocObject();
  swift_weakInit();
  v173 = swift_allocObject();
  v173[2] = v172;
  v173[3] = sub_1D2A5764C;
  v173[4] = 0;
  v173[5] = sub_1D2A47998;
  v173[6] = v171;
  swift_getKeyPath();
  *&v309 = v2;
  sub_1D2A479A0(v170, v169);
  sub_1D2A479A0(v170, v169);
  v289 = v169;
  sub_1D2A479A0(v170, v169);
  v288 = v171;

  sub_1D2AC6094();

  v174 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v174)
  {
    sub_1D2A2DF64();
    v181 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v182 = sub_1D2AC63B4();
    __swift_project_value_buffer(v182, qword_1EC7040C0);
    v183 = v181;
    v184 = sub_1D2AC6394();
    v185 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v287 = v184;
      v188 = v187;
      *v186 = 138412290;
      v189 = v181;
      v190 = _swift_stdlib_bridgeErrorToNSError();
      *(v186 + 4) = v190;
      *v188 = v190;
      _os_log_impl(&dword_1D2A17000, v287, v185, "Could not send recipe data to remote view: %@. May not be an error if the connection is not established yet, will retry.", v186, 0xCu);
      sub_1D2A2E61C(v188, &unk_1EC704400, &unk_1D2ADA9A0);
      v191 = v188;
      v184 = v287;
      MEMORY[0x1D38A8460](v191, -1, -1);
      MEMORY[0x1D38A8460](v186, -1, -1);
    }

    goto LABEL_97;
  }

  *&v311 = sub_1D2A5764C;
  *(&v311 + 1) = 0;
  *&v309 = MEMORY[0x1E69E9820];
  *(&v309 + 1) = 1107296256;
  *&v310 = sub_1D2A44320;
  *(&v310 + 1) = &block_descriptor_277;
  v175 = _Block_copy(&v309);
  v176 = v174;

  v177 = [v176 remoteObjectProxyWithErrorHandler_];
  _Block_release(v175);

  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A206F8(v303, v308);
  sub_1D2A206F8(v308, &v309);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
  swift_dynamicCast();
  v178 = *&v303[0];
  if (!*&v303[0])
  {
LABEL_97:
    v286 = v170;
    v287 = v168;
    v192 = swift_allocObject();
    *(v192 + 16) = sub_1D2A2E6B4;
    *(v192 + 24) = v173;
    swift_getKeyPath();
    *&v309 = v2;

    sub_1D2AC6094();

    *&v309 = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v193 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v194 = *(v2 + v193);
    v195 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v193) = v194;
    if ((v195 & 1) == 0)
    {
      v194 = sub_1D2A4486C(0, v194[2] + 1, 1, v194);
      *(v2 + v193) = v194;
    }

    v197 = v194[2];
    v196 = v194[3];
    v198 = v286;
    if (v197 >= v196 >> 1)
    {
      v194 = sub_1D2A4486C((v196 > 1), v197 + 1, 1, v194);
    }

    v194[2] = v197 + 1;
    v199 = &v194[2 * v197];
    v199[4] = sub_1D2A2E724;
    v199[5] = v192;
    *(v2 + v193) = v194;
    swift_endAccess();
    *&v309 = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();

    v200 = v289;
    sub_1D2A47930(v198, v289);
    sub_1D2A47930(v198, v200);
    v201 = v287;
    sub_1D2A47930(v287, v167);
    v202 = v201;
    goto LABEL_104;
  }

  v179 = v289;
  if (v289 >> 60 == 15)
  {
    v180 = 0;
  }

  else
  {
    v180 = sub_1D2AC5F14();
  }

  [v178 setRecipeData_];

  sub_1D2A47930(v170, v179);
  sub_1D2A47930(v170, v179);
  sub_1D2A47930(v168, v167);
  v202 = v168;
LABEL_104:
  sub_1D2A47930(v202, v167);
  v11 = v292;
LABEL_105:
  v203 = (v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio);
  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio + 24))
  {
    goto LABEL_119;
  }

  v204 = *v203;
  v206 = v203[1];
  v205 = v203[2];
  v207 = swift_allocObject();
  v207[2] = v204;
  v207[3] = v206;
  v207[4] = v205;
  v208 = swift_allocObject();
  swift_weakInit();
  v209 = swift_allocObject();
  v209[2] = v208;
  v209[3] = sub_1D2A576E0;
  v209[4] = 0;
  v209[5] = sub_1D2A2DFB8;
  v209[6] = v207;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  v210 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v210)
  {
    *&v311 = sub_1D2A576E0;
    *(&v311 + 1) = 0;
    *&v309 = MEMORY[0x1E69E9820];
    *(&v309 + 1) = 1107296256;
    *&v310 = sub_1D2A44320;
    *(&v310 + 1) = &block_descriptor_262;
    v211 = _Block_copy(&v309);
    v212 = v210;

    v213 = [v212 remoteObjectProxyWithErrorHandler_];
    _Block_release(v211);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v303, v308);
    sub_1D2A206F8(v308, &v309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v214 = *&v303[0];
    if (*&v303[0])
    {
      sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
      v215 = sub_1D2AC6F84();
      [v214 setPreviewAspectRatio_];

      goto LABEL_119;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v216 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v217 = sub_1D2AC63B4();
    __swift_project_value_buffer(v217, qword_1EC7040C0);
    v218 = v216;
    v219 = sub_1D2AC6394();
    v220 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v221 = 138412290;
      v223 = v216;
      v224 = _swift_stdlib_bridgeErrorToNSError();
      *(v221 + 4) = v224;
      *v222 = v224;
      _os_log_impl(&dword_1D2A17000, v219, v220, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v221, 0xCu);
      sub_1D2A2E61C(v222, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v222, -1, -1);
      MEMORY[0x1D38A8460](v221, -1, -1);
    }
  }

  v225 = swift_allocObject();
  *(v225 + 16) = sub_1D2A2E6B4;
  *(v225 + 24) = v209;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v226 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v227 = *(v2 + v226);
  v228 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v226) = v227;
  if ((v228 & 1) == 0)
  {
    v227 = sub_1D2A4486C(0, v227[2] + 1, 1, v227);
    *(v2 + v226) = v227;
  }

  v230 = v227[2];
  v229 = v227[3];
  v11 = v292;
  if (v230 >= v229 >> 1)
  {
    v227 = sub_1D2A4486C((v229 > 1), v230 + 1, 1, v227);
  }

  v227[2] = v230 + 1;
  v231 = &v227[2 * v230];
  v231[4] = sub_1D2A2E724;
  v231[5] = v225;
  *(v2 + v226) = v227;
  swift_endAccess();
  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_119:
  v232 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
  if (!v232)
  {
    goto LABEL_133;
  }

  v233 = swift_allocObject();
  *(v233 + 16) = v232;
  v234 = swift_allocObject();
  swift_weakInit();
  v235 = swift_allocObject();
  v235[2] = v234;
  v235[3] = sub_1D2A57784;
  v235[4] = 0;
  v235[5] = sub_1D2A6062C;
  v235[6] = v233;
  swift_getKeyPath();
  *&v309 = v2;
  v236 = v232;

  sub_1D2AC6094();

  v237 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v237)
  {
    *&v311 = sub_1D2A57784;
    *(&v311 + 1) = 0;
    *&v309 = MEMORY[0x1E69E9820];
    *(&v309 + 1) = 1107296256;
    *&v310 = sub_1D2A44320;
    *(&v310 + 1) = &block_descriptor_247;
    v238 = _Block_copy(&v309);
    v239 = v237;

    v240 = [v239 remoteObjectProxyWithErrorHandler_];
    _Block_release(v238);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v303, v308);
    sub_1D2A206F8(v308, &v309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v241 = *&v303[0];
    if (*&v303[0])
    {
      [*&v303[0] setPreGeneratedImage_];

      goto LABEL_133;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v242 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v243 = sub_1D2AC63B4();
    __swift_project_value_buffer(v243, qword_1EC7040C0);
    v244 = v242;
    v245 = sub_1D2AC6394();
    v246 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v245, v246))
    {
      v247 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      *v247 = 138412290;
      v249 = v242;
      v250 = _swift_stdlib_bridgeErrorToNSError();
      *(v247 + 4) = v250;
      *v248 = v250;
      _os_log_impl(&dword_1D2A17000, v245, v246, "Could not send pregenerated image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v247, 0xCu);
      sub_1D2A2E61C(v248, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v248, -1, -1);
      MEMORY[0x1D38A8460](v247, -1, -1);
    }
  }

  v289 = v236;
  v251 = swift_allocObject();
  *(v251 + 16) = sub_1D2A2E6B4;
  *(v251 + 24) = v235;
  swift_getKeyPath();
  *&v309 = v2;

  sub_1D2AC6094();

  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v252 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v253 = *(v2 + v252);
  v254 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v252) = v253;
  if ((v254 & 1) == 0)
  {
    v253 = sub_1D2A4486C(0, v253[2] + 1, 1, v253);
    *(v2 + v252) = v253;
  }

  v256 = v253[2];
  v255 = v253[3];
  v257 = v289;
  if (v256 >= v255 >> 1)
  {
    v253 = sub_1D2A4486C((v255 > 1), v256 + 1, 1, v253);
  }

  v253[2] = v256 + 1;
  v258 = &v253[2 * v256];
  v258[4] = sub_1D2A2E724;
  v258[5] = v251;
  *(v2 + v252) = v253;
  swift_endAccess();
  *&v309 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

  v11 = v292;
LABEL_133:
  v259 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy);
  if (v259 != 3)
  {
    v260 = swift_allocObject();
    *(v260 + 16) = v259;
    v261 = swift_allocObject();
    swift_weakInit();
    v262 = swift_allocObject();
    v262[2] = v261;
    v262[3] = sub_1D2A577B4;
    v262[4] = 0;
    v262[5] = sub_1D2A60608;
    v262[6] = v260;
    swift_getKeyPath();
    *&v309 = v2;

    sub_1D2AC6094();

    v263 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v263)
    {
      *&v311 = sub_1D2A577B4;
      *(&v311 + 1) = 0;
      *&v309 = MEMORY[0x1E69E9820];
      *(&v309 + 1) = 1107296256;
      *&v310 = sub_1D2A44320;
      *(&v310 + 1) = &block_descriptor_232;
      v264 = _Block_copy(&v309);
      v265 = v263;

      v266 = [v265 remoteObjectProxyWithErrorHandler_];
      _Block_release(v264);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v303, v308);
      sub_1D2A206F8(v308, &v309);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v267 = *&v303[0];
      if (*&v303[0])
      {
        v268 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v267 setImageImportPolicy_];

        return (*(v11 + 8))(v291, v290);
      }
    }

    else
    {
      sub_1D2A2DF64();
      v269 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v270 = sub_1D2AC63B4();
      __swift_project_value_buffer(v270, qword_1EC7040C0);
      v271 = v269;
      v272 = sub_1D2AC6394();
      v273 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        *v274 = 138412290;
        v276 = v269;
        v277 = _swift_stdlib_bridgeErrorToNSError();
        *(v274 + 4) = v277;
        *v275 = v277;
        _os_log_impl(&dword_1D2A17000, v272, v273, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v274, 0xCu);
        sub_1D2A2E61C(v275, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v275, -1, -1);
        MEMORY[0x1D38A8460](v274, -1, -1);
      }
    }

    v278 = swift_allocObject();
    *(v278 + 16) = sub_1D2A2E6B4;
    *(v278 + 24) = v262;
    swift_getKeyPath();
    *&v309 = v2;

    sub_1D2AC6094();

    *&v309 = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v279 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v280 = *(v2 + v279);
    v281 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v279) = v280;
    if ((v281 & 1) == 0)
    {
      v280 = sub_1D2A4486C(0, v280[2] + 1, 1, v280);
      *(v2 + v279) = v280;
    }

    v283 = v280[2];
    v282 = v280[3];
    v11 = v292;
    if (v283 >= v282 >> 1)
    {
      v280 = sub_1D2A4486C((v282 > 1), v283 + 1, 1, v280);
    }

    v280[2] = v283 + 1;
    v284 = &v280[2 * v283];
    v284[4] = sub_1D2A2E724;
    v284[5] = v278;
    *(v2 + v279) = v280;
    swift_endAccess();
    *&v309 = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }

  return (*(v11 + 8))(v291, v290);
}

uint64_t sub_1D2A5B80C()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  swift_beginAccess();
}

uint64_t sub_1D2A5B8CC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1D2A5B93C(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  v12 = sub_1D2A5588C(a1, a2);
  if (v12)
  {
    v20 = v12;
    a3();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1D2A2E6B4;
    *(v13 + 24) = v11;
    swift_getKeyPath();
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    swift_getKeyPath();
    sub_1D2AC60B4();

    v14 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v15 = *(v5 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D2A4486C(0, v15[2] + 1, 1, v15);
      *(v5 + v14) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1D2A4486C((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = &v15[2 * v18];
    v19[4] = sub_1D2A2E724;
    v19[5] = v13;
    *(v5 + v14) = v15;
    swift_endAccess();
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void sub_1D2A5BC04(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_1D2A5588C(a2, a3);
    if (v7)
    {
      v8 = v7;
      a4();
    }

    else
    {
    }
  }
}

uint64_t sub_1D2A5BCAC()
{
  sub_1D2A2E61C(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration, &qword_1EC704488, &qword_1D2ACB720);

  sub_1D2A609E4(*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 8), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 24), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 40), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 56), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 72), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 88));

  sub_1D2A47930(*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8));

  v1 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager___observationRegistrar;
  v2 = sub_1D2AC60D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D2A5BDF0()
{
  sub_1D2A5BCAC();

  return swift_deallocClassInstance();
}

void sub_1D2A5BE70(uint64_t a1)
{
  sub_1D2A5BFB4(319);
  if (v1 <= 0x3F)
  {
    sub_1D2AC60D4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2A5BFB4(uint64_t a1)
{
  if (!qword_1EE088858)
  {
    sub_1D2AC6F34();
    v1 = sub_1D2AC6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE088858);
    }
  }
}

uint64_t sub_1D2A5C00C(uint64_t a1)
{
  v3 = sub_1D2AC6B04();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D2AC6B24();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v15 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  v11[2] = Strong;
  v11[3] = v10;
  v11[4] = a1;
  aBlock[4] = sub_1D2A60560;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = &block_descriptor_191;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D2AC6B14();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  v13 = v15;
  MEMORY[0x1D38A7320](0, v8, v5, v12);
  _Block_release(v12);
  swift_unknownObjectRelease();

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_1D2A5C380(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D2AC6B04();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D2AC6B24();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v19 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = Strong;
  *(v15 + 24) = v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  aBlock[4] = sub_1D2A60448;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = &block_descriptor_179;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D2AC6B14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  v17 = v19;
  MEMORY[0x1D38A7320](0, v12, v9, v16);
  _Block_release(v16);
  swift_unknownObjectRelease();

  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

uint64_t sub_1D2A5C768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2AC6B04();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D2AC6B24();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v18 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *(v3 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = Strong;
  *(v14 + 24) = v13;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_1D2AC6B14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  v16 = v18;
  MEMORY[0x1D38A7320](0, v11, v8, v15);
  _Block_release(v15);
  swift_unknownObjectRelease();

  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1D2A5CA7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1D2A5CAC0(uint64_t a1)
{
  v3 = sub_1D2AC6B04();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D2AC6B24();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v15 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v1 + 40);
  v11 = swift_allocObject();
  v11[2] = Strong;
  v11[3] = v10;
  v11[4] = a1;
  aBlock[4] = sub_1D2A60398;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = &block_descriptor_167;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D2AC6B14();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  v13 = v15;
  MEMORY[0x1D38A7320](0, v8, v5, v12);
  _Block_release(v12);
  swift_unknownObjectRelease();

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_1D2A5CDF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for GPExportablePhotoAsset(0);
  v5 = sub_1D2AC6D34();

  a4(v5);
}

uint64_t sub_1D2A5CED8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    result = (*(a2 + 40))(a3 & 1, ObjectType, a2);
  }

  if (a4)
  {
    v10 = swift_getObjectType();
    return (*(a5 + 24))(a3 & 1, v10, a5);
  }

  return result;
}

uint64_t sub_1D2A5CF88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_1D2A5D008(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v5 = v4;
  v7 = sub_1D2AC6B04();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2AC6B24();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v24 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v4 + 24);
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = *(v5 + 40);
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  *(v17 + 24) = v14;
  *(v17 + 32) = a1;
  *(v17 + 40) = v15;
  *(v17 + 48) = v16;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D2AC6B14();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  v19 = v24;
  MEMORY[0x1D38A7320](0, v12, v9, v18);
  _Block_release(v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1D2A5D330(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    result = (*(a2 + 48))(a3 & 1, ObjectType, a2);
  }

  if (a4)
  {
    v10 = swift_getObjectType();
    return (*(a5 + 32))(a3 & 1, v10, a5);
  }

  return result;
}

uint64_t sub_1D2A5D408(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = sub_1D2AC6B04();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D2AC6B24();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v20 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v4 + 40);
  v15 = swift_allocObject();
  *(v15 + 16) = Strong;
  *(v15 + 24) = v14;
  *(v15 + 32) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_1D2AC6B14();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  v17 = v20;
  MEMORY[0x1D38A7320](0, v12, v9, v16);
  _Block_release(v16);
  swift_unknownObjectRelease();

  (*(v23 + 8))(v9, v7);
  (*(v10 + 8))(v12, v22);
}

uint64_t sub_1D2A5D728()
{
  sub_1D2A1D53C(v0 + 16);
  sub_1D2A1D53C(v0 + 32);
  sub_1D2A1D53C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A5D794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704478, &qword_1D2ACB718);
  sub_1D2A2DB64(&qword_1EC704480, &qword_1EC704478, &qword_1D2ACB718, MEMORY[0x1E697D680]);
  return sub_1D2AC67B4();
}

uint64_t sub_1D2A5D884@<X0>(uint64_t a1@<X8>)
{
  sub_1D2AC66D4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  v3 = sub_1D2AC68E4();
  v5 = v4;
  v7 = v6;
  sub_1D2AC68C4();
  v8 = sub_1D2AC68D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1D2A470D4(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1D2A5D9CC@<X0>(uint64_t a1@<X8>)
{
  sub_1D2AC66D4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  result = sub_1D2AC68E4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D2A5DAAC(uint64_t a1)
{
  v2 = sub_1D2AC66D4();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  return MEMORY[0x1EEDDC860](v2, v4, v6 & 1, v8, sub_1D2A5FF68, a1);
}

uint64_t sub_1D2A5DB48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704420, &qword_1D2ACB6C8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704428, &qword_1D2ACB6D0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  swift_getKeyPath();
  v15[1] = a1;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  if (*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) == 1 && !*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704468, &qword_1D2ACB710);
    sub_1D2A2DB64(&qword_1EC704470, &qword_1EC704468, &qword_1D2ACB710, MEMORY[0x1E697C7C8]);
    sub_1D2AC65D4();
    v13 = sub_1D2AC6894();
    v14 = &v7[*(v5 + 36)];
    *v14 = v13;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    v14[40] = 1;
    sub_1D2A2E5B4(v7, v4, &qword_1EC704428, &qword_1D2ACB6D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704438, &qword_1D2ACB700);
    sub_1D2A5FDC0();
    sub_1D2A5FE78();
    sub_1D2AC6714();
    return sub_1D2A2E61C(v7, &qword_1EC704428, &qword_1D2ACB6D0);
  }

  else
  {
    sub_1D2AC66D4();
    if (qword_1EC703630 != -1)
    {
      swift_once();
    }

    v8 = qword_1EC728B78;
    *v4 = sub_1D2AC68E4();
    *(v4 + 1) = v9;
    v4[16] = v10 & 1;
    *(v4 + 3) = v11;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704438, &qword_1D2ACB700);
    sub_1D2A5FDC0();
    sub_1D2A5FE78();
    return sub_1D2AC6714();
  }
}

uint64_t sub_1D2A5DEE8@<X0>(uint64_t a1@<X8>)
{
  sub_1D2A5DB48(*v1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704418, &qword_1D2ACB6C0);
  *(a1 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1D2A5DF30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A5DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2AC6DA4();
  *(v4 + 48) = sub_1D2AC6D94();
  v6 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A5E02C, v6, v5);
}

uint64_t sub_1D2A5E02C()
{
  v1 = *(v0 + 40);

  v2 = v1 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent;
  v3 = type metadata accessor for _AppExtensionHostView(0);
  v4 = v2 + *(v3 + 28);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);
    sub_1D2A2E6BC(v5, v6);
  }

  v8 = v2 + *(v3 + 32);
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *(v8 + 16);
    *(v0 + 16) = *v8;
    *(v0 + 24) = v9;
    *(v0 + 32) = v10 & 1;
    *(v0 + 33) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
    sub_1D2AC6A94();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D2A5E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for _AppExtensionHostView(0);
  v5[5] = swift_task_alloc();
  sub_1D2AC6DA4();
  v5[6] = sub_1D2AC6D94();
  v7 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A5E234, v7, v6);
}

uint64_t sub_1D2A5E234()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];

  *(v3 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate) = 0;
  v4 = OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent;
  v5 = *(v3 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent);
  v6 = *(v5 + 16);
  *(v5 + 16) = v2;
  v7 = v2;

  sub_1D2A60E30(v3 + v4, v1, type metadata accessor for _AppExtensionHostView);
  v8 = *(*v1 + 16);
  if (v8)
  {
    v9 = v8;
    sub_1D2A55A84(v9);
  }

  else
  {
    sub_1D2A579A4();
  }

  sub_1D2A5FF70(v0[5], type metadata accessor for _AppExtensionHostView);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D2A5E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for _AppExtensionHostView(0);
  v4[7] = swift_task_alloc();
  sub_1D2AC6DA4();
  v4[8] = sub_1D2AC6D94();
  v6 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A5E568, v6, v5);
}

uint64_t sub_1D2A5E568()
{
  v1 = *(v0 + 40);

  if ((*(v1 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate) & 1) == 0)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    *(v1 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate) = 1;
    v4 = v3 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent;
    v5 = *(v3 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    sub_1D2A60E30(v4, v2, type metadata accessor for _AppExtensionHostView);
    v7 = *(*v2 + 16);
    if (v7)
    {
      v8 = v7;
      sub_1D2A55A84(v8);
    }

    else
    {
      sub_1D2A579A4();
    }

    v9 = *(v0 + 48);
    sub_1D2A5FF70(*(v0 + 56), type metadata accessor for _AppExtensionHostView);
    v10 = v4 + *(v9 + 32);
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *(v10 + 16);
      *(v0 + 16) = *v10;
      *(v0 + 24) = v11;
      *(v0 + 32) = v12 & 1;
      *(v0 + 33) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
      sub_1D2AC6A94();
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_1D2A5E718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D2AC6DD4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D2AC6DA4();
  v12 = a1;
  v13 = sub_1D2AC6D94();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_1D2A2F088(0, 0, v10, a6, v14);
}

id sub_1D2A5E874()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2A5E90C(uint64_t a1)
{
  result = type metadata accessor for _AppExtensionHostView(319);
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

id sub_1D2A5E9C4()
{
  type metadata accessor for GPEXHostViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704498, &qword_1D2ACB728);
  sub_1D2AC6874();
  [v1 setDelegate_];

  type metadata accessor for _AppExtensionHostView(0);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044A0, &unk_1D2ACB730));
  swift_retain_n();
  v3 = sub_1D2AC6704();
  v4 = *(*v0 + 24);
  *(*v0 + 24) = v3;
  v5 = v3;

  result = [v5 view];
  if (result)
  {
    v7 = result;
    [v1 setPlaceholderView_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D2A5EAFC(void *a1)
{
  v47 = sub_1D2AC62D4();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - v7;
  v9 = sub_1D2AC6F34();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v16 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_1D2AC7174();
    __break(1u);
    return;
  }

  v19 = type metadata accessor for _AppExtensionHostView(0);
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704398, &unk_1D2ACB430);
  MEMORY[0x1D38A6EC0](v21);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D2A2E61C(v15, &unk_1EC7043C0, &qword_1D2ACA0B0);
    (*(v50 + 56))(v6, 1, 1, v51);
    sub_1D2A54DE0(v6);

    return;
  }

  v40 = v19;
  v41 = v6;
  v42 = v20;
  v22 = v49;
  sub_1D2A60E98(v15, v49, type metadata accessor for _AppExtensionHostView.Configuration);
  sub_1D2AC6F44();
  v24 = v50;
  v23 = v51;
  if ((*(v50 + 48))(v8, 1, v51) == 1)
  {
    sub_1D2A2E61C(v8, &qword_1EC704488, &qword_1D2ACB720);
    v26 = v46;
    v25 = v47;
    v27 = v45;
  }

  else
  {
    v28 = v43;
    (*(v24 + 32))(v43, v8, v23);
    v26 = v46;
    v29 = v23;
    sub_1D2AC6F04();
    sub_1D2A5FD78(&qword_1EC704490, MEMORY[0x1E6966C00], MEMORY[0x1E6966C08]);
    v25 = v47;
    v30 = sub_1D2AC6BC4();
    v27 = v45;
    (*(v45 + 8))(v26, v25);
    if (v30)
    {
      v31 = sub_1D2AC6F24();
      v33 = (v22 + *(v16 + 20));
      if (v31 == *v33 && v32 == v33[1])
      {

        (*(v50 + 8))(v28, v51);
      }

      else
      {
        v39 = sub_1D2AC7354();

        v24 = v50;
        v23 = v51;
        (*(v50 + 8))(v28, v51);
        if ((v39 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      sub_1D2A5FF70(v49, type metadata accessor for _AppExtensionHostView.Configuration);

      return;
    }

    (*(v24 + 8))(v28, v29);
    v23 = v29;
  }

LABEL_11:
  v34 = v49;
  (*(v27 + 16))(v26, v49, v25);

  v35 = v44;
  sub_1D2AC6F14();
  v36 = *(v24 + 16);
  v37 = v41;
  v36(v41, v35, v23);
  v38 = *(v24 + 56);
  v38(v37, 0, 1, v23);
  sub_1D2A54DE0(v37);
  v36(v37, v35, v23);
  v38(v37, 0, 1, v23);
  sub_1D2AC6F54();

  (*(v24 + 8))(v35, v23);
  sub_1D2A5FF70(v34, type metadata accessor for _AppExtensionHostView.Configuration);
}

uint64_t sub_1D2A5F1E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A60E30(v2, v5, type metadata accessor for _AppExtensionHostView);
  v6 = type metadata accessor for _AppExtensionHostView.HostCoordinator(0);
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate] = 0;
  sub_1D2A60E30(v5, &v7[OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent], type metadata accessor for _AppExtensionHostView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1D2A5FF70(v5, type metadata accessor for _AppExtensionHostView);
  *a2 = v8;
  return result;
}

uint64_t sub_1D2A5F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2A5FD78(&qword_1EC7044A8, type metadata accessor for _AppExtensionHostView, &unk_1D2ACB55C);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D2A5F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2A5FD78(&qword_1EC7044A8, type metadata accessor for _AppExtensionHostView, &unk_1D2ACB55C);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D2A5F450(uint64_t a1)
{
  sub_1D2A5FD78(&qword_1EC7044A8, type metadata accessor for _AppExtensionHostView, &unk_1D2ACB55C);
  sub_1D2AC6854();
  __break(1u);
}

id sub_1D2A5F6CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GPEXHostViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GPHostSideConnectionManager.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GPHostSideConnectionManager.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D2A5F798(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A5F7B4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1D2A5F80C(uint64_t a1)
{
  type metadata accessor for _AppExtensionHostView.MutableState();
  if (v1 <= 0x3F)
  {
    sub_1D2A60C14(319, &qword_1EC7043B8, &unk_1EC7043C0, &qword_1D2ACA0B0, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GPHostSideConnectionManager(319);
      if (v3 <= 0x3F)
      {
        sub_1D2A60C14(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D2A60C14(319, &qword_1EE088898, &unk_1EC7043E0, &qword_1D2AC9CC0, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D2A5F9A4(uint64_t a1)
{
  result = sub_1D2AC62D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D2A5FA2C()
{
  result = qword_1EC7043F0;
  if (!qword_1EC7043F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7043F0);
  }

  return result;
}

void sub_1D2A5FAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }
}

uint64_t sub_1D2A5FB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  v7 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration;
  v8 = sub_1D2AC6F34();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = 0;
  v9 = v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
  *v9 = 1;
  *(v9 + 8) = 1;
  v10 = v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = 0;
  v11 = (v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = 3;
  v12 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData) = xmmword_1D2AC9FC0;
  v13 = v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = 3;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers) = v12;
  sub_1D2AC60C4();
  type metadata accessor for GPHostSideExportedObject();
  v14 = swift_allocObject();
  v14[3] = 0;
  swift_unknownObjectWeakInit();
  v14[5] = 0;
  swift_unknownObjectWeakInit();
  v14[7] = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) = v14;
  v14[3] = a2;
  swift_unknownObjectWeakAssign();
  *(*(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 40) = a4;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1D2A5FD78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2A5FDC0()
{
  result = qword_1EC704440;
  if (!qword_1EC704440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704428, &qword_1D2ACB6D0);
    sub_1D2A2DB64(&qword_1EC704448, &qword_1EC704450, &qword_1D2ACB708, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704440);
  }

  return result;
}

unint64_t sub_1D2A5FE78()
{
  result = qword_1EC704458;
  if (!qword_1EC704458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704438, &qword_1D2ACB700);
    sub_1D2A5FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704458);
  }

  return result;
}

unint64_t sub_1D2A5FF04()
{
  result = qword_1EC704460;
  if (!qword_1EC704460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704460);
  }

  return result;
}

uint64_t sub_1D2A5FF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A5FFD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2A47C5C;

  return sub_1D2A5E4A0(a1, v4, v5, v6);
}

uint64_t sub_1D2A60084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A5E16C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D2A60184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2A47C5C;

  return sub_1D2A5DF94(a1, v4, v5, v6);
}

void sub_1D2A60238()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v1, ObjectType, v2);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_145Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1D2A60338()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v1, ObjectType, v2);
  }
}

void sub_1D2A60398()
{
  if (v0[2])
  {
    v2 = v0[3];
    v1 = v0[4];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v1, ObjectType, v2);
  }
}

void sub_1D2A603F4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 24))(ObjectType, v1);
  }
}

uint64_t sub_1D2A60448()
{
  v1 = *(v0 + 40);
  if (*(v0 + 16))
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v2, ObjectType, v3);
  }

  else
  {
    v5 = 1;
  }

  return v1(v5 & 1);
}

void sub_1D2A604CC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
  }
}

uint64_t objectdestroy_163Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D2A60560()
{
  if (v0[2])
  {
    v2 = v0[3];
    v1 = v0[4];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v1, ObjectType, v2);
  }
}

void sub_1D2A60680(void *a1)
{
  v2 = sub_1D2AC6BF4();
  [a1 setSelectedGenerationStyle_];
}

void sub_1D2A606DC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_1D2A60714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1D2A6076C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D2A60824(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D2AC5D64();
  swift_allocObject();
  result = sub_1D2AC5D24();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D2A608A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D2AC5D64();
  swift_allocObject();
  result = sub_1D2AC5D24();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D2AC5F04();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D2A60924()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection) = v1;
  v4 = v1;

  return sub_1D2A54F54();
}

uint64_t sub_1D2A60974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D2A609E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    sub_1D2A2D7CC(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

void sub_1D2A60ACC(uint64_t a1)
{
  sub_1D2A60C14(319, &unk_1EE0888A0, &unk_1EC7043C0, &qword_1D2ACA0B0, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GPHostSideConnectionManager(319);
    if (v2 <= 0x3F)
    {
      sub_1D2A60C14(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D2A60C14(319, &qword_1EE088898, &unk_1EC7043E0, &qword_1D2AC9CC0, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2A60C14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D2A60C78()
{
  result = qword_1EC704530;
  if (!qword_1EC704530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704418, &qword_1D2ACB6C0);
    sub_1D2A60D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704530);
  }

  return result;
}

unint64_t sub_1D2A60D04()
{
  result = qword_1EC704538;
  if (!qword_1EC704538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704540, &qword_1D2ACB840);
    sub_1D2A60D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704538);
  }

  return result;
}

unint64_t sub_1D2A60D88()
{
  result = qword_1EC704548;
  if (!qword_1EC704548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC704550, &qword_1D2ACB848);
    sub_1D2A5FDC0();
    sub_1D2A5FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704548);
  }

  return result;
}

uint64_t sub_1D2A60E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A60E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A60F00()
{
  v2 = *(type metadata accessor for GenerativePlaygroundRemoteView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D2A2E260;

  return sub_1D2A544B4(v4, v5, v0 + v3);
}

uint64_t sub_1D2A60FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2A6104C()
{
  result = qword_1EC704588;
  if (!qword_1EC704588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704580, &qword_1D2ACB8D8);
    sub_1D2A5FD78(&qword_1EC7043F8, type metadata accessor for _AppExtensionHostView, &unk_1D2ACB50C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704588);
  }

  return result;
}

uint64_t sub_1D2A61108()
{
  type metadata accessor for GenerativePlaygroundRemoteView(0);

  return sub_1D2A5436C();
}

unint64_t sub_1D2A61168()
{
  result = qword_1EC704598;
  if (!qword_1EC704598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
    sub_1D2A2DB64(&qword_1EC7045A0, &qword_1EC7045A8, &qword_1D2ACB8E0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704598);
  }

  return result;
}

uint64_t sub_1D2A613A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045B8, &qword_1D2ACB8E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A61410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045B8, &qword_1D2ACB8E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2A61490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045B8, &qword_1D2ACB8E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A615B8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  sub_1D2A613A0(v1 + v2, &v5);
  if (v6)
  {
    sub_1D2A206F8(&v5, &v7);
    type metadata accessor for CVBuffer(0);
    swift_dynamicCast();
    return v4;
  }

  else
  {
    sub_1D2A61410(&v5);
    return 0;
  }
}

void sub_1D2A6165C(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = 0;
  if (a3)
  {
    type metadata accessor for CVBuffer(0);
  }

  else
  {
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = a3;
  v11[3] = v7;
  v8 = *a4;
  swift_beginAccess();
  v9 = a1;
  v10 = a3;
  sub_1D2A61490(v11, &a1[v8]);
  swift_endAccess();
}

uint64_t sub_1D2A616F8(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    type metadata accessor for CVBuffer(0);
  }

  else
  {
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = a1;
  v7[3] = a1;
  v5 = *a2;
  swift_beginAccess();
  sub_1D2A61490(v7, v2 + v5);
  return swift_endAccess();
}

double GPDrawOnImageRecipe.baseImageRatio.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.baseImageRatio.setter(double a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GPDrawOnImageRecipe.sketchComplexityMeasure.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.sketchComplexityMeasure.setter(double a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t GPDrawOnImageRecipe.generateCaptionFromImage.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.generateCaptionFromImage.setter(char a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t GPDrawOnImageRecipe.sanitizationCategory.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.sanitizationCategory.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t GPDrawOnImageRecipe.drawOnImageAssignmentOptions.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.drawOnImageAssignmentOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 baseImageRatio:a4 & 1 sketchComplexityMeasure:a5 generateCaptionFromImage:a6 sanitizationCategory:a7 drawOnImageAssignmentOptions:a8];

  return v11;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v15 = (v8 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (v8 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = (v8 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v17 = 0u;
  v17[1] = 0u;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v27.super_class = GPDrawOnImageRecipe;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  [v18 setBaseImage_];
  [v18 setSketchImage_];
  [v18 setSketchMask_];

  v19 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v18[v19] = a7;
  v20 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v18[v20] = a8;
  v21 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v18[v21] = a4;
  v22 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *&v18[v22] = a5;
  v23 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v18[v23] = a6;

  return v18;
}

Swift::Bool __swiftcall GPDrawOnImageRecipe.canBeUsedToGenerate(hasAPrompt:)(Swift::Bool hasAPrompt)
{
  v3 = [v1 baseImage];
  v4 = v3;
  if (v3)
  {
  }

  v5 = [v1 sketchImage];
  if (v5)
  {

    if (v4)
    {
      v6 = [v1 sanitizationCategory] != 3;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 baseImage];
    v8 = v7;
    if (v7)
    {
    }

    v9 = [v1 sketchImage];
    if (v9)
    {

      goto LABEL_14;
    }

    if (v8 && [v1 sanitizationCategory] == 3)
    {
LABEL_14:
      if (!v6)
      {
        return hasAPrompt;
      }
    }

    return 1;
  }

  return v4 && [v1 sanitizationCategory] != 3;
}

Swift::Bool __swiftcall GPDrawOnImageRecipe.needsPromptForSketch(hasAPrompt:)(Swift::Bool hasAPrompt)
{
  v3 = [v1 baseImage];
  v4 = v3;
  if (v3)
  {
  }

  v5 = [v1 sketchImage];
  if (v5)
  {
  }

  else if (!v4 || [v1 sanitizationCategory] != 3)
  {
    return 0;
  }

  return !hasAPrompt;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, double a6, double a7)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 baseImageRatio:a4 & 1 sketchComplexityMeasure:a5 generateCaptionFromImage:a6 drawOnImageAssignmentOptions:a7];

  return v10;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, double a6, double a7)
{
  v14 = (v7 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = (v7 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (v7 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v16 = 0u;
  v16[1] = 0u;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v25.super_class = GPDrawOnImageRecipe;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  [v17 setBaseImage_];
  [v17 setSketchImage_];
  [v17 setSketchMask_];

  v18 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v17[v18] = a6;
  v19 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v17[v19] = a7;
  v20 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v17[v20] = a4;
  v21 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *&v17[v21] = 0;
  v22 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v17[v22] = a5;

  return v17;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 baseImageRatio:a4 sketchComplexityMeasure:a5 drawOnImageAssignmentOptions:a6];

  return v9;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = (v6 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v6 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = (v6 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v14 = 0u;
  v14[1] = 0u;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v22.super_class = GPDrawOnImageRecipe;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  [v15 setBaseImage_];
  [v15 setSketchImage_];
  [v15 setSketchMask_];

  v16 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v15[v16] = a5;
  v17 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v15[v17] = a6;
  v18 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v15[v18] = 1;
  v19 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v15[v19] = a4;

  return v15;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 sketchComplexityMeasure:a4 drawOnImageAssignmentOptions:a5];

  return v8;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v10 = (v5 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v5 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = (v5 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v12 = 0u;
  v12[1] = 0u;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v21.super_class = GPDrawOnImageRecipe;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  [v13 setBaseImage_];
  [v13 setSketchImage_];
  [v13 setSketchMask_];

  v14 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v13[v14] = 0x3FF0000000000000;
  v15 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v13[v15] = a5;
  v16 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v13[v16] = 1;
  v17 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *&v13[v17] = 0;
  v18 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v13[v18] = a4;

  return v13;
}

void __swiftcall GPDrawOnImageRecipe.init()(GPDrawOnImageRecipe *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for GPDrawOnImageRecipe()
{
  result = qword_1EE088860;
  if (!qword_1EE088860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE088860);
  }

  return result;
}

void CGImageRef.toPixelBuffer(orientation:maximumDimension:)(unsigned int a1@<W0>, double a2@<X1>, __CVBuffer *a3@<X2>, CGFloat *a4@<X8>)
{
  v6 = v4;
  v44 = *MEMORY[0x1E69E9840];
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v6);
  v13 = Height;
  v14 = 1.0;
  if (a3)
  {
    v15 = Height;
    v16 = Width;
  }

  else
  {
    v17 = a2;
    if (Width > v13)
    {
      v18 = Width;
    }

    else
    {
      v18 = Height;
    }

    v15 = Height;
    v16 = Width;
    if (v18 > a2)
    {
      v19 = CGImageGetWidth(v6);
      if (CGImageGetHeight(v6) >= v19)
      {
        v14 = v17 / v13;
        v16 = v17 / v13 * Width;
        v15 = v17;
      }

      else
      {
        v14 = v17 / Width;
        v15 = v17 / Width * v13;
        v16 = v17;
      }
    }
  }

  if (a1 - 5 >= 4)
  {
    v20 = v15;
  }

  else
  {
    v20 = v16;
  }

  if (a1 - 5 >= 4)
  {
    v15 = v16;
  }

  if (v15 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_38;
  }

  v21 = v15;
  v22 = v20;
  v23 = CGImageGetColorSpace(v6);
  v5 = sub_1D2A63754(v21, v22, v23);
  a3 = v24;

  if (a1 > 8)
  {
    goto LABEL_28;
  }

  if (((1 << a1) & 0x18) != 0)
  {
    v25 = 0;
    v26 = 3.14159265;
    goto LABEL_30;
  }

  if (((1 << a1) & 0xC0) != 0)
  {
    v25 = 1;
    v26 = -1.57079633;
    goto LABEL_30;
  }

  if (((1 << a1) & 0x120) != 0)
  {
    v25 = 1;
    v26 = 1.57079633;
  }

  else
  {
LABEL_28:
    if (a1 - 1 >= 2)
    {
      type metadata accessor for CGImagePropertyOrientation(0);
      sub_1D2AC7384();
      __break(1u);
      return;
    }

    v25 = 0;
    v26 = 0.0;
  }

LABEL_30:
  CGAffineTransformMakeScale(&transform, v14, v14);
  if (v25)
  {
    v27 = v13 * 0.5;
    v28 = Width * 0.5;
  }

  else
  {
    v27 = Width * 0.5;
    v28 = v13 * 0.5;
  }

  CGAffineTransformTranslate(&v42, &transform, v27, v28);
  transform = v42;
  CGAffineTransformRotate(&v42, &transform, v26);
  transform = v42;
  CGAffineTransformTranslate(&v42, &transform, Width * -0.5, v13 * -0.5);
  v29 = *&v42.a;
  v30 = *&v42.c;
  v31 = *&v42.tx;
  if (a1 <= 7 && ((1 << a1) & 0xB4) != 0)
  {
    transform = v42;
    CGAffineTransformTranslate(&v42, &transform, Width, 0.0);
    transform = v42;
    CGAffineTransformScale(&v42, &transform, -1.0, 1.0);
    v29 = *&v42.a;
    v30 = *&v42.c;
    v31 = *&v42.tx;
  }

  *&transform.a = v29;
  *&transform.c = v30;
  *&transform.tx = v31;
  CGContextConcatCTM(v5, &transform);
  v32 = CGImageGetWidth(v6);
  v33 = CGImageGetHeight(v6);
  CGContextSetGrayFillColor(v5, 1.0, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045F8, &qword_1D2ACB910);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D2AC95B0;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0;
  *(v34 + 48) = v32;
  *(v34 + 56) = v33;
  sub_1D2AC6E64();

  sub_1D2AC6E54();
  if (!CVPixelBufferUnlockBaseAddress(a3, 0))
  {
    goto LABEL_41;
  }

  if (qword_1EC703598 != -1)
  {
    goto LABEL_50;
  }

LABEL_38:
  v35 = sub_1D2AC63B4();
  __swift_project_value_buffer(v35, qword_1EC7040A8);
  v36 = sub_1D2AC6394();
  v37 = sub_1D2AC6E94();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D2A17000, v36, v37, "Can't unlock base address", v38, 2u);
    MEMORY[0x1D38A8460](v38, -1, -1);
  }

LABEL_41:
  transform.a = 0.0;
  v39 = VTCreateCGImageFromCVPixelBuffer(a3, 0, &transform);
  v40 = sub_1D2AC63E4();

  if (v39 == v40 && (a = transform.a, *&transform.a))
  {
    *a4 = a3;
    a4[1] = a;
  }

  else
  {

    *a4 = 0.0;
    a4[1] = 0.0;
  }
}

uint64_t CGImageRef.ImageError.hashValue.getter()
{
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](0);
  return sub_1D2AC7484();
}

CGAffineTransform *static CGAffineTransform.transform(width:height:orientation:scale:)@<X0>(unsigned int a1@<W0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, CGFloat a5@<D2>)
{
  if (a1 <= 8)
  {
    if (((1 << a1) & 0x18) != 0)
    {
      v9 = 0;
      v10 = 3.14159265;
      goto LABEL_10;
    }

    if (((1 << a1) & 0xC0) != 0)
    {
      v9 = 1;
      v10 = -1.57079633;
      goto LABEL_10;
    }

    if (((1 << a1) & 0x120) != 0)
    {
      v9 = 1;
      v10 = 1.57079633;
      goto LABEL_10;
    }
  }

  if (a1 - 1 >= 2)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    result = sub_1D2AC7384();
    __break(1u);
    return result;
  }

  v9 = 0;
  v10 = 0.0;
LABEL_10:
  CGAffineTransformMakeScale(&v18, a5, a5);
  if (v9)
  {
    v11 = a4 * 0.5;
    v12 = a3 * 0.5;
  }

  else
  {
    v11 = a3 * 0.5;
    v12 = a4 * 0.5;
  }

  CGAffineTransformTranslate(&v17, &v18, v11, v12);
  v18 = v17;
  CGAffineTransformRotate(&v17, &v18, v10);
  v18 = v17;
  result = CGAffineTransformTranslate(&v17, &v18, a3 * -0.5, a4 * -0.5);
  v14 = *&v17.a;
  v15 = *&v17.c;
  v16 = *&v17.tx;
  if (a1 <= 7 && ((1 << a1) & 0xB4) != 0)
  {
    v18 = v17;
    CGAffineTransformTranslate(&v17, &v18, a3, 0.0);
    v18 = v17;
    result = CGAffineTransformScale(&v17, &v18, -1.0, 1.0);
    v14 = *&v17.a;
    v15 = *&v17.c;
    v16 = *&v17.tx;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  return result;
}

uint64_t CGImageRef.resizedForVGF(orientation:)(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2A634D0, 0, 0);
}

uint64_t sub_1D2A634D0()
{
  v12 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Width = CGImageGetWidth(v1);
  Height = CGImageGetHeight(v1);
  if (Height <= Width)
  {
    v5 = Width;
  }

  else
  {
    v5 = Height;
  }

  v6 = *(v0 + 16);
  if (v5 <= 2048 && v2 == 1)
  {
    v8 = v6;
  }

  else
  {
    CGImageRef.toPixelBuffer(orientation:maximumDimension:)(*(v0 + 24), 2048.0, 0, v11);
    if (v11[0])
    {
      v6 = v11[1];
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t static CGImageRef.resized(from:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D2A635BC, 0, 0);
}

uint64_t sub_1D2A635BC()
{
  v13 = v0;
  v1 = [*(v0 + 24) CGImage];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 24) imageOrientation];
    if ((v3 - 1) > 6)
    {
      v4 = 1;
    }

    else
    {
      v4 = dword_1D2ACBA30[(v3 - 1)];
    }

    CGImageRef.toPixelBuffer(orientation:maximumDimension:)(v4, 2048.0, 0, v12);

    v9 = v12[0];
    if (*&v12[0])
    {
    }
  }

  else
  {
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2AC63B4();
    __swift_project_value_buffer(v5, qword_1EC7040C0);
    v6 = sub_1D2AC6394();
    v7 = sub_1D2AC6E94();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2A17000, v6, v7, "Cannot convert native image into CGImage", v8, 2u);
      MEMORY[0x1D38A8460](v8, -1, -1);
    }

    v9 = 0.0;
  }

  **(v0 + 16) = v9;
  v10 = *(v0 + 8);

  return v10();
}

CGColorSpaceRef sub_1D2A63754(size_t a1, size_t a2, void *a3)
{
  if (a3)
  {
    v7 = a3;
    if (CGColorSpaceSupportsOutput(v7) && CGColorSpaceGetNumberOfComponents(v7) == 3 && !CGColorSpaceUsesExtendedRange(v7))
    {
LABEL_7:
      v9 = sub_1D2A48714(a1, a2);
      if (v3)
      {
      }

      else
      {
        v10 = v9;
        BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
        v12 = CVPixelBufferLockBaseAddress(v10, 0);
        if (v12)
        {
          v4 = v12;
          if (qword_1EC703598 != -1)
          {
            swift_once();
          }

          v13 = sub_1D2AC63B4();
          __swift_project_value_buffer(v13, qword_1EC7040A8);
          v14 = sub_1D2AC6394();
          v15 = sub_1D2AC6E94();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1D2A17000, v14, v15, "Can't lock pixel buffer", v16, 2u);
            MEMORY[0x1D38A8460](v16, -1, -1);
          }

          sub_1D2A490FC();
          swift_allocError();
          *v17 = v4;
          *(v17 + 4) = 1;
        }

        else
        {
          BaseAddress = CVPixelBufferGetBaseAddress(v10);
          v19 = __CGBitmapContextCreate(BaseAddress, a1, a2, BytesPerRow, v7);
          if (v19)
          {
            v4 = v19;

            return v4;
          }

          if (qword_1EE088960 != -1)
          {
            swift_once();
          }

          v20 = sub_1D2AC63B4();
          __swift_project_value_buffer(v20, qword_1EE088968);
          v7 = v7;
          v21 = sub_1D2AC6394();
          v4 = sub_1D2AC6E94();

          if (os_log_type_enabled(v21, v4))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v28 = v23;
            *v22 = 134219266;
            *(v22 + 4) = a1;
            *(v22 + 12) = 2048;
            *(v22 + 14) = a2;
            *(v22 + 22) = 2048;
            *(v22 + 24) = 8;
            *(v22 + 32) = 2048;
            *(v22 + 34) = BytesPerRow;
            *(v22 + 42) = 1024;
            *(v22 + 44) = 8194;
            *(v22 + 48) = 2080;
            type metadata accessor for CGColorSpace(0);
            v24 = v7;
            v25 = sub_1D2AC6C44();
            v27 = sub_1D2ABAFCC(v25, v26, &v28);

            *(v22 + 50) = v27;
            _os_log_impl(&dword_1D2A17000, v21, v4, "Failed to create CGContext: %ld %ld %ld %ld %u %s", v22, 0x3Au);
            __swift_destroy_boxed_opaque_existential_0(v23);
            MEMORY[0x1D38A8460](v23, -1, -1);
            MEMORY[0x1D38A8460](v22, -1, -1);
          }

          CVPixelBufferUnlockBaseAddress(v10, 0);
          sub_1D2A63C14();
          swift_allocError();
        }

        swift_willThrow();
      }

      return v4;
    }
  }

  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v7 = result;
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2A63AFC()
{
  result = qword_1EC704600;
  if (!qword_1EC704600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704600);
  }

  return result;
}

uint64_t sub_1D2A63B5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D2A63BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2A63C14()
{
  result = qword_1EC704608;
  if (!qword_1EC704608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704608);
  }

  return result;
}

uint64_t sub_1D2A63C68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D2AC6C24();
    v4 = v3;

    if (v2 == 0xD000000000000029 && 0x80000001D2ADF480 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2AC7354();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D2A63D38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D2AC6C24();
    v4 = v3;

    if (v2 == 0xD000000000000035 && 0x80000001D2ADF440 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2AC7354();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D2A63E08()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D2AC6C24();
    v4 = v3;

    if (v2 == 0xD00000000000001CLL && 0x80000001D2ADF420 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2AC7354();
    }
  }

  return v1 & 1;
}

id sub_1D2A63ED8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  qword_1EC704610 = result;
  return result;
}

id GPDrawOnImageRecipe.init(codableDrawingRecipe:)(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v82 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v76 = *(a1 + 64);
  v78 = *(a1 + 65);
  v77 = *(a1 + 66);
  if (v3 >> 60 != 15)
  {
    sub_1D2A479B4(v2, v3);
    v9 = sub_1D2AC5F14();
    v1 = CGDataProviderCreateWithCFData(v9);

    if (v1)
    {
      v10 = CGImageSourceCreateWithDataProvider(v1, 0);
      if (v10)
      {
        v11 = v10;
        PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v10);
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, PrimaryImageIndex, 0);
        sub_1D2A47930(v2, v3);

        v1 = ImageAtIndex;
      }

      else
      {
        sub_1D2A47930(v2, v3);

        v1 = 0;
      }
    }

    else
    {
      sub_1D2A47930(v2, v3);
    }
  }

  if (v4 >> 60 == 15)
  {
    v80 = 0;
    goto LABEL_16;
  }

  v14 = v1;
  sub_1D2A479B4(v5, v4);
  v15 = sub_1D2AC5F14();
  v16 = CGDataProviderCreateWithCFData(v15);

  if (!v16)
  {
    sub_1D2A47930(v5, v4);
LABEL_14:
    v80 = 0;
    goto LABEL_15;
  }

  v17 = CGImageSourceCreateWithDataProvider(v16, 0);
  if (!v17)
  {
    sub_1D2A47930(v5, v4);

    goto LABEL_14;
  }

  v18 = v17;
  v19 = CGImageSourceGetPrimaryImageIndex(v17);
  v80 = CGImageSourceCreateImageAtIndex(v18, v19, 0);
  sub_1D2A47930(v5, v4);

LABEL_15:
  v1 = v14;
LABEL_16:
  v79 = v4;
  if (v82 >> 60 != 15)
  {
    sub_1D2A479B4(v6, v82);
    v20 = sub_1D2AC5F14();
    v21 = CGDataProviderCreateWithCFData(v20);

    if (v21)
    {
      v22 = CGImageSourceCreateWithDataProvider(v21, 0);
      if (v22)
      {
        v23 = v22;
        v24 = CGImageSourceGetPrimaryImageIndex(v22);
        v25 = CGImageSourceCreateImageAtIndex(v23, v24, 0);
        sub_1D2A47930(v6, v82);

        goto LABEL_23;
      }

      sub_1D2A47930(v6, v82);
    }

    else
    {
      sub_1D2A47930(v6, v82);
    }
  }

  v25 = 0;
LABEL_23:
  v26 = v80;
  if (v1)
  {
    v72 = v25;
    v27 = v2;
    v75 = v6;
    v28 = qword_1EC703628;
    v30 = v1;
    if (v28 != -1)
    {
      swift_once();
    }

    v31 = qword_1EC704610;
    v32.value = CGImageRef.toPixelBuffer(ciContext:)(*(&v29 - 1)).value;
    if (v33.value)
    {
      if (qword_1EC703570 != -1)
      {
        swift_once();
      }

      v34 = sub_1D2AC63B4();
      __swift_project_value_buffer(v34, qword_1EC704030);
      v35 = sub_1D2AC6394();
      v36 = sub_1D2AC6E94();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1D2A17000, v35, v36, "Failed to convert cgBaseImage to pixel buffer.", v37, 2u);
        v26 = v80;
        MEMORY[0x1D38A8460](v37, -1, -1);
      }

      value = 0;
    }

    else
    {
      value = v32.value;
    }

    v44 = v27;
    v25 = v72;
    v73 = v44;
    v74 = v5;
    if (v26)
    {
LABEL_40:
      v45 = qword_1EC703628;
      v47 = v26;
      if (v45 != -1)
      {
        swift_once();
      }

      v48 = qword_1EC704610;
      v49.value = CGImageRef.toPixelBuffer(ciContext:)(*(&v46 - 1)).value;
      if (v50.value)
      {
        if (qword_1EC703570 != -1)
        {
          swift_once();
        }

        v51 = sub_1D2AC63B4();
        __swift_project_value_buffer(v51, qword_1EC704030);
        v52 = sub_1D2AC6394();
        v53 = sub_1D2AC6E94();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1D2A17000, v52, v53, "Failed to convert cgSketchImage to pixel buffer.", v54, 2u);
          MEMORY[0x1D38A8460](v54, -1, -1);
        }

        v55 = 0;
      }

      else
      {
        v55 = v49.value;
      }

      if (v25)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }

LABEL_60:
    v55 = 0;
    if (v25)
    {
LABEL_50:
      v56 = qword_1EC703628;
      v58 = v25;
      if (v56 != -1)
      {
        swift_once();
      }

      v59 = qword_1EC704610;
      v60.value = CGImageRef.toPixelBuffer(ciContext:)(*(&v57 - 1)).value;
      if (v61.value)
      {
        if (qword_1EC703570 != -1)
        {
          swift_once();
        }

        v62 = sub_1D2AC63B4();
        __swift_project_value_buffer(v62, qword_1EC704030);
        v63 = sub_1D2AC6394();
        v64 = sub_1D2AC6E94();
        if (os_log_type_enabled(v63, v64))
        {
          v81 = v26;
          v65 = value;
          v66 = v3;
          v67 = v25;
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_1D2A17000, v63, v64, "Failed to convert cgSketchMask to pixel buffer.", v68, 2u);
          v69 = v68;
          v25 = v67;
          v3 = v66;
          value = v65;
          v26 = v81;
          MEMORY[0x1D38A8460](v69, -1, -1);
        }

        v70 = 0;
      }

      else
      {
        v70 = v60.value;
      }

      goto LABEL_62;
    }

LABEL_61:
    v70 = 0;
LABEL_62:
    v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:value sketchImage:v55 sketchMask:v70 baseImageRatio:v76 sketchComplexityMeasure:v78 generateCaptionFromImage:v77 sanitizationCategory:v7 drawOnImageAssignmentOptions:v8];

    sub_1D2A47930(v73, v3);
    sub_1D2A47930(v74, v79);
    sub_1D2A47930(v75, v82);

    return v43;
  }

  if (v80 | v25)
  {
    v75 = v6;
    value = 0;
    v73 = v2;
    v74 = v5;
    if (v80)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

  sub_1D2A47930(v2, v3);
  sub_1D2A47930(v5, v79);
  sub_1D2A47930(v6, v82);

  if (qword_1EC703570 != -1)
  {
    swift_once();
  }

  v39 = sub_1D2AC63B4();
  __swift_project_value_buffer(v39, qword_1EC704030);
  v40 = sub_1D2AC6394();
  v41 = sub_1D2AC6E94();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D2A17000, v40, v41, "Not able to read any image from GenerationRecipe.DrawOnImageRecipe.", v42, 2u);
    MEMORY[0x1D38A8460](v42, -1, -1);
  }

  return 0;
}

void GPDrawOnImageRecipe.codableDrawingRecipe.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2AC5F94();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 baseImage];
  if (v6)
  {
    v7 = v6;
    if (qword_1EC703628 != -1)
    {
      swift_once();
    }

    v8 = qword_1EC704610;
    v9 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    Width = CVPixelBufferGetWidth(v7);
    v11 = [v8 createCGImage:v9 fromRect:{0.0, 0.0, Width, CVPixelBufferGetHeight(v7)}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 sketchImage];
  if (v12)
  {
    v13 = v12;
    if (qword_1EC703628 != -1)
    {
      swift_once();
    }

    v14 = qword_1EC704610;
    v15 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    v16 = CVPixelBufferGetWidth(v13);
    v17 = [v14 createCGImage:v15 fromRect:{0.0, 0.0, v16, CVPixelBufferGetHeight(v13)}];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v2 sketchMask];
  if (v18)
  {
    v19 = v18;
    if (qword_1EC703628 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC704610;
    v21 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    v22 = CVPixelBufferGetWidth(v19);
    v23 = [v20 createCGImage:v21 fromRect:{0.0, 0.0, v22, CVPixelBufferGetHeight(v19)}];

    if (v11)
    {
LABEL_15:
      v24 = v11;
      v25 = CGImageRef.gp_PNGRepresentationData.getter();
      v27 = v26;

      if (v17)
      {
        goto LABEL_16;
      }

LABEL_25:
      v79 = 0;
      v30 = 0xF000000000000000;
      if (v23)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v23 = 0;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  if (!(v17 | v23))
  {
    if (qword_1EC703570 != -1)
    {
      swift_once();
    }

    v33 = sub_1D2AC63B4();
    __swift_project_value_buffer(v33, qword_1EC704030);
    v34 = sub_1D2AC6394();
    v35 = sub_1D2AC6E94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D2A17000, v34, v35, "Not able to read any CGimage from GPDrawOnImageRecipe.", v36, 2u);
      MEMORY[0x1D38A8460](v36, -1, -1);
    }

    goto LABEL_44;
  }

  v25 = 0;
  v27 = 0xF000000000000000;
  if (!v17)
  {
    goto LABEL_25;
  }

LABEL_16:
  v28 = v17;
  v79 = CGImageRef.gp_PNGRepresentationData.getter();
  v30 = v29;

  if (v23)
  {
LABEL_17:
    v31 = v23;
    v77 = CGImageRef.gp_PNGRepresentationData.getter();
    v78 = v32;

    goto LABEL_27;
  }

LABEL_26:
  v77 = 0;
  v78 = 0xF000000000000000;
LABEL_27:
  v37 = [v2 drawOnImageAssignmentOptions];
  if (!v37)
  {
    v73 = v23;
    v38 = 0;
    goto LABEL_31;
  }

  if (v37 == 1)
  {
    v73 = v23;
    v38 = 1;
LABEL_31:
    v39 = [v2 sanitizationCategory];
    if (v39 < 4)
    {
      v40 = v39;
      [v2 baseImageRatio];
      v42 = v41;
      [v2 sketchComplexityMeasure];
      v44 = v43;
      v71 = [v2 generateCaptionFromImage];
      v72 = v38;
      v45 = v74;
      sub_1D2AC5F84();
      v46 = sub_1D2AC5F64();
      v69 = v47;
      v70 = v46;
      v48 = v11;
      v49 = *(v75 + 8);
      v68 = v25;
      v75 = v27;
      v50 = v17;
      v51 = v76;
      v49(v45, v76);
      sub_1D2AC5F84();
      sub_1D2AC5F64();

      v49(v45, v51);

      v52 = v75;
      *a1 = v68;
      *(a1 + 8) = v52;
      *(a1 + 16) = v79;
      *(a1 + 24) = v30;
      v53 = v78;
      *(a1 + 32) = v77;
      *(a1 + 40) = v53;
      *(a1 + 48) = v42;
      *(a1 + 56) = v44;
      LOBYTE(v53) = v72;
      *(a1 + 64) = v71;
      *(a1 + 65) = v40;
      *(a1 + 66) = v53;
      v54 = v69;
      *(a1 + 72) = v70;
      *(a1 + 80) = v54;
      return;
    }

    v55 = v30;
    if (qword_1EC703570 != -1)
    {
      swift_once();
    }

    v56 = sub_1D2AC63B4();
    __swift_project_value_buffer(v56, qword_1EC704030);
    v34 = sub_1D2AC6394();
    v57 = sub_1D2AC6EA4();
    v58 = os_log_type_enabled(v34, v57);
    v59 = v73;
    if (v58)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1D2A17000, v34, v57, "A new drawOnImageSanitizationCategory case is not handled yet", v60, 2u);
      MEMORY[0x1D38A8460](v60, -1, -1);
    }

    sub_1D2A47930(v77, v78);
    v61 = v79;
    v62 = v55;
    goto LABEL_43;
  }

  v63 = v30;
  if (qword_1EC703570 != -1)
  {
    swift_once();
  }

  v64 = sub_1D2AC63B4();
  __swift_project_value_buffer(v64, qword_1EC704030);
  v34 = sub_1D2AC6394();
  v65 = sub_1D2AC6EA4();
  if (os_log_type_enabled(v34, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1D2A17000, v34, v65, "A new drawOnImageAssignmentOptions case is not handled yet", v66, 2u);
    MEMORY[0x1D38A8460](v66, -1, -1);
  }

  sub_1D2A47930(v77, v78);
  v61 = v79;
  v62 = v63;
LABEL_43:
  sub_1D2A47930(v61, v62);
  sub_1D2A47930(v25, v27);
LABEL_44:

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
}

void GenerationRecipe_V7.DrawOnImageRecipe.init(baseImageData:sketchImageData:sketchMaskData:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:id:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, uint64_t a13, uint64_t a14)
{
  v35 = a7;
  v30 = a4;
  v33 = a14;
  v34 = a6;
  v31 = a13;
  v32 = a5;
  v21 = sub_1D2AC5F94();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a8;
  v26 = *a12;
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  (*(v22 + 8))(v24, v21);

  *a9 = a1;
  *(a9 + 8) = a2;
  v27 = v30;
  *(a9 + 16) = a3;
  *(a9 + 24) = v27;
  v28 = v34;
  *(a9 + 32) = v32;
  *(a9 + 40) = v28;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = v35;
  *(a9 + 65) = v25;
  *(a9 + 66) = v26;
  v29 = v33;
  *(a9 + 72) = v31;
  *(a9 + 80) = v29;
}

uint64_t GenerationRecipe_V7.Prompt.Entity.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D2A650C4()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 != 1)
  {
    v1 = 0x64656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636972656E6567;
  }
}

uint64_t sub_1D2A6511C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2A7512C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2A65144(uint64_t a1)
{
  v2 = sub_1D2A71B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65180(uint64_t a1)
{
  v2 = sub_1D2A71B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A651C8(uint64_t a1)
{
  v2 = sub_1D2A71C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65204(uint64_t a1)
{
  v2 = sub_1D2A71C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6524C(uint64_t a1)
{
  v2 = sub_1D2A71BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65288(uint64_t a1)
{
  v2 = sub_1D2A71BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A652C4(uint64_t a1)
{
  v2 = sub_1D2A71BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65300(uint64_t a1)
{
  v2 = sub_1D2A71BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.Prompt.Entity.Kind.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704618, &qword_1D2ACBA50);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  v3 = sub_1D2AC5F94();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704620, &qword_1D2ACBA58);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704628, &qword_1D2ACBA60);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704630, &qword_1D2ACBA68);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71B54();
  v17 = v33;
  sub_1D2AC74A4();
  sub_1D2A71E10(v34, v13, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_1D2A71C50();
      v19 = v35;
      sub_1D2AC7294();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_1D2A71BFC();
      v19 = v35;
      sub_1D2AC7294();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_1D2A71BA8();
    v21 = v30;
    v22 = v35;
    sub_1D2AC7294();
    sub_1D2A71CA4(&qword_1EC704648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v23 = v31;
    sub_1D2AC7304();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t GenerationRecipe_V7.Prompt.Entity.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704660, &qword_1D2ACBA70);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v47 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704668, &qword_1D2ACBA78);
  v51 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704670, &qword_1D2ACBA80);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704678, &qword_1D2ACBA88);
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v19 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D2A71B54();
  v20 = v59;
  sub_1D2AC7494();
  if (!v20)
  {
    v21 = v13;
    v47 = v16;
    v48 = v18;
    v22 = v56;
    v23 = v57;
    v59 = 0;
    v24 = v12;
    v25 = sub_1D2AC7284();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_1D2AC70B4();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v31 = v21;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v58 + 8))(v24, v10);
    }

    else
    {
      if (*(v25 + 32))
      {
        v32 = v12;
        if (v27 == 1)
        {
          v62 = 1;
          sub_1D2A71BFC();
          v33 = v59;
          sub_1D2AC71E4();
          v34 = v58;
          if (!v33)
          {
            (*(v51 + 8))(v22, v23);
            (*(v34 + 8))(v12, v10);
            swift_unknownObjectRelease();
            v35 = sub_1D2AC5F94();
            v36 = v48;
            (*(*(v35 - 8) + 56))(v48, 2, 2, v35);
LABEL_20:
            sub_1D2A71CEC(v36, v54);
            return __swift_destroy_boxed_opaque_existential_0(v60);
          }
        }

        else
        {
          v63 = 2;
          sub_1D2A71BA8();
          v38 = v55;
          v39 = v59;
          sub_1D2AC71E4();
          v34 = v58;
          if (!v39)
          {
            v42 = v12;
            v43 = v38;
            v44 = sub_1D2AC5F94();
            sub_1D2A71CA4(&qword_1EC704688, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v45 = v47;
            v46 = v52;
            sub_1D2AC7264();
            (*(v53 + 8))(v43, v46);
            (*(v34 + 8))(v42, v10);
            swift_unknownObjectRelease();
            (*(*(v44 - 8) + 56))(v45, 0, 2, v44);
            v36 = v48;
            sub_1D2A71CEC(v45, v48);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v61 = 0;
        sub_1D2A71C50();
        v32 = v12;
        v37 = v59;
        sub_1D2AC71E4();
        if (!v37)
        {
          (*(v49 + 8))(v9, v50);
          (*(v58 + 8))(v12, v10);
          swift_unknownObjectRelease();
          v41 = sub_1D2AC5F94();
          v36 = v48;
          (*(*(v41 - 8) + 56))(v48, 1, 2, v41);
          goto LABEL_20;
        }

        v34 = v58;
      }

      (*(v34 + 8))(v32, v10);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_1D2A65F9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2A65FD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2A66004()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2A66038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GenerationRecipe_V7.Prompt.Entity.init(text:kind:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  result = sub_1D2A71CEC(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

BOOL static GenerationRecipe_V7.Prompt.Entity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704690, &qword_1D2ACBA98);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (*a1 != *a2)
  {
    v14 = sub_1D2AC7354();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v30 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v16 = *(v30 + 20);
  v17 = *(v11 + 48);
  sub_1D2A71E10(a1 + v16, v13, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  sub_1D2A71E10(a2 + v16, &v13[v17], type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  v18 = *(v5 + 48);
  v19 = v18(v13, 2, v4);
  if (!v19)
  {
    sub_1D2A71E10(v13, v10, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
    if (!v18(&v13[v17], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      v20 = sub_1D2AC5F74();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_1D2A71E78(v13, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_10;
  }

  if (v19 == 1)
  {
    if (v18(&v13[v17], 2, v4) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1D2A2E61C(v13, &qword_1EC704690, &qword_1D2ACBA98);
    return 0;
  }

  if (v18(&v13[v17], 2, v4) != 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1D2A71E78(v13, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  v22 = *(v30 + 24);
  v24 = *(a1 + v22);
  v23 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v27 = *v25;
  v26 = v25[1];
  return v24 == v27 && v23 == v26;
}

uint64_t sub_1D2A66484()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x65676E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D2A664CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2A75240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2A664F4(uint64_t a1)
{
  v2 = sub_1D2A71D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A66530(uint64_t a1)
{
  v2 = sub_1D2A71D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.Prompt.Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704698, &unk_1D2ACBAA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71D50();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
    LOBYTE(v12) = 1;
    type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
    sub_1D2A71CA4(&qword_1EC7046A8, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind, &protocol conformance descriptor for GenerationRecipe_V7.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v8, v5);
}

void GenerationRecipe_V7.Prompt.Entity.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046C0, &qword_1D2ACBAB0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71D50();
  v23 = v8;
  v12 = v24;
  sub_1D2AC7494();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v5;
    v14 = v21;
    v15 = v22;
    LOBYTE(v25) = 0;
    *v11 = sub_1D2AC7234();
    v11[1] = v16;
    v19 = v16;
    v24 = v11;
    LOBYTE(v25) = 1;
    sub_1D2A71CA4(&qword_1EC7046C8, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind, &protocol conformance descriptor for GenerationRecipe_V7.Prompt.Entity.Kind);
    sub_1D2AC7264();
    sub_1D2A71CEC(v13, v24 + *(v9 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    v26 = 2;
    sub_1D2A71DA4(&qword_1EC7046D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    sub_1D2AC7264();
    (*(v14 + 8))(v23, v15);
    v17 = *(v9 + 24);
    v18 = v24;
    *(v24 + v17) = v25;
    sub_1D2A71E10(v18, v20, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
  }
}

BOOL sub_1D2A66B98(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (_s15ImagePlayground19GenerationRecipe_V7V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t GenerationRecipe_V7.Prompt.id.getter()
{
  v1 = *v0;

  return v1;
}

ImagePlayground::GenerationRecipe_V7::Prompt __swiftcall GenerationRecipe_V7.Prompt.init(value:entities:)(Swift::String value, Swift::OpaquePointer entities)
{
  *v2 = value;
  *(v2 + 16) = entities;
  result.value = value;
  result.entities = entities;
  return result;
}

BOOL static GenerationRecipe_V7.Prompt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A66CD8(v2, v3);
}

BOOL sub_1D2A66CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704690, &qword_1D2ACBA98);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - v10;
  v49 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v12 = MEMORY[0x1EEE9AC00](v49);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v40 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v48 = (v5 + 48);
    v40 = (v5 + 32);
    v41 = v11;
    v42 = (v5 + 8);
    v45 = *(v15 + 72);
    v46 = v4;
    while (1)
    {
      sub_1D2A71E10(v20, v17, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      sub_1D2A71E10(v21, v14, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v23 = *(v49 + 20);
      v24 = *(v47 + 48);
      sub_1D2A71E10(v17 + v23, v11, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      sub_1D2A71E10(v14 + v23, &v11[v24], type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      v25 = *v48;
      v26 = v46;
      v27 = (*v48)(v11, 2, v46);
      if (v27)
      {
        if (v27 == 1)
        {
          if (v25(&v11[v24], 2, v26) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v25(&v11[v24], 2, v26) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v11, v9, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
        if (v25(&v11[v24], 2, v26))
        {
          (*v42)(v9, v26);
LABEL_24:
          sub_1D2A2E61C(v11, &qword_1EC704690, &qword_1D2ACBA98);
          break;
        }

        v28 = v9;
        v29 = v44;
        (*v40)(v44, &v11[v24], v26);
        v43 = sub_1D2AC5F74();
        v30 = v26;
        v31 = *v42;
        v32 = v29;
        v9 = v28;
        (*v42)(v32, v30);
        v31(v28, v30);
        v11 = v41;
        if ((v43 & 1) == 0)
        {
          sub_1D2A71E78(v41, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v11, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      v33 = *(v49 + 24);
      v34 = v17 + v33;
      v35 = *(v17 + v33);
      v36 = (v14 + v33);
      if (v35 != *v36)
      {
        break;
      }

      v37 = v36[1];
      v38 = *(v34 + 1);
      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      result = v38 == v37;
      if (v38 == v37)
      {
        v21 += v45;
        v20 += v45;
        if (--v18)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
    sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
  }

  return 0;
}

BOOL sub_1D2A67270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C08, &qword_1D2ACE610);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - v10;
  v49 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  v12 = MEMORY[0x1EEE9AC00](v49);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v40 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v48 = (v5 + 48);
    v40 = (v5 + 32);
    v41 = v11;
    v42 = (v5 + 8);
    v45 = *(v15 + 72);
    v46 = v4;
    while (1)
    {
      sub_1D2A71E10(v20, v17, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      sub_1D2A71E10(v21, v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v23 = *(v49 + 20);
      v24 = *(v47 + 48);
      sub_1D2A71E10(v17 + v23, v11, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      sub_1D2A71E10(v14 + v23, &v11[v24], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      v25 = *v48;
      v26 = v46;
      v27 = (*v48)(v11, 2, v46);
      if (v27)
      {
        if (v27 == 1)
        {
          if (v25(&v11[v24], 2, v26) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v25(&v11[v24], 2, v26) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v11, v9, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
        if (v25(&v11[v24], 2, v26))
        {
          (*v42)(v9, v26);
LABEL_24:
          sub_1D2A2E61C(v11, &qword_1EC704C08, &qword_1D2ACE610);
          break;
        }

        v28 = v9;
        v29 = v44;
        (*v40)(v44, &v11[v24], v26);
        v43 = sub_1D2AC5F74();
        v30 = v26;
        v31 = *v42;
        v32 = v29;
        v9 = v28;
        (*v42)(v32, v30);
        v31(v28, v30);
        v11 = v41;
        if ((v43 & 1) == 0)
        {
          sub_1D2A71E78(v41, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v11, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      v33 = *(v49 + 24);
      v34 = v17 + v33;
      v35 = *(v17 + v33);
      v36 = (v14 + v33);
      if (v35 != *v36)
      {
        break;
      }

      v37 = v36[1];
      v38 = *(v34 + 1);
      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      result = v38 == v37;
      if (v38 == v37)
      {
        v21 += v45;
        v20 += v45;
        if (--v18)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
    sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A67808(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v47 = v5;
  v48 = v6;
  v11 = a1 + 32;
  v12 = a2 + 32;
  for (i = v7 - 1; ; --i)
  {
    v14 = *(v11 + 48);
    v34 = *(v11 + 32);
    v35 = v14;
    v36 = *(v11 + 64);
    v37 = *(v11 + 80);
    v15 = *(v11 + 16);
    v33[0] = *v11;
    v33[1] = v15;
    v32 = v37;
    v29 = v34;
    v30 = v14;
    v31 = v36;
    v27 = v33[0];
    v28 = v15;
    v16 = *(v12 + 48);
    v39 = *(v12 + 32);
    v40 = v16;
    v41 = *(v12 + 64);
    v42 = *(v12 + 80);
    v17 = *(v12 + 16);
    v38[0] = *v12;
    v38[1] = v17;
    v26 = v42;
    v22 = v17;
    v23 = v39;
    v24 = v16;
    v25 = v41;
    v21 = v38[0];
    a3(v33, v20);
    a3(v38, v20);
    v18 = a4(&v27, &v21);
    v43[2] = v23;
    v43[3] = v24;
    v43[4] = v25;
    v44 = v26;
    v43[0] = v21;
    v43[1] = v22;
    a5(v43);
    v45[2] = v29;
    v45[3] = v30;
    v45[4] = v31;
    v46 = v32;
    v45[0] = v27;
    v45[1] = v28;
    a5(v45);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 += 88;
    v11 += 88;
  }

  return 1;
}

BOOL sub_1D2A679A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C00, &qword_1D2ACE608);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - v10;
  v49 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  v12 = MEMORY[0x1EEE9AC00](v49);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v40 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v48 = (v5 + 48);
    v40 = (v5 + 32);
    v41 = v11;
    v42 = (v5 + 8);
    v45 = *(v15 + 72);
    v46 = v4;
    while (1)
    {
      sub_1D2A71E10(v20, v17, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      sub_1D2A71E10(v21, v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v23 = *(v49 + 20);
      v24 = *(v47 + 48);
      sub_1D2A71E10(v17 + v23, v11, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      sub_1D2A71E10(v14 + v23, &v11[v24], type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      v25 = *v48;
      v26 = v46;
      v27 = (*v48)(v11, 2, v46);
      if (v27)
      {
        if (v27 == 1)
        {
          if (v25(&v11[v24], 2, v26) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v25(&v11[v24], 2, v26) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v11, v9, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
        if (v25(&v11[v24], 2, v26))
        {
          (*v42)(v9, v26);
LABEL_24:
          sub_1D2A2E61C(v11, &qword_1EC704C00, &qword_1D2ACE608);
          break;
        }

        v28 = v9;
        v29 = v44;
        (*v40)(v44, &v11[v24], v26);
        v43 = sub_1D2AC5F74();
        v30 = v26;
        v31 = *v42;
        v32 = v29;
        v9 = v28;
        (*v42)(v32, v30);
        v31(v28, v30);
        v11 = v41;
        if ((v43 & 1) == 0)
        {
          sub_1D2A71E78(v41, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v11, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      v33 = *(v49 + 24);
      v34 = v17 + v33;
      v35 = *(v17 + v33);
      v36 = (v14 + v33);
      if (v35 != *v36)
      {
        break;
      }

      v37 = v36[1];
      v38 = *(v34 + 1);
      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      result = v38 == v37;
      if (v38 == v37)
      {
        v21 += v45;
        v20 += v45;
        if (--v18)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
    sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A67F00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v45 = v2;
  v46 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    *v33 = v5[4];
    *&v33[16] = *(v5 + 10);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = v6[3];
    v36 = v6[2];
    v37 = v10;
    *v38 = v6[4];
    *&v38[16] = *(v6 + 10);
    v11 = v6[1];
    v34 = *v6;
    v35 = v11;
    v12 = *v33 >> 61;
    v13 = v30;
    if ((*v33 >> 61) > 2)
    {
      if (v12 == 3)
      {
        if (*v38 >> 61 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 4)
        {
          if (*v38 >> 61 != 4)
          {
            return 0;
          }

          v16 = v35;
          v25 = v34;
          v26 = i;
          v17 = *(&v34 + 1);
          if (*(&v30 + 1))
          {
            v18 = *(&v30 + 1);
          }

          else
          {
            v13 = 0;
            v18 = 0xE000000000000000;
          }

          v28 = v29;
          sub_1D2A75F30(&v34, v27);
          sub_1D2A75F30(&v29, v27);

          MEMORY[0x1D38A7100](v13, v18);

          v19 = v28;
          if (*(&v16 + 1))
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          if (*(&v16 + 1))
          {
            v21 = *(&v16 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          *&v27[0] = v25;
          *(&v27[0] + 1) = v17;

          MEMORY[0x1D38A7100](v20, v21);

          if (v19 == v27[0])
          {

            sub_1D2A75F8C(&v34);
            sub_1D2A75F8C(&v29);
            i = v26;
          }

          else
          {
            v23 = sub_1D2AC7354();

            sub_1D2A75F8C(&v34);
            sub_1D2A75F8C(&v29);
            i = v26;
            if ((v23 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_39;
        }

        if (*v38 >> 61 != 5)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          if (*v38 >> 61 != 1)
          {
            return 0;
          }

          v14 = v35;
          if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
          {
            return 0;
          }

          sub_1D2A75F30(&v34, v27);
          sub_1D2A75F30(&v29, v27);
          v15 = sub_1D2A682B4(v13, v14);
        }

        else
        {
          v39[0] = v29;
          v39[1] = v30;
          v39[2] = v31;
          v39[3] = v32;
          v40 = *v33 & 0x1FFFFFFFFFFFFFFFLL;
          v41 = *&v33[8];
          if (*v38 >> 61 != 2)
          {
            return 0;
          }

          v42[0] = v34;
          v42[1] = v35;
          v42[2] = v36;
          v42[3] = v37;
          v43 = *v38 & 0x1FFFFFFFFFFFFFFFLL;
          v44 = *&v38[8];
          sub_1D2A75F30(&v34, v27);
          sub_1D2A75F30(&v29, v27);
          v15 = sub_1D2A8DD08(v39, v42);
        }

        v22 = v15;
        sub_1D2A75F8C(&v34);
        sub_1D2A75F8C(&v29);
        if ((v22 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (*v38 >> 61)
      {
        return 0;
      }
    }

    if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

BOOL sub_1D2A682B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF8, &qword_1D2ACE600);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - v10;
  v49 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
  v12 = MEMORY[0x1EEE9AC00](v49);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v40 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v48 = (v5 + 48);
    v40 = (v5 + 32);
    v41 = v11;
    v42 = (v5 + 8);
    v45 = *(v15 + 72);
    v46 = v4;
    while (1)
    {
      sub_1D2A71E10(v20, v17, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      sub_1D2A71E10(v21, v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v23 = *(v49 + 20);
      v24 = *(v47 + 48);
      sub_1D2A71E10(v17 + v23, v11, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      sub_1D2A71E10(v14 + v23, &v11[v24], type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      v25 = *v48;
      v26 = v46;
      v27 = (*v48)(v11, 2, v46);
      if (v27)
      {
        if (v27 == 1)
        {
          if (v25(&v11[v24], 2, v26) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v25(&v11[v24], 2, v26) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v11, v9, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
        if (v25(&v11[v24], 2, v26))
        {
          (*v42)(v9, v26);
LABEL_24:
          sub_1D2A2E61C(v11, &qword_1EC704BF8, &qword_1D2ACE600);
          break;
        }

        v28 = v9;
        v29 = v44;
        (*v40)(v44, &v11[v24], v26);
        v43 = sub_1D2AC5F74();
        v30 = v26;
        v31 = *v42;
        v32 = v29;
        v9 = v28;
        (*v42)(v32, v30);
        v31(v28, v30);
        v11 = v41;
        if ((v43 & 1) == 0)
        {
          sub_1D2A71E78(v41, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v11, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      v33 = *(v49 + 24);
      v34 = v17 + v33;
      v35 = *(v17 + v33);
      v36 = (v14 + v33);
      if (v35 != *v36)
      {
        break;
      }

      v37 = v36[1];
      v38 = *(v34 + 1);
      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      result = v38 == v37;
      if (v38 == v37)
      {
        v21 += v45;
        v20 += v45;
        if (--v18)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
    sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A6880C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v45 = v2;
  v46 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    *v33 = v5[4];
    *&v33[16] = *(v5 + 10);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = v6[3];
    v36 = v6[2];
    v37 = v10;
    *v38 = v6[4];
    *&v38[16] = *(v6 + 10);
    v11 = v6[1];
    v34 = *v6;
    v35 = v11;
    v12 = *v33 >> 61;
    v13 = v30;
    if ((*v33 >> 61) > 2)
    {
      if (v12 == 3)
      {
        if (*v38 >> 61 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 4)
        {
          if (*v38 >> 61 != 4)
          {
            return 0;
          }

          v16 = v35;
          v25 = v34;
          v26 = i;
          v17 = *(&v34 + 1);
          if (*(&v30 + 1))
          {
            v18 = *(&v30 + 1);
          }

          else
          {
            v13 = 0;
            v18 = 0xE000000000000000;
          }

          v28 = v29;
          sub_1D2A75E80(&v34, v27);
          sub_1D2A75E80(&v29, v27);

          MEMORY[0x1D38A7100](v13, v18);

          v19 = v28;
          if (*(&v16 + 1))
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          if (*(&v16 + 1))
          {
            v21 = *(&v16 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          *&v27[0] = v25;
          *(&v27[0] + 1) = v17;

          MEMORY[0x1D38A7100](v20, v21);

          if (v19 == v27[0])
          {

            sub_1D2A75EDC(&v34);
            sub_1D2A75EDC(&v29);
            i = v26;
          }

          else
          {
            v23 = sub_1D2AC7354();

            sub_1D2A75EDC(&v34);
            sub_1D2A75EDC(&v29);
            i = v26;
            if ((v23 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_39;
        }

        if (*v38 >> 61 != 5)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          if (*v38 >> 61 != 1)
          {
            return 0;
          }

          v14 = v35;
          if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
          {
            return 0;
          }

          sub_1D2A75E80(&v34, v27);
          sub_1D2A75E80(&v29, v27);
          v15 = sub_1D2A68BC0(v13, v14);
        }

        else
        {
          v39[0] = v29;
          v39[1] = v30;
          v39[2] = v31;
          v39[3] = v32;
          v40 = *v33 & 0x1FFFFFFFFFFFFFFFLL;
          v41 = *&v33[8];
          if (*v38 >> 61 != 2)
          {
            return 0;
          }

          v42[0] = v34;
          v42[1] = v35;
          v42[2] = v36;
          v42[3] = v37;
          v43 = *v38 & 0x1FFFFFFFFFFFFFFFLL;
          v44 = *&v38[8];
          sub_1D2A75E80(&v34, v27);
          sub_1D2A75E80(&v29, v27);
          v15 = sub_1D2AA9DE8(v39, v42);
        }

        v22 = v15;
        sub_1D2A75EDC(&v34);
        sub_1D2A75EDC(&v29);
        if ((v22 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (*v38 >> 61)
      {
        return 0;
      }
    }

    if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}