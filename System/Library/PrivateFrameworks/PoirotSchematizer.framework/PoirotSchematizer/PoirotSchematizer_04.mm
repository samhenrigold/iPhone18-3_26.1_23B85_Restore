uint64_t sub_1D8C5D178(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a1)
  {
    v5 = 0x8000;
  }

  else
  {
    v5 = -4096;
  }

  v7 = *a1;
  v8 = 0;
  v9 = 0;
  v10 = v5;

  return sub_1D8C6E80C(&v7, v3, v4);
}

uint64_t SchematizedDataComposer.subscript.setter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v9 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 16);
    sub_1D8C7590C(&v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v8;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v9);

    return sub_1D8C31D74(v9, *(&v9 + 1), v10, v11, v12);
  }

  return result;
}

{
  v4 = v3;
  if (!a1)
  {
    sub_1D8C75164(a2, a3, &v19);

    return sub_1D8C31D74(v19, *(&v19 + 1), v20, v21, v22);
  }

  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v19 = v11;
    v20 = 0;
    v21 = 0;
    v22 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 16);
    sub_1D8C7590C(&v19, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v18;
    return result;
  }

  v8 = sub_1D8C85204();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  *&v19 = MEMORY[0x1E69E7CC0];
  result = sub_1D8C5E058(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = v3;
    v10 = 0;
    v11 = v19;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA725890](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      *&v19 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D8C5E058((v13 > 1), v14 + 1, 1);
        v11 = v19;
      }

      ++v10;
      *(v11 + 16) = v14 + 1;
      v15 = v11 + 40 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 2560;
    }

    while (v8 != v10);

    v4 = v17;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  if (a1)
  {
    v9 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 2560;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 16);
    sub_1D8C7590C(&v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v8;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v9);

    return sub_1D8C31D74(v9, *(&v9 + 1), v10, v11, v12);
  }

  return result;
}

void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C5D354;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6F684;
}

void sub_1D8C5D354(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 88);
  if (a2)
  {
    if (v3)
    {
      *v2 = v3;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 0x8000;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v5 + 16);
      sub_1D8C7590C(v2, v6, v4, isUniquelyReferenced_nonNull_native);

      *(v5 + 16) = v9;
    }

    else
    {

      sub_1D8C75164(v6, v4, &v9);

      sub_1D8C31D74(v9, v10, v11, v12, v13);
    }
  }

  else if (v3)
  {
    *(v2 + 40) = v3;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0x8000;

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    sub_1D8C7590C((v2 + 40), v6, v4, v8);

    *(v5 + 16) = v9;
  }

  else
  {

    sub_1D8C75164(v6, v4, &v9);

    sub_1D8C31D74(v9, v10, v11, v12, v13);
  }

  free(v2);
}

uint64_t sub_1D8C5D4E0@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 8);
  v13 = *(v12 + 8);
  v90 = ObjectType;
  v14 = v13(ObjectType, v12);
  v16 = *a3;
  if (!*(*a3 + 16))
  {

    goto LABEL_7;
  }

  v85 = v13;
  v86 = v12;
  v17 = sub_1D8C4668C(v14, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    *a7 = 0u;
    *(a7 + 16) = 0u;
    v34 = -256;
LABEL_8:
    *(a7 + 32) = v34;
    return result;
  }

  v21 = *(v16 + 56) + 40 * v17;
  v22 = *(a2 + 16);
  v80 = *v21;
  v81 = *(v21 + 8);
  v82 = *(v21 + 16);
  v83 = *(v21 + 24);
  v84 = *(v21 + 32);
  sub_1D8C60608(*v21, v81, v82, v83, v84);
  if (v22(v90, a2))
  {
    if ((v84 & 0x80000000) == 0)
    {
      v91 = 0;
      v92 = 0xE000000000000000;
      sub_1D8C85124();
      MEMORY[0x1DA7255C0](0x3A6567617373654DLL, 0xE900000000000020);
      swift_getObjectType();
      MessageSchemaDescribing.asPublic()(a6, &v96);
      v23 = v97;
      v24 = swift_getObjectType();
      v25 = (*(*(v23 + 8) + 8))(v24);
      v27 = v26;
      swift_unknownObjectRelease();
      MEMORY[0x1DA7255C0](v25, v27);

      MEMORY[0x1DA7255C0](0xD000000000000011, 0x80000001D8C8C0E0);
      v28 = v85(v90, v86);
      MEMORY[0x1DA7255C0](v28);

      MEMORY[0x1DA7255C0](0xD00000000000001ALL, 0x80000001D8C8C100);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1D8C603DC();
      swift_allocError();
      v32 = 3;
      v33 = v80;
LABEL_29:
      *v31 = v29;
      *(v31 + 8) = v30;
      *(v31 + 16) = v32;
      swift_willThrow();
      return sub_1D8C31D88(v33, v81, v82, v83, v84);
    }

    v41 = *(v80 + 16);
    if (v41)
    {
      v43 = *(v80 + 32);
      v42 = *(v80 + 40);
      v44 = *(v80 + 56);
      v79 = *(v80 + 48);
      v45 = *(v80 + 64);
      v46 = *(v80 + 65);
      sub_1D8C60608(v80, v81, v82, v83, v84);
      v88 = v43;
      v89 = v44;
      sub_1D8C5C2AC(v43, v42, v79, v44, v45, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v80;
      if (!isUniquelyReferenced_nonNull_native || (v48 = v80, (v41 - 1) > *(v80 + 24) >> 1))
      {
        v48 = sub_1D8C4ABAC(isUniquelyReferenced_nonNull_native, v41, 1, v80);
        v96 = v48;
      }

      sub_1D8C60618(0, 1, 0);
      if (*(v48 + 2))
      {
        v49 = v85(v90, v86);
        v51 = v50;
        v98 = v48;
        v99 = 0;
        v100 = 0;
        v101 = 0x8000;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v91 = *a3;
        *a3 = 0x8000000000000000;
        sub_1D8C7590C(&v98, v49, v51, v52);

        *a3 = v91;
      }

      else
      {

        v77 = v85(v90, v86);
        sub_1D8C75164(v77, v78, &v91);

        sub_1D8C31D74(v91, v92, v93, v94, v95);
      }

      result = sub_1D8C31D88(v80, v81, v82, v83, v84);
      *a7 = v88;
      *(a7 + 8) = v42;
      v34 = v45 | (v46 << 8);
      *(a7 + 16) = v79;
      *(a7 + 24) = v89;
      goto LABEL_8;
    }

    v67 = v85(v90, v86);
    sub_1D8C75164(v67, v68, &v91);

    sub_1D8C31D74(v91, v92, v93, v94, v95);
    result = sub_1D8C31D88(v80, v81, v82, v83, v84);
    goto LABEL_7;
  }

  v35 = (*(a2 + 40))(v90, a2);
  v33 = v80;
  if ((v35 & 0x100000000) != 0)
  {
LABEL_17:
    if ((v84 & 0x80000000) == 0)
    {
      sub_1D8C5C2AC(v80, v81, v82, v83, v84, BYTE1(v84));
      v39 = v85(v90, v86);
      sub_1D8C75164(v39, v40, &v91);

      sub_1D8C31D74(v91, v92, v93, v94, v95);
      result = sub_1D8C31D88(v80, v81, v82, v83, v84);
      *a7 = v80;
      *(a7 + 8) = v81;
      *(a7 + 16) = v82;
      *(a7 + 24) = v83;
      *(a7 + 32) = v84;
      return result;
    }

    v91 = 0;
    v92 = 0xE000000000000000;
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0x3A6567617373654DLL, 0xE900000000000020);
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(a6, &v96);
    v61 = v97;
    v62 = swift_getObjectType();
    v63 = (*(*(v61 + 8) + 8))(v62);
    v65 = v64;
    swift_unknownObjectRelease();
    MEMORY[0x1DA7255C0](v63, v65);

    MEMORY[0x1DA7255C0](0xD000000000000010, 0x80000001D8C8C0A0);
    v66 = v85(v90, v86);
    MEMORY[0x1DA7255C0](v66);

    MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8C0C0);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1D8C603DC();
    swift_allocError();
    v32 = 3;
    goto LABEL_29;
  }

  if ((v35 & 0x80000000) != 0 || (v36 = *a4, v37 = v35, v35 >= *(*a4 + 16)))
  {
    v53 = v35;
    sub_1D8C85124();

    v91 = 0x3A6567617373654DLL;
    v92 = 0xE900000000000020;
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(a6, &v96);
    v54 = v97;
    v55 = swift_getObjectType();
    v56 = (*(*(v54 + 8) + 8))(v55);
    v58 = v57;
    swift_unknownObjectRelease();
    MEMORY[0x1DA7255C0](v56, v58);

    MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
    v59 = v85(v90, v86);
    MEMORY[0x1DA7255C0](v59);

    MEMORY[0x1DA7255C0](0x3A7865646E69202CLL, 0xE900000000000020);
    LODWORD(v96) = v53;
    v60 = sub_1D8C85274();
    MEMORY[0x1DA7255C0](v60);

    v29 = 0x3A6567617373654DLL;
    v30 = 0xE900000000000020;
    sub_1D8C603DC();
    swift_allocError();
    v32 = 1;
    goto LABEL_29;
  }

  if (!v36[2 * v35 + 4])
  {
    v69 = v35;
    sub_1D8C85124();

    v91 = 0x3A6567617373654DLL;
    v92 = 0xE900000000000020;
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(a6, &v96);
    v70 = v97;
    v71 = swift_getObjectType();
    v72 = (*(*(v70 + 8) + 8))(v71);
    v74 = v73;
    swift_unknownObjectRelease();
    MEMORY[0x1DA7255C0](v72, v74);

    MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
    v75 = v85(v90, v86);
    MEMORY[0x1DA7255C0](v75);

    MEMORY[0x1DA7255C0](0x3A7865646E69202CLL, 0xE900000000000020);
    LODWORD(v96) = v69;
    v76 = sub_1D8C85274();
    MEMORY[0x1DA7255C0](v76);

    v29 = 0x3A6567617373654DLL;
    v30 = 0xE900000000000020;
    sub_1D8C603DC();
    swift_allocError();
    v32 = 2;
    goto LABEL_29;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v36;
  if ((result & 1) == 0)
  {
    result = sub_1D8C6026C(v36);
    v36 = result;
    *a4 = result;
  }

  if (v37 < v36[2])
  {
    v38 = &v36[2 * v37];
    v38[4] = 0;
    v38[5] = 0;
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_1D8C5DED0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D8C5DF54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5DF74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5DF94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5DFB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E62C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5DFD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5DFF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E8A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E014(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5E9B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E058(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5EAE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E078(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5EC04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E098(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5ED4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E0B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5EE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E0D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5EFDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E0F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E118(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F420(a1, a2, a3, *v3, &qword_1ECAAB168, &qword_1D8C86250);
  *v3 = result;
  return result;
}

char *sub_1D8C5E148(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F230(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F324(a1, a2, a3, *v3, &qword_1ECAAB318, &qword_1D8C87BC0);
  *v3 = result;
  return result;
}

char *sub_1D8C5E198(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F420(a1, a2, a3, *v3, &qword_1ECAAB310, &qword_1D8C87BB8);
  *v3 = result;
  return result;
}

char *sub_1D8C5E1C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F324(a1, a2, a3, *v3, &qword_1ECAAB308, &qword_1D8C87BB0);
  *v3 = result;
  return result;
}

char *sub_1D8C5E1F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F420(a1, a2, a3, *v3, &qword_1ECAAB300, &qword_1D8C87BA8);
  *v3 = result;
  return result;
}

char *sub_1D8C5E228(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E248(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E268(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C5F724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8C5E394(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB330, &qword_1D8C87BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB338, &qword_1D8C87BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E4E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB178, &unk_1D8C863A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E62C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2D0, &qword_1D8C87B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2D8, &qword_1D8C87B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E760(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2E0, &unk_1D8C87B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2E8, &unk_1D8C888F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5E8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1B0, &qword_1D8C86708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8C5E9B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB208, &unk_1D8C87C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB210, &unk_1D8C86770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5EAE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1C8, &qword_1D8C86728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5EC04(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB340, &qword_1D8C87BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB348, &unk_1D8C87C00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5ED4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1A0, &qword_1D8C866E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0B0, &qword_1D8C866F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5EE94(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2B8, &unk_1D8C87390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2C0, &qword_1D8C873A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5EFDC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2A8, &unk_1D8C87370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2B0, &unk_1D8C87C10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5F124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB328, &unk_1D8C87BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8C5F230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB320, &unk_1D8C87BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8C5F324(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_1D8C5F420(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1D8C5F51C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2F8, &qword_1D8C87BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8C5F620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2F0, &qword_1D8C87B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8C5F724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1C0, &qword_1D8C87B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D8C5F834(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C47C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D8C5F8A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D8C5F8A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8C85264();
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
        v5 = sub_1D8C84F84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8C5FA68(v7, v8, a1, v4);
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
    return sub_1D8C5F998(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8C5F998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D8C852A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C5FA68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D8C7C468(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D8C60044((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D8C852A4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D8C852A4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D8C4A268((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
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
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D8C60044((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8C7C468(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D8C7C3DC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D8C852A4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D8C60044(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D8C852A4() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D8C852A4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_1D8C60284(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D8C603DC()
{
  result = qword_1ECAAB2C8;
  if (!qword_1ECAAB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB2C8);
  }

  return result;
}

uint64_t sub_1D8C60430(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1D8C31D98(result, a2, a3, a4, a5, HIBYTE(a5));
  }

  return result;
}

void sub_1D8C60444(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    sub_1D8C5C2AC(a1, a2, a3, a4, a5, HIBYTE(a5));
  }
}

uint64_t sub_1D8C60474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 34))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 32) >> 11) & 0xE | (*(a1 + 32) >> 15)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8C604C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (((-a2 >> 1) & 7) - 8 * a2) << 12;
    }
  }

  return result;
}

uint64_t sub_1D8C60564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C605AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void sub_1D8C60608(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {
  }

  else
  {
    sub_1D8C5C2AC(a1, a2, a3, a4, a5, HIBYTE(a5));
  }
}

unint64_t sub_1D8C60618(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = v13 + 40 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C606EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_1D8C85114();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_1D8C85144();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

ValueMetadata *sub_1D8C60894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB388, &unk_1D8C87DF0);
  v14 = sub_1D8C84DD4();
  v15 = v1;
  MEMORY[0x1DA7255C0](0x203A726F72724520, 0xE800000000000000);
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (v6 <= 2)
  {
    if (*(v0 + 40))
    {
      if (v6 == 1)
      {
        v9 = *(v0 + 32);
        sub_1D8C85124();
        MEMORY[0x1DA7255C0](0xD000000000000038, 0x80000001D8C8C1B0);
        MEMORY[0x1DA7255C0](v3, v2);
        MEMORY[0x1DA7255C0](41, 0xE100000000000000);
        v8 = sub_1D8C60BA0(0, 0xE000000000000000, v4, v5, v9, v14, v15);

        goto LABEL_15;
      }

      v11 = 0x20676E697373694DLL;
      v10 = 0xED00007865646E69;
LABEL_14:
      v8 = sub_1D8C60BA0(v11, v10, *v0, *(v0 + 8), *(v0 + 16), v14, v15);
      goto LABEL_15;
    }

    v12 = "egative (index: ";
    v11 = 0xD000000000000012;
LABEL_13:
    v10 = v12 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (*(v0 + 40) > 4u)
  {
    if (v6 != 5)
    {
      sub_1D8C85124();

      MEMORY[0x1DA7255C0](0xD00000000000001CLL, 0x80000001D8C8C1F0);
      return v14;
    }

    v10 = 0x80000001D8C8C120;
    v11 = 0xD000000000000011;
    goto LABEL_14;
  }

  if (v6 != 3)
  {
    v12 = "Missing separator";
    v11 = 0xD000000000000017;
    goto LABEL_13;
  }

  sub_1D8C85124();

  v7 = sub_1D8C85274();
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](41, 0xE100000000000000);
  v8 = sub_1D8C60BA0(0xD000000000000020, 0x80000001D8C8C160, v2, v4, v5, v14, v15);

LABEL_15:

  return v8;
}

uint64_t sub_1D8C60BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D8C84EC4();
  v14 = sub_1D8C84EE4();
  v15 = v12;

  MEMORY[0x1DA7255C0](0x6572654820A987E2, 0xA800000000000000);

  MEMORY[0x1DA7255C0](a1, a2);
  MEMORY[0x1DA7255C0](10, 0xE100000000000000);
  MEMORY[0x1DA7255C0](v14, v15);

  MEMORY[0x1DA7255C0](10, 0xE100000000000000);
  MEMORY[0x1DA7255C0](a3, a4);
  return a6;
}

uint64_t sub_1D8C60CC8()
{
  v0 = sub_1D8C84664();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v12 - v8;
  __swift_allocate_value_buffer(v7, qword_1ECAAB350);
  __swift_project_value_buffer(v0, qword_1ECAAB350);
  sub_1D8C84644();
  sub_1D8C84614();
  sub_1D8C84634();
  v10 = *(v1 + 8);
  v10(v5, v0);
  return (v10)(v9, v0);
}

uint64_t sub_1D8C60E00()
{
  v0 = sub_1D8C84664();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v13 - v8;
  __swift_allocate_value_buffer(v7, qword_1ECAAB368);
  __swift_project_value_buffer(v0, qword_1ECAAB368);
  if (qword_1ECAAAFD8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1ECAAB350);
  (*(v1 + 16))(v9, v10, v0);
  sub_1D8C84624();
  sub_1D8C84634();
  v11 = *(v1 + 8);
  v11(v5, v0);
  return (v11)(v9, v0);
}

char *sub_1D8C60F88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v79 = sub_1D8C85044();
  v6 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v7);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C84664();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v83 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    sub_1D8C61920();
    swift_allocError();
    *v62 = 0u;
    *(v62 + 16) = 0u;
    *(v62 + 32) = 0;
    *(v62 + 40) = 6;
    swift_willThrow();
    return v6;
  }

  v14 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v73 = a1;
  v74 = a2;
  v15 = sub_1D8C84D74();
  v16 = [v14 initWithString_];

  [v16 setCharactersToBeSkipped_];
  v82 = (v10 + 8);
  v76 = (v6 + 8);
  v77 = (v6 + 104);
  v6 = MEMORY[0x1E69E7CC0];
  v75 = *MEMORY[0x1E696A028];
  while (1)
  {
    v19 = sub_1D8C85014();
    if (qword_1ECAAAFE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ECAAB368);
    v20 = sub_1D8C85034();
    if (!v21)
    {

      sub_1D8C61920();
      swift_allocError();
      v6 = v74;
      *v66 = v73;
      *(v66 + 8) = v6;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0;
      *(v66 + 16) = v19;
      *(v66 + 40) = 0;
      goto LABEL_46;
    }

    v22 = v21;
    v84 = v20;
    v23 = sub_1D8C84EF4();
    v25 = v24;
    if (qword_1ECAAAFD8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_1ECAAB350);
    *(&v72 - 2) = MEMORY[0x1EEE9AC00](v26, v27);
    v28 = sub_1D8C606EC(sub_1D8C61974, (&v72 - 4), v23, v25);

    if ((v28 & 1) == 0)
    {

      sub_1D8C61920();
      swift_allocError();
      *v67 = v84;
      *(v67 + 8) = v22;
      v6 = v74;
      *(v67 + 16) = v73;
      *(v67 + 24) = v6;
      *(v67 + 32) = v19;
      v68 = 1;
      goto LABEL_45;
    }

    if ([v16 isAtEnd])
    {
LABEL_14:
      v29 = 0;
      v30 = 1;
      goto LABEL_27;
    }

    v31 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    v32 = sub_1D8C84EF4();
    v34 = v33;

    if (v32 == 91 && v34 == 0xE100000000000000)
    {
    }

    else
    {
      v35 = sub_1D8C852A4();

      if ((v35 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v80 = v3;
    v81 = v6;
    v36 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    sub_1D8C84E54();

    sub_1D8C85024();
    v37 = v83;
    sub_1D8C84604();
    sub_1D8C85034();

    v38 = *v82;
    v39 = v37;
    v40 = v9;
    (*v82)(v39, v9);
    v41 = sub_1D8C85014();
    v42 = v78;
    v43 = v79;
    (*v77)(v78, v75, v79);
    v29 = sub_1D8C85054();
    v45 = v44;
    (*v76)(v42, v43);
    if (v45)
    {

      sub_1D8C61920();
      swift_allocError();
      v6 = v74;
      *v67 = v73;
      *(v67 + 8) = v6;
      *(v67 + 24) = 0;
      *(v67 + 32) = 0;
      *(v67 + 16) = v41;
      v68 = 2;
      goto LABEL_45;
    }

    if (v29 < 0)
    {
      break;
    }

    v46 = v83;
    sub_1D8C84604();
    sub_1D8C85034();

    v9 = v40;
    v38(v46, v40);
    v47 = [v16 isAtEnd];
    v3 = v80;
    v6 = v81;
    if (v47)
    {
      goto LABEL_41;
    }

    v48 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    v49 = sub_1D8C84EF4();
    v51 = v50;

    if (v49 == 93 && v51 == 0xE100000000000000)
    {
    }

    else
    {
      v52 = sub_1D8C852A4();

      if ((v52 & 1) == 0)
      {
LABEL_41:

        v69 = v74;

        v6 = sub_1D8C85014();
        sub_1D8C61920();
        swift_allocError();
        *v64 = v73;
        *(v64 + 8) = v69;
        *(v64 + 24) = 0;
        *(v64 + 32) = 0;
        *(v64 + 16) = v6;
        v65 = 4;
        goto LABEL_42;
      }
    }

    v53 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    sub_1D8C84E54();

    sub_1D8C85024();
    v30 = 0;
LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D8C4A994(0, *(v6 + 16) + 1, 1, v6);
    }

    v55 = *(v6 + 16);
    v54 = *(v6 + 24);
    if (v55 >= v54 >> 1)
    {
      v6 = sub_1D8C4A994((v54 > 1), v55 + 1, 1, v6);
    }

    *(v6 + 16) = v55 + 1;
    v56 = v6 + 32 * v55;
    *(v56 + 32) = v84;
    *(v56 + 40) = v22;
    *(v56 + 48) = v29;
    *(v56 + 56) = v30;
    if ([v16 isAtEnd])
    {
      goto LABEL_47;
    }

    v57 = v6;
    if ([v16 isAtEnd])
    {
LABEL_37:

      v63 = v74;

      v6 = sub_1D8C85014();
      sub_1D8C61920();
      swift_allocError();
      *v64 = v73;
      *(v64 + 8) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0;
      *(v64 + 16) = v6;
      v65 = 5;
LABEL_42:
      *(v64 + 40) = v65;
      swift_willThrow();
      goto LABEL_47;
    }

    v58 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    v59 = sub_1D8C84EF4();
    v61 = v60;

    if (v59 == 46 && v61 == 0xE100000000000000)
    {
    }

    else
    {
      v17 = sub_1D8C852A4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v18 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    sub_1D8C84E54();

    sub_1D8C85024();
    v6 = v57;
  }

  sub_1D8C61920();
  swift_allocError();
  v70 = v73;
  v6 = v74;
  *v67 = v29;
  *(v67 + 8) = v70;
  *(v67 + 16) = v6;
  *(v67 + 24) = v41;
  *(v67 + 32) = 0;
  v68 = 3;
LABEL_45:
  *(v67 + 40) = v68;
LABEL_46:
  swift_willThrow();

LABEL_47:

  return v6;
}

unint64_t sub_1D8C61920()
{
  result = qword_1ECAAB380;
  if (!qword_1ECAAB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB380);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PoirotSchematizer16PropertyPathUtilV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D8C619B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C619F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8C61A48(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D8C61A90(uint64_t a1, int a2)
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

uint64_t sub_1D8C61AD8(uint64_t result, int a2, int a3)
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

void sub_1D8C61B40(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t, uint64_t)@<X1>, unint64_t *a3@<X8>)
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8C2E870(v7);
  ObjectType = swift_getObjectType();
  v9 = a2[2](ObjectType, a2);
  swift_unknownObjectRetain();
  sub_1D8C621D8(v9, &v36, a1, a2);

  swift_unknownObjectRelease();
  if (v3)
  {
    swift_unknownObjectRelease();

    sub_1D8C2C670(0, 0xF000000000000000);
  }

  else
  {
    v10 = v36;
    v11 = a2[3];

    v12 = v11(ObjectType, a2);
    v35 = a3;
    v34 = v10;
    if (v12)
    {
      v32 = *(v12 + 40);
      v33 = *(v12 + 32);
      sub_1D8C2C5E4(v33, v32);
    }

    else
    {
      v32 = 0xF000000000000000;
      v33 = 0;
    }

    sub_1D8C2C670(0, 0xF000000000000000);
    v13 = a2[4](ObjectType, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
    v14 = sub_1D8C85214();
    v15 = v14;
    v16 = 0;
    v17 = 1 << *(v13 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v13 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v14 + 64;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_15:
        v25 = v22 | (v16 << 6);
        v26 = *(*(v13 + 48) + 8 * v25);
        v27 = v15[6];
        v28 = *(*(*(v13 + 56) + 8 * v25) + 32);
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(v27 + 8 * v25) = v26;
        *(v15[7] + 16 * v25) = v28;
        v29 = v15[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          break;
        }

        v15[2] = v31;
        sub_1D8C2C5E4(v28, *(&v28 + 1));
        if (!v19)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v23 = v16;
      while (1)
      {
        v16 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v16 >= v20)
        {

          swift_unknownObjectRelease();

          *v35 = v34;
          v35[1] = v33;
          v35[2] = v32;
          v35[3] = v15;
          return;
        }

        v24 = *(v13 + 64 + 8 * v16);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v19 = (v24 - 1) & v24;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t EnumManifest.init(values:options:valueOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = xmmword_1D8C86390;
  sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
  *a5 = a1;
  sub_1D8C2C670(0, 0xF000000000000000);

  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t EnumManifest.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EnumManifest.options.getter()
{
  v1 = *(v0 + 8);
  sub_1D8C2C5D0(v1, *(v0 + 16));
  return v1;
}

uint64_t EnumManifest.options.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C2C670(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t EnumManifest.valueOptions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t EnumManifest.nextAvailableValue.getter()
{
  v1 = 0;
  v2 = *v0;
  result = 1;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v7 = *(v2 + 64);
  v6 = v2 + 64;
  v8 = v5 & v7;
  v9 = (v4 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v1;
LABEL_8:
      v11 = *(*(*v0 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        break;
      }

      v8 &= v8 - 1;
      if (v13 > result)
      {
        result = v13;
      }

      v1 = v10;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        return result;
      }

      v8 = *(v6 + 8 * v10);
      ++v1;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL _s17PoirotSchematizer12EnumManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D8C4BEF8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_1D8C2C5D0(v2, v3);
      sub_1D8C2C5D0(v5, v7);
      v9 = sub_1D8C76A90(v2, v3, v5, v7);
      sub_1D8C2C670(v5, v7);
      sub_1D8C2C670(v2, v3);
      if (v9)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:
    sub_1D8C2C5D0(v2, v3);
    sub_1D8C2C5D0(v5, v7);
    sub_1D8C2C670(v2, v3);
    sub_1D8C2C670(v5, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_1D8C2C5D0(v2, v3);
  sub_1D8C2C5D0(v5, v7);
  sub_1D8C2C670(v2, v3);
LABEL_9:

  return sub_1D8C4C02C(v4, v6);
}

uint64_t sub_1D8C621D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v36 = a2;
  v37 = v11;
  while (v10)
  {
LABEL_11:
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    ObjectType = swift_getObjectType();
    v40 = v14;
    v16 = (*(a4 + 48))(v14, ObjectType);
    if (v5)
    {
    }

    v18 = v16;
    v19 = v17;
    v20 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a2;
    v41 = *a2;
    *a2 = 0x8000000000000000;
    v24 = sub_1D8C4668C(v18, v19);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8C74800();
      }
    }

    else
    {
      sub_1D8C72EF4(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1D8C4668C(v18, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

      v24 = v29;
    }

    v7 = v20;
    v11 = v37;
    if (v28)
    {
      *(v41[7] + 8 * v24) = v40;
    }

    else
    {
      v41[(v24 >> 6) + 8] |= 1 << v24;
      v31 = (v41[6] + 16 * v24);
      *v31 = v18;
      v31[1] = v19;
      *(v41[7] + 8 * v24) = v40;
      v32 = v41[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      v41[2] = v34;
    }

    v10 &= v10 - 1;
    a2 = v36;
    *v36 = v41;

    v5 = 0;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D8C85354();
  __break(1u);
  return result;
}

uint64_t sub_1D8C62444(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = a3[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v6 = result;
  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = 0;
  v9 = a2 + 32;
  v46 = a2 + 32;
  while (2)
  {
    v10 = *(v9 + 8 * v8);
    while (1)
    {
      v11 = a3[3];
      if ((v11 & 0x8000000000000000) == 0 && v11 >= v4)
      {
        goto LABEL_79;
      }

      v13 = *a3;
      v12 = a3[1];
      if (*a3)
      {
        v14 = v12 - v13;
        if (v11 >= v12 - v13)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v14 = 0;
      }

      v15 = *(v13 + v11);
      v16 = v11 + 1;
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v16 >= v14)
        {
          goto LABEL_46;
        }

        v15 &= 0x7Fu;
        v17 = (v13 + v11 + 1);
        v16 = v11 + 2;
        v18 = 7;
        while (1)
        {
          v19 = *v17++;
          v15 |= (v19 & 0x7F) << v18;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          if (v16 < v14)
          {
            ++v16;
            v20 = v18 > 0x38;
            v18 += 7;
            if (!v20)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        a3[3] = v16;
        if (v15 > 0xFFFFFFFE)
        {
          goto LABEL_46;
        }
      }

      else
      {
        a3[3] = v16;
      }

      if (v15 < 8 || (v15 & 6) == 6)
      {
        goto LABEL_46;
      }

      if (v10 == v15 >> 3)
      {
        break;
      }

      result = sub_1D8C452D0(v15);
      if (v3)
      {
        return result;
      }
    }

    result = sub_1D8C29E98(v15);
    if (result != 2)
    {
      sub_1D8C85124();
      MEMORY[0x1DA7255C0](0xD000000000000024, 0x80000001D8C8BFB0);
      sub_1D8C851E4();
      sub_1D8C2F8AC();
      swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0xE000000000000000;
      v29 = 5;
      goto LABEL_47;
    }

    if (v13)
    {
      v22 = v12 - v13;
      if (v16 >= v12 - v13)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v22 = 0;
    }

    v23 = *(v13 + v16);
    v24 = v16 + 1;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    if (v24 >= v22)
    {
LABEL_46:
      sub_1D8C36A64();
      swift_allocError();
      *v28 = xmmword_1D8C86190;
      v29 = 2;
LABEL_47:
      *(v28 + 16) = v29;
      return swift_willThrow();
    }

    v23 &= 0x7Fu;
    v25 = (v13 + v16 + 1);
    v24 = v16 + 2;
    v26 = 7;
    while (1)
    {
      v27 = *v25++;
      v23 |= (v27 & 0x7F) << v26;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      if (v24 < v22)
      {
        ++v24;
        v20 = v26 > 0x38;
        v26 += 7;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

LABEL_36:
    a3[3] = v24;
    v9 = v46;
    if (v24 < 0)
    {
      goto LABEL_84;
    }

    v4 = v23 + v24;
    if (__CFADD__(v23, v24))
    {
LABEL_85:
      __break(1u);
      return result;
    }

    if (++v8 != v7)
    {
      continue;
    }

    break;
  }

LABEL_49:
  v30 = v6 + 56;
  while (1)
  {
    v31 = a3[3];
    if ((v31 & 0x8000000000000000) == 0 && v31 >= v4)
    {
      break;
    }

    v32 = *a3;
    if (*a3)
    {
      v33 = a3[1] - v32;
      if (v31 >= v33)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v33 = 0;
    }

    v34 = *(v32 + v31);
    v35 = v31 + 1;
    if ((v34 & 0x8000000000000000) != 0)
    {
      if (v35 >= v33)
      {
        goto LABEL_46;
      }

      v34 &= 0x7Fu;
      v36 = (v32 + v31 + 1);
      v37 = v31 + 2;
      v38 = 7;
      while (1)
      {
        v39 = *v36++;
        v34 |= (v39 & 0x7F) << v38;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        if (v37 < v33)
        {
          ++v37;
          v20 = v38 > 0x38;
          v38 += 7;
          if (!v20)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

      a3[3] = v37;
      if (v34 > 0xFFFFFFFE)
      {
        goto LABEL_46;
      }
    }

    else
    {
      a3[3] = v35;
    }

    if (v34 < 8 || (v34 & 6) == 6)
    {
      goto LABEL_46;
    }

    if (*(v6 + 16))
    {
      v41 = sub_1D8C853A4();
      v42 = -1 << *(v6 + 32);
      v43 = v41 & ~v42;
      if ((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (*(*(v6 + 48) + 8 * v43) != v34 >> 3)
        {
          v43 = (v43 + 1) & v44;
          if (((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        v45 = 0;
        return v34 + (v45 << 32);
      }
    }

LABEL_50:
    result = sub_1D8C452D0(v34);
    if (v3)
    {
      return result;
    }
  }

LABEL_79:
  v34 = 0;
  v45 = 1;
  return v34 + (v45 << 32);
}

uint64_t (*SchematizedDataComposer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C62D10;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C638A8;
}

uint64_t sub_1D8C631E4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;

  return a5(v8, v6, v7);
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v7, &v47);
  v9 = v48;
  v10 = swift_getObjectType();
  (*(v9 + 56))(a2, a3, v10, v9);
  v12 = v11;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v12, &v49);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = *(&v49 + 1);
  v14 = swift_getObjectType();
  (*(v13 + 56))(&v47, v14, v13);
  v16 = v47;
  v15 = v48;
  if (!(v48 >> 62))
  {
    if (a1)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v41 = a3;
        v43 = v3;
        *&v49 = MEMORY[0x1E69E7CC0];
        sub_1D8C5E058(0, v17, 0);
        v18 = v49;
        v19 = (a1 + 40);
        do
        {
          v20 = *(v19 - 1);
          v21 = *v19;

          sub_1D8C2B50C(v16, v15);
          *&v49 = v18;
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1D8C5E058((v22 > 1), v23 + 1, 1);
            v18 = v49;
          }

          *(v18 + 16) = v23 + 1;
          v24 = v18 + 40 * v23;
          *(v24 + 32) = v16;
          *(v24 + 40) = v15;
          *(v24 + 48) = v20;
          *(v24 + 56) = v21;
          *(v24 + 64) = 1792;
          v19 += 2;
          --v17;
        }

        while (v17);

        a3 = v41;
        v4 = v43;
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      v49 = v18;
      v50 = 0;
      v51 = 0;
      v52 = 0x8000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v4 + 16);
      sub_1D8C7590C(&v49, a2, a3, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();

      v37 = v16;
      v38 = v15;
LABEL_26:
      result = sub_1D8C2BBF0(v37, v38);
      *(v4 + 16) = v46;
      return result;
    }

    sub_1D8C75164(a2, a3, &v49);

    sub_1D8C31D74(v49, *(&v49 + 1), v50, v51, v52);
    swift_unknownObjectRelease();
    v33 = v16;
    v34 = v15;
    return sub_1D8C2BBF0(v33, v34);
  }

  if (v48 >> 62 == 2 && v47 == 13 && v48 == 0x8000000000000000)
  {
    if (a1)
    {
      v44 = v3;
      v25 = *(a1 + 16);
      if (v25)
      {
        v42 = a3;
        *&v49 = MEMORY[0x1E69E7CC0];
        sub_1D8C5E058(0, v25, 0);
        v26 = v49;
        v27 = (a1 + 40);
        do
        {
          v29 = *(v27 - 1);
          v28 = *v27;
          *&v49 = v26;
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);

          if (v31 >= v30 >> 1)
          {
            sub_1D8C5E058((v30 > 1), v31 + 1, 1);
            v26 = v49;
          }

          *(v26 + 16) = v31 + 1;
          v32 = v26 + 40 * v31;
          *(v32 + 32) = v29;
          *(v32 + 40) = v28;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          *(v32 + 64) = 2048;
          v27 += 2;
          --v25;
        }

        while (v25);

        a3 = v42;
      }

      else
      {

        v26 = MEMORY[0x1E69E7CC0];
      }

      v49 = v26;
      v50 = 0;
      v51 = 0;
      v52 = 0x8000;
      v4 = v44;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v44 + 16);
      sub_1D8C7590C(&v49, a2, a3, v39);
      swift_unknownObjectRelease();

      v37 = 13;
      v38 = 0x8000000000000000;
      goto LABEL_26;
    }

    sub_1D8C75164(a2, a3, &v49);

    sub_1D8C31D74(v49, *(&v49 + 1), v50, v51, v52);
    swift_unknownObjectRelease();
    v33 = 13;
    v34 = 0x8000000000000000;
    return sub_1D8C2BBF0(v33, v34);
  }

  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1D8C85124();

  *&v49 = 0x73696D2065707954;
  *(&v49 + 1) = 0xEF203A686374616DLL;
  v40 = (*(*(v7 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v40);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a2, a3);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v19 = v3;
      *&v22 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v8, 0);
      v9 = v22;
      v10 = (a1 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        sub_1D8C2C5E4(v11, *v10);
        *&v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        v10 += 2;
        *(v9 + 16) = v14 + 1;
        v15 = v9 + 40 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        *(v15 + 64) = 2304;
        --v8;
      }

      while (v8);

      v4 = v19;
      v5 = a3;
      v6 = a2;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v22 = v9;
    v23 = 0;
    v24 = 0;
    v25 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 16);
    sub_1D8C7590C(&v22, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v21;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v22);

    return sub_1D8C31D74(v22, *(&v22 + 1), v23, v24, v25);
  }

  return result;
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (!a1)
  {
    sub_1D8C75164(a2, a3, &v93);

    return sub_1D8C31D74(v93, *(&v93 + 1), v94, v95, v96);
  }

  v7 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v7, &v92);
  v9 = *(&v92 + 1);
  v10 = swift_getObjectType();
  (*(v9 + 56))(v6, v5, v10, v9);
  v12 = v11;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v12, &v93);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = *(&v93 + 1);
  v14 = swift_getObjectType();
  (*(v13 + 56))(&v92, v14, v13);
  v15 = v92;
  if (!(*(&v92 + 1) >> 62))
  {
    v87 = v3;
    v16 = *(a1 + 16);
    if (v16)
    {
      v83 = v6;
      v80 = v5;
      *&v93 = MEMORY[0x1E69E7CC0];
      swift_unknownObjectRetain();
      sub_1D8C5E058(0, v16, 0);
      v17 = a1;
      v18 = 32;
      v19 = v93;
      do
      {
        v20 = *(v17 + v18);
        sub_1D8C2B50C(v15, *(&v15 + 1));
        *&v93 = v19;
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D8C5E058((v21 > 1), v22 + 1, 1);
          v17 = a1;
          v19 = v93;
        }

        *(v19 + 16) = v22 + 1;
        v23 = v19 + 40 * v22;
        *(v23 + 32) = v15;
        *(v23 + 48) = v20;
        *(v23 + 56) = 0;
        *(v23 + 64) = 1793;
        v18 += 8;
        --v16;
      }

      while (v16);

      v5 = v80;
      v6 = v83;
    }

    else
    {
      sub_1D8C2B50C(v92, *(&v92 + 1));

      v19 = MEMORY[0x1E69E7CC0];
    }

    v93 = v19;
    v94 = 0;
    v95 = 0;
    v96 = 0x8000;
    v4 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v87 + 16);
    sub_1D8C7590C(&v93, v6, v5, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();

    sub_1D8C2BBF0(v15, *(&v15 + 1));
LABEL_38:
    result = sub_1D8C2BBF0(v15, *(&v15 + 1));
    v48 = v91;
LABEL_69:
    *(v4 + 16) = v48;
    return result;
  }

  if (*(&v92 + 1) >> 62 == 2)
  {
    if (__PAIR128__(0x8000000000000000, 2) >= v92)
    {
      if (!(v92 | *(&v92 + 1) ^ 0x8000000000000000))
      {
        goto LABEL_30;
      }

      if (*(&v92 + 1) != 0x8000000000000000 || v92 != 1)
      {
        if (*(&v92 + 1) != 0x8000000000000000 || v92 != 2)
        {
          goto LABEL_74;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v25 = v92 - 5;
      if ((v92 - 5) <= 7)
      {
        v88 = v3;
        if (((1 << v25) & 0x15) != 0)
        {
          v26 = *(a1 + 16);
          if (v26)
          {
            v84 = v6;
            v81 = v5;
            *&v93 = MEMORY[0x1E69E7CC0];
            sub_1D8C5E058(0, v26, 0);
            v27 = 0;
            v28 = v93;
            v29 = *(v93 + 16);
            v30 = 40 * v29;
            do
            {
              v31 = *(a1 + 32 + 8 * v27);
              *&v93 = v28;
              v32 = *(v28 + 24);
              v33 = v29 + v27 + 1;
              if (v29 + v27 >= v32 >> 1)
              {
                sub_1D8C5E058((v32 > 1), v29 + v27 + 1, 1);
                v28 = v93;
              }

              ++v27;
              *(v28 + 16) = v33;
              v34 = v28 + v30;
              *(v34 + 32) = v31;
              *(v34 + 40) = 0;
              *(v34 + 48) = 0;
              *(v34 + 56) = 0;
              v30 += 40;
              *(v34 + 64) = 512;
            }

            while (v26 != v27);
LABEL_45:

            v5 = v81;
            v6 = v84;
LABEL_47:
            v93 = v28;
            v94 = 0;
            v95 = 0;
            v96 = 0x8000;
            v4 = v3;
LABEL_68:
            v76 = swift_isUniquelyReferenced_nonNull_native();
            *&v92 = *(v4 + 16);
            sub_1D8C7590C(&v93, v6, v5, v76);
            swift_unknownObjectRelease();

            v48 = v92;
            goto LABEL_69;
          }

          goto LABEL_46;
        }

        if (((1 << v25) & 0xA) != 0)
        {
          v49 = *(a1 + 16);
          if (v49)
          {
            v84 = v6;
            v81 = v5;
            *&v93 = MEMORY[0x1E69E7CC0];
            sub_1D8C5E058(0, v49, 0);
            v50 = 0;
            v28 = v93;
            v51 = *(v93 + 16);
            v52 = 40 * v51;
            do
            {
              v53 = *(a1 + 32 + 8 * v50);
              *&v93 = v28;
              v54 = *(v28 + 24);
              v55 = v51 + v50 + 1;
              if (v51 + v50 >= v54 >> 1)
              {
                sub_1D8C5E058((v54 > 1), v51 + v50 + 1, 1);
                v28 = v93;
              }

              ++v50;
              *(v28 + 16) = v55;
              v56 = v28 + v52;
              *(v56 + 32) = v53;
              *(v56 + 40) = 0;
              *(v56 + 48) = 0;
              *(v56 + 56) = 0;
              v52 += 40;
              *(v56 + 64) = 768;
            }

            while (v49 != v50);
            goto LABEL_45;
          }

LABEL_46:

          v28 = MEMORY[0x1E69E7CC0];
          goto LABEL_47;
        }

        if (v92 == 12)
        {
          v57 = *(a1 + 16);
          if (v57)
          {
            v85 = v6;
            v82 = v5;
            *&v93 = MEMORY[0x1E69E7CC0];
            sub_1D8C5E058(0, v57, 0);
            v58 = 0;
            v59 = v93;
            v60 = *(v93 + 16);
            v61 = 40 * v60;
            do
            {
              v62 = *(a1 + 32 + 8 * v58);
              *&v93 = v59;
              v63 = *(v59 + 24);
              v64 = v60 + v58 + 1;
              if (v60 + v58 >= v63 >> 1)
              {
                sub_1D8C5E058((v63 > 1), v60 + v58 + 1, 1);
                v59 = v93;
              }

              ++v58;
              *(v59 + 16) = v64;
              v65 = v59 + v61;
              *(v65 + 32) = v62 != 0;
              *(v65 + 40) = 0;
              *(v65 + 48) = 0;
              *(v65 + 56) = 0;
              *(v65 + 64) = 1536;
              v61 += 40;
            }

            while (v57 != v58);

            v5 = v82;
            v6 = v85;
            v4 = v88;
          }

          else
          {

            v59 = MEMORY[0x1E69E7CC0];
          }

          v93 = v59;
          v94 = 0;
          v95 = 0;
          v96 = 0x8000;
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v91 = *(v4 + 16);
          sub_1D8C7590C(&v93, v6, v5, v79);
          swift_unknownObjectRelease();

          goto LABEL_38;
        }
      }

      if (*(&v92 + 1) != 0x8000000000000000 || v92 != 3)
      {
        if (*(&v92 + 1) != 0x8000000000000000 || v92 != 4)
        {
          goto LABEL_74;
        }

LABEL_30:
        v37 = *(a1 + 16);
        if (v37)
        {
          v38 = v3;
          *&v93 = MEMORY[0x1E69E7CC0];
          sub_1D8C5E058(0, v37, 0);
          v39 = v93;
          v40 = *(v93 + 16);
          v41 = 40 * v40;
          v42 = 32;
          do
          {
            v43 = *(a1 + v42);
            *&v93 = v39;
            v44 = *(v39 + 24);
            v45 = v40 + 1;
            if (v40 >= v44 >> 1)
            {
              sub_1D8C5E058((v44 > 1), v40 + 1, 1);
              v39 = v93;
            }

            *(v39 + 16) = v45;
            v46 = v39 + v41;
            *(v46 + 32) = v43;
            *(v46 + 40) = 0;
            v41 += 40;
            *(v46 + 48) = 0;
            *(v46 + 56) = 0;
            v42 += 8;
            v40 = v45;
            *(v46 + 64) = 0;
            --v37;
          }

          while (v37);

          v4 = v38;
          goto LABEL_67;
        }

LABEL_66:

        v39 = MEMORY[0x1E69E7CC0];
LABEL_67:
        v93 = v39;
        v94 = 0;
        v95 = 0;
        v96 = 0x8000;
        goto LABEL_68;
      }
    }

    v67 = *(a1 + 16);
    if (v67)
    {
      v86 = v6;
      v89 = v3;
      v68 = v5;
      *&v93 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v67, 0);
      v69 = 0;
      v39 = v93;
      v70 = *(v93 + 16);
      v71 = 40 * v70;
      do
      {
        v72 = *(a1 + 32 + 8 * v69);
        *&v93 = v39;
        v73 = *(v39 + 24);
        v74 = v70 + v69 + 1;
        if (v70 + v69 >= v73 >> 1)
        {
          sub_1D8C5E058((v73 > 1), v70 + v69 + 1, 1);
          v39 = v93;
        }

        ++v69;
        *(v39 + 16) = v74;
        v75 = v39 + v71;
        *(v75 + 32) = v72;
        *(v75 + 40) = 0;
        *(v75 + 48) = 0;
        *(v75 + 56) = 0;
        v71 += 40;
        *(v75 + 64) = 256;
      }

      while (v67 != v69);

      v5 = v68;
      v6 = v86;
      v4 = v89;
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_74:
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  sub_1D8C85124();

  *&v93 = 0x73696D2065707954;
  *(&v93 + 1) = 0xEF203A686374616DLL;
  v78 = (*(*(v7 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v78);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](v6, v5);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      *&v21 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = a1;
      v9 = v21;
      v10 = *(v21 + 16);
      v11 = 40 * v10;
      v12 = 32;
      do
      {
        v13 = *(v8 + v12);
        *&v21 = v9;
        v14 = *(v9 + 24);
        v15 = v10 + 1;
        if (v10 >= v14 >> 1)
        {
          sub_1D8C5E058((v14 > 1), v10 + 1, 1);
          v8 = a1;
          v9 = v21;
        }

        *(v9 + 16) = v15;
        v16 = v9 + v11;
        *(v16 + 32) = v13;
        *(v16 + 40) = 0;
        v11 += 40;
        *(v16 + 48) = 0;
        *(v16 + 56) = 0;
        ++v12;
        v10 = v15;
        *(v16 + 64) = 1536;
        --v7;
      }

      while (v7);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v21 = v9;
    v22 = 0;
    v23 = 0;
    v24 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v4 + 16);
    sub_1D8C7590C(&v21, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v20;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v21);

    return sub_1D8C31D74(v21, *(&v21 + 1), v22, v23, v24);
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      *&v21 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v9 = a1;
      v10 = v21;
      v11 = *(v21 + 16);
      v12 = 40 * v11;
      v13 = 32;
      do
      {
        v14 = *(v9 + v13);
        *&v21 = v10;
        v15 = *(v10 + 24);
        v16 = v11 + 1;
        if (v11 >= v15 >> 1)
        {
          sub_1D8C5E058((v15 > 1), v11 + 1, 1);
          v9 = a1;
          v10 = v21;
        }

        *(v10 + 16) = v16;
        v17 = v10 + v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = 0;
        v12 += 40;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        v13 += 4;
        v11 = v16;
        *(v17 + 64) = 0;
        --v7;
      }

      while (v7);
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v21 = v10;
    v22 = 0;
    v23 = 0;
    v24 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v4 + 16);
    sub_1D8C7590C(&v21, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v20;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v21);

    return sub_1D8C31D74(v21, *(&v21 + 1), v22, v23, v24);
  }

  return result;
}

{
  return sub_1D8C65EF0(a1, a2, a3, 2);
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      *&v22 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = 0;
      v9 = v22;
      v10 = *(v22 + 16);
      v11 = 40 * v10;
      do
      {
        v12 = *(a1 + 32 + 4 * v8);
        *&v22 = v9;
        v13 = *(v9 + 24);
        v14 = v10 + v8 + 1;
        if (v10 + v8 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v10 + v8 + 1, 1);
          v9 = v22;
        }

        ++v8;
        *(v9 + 16) = v14;
        v15 = v9 + v11;
        *(v15 + 32) = v12;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v11 += 40;
        *(v15 + 64) = 256;
      }

      while (v7 != v8);

      v6 = a2;
      v5 = a3;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v22 = v9;
    v23 = 0;
    v24 = 0;
    v25 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 16);
    sub_1D8C7590C(&v22, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v21;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v22);

    return sub_1D8C31D74(v22, *(&v22 + 1), v23, v24, v25);
  }

  return result;
}

{
  return sub_1D8C65EF0(a1, a2, a3, 3);
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      *&v22 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = 0;
      v9 = v22;
      v10 = *(v22 + 16);
      v11 = 40 * v10;
      do
      {
        v12 = *(a1 + 32 + 4 * v8);
        *&v22 = v9;
        v13 = *(v9 + 24);
        v14 = v10 + v8 + 1;
        if (v10 + v8 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v10 + v8 + 1, 1);
          v9 = v22;
        }

        ++v8;
        *(v9 + 16) = v14;
        v15 = v9 + v11;
        *(v15 + 32) = v12;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v11 += 40;
        *(v15 + 64) = 1024;
      }

      while (v7 != v8);

      v6 = a2;
      v5 = a3;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v22 = v9;
    v23 = 0;
    v24 = 0;
    v25 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 16);
    sub_1D8C7590C(&v22, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v21;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v22);

    return sub_1D8C31D74(v22, *(&v22 + 1), v23, v24, v25);
  }

  return result;
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      *&v22 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = 0;
      v9 = v22;
      v10 = *(v22 + 16);
      v11 = 40 * v10;
      do
      {
        v12 = *(a1 + 32 + 8 * v8);
        *&v22 = v9;
        v13 = *(v9 + 24);
        v14 = v10 + v8 + 1;
        if (v10 + v8 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v10 + v8 + 1, 1);
          v9 = v22;
        }

        ++v8;
        *(v9 + 16) = v14;
        v15 = v9 + v11;
        *(v15 + 32) = v12;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v11 += 40;
        *(v15 + 64) = 1280;
      }

      while (v7 != v8);

      v6 = a2;
      v5 = a3;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v22 = v9;
    v23 = 0;
    v24 = 0;
    v25 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 16);
    sub_1D8C7590C(&v22, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v21;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v22);

    return sub_1D8C31D74(v22, *(&v22 + 1), v23, v24, v25);
  }

  return result;
}

{
  if ((a1 & 0x100000000) != 0)
  {
    sub_1D8C75164(a2, a3, &v9);

    return sub_1D8C31D74(v9, *(&v9 + 1), v10, v11, v12);
  }

  else
  {
    v9 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 16);
    sub_1D8C7590C(&v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v8;
  }

  return result;
}

{
  return sub_1D8C71894(a1, a2, a3, 0x100u);
}

{
  return sub_1D8C71894(a1, a2, a3, 0x400u);
}

uint64_t sub_1D8C638C0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1[2];
  v5 = *a1;
  v6 = a1[1];
  if (a2)
  {

    a3(v5, v6, v4);
  }

  else
  {

    return a3(v5, v6, v4);
  }
}

uint64_t (*SchematizedDataComposer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C63DAC;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C64CB0;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6510C;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6555C;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6582C;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C65C90;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C66100;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C66564;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C669C8;
}

uint64_t sub_1D8C65EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      *&v24 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v8, 0);
      v10 = 0;
      v11 = v24;
      v12 = *(v24 + 16);
      v13 = 40 * v12;
      do
      {
        v14 = *(a1 + 32 + 8 * v10);
        *&v24 = v11;
        v15 = *(v11 + 24);
        v16 = v12 + v10 + 1;
        if (v12 + v10 >= v15 >> 1)
        {
          sub_1D8C5E058((v15 > 1), v12 + v10 + 1, 1);
          v11 = v24;
        }

        ++v10;
        *(v11 + 16) = v16;
        v17 = v11 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        *(v17 + 64) = 0;
        v13 += 40;
        *(v17 + 65) = a4;
      }

      while (v8 != v10);

      v7 = a2;
      v6 = a3;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v24 = v11;
    v25 = 0;
    v26 = 0;
    v27 = 0x8000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v5 + 16);
    sub_1D8C7590C(&v24, v7, v6, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v23;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v24);

    return sub_1D8C31D74(v24, *(&v24 + 1), v25, v26, v27);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t UnsafeAnyValue.asPublic()@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8C29EAC(v1, &v27);
  if (v30 <= 4u)
  {
    if (v30 <= 1u)
    {
      if (!v30)
      {
        *a1 = v27;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        return result;
      }

      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 256;
    }

    else if (v30 == 2)
    {
      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 512;
    }

    else if (v30 == 3)
    {
      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 768;
    }

    else
    {
      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 1024;
    }

    goto LABEL_26;
  }

  if (v30 > 7u)
  {
    if (v30 == 8)
    {
      sub_1D8C2AA1C(&v27, &v24);
      v9 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      *a1 = (*(v10 + 24))(v9, v10);
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v8 = 2048;
    }

    else
    {
      if (v30 != 9)
      {
        v25 = MEMORY[0x1E69E6290];
        v26 = MEMORY[0x1E6969DF8];
        v23 = v27;
        v24 = v28;
        v14 = __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x1E69E6290]);
        v15 = *v14;
        if (*v14 && (v16 = v14[1], v17 = &v16[-v15], v16 != v15))
        {
          if (v17 <= 14)
          {
            v18 = sub_1D8C45074(*v14, v16);
            v19 = v21 & 0xFFFFFFFFFFFFFFLL;
            swift_unknownObjectRetain();
          }

          else
          {
            swift_unknownObjectRetain();
            if (v17 >= 0x7FFFFFFF)
            {
              v18 = sub_1D8C45134(v15, v16);
              v19 = v22 | 0x8000000000000000;
            }

            else
            {
              v18 = sub_1D8C2B5D0(v15, v16);
              v19 = v20 | 0x4000000000000000;
            }
          }
        }

        else
        {
          swift_unknownObjectRetain();
          v18 = 0;
          v19 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(&v24);
        swift_unknownObjectRelease();
        type metadata accessor for SchematizedData();
        result = swift_allocObject();
        *(result + 16) = v23;
        *(result + 32) = v18;
        *(result + 40) = v19;
        *a1 = result;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v4 = 2560;
        goto LABEL_26;
      }

      sub_1D8C2AA1C(&v27, &v24);
      v5 = v25;
      v6 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      *a1 = (*(v6 + 16))(v5, v6);
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v8 = 2304;
    }

    *(a1 + 32) = v8;
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  if (v30 == 5)
  {
    *a1 = v27;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = 1280;
  }

  else
  {
    if (v30 != 6)
    {
      v12 = v29;
      v13 = v28;
      *a1 = v27;
      *(a1 + 16) = v13;
      *(a1 + 32) = v12;
      *(a1 + 33) = 7;
      return result;
    }

    *a1 = v27;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = 1536;
  }

LABEL_26:
  *(a1 + 32) = v4;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureBool()()
{
  if (*(v0 + 33) == 6)
  {
    v1 = *v0;
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000010;
    *(v2 + 8) = 0x80000001D8C8C250;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1 & 1;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureInt32()()
{
  if (!*(v0 + 33))
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x80000001D8C8C270;
  *(v1 + 16) = 6;
  return swift_willThrow();
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureUInt32()()
{
  if (*(v0 + 33) == 1)
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000012;
  *(v2 + 8) = 0x80000001D8C8C290;
  *(v2 + 16) = 6;
  return swift_willThrow();
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureInt64()()
{
  v1 = *v0;
  if (*(v0 + 33) != 2)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000011;
    *(v2 + 8) = 0x80000001D8C8C2B0;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureUInt64()()
{
  v1 = *v0;
  if (*(v0 + 33) != 3)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000012;
    *(v2 + 8) = 0x80000001D8C8C2D0;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureFloat()()
{
  if (*(v0 + 33) == 4)
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000011;
  *(v2 + 8) = 0x80000001D8C8C2F0;
  *(v2 + 16) = 6;
  swift_willThrow();
  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureDouble()()
{
  if (*(v0 + 33) == 5)
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000012;
  *(v2 + 8) = 0x80000001D8C8C310;
  *(v2 + 16) = 6;
  swift_willThrow();
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureString()()
{
  if (*(v0 + 33) == 8)
  {
    v3 = v0;
    v2 = *v0;
    v1 = *(v3 + 8);
  }

  else
  {
    v2 = 0x80000001D8C8C330;
    sub_1D8C2F8AC();
    v1 = swift_allocError();
    *v4 = 0xD000000000000012;
    *(v4 + 8) = 0x80000001D8C8C330;
    *(v4 + 16) = 6;
    swift_willThrow();
  }

  v5 = v2;
  v6 = v1;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t AnyValue.ensureData()()
{
  if (*(v0 + 33) == 9)
  {
    v1 = *v0;
    sub_1D8C2C5E4(*v0, *(v0 + 8));
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000010;
    *(v2 + 8) = 0x80000001D8C8C350;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

uint64_t AnyValue.ensureEnum()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 33) == 7)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    *a1 = *v1;
    *(a1 + 16) = v3;
    *(a1 + 24) = v2;
    v4 = *(v1 + 32);
    v5 = v4 & 1;
    *(a1 + 32) = v4 & 1;
    swift_unknownObjectRetain();
    return sub_1D8C3510C(v3, v2, v5);
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v7 = 0xD000000000000010;
    *(v7 + 8) = 0x80000001D8C8C370;
    *(v7 + 16) = 6;
    return swift_willThrow();
  }
}

uint64_t AnyValue.ensureMessage()()
{
  if (*(v0 + 33) == 10)
  {
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000013;
  *(v2 + 8) = 0x80000001D8C8C390;
  *(v2 + 16) = 6;
  return swift_willThrow();
}

uint64_t AnyValue.asUnsafe<A>(_:)(void (*a1)(uint64_t *, uint64_t), uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 33);
  if (v5 <= 4)
  {
    if (*(v2 + 33) > 1u)
    {
      if (v5 != 2 && v5 != 3)
      {
        LODWORD(v27) = *v2;
        LOBYTE(v5) = 4;
        goto LABEL_18;
      }

LABEL_9:
      v27 = *v2;
LABEL_18:
      v32 = v5;
      goto LABEL_20;
    }

    if (*(v2 + 33))
    {
      LODWORD(v27) = *v2;
      LOBYTE(v5) = 1;
      goto LABEL_18;
    }

    LODWORD(v27) = *v2;
    v32 = 0;
LABEL_20:
    a1(&v27, a2);
    return sub_1D8C2AB08(&v27);
  }

  v6 = *(v2 + 8);
  if (*(v2 + 33) <= 7u)
  {
    if (v5 != 5)
    {
      if (v5 != 6)
      {
        v12 = *(v2 + 16);
        v11 = *(v2 + 24);
        v13 = *(v2 + 32);
        v27 = *v2;
        v28 = v6;
        v29 = v12;
        v30 = v11;
        v14 = v13 & 1;
        LOBYTE(v31) = v13 & 1;
        v32 = 7;
        swift_unknownObjectRetain();
        sub_1D8C3510C(v12, v11, v14);
        goto LABEL_20;
      }

      LOBYTE(v27) = v4 & 1;
      LOBYTE(v5) = 6;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v5 == 8)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v24 = v7;
    v25 = a1;
    v26 = v8;
    return String.asUnsafe<A>(_:)(sub_1D8C67A90, v23, v4, v9, v7);
  }

  if (v5 == 9)
  {
    v30 = MEMORY[0x1E6969080];
    v31 = &protocol witness table for Data;
    v27 = v4;
    v28 = v6;
    v32 = 9;
    sub_1D8C2C5E4(v4, v6);
    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v15;
  v25 = a1;
  v26 = v16;
  v17 = *(v4 + 24);
  v18 = v15;
  swift_getObjectType();
  v19 = MEMORY[0x1EEE9AC00](*(v4 + 32), *(v4 + 40));
  v22[2] = v18;
  v22[3] = sub_1D8C67A50;
  v22[4] = v23;
  return MessageSchemaDescribing.schematizing<A>(data:block:)(v19, v20, sub_1D8C67A70, v22, v21, v18, v17);
}

uint64_t sub_1D8C67594(_OWORD *a1, void (*a2)(_OWORD *))
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6 = 10;
  swift_unknownObjectRetain();
  a2(v5);
  return sub_1D8C2AB08(v5);
}

uint64_t UnsafeAnyValue.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8C853F4();
  sub_1D8C29EAC(v1, &v15);
  if (v18 <= 4u)
  {
    if (v18 <= 1u)
    {
      if (v18)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        sub_1D8C85324();
      }

      else
      {
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        sub_1D8C85304();
      }
    }

    else if (v18 == 2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_1D8C85314();
    }

    else if (v18 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_1D8C85334();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_1D8C852E4();
    }
  }

  else if (v18 > 7u)
  {
    if (v18 == 8)
    {
      sub_1D8C2AA1C(&v15, &v12);
      v5 = *(&v13 + 1);
      v6 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
      (*(v6 + 24))(v5, v6);
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_1D8C852B4();
    }

    else
    {
      if (v18 != 9)
      {
        v12 = v15;
        v13 = v16;
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        sub_1D8C4526C();
        sub_1D8C852F4();
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v19);
      }

      sub_1D8C2AA1C(&v15, &v12);
      v2 = *(&v13 + 1);
      v3 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
      v10 = (*(v3 + 16))(v2, v3);
      v11 = v4;
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_1D8C67AFC();
      sub_1D8C852F4();
      sub_1D8C2C684(v10, v11);
    }

    __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else if (v18 == 5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    sub_1D8C852D4();
  }

  else if (v18 == 6)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    sub_1D8C852C4();
  }

  else
  {
    v7 = v16;
    v8 = v17;
    v12 = v15;
    v13 = v16;
    LOBYTE(v14) = v17;
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    sub_1D8C67B50();
    sub_1D8C852F4();
    swift_unknownObjectRelease();
    sub_1D8C31E4C(v7, *(&v7 + 1), v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1D8C67A90(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D8C2F900(a1, v4);
  v4[40] = 8;
  v2(v4);
  return sub_1D8C2AB08(v4);
}

unint64_t sub_1D8C67AFC()
{
  result = qword_1ECAAB390;
  if (!qword_1ECAAB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB390);
  }

  return result;
}

unint64_t sub_1D8C67B50()
{
  result = qword_1ECAAB398;
  if (!qword_1ECAAB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB398);
  }

  return result;
}

uint64_t sub_1D8C67BA4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 33) = a2;
  return result;
}

uint64_t sub_1D8C67BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8C67C28(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 40) = a2;
  return result;
}

void sub_1D8C67C60(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a1 >= 2)
  {
    v14 = *v6;
    v13 = *(v6 + 8);
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (*v6)
    {
      v34[4] = *v6;
      v34[5] = v13;
      v35 = v16;
      v36 = v15;
      v30 = a1;
      v31 = a2;
      v32 = a3;
      v33 = a4;
      sub_1D8C6BC7C(a1, a2, a3, a4);
      sub_1D8C2F004(v14, v13, v16, v15);
      sub_1D8C2CEBC(&v30, a5, v34);
      if (v7)
      {
        sub_1D8C2F060(v30, v31, v32, v33);
        v18 = v35;
        v19 = v36;

        sub_1D8C2C670(v18, v19);
      }

      else
      {
        sub_1D8C2F060(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
        sub_1D8C2F060(v30, v31, v32, v33);
        v24 = v35;
        v25 = v36;

        sub_1D8C2C670(v24, v25);
        v26 = v34[0];
        v27 = v34[1];
        v28 = v34[2];
        v29 = v34[3];
        *v6 = v34[0];
        *(v6 + 8) = v27;
        *(v6 + 16) = v28;
        *(v6 + 24) = v29;
        *a6 = v26;
        a6[1] = v27;
        a6[2] = v28;
        a6[3] = v29;
        sub_1D8C2F004(v26, v27, v28, v29);
      }
    }

    else
    {
      v37 = v7;
      sub_1D8C2F004(a1, a2, a3, a4);
      sub_1D8C2F060(0, v13, v16, v15);
      *v6 = a1;
      *(v6 + 8) = a2;
      *(v6 + 16) = a3;
      *(v6 + 24) = a4;
      *a6 = a1;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      sub_1D8C2F004(a1, a2, a3, a4);
    }
  }

  else
  {
    v9 = *v6;
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    v12 = *(v6 + 24);
    *a6 = *v6;
    a6[1] = v10;
    a6[2] = v11;
    a6[3] = v12;
    sub_1D8C2F004(v9, v10, v11, v12);
  }
}

unint64_t sub_1D8C67E10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v10 = MEMORY[0x1E69E7CC0];
  v16 = sub_1D8C2E72C(MEMORY[0x1E69E7CC0]);
  v15 = sub_1D8C2E600(v10);
  ObjectType = swift_getObjectType();
  v14[2] = &v16;
  v14[3] = &v15;
  MessageSchemaDescribing.schematizing<A>(data:block:)(a1, a2, sub_1D8C6A458, v14, ObjectType, MEMORY[0x1E69E7CA8] + 8, a4);
  sub_1D8C2C684(a1, a2);
  swift_unknownObjectRelease();
  result = v15;
  if (v5)
  {
  }

  else
  {
    v13 = v16;
    *a5 = v15;
    a5[1] = v13;
  }

  return result;
}

uint64_t sub_1D8C67F14(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  ObjectType = swift_getObjectType();
  result = (*(v6 + 56))(1701603686, 0xE400000000000000, ObjectType, v6);
  if (!v3)
  {
    v12 = v8 - v7;
    if (!v7)
    {
      v12 = 0;
    }

    v13[0] = v7;
    v13[1] = v8;
    v13[3] = 0;
    v13[4] = 0;
    v13[2] = v12;
    v14 = 1;
    sub_1D8C39F48(result, v11, v13, a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8C67FE0(uint64_t a1, uint64_t *a2, void *a3)
{
  v42[0] = MEMORY[0x1E69E7CC0];
  sub_1D8C29EAC(a1, &v40);
  if (v41[24] == 10)
  {
    v43 = a2;
    v6 = *(&v40 + 1);
    v7 = *v41;
    v8 = *&v41[8];
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(0x6567616B636170, 0xE700000000000000, ObjectType, v6);
    if (v3)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v10;
      v28 = v7;
      v27 = v8;
      v26 = a3;
      v13 = swift_getObjectType();
      (*(v12 + 56))(&v32, v13, v12);
      v15 = v32;
      v16 = v33;
      v17 = (*(v12 + 48))(v13, v12);
      v18 = v27 - v28;
      if (!v28)
      {
        v18 = 0;
      }

      v32 = v28;
      v33 = v27;
      v35 = 0;
      v36 = 0;
      v25 = v18;
      v34 = v18;
      v37 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D8C861A0;
      *(v19 + 32) = v17;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      v29 = v19;
      v30 = v15;
      v31 = v16;
      sub_1D8C2B50C(v15, v16);
      sub_1D8C2B670(&v29, 0, &v38);
      swift_unknownObjectRelease();
      sub_1D8C2BBF0(v15, v16);

      sub_1D8C2BBF0(v15, v16);
      if (v39[24] == 255)
      {
        sub_1D8C2A970(&v38);
      }

      else
      {
        v40 = v38;
        *v41 = *v39;
        *&v41[9] = *&v39[9];
        sub_1D8C29EAC(&v40, &v38);
        if (v39[24] == 8)
        {
          sub_1D8C2AA1C(&v38, &v32);
          v21 = v35;
          v20 = v36;
          __swift_project_boxed_opaque_existential_1(&v32, v35);
          *&v38 = (*(v20 + 24))(v21, v20);
          *(&v38 + 1) = v22;
          v29 = 46;
          v30 = 0xE100000000000000;
          sub_1D8C46638();
          v23 = sub_1D8C85074();

          sub_1D8C2AB08(&v40);
          v42[0] = v23;
          __swift_destroy_boxed_opaque_existential_1(&v32);
        }

        else
        {
          sub_1D8C2AB08(&v40);
          sub_1D8C2AB08(&v38);
        }
      }

      *&v40 = v28;
      *(&v40 + 1) = v27;
      *&v41[8] = 0;
      *&v41[16] = 0;
      *v41 = v25;
      v41[24] = 1;
      v24 = (*(v6 + 40))(ObjectType);
      sub_1D8C3C8D8(v24, &v40, v42, v43, v26);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D8C2AB08(&v40);
    sub_1D8C3D17C();
    swift_allocError();
    *v11 = 0xD00000000000002ALL;
    *(v11 + 8) = 0x80000001D8C8C3B0;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D8C68444(void *a1, uint64_t *a2, uint64_t *a3, void *a4, void **a5)
{
  v11 = a1[1];
  ObjectType = swift_getObjectType();
  v13 = (*(*(v11 + 8) + 8))(ObjectType);
  v15 = v14;
  v16 = v13 == 1701667182 && v14 == 0xE400000000000000;
  if (v16 || (v17 = v13, (sub_1D8C852A4() & 1) != 0))
  {

    sub_1D8C29EAC((a1 + 2), &v66);
    if (v69 == 8)
    {
      sub_1D8C2AA1C(&v66, &v62);
      v18 = v64;
      v19 = v65;
      __swift_project_boxed_opaque_existential_1(&v62, v64);
      *a2 = (*(v19 + 24))(v18, v19);
      a2[1] = v20;

      return __swift_destroy_boxed_opaque_existential_1(&v62);
    }

    sub_1D8C2AB08(&v66);
    sub_1D8C3D17C();
    swift_allocError();
    v23 = xmmword_1D8C882B0;
    goto LABEL_9;
  }

  v24 = v17 == 0x736E6F6974706FLL && v15 == 0xE700000000000000;
  if (v24 || (sub_1D8C852A4() & 1) != 0)
  {

    sub_1D8C29EAC((a1 + 2), &v66);
    if (v69 != 10)
    {
      sub_1D8C2AB08(&v66);
      sub_1D8C3D17C();
      swift_allocError();
      v23 = xmmword_1D8C882C0;
LABEL_9:
      *v22 = v23;
      *(v22 + 16) = 0;
      return swift_willThrow();
    }

    v25 = v67;
    *(&v67 + 1) = MEMORY[0x1E69E6290];
    v68 = MEMORY[0x1E6969DF8];
    v66 = v25;
    v26 = __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x1E69E6290]);
    v27 = *v26;
    if (*v26 && (v28 = v26[1], v29 = v28 - v27, v28 != v27))
    {
      if (v29 <= 14)
      {
        v30 = sub_1D8C45074(v27, v28);
        v44 = v43;
        swift_unknownObjectRelease();
        v31 = v44 & 0xFFFFFFFFFFFFFFLL;
      }

      else if (v29 >= 0x7FFFFFFF)
      {
        v30 = sub_1D8C45134(v27, v28);
        v46 = v45;
        swift_unknownObjectRelease();
        v31 = v46 | 0x8000000000000000;
      }

      else
      {
        v30 = sub_1D8C2B5D0(v27, v28);
        v41 = v40;
        swift_unknownObjectRelease();
        v31 = v41 | 0x4000000000000000;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = 0;
      v31 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v66);
    v32 = *a3;
    v33 = a3[1];
    *a3 = v30;
    a3[1] = v31;
    return sub_1D8C2C670(v32, v33);
  }

  else
  {
    if (v17 == 0x65756C6176 && v15 == 0xE500000000000000)
    {
    }

    else
    {
      v35 = sub_1D8C852A4();

      if ((v35 & 1) == 0)
      {
        return result;
      }
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    v71 = 0;
    v72 = 1;
    v70 = xmmword_1D8C86390;
    sub_1D8C29EAC((a1 + 2), &v66);
    if (v69 == 10)
    {
      v36 = *(&v66 + 1);
      v37 = *(&v67 + 1) - v67;
      if (!v67)
      {
        v37 = 0;
      }

      v66 = v67;
      v68 = 0;
      v67 = v37;
      v69 = 1;
      v38 = swift_getObjectType();
      v39 = (*(v36 + 40))(v38, v36);
      if (v5)
      {
        swift_unknownObjectRelease();
        sub_1D8C2C670(0, 0xF000000000000000);
      }

      else
      {
        sub_1D8C3A87C(v39, &v66, &v62, &v70, &v71);

        v48 = v62;
        v47 = v63;
        v49 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v49 = v62 & 0xFFFFFFFFFFFFLL;
        }

        if (v49 && (v72 & 1) == 0)
        {
          v73 = v71;
          v53 = *(&v70 + 1);
          if (*(&v70 + 1) >> 60 != 15)
          {
            v54 = v70;
            sub_1D8C2C5E4(v70, *(&v70 + 1));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v66 = *a4;
            *a4 = 0x8000000000000000;
            sub_1D8C75F08(v54, v53, v73, isUniquelyReferenced_nonNull_native);
            *a4 = v66;
          }

          v56 = *a5;

          v57 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v56;
          if ((v57 & 1) == 0)
          {
            v56 = sub_1D8C4A36C(0, v56[2] + 1, 1, v56);
            *a5 = v56;
          }

          v59 = v56[2];
          v58 = v56[3];
          if (v59 >= v58 >> 1)
          {
            *a5 = sub_1D8C4A36C((v58 > 1), v59 + 1, 1, v56);
          }

          swift_unknownObjectRelease();
          v60 = *a5;
          v60[2] = v59 + 1;
          v61 = &v60[3 * v59];
          v61[4] = v48;
          v61[5] = v47;
          v61[6] = v73;
          v51 = v70;
          v52 = v53;
        }

        else
        {
          sub_1D8C3D17C();
          swift_allocError();
          *v50 = 0xD000000000000015;
          *(v50 + 8) = 0x80000001D8C8C440;
          *(v50 + 16) = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
          v52 = *(&v70 + 1);
          v51 = v70;
        }

        sub_1D8C2C670(v51, v52);
      }
    }

    else
    {
      sub_1D8C2AB08(&v66);
      sub_1D8C3D17C();
      swift_allocError();
      *v42 = xmmword_1D8C882B0;
      *(v42 + 16) = 0;
      swift_willThrow();
      return sub_1D8C2C670(v70, *(&v70 + 1));
    }
  }
}

uint64_t sub_1D8C68A2C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = a1[1];
  ObjectType = swift_getObjectType();
  v10 = (*(*(v8 + 8) + 8))(ObjectType);
  v12 = v11;
  v13 = v10 == 1701667182 && v11 == 0xE400000000000000;
  if (v13 || (v14 = v10, (sub_1D8C852A4() & 1) != 0))
  {

    sub_1D8C29EAC((a1 + 2), &v43);
    if (v46 == 8)
    {
      sub_1D8C2AA1C(&v43, v40);
      v15 = v41;
      v16 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      *a2 = (*(v16 + 24))(v15, v16);
      a2[1] = v17;

      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    goto LABEL_27;
  }

  v19 = v14 == 0x736E6F6974706FLL && v12 == 0xE700000000000000;
  if (v19 || (sub_1D8C852A4() & 1) != 0)
  {

    sub_1D8C29EAC((a1 + 2), &v43);
    if (v46 != 10)
    {
      sub_1D8C2AB08(&v43);
      v29 = 0x80000001D8C8C460;
      v30 = 0xD000000000000012;
LABEL_28:
      sub_1D8C3D17C();
      swift_allocError();
      *v33 = v30;
      *(v33 + 8) = v29;
      *(v33 + 16) = 0;
      return swift_willThrow();
    }

    v20 = v44;
    *(&v44 + 1) = MEMORY[0x1E69E6290];
    v45 = MEMORY[0x1E6969DF8];
    v43 = v20;
    v21 = __swift_project_boxed_opaque_existential_1(&v43, MEMORY[0x1E69E6290]);
    v22 = *v21;
    if (*v21 && (v23 = v21[1], v24 = v23 - v22, v23 != v22))
    {
      if (v24 <= 14)
      {
        v25 = sub_1D8C45074(v22, v23);
        v37 = v36;
        swift_unknownObjectRelease();
        v26 = v37 & 0xFFFFFFFFFFFFFFLL;
      }

      else if (v24 >= 0x7FFFFFFF)
      {
        v25 = sub_1D8C45134(v22, v23);
        v39 = v38;
        swift_unknownObjectRelease();
        v26 = v39 | 0x8000000000000000;
      }

      else
      {
        v25 = sub_1D8C2B5D0(v22, v23);
        v35 = v34;
        swift_unknownObjectRelease();
        v26 = v35 | 0x4000000000000000;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v25 = 0;
      v26 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v43);
    v27 = *a3;
    v28 = a3[1];
    *a3 = v25;
    a3[1] = v26;
    return sub_1D8C2C670(v27, v28);
  }

  else
  {
    if (v14 == 0x7265626D756ELL && v12 == 0xE600000000000000)
    {
    }

    else
    {
      v32 = sub_1D8C852A4();

      if ((v32 & 1) == 0)
      {
        return result;
      }
    }

    result = sub_1D8C29EAC((a1 + 2), &v43);
    if (v46)
    {
LABEL_27:
      v29 = 0xEF656D616E206575;
      sub_1D8C2AB08(&v43);
      v30 = 0x6C6176206D756E45;
      goto LABEL_28;
    }

    *a4 = v43;
    *(a4 + 8) = 0;
  }

  return result;
}

uint64_t sub_1D8C68D70(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t *a6, BOOL *a7, _DWORD *a8)
{
  v78 = a8;
  v79 = a7;
  v80 = a6;
  v81 = a5;
  v82 = a4;
  v11 = sub_1D8C84664();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  v18 = (*(*(v16 + 8) + 8))(ObjectType);
  v20 = v19;
  v21 = v18 == 1701667182 && v19 == 0xE400000000000000;
  if (v21 || (v22 = v18, (sub_1D8C852A4() & 1) != 0))
  {

    sub_1D8C29EAC((a1 + 2), &v86);
    if (v89 == 8)
    {
      sub_1D8C2AA1C(&v86, v83);
      v23 = v84;
      v24 = v85;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      *a2 = (*(v24 + 24))(v23, v24);
      a2[1] = v25;
LABEL_8:

      return __swift_destroy_boxed_opaque_existential_1(v83);
    }

    sub_1D8C2AB08(&v86);
    sub_1D8C3D17C();
    swift_allocError();
    v28 = xmmword_1D8C88320;
    goto LABEL_17;
  }

  v29 = v22 == 0x7265626D756ELL && v20 == 0xE600000000000000;
  if (v29 || (sub_1D8C852A4() & 1) != 0)
  {

    result = sub_1D8C29EAC((a1 + 2), &v86);
    if (!v89)
    {
      *a3 = v86;
      *(a3 + 8) = 0;
      return result;
    }

    sub_1D8C2AB08(&v86);
    sub_1D8C3D17C();
    swift_allocError();
    v28 = xmmword_1D8C88310;
    goto LABEL_17;
  }

  v30 = v22 == 0x736E6F6974706FLL && v20 == 0xE700000000000000;
  if (!v30 && (sub_1D8C852A4() & 1) == 0)
  {
    v41 = v22 == 1701869940 && v20 == 0xE400000000000000;
    if (!v41 && (sub_1D8C852A4() & 1) == 0)
    {
      if (v22 == 0x6D616E5F65707974 && v20 == 0xE900000000000065 || (sub_1D8C852A4() & 1) != 0)
      {

        sub_1D8C29EAC((a1 + 2), &v86);
        if (v89 == 8)
        {
          sub_1D8C2AA1C(&v86, v83);
          v54 = v84;
          v55 = v85;
          __swift_project_boxed_opaque_existential_1(v83, v84);
          *&v86 = (*(v55 + 24))(v54, v55);
          *(&v86 + 1) = v56;
          sub_1D8C84614();
          sub_1D8C46638();
          v57 = sub_1D8C85094();
          v59 = v58;
          (*(v12 + 8))(v15, v11);

          v60 = v80;
          *v80 = v57;
          v60[1] = v59;
          goto LABEL_8;
        }
      }

      else
      {
        if ((v22 != 0x6C6562616CLL || v20 != 0xE500000000000000) && (sub_1D8C852A4() & 1) == 0)
        {
          if (v22 == 0x6E695F666F656E6FLL && v20 == 0xEB00000000786564)
          {
          }

          else
          {
            v74 = sub_1D8C852A4();

            if ((v74 & 1) == 0)
            {
              return result;
            }
          }

          result = sub_1D8C29EAC((a1 + 2), &v86);
          if (!v89)
          {
            v75 = v78;
            *v78 = v86;
            *(v75 + 4) = 0;
            return result;
          }

          sub_1D8C2AB08(&v86);
          sub_1D8C3D17C();
          swift_allocError();
          v28 = xmmword_1D8C882D0;
          goto LABEL_17;
        }

        sub_1D8C29EAC((a1 + 2), &v86);
        if (v89 == 7)
        {
          v69 = *(&v87 + 1);
          v68 = v87;
          if (v88)
          {
            swift_unknownObjectRelease();
            result = sub_1D8C31E4C(v68, v69, 1);
          }

          else
          {
            v70 = *(&v86 + 1);
            v71 = swift_getObjectType();
            v72 = v90;
            v73 = (*(v70 + 40))(v68, v69, v71, v70);
            swift_unknownObjectRelease();
            result = sub_1D8C31E4C(v68, v69, 0);
            if (v72)
            {
              return result;
            }

            v68 = v73;
          }

          *v79 = v68 == 3;
          return result;
        }
      }

      sub_1D8C2AB08(&v86);
      sub_1D8C3D17C();
      swift_allocError();
      v28 = xmmword_1D8C882E0;
LABEL_17:
      *v27 = v28;
      *(v27 + 16) = 0;
      return swift_willThrow();
    }

    sub_1D8C29EAC((a1 + 2), &v86);
    if (v89 != 7)
    {
      sub_1D8C2AB08(&v86);
      sub_1D8C3D17C();
      swift_allocError();
      v28 = xmmword_1D8C882F0;
      goto LABEL_17;
    }

    v42 = v87;
    v43 = v88;
    if (v88)
    {
      v44 = *(&v86 + 1);
      v45 = swift_getObjectType();
      v46 = v90;
      v47 = (*(v44 + 48))(v42, v45, v44);
      if (v46)
      {
        swift_unknownObjectRelease();
        v50 = *(&v42 + 1);
        v49 = v42;
        v51 = 1;
        return sub_1D8C31E4C(v49, v50, v51);
      }

      v64 = v47;
      v63 = v48;
    }

    else
    {

      v63 = *(&v42 + 1);
      v64 = v42;
    }

    if (v64 == 0x4F4F425F45505954 && v63 == 0xE90000000000004CLL || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 7;
LABEL_58:
      *v81 = v67;
      return result;
    }

    if (v64 == 0x5459425F45505954 && v63 == 0xEA00000000005345 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 10;
      goto LABEL_58;
    }

    if (v64 == 0x554F445F45505954 && v63 == 0xEB00000000454C42 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      *v81 = 0;
      return result;
    }

    if (v64 == 0x554E455F45505954 && v63 == 0xE90000000000004DLL || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 12;
      goto LABEL_58;
    }

    if (v64 == 0x4F4C465F45505954 && v63 == 0xEA00000000005441 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 1;
      goto LABEL_58;
    }

    if (v64 == 0x544E495F45505954 && v63 == 0xEA00000000003233 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 4;
      goto LABEL_58;
    }

    if (v64 == 0x544E495F45505954 && v63 == 0xEA00000000003436 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 2;
      goto LABEL_58;
    }

    if (v64 == 0x53454D5F45505954 && v63 == 0xEC00000045474153 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 9;
      goto LABEL_58;
    }

    if (v64 == 0x5254535F45505954 && v63 == 0xEB00000000474E49 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 8;
      goto LABEL_58;
    }

    if (v64 == 0x4E49555F45505954 && v63 == 0xEB00000000323354 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 11;
      goto LABEL_58;
    }

    if (v64 == 0x4E49555F45505954 && v63 == 0xEB00000000343654 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 3;
      goto LABEL_58;
    }

    if (v64 == 0x5849465F45505954 && v63 == 0xEC00000032334445 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 6;
      goto LABEL_58;
    }

    if (v64 == 0x5849465F45505954 && v63 == 0xEC00000034364445 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 5;
      goto LABEL_58;
    }

    if (v64 == 0x4F52475F45505954 && v63 == 0xEA00000000005055 || (sub_1D8C852A4() & 1) != 0)
    {

      sub_1D8C3D17C();
      swift_allocError();
      *v76 = 0xD000000000000013;
      *(v76 + 8) = 0x80000001D8C8C4E0;
LABEL_129:
      *(v76 + 16) = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      v50 = *(&v42 + 1);
      v49 = v42;
      v51 = v43;
      return sub_1D8C31E4C(v49, v50, v51);
    }

    if (v64 == 0x4946535F45505954 && v63 == 0xED00003233444558 || (sub_1D8C852A4() & 1) != 0)
    {
LABEL_133:
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v42, *(&v42 + 1), v43);

      v67 = 13;
      goto LABEL_58;
    }

    if ((v64 != 0x4946535F45505954 || v63 != 0xED00003436444558) && (sub_1D8C852A4() & 1) == 0)
    {
      if (v64 == 0x4E49535F45505954 && v63 == 0xEB00000000323354 || (sub_1D8C852A4() & 1) != 0)
      {
        goto LABEL_133;
      }

      if ((v64 != 0x4E49535F45505954 || v63 != 0xEB00000000343654) && (sub_1D8C852A4() & 1) == 0)
      {
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_1D8C85124();

        strcpy(&v86, "Unknown type: ");
        HIBYTE(v86) = -18;
        MEMORY[0x1DA7255C0](v64, v63);

        v77 = v86;
        sub_1D8C3D17C();
        swift_allocError();
        *v76 = v77;
        goto LABEL_129;
      }
    }

    swift_unknownObjectRelease();
    sub_1D8C31E4C(v42, *(&v42 + 1), v43);

    v67 = 14;
    goto LABEL_58;
  }

  sub_1D8C29EAC((a1 + 2), &v86);
  if (v89 != 10)
  {
    sub_1D8C2AB08(&v86);
    sub_1D8C3D17C();
    swift_allocError();
    v28 = xmmword_1D8C88300;
    goto LABEL_17;
  }

  v31 = v87;
  *(&v87 + 1) = MEMORY[0x1E69E6290];
  v88 = MEMORY[0x1E6969DF8];
  v86 = v31;
  v32 = __swift_project_boxed_opaque_existential_1(&v86, MEMORY[0x1E69E6290]);
  v33 = *v32;
  if (*v32 && (v34 = v32[1], v35 = v34 - v33, v34 != v33))
  {
    if (v35 <= 14)
    {
      v36 = sub_1D8C45074(v33, v34);
      v62 = v61;
      swift_unknownObjectRelease();
      v37 = v62 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v35 >= 0x7FFFFFFF)
    {
      v36 = sub_1D8C45134(v33, v34);
      v66 = v65;
      swift_unknownObjectRelease();
      v37 = v66 | 0x8000000000000000;
    }

    else
    {
      v36 = sub_1D8C2B5D0(v33, v34);
      v53 = v52;
      swift_unknownObjectRelease();
      v37 = v53 | 0x4000000000000000;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v36 = 0;
    v37 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(&v86);
  v38 = v82;
  v39 = *v82;
  v40 = v82[1];
  *v82 = v36;
  v38[1] = v37;
  return sub_1D8C2C670(v39, v40);
}

uint64_t sub_1D8C69D3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8C850D4() + 1) & ~v5;
    do
    {
      sub_1D8C853B4();

      sub_1D8C84E24();
      v11 = sub_1D8C853E4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (40 * v3 < (40 * v6) || v17 >= v18 + 40 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8C69F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8C850D4() + 1) & ~v5;
    do
    {
      sub_1D8C853B4();

      sub_1D8C84E24();
      v10 = sub_1D8C853E4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void (*sub_1D8C6A0BC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1D8C6A424(v7);
  v7[9] = sub_1D8C6A1C8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1D8C6A168;
}

void sub_1D8C6A168(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1D8C6A1C8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[5] = a3;
  v10[6] = v4;
  v10[4] = a2;
  v12 = *v4;
  v13 = sub_1D8C4668C(a2, a3);
  *(v11 + 64) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1D8C74B2C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1D8C734B4(v18, a4 & 1);
    v13 = sub_1D8C4668C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1D8C85354();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[7] = v13;
  v23 = 0uLL;
  v24 = 0uLL;
  if (v19)
  {
    v25 = (*(*v5 + 56) + 32 * v13);
    v23 = *v25;
    v24 = v25[1];
  }

  *v11 = v23;
  *(v11 + 1) = v24;
  return sub_1D8C6A324;
}

void sub_1D8C6A324(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 64);
  if (v2)
  {
    v7 = v1[7];
    v8 = *v1[6];
    if (v6)
    {
      v9 = (v8[7] + 32 * v7);
      *v9 = v2;
      v9[1] = v3;
      v9[2] = v4;
      v9[3] = v5;
    }

    else
    {
      sub_1D8C76354(v7, v1[4], v1[5], v2, v3, v4, v5, v8);
    }
  }

  else if ((*a1)[8])
  {
    v10 = v1[7];
    v11 = *v1[6];
    sub_1D8C6BC8C(*(v11 + 48) + 16 * v10);
    sub_1D8C69F0C(v10, v11);
  }

  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  sub_1D8C2F004(v2, v3, v4, v5);
  sub_1D8C2F060(v12, v13, v14, v15);

  free(v1);
}

uint64_t (*sub_1D8C6A424(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D8C6A44C;
}

uint64_t sub_1D8C6A474(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D8C29EAC(a1, &v31);
  if (v36 == 10)
  {
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v29 = 0;
    v30 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    v28 = xmmword_1D8C86390;
    v27 = sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
    v9 = v8 - v7;
    if (!v7)
    {
      v9 = 0;
    }

    v31 = v7;
    v32 = v8;
    v34 = 0;
    v35 = 0;
    v33 = v9;
    v36 = 1;
    ObjectType = swift_getObjectType();
    v11 = (*(v6 + 40))(ObjectType, v6);
    if (v3)
    {
      swift_unknownObjectRelease();

      sub_1D8C2C670(0, 0xF000000000000000);
    }

    else
    {
      sub_1D8C3AD78(v11, &v31, &v29, &v28, &v27, &v37);

      v14 = v30;
      if (v30)
      {
        v15 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D8C861A0;
        *(inited + 32) = v15;
        *(inited + 40) = v14;
        v31 = a2;

        sub_1D8C4B134(inited);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
        sub_1D8C52AF8();
        v25 = sub_1D8C84D54();
        v26 = v17;

        if (v37[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
          v18 = sub_1D8C85234();
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC8];
        }

        v31 = v18;

        sub_1D8C7B514(v20, 1, &v31);
        v21 = v31;
        v22 = v28;
        v23 = v27;
        sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
        sub_1D8C2C5D0(v22, *(&v22 + 1));

        sub_1D8C2C670(0, 0xF000000000000000);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *a3;
        sub_1D8C75D50(v21, v22, *(&v22 + 1), v23, v25, v26, isUniquelyReferenced_nonNull_native);

        swift_unknownObjectRelease();

        *a3 = v31;
        sub_1D8C2C670(v28, *(&v28 + 1));
      }

      else
      {
        sub_1D8C3D17C();
        swift_allocError();
        *v19 = 0xD00000000000001DLL;
        *(v19 + 8) = 0x80000001D8C8C400;
        *(v19 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();

        sub_1D8C2C670(v28, *(&v28 + 1));
      }
    }
  }

  else
  {
    sub_1D8C2AB08(&v31);
    sub_1D8C3D17C();
    swift_allocError();
    *v12 = 0xD000000000000018;
    *(v12 + 8) = 0x80000001D8C8C3E0;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D8C6A890(uint64_t a1, uint64_t *a2)
{
  sub_1D8C29EAC(a1, &v29);
  if (v34 == 10)
  {
    v4 = v30;
    v27 = 0;
    v28 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    v45 = 2;
    v44 = 17;
    v23 = 0;
    v22 = xmmword_1D8C86390;
    v42 = 0;
    v43 = 1;
    v5 = v32 - v31;
    if (!v31)
    {
      v5 = 0;
    }

    v29 = v31;
    v30 = v32;
    v32 = 0;
    v33 = 0;
    v31 = v5;
    v34 = 1;
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 40))(ObjectType, v4);
    if (v2)
    {
      swift_unknownObjectRelease();
      sub_1D8C2C670(0, 0xF000000000000000);
    }

    else
    {
      sub_1D8C3B258(v7, &v29, &v27, &v25, &v22, &v44, &v23, &v45, &v42);

      v10 = v44;
      if (v44 == 17 || (v11 = v28) == 0 || (v26 & 1) != 0)
      {
        sub_1D8C3D17C();
        swift_allocError();
        *v12 = 0xD000000000000015;
        *(v12 + 8) = 0x80000001D8C8C440;
        *(v12 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_1D8C2C670(v22, *(&v22 + 1));
      }

      else
      {
        v13 = v24;
        v19 = v25;
        v20 = v27;
        v17 = v23;
        v18 = v42;
        v14 = v22;
        v15 = v45 & 1;
        v21 = v43;

        sub_1D8C2C5D0(v14, *(&v14 + 1));
        sub_1D8C2C670(0, 0xF000000000000000);
        LOBYTE(v35) = v10;
        *(&v35 + 1) = v17;
        v36 = v13;
        v37 = v19;
        v38 = v15;
        v39 = v18;
        v40 = v21;
        v41 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *a2;
        sub_1D8C7546C(&v35, v20, v11, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();

        *a2 = v29;
        sub_1D8C2C670(v14, *(&v14 + 1));
      }
    }
  }

  else
  {
    sub_1D8C2AB08(&v29);
    sub_1D8C3D17C();
    swift_allocError();
    *v8 = 0xD000000000000010;
    *(v8 + 8) = 0x80000001D8C8C4C0;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D8C6ABD0(uint64_t a1, void *a2)
{
  v5 = sub_1D8C84664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8C29EAC(a1, &v59);
  if (v62 != 10)
  {
    sub_1D8C2AB08(&v59);
    sub_1D8C3D17C();
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001D8C8C480;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v48 = v6;
  v63 = a2;
  v47 = a1;
  v10 = v59;
  v11 = v60;
  v12 = v61;
  ObjectType = swift_getObjectType();
  (*(*(&v10 + 1) + 56))(0x6565646E65747865, 0xE800000000000000, ObjectType, *(&v10 + 1));
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  v17 = v14;
  v46 = v10;
  v18 = swift_getObjectType();
  (*(v17 + 56))(&v50, v18, v17);
  v44 = v50;
  v45 = v51;
  v19 = (*(v17 + 48))(v18, v17);
  v20 = v12 - v11;
  if (!v11)
  {
    v20 = 0;
  }

  v50 = v11;
  v51 = v12;
  v53 = 0;
  v54 = 0;
  v52 = v20;
  v55 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D8C861A0;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  v22 = v44;
  v49[0] = v21;
  v49[1] = v44;
  v23 = v45;
  v49[2] = v45;
  sub_1D8C2B50C(v44, v45);
  sub_1D8C2B670(v49, 0, &v59);
  swift_unknownObjectRelease();
  sub_1D8C2BBF0(v22, v23);

  sub_1D8C2BBF0(v22, v23);
  if (v62 != 8)
  {
    if (v62 == 255)
    {
      sub_1D8C2A970(&v59);
    }

    else
    {
      sub_1D8C2AB08(&v59);
    }

    sub_1D8C3D17C();
    swift_allocError();
    *v40 = 0xD000000000000023;
    *(v40 + 8) = 0x80000001D8C8C520;
    *(v40 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  sub_1D8C2AA1C(&v59, v56);
  v24 = v57;
  v25 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  *&v59 = (*(v25 + 24))(v24, v25);
  *(&v59 + 1) = v26;
  sub_1D8C84614();
  sub_1D8C46638();
  v27 = sub_1D8C85094();
  v29 = v28;
  (*(v48 + 8))(v9, v5);

  v30 = v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v59 = *v30;
  v32 = v59;
  v34 = sub_1D8C4668C(v27, v29);
  v35 = *(v32 + 16);
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v9) = v33;
  if (*(v32 + 24) >= v37)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_1D8C74B2C();
    goto LABEL_17;
  }

  sub_1D8C734B4(v37, isUniquelyReferenced_nonNull_native);
  v38 = sub_1D8C4668C(v27, v29);
  if ((v9 & 1) != (v39 & 1))
  {
    result = sub_1D8C85354();
    __break(1u);
    return result;
  }

  v34 = v38;
LABEL_17:
  v41 = v59;
  *v30 = v59;
  if (v9)
  {
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
    v43 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
    sub_1D8C2C670(0, 0xF000000000000000);
    sub_1D8C76354(v34, v27, v29, v43, v42, 0, 0xF000000000000000, v41);
  }

  sub_1D8C6A890(v47, (v41[7] + 32 * v34));
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1D8C6B17C(uint64_t a1, char **a2)
{
  sub_1D8C29EAC(a1, &v63);
  if (v66 != 10)
  {
    sub_1D8C2AB08(&v63);
    sub_1D8C3D17C();
    swift_allocError();
    *v8 = 0xD000000000000010;
    *(v8 + 8) = 0x80000001D8C8C500;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  v4 = *(&v63 + 1);
  v50 = *(&v64 + 1);
  v67 = v64;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 56);
  v6(1701667182, 0xE400000000000000, ObjectType, v4);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  v10 = v7;
  v48 = v4;
  v49 = ObjectType;
  v47 = a2;
  v11 = swift_getObjectType();
  (*(v10 + 56))(&v54, v11, v10);
  v13 = v54;
  v12 = v55;
  v14 = (*(v10 + 48))(v11, v10);
  if (v67)
  {
    v15 = v50 - v67;
  }

  else
  {
    v15 = 0;
  }

  v54 = v67;
  v55 = v50;
  v57 = 0;
  v58 = 0;
  v56 = v15;
  v59 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D8C861A0;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  v51 = v16;
  v52 = v13;
  v53 = v12;
  sub_1D8C2B50C(v13, v12);
  sub_1D8C2B670(&v51, 0, &v63);
  swift_unknownObjectRelease();
  sub_1D8C2BBF0(v13, v12);

  sub_1D8C2BBF0(v13, v12);
  if (v66 != 8)
  {
    if (v66 == 255)
    {
      sub_1D8C2A970(&v63);
    }

    else
    {
      sub_1D8C2AB08(&v63);
    }

    sub_1D8C3D17C();
    swift_allocError();
    *v17 = xmmword_1D8C882B0;
    *(v17 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  sub_1D8C2AA1C(&v63, v60);
  v6(0x736E6F6974706FLL, 0xE700000000000000, v49, v48);
  v19 = v18;
  v20 = swift_getObjectType();
  (*(v19 + 56))(&v54, v20, v19);
  v22 = v54;
  v21 = v55;
  v23 = (*(v19 + 48))(v20, v19);
  v54 = v67;
  v55 = v50;
  v57 = 0;
  v58 = 0;
  v56 = v15;
  v59 = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D8C861A0;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  v51 = v24;
  v52 = v22;
  v53 = v21;
  sub_1D8C2B50C(v22, v21);
  sub_1D8C2B670(&v51, 0, &v63);
  swift_unknownObjectRelease();
  sub_1D8C2BBF0(v22, v21);

  sub_1D8C2BBF0(v22, v21);
  if (v66 == 10)
  {
    v25 = v64;
    *(&v64 + 1) = MEMORY[0x1E69E6290];
    v65 = MEMORY[0x1E6969DF8];
    v63 = v25;
    v26 = __swift_project_boxed_opaque_existential_1(&v63, MEMORY[0x1E69E6290]);
    v27 = *v26;
    if (*v26 && (v28 = v26[1], v29 = v28 - v27, v28 != v27))
    {
      if (v29 <= 14)
      {
        v30 = sub_1D8C45074(v27, v28);
        v44 = v43;
        swift_unknownObjectRelease();
        v31 = v44 & 0xFFFFFFFFFFFFFFLL;
      }

      else if (v29 >= 0x7FFFFFFF)
      {
        v30 = sub_1D8C45134(v27, v28);
        v46 = v45;
        swift_unknownObjectRelease();
        v31 = v46 | 0x8000000000000000;
      }

      else
      {
        v30 = sub_1D8C2B5D0(v27, v28);
        v42 = v41;
        swift_unknownObjectRelease();
        v31 = v42 | 0x4000000000000000;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = 0;
      v31 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    if (v66 == 255)
    {
      sub_1D8C2A970(&v63);
    }

    else
    {
      sub_1D8C2AB08(&v63);
    }

    v30 = 0;
    v31 = 0xF000000000000000;
  }

  v32 = v61;
  v33 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v34 = (*(v33 + 24))(v32, v33);
  v36 = v35;
  sub_1D8C2C5D0(v30, v31);
  sub_1D8C2C670(0, 0xF000000000000000);
  v37 = *v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1D8C4B028(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1D8C4B028((v38 > 1), v39 + 1, 1, v37);
  }

  swift_unknownObjectRelease();
  sub_1D8C2C670(v30, v31);
  *(v37 + 2) = v39 + 1;
  v40 = &v37[32 * v39];
  *(v40 + 4) = v34;
  *(v40 + 5) = v36;
  *(v40 + 6) = v30;
  *(v40 + 7) = v31;
  *v47 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1D8C6B810(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_1D8C29EAC(a1, &v39);
  if (v44 != 10)
  {
    sub_1D8C2AB08(&v39);
    sub_1D8C3D17C();
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001D8C8C480;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v32 = a4;
  v33 = a3;
  v8 = v40;
  v10 = v41;
  v9 = v42;
  v37 = 0;
  v38 = 0xE000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  v45 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
  v36 = v11;
  v35 = xmmword_1D8C86390;
  v12 = v9 - v10;
  if (!v10)
  {
    v12 = 0;
  }

  v39 = v10;
  v40 = v9;
  v42 = 0;
  v43 = 0;
  v41 = v12;
  v44 = 1;
  ObjectType = swift_getObjectType();
  v14 = *(v8 + 40);

  v15 = v14(ObjectType, v8);
  if (v4)
  {

    swift_unknownObjectRelease();
    sub_1D8C2C670(0, 0xF000000000000000);
  }

  else
  {
    v18 = v15;

    sub_1D8C3B74C(v18, &v39, &v37, a2, v32, &v35, v33, &v45, &v36);

    v19 = v37;
    v20 = v38;
    v21 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v21 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8C861A0;
      *(inited + 32) = v19;
      *(inited + 40) = v20;
      v39 = a2;

      sub_1D8C4B134(inited);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
      sub_1D8C52AF8();
      v23 = sub_1D8C84D54();
      v25 = v24;

      v26 = v45;
      v28 = *(&v35 + 1);
      v27 = v36;
      v29 = v35;

      sub_1D8C2C5D0(v29, v28);
      sub_1D8C2C670(0, 0xF000000000000000);

      sub_1D8C2C5D0(v29, v28);
      v30 = sub_1D8C6A0BC(v34, v23, v25);
      sub_1D8C67C60(v26, v27, v29, v28, 2, &v39);
      sub_1D8C2F060(v39, v40, v41, v42);

      sub_1D8C2C670(v29, v28);
      (v30)(v34, 0);

      swift_unknownObjectRelease();
      sub_1D8C2C670(v29, v28);
      sub_1D8C2C670(v35, *(&v35 + 1));
    }

    sub_1D8C3D17C();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    *(v31 + 8) = 0x80000001D8C8C4A0;
    *(v31 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D8C2C670(v35, *(&v35 + 1));
  }
}

void sub_1D8C6BC7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {
    sub_1D8C2F004(result, a2, a3, a4);
  }
}

uint64_t sub_1D8C6BCE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectRetain();
  UnsafeSchematizedData.getAnyQueriable(matchingFieldPath:)(a1, a2, a3);
  return swift_unknownObjectRelease();
}

_OWORD *sub_1D8C6BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data;
  v7 = *(v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 56);
  v9(a1, a2, ObjectType, v7);
  v11 = v10;
  v12 = swift_getObjectType();
  if (((*(v11 + 16))(v12, v11) & 1) == 0)
  {
    v14 = *(v6 + 16);
    v15 = *(v6 + 24);
    v9(a1, a2, ObjectType, v7);
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v17 + 56))(&v109, v18, v17);
    v53 = v109;
    v55 = (*(v17 + 48))(v18, v17);
    v56 = v15 - v14;
    if (!v14)
    {
      v56 = 0;
    }

    *&v109 = v14;
    *(&v109 + 1) = v15;
    *&v110[8] = 0;
    *&v110[16] = 0;
    *v110 = v56;
    v110[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D8C861A0;
    *(v57 + 32) = v55;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *v108 = v57;
    *&v108[8] = v53;
    sub_1D8C2B50C(v53, *(&v53 + 1));
    sub_1D8C2B670(v108, 0, v111);
    swift_unknownObjectRelease();
    sub_1D8C2BBF0(v53, *(&v53 + 1));

    sub_1D8C2BBF0(v53, *(&v53 + 1));
    sub_1D8C5011C(v111, &v109);
    if (v110[24] == 255)
    {
      sub_1D8C51FD4(v111, &qword_1ECAAB138, &unk_1D8C86900);
      result = swift_unknownObjectRelease();
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *v108 = v109;
    *&v108[16] = *v110;
    *&v108[25] = *&v110[9];
    sub_1D8C29EAC(v108, &v101);
    LODWORD(v25) = v105;
    if (v105 > 4u)
    {
      if (v105 > 7u)
      {
        goto LABEL_55;
      }

      if (v105 == 5)
      {
        v70 = v101;
        v107 = MEMORY[0x1E69E63B0];
        swift_unknownObjectRelease();
        *&v106 = v70;
        goto LABEL_71;
      }

      if (v105 == 6)
      {
        v58 = v101;
        v107 = MEMORY[0x1E69E6370];
        swift_unknownObjectRelease();
        LOBYTE(v106) = v58;
        goto LABEL_71;
      }

      v75 = v102;
      v76 = v103;
      v77 = v104;
      if (v104)
      {
        v78 = *(&v101 + 1);
        v79 = swift_getObjectType();
        v86 = (*(v78 + 48))(v75, v79, v78);
        v88 = v87;
      }

      else
      {

        v86 = v75;
        v88 = v76;
      }

      v59 = a3;
      v107 = MEMORY[0x1E69E6158];
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v75, v76, v77);
      swift_unknownObjectRelease();
      *&v106 = v86;
      *(&v106 + 1) = v88;
      goto LABEL_75;
    }

    if (v105 <= 1u)
    {
      v59 = a3;
      v68 = v101;
      if (v105)
      {
        v69 = MEMORY[0x1E69E7668];
      }

      else
      {
        v69 = MEMORY[0x1E69E72F0];
      }

      v107 = v69;
      swift_unknownObjectRelease();
      LODWORD(v106) = v68;
      goto LABEL_75;
    }

    v59 = a3;
    if (v105 == 2)
    {
      v60 = v101;
      v61 = MEMORY[0x1E69E7360];
    }

    else
    {
      if (v105 != 3)
      {
        v74 = v101;
        v107 = MEMORY[0x1E69E6448];
        swift_unknownObjectRelease();
        LODWORD(v106) = v74;
        goto LABEL_75;
      }

      v60 = v101;
      v61 = MEMORY[0x1E69E76D8];
    }

    v107 = v61;
    swift_unknownObjectRelease();
    *&v106 = v60;
LABEL_75:
    sub_1D8C2AB08(v108);
    sub_1D8C51FD4(v111, &qword_1ECAAB138, &unk_1D8C86900);
    return sub_1D8C59AD8(&v106, v59);
  }

  v13 = *(v6 + 16);
  v111[0] = *v6;
  v111[1] = v13;
  swift_unknownObjectRetain();
  v19 = UnsafeSchematizedData.getArray(forFieldName:)(a1, a2);
  swift_unknownObjectRelease();
  v20 = *(v19 + 2);
  if (!v20)
  {

    v23 = MEMORY[0x1E69E7CC0];
LABEL_40:
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB268, &qword_1D8C87240);
    result = swift_unknownObjectRelease();
    *a3 = v23;
    return result;
  }

  *&v106 = MEMORY[0x1E69E7CC0];
  v93 = v20;
  sub_1D8C5E268(0, v20, 0);
  v21 = v93;
  v22 = 0;
  v23 = v106;
  v24 = (v19 + 32);
  v90 = v19;
  while (1)
  {
    v25 = *(v19 + 2);
    if (v22 >= v25)
    {
      break;
    }

    sub_1D8C29EAC(v24, v111);
    sub_1D8C29EAC(v111, &v109);
    if (v110[24] <= 4u)
    {
      if (v110[24] <= 1u)
      {
        if (v110[24])
        {
          v32 = MEMORY[0x1E69E7668];
        }

        else
        {
          v32 = MEMORY[0x1E69E72F0];
        }

        v98 = v32;
        LODWORD(v97) = v109;
        goto LABEL_28;
      }

      if (v110[24] == 2)
      {
        v26 = v109;
        v27 = MEMORY[0x1E69E7360];
      }

      else
      {
        if (v110[24] != 3)
        {
          v98 = MEMORY[0x1E69E6448];
          LODWORD(v97) = v109;
          goto LABEL_28;
        }

        v26 = v109;
        v27 = MEMORY[0x1E69E76D8];
      }

      v98 = v27;
      *&v97 = v26;
    }

    else
    {
      if (v110[24] > 7u)
      {
        if (v110[24] == 8)
        {
          sub_1D8C2AA1C(&v109, v108);
          v33 = *&v108[24];
          v34 = *&v108[32];
          __swift_project_boxed_opaque_existential_1(v108, *&v108[24]);
          v35 = (*(v34 + 24))(v33, v34);
          v21 = v93;
          v98 = MEMORY[0x1E69E6158];
          *&v97 = v35;
          *(&v97 + 1) = v36;
          sub_1D8C2AB08(v111);
          __swift_destroy_boxed_opaque_existential_1(v108);
        }

        else
        {
          if (v110[24] == 9)
          {
            sub_1D8C2AA1C(&v109, v108);
            v28 = *&v108[24];
            v29 = *&v108[32];
            __swift_project_boxed_opaque_existential_1(v108, *&v108[24]);
            v30 = (*(v29 + 16))(v28, v29);
            v98 = MEMORY[0x1E6969080];
            *&v97 = v30;
            *(&v97 + 1) = v31;
            sub_1D8C2AB08(v111);
            __swift_destroy_boxed_opaque_existential_1(v108);
          }

          else
          {
            v45 = *v110;
            v46 = *&v110[8];
            v47 = type metadata accessor for QueryableMessage();
            v92 = v109;
            v48 = objc_allocWithZone(v47);
            v49 = &v48[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
            *v49 = v92;
            *(v49 + 2) = v45;
            *(v49 + 3) = v46;
            v96.receiver = v48;
            v96.super_class = v47;
            swift_unknownObjectRetain();
            v50 = objc_msgSendSuper2(&v96, sel_init);
            v98 = v47;
            swift_unknownObjectRelease();
            *&v97 = v50;
            sub_1D8C2AB08(v111);
          }

          v21 = v93;
        }

        goto LABEL_35;
      }

      if (v110[24] == 5)
      {
        v98 = MEMORY[0x1E69E63B0];
        *&v97 = v109;
      }

      else
      {
        if (v110[24] != 6)
        {
          v37 = *v110;
          v91 = v110[16];
          if (v110[16])
          {
            v89 = *&v110[8];
            v38 = *(&v109 + 1);
            v39 = swift_getObjectType();
            v40 = v37;
            v41 = (*(v38 + 48))(v37, v39, v38);
            v43 = v42;
            v44 = v89;
          }

          else
          {

            v41 = v37;
            v40 = v37;
            v43 = v44;
          }

          v98 = MEMORY[0x1E69E6158];
          swift_unknownObjectRelease();
          sub_1D8C31E4C(v40, v44, v91);
          *&v97 = v41;
          *(&v97 + 1) = v43;
          sub_1D8C2AB08(v111);
          v21 = v93;
          v19 = v90;
          goto LABEL_35;
        }

        v98 = MEMORY[0x1E69E6370];
        LOBYTE(v97) = v109;
      }
    }

LABEL_28:
    sub_1D8C2AB08(v111);
LABEL_35:
    sub_1D8C59AD8(&v97, &v101);
    *&v106 = v23;
    v52 = *(v23 + 16);
    v51 = *(v23 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_1D8C5E268((v51 > 1), v52 + 1, 1);
      v21 = v93;
      v23 = v106;
    }

    ++v22;
    *(v23 + 16) = v52 + 1;
    sub_1D8C59AD8(&v101, (v23 + 32 * v52 + 32));
    v24 += 48;
    if (v21 == v22)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_55:
  if (v25 == 8)
  {
    sub_1D8C2AA1C(&v101, &v97);
    v71 = v98;
    v72 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    v64 = (*(v72 + 24))(v71, v72);
    v66 = v73;
    v67 = MEMORY[0x1E69E6158];
LABEL_64:
    v107 = v67;
    swift_unknownObjectRelease();
    *&v106 = v64;
    *(&v106 + 1) = v66;
    sub_1D8C2AB08(v108);
    sub_1D8C51FD4(v111, &qword_1ECAAB138, &unk_1D8C86900);
    __swift_destroy_boxed_opaque_existential_1(&v97);
  }

  else
  {
    if (v25 == 9)
    {
      sub_1D8C2AA1C(&v101, &v97);
      v62 = v98;
      v63 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, v98);
      v64 = (*(v63 + 16))(v62, v63);
      v66 = v65;
      v67 = MEMORY[0x1E6969080];
      goto LABEL_64;
    }

    v80 = v102;
    v81 = v103;
    v82 = type metadata accessor for QueryableMessage();
    v94 = v101;
    v83 = objc_allocWithZone(v82);
    v84 = &v83[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
    *v84 = v94;
    *(v84 + 2) = v80;
    *(v84 + 3) = v81;
    v100.receiver = v83;
    v100.super_class = v82;
    swift_unknownObjectRetain();
    v85 = objc_msgSendSuper2(&v100, sel_init);
    v107 = v82;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *&v106 = v85;
LABEL_71:
    sub_1D8C2AB08(v108);
    sub_1D8C51FD4(v111, &qword_1ECAAB138, &unk_1D8C86900);
  }

  v59 = a3;
  return sub_1D8C59AD8(&v106, v59);
}

id sub_1D8C6CB94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t, uint64_t))
{
  v6 = sub_1D8C84D84();
  v8 = v7;
  v9 = a1;
  a4(v17, v6, v8);

  v10 = v18;
  if (v18)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v11, v11);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_1D8C85294();
    (*(v12 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1D8C6CD2C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QueryableMessage();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D8C6CD94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8C6CE60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D8C5998C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D8C6CE60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D8C6CF6C(a5, a6);
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
    result = sub_1D8C85144();
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

void *sub_1D8C6CF6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D8C6CFB8(a1, a2);
  sub_1D8C6D0E8(&unk_1F544FC38);
  return v3;
}

void *sub_1D8C6CFB8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D8C7ADD0(v5, 0);
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

  result = sub_1D8C85144();
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
        v10 = sub_1D8C84E74();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D8C7ADD0(v10, 0);
        result = sub_1D8C85104();
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

uint64_t sub_1D8C6D0E8(uint64_t result)
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

  result = sub_1D8C6D1D4(result, v11, 1, v3);
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

char *sub_1D8C6D1D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B0, &qword_1D8C88358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8C6D2C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v7 = v6;
  v8 = v5;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v14 = a3[32];
  v15 = *(a3 + 9);
  v16 = a3[40];
  v18 = *(a3 + 6);
  v17 = *(a3 + 7);
  *(v8 + 88) = 1;
  *(v8 + 73) = v14;
  *(v8 + 80) = v13;
  *(v8 + 104) = v15;
  *(v8 + 108) = v16;
  swift_unknownObjectWeakInit();
  v27[0] = v10;
  v28 = v11;
  v29 = v12;
  v30 = a5;
  swift_unknownObjectWeakAssign();
  v31 = 0;
  sub_1D8C6DCB4(v27, v8 + 32);
  ObjectType = swift_getObjectType();

  if ((sub_1D8C4F020(ObjectType, a5) & 1) == 0)
  {

    swift_unknownObjectRelease();
    sub_1D8C2C670(v18, v17);
    goto LABEL_5;
  }

  if (v17 >> 60 == 15)
  {

    sub_1D8C2C670(v18, v17);
    swift_unknownObjectRelease();
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  sub_1D8C2C5E4(v18, v17);
  sub_1D8C4F084(ObjectType, a5);
  if (v7)
  {
    sub_1D8C2C670(v18, v17);

    swift_unknownObjectRelease();

    sub_1D8C2C670(v18, v17);
    sub_1D8C6DCEC(v8 + 32);
    swift_deallocPartialClassInstance();
    return v8;
  }

  v23 = v22;
  v24 = swift_getObjectType();
  v20 = (*(v23 + 80))(v18, v17, v24, v23);

  swift_unknownObjectRelease();
  sub_1D8C2C670(v18, v17);
  swift_unknownObjectRelease();
  sub_1D8C2C670(v18, v17);
LABEL_6:
  *(v8 + 96) = v20;
  v21 = v32;
  *(v8 + 16) = a1;
  *(v8 + 24) = v21;
  return v8;
}

void *sub_1D8C6D56C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a4)
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    result = (*(a2 + 24))(a3, a4, ObjectType, a2);
    if (!v6)
    {
      v15 = result;
      v16 = v14;
      if (object_getClass(result) == _TtC17PoirotSchematizer18ProtoMessageSchema && v15 != 0)
      {
        swift_unknownObjectRetain();
      }

      swift_weakInit();

      v21 = 2;
      swift_beginAccess();
      sub_1D8C6DC14(v20, v7 + 32);
      swift_endAccess();
      swift_getObjectType();
      MessageSchemaDescribing.asPublic()(v16, v20);
      result = swift_unknownObjectRelease();
      v19 = v20[1] | 0x4000000000000000;
      *a5 = v20[0];
      a5[1] = v19;
    }
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v18 = xmmword_1D8C88360;
    *(v18 + 16) = 8;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D8C6D6E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  result = sub_1D8C6DB74(v1 + 32, v25);
  if (v26)
  {
    if (v26 == 1)
    {
      *a1 = v25[0];
    }

    else
    {
      sub_1D8C6DC4C(v25, v19);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        result = sub_1D8C6DC84(v19);
        *a1 = v10;
        a1[1] = 0x40000001F54519C8uLL;
      }

      else
      {
        sub_1D8C2F8AC();
        swift_allocError();
        *v12 = 0xD000000000000012;
        *(v12 + 8) = 0x80000001D8C8C640;
        *(v12 + 16) = 2;
        swift_willThrow();
        return sub_1D8C6DC84(v19);
      }
    }

    return result;
  }

  sub_1D8C6DBAC(v25, v21);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v11 = 0xD000000000000012;
    *(v11 + 8) = 0x80000001D8C8C640;
    *(v11 + 16) = 2;
    swift_willThrow();
    return sub_1D8C6DBE4(v21);
  }

  v6 = v24;
  if (v21[0] == 9)
  {
    v7 = v23;
    if (v23)
    {
      v8 = v22;

      sub_1D8C6D56C(v6, v8, v7, a1);
      sub_1D8C6DBE4(v21);
      swift_unknownObjectRelease();
    }

    sub_1D8C2F8AC();
    swift_allocError();
    *v17 = xmmword_1D8C88360;
    *(v17 + 16) = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_1D8C6DBE4(v21);
  }

  v13 = v22;
  v14 = v23;
  v18[0] = v21[0];

  sub_1D8C82D20(v18, v13, v14, v6, v19);
  result = sub_1D8C6DBE4(v21);
  if (!v3)
  {
    v15 = v19[0];
    v16 = v19[1];
    v20 = 1;
    swift_beginAccess();
    sub_1D8C2B50C(v15, v16);
    sub_1D8C6DC14(v19, v1 + 32);
    result = swift_endAccess();
    *a1 = v15;
    a1[1] = v16;
  }

  return result;
}