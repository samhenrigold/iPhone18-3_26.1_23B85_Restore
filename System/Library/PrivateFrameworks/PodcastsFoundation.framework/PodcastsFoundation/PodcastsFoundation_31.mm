uint64_t sub_1D90103C8()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1424);
  v3 = swift_allocObject();
  *(v0 + 1360) = v3;
  *(v3 + 16) = v1;
  swift_asyncLet_begin();
  v4 = sub_1D9013CF0(v2);
  *(v0 + 1368) = v4;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];
  *(v0 + 1376) = v6;

  v7 = swift_allocObject();
  *(v0 + 1384) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v6;
  v9 = v4;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1344, sub_1D9010534, v0 + 1296);
}

uint64_t sub_1D9010534()
{
  v1[174] = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 168, sub_1D90106F0, v1 + 162);
  }

  v1[175] = v1[168];
  return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 167, sub_1D9010584, v1 + 162);
}

uint64_t sub_1D9010584()
{
  v1[176] = v0;
  if (v0)
  {
    v2 = sub_1D9010810;
  }

  else
  {
    v1[177] = v1[167];
    v2 = sub_1D90105C4;
  }

  return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 168, v2, v1 + 162);
}

uint64_t sub_1D90105E0()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1D9010654, v0 + 656);
}

uint64_t sub_1D9010670()
{

  v1 = v0[1];
  v2 = v0[175] >= v0[177];

  return v1(v2);
}

uint64_t sub_1D901070C()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1D9010780, v0 + 656);
}

uint64_t sub_1D901079C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D901082C()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1D90108A0, v0 + 656);
}

uint64_t sub_1D90108BC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D9010950()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 batchFeedFetchShowCountMinimum];
  v0[21] = v2;

  if (qword_1ECAB18E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB18F0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D9010AEC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D8D5F354;
  v0[13] = &block_descriptor_104_0;
  v0[14] = v4;
  [v2 asyncValueOnQueue:v3 withCompletion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D9010AEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D9010C88;
  }

  else
  {
    v2 = sub_1D9010BFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9010BFC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = [v3 integerValue];

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D9010C88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  swift_willThrow();

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1D9010CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D917906C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9010DBC, 0, 0);
}

uint64_t sub_1D9010DBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1D9010EE4;
  v10 = v0[7];
  v11 = v0[2];
  v12 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEDB6538](v11, v10, sub_1D9015134, v6, v12);
}

uint64_t sub_1D9010EE4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D90110BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D90110BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9011120@<X0>(uint64_t *a2@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  result = sub_1D917907C();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9011188@<X0>(uint64_t *a2@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  result = sub_1D917908C();
  if (v2)
  {

    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

void sub_1D9011204(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = a3;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_41:
    v3 = MEMORY[0x1E69E7CC8];
    v52 = MEMORY[0x1E69E7CC0];
LABEL_42:
    if (!v3[2])
    {

      v5 = v50;
      v6 = v52;
LABEL_48:
      *v5 = v6;
      return;
    }

    v6 = v52;
    v5 = v50;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_44:
      v42 = *(v6 + 16);
      v41 = *(v6 + 24);
      if (v42 >= v41 >> 1)
      {
        v6 = sub_1D8ECD804((v41 > 1), v42 + 1, 1, v6);
      }

      *(v6 + 16) = v42 + 1;
      *(v6 + 8 * v42 + 32) = v3;
      goto LABEL_48;
    }

LABEL_51:
    v6 = sub_1D8ECD804(0, *(v6 + 16) + 1, 1, v6);
    goto LABEL_44;
  }

  v8 = sub_1D917935C();
  v50 = a3;
  if (!v8)
  {
    goto LABEL_41;
  }

LABEL_3:
  v9 = objc_opt_self();
  if (v8 < 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v9;
  v11 = 0;
  v52 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC8];
  v12 = &selRef_redirectURLForStoreCollectionId_;
  v43 = v4;
  v49 = v9;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1DA72AA90](v11, v6);
    }

    else
    {
      v13 = *(v6 + 8 * v11 + 32);
    }

    v14 = v13;
    if (([v10 isEmpty_] & 1) != 0 || (v15 = objc_msgSend(v14, v12[445]), (v15 & 0x8000000000000000) != 0) || v15 == 1000000000000 || !v15)
    {

      goto LABEL_6;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v16;
    v18 = [v14 uuid];
    if (!v18)
    {

LABEL_19:
LABEL_37:
      v12 = &selRef_redirectURLForStoreCollectionId_;
      goto LABEL_6;
    }

    v19 = v18;
    v46 = sub_1D917820C();
    v47 = v20;

    v21 = [v14 nextSyncToken];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D917820C();
      v44 = v24;
      v45 = v23;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v5 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v5;
    v27 = sub_1D8F06D7C(v5);
    v28 = v3[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
      goto LABEL_50;
    }

    v31 = v26;
    if (v3[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D8F844A8();
        if (v31)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_1D9007BB8(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1D8F06D7C(v51);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_53;
      }

      v27 = v32;
      if (v31)
      {
LABEL_29:
        v38 = (v3[7] + 32 * v27);
        *v38 = v45;
        v38[1] = v44;
        v38[2] = v46;
        v38[3] = v47;

        v37 = v3[2];
        goto LABEL_30;
      }
    }

    v3[(v27 >> 6) + 8] |= 1 << v27;
    *(v3[6] + 8 * v27) = v51;
    v34 = (v3[7] + 32 * v27);
    *v34 = v45;
    v34[1] = v44;
    v34[2] = v46;
    v34[3] = v47;
    v35 = v3[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      break;
    }

    v3[2] = v37;
LABEL_30:
    v10 = v49;
    v12 = &selRef_redirectURLForStoreCollectionId_;
    if (v37 >= a2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1D8ECD804(0, v52[2] + 1, 1, v52);
      }

      v40 = v52[2];
      v39 = v52[3];
      if (v40 >= v39 >> 1)
      {
        v52 = sub_1D8ECD804((v39 > 1), v40 + 1, 1, v52);
      }

      v52[2] = v40 + 1;
      v52[v40 + 4] = v3;
      v3 = MEMORY[0x1E69E7CC8];
      v10 = v49;
      goto LABEL_37;
    }

LABEL_6:
    if (v8 == ++v11)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_53:
  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D9179CFC();
  __break(1u);
}

uint64_t sub_1D901169C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v36 = &v30 - v5;
  sub_1D900C078(a1);
  v40 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
  v8 = sub_1D917817C();
  v10 = v9;

  v39 = sub_1D8E272CC(&unk_1F5461490);
  sub_1D8D08A50(&unk_1F54614B0, &qword_1ECAB8D08, &qword_1D91A6E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
  inited = swift_initStackObject();
  v38 = xmmword_1D9189080;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v12 = swift_allocObject();
  *(v12 + 16) = v38;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(inited + 40) = v12;
  *&v38 = sub_1D8E272A4(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8D18, &qword_1D91A6E18);
  v37 = sub_1D8E272F4(&unk_1F54614C8);
  sub_1D8D08A50(&unk_1F54614E8, &qword_1ECAB8D20, &unk_1D91A6E20);
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = MEMORY[0x1E69E7CC0];
  v35 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v34 = sub_1D8D94DF8(v15);
  v33 = sub_1D8D951E0(v15);
  v32 = sub_1D8D9536C(v15);
  v31 = sub_1D8D9536C(v15);
  v16 = sub_1D8D953C4(v15);
  v17 = sub_1D8D952D8(v15);
  *(a2 + 41) = 263;
  *(a2 + 43) = 5;
  *(a2 + 152) = 1;
  *(a2 + 201) = 1;
  v18 = type metadata accessor for MediaRequest.Params(0);
  v19 = v18[28];
  v14((a2 + v19), 1, 1, v13);
  v20 = (a2 + v18[29]);
  v21 = (a2 + v18[31]);
  v22 = v18[33];
  v30 = v18[34];
  v23 = (a2 + v22);
  v24 = (a2 + v18[35]);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 83951876;
  v25 = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v25;
  *(a2 + 64) = v33;
  *(a2 + 72) = v15;
  v26 = v31;
  v27 = v32;
  *(a2 + 80) = v39;
  *(a2 + 88) = v27;
  *(a2 + 96) = v26;
  *(a2 + 104) = v16;
  *(a2 + 112) = v15;
  *(a2 + 120) = v17;
  *(a2 + 128) = &unk_1F5461438;
  *(a2 + 136) = v15;
  *(a2 + 144) = v15;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v28 = v37;
  *(a2 + 176) = v38;
  *(a2 + 184) = v28;
  *(a2 + 192) = 0;
  *(a2 + 200) = 257;
  *(a2 + 202) = 0;
  result = sub_1D8E26828(v36, a2 + v19);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + v18[30]) = 0;
  *v21 = 0;
  v21[1] = 0;
  *(a2 + v18[32]) = v15;
  *v23 = 0;
  v23[1] = 0;
  *(a2 + v30) = 2;
  *v24 = 0;
  v24[1] = 0;
  return result;
}

uint64_t sub_1D9011A64(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  type metadata accessor for MediaRequest.Params(0);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9011AF4, 0, 0);
}

uint64_t sub_1D9011AF4()
{
  sub_1D901169C(v0[22], v0[24]);
  if (qword_1ECAB36B0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v0[19] = qword_1ECAB8CA0;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = v0 + 19;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CF8, &unk_1D91A6E00);
  *v3 = v0;
  v3[1] = sub_1D9011C48;

  return MEMORY[0x1EEE6DE38](v0 + 12, 0, 0, 0xD000000000000010, 0x80000001D91D27C0, sub_1D9014C50, v2, v4);
}

uint64_t sub_1D9011C48()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D9012324;
  }

  else
  {

    v2 = sub_1D9011D64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9011D64()
{
  v1 = v0[27];
  v2 = v0[14];
  v3 = v0[15];
  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  sub_1D9014C5C();
  sub_1D917654C();
  v4 = v1;

  if (v1)
  {
    v5 = v0[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = sub_1D917820C();
    *(inited + 40) = v7;
    swift_getErrorValue();
    v8 = v0[16];
    v9 = v0[17];
    *(inited + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1D8E2696C(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = sub_1D917802C();

    [v11 initWithDomain:v12 code:0 userInfo:v13];

    swift_willThrow();
    sub_1D8D90BEC(v5);
    sub_1D8D7567C(v2, v3);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v53 = v2;
    v16 = 0;
    v17 = v0[20];
    v18 = *(v17 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    v52 = v3;
LABEL_6:
    v21 = (v17 + 40 + 16 * v16);
    while (v18 != v16)
    {
      if (v16 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v22 = (v21 + 16);
      ++v16;
      v23 = *v21;
      v21 += 16;
      if ((v23 & 1) == 0)
      {
        v24 = *(v22 - 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8E31720(0, *(v20 + 16) + 1, 1);
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D8E31720((v25 > 1), v26 + 1, 1);
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = 0;
        goto LABEL_6;
      }
    }

    v54 = v19;
    v16 = *(v20 + 16);
    if (!v16)
    {
LABEL_22:

      v16 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
        goto LABEL_46;
      }

      v30 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }

    v28 = 0;
    v29 = (v20 + 32);
    while (v28 < *(v20 + 16))
    {
      v19 = *v29;
      MEMORY[0x1DA729B90]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      ++v28;
      sub_1D917869C();
      v29 += 2;
      if (v16 == v28)
      {
        v19 = v54;
        goto LABEL_22;
      }
    }

LABEL_43:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v30 = sub_1D917935C();
      if (!v30)
      {
        break;
      }

LABEL_24:
      v31 = 0;
      v32 = v0[22];
      v33 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v51 = v33;
      v34 = v31;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1DA72AA90](v34, v19);
        }

        else
        {
          if (v34 >= *(v16 + 16))
          {
            goto LABEL_45;
          }

          v35 = *(v19 + 8 * v34 + 32);
        }

        v36 = v35;
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (*(v32 + 16))
        {
          v37 = sub_1D8F06D7C(v35);
          if (v38)
          {
            v39 = *(v32 + 56) + 32 * v37;
            v40 = *(v39 + 24);
            v50 = *(v39 + 16);

            v41 = v51;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v41 = sub_1D8D4241C(0, *(v51 + 16) + 1, 1, v51);
            }

            v44 = *(v41 + 2);
            v43 = *(v41 + 3);
            v45 = v41;
            if (v44 >= v43 >> 1)
            {
              v45 = sub_1D8D4241C((v43 > 1), v44 + 1, 1, v41);
            }

            *(v45 + 2) = v44 + 1;
            v33 = v45;
            v46 = &v45[16 * v44];
            *(v46 + 4) = v50;
            *(v46 + 5) = v40;
            if (v31 != v30)
            {
              goto LABEL_25;
            }

            goto LABEL_48;
          }
        }

        ++v34;
        if (v31 == v30)
        {
          v33 = v51;
          goto LABEL_48;
        }
      }
    }

LABEL_47:
    v33 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v47 = v0[24];

    v48 = sub_1D8FC0F28(v33);

    sub_1D8D90BEC(v47);
    sub_1D8D7567C(v53, v52);

    v49 = v0[1];

    return v49(v48);
  }
}

uint64_t sub_1D9012324()
{
  v1 = *(v0 + 192);

  swift_willThrow();
  sub_1D8D90BEC(v1);

  v2 = *(v0 + 8);

  return v2();
}

id BatchFeedRequestController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BatchFeedRequestController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchFeedRequestController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BatchFeedRequestController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BatchFeedRequestController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D90124A4(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D90124FC(uint64_t a1)
{
  v2 = sub_1D90146E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9012538(uint64_t a1)
{
  v2 = sub_1D90146E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D9012574@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9014560(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D90125A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1635018093;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1635018093;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D9012634()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90126A4(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D9012700(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D901276C(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D90127CC(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1635018093;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D90127F8()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 25705;
  }
}

void sub_1D9012820(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D9012884(uint64_t a1)
{
  v2 = sub_1D9014B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90128C0(uint64_t a1)
{
  v2 = sub_1D9014B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9012914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D9012994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void sub_1D90129EC(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

void sub_1D9012A70(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D9012AC8(uint64_t a1)
{
  v2 = sub_1D9014BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9012B04(uint64_t a1)
{
  v2 = sub_1D9014BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9012B40@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9014810(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void sub_1D9012B74(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for MediaRequest.Params(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  (*(v10 + 16))(&v29 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D9014CB0;
  *(v16 + 24) = v15;
  v17 = type metadata accessor for MediaRequestBuilder();

  sub_1D8D96644(a3);
  v18 = sub_1D8D963C0(a3);
  sub_1D8D85B08(a3, v8);
  v19 = *(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1D8D85D0C(v8, v20 + ((v19 + 24) & ~v19));
  v35 = sub_1D8D85180;
  v36 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D8D85118;
  v34 = &block_descriptor_61;
  v21 = _Block_copy(&aBlock);

  v22 = [v18 thenWithBlock_];
  _Block_release(v21);

  sub_1D8D85B08(a3, v8);
  v23 = (v19 + 40) & ~v19;
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = sub_1D9014D5C;
  v25[4] = v16;
  sub_1D8D85D0C(v8, v25 + v23);
  v26 = v30;
  *(v25 + v24) = v30;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v35 = sub_1D8D90CE8;
  v36 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D8D5960C;
  v34 = &block_descriptor_31_2;
  v27 = _Block_copy(&aBlock);

  v28 = v26;

  [v22 addFinishBlock_];
  _Block_release(v27);
}

uint64_t sub_1D9012F5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D8D5FF18;

  return v6();
}

uint64_t sub_1D9013044(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D8D58924;

  return v7();
}

uint64_t sub_1D901312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D8CF5C74(a3, v23 - v10);
  v12 = sub_1D917886C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D8D08A50(v11, &qword_1ECABB890, &qword_1D918B960);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D917885C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D917874C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D917829C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);

    return v21;
  }

LABEL_8:
  sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D9013418(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_1D917906C();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90134D8, 0, 0);
}

uint64_t sub_1D90134D8()
{
  v2 = v0[21];
  if (v2 >> 62)
  {
    if (!sub_1D917935C())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA72AA90](0, v0[21]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v3 = *(v0[21] + 32);
  }

  v4 = v3;
  v5 = [v3 managedObjectContext];
  v0[25] = v5;

  if (v5)
  {
    v1 = v0 + 18;
    v6 = [objc_opt_self() sharedInstance];
    v2 = [v6 batchFeedFetchShowBatchSize];
    v0[26] = v2;

    if (qword_1ECAB18E8 == -1)
    {
LABEL_8:
      v7 = qword_1ECAB18F0;
      v0[2] = v0;
      v0[7] = v1;
      v0[3] = sub_1D9013748;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D8D5F354;
      v0[13] = &block_descriptor_120_0;
      v0[14] = v8;
      [v2 asyncValueOnQueue:v7 withCompletion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

LABEL_17:
    swift_once();
    goto LABEL_8;
  }

LABEL_12:

  v9 = v0[1];
  v10 = MEMORY[0x1E69E7CC0];

  return v9(v10);
}

uint64_t sub_1D9013748()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1D9013B84;
  }

  else
  {
    v2 = sub_1D9013858;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9013858()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = [v6 integerValue];

  v8 = swift_allocObject();
  v0[28] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  (*(v3 + 104))(v2, *MEMORY[0x1E695D2B8], v4);

  v9 = swift_task_alloc();
  v0[29] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D40, &qword_1D91A6F08);
  *v9 = v0;
  v9[1] = sub_1D90139B8;
  v11 = v0[24];

  return MEMORY[0x1EEDB6538](v0 + 20, v11, sub_1D9015358, v8, v10);
}

void sub_1D90139B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[23] + 8))(v2[24], v2[22]);

    MEMORY[0x1EEE6DFA0](sub_1D9013B10, 0, 0);
  }
}

uint64_t sub_1D9013B10()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D9013B84(uint64_t a1, uint64_t a2)
{
  v3 = v2[26];
  v4 = v2[25];
  swift_willThrow();

  v5 = v2[1];

  return v5();
}

uint64_t sub_1D9013C0C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D5FF18;

  return sub_1D900DA24(a1, a2, v6, v7, v8);
}

id sub_1D9013CF0(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v3 = objc_opt_self();
  v4 = [v3 predicateForAreMediaAPI_];
  v5 = [v3 predicateForNotHiddenPodcasts];
  v6 = [v4 AND_];

  if ((a1 & 1) == 0)
  {
    v7 = [v3 predicateForNotImplicitlyFollowedPodcasts];
    v8 = [v6 AND_];

    v6 = v8;
  }

  [v2 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9189060;
  v10 = sub_1D917820C();
  v11 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = sub_1D917820C();
  *(v9 + 88) = v11;
  *(v9 + 64) = v13;
  *(v9 + 72) = v14;
  v15 = sub_1D917820C();
  *(v9 + 120) = v11;
  *(v9 + 96) = v15;
  *(v9 + 104) = v16;
  v17 = sub_1D91785DC();

  [v2 setPropertiesToFetch_];

  return v2;
}

uint64_t sub_1D9013EE0(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_1D917906C();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9013FA0, 0, 0);
}

uint64_t sub_1D9013FA0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = sub_1D9013CF0(*(v0 + 80));
  *(v0 + 48) = v4;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];
  *(v0 + 56) = v6;

  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v6;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D28, &unk_1D91A6E98);
  *v9 = v0;
  v9[1] = sub_1D9014130;
  v11 = *(v0 + 40);

  return MEMORY[0x1EEDB6538](v0 + 16, v11, sub_1D9014FCC, v7, v10);
}

void sub_1D9014130()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);

    MEMORY[0x1EEE6DFA0](sub_1D901428C, 0, 0);
  }
}

uint64_t sub_1D901428C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t dispatch thunk of static BatchFeedRequestController.fetchOutOfDateShowUUIDs(with:)(uint64_t a1)
{
  v6 = (*(v1 + 80) + **(v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D90157D8;

  return v6(a1);
}

uint64_t dispatch thunk of static BatchFeedRequestController.fetchOutOfDateShowUUIDs(includeImplicit:)(uint64_t a1)
{
  v6 = (*(v1 + 88) + **(v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8E24548;

  return v6(a1);
}

void *sub_1D9014560(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CA8, &qword_1D91A6DE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90146E4();
  sub_1D9179EEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CB8, &qword_1D91A6DE8);
    sub_1D9014738();
    sub_1D91798FC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_1D90146E4()
{
  result = qword_1ECAB8CB0;
  if (!qword_1ECAB8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CB0);
  }

  return result;
}

unint64_t sub_1D9014738()
{
  result = qword_1ECAB8CC0;
  if (!qword_1ECAB8CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8CB8, &qword_1D91A6DE8);
    sub_1D90147BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CC0);
  }

  return result;
}

unint64_t sub_1D90147BC()
{
  result = qword_1ECAB8CC8;
  if (!qword_1ECAB8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CC8);
  }

  return result;
}

uint64_t sub_1D9014810(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CD0, &qword_1D91A6DF0);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CD8, &qword_1D91A6DF8);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D9014B54();
  sub_1D9179EEC();
  if (!v1)
  {
    v20 = a1;
    v10 = v5;
    v11 = v3;
    v12 = v22;
    v24 = 0;
    v13 = sub_1D91798BC();
    v9 = v14;
    v15 = sub_1D8FE6808(v13, v14);

    if (v15)
    {
      v16 = v15 == 1000000000000;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      if (v18)
      {
        v9 = v18;
        v23 = 1;
        sub_1D9014BFC();
        sub_1D917982C();
        sub_1D91798CC();
        (*(v21 + 8))(v10, v11);
        (*(v12 + 8))(v8, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        return v9;
      }
    }

    sub_1D9014BA8();
    swift_allocError();
    swift_willThrow();
    (*(v12 + 8))(v8, v6);
    a1 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_1D9014B54()
{
  result = qword_1ECAB8CE0;
  if (!qword_1ECAB8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CE0);
  }

  return result;
}

unint64_t sub_1D9014BA8()
{
  result = qword_1ECAB8CE8;
  if (!qword_1ECAB8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CE8);
  }

  return result;
}

unint64_t sub_1D9014BFC()
{
  result = qword_1ECAB8CF0;
  if (!qword_1ECAB8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CF0);
  }

  return result;
}

unint64_t sub_1D9014C5C()
{
  result = qword_1ECAB8D00;
  if (!qword_1ECAB8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D00);
  }

  return result;
}

uint64_t sub_1D9014CB0(void *a1, char a2, void *a3, unint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);

  return sub_1D904EDF0(a1, a2 & 1, a3, a4, a5 & 1);
}

uint64_t sub_1D9014D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9014DAC()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D8D58924;

  return sub_1D901017C(v2, v4, v3);
}

uint64_t sub_1D9014E60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8CF7944(a1, v4);
}

uint64_t sub_1D9014F18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D8D5FF18;

  return sub_1D900F5C4(v2, v3, v4);
}

uint64_t sub_1D9014FE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8D5FF18;

  return sub_1D9010930(a1);
}

uint64_t sub_1D9015088(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D5FF18;

  return sub_1D9010CF8(a1, v5, v4);
}

uint64_t sub_1D901517C(uint64_t a1)
{
  v4 = *(sub_1D9176EAC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D900E118(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D90152AC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8D5FF18;

  return sub_1D900E6EC(a1, a2, v6);
}

uint64_t sub_1D90153C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D901540C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9015460()
{
  result = qword_1ECAB8D48;
  if (!qword_1ECAB8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D48);
  }

  return result;
}

unint64_t sub_1D90154B8()
{
  result = qword_1ECAB8D50;
  if (!qword_1ECAB8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D50);
  }

  return result;
}

unint64_t sub_1D9015510()
{
  result = qword_1ECAB8D58;
  if (!qword_1ECAB8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D58);
  }

  return result;
}

unint64_t sub_1D9015568()
{
  result = qword_1ECAB8D60;
  if (!qword_1ECAB8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D60);
  }

  return result;
}

unint64_t sub_1D90155C0()
{
  result = qword_1ECAB8D68;
  if (!qword_1ECAB8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D68);
  }

  return result;
}

unint64_t sub_1D9015618()
{
  result = qword_1ECAB8D70;
  if (!qword_1ECAB8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D70);
  }

  return result;
}

unint64_t sub_1D9015670()
{
  result = qword_1ECAB8D78;
  if (!qword_1ECAB8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D78);
  }

  return result;
}

unint64_t sub_1D90156C8()
{
  result = qword_1ECAB8D80;
  if (!qword_1ECAB8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D80);
  }

  return result;
}

unint64_t sub_1D9015720()
{
  result = qword_1ECAB8D88;
  if (!qword_1ECAB8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D88);
  }

  return result;
}

unint64_t sub_1D9015778()
{
  result = qword_1ECAB8D90;
  if (!qword_1ECAB8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D90);
  }

  return result;
}

id FullFeedRequest.__allocating_init(storeID:isSerial:hasSeasons:)(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___MTFullFeedRequest_isSerial] = a2;
  v7[OBJC_IVAR___MTFullFeedRequest_hasSeasons] = a3;
  *&v7[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v7[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v9.receiver = v7;
  v9.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v9, sel_init);
}

id FullFeedResponse.__allocating_init(jsonArray:request:params:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v4);
  type metadata accessor for FullFeedRequest();
  *&v11[OBJC_IVAR___MTFullFeedResponse_fullFeedRequest] = swift_dynamicCastClassUnconditional();
  sub_1D8D85B08(a3, v10);
  v12 = a2;
  v13 = BaseFeedResponse.init(jsonArray:request:params:)(a1, v12, v10);
  sub_1D9001E64();

  sub_1D8D90BEC(a3);
  return v13;
}

id FullFeedRequest.init(storeID:isSerial:hasSeasons:)(uint64_t a1, char a2, char a3)
{
  v3[OBJC_IVAR___MTFullFeedRequest_isSerial] = a2;
  v3[OBJC_IVAR___MTFullFeedRequest_hasSeasons] = a3;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D9015A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v34 = &v25 - v4;
  v35 = sub_1D8D946F4(&unk_1F54612C0);
  sub_1D900B924(&unk_1F54612E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D9189080;
  v36 = *(v1 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  *(v6 + 32) = sub_1D9179A4C();
  *(v6 + 40) = v7;
  v8 = sub_1D9176C2C();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = MEMORY[0x1E69E7CC0];
  v33 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v32 = sub_1D8D94DF8(v10);
  v31 = sub_1D8D951E0(v10);
  v30 = sub_1D8D9503C(v10);
  v29 = sub_1D8D9536C(v10);
  v27 = sub_1D8D953C4(v10);
  v25 = sub_1D8D952D8(v10);
  v28 = sub_1D8D95394(v10);
  v26 = sub_1D8D957C4(v10);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v11 = type metadata accessor for MediaRequest.Params(0);
  v12 = v11[28];
  v9((a1 + v12), 1, 1, v8);
  v13 = (a1 + v11[29]);
  v14 = (a1 + v11[31]);
  v15 = v11[34];
  v16 = (a1 + v11[33]);
  v17 = (a1 + v11[35]);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 65796;
  v18 = v32;
  *(a1 + 48) = v33;
  *(a1 + 56) = v18;
  v19 = v30;
  *(a1 + 64) = v31;
  *(a1 + 72) = v10;
  v20 = v29;
  *(a1 + 80) = v19;
  *(a1 + 88) = v20;
  v21 = v27;
  *(a1 + 96) = v35;
  *(a1 + 104) = v21;
  v22 = v25;
  *(a1 + 112) = v10;
  *(a1 + 120) = v22;
  *(a1 + 128) = v10;
  *(a1 + 136) = v10;
  *(a1 + 144) = v6;
  *(a1 + 152) = 1;
  *(a1 + 160) = 300;
  *(a1 + 168) = 0;
  v23 = v26;
  *(a1 + 176) = v28;
  *(a1 + 184) = v23;
  *(a1 + 192) = 0;
  *(a1 + 200) = 257;
  *(a1 + 202) = 1;
  result = sub_1D8E26828(v34, a1 + v12);
  *v13 = 0;
  v13[1] = 0;
  *(a1 + v11[30]) = 0;
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v11[32]) = v10;
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v15) = 2;
  *v17 = 0;
  v17[1] = 0;
  return result;
}

id sub_1D9015D40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1D8D85B08(a3, &v16 - v9);
  v11 = objc_allocWithZone(type metadata accessor for FullFeedResponse(0));
  type metadata accessor for FullFeedRequest();
  *&v11[OBJC_IVAR___MTFullFeedResponse_fullFeedRequest] = swift_dynamicCastClassUnconditional();
  sub_1D8D85B08(v10, v7);
  v12 = a2;

  v14 = BaseFeedResponse.init(jsonArray:request:params:)(v13, v12, v7);
  sub_1D9001E64();

  sub_1D8D90BEC(v10);
  return v14;
}

id FullFeedResponse.init(jsonArray:request:params:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FullFeedRequest();
  *(v3 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) = swift_dynamicCastClassUnconditional();
  sub_1D8D85B08(a3, v9);
  v10 = a2;
  v11 = BaseFeedResponse.init(jsonArray:request:params:)(a1, v10, v9);
  sub_1D9001E64();

  sub_1D8D90BEC(a3);
  return v11;
}

unint64_t sub_1D9015FFC()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {

    v7 = sub_1D91796FC();

    return v7;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    sub_1D9179C4C();
    if (swift_dynamicCastMetatype() || (v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v6 = (v3 + 32);
      while (*v6)
      {
        ++v6;
        if (!--v5)
        {
          goto LABEL_3;
        }
      }

      return v3 | 1;
    }
  }

  return v2;
}

uint64_t sub_1D901619C(unint64_t a1, unint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) + OBJC_IVAR___MTFullFeedRequest_isSerial);
  v5 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  if (v4 == 1)
  {
    swift_beginAccess();
    sub_1D90016D0(a1);
    v8 = v7;
    swift_unknownObjectRetain();

    result = swift_unknownObjectRelease();
    if ((v8 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v10 = *(v8 + 8 * a2 + 32);
          swift_unknownObjectRetain();
LABEL_6:

          return v10;
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_13:
    v10 = MEMORY[0x1DA72AA90](a2, v8);
    goto LABEL_6;
  }

  result = swift_beginAccess();
  v8 = *v5;
  if ((v8 & 0xC000000000000001) != 0)
  {

    goto LABEL_13;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v10 = *(v8 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D90163A0(unint64_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) + OBJC_IVAR___MTFullFeedRequest_isSerial);
  v3 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  if (v2 != 1)
  {
    swift_beginAccess();
    if (!(*v3 >> 62))
    {
      return *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_9;
  }

  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    v9 = sub_1D917935C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      return v9;
    }

    __break(1u);
LABEL_11:
    v7 = sub_1D917935C();

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v7;
    }

    __break(1u);
    return v9;
  }

  sub_1D90016D0(a1);
  v6 = v5;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  if (v6 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return v7;
}

uint64_t sub_1D9016564()
{
  if (*(*(v0 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) + OBJC_IVAR___MTFullFeedRequest_isSerial) != 1)
  {
    return 1;
  }

  v1 = v0 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

id sub_1D9016658(unint64_t a1)
{
  v1 = sub_1D90167AC(a1);
  v3 = v2;
  v4 = type metadata accessor for GenericDataSourceSection();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v6 = sub_1D8E3B050;
  v6[1] = 0;
  v7 = &v5[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v7 = v1;
  v7[1] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1D90167AC(unint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v3 + 16);
  if (*(v4 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v1 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest);
  if (*(v5 + OBJC_IVAR___MTFullFeedRequest_isSerial) != 1)
  {
    return 0;
  }

  v6 = *(v4 + 8 * a1 + 32);
  if (v6 == -1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_18:
    swift_once();
    return sub_1D917693C();
  }

  if (!v6)
  {
    if (*(v5 + OBJC_IVAR___MTFullFeedRequest_hasSeasons) == 1)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_18;
    }

    return 0;
  }

  if (*(v5 + OBJC_IVAR___MTFullFeedRequest_hasSeasons) != 1)
  {
    return 0;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1D9189080;
  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v6;
  v11 = sub_1D91781DC();

  return v11;
}

id sub_1D9016A78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for FullFeedResponse(uint64_t a1)
{
  result = qword_1ECAB8DB0;
  if (!qword_1ECAB8DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9016BF8()
{
  v1 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D9016C90(uint64_t a1)
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_limit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1D9016DBC()
{
  swift_beginAccess();

  return result;
}

double sub_1D9016E70(uint64_t a1)
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_1D9016EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t sub_1D9016FD8()
{
  v1 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D9017070(char a1)
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D9017120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v38 = &v28 - v5;
  v40 = sub_1D8D946F4(&unk_1F5461370);
  sub_1D900B924(&unk_1F5461390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v41[0] = *(v1 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  *(v7 + 32) = sub_1D9179A4C();
  *(v7 + 40) = v8;
  v9 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  v39 = *(v2 + v9);
  v10 = sub_1D9176C2C();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  v12 = MEMORY[0x1E69E7CC0];
  v37 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8D94DF8(v12);
  v35 = sub_1D8D951E0(v12);
  v34 = sub_1D8D9503C(v12);
  v33 = sub_1D8D9536C(v12);
  v32 = sub_1D8D953C4(v12);
  v30 = sub_1D8D952D8(v12);
  v31 = sub_1D8D95394(v12);
  v29 = sub_1D8D957C4(v12);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v13 = type metadata accessor for MediaRequest.Params(0);
  v14 = v13[28];
  v11((a1 + v14), 1, 1, v10);
  v15 = (a1 + v13[29]);
  v16 = (a1 + v13[31]);
  v17 = v13[34];
  v18 = (a1 + v13[33]);
  v19 = (a1 + v13[35]);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 65796;
  v20 = v36;
  *(a1 + 48) = v37;
  *(a1 + 56) = v20;
  v21 = v34;
  *(a1 + 64) = v35;
  *(a1 + 72) = v12;
  v22 = v33;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  v23 = v32;
  *(a1 + 96) = v40;
  *(a1 + 104) = v23;
  v24 = v30;
  *(a1 + 112) = v12;
  *(a1 + 120) = v24;
  *(a1 + 128) = v12;
  *(a1 + 136) = v12;
  *(a1 + 144) = v7;
  *(a1 + 152) = 1;
  v25 = v38;
  *(a1 + 160) = v39;
  *(a1 + 168) = 0;
  v26 = v29;
  *(a1 + 176) = v31;
  *(a1 + 184) = v26;
  *(a1 + 192) = 0;
  *(a1 + 200) = 257;
  *(a1 + 202) = 0;
  result = sub_1D8E26828(v25, a1 + v14);
  *v15 = 0;
  v15[1] = 0;
  *(a1 + v13[30]) = 0;
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v13[32]) = v12;
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v17) = 2;
  *v19 = 0;
  v19[1] = 0;
  return result;
}

id sub_1D9017428(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1D90189A4(a3, &v14 - v10, type metadata accessor for MediaRequest.Params);
  objc_allocWithZone(type metadata accessor for PartialFeedResponse(0));
  sub_1D90189A4(v11, v8, type metadata accessor for MediaRequest.Params);

  v12 = BaseFeedResponse.init(jsonArray:request:params:)(a1, a2, v8);
  sub_1D9018A0C(v11, type metadata accessor for MediaRequest.Params);
  return v12;
}

id PartialFeedResponse.__allocating_init(jsonArray:request:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v3);
  sub_1D90189A4(a3, v9, type metadata accessor for MediaRequest.Params);
  v11 = BaseFeedResponse.init(jsonArray:request:params:)(a1, a2, v9);
  sub_1D9018A0C(a3, type metadata accessor for MediaRequest.Params);
  return v11;
}

id PartialFeedRequest.__allocating_init(storeID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v3[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PartialFeedRequest.init(storeID:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v1[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v1[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v1[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_1D90177FC()
{
  sub_1D9001E64();
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {

    v7 = sub_1D91796FC();

    return v7;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    sub_1D9179C4C();
    if (swift_dynamicCastMetatype() || (v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v6 = (v3 + 32);
      while (*v6)
      {
        ++v6;
        if (!--v5)
        {
          goto LABEL_3;
        }
      }

      return v3 | 1;
    }
  }

  return v2;
}

uint64_t sub_1D90179A0(unint64_t a1, unint64_t a2)
{
  sub_1D9001E64();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for PartialFeedRequest();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v8 = *(v5 + v6);
  if (*(v8 + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(v8 + 8 * a1 + 32);
  if (v9 == 1)
  {
    v12 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
    swift_beginAccess();
    v2 = *(v2 + v12);
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v11 = *(v2 + 8 * a2 + 32);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_19:

    v11 = MEMORY[0x1DA72AA90](a2, v2);

    return v11;
  }

  if (v9)
  {
    goto LABEL_25;
  }

  v10 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  result = v10[3];
  if (result)
  {
    v11 = v10[3];
LABEL_15:
    swift_unknownObjectRetain();
    return v11;
  }

  v2 = *v10;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v11 = MEMORY[0x1DA72AA90](a2, v2);

    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v11 = *(v2 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    goto LABEL_15;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1D9017BE0(unint64_t a1)
{
  type metadata accessor for PartialFeedRequest();
  v3 = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  v5 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (*(v6 + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v6 + 8 * a1 + 32);
  if (!v7)
  {
    return;
  }

  if (v7 != 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v8 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = 0;
    for (i = 32; ; i += 8)
    {
      v13 = *(v9 + i);

      sub_1D91793EC();
      if (*(v13 + 16) && (v14 = sub_1D8D6550C(v18), (v15 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v13 + 56) + 32 * v14, v19);
        sub_1D8D9A308(v18);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
        if (swift_dynamicCast())
        {
          v16 = MEMORY[0x61746174];

          goto LABEL_13;
        }
      }

      else
      {

        sub_1D8D9A308(v18);
      }

      v16 = 0;
LABEL_13:
      v17 = __CFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (!--v10)
      {

        return;
      }
    }
  }
}

uint64_t sub_1D9017E28()
{
  type metadata accessor for PartialFeedRequest();
  v0 = swift_dynamicCastClassUnconditional();
  v1 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

char *sub_1D9017F18(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))();
  v5 = v4;
  v6 = type metadata accessor for GenericDataSourceSection();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v8 = sub_1D8E3B050;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v9 = v3;
  v9[1] = v5;
  v15.receiver = v7;
  v15.super_class = v6;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = &v10[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  swift_beginAccess();
  *v12 = sub_1D901899C;
  v12[1] = v11;
  v13 = v1;

  return v10;
}

uint64_t sub_1D9018054(uint64_t a1, unint64_t a2)
{
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v7 + 8 * a2 + 32);
  if (v8)
  {
    if (v8 != 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
    result = swift_beginAccess();
    if (*(*(a1 + v9) + 16))
    {

      _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v10);
      v12 = v11;

      if (v12)
      {

        return 1;
      }

      return 0;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1D90182BC(unint64_t a1)
{
  v2 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartialFeedRequest();
  v5 = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  v7 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (*(v8 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v8 + 8 * a1 + 32);
  if (v9)
  {
    if (v9 == 1)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

LABEL_15:
      swift_once();
      return sub_1D917693C();
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1D90179A0(a1, 0);
  type metadata accessor for ServerPodcastEpisode();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  swift_beginAccess();
  LOBYTE(v12) = *(v11 + v12);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EyebrowBuilder(0);
  v13 = swift_allocObject();
  v23 = &type metadata for IntermediateEyebrowBuilderEpisode;
  v24 = &protocol witness table for IntermediateEyebrowBuilderEpisode;
  v21 = v10;
  v22 = v12;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 159) = 0;
  *(v13 + 16) = 0u;
  *(v13 + 144) = 0u;
  sub_1D8CFD9D8(&v21, v13 + 168);
  sub_1D90189A4(v4, v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
  *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 0;
  swift_beginAccess();
  *(v13 + 152) = 0;
  *(v13 + 144) = 0;
  *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = 1;
  *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = 0;
  *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = 0;
  v14 = v10;
  sub_1D8D2EF54();
  v15 = sub_1D8D3C1DC();
  v17 = v16;
  sub_1D9018A0C(v4, type metadata accessor for EyebrowBuilder.ListContext);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  swift_beginAccess();
  *(v13 + 16) = v15;
  *(v13 + 24) = v17;

  if (v17)
  {

    swift_setDeallocating();
    EyebrowBuilder.deinit();
    swift_deallocClassInstance();
    return v15;
  }

  else
  {
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917693C();

    swift_setDeallocating();
    EyebrowBuilder.deinit();
    swift_deallocClassInstance();
    return v19;
  }
}

unint64_t sub_1D9018718(unint64_t a1, double a2)
{
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v6 = *(v4 + v5);
  if (*(v6 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = *(v6 + 8 * a1 + 32);
  if (result > 1)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t PartialFeedResponse.SectionType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1D90187E4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id PartialFeedResponse.init(jsonArray:request:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90189A4(a3, v8, type metadata accessor for MediaRequest.Params);
  v9 = BaseFeedResponse.init(jsonArray:request:params:)(a1, a2, v8);
  sub_1D9018A0C(a3, type metadata accessor for MediaRequest.Params);
  return v9;
}

id sub_1D90188F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PartialFeedResponse(uint64_t a1)
{
  result = qword_1ECAB8DF0;
  if (!qword_1ECAB8DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D90189A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9018A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9018A70()
{
  result = qword_1ECAB8DD8;
  if (!qword_1ECAB8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8DD8);
  }

  return result;
}

unint64_t sub_1D9018AC8()
{
  result = qword_1ECAB8DE0;
  if (!qword_1ECAB8DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8DE8, &qword_1D91A7530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8DE0);
  }

  return result;
}

double sub_1D9018E90()
{
  swift_beginAccess();

  return result;
}

double sub_1D9018F44(uint64_t a1)
{
  v3 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_1D9018F9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

id SeasonFeedRequest.__allocating_init(storeID:seasons:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MTSeasonFeedRequest_seasons] = a2;
  *&v5[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v5[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v5[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v5[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v5[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v7, sel_init);
}

id SeasonFeedRequest.init(storeID:seasons:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___MTSeasonFeedRequest_seasons] = a2;
  *&v2[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v2[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v2[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v2[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D901927C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v44 = sub_1D8E27040(&unk_1F5461318);
  sub_1D8D08A50(&unk_1F5461338, &qword_1ECAB8E08, &qword_1D91A7608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E10, &unk_1D91A7610);
  inited = swift_initStackObject();
  v45 = xmmword_1D9189080;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0;
  v8 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  *(inited + 40) = *(v2 + v8);
  v9 = sub_1D8E271B8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v10 = swift_allocObject();
  *(v10 + 16) = v45;
  v47 = *(v2 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  *(v10 + 32) = sub_1D9179A4C();
  *(v10 + 40) = v11;
  v42 = v10;
  sub_1D9019874();
  v43 = v9;
  if (v12)
  {
    *&v45 = sub_1D8E272A4(MEMORY[0x1E69E7CC0]);
LABEL_5:
    v19 = sub_1D9176C2C();
    v20 = *(*(v19 - 8) + 56);
    v20(v6, 1, 1, v19);
    v21 = MEMORY[0x1E69E7CC0];
    v40 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v39 = sub_1D8D9503C(v21);
    v38 = sub_1D8D9536C(v21);
    v37 = sub_1D8D9536C(v21);
    v36 = sub_1D8D953C4(v21);
    v22 = sub_1D8D952D8(v21);
    v41 = v6;
    v23 = v22;
    v35 = sub_1D8D957C4(v21);
    *(a1 + 41) = 263;
    *(a1 + 43) = 5;
    *(a1 + 152) = 1;
    *(a1 + 201) = 1;
    v24 = type metadata accessor for MediaRequest.Params(0);
    v25 = v24[28];
    v20((a1 + v25), 1, 1, v19);
    v26 = (a1 + v24[29]);
    v27 = (a1 + v24[31]);
    v28 = v24[34];
    v29 = (a1 + v24[33]);
    v30 = (a1 + v24[35]);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = 33620228;
    v31 = v40;
    *(a1 + 48) = v44;
    *(a1 + 56) = v31;
    *(a1 + 64) = v43;
    *(a1 + 72) = v21;
    v32 = v38;
    *(a1 + 80) = v39;
    *(a1 + 88) = v32;
    v33 = v36;
    *(a1 + 96) = v37;
    *(a1 + 104) = v33;
    *(a1 + 112) = v21;
    *(a1 + 120) = v23;
    *(a1 + 128) = v21;
    *(a1 + 136) = v21;
    *(a1 + 144) = v42;
    *(a1 + 152) = 1;
    *(a1 + 160) = 0;
    *(a1 + 168) = 1;
    v34 = v35;
    *(a1 + 176) = v45;
    *(a1 + 184) = v34;
    *(a1 + 192) = 0;
    *(a1 + 200) = 257;
    *(a1 + 202) = 0;
    result = sub_1D8E26828(v41, a1 + v25);
    *v26 = 0;
    v26[1] = 0;
    *(a1 + v24[30]) = 0;
    *v27 = 0;
    v27[1] = 0;
    *(a1 + v24[32]) = v21;
    *v29 = 0;
    v29[1] = 0;
    *(a1 + v28) = 2;
    *v30 = 0;
    v30[1] = 0;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
  v13 = swift_initStackObject();
  *(v13 + 16) = v45;
  *(v13 + 32) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = v45;
  v47 = 0;
  v48 = 0xE000000000000000;
  result = sub_1D9019874();
  if ((v16 & 1) == 0)
  {
    v46 = result;
    v17 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v17);

    v18 = v48;
    *(v14 + 32) = v47;
    *(v14 + 40) = v18;
    *(v13 + 40) = v14;
    *&v45 = sub_1D8E272A4(v13);
    swift_setDeallocating();
    sub_1D8D08A50(v13 + 32, &qword_1ECAB8D18, &qword_1D91A6E18);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1D9019718(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90189A4(a3, v8, type metadata accessor for MediaRequest.Params);
  objc_allocWithZone(type metadata accessor for SeasonFeedResponse(0));

  return SeasonFeedResponse.init(jsonArray:request:params:)(a1, a2, v8);
}

uint64_t sub_1D901982C()
{
  v1 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

int64_t sub_1D9019874()
{
  v1 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = *(v2 + 32);
  v5 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

  if (v3 > 4)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v7 = vdupq_n_s64(result);
    v8 = (v2 + 56);
    v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = v7;
    do
    {
      v7 = vbslq_s8(vcgtq_s64(v7, v8[-1]), v7, v8[-1]);
      v10 = vbslq_s8(vcgtq_s64(v10, *v8), v10, *v8);
      v8 += 2;
      v9 -= 4;
    }

    while (v9);
    v11 = vbslq_s8(vcgtq_s64(v7, v10), v7, v10);
    v12 = vextq_s8(v11, v11, 8uLL).u64[0];
    result = vbsl_s8(vcgtd_s64(v11.i64[0], v12), *v11.i8, v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }
  }

  else
  {
    v6 = 1;
  }

  v13 = v3 - v6;
  v14 = (v2 + 8 * v6 + 32);
  do
  {
    v16 = *v14++;
    v15 = v16;
    if (result <= v16)
    {
      result = v15;
    }

    --v13;
  }

  while (v13);
  return result;
}

_BYTE *SeasonFeedResponse.init(jsonArray:request:params:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  *(v3 + OBJC_IVAR___MTSeasonFeedResponse_seasonHasMoreEpisodes) = 0;
  sub_1D90189A4(a3, v39 - v11, type metadata accessor for MediaRequest.Params);
  sub_1D90189A4(v12, v9, type metadata accessor for MediaRequest.Params);
  v13 = a2;
  v14 = BaseFeedResponse.init(jsonArray:request:params:)(a1, v13, v9);
  sub_1D9018A0C(v12, type metadata accessor for MediaRequest.Params);
  v15 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  v16 = *&v14[v15];
  if (!*(v16 + 16))
  {
    goto LABEL_15;
  }

  v17 = *(v16 + 32);
  v39[0] = 1635017060;
  v39[1] = 0xE400000000000000;

  sub_1D91793EC();
  if (!*(v17 + 16) || (v18 = sub_1D8D6550C(v40), (v19 & 1) == 0))
  {

    sub_1D8D9A308(v40);
    goto LABEL_17;
  }

  sub_1D8CFAD1C(*(v17 + 56) + 32 * v18, v41);
  sub_1D8D9A308(v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  if (swift_dynamicCast())
  {
    if (*(v39[0] + 16))
    {
      v20 = *(v39[0] + 32);

      strcpy(v39, "attributes");
      BYTE3(v39[1]) = 0;
      HIDWORD(v39[1]) = -369098752;
      sub_1D91793EC();
      if (*(v20 + 16))
      {
        v21 = sub_1D8D6550C(v40);
        if (v22)
        {
          sub_1D8CFAD1C(*(v20 + 56) + 32 * v21, v41);
          sub_1D8D9A308(v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v23 = v39[0];
          strcpy(v39, "episodeCount");
          BYTE5(v39[1]) = 0;
          HIWORD(v39[1]) = -5120;
          sub_1D91793EC();
          if (*(v23 + 16))
          {
            v24 = sub_1D8D6550C(v40);
            if (v25)
            {
              sub_1D8CFAD1C(*(v23 + 56) + 32 * v24, v41);
              sub_1D8D9A308(v40);

              if (swift_dynamicCast())
              {
                v26 = v39[0];
                v27 = *(a3 + 64);
                if (*(v27 + 16))
                {
                  v28 = sub_1D8F06C58(0);
                  v29 = v26;
                  if (v30)
                  {
                    v29 = *(*(v27 + 56) + 8 * v28);
                  }
                }

                else
                {
                  v29 = v39[0];
                }

                v14[OBJC_IVAR___MTSeasonFeedResponse_seasonHasMoreEpisodes] = v29 < v26;
              }

LABEL_21:
              strcpy(v39, "relationships");
              HIWORD(v39[1]) = -4864;
              sub_1D91793EC();
              if (*(v20 + 16))
              {
                v32 = sub_1D8D6550C(v40);
                if (v33)
                {
                  sub_1D8CFAD1C(*(v20 + 56) + 32 * v32, v41);
                  sub_1D8D9A308(v40);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v34 = v39[0];
                  strcpy(v39, "episodes");
                  BYTE1(v39[1]) = 0;
                  WORD1(v39[1]) = 0;
                  HIDWORD(v39[1]) = -402653184;
                  sub_1D91793EC();
                  if (*(v34 + 16))
                  {
                    v35 = sub_1D8D6550C(v40);
                    if (v36)
                    {
                      sub_1D8CFAD1C(*(v34 + 56) + 32 * v35, v41);
                      sub_1D8D9A308(v40);

                      if (swift_dynamicCast())
                      {
                        v37 = v39[0];
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4630, &unk_1D9192070);
                        v38 = swift_allocObject();
                        *(v38 + 16) = xmmword_1D9189080;
                        *(v38 + 32) = v37;

                        *&v14[v15] = v38;

                        goto LABEL_17;
                      }

LABEL_29:

                      *&v14[v15] = MEMORY[0x1E69E7CC0];

                      goto LABEL_17;
                    }
                  }
                }
              }

              sub_1D8D9A308(v40);
              goto LABEL_29;
            }
          }
        }
      }

      sub_1D8D9A308(v40);
      goto LABEL_21;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_17:
  sub_1D9018A0C(a3, type metadata accessor for MediaRequest.Params);
  return v14;
}

char *sub_1D9019F88(unint64_t a1)
{
  v3 = sub_1D901A2D4(a1);
  v5 = v4;
  v6 = type metadata accessor for GenericDataSourceSection();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v8 = sub_1D8E3B050;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v9 = v3;
  v9[1] = v5;
  v15.receiver = v7;
  v15.super_class = v6;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = &v10[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  swift_beginAccess();
  *v12 = sub_1D901A82C;
  v12[1] = v11;
  v13 = v1;

  return v10;
}

uint64_t sub_1D901A08C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 8 * a2 + 32);
  if (!v8)
  {
    return 0;
  }

  if (v8 != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + OBJC_IVAR___MTSeasonFeedResponse_seasonHasMoreEpisodes))
  {
    return 1;
  }

  type metadata accessor for SeasonFeedRequest();
  v9 = swift_dynamicCastClassUnconditional();
  v10 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  return *(*(v9 + v10) + 16) > 1uLL;
}

uint64_t sub_1D901A2D4(unint64_t a1)
{
  v3 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  v7 = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (*(v10 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 8 * a1 + 32);
  if (!v11)
  {
    sub_1D90179A0(a1, 0);
    type metadata accessor for ServerPodcastEpisode();
    v12 = swift_dynamicCastClassUnconditional();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EyebrowBuilder(0);
    v13 = swift_allocObject();
    v29 = &type metadata for IntermediateEyebrowBuilderEpisode;
    v30 = &protocol witness table for IntermediateEyebrowBuilderEpisode;
    v27 = v12;
    v28 = 1;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 159) = 0;
    *(v13 + 16) = 0u;
    *(v13 + 144) = 0u;
    sub_1D8CFD9D8(&v27, v13 + 168);
    sub_1D90189A4(v5, v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
    *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 0;
    swift_beginAccess();
    *(v13 + 152) = 0;
    *(v13 + 144) = 0;
    *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = 1;
    *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = 0;
    *(v13 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = 0;
    a1 = v12;
    sub_1D8D2EF54();
    v14 = sub_1D8D3C1DC();
    v16 = v15;
    sub_1D9018A0C(v5, type metadata accessor for EyebrowBuilder.ListContext);
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    swift_beginAccess();
    *(v13 + 16) = v14;
    *(v13 + 24) = v16;

    if (v16)
    {
LABEL_7:

      swift_setDeallocating();
      EyebrowBuilder.deinit();
      swift_deallocClassInstance();
      return v14;
    }

    if (qword_1EDCD5F00 == -1)
    {
LABEL_6:
      v14 = sub_1D917693C();
      goto LABEL_7;
    }

LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (v11 != 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for SeasonFeedRequest();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v17 = sub_1D9019874();
  if (v18)
  {
    return 0;
  }

  v19 = v17;
  v20 = qword_1EDCD5F00;
  v21 = v6;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E6530];
  *(v22 + 16) = xmmword_1D9189080;
  v24 = MEMORY[0x1E69E65A8];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  *(v22 + 32) = v19;
  v14 = sub_1D91781DC();

  return v14;
}

id sub_1D901A780(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for SeasonFeedResponse(uint64_t a1)
{
  result = qword_1ECAB8E20;
  if (!qword_1ECAB8E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RecommendationModuleContentRequest.__allocating_init(moduleID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RecommendationModuleContentRequest.init(moduleID:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RecommendationModuleContentRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D901AB44(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v49 = a1;
  v4 = sub_1D917744C();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176AAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecommendationModulesCache(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v50, "ListenNowCache");
  v50[15] = -18;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968F58], v6);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v19 = &v17[*(v15 + 28)];
  *v19 = 0x4D73656C75646F4DLL;
  *(v19 + 1) = 0xEF61746164617465;
  v20 = &v17[*(v15 + 32)];
  strcpy(v20, "ModuleContent-");
  v20[15] = -18;
  v21 = &v3[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v22 = *&v3[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v23 = *&v3[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID + 8];

  v24 = RecommendationModulesCache.moduleContent(moduleID:)(v22, v23);

  sub_1D901B7D8(v17, v25);
  v26 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v27 = *&v24[OBJC_IVAR___MTRecommendationModule_attributes];
    if (v27)
    {
      v28 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
      swift_beginAccess();
      v29 = *(v27 + v28);
      if (v29)
      {
        if (*(v29 + 16))
        {
          v30 = *(v29 + 32);
          v31 = v45;
          if (v30 <= 1)
          {
            if (v30)
            {
              v32 = &OBJC_IVAR___MTRecommendationModule_shows;
LABEL_11:
              v33 = *v32;
              swift_beginAccess();
              if (*&v24[v33])
              {
                v34 = *&v24[v33];
              }

              else
              {
                v34 = v26;
              }

              if (v34 >> 62)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
                v26 = sub_1D91796FC();
              }

              else
              {
                sub_1D9179C4C();

                v26 = v34;
              }

              goto LABEL_17;
            }

LABEL_10:
            v32 = &OBJC_IVAR___MTRecommendationModule_episodes;
            goto LABEL_11;
          }

          if (v30 == 6)
          {
            goto LABEL_10;
          }
        }
      }
    }

    while (1)
    {
      sub_1D91796DC();
      __break(1u);
    }
  }

  v31 = v45;
LABEL_17:
  sub_1D917742C();
  v35 = v3;
  v36 = sub_1D917741C();
  v37 = sub_1D9178D1C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    *v38 = 136315138;
    v40 = *v21;
    v41 = v21[1];

    v42 = sub_1D8CFA924(v40, v41, &v51);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1D8CEC000, v36, v37, "Displaying items from Listen Now module with ID %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1DA72CB90](v39, -1, -1);
    MEMORY[0x1DA72CB90](v38, -1, -1);
  }

  (*(v46 + 8))(v31, v47);
  v43 = v49;
  type metadata accessor for RecommendationModuleContentResponse();
  *(swift_allocObject() + 16) = v26;
  v43();
}

uint64_t RecommendationModuleContentResponse.__allocating_init(serverObjects:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id RecommendationModuleContentRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecommendationModuleContentRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationModuleContentRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D901B348()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {

    v6 = sub_1D91796FC();

    return v6;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    sub_1D9179C4C();
    if (swift_dynamicCastMetatype() || (v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v5 = (v2 + 32);
      while (*v5)
      {
        ++v5;
        if (!--v4)
        {
          goto LABEL_3;
        }
      }

      return v2 | 1;
    }

    return v1;
  }
}

void sub_1D901B498(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1DA72AA90](a2, v3);

    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
}

uint64_t sub_1D901B5D0()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1D917935C();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id sub_1D901B668()
{
  v0 = type metadata accessor for GenericDataSourceSection();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v2 = sub_1D8E3B050;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t RecommendationModuleContentResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D901B7D8(uint64_t a1, double a2)
{
  v3 = type metadata accessor for RecommendationModulesCache(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D901B998(char *a1, const void *a2)
{
  v49 = a2;
  v3 = sub_1D917744C();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9176AAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecommendationModulesCache(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v50, "ListenNowCache");
  v50[15] = -18;
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F58], v5);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v18 = &v16[*(v14 + 28)];
  *v18 = 0x4D73656C75646F4DLL;
  *(v18 + 1) = 0xEF61746164617465;
  v19 = &v16[*(v14 + 32)];
  strcpy(v19, "ModuleContent-");
  v19[15] = -18;
  v20 = &a1[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v21 = *&a1[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v22 = *&a1[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID + 8];

  v23 = RecommendationModulesCache.moduleContent(moduleID:)(v21, v22);

  sub_1D901B7D8(v16, v24);
  v25 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v26 = *&v23[OBJC_IVAR___MTRecommendationModule_attributes];
    if (v26)
    {
      v27 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
      swift_beginAccess();
      v28 = *(v26 + v27);
      if (v28)
      {
        if (*(v28 + 16))
        {
          v29 = *(v28 + 32);
          v30 = v46;
          if (v29 <= 1)
          {
            if (v29)
            {
              v31 = &OBJC_IVAR___MTRecommendationModule_shows;
LABEL_11:
              v32 = *v31;
              swift_beginAccess();
              if (*&v23[v32])
              {
                v33 = *&v23[v32];
              }

              else
              {
                v33 = v25;
              }

              if (v33 >> 62)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
                v25 = sub_1D91796FC();
              }

              else
              {
                sub_1D9179C4C();

                v25 = v33;
              }

              goto LABEL_17;
            }

LABEL_10:
            v31 = &OBJC_IVAR___MTRecommendationModule_episodes;
            goto LABEL_11;
          }

          if (v29 == 6)
          {
            goto LABEL_10;
          }
        }
      }
    }

    while (1)
    {
      _Block_release(v49);
      sub_1D91796DC();
      __break(1u);
    }
  }

  v30 = v46;
LABEL_17:
  sub_1D917742C();
  v34 = a1;
  v35 = sub_1D917741C();
  v36 = sub_1D9178D1C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315138;
    v39 = *v20;
    v40 = v20[1];

    v41 = sub_1D8CFA924(v39, v40, &v51);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1D8CEC000, v35, v36, "Displaying items from Listen Now module with ID %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v37, -1, -1);
  }

  (*(v47 + 8))(v30, v48);
  v42 = v49;
  type metadata accessor for RecommendationModuleContentResponse();
  v43 = swift_allocObject();
  *(v43 + 16) = v25;
  v42[2](v42, v43, 0);
}

uint64_t sub_1D901C01C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;

      a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x1DA729B90](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

char *sub_1D901C138(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5++;
    v17 = v8;
    a1(&v15, &v17, a2);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D8D4241C(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1D8D4241C((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t RecommendationModulesCache.moduleContent(moduleID:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D917744C();
  v21[3] = *(v5 - 8);
  v21[4] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21[2] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D917656C();
  swift_allocObject();
  v21[5] = sub_1D917655C();
  v15 = (v2 + *(type metadata accessor for RecommendationModulesCache(0) + 24));
  v16 = v15[1];
  v21[11] = *v15;
  v21[12] = v16;

  v21[0] = a1;
  v21[1] = a2;
  MEMORY[0x1DA7298F0](a1, a2);
  (*(v8 + 104))(v10, *MEMORY[0x1E6968F70], v7);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v8 + 8))(v10, v7);

  v17 = sub_1D9176C3C();
  v19 = v18;
  type metadata accessor for RecommendationModule();
  (*(v12 + 8))(v14, v11);
  sub_1D901F4E4(&qword_1ECAB8E50, type metadata accessor for RecommendationModule, &protocol conformance descriptor for RecommendationModule);
  sub_1D917654C();
  sub_1D8D7567C(v17, v19);

  return v21[13];
}

uint64_t type metadata accessor for RecommendationModulesCache(uint64_t a1)
{
  result = qword_1ECAB8E78;
  if (!qword_1ECAB8E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D901C79C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  __swift_allocate_value_buffer(v0, qword_1ECAB8E38);
  v1 = __swift_project_value_buffer(v0, qword_1ECAB8E38);
  v2 = sub_1D9176E3C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static RecommendationModulesCache.dateLastCached.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB8E38);
  swift_beginAccess();
  return sub_1D8CF6B1C(v3, a1);
}

uint64_t sub_1D901C8D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB8E38);
  swift_beginAccess();
  return sub_1D8CF6B1C(v3, a1);
}

uint64_t sub_1D901C96C(uint64_t a1)
{
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB8E38);
  swift_beginAccess();
  sub_1D901F474(a1, v3);
  return swift_endAccess();
}

Swift::Void __swiftcall RecommendationModulesCache.writeToCache(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v71 - v5;
  v95 = sub_1D9176AAC();
  v78 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D9176C2C();
  v79 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v76 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = v71 - v10;
  v98 = sub_1D917744C();
  v11 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v71 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v92 = v71 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v71 - v21;
  if (*(with._rawValue + 2))
  {
    v74 = v20;
    v75 = v19;
    v73 = v6;
    sub_1D901DA60();
    v23 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(with._rawValue);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v23);
    v71[-2] = v2;
    v25 = sub_1D901C01C(sub_1D901F318, &v71[-4], v24);

    sub_1D91765CC();
    swift_allocObject();
    v97 = sub_1D91765BC();
    if (v25 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
    {
      v72 = v4;
      v77 = v11;
      if (!i)
      {
        break;
      }

      v71[1] = v14;
      v28 = 0;
      v91 = v25 & 0xC000000000000001;
      v90 = v25 & 0xFFFFFFFFFFFFFF8;
      v85 = *MEMORY[0x1E6968F70];
      v84 = (v78 + 104);
      v83 = (v78 + 8);
      v86 = (v79 + 8);
      v88 = "6@?<B@?@MTEpisode>24";
      v89 = (v77 + 8);
      *&v26 = 136315138;
      v80 = v26;
      v82 = v2;
      v87 = v25;
      v81 = i;
      while (1)
      {
        if (v91)
        {
          v31 = MEMORY[0x1DA72AA90](v28, v25);
        }

        else
        {
          if (v28 >= *(v90 + 16))
          {
            goto LABEL_26;
          }

          v31 = *(v25 + 8 * v28 + 32);
        }

        v14 = v31;
        v4 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v102 = v31;
        type metadata accessor for RecommendationModule();
        sub_1D901F4E4(&qword_1ECAB8E58, type metadata accessor for RecommendationModule, &protocol conformance descriptor for RecommendationModule);
        v32 = sub_1D91765AC();
        v34 = v33;
        v99 = v28 + 1;
        v100 = v28;
        v35 = &v2[*(type metadata accessor for RecommendationModulesCache(0) + 24)];
        v37 = *v35;
        v36 = v35[1];
        v38 = &v14[OBJC_IVAR___MTRecommendationModule_id];
        swift_beginAccess();
        v101 = v14;
        v14 = v2;
        v40 = *v38;
        v39 = v38[1];
        v102 = v37;
        v103 = v36;

        MEMORY[0x1DA7298F0](v40, v39);
        v41 = v94;
        v42 = v95;
        (*v84)(v94, v85, v95);
        sub_1D8D447DC();
        v43 = v93;
        sub_1D9176C0C();
        (*v83)(v41, v42);

        sub_1D9176CAC();
        (*v86)(v43, v96);
        sub_1D8D7567C(v32, v34);
        v44 = v92;
        sub_1D917742C();
        v45 = v101;
        v46 = sub_1D917741C();
        v11 = sub_1D9178D1C();

        if (os_log_type_enabled(v46, v11))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v102 = v48;
          *v47 = v80;
          v50 = *v38;
          v49 = v38[1];

          v51 = sub_1D8CFA924(v50, v49, &v102);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_1D8CEC000, v46, v11, "Cached module content for id %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          MEMORY[0x1DA72CB90](v48, -1, -1);
          MEMORY[0x1DA72CB90](v47, -1, -1);
        }

        (*v89)(v44, v98);
        v2 = v82;
        v25 = v87;
        v29 = v81;
        v30 = OBJC_IVAR___MTRecommendationModule_shows;
        swift_beginAccess();
        *&v45[v30] = 0;

        v4 = OBJC_IVAR___MTRecommendationModule_episodes;
        swift_beginAccess();
        *&v45[v4] = 0;

        v28 = v100 + 1;
        if (v99 == v29)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_20:
    v102 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E60, &qword_1D91A7768);
    sub_1D901F334(&qword_1ECAB8E68, &qword_1ECAB8E58, &protocol conformance descriptor for RecommendationModule, MEMORY[0x1E69E6300]);
    v55 = sub_1D91765AC();
    v57 = v56;

    v58 = &v2[*(type metadata accessor for RecommendationModulesCache(0) + 20)];
    v59 = v58[1];
    v102 = *v58;
    v103 = v59;
    v60 = v78;
    v61 = v94;
    v62 = v95;
    (*(v78 + 104))(v94, *MEMORY[0x1E6968F70], v95);
    sub_1D8D447DC();

    v63 = v76;
    sub_1D9176C0C();
    (*(v60 + 8))(v61, v62);

    sub_1D9176CAC();
    v64 = v77;
    (*(v79 + 8))(v63, v96);
    sub_1D8D7567C(v55, v57);
    sub_1D917742C();
    v65 = sub_1D917741C();
    v66 = sub_1D9178D1C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1D8CEC000, v65, v66, "Write to Listen Now cache succeeded", v67, 2u);
      MEMORY[0x1DA72CB90](v67, -1, -1);
    }

    (*(v64 + 8))(v74, v98);
    if (qword_1ECAB36C0 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v72, qword_1ECAB8E38);
    v69 = v73;
    sub_1D9176E2C();
    v70 = sub_1D9176E3C();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    swift_beginAccess();
    sub_1D8CF6C70(v69, v68);
    swift_endAccess();
  }

  else
  {
    sub_1D917742C();
    v52 = sub_1D917741C();
    v53 = sub_1D9178D1C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1D8CEC000, v52, v53, "Write to Listen Now cache failed because the json is empty", v54, 2u);
      MEMORY[0x1DA72CB90](v54, -1, -1);
    }

    (*(v11 + 8))(v22, v98);
  }
}

void sub_1D901DA60()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D917744C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  sub_1D9176BCC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v7 = [v5 fileExistsAtPath_];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 defaultManager];
    v9 = sub_1D9176B1C();
    v24[0] = 0;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v24];

    v11 = v24[0];
    if (v10)
    {

      v12 = v11;
    }

    else
    {
      v23 = v24[0];
      v13 = v24[0];
      v14 = sub_1D9176A6C();

      swift_willThrow();
      sub_1D917742C();
      v15 = v14;
      v16 = sub_1D917741C();
      v17 = sub_1D9178CFC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_1D9179D2C();
        v22 = sub_1D8CFA924(v20, v21, v24);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "Failed to create Listen Now Cache directory with error: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v3, v0);
    }
  }
}

uint64_t RecommendationModulesCache.modulesMetadata.getter()
{
  v1 = sub_1D917744C();
  v17[2] = *(v1 - 8);
  v17[3] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v17[1] = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9176AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  v11 = (v0 + *(type metadata accessor for RecommendationModulesCache(0) + 20));
  v12 = v11[1];
  v17[9] = *v11;
  v17[10] = v12;
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
  sub_1D8D447DC();

  sub_1D9176C0C();
  (*(v4 + 8))(v6, v3);

  v13 = sub_1D9176C3C();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E60, &qword_1D91A7768);
  (*(v8 + 8))(v10, v7);
  sub_1D901F334(&qword_1ECAB8E70, &qword_1ECAB8E50, &protocol conformance descriptor for RecommendationModule, MEMORY[0x1E69E6330]);
  sub_1D917654C();
  sub_1D8D7567C(v13, v15);

  return v17[11];
}

void sub_1D901E250(unint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_1D917802C();
  *&v55[0] = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:v55];

  v13 = *&v55[0];
  if (!v12)
  {
    v28 = v13;
    v29 = sub_1D9176A6C();

    swift_willThrow();
LABEL_12:
    v31 = 0;
LABEL_13:
    *a3 = v31;
    return;
  }

  v50 = v7;
  v49 = a2;
  v14 = sub_1D9176C8C();
  v16 = v15;

  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  type metadata accessor for RecommendationModule();
  sub_1D901F4E4(&qword_1ECAB8E50, type metadata accessor for RecommendationModule, &protocol conformance descriptor for RecommendationModule);
  v51 = v14;
  sub_1D917654C();
  if (v3)
  {

    sub_1D917742C();
    v17 = v3;
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = a3;
      v22 = v21;
      *&v55[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = sub_1D9179D2C();
      v25 = sub_1D8CFA924(v23, v24, v55);
      v49 = v16;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Could not decode RecommendationModules from JSON with error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v27 = v22;
      a3 = v48;
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      sub_1D8D7567C(v51, v49);
    }

    else
    {
      sub_1D8D7567C(v51, v16);
    }

    (*(v50 + 8))(v9, v6);
    goto LABEL_12;
  }

  v30 = v16;

  v31 = *&v55[0];
  v32 = *(*&v55[0] + OBJC_IVAR___MTRecommendationModule_attributes);
  if (v32 && (v33 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes, swift_beginAccess(), *(v32 + v33)))
  {

    v35 = *(v34 + 16);
    if (!v35)
    {
LABEL_9:

LABEL_18:
      sub_1D8D7567C(v51, v30);
LABEL_19:

      v31 = 0;
      goto LABEL_13;
    }
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
    v35 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v35)
    {
      goto LABEL_9;
    }
  }

  v36 = *(v34 + 32);

  if (v35 != 1)
  {
    goto LABEL_18;
  }

  v48 = a3;
  v37 = sub_1D917802C();
  v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v39 = [v37 valueForKeyPath_];

  if (v39)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55[0] = v53;
  v55[1] = v54;
  if (*(&v54 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
    if (swift_dynamicCast())
    {
      v40 = v52;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D8D64450(v55);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4630, &unk_1D9192070);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D9189080;
  *(v40 + 32) = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
LABEL_26:
  if (!v36)
  {
    v41 = sub_1D901EE60(v40);

    v42 = OBJC_IVAR___MTRecommendationModule_episodes;
    goto LABEL_30;
  }

  if (v36 == 1)
  {
    v41 = sub_1D901E9A8(v40);

    v42 = OBJC_IVAR___MTRecommendationModule_shows;
LABEL_30:
    swift_beginAccess();
    *&v31[v42] = v41;

    v43 = OBJC_IVAR___MTRecommendationModule_shows;
    swift_beginAccess();
    v44 = *&v31[v43];
    if (v44)
    {
      if (v44 >> 62)
      {
        if (sub_1D917935C())
        {
          goto LABEL_33;
        }
      }

      else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_33:
        sub_1D8D7567C(v51, v30);
        goto LABEL_41;
      }
    }

    v45 = OBJC_IVAR___MTRecommendationModule_episodes;
    swift_beginAccess();
    v46 = *&v31[v45];
    if (v46)
    {
      a3 = v48;
      if (v46 >> 62)
      {
        v47 = sub_1D917935C();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D8D7567C(v51, v30);
      if (v47)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    sub_1D8D7567C(v51, v30);

    v31 = 0;
LABEL_41:
    a3 = v48;
    goto LABEL_13;
  }

  sub_1D91796DC();
  __break(1u);
}

unint64_t sub_1D901E9A8(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D917744C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v29[0] = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v9 = a1 + 32;
  if (v8)
  {
    do
    {
      while (1)
      {
        if (v6 >= v8)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v10 = sub_1D917935C();
LABEL_5:
          *(v7 + 4) = v10;

          *(v7 + 12) = 2080;
          v28 = type metadata accessor for ServerPodcast();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E88, &qword_1D91A77C8);
          v11 = sub_1D917826C();
          v13 = sub_1D8CFA924(v11, v12, v29);

          *(v7 + 14) = v13;
          _os_log_impl(&dword_1D8CEC000, v1, v6, "Parsed %ld %s(s)", v7, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v2);
          MEMORY[0x1DA72CB90](v2, -1, -1);
          MEMORY[0x1DA72CB90](v7, -1, -1);

          goto LABEL_17;
        }

        v2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }

        v15 = objc_opt_self();

        v16 = sub_1D917802C();
        v28 = 0;
        v17 = [v15 dataWithJSONObject:v16 options:0 error:&v28];

        v18 = v28;
        if (v17)
        {
          break;
        }

        v14 = v18;
        v1 = sub_1D9176A6C();

        swift_willThrow();

        v7 = 0;
        v6 = (v6 + 1);
LABEL_7:
        if (v8 == v6)
        {
          goto LABEL_2;
        }
      }

      v19 = sub_1D9176C8C();
      v21 = v20;

      sub_1D917656C();
      swift_allocObject();
      v1 = sub_1D917655C();
      type metadata accessor for ServerPodcast();
      sub_1D901F4E4(&qword_1ECAB26C0, type metadata accessor for ServerPodcast, &protocol conformance descriptor for ServerPodcastBase);
      sub_1D917654C();

      sub_1D8D7567C(v19, v21);

      v6 = (v6 + 1);
      if (!v28)
      {
        goto LABEL_7;
      }

      v1 = v29;
      MEMORY[0x1DA729B90](v22);
      if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      v27 = v29[0];
      v6 = v2;
    }

    while (v8 != v2);
  }

LABEL_2:
  v8 = v24;
  sub_1D917742C();
  v9 = v27;

  v1 = sub_1D917741C();
  LOBYTE(v6) = sub_1D9178D1C();
  if (os_log_type_enabled(v1, v6))
  {
    v7 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v29[0] = v2;
    *v7 = 134218242;
    if (v9 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_17:
  (*(v25 + 8))(v8, v26);
  return v9;
}

unint64_t sub_1D901EE60(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D917744C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v29[0] = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v9 = a1 + 32;
  if (v8)
  {
    do
    {
      while (1)
      {
        if (v6 >= v8)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v10 = sub_1D917935C();
LABEL_5:
          *(v7 + 4) = v10;

          *(v7 + 12) = 2080;
          v28 = type metadata accessor for ServerPodcastEpisode();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E90, &qword_1D91A77D0);
          v11 = sub_1D917826C();
          v13 = sub_1D8CFA924(v11, v12, v29);

          *(v7 + 14) = v13;
          _os_log_impl(&dword_1D8CEC000, v1, v6, "Parsed %ld %s(s)", v7, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v2);
          MEMORY[0x1DA72CB90](v2, -1, -1);
          MEMORY[0x1DA72CB90](v7, -1, -1);

          goto LABEL_17;
        }

        v2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }

        v15 = objc_opt_self();

        v16 = sub_1D917802C();
        v28 = 0;
        v17 = [v15 dataWithJSONObject:v16 options:0 error:&v28];

        v18 = v28;
        if (v17)
        {
          break;
        }

        v14 = v18;
        v1 = sub_1D9176A6C();

        swift_willThrow();

        v7 = 0;
        v6 = (v6 + 1);
LABEL_7:
        if (v8 == v6)
        {
          goto LABEL_2;
        }
      }

      v19 = sub_1D9176C8C();
      v21 = v20;

      sub_1D917656C();
      swift_allocObject();
      v1 = sub_1D917655C();
      type metadata accessor for ServerPodcastEpisode();
      sub_1D901F4E4(&qword_1ECAB1D70, type metadata accessor for ServerPodcastEpisode, &protocol conformance descriptor for ServerPodcastEpisode);
      sub_1D917654C();

      sub_1D8D7567C(v19, v21);

      v6 = (v6 + 1);
      if (!v28)
      {
        goto LABEL_7;
      }

      v1 = v29;
      MEMORY[0x1DA729B90](v22);
      if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      v27 = v29[0];
      v6 = v2;
    }

    while (v8 != v2);
  }

LABEL_2:
  v8 = v24;
  sub_1D917742C();
  v9 = v27;

  v1 = sub_1D917741C();
  LOBYTE(v6) = sub_1D9178D1C();
  if (os_log_type_enabled(v1, v6))
  {
    v7 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v29[0] = v2;
    *v7 = 134218242;
    if (v9 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_17:
  (*(v25 + 8))(v8, v26);
  return v9;
}

uint64_t sub_1D901F334(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8E60, &qword_1D91A7768);
    sub_1D901F4E4(a2, type metadata accessor for RecommendationModule, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D901F3F8(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D901F474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D901F4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D901F52C(void (*a1)(uint64_t, void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecommendationModulesResponse();
  swift_allocObject();
  if (RecommendationModulesResponse.init()())
  {
    sub_1D917742C();
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "RecommendationModulesRequest returning cached response", v15, 2u);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    (*(v10 + 8))(v12, v9);

    a1(v16, 0);
  }

  else
  {
    v18 = sub_1D917886C();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v3;
    v19[5] = a1;
    v19[6] = a2;
    v20 = v3;

    sub_1D8E91268(0, 0, v8, &unk_1D91A77E8, v19);
  }
}

uint64_t sub_1D901F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for MediaRequest.Params(0);
  v6[15] = swift_task_alloc();
  v7 = sub_1D917744C();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D901F960, 0, 0);
}

uint64_t sub_1D901F960()
{
  sub_1D917742C();
  v1 = sub_1D917741C();
  v2 = sub_1D9178D1C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D8CEC000, v1, v2, "RecommendationModulesRequest creating personalized payload", v3, 2u);
    MEMORY[0x1DA72CB90](v3, -1, -1);
  }

  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  (*(v6 + 8))(v4, v5);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1D901FAB4;

  return sub_1D902054C();
}

uint64_t sub_1D901FAB4(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D901FBB4, 0, 0);
}

uint64_t sub_1D901FBB4()
{
  v41 = v0[21];
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v39 = v3;
  v40 = sub_1D8D946F4(&unk_1F5461610);
  sub_1D8D08A50(&unk_1F5461630, &unk_1ECAB9A50, &unk_1D9197130);
  v38 = sub_1D8D946F4(&unk_1F5461640);
  sub_1D8D08A50(&unk_1F5461660, &unk_1ECAB9A50, &unk_1D9197130);
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = MEMORY[0x1E69E7CC0];
  v37 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8D94DF8(v6);
  v35 = sub_1D8D951E0(v6);
  v33 = sub_1D8D9503C(v6);
  v30 = sub_1D8D953C4(v6);
  v32 = sub_1D8D952D8(v6);
  v34 = sub_1D8D95394(v6);
  v29 = sub_1D8D957C4(v6);
  *(v1 + 41) = 263;
  *(v1 + 43) = 5;
  *(v1 + 152) = 1;
  *(v1 + 201) = 1;
  v7 = v2[28];
  v5(v1 + v7, 1, 1, v4);
  v8 = (v1 + v2[29]);
  v9 = (v1 + v2[31]);
  v31 = v2[34];
  v10 = (v1 + v2[33]);
  v11 = (v1 + v2[35]);
  *v1 = v41;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 83953409;
  *(v1 + 48) = v37;
  *(v1 + 56) = v36;
  *(v1 + 64) = v35;
  *(v1 + 72) = v6;
  *(v1 + 80) = v33;
  *(v1 + 88) = v40;
  *(v1 + 96) = v38;
  *(v1 + 104) = v30;
  *(v1 + 112) = v6;
  *(v1 + 120) = v32;
  *(v1 + 128) = &unk_1F54615E8;
  *(v1 + 136) = &unk_1F5461698;
  *(v1 + 144) = v6;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = v34;
  *(v1 + 184) = v29;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 202) = 0;
  sub_1D8E26828(v39, v1 + v7);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + v2[30]) = 0;
  *v9 = 0;
  v9[1] = 0;
  *(v1 + v2[32]) = &unk_1F5461670;
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v31) = 2;
  *v11 = 0;
  v11[1] = 0;
  sub_1D917742C();
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "RecommendationModulesRequest fetching recommendations", v14, 2u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[12];
  v21 = v0[10];
  v20 = v0[11];

  (*(v17 + 8))(v15, v16);
  v22 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  sub_1D8CFD9D8(v21 + v22, (v0 + 2));
  v23 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  v26 = *(v24 + 56);

  v26(v18, sub_1D9026F38, v25, v23, v24);

  sub_1D9026F40(v18, type metadata accessor for MediaRequest.Params);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v27 = v0[1];

  return v27();
}

void sub_1D9020030(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  if (a5)
  {
    v21 = a5;
    sub_1D917742C();
    v22 = a5;
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = a6;
      v26 = v25;
      v27 = swift_slowAlloc();
      v43[1] = a7;
      v28 = v27;
      v45 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v29 = sub_1D9179D2C();
      v31 = sub_1D8CFA924(v29, v30, &v45);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "RecommendationModulesRequest fetching recommendations failed with error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      v32 = v26;
      a6 = v44;
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    (*(v12 + 8))(v20, v11);
    v33 = a5;
    a6(0, a5);
  }

  else
  {
    if (a3)
    {

      sub_1D917742C();
      v34 = sub_1D917741C();
      v35 = sub_1D9178D1C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1D8CEC000, v34, v35, "RecommendationModulesRequest completed", v36, 2u);
        MEMORY[0x1DA72CB90](v36, -1, -1);
      }

      (*(v12 + 8))(v14, v11);
      type metadata accessor for RecommendationModulesResponse();
      v37 = swift_allocObject();
      RecommendationModulesResponse.init(json:)(a3);
      a6(v37, 0);
    }

    else
    {
      sub_1D917742C();
      v38 = sub_1D917741C();
      v39 = sub_1D9178D1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1D8CEC000, v38, v39, "RecommendationModulesRequest returned no results", v40, 2u);
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      (*(v12 + 8))(v17, v11);
      v41 = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
      type metadata accessor for RecommendationModulesResponse();
      v42 = swift_allocObject();
      RecommendationModulesResponse.init(json:)(v41);
      a6(v42, 0);
    }
  }
}

uint64_t RecommendationModulesResponse.__allocating_init(json:)(void *a1)
{
  v2 = swift_allocObject();
  RecommendationModulesResponse.init(json:)(a1);
  return v2;
}

uint64_t sub_1D902054C()
{
  v1[97] = v0;
  v2 = sub_1D917744C();
  v1[98] = v2;
  v1[99] = *(v2 - 8);
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_1D917825C();
  v1[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9020698, 0, 0);
}

uint64_t sub_1D9020698()
{
  v0[110] = sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
  sub_1D91765CC();
  swift_allocObject();
  v0[111] = sub_1D91765BC();
  v1 = swift_task_alloc();
  v0[112] = v1;
  *v1 = v0;
  v1[1] = sub_1D9020760;

  return sub_1D9022E14((v0 + 79));
}

uint64_t sub_1D9020760()
{

  return MEMORY[0x1EEE6DFA0](sub_1D902085C, 0, 0);
}

uint64_t sub_1D902085C()
{
  v46 = v0;
  v1 = *(v0 + 632);
  *(v0 + 904) = v1;
  v44 = *(v0 + 640);
  *(v0 + 912) = v44;
  *(v0 + 760) = v1;

  *(v0 + 928) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
  *(v0 + 936) = sub_1D9026800(&qword_1ECAAFF28, &qword_1ECAB8A10, &qword_1D91A4DB0, sub_1D8FEEE60);
  v2 = sub_1D91765AC();
  v4 = v3;
  sub_1D917824C();
  v5 = sub_1D917822C();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_1D8D7567C(v2, v4);
  }

  else
  {
    sub_1D8D7567C(v2, v4);

    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v0 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8EB0, &qword_1D91A78C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x6465776F6C6C6F66;
  *(inited + 40) = 0xE800000000000000;
  *(v0 + 952) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8EB8, &unk_1D91A78C8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1D9189080;
  *(v10 + 32) = 0x7374736163646F70;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;

  v11 = sub_1D8E27090(v10);
  swift_setDeallocating();
  sub_1D8D08A50(v10 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(inited + 48) = v11;
  *(v0 + 960) = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v12 = sub_1D917741C();
  v13 = sub_1D9178CEC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 864);
  v16 = *(v0 + 792);
  v17 = *(v0 + 784);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v42 = v15;
    v19 = swift_slowAlloc();
    v45[0] = v19;
    *v18 = 136315138;
    v20 = sub_1D8CFA924(v7, v8, v45);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "Recommendations Metadata - followed shows %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);

    v21 = *(v16 + 8);
    v21(v42, v17);
  }

  else
  {

    v21 = *(v16 + 8);
    v21(v15, v17);
  }

  v43 = v21;
  *(v0 + 968) = v21;
  *(v0 + 728) = v44;

  v22 = sub_1D91765AC();
  v24 = v23;
  *(v0 + 976) = 0;
  sub_1D917824C();
  v25 = sub_1D917822C();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    sub_1D8D7567C(v22, v24);
  }

  else
  {
    sub_1D8D7567C(v22, v24);

    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1D9189080;
  strcpy((v29 + 32), "not-followed");
  *(v29 + 45) = 0;
  *(v29 + 46) = -5120;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1D9189080;
  *(v30 + 32) = 0x7374736163646F70;
  *(v30 + 40) = 0xE800000000000000;
  *(v30 + 48) = v27;
  *(v30 + 56) = v28;

  v31 = sub_1D8E27090(v30);
  swift_setDeallocating();
  sub_1D8D08A50(v30 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(v29 + 48) = v31;
  *(v0 + 984) = sub_1D8E2731C(v29);
  swift_setDeallocating();
  sub_1D8D08A50(v29 + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v32 = sub_1D917741C();
  v33 = sub_1D9178CEC();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 856);
  v36 = *(v0 + 784);
  if (v34)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45[0] = v38;
    *v37 = 136315138;
    v39 = sub_1D8CFA924(v27, v28, v45);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_1D8CEC000, v32, v33, "Recommendations Metadata - nonfollowed shows %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v37, -1, -1);
  }

  else
  {
  }

  v43(v35, v36);
  v40 = swift_task_alloc();
  *(v0 + 992) = v40;
  *v40 = v0;
  v40[1] = sub_1D9020F28;

  return sub_1D9023714(v0 + 656);
}

uint64_t sub_1D9020F28()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9021024, 0, 0);
}

uint64_t sub_1D9021024()
{
  v28 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 656);
  *(v0 + 1000) = v2;
  *(v0 + 1016) = *(v0 + 672);
  *(v0 + 704) = v2;

  *(v0 + 1024) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C0, &qword_1D91A4D80);
  *(v0 + 1032) = sub_1D9026800(&qword_1ECAAFF20, &qword_1ECAB89C0, &qword_1D91A4D80, sub_1D8FEEA58);
  v3 = sub_1D91765AC();
  if (v1)
  {

    v5 = 0;
    v6 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
    v6 = v4;
  }

  *(v0 + 1040) = 0;
  sub_1D917824C();
  v7 = sub_1D917822C();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    sub_1D8D7567C(v5, v6);
  }

  else
  {
    sub_1D8D7567C(v5, v6);

    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v25 = v9;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x6269726373627573;
  *(inited + 40) = 0xEA00000000006465;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1D9189080;
  *(v12 + 32) = 0xD000000000000010;
  *(v12 + 40) = 0x80000001D91C7F60;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;

  v13 = sub_1D8E27090(v12);
  swift_setDeallocating();
  sub_1D8D08A50(v12 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(inited + 48) = v13;
  *(v0 + 1048) = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v14 = sub_1D917741C();
  v15 = sub_1D9178CEC();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 968);
  v18 = *(v0 + 848);
  v19 = *(v0 + 784);
  if (v16)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v26 = v17;
    v22 = sub_1D8CFA924(v25, v10, &v27);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Recommendations Metadata - subscribed channels %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1DA72CB90](v21, -1, -1);
    MEMORY[0x1DA72CB90](v20, -1, -1);

    v26(v18, v19);
  }

  else
  {

    v17(v18, v19);
  }

  v23 = swift_task_alloc();
  *(v0 + 1056) = v23;
  *v23 = v0;
  v23[1] = sub_1D902142C;

  return sub_1D90242B0(v0 + 696);
}

uint64_t sub_1D902142C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9021528, 0, 0);
}

uint64_t sub_1D9021528()
{
  v27 = v0;
  v1 = v0[130];
  v0[96] = v0[87];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E8, &qword_1D91A4D98);
  sub_1D9026800(&qword_1ECAAFF18, &qword_1ECAB89E8, &qword_1D91A4D98, sub_1D8FEEC5C);
  v2 = sub_1D91765AC();
  if (v1)
  {

    v4 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
    v5 = v3;
  }

  v0[133] = 0;
  sub_1D917824C();
  v6 = sub_1D917822C();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_1D8D7567C(v4, v5);
  }

  else
  {
    sub_1D8D7567C(v4, v5);

    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v24 = v8;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x796C746E65636572;
  *(inited + 40) = 0xEF646579616C702DLL;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1D9189080;
  *(v11 + 32) = 0xD000000000000010;
  *(v11 + 40) = 0x80000001D91C7F20;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;

  v12 = sub_1D8E27090(v11);
  swift_setDeallocating();
  sub_1D8D08A50(v11 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(inited + 48) = v12;
  v0[134] = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v13 = sub_1D917741C();
  v14 = sub_1D9178CEC();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[121];
  v17 = v0[105];
  v18 = v0[98];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    v25 = v16;
    v21 = sub_1D8CFA924(v24, v9, &v26);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Recommendations Metadata - recently played %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);

    v25(v17, v18);
  }

  else
  {

    v16(v17, v18);
  }

  v22 = swift_task_alloc();
  v0[135] = v22;
  *v22 = v0;
  v22[1] = sub_1D9021914;

  return sub_1D902480C((v0 + 85));
}

uint64_t sub_1D9021914()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9021A10, 0, 0);
}

uint64_t sub_1D9021A10()
{
  v99 = v0;
  v1 = v0[133];
  v89 = v0[86];
  v0[89] = v0[85];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8998, &unk_1D91A78E0);
  sub_1D9026800(&qword_1ECAAFF30, &qword_1ECAB8998, &unk_1D91A78E0, sub_1D8FEE854);
  v2 = sub_1D91765AC();
  if (v1)
  {

    v4 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
    v5 = v3;
  }

  sub_1D917824C();
  v93 = sub_1D917822C();
  if (v6)
  {
    v7 = v6;
    sub_1D8D7567C(v4, v5);
  }

  else
  {
    sub_1D8D7567C(v4, v5);

    v93 = 0;
    v7 = 0xE000000000000000;
  }

  v0[90] = v0[126];

  v8 = sub_1D91765AC();
  v10 = v9;
  sub_1D917824C();
  v11 = sub_1D917822C();
  v95 = v7;
  if (v12)
  {
    v13 = v12;
    v91 = v11;
    sub_1D8D7567C(v8, v10);
  }

  else
  {
    sub_1D8D7567C(v8, v10);

    v91 = 0;
    v13 = 0xE000000000000000;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x73656B696CLL;
  *(inited + 40) = 0xE500000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D918A530;
  *(v15 + 32) = 0x69726F6765746163;
  *(v15 + 40) = 0xEA00000000007365;
  *(v15 + 48) = v93;
  *(v15 + 56) = v7;
  *(v15 + 64) = 0xD000000000000010;
  *(v15 + 72) = 0x80000001D91C7F60;
  *(v15 + 80) = v91;
  *(v15 + 88) = v13;

  v16 = sub_1D8E27090(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8C48, &unk_1D91A6960);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 48) = v16;
  v0[136] = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[121];
  v21 = v0[104];
  v22 = v0[98];
  if (v19)
  {
    v86 = v0[121];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v98[0] = v24;
    *v23 = 136315138;
    v25 = sub_1D8CFA924(v91, v13, v98);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Recommendations Metadata - liked channels %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);

    v86(v21, v22);
  }

  else
  {

    v20(v21, v22);
  }

  sub_1D917742C();

  v26 = sub_1D917741C();
  v27 = sub_1D9178CEC();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[121];
  v30 = v0[103];
  v31 = v0[98];
  if (v28)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v98[0] = v33;
    *v32 = 136315138;
    v34 = sub_1D8CFA924(v93, v95, v98);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Recommendations Metadata - liked categories %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1DA72CB90](v33, -1, -1);
    MEMORY[0x1DA72CB90](v32, -1, -1);
  }

  else
  {
  }

  v29(v30, v31);
  v0[92] = v0[115];

  v35 = sub_1D91765AC();
  v37 = v36;
  sub_1D917824C();
  v38 = sub_1D917822C();
  v92 = v39;
  if (v39)
  {
    v94 = v38;
    sub_1D8D7567C(v35, v37);
  }

  else
  {
    sub_1D8D7567C(v35, v37);

    v92 = 0xE000000000000000;
    v94 = 0;
  }

  v40 = v0[127];

  v0[93] = v40;

  v41 = sub_1D91765AC();
  v43 = v42;
  sub_1D917824C();
  v44 = sub_1D917822C();
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    sub_1D8D7567C(v41, v43);
  }

  else
  {
    sub_1D8D7567C(v41, v43);

    v46 = 0;
    v47 = 0xE000000000000000;
  }

  v0[94] = v89;

  v48 = sub_1D91765AC();
  v50 = v49;
  v0[137] = 0;
  sub_1D917824C();
  v51 = sub_1D917822C();
  v96 = v52;
  if (v52)
  {
    v53 = v51;
    sub_1D8D7567C(v48, v50);
  }

  else
  {
    sub_1D8D7567C(v48, v50);

    v53 = 0;
    v96 = 0xE000000000000000;
  }

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1D9189080;
  *(v54 + 32) = 0x73656B696C736964;
  *(v54 + 40) = 0xE800000000000000;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1D9189060;
  *(v55 + 32) = 0x69726F6765746163;
  *(v55 + 40) = 0xEA00000000007365;
  *(v55 + 48) = v53;
  v87 = v46;
  v88 = v53;
  *(v55 + 56) = v96;
  *(v55 + 64) = 0xD000000000000010;
  *(v55 + 72) = 0x80000001D91C7F60;
  *(v55 + 80) = v46;
  *(v55 + 88) = v47;
  *(v55 + 96) = 0x7374736163646F70;
  *(v55 + 104) = 0xE800000000000000;
  *(v55 + 112) = v94;
  *(v55 + 120) = v92;

  v90 = v47;

  v56 = sub_1D8E27090(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v54 + 48) = v56;
  v0[138] = sub_1D8E2731C(v54);
  swift_setDeallocating();
  sub_1D8D08A50(v54 + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  swift_deallocClassInstance();
  sub_1D917742C();

  v57 = sub_1D917741C();
  v58 = sub_1D9178CEC();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v0[121];
  v61 = v0[102];
  v62 = v0[98];
  if (v59)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v98[0] = v64;
    *v63 = 136315138;
    v65 = sub_1D8CFA924(v94, v92, v98);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_1D8CEC000, v57, v58, "Recommendations Metadata - disliked shows %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x1DA72CB90](v64, -1, -1);
    MEMORY[0x1DA72CB90](v63, -1, -1);
  }

  else
  {
  }

  v60(v61, v62);
  sub_1D917742C();

  v66 = sub_1D917741C();
  v67 = sub_1D9178CEC();

  v68 = os_log_type_enabled(v66, v67);
  v69 = v0[121];
  v70 = v0[101];
  v71 = v0[98];
  if (v68)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v98[0] = v73;
    *v72 = 136315138;
    v74 = sub_1D8CFA924(v87, v90, v98);

    *(v72 + 4) = v74;
    _os_log_impl(&dword_1D8CEC000, v66, v67, "Recommendations Metadata - disliked channels %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x1DA72CB90](v73, -1, -1);
    MEMORY[0x1DA72CB90](v72, -1, -1);
  }

  else
  {
  }

  v69(v70, v71);
  sub_1D917742C();

  v75 = sub_1D917741C();
  v76 = sub_1D9178CEC();

  v77 = os_log_type_enabled(v75, v76);
  v78 = v0[121];
  v79 = v0[100];
  v80 = v0[98];
  if (v77)
  {
    v97 = v0[121];
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v98[0] = v82;
    *v81 = 136315138;
    v83 = sub_1D8CFA924(v88, v96, v98);

    *(v81 + 4) = v83;
    _os_log_impl(&dword_1D8CEC000, v75, v76, "Recommendations Metadata - disliked categories %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1DA72CB90](v82, -1, -1);
    MEMORY[0x1DA72CB90](v81, -1, -1);

    v97(v79, v80);
  }

  else
  {

    v78(v79, v80);
  }

  v84 = swift_task_alloc();
  v0[139] = v84;
  *v84 = v0;
  v84[1] = sub_1D90227D8;

  return sub_1D9024CFC((v0 + 74));
}

uint64_t sub_1D90227D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D90228D4, 0, 0);
}

uint64_t sub_1D90228D4()
{
  v52 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 616);
  v3 = *(v0 + 624);
  v4 = *(v0 + 625);
  v5 = *(v0 + 626);
  v6 = *(v0 + 600);
  *(v0 + 552) = *(v0 + 592);
  *(v0 + 560) = v6;
  *(v0 + 576) = v2;
  *(v0 + 584) = v3;
  *(v0 + 585) = v4;
  *(v0 + 586) = v5;
  sub_1D8FEEFE0();
  v7 = sub_1D91765AC();
  if (v1)
  {

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    v9 = v7;
    v10 = v8;
  }

  sub_1D917824C();
  v11 = sub_1D917822C();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_1D8D7567C(v9, v10);
  }

  else
  {
    sub_1D8D7567C(v9, v10);

    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = *(v0 + 960);
  v16 = *(v0 + 880);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D9189080;
  *(v17 + 32) = 0x636974796C616E61;
  v18 = v17 + 32;
  *(v17 + 40) = 0xE900000000000073;
  *(v17 + 48) = v13;
  *(v17 + 56) = v14;
  v19 = sub_1D8E27090(v17);
  swift_setDeallocating();
  sub_1D8D08A50(v18, &qword_1ECAB8C48, &unk_1D91A6960);
  swift_deallocClassInstance();
  sub_1D90537A0(v15);
  v21 = v20;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v16;
  sub_1D902687C(v21, sub_1D8FD6534, 0, isUniquelyReferenced_nonNull_native, v51);

  v23 = v51[0];
  sub_1D90537A0(*(v0 + 984));
  v25 = v24;

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v23;
  sub_1D902687C(v25, sub_1D8FD6534, 0, v26, v51);

  v27 = v51[0];
  sub_1D90537A0(*(v0 + 1048));
  v29 = v28;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v27;
  sub_1D902687C(v29, sub_1D8FD6534, 0, v30, v51);

  v31 = v51[0];
  sub_1D90537A0(*(v0 + 1072));
  v33 = v32;

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v31;
  sub_1D902687C(v33, sub_1D8FD6534, 0, v34, v51);

  v35 = v51[0];
  sub_1D90537A0(*(v0 + 1088));
  v37 = v36;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v35;
  sub_1D902687C(v37, sub_1D8FD6534, 0, v38, v51);

  v39 = v51[0];
  sub_1D90537A0(*(v0 + 1104));
  v41 = v40;

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v39;
  sub_1D902687C(v41, sub_1D8FD6534, 0, v42, v51);

  v43 = v51[0];
  sub_1D9053A00(v19);
  v45 = v44;

  v46 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v43;
  sub_1D902687C(v45, sub_1D8FD6534, 0, v46, v51);

  sub_1D9053C58(v51[0]);
  v50 = v47;

  v48 = *(v0 + 8);

  return v48(v50);
}

uint64_t sub_1D9022E14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D917906C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9022ED4, 0, 0);
}

uint64_t sub_1D9022ED4()
{
  v1 = v0[5];
  v2 = v0[3];
  v22 = v0[4];
  v23 = v0[6];
  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[7] = v3;
  v4 = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v6 initWithKey:v7 ascending:0];

  *(v5 + 32) = v8;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v9 = sub_1D91785DC();

  [v3 setSortDescriptors_];

  [v3 setFetchLimit_];
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v10 initWithEntityName_];
  v0[8] = v12;

  v13 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  [v12 setPredicate_];

  [v12 setFetchLimit_];
  v14 = swift_allocObject();
  v0[9] = v14;
  v14[2] = v2;
  v14[3] = v3;
  v14[4] = v12;
  (*(v1 + 104))(v23, *MEMORY[0x1E695D2B8], v22);
  v15 = v2;
  v16 = v3;
  v17 = v12;
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_1D90231F4;
  v19 = v0[6];
  v20 = v0[2];

  return MEMORY[0x1EEDB6538](v20, v19, sub_1D90267E0, v14, &type metadata for RecommendationsMetadata.Shows);
}

void sub_1D90231F4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x1EEE6DFA0](sub_1D902334C, 0, 0);
  }
}

uint64_t sub_1D902334C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1D90233BC@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v8 = sub_1D917908C();
  v36 = a3;
  if (v3)
  {

    v35._rawValue = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35._rawValue = v8;
  }

  type metadata accessor for MTInterest();
  v9 = 0;
  v10 = sub_1D917908C();
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_29:
    v12._rawValue = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_28:
  v11 = sub_1D917935C();
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_6:
  v31 = v5;
  v5 = 0;
  v30 = (v6 + 8);
  v12._rawValue = MEMORY[0x1E69E7CC0];
  v6 = 1000000000000;
  do
  {
    rawValue = v12._rawValue;
    v34 = v9;
    v13 = v5;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA72AA90](v13, v10);
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v16 = [v14 adamID];
      if (v16 != 1000000000000 && v16 != 0)
      {
        break;
      }

      ++v13;
      if (v5 == v11)
      {
        v12._rawValue = rawValue;
        goto LABEL_30;
      }
    }

    v18 = v16;
    v29 = [v15 lastUpdatedDate];
    v19 = v32;
    sub_1D9176DFC();

    sub_1D9176DDC();
    v21 = v20;
    (*v30)(v19, v31);

    v22 = rawValue;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1D8ECD6F4(0, *(v22 + 2) + 1, 1, v22);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v26 = v22;
    if (v25 >= v24 >> 1)
    {
      v26 = sub_1D8ECD6F4((v24 > 1), v25 + 1, 1, v22);
    }

    *(v26 + 2) = v25 + 1;
    v12._rawValue = v26;
    v27 = &v26[16 * v25];
    *(v27 + 4) = v18;
    *(v27 + 5) = floor(v21 * 1000.0);
    v9 = v34;
  }

  while (v5 != v11);
LABEL_30:

  return RecommendationsMetadata.Shows.init(from:dislikedPodcasts:)(v35, v12);
}

uint64_t sub_1D9023714(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D917906C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90237D4, 0, 0);
}

uint64_t sub_1D90237D4()
{
  v27 = v0[4];
  v28 = v0[6];
  v25 = v0[5];
  v26 = v0[3];
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[7] = v1;
  v2 = [objc_opt_self() predicateForSubscribedChannel];
  [v1 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v7 = sub_1D91785DC();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 &selRef:v9 cStringUsingEncoding:? + 6];
  v0[8] = v10;

  v11 = _s18PodcastsFoundation10MTInterestC38predicateForFavoritedInterestsChannelsSo11NSPredicateCyFZ_0();
  [v10 setPredicate_];

  [v10 setFetchLimit_];
  v12 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v14 = [v12 &selRef:v13 cStringUsingEncoding:? + 6];
  v0[9] = v14;

  v15 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  [v14 setPredicate_];

  [v14 setFetchLimit_];
  v16 = swift_allocObject();
  v0[10] = v16;
  v16[2] = v26;
  v16[3] = v1;
  v16[4] = v10;
  v16[5] = v14;
  (*(v25 + 104))(v28, *MEMORY[0x1E695D2B8], v27);
  v17 = v26;
  v18 = v1;
  v19 = v10;
  v20 = v14;
  v21 = swift_task_alloc();
  v0[11] = v21;
  *v21 = v0;
  v21[1] = sub_1D9023B74;
  v22 = v0[6];
  v23 = v0[2];

  return MEMORY[0x1EEDB6538](v23, v22, sub_1D90267C0, v16, &type metadata for RecommendationsMetadata.Channels);
}

void sub_1D9023B74()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x1EEE6DFA0](sub_1D9023CCC, 0, 0);
  }
}

uint64_t sub_1D9023CCC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1D9023D48@<X0>(uint64_t a1@<X0>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v59 = a5;
  v57 = sub_1D9176E3C();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR___MTRecommendationModulesRequest_context);
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v10 = sub_1D917908C();
  if (v5)
  {

    v58._rawValue = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v58._rawValue = v10;
  }

  v61 = type metadata accessor for MTInterest();
  v11 = sub_1D917908C();
  v60 = 0;
  v62 = v9;
  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v55 = (v7 + 8);
    v14 = &off_1E856D000;
    if (i)
    {
      v7 = 0;
      v64._rawValue = MEMORY[0x1E69E7CC0];
      do
      {
        v15 = v7;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1DA72AA90](v15, v11);
          }

          else
          {
            if (v15 >= *(v12 + 16))
            {
              goto LABEL_54;
            }

            v16 = *(v11 + 8 * v15 + 32);
          }

          v17 = v16;
          v7 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v18 = v14;
          v19 = [v16 v14[229]];
          if (v19 != 1000000000000 && v19 != 0)
          {
            break;
          }

          ++v15;
          if (v7 == i)
          {
            goto LABEL_28;
          }
        }

        v21 = v19;
        v54 = [v17 lastUpdatedDate];
        v22 = v56;
        sub_1D9176DFC();

        sub_1D9176DDC();
        v24 = v23;
        (*v55)(v22, v57);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64._rawValue = sub_1D8ECD5C8(0, *(v64._rawValue + 2) + 1, 1, v64._rawValue);
        }

        v27 = *(v64._rawValue + 2);
        v26 = *(v64._rawValue + 3);
        if (v27 >= v26 >> 1)
        {
          v64._rawValue = sub_1D8ECD5C8((v26 > 1), v27 + 1, 1, v64._rawValue);
        }

        rawValue = v64._rawValue;
        *(v64._rawValue + 2) = v27 + 1;
        v29 = &rawValue[16 * v27];
        *(v29 + 4) = v21;
        *(v29 + 5) = floor(v24 * 1000.0);
        v14 = v18;
      }

      while (v7 != i);
    }

    else
    {
      v64._rawValue = MEMORY[0x1E69E7CC0];
    }

LABEL_28:

    v30 = v60;
    v31 = sub_1D917908C();
    v32 = v30;
    if (v30)
    {

      v32 = 0;
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v11 = v31;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      break;
    }

    v33 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_59;
    }

LABEL_33:
    v7 = 0;
    v34._rawValue = MEMORY[0x1E69E7CC0];
LABEL_34:
    v63 = v34._rawValue;
    v35 = v7;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA72AA90](v35, v11);
      }

      else
      {
        if (v35 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v36 = *(v11 + 8 * v35 + 32);
      }

      v37 = v36;
      v7 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v38 = [v36 v14[229]];
      if (v38 != 1000000000000 && v38 != 0)
      {
        v61 = v32;
        v62 = v38;
        v40 = v14;
        v41 = [v37 lastUpdatedDate];
        v42 = v56;
        sub_1D9176DFC();

        sub_1D9176DDC();
        v44 = v43;
        (*v55)(v42, v57);

        v45 = v63;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        if ((v46 & 1) == 0)
        {
          v45 = sub_1D8ECD5C8(0, *(v45 + 2) + 1, 1, v45);
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        v49 = v45;
        v50 = v62;
        v14 = v40;
        if (v48 >= v47 >> 1)
        {
          v49 = sub_1D8ECD5C8((v47 > 1), v48 + 1, 1, v45);
          v50 = v62;
        }

        v32 = v61;
        *(v49 + 2) = v48 + 1;
        v34._rawValue = v49;
        v51 = &v49[16 * v48];
        *(v51 + 4) = v50;
        *(v51 + 5) = floor(v44 * 1000.0);
        if (v7 != v33)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }

      ++v35;
      if (v7 == v33)
      {
        v34._rawValue = v63;
        goto LABEL_60;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v33 = sub_1D917935C();
  if (v33)
  {
    goto LABEL_33;
  }

LABEL_59:
  v34._rawValue = MEMORY[0x1E69E7CC0];
LABEL_60:

  return RecommendationsMetadata.Channels.init(from:favoritedChannels:dislikedChannels:)(v58, v64, v34);
}

uint64_t sub_1D90242B0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_1D917906C();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9024370, 0, 0);
}

uint64_t sub_1D9024370()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3082;
  *(v0 + 88) = 3;
  *(v0 + 96) = 0;
  *(v0 + 100) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  *(v0 + 144) = v5;
  v24 = *(v0 + 48);
  v25 = *(v0 + 64);
  *v26 = *(v0 + 80);
  *&v26[13] = *(v0 + 93);
  v22 = *(v0 + 16);
  v23 = *(v0 + 32);
  v13 = EpisodeListSettings.predicate.getter(v5, v6, v7, v8, v9, v10, v11, v12);
  [v5 setPredicate_];

  EpisodeSortType.descriptors.getter(12);
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v14 = sub_1D91785DC();

  [v5 setSortDescriptors_];

  [v5 setFetchLimit_];
  v15 = swift_allocObject();
  *(v0 + 152) = v15;
  *(v15 + 16) = v4;
  *(v15 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v16 = v4;
  v17 = v5;
  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  *v18 = v0;
  v18[1] = sub_1D90245B8;
  v19 = *(v0 + 136);
  v20 = *(v0 + 104);

  return MEMORY[0x1EEDB6538](v20, v19, sub_1D90267A4, v15, &type metadata for RecommendationsMetadata.Episodes);
}

void sub_1D90245B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    MEMORY[0x1EEE6DFA0](sub_1D9024710, 0, 0);
  }
}

uint64_t sub_1D9024710()
{
  sub_1D8F3D204(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

PodcastsFoundation::RecommendationsMetadata::Episodes sub_1D9024780(uint64_t a1, uint64_t a2)
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v3 = sub_1D917908C();
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  return RecommendationsMetadata.Episodes.init(from:)(v3);
}

uint64_t sub_1D902480C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D917906C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90248CC, 0, 0);
}

uint64_t sub_1D90248CC()
{
  v1 = v0[5];
  v2 = v0[3];
  v19 = v0[4];
  v20 = v0[6];
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 initWithEntityName_];
  v0[7] = v5;

  v6 = sub_1D8D20F80();
  [v5 setPredicate_];

  v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [v7 initWithEntityName_];
  v0[8] = v9;

  v10 = sub_1D8D20F90();
  [v9 setPredicate_];

  v11 = swift_allocObject();
  v0[9] = v11;
  v11[2] = v2;
  v11[3] = v5;
  v11[4] = v9;
  (*(v1 + 104))(v20, *MEMORY[0x1E695D2B8], v19);
  v12 = v2;
  v13 = v5;
  v14 = v9;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_1D9024AE0;
  v16 = v0[6];
  v17 = v0[2];

  return MEMORY[0x1EEDB6538](v17, v16, sub_1D9026784, v11, &type metadata for RecommendationsMetadata.Categories);
}

void sub_1D9024AE0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x1EEE6DFA0](sub_1D9026FA0, 0, 0);
  }
}

void *sub_1D9024C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MTInterest();
  v4 = sub_1D917908C();
  if (v3)
  {

    v5._rawValue = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5._rawValue = v4;
  }

  v6 = sub_1D917908C();
  return RecommendationsMetadata.Categories.init(from:dislikedInterests:)(v5, v6).liked._rawValue;
}

uint64_t sub_1D9024D1C()
{
  v1 = type metadata accessor for AnalyticsUserIdentifier();
  *(v0 + 216) = v1;
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = 0;
  v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = 0;
  v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = 0;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  *(v0 + 224) = objc_msgSendSuper2((v0 + 168), sel_init);
  if (qword_1EDCD2A78 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCD2A80;
  v6 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v0 + 232) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_1D9024F28;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8EA8, &unk_1D91A78B0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D8D77280;
  *(v0 + 104) = &block_descriptor_62;
  *(v0 + 112) = v8;
  [v7 resultWithTimeout:v0 + 80 completion:1.0];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D9024F28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1D9025154;
  }

  else
  {
    v2 = sub_1D9025038;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9025038()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8];
  v5 = v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization];
  v6 = v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount];
  v7 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8];
  v8 = v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld];
  v14 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  v13 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];

  *&v10 = v13;
  *&v9 = v14;
  *(&v10 + 1) = v4;
  *(&v9 + 1) = v7;
  *v3 = v10;
  *(v3 + 16) = v9;
  *(v3 + 32) = v5;
  *(v3 + 33) = v6;
  *(v3 + 34) = v8;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D9025154(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 232);
  v3 = *(v2 + 240);
  v5 = *(v2 + 216);
  v6 = *(v2 + 224);
  swift_willThrow();

  v7 = objc_allocWithZone(v5);
  v8 = &v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v9 = 0;
  v9[1] = 0;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = 0;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = 0;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = 0;
  *(v2 + 184) = v7;
  *(v2 + 192) = v5;
  v10 = objc_msgSendSuper2((v2 + 184), sel_init);

  v11 = *(v2 + 208);
  v12 = *&v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8];
  LOBYTE(v4) = v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization];
  v13 = v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount];
  v14 = *&v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8];
  v15 = v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld];
  v21 = *&v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  v20 = *&v10[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];

  *&v17 = v20;
  *&v16 = v21;
  *(&v17 + 1) = v12;
  *(&v16 + 1) = v14;
  *v11 = v17;
  *(v11 + 16) = v16;
  *(v11 + 32) = v4;
  *(v11 + 33) = v13;
  *(v11 + 34) = v15;
  v18 = *(v2 + 8);

  return v18();
}

id RecommendationModulesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecommendationModulesRequest.init()()
{
  *&v0[OBJC_IVAR___MTRecommendationModulesRequest_kPayloadDataFetchLimit] = 50;
  v1 = OBJC_IVAR___MTRecommendationModulesRequest_context;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainQueueContext];

  *&v0[v1] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RecommendationModulesRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

id RecommendationModulesRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationModulesRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecommendationModulesResponse.init(json:)(void *a1)
{
  v2 = v1;
  v21._rawValue = a1;
  v3 = sub_1D9176AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecommendationModulesCache(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v15 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v22, "ListenNowCache");
  v22[15] = -18;
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v16 = &v14[*(v12 + 28)];
  *v16 = 0x4D73656C75646F4DLL;
  *(v16 + 1) = 0xEF61746164617465;
  v17 = &v14[*(v12 + 32)];
  strcpy(v17, "ModuleContent-");
  v17[15] = -18;
  RecommendationModulesCache.writeToCache(with:)(v21);

  v18 = RecommendationModulesCache.modulesMetadata.getter();
  sub_1D9026F40(v14, type metadata accessor for RecommendationModulesCache);
  *(v2 + 16) = v18;

  return v2;
}

uint64_t RecommendationModulesResponse.init()()
{
  v55 = sub_1D917744C();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1D9176AAC();
  v2 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9176C2C();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for RecommendationModulesCache(0);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = sub_1D9176E3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v51 - v22;
  v62 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_1ECAB8E38);
  swift_beginAccess();
  sub_1D8CF6B1C(v23, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1D8D08A50(v11, &qword_1ECAB75C0, &unk_1D9188A50);
    return 0;
  }

  v52 = v13;
  (*(v13 + 32))(v63, v11, v12);
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 syncValueForKey_];

  if (v25)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66[0] = v64;
  v66[1] = v65;
  if (*(&v65 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1D8D08A50(v66, &qword_1ECAB57F0, &unk_1D9190AA0);
  }

  v26 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v66, "ListenNowCache");
  HIBYTE(v66[0]) = -18;
  v27 = v60;
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F58], v60);
  sub_1D8D447DC();
  v28 = v61;
  sub_1D9176C0C();
  v29 = v4;
  v30 = v28;
  (*(v2 + 8))(v29, v27);
  (*(v58 + 8))(v7, v59);
  v31 = v57;
  v32 = (v28 + *(v57 + 20));
  *v32 = 0x4D73656C75646F4DLL;
  v32[1] = 0xEF61746164617465;
  v33 = (v28 + *(v31 + 24));
  strcpy(v33, "ModuleContent-");
  v33[15] = -18;
  sub_1D9176D7C();
  sub_1D9176E2C();
  sub_1D8F132BC(&qword_1EDCD5940, MEMORY[0x1E6969548]);
  LOBYTE(v28) = sub_1D917818C();
  v34 = *(v52 + 8);
  v34(v17, v12);
  v34(v20, v12);
  if ((v28 & 1) != 0 || ((v35 = RecommendationModulesCache.modulesMetadata.getter(), v35 >> 62) ? (v36 = sub_1D917935C()) : (v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v36 < 1))
  {

    sub_1D9026F40(v30, type metadata accessor for RecommendationModulesCache);
    v34(v63, v12);
    return 0;
  }

  v37 = v56;
  sub_1D917742C();
  v38 = v53;
  (*(v52 + 16))(v53, v63, v12);
  v39 = sub_1D917741C();
  v40 = sub_1D9178D1C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v66[0] = v42;
    *v41 = 136315138;
    sub_1D8F132BC(&qword_1EDCD5930, MEMORY[0x1E6969570]);
    v43 = sub_1D9179A4C();
    v45 = v44;
    v34(v38, v12);
    v46 = sub_1D8CFA924(v43, v45, v66);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_1D8CEC000, v39, v40, "RecommendationModulesRequest returning cached recommendations response. Last cached date was: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1DA72CB90](v42, -1, -1);
    MEMORY[0x1DA72CB90](v41, -1, -1);

    (*(v54 + 8))(v56, v55);
  }

  else
  {

    v34(v38, v12);
    (*(v54 + 8))(v37, v55);
  }

  v48 = v61;
  v49 = RecommendationModulesCache.modulesMetadata.getter();
  sub_1D9026F40(v48, type metadata accessor for RecommendationModulesCache);
  v34(v63, v12);
  v50 = v62;
  *(v62 + 16) = v49;

  return v50;
}

uint64_t sub_1D9026104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D5FF18;

  return sub_1D901F828(a1, v4, v5, v6, v7, v8);
}

void sub_1D9026250(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1DA72AA90](a2, v3);

    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * a2 + 32);

  v5 = v4;
}

uint64_t RecommendationModulesResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D9026624(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D8CFAD1C(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_1D8D65618(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_1D8D08A50(v20, &qword_1ECAB45F8, &qword_1D918A060);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D9026800(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D902687C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1D9026624(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1D8D65618(v44, v42);
  v14 = *a5;
  result = sub_1D8D33C70(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1D900C074();
    result = sub_1D8D33C70(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1D8F86F90();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_1D8D65618(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1D8D65618(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1D9026624(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1D8D65618(v44, v42);
        v32 = *a5;
        result = sub_1D8D33C70(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1D900C074();
          result = sub_1D8D33C70(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          sub_1D8D65618(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1D8D65618(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1D9026624(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1D8D1B144(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D9026B8C(void *a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  type metadata accessor for RecommendationModulesResponse();
  swift_allocObject();
  _Block_copy(a2);
  v12 = RecommendationModulesResponse.init()();
  if (v12)
  {
    v13 = v12;
    sub_1D917742C();
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "RecommendationModulesRequest returning cached response", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    a2[2](a2, v13, 0);
  }

  else
  {
    v17 = sub_1D917886C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a1;
    v18[5] = sub_1D8D96FE8;
    v18[6] = v11;
    v19 = a1;

    sub_1D8E91268(0, 0, v6, &unk_1D91A78F0, v18);
  }
}

uint64_t sub_1D9026E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D901F828(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9026F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *__return_ptr retstr, Swift::Bool isSubscriptionActive)
{
  v3 = v2;
  v4 = isSubscriptionActive;
  if (![objc_opt_self() isRunningOnInternalOS])
  {
LABEL_9:
    v20 = 2;
    sub_1D9027258(&v20);
    if (v12)
    {
      if ((v3 & 1) != 0 && *(v12 + 56))
      {
        goto LABEL_22;
      }
    }

    v19 = 1;
    sub_1D9027258(&v19);
    if (v13)
    {
      if (*(v13 + 56))
      {
        v14 = 1;
LABEL_23:
        *v4 = v14;

        return;
      }
    }

    v18 = 0;
    sub_1D9027258(&v18);
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = 2;
    sub_1D9027258(&v17);
    if (!v16)
    {
      goto LABEL_19;
    }

    if (!*(v16 + 56))
    {
LABEL_18:

LABEL_19:
      *v4 = 0;

      return;
    }

LABEL_22:
    v14 = 2;
    goto LABEL_23;
  }

  v5 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v5 stringForKey_];

  if (!v7)
  {

    goto LABEL_9;
  }

  sub_1D917820C();

  if (qword_1ECAB0DB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1ECAB0DC0);
  v9 = sub_1D917741C();
  v10 = sub_1D9178CFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Warning: Using debug option - override asset URL for playback.", v11, 2u);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  *v4 = 0;
}

void sub_1D9027258(char *a1)
{
  v2 = *(*(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 72);
  if (!v2)
  {
    return;
  }

  v3 = *a1;
  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA72AA90](v5, v2);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v9 = v10;
          goto LABEL_24;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          v4 = sub_1D917935C();
          goto LABEL_4;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_21;
        }
      }

      v7 = sub_1D917980C();

      if (v7 > 3)
      {
        if (v3 == 4)
        {
          goto LABEL_16;
        }
      }

      else if (v3 != 4)
      {
        if (*&aStdq_10[8 * v7] == *&aStdq_10[8 * v3])
        {
          swift_bridgeObjectRelease_n();
LABEL_16:
          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          goto LABEL_7;
        }

        v8 = sub_1D9179ACC();
        swift_bridgeObjectRelease_n();
        if (v8)
        {
          goto LABEL_16;
        }
      }

LABEL_7:
      ++v5;
      if (v6 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_24:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    if (sub_1D917935C())
    {
      goto LABEL_27;
    }

LABEL_34:

    return;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_34;
  }

LABEL_27:
  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, v9);
    goto LABEL_30;
  }

  if (*(v9 + 16))
  {

LABEL_30:

    return;
  }

  __break(1u);
}

void ServerPodcastEpisode.alternatePaidURL()(uint64_t a1@<X8>)
{
  v5 = 2;
  sub_1D9027258(&v5);
  if (v2)
  {
    if (*(v2 + 56))
    {

      sub_1D9176BFC();

      return;
    }
  }

  v3 = sub_1D9176C2C();
  v4 = *(*(v3 - 8) + 56);

  v4(a1, 1, 1, v3);
}

void __swiftcall ServerPodcastEpisode.determineBestTranscriptMetadata(isSubscriptionActive:)(Swift::tuple_ttmlToken_String_optional_snippet_String_optional_source_PodcastsFoundation_MetadataSource_optional *__return_ptr retstr, Swift::Bool isSubscriptionActive)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(retstr, &v4);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v3, isSubscriptionActive);
}

void __swiftcall ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(Swift::tuple_ttmlToken_String_optional_snippet_String_optional_source_PodcastsFoundation_MetadataSource_optional *__return_ptr retstr, PodcastsFoundation::PriceType a2)
{
  v4 = a2;
  v5 = *v2;
  v6 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts);
    if (v8)
    {
      v9 = *(v8 + 16);

      if (v9)
      {
        v10 = 0;
        v11 = v8 + 32;
        v18 = v9;
        while (2)
        {
          if (v10 >= *(v8 + 16))
          {
            __break(1u);
            return;
          }

          v12 = v11 + 48 * v10;
          v13 = *(v12 + 16);
          v14 = *(v12 + 24);
          ++v10;
          v15 = *(v14 + 16);
          v16 = (v14 + 32);

          swift_bridgeObjectRetain_n();

          while (v15)
          {
            if (*&aStdq_10[8 * *v16] == *&aStdq_10[8 * v5])
            {

LABEL_15:

              goto LABEL_16;
            }

            v17 = sub_1D9179ACC();
            swift_bridgeObjectRelease_n();
            ++v16;
            --v15;
            if (v17)
            {
              goto LABEL_15;
            }
          }

          swift_bridgeObjectRelease_n();
          v11 = v8 + 32;
          if (v10 != v18)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v13 = 2;
LABEL_16:
  *v4 = v13;
}

PodcastsFoundation::MetadataSource_optional __swiftcall MetadataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

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

uint64_t MetadataSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x72656469766F7270;
  }

  else
  {
    return 0x656C707061;
  }
}

void sub_1D9027854(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

unint64_t sub_1D9027968()
{
  result = qword_1ECAB8EC8;
  if (!qword_1ECAB8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8EC8);
  }

  return result;
}

unint64_t sub_1D90279BC()
{
  result = qword_1ECAB2640;
  if (!qword_1ECAB2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2640);
  }

  return result;
}

id sub_1D9027AAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

uint64_t sub_1D9027B30(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double sub_1D9027B90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;

  return result;
}

double sub_1D9027C08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

double sub_1D9027C64(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  return result;
}

void *RecommendationModule.attributes.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTRecommendationModule_attributes);
  v2 = v1;
  return v1;
}

double sub_1D9027E5C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

BOOL sub_1D9027F38()
{
  v1 = OBJC_IVAR___MTRecommendationModule_shows;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (sub_1D917935C())
      {
        return 0;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }
  }

  v4 = OBJC_IVAR___MTRecommendationModule_episodes;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5)
  {
    if (v5 >> 62)
    {
      v6 = sub_1D917935C();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 == 0;
}

uint64_t sub_1D9028000()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x69726F6765746163;
  v4 = 0x73776F6873;
  if (v1 != 4)
  {
    v4 = 0x7365646F73697065;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x7475626972747461;
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

uint64_t sub_1D90280AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D902AF9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90280D4(uint64_t a1)
{
  v2 = sub_1D90285E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9028110(uint64_t a1)
{
  v2 = sub_1D90285E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D902821C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F00, &unk_1D91A7A50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90285E0();
  sub_1D9179F1C();
  swift_beginAccess();
  v18 = 0;

  sub_1D91799BC();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    swift_beginAccess();
    LOBYTE(v17) = 1;

    sub_1D91799BC();

    v17 = *(v3 + OBJC_IVAR___MTRecommendationModule_attributes);
    LOBYTE(v16) = 2;
    type metadata accessor for RecommendationModuleAttributes();
    sub_1D9029CA8(&qword_1ECAB8F10, v9, type metadata accessor for RecommendationModuleAttributes, &protocol conformance descriptor for RecommendationModuleAttributes);
    sub_1D917999C();
    v10 = OBJC_IVAR___MTRecommendationModule_categories;
    swift_beginAccess();
    v16 = *(v3 + v10);
    LOBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
    sub_1D9028658();
    sub_1D917999C();
    v11 = OBJC_IVAR___MTRecommendationModule_shows;
    swift_beginAccess();
    v15 = *(v3 + v11);
    LOBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    sub_1D9028710();
    sub_1D917999C();
    v12 = OBJC_IVAR___MTRecommendationModule_episodes;
    swift_beginAccess();
    v14 = *(v3 + v12);
    v13[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D90287C8();
    sub_1D917999C();
    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1D90285E0()
{
  result = qword_1ECAB8F08;
  if (!qword_1ECAB8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F08);
  }

  return result;
}

unint64_t sub_1D9028658()
{
  result = qword_1ECAB8F18;
  if (!qword_1ECAB8F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB41A0, &qword_1D91A8140);
    sub_1D9029CA8(&qword_1ECAB8F20, 255, type metadata accessor for ServerCategory, &protocol conformance descriptor for ServerCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F18);
  }

  return result;
}

unint64_t sub_1D9028710()
{
  result = qword_1ECAB8F30;
  if (!qword_1ECAB8F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    sub_1D9029CA8(&qword_1ECAB26C8, 255, type metadata accessor for ServerPodcast, &protocol conformance descriptor for ServerPodcastBase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F30);
  }

  return result;
}

unint64_t sub_1D90287C8()
{
  result = qword_1ECAB8F40;
  if (!qword_1ECAB8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D9029CA8(&qword_1ECAB8F48, 255, type metadata accessor for ServerPodcastEpisode, &protocol conformance descriptor for ServerPodcastEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F40);
  }

  return result;
}

char *RecommendationModule.init(from:)(void *a1)
{
  v3 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F50, &qword_1D91A7A70);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v22 - v6;
  v8 = OBJC_IVAR___MTRecommendationModule_categories;
  *&v1[OBJC_IVAR___MTRecommendationModule_categories] = 0;
  v26 = OBJC_IVAR___MTRecommendationModule_shows;
  *&v1[OBJC_IVAR___MTRecommendationModule_shows] = 0;
  v25 = OBJC_IVAR___MTRecommendationModule_episodes;
  *&v1[OBJC_IVAR___MTRecommendationModule_episodes] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90285E0();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for RecommendationModule();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v30) = 0;
    v9 = sub_1D91798BC();
    v11 = &v1[OBJC_IVAR___MTRecommendationModule_id];
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v30) = 1;
    v13 = sub_1D91798BC();
    v14 = &v1[OBJC_IVAR___MTRecommendationModule_type];
    *v14 = v13;
    v14[1] = v15;
    type metadata accessor for RecommendationModuleAttributes();
    LOBYTE(v29) = 2;
    sub_1D9029CA8(&qword_1ECAB8F58, v16, type metadata accessor for RecommendationModuleAttributes, &protocol conformance descriptor for RecommendationModuleAttributes);
    sub_1D917989C();
    *&v1[OBJC_IVAR___MTRecommendationModule_attributes] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
    LOBYTE(v30) = 3;
    sub_1D9028DC0();
    sub_1D917989C();
    v17 = v29;
    swift_beginAccess();
    *&v3[v8] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    LOBYTE(v29) = 4;
    sub_1D9028E78();
    sub_1D917989C();
    v23 = v28;
    v18 = v26;
    swift_beginAccess();
    *&v3[v18] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    LOBYTE(v28) = 5;
    sub_1D9028F30();
    sub_1D917989C();
    v19 = v31;
    v20 = v25;
    swift_beginAccess();
    *&v3[v20] = v19;

    v21 = type metadata accessor for RecommendationModule();
    v27.receiver = v3;
    v27.super_class = v21;
    v3 = objc_msgSendSuper2(&v27, sel_init);
    (*(v5 + 8))(v7, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t sub_1D9028DC0()
{
  result = qword_1ECAB8F60;
  if (!qword_1ECAB8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB41A0, &qword_1D91A8140);
    sub_1D9029CA8(&qword_1ECAB8F68, 255, type metadata accessor for ServerCategory, &protocol conformance descriptor for ServerCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F60);
  }

  return result;
}

unint64_t sub_1D9028E78()
{
  result = qword_1ECAB8F70;
  if (!qword_1ECAB8F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    sub_1D9029CA8(&qword_1ECAB26C0, 255, type metadata accessor for ServerPodcast, &protocol conformance descriptor for ServerPodcastBase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F70);
  }

  return result;
}

unint64_t sub_1D9028F30()
{
  result = qword_1ECAB8F78;
  if (!qword_1ECAB8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D9029CA8(&qword_1ECAB1D70, 255, type metadata accessor for ServerPodcastEpisode, &protocol conformance descriptor for ServerPodcastEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F78);
  }

  return result;
}

char *sub_1D9028FE8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for RecommendationModule());
  result = RecommendationModule.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *RecommendationModuleAttributes.title.getter()
{
  v1 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RecommendationModuleAttributes.title.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1D902921C(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double sub_1D902926C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

id RecommendationModuleAttributes.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___MTRecommendationModuleAttributes_title] = 0;
  *&v0[OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D90293C8()
{
  if (*v0)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_1D902940C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xED00007365707954)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D90294EC(uint64_t a1)
{
  v2 = sub_1D90297F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9029528(uint64_t a1)
{
  v2 = sub_1D90297F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationModuleAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F90, &qword_1D91A7A78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90297F4();
  sub_1D9179F1C();
  v9 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v15 = *(v3 + v9);
  LOBYTE(v14) = 0;
  type metadata accessor for RecommendationModuleTitle();
  sub_1D9029CA8(&qword_1ECAB8FA0, v10, type metadata accessor for RecommendationModuleTitle, &protocol conformance descriptor for RecommendationModuleTitle);
  sub_1D917999C();
  if (!v2)
  {
    v11 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
    swift_beginAccess();
    v14 = *(v3 + v11);
    v13[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FA8, &qword_1D91A7A80);
    sub_1D902986C(&qword_1ECAB8FB0, sub_1D90298E4, MEMORY[0x1E69E6300]);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D90297F4()
{
  result = qword_1ECAB8F98;
  if (!qword_1ECAB8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F98);
  }

  return result;
}

uint64_t sub_1D902986C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8FA8, &qword_1D91A7A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90298E4()
{
  result = qword_1ECAB8FB8;
  if (!qword_1ECAB8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8FB8);
  }

  return result;
}

void *RecommendationModuleAttributes.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FC0, &qword_1D91A7A88);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  *&v1[OBJC_IVAR___MTRecommendationModuleAttributes_title] = 0;
  v9 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
  *&v1[OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes] = 0;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90297F4();
  v27 = v7;
  v11 = v28;
  v12 = ObjectType;
  sub_1D9179EEC();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v8;
    v24 = v9;
    v13 = v25;
    type metadata accessor for RecommendationModuleTitle();
    v31 = 0;
    sub_1D9029CA8(&qword_1ECAB8FC8, v14, type metadata accessor for RecommendationModuleTitle, &protocol conformance descriptor for RecommendationModuleTitle);
    v15 = v26;
    sub_1D917989C();
    v16 = v30;
    v17 = v28;
    swift_beginAccess();
    v18 = *&v2[v17];
    *&v2[v17] = v16;
    v19 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FA8, &qword_1D91A7A80);
    LOBYTE(v30) = 1;
    sub_1D902986C(&qword_1ECAB8FD0, sub_1D9029CF0, MEMORY[0x1E69E6330]);
    sub_1D917989C();
    v21 = v32;
    v22 = v24;
    swift_beginAccess();
    *&v2[v22] = v21;

    v29.receiver = v2;
    v29.super_class = v12;
    v10 = objc_msgSendSuper2(&v29, sel_init);
    (*(v13 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v10;
}

uint64_t sub_1D9029CA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1D9029CF0()
{
  result = qword_1ECAB8FD8;
  if (!qword_1ECAB8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8FD8);
  }

  return result;
}

uint64_t RecommendationModuleTitle.stringForDisplay.getter()
{
  v1 = (v0 + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double RecommendationModuleTitle.stringForDisplay.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id RecommendationModuleTitle.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1D902A068(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D91D2F90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D902A0FC(uint64_t a1)
{
  v2 = sub_1D902A2F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902A138(uint64_t a1)
{
  v2 = sub_1D902A2F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double RecommendationModuleTitle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FE8, &qword_1D91A7A90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902A2F8();
  sub_1D9179F1C();
  swift_beginAccess();

  sub_1D917994C();
  (*(v3 + 8))(v5, v2);

  return result;
}

unint64_t sub_1D902A2F8()
{
  result = qword_1ECAB8FF0;
  if (!qword_1ECAB8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8FF0);
  }

  return result;
}

void *RecommendationModuleTitle.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FF8, &qword_1D91A7A98);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v15 - v6;
  v8 = &v1[OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay];
  *v8 = 0;
  v8[1] = 0;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902A2F8();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v17;
    v12 = sub_1D917984C();
    v14 = v13;
    swift_beginAccess();
    *v8 = v12;
    v8[1] = v14;

    v16.receiver = v3;
    v16.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v16, sel_init);
    (*(v15 + 8))(v7, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

uint64_t sub_1D902A5B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id RecentlyPlayedModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentlyPlayedModule.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentlyPlayedModule();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D902A720(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double keypath_getTm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

double keypath_get_4Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

unint64_t sub_1D902AC88()
{
  result = qword_1ECAB9000;
  if (!qword_1ECAB9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9000);
  }

  return result;
}

unint64_t sub_1D902ACE0()
{
  result = qword_1ECAB9008;
  if (!qword_1ECAB9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9008);
  }

  return result;
}

unint64_t sub_1D902AD38()
{
  result = qword_1ECAB9010;
  if (!qword_1ECAB9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9010);
  }

  return result;
}

unint64_t sub_1D902AD90()
{
  result = qword_1ECAB9018;
  if (!qword_1ECAB9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9018);
  }

  return result;
}

unint64_t sub_1D902ADE8()
{
  result = qword_1ECAB9020;
  if (!qword_1ECAB9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9020);
  }

  return result;
}

unint64_t sub_1D902AE40()
{
  result = qword_1ECAB9028;
  if (!qword_1ECAB9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9028);
  }

  return result;
}

unint64_t sub_1D902AE98()
{
  result = qword_1ECAB9030;
  if (!qword_1ECAB9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9030);
  }

  return result;
}

unint64_t sub_1D902AEF0()
{
  result = qword_1ECAB9038;
  if (!qword_1ECAB9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9038);
  }

  return result;
}

unint64_t sub_1D902AF48()
{
  result = qword_1ECAB9040;
  if (!qword_1ECAB9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9040);
  }

  return result;
}

uint64_t sub_1D902AF9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73776F6873 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

PodcastsFoundation::RecommendationsDisplayKind_optional __swiftcall RecommendationsDisplayKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecommendationsDisplayKind.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6C656E6E616863;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0x6143656E696C6E69;
    }

    if (*v0)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 2003789939;
    v3 = 0x4865646F73697065;
    if (v1 != 7)
    {
      v3 = 0x6F726548776F6873;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6F77537265776F70;
    if (v1 != 4)
    {
      v4 = 0x6867696C68676968;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D902B368()
{
  result = qword_1ECAB9048;
  if (!qword_1ECAB9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9048);
  }

  return result;
}

uint64_t sub_1D902B3BC()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAA24(v3, v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D902B40C(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  sub_1D8ECAA24(v4, v2);
  return sub_1D9179E1C();
}

unint64_t sub_1D902B45C@<X0>(unint64_t *a1@<X8>)
{
  result = RecommendationsDisplayKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D902B488()
{
  result = qword_1ECAB9050;
  if (!qword_1ECAB9050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9058, &qword_1D91A8040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9050);
  }

  return result;
}

uint64_t ServerCategory.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerCategory.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ServerCategory.__allocating_init(id:type:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}