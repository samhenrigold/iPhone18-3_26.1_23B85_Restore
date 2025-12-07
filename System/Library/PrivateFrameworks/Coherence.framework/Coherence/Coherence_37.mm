uint64_t Anonymous.mutate.setter(uint64_t a1, uint64_t a2)
{
  v4.n128_f64[0] = sub_1AE19117C(a1, a2);
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1, v4);
}

void (*Anonymous.mutate.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1AE18FF20;
}

void sub_1AE18FF20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    v8 = sub_1AE19117C(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = sub_1AE19117C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

void Anonymous.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v92 = a3;
  v9 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 72);
  if (!v23)
  {
    sub_1ADE42E40(v17, v18, v19);
    swift_allocError();
    *v34 = 0xD000000000000017;
    *(v34 + 8) = 0x80000001AE25FB70;
    *(v34 + 16) = 0;
    swift_willThrow();

    return;
  }

  v80 = v20;
  v81 = v17;
  v82 = v22;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v24 = *(v23 + 16);
  v83 = a4;
  v84 = v15;
  v78 = v11;
  v77 = v9;
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 7)
  {
    v25 = a1;
    v26 = a2;
    v27 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = a1;
    v26 = a2;
    v27 = &unk_1ED966F48;
  }

  swift_beginAccess();
  v28 = v27[8];
  v29 = v27[9];
  v30 = v27[10];
  if (v28)
  {
    v31 = v27[8];
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  if (v28)
  {
    v32 = v27[9];
  }

  else
  {
    v32 = 0;
  }

  if (v28)
  {
    v33 = v27[10];
  }

  else
  {
    v33 = 0xC000000000000000;
  }

  swift_retain_n();
  sub_1ADE56F74(v28, v29, v30);
  sub_1ADDE94BC(v31, v32, v33, &v88);
  if (v5)
  {

    return;
  }

  if (!*(v25 + 16))
  {
    __break(1u);
    goto LABEL_57;
  }

  v35 = v88;
  v87 = v88;

  v36 = v26;
  sub_1AE1DE524(v26, &v87);
  v37 = v84;
  v76 = v35;

  v39 = *(&v89 + 1);
  v40 = v90;
  v41 = v91;
  v75 = v89;
  v74 = v88;
  if (v89)
  {
    if (v88)
    {
      (*(*v88 + 88))(&v88, v38);
      goto LABEL_23;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v88 = 0u;
  v89 = 0u;
LABEL_23:
  v73 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  v42 = swift_dynamicCast();
  v43 = *(v37 + 56);
  if (v42)
  {
    v81 = v40;
    v43(v14, 0, 1, v36);
    v44 = v82;
    (*(v37 + 32))(v82, v14, v36);
    v46 = type metadata accessor for Anonymous(0, v36, v92, v45);
    v47 = v83;
    (*(v37 + 16))(v83 + *(v46 + 36), v44, v36);
    v48 = *(&v76 + 1);
    *v47 = v76;
    v47[1] = v48;
    v49 = *(v25 + 72);
    if (v49)
    {
      v50 = *(v49 + 16);
      v51 = v41;
      if ((~v50 & 0xF000000000000007) != 0 && ((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 7)
      {
        v52 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v52 = &unk_1ED966F48;
      }

      swift_beginAccess();
      if (!v52[5] || ((v62 = *(v49 + 16), (~v62 & 0xF000000000000007) == 0) || ((v62 >> 59) & 0x1E | (v62 >> 2) & 1) != 7 ? (v63 = &unk_1ED966F48) : (v63 = *((v62 & 0xFFFFFFFFFFFFFFBLL) + 0x10)), (swift_beginAccess(), (v64 = v63[5]) == 0) || !*(v64 + 16)))
      {
        *&v85 = MEMORY[0x1E69E7CC8];
        *(&v85 + 1) = MEMORY[0x1E69E7CC8];
        if (qword_1ED96AC50 != -1)
        {
          swift_once();
        }

        sub_1ADDD0F70();
        v68 = v78;
        sub_1AE23BFBC();
        *(v68 + *(type metadata accessor for Replica(0) + 20)) = 0;
        *(v68 + *(v77 + 20)) = 0;
        sub_1ADDD8290(v68);

        sub_1ADDDC21C(v74, *(&v74 + 1), v75, v73, v81, v51);

        sub_1AE017AB8(v68);
        (*(v37 + 8))(v82, v36);
        v69 = *(v46 + 40);
        v70 = v85;
        goto LABEL_50;
      }

      v65 = *(v25 + 72);
      if (v65)
      {
        v66 = *(v65 + 16);
        if ((~v66 & 0xF000000000000007) != 0 && ((v66 >> 59) & 0x1E | (v66 >> 2) & 1) == 7)
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v67 = &unk_1ED966F48;
        }

        swift_beginAccess();
        v71 = v67[5];
        if (v71)
        {
          v72 = v67[6];
        }

        else
        {
          v71 = MEMORY[0x1E69E7CC0];
          v72 = MEMORY[0x1E69E7CC0];
        }

        sub_1ADDD6748(v71, v72, v25, &v86);
        (*(v37 + 8))(v82, v36);
        sub_1ADDDC21C(v74, *(&v74 + 1), v75, v73, v81, v51);

        v69 = *(v46 + 40);
        v70 = v86;
LABEL_50:
        *(v83 + v69) = v70;
        return;
      }

      goto LABEL_59;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  v43(v14, 1, 1, v36);
  (*(v80 + 8))(v14, v81);
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_1AE23DA2C();

  *&v88 = 0xD000000000000022;
  *(&v88 + 1) = 0x80000001AE262940;
  v53 = v75;
  if (v75)
  {
    v54 = 0xD000000000000011;
  }

  else
  {
    v54 = 7104878;
  }

  if (v75)
  {
    v55 = 0x80000001AE262970;
  }

  else
  {
    v55 = 0xE300000000000000;
  }

  MEMORY[0x1B26FB670](v54, v55);

  MEMORY[0x1B26FB670](0x20746F6E20736920, 0xE800000000000000);
  v56 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v56);

  v57 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
  v58 = v88;
  sub_1ADE42E40(v57, v59, v60);
  swift_allocError();
  *v61 = v58;
  *(v61 + 16) = 0;
  swift_willThrow();

  sub_1ADDDC21C(v74, *(&v74 + 1), v53, v73, v40, v41);
  sub_1ADDCC35C(v76, *(&v76 + 1));
}

void Anonymous.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v47[-v11];
  if (*(a1 + 104) < 3u)
  {
    v14 = sub_1ADE71C08(v8, v9, v10);
    if (!v3)
    {
      v15 = v14;
      v49 = a2;
      v16 = *v2;
      v17 = v2[1];

      sub_1ADDD86D8(v16, v17);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v18 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v16, v17);

      sub_1ADDCC35C(v16, v17);
      swift_beginAccess();
      v19 = *(*(v15 + 24) + 16);
      if ((~v19 & 0xF000000000000007) != 0 && ((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 7)
      {
        inited = *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v22 = sub_1ADDE4C34(inited);
        v18 = MEMORY[0x1E69E7CC0];
        inited = v22;
      }

      swift_beginAccess();
      v23 = inited[8];
      v24 = inited[9];
      v25 = inited[10];
      inited[8] = v18;
      inited[9] = v16;
      inited[10] = v17;
      sub_1ADE73D6C(v23, v24, v25);
      sub_1AE1B76EC(inited);
      swift_endAccess();
      v48 = *v4;
      CRKeyPath.uuid.getter(v12);
      v26 = sub_1AE23BFEC();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v12, 1, v26) == 1)
      {
        __break(1u);
      }

      else
      {
        v28 = sub_1ADDF66A8(v12);
        (*(v27 + 8))(v12, v26);
        swift_beginAccess();
        v29 = *(*(v15 + 24) + 16);
        if ((~v29 & 0xF000000000000007) != 0 && ((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 7)
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Reference._StorageClass();
          v30 = swift_initStaticObject();
        }

        v31 = v49;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v30 = sub_1ADDE4C34(v30);
        }

        swift_beginAccess();
        *(v30 + 16) = v28;
        sub_1AE1B76EC(v30);
        swift_endAccess();
        v32 = (v4 + *(v31 + 40));
        v33 = v32[1];
        *&v48 = *v32;
        *(&v48 + 1) = v33;

        sub_1ADDF5C7C(a1);
        v35 = v34;
        v37 = v36;

        swift_beginAccess();
        v38 = *(*(v15 + 24) + 16);
        if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 7)
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Reference._StorageClass();
          v39 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v39 = sub_1ADDE4C34(v39);
        }

        swift_beginAccess();
        v40 = *(v39 + 40);
        v41 = *(v39 + 48);
        *(v39 + 40) = v35;
        *(v39 + 48) = v37;
        sub_1ADE42CB8(v40, v41);
        sub_1AE1B76EC(v39);
        v42 = swift_endAccess();
        v43 = *(*(v15 + 24) + 16);
        if ((~v43 & 0xF000000000000007) != 0 && ((v43 >> 59) & 0x1E | (v43 >> 2) & 1) == 7)
        {
          v44 = *((v43 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Reference._StorageClass();
          v42 = swift_initStaticObject();
          v44 = v42;
        }

        MEMORY[0x1EEE9AC00](v42);
        *&v47[-32] = *(v31 + 16);
        *&v47[-16] = v4;
        *&v47[-8] = a1;

        v45 = sub_1ADE6B9FC(sub_1AE191340, &v47[-48]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v44 = sub_1ADDE4C34(v44);
        }

        swift_beginAccess();
        *(v44 + 56) = v45;

        swift_beginAccess();

        MEMORY[0x1B26FB860](v46);
        if (*(*(a1 + 96) + 16) >= *(*(a1 + 96) + 24) >> 1)
        {
          sub_1AE23D03C();
        }

        sub_1AE23D09C();
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_1ADE42E40(v8, v9, v10);
    swift_allocError();
    *v13 = 0xD00000000000002BLL;
    *(v13 + 8) = 0x80000001AE262990;
    *(v13 + 16) = 3;
    swift_willThrow();
  }
}

double sub_1AE19117C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Timestamp(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*(a2 + 16) - 8) + 24))(v3 + *(a2 + 36), a1, v7);
  *&v12 = MEMORY[0x1E69E7CC8];
  *(&v12 + 1) = MEMORY[0x1E69E7CC8];
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v9[*(type metadata accessor for Replica(0) + 20)] = 0;
  *&v9[*(v6 + 20)] = 0;
  sub_1ADDD8290(v9);
  sub_1AE017AB8(v9);
  v10 = (v3 + *(a2 + 40));

  result = *&v12;
  *v10 = v12;
  return result;
}

uint64_t sub_1AE191340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  type metadata accessor for Anonymous(0, v5, v6, a4);
  return (*(*(*(v6 + 16) + 8) + 16))(v7, v5);
}

uint64_t sub_1AE1913B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE1913F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE19147C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1AE1915D4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t *sub_1AE1917BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v5 = (v11 + BYTE6(a2));
      goto LABEL_9;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v8 = sub_1AE197138(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    return v8;
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v11, 0, 14);
  v5 = v11;
LABEL_9:
  sub_1AE193AA8(&v10, v11, v5, a3);
  v8 = v3;

  if (!v3)
  {
    return v10;
  }

  return v8;
}

void sub_1AE191938(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADF7AFCC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1AE194A50(v5);
  *a1 = v3;
}

uint64_t sub_1AE1919EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext;
  if (*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext))
  {
    v5 = *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext);
  }

  else
  {
    v6 = sub_1AE23BDDC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v5 = sub_1ADDCFD3C(v3);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t sub_1AE191B0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1AE23BC1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AE23BC0C();
  sub_1AE23BBFC();
  sub_1AE23BCEC();
  sub_1AE23BD0C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

sqlite3_stmt *sub_1AE191CB8()
{
  result = sub_1ADDD1E30(0xD000000000000067, 0x80000001AE262BD0);
  if (!v1)
  {
    v3 = result;
    v4 = sqlite3_step(result);
    if (v4 == 101)
    {
      return sqlite3_finalize(v3);
    }

    if (v4 == 5)
    {
      sub_1ADE47024(v4, v5, v6);
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      v8 = 5;
    }

    else
    {
      result = sqlite3_errmsg(*(v0 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = sub_1AE23CDEC();
      v11 = v10;
      sub_1ADE47024(v9, v10, v12);
      swift_allocError();
      *v7 = v9;
      *(v7 + 8) = v11;
      v8 = 2;
    }

    *(v7 + 16) = v8;
    swift_willThrow();
    return sqlite3_finalize(v3);
  }

  return result;
}

void sub_1AE191DAC(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(v4 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy))
  {
    sub_1AE1919EC();
    sub_1AE1A2F08(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1ADE442A4(0, sub_1AE1971E4, a3, a4);
  }
}

uint64_t sub_1AE1920AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  *&v43 = a3;
  v44 = a2;
  v49 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1AE23BFEC();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v48 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for Timestamp(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v47 = v4;
  if ((*(v4 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy) & 1) == 0)
  {
    v43 = *v43;
    sub_1ADDCEE40(v44, v18, &qword_1EB5BA480, &qword_1AE25AAE0);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1ADDCEDE0(v18, &qword_1EB5BA480, &qword_1AE25AAE0);
    }

    else
    {
      sub_1ADDDE610(v18, v25, type metadata accessor for Timestamp);
      if (*&v25[*(v48 + 20)] <= 0)
      {
        v34 = sub_1ADDDE768(v25, v15);
        v35 = sub_1ADDD8E0C(v34);
        v36 = v47;
        v37 = v35;
        v39 = v38;

        v40 = sub_1AE1917BC(v37, v39, v36);
        sub_1ADDCC35C(v37, v39);
        (*(v45 + 8))(v15, v46);
        if (v40 >= 1)
        {
          v33 = v25;
          return sub_1ADDDE610(v33, v49, type metadata accessor for Replica);
        }
      }

      sub_1ADDE50B8(v25, type metadata accessor for Timestamp);
    }

    if (!v43)
    {
      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      sub_1ADDD0F70();
      v32 = v49;
      result = sub_1AE23BFBC();
      goto LABEL_14;
    }

    v50 = v43;
    sub_1AE192680(&v50, v22);
    v33 = v22;
    return sub_1ADDDE610(v33, v49, type metadata accessor for Replica);
  }

  v26 = sub_1AE1919EC();
  v27 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  sub_1ADDCEE40(v26 + v27, v7, &qword_1EB5BDC68, &unk_1AE253C20);
  v28 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  result = (*(*(v28 - 8) + 48))(v7, 1, v28);
  if (result != 1)
  {
    v31 = v45;
    v30 = v46;
    (*(v45 + 16))(v10, v7, v46);
    sub_1ADDE50B8(v7, type metadata accessor for CRReplicaDatabase.ReplicaDb);
    sub_1ADDE3CD8(v42);

    (*(v31 + 8))(v10, v30);
    v32 = v49;
    result = (*(v31 + 32))(v49, v13, v30);
LABEL_14:
    *(v32 + *(v48 + 20)) = 0;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1AE192680(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v118 = a1;
  v132 = *MEMORY[0x1E69E9840];
  v5 = sub_1AE23C0EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC58, &unk_1AE253C08);
  v106 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v93 - v13;
  v121 = sub_1AE23BFEC();
  v108 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v123 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v17 = *(v16 - 8);
  v119 = v16;
  v120 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC60, &qword_1AE253C18);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v99 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v93 - v32;
  v117 = v3;
  v115 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy;
  if ((v3[OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy] & 1) == 0)
  {
    v105 = v33;
    v94 = v8;
    v95 = v14;
    v96 = v6;
    v97 = v5;
    v98 = v11;
    v100 = a2;
    v35 = *v118;
    v36 = *(*v118 + 16);
    v118 = v9;
    v111 = &v93 - v32;
    if (v36)
    {
      v37 = sub_1AE1940C8(v36, 0);
      sub_1AE03A354(&v124, v37 + ((*(v120 + 80) + 32) & ~*(v120 + 80)), v36, v35);
      v39 = v38;
      v40 = v124;

      sub_1ADDDCE74(v40);
      if (v39 != v36)
      {
        goto LABEL_52;
      }

      v9 = v118;
      v34 = v111;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v124 = v37;
    sub_1AE191938(&v124);
    v41 = v123;
    v40 = v124;
    v42 = *(v106 + 56);
    v102 = v106 + 56;
    v101 = v42;
    v42(v34, 1, 1, v9);
    v109 = *(v40 + 16);
    if (!v109)
    {
LABEL_41:

      v40 = v111;
      v79 = v99;
      sub_1ADDCEE40(v111, v99, &qword_1EB5BDC60, &qword_1AE253C18);
      if ((*(v106 + 48))(v79, 1, v9) == 1)
      {
        sub_1ADDCEDE0(v79, &qword_1EB5BDC60, &qword_1AE253C18);
        v25 = v100;
      }

      else
      {
        v80 = v95;
        sub_1ADDD2198(v79, v95, &qword_1EB5BDC58, &unk_1AE253C08);
        v81 = v98;
        sub_1ADDCEE40(v80, v98, &qword_1EB5BDC58, &unk_1AE253C08);
        v82 = v119;
        v83 = *(v119 + 48);
        v84 = v94;
        sub_1AE23C10C();
        v85 = sub_1AE23C12C();
        v123 = *(*(v85 - 8) + 8);
        v123(v81 + v83, v85);
        sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
        v86 = v97;
        sub_1AE23D41C();
        sub_1AE23D46C();
        v87 = sub_1AE23D45C();
        (*(v96 + 8))(v84, v86);
        sub_1ADDE50B8(v81, type metadata accessor for Replica);
        v25 = v100;
        if (v87 <= 7)
        {
          sub_1ADDCEDE0(v111, &qword_1EB5BDC60, &qword_1AE253C18);
          sub_1ADDCEE40(v80, v81, &qword_1EB5BDC58, &unk_1AE253C08);
          v88 = *(v82 + 48);
          v89 = *(v80 + *(v9 + 48));
          sub_1ADDCEDE0(v80, &qword_1EB5BDC58, &unk_1AE253C08);
          sub_1ADDDE610(v81, v25, type metadata accessor for Replica);
          *&v25[*(type metadata accessor for Timestamp(0) + 20)] = v89;
          v123(v81 + v88, v85);
          return;
        }

        sub_1ADDCEDE0(v80, &qword_1EB5BDC58, &unk_1AE253C08);
        v40 = v111;
      }

      if (qword_1ED96AC50 == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }

    v43 = 0;
    v44 = *(v119 + 48);
    v113 = v40 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v114 = v44;
    v112 = (v108 + 2);
    v104 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement;
    ++v108;
    v103 = (v106 + 48);
    v107 = v40;
    while (v43 < *(v40 + 16))
    {
      v45 = v116;
      sub_1ADDCEE40(v113 + *(v120 + 72) * v43, v116, &qword_1EB5BA2A0, &unk_1AE242200);
      v9 = v119;
      v46 = *(v119 + 48);
      sub_1ADDDE610(v45, v25, type metadata accessor for Replica);
      v47 = sub_1AE23C12C();
      v48 = *(v47 - 8);
      (*(v48 + 32))(&v25[v46], v45 + v114, v47);
      v49 = v122;
      sub_1ADDCEE40(v25, v122, &qword_1EB5BA2A0, &unk_1AE242200);
      (*v112)(v41, v49, v121);
      sub_1ADDE50B8(v49, type metadata accessor for Replica);
      v40 = v117;
      if (v117[v115] == 1)
      {
        v50 = sub_1AE1919EC();
        swift_beginAccess();
        v51 = *(v50 + 120);
        if (*(v51 + 16) && (v52 = sub_1ADDDF300(v41), (v53 & 1) != 0))
        {
          v54 = *(*(v51 + 56) + 8 * v52);
        }

        else
        {
          v54 = 0;
        }

        swift_endAccess();
        (*v108)(v123, v121);
      }

      else
      {
        v124 = sub_1AE23BFCC();
        v125 = v55;
        v126 = v56;
        v127 = v57;
        v128 = v58;
        v129 = v59;
        v130 = v60;
        v131 = v61;
        sub_1AE23BFCC();
        sub_1AE23BBCC();
        swift_allocObject();
        sub_1AE23BB6C();
        v62 = sub_1AE23BB7C();
        if (v62)
        {
          v63 = sub_1AE23BBAC();
          v64 = v104;
          if (__OFSUB__(0, v63))
          {
            goto LABEL_51;
          }

          v62 -= v63;
        }

        else
        {
          v64 = v104;
        }

        v65 = sub_1AE23BB9C();
        if (v65 >= 16)
        {
          v66 = 16;
        }

        else
        {
          v66 = v65;
        }

        if (v62)
        {
          if (v66 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          LODWORD(v66) = 0;
        }

        sqlite3_bind_blob(*(v40 + v64), 1, v62, v66, *(v40 + 72));
        v67 = sqlite3_step(*(v40 + v64));
        v68 = *(v40 + v64);
        if (v67 == 100)
        {
          v69 = v64;
          v54 = sqlite3_column_int(v68, 0);
          v68 = *(v40 + v69);
        }

        else
        {
          v54 = 0;
        }

        sqlite3_reset(v68);

        (*v108)(v123, v121);
      }

      v70 = *(v48 + 8);
      v70(v122 + *(v9 + 48), v47);
      v71 = v110;
      sub_1ADDCEE40(v25, v110, &qword_1EB5BA2A0, &unk_1AE242200);
      v72 = *(v9 + 48);
      v40 = sub_1AE23C03C();
      v74 = v73;
      v70(v71 + v72, v47);
      if (v74)
      {
        v40 = 0;
      }

      sub_1ADDE50B8(v71, type metadata accessor for Replica);
      v75 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_50;
      }

      if (v54 == v75)
      {
        sub_1ADDCEDE0(v111, &qword_1EB5BDC60, &qword_1AE253C18);

        v90 = v93;
        sub_1ADDD2198(v25, v93, &qword_1EB5BA2A0, &unk_1AE242200);
        v91 = *(v119 + 48);
        v92 = v100;
        sub_1ADDDE610(v90, v100, type metadata accessor for Replica);
        *(v92 + *(type metadata accessor for Timestamp(0) + 20)) = v54;
        v70(v90 + v91, v47);
        return;
      }

      if (v75 >= v54)
      {
        sub_1ADDCEDE0(v25, &qword_1EB5BA2A0, &unk_1AE242200);
        v9 = v118;
      }

      else
      {
        v76 = v111;
        v77 = v105;
        sub_1ADDCEE40(v111, v105, &qword_1EB5BDC60, &qword_1AE253C18);
        v9 = v118;
        if ((*v103)(v77, 1, v118) == 1)
        {
          sub_1ADDCEDE0(v76, &qword_1EB5BDC60, &qword_1AE253C18);
          sub_1ADDCEDE0(v77, &qword_1EB5BDC60, &qword_1AE253C18);
          v78 = *(v9 + 48);
          sub_1ADDD2198(v25, v76, &qword_1EB5BA2A0, &unk_1AE242200);
          *(v76 + v78) = v54;
          v101(v76, 0, 1, v9);
        }

        else
        {
          sub_1ADDCEDE0(v25, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v77, &qword_1EB5BDC60, &qword_1AE253C18);
        }
      }

      v40 = v107;
      ++v43;
      v41 = v123;
      if (v109 == v43)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    __break(1u);
LABEL_53:
    swift_once();
LABEL_47:
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    sub_1ADDCEDE0(v40, &qword_1EB5BDC60, &qword_1AE253C18);
    *&v25[*(type metadata accessor for Replica(0) + 20)] = 0;
    *&v25[*(type metadata accessor for Timestamp(0) + 20)] = 0;
    return;
  }

  sub_1AE1919EC();
  sub_1AE23DC5C();
  __break(1u);

  __break(1u);
}

const char *sub_1AE1935B8()
{
  result = sub_1ADDD1E30(0xD00000000000002CLL, 0x80000001AE262B20);
  if (!v1)
  {
    *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement) = result;
    *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement) = sub_1ADDD1E30(0xD00000000000002BLL, 0x80000001AE262B50);
    result = sub_1ADDD1E30(0xD00000000000004ALL, 0x80000001AE262B80);
    *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement) = result;
  }

  return result;
}

uint64_t sub_1AE193658()
{
  sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement));
  sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement));
  v1 = *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement);

  return sqlite3_finalize(v1);
}

BOOL sub_1AE1936A8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_1AE23C0EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  v32 = a1;
  sub_1ADDCEE40(a1, v29 - v10, &qword_1EB5BA2A0, &unk_1AE242200);
  v12 = *(v7 + 48);
  sub_1AE23C10C();
  v35 = sub_1AE23C12C();
  v13 = *(v35 - 8);
  v36 = *(v13 + 8);
  v14 = v13 + 8;
  v36(&v11[v12], v35);
  sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  sub_1AE23D41C();
  sub_1AE23D46C();
  v15 = sub_1AE23D45C();
  v16 = *(v4 + 8);
  v33 = v4 + 8;
  v34 = v15;
  v16(v6, v3);
  sub_1ADDE50B8(v11, type metadata accessor for Replica);
  sub_1ADDCEE40(v37, v11, &qword_1EB5BA2A0, &unk_1AE242200);
  v30 = v7;
  v17 = *(v7 + 48);
  sub_1AE23C10C();
  v18 = &v11[v17];
  v19 = v35;
  v29[1] = v14;
  v36(v18, v35);
  sub_1AE23D41C();
  sub_1AE23D46C();
  v20 = sub_1AE23D45C();
  v16(v6, v3);
  sub_1ADDE50B8(v11, type metadata accessor for Replica);
  if (v34 < v20)
  {
    return 1;
  }

  if (v34 != v20)
  {
    return 0;
  }

  sub_1ADDCEE40(v32, v11, &qword_1EB5BA2A0, &unk_1AE242200);
  v22 = v30;
  v23 = *(v30 + 48);
  v34 = sub_1AE23C04C();
  v24 = v36;
  v36(&v11[v23], v19);
  v25 = v31;
  sub_1ADDCEE40(v37, v31, &qword_1EB5BA2A0, &unk_1AE242200);
  v26 = *(v22 + 48);
  v27 = sub_1AE23C04C();
  v24(v25 + v26, v19);
  v28 = v27 < v34;
  sub_1ADDE50B8(v25, type metadata accessor for Replica);
  sub_1ADDE50B8(v11, type metadata accessor for Replica);
  return v28;
}

uint64_t *sub_1AE193AA8@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement;
  sqlite3_bind_blob(*(a4 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement), 1, result, v5, *(a4 + 72));
  if (sqlite3_step(*(a4 + v7)) == 100)
  {
    v8 = sqlite3_column_int(*(a4 + v7), 0);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return sqlite3_reset(*(a4 + v7));
}

void sub_1AE193B58(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  if (*(v3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy))
  {
    sub_1AE1919EC();
    sub_1ADDE5A8C(a1, a2);
  }

  else
  {
    v7 = v3;
    v8 = sub_1ADDD8E0C(a1);
    v10 = v9;

    sub_1AE19454C(v8, v10, v7, a2, a3);
    sub_1ADDCC35C(v8, v10);
  }
}

double sub_1AE193C50()
{
  v1 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase__uuid;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t sub_1AE193CC8()
{
  if ((*(v0 + 40) & 1) == 0 && (*(v0 + 40) = 1, sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement)), sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement)), sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement)), sqlite3_close(*(v0 + 32))))
  {
    sub_1AE23DA2C();

    v4 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v4);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    result = sub_1AE23DC5C();
    __break(1u);
  }

  else
  {

    v1 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase__uuid;
    v2 = sub_1AE23BFEC();
    (*(*(v2 - 8) + 8))(v0 + v1, v2);

    return v0;
  }

  return result;
}

uint64_t sub_1AE193E58()
{
  sub_1AE193CC8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRSharedReplicaDatabase(uint64_t a1)
{
  result = qword_1EB5BDC48;
  if (!qword_1EB5BDC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AE193F04(uint64_t a1)
{
  result = sub_1AE23BFEC();
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

uint64_t *sub_1AE193FD8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy) == 1)
  {
    v3 = sub_1AE1919EC();
    swift_beginAccess();
    v4 = *(v3 + 120);
    if (*(v4 + 16) && (v5 = sub_1ADDDF300(a1), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }

    swift_endAccess();
  }

  else
  {
    v8 = sub_1ADDD8E0C(a1);
    v10 = v9;

    v7 = sub_1AE1917BC(v8, v10, v1);
    sub_1ADDCC35C(v8, v10);
  }

  return v7;
}

void *sub_1AE1940C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

void *sub_1AE1941D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
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

void *sub_1AE194254(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA230, &qword_1AE253C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1AE1942D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1AE19434C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1AE1943C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1AE194450(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA318, &unk_1AE2422D0);
  v4 = *(type metadata accessor for Replica(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

const char *sub_1AE19454C(const char *result, unint64_t a2, uint64_t a3, sqlite3_int64 a4, sqlite3_int64 a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v35[0] = result;
    LOWORD(v35[1]) = a2;
    BYTE2(v35[1]) = BYTE2(a2);
    BYTE3(v35[1]) = BYTE3(a2);
    BYTE4(v35[1]) = BYTE4(a2);
    BYTE5(v35[1]) = BYTE5(a2);
    v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
    v10 = *(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement);
    v11 = *(a3 + 72);
    swift_retain_n();
    sqlite3_bind_blob(v10, 1, v35, 16, v11);
    sqlite3_bind_int64(*(a3 + v9), 2, a4);
    sqlite3_bind_int64(*(a3 + v9), 3, a5);
    if (sqlite3_step(*(a3 + v9)) == 101)
    {
LABEL_24:
      sqlite3_reset(*(a3 + v9));
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1AE23DA2C();

    v36 = 0xD000000000000010;
    v37 = 0x80000001AE262AE0;
    result = sqlite3_errmsg(*(a3 + 32));
    if (result)
    {
LABEL_23:
      v28 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v28);

      v29 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v30 = v36;
      v31 = v37;
      sub_1ADE47024(v29, v32, v33);
      swift_allocError();
      *v34 = v30;
      *(v34 + 8) = v31;
      *(v34 + 16) = 2;
      swift_willThrow();
      goto LABEL_24;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    memset(v35, 0, 14);
    v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
    v26 = *(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement);
    v27 = *(a3 + 72);
    swift_retain_n();
    sqlite3_bind_blob(v26, 1, v35, 16, v27);
    sqlite3_bind_int64(*(a3 + v9), 2, a4);
    sqlite3_bind_int64(*(a3 + v9), 3, a5);
    if (sqlite3_step(*(a3 + v9)) == 101)
    {
      goto LABEL_24;
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1AE23DA2C();

    v36 = 0xD000000000000010;
    v37 = 0x80000001AE262AE0;
    v18 = sqlite3_errmsg(*(a3 + 32));
    if (!v18)
    {
      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v12 = *(result + 2);
  swift_retain_n();
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 += v12 - v14;
  }

  sub_1AE23BB9C();
  v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
  sqlite3_bind_blob(*(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement), 1, v13, 16, *(a3 + 72));
  sqlite3_bind_int64(*(a3 + v9), 2, a4);
  sqlite3_bind_int64(*(a3 + v9), 3, a5);
  if (sqlite3_step(*(a3 + v9)) == 101)
  {
    goto LABEL_24;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1AE23DA2C();

  v36 = 0xD000000000000010;
  v37 = 0x80000001AE262AE0;
  result = sqlite3_errmsg(*(a3 + 32));
  if (result)
  {
LABEL_19:
    v19 = sub_1AE23CDEC();
    MEMORY[0x1B26FB670](v19);

    v20 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v21 = v36;
    v22 = v37;
    sub_1ADE47024(v20, v23, v24);
    swift_allocError();
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = 2;
    swift_willThrow();
    goto LABEL_24;
  }

  __break(1u);
LABEL_13:
  v15 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_26;
  }

  swift_retain_n();
  v16 = sub_1AE23BB7C();
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = sub_1AE23BBAC();
  if (__OFSUB__(v15, v17))
  {
LABEL_27:
    __break(1u);
  }

  v16 += v15 - v17;
LABEL_17:
  sub_1AE23BB9C();
  v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
  sqlite3_bind_blob(*(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement), 1, v16, 16, *(a3 + 72));
  sqlite3_bind_int64(*(a3 + v9), 2, a4);
  sqlite3_bind_int64(*(a3 + v9), 3, a5);
  if (sqlite3_step(*(a3 + v9)) == 101)
  {
    goto LABEL_24;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1AE23DA2C();

  v36 = 0xD000000000000010;
  v37 = 0x80000001AE262AE0;
  v18 = sqlite3_errmsg(*(a3 + 32));
  if (v18)
  {
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
  return v18;
}

void sub_1AE194A50(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AE23DD7C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AE195240(v8, v9, a1, v4);
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
    sub_1AE194B94(0, v2, 1, a1);
  }
}

void sub_1AE194B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = sub_1AE23C0EC();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v80);
  v64 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v54[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v54[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54[-v20];
  v56 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v65 = (v8 + 8);
    v24 = v22 + v23 * (a3 - 1);
    v62 = -v23;
    v63 = v22;
    v25 = a1 - a3;
    v55 = v23;
    v26 = v22 + v23 * a3;
    v69 = v17;
    v70 = &v54[-v20];
LABEL_5:
    v60 = a3;
    v57 = v26;
    v58 = v25;
    v27 = v25;
    v59 = v24;
    while (1)
    {
      v73 = v27;
      v74 = v26;
      sub_1ADDCEE40(v26, v21, &qword_1EB5BA2A0, &unk_1AE242200);
      v72 = v24;
      sub_1ADDCEE40(v24, v17, &qword_1EB5BA2A0, &unk_1AE242200);
      v28 = v71;
      sub_1ADDCEE40(v21, v71, &qword_1EB5BA2A0, &unk_1AE242200);
      v29 = *(v80 + 48);
      v30 = v66;
      sub_1AE23C10C();
      v31 = sub_1AE23C12C();
      v32 = *(v31 - 8);
      v33 = *(v32 + 8);
      v78 = v32 + 8;
      v79 = v33;
      v33(&v28[v29], v31);
      sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
      v34 = v67;
      sub_1AE23D41C();
      sub_1AE23D46C();
      v35 = sub_1AE23D45C();
      v76 = *v65;
      v77 = v35;
      v76(v30, v34);
      v75 = type metadata accessor for Replica;
      sub_1ADDE50B8(v28, type metadata accessor for Replica);
      sub_1ADDCEE40(v17, v28, &qword_1EB5BA2A0, &unk_1AE242200);
      v36 = *(v80 + 48);
      sub_1AE23C10C();
      v68 = v31;
      v79(&v28[v36], v31);
      sub_1AE23D41C();
      sub_1AE23D46C();
      v37 = sub_1AE23D45C();
      v76(v30, v34);
      sub_1ADDE50B8(v28, v75);
      if (v77 >= v37)
      {
        v41 = v69;
        v21 = v70;
        if (v77 != v37)
        {
          v17 = v69;
          sub_1ADDCEDE0(v69, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v21, &qword_1EB5BA2A0, &unk_1AE242200);
LABEL_4:
          a3 = v60 + 1;
          v24 = v59 + v55;
          v25 = v58 - 1;
          v26 = v57 + v55;
          if (v60 + 1 == v56)
          {
            return;
          }

          goto LABEL_5;
        }

        v42 = v71;
        sub_1ADDCEE40(v70, v71, &qword_1EB5BA2A0, &unk_1AE242200);
        v43 = v80;
        v44 = *(v80 + 48);
        v77 = sub_1AE23C04C();
        v45 = v68;
        v46 = v79;
        v79(&v42[v44], v68);
        v47 = v61;
        sub_1ADDCEE40(v41, v61, &qword_1EB5BA2A0, &unk_1AE242200);
        v48 = *(v43 + 48);
        v49 = sub_1AE23C04C();
        v46(&v47[v48], v45);
        v50 = v47;
        v17 = v69;
        v21 = v70;
        sub_1ADDE50B8(v50, type metadata accessor for Replica);
        sub_1ADDE50B8(v42, type metadata accessor for Replica);
        sub_1ADDCEDE0(v17, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v21, &qword_1EB5BA2A0, &unk_1AE242200);
        v51 = v49 < v77;
        v39 = v73;
        v38 = v74;
        v40 = v72;
        if (!v51)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v17 = v69;
        sub_1ADDCEDE0(v69, &qword_1EB5BA2A0, &unk_1AE242200);
        v21 = v70;
        sub_1ADDCEDE0(v70, &qword_1EB5BA2A0, &unk_1AE242200);
        v39 = v73;
        v38 = v74;
        v40 = v72;
      }

      if (!v63)
      {
        break;
      }

      v52 = v64;
      sub_1ADDD2198(v38, v64, &qword_1EB5BA2A0, &unk_1AE242200);
      swift_arrayInitWithTakeFrontToBack();
      sub_1ADDD2198(v52, v40, &qword_1EB5BA2A0, &unk_1AE242200);
      v24 = v40 + v62;
      v26 = v38 + v62;
      v53 = __CFADD__(v39, 1);
      v27 = v39 + 1;
      if (v53)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1AE195240(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v157 = a1;
  v178 = sub_1AE23C0EC();
  v6 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v166 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v160 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v153 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v153 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v153 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v153 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v153 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v153 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v169 = &v153 - v24;
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v167 = a3;
  v29 = *(a3 + 8);
  if (v29 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v6 = *v157;
    if (!*v157)
    {
      goto LABEL_147;
    }

    a3 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v147 = a3;
    }

    else
    {
LABEL_141:
      v147 = sub_1ADF7ACAC(a3);
    }

    v190 = v147;
    a3 = *(v147 + 2);
    if (a3 >= 2)
    {
      while (*v167)
      {
        v148 = *&v147[16 * a3];
        v149 = v147;
        v150 = *&v147[16 * a3 + 24];
        v151 = v170;
        sub_1AE196450(*v167 + *(v166 + 72) * v148, *v167 + *(v166 + 72) * *&v147[16 * a3 + 16], *v167 + *(v166 + 72) * v150, v6);
        v170 = v151;
        if (v151)
        {
          goto LABEL_118;
        }

        if (v150 < v148)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1ADF7ACAC(v149);
        }

        if (a3 - 2 >= *(v149 + 2))
        {
          goto LABEL_135;
        }

        v152 = &v149[16 * a3];
        *v152 = v148;
        *(v152 + 1) = v150;
        v190 = v149;
        sub_1ADF7AC20(a3 - 1);
        v147 = v190;
        a3 = *(v190 + 2);
        if (a3 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_145;
    }

LABEL_118:

    return;
  }

  v154 = &v153 - v27;
  v155 = v28;
  v30 = 0;
  v176 = (v6 + 8);
  v31 = MEMORY[0x1E69E7CC0];
  v156 = a4;
  v186 = v13;
  v179 = v16;
  while (1)
  {
    v161 = v31;
    v158 = v30;
    if (v30 + 1 >= v29)
    {
      v41 = v30 + 1;
      goto LABEL_32;
    }

    v168 = v29;
    v32 = *v167;
    v6 = *(v166 + 72);
    v185 = *v167 + v6 * (v30 + 1);
    v33 = v154;
    a3 = &unk_1AE242200;
    sub_1ADDCEE40(v185, v154, &qword_1EB5BA2A0, &unk_1AE242200);
    v34 = v155;
    sub_1ADDCEE40(v32 + v6 * v30, v155, &qword_1EB5BA2A0, &unk_1AE242200);
    v35 = v170;
    LODWORD(v165) = sub_1AE1936A8(v33, v34);
    v170 = v35;
    if (v35)
    {
      sub_1ADDCEDE0(v34, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDCEDE0(v33, &qword_1EB5BA2A0, &unk_1AE242200);
      goto LABEL_118;
    }

    sub_1ADDCEDE0(v34, &qword_1EB5BA2A0, &unk_1AE242200);
    sub_1ADDCEDE0(v33, &qword_1EB5BA2A0, &unk_1AE242200);
    v36 = v30 + 2;
    v37 = v32 + v6 * v36;
    v174 = v6;
    v38 = v185;
    while (1)
    {
      v41 = v168;
      if (v168 == v36)
      {
        break;
      }

      v183 = v37;
      v184 = v36;
      v42 = v169;
      sub_1ADDCEE40(v37, v169, &qword_1EB5BA2A0, &unk_1AE242200);
      v185 = v38;
      sub_1ADDCEE40(v38, v171, &qword_1EB5BA2A0, &unk_1AE242200);
      v43 = v180;
      sub_1ADDCEE40(v42, v180, &qword_1EB5BA2A0, &unk_1AE242200);
      v44 = v189;
      v45 = *(v189 + 48);
      v46 = v177;
      sub_1AE23C10C();
      v47 = sub_1AE23C12C();
      v48 = *(v47 - 8);
      v49 = *(v48 + 8);
      v187 = v48 + 8;
      v188 = v49;
      v49(v43 + v45, v47);
      sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
      v50 = v178;
      sub_1AE23D41C();
      sub_1AE23D46C();
      v51 = sub_1AE23D45C();
      v181 = *v176;
      v182 = v51;
      (v181)(v46, v50);
      sub_1ADDE50B8(v43, type metadata accessor for Replica);
      sub_1ADDCEE40(v171, v43, &qword_1EB5BA2A0, &unk_1AE242200);
      v52 = *(v44 + 48);
      sub_1AE23C10C();
      v173 = v47;
      v188(v43 + v52, v47);
      sub_1AE23D41C();
      sub_1AE23D46C();
      v53 = sub_1AE23D45C();
      (v181)(v46, v50);
      sub_1ADDE50B8(v43, type metadata accessor for Replica);
      if (v182 < v53)
      {
        a3 = 1;
      }

      else
      {
        if (v182 == v53)
        {
          v54 = v180;
          sub_1ADDCEE40(v169, v180, &qword_1EB5BA2A0, &unk_1AE242200);
          v55 = v189;
          v56 = *(v189 + 48);
          v57 = sub_1AE23C04C();
          v58 = v173;
          v59 = v188;
          v188(v54 + v56, v173);
          v60 = v172;
          sub_1ADDCEE40(v171, v172, &qword_1EB5BA2A0, &unk_1AE242200);
          v61 = *(v55 + 48);
          v62 = sub_1AE23C04C();
          v59(v60 + v61, v58);
          a3 = v62 < v57;
          sub_1ADDE50B8(v60, type metadata accessor for Replica);
          sub_1ADDE50B8(v54, type metadata accessor for Replica);
          v13 = v186;
          v16 = v179;
          goto LABEL_9;
        }

        a3 = 0;
      }

      v13 = v186;
      v16 = v179;
LABEL_9:
      v6 = v174;
      v40 = v184;
      v39 = v185;
      sub_1ADDCEDE0(v171, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDCEDE0(v169, &qword_1EB5BA2A0, &unk_1AE242200);
      v36 = (v40 + 1);
      v37 = v183 + v6;
      v38 = v39 + v6;
      if ((v165 ^ a3))
      {
        v41 = v36 - 1;
        break;
      }
    }

    a4 = v156;
    if ((v165 & 1) == 0)
    {
      goto LABEL_32;
    }

    v63 = v41;
    if (v41 < v158)
    {
      goto LABEL_140;
    }

    if (v158 < v41)
    {
      a3 = v6 * (v41 - 1);
      v64 = v41 * v6;
      v168 = v41;
      v65 = v158;
      v66 = v158 * v6;
      do
      {
        if (v65 != --v63)
        {
          v67 = *v167;
          if (!*v167)
          {
            goto LABEL_144;
          }

          sub_1ADDD2198(v67 + v66, v160, &qword_1EB5BA2A0, &unk_1AE242200);
          if (v66 < a3 || v67 + v66 >= v67 + v64)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v66 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1ADDD2198(v160, v67 + a3, &qword_1EB5BA2A0, &unk_1AE242200);
          v6 = v174;
        }

        ++v65;
        a3 -= v6;
        v64 -= v6;
        v66 += v6;
      }

      while (v65 < v63);
      a4 = v156;
      v41 = v168;
    }

LABEL_32:
    v68 = v167[1];
    if (v41 >= v68)
    {
      goto LABEL_54;
    }

    v69 = v41;
    v70 = v41 - v158;
    if (__OFSUB__(v69, v158))
    {
      goto LABEL_137;
    }

    if (v70 >= a4)
    {
      v41 = v69;
      goto LABEL_54;
    }

    if (__OFADD__(v158, a4))
    {
      goto LABEL_138;
    }

    if (v158 + a4 < v68)
    {
      v68 = v158 + a4;
    }

    if (v68 < v158)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v41 = v69;
    if (v69 == v68)
    {
      goto LABEL_54;
    }

    v162 = v68;
    v71 = *v167;
    v72 = *(v166 + 72);
    v73 = *v167 + v72 * (v41 - 1);
    v173 = -v72;
    v74 = v158 - v41;
    v174 = v71;
    v159 = v72;
    a3 = v71 + v41 * v72;
LABEL_42:
    v168 = v41;
    v163 = a3;
    v164 = v74;
    v75 = v74;
    v165 = v73;
LABEL_43:
    v182 = a3;
    v183 = v75;
    sub_1ADDCEE40(a3, v16, &qword_1EB5BA2A0, &unk_1AE242200);
    v181 = v73;
    sub_1ADDCEE40(v73, v13, &qword_1EB5BA2A0, &unk_1AE242200);
    v76 = v180;
    sub_1ADDCEE40(v16, v180, &qword_1EB5BA2A0, &unk_1AE242200);
    v77 = *(v189 + 48);
    v78 = v177;
    sub_1AE23C10C();
    v79 = sub_1AE23C12C();
    v80 = *(v79 - 8);
    v81 = *(v80 + 8);
    v187 = v80 + 8;
    v188 = v81;
    v81(v76 + v77, v79);
    sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    v82 = v178;
    sub_1AE23D41C();
    sub_1AE23D46C();
    v83 = sub_1AE23D45C();
    v184 = *v176;
    v185 = v83;
    (v184)(v78, v82);
    v6 = type metadata accessor for Replica;
    sub_1ADDE50B8(v76, type metadata accessor for Replica);
    sub_1ADDCEE40(v186, v76, &qword_1EB5BA2A0, &unk_1AE242200);
    v84 = *(v189 + 48);
    sub_1AE23C10C();
    v85 = v76 + v84;
    v86 = v79;
    v188(v85, v79);
    sub_1AE23D41C();
    sub_1AE23D46C();
    v87 = sub_1AE23D45C();
    (v184)(v78, v82);
    sub_1ADDE50B8(v76, type metadata accessor for Replica);
    if (v185 < v87)
    {
      v13 = v186;
      sub_1ADDCEDE0(v186, &qword_1EB5BA2A0, &unk_1AE242200);
      v16 = v179;
      sub_1ADDCEDE0(v179, &qword_1EB5BA2A0, &unk_1AE242200);
      goto LABEL_48;
    }

    if (v185 == v87)
    {
      break;
    }

    v13 = v186;
    sub_1ADDCEDE0(v186, &qword_1EB5BA2A0, &unk_1AE242200);
    v16 = v179;
    sub_1ADDCEDE0(v179, &qword_1EB5BA2A0, &unk_1AE242200);
LABEL_41:
    v41 = v168 + 1;
    v73 = v165 + v159;
    v74 = v164 - 1;
    a3 = v163 + v159;
    if (v168 + 1 != v162)
    {
      goto LABEL_42;
    }

    v41 = v162;
LABEL_54:
    v99 = v158;
    if (v41 < v158)
    {
      goto LABEL_136;
    }

    v162 = v41;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v161;
    }

    else
    {
      v31 = sub_1ADE5522C(0, *(v161 + 2) + 1, 1, v161);
    }

    v6 = *(v31 + 2);
    v100 = *(v31 + 3);
    a3 = v6 + 1;
    if (v6 >= v100 >> 1)
    {
      v31 = sub_1ADE5522C((v100 > 1), v6 + 1, 1, v31);
    }

    *(v31 + 2) = a3;
    v101 = &v31[16 * v6];
    v102 = v162;
    *(v101 + 4) = v99;
    *(v101 + 5) = v102;
    v103 = *v157;
    if (!*v157)
    {
      goto LABEL_146;
    }

    if (v6)
    {
      while (2)
      {
        v104 = a3 - 1;
        if (a3 >= 4)
        {
          v109 = &v31[16 * a3 + 32];
          v110 = *(v109 - 64);
          v111 = *(v109 - 56);
          v115 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          if (v115)
          {
            goto LABEL_123;
          }

          v114 = *(v109 - 48);
          v113 = *(v109 - 40);
          v115 = __OFSUB__(v113, v114);
          v107 = v113 - v114;
          v108 = v115;
          if (v115)
          {
            goto LABEL_124;
          }

          v116 = &v31[16 * a3];
          v118 = *v116;
          v117 = *(v116 + 1);
          v115 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v115)
          {
            goto LABEL_126;
          }

          v115 = __OFADD__(v107, v119);
          v120 = v107 + v119;
          if (v115)
          {
            goto LABEL_129;
          }

          if (v120 >= v112)
          {
            v138 = &v31[16 * v104 + 32];
            v140 = *v138;
            v139 = *(v138 + 1);
            v115 = __OFSUB__(v139, v140);
            v141 = v139 - v140;
            if (v115)
            {
              goto LABEL_133;
            }

            if (v107 < v141)
            {
              v104 = a3 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v108)
            {
              goto LABEL_125;
            }

            v121 = &v31[16 * a3];
            v123 = *v121;
            v122 = *(v121 + 1);
            v124 = __OFSUB__(v122, v123);
            v125 = v122 - v123;
            v126 = v124;
            if (v124)
            {
              goto LABEL_128;
            }

            v127 = &v31[16 * v104 + 32];
            v129 = *v127;
            v128 = *(v127 + 1);
            v115 = __OFSUB__(v128, v129);
            v130 = v128 - v129;
            if (v115)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v125, v130))
            {
              goto LABEL_132;
            }

            if (v125 + v130 < v107)
            {
              goto LABEL_88;
            }

            if (v107 < v130)
            {
              v104 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v105 = *(v31 + 4);
            v106 = *(v31 + 5);
            v115 = __OFSUB__(v106, v105);
            v107 = v106 - v105;
            v108 = v115;
            goto LABEL_74;
          }

          v131 = &v31[16 * a3];
          v133 = *v131;
          v132 = *(v131 + 1);
          v115 = __OFSUB__(v132, v133);
          v125 = v132 - v133;
          v126 = v115;
LABEL_88:
          if (v126)
          {
            goto LABEL_127;
          }

          v134 = &v31[16 * v104];
          v136 = *(v134 + 4);
          v135 = *(v134 + 5);
          v115 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v115)
          {
            goto LABEL_130;
          }

          if (v137 < v125)
          {
            break;
          }
        }

        v6 = v104 - 1;
        if (v104 - 1 >= a3)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v167)
        {
          goto LABEL_143;
        }

        v142 = v31;
        a3 = *&v31[16 * v6 + 32];
        v143 = *&v31[16 * v104 + 40];
        v144 = v170;
        sub_1AE196450(*v167 + *(v166 + 72) * a3, *v167 + *(v166 + 72) * *&v31[16 * v104 + 32], *v167 + *(v166 + 72) * v143, v103);
        v170 = v144;
        if (v144)
        {
          goto LABEL_118;
        }

        if (v143 < a3)
        {
          goto LABEL_121;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v145 = v142;
        }

        else
        {
          v145 = sub_1ADF7ACAC(v142);
        }

        if (v6 >= *(v145 + 2))
        {
          goto LABEL_122;
        }

        v146 = &v145[16 * v6];
        *(v146 + 4) = a3;
        *(v146 + 5) = v143;
        v190 = v145;
        sub_1ADF7AC20(v104);
        v31 = v190;
        a3 = *(v190 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v29 = v167[1];
    v30 = v162;
    a4 = v156;
    if (v162 >= v29)
    {
      goto LABEL_107;
    }
  }

  v88 = v180;
  sub_1ADDCEE40(v179, v180, &qword_1EB5BA2A0, &unk_1AE242200);
  v89 = v189;
  v90 = *(v189 + 48);
  v185 = sub_1AE23C04C();
  v6 = v188;
  v188(v88 + v90, v79);
  v91 = v186;
  v92 = v172;
  sub_1ADDCEE40(v186, v172, &qword_1EB5BA2A0, &unk_1AE242200);
  v93 = *(v89 + 48);
  v94 = sub_1AE23C04C();
  (v6)(v92 + v93, v86);
  sub_1ADDE50B8(v92, type metadata accessor for Replica);
  v16 = v179;
  sub_1ADDE50B8(v88, type metadata accessor for Replica);
  v13 = v91;
  sub_1ADDCEDE0(v91, &qword_1EB5BA2A0, &unk_1AE242200);
  sub_1ADDCEDE0(v16, &qword_1EB5BA2A0, &unk_1AE242200);
  if (v94 >= v185)
  {
    goto LABEL_41;
  }

LABEL_48:
  v95 = v183;
  if (v174)
  {
    v96 = v182;
    v6 = v175;
    sub_1ADDD2198(v182, v175, &qword_1EB5BA2A0, &unk_1AE242200);
    v97 = v181;
    swift_arrayInitWithTakeFrontToBack();
    sub_1ADDD2198(v6, v97, &qword_1EB5BA2A0, &unk_1AE242200);
    v73 = v97 + v173;
    a3 = v96 + v173;
    v98 = __CFADD__(v95, 1);
    v75 = v95 + 1;
    if (v98)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

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
}

void sub_1AE196450(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v71);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = a2;
  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v21 != -1)
  {
    v25 = (a2 - a1) / v21;
    v76 = a1;
    v26 = a4;
    v75 = a4;
    if (v25 < v24 / v21)
    {
      v27 = v25 * v21;
      if (a4 < v23 || v23 + v27 <= a4)
      {
        v28 = v23;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        v28 = v23;
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v28;
      v26 = a4;
      v22 = a2;
LABEL_17:
      v72 = v4;
      v70 = v26 + v27;
      v74 = v26 + v27;
      if (v27 >= 1 && v22 < a3)
      {
        v68 = v15;
        v69 = v19;
        v67 = a3;
        while (1)
        {
          v73 = v23;
          v33 = v21;
          v34 = v22;
          v35 = v69;
          sub_1ADDCEE40(v22, v69, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEE40(v26, v15, &qword_1EB5BA2A0, &unk_1AE242200);
          v36 = v72;
          v37 = sub_1AE1936A8(v35, v15);
          v72 = v36;
          if (v36)
          {
            sub_1ADDCEDE0(v15, &qword_1EB5BA2A0, &unk_1AE242200);
            sub_1ADDCEDE0(v35, &qword_1EB5BA2A0, &unk_1AE242200);
            goto LABEL_65;
          }

          v38 = v37;
          sub_1ADDCEDE0(v15, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v35, &qword_1EB5BA2A0, &unk_1AE242200);
          if (!v38)
          {
            v21 = v33;
            v40 = v26;
            v26 += v33;
            v39 = v73;
            if (v73 < v40 || v73 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v73;
            }

            else if (v73 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v39 = v73;
            }

            v75 = v26;
            v22 = v34;
            goto LABEL_37;
          }

          v21 = v33;
          v39 = v73;
          if (v73 < v34 || v73 >= v34 + v33)
          {
            break;
          }

          if (v73 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v39 = v73;
          }

          v22 = v34 + v33;
LABEL_37:
          v23 = v39 + v21;
          v76 = v23;
          if (v26 < v70)
          {
            v15 = v68;
            if (v22 < v67)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v29 = v24 / v21 * v21;
    v69 = v17;
    if (a4 < v22 || v22 + v29 <= a4)
    {
      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v22)
      {
LABEL_42:
        v41 = v26 + v29;
        if (v29 < 1)
        {
LABEL_60:
          v72 = v5;
          v76 = v22;
          v74 = v41;
          goto LABEL_65;
        }

        v42 = -v21;
        v43 = &qword_1EB5BA2A0;
        v44 = v26 + v29;
        v45 = &unk_1AE242200;
        v65 = v26;
        v73 = v23;
        v68 = -v21;
LABEL_44:
        v63 = v41;
        v46 = v22 + v42;
        v66 = v22 + v42;
        v67 = v22;
        while (1)
        {
          if (v22 <= v23)
          {
            v72 = v5;
            v76 = v22;
            v74 = v63;
            goto LABEL_65;
          }

          v47 = a3;
          v64 = v41;
          v49 = v68;
          v48 = v69;
          v70 = v44;
          v50 = v44 + v68;
          v51 = v5;
          v52 = v43;
          v53 = v45;
          sub_1ADDCEE40(v44 + v68, v69, v43, v45);
          sub_1ADDCEE40(v46, v11, v52, v53);
          v54 = sub_1AE1936A8(v48, v11);
          v55 = v11;
          if (v51)
          {
            break;
          }

          v56 = v54;
          a3 = v47 + v49;
          v57 = v55;
          sub_1ADDCEDE0(v55, v52, v53);
          sub_1ADDCEDE0(v48, v52, v53);
          if (v56)
          {
            v72 = 0;
            if (v47 < v67 || a3 >= v67)
            {
              v61 = v66;
              swift_arrayInitWithTakeFrontToBack();
              v11 = v57;
              v22 = v61;
              v23 = v73;
            }

            else
            {
              v11 = v57;
              v22 = v66;
              v23 = v73;
              if (v47 != v67)
              {
                v59 = v66;
                v60 = v73;
                swift_arrayInitWithTakeBackToFront();
                v23 = v60;
                v22 = v59;
              }
            }

            v41 = v64;
            v44 = v70;
            v42 = v68;
            v43 = v52;
            v45 = v53;
            v5 = v72;
            if (v70 <= v65)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v41 = v50;
          if (v47 < v70 || a3 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v50;
            v11 = v57;
            v23 = v73;
          }

          else
          {
            v11 = v57;
            v23 = v73;
            if (v47 != v70)
            {
              v58 = v73;
              swift_arrayInitWithTakeBackToFront();
              v23 = v58;
              v41 = v50;
            }
          }

          v44 = v41;
          v46 = v66;
          v43 = v52;
          v45 = v53;
          v5 = 0;
          v22 = v67;
          if (v50 <= v65)
          {
            goto LABEL_60;
          }
        }

        sub_1ADDCEDE0(v11, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v48, &qword_1EB5BA2A0, &unk_1AE242200);
        v76 = v67;
        v74 = v64;
LABEL_65:
        sub_1ADF7ACC0(&v76, &v75, &v74);
        return;
      }

      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v31;
    v26 = a4;
    v22 = v30;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_1AE196B1C(uint64_t a1)
{
  v3 = sub_1AE23C88C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1AE23C8CC();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AE23C89C();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  sub_1ADDCEE40(a1, &v26 - v10, &qword_1EB5B9DC0, &qword_1AE240B90);
  v12 = sub_1AE23BDDC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v14 = 0x656D3A3A656C6966;
    sub_1ADDCEDE0(v11, &qword_1EB5B9DC0, &qword_1AE240B90);
    v15 = 0xED00003A79726F6DLL;
  }

  else
  {
    v14 = sub_1AE23BDAC();
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  type metadata accessor for CRSharedReplicaDatabase(0);
  v17 = swift_allocObject();
  sub_1AE23BFDC();
  *(v17 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement) = 0;
  *(v17 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement) = 0;
  *(v17 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement) = 0;
  *(v17 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy) = 0;
  *(v17 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext) = 0;
  *(v17 + 24) = v15;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 64) = 0;
  *(v17 + 66) = 1;
  *(v17 + 68) = 0;
  *(v17 + 70) = 1;
  *(v17 + 72) = 0;
  *(v17 + 80) = -1;
  *(v17 + 16) = v14;
  *(v17 + 41) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;

  sub_1ADDD16D4();
  if (v1)
  {
    sub_1ADDCEDE0(a1, &qword_1EB5B9DC0, &qword_1AE240B90);
  }

  else
  {
    if (v14 == 0x656D3A3A656C6966 && v15 == 0xED00003A79726F6DLL || (sub_1AE23E00C() & 1) != 0)
    {
      sub_1ADDCEDE0(a1, &qword_1EB5B9DC0, &qword_1AE240B90);

      return v17;
    }

    sub_1ADDCED94();
    v19 = v27;
    (*(v27 + 104))(v8, *MEMORY[0x1E69E7F98], v6);

    v26 = sub_1AE23D6DC();
    (*(v19 + 8))(v8, v6);
    v20 = swift_allocObject();
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    aBlock[4] = sub_1AE19722C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_12;
    v21 = _Block_copy(aBlock);
    v22 = v28;
    sub_1AE23C8AC();
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1AE197234(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    v23 = v30;
    v24 = v33;
    sub_1AE23D8DC();
    v25 = v26;
    MEMORY[0x1B26FBF60](0, v22, v23, v21);

    _Block_release(v21);

    sub_1ADDCEDE0(a1, &qword_1EB5B9DC0, &qword_1AE240B90);
    (*(v32 + 8))(v23, v24);
    (*(v29 + 8))(v22, v31);
  }

  return v17;
}

uint64_t *sub_1AE197138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23BB7C();
  v9 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = sub_1AE193AA8(&v16, v9, v15, a4);
  if (!v4)
  {
    return v16;
  }

  return result;
}

uint64_t sub_1AE197214(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1AE197234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FinalizedTimestamp.init(replica:counter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AE23BFEC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for FinalizedTimestamp(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static FinalizedTimestamp.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    return v5 < v6;
  }

  return sub_1ADF5EB00(a1);
}

uint64_t static FinalizedTimestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  return sub_1AE23BF8C();
}

uint64_t FinalizedTimestamp.nextUnique()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  result = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(result + 20);
  v5 = *(v1 + v4);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v4) = v7;
  }

  return result;
}

uint64_t static FinalizedTimestamp.unique()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  result = type metadata accessor for FinalizedTimestamp(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t FinalizedTimestamp.replica.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AE23BFEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FinalizedTimestamp.hash(into:)(uint64_t a1)
{
  sub_1AE23BFAC();
  v2 = type metadata accessor for FinalizedTimestamp(0);
  return MEMORY[0x1B26FCBD0](*(v1 + *(v2 + 20)));
}

uint64_t static FinalizedTimestamp.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FinalizedTimestamp(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D74D0);

  return sub_1ADED0548(v3, a1);
}

uint64_t FinalizedTimestamp.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v1 = MEMORY[0x1E69E7508];
  v2 = MEMORY[0x1E69E7558];
  *(v0 + 56) = MEMORY[0x1E69E7508];
  *(v0 + 64) = v2;
  *(v0 + 32) = v3;
  sub_1AE23BFCC();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v4;
  v7 = sub_1AE23CD3C();
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  type metadata accessor for FinalizedTimestamp(0);
  v5 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v5);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return v7;
}

uint64_t FinalizedTimestamp.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v1 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1B26FCBD0](*(v0 + *(v1 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1AE197844(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  MEMORY[0x1B26FCBD0](*(v1 + *(a1 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1AE1978D8(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  MEMORY[0x1B26FCBD0](*(v2 + *(a2 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1AE197928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    return sub_1ADF5EB00(a1);
  }

  else
  {
    return v4 < v5;
  }
}

BOOL sub_1AE197948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    v6 = sub_1ADF5EB00(a2);
  }

  else
  {
    v6 = v4 < v5;
  }

  return (v6 & 1) == 0;
}

BOOL sub_1AE197994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    v6 = sub_1ADF5EB00(a1);
  }

  else
  {
    v6 = v4 < v5;
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1AE1979D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    return sub_1ADF5EB00(a2);
  }

  else
  {
    return v4 < v5;
  }
}

uint64_t sub_1AE197A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    return sub_1AE23BF8C();
  }

  else
  {
    return 0;
  }
}

void FinalizedTimestamp.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(v5 + 16);
    if ((~v6 & 0xF000000000000007) != 0 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 9)
    {
      v7 = v6 & 0xFFFFFFFFFFFFFFBLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    sub_1ADE058D4(v8, v9, a1, a4);
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001AE25FB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

void FinalizedTimestamp.encode(to:)()
{
  v2 = sub_1ADDF66A8(v0);
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(v0 + *(v3 + 20));
  sub_1ADE71C08(v3, v5, v6);
  if (!v1)
  {
    swift_beginAccess();

    sub_1AE1B6B44(v2, v4);
    swift_endAccess();
  }
}

void sub_1AE197BC4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1ADDF66A8(v2);
  v6 = *(v2 + *(a2 + 20));
  sub_1ADE71C08(v5, v7, v8);
  if (!v3)
  {
    swift_beginAccess();

    sub_1AE1B6B44(v5, v6);
    swift_endAccess();
  }
}

uint64_t sub_1AE197F48(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1ADED0548(v1 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, &v15 - v8);
  sub_1ADED0548(a1 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v6);
  v10 = *(v4 + 28);
  v11 = *&v6[v10];
  v12 = *&v9[v10];
  if (v11 == v12)
  {
    v13 = sub_1ADF5EB00(v6);
  }

  else
  {
    v13 = v11 < v12;
  }

  sub_1ADE173B8(v6);
  sub_1ADE173B8(v9);
  return v13 & 1;
}

id sub_1AE198198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCFinalizedTimestamp(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AE1981D0()
{
  result = qword_1EB5B8F18[0];
  if (!qword_1EB5B8F18[0])
  {
    type metadata accessor for FinalizedTimestamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B8F18);
  }

  return result;
}

void sub_1AE198234(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v8 >= v7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v54 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F35C(0, v9, 0);
  v10 = v54;
  v49 = v8;
  v50 = v7;
  v47 = a2;
  v48 = v9;
  v46 = a1;
  if (v9)
  {
    v11 = (a1 + 32);
    v12 = (a2 + 32);
    v13 = v9;
    v14 = v7;
    while (v14)
    {
      if (!v8)
      {
        goto LABEL_26;
      }

      v15 = v10;
      v52 = v12;
      v53 = v11;
      v16 = *v11;
      v17 = *v12;

      v18 = a3(v16, v17);
      if (v4)
      {
LABEL_23:

        return;
      }

      v21 = v18;
      v22 = v19;
      v23 = v20;

      v10 = v15;
      v55 = v15;
      v24 = *(v15 + 16);
      v25 = *(v10 + 24);
      v26 = v24 + 1;
      v27 = v13;
      if (v24 >= v25 >> 1)
      {
        sub_1ADE6F35C((v25 > 1), v24 + 1, 1);
        v26 = v24 + 1;
        v10 = v55;
      }

      *(v10 + 16) = v26;
      v28 = (v10 + 24 * v24);
      --v8;
      v28[4] = v21;
      v28[5] = v22;
      v28[6] = v23;
      --v14;
      v12 = v52 + 1;
      v11 = v53 + 1;
      --v13;
      v4 = 0;
      if (v27 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_12:
    v30 = v49;
    v29 = v50;
    if (v50 <= v49)
    {
      return;
    }

    v31 = v48;
    v32 = v10;
    while (v31 < v29)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_28;
      }

      if (v30 == v31)
      {
        return;
      }

      if (v31 >= v30)
      {
        goto LABEL_29;
      }

      v34 = *(v46 + 32 + 8 * v31);
      v35 = *(v47 + 32 + 8 * v31);

      v36 = a3(v34, v35);
      if (v4)
      {
        goto LABEL_23;
      }

      v39 = v36;
      v40 = v37;
      v41 = v38;

      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      v44 = v32;
      if (v43 >= v42 >> 1)
      {
        sub_1ADE6F35C((v42 > 1), v43 + 1, 1);
        v44 = v32;
      }

      *(v44 + 16) = v43 + 1;
      v45 = (v44 + 24 * v43);
      v45[4] = v39;
      v45[5] = v40;
      v45[6] = v41;
      ++v31;
      v30 = v49;
      v29 = v50;
      v4 = 0;
      v32 = v44;
      if (v33 == v50)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1AE1984E0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[6];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_13:
    v1 = sub_1ADDE4ECC(0, v1[2] + 1, 1, v1);
    v3[2] = v1;
    goto LABEL_8;
  }

  v1[6] = v11;
  swift_beginAccess();
  v12 = v1[3];
  if (*(v12 + 16))
  {

    v13 = sub_1ADDDF300(a1);
    if (v14)
    {
      v2 = *(*(v12 + 56) + 8 * v13);

      if ((v2 & 0x8000000000000000) == 0)
      {
        return v2;
      }

      __break(1u);
    }
  }

  v2 = *(v3[2] + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v3[3];
  v3[3] = 0x8000000000000000;
  sub_1ADDFC5B0(v2, a1, isUniquelyReferenced_nonNull_native);
  v3[3] = v21;
  swift_endAccess();
  (*(v6 + 16))(v8, a1, v5);
  v1 = v3[2];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v1;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v18 = v1[2];
  v17 = v1[3];
  if (v18 >= v17 >> 1)
  {
    v1 = sub_1ADDE4ECC((v17 > 1), v18 + 1, 1, v1);
  }

  v1[2] = v18 + 1;
  (*(v6 + 32))(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v8, v5);
  v3[2] = v1;
  return v2;
}

uint64_t sub_1AE198720(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1AE23CDBC();
  v8 = *(v2 + 7);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
LABEL_13:
    v2 = sub_1ADE55240(0, *(v2 + 2) + 1, 1, v2);
    *(v4 + 4) = v2;
    goto LABEL_8;
  }

  *(v2 + 7) = v10;
  swift_beginAccess();
  v11 = *(v2 + 5);
  if (*(v11 + 16))
  {

    v12 = sub_1ADDD7A10(a1, a2);
    if (v13)
    {
      v3 = *(*(v11 + 56) + 8 * v12);

      if ((v3 & 0x8000000000000000) == 0)
      {
        return v3;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v3 = *(*(v4 + 4) + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + 5);
  *(v4 + 5) = 0x8000000000000000;
  sub_1ADEBF270(v3, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 5) = v20;
  swift_endAccess();
  swift_beginAccess();
  v2 = *(v4 + 4);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 4) = v2;
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_1ADE55240((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *(v4 + 4) = v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1AE1988E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    inited = a2;
  }

  else
  {
    type metadata accessor for Proto4_CRDT._StorageClass();
    inited = swift_initStaticObject();
  }

  v14 = sub_1AE1990E0(inited, v12, v13);

  if (v4)
  {
    v62 = 0xF000000000000007;
    v63 = 0;
    v64 = 0;
    v65 = MEMORY[0x1E69E7CC0];
    v67 = xmmword_1AE241910;
    v66 = MEMORY[0x1E69E7CC0];
    v68 = MEMORY[0x1E69E7CC0];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    return sub_1ADE6AF00(&v62);
  }

  else
  {
    v48 = v14;
    v49 = v3;
    sub_1ADE73AC8(0xF000000000000007);
    v16 = *(a1 + 16);
    v47 = a3;
    if (v16)
    {
      v62 = MEMORY[0x1E69E7CC0];
      sub_1AE23DB1C();
      v17 = a1 + 32;
      do
      {

        sub_1AE19D1A0(v18);

        sub_1AE23DAEC();
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        v17 += 8;
        --v16;
      }

      while (v16);

      v19 = v62;
      a3 = v47;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = v49;
    v21 = *(*(v49 + 16) + 16);
    if (v21 >> 59)
    {
      __break(1u);
    }

    v46 = v19;
    v23 = sub_1ADDF6E48(16 * v21);
    v60 = v23;
    v61 = v22;
    v24 = *(v20 + 16);
    v25 = *(v24 + 16);
    if (v25)
    {
      v45[1] = *(v20 + 16);
      v45[2] = 0;
      v26 = v8;
      v28 = *(v51 + 16);
      v27 = v51 + 16;
      v29 = v24 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v50 = *(v51 + 72);
      v51 = v28;

      do
      {
        (v51)(v10, v29, v26);
        v62 = sub_1AE23BFCC();
        LOWORD(v63) = v30;
        BYTE2(v63) = v31;
        BYTE3(v63) = v32;
        BYTE4(v63) = v33;
        BYTE5(v63) = v34;
        BYTE6(v63) = v35;
        HIBYTE(v63) = v36;
        sub_1AE23BFCC();
        sub_1AE23BBCC();
        swift_allocObject();
        sub_1AE23BB6C();
        sub_1AE23BEEC();

        (*(v27 - 8))(v10, v26);
        v29 += v50;
        --v25;
      }

      while (v25);

      v23 = v60;
      v37 = v61;
      a3 = v47;
    }

    else
    {
      v37 = v22;
    }

    sub_1ADDD86D8(v23, v37);
    sub_1ADE73C1C(0, 0, 0, 0);
    sub_1ADDCC35C(0, 0xC000000000000000);
    sub_1ADE73B5C(0, 0, 0);
    v38 = v49;
    swift_beginAccess();
    v39 = *(v38 + 32);

    v40 = MEMORY[0x1E69E7CC0];
    sub_1ADE73C1C(v23, v37, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    sub_1ADDCC35C(v23, v37);

    sub_1ADE73B5C(v23, v37, v40);
    v53 = v48;
    *&v54 = 0;
    *(&v54 + 1) = v46;
    *(v55 + 8) = xmmword_1AE241910;
    *&v55[0] = v40;
    *(&v55[1] + 1) = v40;
    v56 = 0uLL;
    *&v57 = v23;
    *(&v57 + 1) = v37;
    *&v58 = v39;
    *(&v58 + 1) = v40;
    v59 = 0uLL;
    v62 = v48;
    v63 = 0;
    v64 = 0;
    v65 = v46;
    v67 = xmmword_1AE241910;
    v66 = v40;
    v68 = v40;
    v69 = 0uLL;
    *&v70 = v23;
    *(&v70 + 1) = v37;
    *&v71 = v39;
    *(&v71 + 1) = v40;
    v72 = 0uLL;
    sub_1ADE73B00(&v53, &v52);
    result = sub_1ADE6AF00(&v62);
    v41 = v57;
    a3[4] = v56;
    a3[5] = v41;
    v42 = v59;
    a3[6] = v58;
    a3[7] = v42;
    v43 = v54;
    *a3 = v53;
    a3[1] = v43;
    v44 = v55[1];
    a3[2] = v55[0];
    a3[3] = v44;
  }

  return result;
}

double sub_1AE198E38(unint64_t *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  v5 = a1[10];
  v4 = a1[11];
  if (v2)
  {
    v6 = a1[10];
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = a1[11];
  }

  else
  {
    v7 = 0xC000000000000000;
  }

  sub_1ADE73C1C(a1[10], v4, v2, v3);
  sub_1ADE73C1C(v5, v4, v2, v3);
  sub_1ADDD86D8(v6, v7);
  sub_1ADDCC35C(v6, v7);

  v8 = sub_1ADDE70B0(v6, v7);
  if (v20)
  {
    sub_1ADE73B5C(v5, v4, v2);
    sub_1ADDCC35C(v6, v7);
  }

  else
  {
    v10 = v8;
    sub_1ADDCC35C(v6, v7);
    *(v19 + 16) = v10;

    if (v2)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    if (!v2)
    {
      v4 = 0xC000000000000000;
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADDCC35C(v11, v4);

    swift_beginAccess();
    *(v19 + 32) = v2;

    inited = *a1;
    if (*a1 >> 62 || (inited & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    else
    {
    }

    sub_1AE1997B0(inited, v13, v14);

    v15 = a1[3];
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_1AE23DB1C();
      v17 = v15 + 32;
      do
      {

        sub_1AE19D5F8(v18);

        sub_1AE23DAEC();
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_1AE1990E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (v4 == 255)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v5 = xmmword_1AE253DB0;
LABEL_3:
    *(v5 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v66 = inited;
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 2u);
        sub_1AE19B8D0(v6, v7, v9, v8, v56);
        sub_1ADE52030(v6, v7, v9, v8, v11, v10, 2u);
        if (v3)
        {
          return v4;
        }

        v4 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = swift_allocObject();
          v22 = *(v4 + 16);
          *(v21 + 16) = v22;
          sub_1ADE5215C(v22);

          v4 = v21;
        }

        v23 = swift_allocObject();
        v24 = v56[3];
        *(v23 + 48) = v56[2];
        *(v23 + 64) = v24;
        *(v23 + 80) = v56[4];
        v25 = v56[1];
        *(v23 + 16) = v56[0];
        *(v23 + 32) = v25;
        v20 = v23 | 0x2000000000000000;
      }

      else
      {
        sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 3u);
        v54 = sub_1AE19C22C(v6);
        v4 = v41;
        v43 = v42;
        sub_1ADE52030(v6, v7, v9, v8, v11, v10, 3u);
        if (v3)
        {
          return v4;
        }

        v44 = v4;
        v4 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = swift_allocObject();
          v46 = *(v66 + 16);
          *(v45 + 16) = v46;
          sub_1ADE5215C(v46);

          v4 = v45;
        }

        v47 = swift_allocObject();
        *(v47 + 16) = v54;
        *(v47 + 24) = v44;
        *(v47 + 32) = v43;
        v20 = v47 | 0x3000000000000000;
      }
    }

    else if (v4)
    {
      sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 1u);
      sub_1AE19B8D0(v6, v7, v9, v8, v55);
      sub_1ADE52030(v6, v7, v9, v8, v11, v10, 1u);
      if (v3)
      {
        return v4;
      }

      v4 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = swift_allocObject();
        v37 = *(v4 + 16);
        *(v36 + 16) = v37;
        sub_1ADE5215C(v37);

        v4 = v36;
      }

      v38 = swift_allocObject();
      v39 = v55[3];
      *(v38 + 48) = v55[2];
      *(v38 + 64) = v39;
      *(v38 + 80) = v55[4];
      v40 = v55[1];
      *(v38 + 16) = v55[0];
      *(v38 + 32) = v40;
      v20 = v38 | 0x1000000000000000;
    }

    else
    {
      sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 0);
      v17 = sub_1AE19B33C(v6);
      sub_1ADE52030(v6, v7, v9, v8, v11, v10, 0);
      if (v3)
      {
        return v4;
      }

      v4 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = swift_allocObject();
        v19 = *(v66 + 16);
        *(v18 + 16) = v19;
        sub_1ADE5215C(v19);

        v4 = v18;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = v17;
    }
  }

  else if (v4 <= 5)
  {
    if (v4 != 4)
    {
      v15 = 0x80000001AE262DC0;
      sub_1ADE42E40(inited, v13, v14);
      swift_allocError();
      v16 = 0xD000000000000018;
      goto LABEL_43;
    }

    *&v61 = v6;
    *(&v61 + 1) = v7;
    v62 = v9;
    v63 = v8;
    v64 = v11;
    v65 = v10;
    sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 4u);
    sub_1AE19C508(&v61, v57);
    sub_1ADE52030(v6, v7, v9, v8, v11, v10, 4u);
    if (v3)
    {
      return v4;
    }

    v4 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = swift_allocObject();
      v27 = *(v4 + 16);
      *(v26 + 16) = v27;
      sub_1ADE5215C(v27);

      v4 = v26;
    }

    v28 = swift_allocObject();
    v29 = v57[5];
    *(v28 + 80) = v57[4];
    *(v28 + 96) = v29;
    *(v28 + 112) = v58;
    v30 = v57[1];
    *(v28 + 16) = v57[0];
    *(v28 + 32) = v30;
    v31 = v57[3];
    v20 = v28 | 0x4000000000000000;
    *(v28 + 48) = v57[2];
    *(v28 + 64) = v31;
  }

  else if (v4 == 6)
  {
    sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 6u);
    sub_1AE19C9C4(v6, v7, v9, v8, v59);
    sub_1ADE52030(v6, v7, v9, v8, v11, v10, 6u);
    v4 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = swift_allocObject();
      v33 = *(v4 + 16);
      *(v32 + 16) = v33;
      sub_1ADE5215C(v33);

      v4 = v32;
    }

    v34 = swift_allocObject();
    v35 = v59[1];
    *(v34 + 16) = v59[0];
    *(v34 + 32) = v35;
    *(v34 + 48) = v60;
    v20 = v34 | 0x7000000000000000;
  }

  else
  {
    if (v4 == 7)
    {
      v15 = 0x80000001AE262DA0;
      sub_1ADE42E40(inited, v13, v14);
      swift_allocError();
      v16 = 0xD00000000000001ALL;
LABEL_43:
      *v5 = v16;
      *(v5 + 8) = v15;
      goto LABEL_3;
    }

    sub_1ADE51F04(v6, v7, v9, v8, v11, v10, 8u);
    v48 = sub_1AE19CDB0(v6);
    sub_1ADE52030(v6, v7, v9, v8, v11, v10, 8u);
    v4 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = swift_allocObject();
      v50 = *(v66 + 16);
      *(v49 + 16) = v50;
      sub_1ADE5215C(v50);

      v4 = v49;
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    v20 = v51 | 0x9000000000000000;
  }

  v52 = *(v4 + 16);
  *(v4 + 16) = v20;
  sub_1ADE52174(v52);
  return v4;
}

uint64_t sub_1AE1997B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    type metadata accessor for Proto4_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v4 = inited;
    v12 = v5 >> 60;
    if ((v5 >> 60) > 2)
    {
      if (v12 == 3)
      {
        v39 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v40 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        sub_1ADE5215C(v5);

        sub_1AE198234(v39, v40, sub_1AE19E3D4);
        v42 = v41;

        if (!v3)
        {
          v91 = v42;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v23 = *(v4 + 16);
            v24 = *(v4 + 24);
            v25 = *(v4 + 32);
            v26 = *(v4 + 40);
            v27 = *(v4 + 48);
            v28 = *(v4 + 56);
            v29 = *(v4 + 64);
          }

          else
          {
            v64 = swift_allocObject();
            v66 = *(v4 + 16);
            v65 = *(v4 + 24);
            v76 = *(v4 + 40);
            v80 = *(v4 + 32);
            v68 = *(v4 + 48);
            v67 = *(v4 + 56);
            v69 = *(v4 + 64);
            sub_1ADE51F04(v66, v65, v80, v76, v68, v67, v69);
            *(v64 + 16) = v66;
            *(v64 + 24) = v65;
            *(v64 + 32) = v80;
            *(v64 + 40) = v76;
            *(v64 + 48) = v68;
            *(v64 + 56) = v67;
            *(v64 + 64) = v69;
            sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

            v29 = v69;
            v28 = v67;
            v27 = v68;
            v26 = v76;
            v25 = v80;
            v24 = v65;
            v23 = v66;
            v4 = v64;
          }

          *(v4 + 16) = v91;
          *(v4 + 24) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 56) = 0;
          v50 = 3;
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v12 == 7)
      {
        v30 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v86[0] = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v86[1] = v30;
        v87 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v31 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v89 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v90[0] = v31;
        sub_1ADE5215C(v5);
        sub_1ADDCEE40(&v89, v85, &qword_1EB5BDA20, &qword_1AE253910);
        sub_1ADDCEE40(v90, v85, &qword_1EB5BDA20, &qword_1AE253910);
        sub_1AE19CB60(v86);
        v33 = v32;
        v91 = v34;
        v82 = v36;
        v84 = v35;
        sub_1ADDCEDE0(&v89, &qword_1EB5BDA20, &qword_1AE253910);
        sub_1ADDCEDE0(v90, &qword_1EB5BDA20, &qword_1AE253910);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = *(v4 + 16);
          v24 = *(v4 + 24);
          v25 = *(v4 + 32);
          v26 = *(v4 + 40);
          v27 = *(v4 + 48);
          v28 = *(v4 + 56);
          v29 = *(v4 + 64);
        }

        else
        {
          v77 = v33;
          v43 = swift_allocObject();
          v44 = *(v4 + 16);
          v45 = *(v4 + 24);
          v71 = *(v4 + 40);
          v73 = *(v4 + 32);
          v46 = *(v4 + 48);
          v47 = *(v4 + 56);
          v48 = *(v4 + 64);
          sub_1ADE51F04(v44, v45, v73, v71, v46, v47, v48);
          *(v43 + 16) = v44;
          *(v43 + 24) = v45;
          *(v43 + 32) = v73;
          *(v43 + 40) = v71;
          *(v43 + 48) = v46;
          *(v43 + 56) = v47;
          *(v43 + 64) = v48;
          sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

          v29 = v48;
          v28 = v47;
          v27 = v46;
          v26 = v71;
          v25 = v73;
          v24 = v45;
          v23 = v44;
          v4 = v43;
          v33 = v77;
        }

        v49 = v91;
        *(v4 + 16) = v33;
        *(v4 + 24) = v49;
        *(v4 + 32) = v84;
        *(v4 + 40) = v82;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        v50 = 6;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v12)
      {
        sub_1ADE5215C(v5);

        v38 = sub_1AE19B610(v37);

        if (!v3)
        {
          v91 = v38;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v23 = *(v4 + 16);
            v24 = *(v4 + 24);
            v25 = *(v4 + 32);
            v26 = *(v4 + 40);
            v27 = *(v4 + 48);
            v28 = *(v4 + 56);
            v29 = *(v4 + 64);
          }

          else
          {
            v58 = swift_allocObject();
            v59 = *(v4 + 16);
            v60 = *(v4 + 24);
            v75 = *(v4 + 40);
            v79 = *(v4 + 32);
            v61 = *(v4 + 48);
            v62 = *(v4 + 56);
            v63 = *(v4 + 64);
            sub_1ADE51F04(v59, v60, v79, v75, v61, v62, v63);
            *(v58 + 16) = v59;
            *(v58 + 24) = v60;
            *(v58 + 32) = v79;
            *(v58 + 40) = v75;
            *(v58 + 48) = v61;
            *(v58 + 56) = v62;
            *(v58 + 64) = v63;
            sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

            v29 = v63;
            v28 = v62;
            v27 = v61;
            v26 = v75;
            v25 = v79;
            v24 = v60;
            v23 = v59;
            v4 = v58;
          }

          *(v4 + 16) = v91;
          *(v4 + 24) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 49) = 0u;
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      if (v12 == 2)
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v88[1] = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v88[2] = v13;
        v14 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v88[3] = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v88[4] = v14;
        v88[0] = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1ADE5215C(v5);
        sub_1ADFAEE10(v88, v85);
        sub_1AE19BD90(v88);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        sub_1ADFAECE8(v88);
        if (!v3)
        {
          v81 = v22;
          v83 = v20;
          v91 = v18;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v23 = *(v4 + 16);
            v24 = *(v4 + 24);
            v25 = *(v4 + 32);
            v26 = *(v4 + 40);
            v27 = *(v4 + 48);
            v28 = *(v4 + 56);
            v29 = *(v4 + 64);
          }

          else
          {
            v78 = v16;
            v51 = swift_allocObject();
            v52 = *(v4 + 16);
            v53 = *(v4 + 24);
            v72 = *(v4 + 40);
            v74 = *(v4 + 32);
            v54 = *(v4 + 48);
            v55 = *(v4 + 56);
            v56 = *(v4 + 64);
            sub_1ADE51F04(v52, v53, v74, v72, v54, v55, v56);
            *(v51 + 16) = v52;
            *(v51 + 24) = v53;
            *(v51 + 32) = v74;
            *(v51 + 40) = v72;
            *(v51 + 48) = v54;
            *(v51 + 56) = v55;
            *(v51 + 64) = v56;
            sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

            v29 = v56;
            v28 = v55;
            v27 = v54;
            v26 = v72;
            v25 = v74;
            v24 = v53;
            v23 = v52;
            v4 = v51;
            v16 = v78;
          }

          v57 = v91;
          *(v4 + 16) = v16;
          *(v4 + 24) = v57;
          *(v4 + 32) = v83;
          *(v4 + 40) = v81;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
          v50 = 2;
LABEL_30:
          *(v4 + 64) = v50;
LABEL_31:
          sub_1ADE52030(v23, v24, v25, v26, v27, v28, v29);
          sub_1ADE52174(v5);
          return v4;
        }

LABEL_19:
        sub_1ADE52174(v5);
        return v4;
      }
    }

    v6 = 0x80000001AE262D40;
    sub_1ADE42E40(inited, v10, v11);
    swift_allocError();
    v8 = 0xD00000000000001FLL;
    goto LABEL_3;
  }

  v6 = 0x80000001AE262D80;
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  v8 = 0xD000000000000011;
LABEL_3:
  *v7 = v8;
  *(v7 + 8) = v6;
  *(v7 + 16) = 0;
  swift_willThrow();
  return v4;
}

uint64_t sub_1AE199E14(uint64_t inited)
{
  v2 = sub_1AE23C2FC();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v77 - v5;
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(inited + v14, v6, &qword_1EB5BA028, &qword_1AE241808);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v15 = sub_1ADDCEDE0(v6, &qword_1EB5BA028, &qword_1AE241808);
    sub_1ADE42E40(v15, v16, v17);
    swift_allocError();
    *v18 = xmmword_1AE253DB0;
    *(v18 + 16) = 0;
    swift_willThrow();
    return inited;
  }

  sub_1ADEA84F0(v6, v13);
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADEA8554(v13, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v13;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1ADEA8494(v13);
        v51 = *v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = swift_allocObject();
          v53 = *(inited + 16);
          *(v52 + 16) = v53;
          sub_1ADE51B2C(v53);

          inited = v52;
        }

        v54 = swift_allocObject();
        *(v54 + 16) = v51;
        v25 = v54 | 4;
      }

      else
      {
        sub_1ADEA8494(v13);
        v21 = *v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = swift_allocObject();
          v23 = *(inited + 16);
          *(v22 + 16) = v23;
          sub_1ADE51B2C(v23);

          inited = v22;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v21;
        v25 = v24 | 0x2000000000000000;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v37 = sub_1AE198720(*v10, v10[1]);

      sub_1ADEA8494(v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = swift_allocObject();
        v39 = *(inited + 16);
        *(v38 + 16) = v39;
        sub_1ADE51B2C(v39);

        inited = v38;
      }

      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      v25 = v40 | 0x1000000000000000;
      goto LABEL_35;
    }

    sub_1ADEA8494(v13);
    v56 = *v10;
    v57 = v10[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = swift_allocObject();
      v59 = *(inited + 16);
      *(v58 + 16) = v59;
      sub_1ADE51B2C(v59);

      inited = v58;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v56;
    *(v36 + 24) = v57;
    goto LABEL_33;
  }

  v26 = v80;
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v63 = sub_1ADEA8494(v10);
      sub_1ADE42E40(v63, v64, v65);
      swift_allocError();
      *v66 = 0xD000000000000019;
      *(v66 + 8) = 0x80000001AE262D60;
      *(v66 + 16) = 0;
      swift_willThrow();
      sub_1ADEA8494(v13);
      return inited;
    }

    v41 = v13;
    v42 = *v10;
    type metadata accessor for Proto_Optional._StorageClass();
    v43 = swift_initStaticObject();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = swift_allocObject();
      v45 = *(inited + 16);
      *(v44 + 16) = v45;
      sub_1ADE51B2C(v45);

      inited = v44;
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    v47 = v46 | 0x4000000000000000;
    v48 = *(inited + 16);
    *(inited + 16) = v47;
    sub_1ADE51B48(v48);
    swift_beginAccess();
    if (!*(v42 + 16))
    {

      sub_1ADEA8494(v13);
      return inited;
    }

    v50 = sub_1AE199E14(v49);
    if (v26)
    {
      sub_1ADEA8494(v13);

      return inited;
    }

    v70 = v50;

    v71 = *(inited + 16);
    if ((~v71 & 0xF000000000000007) != 0)
    {
      v80 = v70;

      v70 = v80;
      if (((v71 >> 59) & 0x1E | (v71 >> 2) & 1) == 8)
      {
        sub_1ADEA8494(v41);
        v43 = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

LABEL_47:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = swift_allocObject();
          *(v72 + 16) = 0;
          swift_beginAccess();
          v73 = *(v43 + 16);
          swift_beginAccess();
          *(v72 + 16) = v73;

          v43 = v72;
        }

        swift_beginAccess();
        *(v43 + 16) = v70;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = swift_allocObject();
          v75 = *(inited + 16);
          *(v74 + 16) = v75;
          sub_1ADE51B2C(v75);

          inited = v74;
        }

        v76 = swift_allocObject();
        *(v76 + 16) = v43;
        v25 = v76 | 0x4000000000000000;
        goto LABEL_35;
      }
    }

    else
    {
    }

    sub_1ADEA8494(v41);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v55 = sub_1AE19D1A0(*v10);
    if (v26)
    {
      sub_1ADEA8494(v13);

      return inited;
    }

    v67 = v55;

    sub_1ADEA8494(v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = swift_allocObject();
      v69 = *(inited + 16);
      *(v68 + 16) = v69;
      sub_1ADE51B2C(v69);

      inited = v68;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v67;
    v60 = 0x3000000000000004;
    goto LABEL_34;
  }

  v27 = v77;
  v28 = v78;
  v29 = v79;
  (*(v78 + 32))(v77, v10, v79);
  sub_1ADE725D0();
  v30 = sub_1AE23C51C();
  if (!v26)
  {
    v32 = v30;
    v33 = v31;
    (*(v28 + 8))(v27, v29);
    sub_1ADEA8494(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = swift_allocObject();
      v35 = *(inited + 16);
      *(v34 + 16) = v35;
      sub_1ADE51B2C(v35);

      inited = v34;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    *(v36 + 24) = v33;
LABEL_33:
    v60 = 0x1000000000000004;
LABEL_34:
    v25 = v36 | v60;
LABEL_35:
    v61 = *(inited + 16);
    *(inited + 16) = v25;
    sub_1ADE51B48(v61);
    return inited;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE19A6F0(uint64_t a1)
{
  v5 = sub_1AE23C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v14 = (&v72 - v13);
  v15 = *(a1 + 16);
  if ((~v15 & 0xF000000000000007) == 0)
  {
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v16 = xmmword_1AE253DB0;
    *(v16 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  v72 = v2;
  v17 = qword_1EB5B9970;

  if (v17 != -1)
  {
    result = swift_once();
  }

  v3 = qword_1EB5BA550;
  v21 = (v15 >> 59) & 0x1E | (v15 >> 2) & 1;
  if (v21 <= 3)
  {
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        v31 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        sub_1ADDD86D8(v31, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto4_Value._StorageClass(0);
          v33 = swift_allocObject();
          v34 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          v35 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
          (*(*(v35 - 8) + 56))(v33 + v34, 1, 1, v35);
          v36 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          swift_beginAccess();
          sub_1ADDCEE40(v3 + v36, v14, &qword_1EB5BA028, &qword_1AE241808);
          swift_beginAccess();
          sub_1ADEA8654(v14, v33 + v34);
          swift_endAccess();

          v3 = v33;
        }

        *v14 = v31;
        v14[1] = v32;
        v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        goto LABEL_37;
      }

      v41 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if ((v41 & 0x8000000000000000) == 0)
      {
        result = swift_beginAccess();
        v42 = *(v1 + 32);
        if (v41 < *(v42 + 16))
        {
          v43 = v42 + 16 * v41;
          v44 = *(v43 + 32);
          v45 = *(v43 + 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto4_Value._StorageClass(0);
            v46 = swift_allocObject();
            v47 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
            v48 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
            (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
            v49 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
            swift_beginAccess();
            sub_1ADDCEE40(v3 + v49, v14, &qword_1EB5BA028, &qword_1AE241808);
            swift_beginAccess();
            sub_1ADEA8654(v14, v46 + v47);
            swift_endAccess();

            v3 = v46;
          }

          *v14 = v44;
          v14[1] = v45;
          v50 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v50 - 8) + 56))(v14, 0, 1, v50);
          v51 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          swift_beginAccess();
          sub_1ADEA8654(v14, v3 + v51);
          goto LABEL_39;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_42;
        }

        v25 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto4_Value._StorageClass(0);
          v26 = swift_allocObject();
          v27 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          v28 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
          (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
          v29 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          swift_beginAccess();
          sub_1ADDCEE40(v3 + v29, v14, &qword_1EB5BA028, &qword_1AE241808);
          swift_beginAccess();
          sub_1ADEA8654(v14, v26 + v27);
          swift_endAccess();

          v3 = v26;
        }

        *v14 = v25;
        v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        goto LABEL_37;
      }

      v40 = *(v15 + 16);
      if ((v40 & 0x8000000000000000) == 0)
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          *v14 = v40;
          v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
LABEL_37:
          swift_storeEnumTagMultiPayload();
          (*(*(v30 - 8) + 56))(v14, 0, 1, v30);
          v56 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
LABEL_38:
          swift_beginAccess();
          sub_1ADEA8654(v14, v3 + v56);
LABEL_39:
          swift_endAccess();
          sub_1ADE51B48(v15);
          return v3;
        }

LABEL_35:
        type metadata accessor for Proto4_Value._StorageClass(0);
        v52 = swift_allocObject();
        v53 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        v54 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        (*(*(v54 - 8) + 56))(v52 + v53, 1, 1, v54);
        v55 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        sub_1ADDCEE40(v3 + v55, v14, &qword_1EB5BA028, &qword_1AE241808);
        swift_beginAccess();
        sub_1ADEA8654(v14, v52 + v53);
        swift_endAccess();

        v3 = v52;
        goto LABEL_36;
      }

      __break(1u);
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v21 <= 7)
  {
    if (v21 != 4)
    {
      if (v21 != 7)
      {
        goto LABEL_42;
      }

      v38 = v72;
      v39 = sub_1AE19D5F8(v37);

      if (v38)
      {

LABEL_45:
        sub_1ADE51B48(v15);
        return v3;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto4_Value._StorageClass(0);
        v68 = swift_allocObject();
        v69 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        v70 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        (*(*(v70 - 8) + 56))(v68 + v69, 1, 1, v70);
        v71 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        sub_1ADDCEE40(v3 + v71, v14, &qword_1EB5BA028, &qword_1AE241808);
        swift_beginAccess();
        sub_1ADEA8654(v14, v68 + v69);
        swift_endAccess();

        v3 = v68;
      }

      *v14 = v39;
      v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
      goto LABEL_37;
    }

    v40 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v21 == 8)
  {
    sub_1ADE42E40(result, v19, v20);
    swift_allocError();
    *v23 = xmmword_1AE253DC0;
LABEL_44:
    *(v23 + 16) = 0;
    swift_willThrow();
    goto LABEL_45;
  }

  if (v21 != 10)
  {
    if (v21 == 11)
    {
      v22 = 0x80000001AE262D60;
      sub_1ADE42E40(result, v19, v20);
      swift_allocError();
      v24 = 0xD000000000000019;
LABEL_43:
      *v23 = v24;
      *(v23 + 8) = v22;
      goto LABEL_44;
    }

LABEL_42:
    v22 = 0x80000001AE262D40;
    sub_1ADE42E40(result, v19, v20);
    swift_allocError();
    v24 = 0xD00000000000001FLL;
    goto LABEL_43;
  }

  v57 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v58 = *(v57 + 16);
  if (!v58)
  {
    goto LABEL_61;
  }

  if (v58 == 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v59 = *(*(v57 + 40) + 16);
  if ((~v59 & 0xF000000000000007) == 0 || ((v59 >> 59) & 0x1E | (v59 >> 2) & 1) != 4)
  {
LABEL_53:

    sub_1AE23C2DC();
    p_vtable = (_TtCV9Coherence15Proto_ReferenceP33_8F93C82C9C5F20EAB9E21F7119431FBB13_StorageClass + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto4_Value._StorageClass(0);
      v62 = swift_allocObject();
      v63 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
      v64 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
      (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
      v65 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
      swift_beginAccess();
      sub_1ADDCEE40(v3 + v65, v14, &qword_1EB5BA028, &qword_1AE241808);
      swift_beginAccess();
      v66 = v62 + v63;
      p_vtable = _TtCV9Coherence15Proto_ReferenceP33_8F93C82C9C5F20EAB9E21F7119431FBB13_StorageClass.vtable;
      sub_1ADEA8654(v14, v66);
      swift_endAccess();

      v3 = v62;
    }

    (*(v6 + 32))(v14, v8, v5);
    v67 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v67 - 8) + 56))(v14, 0, 1, v67);
    v56 = p_vtable[55];
    goto LABEL_38;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  if (v60 >= 0xFFFFFFFF80000000)
  {
    if (v60 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    goto LABEL_53;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1AE19B33C(void *a1)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = type metadata accessor for Proto_Register._StorageClass();
  inited = swift_initStaticObject();
  swift_beginAccess();
  v9 = a1[4];
  v10 = a1[5];
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1[4];
  }

  if (v10 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = a1[5];
  }

  if (v10 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1[6];
  }

  v22 = v13;
  sub_1ADDE0F78(v9, v10);
  sub_1ADDD86D8(v11, v12);
  sub_1ADDFE348(v11, v12, v14);
  v23 = v2;
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v24 = v1;
    v15 = sub_1AE1984E0(v7);
    (*(v5 + 8))(v7, v4);
    sub_1ADDCC35C(v11, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE8D20(inited);
    }

    swift_beginAccess();
    v16 = v22;
    *(inited + 16) = v15;
    *(inited + 24) = v16;
    *(inited + 32) = 0;
    swift_beginAccess();
    if (a1[7])
    {
      v17 = a1[7];
    }

    else
    {
      if (qword_1EB5B9970 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB5BA550;
    }

    v18 = v23;
    v19 = sub_1AE199E14(v17);

    if (v18)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE8D20(inited);
      }

      swift_beginAccess();
      *(inited + 40) = v19;
    }

    return inited;
  }

  return result;
}

void *sub_1AE19B610(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = type metadata accessor for Proto4_Register._StorageClass();
  inited = swift_initStaticObject();
  result = swift_beginAccess();
  v11 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = *(v3 + 16);
  if (v11 >= *(v13 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v14 = (*(v6 + 16))(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);
  v15 = sub_1ADDD8E0C(v14);
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  sub_1ADDCC35C(0, 0xC000000000000000);
  sub_1ADDD86D8(v15, v17);
  sub_1ADDCC35C(v15, v17);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADE9A17C(inited);
  }

  swift_beginAccess();
  v18 = inited[4];
  v19 = inited[5];
  inited[4] = v15;
  inited[5] = v17;
  inited[6] = v12;
  sub_1ADDE158C(v18, v19);
  swift_beginAccess();
  if (*(a1 + 40))
  {
    v20 = *(a1 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v20 = swift_initStaticObject();
  }

  v21 = sub_1AE19A6F0(v20);

  if (v2)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADE9A17C(inited);
    }

    swift_beginAccess();
    inited[7] = v21;
  }

  return inited;
}

uint64_t sub_1AE19B8D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v49 = a5;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDD86D8(a1, a2);
  sub_1ADDFE348(a1, a2, v15);
  v16 = v6;
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v50 = sub_1AE1984E0(v14);
  (*(v12 + 8))(v14, v11);
  v17 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v51 = v5;
  v19 = sub_1AE19CF10(v18);
  v21 = v20;

  sub_1ADE42CB8(0, 0);
  v22 = *(a3 + 16);
  if (!v22)
  {
    v23 = MEMORY[0x1E69E7CC0];

LABEL_22:
    *&v55 = v50;
    *(&v55 + 1) = v23;
    *&v56 = v17;
    *(&v56 + 1) = v19;
    *&v58 = 0;
    v57 = v21;
    BYTE8(v58) = 1;
    *(&v58 + 9) = *v71;
    HIDWORD(v58) = *&v71[3];
    v59 = 0uLL;
    v60 = v50;
    v61 = v23;
    v62 = v17;
    v63 = v19;
    v65 = 0;
    v66 = 0;
    v64 = v21;
    v67 = 1;
    *v68 = *v71;
    *&v68[3] = *&v71[3];
    v69 = 0;
    v70 = 0;
    sub_1ADFAEE10(&v55, v54);
    result = sub_1ADFAECE8(&v60);
    v43 = v58;
    v44 = v49;
    v49[2] = v57;
    v44[3] = v43;
    v44[4] = v59;
    v45 = v56;
    *v44 = v55;
    v44[1] = v45;
    return result;
  }

  v47 = v19;
  v48 = v21;
  *&v55 = v17;
  sub_1ADE6F03C(0, v22, 0);
  v23 = v55;
  v24 = (a3 + 48);
  while (1)
  {
    v72 = v23;
    v25 = *(v24 - 2);
    v26 = *(v24 - 1);
    v27 = *v24;
    if (v25)
    {

      swift_retain_n();

      v28 = sub_1AE199E14(v25);
      if (v16)
      {

        goto LABEL_25;
      }

      v29 = v28;

      if (!v26)
      {
LABEL_13:
        v53 = v16;
        v34 = 0;
        goto LABEL_14;
      }
    }

    else
    {

      v29 = 0;
      if (!v26)
      {
        goto LABEL_13;
      }
    }

    v33 = sub_1AE1990E0(v30, v31, v32);
    v53 = v16;
    if (v16)
    {
      break;
    }

    v34 = v33;

LABEL_14:
    v52 = v29;
    if (v27)
    {

      v36 = sub_1AE19CF10(v35);
      v38 = v37;
      swift_bridgeObjectRelease_n();
    }

    else
    {

      v36 = 0;
      v38 = 0;
    }

    v23 = v72;
    *&v55 = v72;
    v40 = *(v72 + 16);
    v39 = *(v72 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1ADE6F03C((v39 > 1), v40 + 1, 1);
      v23 = v55;
    }

    v24 += 3;
    *(v23 + 16) = v40 + 1;
    v41 = (v23 + 40 * v40);
    v41[4] = v52;
    v41[5] = v34;
    v41[6] = v36;
    v41[7] = v38;
    v41[8] = 0;
    --v22;
    v16 = v53;
    if (!v22)
    {

      v17 = MEMORY[0x1E69E7CC0];
      v21 = v48;
      v19 = v47;
      goto LABEL_22;
    }
  }

LABEL_25:
  v60 = v50;
  v61 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  v63 = v47;
  v64 = v48;
  v65 = 0;
  v66 = 0;
  v67 = 1;
  *v68 = *v71;
  *&v68[3] = *&v71[3];
  v69 = 0;
  v70 = 0;
  return sub_1ADFAECE8(&v60);
}

void sub_1AE19BD90(unint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = *(v4 + 16);
  if (v11 >= *(v12 + 16))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v13 = (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
  v14 = sub_1ADDD8E0C(v13);
  v48 = v15;
  v49 = v14;
  (*(v7 + 8))(v10, v6);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v17 = a1[3];
  v16 = a1[4];
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = a1[3];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  if (v17)
  {
    v20 = a1[4];
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v17, v16);
  v21 = v3;
  v22 = sub_1AE19DE8C(v19, v20, v4);
  v23 = v21;

  v24 = a1[1];
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_23:

    v46 = v48;
    v45 = v49;
    sub_1ADDD86D8(v49, v48);

    sub_1ADDCC35C(v45, v46);

    return;
  }

  v47 = v22;
  v55 = v18;
  v50 = v4;
  sub_1ADE6F37C(0, v25, 0);
  v26 = v50;
  v27 = v55;
  v28 = (v24 + 64);
  while (1)
  {
    v54 = v27;
    v29 = *(v28 - 3);
    v30 = *(v28 - 2);
    v31 = *(v28 - 1);
    v32 = *v28;
    if (*(v28 - 4))
    {
      break;
    }

    sub_1ADE42C78(v30, v31);

    v52 = 0;
    v53 = v32;
    if (v29)
    {
      goto LABEL_14;
    }

LABEL_18:
    v39 = 0;
    if (!v30)
    {
LABEL_19:
      v51 = v23;

      v41 = 0;
      goto LABEL_20;
    }

LABEL_16:

    sub_1ADE42C78(v30, v31);
    v40 = v23;
    v41 = sub_1AE19DE8C(v30, v31, v26);
    v51 = v40;

    sub_1ADE42CB8(v30, v31);

LABEL_20:
    v27 = v54;
    v55 = v54;
    v43 = *(v54 + 16);
    v42 = *(v54 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1ADE6F37C((v42 > 1), v43 + 1, 1);
      v26 = v50;
      v27 = v55;
    }

    v28 += 5;
    *(v27 + 16) = v43 + 1;
    v44 = (v27 + 24 * v43);
    v44[4] = v52;
    v44[5] = v39;
    v44[6] = v41;
    --v25;
    v23 = v51;
    if (!v25)
    {
      goto LABEL_23;
    }
  }

  sub_1ADE42C78(v30, v31);

  v34 = sub_1AE19A6F0(v33);
  if (v23)
  {

    sub_1ADE42CB8(v30, v31);

    goto LABEL_26;
  }

  v52 = v34;

  v26 = v50;
  v53 = v32;
  if (!v29)
  {
    goto LABEL_18;
  }

LABEL_14:

  v38 = sub_1AE1997B0(v35, v36, v37);
  if (!v23)
  {
    v39 = v38;

    v26 = v50;
    if (!v30)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_1ADE42CB8(v30, v31);

LABEL_26:

  sub_1ADDCC35C(v49, v48);
}

uint64_t sub_1AE19C22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = v1;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F00C(0, v2, 0);
  v4 = v19;
  v17 = a1;
  v5 = a1 + 48;
  v6 = v2;
  do
  {
    v7 = *(v5 - 16);
    v8 = *(v5 - 8);

    v9 = sub_1AE198720(v7, v8);

    v11 = *(v19 + 16);
    v10 = *(v19 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1ADE6F00C((v10 > 1), v11 + 1, 1);
    }

    v5 += 24;
    *(v19 + 16) = v11 + 1;
    *(v19 + 8 * v11 + 32) = v9;
    --v6;
  }

  while (v6);
  sub_1AE23DB1C();
  v12 = (v17 + 48);
  while (1)
  {
    if (*v12)
    {
      inited = *v12;
    }

    else
    {
      type metadata accessor for Proto4_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    swift_retain_n();

    sub_1AE1990E0(inited, v14, v15);
    if (v18)
    {
      break;
    }

    v12 += 3;

    sub_1AE23DAEC();
    sub_1AE23DB2C();
    sub_1AE23DB3C();
    sub_1AE23DAFC();
    if (!--v2)
    {
      return v4;
    }
  }

  return v4;
}

unint64_t sub_1AE19C454(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = swift_beginAccess();
  v7 = *(a3 + 32);
  if (*(v7 + 16) <= v6)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 16 * v6 + 32);

  sub_1AE1997B0(a2, v9, v10);
  if (v3)
  {
  }

  return v8;
}

uint64_t sub_1AE19C508@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = *a1;

  v5 = *(a1 + 2);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    *&v42 = MEMORY[0x1E69E7CC0];
    sub_1AE23DB1C();
    v8 = v5 + 32;
    while (1)
    {
      v9 = *v8;
      if (*(*v8 + 64))
      {
        type metadata accessor for Proto4_Register._StorageClass();
        inited = swift_initStaticObject();
      }

      else
      {
        inited = v9[2];
        sub_1ADE51F18(inited, v9[3], v9[4], v9[5], v9[6], v9[7], 0);
      }

      swift_beginAccess();
      v11 = *(inited + 56);
      if (v11)
      {
      }

      else
      {
        v12 = qword_1EB5B9970;

        if (v12 != -1)
        {
          swift_once();
        }

        v11 = qword_1EB5BA550;
      }

      sub_1AE199E14(v11);
      if (v3)
      {
        break;
      }

      sub_1AE23DAEC();
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v8 += 8;
      --v6;
      v3 = 0;
      if (!v6)
      {

        v14 = v42;
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }
    }

    v46 = v37;
    v47 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    return sub_1AE030800(&v46);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];

LABEL_16:
    if (*(a1 + 4))
    {
      v15 = *(a1 + 4);
    }

    else
    {
      v15 = v7;
    }

    *&v40 = sub_1AE19CF10(v15);
    *(&v40 + 1) = v16;

    sub_1ADE42CB8(0, 0);
    if (*(a1 + 5))
    {
      v17 = *(a1 + 5);
    }

    else
    {
      v17 = v7;
    }

    v18 = sub_1AE19CF10(v17);
    v38 = v19;
    v39 = v18;

    sub_1ADE42CB8(0, 0);
    v20 = *(a1 + 3);
    v21 = *(v20 + 16);
    if (v21)
    {
      *&v46 = v7;

      sub_1ADE6F05C(0, v21, 0);
      v22 = v7;
      v23 = (v20 + 40);
      do
      {
        v61 = v22;
        v25 = *v23;
        v24 = v23[1];
        v26 = *(v23 + 32);
        v56 = *(v23 - 2);
        v57 = v25;
        v58 = v24;
        v59 = *(v23 + 1);
        v60 = v26;

        sub_1AE19D930(&v56, v40, v39, v54);

        v22 = v61;

        *&v46 = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1ADE6F05C((v27 > 1), v28 + 1, 1);
          v22 = v46;
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + 72 * v28;
        *(v29 + 32) = v54[0];
        v30 = v54[1];
        v31 = v54[2];
        v32 = v54[3];
        *(v29 + 96) = v55;
        *(v29 + 64) = v31;
        *(v29 + 80) = v32;
        *(v29 + 48) = v30;
        v23 += 6;
        --v21;
      }

      while (v21);

      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v42 = v37;
    *&v43 = v14;
    *(&v43 + 1) = v22;
    *v44 = v7;
    *&v44[8] = v40;
    *&v44[24] = v39;
    *v45 = v38;
    memset(&v45[8], 0, 32);
    v46 = v37;
    v47 = v14;
    v48 = v22;
    v49 = v7;
    v50 = v40;
    *&v51 = v39;
    *(&v51 + 1) = v38;
    v52 = 0u;
    v53 = 0u;
    sub_1ADE51B64(&v42, v41);
    result = sub_1AE030800(&v46);
    v33 = *&v45[16];
    *(a2 + 64) = *v45;
    *(a2 + 80) = v33;
    *(a2 + 96) = *&v45[32];
    v34 = v43;
    *a2 = v42;
    *(a2 + 16) = v34;
    v35 = *&v44[16];
    *(a2 + 32) = *v44;
    *(a2 + 48) = v35;
  }

  return result;
}

uint64_t sub_1AE19C9C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDD86D8(a1, a2);
  sub_1ADDFE348(a1, a2, v14);
  v15 = sub_1AE1984E0(v13);
  (*(v11 + 8))(v13, v10);
  v16 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1AE19CF10(v17);
  v20 = v19;

  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = v16;
  }

  v22 = sub_1AE19CF10(v21);
  v24 = v23;

  *a5 = v15;
  a5[1] = v18;
  a5[2] = v20;
  a5[3] = v22;
  a5[4] = v24;
  return result;
}

void sub_1AE19CB60(unint64_t *a1)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v1 + 16);
  if (v9 >= *(v10 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v11 = (*(v5 + 16))(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v4, v6);
  v12 = sub_1ADDD8E0C(v11);
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v15 = a1[1];
  v16 = a1[2];
  v17 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v18 = a1[1];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (v15)
  {
    v19 = a1[2];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v15, v16);
  sub_1AE19DE8C(v18, v19, v2);

  v21 = a1[3];
  v20 = a1[4];
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v21)
  {
    v17 = v20;
  }

  sub_1ADE42C78(v21, v20);
  sub_1AE19DE8C(v22, v17, v2);

  sub_1ADDD86D8(v12, v14);

  sub_1ADDCC35C(v12, v14);
}

uint64_t sub_1AE19CDB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F07C(0, v1, 0);
  v4 = v17;
  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    sub_1ADDD86D8(v6, v7);

    sub_1ADDD86D8(v6, v7);
    sub_1ADDCC35C(0, 0xC000000000000000);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v2;
    }

    v10 = sub_1AE19CF10(v9);
    v12 = v11;
    sub_1ADDCC35C(v6, v7);

    sub_1ADE42CB8(0, 0);
    v14 = *(v17 + 16);
    v13 = *(v17 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1ADE6F07C((v13 > 1), v14 + 1, 1);
    }

    v5 += 3;
    *(v17 + 16) = v14 + 1;
    v15 = (v17 + 32 * v14);
    v15[4] = v6;
    v15[5] = v7;
    v15[6] = v10;
    v15[7] = v12;
    --v1;
    v2 = MEMORY[0x1E69E7CC0];
  }

  while (v1);
  return v4;
}

uint64_t sub_1AE19CF10(uint64_t a1)
{
  v26 = sub_1AE23BFEC();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x1E69E7CC0];
  v27 = v4;
  sub_1ADE6F00C(0, v5, 0);
  v6 = v27;
  v7 = v28;
  v24 = a1;
  v25 = (v2 + 8);
  v8 = a1 + 48;
  v9 = v5;
  do
  {
    v10 = *(v8 - 16);
    v11 = *(v8 - 8);
    sub_1ADDD86D8(v10, v11);

    sub_1ADDD86D8(v10, v11);
    sub_1ADDFE348(v10, v11, v12);
    v13 = sub_1AE1984E0(v6);
    v6 = v27;
    v14 = v13;
    sub_1ADDCC35C(v10, v11);

    (*v25)(v6, v26);
    v28 = v7;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1ADE6F00C((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v7 = v28;
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + 8 * v16 + 32) = v14;
    v8 += 24;
    --v9;
  }

  while (v9);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1ADE6EFEC(0, v5, 0);
  v17 = v28;
  v18 = (v24 + 48);
  do
  {
    v19 = *v18;
    v28 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);

    if (v21 >= v20 >> 1)
    {
      sub_1ADE6EFEC((v20 > 1), v21 + 1, 1);
      v17 = v28;
    }

    *(v17 + 16) = v21 + 1;
    *(v17 + 8 * v21 + 32) = v19;
    v18 += 3;
    --v5;
  }

  while (v5);
  return v7;
}

void *sub_1AE19D1A0(void *a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v46 = type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  sub_1ADDD86D8(v10, v11);
  sub_1ADDFE348(v10, v11, v12);
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v13 = sub_1AE1984E0(v8);
    v41 = *(v4 + 8);
    v41(v8, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    inited[2] = v13;
    swift_beginAccess();
    if (a1[4])
    {

      v16 = sub_1AE19CF10(v15);
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v19 = inited[5];
      v20 = inited[6];
      inited[5] = v16;
      inited[6] = v18;
      sub_1ADE42CB8(v19, v20);
    }

    swift_beginAccess();
    if (a1[5])
    {

      v24 = sub_1AE1990E0(v21, v22, v23);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      inited[7] = v24;
    }

    v25 = a1[2];
    v26 = a1[3];
    sub_1ADDD86D8(v25, v26);
    v27 = v42;
    sub_1ADDFE348(v25, v26, v28);
    v44 = sub_1ADDCC6B4(&unk_1F23BBB40);
    v45 = v29;
    v30 = sub_1ADDD8E0C(v44);
    v32 = v31;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v30, v32);
    v41(v27, v43);
    v33 = v44;
    v34 = v45;
    sub_1ADDCC35C(0, 0xC000000000000000);
    v35 = MEMORY[0x1E69E7CC0];

    sub_1ADDD86D8(v33, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v36 = inited[8];
    v37 = inited[9];
    v38 = inited[10];
    inited[8] = v35;
    inited[9] = v33;
    inited[10] = v34;
    sub_1ADE73D6C(v36, v37, v38);

    sub_1ADDCC35C(v33, v34);
    return inited;
  }

  return result;
}

void *sub_1AE19D5F8(void *a1)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for Proto4_Reference._StorageClass();
  inited = swift_initStaticObject();
  result = swift_beginAccess();
  v11 = a1[2];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v3 + 16);
    if (v11 < *(v12 + 16))
    {
      v13 = (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);
      v14 = sub_1ADDD8E0C(v13);
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADE9D2F4(inited);
      }

      swift_beginAccess();
      v17 = inited[2];
      v18 = inited[3];
      inited[2] = v14;
      inited[3] = v16;
      sub_1ADDCC35C(v17, v18);
      swift_beginAccess();
      if (a1[7])
      {

        v22 = sub_1AE1997B0(v19, v20, v21);

        if (v2)
        {

          return inited;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_allocObject();
          inited = sub_1ADE9D2F4(inited);
        }

        swift_beginAccess();
        inited[5] = v22;
      }

      swift_beginAccess();
      v23 = a1[5];
      if (v23)
      {
        v24 = a1[6];

        sub_1ADE42C78(v23, v24);
        v25 = sub_1AE19DE8C(v23, v24, v3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_allocObject();
          inited = sub_1ADE9D2F4(inited);
        }

        swift_beginAccess();
        inited[4] = v25;
      }

      return inited;
    }
  }

  __break(1u);
  return result;
}

void sub_1AE19D930(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = sub_1AE23BFEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  LOBYTE(v64[0]) = 1;
  v70 = 1;
  v18 = *(a1 + 40);
  v50 = *(a1 + 4);
  v49 = v18;
  if ((v18 & 1) != 0 || (v19 = *(a1 + 3)) == 0)
  {
    sub_1AE23BF5C();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v17, v11, v12);
      v48 = sub_1AE1984E0(v17);
      (*(v13 + 8))(v17, v12);
      goto LABEL_9;
    }

LABEL_34:
    __break(1u);
    return;
  }

  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    goto LABEL_30;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v21 >= *(a2 + 16))
  {
    goto LABEL_32;
  }

  v48 = *(a2 + 8 * v21 + 32);
LABEL_9:
  v70 = 0;
  v47 = *a1;
  v22 = *(a1 + 1);
  v23 = *(v22 + 16);
  if (v23)
  {
    v53 = v12;
    v45 = a1;
    v46 = a4;
    v64[0] = MEMORY[0x1E69E7CC0];
    sub_1ADE6F49C(0, v23, 0);
    v56 = v57 + 32;
    v52 = "Coherence/Upgrade.swift";
    v24 = v64[0];
    v51 = (v13 + 48);
    v25 = (v13 + 32);
    v26 = (v13 + 8);
    v27 = (v22 + 40);
    v28 = v55;
    while (1)
    {
      v29 = *(v27 - 1);
      v30 = *v27;
      if (v29)
      {
        v20 = __OFSUB__(v29, 1);
        v31 = v29 - 1;
        if (v20)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (v31 >= *(v57 + 16))
        {
          goto LABEL_29;
        }

        v32 = *(v56 + 8 * v31);
      }

      else
      {
        sub_1AE23BF5C();
        v33 = v53;
        if ((*v51)(v28, 1, v53) == 1)
        {
          goto LABEL_33;
        }

        v34 = v54;
        (*v25)(v54, v28, v33);
        v35 = sub_1AE1984E0(v34);
        v28 = v55;
        v32 = v35;
        (*v26)(v34, v33);
      }

      v64[0] = v24;
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1ADE6F49C((v36 > 1), v37 + 1, 1);
        v28 = v55;
        v24 = v64[0];
      }

      v27 += 2;
      *(v24 + 16) = v37 + 1;
      v38 = v24 + 16 * v37;
      *(v38 + 32) = v32;
      *(v38 + 40) = v30;
      if (!--v23)
      {

        a4 = v46;
        a1 = v45;
        goto LABEL_23;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];

LABEL_23:
  if (v49)
  {
    v39 = 0;
  }

  else
  {
    v39 = v50;
  }

  v40 = *(a1 + 2);

  v41 = MEMORY[0x1E69E7CC0];

  LODWORD(v59) = v47;
  *(&v59 + 1) = v24;
  *&v60 = v40;
  *(&v60 + 1) = v41;
  *&v61 = 0;
  BYTE8(v61) = 1;
  *(&v61 + 9) = *v71;
  HIDWORD(v61) = *&v71[3];
  *&v62 = v48;
  *(&v62 + 1) = v39;
  v63 = v70;
  LODWORD(v64[0]) = v47;
  v64[1] = v24;
  v64[2] = v40;
  v64[3] = v41;
  v64[4] = 0;
  v65 = 1;
  *v66 = *v71;
  *&v66[3] = *&v71[3];
  v67 = v48;
  v68 = v39;
  v69 = v70;
  sub_1ADE5218C(&v59, v58);
  sub_1ADE521E8(v64);
  v42 = v62;
  *(a4 + 32) = v61;
  *(a4 + 48) = v42;
  *(a4 + 64) = v63;
  v43 = v60;
  *a4 = v59;
  *(a4 + 16) = v43;
}

uint64_t sub_1AE19DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v78 = *MEMORY[0x1E69E9840];
  v67 = sub_1AE23BFEC();
  v5 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v8 >= v7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v77 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F33C(0, v9, 0);
  result = v77;
  v64 = v5;
  v58 = v8;
  v59 = v7;
  v56 = a2;
  v57 = v9;
  v55 = a1;
  if (v9)
  {
    v11 = (a1 + 32);
    v12 = (a2 + 32);
    v60 = v5 + 8;
    v61 = v5 + 16;
    while (v7)
    {
      if (!v8)
      {
        goto LABEL_26;
      }

      v13 = *v11;
      if ((*v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v14 = *(v63 + 16);
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_28;
      }

      v15 = *v12;
      v16 = v64;
      v17 = v14 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v13;
      v18 = *(v64 + 16);
      v19 = v62;
      v66 = result;
      v18(v62, v17, v67);
      v65 = v15;

      v68 = sub_1AE23BFCC();
      v69 = v20;
      v70 = v21;
      v71 = v22;
      v72 = v23;
      v73 = v24;
      v74 = v25;
      v75 = v26;
      v76 = v27;
      sub_1AE23BFCC();
      sub_1AE23BBCC();
      swift_allocObject();
      v28 = sub_1AE23BB6C();
      (*(v16 + 8))(v19, v67);
      sub_1ADDCC35C(0, 0xC000000000000000);

      result = v66;
      v77 = v66;
      v30 = *(v66 + 16);
      v29 = *(v66 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1ADE6F33C((v29 > 1), v30 + 1, 1);
        result = v77;
      }

      *(result + 16) = v30 + 1;
      v31 = (result + 24 * v30);
      --v8;
      v31[4] = 0x1000000000;
      v31[5] = v28 | 0x4000000000000000;
      v31[6] = v65;
      --v7;
      ++v12;
      ++v11;
      if (!--v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
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
  }

LABEL_13:
  v33 = v58;
  v32 = v59;
  if (v59 > v58)
  {
    v34 = v57;
    v65 = v56 + 32;
    v66 = v55 + 32;
    v60 = v64 + 8;
    v61 = v64 + 16;
    while (v34 < v32)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_30;
      }

      if (v33 == v34)
      {
        return result;
      }

      if (v34 >= v33)
      {
        goto LABEL_31;
      }

      v36 = *(v66 + 8 * v34);
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v37 = *(v63 + 16);
      if (v36 >= *(v37 + 16))
      {
        goto LABEL_33;
      }

      v38 = v64;
      v39 = *(v65 + 8 * v34);
      v40 = v62;
      v41 = result;
      v42 = v67;
      (*(v64 + 16))(v62, v37 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36, v67);

      v68 = sub_1AE23BFCC();
      v69 = v43;
      v70 = v44;
      v71 = v45;
      v72 = v46;
      v73 = v47;
      v74 = v48;
      v75 = v49;
      v76 = v50;
      sub_1AE23BFCC();
      sub_1AE23BBCC();
      swift_allocObject();
      v51 = sub_1AE23BB6C();
      (*(v38 + 8))(v40, v42);
      sub_1ADDCC35C(0, 0xC000000000000000);

      result = v41;
      v77 = v41;
      v53 = *(v41 + 16);
      v52 = *(v41 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1ADE6F33C((v52 > 1), v53 + 1, 1);
        result = v77;
      }

      *(result + 16) = v53 + 1;
      v54 = (result + 24 * v53);
      v54[4] = 0x1000000000;
      v54[5] = v51 | 0x4000000000000000;
      v54[6] = v39;
      ++v34;
      v33 = v58;
      v32 = v59;
      if (v35 == v59)
      {
        return result;
      }
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1AE19E3F0(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v5 = *(a1 + 16);
  swift_beginAccess();
  if (*(*(v3 + 32) + 16) || (swift_beginAccess(), *(*(v3 + 48) + 16)))
  {
    type metadata accessor for CRCounterRef();
    swift_allocObject();

    sub_1AE19E814(v6);
    sub_1AE1A077C(v5);
  }

  else
  {
  }

  sub_1AE1A0F64(a1, v14);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = swift_allocObject();
    v8 = *(inited + 16);
    *(v7 + 16) = v8;
    sub_1ADE5215C(v8);

    inited = v7;
  }

  v9 = swift_allocObject();
  v10 = v14[1];
  *(v9 + 16) = v14[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v15;
  v11 = v9 | 0x7000000000000000;
  v12 = *(inited + 16);
  *(inited + 16) = v11;
  sub_1ADE52174(v12);
  return inited;
}

void *sub_1AE19E550()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC8];
  v0[3] = MEMORY[0x1E69E7CC8];
  v0[4] = v9;
  v0[5] = v9;
  v0[6] = v9;
  v0[7] = 0;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  type metadata accessor for ReplicaState(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v12 = type metadata accessor for Replica(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  (*(v6 + 32))(v10 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v8, v5);
  *(v10 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v10 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v13(v4, 1, 1, v12);
  swift_beginAccess();
  sub_1ADDD85E4(v4, v10 + v11);
  swift_endAccess();
  v1[2] = v10;
  return v1;
}

void *sub_1AE19E814(void *a1)
{
  v3 = MEMORY[0x1E69E7CC8];
  v1[3] = MEMORY[0x1E69E7CC8];
  v1[5] = v3;
  v1[4] = v3;
  v1[6] = v3;
  v1[7] = 0;
  v4 = a1[2];
  v5 = qword_1ED967EE8;

  if (v5 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v6 = sub_1AE1FEFC0(&dword_1ED96F1F8, v4);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v1[2] = v6;
  swift_beginAccess();
  v7 = a1[3];
  v8 = a1[4];
  swift_beginAccess();
  v1[3] = v7;
  v1[4] = v8;

  swift_beginAccess();
  v9 = a1[5];
  v10 = a1[6];
  swift_beginAccess();
  v1[5] = v9;
  v1[6] = v10;

  v1[7] = a1[7];
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v11 = v1[4];

  swift_bridgeObjectRetain_n();
  sub_1ADF8D974(v11);
  swift_bridgeObjectRelease_n();

  v12 = v1[6];

  swift_bridgeObjectRetain_n();
  sub_1ADF8D974(v12);

  swift_bridgeObjectRelease_n();

  return v1;
}

uint64_t sub_1AE19EA44()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = v0[4];
  v5[0] = v0[3];
  v5[1] = v1;

  sub_1ADDF8100(v5);

  swift_beginAccess();
  v2 = v0[6];
  v4[0] = v0[5];
  v4[1] = v2;

  sub_1ADDF8100(v4);

  return swift_deallocClassInstance();
}

void sub_1AE19EB64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (a1 < 1)
  {
    if (a1 < 0)
    {
      v2 = &OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter;
      v17 = *(v3 + 16);
      v13 = *(v17 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter);
      v20 = qword_1ED967EE8;

      if (v20 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    return;
  }

  v14 = &OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter;
  v15 = *(v3 + 16);
  v10 = *(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  v16 = qword_1ED967EE8;

  if (v16 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v17 = &dword_1ED96F1F8;
    os_unfair_lock_lock(&dword_1ED96F1F8);
    sub_1AE1FEC4C(v15, v13);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v7 = &v10[a1];
    if (__OFADD__(v10, a1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v7 < v10)
    {
      goto LABEL_24;
    }

    v17 = (v3 + 24);
    swift_beginAccess();
    if (*&v13[*(v5 + 20)])
    {
      v5 = v3 + 32;
    }

    else
    {
      v5 = v3 + 24;
    }

    sub_1ADE0DA80(v13, v10);
    swift_endAccess();
    sub_1ADDF1F8C(v13);
    v18 = (*(v3 + 16) + *v14);
    v19 = *v18 + a1;
    if (!__OFADD__(*v18, a1))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_12:
    os_unfair_lock_lock(&dword_1ED96F1F8);
    sub_1AE1FEC4C(v17, v7);
    os_unfair_lock_unlock(&dword_1ED96F1F8);
    if (qword_1EB5B9C20 != -1)
    {
      swift_once();
    }

    v21 = sub_1AE23BFEC();
    __swift_project_value_buffer(v21, qword_1EB5D7CE0);
    sub_1ADDE3CD8(v7);
    (*(*(v21 - 8) + 8))(v7, v21);
    os_unfair_lock_lock(&dword_1ED96F1F8);
    sub_1AE1FEC4C(v17, v7);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v14 = *&v7[*(v5 + 20)];
    sub_1ADDF1F8C(v7);
    *&v10[*(v5 + 20)] = v14;
    if (__OFSUB__(v13, a1))
    {
      break;
    }

    if (&v13[-a1] < v13)
    {
      goto LABEL_28;
    }

    v15 = v3 + 40;
    swift_beginAccess();
    if (v14)
    {
      v5 = v3 + 48;
    }

    else
    {
      v5 = v3 + 40;
    }

    sub_1ADE0DA80(v10, v13);
    swift_endAccess();
    sub_1ADDF1F8C(v10);
    v18 = (*(v3 + 16) + *v2);
    v19 = *v18 - a1;
    if (!__OFSUB__(*v18, a1))
    {
LABEL_9:
      *v18 = v19;
      return;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1AE19EF08(void *a1@<X0>, __int16 *a2@<X8>)
{
  v3 = v2;
  v145 = a2;
  v5 = sub_1AE23C88C();
  v158 = *(v5 - 8);
  v159 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v156 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1AE23C8CC();
  v155 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v151 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v142 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v142 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v142 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v142 - v19;
  v153 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v167 = &v142 - v23;
  v147 = sub_1AE23BFEC();
  v168 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v150 = &v142 - v26;
  v27 = v3[7];
  v28 = a1[7];
  v163 = v10;
  v164 = v13;
  v162 = v20;
  if (v27 == v28)
  {

    v29 = a1;
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v30 = v170;
    v31 = v171;
    v32 = v172;
    v29 = swift_allocObject();

    sub_1AE19E814(v33);
    swift_beginAccess();
    sub_1ADDF8898(v30, v31, v32);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDF8898(v30, v31, v32);
    swift_endAccess();
    v29[7] = v30;
    swift_beginAccess();
    sub_1ADDF8898(v30, v31, v32);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDF8898(v30, v31, v32);
    swift_endAccess();

    v3[7] = v30;
  }

  swift_beginAccess();
  v165 = v3[4];
  v149 = v3 + 4;
  swift_beginAccess();
  v166 = v3[6];
  v148 = v3 + 6;
  v34 = v3[2];
  v35 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v36 = v168 + 2;
  v37 = v168[2];
  v38 = v34 + v35;
  v39 = v150;
  v40 = v147;
  v37(v150, v38, v147);
  v41 = v3;
  v42 = v29[2];
  v43 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v44 = v42 + v43;
  v45 = v41;
  v46 = v146;
  v143 = v37;
  v144 = v36;
  v37(v146, v44, v40);
  sub_1AE1A2EB4(&qword_1ED96A710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);

  LOBYTE(v37) = sub_1AE23CCBC();
  v47 = v168[1];
  v47(v46, v40);
  v47(v39, v40);
  v160 = v29;
  v48 = v29;
  if (v37)
  {
    goto LABEL_17;
  }

  v49 = *(v45[3] + 16);
  v50 = *(*v149 + 16);
  v51 = __OFADD__(v49, v50);
  v52 = v49 + v50;
  if (v51)
  {
    __break(1u);
    goto LABEL_31;
  }

  v53 = *(v45[5] + 16);
  v54 = *(*v148 + 16);
  v51 = __OFADD__(v53, v54);
  v55 = v53 + v54;
  if (v51)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v56 = v52 + v55;
  if (__OFADD__(v52, v55))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  swift_beginAccess();
  v57 = *(v29[3] + 16);
  v58 = *(v29[4] + 16);
  v59 = v57 + v58;
  if (__OFADD__(v57, v58))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_beginAccess();
  v60 = *(v29[5] + 16);
  v61 = *(v29[6] + 16);
  v51 = __OFADD__(v60, v61);
  v62 = v60 + v61;
  if (v51)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v51 = __OFADD__(v59, v62);
  v63 = v59 + v62;
  if (v51)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v48 = v160;
  if (v56 < v63 || v56 == v63 && (v75 = v45[2], v76 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity, swift_beginAccess(), v77 = v147, v78 = v143, v143(v150, v75 + v76, v147), v79 = v160[2], v80 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity, swift_beginAccess(), v81 = v79 + v80, v48 = v160, v82 = v146, v78(v146, v81, v77), v83 = v150, LOBYTE(v79) = sub_1ADF5EB00(v150), v47(v82, v77), v47(v83, v77), (v79 & 1) != 0))
  {
    v64 = v45[2];
    v65 = v48[2];
    v66 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
    swift_beginAccess();
    v67 = v150;
    v68 = v147;
    v143(v150, v65 + v66, v147);
    v69 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
    swift_beginAccess();
    v70 = v168[5];

    v70(v64 + v69, v67, v68);
    swift_endAccess();

    v71 = v45[2];
    v72 = type metadata accessor for Replica(0);
    v73 = v167;
    (*(*(v72 - 8) + 56))(v167, 1, 1, v72);
    v74 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();

    sub_1ADDD85E4(v73, v71 + v74);
    swift_endAccess();
  }

LABEL_17:
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  v182 = word_1ED96F220;
  v183 = byte_1ED96F222;
  swift_beginAccess();
  v84 = v48[3];
  swift_beginAccess();

  v86 = v149;
  sub_1ADF5F770(v85, &v178);
  sub_1ADF5F770(v84, &v169);
  v180 = v169;
  v181 = BYTE2(v169);
  v87 = &v180;
  MergeResult.merge(_:)(v87);
  v88 = v178;
  v89 = v179;
  swift_endAccess();

  LOWORD(v170) = v88;
  BYTE2(v170) = v89;
  v90 = &v170;
  MergeResult.merge(_:)(v90);
  swift_beginAccess();
  v91 = v48[5];
  swift_beginAccess();

  v93 = v148;
  sub_1ADF5F770(v92, &v169);
  sub_1ADF5F770(v91, &v180);
  v176 = v180;
  v177 = v181;
  v94 = &v176;
  MergeResult.merge(_:)(v94);
  v95 = v169;
  v96 = BYTE2(v169);
  swift_endAccess();

  LOWORD(v170) = v95;
  BYTE2(v170) = v96;
  v97 = &v170;
  MergeResult.merge(_:)(v97);
  v98 = *v93;
  v99 = qword_1ED96B308;
  v100 = *v86;

  v168 = v98;

  if (v99 != -1)
  {
    swift_once();
  }

  v101 = qword_1ED96F2F8;
  v102 = type metadata accessor for Replica(0);
  v103 = *(v102 - 8);
  v104 = *(v103 + 56);
  v105 = v103 + 56;
  v106 = v162;
  v104(v162, 1, 1, v102);
  v107 = v161;
  v149 = v102;
  v150 = v105;
  v104(v161, 1, 1, v102);
  v108 = v165;
  v109 = *(v165 + 16);
  v110 = MEMORY[0x1E69E7CC8];
  v148 = v101;
  if (v109 || *(v100 + 16))
  {
    v146 = *(v101 + 40);
    v147 = v104;
    v111 = v167;
    sub_1ADDD7E88(v106, v167);
    v112 = v107;
    v113 = v152;
    sub_1ADDD7E88(v112, v152);
    v114 = *(v151 + 80);
    v115 = (v114 + 56) & ~v114;
    v116 = (v153 + v114 + v115) & ~v114;
    v117 = swift_allocObject();
    v117[2] = v110;
    v117[3] = v108;
    v117[4] = v110;
    v117[5] = v100;
    v117[6] = v101;
    sub_1ADECD978(v111, v117 + v115);
    sub_1ADECD978(v113, v117 + v116);
    v174 = sub_1ADE4315C;
    v175 = v117;
    v170 = MEMORY[0x1E69E9820];
    v171 = 1107296256;
    v172 = sub_1ADDD2200;
    v173 = &block_descriptor_22;
    v118 = _Block_copy(&v170);
    swift_bridgeObjectRetain_n();

    v119 = v154;
    sub_1AE23C8AC();
    v169 = MEMORY[0x1E69E7CC0];
    sub_1AE1A2EB4(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    v120 = v156;
    v121 = v159;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v119, v120, v118);
    _Block_release(v118);
    v110 = MEMORY[0x1E69E7CC8];

    swift_bridgeObjectRelease_n();
    v122 = v120;
    v104 = v147;
    (*(v158 + 8))(v122, v121);
    (*(v155 + 8))(v119, v157);
    sub_1ADDCEDE0(v161, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v162, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v107, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v106, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  v123 = v164;
  v124 = v149;
  v104(v164, 1, 1, v149);
  v125 = v163;
  v104(v163, 1, 1, v124);
  v126 = v166;
  if (*(v166 + 16) || v168[2])
  {
    v127 = v148;
    v165 = v148[5];
    v128 = v167;
    sub_1ADDD7E88(v123, v167);
    v129 = v125;
    v130 = v152;
    sub_1ADDD7E88(v129, v152);
    v131 = *(v151 + 80);
    v132 = (v131 + 56) & ~v131;
    v133 = (v153 + v131 + v132) & ~v131;
    v134 = swift_allocObject();
    v134[2] = v110;
    v134[3] = v126;
    v135 = v168;
    v134[4] = v110;
    v134[5] = v135;
    v134[6] = v127;
    sub_1ADECD978(v128, v134 + v132);
    sub_1ADECD978(v130, v134 + v133);
    v174 = sub_1ADE42B98;
    v175 = v134;
    v170 = MEMORY[0x1E69E9820];
    v171 = 1107296256;
    v172 = sub_1ADDD2200;
    v173 = &block_descriptor_13;
    v136 = _Block_copy(&v170);

    swift_bridgeObjectRetain_n();

    v137 = v154;
    sub_1AE23C8AC();
    v169 = MEMORY[0x1E69E7CC0];
    sub_1AE1A2EB4(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    v138 = v156;
    v139 = v159;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v137, v138, v136);
    _Block_release(v136);

    swift_bridgeObjectRelease_n();
    (*(v158 + 8))(v138, v139);
    (*(v155 + 8))(v137, v157);
    sub_1ADDCEDE0(v163, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v164, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v125, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v123, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  v140 = v145;
  v141 = v183;
  *v145 = v182;
  *(v140 + 2) = v141;
}

uint64_t sub_1AE1A0050(void *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  swift_beginAccess();
  v5 = a1[3];
  v6 = a1[4];

  sub_1ADF637A8(v4, v6);
  if (v7)
  {
    goto LABEL_2;
  }

  sub_1ADF637A8(v3, v5);
  v10 = v9;

  if (v10)
  {
    v8 = 1;
    return v8 & 1;
  }

  swift_beginAccess();
  v12 = v1[5];
  v13 = v1[6];
  swift_beginAccess();
  v14 = a1[5];
  v15 = a1[6];

  sub_1ADF637A8(v13, v15);
  if (v16)
  {
LABEL_2:
    v8 = 1;
  }

  else
  {
    sub_1ADF637A8(v12, v14);
    v8 = v17;
  }

  return v8 & 1;
}

uint64_t sub_1AE1A01C8(void *a1)
{
  if (v1 == a1)
  {
    v3 = 0;
  }

  else if (v1[7] != a1[7] && ((swift_beginAccess(), *(v1[4] + 16)) || (swift_beginAccess(), *(v1[6] + 16)) || (swift_beginAccess(), *(a1[4] + 16)) || (swift_beginAccess(), *(a1[6] + 16))))
  {
    sub_1AE1A02DC();
    v4 = sub_1AE1A02DC();
    v3 = sub_1AE1A0050(v4);
  }

  else
  {
    v3 = sub_1AE1A0050(a1);
  }

  return v3 & 1;
}

uint64_t sub_1AE1A02DC()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 32) + 16) || (swift_beginAccess(), *(*(v0 + 48) + 16)))
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v2 = swift_allocObject();

    sub_1AE19E814(v3);
    swift_beginAccess();
    sub_1ADDF8898(v5, v6, v7);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDF8898(v5, v6, v7);
    swift_endAccess();

    *(v2 + 56) = v5;
    return v2;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1AE1A0490(void *a1)
{
  swift_beginAccess();
  v20 = a1[3];
  v21 = a1[4];
  swift_beginAccess();
  v3 = *(v1 + 24);

  sub_1ADE00714(v4);
  sub_1ADE00714(v3);

  swift_beginAccess();
  v18 = a1[5];
  v19 = a1[6];
  swift_beginAccess();
  v5 = *(v1 + 40);

  sub_1ADE00714(v6);
  sub_1ADE00714(v5);

  sub_1ADF684B4(v20);
  v8 = v7;
  sub_1ADF684B4(v21);
  v10 = v9;

  v12 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1ADF684B4(v18);
  v14 = v13;
  sub_1ADF684B4(v19);
  v16 = v15;

  v17 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v12 - v17;
  if (__OFSUB__(v12, v17))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1A0650(void *a1)
{
  if (v1 == a1)
  {
    return 0;
  }

  if (v1[7] == a1[7])
  {
    return sub_1AE1A0490(v1);
  }

  swift_beginAccess();
  if (!*(v1[4] + 16))
  {
    swift_beginAccess();
    if (!*(v1[6] + 16))
    {
      swift_beginAccess();
      if (!*(a1[4] + 16))
      {
        swift_beginAccess();
        if (!*(a1[6] + 16))
        {
          return sub_1AE1A0490(v1);
        }
      }
    }
  }

  sub_1AE1A02DC();
  v4 = sub_1AE1A02DC();
  v5 = sub_1AE1A0490(v4);

  return v5;
}

uint64_t sub_1AE1A077C(uint64_t a1)
{
  v2 = swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      v2 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    *(v1 + 24) = v5;

    *(v1 + 56) = v4;
  }

  result = swift_beginAccess();
  if (*(*(v1 + 48) + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      result = swift_once();
    }

    MEMORY[0x1EEE9AC00](result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    *(v1 + 40) = v5;

    *(v1 + 56) = v4;
  }

  return result;
}

uint64_t *sub_1AE1A09F4(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC8];
  v4[3] = MEMORY[0x1E69E7CC8];
  v4[4] = v18;
  v4[5] = v18;
  v4[6] = v18;
  v4[7] = 0;
  v51 = a1;
  v19 = *a1;
  v20 = *(a2 + 24);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v19 >= v21;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    sub_1ADE42E40(v12, v13, v14);
    swift_allocError();
    *v23 = 0xD000000000000013;
    *(v23 + 8) = 0x80000001AE25FD70;
    *(v23 + 16) = 0;
    swift_willThrow();

    v24 = v51;
    v50 = *(v51 + 1);
    sub_1ADDCEDE0(&v50, &qword_1EB5BDA20, &qword_1AE253910);
    v49 = *(v24 + 3);
    sub_1ADDCEDE0(&v49, &qword_1EB5BDA20, &qword_1AE253910);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v42[2] = v4 + 3;
    v42[1] = v4 + 5;
    (*(v11 + 16))(v17, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v10, v15);
    type metadata accessor for ReplicaState(0);
    v25 = swift_allocObject();
    v26 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v27 = type metadata accessor for Replica(0);
    v44 = v3;
    v45 = a2;
    v28 = v27;
    v29 = *(*(v27 - 8) + 56);
    v43 = v9;
    v29(v25 + v26, 1, 1, v27);
    (*(v11 + 32))(v25 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v17, v10);
    *(v25 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v25 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v30 = v43;
    v29(v43, 1, 1, v28);
    v31 = v45;
    swift_beginAccess();
    sub_1ADDD85E4(v30, v25 + v26);
    swift_endAccess();
    v4[2] = v25;
    v32 = v51;
    v34 = v51[1];
    v33 = v51[2];
    if (v34)
    {
      v35 = v51[1];
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    if (v34)
    {
      v36 = v51[2];
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v51[1], v51[2]);

    v37 = v44;
    sub_1ADDD6748(v35, v36, v31, &v46);
    if (v37)
    {

      sub_1ADE42CB8(v34, v33);
      v48 = *(v32 + 3);
      sub_1ADDCEDE0(&v48, &qword_1EB5BDA20, &qword_1AE253910);
    }

    else
    {
      swift_beginAccess();
      *(v4 + 3) = v46;

      v38 = v32[3];
      if (v38)
      {
        v39 = v32[4];
        sub_1ADE42CB8(v34, v33);
      }

      else
      {
        sub_1ADE42CB8(v34, v33);
        v38 = MEMORY[0x1E69E7CC0];
        v39 = MEMORY[0x1E69E7CC0];
      }

      v40 = v45;

      sub_1ADDD6748(v38, v39, v40, &v47);
      swift_beginAccess();
      *(v4 + 5) = v47;

      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      sub_1AE23D6AC();

      v4[7] = v47;
    }
  }

  return v4;
}

uint64_t sub_1AE1A0F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v11 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  v12 = sub_1ADDF66A8(v9);
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v13 = v3[4];
  v24[3] = v3[3];
  v24[4] = v13;

  sub_1ADDF5C7C(a1);
  v15 = v14;
  v17 = v16;

  swift_beginAccess();
  v18 = v3[6];
  v24[1] = v3[5];
  v24[2] = v18;

  sub_1ADDF5C7C(a1);
  v20 = v19;
  v22 = v21;

  *a2 = v12;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v20;
  a2[4] = v22;
  return result;
}

void CRCounter.copy(renamingReferences:)(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];

  sub_1ADF684B4(v4);
  v7 = v6;
  sub_1ADF684B4(v5);
  v9 = v8;

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v11 = v3[5];
  v12 = v3[6];

  sub_1ADF684B4(v11);
  v14 = v13;
  sub_1ADF684B4(v12);
  v16 = v15;

  v17 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v10 - v17;
  if (__OFSUB__(v10, v17))
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for CRCounterRef();
  v19 = swift_allocObject();
  sub_1AE19E550();
  *a1 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = swift_allocObject();

    sub_1AE19E814(v21);

    *a1 = v20;
  }

  sub_1AE19EB64(v18);
}

uint64_t CRCounter.value.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];

  sub_1ADF684B4(v2);
  v5 = v4;
  sub_1ADF684B4(v3);
  v7 = v6;

  v9 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v10 = v1[5];
  v11 = v1[6];

  sub_1ADF684B4(v10);
  v13 = v12;
  sub_1ADF684B4(v11);
  v15 = v14;

  v16 = v13 + v15;
  if (__OFADD__(v13, v15))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v9 - v16;
  if (__OFSUB__(v9, v16))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void CRCounter.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRCounterRef();
  v5 = swift_allocObject();
  sub_1AE19E550();
  *a2 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = swift_allocObject();

    sub_1AE19E814(v7);

    *a2 = v6;
  }

  sub_1AE19EB64(a1);
}

void CRCounter.copy(renamingReferences:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  swift_beginAccess();
  v5 = v4[3];
  v6 = v4[4];

  sub_1ADF684B4(v5);
  v8 = v7;
  sub_1ADF684B4(v6);
  v10 = v9;

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
    __break(1u);
    goto LABEL_10;
  }

  swift_beginAccess();
  v12 = v4[5];
  v13 = v4[6];

  sub_1ADF684B4(v12);
  v15 = v14;
  sub_1ADF684B4(v13);
  v17 = v16;

  v18 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v11 - v18;
  if (__OFSUB__(v11, v18))
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for CRCounterRef();
  v20 = swift_allocObject();
  sub_1AE19E550();
  *a2 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = swift_allocObject();

    sub_1AE19E814(v22);

    *a2 = v21;
  }

  sub_1AE19EB64(v19);
}

uint64_t CRCounter.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v5 = sub_1AE23BFEC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void CRCounter.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRCounterRef();
  v5 = swift_allocObject();
  sub_1AE19E550();

  *a2 = v5;
}

void *CRCounter.init()@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CRCounterRef();
  v4 = swift_allocObject();
  result = sub_1AE19E550();
  *a2 = v4;
  return result;
}

void *CRCounter.init(defaultState:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CRCounterRef();
  v4 = swift_allocObject();
  result = sub_1AE19E550();
  *a2 = v4;
  return result;
}

Swift::Void __swiftcall CRCounter.increment(by:)(Swift::Int by)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for CRCounterRef();
    v3 = swift_allocObject();

    sub_1AE19E814(v4);

    *v1 = v3;
  }

  sub_1AE19EB64(by);
}

Swift::Void __swiftcall CRCounter.decrement(by:)(Swift::Int by)
{
  v2 = -by;
  if (__OFSUB__(0, by))
  {
    __break(1u);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v3 = swift_allocObject();

      sub_1AE19E814(v4);

      *v1 = v3;
    }

    sub_1AE19EB64(v2);
  }
}

void CRCounter.merge(_:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*v2 == *a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v7 = byte_1ED96F222;
    *a2 = word_1ED96F220;
    *(a2 + 2) = v7;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v5 = swift_allocObject();

      sub_1AE19E814(v6);

      *v2 = v5;
    }

    sub_1AE19EF08(v4, a2);
  }
}

void CRCounter.merge(_:)(void **a1)
{
  v2 = *a1;
  if (*v1 == *a1)
  {
    if (qword_1ED9670C0 != -1)
    {

      swift_once();
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v3 = swift_allocObject();

      sub_1AE19E814(v4);

      *v1 = v3;
    }

    sub_1AE19EF08(v2, &v5);
  }
}

Swift::Bool __swiftcall CRCounter.needToFinalizeTimestamps()()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    return 1;
  }

  swift_beginAccess();
  return *(*(v1 + 48) + 16) != 0;
}

uint64_t CRCounter.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  if (*(*(v4 + 32) + 16) || (result = swift_beginAccess(), *(*(v4 + 48) + 16)))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v6 = swift_allocObject();

      sub_1AE19E814(v7);

      *v2 = v6;
    }

    return sub_1AE1A077C(a1);
  }

  return result;
}

void CRCounter.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    swift_retain_n();
    sub_1ADDE78C8();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && (v14 & 0xF000000000000000) == 0x7000000000000000)
    {
      v16 = (v14 & 0xFFFFFFFFFFFFFFFLL);
      v8 = v16[2];
      v9 = v16[3];
      v10 = v16[4];
      v11 = v16[5];
      v12 = v16[6];
      sub_1ADE42C78(v9, v10);
      sub_1ADE42C78(v11, v12);
    }

    v19[0] = v8;
    v19[1] = v9;
    v19[2] = v10;
    v19[3] = v11;
    v19[4] = v12;
    type metadata accessor for CRCounterRef();
    v17 = swift_allocObject();
    sub_1AE1A09F4(v19, a1);

    if (!v4)
    {
      *a4 = v17;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v18 = 0xD000000000000014;
    *(v18 + 8) = 0x80000001AE25FB50;
    *(v18 + 16) = 0;
    swift_willThrow();
  }
}

double CRCounter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);
    v7 = v4;

    v8 = sub_1AE19E3F0(v6);
    swift_beginAccess();
    *(v7 + 24) = v8;
  }

  return result;
}

BOOL CRCounter.isDefaultState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(v1[4] + 16))
  {
    return 0;
  }

  if (*(v1[3] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return !*(v1[6] + 16) && *(v1[5] + 16) == 0;
}

uint64_t sub_1AE1A1E08@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AE1A0650(*a1);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CRCounter.actionUndoingDifference(from:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AE1A0650(*a1);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Void __swiftcall CRCounter.apply(_:)(Coherence::CRCounter::MutatingAction_optional a1)
{
  if ((*(a1.value.delta + 8) & 1) == 0)
  {
    v2 = *a1.value.delta;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v3 = swift_allocObject();

      sub_1AE19E814(v4);

      *v1 = v3;
    }

    v5 = -v2;
    if (__OFSUB__(0, v2))
    {
      __break(1u);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for CRCounterRef();
        v6 = swift_allocObject();

        sub_1AE19E814(v7);

        *v1 = v6;
      }

      sub_1AE19EB64(v5);
    }
  }
}

uint64_t CRCounter.delta(_:from:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();
  v6 = v4[3];
  v7 = v4[4];
  swift_beginAccess();
  v8 = *(v5 + 24);

  sub_1ADF637A8(v9, v7);
  if (v10)
  {
    goto LABEL_2;
  }

  sub_1ADF637A8(v8, v6);
  v12 = v11;

  if (v12)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  v14 = v4[5];
  v15 = v4[6];
  swift_beginAccess();
  v16 = *(v5 + 40);

  sub_1ADF637A8(v17, v15);
  if (v18)
  {
LABEL_2:
  }

  else
  {
    sub_1ADF637A8(v16, v14);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      *a2 = 0;
      return result;
    }
  }

LABEL_4:
  v21 = v4;
  v22 = v5;

  result = sub_1AE1A2934(&v21);
  *a2 = v22;
  return result;
}

uint64_t CRCounter.merge(delta:)(void **a1)
{
  v2 = *a1;
  if (*v1 == *a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v3 = swift_allocObject();

      sub_1AE19E814(v4);

      *v1 = v3;
    }

    sub_1AE19EF08(v2, &v6);
  }

  return 1;
}

void sub_1AE1A222C(uint64_t *a1@<X8>)
{
  v2 = CRCounter.value.getter();
  type metadata accessor for CRCounterRef();
  v3 = swift_allocObject();
  sub_1AE19E550();
  *a1 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = swift_allocObject();

    sub_1AE19E814(v5);

    *a1 = v4;
  }

  sub_1AE19EB64(v2);
}

uint64_t sub_1AE1A22E8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AE1A0650(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double sub_1AE1A2378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);
    v7 = v4;

    v8 = sub_1AE19E3F0(v6);
    swift_beginAccess();
    *(v7 + 24) = v8;
  }

  return result;
}

void *sub_1AE1A2408@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRCounterRef();
  v2 = swift_allocObject();
  result = sub_1AE19E550();
  *a1 = v2;
  return result;
}

void CRCounter.MutatingAction.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v8 = *(v7 + 16);
    if (v8 >> 60)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v8 & 0xF000000000000007) == 0xF000000000000007;
    }

    if (v9)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v11 = swift_initStaticObject();
    }

    else
    {
      v11 = *(v8 + 16);
    }

    swift_beginAccess();
    v12 = *(v11 + 40);
    if (v12)
    {
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v12 = swift_initStaticObject();
    }

    v13 = *(v12 + 16);
    if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 4)
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v14 = 0;
    }

    *a4 = v14;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

void CRCounter.MutatingAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = swift_allocObject();
      v8 = *(inited + 16);
      *(v7 + 16) = v8;
      sub_1ADE51B2C(v8);

      inited = v7;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v10 = v9 | 0x2000000000000000;
    v11 = *(inited + 16);
    *(inited + 16) = v10;
    sub_1ADE51B48(v11);
    type metadata accessor for Proto_Register._StorageClass();
    v12 = swift_initStaticObject();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v12 = sub_1ADDE8D20(v12);
    }

    swift_beginAccess();
    *(v12 + 40) = inited;

    swift_beginAccess();

    sub_1AE1B783C(v13);
    swift_endAccess();
  }
}

uint64_t CRCounter.encode(to:)(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];

  sub_1ADF684B4(v3);
  v6 = v5;
  sub_1ADF684B4(v4);
  v8 = v7;

  v10 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v11 = v2[5];
  v12 = v2[6];

  sub_1ADF684B4(v11);
  v14 = v13;
  sub_1ADF684B4(v12);
  v16 = v15;

  if (__OFADD__(v14, v16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFSUB__(v10, v14 + v16))
  {
    return sub_1AE23D3BC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AE1A2934(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for CRCounterRef();
    v4 = swift_allocObject();

    sub_1AE19E814(v5);

    *v2 = v4;
  }

  swift_beginAccess();
  v6 = *(v3 + 24);
  swift_beginAccess();

  sub_1ADE00714(v7);
  sub_1ADE00714(v6);
  swift_endAccess();

  swift_beginAccess();
  v8 = *(v3 + 40);
  swift_beginAccess();

  sub_1ADE00714(v9);
  sub_1ADE00714(v8);
  swift_endAccess();
}

uint64_t _s9Coherence9CRCounterV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  swift_beginAccess();
  v4 = v2[3];
  v5 = v2[4];
  if (*(v5 + 16) && *(v25 + 16))
  {
    v21 = v2[3];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v23, v24, v25);

    v4 = v21;
  }

  else
  {
  }

  swift_beginAccess();
  v6 = v3[3];
  v7 = v3[4];
  if (*(v7 + 16) && *(v25 + 16))
  {
    v19 = v3[3];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v23, v24, v25);

    v6 = v19;
  }

  else
  {
  }

  sub_1ADF64C74(v5, v7);
  if ((v8 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_1ADF64C74(v4, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_17:

    v13 = 0;
    return v13 & 1;
  }

  swift_beginAccess();
  v11 = v2[5];
  v12 = v2[6];
  if (*(v12 + 16) && *(v25 + 16))
  {
    v22 = v2[5];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v23, v24, v25);

    v11 = v22;
  }

  else
  {
  }

  swift_beginAccess();
  v14 = v3[5];
  v15 = v3[6];
  if (*(v15 + 16) && *(v25 + 16))
  {
    v20 = v3[5];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v23, v24, v25);

    v14 = v20;
  }

  else
  {
  }

  sub_1ADF64C74(v12, v15);
  if (v16)
  {
    sub_1ADF64C74(v11, v14);
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1AE1A2E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE1A2E40(a1, a2, a3);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE1A2E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8C30[0];
  if (!qword_1EB5B8C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B8C30);
  }

  return result;
}

uint64_t sub_1AE1A2EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AE1A2F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  sub_1ADDCEE40(v2 + v14, v6, &qword_1EB5BDC68, &unk_1AE253C20);
  v15 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  result = (*(*(v15 - 8) + 48))(v6, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 16))(v10, v6, v7);
    sub_1ADDE5728(v6);
    sub_1ADDE3CD8(v17);
    (*(v8 + 8))(v10, v7);
    (*(v8 + 32))(a2, v13, v7);
    result = type metadata accessor for Replica(0);
    *(a2 + *(result + 20)) = 0;
  }

  return result;
}

uint64_t sub_1AE1A3160()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1EB5BDC80);
  __swift_project_value_buffer(v0, qword_1EB5BDC80);
  return sub_1AE23C77C();
}

uint64_t sub_1AE1A31DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1AE23BC1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AE23BC0C();
  sub_1AE23BBFC();
  sub_1AE23BCEC();
  sub_1AE23BD0C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AE1A3388()
{
  sqlite3_finalize(v0[11]);
  sqlite3_finalize(v0[12]);
  sqlite3_finalize(v0[13]);
  v1 = v0[14];

  return sqlite3_finalize(v1);
}

uint64_t sub_1AE1A33C8(void *a1, uint64_t a2, uint64_t a3)
{
  sqlite3_bind_blob(*(a3 + 112), 1, a1, 16, *(a3 + 72));
  v4 = *(a3 + 112);
  v5 = a3 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  v6 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  v7 = *(*(v6 - 8) + 48);
  result = v7(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  sqlite3_bind_int64(v4, 2, *(v5 + *(v6 + 20)));
  result = v7(v5, 1, v6);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sqlite3_bind_int64(*(a3 + 112), 3, *(v5 + *(v6 + 24)));
  result = sqlite3_step(*(a3 + 112));
  if (result == 101)
  {
    return result;
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v9);

  v10 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024(v10, v11, v12);
  swift_allocError();
  *v13 = 0xD000000000000010;
  *(v13 + 8) = 0x80000001AE262EB0;
  *(v13 + 16) = 2;
  return swift_willThrow();
}