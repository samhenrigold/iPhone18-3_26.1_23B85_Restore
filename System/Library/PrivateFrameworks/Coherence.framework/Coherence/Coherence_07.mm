void sub_1ADE63600(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v20 = a3[1];
  v21 = *a3;
  v16 = *(a3 + 4);
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v33, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v24);
  if (!v8)
  {
    v34[4] = v29;
    v34[5] = v30;
    v34[6] = v31;
    v34[7] = v32;
    v34[0] = v25;
    v34[1] = v26;
    v34[2] = v27;
    v34[3] = v28;
    v17 = v33;
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    v19 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v19;
    *(inited + 16) = 0;
    *(inited + 24) = v19;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v17;
    *(inited + 56) = a5 & 1;
    v22[1] = v20;
    v22[0] = v21;
    v23 = v16;
    sub_1ADE63800(v34, v22, a4, a6, a7, a8);
    sub_1ADDCEDE0(&v24, &qword_1EB5BA278, &unk_1AE241D30);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
  }
}

void sub_1ADE63800(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = v6;
  v111 = a6;
  v112 = a5;
  v115 = a4;
  v116 = a3;
  v11 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v113 = *a2;
  v114 = v14;
  v15 = *(a2 + 4);
  v16 = MEMORY[0x1E69E7CC8];
  v127 = MEMORY[0x1E69E7CC8];
  v117 = a1;
  sub_1ADDD5D3C(a1);
  if (v7)
  {
    return;
  }

  v109 = v11;
  v110 = v15;
  v108 = v13;
  type metadata accessor for CRProtoDecodeContext();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v16;
  v18 = v117;
  v17[4] = v116;
  v17[5] = v16;
  v19 = v18[3];
  swift_retain_n();
  sub_1ADE73B00(v18, &v121);

  sub_1AE1B5950(v19);

  sub_1ADE6AF00(v18);
  *(v8 + 16) = v17;

  v21 = v18[8];
  v20 = v18[9];
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v23 = v18[8];
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  if (v21)
  {
    v24 = v18[9];
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v21, v20);
  sub_1ADDD6748(v23, v24, v8, &v121);
  v25 = v122;
  v98 = v121;
  v26 = v18[14];
  v27 = v18[15];
  if (v26)
  {
    v28 = v18[14];
  }

  else
  {
    v28 = v22;
  }

  if (v26)
  {
    v29 = v18[15];
  }

  else
  {
    v29 = v22;
  }

  sub_1ADE42C78(v26, v27);
  sub_1ADDD6748(v28, v29, v8, &v121);
  v105 = 0;
  v95 = v121;
  v96 = v25;
  v94 = v122;
  v30 = v18[7];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 32);
    v97 = MEMORY[0x1E69E7CC8];
    v33 = v112;
    v34 = v110;
    v99 = v8;
    while (1)
    {
      v107 = v32;
      v36 = *v32;
      swift_beginAccess();
      v37 = v36[8];
      v38 = v36[9];
      v39 = v36;
      v40 = v36[10];
      if (v37)
      {
        v41 = v36[8];
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      if (v37)
      {
        v42 = v36[9];
      }

      else
      {
        v42 = 0;
      }

      if (v37)
      {
        v43 = v40;
      }

      else
      {
        v43 = 0xC000000000000000;
      }

      v44 = v43 >> 62;
      v116 = v41;
      v117 = v43;
      if ((v43 >> 62) > 1)
      {
        if (v44 != 2)
        {
          goto LABEL_52;
        }

        v45 = *(v42 + 16);
        v46 = *(v42 + 24);
      }

      else
      {
        if (!v44)
        {
          if ((v43 & 0xFF000000000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_35;
        }

        v45 = v42;
        v46 = v42 >> 32;
      }

      if (v45 == v46)
      {
LABEL_52:

        sub_1ADE56F74(v37, v38, v40);

        sub_1ADE42E40(v78, v79, v80);
        swift_allocError();
        *v81 = 0xD000000000000016;
        *(v81 + 8) = 0x80000001AE25FC80;
        *(v81 + 16) = 0;
        swift_willThrow();

        sub_1ADDCC35C(v42, v117);

        return;
      }

LABEL_35:
      v106 = v31;

      sub_1ADE56F74(v37, v38, v40);
      v47 = v42;
      v48 = v42;
      v49 = v117;
      sub_1ADDD86D8(v47, v117);

      sub_1ADDCC35C(v48, v49);
      v119[0] = v113;
      v119[1] = v114;
      v120 = v34;
      v50 = v33;
      type metadata accessor for Capsule(0, v115, v33, v51);
      v52 = v108;
      sub_1ADDFC54C(v108);
      v53 = *(v52 + *(v109 + 20));
      sub_1ADDD86D8(v48, v49);
      sub_1ADDDF7A8(v48, v49, v53, &v121);
      sub_1ADDCC35C(v48, v49);
      sub_1ADE73DF4(v52);
      if (v123)
      {
        v103 = v123;
        v54 = v121;
        v100 = v122;
        v101 = v124;
        v102 = v125;
        v104 = v126;
        swift_beginAccess();
        v8 = v99;
        if (v39[7])
        {
          inited = v39[7];
        }

        else
        {
          type metadata accessor for Proto_CRDT._StorageClass();
          inited = swift_initStaticObject();
        }

        v56 = v48;
        type metadata accessor for CRDecoder();
        swift_allocObject();

        v57 = sub_1ADDE77B4(inited, v8);

        if (!v54)
        {
          __break(1u);
          goto LABEL_64;
        }

        v58 = *(*v54 + 240);

        v116 = v57;
        v59 = v105;
        v58(&v121, v57);
        if (v59)
        {

          sub_1ADDDC21C(v54, v100, v103, v101, v102, v104);

          sub_1ADDCC35C(v48, v117);

          goto LABEL_57;
        }

        v60 = v121;
        swift_beginAccess();
        v61 = v39[5];
        if (v61)
        {
          v62 = v39[5];
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        v63 = v54;
        if (v61)
        {
          v64 = v39[6];
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        sub_1ADE42C78(v61, v39[6]);
        v65 = v116;

        sub_1ADDD6748(v62, v64, v65, &v121);
        v105 = 0;
        v66 = v121;
        v67 = v122;

        v68 = v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v68;
        v70 = v66;
        v71 = v56;
        v72 = v56;
        v73 = v117;
        sub_1ADEBFCE8(v70, v67, v60, v71, v117, isUniquelyReferenced_nonNull_native);
        sub_1ADDDC21C(v63, v100, v103, v101, v102, v104);

        sub_1ADDCC35C(v72, v73);
        v97 = v121;
        v127 = v121;
        v33 = v112;
        v35 = v107;
        v34 = v110;
      }

      else
      {
        sub_1ADDCC35C(v48, v49);

        v34 = v110;
        v35 = v107;
        v33 = v50;
        v8 = v99;
      }

      v32 = v35 + 1;
      v31 = v106 - 1;
      if (v106 == 1)
      {
        goto LABEL_49;
      }
    }
  }

  v97 = MEMORY[0x1E69E7CC8];
LABEL_49:
  v74 = v97;
  v75 = *(v8 + 16);
  if (!v75)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v76 = *(*v75 + 184);

  v77 = v105;
  v76(v8);
  if (!v77)
  {

    if (*(v8 + 16))
    {
      swift_beginAccess();

      sub_1ADE641AC(v82, &v127);
      v84 = v83;

      v85 = v111;
      if (v84[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F0, &unk_1AE2422A0);
        v86 = sub_1AE23DCDC();
      }

      else
      {
        v86 = MEMORY[0x1E69E7CC8];
      }

      v87 = v96;
      *&v119[0] = v86;
      sub_1ADE710D0(v84, 1, v119);
      v88 = *&v119[0];
      type metadata accessor for CapsuleMergeableDelta.Storage();
      v89 = swift_allocObject();
      v89[2] = v98;
      v89[3] = v87;
      v90 = v94;
      v89[4] = v95;
      v89[5] = v90;
      v89[6] = v74;
      v89[7] = v88;
      v91 = qword_1ED96B308;

      if (v91 != -1)
      {
        swift_once();
      }

      sub_1AE1F9D8C(v119);
      v118 = v119[0];
      sub_1ADDE1CB8(&v118);

      v92 = MEMORY[0x1E69E7CD0];
      *v85 = v89;
      v85[1] = v92;
      return;
    }

LABEL_65:
    __break(1u);
    return;
  }

LABEL_57:
}

void sub_1ADE641AC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = v6;
  v23 = v2;
LABEL_4:
  v8 = v7;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v7 = v8;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = (*(a1 + 56) + 48 * v10);
    v15 = *v14;
    v16 = v14[3];
    v26 = v14[2];
    v27 = *(*a2 + 16);
    sub_1ADDD86D8(*v11, v12);

    if (!v27 || (sub_1ADDDE7CC(v13, v12), (v17 & 1) == 0))
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1ADE55AE4(0, v21[2] + 1, 1, v21);
      }

      v19 = v21[2];
      v18 = v21[3];
      if (v19 >= v18 >> 1)
      {
        v21 = sub_1ADE55AE4((v18 > 1), v19 + 1, 1, v21);
      }

      v21[2] = v19 + 1;
      v20 = &v21[5 * v19];
      v20[4] = v13;
      v20[5] = v12;
      v20[6] = v26;
      v20[7] = v16;
      v20[8] = v15;
      v6 = v22;
      v2 = v23;
      goto LABEL_4;
    }

    sub_1ADDCC35C(v13, v12);

    v8 = v7;
    v6 = v22;
    v2 = v23;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1ADE64414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    v5 = swift_allocError();
    *v6 = 0xD000000000000014;
    *(v6 + 8) = 0x80000001AE25FB50;
    *(v6 + 16) = 0;
    v4 = v5;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1ADE644B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v3 + 24) = v8;
  *(v3 + 32) = v8;
  *(v3 + 40) = v8;
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v22, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v12);
  if (v4)
  {

    sub_1ADDCC35C(a1, a2);

    type metadata accessor for CRDecoder();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v13;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = v20;
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v16;
    *(v3 + 57) = v22;
    sub_1ADDD5D3C(v21);
    *(v3 + 16) = a3;

    inited = v11;
    if (v11 >> 62 || (v11 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    else
    {
    }

    sub_1ADDCC35C(a1, a2);

    sub_1ADDCEDE0(&v12, &qword_1EB5BA278, &unk_1AE241D30);
    *(v3 + 64) = inited;
  }

  return v3;
}

uint64_t sub_1ADE64748(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v3 + 24) = v8;
  *(v3 + 32) = v8;
  *(v3 + 40) = v8;
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE6035C(&v22, a1, a2, qword_1ED96F240, *algn_1ED96F248, &v12);
  if (v4)
  {

    sub_1ADDCC35C(a1, a2);

    type metadata accessor for CRDecoder();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v13;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = v20;
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v16;
    *(v3 + 57) = v22;
    sub_1ADDD5D3C(v21);
    *(v3 + 16) = a3;

    inited = v11;
    if (v11 >> 62 || (v11 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    else
    {
    }

    sub_1ADDCC35C(a1, a2);
    sub_1ADDCEDE0(&v12, &qword_1EB5BA278, &unk_1AE241D30);

    *(v3 + 64) = inited;
  }

  return v3;
}

uint64_t sub_1ADE649D0(void *a1, char *a2)
{
  v16 = *a2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v4;
  *(v2 + 32) = v4;
  *(v2 + 40) = v4;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = 0;
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];
  if (v7)
  {
    v9 = a1[7];
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = a1[8];
  }

  else
  {
    v10 = 0xC000000000000000;
  }

  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v15 = v7;
  sub_1ADE73C1C(v5, v6, v7, v8);
  sub_1ADDD86D8(v9, v10);
  sub_1ADDCC35C(v9, v10);

  v11 = sub_1ADDE70B0(v9, v10);
  if (v17)
  {
    sub_1ADE73C68(a1);
    type metadata accessor for CRDecoder();
    sub_1ADDCC35C(v9, v10);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v11;
    sub_1ADDCC35C(v9, v10);
    *(v2 + 24) = v12;

    if (v15)
    {
      v13 = v5;
      sub_1ADE73C1C(v5, v6, v15, v8);

      sub_1ADDCC35C(v5, v6);

      *(v2 + 32) = v15;

      sub_1ADDD86D8(v5, v6);
    }

    else
    {
      sub_1ADE73C1C(v5, v6, 0, v8);
      v8 = MEMORY[0x1E69E7CC0];

      v6 = 0xC000000000000000;
      sub_1ADDCC35C(0, 0xC000000000000000);
      swift_bridgeObjectRelease_n();
      *(v2 + 32) = v8;

      v13 = 0;
    }

    sub_1ADE73C68(a1);

    sub_1ADDCC35C(v13, v6);

    *(v2 + 40) = v8;

    *(v2 + 57) = v16;
  }

  return v2;
}

void sub_1ADE64C4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ADDE78C8();
  v8 = v7;
  v9 = *(v3 + 16);

  sub_1AE03DCF4(v8, v9, a1, a2, a3);
}

void sub_1ADE64CB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1ADDE78C8();
  v10 = v9;
  v11 = *(v4 + 16);

  sub_1AE16B204(v10, a4, v11, a1, a2, a3);
}

void sub_1ADE64D2C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  sub_1ADDE78C8();
  v15 = v14;
  v16 = *(v7 + 16);

  sub_1ADFA130C(v15, v16, a1, a2, a3, a4, a5, x8_0);
}

void sub_1ADE64DC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_1ADDE78C8();
  v14 = v13;
  v15 = *(v6 + 16);

  sub_1AE22A8B8(v14, v15, a1, a2, a3, a4, a5, a6);
}

void sub_1ADE64E54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1ADDE78C8();
  v10 = *(v9 + 16);
  if ((~v10 & 0xF000000000000007) != 0 && (v10 & 0xF000000000000000) == 0x6000000000000000)
  {
    v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v12 = &off_1ED967FA0;
  }

  v13 = *v12;

  v14 = *(v4 + 16);

  sub_1ADF57030(v13, v14, a1, a2, a3, a4);
}

void sub_1ADE64F48(uint64_t *a1@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  sub_1ADDE78C8();
  v3 = *(v2 + 16);
  v4 = (~v3 & 0xF000000000000007) != 0 && (v3 & 0xF000000000000000) == 0x4000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v9 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v10 = *(v9 + 80);
    *&v34[16] = *(v9 + 64);
    *&v34[32] = v10;
    *&v34[48] = *(v9 + 96);
    *&v34[64] = *(v9 + 112);
    v11 = *(v9 + 32);
    v32 = *(v9 + 16);
    v33 = v11;
    *v34 = *(v9 + 48);
    sub_1ADE51B64(&v32, v31);

    v26 = *&v34[56];
    v27 = *&v34[40];
    v25 = *&v34[24];
    v8 = *v34;
    v28 = v33;
    v29 = *&v34[8];
    v7 = *(&v32 + 1);
    v6 = v32;
  }

  else
  {

    v6 = 0;
    v28 = vdupq_n_s64(v5);
    v29 = 0u;
    v7 = 0xE000000000000000;
    v8 = v5;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
  }

  v12 = *(v1 + 16);
  type metadata accessor for CRStringRef();
  v13 = swift_allocObject();
  v14 = type metadata accessor for CRStringDecoder();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
  LOBYTE(v32) = 1;
  *v16 = 0;
  *(v16 + 1) = v5;
  *(v16 + 2) = v5;
  *(v16 + 3) = v5;
  *(v16 + 4) = 0;
  v16[40] = 1;
  *(v16 + 41) = v31[0];
  *(v16 + 11) = *(v31 + 3);
  *(v16 + 6) = 0;
  *(v16 + 7) = 0;
  v16[64] = 1;
  v17 = &v15[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  *v17 = v6;
  *(v17 + 1) = v7;
  *(v17 + 1) = v28;
  *(v17 + 4) = v8;
  *(v17 + 56) = v25;
  *(v17 + 40) = v29;
  *(v17 + 88) = v26;
  *(v17 + 72) = v27;
  *&v15[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = v12;
  v30.receiver = v15;
  v30.super_class = v14;

  v18 = objc_msgSendSuper2(&v30, sel_init);
  v19 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
  *&v32 = 0;
  v20 = [v19 initWithDecoder:v18 error:&v32];
  if (v20)
  {
    v21 = v20;
    v22 = v32;

    *(v13 + 16) = v21;
    *a1 = v13;
  }

  else
  {
    v23 = v32;
    sub_1AE23BC9C();

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }
}

void sub_1ADE651F0(uint64_t **a1@<X8>)
{
  sub_1ADDE78C8();
  v4 = *(v1 + 16);
  v6 = *(v5 + 16);
  if ((~v6 & 0xF000000000000007) != 0 && (v6 & 0xF000000000000000) == 0x7000000000000000)
  {
    v13 = (v6 & 0xFFFFFFFFFFFFFFFLL);
    v8 = v13[2];
    v9 = v13[3];
    v10 = v13[4];
    v11 = v13[5];
    v12 = v13[6];
    sub_1ADE42C78(v9, v10);
    sub_1ADE42C78(v11, v12);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  type metadata accessor for CRCounterRef();
  swift_allocObject();

  v14 = sub_1AE1A09F4(v15, v4);

  if (!v2)
  {
    *a1 = v14;
  }
}

void sub_1ADE65304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1ADDE78C8();
  v8 = *(v7 + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x5000000000000000)
  {
    v18 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v19 = *(v18 + 80);
    *&v25[16] = *(v18 + 64);
    *&v25[32] = v19;
    *&v25[48] = *(v18 + 96);
    *&v25[64] = *(v18 + 112);
    v20 = *(v18 + 32);
    v23 = *(v18 + 16);
    v24 = v20;
    *v25 = *(v18 + 48);
    sub_1ADE51B64(&v23, v22);

    v17 = *&v25[56];
    v16 = *&v25[40];
    v15 = *&v25[24];
    v13 = *&v25[8];
    v11 = *v25;
    v12 = v24;
    v14 = *(&v23 + 1);
    v10 = v23;
  }

  else
  {

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v13 = 0uLL;
    v14 = 0xE000000000000000;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v23 = v10;
  *(&v23 + 1) = v14;
  v24 = v12;
  *v25 = v11;
  *&v25[8] = v13;
  *&v25[24] = v15;
  *&v25[40] = v16;
  *&v25[56] = v17;
  v21 = *(v3 + 16);

  sub_1AE163E0C(&v23, v21, a1, a2, a3);
}

uint64_t sub_1ADE65448()
{
  sub_1ADDE78C8();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = (~v2 & 0xF000000000000007) != 0 && (v2 & 0xF000000000000000) == 0x9000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  v6 = *(v5 + 16);
  if (v6)
  {
    v24 = v3;
    result = sub_1ADE6F39C(0, v6, 0);
    v8 = 0;
    v9 = (v5 + 56);
    v10 = v6;
    while (v8 < *(v5 + 16))
    {
      v12 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      if (v13)
      {
        v21 = v3;
        v3 = v5;
        v14 = *v9;
        v15 = *(v20 + 16);
        sub_1ADDD86D8(v12, v11);
        sub_1ADE42C78(v13, v14);
        sub_1ADDD86D8(v12, v11);
        sub_1ADE42C78(v13, v14);

        sub_1ADDD6748(v13, v14, v15, &v23);
        if (v0)
        {

          sub_1ADDCC35C(v12, v11);
          sub_1ADE42CB8(v13, v14);
          sub_1ADDCC35C(v12, v11);

          return v3;
        }

        sub_1ADDCC35C(v12, v11);
        result = sub_1ADE42CB8(v13, v14);
        v16 = v23;
        v5 = v3;
        v3 = v21;
      }

      else
      {
        result = sub_1ADDD86D8(*(v9 - 3), *(v9 - 2));
        v16 = 0uLL;
      }

      v24 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        v22 = v16;
        result = sub_1ADE6F39C((v17 > 1), v18 + 1, 1);
        v16 = v22;
        v3 = v24;
      }

      ++v8;
      *(v3 + 16) = v18 + 1;
      v19 = v3 + 32 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v11;
      *(v19 + 48) = v16;
      v9 += 4;
      if (v10 == v8)
      {

        return v3;
      }
    }

    __break(1u);
  }

  else
  {

    return v3;
  }

  return result;
}

uint64_t CRDecoder.CRDTContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE656E4(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v29 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE6F00C(0, v3, 0);
    v6 = 0;
    v4 = v29;
    v28 = v1;
    v7 = *(v1 + 16);
    v8 = v5 + 32;
    do
    {
      v9 = *(v7 + 32);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v8 + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        v15 = (v9 + 40);
        while (1)
        {
          result = *(v15 - 1);
          if (result == v13 && *v15 == v14)
          {
            break;
          }

          result = sub_1AE23E00C();
          if (result)
          {
            break;
          }

          ++v11;
          v15 += 2;
          if (v10 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1ADE6F00C((v17 > 1), v18 + 1, 1);
      }

      ++v6;
      *(v29 + 16) = v18 + 1;
      *(v29 + 8 * v18 + 32) = v11;
    }

    while (v6 != v3);
    v2 = v28;
  }

  v19 = *(v2 + 16);
  v20 = *(v19 + 64);
  if (v20)
  {
    v21 = *(v20 + 16);
    if ((~v21 & 0xF000000000000007) != 0 && (v21 & 0xF000000000000000) == 0x3000000000000000)
    {
      v25 = v21 & 0xFFFFFFFFFFFFFFFLL;
      v23 = *(v25 + 16);
      v24 = *(v25 + 24);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
      v24 = MEMORY[0x1E69E7CC0];
    }

    v26 = sub_1ADE7249C(v4, v23, v24);

    if (!v26)
    {
      return 0;
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v27 = sub_1ADDE77B4(v26, v19);

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE65924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE05C74(a1, a2, a3);
  if (!v3)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1ADE65960()
{
  v2 = sub_1AE23C34C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1AE23C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  if (*(v10 + 57) > 1u)
  {
    if (*(v10 + 57) != 2)
    {
      sub_1ADE08CAC(v5, v6, v7);
      if (!v1)
      {
        sub_1AE23BF0C();
      }

      return;
    }
  }

  else if (*(v10 + 57))
  {
    v11 = 0x80000001AE25FD10;
    sub_1ADE42E40(v5, v6, v7);
    swift_allocError();
    v13 = 0xD00000000000001FLL;
LABEL_11:
    *v12 = v13;
    *(v12 + 8) = v11;
    *(v12 + 16) = 0;
    swift_willThrow();
    return;
  }

  v14 = *(v10 + 72);
  if (v14)
  {
    v15 = *(v14 + 16);
    if ((~v15 & 0xF000000000000007) == 0 || ((v15 >> 59) & 0x1E | (v15 >> 2) & 1) != 3)
    {
      v11 = 0x80000001AE25FD30;
      sub_1ADE42E40(v5, v6, v7);
      swift_allocError();
      v13 = 0xD000000000000016;
      goto LABEL_11;
    }

    v17 = v15 & 0xFFFFFFFFFFFFFFBLL;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v23 = v18;
    v24 = v19;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v20 = v5;
    sub_1ADDD86D8(v18, v19);
    sub_1ADDD86D8(v18, v19);
    sub_1AE23C33C();
    sub_1ADE725D0();
    sub_1AE23C52C();
    if (v1)
    {
      sub_1ADDCC35C(v18, v19);
    }

    else
    {
      sub_1AE23C2AC();
      sub_1ADDCC35C(v18, v19);
      (*(v4 + 8))(v9, v20);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADE65C1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + 72);
  if (v4)
  {
    v5 = *(v4 + 16);
    if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 3)
    {
      v9 = v5 & 0xFFFFFFFFFFFFFFBLL;
      v7 = *(v9 + 16);
      sub_1ADDD86D8(v7, *(v9 + 24));
    }

    else
    {
      v7 = 0x80000001AE25FD30;
      sub_1ADE42E40(result, a2, a3);
      swift_allocError();
      *v8 = 0xD000000000000016;
      *(v8 + 8) = 0x80000001AE25FD30;
      *(v8 + 16) = 0;
      swift_willThrow();
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE65D18@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 72);
  if (v6)
  {
    v7 = *(v6 + 16);
    if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 6)
    {
      v10 = v7 & 0xFFFFFFFFFFFFFFBLL;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      return sub_1ADDD6748(v11, v12, v5, a4);
    }

    else
    {
      sub_1ADE42E40(result, a2, a3);
      swift_allocError();
      *v9 = 0xD00000000000001BLL;
      *(v9 + 8) = 0x80000001AE25FD90;
      *(v9 + 16) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADE65E00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 72);
  if (!v6)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 16);
  if ((~v7 & 0xF000000000000007) == 0 || ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) != 12)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v9 = 0xD000000000000019;
    *(v9 + 8) = 0x80000001AE25FDB0;
    *(v9 + 16) = 0;
    swift_willThrow();
    return;
  }

  v10 = (v7 & 0xFFFFFFFFFFFFFFBLL);
  v11 = v10[3];
  v12 = v10[4];
  v13 = v10[5];
  v14 = v10[6];
  v15 = *(v5 + 16);
  if (*(v5 + 56) == 1)
  {
    if (v15)
    {
      sub_1ADDD86D8(v11, v12);
      sub_1ADDD86D8(v13, v14);

      sub_1AE1A3880(v11, v12, a4);

      sub_1ADDCC35C(v11, v12);
      sub_1ADDCC35C(v13, v14);
      return;
    }

    goto LABEL_13;
  }

  if (v15)
  {
    v17 = *(*v15 + 224);
    sub_1ADDD86D8(v11, v12);
    sub_1ADDD86D8(v13, v14);

    v17(v5, v11, v12);

    sub_1ADDCC35C(v11, v12);
    sub_1ADDCC35C(v13, v14);
    return;
  }

LABEL_14:
  __break(1u);
}

void sub_1ADE65FE0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 72);
  if (v4)
  {

    sub_1ADF84CD8(v4, v3, result, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE66040(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v4 + 72);
  if (v5)
  {

    sub_1ADF8644C(v5, v4, result, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE660B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v6 + 72);
  if (v7)
  {

    sub_1AE04520C(v7, v6, result, a2, a3, a4, a5);
  }

  else
  {
    __break(1u);
  }
}

void *CRDecoder.deinit()
{

  return v0;
}

uint64_t CREncoder.__allocating_init()()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v0 = sub_1ADDCE2E4(0, v3);
  sub_1ADDCEDE0(v3, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CREncoder();
  swift_allocObject();
  v1 = sub_1ADE72628(v0);

  return v1;
}

uint64_t CREncoder.__allocating_init(_:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1ADE72628(a1);

  return v2;
}

uint64_t CREncoder.init(_:)(void *a1)
{
  v2 = sub_1ADE72628(a1);

  return v2;
}

uint64_t CREncoder.__allocating_init(_:version:)(void *a1, char *a2)
{
  swift_allocObject();
  v4 = sub_1ADE726C0(a1, a2);

  return v4;
}

uint64_t CREncoder.init(_:version:)(void *a1, char *a2)
{
  v3 = sub_1ADE726C0(a1, a2);

  return v3;
}

uint64_t CREncoder.init(_:version:fileSignature:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC8];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v8;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 72) = v8;
  *(v4 + 80) = v7;
  *(v4 + 88) = v7;
  *(v4 + 96) = v7;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  if (a4 >> 60 == 15)
  {
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED96F240;
    v10 = *algn_1ED96F248;
    sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
    goto LABEL_17;
  }

  v10 = a4;
  v9 = a3;
  v11 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(a3 + 16);
    v13 = *(a3 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a4);
    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = HIDWORD(a3) - a3;
LABEL_14:
  sub_1ADDD86D8(a3, a4);
LABEL_15:
  if (v12 == 4)
  {
    sub_1ADDE1588(v9, v10);
LABEL_17:
    *(v4 + 24) = v9;
    *(v4 + 32) = v10;
    *(v4 + 16) = a1;
    *(v4 + 104) = v6;
    return v4;
  }

LABEL_19:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE66494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (*(v6 + 16))
  {

    v7 = sub_1ADDD7A10(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if ((v9 & 0x8000000000000000) == 0)
      {
        return v9;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v9 = *(*(v3 + 80) + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 72);
  *(v3 + 72) = 0x8000000000000000;
  sub_1ADEBF270(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 72) = v17;
  swift_endAccess();
  swift_beginAccess();
  v11 = *(v3 + 80);

  v12 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 80) = v11;
  if ((v12 & 1) == 0)
  {
    v11 = sub_1ADE55240(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 80) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1ADE55240((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  *(v3 + 80) = v11;
  swift_endAccess();
  return v9;
}

uint64_t sub_1ADE66644(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 64);
  if (*(v6 + 16))
  {

    v7 = sub_1ADDDE7CC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if ((v9 & 0x8000000000000000) == 0)
      {
        return v9;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v9 = *(*(v3 + 56) + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 64);
  *(v3 + 64) = 0x8000000000000000;
  sub_1ADEBF90C(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 64) = v17;
  swift_endAccess();
  swift_beginAccess();
  v11 = *(v3 + 56);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v11;
  if ((v12 & 1) == 0)
  {
    v11 = sub_1ADE55498(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 56) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1ADE55498((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  *(v3 + 56) = v11;
  swift_endAccess();
  sub_1ADDD86D8(a1, a2);
  return v9;
}

void *sub_1ADE667F8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v5, v4);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v8 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v5, v4);

  sub_1ADDCC35C(v5, v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v9 = inited[8];
  v10 = inited[9];
  v11 = inited[10];
  inited[8] = v8;
  inited[9] = v5;
  inited[10] = v4;
  sub_1ADE73D6C(v9, v10, v11);

  sub_1ADDF5C7C(v2);
  v13 = v12;
  v15 = v14;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v16 = inited[5];
  v17 = inited[6];
  inited[5] = v13;
  inited[6] = v15;
  result = sub_1ADE42CB8(v16, v17);
  v20 = *(v2 + 112);
  v19 = *(v2 + 120);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  if (v6)
  {
    v21 = *(*v6 + 184);

    v21(v2);
    if (v28)
    {

      inited = v6;
    }

    else
    {

      if (*(v2 + 112) || *(v2 + 120))
      {
        v25 = sub_1ADDFCC74(v22, v23, v24);
        *(v2 + 112) = v20;
        v26 = v25;

        *(v3 + 120) = v19;

        swift_beginAccess();
        v27 = *(v26 + 24);
      }

      else
      {
        type metadata accessor for Proto_CRDT._StorageClass();
        v27 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      inited[7] = v27;
    }

    return inited;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1ADE66B08@<D0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t (*a3)(__int128 *, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v77 = a4;
  v73 = a7;
  v12 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v75 = v20;
  v76 = v19;
  v71 = v22;
  v72 = v21;
  v74 = v23;
  if ((a2 & 1) == 0)
  {
    v82 = a3;
    v114 = v19;
    v115 = v20;
    v116 = v21;
    v117 = v22;
    v118 = v23;
    v25 = v21;
    v26 = v22;
    *&v83 = type metadata accessor for Capsule(0, a5, a6, v16);
    sub_1ADDFC54C(v18);
    sub_1ADE73DF4(v18);
    v70 = sub_1AE23DACC();
    v119 = v70;
    *&v100 = v76;
    *(&v100 + 1) = v75;
    *&v101 = v25;
    *(&v101 + 1) = v26;
    *&v102[0] = v74;
    sub_1ADDFC54C(v14);
    sub_1AE23C1FC();
    sub_1ADE73DF4(v14);
    v80 = a5;
    for (i = a6; ; a6 = i)
    {
      v27 = v108;
      if (v108 >= DWORD1(v108))
      {
        v28 = sub_1AE23C20C();
        if (!v28)
        {
          v105 = v112;
          v106[0] = v113[0];
          *(v106 + 11) = *(v113 + 11);
          v102[0] = v109[0];
          v102[1] = v109[1];
          v103 = v110;
          v104 = v111;
          v100 = v107;
          v101 = v108;
          sub_1ADDFD834(&v100);
          swift_beginAccess();

          sub_1ADDFD888(v41);

          v24 = v119;
          goto LABEL_20;
        }
      }

      else
      {
        v28 = *(&v107 + 1);
        LODWORD(v108) = v108 + 1;
      }

      v29 = v28 + *(v28 + 24) + (~v27 << 6);
      v31 = *(v29 + 32);
      v30 = *(v29 + 40);
      v83 = *(v29 + 48);
      v33 = *(v29 + 64);
      v32 = *(v29 + 72);
      v34 = *(v29 + 80);
      v35 = *(v29 + 88);
      v36 = v82;
      if (v82)
      {
        *&v100 = v31;
        *(&v100 + 1) = v30;
        sub_1ADDD86D8(v31, v30);
        v79 = v83;

        if (((v36)(&v100) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1ADDD86D8(v31, v30);
      }

      v89[0] = v31;
      v89[1] = v30;
      v84 = v83;
      v85 = v33;
      v86 = v32;
      v87 = v34;
      v88 = v35;
      v37 = v120;
      v38 = sub_1ADE667F8(v89, &v84);
      v120 = v37;
      if (v37)
      {
        v105 = v112;
        v106[0] = v113[0];
        *(v106 + 11) = *(v113 + 11);
        v102[0] = v109[0];
        v102[1] = v109[1];
        v103 = v110;
        v104 = v111;
        v100 = v107;
        v101 = v108;
        sub_1ADDFD834(&v100);

        sub_1ADDCC35C(v31, v30);
        v90 = 0xF000000000000007;
        v91 = 0;
        v92 = MEMORY[0x1E69E7CC0];
        v93 = MEMORY[0x1E69E7CC0];
        v94 = xmmword_1AE241910;
        v95 = MEMORY[0x1E69E7CC0];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        sub_1ADE6AF00(&v90);
        return result;
      }

      if (!v38)
      {
LABEL_13:

        sub_1ADDCC35C(v31, v30);
        goto LABEL_14;
      }

      MEMORY[0x1B26FB860](v39);
      if (*(v119 + 16) >= *(v119 + 24) >> 1)
      {
        v79 = *(v119 + 16);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();

      sub_1ADDCC35C(v31, v30);

      v70 = v119;
LABEL_14:
      a5 = v80;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *&v83 = v24;
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  v44 = v75;
  v43 = v76;
  sub_1ADDD86D8(v76, v75);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v45 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v43, v44);

  sub_1ADDCC35C(v43, v44);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v46 = *(inited + 64);
  v47 = *(inited + 72);
  v48 = *(inited + 80);
  v50 = v75;
  v49 = v76;
  *(inited + 64) = v45;
  *(inited + 72) = v49;
  *(inited + 80) = v50;
  sub_1ADE73D6C(v46, v47, v48);

  sub_1ADE73AC8(0xF000000000000007);
  *&v107 = v49;
  *(&v107 + 1) = v50;
  *&v108 = v72;
  *(&v108 + 1) = v71;
  *&v109[0] = v74;
  type metadata accessor for Capsule(0, a5, a6, v51);
  Capsule.version.getter(&v100);
  v90 = v100;
  sub_1ADDF5C7C(v78);
  v53 = v52;
  v55 = v54;

  sub_1ADE42CB8(0, 0);
  v56 = sub_1ADDF6AF0();
  v60 = v59;
  if (v59)
  {
    v61 = v56;
    v62 = v57;
    v63 = v58;
    sub_1ADE73B5C(0, 0, 0);
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  *&v100 = inited | 0x8000000000000000;
  *(&v100 + 1) = 0;
  *&v101 = 0;
  *(&v101 + 1) = v83;
  *(v102 + 8) = xmmword_1AE241910;
  *&v102[0] = MEMORY[0x1E69E7CC0];
  *(&v102[1] + 1) = MEMORY[0x1E69E7CC0];
  *&v103 = v53;
  *(&v103 + 1) = v55;
  *&v104 = v61;
  *(&v104 + 1) = v62;
  *&v105 = v60;
  *(&v105 + 1) = v63;
  v106[0] = 0uLL;
  *&v107 = inited | 0x8000000000000000;
  *(&v107 + 1) = 0;
  *&v108 = 0;
  *(&v108 + 1) = v83;
  *(v109 + 8) = xmmword_1AE241910;
  *&v109[0] = MEMORY[0x1E69E7CC0];
  *(&v109[1] + 1) = MEMORY[0x1E69E7CC0];
  *&v110 = v53;
  *(&v110 + 1) = v55;
  *&v111 = v61;
  *(&v111 + 1) = v62;
  *&v112 = v60;
  *(&v112 + 1) = v63;
  v113[0] = 0uLL;
  sub_1ADE73B00(&v100, &v90);
  sub_1ADE6AF00(&v107);
  v64 = v104;
  v65 = v73;
  v73[4] = v103;
  v65[5] = v64;
  v66 = v106[0];
  v65[6] = v105;
  v65[7] = v66;
  v67 = v101;
  *v65 = v100;
  v65[1] = v67;
  result = *v102;
  v68 = v102[1];
  v65[2] = v102[0];
  v65[3] = v68;
  return result;
}

double sub_1ADE67270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a1;
  v7 = sub_1ADE6B9FC(sub_1ADE73DB4, v23);
  if (v5)
  {
    v32 = 0xF000000000000007;
    v33 = 0;
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v37 = xmmword_1AE241910;
    v36 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    sub_1ADE6AF00(&v32);
  }

  else
  {
    v9 = v7;
    sub_1ADE73AC8(0xF000000000000007);
    swift_beginAccess();
    v10 = *(v4 + 96);

    v11 = sub_1ADDF6AF0();
    v15 = v14;
    if (v14)
    {
      v16 = v11;
      v17 = v12;
      v18 = v13;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v25 = v9;
    *&v26 = 0;
    *(&v26 + 1) = v10;
    *&v27[8] = xmmword_1AE241910;
    *v27 = MEMORY[0x1E69E7CC0];
    *&v27[24] = MEMORY[0x1E69E7CC0];
    v28 = 0uLL;
    *&v29 = v16;
    *(&v29 + 1) = v17;
    *&v30 = v15;
    *(&v30 + 1) = v18;
    v31 = 0uLL;
    v32 = v9;
    v33 = 0;
    v34 = 0;
    v35 = v10;
    v37 = xmmword_1AE241910;
    v36 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v39 = 0uLL;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    *&v41 = v15;
    *(&v41 + 1) = v18;
    v42 = 0uLL;
    sub_1ADE73B00(&v25, v24);
    sub_1ADE6AF00(&v32);
    v19 = v29;
    a4[4] = v28;
    a4[5] = v19;
    v20 = v31;
    a4[6] = v30;
    a4[7] = v20;
    v21 = v26;
    *a4 = v25;
    a4[1] = v21;
    result = *v27;
    v22 = *&v27[16];
    a4[2] = *v27;
    a4[3] = v22;
  }

  return result;
}

double sub_1ADE6742C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v19[2] = a1;
  v4 = sub_1ADE6B9FC(sub_1ADE73F24, v19);
  if (v2)
  {
    v28 = 0xF000000000000007;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    v33 = xmmword_1AE241910;
    v32 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    sub_1ADE6AF00(&v28);
  }

  else
  {
    v6 = v4;
    sub_1ADE73AC8(0xF000000000000007);
    v7 = sub_1ADDF6AF0();
    v11 = v10;
    if (v10)
    {
      v12 = v7;
      v13 = v8;
      v14 = v9;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    v21 = v6;
    *&v22 = 0;
    *(&v22 + 1) = MEMORY[0x1E69E7CC0];
    *&v23[8] = xmmword_1AE241910;
    *v23 = MEMORY[0x1E69E7CC0];
    *&v23[24] = MEMORY[0x1E69E7CC0];
    v24 = 0uLL;
    *&v25 = v12;
    *(&v25 + 1) = v13;
    *&v26 = v11;
    *(&v26 + 1) = v14;
    v27 = 0uLL;
    v28 = v6;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    v33 = xmmword_1AE241910;
    v32 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = 0uLL;
    *&v36 = v12;
    *(&v36 + 1) = v13;
    *&v37 = v11;
    *(&v37 + 1) = v14;
    v38 = 0uLL;
    sub_1ADE73B00(&v21, v20);
    sub_1ADE6AF00(&v28);
    v15 = v25;
    a2[4] = v24;
    a2[5] = v15;
    v16 = v27;
    a2[6] = v26;
    a2[7] = v16;
    v17 = v22;
    *a2 = v21;
    a2[1] = v17;
    result = *v23;
    v18 = *&v23[16];
    a2[2] = *v23;
    a2[3] = v18;
  }

  return result;
}

void sub_1ADE675B8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v17 = 0;
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    if (!__OFSUB__(*(v7 + 24), *(v7 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
    }

LABEL_9:
    a1 = sub_1ADDD86D8(v7, v8);
    goto LABEL_10;
  }

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_1ADE73ED0(a1, a2, a3);
  sub_1AE23BB1C();
  BYTE4(v17) = v6;
  HIWORD(v17) = v5;
  sub_1ADDCC35C(v7, v8);
  sub_1ADE73BC8(v10, v11, v12);
  v13 = sub_1AE23C51C();
  if (v4)
  {
    sub_1ADDCC35C(v17, 0x8000000000000uLL);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v15, v16);
  }
}

uint64_t sub_1ADE67778(_OWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  swift_beginAccess();
  if (*(*(v2 + 88) + 16))
  {
    v7 = dispatch_semaphore_create(0);
    type metadata accessor for CREncoder.UnsafeWrapper();
    v8 = swift_allocObject();
    v9 = a1[5];
    *(v8 + 88) = a1[4];
    *(v8 + 104) = v9;
    v10 = a1[7];
    *(v8 + 120) = a1[6];
    *(v8 + 136) = v10;
    v11 = a1[1];
    *(v8 + 24) = *a1;
    *(v8 + 40) = v11;
    v12 = a1[3];
    *(v8 + 56) = a1[2];
    *(v8 + 16) = v2;
    *(v8 + 72) = v12;
    v13 = sub_1AE23D1BC();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v8;
    v14[5] = v7;

    v15 = v7;
    sub_1AE1EA644(0, 0, v6, &unk_1AE242390, v14);

    sub_1ADDCEDE0(v6, &unk_1EB5BDD00, &qword_1AE242340);
    sub_1AE23D75C();
    swift_beginAccess();
    v17 = *(v8 + 104);
    v33 = *(v8 + 88);
    v16 = v33;
    v34 = v17;
    v19 = *(v8 + 136);
    v35 = *(v8 + 120);
    v18 = v35;
    v36 = v19;
    v20 = *(v8 + 40);
    v30[0] = *(v8 + 24);
    v30[1] = v20;
    v22 = *(v8 + 72);
    v31 = *(v8 + 56);
    v21 = v31;
    v32 = v22;
    *a1 = v30[0];
    a1[1] = v20;
    a1[2] = v21;
    a1[3] = v22;
    a1[4] = v16;
    a1[5] = v17;
    a1[6] = v18;
    a1[7] = v19;
    sub_1ADE73B00(v30, &v29);
    if (qword_1ED966B00 != -1)
    {
      swift_once();
    }

    v23 = sub_1AE23C78C();
    __swift_project_value_buffer(v23, qword_1ED96F1C8);
    v24 = sub_1AE23C76C();
    v25 = sub_1AE23D61C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      MEMORY[0x1B26FDA50](v26, -1, -1);
    }
  }

  *(v2 + 88) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1ADE67A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1ADE67AB0, 0, 0);
}

uint64_t sub_1ADE67AB0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1ADE67B60;

  return sub_1ADE67D44(v1 + 24);
}

uint64_t sub_1ADE67B60()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1ADE67CE0;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1ADE67C7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1ADE67C7C()
{
  sub_1AE23D76C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1ADE67CE0()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1ADE67D44(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ADE67D64, 0, 0);
}

uint64_t sub_1ADE67D64()
{
  v1 = v0[7];
  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1ADE67EB8;
    v4 = v0[7];

    return MEMORY[0x1EEE6DD58](v0 + 5, &type metadata for Proto_Asset, v2, 0, 0, &unk_1AE242358, v4, &type metadata for Proto_Asset);
  }

  else
  {
    *(v0[7] + 88) = MEMORY[0x1E69E7CC0];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1ADE67EB8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1ADE6805C;
  }

  else
  {
    v2 = sub_1ADE67FCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1ADE67FCC()
{
  v1 = v0[6];
  v2 = v0[5];

  *(v1 + 32) = v2;
  *(v0[7] + 88) = MEMORY[0x1E69E7CC0];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1ADE68074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA340, &qword_1AE242338);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE68188, 0, 0);
}

uint64_t sub_1ADE68188()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v24 = **(v0 + 152);
    v21 = sub_1AE23D1BC();
    v4 = *(v21 - 8);
    v23 = *(v4 + 56);
    v22 = (v4 + 48);
    v20 = (v4 + 8);

    v5 = 32;
    v25 = v2;
    while (1)
    {
      v26 = v3;
      v8 = *(v0 + 192);
      v9 = *(v0 + 200);
      v10 = *(v2 + v5);
      v23(v9, 1, 1, v21);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v10;
      sub_1ADDCEE40(v9, v8, &unk_1EB5BDD00, &qword_1AE242340);
      LODWORD(v8) = (*v22)(v8, 1, v21);
      swift_retain_n();
      v13 = *(v0 + 192);
      if (v8 == 1)
      {
        sub_1ADDCEDE0(*(v0 + 192), &unk_1EB5BDD00, &qword_1AE242340);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1AE23D1AC();
        (*v20)(v13, v21);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1AE23D16C();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:

      if (v15 | v14)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v14;
        *(v0 + 80) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 200);
      *(v0 + 112) = 1;
      *(v0 + 120) = v6;
      *(v0 + 128) = v24;
      swift_task_create();

      sub_1ADDCEDE0(v7, &unk_1EB5BDD00, &qword_1AE242340);
      v5 += 8;
      v2 = v25;
      v3 = v26 - 1;
      if (v26 == 1)
      {

        break;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  sub_1AE23D28C();
  *(v0 + 208) = MEMORY[0x1E69E7CC0];
  v17 = swift_task_alloc();
  *(v0 + 216) = v17;
  *v17 = v0;
  v17[1] = sub_1ADE68524;
  v18 = *(v0 + 168);

  return MEMORY[0x1EEE6DAD8](v0 + 16, 0, 0, v18, v0 + 136);
}

uint64_t sub_1ADE68524()
{

  if (v0)
  {

    v1 = sub_1ADE68810;
  }

  else
  {
    v1 = sub_1ADE6863C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1ADE6863C()
{
  v1 = *(v0 + 208);
  if (*(v0 + 32) >> 60 == 15)
  {
    v2 = *(v0 + 144);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168), *(v0 + 16));
    *v2 = v1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);
    v5 = *(v0 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 208);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1ADE55C2C(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v11 = v16;
    v10 = v17;
    if (v9 >= v8 >> 1)
    {
      v15 = sub_1ADE55C2C((v8 > 1), v9 + 1, 1, v7);
      v11 = v16;
      v10 = v17;
      v7 = v15;
    }

    *(v7 + 2) = v9 + 1;
    v12 = &v7[40 * v9];
    *(v12 + 2) = v10;
    *(v12 + 3) = v11;
    *(v12 + 8) = v5;
    *(v0 + 208) = v7;
    v13 = swift_task_alloc();
    *(v0 + 216) = v13;
    *v13 = v0;
    v13[1] = sub_1ADE68524;
    v14 = *(v0 + 168);

    return MEMORY[0x1EEE6DAD8](v0 + 16, 0, 0, v14, v0 + 136);
  }
}

uint64_t sub_1ADE68810()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1ADE688AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1ADE688CC, 0, 0);
}

uint64_t sub_1ADE688CC()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  v0[6] = v2;
  v3 = *(v1 + 24);
  v0[7] = v3;
  sub_1ADDD86D8(v2, v3);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1ADE689A0;
  v5 = v0[5];

  return sub_1AE239A9C((v0 + 2), 1, v5);
}

uint64_t sub_1ADE689A0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1ADE68BBC;
  }

  else
  {
    v2 = sub_1ADE68AB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1ADE68AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  if (v4 >> 60 == 15)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v5 = 0xD000000000000015;
    *(v5 + 8) = 0x80000001AE260340;
    *(v5 + 16) = 0;
    swift_willThrow();
    sub_1ADDCC35C(v3[6], v3[7]);
    sub_1ADDCC35C(0, 0xC000000000000000);
  }

  else
  {
    v7 = v3[2];
    v9 = v3[6];
    v8 = v3[7];
    v10 = v3[4];
    sub_1ADDCC35C(0, 0xC000000000000000);
    *v10 = 0;
    v10[1] = v9;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v4;
  }

  v6 = v3[1];

  return v6();
}

uint64_t sub_1ADE68BBC()
{
  sub_1ADDCC35C(v0[6], v0[7]);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1ADE68C2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = sub_1AE23BFEC();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = a1[4];
  v25 = v9;
  v26 = v10;
  v20 = v9;
  v21 = v10;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  type metadata accessor for Capsule(0, a2, a3, v14);
  Capsule.version.getter(&v19);
  v18 = v19;
  v17[3] = v9;
  v17[4] = v10;
  v17[5] = v12;
  v17[6] = v11;
  v17[7] = v13;
  Capsule.versionUUID.getter(v8);
  sub_1ADDD86D8(v9, v10);
  v15 = sub_1ADE68DC4(&v25, &v18, 0);
  (*(v6 + 8))(v8, v27);

  sub_1ADDCC35C(v25, v26);
  return v15;
}

uint64_t sub_1ADE68DC4(uint64_t *a1, __int128 *a2, unsigned int a3)
{
  v4 = v3;
  v5 = *a1;
  v6 = a1[1];
  v65 = *a2;
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v5, v6);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v8 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v5, v6);

  sub_1ADDCC35C(v5, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v9 = *(inited + 64);
  v10 = *(inited + 72);
  v11 = *(inited + 80);
  *(inited + 64) = v8;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  sub_1ADE73D6C(v9, v10, v11);
  v83 = v65;
  sub_1ADDF5C7C(v3);
  v66 = v12;
  v14 = v13;
  v15 = sub_1ADE42CB8(0, 0);
  v106 = sub_1ADDD8E0C(v15);
  v17 = v16;
  sub_1ADDCC35C(0, 0xC000000000000000);

  sub_1ADE73AC8(0xF000000000000007);
  v18 = inited | 0x8000000000000000;
  v19 = sub_1ADDF6AF0();
  v23 = v21;
  if (v21)
  {
    v24 = v14;
    v25 = v19;
    v26 = v22;
    v27 = v20;
    v19 = sub_1ADE73B5C(0, 0, 0);
    v28 = v27;
    v18 = inited | 0x8000000000000000;
    v29 = v26;
    v30 = v25;
    v14 = v24;
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v29 = 0;
  }

  v31 = *(v4 + 104);
  if ((v31 - 2) >= 2)
  {
    if (*(v4 + 104))
    {
      v83 = v18;
      *&v84 = 0;
      *(&v84 + 1) = MEMORY[0x1E69E7CC0];
      *&v85 = MEMORY[0x1E69E7CC0];
      *(&v85 + 1) = v106;
      *&v86 = v17;
      v57 = v17;
      v58 = v14;
      *(&v86 + 1) = MEMORY[0x1E69E7CC0];
      *&v87 = v66;
      *(&v87 + 1) = v14;
      *&v88 = v30;
      *(&v88 + 1) = v28;
      v63 = v28;
      v56 = v23;
      *&v89 = v23;
      *(&v89 + 1) = v29;
      v90 = 0uLL;
      v79 = v87;
      v80 = v88;
      v81 = v89;
      v82 = 0uLL;
      v75 = v18;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      v48 = v29;
      v49 = sub_1ADE73B00(&v83, &v67);
      sub_1ADE73BC8(v49, v50, v51);
      v52 = sub_1AE23C51C();
      if (!v64)
      {
        v32 = v52;
        v71 = v79;
        v72 = v80;
        v73 = v81;
        v74 = v82;
        v67 = v75;
        v68 = v76;
        v69 = v77;
        v70 = v78;
        sub_1ADE6AF00(&v67);

        v44 = v63;
        v42 = v48;
        goto LABEL_15;
      }

      v71 = v79;
      v72 = v80;
      v73 = v81;
      v74 = v82;
      v67 = v75;
      v68 = v76;
      v69 = v77;
      v70 = v78;
      sub_1ADE6AF00(&v67);

      v35 = v66;
      v53 = v48;
      v33 = v17;
      v34 = v106;
      v32 = MEMORY[0x1E69E7CC0];
      v40 = v18;
      v41 = v30;
      v42 = v53;
      v39 = v23;
      v43 = v63;
    }

    else
    {
      v45 = v28;
      v46 = v29;
      sub_1ADE42E40(v19, v20, v21);
      swift_allocError();
      *v47 = 0xD000000000000026;
      *(v47 + 8) = 0x80000001AE2601A0;
      *(v47 + 16) = 3;
      swift_willThrow();

      v39 = v23;
      v40 = v18;
      v41 = v30;
      v42 = v46;
      v43 = v45;
      v35 = v66;
      v33 = v17;
      v34 = v106;
      v32 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v91 = v18;
    v92 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v93 = MEMORY[0x1E69E7CC0];
    v94 = MEMORY[0x1E69E7CC0];
    v33 = v17;
    v34 = v106;
    v95 = v106;
    v96 = v33;
    v35 = v66;
    v97 = MEMORY[0x1E69E7CC0];
    v98 = v66;
    v99 = v14;
    v100 = v30;
    v101 = v28;
    v102 = v23;
    v103 = v29;
    v104 = 0;
    v105 = 0;
    v62 = v28;
    v36 = a3;
    v59 = v30;
    v61 = v18;
    v37 = v29;
    sub_1ADE675B8(&v91, (v31 + 4), v36);
    v55 = v38;

    v39 = v23;
    v41 = v59;
    v40 = v61;
    v42 = v37;
    v43 = v62;
    if (!v64)
    {
      v56 = v23;
      v57 = v33;
      v58 = v14;
      v44 = v62;
      v30 = v59;
      v18 = v61;
      v32 = v55;
LABEL_15:
      v83 = v18;
      *&v84 = 0;
      *(&v84 + 1) = MEMORY[0x1E69E7CC0];
      *&v85 = MEMORY[0x1E69E7CC0];
      *(&v85 + 1) = v106;
      *&v86 = v57;
      *(&v86 + 1) = MEMORY[0x1E69E7CC0];
      *&v87 = v66;
      *(&v87 + 1) = v58;
      *&v88 = v30;
      *(&v88 + 1) = v44;
      *&v89 = v56;
      *(&v89 + 1) = v42;
      v90 = 0uLL;
      sub_1ADE6AF00(&v83);
      return v32;
    }
  }

  v83 = v40;
  *&v84 = 0;
  *(&v84 + 1) = v32;
  *&v85 = v32;
  *(&v85 + 1) = v34;
  *&v86 = v33;
  *(&v86 + 1) = v32;
  *&v87 = v35;
  *(&v87 + 1) = v14;
  *&v88 = v41;
  *(&v88 + 1) = v43;
  *&v89 = v39;
  *(&v89 + 1) = v42;
  v90 = 0uLL;
  sub_1ADE6AF00(&v83);
  return v32;
}

uint64_t sub_1ADE69288@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  swift_beginAccess();
  v7 = MEMORY[0x1E69E7CC0];
  v4[11] = MEMORY[0x1E69E7CC0];

  v8 = v4[14];
  v9 = v4[15];
  v4[15] = 0;
  v4[14] = 0;
  v10 = (*(*v6 + 184))(v4);
  if (v3)
  {

    v24[0] = 0xF000000000000007;
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v7;
    v24[4] = v7;
    v25 = xmmword_1AE241910;
    v26 = v7;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    return sub_1ADE6AF00(v24);
  }

  else
  {
    if (v4[14] || v4[15])
    {
      v13 = sub_1ADDFCC74(v10, v11, v12);
      v4[14] = v8;
      v15 = v13;

      v4[15] = v9;

      swift_beginAccess();
      inited = *(v15 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    sub_1ADE73AC8(0xF000000000000007);
    result = sub_1ADDF6AF0();
    v20 = v19;
    if (v19)
    {
      v21 = result;
      v22 = v17;
      v23 = v18;
      result = sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    *a2 = inited;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = v7;
    *(a2 + 40) = xmmword_1AE241910;
    *(a2 + 56) = v7;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = v21;
    *(a2 + 88) = v22;
    *(a2 + 96) = v20;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = v23;
  }

  return result;
}

uint64_t sub_1ADE694A4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v4 + 104) - 2 >= 2)
  {
    if (*(v4 + 104))
    {
      *&v13 = *a1;
      v8 = sub_1ADE69288(&v13, v21);
      if (!v5)
      {
        v17 = v21[4];
        v18 = v21[5];
        v19 = v21[6];
        v20 = v21[7];
        v13 = v21[0];
        v14 = v21[1];
        v15 = v21[2];
        v16 = v21[3];
        sub_1ADE73BC8(v8, v9, v10);
        v3 = sub_1AE23C51C();
        v12[4] = v17;
        v12[5] = v18;
        v12[6] = v19;
        v12[7] = v20;
        v12[0] = v13;
        v12[1] = v14;
        v12[2] = v15;
        v12[3] = v16;
        sub_1ADE6AF00(v12);
      }
    }

    else
    {
      sub_1ADE42E40(a1, a2, a3);
      v3 = swift_allocError();
      *v7 = 0xD000000000000026;
      *(v7 + 8) = 0x80000001AE2601A0;
      *(v7 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
    *&v13 = *a1;
    sub_1ADE69288(&v13, v22);
    if (!v5)
    {
      sub_1ADE675B8(v22, *(v4 + 104) + 4, 0);
      v3 = v6;
      sub_1ADE6AF00(v22);
    }
  }

  return v3;
}

uint64_t sub_1ADE69650()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[5] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  v0[6] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v0[7] = v1;

  swift_beginAccess();
  v0[8] = v2;

  swift_beginAccess();
  v0[11] = v1;
}

uint64_t sub_1ADE69718@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = sub_1ADE69650();
  if (*(v2 + 104))
  {
    v63 = a2;
    swift_beginAccess();
    v10 = v6[3];
    v51 = v6[2];
    v52 = v10;

    sub_1ADDF5C7C(v2);
    v12 = v11;
    v14 = v13;

    sub_1ADE42CB8(0, 0);
    swift_beginAccess();
    v15 = v6[5];
    v51 = v6[4];
    v52 = v15;

    sub_1ADDF5C7C(v2);
    v17 = v16;
    v19 = v18;

    sub_1ADE42CB8(0, 0);
    swift_beginAccess();

    sub_1ADE71CD0(v20, v2, sub_1ADE69B1C);
    if (v4)
    {

      v51 = 0xF000000000000007;
      v52 = 0;
      v53 = 0;
      v54 = MEMORY[0x1E69E7CC0];
      v56 = xmmword_1AE241910;
      v55 = MEMORY[0x1E69E7CC0];
      v57 = MEMORY[0x1E69E7CC0];
      *&v58 = v12;
      *(&v58 + 1) = v14;
      v59 = 0u;
      v60 = 0u;
      v61 = v17;
      v62 = v19;
      return sub_1ADE6AF00(&v51);
    }

    else
    {
      v23 = v21;

      swift_beginAccess();

      sub_1ADE71CD0(v24, v2, sub_1ADE69E04);
      v27 = v26;

      v28 = sub_1ADDF6AF0();
      v32 = v31;
      *&v41 = v12;
      *(&v41 + 1) = v14;
      v42 = v19;
      if (v31)
      {
        v33 = v28;
        v34 = v29;
        v35 = v30;
        sub_1ADE73B5C(0, 0, 0);
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
      }

      sub_1ADDF6EEC();
      v44 = 0xF000000000000007;
      *&v45 = 0;
      *(&v45 + 1) = v27;
      *&v46[8] = xmmword_1AE241910;
      *v46 = MEMORY[0x1E69E7CC0];
      *&v46[24] = v23;
      v47 = v41;
      *&v48 = v33;
      *(&v48 + 1) = v34;
      *&v49 = v32;
      *(&v49 + 1) = v35;
      *&v50 = v17;
      *(&v50 + 1) = v42;
      v51 = 0xF000000000000007;
      v52 = 0;
      v53 = 0;
      v54 = v27;
      v56 = xmmword_1AE241910;
      v55 = MEMORY[0x1E69E7CC0];
      v57 = v23;
      v58 = v41;
      *&v59 = v33;
      *(&v59 + 1) = v34;
      *&v60 = v32;
      *(&v60 + 1) = v35;
      v61 = v17;
      v62 = v42;
      sub_1ADE73B00(&v44, v43);
      result = sub_1ADE6AF00(&v51);
      v36 = v48;
      v37 = v63;
      v63[4] = v47;
      v37[5] = v36;
      v38 = v50;
      v37[6] = v49;
      v37[7] = v38;
      v39 = v45;
      *v37 = v44;
      v37[1] = v39;
      v40 = *&v46[16];
      v37[2] = *v46;
      v37[3] = v40;
    }
  }

  else
  {
    sub_1ADE42E40(v7, v8, v9);
    swift_allocError();
    *v22 = 0xD00000000000002CLL;
    *(v22 + 8) = 0x80000001AE260250;
    *(v22 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

void sub_1ADE69B1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[4];
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v8, v7);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v11 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v8, v7);

  sub_1ADDCC35C(v8, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v12 = inited[8];
  v13 = inited[9];
  v14 = inited[10];
  inited[8] = v11;
  inited[9] = v8;
  inited[10] = v7;
  sub_1ADE73D6C(v12, v13, v14);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 112) = 0;
  v17 = (*(*v9 + 104))(a2);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    if (*(a2 + 112) || *(a2 + 120))
    {
      v20 = sub_1ADDFCC74(v17, v18, v19);
      *(a2 + 112) = v15;
      v21 = v20;

      *(a2 + 120) = v16;

      swift_beginAccess();
      v22 = *(v21 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v22 = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    inited[7] = v22;

    sub_1ADDF5C7C(a2);
    v24 = v23;
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v27 = inited[5];
    v28 = inited[6];
    inited[5] = v24;
    inited[6] = v26;
    sub_1ADE42CB8(v27, v28);
    *a4 = inited;
  }
}

void sub_1ADE69E04(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[4];
  type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDD86D8(v8, v7);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v11 = MEMORY[0x1E69E7CC0];

  sub_1ADDD86D8(v8, v7);

  sub_1ADDCC35C(v8, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE4C34(inited);
  }

  swift_beginAccess();
  v12 = inited[8];
  v13 = inited[9];
  v14 = inited[10];
  inited[8] = v11;
  inited[9] = v8;
  inited[10] = v7;
  sub_1ADE73D6C(v12, v13, v14);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 112) = 0;
  v17 = (*(*v9 + 184))(a2);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    if (*(a2 + 112) || *(a2 + 120))
    {
      v20 = sub_1ADDFCC74(v17, v18, v19);
      *(a2 + 112) = v15;
      v21 = v20;

      *(a2 + 120) = v16;

      swift_beginAccess();
      v22 = *(v21 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v22 = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    inited[7] = v22;

    sub_1ADDF5C7C(a2);
    v24 = v23;
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v27 = inited[5];
    v28 = inited[6];
    inited[5] = v24;
    inited[6] = v26;
    sub_1ADE42CB8(v27, v28);
    *a4 = inited;
  }
}

double sub_1ADE6A0EC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADDF5C7C(v1);
  v5 = v4;
  v7 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = swift_allocObject();
    v9 = *(inited + 16);
    *(v8 + 16) = v9;
    sub_1ADE51B2C(v9);

    inited = v8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v7;
  v11 = v10 | 0x3000000000000000;
  v12 = *(inited + 16);
  *(inited + 16) = v11;
  sub_1ADE51B48(v12);

  sub_1ADE73AC8(0xF000000000000007);
  v13 = sub_1ADDF6AF0();
  v17 = v16;
  if (v16)
  {
    v18 = v13;
    v19 = v14;
    v20 = v15;
    sub_1ADE73B5C(0, 0, 0);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  *a1 = inited | 0x4000000000000000;
  *(a1 + 8) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v21;
  *(a1 + 32) = v21;
  result = 0.0;
  *(a1 + 40) = xmmword_1AE241910;
  *(a1 + 56) = v21;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v17;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = v20;
  return result;
}

void sub_1ADE6A25C(uint64_t *a1@<X0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v8 = v7;
  v73 = a4;
  v74 = a5;
  v71 = a6;
  v149 = *MEMORY[0x1E69E9840];
  v85 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v90 = a1[1];
  v91 = v16;
  v17 = a1[2];
  v88 = a1[3];
  v89 = v17;
  v87 = a1[4];
  v75 = *(v6 + 104);
  v18 = *(v6 + 24);
  v19 = *(v6 + 32);
  v81 = v6;
  memset(v96, 0, sizeof(v96));
  v97 = 8;
  v20 = v19 >> 62;
  v138 = v18;
  v139 = v19;
  if ((v19 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = v7;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v21 = v7;
  if (v20 != 2)
  {
    goto LABEL_11;
  }

  v23 = *(v18 + 16);
  v22 = *(v18 + 24);
  v8 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_33;
    }

    v21 = v8;
  }

  v12 = sub_1ADDD86D8(v18, v19);
LABEL_11:
  v72 = a3;
  v24 = v75;
  v25 = v75 + 4;
  sub_1ADE73ED0(v12, v13, v14);
  sub_1AE23BB1C();
  v96[4] = v25;
  *&v96[6] = a2;
  v26 = *v96;
  v27 = v97;
  v70 = *&v96[12];
  v28 = *&v96[8];
  sub_1ADDCC35C(v18, v19);
  v76 = xmmword_1AE241910;
  v137 = xmmword_1AE241910;
  if (v24 < 3)
  {
    v54 = v21;
  }

  else
  {
    HIDWORD(v66) = v27;
    v67 = v28;
    v68 = v26;
    *&v130 = v91;
    *(&v130 + 1) = v90;
    *&v131 = v89;
    *(&v131 + 1) = v88;
    *&v132[0] = v87;
    v83 = type metadata accessor for Capsule(0, v73, v74, v29);
    sub_1AE1EA944();
    v69 = v31;
    v32 = *(v30 + 16);
    v94 = v21;
    if (v32)
    {
      v33 = 0;
      v34 = (v30 + 40);
      v82 = v30;
      while (v33 < v32)
      {
        v92 = v34;
        v93 = v33;
        v35 = *(v34 - 1);
        v36 = *v34;
        *&v122 = v91;
        *(&v122 + 1) = v90;
        *&v123 = v89;
        *(&v123 + 1) = v88;
        *&v124 = v87;
        v37 = v84;
        sub_1ADDFC54C(v84);
        v38 = *(v37 + *(v85 + 20));
        sub_1ADDD86D8(v35, v36);
        sub_1ADDD86D8(v35, v36);
        sub_1ADDDF7A8(v35, v36, v38, &v130);
        v95 = v36;
        sub_1ADDCC35C(v35, v36);
        v39 = v130;
        v40 = v131;
        v41 = v132[0];
        sub_1ADDDDE40(v130, *(&v130 + 1), v131, *(&v131 + 1), *&v132[0], *(&v132[0] + 1));
        sub_1ADDDC21C(v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1));
        sub_1ADE73DF4(v37);
        if (v40)
        {
          *&v122 = v35;
          v42 = v94;
          v43 = v95;
          *(&v122 + 1) = v95;
          v130 = v39;
          v131 = v40;
          v86 = v41;
          v132[0] = v41;
          v44 = sub_1ADE667F8(&v122, &v130);
          v94 = v42;
          if (v42)
          {
            sub_1ADDCC35C(v137, *(&v137 + 1));

            sub_1ADDDC21C(v39, *(&v39 + 1), v40, *(&v40 + 1), v86, *(&v86 + 1));
            sub_1ADDCC35C(v35, v43);
            return;
          }

          if (v44)
          {
            v77 = v40;
            v78 = *(&v39 + 1);
            v79 = v35;
            v80 = *(&v40 + 1);
            *&v131 = 0;
            v130 = 0xF000000000000007;
            *(&v131 + 1) = MEMORY[0x1E69E7CC0];
            *(v132 + 8) = v76;
            *&v132[0] = MEMORY[0x1E69E7CC0];
            *(&v132[1] + 1) = MEMORY[0x1E69E7CC0];
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;

            MEMORY[0x1B26FB860](v45);
            if (*(*(&v131 + 1) + 16) >= *(*(&v131 + 1) + 24) >> 1)
            {
              sub_1AE23D03C();
            }

            sub_1AE23D09C();
            v126 = v133;
            v127 = v134;
            v128 = v135;
            v129 = v136;
            v122 = v130;
            v123 = v131;
            v124 = v132[0];
            v125 = v132[1];
            v118 = v133;
            v119 = v134;
            v120 = v135;
            v121 = v136;
            v114 = v130;
            v115 = v131;
            v116 = v132[0];
            v117 = v132[1];
            v46 = sub_1ADE73B00(&v122, &v106);
            sub_1ADE73BC8(v46, v47, v48);
            v49 = v94;
            v50 = sub_1AE23C51C();
            v94 = v49;
            if (v49)
            {

              sub_1ADDDC21C(v39, v78, v77, v80, v86, *(&v86 + 1));

              sub_1ADDCC35C(v79, v95);
              v102 = v118;
              v103 = v119;
              v104 = v120;
              v105 = v121;
              v98 = v114;
              v99 = v115;
              v100 = v116;
              v101 = v117;
              sub_1ADE6AF00(&v98);
              sub_1ADDCC35C(v137, *(&v137 + 1));
              v110 = v133;
              v111 = v134;
              v112 = v135;
              v113 = v136;
              v106 = v130;
              v107 = v131;
              v108 = v132[0];
              v109 = v132[1];
              sub_1ADE6AF00(&v106);
              return;
            }

            v52 = v50;
            v53 = v51;
            v102 = v118;
            v103 = v119;
            v104 = v120;
            v105 = v121;
            v98 = v114;
            v99 = v115;
            v100 = v116;
            v101 = v117;
            sub_1ADE6AF00(&v98);
            sub_1AE23BEEC();
            sub_1ADDDC21C(v39, v78, v77, v80, v86, *(&v86 + 1));
            sub_1ADDCC35C(v52, v53);

            sub_1ADDCC35C(v79, v95);
            v110 = v133;
            v111 = v134;
            v112 = v135;
            v113 = v136;
            v106 = v130;
            v107 = v131;
            v108 = v132[0];
            v109 = v132[1];
            sub_1ADE6AF00(&v106);
          }

          else
          {
            sub_1ADDCC35C(v35, v43);
            sub_1ADDDC21C(v39, *(&v39 + 1), v40, *(&v40 + 1), v86, *(&v86 + 1));
          }
        }

        else
        {
          sub_1ADDCC35C(v35, v95);
        }

        v33 = v93 + 1;
        v32 = *(v82 + 16);
        v34 = v92 + 2;
        if (v93 + 1 == v32)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

LABEL_26:

    v28 = v67;
    v26 = v68;
    v27 = HIDWORD(v66);
    v54 = v94;
  }

  *&v130 = v91;
  *(&v130 + 1) = v90;
  *&v131 = v89;
  *(&v131 + 1) = v88;
  *&v132[0] = v87;
  sub_1ADE66B08(&v130, v72 & 1 | (v75 > 2u), 0, 0, v73, v74, &v140);
  if (v54)
  {
    sub_1ADDCC35C(v137, *(&v137 + 1));
  }

  else
  {
    v55 = v28 | ((v70 | (v27 << 16)) << 32);
    v56 = v141;
    v57 = v144;
    v58 = v137;
    v59 = v143;
    v60 = v145;
    v61 = v146;
    v62 = v147;
    v63 = v148;
    v64 = v142;
    v65 = v71;
    *v71 = v140;
    *(v65 + 2) = v56;
    *(v65 + 24) = v64;
    *(v65 + 40) = v59;
    *(v65 + 7) = v57;
    v65[4] = v60;
    v65[5] = v61;
    v65[6] = v62;
    v65[7] = v63;
    *(v65 + 16) = v26;
    *(v65 + 17) = v55;
    v65[9] = v58;
  }
}

double sub_1ADE6A9AC@<D0>(_OWORD *a4@<X8>)
{
  sub_1ADE69650();
  v6 = sub_1ADE6B938(sub_1ADE74060);
  if (v4)
  {
    v30 = 0xF000000000000007;
    v31 = 0;
    v32 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    v35 = xmmword_1AE241910;
    v34 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    sub_1ADE6AF00(&v30);
  }

  else
  {
    v8 = v6;
    sub_1ADE73AC8(0xF000000000000007);
    v9 = v8 | 0x4000000000000000;
    v10 = sub_1ADDF6AF0();
    v14 = v13;
    if (v13)
    {
      v15 = v10;
      v16 = v11;
      v17 = v12;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v23 = v9;
    *&v24 = 0;
    *(&v24 + 1) = MEMORY[0x1E69E7CC0];
    *&v25[8] = xmmword_1AE241910;
    *v25 = MEMORY[0x1E69E7CC0];
    *&v25[24] = MEMORY[0x1E69E7CC0];
    v26 = 0uLL;
    *&v27 = v15;
    *(&v27 + 1) = v16;
    *&v28 = v14;
    *(&v28 + 1) = v17;
    v29 = 0uLL;
    v30 = v9;
    v31 = 0;
    v32 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    v35 = xmmword_1AE241910;
    v34 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    v37 = 0uLL;
    *&v38 = v15;
    *(&v38 + 1) = v16;
    *&v39 = v14;
    *(&v39 + 1) = v17;
    v40 = 0uLL;
    sub_1ADE73B00(&v23, v22);
    sub_1ADE6AF00(&v30);
    v18 = v27;
    a4[4] = v26;
    a4[5] = v18;
    v19 = v29;
    a4[6] = v28;
    a4[7] = v19;
    v20 = v24;
    *a4 = v23;
    a4[1] = v20;
    result = *v25;
    v21 = *&v25[16];
    a4[2] = *v25;
    a4[3] = v21;
  }

  return result;
}

double sub_1ADE6AB58@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, _OWORD *a3@<X8>)
{
  v44 = a1;
  sub_1ADE69650();
  v23[2] = &v44;
  v24 = v3;
  v7 = sub_1ADE6B9FC(a2, v23);
  if (v4)
  {
    v33 = 0xF000000000000007;
    v34 = 0;
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v38 = xmmword_1AE241910;
    v37 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    sub_1ADE6AF00(&v33);
  }

  else
  {
    v9 = v7;
    sub_1ADE73AC8(0xF000000000000007);
    swift_beginAccess();
    v10 = *(v3 + 96);

    v11 = sub_1ADDF6AF0();
    v15 = v14;
    if (v14)
    {
      v16 = v11;
      v17 = v12;
      v18 = v13;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v26 = v9;
    *&v27 = 0;
    *(&v27 + 1) = v10;
    *&v28[8] = xmmword_1AE241910;
    *v28 = MEMORY[0x1E69E7CC0];
    *&v28[24] = MEMORY[0x1E69E7CC0];
    v29 = 0uLL;
    *&v30 = v16;
    *(&v30 + 1) = v17;
    *&v31 = v15;
    *(&v31 + 1) = v18;
    v32 = 0uLL;
    v33 = v9;
    v34 = 0;
    v35 = 0;
    v36 = v10;
    v38 = xmmword_1AE241910;
    v37 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v40 = 0uLL;
    *&v41 = v16;
    *(&v41 + 1) = v17;
    *&v42 = v15;
    *(&v42 + 1) = v18;
    v43 = 0uLL;
    sub_1ADE73B00(&v26, v25);
    sub_1ADE6AF00(&v33);
    v19 = v30;
    a3[4] = v29;
    a3[5] = v19;
    v20 = v32;
    a3[6] = v31;
    a3[7] = v20;
    v21 = v27;
    *a3 = v26;
    a3[1] = v21;
    result = *v28;
    v22 = *&v28[16];
    a3[2] = *v28;
    a3[3] = v22;
  }

  return result;
}

double sub_1ADE6AD28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1ADE69650();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a1;
  v27 = v4;
  v10 = sub_1ADE6B9FC(sub_1ADE74458, v26);
  if (v5)
  {
    v36 = 0xF000000000000007;
    v37 = 0;
    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    v41 = xmmword_1AE241910;
    v40 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    sub_1ADE6AF00(&v36);
  }

  else
  {
    v12 = v10;
    sub_1ADE73AC8(0xF000000000000007);
    swift_beginAccess();
    v13 = *(v4 + 96);

    v14 = sub_1ADDF6AF0();
    v18 = v17;
    if (v17)
    {
      v19 = v14;
      v20 = v15;
      v21 = v16;
      sub_1ADE73B5C(0, 0, 0);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    v29 = v12;
    *&v30 = 0;
    *(&v30 + 1) = v13;
    *&v31[8] = xmmword_1AE241910;
    *v31 = MEMORY[0x1E69E7CC0];
    *&v31[24] = MEMORY[0x1E69E7CC0];
    v32 = 0uLL;
    *&v33 = v19;
    *(&v33 + 1) = v20;
    *&v34 = v18;
    *(&v34 + 1) = v21;
    v35 = 0uLL;
    v36 = v12;
    v37 = 0;
    v38 = 0;
    v39 = v13;
    v41 = xmmword_1AE241910;
    v40 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    v43 = 0uLL;
    *&v44 = v19;
    *(&v44 + 1) = v20;
    *&v45 = v18;
    *(&v45 + 1) = v21;
    v46 = 0uLL;
    sub_1ADE73B00(&v29, v28);
    sub_1ADE6AF00(&v36);
    v22 = v33;
    a4[4] = v32;
    a4[5] = v22;
    v23 = v35;
    a4[6] = v34;
    a4[7] = v23;
    v24 = v30;
    *a4 = v29;
    a4[1] = v24;
    result = *v31;
    v25 = *&v31[16];
    a4[2] = *v31;
    a4[3] = v25;
  }

  return result;
}

double sub_1ADE6AF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v8 = v6;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v8;
    *(inited + 24) = a2;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    sub_1AE04A4B8(inited, a1);
    swift_setDeallocating();
  }

  return result;
}

void sub_1ADE6B034(__int128 *a1, uint64_t a2)
{
  if (*(v2 + 104))
  {
    sub_1ADDF6EEC();
    sub_1ADE675B8(a1, *(v2 + 104) + 4, a2);
    return;
  }

  type metadata accessor for Upgrade4to5();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC8];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v8;
  v6[4] = v7;
  v6[5] = v8;
  v6[6] = 0;
  v6[7] = 0;
  sub_1AE198E38(a1);
  if (v3)
  {

    return;
  }

  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v14 == 2)
  {
    if (!__OFSUB__(*(v12 + 24), *(v12 + 16)))
    {
LABEL_13:
      v9 = sub_1ADDD86D8(v12, v13);
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1ADE73ED0(v9, v10, v11);
  sub_1AE23BB1C();
  sub_1ADDCC35C(v12, v13);
  sub_1ADE74344(v15, v16, v17);
  v18 = sub_1AE23C51C();
  v20 = v19;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v18, v20);
  sub_1ADDF6EEC();
}

uint64_t sub_1ADE6B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  sub_1ADE69650();
  sub_1ADE67270(a2, a3, a4, v16);
  if (!v5)
  {
    if (*(v4 + 104))
    {
      sub_1ADE675B8(v16, *(v4 + 104) + 4, 0);
      v6 = v13;
      sub_1ADDF6EEC();
      sub_1ADE6AF00(v16);
    }

    else
    {
      sub_1ADE42E40(v10, v11, v12);
      swift_allocError();
      *v14 = 0xD00000000000002CLL;
      *(v14 + 8) = 0x80000001AE260250;
      *(v14 + 16) = 3;
      swift_willThrow();
      sub_1ADE6AF00(v16);
    }
  }

  return v6;
}

void sub_1ADE6B3B8(uint64_t a1, uint64_t a2)
{

  sub_1ADE7196C(a1);
  if (v2)
  {

    *&v53 = MEMORY[0x1E69E7CC0];
    *(&v53 + 1) = MEMORY[0x1E69E7CC0];
    *&v54 = 0;
    *(&v54 + 1) = 0xC000000000000000;
    *&v55 = MEMORY[0x1E69E7CC0];
    *(&v55 + 1) = MEMORY[0x1E69E7CC0];
    v56 = MEMORY[0x1E69E7CC0];
    v57 = 0uLL;
    v58 = 0;
    sub_1ADE73C68(&v53);
  }

  else
  {
    v6 = v5;

    v7 = sub_1ADE5E6B8(a1);

    v8 = *(a2 + 16);
    if (v8 >> 58)
    {
LABEL_19:
      __break(1u);
    }

    else
    {
      v59 = v7;
      v33 = v6;
      *&v52 = sub_1ADDF6E48(32 * v8);
      *(&v52 + 1) = v9;
      v10 = 1 << *(a2 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(a2 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      if (v12)
      {
        while (1)
        {
          v15 = v14;
LABEL_12:
          v16 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
          v17 = (*(a2 + 48) + ((v15 << 10) | (16 * v16)));
          v18 = *v17;
          v19 = v17[1];
          sub_1ADDD86D8(*v17, v19);
          sub_1AE23BEEC();
          sub_1ADDCC35C(v18, v19);
          if (!v12)
          {
            goto LABEL_8;
          }
        }
      }

      while (1)
      {
LABEL_8:
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_19;
        }

        if (v15 >= v13)
        {
          break;
        }

        v12 = *(a2 + 64 + 8 * v15);
        ++v14;
        if (v12)
        {
          v14 = v15;
          goto LABEL_12;
        }
      }

      v20 = v52;
      sub_1ADDD86D8(v52, *(&v52 + 1));
      sub_1ADDCC35C(0, 0xC000000000000000);
      sub_1ADE5E8D4(a2);
      v34 = v21;

      v22 = sub_1ADDF6AF0();
      v26 = v25;
      if (v25)
      {
        v27 = v22;
        v28 = v23;
        v29 = v24;
        sub_1ADE73B5C(0, 0, 0);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
      }

      *&v53 = v33;
      *(&v53 + 1) = v59;
      v54 = v52;
      *&v55 = v34;
      *(&v55 + 1) = MEMORY[0x1E69E7CC0];
      *&v56 = MEMORY[0x1E69E7CC0];
      *(&v56 + 1) = v27;
      *&v57 = v28;
      *(&v57 + 1) = v26;
      v58 = v29;
      v48 = v55;
      v49 = v56;
      v50 = v57;
      v51 = v29;
      v46 = v53;
      v47 = v52;
      v30 = sub_1ADE73CBC(&v53, v37);
      sub_1ADE73D18(v30, v31, v32);
      sub_1AE23C51C();
      v35[2] = v48;
      v35[3] = v49;
      v35[4] = v50;
      v36 = v51;
      v35[0] = v46;
      v35[1] = v47;
      sub_1ADE73C68(v35);
      sub_1ADDCC35C(v20, *(&v20 + 1));
      v37[0] = v33;
      v37[1] = v59;
      v38 = v20;
      v39 = v34;
      v40 = MEMORY[0x1E69E7CC0];
      v41 = MEMORY[0x1E69E7CC0];
      v42 = v27;
      v43 = v28;
      v44 = v26;
      v45 = v29;
      sub_1ADE73C68(v37);
    }
  }
}

uint64_t sub_1ADE6B7B8(uint64_t (*a1)(void))
{
  result = a1();
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1ADE6B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ADDFCC74(a1, a2, a3);
  if (!v5)
  {
    v7 = v6;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    *(v3 + 24) = v4;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_1ADE6B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ADE71C08(a1, a2, a3);
  if (!v5)
  {
    v7 = v6;
    type metadata accessor for CREncoder.CRValueKeyedContainer();
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    *(v3 + 24) = v4;
    swift_beginAccess();
    swift_retain_n();

    sub_1AE1B6BF8(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_1ADE6B938(uint64_t (*a1)(void))
{
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v6 = a1();
  if (v2)
  {
  }

  else
  {
    v10 = sub_1ADE71C08(v6, v7, v8);
    swift_beginAccess();
    v3 = *(v10 + 24);
    *(v1 + 112) = v5;

    *(v1 + 120) = v4;
  }

  return v3;
}

uint64_t sub_1ADE6B9FC(uint64_t (*a1)(void), uint64_t inited)
{
  v4 = v2;
  v6 = *(v2 + 112);
  v5 = *(v2 + 120);
  v7 = (v2 + 112);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v9 = a1();
  if (v3)
  {
  }

  else
  {
    if (*v7 || *(v4 + 120))
    {
      v12 = sub_1ADDFCC74(v9, v10, v11);
      *(v4 + 112) = v6;
      v14 = v12;

      *(v4 + 120) = v5;

      swift_beginAccess();
      inited = *(v14 + 24);
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }
  }

  return inited;
}

void sub_1ADE6BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *(v4 + 16);
  v8 = type metadata accessor for CRDTRegister(0, a2, a3, a4);
  v10 = sub_1AE03E130(v7, v8, v9);
  if (!v5)
  {
    v11 = v10;
    swift_beginAccess();
    *(v6 + 24) = v11;
  }
}

void sub_1ADE6BC08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *(v4 + 16);
  type metadata accessor for CRSet(0, a2, a3, a4);
  v8 = sub_1AE16B36C(v7);
  if (!v5)
  {
    v9 = v8;
    swift_beginAccess();
    *(v6 + 24) = v9;
  }
}

void *sub_1ADE6BC94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v14[6] = *a1;
  v14[7] = v9;
  v10 = *(v7 + 16);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v11 = type metadata accessor for CROrderedDictionary(0, v14);
  result = sub_1AE00E9E4(v10, v11);
  if (!v8)
  {
    v13 = result;
    swift_beginAccess();
    sub_1AE1B6E5C(v13);
    return swift_endAccess();
  }

  return result;
}

void sub_1ADE6BD38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v14[6] = *a1;
  v10 = *(v7 + 16);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v11 = type metadata accessor for CRDictionary(0, v14);
  v12 = sub_1ADFA14A4(v10, v11);
  if (!v8)
  {
    v13 = v12;
    swift_beginAccess();
    *(v9 + 24) = v13;
  }
}

void sub_1ADE6BDD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v9 = *a1;
  v14[4] = a6;
  v14[5] = v9;
  v10 = *(v6 + 16);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v11 = type metadata accessor for CRDTDictionary(0, v14);
  v12 = sub_1AE22AAC0(v10, v11);
  if (!v7)
  {
    v13 = v12;
    swift_beginAccess();
    *(v8 + 24) = v13;
  }
}

void sub_1ADE6BE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *(v4 + 16);
  v8 = type metadata accessor for CRArray(0, a2, a3, a4);
  v9 = sub_1ADF57104(v7, v8);
  if (!v5)
  {
    v10 = v9;
    swift_beginAccess();
    *(v6 + 24) = v10;
  }
}

void sub_1ADE6BEF8(void *a1)
{
  v3 = v1;
  v4 = sub_1ADE50584(*(v1 + 16));
  if (!v2)
  {
    v5 = v4;
    swift_beginAccess();
    *(v3 + 24) = v5;
  }
}

void sub_1ADE6BFAC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v9 = *(v5 + 16);
  v10 = (a4)(0, a2, a3);
  v11 = a5(v9, v10);
  if (!v6)
  {
    v12 = v11;
    swift_beginAccess();
    *(v8 + 24) = v12;
  }
}

double sub_1ADE6C04C(void *a1)
{
  v2 = v1;
  v3 = sub_1AE19E3F0(*(v1 + 16));
  swift_beginAccess();
  *(v2 + 24) = v3;

  return result;
}

void sub_1ADE6C0BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = type metadata accessor for CRSequence(0, a2, a3, a4);
  sub_1AE163F34(v6, v7, v8);
  if (!v5)
  {
    swift_beginAccess();
    sub_1AE1B6EA4(v8);
    swift_endAccess();
  }
}

void sub_1ADE6C190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = v6;
  v10 = *(v6 + 16);
  v11 = (a5)(0, a2, a3, a4);
  v12 = a6(v10, v11);
  if (!v7)
  {
    v13 = v12;
    swift_beginAccess();
    *(v9 + 24) = v13;
  }
}

uint64_t sub_1ADE6C228(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  sub_1ADDD86D8(a1, a2);
  sub_1ADDCC35C(0, 0xC000000000000000);
  if (v6)
  {
    v7 = *(v3 + 16);

    sub_1ADDF5C7C(v7);
    v6 = v8;
    v10 = v9;

    sub_1ADE42CB8(0, 0);
  }

  else
  {
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA288, &qword_1AE241D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AE2418F0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = v6;
  *(v11 + 56) = v10;
  swift_beginAccess();
  sub_1ADDD86D8(a1, a2);
  sub_1ADE42C78(v6, v10);
  sub_1AE1B6F64(v11);
  swift_endAccess();
  sub_1ADDCC35C(a1, a2);
  return sub_1ADE42CB8(v6, v10);
}

uint64_t sub_1ADE6C370(uint64_t a1, unint64_t a2)
{
  sub_1ADDD86D8(a1, a2);
  sub_1ADDCC35C(0, 0xC000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA288, &qword_1AE241D70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2418F0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  swift_beginAccess();
  sub_1ADDD86D8(a1, a2);
  sub_1ADE42C78(0, 0);
  sub_1AE1B6F64(v4);
  swift_endAccess();
  sub_1ADDCC35C(a1, a2);
  return sub_1ADE42CB8(0, 0);
}

uint64_t sub_1ADE6C448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1ADDF69D0(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1ADDF69D0((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = a2;
  *v3 = v5;

  MEMORY[0x1B26FB860](v8);
  if (*(*(v3 + 8) + 16) >= *(*(v3 + 8) + 24) >> 1)
  {
    sub_1AE23D03C();
  }

  return sub_1AE23D09C();
}

uint64_t sub_1ADE6C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = (*(a4 + 48))(a3, a4);
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v28[2] = a3;
    v28[3] = a4;
    v28[4] = a1;
    v28[5] = v6;
    result = sub_1ADE6B9FC(sub_1ADE7277C, v28);
    if (!v5)
    {
      v12 = result;
      v13 = *(a2 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v29 = v6;
        v34 = result;
        v33 = MEMORY[0x1E69E7CC0];
        sub_1ADE6F00C(0, v13, 0);
        v14 = v33;
        v15 = (a2 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;

          v18 = sub_1ADE66494(v16, v17);

          v33 = v14;
          v20 = *(v14 + 16);
          v19 = *(v14 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1ADE6F00C((v19 > 1), v20 + 1, 1);
            v14 = v33;
          }

          *(v14 + 16) = v20 + 1;
          *(v14 + 8 * v20 + 32) = v18;
          v15 += 2;
          --v13;
        }

        while (v13);
        v12 = v34;
        v6 = v29;
      }

      v21 = *(v6 + 16);
      swift_beginAccess();
      v22 = *(*(v21 + 24) + 16);
      if ((~v22 & 0xF000000000000007) != 0 && (v22 & 0xF000000000000000) == 0x3000000000000000)
      {
        v27 = (v22 & 0xFFFFFFFFFFFFFFFLL);
        v24 = v27[2];
        v25 = v27[3];
        v26 = v27[4];
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
        v25 = MEMORY[0x1E69E7CC0];
        v26 = MEMORY[0x1E69E7CC0];
      }

      v30 = v24;
      v31 = v25;
      v32 = v26;
      sub_1ADE6C790(v12, v14);
      sub_1ADDFCE90(v30, v31, v32);
      swift_endAccess();
    }
  }

  return result;
}

void sub_1ADE6C790(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    v4 = *(a2 + 32);

    sub_1ADE6C448(result, v4);
  }

  else if (v3)
  {
    v5 = a2 + 32;
    v6 = *(a2 + 32);
    v7 = (2 * v3) | 1;
    v12 = sub_1ADE73F88(v6, *v2, v2[1]);
    v13 = v10;
    v14 = v11;
    sub_1ADE6C87C(result, a2, v5, 1, v7);

    sub_1ADE6DFF0(v12, v13, v14, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE6C87C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    if (v6 != a4)
    {
      if (v6 > a4)
      {
        v8 = *(a3 + 8 * a4);

        sub_1ADE6C448(result, v8);
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v6 == a4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 <= a4)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = *(a3 + 8 * a4);
  if (v7)
  {
    v11 = a4 + 1;
  }

  else
  {
    v11 = a5 >> 1;
  }

  v17 = sub_1ADE73F88(*(a3 + 8 * a4), *v5, v5[1]);
  v18 = v15;
  v19 = v16;
  swift_unknownObjectRetain();
  sub_1ADE6C87C(result, a2, a3, v11, a5);
  swift_unknownObjectRelease();

  sub_1ADE6DFF0(v17, v18, v19, v10);
}

void sub_1ADE6C9CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = a4;
  if ((a3 & 1) == 0)
  {
    a1 = (*(a5 + 48))(a4, a5);
    if (a1)
    {
      return;
    }
  }

  v10 = &v24;
  MEMORY[0x1EEE9AC00](a1);
  sub_1ADE6B938(sub_1ADE744C8);
  if (v6)
  {
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v5 + 16);
    swift_beginAccess();
    v11 = *(v10[3] + 16);
    if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 0xD)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFBLL;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      v8 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  v7 = sub_1ADDF69D0(0, *(v7 + 2) + 1, 1, v7);
LABEL_10:
  v13 = *(v7 + 2);
  v14 = *(v7 + 3);
  v15 = v13 + 1;
  if (v13 >= v14 >> 1)
  {
    v21 = v7;
    v22 = *(v7 + 2);
    v23 = sub_1ADDF69D0((v14 > 1), v13 + 1, 1, v21);
    v13 = v22;
    v7 = v23;
  }

  *(v7 + 2) = v15;
  *&v7[8 * v13 + 32] = a2;
  sub_1AE1B6BF8(v7, v8);
  v16 = *(v10[3] + 16);
  if ((~v16 & 0xF000000000000007) != 0 && ((v16 >> 59) & 0x1E | (v16 >> 2) & 1) == 0xD)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFBLL;
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
  }

  v25 = v18;

  MEMORY[0x1B26FB860](v20);
  if (*(v25 + 16) >= *(v25 + 24) >> 1)
  {
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v19, v25);
  swift_endAccess();
}

uint64_t sub_1ADE6CC8C(uint64_t a1)
{
  if (*(*(v1 + 16) + 104) == 1)
  {
    swift_beginAccess();
    sub_1AE1B6CAC(a1);
  }

  else
  {
    swift_beginAccess();
    sub_1AE1B7008(a1);
  }

  return swift_endAccess();
}

uint64_t sub_1ADE6CD14(uint64_t result)
{
  v2 = result;
  if (*(*(v1 + 16) + 104) == 1 && result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1AE1B6CAC(v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE6CD8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ADE66494(a1, a2);
  swift_beginAccess();
  sub_1AE1B70A8(v2);
  return swift_endAccess();
}

void sub_1ADE6CDF8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1AE23BF4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C2FC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v42 - v18;
  if (*(*(v3 + 16) + 104) > 1u)
  {
    if (*(*(v3 + 16) + 104) == 2)
    {
      v42 = v16;
      (*(v6 + 16))(v8, a1, v5, v17);
      sub_1AE23C2BC();
      sub_1ADE725D0();
      v34 = sub_1AE23C51C();
      if (v2)
      {
        (*(v42 + 8))(v19, v9);
      }

      else
      {
        v39 = v34;
        v40 = v35;
        v41 = sub_1ADE6D26C(v34, v35);
        (*(v42 + 8))(v19, v9, v41);
        sub_1ADDCC35C(v39, v40);
      }
    }

    else
    {
      sub_1AE23BF1C();
      v38 = v37;
      swift_beginAccess();
      sub_1AE1B7148(v38);
      swift_endAccess();
    }
  }

  else if (*(*(v3 + 16) + 104))
  {
    sub_1ADE42E40(v13, v14, v15);
    swift_allocError();
    *v36 = 0xD00000000000001FLL;
    *(v36 + 8) = 0x80000001AE25FD10;
    *(v36 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v42 = v16;
    (*(v6 + 16))(v8, a1, v5, v17);
    sub_1AE23C2BC();
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
    v21 = sub_1AE23C2EC();
    v22 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = swift_allocObject();
      v23 = *(inited + 16);
      *(v22 + 16) = v23;
      sub_1ADE51B2C(v23);
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v25 = v24 | 0x2000000000000000;
    v26 = *(v22 + 16);
    *(v22 + 16) = v25;
    sub_1ADE51B48(v26);
    v27 = sub_1AE23C2CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = swift_allocObject();
      v29 = *(inited + 16);
      *(v28 + 16) = v29;
      sub_1ADE51B2C(v29);

      inited = v28;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v31 = v30 | 0x2000000000000000;
    v32 = *(inited + 16);
    *(inited + 16) = v31;
    sub_1ADE51B48(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA290, &qword_1AE241D78);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AE241900;
    *(v33 + 32) = v22;
    *(v33 + 40) = inited;
    swift_beginAccess();

    sub_1AE1B71F0(v33);
    swift_endAccess();
    (*(v42 + 8))(v11, v9);
  }
}

double sub_1ADE6D26C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *(v2 + 24);
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    *(v2 + 24) = v6;
    sub_1ADE51B2C(v7);
  }

  v8 = *(v2 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v8 + 16);
  *(v8 + 16) = v9 | 0x1000000000000004;
  sub_1ADDD86D8(a1, a2);
  swift_endAccess();
  return sub_1ADE51B48(v10);
}

void sub_1ADE6D350(double a1)
{
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *(v1 + 24);
    type metadata accessor for Proto_Value._StorageClass();
    v4 = swift_allocObject();
    v5 = *(v3 + 16);
    *(v4 + 16) = v5;
    *(v1 + 24) = v4;
    sub_1ADE51B2C(v5);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = *(v6 + 16);
  *(v6 + 16) = v7 | 4;
  swift_endAccess();
  sub_1ADE51B48(v8);
}

uint64_t sub_1ADE6D41C(float a1)
{
  if (*(*(v1 + 16) + 104) >= 2u)
  {
    swift_beginAccess();
    sub_1AE1B7294(a1);
  }

  else
  {
    v2 = a1;
    swift_beginAccess();
    sub_1AE1B7148(v2);
  }

  return swift_endAccess();
}

uint64_t sub_1ADE6D4B4(uint64_t a1)
{
  v1 = sub_1ADDF66A8(a1);
  swift_beginAccess();
  sub_1AE1B733C(v1);
  return swift_endAccess();
}

uint64_t sub_1ADE6D520(_OWORD *a1)
{
  sub_1ADDF5C7C(*(v1 + 16));
  v3 = v2;
  v5 = v4;
  swift_beginAccess();
  sub_1AE1B6DB0(v3, v5);
  return swift_endAccess();
}

uint64_t sub_1ADE6D598(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  swift_beginAccess();
  v6 = *(*(v2 + 24) + 16);
  if ((~v6 & 0xF000000000000007) != 0 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 0xC)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFBLL);
    v9 = v7[2];
    v8 = v7[3];
    v11 = v7[4];
    v10 = v7[5];
    v12 = v7[6];
    sub_1ADDD86D8(v8, v11);
    sub_1ADDD86D8(v10, v12);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0xC000000000000000;
    v12 = 0xC000000000000000;
  }

  sub_1ADDD86D8(v4, v5);
  sub_1ADDCC35C(v8, v11);
  v19[0] = v9;
  v19[1] = v4;
  v19[2] = v5;
  v19[3] = v10;
  v19[4] = v12;
  sub_1AE1B73E4(v19);
  swift_endAccess();
  v13 = *(v2 + 16);
  swift_beginAccess();
  v14 = *(v13 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 88) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1ADE556B0(0, *(v14 + 2) + 1, 1, v14);
    *(v13 + 88) = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1ADE556B0((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  *&v14[8 * v17 + 32] = v3;
  *(v13 + 88) = v14;
  return swift_endAccess();
}

uint64_t sub_1ADE6D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v13;
  v16 = *(v3 + 16);
  v17 = *(v16 + 104);
  v18 = *(v9 + 16);
  v37 = v6;
  v19 = (v6 + 48);
  if (v17 >= 3)
  {
    v18(&v34 - v13, a1, v8, v14);
    if ((*v19)(v15, 1, a2) == 1)
    {
      return (*(v9 + 8))(v15, v8);
    }

    else
    {
      (*(*(*(v36 + 8) + 8) + 16))(v16, a2);
      return (*(v37 + 8))(v15, a2);
    }
  }

  else
  {
    v18(v11, a1, v8, v14);
    if ((*v19)(v11, 1, a2) == 1)
    {
      (*(v9 + 8))(v11, v8);
      type metadata accessor for Proto_Optional._StorageClass();
      inited = swift_initStaticObject();
      swift_beginAccess();
      sub_1AE1B7490(inited);
      return swift_endAccess();
    }

    else
    {
      v22 = v37;
      v23 = v35;
      v24 = (*(v37 + 32))(v35, v11, a2);
      MEMORY[0x1EEE9AC00](v24);
      v25 = v36;
      *(&v34 - 4) = a2;
      *(&v34 - 3) = v25;
      *(&v34 - 2) = v23;
      *(&v34 - 1) = v3;
      v26 = v3;
      v27 = v38;
      v28 = sub_1ADE6B938(sub_1ADE727D4);
      if (!v27)
      {
        v29 = v28;
        swift_beginAccess();
        v30 = *(*(v26 + 24) + 16);
        if ((~v30 & 0xF000000000000007) != 0 && ((v30 >> 59) & 0x1E | (v30 >> 2) & 1) == 8)
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Optional._StorageClass();
          v31 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Optional._StorageClass();
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          swift_beginAccess();
          v33 = *(v31 + 16);
          swift_beginAccess();
          *(v32 + 16) = v33;
          v23 = v35;

          v31 = v32;
        }

        swift_beginAccess();
        *(v31 + 16) = v29;

        sub_1AE1B7490(v31);
        swift_endAccess();
      }

      return (*(v22 + 8))(v23, a2);
    }
  }
}

void sub_1ADE6DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADF84F64(*(v3 + 16), a1, a2, a3);
  if (!v4)
  {
    v6 = v5;
    swift_beginAccess();
    *(v3 + 24) = v6;
  }
}

void sub_1ADE6DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ADF8676C(*(v4 + 16), a1, a2, a3, a4);
  if (!v5)
  {
    v7 = v6;
    swift_beginAccess();
    *(v4 + 24) = v7;
  }
}

void sub_1ADE6DCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1AE045A4C(*(v6 + 16), a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v9 = v8;
    swift_beginAccess();
    *(v6 + 24) = v9;
  }
}

uint64_t sub_1ADE6DD50(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 11)
  {
    inited = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    inited = swift_initStaticObject();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    swift_allocObject();
    inited = sub_1ADDE5178(inited);
  }

  swift_beginAccess();
  *(inited + 24) = v3;

  sub_1AE1B7530(inited);
  v7 = *(*(v1 + 24) + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 11)
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    v9 = swift_initStaticObject();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_TaggedValue._StorageClass();
    swift_allocObject();
    v9 = sub_1ADDE5178(v9);
  }

  swift_beginAccess();
  *(v9 + 16) = a1;
  sub_1AE1B7530(v9);
  return swift_endAccess();
}

uint64_t _s9Coherence9CREncoderC13CRDTContainerCfd_0()
{

  return v0;
}

uint64_t CREncoder.deinit()
{
  sub_1ADDCC35C(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t CREncoder.__deallocating_deinit()
{
  CREncoder.deinit();

  return swift_deallocClassInstance();
}

void sub_1ADE6DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *(*v4 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = -32;
    while (*&v10[8 * v12 + 32] != a4)
    {
      ++v12;
      v13 -= 8;
      if (v11 == v12)
      {
        goto LABEL_5;
      }
    }

    v24 = v5[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1ADF79A18(v24);
    }

    if (v12 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1ADDFCE90(a1, a2, a3);
      v5[1] = v24;
    }
  }

  else
  {
LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1ADDF69D0(0, v11 + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1ADDF69D0((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v15 + 1;
    *&v10[8 * v15 + 32] = a4;
    *v5 = v10;
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = swift_allocObject();
      v18 = *(inited + 16);
      *(v17 + 16) = v18;
      sub_1ADE5215C(v18);

      inited = v17;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = a3;
    v20 = v19 | 0x3000000000000000;
    v21 = *(inited + 16);
    *(inited + 16) = v20;
    sub_1ADE52174(v21);

    MEMORY[0x1B26FB860](v22);
    if (*(v5[1] + 2) >= *(v5[1] + 3) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v23 = v5[1];

    v5[1] = v23;
  }
}

uint64_t sub_1ADE6E208()
{

  v1 = *(v0 + 104);
  v6[4] = *(v0 + 88);
  v6[5] = v1;
  v2 = *(v0 + 136);
  v6[6] = *(v0 + 120);
  v6[7] = v2;
  v3 = *(v0 + 40);
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  sub_1ADE6AF00(v6);
  return swift_deallocClassInstance();
}

uint64_t sub_1ADE6E71C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ADE5F10C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ADE6EA30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ADE5F5C0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1ADE6EF68(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE0BA68(a1, a2, a3, *v3, &qword_1EB5BA128, &qword_1AE241B48, type metadata accessor for Timestamp);
  *v3 = result;
  return result;
}

void *sub_1ADE6EFAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA298, &qword_1AE2421F8, &qword_1EB5BA2A0, &unk_1AE242200);
  *v3 = result;
  return result;
}

char *sub_1ADE6EFEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6F500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F00C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDEC34C(a1, a2, a3, *v3, &qword_1EB5BA230, &qword_1AE253C30);
  *v3 = result;
  return result;
}

char *sub_1ADE6F03C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6F60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F05C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6F72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F07C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6F850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F09C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6F95C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F0BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6FA68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F0DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA268, &unk_1AE2423F0, &qword_1EB5BA270, &unk_1AE253920);
  *v3 = result;
  return result;
}

void *sub_1ADE6F11C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6FBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F13C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA378, &qword_1AE2423A8, &qword_1EB5BA380, &qword_1AE2423B0);
  *v3 = result;
  return result;
}

char *sub_1ADE6F17C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE7018C(a1, a2, a3, *v3, &qword_1EB5BA200, &qword_1AE241BD8, &type metadata for AnyCRValue);
  *v3 = result;
  return result;
}

void *sub_1ADE6F1B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA398, &qword_1AE2423C8, &qword_1EB5BA3A0, &qword_1AE2423D0);
  *v3 = result;
  return result;
}

void *sub_1ADE6F1F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA3A8, &qword_1AE2423D8, &qword_1EB5BA3B0, &unk_1AE2423E0);
  *v3 = result;
  return result;
}

void *sub_1ADE6F234(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6FCE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F254(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70C30(a1, a2, a3, *v3, &qword_1EB5BA2E0, &qword_1AE242270, &qword_1EB5BA2E8, &qword_1AE242278);
  *v3 = result;
  return result;
}

char *sub_1ADE6F294(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDEC34C(a1, a2, a3, *v3, &qword_1EB5BA238, &qword_1AE241C00);
  *v3 = result;
  return result;
}

char *sub_1ADE6F2C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6FE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F2E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE6FF4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F304(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE7018C(a1, a2, a3, *v3, &qword_1EB5BA228, &unk_1AE242280, &type metadata for CRAsset);
  *v3 = result;
  return result;
}

char *sub_1ADE6F33C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F35C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE703B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F37C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE704D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F39C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE705F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F3BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE7072C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F3DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70830(a1, a2, a3, *v3, &qword_1EB5BA160, &unk_1AE242300, &qword_1EB5BA168, &unk_1AE25B3D0);
  *v3 = result;
  return result;
}

char *sub_1ADE6F41C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F43C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70C30(a1, a2, a3, *v3, &qword_1EB5BA308, &qword_1AE2422C0, &qword_1EB5BA310, &qword_1AE2422C8);
  *v3 = result;
  return result;
}

char *sub_1ADE6F47C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70D78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F49C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADE6F4BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE70F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ADE6F500(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA240, &qword_1AE241C08);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6F60C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2C8, &qword_1AE242258);
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

char *sub_1ADE6F72C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1A0, &qword_1AE241B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6F850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA288, &qword_1AE241D70);
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

char *sub_1ADE6F95C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA158, &unk_1AE242220);
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

void *sub_1ADE6FA68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA320, &qword_1AE2422F0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA328, &qword_1AE2422F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE6FBB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA368, &qword_1AE242398);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA370, &qword_1AE2423A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE6FCE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA388, &qword_1AE2423B8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA390, &qword_1AE2423C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6FE2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2D8, &qword_1AE242268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE6FF4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
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

void *sub_1ADE70058(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A8, &unk_1AE251E20);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2B0, &unk_1AE242210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE7018C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1ADE70298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2B8, &unk_1AE242230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE703B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2D0, &qword_1AE242260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE704D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2C0, &qword_1AE242250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE705F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA330, &qword_1AE242328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA338, &qword_1AE242330);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE7072C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1C8, &qword_1AE241BB0);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1ADE70830(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1ADE70A18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1ADE70B14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
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

void *sub_1ADE70C30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1ADE70D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA220, &qword_1AE241BF8);
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

char *sub_1ADE70E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1B0, &unk_1AE242240);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1ADE70F88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1E8, &unk_1AE2422E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F0, &qword_1AE241BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1ADE710D0(void *a1, char a2, uint64_t *a3)
{
  v47 = a1[2];
  if (!v47)
  {
    goto LABEL_24;
  }

  v7 = a1[7];
  v6 = a1[8];
  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];
  sub_1ADDD86D8(v10, v9);

  if (!v8)
  {
    goto LABEL_24;
  }

  v46 = a1;
  v49 = v10;
  v50 = v9;
  v48 = a3;
  v11 = *a3;
  v14 = sub_1ADDDE7CC(v10, v9);
  v15 = *(v11 + 16);
  v16 = (v12 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v12;
  if (*(v11 + 24) >= v17)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1ADF70B90();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1ADF6BA98(v17, a2 & 1);
  v17 = sub_1ADDDE7CC(v10, v9);
  if ((v18 & 1) == (v12 & 1))
  {
    v14 = v17;
    if ((v18 & 1) == 0)
    {
LABEL_13:
      v22 = v48;
      v23 = *v48;
      *(*v48 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v24 = (v23[6] + 16 * v14);
      *v24 = v10;
      v24[1] = v9;
      v25 = (v23[7] + 24 * v14);
      *v25 = v8;
      v25[1] = v7;
      v25[2] = v6;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23[2] = v28;
      v29 = v46;
      if (v47 != 1)
      {
        v30 = v46 + 13;
        v14 = 1;
        while (v14 < v29[2])
        {
          v32 = *(v30 - 1);
          v31 = *v30;
          v34 = *(v30 - 3);
          v33 = *(v30 - 2);
          v35 = *(v30 - 4);
          sub_1ADDD86D8(v35, v34);

          if (!v33)
          {
            goto LABEL_24;
          }

          v49 = v35;
          v50 = v34;
          v36 = *v22;
          v17 = sub_1ADDDE7CC(v35, v34);
          v37 = *(v36 + 16);
          v38 = (v12 & 1) == 0;
          v27 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v27)
          {
            goto LABEL_26;
          }

          v40 = v12;
          if (*(v36 + 24) < v39)
          {
            sub_1ADF6BA98(v39, 1);
            v17 = sub_1ADDDE7CC(v35, v34);
            if ((v40 & 1) != (v12 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_10;
          }

          v22 = v48;
          v41 = *v48;
          *(*v48 + 8 * (v17 >> 6) + 64) |= 1 << v17;
          v42 = (v41[6] + 16 * v17);
          *v42 = v35;
          v42[1] = v34;
          v43 = (v41[7] + 24 * v17);
          *v43 = v33;
          v43[1] = v32;
          v43[2] = v31;
          v44 = v41[2];
          v27 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v14;
          v41[2] = v45;
          v30 += 5;
          v29 = v46;
          if (v47 == v14)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v14 = 0xD000000000000015;
    sub_1ADE42E40(v17, v12, v13);
    v19 = swift_allocError();
    *v20 = 0xD000000000000015;
    *(v20 + 8) = 0x80000001AE2601D0;
    *(v20 + 16) = 0;
    swift_willThrow();
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCC35C(v49, v50);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1AE23E27C();
  __break(1u);
LABEL_29:
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](v14 + 6, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

double sub_1ADE71500(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);
    v7 = v4;

    v8 = sub_1ADE50584(v6);
    swift_beginAccess();
    *(v7 + 24) = v8;
  }

  return result;
}

double sub_1ADE7159C(uint64_t *a1, uint64_t a2, uint64_t a3)
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

BOOL _s9Coherence13CRCodingErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v15 = *a1;
        if (v2 == v5 && v3 == v6)
        {
          sub_1ADE74158(v15, v3, 0);
          sub_1ADE74158(v2, v3, 0);
          sub_1ADE74174(v2, v3, 0);
          v8 = v2;
          v9 = v3;
          v10 = 0;
          goto LABEL_45;
        }

        v17 = sub_1AE23E00C();
        sub_1ADE74158(v5, v6, 0);
        sub_1ADE74158(v2, v3, 0);
        sub_1ADE74174(v2, v3, 0);
        v18 = v5;
        v19 = v6;
        v20 = 0;
        goto LABEL_32;
      }

      goto LABEL_10;
    }

    if (v7 != 1)
    {
      goto LABEL_42;
    }

    sub_1ADE74174(*a1, v3, 1);
    v11 = v5;
    v12 = v6;
    v13 = 1;
    goto LABEL_20;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_42;
    }

    sub_1ADE74174(*a1, v3, 2);
    v11 = v5;
    v12 = v6;
    v13 = 2;
LABEL_20:
    sub_1ADE74174(v11, v12, v13);
    return v2 == v5;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_1ADE74158(*a1, v3, 3);
        sub_1ADE74158(v2, v3, 3);
        sub_1ADE74174(v2, v3, 3);
        v8 = v2;
        v9 = v3;
        v10 = 3;
LABEL_45:
        sub_1ADE74174(v8, v9, v10);
        return 1;
      }

      v17 = sub_1AE23E00C();
      sub_1ADE74158(v5, v6, 3);
      sub_1ADE74158(v2, v3, 3);
      sub_1ADE74174(v2, v3, 3);
      v18 = v5;
      v19 = v6;
      v20 = 3;
LABEL_32:
      sub_1ADE74174(v18, v19, v20);
      return v17 & 1;
    }

LABEL_10:

LABEL_42:
    sub_1ADE74158(v5, v6, v7);
    sub_1ADE74174(v2, v3, v4);
    sub_1ADE74174(v5, v6, v7);
    return 0;
  }

  if (v2 > 1)
  {
    if (v2 ^ 2 | v3)
    {
      if (v7 != 4 || v5 != 3 || v6)
      {
        goto LABEL_42;
      }

      sub_1ADE74174(*a1, v3, 4);
      v8 = 3;
    }

    else
    {
      if (v7 != 4 || v5 != 2 || v6)
      {
        goto LABEL_42;
      }

      sub_1ADE74174(*a1, v3, 4);
      v8 = 2;
    }

    goto LABEL_41;
  }

  if (!(v2 | v3))
  {
    if (v7 != 4 || v6 | v5)
    {
      goto LABEL_42;
    }

    sub_1ADE74174(*a1, v3, 4);
    v8 = 0;
LABEL_41:
    v9 = 0;
    v10 = 4;
    goto LABEL_45;
  }

  if (v7 != 4 || v5 != 1 || v6)
  {
    goto LABEL_42;
  }

  sub_1ADE74174(*a1, v3, 4);
  v14 = 1;
  sub_1ADE74174(1, 0, 4);
  return v14;
}

void sub_1ADE7196C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F2C4(0, v1, 0);
    v4 = v3 + 64;
    v5 = sub_1AE23D8EC();
    v6 = 0;
    v24 = v3 + 72;
    v25 = v1;
    v26 = v3 + 64;
    v27 = v3;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      v28 = v6;
      v29 = *(v3 + 36);
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      sub_1ADDD86D8(*v9, v11);
      sub_1ADDD86D8(v10, v11);
      sub_1ADDCC35C(0, 0xC000000000000000);

      sub_1ADDD86D8(v10, v11);

      sub_1ADDCC35C(v10, v11);
      sub_1ADDCC35C(v10, v11);
      v12 = v2;
      v14 = *(v30 + 16);
      v13 = *(v30 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ADE6F2C4((v13 > 1), v14 + 1, 1);
      }

      *(v30 + 16) = v14 + 1;
      v15 = (v30 + 24 * v14);
      v15[4] = v12;
      v15[5] = v10;
      v15[6] = v11;
      v7 = 1 << *(v27 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v4 = v26;
      v16 = *(v26 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v12;
      v3 = v27;
      if (v29 != *(v27 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v2;
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1ADDFFBC8(v5, v29, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1ADDFFBC8(v5, v29, 0);
LABEL_19:
        v2 = v18;
      }

      v6 = v28 + 1;
      v5 = v7;
      if (v28 + 1 == v25)
      {
        return;
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
  }
}

uint64_t sub_1ADE71C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 120))
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v5 = 0xD00000000000003DLL;
    *(v5 + 8) = 0x80000001AE260360;
    *(v5 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v4 = *(v3 + 112);
    if (!v4)
    {
      type metadata accessor for CREncoder.CRValueContainer();
      v4 = swift_allocObject();
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = inited;
      *(v3 + 112) = v4;
    }
  }

  return v4;
}

void sub_1ADE71CD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, __int128 *, uint64_t, uint64_t *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v21[2] = MEMORY[0x1E69E7CC0];
    sub_1AE23DB1C();
    v5 = a1 + 64;
    v6 = sub_1AE23D8EC();
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_15;
      }

      v13 = v4;
      v14 = *(a1 + 36);
      v7 = (*(a1 + 56) + 24 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v17 = *(*(a1 + 48) + 16 * v6);
      v18 = v8;
      v19 = v9;
      v20 = v10;
      sub_1ADDD86D8(v17, *(&v17 + 1));

      a3(v21, &v17, a2, &v16);
      sub_1ADDCC35C(v17, *(&v17 + 1));

      if (v15)
      {

        return;
      }

      sub_1AE23DAEC();
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      if (v6 >= -(-1 << *(a1 + 32)))
      {
        goto LABEL_16;
      }

      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_17;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_18;
      }

      v6 = sub_1AE23D90C();
      v4 = v13 - 1;
      if (v13 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1ADE71EE0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1ADE744B8;

  return sub_1ADE68074(a1, a2, v2);
}

uint64_t sub_1ADE71F8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v4 + 72);
  if (v5)
  {
    v6 = *(v5 + 16);
    if ((~v6 & 0xF000000000000007) == 0 || (v8 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1, v8 != 14) && (*(v4 + 57) <= 1u ? (v9 = v8 == 1) : (v9 = 0), !v9))
    {
      sub_1ADE42E40(result, a2, a3);
      swift_allocError();
      *v7 = 0xD000000000000017;
      *(v7 + 8) = 0x80000001AE260280;
      *(v7 + 16) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE7205C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + 72);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v4 + 16);
  if ((~v5 & 0xF000000000000007) == 0)
  {
LABEL_6:
    sub_1ADE42E40(result, a2, a3);
    swift_allocError();
    *v7 = 0xD000000000000016;
    *(v7 + 8) = 0x80000001AE2602E0;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return *(v5 + 16);
    }

    goto LABEL_6;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE72118(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v4;
  *(v2 + 32) = v4;
  *(v2 + 40) = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 24) = *(a1 + 40);
  swift_beginAccess();
  *(v2 + 32) = *(a1 + 80);
  swift_beginAccess();
  *(v2 + 40) = *(a1 + 56);
  v6 = qword_1ED96AE88;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED96F2A8;
  type metadata accessor for CRDecodeContext();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v5;
  v8[4] = v7;
  *(v2 + 16) = v8;

  v12 = sub_1ADDFCC74(v9, v10, v11);
  swift_beginAccess();
  *(v2 + 64) = *(v12 + 24);

  *(v2 + 57) = *(a1 + 104);
  return v2;
}

uint64_t sub_1ADE722FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(a5 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  while (*(a5 + 32 + 8 * v8) != *(a2 + 8 * a3))
  {
    if (v7 == ++v8)
    {
      return 0;
    }
  }

  if (v8 >= *(a6 + 16))
  {
    return 0;
  }

  v9 = v6 - a3;
  if (__OFSUB__(v6, a3))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = *(a6 + 8 * v8 + 32);
  if (v9 == 1)
  {
  }

  v11 = *(v10 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && (v11 & 0xF000000000000000) == 0x3000000000000000)
  {
    v17 = v11 & 0xFFFFFFFFFFFFFFFLL;
    v15 = *(v17 + 16);
    v16 = *(v17 + 24);
    v18 = result;
    v19 = a3;

    a3 = v19;
    result = v18;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (!v9)
  {
LABEL_23:
    if (v6 >= a3)
    {
      v20 = swift_unknownObjectRetain();
      v21 = sub_1ADE722FC(v20, a2, v6, a4, v15, v16);
      swift_unknownObjectRelease();

      return v21;
    }

    goto LABEL_28;
  }

  if (!__OFADD__(a3, 1))
  {
    if (v6 >= a3 + 1)
    {
      v6 = a3 + 1;
      goto LABEL_23;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE7249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (*(a2 + 32 + 8 * v5) != *(a1 + 32))
  {
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  if (v5 >= *(a3 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 8 * v5 + 32);
  if (v3 == 1)
  {
  }

  v9 = *(v7 + 16);
  if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x3000000000000000)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFLL;
    v11 = *(v13 + 16);
    v12 = *(v13 + 24);
    v14 = a1;

    a1 = v14;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1ADE722FC(a1, v6, 1, (2 * v3) | 1, v11, v12);

  return v15;
}

unint64_t sub_1ADE725D0()
{
  result = qword_1EB5B95B8;
  if (!qword_1EB5B95B8)
  {
    sub_1AE23C2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B95B8);
  }

  return result;
}

uint64_t sub_1ADE72628(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  *(v1 + 80) = v2;
  *(v1 + 88) = v2;
  *(v1 + 96) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 16) = a1;
  *(v1 + 104) = 1;
  v4 = qword_1ED9697D8;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED96F240;
  v7 = *algn_1ED96F248;
  *(v1 + 24) = qword_1ED96F240;
  *(v1 + 32) = v7;
  sub_1ADDD86D8(v6, v7);
  return v1;
}

uint64_t sub_1ADE726C0(void *a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = v5;
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;
  *(v2 + 88) = v4;
  *(v2 + 96) = v4;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 16) = a1;
  *(v2 + 104) = v3;
  v6 = qword_1ED9697D8;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED96F240;
  v9 = *algn_1ED96F248;
  *(v2 + 24) = qword_1ED96F240;
  *(v2 + 32) = v9;
  sub_1ADDD86D8(v8, v9);
  return v2;
}

unint64_t sub_1ADE7281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B92A0;
  if (!qword_1EB5B92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence13CRCodingErrorO(uint64_t a1)
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

uint64_t sub_1ADE7288C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADE728D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ADE72918(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for CRCodableVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRCodableVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of CRDecoder.CRDTContainer.decode<A>(_:)()
{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of CRDecoder.CRDTContainer.decode<A, B>(_:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of CRDecoder.CRDTContainer.decode(_:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 184))();
}

uint64_t dispatch thunk of CRDecoder.CRValueContainer.decode(_:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

uint64_t dispatch thunk of CRDecoder.CRValueContainer.decode<A>(_:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of CREncoder.CRDTContainer.encode<A>(_:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of CREncoder.CRDTContainer.encode<A, B>(_:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

uint64_t dispatch thunk of CREncoder.CRDTContainer.encode(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 216))();
}

uint64_t dispatch thunk of CREncoder.CRValueContainer.encode(_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

{
  return (*(*v0 + 240))();
}

uint64_t sub_1ADE73AB0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

double sub_1ADE73AC8(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE73B5C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

unint64_t sub_1ADE73BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A8E8[0];
  if (!qword_1ED96A8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED96A8E8);
  }

  return result;
}

double sub_1ADE73C1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1ADDD86D8(a1, a2);
  }

  return result;
}

unint64_t sub_1ADE73D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8F10;
  if (!qword_1EB5B8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8F10);
  }

  return result;
}

void sub_1ADE73D6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {

    sub_1ADDCC35C(a2, a3);
  }
}

uint64_t sub_1ADE73DF4(uint64_t a1)
{
  v2 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ADE73ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A720;
  if (!qword_1ED96A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A720);
  }

  return result;
}

uint64_t sub_1ADE73F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 16))(v2, v3);
}

uint64_t sub_1ADE73F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  result = MEMORY[0x1E69E7CC0];
  while (*(a2 + 32 + 8 * v5) != a1)
  {
    if (v3 == ++v5)
    {
      return result;
    }
  }

  if (v5 >= *(a3 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(a3 + 8 * v5 + 32) + 16);
    if ((~v7 & 0xF000000000000007) == 0 || (v7 & 0xF000000000000000) != 0x3000000000000000)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    return v9;
  }

  return result;
}

uint64_t sub_1ADE740A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1ADE688AC(a1, v4, v5, v6);
}

double sub_1ADE74158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_1ADE74174(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_1ADE74190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE74240;

  return sub_1AE1AC490(a1, v4, v5, v6);
}

uint64_t sub_1ADE74240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1ADE74334(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ADE74344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA360;
  if (!qword_1EB5BA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA360);
  }

  return result;
}

uint64_t sub_1ADE74398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1ADE74240;

  return sub_1ADE67A90(a1, v4, v5, v7, v6);
}

uint64_t WrappedObservableDifference.contents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

BOOL WrappedObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1) == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t static WrappedObservableDifference<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v32 - v9;
  v12 = type metadata accessor for WrappedObservableDifference(0, v10, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v32 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v32 - v18;
  v21 = *(v20 + 48);
  v35 = v13;
  v22 = *(v13 + 16);
  v22(&v32 - v18, v36, v12, v17);
  (v22)(&v19[v21], a2, v12);
  v36 = v6;
  v23 = *(v6 + 48);
  if (v23(v19, 1, a3) == 1)
  {
    v24 = 1;
    if (v23(&v19[v21], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v22)(v37, v19, v12);
    if (v23(&v19[v21], 1, a3) != 1)
    {
      v25 = v36;
      v26 = *(v36 + 32);
      v27 = v32;
      v26(v32, v37, a3);
      v28 = &v19[v21];
      v29 = v33;
      v26(v33, v28, a3);
      v24 = sub_1AE23CCBC();
      v30 = *(v25 + 8);
      v30(v29, a3);
      v30(v27, a3);
LABEL_8:
      v16 = v35;
      goto LABEL_9;
    }

    (*(v36 + 8))(v37, a3);
  }

  v24 = 0;
  v12 = TupleTypeMetadata2;
LABEL_9:
  (*(v16 + 8))(v19, v12);
  return v24 & 1;
}

uint64_t Optional<A>.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v64 = a2;
  v69 = a1;
  v9 = *(a3 + 16);
  v65 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v58 - v12;
  v71 = AssociatedTypeWitness;
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v58 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v58 - v26;
  v28 = *(v15 + 16);
  v29 = v6;
  v30 = a3;
  v28(v20, v29, a3, v25);
  v68 = v21;
  v31 = *(v21 + 48);
  if (v31(v20, 1, v9) == 1)
  {
    (*(v15 + 8))(v20, v30);
    if (v31(v69, 1, v9) == 1)
    {
      return (*(v70 + 56))(a5, 1, 1, v71);
    }

    v36 = v71;
    v40 = swift_conformsToProtocol2();
    if (v40)
    {
      v41 = a5;
      v42 = *(v40 + 8);
      *(&v73 + 1) = v36;
      v74 = v40;
      v43 = v40;
      __swift_allocate_boxed_opaque_existential_1(&v72);
      v42(v36, v43);
      a5 = v41;
    }

    else
    {
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
    v57 = swift_dynamicCast();
    v54 = *(v70 + 56);
    v55 = v57 ^ 1u;
    v56 = a5;
    return v54(v56, v55, 1, v36);
  }

  v59 = a5;
  v58 = *(v68 + 32);
  v58(v27, v20, v9);
  v33 = v67;
  (v28)(v67, v69, v30);
  if (v31(v33, 1, v9) == 1)
  {
    v34 = v27;
    v35 = v68;
    (*(v15 + 8))(v33, v30);
    v36 = v71;
    v37 = swift_conformsToProtocol2();
    if (v37)
    {
      v38 = *(v37 + 8);
      *(&v73 + 1) = v36;
      v74 = v37;
      v39 = v37;
      __swift_allocate_boxed_opaque_existential_1(&v72);
      v38(v36, v39);
      (*(v35 + 8))(v34, v9);
    }

    else
    {
      (*(v35 + 8))(v34, v9);
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
    }

    v52 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
    v53 = swift_dynamicCast();
    v54 = *(v70 + 56);
    v55 = v53 ^ 1u;
    v56 = v52;
    return v54(v56, v55, 1, v36);
  }

  v44 = v63;
  v58(v63, v33, v9);
  v45 = v66;
  (*(v65 + 40))(v44, v64, v9);
  v46 = *(v68 + 8);
  v46(v44, v9);
  v46(v27, v9);
  v48 = v70;
  v47 = v71;
  if ((*(v70 + 48))(v45, 1, v71) == 1)
  {
    (*(v61 + 8))(v45, v62);
    return (*(v48 + 56))(v59, 1, 1, v47);
  }

  else
  {
    v49 = *(v48 + 32);
    v50 = v60;
    v49(v60, v45, v47);
    v51 = v59;
    v49(v59, v50, v47);
    return (*(v48 + 56))(v51, 0, 1, v47);
  }
}