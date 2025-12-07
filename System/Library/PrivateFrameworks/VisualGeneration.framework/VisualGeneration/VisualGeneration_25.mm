void sub_19A509E70(uint64_t a1, void *a2, void *a3, uint64_t a4, id a5, float a6)
{
  v65 = a3;
  v66 = a4;
  v64 = a2;
  *&v70 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0, &qword_19A58FEB0);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v23 = swift_allocObject();
  v72 = xmmword_19A576E20;
  *(v23 + 16) = xmmword_19A576E20;
  *(v23 + 32) = a6;
  *(v23 + 36) = a6;
  v77 = v23;
  v24 = &unk_19A5905B0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
  v68 = v22;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3268, &qword_19A590B18);
  v26 = swift_allocObject();
  *(v26 + 16) = v72;
  if ((LODWORD(a6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a6 <= -2147500000.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a6 >= 2147500000.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v26 + 32) = a6;
  *(v26 + 36) = a6;
  v77 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3270, &qword_19A590B20);
  sub_19A2F12E4(&qword_1EAFA3278, &qword_1EAFA3270, &qword_19A590B20, MEMORY[0x1E69E6328]);
  v27 = v74;
  sub_19A57264C();
  v28 = Unet.usePORParameters()();
  v25 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
  if (v28)
  {
    v19 = v67;
    (*(v69 + 16))(v10, v27, v67);
    sub_19A2F12E4(&qword_1EAFA3280, &qword_1EAFA30F0, &qword_19A58FEB0, MEMORY[0x1E695FCF0]);
    v29 = sub_19A57351C();
  }

  else
  {
    (*(v76 + 16))(v19, v68, v75);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
    v29 = sub_19A57351C();
    v19 = v67;
  }

  v30 = v71;
  v31 = v70;
  MEMORY[0x1EEE9AC00](v29);
  *(&v64 - 6) = a5;
  *(&v64 - 5) = v32;
  *(&v64 - 4) = v34;
  *(&v64 - 3) = v33;
  *(&v64 - 2) = v35;
  v24 = a5;
  a5 = v32;
  v36 = v30;
  v37 = sub_19A4DAFD8(sub_19A50B534, (&v64 - 8), v31);
  v22 = v36;

  if (v36)
  {

LABEL_13:
    (*(v69 + 8))(v74, v19);
    (*(v76 + 8))(v68, v75);
    return;
  }

  if (!(v37 >> 62))
  {

    sub_19A573FEC();
    goto LABEL_11;
  }

LABEL_37:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
  sub_19A573B8C();

LABEL_11:

  v38 = objc_allocWithZone(MEMORY[0x1E695FE30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
  v39 = sub_19A57307C();

  v40 = [v38 initWithFeatureProviderArray_];

  v41 = v40;
  v42 = sub_19A5096E8(v41, v24);
  if (v22)
  {

    goto LABEL_13;
  }

  v24 = v42;

  v43 = [v24 count];
  v44 = v74;
  if ((v43 & 0x8000000000000000) == 0)
  {
    if (!v43)
    {

      swift_unknownObjectRelease();
      (*(v69 + 8))(v44, v19);
      (*(v76 + 8))(v68, v75);
      return;
    }

    v64 = v41;
    v65 = a5;
    v66 = 0;
    v77 = MEMORY[0x1E69E7CC0];
    *&v72 = v43;
    sub_19A4E436C(0, v43, 0);
    v45 = 0;
    v46 = v77;
    v71 = (v76 + 32);
    v70 = xmmword_19A576E00;
    v73 = v16;
    while (1)
    {
      v16 = v25;
      v47 = v45++;
      v22 = [v24 featuresAtIndex_];
      v25 = [v22 featureNames];
      v48 = sub_19A57337C();
      v19 = v48;
      v49 = 0;
      v50 = 0;
      v51 = 1 << *(v48 + 32);
      while (1)
      {
        v52 = *(v48 + 8 * v50 + 56);
        if (v52)
        {
          break;
        }

        ++v50;
        v49 -= 64;
        if ((v51 + 63) >> 6 == v50)
        {
          goto LABEL_38;
        }
      }

      v53 = __clz(__rbit64(v52));
      if (v53 - v51 == v49)
      {
        break;
      }

      if (-v49 < 0 || (v53 - v49) >= v51)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (((*(v48 + 56 + 8 * (v50 & 0x3FFFFFFFFFFFFFFLL)) >> v53) & 1) == 0)
      {
        goto LABEL_33;
      }

      a5 = v24;

      v54 = sub_19A572CCC();
      v55 = [v22 featureValueForName_];

      if (!v55)
      {
        goto LABEL_41;
      }

      v56 = [v55 multiArrayValue];

      if (!v56)
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
      v57 = swift_allocObject();
      *(v57 + 16) = v70;
      *(v57 + 32) = v56;
      v58 = v56;
      v25 = v16;
      v59 = sub_19A57307C();

      v60 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v59 alongAxis:0 dataType:65568];

      v61 = v73;
      sub_19A57267C();
      swift_unknownObjectRelease();

      v77 = v46;
      v63 = *(v46 + 16);
      v62 = *(v46 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_19A4E436C((v62 > 1), v63 + 1, 1);
        v46 = v77;
      }

      *(v46 + 16) = v63 + 1;
      (*(v76 + 32))(v46 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v63, v61, v75);
      v24 = a5;
      if (v45 == v72)
      {

        swift_unknownObjectRelease();
        (*(v69 + 8))(v74, v67);
        (*(v76 + 8))(v68, v75);
        return;
      }
    }

LABEL_38:

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_19A50A854@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, void *a6@<X6>, uint64_t *a7@<X8>)
{
  v34 = a6;
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v33 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8, &qword_19A58FEE0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A590AB0;
  v35 = a2;
  *(inited + 32) = sub_19A500080(0x656C706D6173, 0xE600000000000000);
  v37 = inited + 32;
  *(inited + 40) = v16;
  v17 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
  sub_19A50BBA8(a1, v14);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
  v18 = sub_19A57351C();
  *(inited + 72) = v17;
  *(inited + 48) = v18;
  *(inited + 80) = sub_19A500080(0x70657473656D6974, 0xE800000000000000);
  *(inited + 88) = v19;
  *(inited + 120) = v17;
  *(inited + 96) = v35;
  *(inited + 128) = sub_19A500080(0xD000000000000015, 0x800000019A59C520);
  *(inited + 136) = v20;
  v21 = *(v36 + 16);
  v21(v11, v38, v9);
  v22 = sub_19A57351C();
  *(inited + 168) = v17;
  *(inited + 144) = v22;
  *(inited + 176) = sub_19A500080(0x626D655F74786574, 0xEB00000000736465);
  *(inited + 184) = v23;
  v21(v11, v39, v9);
  v24 = sub_19A57351C();
  *(inited + 216) = v17;
  *(inited + 192) = v24;
  *(inited + 224) = sub_19A500080(0x7364695F656D6974, 0xE800000000000000);
  *(inited + 232) = v25;
  *(inited + 264) = v17;
  v26 = v40;
  *(inited + 240) = v40;
  v27 = v26;
  v28 = sub_19A330370(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00, &qword_19A578A30);
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v30 = v41;
  result = sub_19A544CF4(v28);
  if (v30)
  {
    *v34 = v30;
  }

  else
  {
    *v33 = result;
  }

  return result;
}

id sub_19A50ABE4(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [a1 predictionsFromBatch:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v2;
}

void sub_19A50ACC8(uint64_t a1)
{
  v2 = [v1 featureNames];
  v3 = sub_19A57337C();

  v13 = MEMORY[0x1E69E7CC8];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = v10[1];
    v12[0] = *v10;
    v12[1] = v11;

    sub_19A50AE54(&v13, v12, v1);
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 56 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
}

void sub_19A50AE54(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v5 = a2[1];

  v6 = sub_19A572CCC();
  v7 = [a3 featureValueForName_];

  sub_19A549AD0(v7, v4, v5);
}

uint64_t *sub_19A50AEE4@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>)
{
  v4 = [a2 featuresAtIndex_];
  ObjectType = swift_getObjectType();
  sub_19A50ACC8(ObjectType);
  v7 = v6;
  result = swift_unknownObjectRelease();
  *a1 = v7;
  return result;
}

uint64_t sub_19A50AF50(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  if (v4)
  {
    return a3;
  }

  v8 = sub_19A5073B4();
  swift_unknownObjectRelease();
  v9 = *(v8 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_19A4E442C(0, v9, 0);
  v10 = 0;
  a3 = v15;
  while (v10 < *(v8 + 16))
  {

    v12 = sub_19A50B908(v11, a4);

    v14 = *(v15 + 16);
    v13 = *(v15 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_19A4E442C((v13 > 1), v14 + 1, 1);
    }

    ++v10;
    *(v15 + 16) = v14 + 1;
    *(v15 + 8 * v14 + 32) = v12;
    if (v9 == v10)
    {

      return a3;
    }
  }

  __break(1u);
  return result;
}

void *sub_19A50B0D4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_19A50B164(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_19A50B1B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s13DiffusionBase4UnetV8chunksAt13configurationACSay10Foundation3URLVG_So20MLModelConfigurationCtcfC_0(uint64_t a1, void *a2)
{
  v36 = sub_19A570EAC();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3098, &unk_19A58FE08);
  MEMORY[0x1EEE9AC00](v35);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v32 = a2;
    v38 = MEMORY[0x1E69E7CC0];
    result = sub_19A573A5C();
    v12 = 0;
    v13 = *(v4 + 80);
    v33 = *(a1 + 16);
    v29 = a1 + ((v13 + 32) & ~v13);
    v30 = a1;
    v27 = v10;
    v28 = v4 + 16;
    v31 = v4;
    v26 = v4 + 32;
    v14 = &byte_1F0DB5930;
    while (v33 != v12)
    {
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_13;
      }

      v20 = v34;
      v19 = v35;
      v21 = *(v35 + 48);
      v22 = v31;
      v23 = *(v31 + 16);
      v24 = v36;
      v23(&v34[v21], v29 + *(v31 + 72) * v12, v36);
      *v7 = v12;
      v25 = *(v19 + 48);
      (*(v22 + 32))(v7 + v25, &v20[v21], v24);
      v23(v37, v7 + v25, v24);
      if (v12 <= 2)
      {
        v16 = *(v14 - 2);
        v15 = *(v14 - 1);
        v17 = *v14;
      }

      else
      {
        v17 = 2;
        v16 = "UnetChunk?";
        v15 = 10;
      }

      ++v12;
      type metadata accessor for ManagedMLModel(0);
      swift_allocObject();
      v18 = v32;
      ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v37, v18, MEMORY[0x1E69E7CC0], v16, v15, v17);
      sub_19A50BCC8(v7);
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      result = sub_19A573A3C();
      v14 += 24;
      a1 = v30;
      if (v27 == v12)
      {

        return v38;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_19A50B55C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
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
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_19A31F6BC(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_19A554C94();
      }
    }

    else
    {
      sub_19A550DC4(v30, v43 & 1);
      v32 = sub_19A31F6BC(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_19A2EA480(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A50B814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_19A50AF50(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_19A50B848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A50B8AC(uint64_t a1)
{
  v2 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A50B908(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3298, &qword_19A595340);
  result = sub_19A573BBC();
  v7 = result;
  v8 = 0;
  v33 = result;
  v34 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v31 = result + 64;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v34 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v34 + 56) + 8 * v19);

      v24 = v23;
      v25 = v37;
      sub_19A56B614(v24, v5);

      v37 = v25;
      if (v25)
      {
        break;
      }

      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v26 = v32;
      v7 = v33;
      v27 = (*(v33 + 48) + 16 * v19);
      *v27 = v21;
      v27[1] = v22;
      result = sub_19A50BB44(v5, *(v7 + 56) + *(v26 + 72) * v19);
      v28 = *(v7 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v7 + 16) = v30;
      v14 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }

    v7 = v33;

    return v7;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A50BB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A50BBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8, &qword_19A58FEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A50BC58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32A0, &qword_19A590B28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A50BCC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3098, &unk_19A58FE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AppleDiffusionPipeline.adaptedPiplineCopy(adapter:)(const char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v137 = a1;
  v135 = a2;
  v151 = sub_19A570EAC();
  v138 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v5 = &v106[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v106[-v7];
  v9 = type metadata accessor for AppleDiffusionPipeline(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v106[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AppleDiffusionUnet(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v139;
  sub_19A4F071C(v137, &unk_1F0DB6090, v14);
  if (v15)
  {
    return;
  }

  v114 = v12;
  v115 = v8;
  v139 = v5;
  v119 = 0;
  v16 = v9[7];
  v17 = (v2 + v9[6]);
  v18 = *v17;
  v124 = v17[1];
  v125 = v18;
  v19 = v17[2];
  v122 = v17[3];
  v123 = v19;
  v20 = *(v2 + v16);
  v133 = *(v2 + v16 + 8);
  v134 = v20;
  v21 = *(v2 + v16 + 16);
  v22 = *(v2 + v16 + 24);
  v23 = *(v2 + v9[8]);
  v24 = (v2 + v9[9]);
  v121 = *v24;
  v25 = v24[2];
  v136 = v24[1];
  v137 = v21;
  v26 = v9[11];
  v27 = (v3 + v9[10]);
  v28 = v27[1];
  v129 = *v27;
  v29 = v129;
  v130 = v22;
  v127 = v27[2];
  v30 = v127;
  v128 = v28;
  v32 = v27[3];
  v31 = v27[4];
  v126 = v32;
  v132 = v31;
  LODWORD(v120) = *(v3 + v26);
  v33 = v135;
  v135[3] = v9;
  v33[4] = &protocol witness table for AppleDiffusionPipeline;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v9[5];
  v34 = v9[6];
  v131 = v14;
  v36 = &v11[v34];
  v37 = v9[10];
  v38 = v9[11];
  v140 = v11;
  v39 = &v11[v37];
  v117 = v35;
  sub_19A50CF18(v131, &v140[v35]);
  v41 = v124;
  v40 = v125;
  *v36 = v125;
  v36[1] = v41;
  v43 = v122;
  v42 = v123;
  v36[2] = v123;
  v36[3] = v43;
  v44 = &v140[v9[7]];
  v45 = v133;
  *v44 = v134;
  v44[1] = v45;
  v46 = v130;
  v44[2] = v137;
  v44[3] = v46;
  *&v140[v9[8]] = v23;
  v47 = &v140[v9[9]];
  v48 = v136;
  *v47 = v121;
  v47[1] = v48;
  v47[2] = v25;
  *v39 = v29;
  v49 = v128;
  v39[1] = v128;
  v39[2] = v30;
  v50 = v126;
  v51 = v132;
  v39[3] = v126;
  v39[4] = v51;
  v140[v38] = v120;
  v137 = "GenerativePlayground";
  v52 = v9[12];
  sub_19A4E92AC(v40, v41, v42, v43);

  v120 = v23;

  v118 = v25;

  sub_19A4E9344(v129, v49, v127, v50, v132);
  v116 = v52;
  v53 = v131;
  sub_19A57235C();
  v54 = *(v53 + 208);
  v55 = v54 >> 62;
  if (v54 >> 62)
  {
    v56 = sub_19A573B4C();
  }

  else
  {
    v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v151;
  if (!v56)
  {
    goto LABEL_10;
  }

  v137 = (v54 & 0xC000000000000001);
  if ((v54 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x19A901520](0, v54);
  }

  else
  {
    if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v58 = *(v54 + 32);
  }

  sub_19A52C5EC(v58 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v147);
  memcpy(v148, v147, sizeof(v148));
  if (sub_19A4E6F10(v148) == 1)
  {

LABEL_10:
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v59 = sub_19A5723FC();
    __swift_project_value_buffer(v59, qword_1ED82BD48);
    v60 = sub_19A5723DC();
    v61 = sub_19A57355C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_19A2DE000, v60, v61, "Unable to get unet user metadata", v62, 2u);
      MEMORY[0x19A902C50](v62, -1, -1);
    }

    sub_19A4E6F34();
    swift_allocError();
    *v63 = xmmword_19A577090;
    *(v63 + 16) = 5;
    swift_willThrow();
    v64 = v135;
    goto LABEL_15;
  }

  memcpy(v145, v148, sizeof(v145));
  memcpy(v146, v148, sizeof(v146));
  v67 = sub_19A489468(v146);
  v136 = v54;
  v109 = v58;
  if (v67 == 1)
  {
    v107 = 0;
    v108 = 0;
    goto LABEL_34;
  }

  if (v146[1] != 1)
  {
    v68 = v146[2];
    v69 = v146[3];

    v70 = v119;
    if (!v69)
    {
      v108 = 0;
      goto LABEL_31;
    }

    if (v68 == 7168876 && v69 == 0xE300000000000000)
    {
      HIDWORD(v108) = 1;
    }

    else
    {
      HIDWORD(v108) = sub_19A573F1C();
      if (v68 == 0x776F6C662D6D636CLL && v69 == 0xE800000000000000)
      {
        LODWORD(v108) = 1;
        goto LABEL_29;
      }
    }

    LODWORD(v108) = sub_19A573F1C();
LABEL_29:

    goto LABEL_30;
  }

  v108 = 0;
LABEL_30:
  v70 = v119;
LABEL_31:
  v71 = v145[28];
  if (v145[28])
  {
    *v144 = 1634889580;
    *&v144[8] = 0xE400000000000000;
    MEMORY[0x1EEE9AC00](v67);
    *&v106[-16] = v144;

    v107 = sub_19A374F10(sub_19A2F13CC, &v106[-32], v71);
    v119 = v70;

    v53 = v131;
  }

  else
  {
    v107 = 0;
  }

LABEL_34:
  v112 = sub_19A4E6FD0(&unk_1F0DB60B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C08, &unk_19A58F1E0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_19A57A9D0;
  v110 = 4;
  *(v72 + 32) = 4;
  *(v72 + 36) = 0x3ECCCCCD00000000;
  *(v72 + 44) = 5;
  *(v72 + 48) = 0x3ECCCCCD00000000;
  *(v72 + 56) = 6;
  *(v72 + 60) = 0x3ECCCCCD00000000;
  *(v72 + 68) = 7;
  *(v72 + 72) = 0x3ECCCCCD00000000;
  v111 = sub_19A4E70BC(v72);
  swift_setDeallocating();
  swift_deallocClassInstance();
  memcpy(v144, v145, sizeof(v144));
  if (sub_19A489468(v144) == 1)
  {
    v73 = v139;
    v74 = v114;
    v75 = v115;
    goto LABEL_48;
  }

  *&v143[96] = *&v144[128];
  *&v143[112] = *&v144[144];
  *&v143[128] = *&v144[160];
  *&v143[141] = *&v144[173];
  *&v143[48] = *&v144[80];
  *&v143[64] = *&v144[96];
  *&v143[80] = *&v144[112];
  *v143 = *&v144[32];
  *&v143[16] = *&v144[48];
  *&v143[32] = *&v144[64];
  if (sub_19A4E7208(v143) != 1)
  {
    v149[6] = *&v143[96];
    v149[7] = *&v143[112];
    v150[0] = *&v143[128];
    *(v150 + 13) = *&v143[141];
    v149[2] = *&v143[32];
    v149[3] = *&v143[48];
    v149[4] = *&v143[64];
    v149[5] = *&v143[80];
    v149[0] = *v143;
    v149[1] = *&v143[16];
    sub_19A33546C(&v144[32], v142, &unk_1EAFA2C20, &qword_19A590B50);
    v77 = v119;
    sub_19A4E7350(v149);
    if (v77)
    {

      sub_19A2F3FA0(&v144[32], &unk_1EAFA2C20, &qword_19A590B50);
      sub_19A2F3FA0(v147, &unk_1EAFA2C10, &unk_19A590B40);
      v64 = v135;
LABEL_15:
      sub_19A50D07C(v53, type metadata accessor for AppleDiffusionUnet);
      v65 = v140;
      sub_19A50D07C(&v140[v117], type metadata accessor for AppleDiffusionUnet);
      sub_19A4E6F88(v125, v124, v123, v122);

      sub_19A50CF7C(v129, v128, v127, v126, v132);
      v66 = sub_19A57236C();
      (*(*(v66 - 8) + 8))(&v65[v116], v66);
      __swift_deallocate_boxed_opaque_existential_1(v64);
      return;
    }

    v82 = v78;
    v83 = v79;
    sub_19A2F3FA0(&v144[32], &unk_1EAFA2C20, &qword_19A590B50);

    v84 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v84;
    sub_19A4E4104(v82, sub_19A4E6E50, 0, isUniquelyReferenced_nonNull_native, v142);

    v112 = v142[0];
    v86 = v111;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v86;
    v76 = 0;
    sub_19A4E3EDC(v83, sub_19A4E6E3C, 0, v87, v142);
    v111 = v142[0];
    v73 = v139;
    v74 = v114;
    v75 = v115;
    if ((v145[36] & 0x10000) != 0)
    {
      goto LABEL_43;
    }

    v80 = v145[33];
    v81 = v145[34];
LABEL_45:
    v119 = v76;
    if (v81)
    {
      v80 = 4;
    }

    goto LABEL_47;
  }

  v73 = v139;
  if ((v145[36] & 0x10000) == 0)
  {
    v80 = v145[33];
    v81 = v145[34];
    v76 = v119;
    v74 = v114;
    v75 = v115;
    goto LABEL_45;
  }

  v76 = v119;
  v74 = v114;
  v75 = v115;
LABEL_43:
  v119 = v76;
  v80 = 4;
LABEL_47:
  v110 = v80;
LABEL_48:
  sub_19A33546C(v53 + *(v74 + 24), v75, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v88 = type metadata accessor for ConcreteAdapter(0);
  if ((*(*(v88 - 8) + 48))(v75, 1, v88) == 1)
  {
    sub_19A2F3FA0(v75, &unk_1EAFA2BF0, &qword_19A58F1D0);
    LODWORD(v135) = 11;
    v89 = v136;
    if (v55)
    {
      goto LABEL_50;
    }
  }

  else
  {
    LODWORD(v135) = *v75;
    sub_19A50D07C(v75, type metadata accessor for ConcreteAdapter);
    v89 = v136;
    if (v55)
    {
LABEL_50:
      v90 = sub_19A573B4C();
      if (v90)
      {
        goto LABEL_51;
      }

      goto LABEL_62;
    }
  }

  v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v90)
  {
LABEL_51:
    *v143 = MEMORY[0x1E69E7CC0];
    sub_19A4E432C(0, v90 & ~(v90 >> 63), 0);
    if ((v90 & 0x8000000000000000) == 0)
    {
      v91 = 0;
      v92 = *v143;
      v93 = v138;
      v94 = (v138 + 16);
      do
      {
        if (v137)
        {
          v95 = MEMORY[0x19A901520](v91, v136);
          (*v94)(v73, v95 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v57);
          v93 = v138;
          swift_unknownObjectRelease();
        }

        else
        {
          (*v94)(v73, *(v136 + 8 * v91 + 32) + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v57);
        }

        *v143 = v92;
        v97 = *(v92 + 16);
        v96 = *(v92 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_19A4E432C((v96 > 1), v97 + 1, 1);
          v93 = v138;
          v92 = *v143;
        }

        ++v91;
        *(v92 + 16) = v97 + 1;
        v98 = v92 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v97;
        v73 = v139;
        v57 = v151;
        (*(v93 + 32))(v98, v139, v151);
      }

      while (v90 != v91);

      goto LABEL_63;
    }

LABEL_71:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_62:

  v92 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v99 = v140;
  memcpy(v143, v145, sizeof(v143));
  if (sub_19A489468(v143) == 1)
  {
    sub_19A2F3FA0(v147, &unk_1EAFA2C10, &unk_19A590B40);
    v100 = 0;
  }

  else
  {
    memcpy(v142, v145, sizeof(v142));
    sub_19A4895B4(v142, &v141);
    sub_19A2F3FA0(v147, &unk_1EAFA2C10, &unk_19A590B40);
    v100 = *&v143[232];

    sub_19A2F3FA0(v145, &qword_1EAFA2510, &unk_19A58F1F0);
  }

  v101 = BYTE4(v108) & 1;
  v102 = v108 & 1;
  v103 = v107 & 1;
  sub_19A50D07C(v131, type metadata accessor for AppleDiffusionUnet);
  *v99 = v101;
  *(v99 + 1) = v102;
  *(v99 + 2) = v103;
  *(v99 + 3) = v135;
  v104 = v111;
  *(v99 + 8) = v112;
  *(v99 + 16) = v104;
  v105 = v110;
  *(v99 + 24) = v92;
  *(v99 + 32) = v105;
  *(v99 + 40) = v100;
  sub_19A50D018(v99, boxed_opaque_existential_1);
}

uint64_t _s13DiffusionBase05AppleA8PipelineV16supportsAdaptersSbyFZ_0()
{
  if (qword_1ED824F98 != -1)
  {
    swift_once();
  }

  v0 = off_1ED824FA0;

  os_unfair_lock_lock(v0 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
  }

  else
  {
    type metadata accessor for AppleDiffusionResourceFactory(0);
    swift_allocObject();
    v2 = sub_19A561E50();
    swift_weakAssign();
  }

  os_unfair_lock_unlock(v0 + 6);

  v3 = *(v2 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_modelDescription);

  if (!*(v3 + 16) || (v4 = sub_19A31FCAC(0), (v5 & 1) == 0))
  {

    v6 = 0;
    goto LABEL_14;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (!v6)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v7 = [v6 metadata];
  type metadata accessor for MLModelMetadataKey(0);
  sub_19A50D0DC();
  v8 = sub_19A572AFC();

  if (!*(v8 + 16) || (v9 = sub_19A4F39EC(*MEMORY[0x1E695FDB0]), (v10 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_19A334618(*(v8 + 56) + 32 * v9, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290, &qword_19A582DF0);
  if (swift_dynamicCast())
  {
    v11 = v21[0];
  }

  else
  {
    v11 = 0;
  }

LABEL_15:
  sub_19A52E514(v11, v22);

  memcpy(v20, v22, sizeof(v20));
  memcpy(v21, v22, 0x168uLL);
  v14 = sub_19A489468(v21);
  if (v14 == 1)
  {

    sub_19A4F75E8(v22);
  }

  else
  {
    memcpy(v19, v20, sizeof(v19));
    sub_19A4895B4(v19, v18);
    sub_19A4F75E8(v22);
    v15 = v21[28];

    v16 = sub_19A2F3FA0(v20, &qword_1EAFA2510, &unk_19A58F1F0);
    if (v15)
    {
      v18[0] = 1634889580;
      v18[1] = 0xE400000000000000;
      MEMORY[0x1EEE9AC00](v16);
      v17[2] = v18;
      v12 = sub_19A374F10(sub_19A50D134, v17, v15);

      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_19A50CF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleDiffusionUnet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_19A50CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x19A902C50);
  }

  return result;
}

uint64_t sub_19A50D018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleDiffusionPipeline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A50D07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A50D0DC()
{
  result = qword_1ED823ED0;
  if (!qword_1ED823ED0)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823ED0);
  }

  return result;
}

void sub_19A50D150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_19A4E450C(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_19A57389C();
    v5 = 0;
    v30 = *(v2 + 36);
    v25 = v2 + 72;
    v26 = v1;
    v27 = v2 + 64;
    v28 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v30 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v29 = v5;
      v8 = (*(v2 + 48) + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      v11 = *(*(v2 + 56) + 8 * v4);

      v12 = v11;
      v13 = [v12 multiArrayValue];
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = v13;

      v16 = *(v31 + 16);
      v15 = *(v31 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_19A4E450C((v15 > 1), v16 + 1, 1);
      }

      *(v31 + 16) = v16 + 1;
      v17 = (v31 + 24 * v16);
      v17[4] = v9;
      v17[5] = v10;
      v17[6] = v14;
      v2 = v28;
      v6 = 1 << *(v28 + 32);
      if (v4 >= v6)
      {
        goto LABEL_25;
      }

      v3 = v27;
      v18 = *(v27 + 8 * v7);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_26;
      }

      if (v30 != *(v28 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7 << 6;
        v21 = v7 + 1;
        v22 = (v25 + 8 * v7);
        while (v21 < (v6 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_19A2F1470(v4, v30, 0);
            v6 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_19A2F1470(v4, v30, 0);
      }

LABEL_4:
      v5 = v29 + 1;
      v4 = v6;
      if (v29 + 1 == v26)
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
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

unint64_t AppleDiffusionSketchConditioner.Error.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000029;
  if (a1 > 3u)
  {
    v5 = 0xD00000000000001ELL;
    if (a1 == 6)
    {
      v5 = 0xD000000000000029;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000023;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (a1 != 2)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD000000000000032;
    if (!a1)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_19A50D56C@<X0>(Swift::String *a1@<X0>, DiffusionBase::AppleDiffusionSketchConditioner::Error_optional *a2@<X8>)
{
  result = _s13DiffusionBase05AppleA17SketchConditionerV5ErrorO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

const char *sub_19A50D59C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "rInputDescriptionNotFound";
  v4 = 0xD00000000000001ELL;
  if (v2 == 6)
  {
    v4 = 0xD000000000000029;
  }

  else
  {
    v3 = "rInputConstraintsNotFound";
  }

  v5 = "unsupportedInputShape";
  v6 = 0xD000000000000023;
  if (v2 != 4)
  {
    v6 = 0xD000000000000029;
    v5 = "ditionerDescription";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "sampleInputShapeNotCorrect";
  v8 = 0xD000000000000016;
  if (v2 != 2)
  {
    v8 = 0xD000000000000015;
  }

  result = "unsupportedStyleAdapterForSketchConditioningVector";
  if (v2 != 2)
  {
    v7 = "ConditioningVector";
  }

  v10 = 0xD000000000000032;
  if (*v1)
  {
    v11 = "missingScribbleEdgeBuffer";
  }

  else
  {
    v10 = 0xD000000000000019;
    v11 = "tConstraintsNotFound";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t AppleDiffusionSketchConditioner.init(modelAt:configuration:)(uint64_t a1, void *a2)
{
  v4 = sub_19A570EAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v9 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v8, a2, MEMORY[0x1E69E7CC0], "local_conditioning_producer_scribble", 36, 2);
  (*(v5 + 8))(a1, v4);
  return v9;
}

id sub_19A50D7B4(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  sub_19A33546C(a3, &v23 - v7, &qword_1EAFA3300, &qword_19A577470);
  v9 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9) == 1)
  {
    sub_19A2F3FA0(v8, &qword_1EAFA3300, &qword_19A577470);
    v10 = [objc_opt_self() defaultOptions];
  }

  else
  {
    v10 = [objc_opt_self() defaultOptions];
    v11 = v8[v9[6]];
    v12 = v9[8];
    v23 = v8[v9[7]];
    v24 = v11;
    v25 = a1;
    v13 = v8[v12];
    v14 = objc_allocWithZone(MEMORY[0x1E695FE88]);
    v15 = a2;
    v16 = sub_19A570DEC();
    v17 = sub_19A572CCC();
    v18 = [v14 initWithOutputDirectory:v16 prefix:v17 shouldOverwrite:v24 modelIOFrameData:v23 segmentIOFrameData:v13];

    a2 = v15;
    [v10 setInferenceFrameDataSerialization_];

    a1 = v25;
    sub_19A5068AC(v8);
  }

  v26[0] = 0;
  v19 = [a1 predictionFromFeatures:a2 options:v10 error:v26];

  if (v19)
  {
    v20 = v26[0];
  }

  else
  {
    v21 = v26[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v19;
}

void sub_19A50DAC0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = [a1 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v9 = sub_19A572AFC();

  if (*(v9 + 16))
  {
    sub_19A31F6BC(a2, a3);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11 & 1;
}

void sub_19A50DBA4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v9 = sub_19A572AFC();
  if (*(v9 + 16) && (v10 = sub_19A31F6BC(a2, a3), (v11 & 1) != 0))
  {
    v12 = v10;

    v13 = *(*(v9 + 56) + 8 * v12);

    v14 = [v13 type];

    *a4 = v14;
  }

  else
  {

    __break(1u);
  }
}

void sub_19A50DCB4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v9 = sub_19A572AFC();
  if (*(v9 + 16) && (v10 = sub_19A31F6BC(a2, a3), (v11 & 1) != 0))
  {
    v12 = v10;

    v13 = *(*(v9 + 56) + 8 * v12);

    v14 = [v13 multiArrayConstraint];

    if (v14)
    {
      v15 = [v14 shape];

      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      v14 = sub_19A57308C();
    }

    *a4 = v14;
  }

  else
  {

    __break(1u);
  }
}

void sub_19A50DE1C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v9 = sub_19A572AFC();

  if (*(v9 + 16) && (v10 = sub_19A31F6BC(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    v13 = [v12 multiArrayConstraint];

    if (v13)
    {
      v14 = [v13 shape];

      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      v13 = sub_19A57308C();
    }
  }

  else
  {

    v13 = 0;
  }

  *a4 = v13;
}

void static AppleDiffusionSketchConditioner.getInputImageDimensions()()
{
  if (qword_1ED824F98 != -1)
  {
    swift_once();
  }

  v1 = off_1ED824FA0;

  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
  }

  else
  {
    type metadata accessor for AppleDiffusionResourceFactory(0);
    swift_allocObject();
    v28 = sub_19A561E50();
    if (v0)
    {
      os_unfair_lock_unlock(v1 + 6);

      return;
    }

    v3 = v28;
    swift_weakAssign();
  }

  os_unfair_lock_unlock(v1 + 6);

  v4 = *(v3 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_modelDescription);

  if (!*(v4 + 16) || (v5 = sub_19A31FCAC(7), (v6 & 1) == 0))
  {

    sub_19A5103E8();
    swift_allocError();
    *v27 = 4;
    swift_willThrow();
    return;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  v8 = sub_19A50E55C();
  if (v0)
  {
    goto LABEL_34;
  }

  v9 = v8;
  if (v8)
  {
    v10 = 0xEC0000006567616DLL;
  }

  else
  {
    v10 = 0xEE00726F6C6F635FLL;
  }

  v11 = [v7 inputDescriptionsByName];
  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v12 = sub_19A572AFC();

  if (!*(v12 + 16))
  {

LABEL_31:

    sub_19A5103E8();
    swift_allocError();
    *v29 = 5;
    swift_willThrow();
LABEL_34:

    return;
  }

  if (v9)
  {
    v13 = 0x695F686374656B73;
  }

  else
  {
    v13 = 0x656C626269726373;
  }

  v14 = sub_19A31F6BC(v13, v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  v17 = *(*(v12 + 56) + 8 * v14);

  v18 = [v17 valueConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32C0, &qword_19A590BB0);
  v19 = sub_19A572AFC();

  if (!*(v19 + 16) || (sub_19A31F6BC(0xD000000000000016, 0x800000019A59CF20), (v20 & 1) == 0))
  {

LABEL_33:
    sub_19A5103E8();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();

    goto LABEL_34;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v22 = [v21 shape];
  sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
  v23 = sub_19A57308C();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

  if (sub_19A573B4C() != 4)
  {
LABEL_40:

    sub_19A5103E8();
    swift_allocError();
    *v32 = 7;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_34;
  }

LABEL_21:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x19A901520](3, v23);
  }

  else
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      __break(1u);
      goto LABEL_43;
    }

    v24 = *(v23 + 56);
  }

  v25 = v24;
  [v24 integerValue];

  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x19A901520](2, v23);
LABEL_38:
    v31 = v26;

    [v31 integerValue];

    swift_unknownObjectRelease();
    return;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v26 = *(v23 + 48);
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
}

void sub_19A50E4BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, void *)@<X3>, char *a5@<X4>, _BYTE *a6@<X8>)
{
  v13 = MEMORY[0x19A902330]();
  sub_19A548A50(a1, a2, a3, a4, a5);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    *a6 = v15 & 1;
  }
}

uint64_t sub_19A50E55C()
{
  if (qword_1ED824F98 != -1)
  {
    swift_once();
  }

  v1 = off_1ED824FA0;

  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
  }

  else
  {
    type metadata accessor for AppleDiffusionResourceFactory(0);
    LOBYTE(v3) = swift_allocObject();
    v14 = sub_19A561E50();
    if (v0)
    {
      os_unfair_lock_unlock(v1 + 6);

      return v3 & 1;
    }

    v3 = v14;
    swift_weakAssign();
  }

  os_unfair_lock_unlock(v1 + 6);

  v4 = *(v3 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_modelDescription);

  if (*(v4 + 16) && (LOBYTE(v3) = v4, v5 = sub_19A31FCAC(7), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = [v7 inputDescriptionsByName];
    sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
    v9 = sub_19A572AFC();

    if (*(v9 + 16) && (v10 = sub_19A31F6BC(0x776F6C666B726F77, 0xE800000000000000), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {

      v12 = 0;
    }

    LOBYTE(v3) = v12 != 0;
  }

  else
  {

    sub_19A5103E8();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }

  return v3 & 1;
}

uint64_t sub_19A50E78C()
{
  v0 = 0x695F686374656B73;
  if ((sub_19A50E55C() & 1) == 0)
  {
    return 0x656C626269726373;
  }

  return v0;
}

id *sub_19A50E94C(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), id *a6, float a7)
{
  v159 = a5;
  LODWORD(v160) = a4;
  v163 = a3;
  *&v164 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v156 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v162 = &v156 - v17;
  v18 = sub_19A50E78C();
  v20 = v19;
  v172[2] = v18;
  v172[3] = v19;
  v21 = *(a6 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v168 = 0;
  v169 = 0;
  v166 = a6;
  v167 = a6;
  v170 = sub_19A5105F4;
  v171 = v172;
  type metadata accessor for MLFeatureType(0);
  v165 = v21;
  sub_19A5735DC();
  if (!v7)
  {

    if (v173 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19A576E10;
      *(inited + 32) = sub_19A50E78C();
      v33 = inited + 32;
      *(inited + 40) = v37;
      type metadata accessor for CVBuffer(0);
      *(inited + 72) = v38;
      *(inited + 48) = a1;
      v39 = a1;
      v158 = sub_19A330370(inited);
LABEL_13:
      swift_setDeallocating();
      v40 = sub_19A2F3FA0(v33, &qword_1EAFA2F00, &qword_19A578A30);
      v156 = v14;
      MEMORY[0x1EEE9AC00](v40);
      *(&v156 - 5) = 0;
      *(&v156 - 4) = 0;
      *(&v156 - 6) = v166;
      *(&v156 - 3) = sub_19A50DA8C;
      *(&v156 - 2) = 0;
      sub_19A5735DC();
      v157 = a1;
      if (v173)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_19A58F190;
        sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
        *(v41 + 32) = sub_19A57372C();
        v42 = v163;
        *(v41 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v43 = objc_allocWithZone(MEMORY[0x1E695FED0]);
        v44 = sub_19A52A8D8(v41, 65568);
        MEMORY[0x1EEE9AC00](v44);
        *(&v156 - 2) = v42;
        sub_19A5734FC();
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_19A576E00;
        *(v45 + 32) = v44;
        v46 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
        v47 = v44;
        v48 = sub_19A57307C();

        v49 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v48 alongAxis:0 dataType:65552];

        v175 = v46;
        *&v173 = v49;
        sub_19A3355EC(&v173, v178);
        v50 = v49;
        v51 = v158;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v177 = v51;
        sub_19A33D694(v178, 0x65765F656C797473, 0xEC000000726F7463, isUniquelyReferenced_nonNull_native);

        v158 = v177;
      }

      sub_19A33546C(v164, v12, &qword_1EAFA2630, &qword_19A58F840);
      v53 = v156;
      if (v156[6](v12, 1, v13) == 1)
      {
        v54 = sub_19A2F3FA0(v12, &qword_1EAFA2630, &qword_19A58F840);
        v55 = v158;
      }

      else
      {
        v56 = v162;
        v53[4](v162, v12, v13);
        v57 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
        v53[2](v161, v56, v13);
        sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
        v58 = sub_19A57351C();
        v175 = v57;
        *&v173 = v58;
        sub_19A3355EC(&v173, v178);
        v59 = v158;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v177 = v59;
        sub_19A33D694(v178, 0x746E6574616CLL, 0xE600000000000000, v60);
        v54 = (v53[1])(v56, v13);
        v55 = v177;
      }

      v20 = &v156;
      MEMORY[0x1EEE9AC00](v54);
      *(&v156 - 2) = 0x776F6C666B726F77;
      *(&v156 - 1) = 0xE800000000000000;
      MEMORY[0x1EEE9AC00](v61);
      *(&v156 - 5) = 0;
      *(&v156 - 4) = 0;
      *(&v156 - 6) = v166;
      *(&v156 - 3) = sub_19A51065C;
      *(&v156 - 2) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32D8, &qword_19A590CF8);
      sub_19A5735DC();
      v63 = v173;
      if (!v173)
      {
        goto LABEL_34;
      }

      if (v173 >> 62)
      {
        v20 = v173;
        v64 = sub_19A573B4C();
      }

      else
      {
        v64 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v64 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DD0, &unk_19A58F720);
        v76 = swift_initStackObject();
        v164 = xmmword_19A576E10;
        *(v76 + 16) = xmmword_19A576E10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70, &unk_19A578A20);
        v77 = swift_allocObject();
        *(v77 + 16) = v164;
        v78 = 2;
        if ((v160 & 1) == 0)
        {
          v78 = 0;
        }

        *(v77 + 32) = v78;
        *(v76 + 32) = v77;
        sub_19A4E2F80(v76);
        swift_setDeallocating();
        sub_19A2F3FA0(v76 + 32, &qword_1EAFA2DD8, &qword_19A5930A0);
        v79 = objc_allocWithZone(MEMORY[0x1E695FED0]);
        v80 = sub_19A57307C();

        v81 = [v79 initWithArray:v80 dataType:65552];

        v175 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
        *&v173 = v81;
        goto LABEL_33;
      }

      if (v64 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_19A576E10;
        v66 = 2;
        if ((v160 & 1) == 0)
        {
          v66 = 0;
        }

        *(v65 + 56) = MEMORY[0x1E69E6530];
        *(v65 + 32) = v66;
        v67 = objc_allocWithZone(MEMORY[0x1E695FED0]);
        v68 = sub_19A57307C();

        v69 = [v67 initWithArray:v68 dataType:65552];

        v175 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
        *&v173 = v69;
LABEL_33:
        sub_19A3355EC(&v173, v178);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v177 = v55;
        v63 = sub_19A33D694(v178, 0x776F6C666B726F77, 0xE800000000000000, v82);
        v55 = v177;
LABEL_34:
        MEMORY[0x1EEE9AC00](v63);
        *(&v156 - 5) = 0;
        *(&v156 - 4) = 0;
        *(&v156 - 6) = v166;
        *(&v156 - 3) = sub_19A50DA54;
        *(&v156 - 2) = 0;
        v83 = sub_19A5735DC();
        if ((v173 & 1) == 0)
        {
LABEL_40:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_19A58F190;
          sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
          *(v89 + 32) = sub_19A57372C();
          *(v89 + 40) = sub_19A57372C();
          v90 = objc_allocWithZone(MEMORY[0x1E695FED0]);
          v91 = sub_19A52A8D8(v89, 65568);
          v92 = sub_19A57334C();
          [v91 fillWithNumber_];

          v93 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
          v175 = v93;
          *&v173 = v91;
          sub_19A3355EC(&v173, v178);
          v94 = v91;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v177 = v55;
          sub_19A33D694(v178, 0xD000000000000011, 0x800000019A59CF80, v95);
          v12 = v177;
          v96 = objc_allocWithZone(MEMORY[0x1E695FE48]);

          v98 = sub_19A544CF4(v97);
          v163 = v93;
          MEMORY[0x1EEE9AC00](v98);
          *&v164 = v99;
          v100 = v159;
          *(&v156 - 2) = v99;
          *(&v156 - 1) = v100;
          MEMORY[0x1EEE9AC00](v99);
          *(&v156 - 4) = sub_19A51069C;
          *(&v156 - 3) = v101;
          *(&v156 - 2) = v166;
          MEMORY[0x1EEE9AC00](v102);
          *(&v156 - 5) = 0;
          *(&v156 - 4) = 0;
          *(&v156 - 6) = v103;
          *(&v156 - 3) = sub_19A4EAD80;
          *(&v156 - 2) = v104;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0, &unk_19A58F710);
          sub_19A5735DC();
          v105 = 0;
          v106 = sub_19A56D50C(v173);

          v20 = v106[2];
          v165 = v94;
          if (v20)
          {
            v107 = sub_19A31EE78(v20, 0);
            v166 = sub_19A54607C(&v173, v107 + 4, v20, v106);
            v94 = v173;
            v161 = v175;
            v162 = v174;
            v160 = v176;
            swift_bridgeObjectRetain_n();
            sub_19A2EA480(v94);
            if (v166 != v20)
            {
LABEL_104:
              __break(1u);
              goto LABEL_105;
            }

            v94 = v165;
          }

          else
          {

            v107 = MEMORY[0x1E69E7CC0];
          }

          *&v173 = v107;
          sub_19A516A34(&v173);
          v108 = 0;

          v109 = v173;
          v20 = MEMORY[0x1E69E7CC0];
          *&v173 = MEMORY[0x1E69E7CC0];
          v110 = v109[2];
          v166 = v109;
          if (v110)
          {
            v162 = 0;
            v105 = 0;
            v94 = v109 + 5;
            while (1)
            {
              if (v105 >= v109[2])
              {
                __break(1u);
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }

              if (!v106[2])
              {
                goto LABEL_102;
              }

              v111 = *(v94 - 1);
              v20 = *v94;

              v21 = v106;
              v112 = sub_19A31F6BC(v111, v20);
              if ((v113 & 1) == 0)
              {
                goto LABEL_103;
              }

              v114 = [*(v106[7] + 8 * v112) multiArrayValue];
              if (!v114)
              {
                break;
              }

              v115 = v114;

              v20 = v115;
              MEMORY[0x19A900BE0]();
              if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v161 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_19A5730AC();
              }

              ++v105;
              sub_19A5730FC();

              v94 += 2;
              v109 = v166;
              if (v110 == v105)
              {
                v20 = v173;
                v94 = v165;
                v108 = v162;
                goto LABEL_56;
              }
            }

            __break(1u);
            goto LABEL_107;
          }

LABEL_56:
          sub_19A50D150(v106);
          v117 = v116;
          v105 = v108;

          if (*(v117 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F08, &qword_19A590D00);
            v118 = sub_19A573BEC();
          }

          else
          {
            v118 = MEMORY[0x1E69E7CC8];
          }

          v177 = v118;

          sub_19A544ED4(v119, 1, &v177);
          if (v108)
          {
            goto LABEL_108;
          }

          v120 = v177;
          *&v178[0] = v177;
          if (*(v177 + 2))
          {
            sub_19A31F6BC(0xD000000000000020, 0x800000019A59CFA0);
            if (v121)
            {
              if (v120[2] && (v122 = sub_19A31F6BC(0xD000000000000020, 0x800000019A59CFA0), (v123 & 1) != 0))
              {
                v124 = *(v120[7] + 8 * v122);
                v125 = v124;
                v126 = v124;
              }

              else
              {
                v126 = 0;
              }

              sub_19A549A94(v126, 0xD00000000000001CLL, 0x800000019A59D010);
              v120 = *&v178[0];
            }
          }

          if (v120[2])
          {
            sub_19A31F6BC(0xD000000000000019, 0x800000019A59CFD0);
            if (v127)
            {
              if (v120[2] && (v128 = sub_19A31F6BC(0xD000000000000019, 0x800000019A59CFD0), (v129 & 1) != 0))
              {
                v130 = *(v120[7] + 8 * v128);
                v131 = v130;
                v132 = v130;
              }

              else
              {
                v132 = 0;
              }

              sub_19A549A94(v132, 0x6D695F6172747865, 0xEE00646E6F635F67);
              v120 = *&v178[0];
            }
          }

          v12 = "local_conditioning_latent";
          if (!v120[2] || (sub_19A31F6BC(0xD000000000000014, 0x800000019A59CFF0), (v133 & 1) == 0))
          {
            v177 = &unk_1F0DB5760;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
            sub_19A2F12E4(&qword_1EAF9E860, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6340]);
            v148 = sub_19A57350C();
            v149 = *&v178[0];
            v150 = v148;
            v151 = swift_isUniquelyReferenced_nonNull_native();
            v177 = v149;
            sub_19A5454C0(v150, 0xD000000000000014, 0x800000019A59CFF0, v151);
LABEL_88:

            return v20;
          }

          if (!v120[2] || (v134 = sub_19A31F6BC(0xD000000000000014, 0x800000019A59CFF0), (v135 & 1) == 0))
          {

            return v20;
          }

          v166 = *(v120[7] + 8 * v134);
          v136 = [v166 shape];
          v137 = sub_19A57308C();

          if (!(v137 >> 62))
          {
            v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_80;
          }

LABEL_105:
          v138 = sub_19A573B4C();
LABEL_80:

          if (v138 < 2)
          {

            return v20;
          }

          if (qword_1ED824D40 != -1)
          {
            swift_once();
          }

          v139 = sub_19A5723FC();
          __swift_project_value_buffer(v139, qword_1ED82BD48);
          v140 = sub_19A5723DC();
          v141 = sub_19A57355C();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v177 = v143;
            *v142 = 136315138;
            *(v142 + 4) = sub_19A31F114(0xD000000000000014, v12 | 0x8000000000000000, &v177);
            _os_log_impl(&dword_19A2DE000, v140, v141, "reshaping %s parameter from sketch conditioner to match model input of [1]", v142, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v143);
            MEMORY[0x19A902C50](v143, -1, -1);
            MEMORY[0x19A902C50](v142, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
          v144 = swift_allocObject();
          v144[1] = xmmword_19A576E10;
          v14 = v166;
          v145 = [v166 objectAtIndexedSubscript_];
          sub_19A57333C();
          v147 = v146;

          *(v144 + 8) = v147;
          v177 = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
          sub_19A2F12E4(&qword_1EAF9E860, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6340]);
          v27 = sub_19A57350C();
          if (v105)
          {

            return v20;
          }

          goto LABEL_99;
        }

        v20 = &v156;
        MEMORY[0x1EEE9AC00](v83);
        strcpy(&v156 - 16, "scribble_edges");
        *(&v156 - 1) = -18;
        MEMORY[0x1EEE9AC00](v84);
        *(&v156 - 5) = 0;
        *(&v156 - 4) = 0;
        *(&v156 - 6) = v166;
        *(&v156 - 3) = sub_19A51076C;
        *(&v156 - 2) = v85;
        sub_19A5735DC();
        if (v173)
        {
          if (v173 >> 62)
          {
            v20 = v173;
            v86 = sub_19A573B4C();
          }

          else
          {
            v86 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v86 == 4)
          {
            v87 = sub_19A566830(0.0, 1.0);
            v175 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
            *&v173 = v87;
            sub_19A3355EC(&v173, v178);
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v177 = v55;
            sub_19A33D694(v178, 0x656C626269726373, 0xEE0073656764655FLL, v88);
            v55 = v177;
            goto LABEL_40;
          }
        }
      }

LABEL_91:

      goto LABEL_92;
    }

    if (v173 == 5)
    {
      v157 = a1;
      v22 = sub_19A50E78C();
      v20 = &v156;
      MEMORY[0x1EEE9AC00](v22);
      *(&v156 - 2) = v23;
      *(&v156 - 1) = v24;
      MEMORY[0x1EEE9AC00](v23);
      *(&v156 - 5) = 0;
      *(&v156 - 4) = 0;
      *(&v156 - 6) = v166;
      *(&v156 - 3) = sub_19A510610;
      *(&v156 - 2) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32D8, &qword_19A590CF8);
      sub_19A5735DC();

      v26 = v173;
      if (!v173)
      {
LABEL_92:
        sub_19A5103E8();
        swift_allocError();
        v75 = 3;
        goto LABEL_93;
      }

      v20 = (v173 & 0xFFFFFFFFFFFFFF8);
      if (v173 >> 62)
      {
        v27 = sub_19A573B4C();
        if (v27 != 4)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v27 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27 != 4)
        {
          goto LABEL_91;
        }
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x19A901520](1, v26);
      }

      else
      {
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
LABEL_99:
          v153 = v27;
          v154 = *&v178[0];
          v155 = swift_isUniquelyReferenced_nonNull_native();
          v177 = v154;
          sub_19A5454C0(v153, 0xD000000000000014, v12 | 0x8000000000000000, v155);

          goto LABEL_88;
        }

        v28 = *(v26 + 40);
      }

      v29 = v28;

      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      v20 = v29;
      v30 = sub_19A57372C();
      v31 = sub_19A57374C();

      if (v31)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_19A576E10;
        *(v32 + 32) = sub_19A50E78C();
        v33 = v32 + 32;
        *(v32 + 40) = v34;
        a1 = v157;
        sub_19A566C70(0.0, 1.0);
LABEL_28:
        v73 = v35;
        *(v32 + 72) = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
        *(v32 + 48) = v73;
        v158 = sub_19A330370(v32);
        goto LABEL_13;
      }

      v70 = sub_19A57372C();
      v71 = sub_19A57374C();

      if (v71)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_19A576E10;
        *(v32 + 32) = sub_19A50E78C();
        v33 = v32 + 32;
        *(v32 + 40) = v72;
        a1 = v157;
        v35 = sub_19A566830(0.0, 1.0);
        goto LABEL_28;
      }
    }

    sub_19A5103E8();
    swift_allocError();
    v75 = 2;
LABEL_93:
    *v74 = v75;
    swift_willThrow();
    return v20;
  }

LABEL_107:

  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  __break(1u);
LABEL_108:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t _s13DiffusionBase05AppleA17SketchConditionerV5ErrorO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_19A573C2C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_19A5103E8()
{
  result = qword_1EAFA32B0;
  if (!qword_1EAFA32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA32B0);
  }

  return result;
}

unint64_t sub_19A510440()
{
  result = qword_1EAFA32D0;
  if (!qword_1EAFA32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA32D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionSketchConditioner.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionSketchConditioner.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_19A5106B8(__n128 *a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1].n128_u64[0];
  if (v3)
  {
    if (v3 < 8 || (a1 - v2 - 32) < 0x20)
    {
      v4 = 0;
LABEL_5:
      v5 = a1 + v4;
      v6 = &v2[2] + v4;
      v7 = v3 - v4;
      do
      {
        v8 = *v6++;
        result.n128_u32[0] = v8;
        *v5++ = v8;
        --v7;
      }

      while (v7);
      return result;
    }

    v4 = v3 & 0x7FFFFFFFFFFFFFF8;
    v10 = v2 + 3;
    v11 = a1 + 1;
    v12 = v3 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      result = v10[-1];
      v13 = *v10;
      v11[-1] = result;
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if (v3 != v4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_19A510784(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_25;
  }

  v4 = result;
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_19A573A5C();
    if (v3 < 0)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    result = swift_beginAccess();
    if (a2 <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = v4;
    while (a2 != v8)
    {
      if (v4 < 0)
      {
        goto LABEL_21;
      }

      if (v8 >= *(*a3 + 16))
      {
        goto LABEL_22;
      }

      v9 = *(*a3 + 8 * v8 + 32);
      if (!*(v9 + 16))
      {
        goto LABEL_18;
      }

      v10 = sub_19A31F6BC(1802723693, 0xE400000000000000);
      if ((v11 & 1) == 0)
      {

LABEL_18:
        sub_19A5150E8();
        swift_allocError();
        *v13 = 4;
        swift_willThrow();
      }

      v12 = *(*(v9 + 56) + 8 * v10);

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      result = sub_19A573A3C();
      if (a2 < v4)
      {
        goto LABEL_23;
      }

      if (v7 == v8)
      {
        goto LABEL_24;
      }

      if (a2 == ++v8)
      {
        return v14;
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
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_19A510938(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_25;
  }

  v4 = result;
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_19A573A5C();
    if (v3 < 0)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    result = swift_beginAccess();
    if (a2 <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = v4;
    while (a2 != v8)
    {
      if (v4 < 0)
      {
        goto LABEL_21;
      }

      if (v8 >= *(*a3 + 16))
      {
        goto LABEL_22;
      }

      v9 = *(*a3 + 8 * v8 + 32);
      if (!*(v9 + 16))
      {
        goto LABEL_18;
      }

      v10 = sub_19A31F6BC(0xD000000000000010, 0x800000019A59D070);
      if ((v11 & 1) == 0)
      {

LABEL_18:
        sub_19A5150E8();
        swift_allocError();
        *v13 = 5;
        swift_willThrow();
      }

      v12 = *(*(v9 + 56) + 8 * v10);

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      result = sub_19A573A3C();
      if (a2 < v4)
      {
        goto LABEL_23;
      }

      if (v7 == v8)
      {
        goto LABEL_24;
      }

      if (a2 == ++v8)
      {
        return v14;
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
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Decoder.loadResources()()
{
  v1 = v0;
  ManagedMLModel.loadResources()();
  if (!v2)
  {
    sub_19A4E3544();
    if (v1)
    {
      ManagedMLModel.loadResources()();
      if (v3)
      {
      }

      sub_19A4E3544();
    }
  }
}

Swift::Void __swiftcall Decoder.unloadResources()()
{
  v1 = v0;
  ManagedMLModel.unloadResources()();
  if (v1)
  {
    ManagedMLModel.unloadResources()();
  }
}

uint64_t Decoder.decode(_:scaleFactor:outputRange:inferAlpha:inferenceDiagnostics:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10)
{
  *(v10 + 64) = a6;
  *(v10 + 72) = a7;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;
  *(v10 + 180) = a2;
  *(v10 + 172) = a9;
  *(v10 + 176) = a10;
  *(v10 + 168) = a8;
  *(v10 + 32) = a1;
  *(v10 + 40) = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EC8, &qword_19A58F7E8);
  *(v10 + 80) = v11;
  *(v10 + 88) = *(v11 - 8);
  *(v10 + 96) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  *(v10 + 104) = v12;
  *(v10 + 112) = *(v12 - 8);
  *(v10 + 120) = swift_task_alloc();
  *(v10 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A510CF4, 0, 0);
}

uint64_t sub_19A510CF4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 112);
    v87 = *(v0 + 88);
    v88 = *(v0 + 96);
    v86 = *(v0 + 80);
    v96 = MEMORY[0x1E69E7CC0];
    sub_19A4E448C(0, v2, 0);
    v5 = v96;
    v85 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2ED0, &unk_19A58F7F0);
    v6 = 0;
    name = *(v4 + 16);
    v84 = (v4 + 32);
    v82 = (v4 + 8);
    v83 = v2;
    key = *(v4 + 72);
    while (1)
    {
      (name)(*(v0 + 128), v85 + v6 * key, *(v0 + 104));
      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
      v7 = sub_19A5726EC();
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7;
        sub_19A4E44CC(0, v8, 0);
        v10 = v9;
        v11 = *(v3 + 16);
        v12 = 32;
        do
        {
          v13 = *(v10 + v12);
          v14 = *(v3 + 24);
          if (v11 >= v14 >> 1)
          {
            sub_19A4E44CC((v14 > 1), v11 + 1, 1);
            v10 = v9;
          }

          v15 = v13 / *(v0 + 168);
          *(v3 + 16) = v11 + 1;
          *(v3 + 4 * v11 + 32) = v15;
          v12 += 4;
          ++v11;
          --v8;
        }

        while (v8);
      }

      v16 = *(v0 + 120);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      *(v0 + 16) = v3;
      sub_19A57263C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
      sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
      sub_19A57264C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3308, &qword_19A590D10);
      v19 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v20 = swift_allocObject();
      v21 = *(v86 + 48);
      v22 = (v20 + v19);
      *v22 = 0x746E6574616CLL;
      v22[1] = 0xE600000000000000;
      (name)(v20 + v19 + v21, v16, v18);
      v23 = sub_19A573BEC();
      v24 = *(v86 + 48);

      sub_19A33546C(v22, v17, &qword_1EAFA2EC8, &qword_19A58F7E8);
      v25 = *v17;
      v26 = *(v88 + 8);
      v27 = sub_19A31F6BC(v25, v26);
      if (v28)
      {
        break;
      }

      v36 = *(v0 + 96);
      v35 = *(v0 + 104);
      v23[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v23[6] + 16 * v27);
      *v37 = v25;
      v37[1] = v26;
      v27 = (*v84)(v23[7] + v27 * key, v36 + v24, v35);
      v38 = v23[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_49;
      }

      v42 = *(v0 + 120);
      v41 = *(v0 + 128);
      v43 = *(v0 + 104);
      v23[2] = v40;

      swift_setDeallocating();
      sub_19A2F3FA0(v22, &qword_1EAFA2EC8, &qword_19A58F7E8);
      swift_deallocClassInstance();
      v44 = *v82;
      (*v82)(v42, v43);
      v44(v41, v43);
      v46 = *(v96 + 16);
      v45 = *(v96 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_19A4E448C((v45 > 1), v46 + 1, 1);
      }

      ++v6;
      *(v96 + 16) = v46 + 1;
      *(v96 + 8 * v46 + 32) = v23;
      v3 = MEMORY[0x1E69E7CC0];
      if (v6 == v83)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return MEMORY[0x1EEE6DD58](v27, v28, v29, v30, v31, v32, v33, v34);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
  *(v0 + 136) = v5;
  if (*(v0 + 180))
  {
    v48 = *(v0 + 64);
    v47 = *(v0 + 72);
    v94 = *(v0 + 48);
    v49 = *(v0 + 40);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3318, &qword_19A590D18);
    v51 = swift_task_alloc();
    *(v0 + 144) = v51;
    v52 = *(v0 + 172);
    *(v51 + 16) = v94;
    *(v51 + 32) = v48;
    *(v51 + 40) = v47;
    *(v51 + 48) = v5;
    *(v51 + 56) = v49;
    *(v51 + 64) = v52;
    v53 = swift_task_alloc();
    *(v0 + 152) = v53;
    *v53 = v0;
    v53[1] = sub_19A511684;
    v32 = &unk_19A590D28;
    v27 = v0 + 24;
    v28 = MEMORY[0x1E69E7CA8] + 8;
    v34 = MEMORY[0x1E69E7CA8] + 8;
    v29 = v50;
    v30 = 0;
    v31 = 0;
    v33 = v51;

    return MEMORY[0x1EEE6DD58](v27, v28, v29, v30, v31, v32, v33, v34);
  }

  v54 = sub_19A5121AC(v5, *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  v55 = v54[2];
  if (v55)
  {
    v27 = sub_19A4E446C(0, v55, 0);
    v56 = 0;
    v57 = v3;
    namea = *MEMORY[0x1E695F1C0];
    v89 = v54;
    keya = *MEMORY[0x1E6965CE8];
    v58 = v55;
    while (1)
    {
      if (v56 >= v54[2])
      {
        goto LABEL_50;
      }

      v95 = v57;
      v59 = v54[v56 + 4];
      if (!*(v59 + 16))
      {
        goto LABEL_38;
      }

      v60 = sub_19A31F6BC(0x6567616D69, 0xE500000000000000);
      if ((v61 & 1) == 0)
      {
        break;
      }

      v62 = *(*(v59 + 56) + 8 * v60);
      v63 = [v62 type];
      if (v63 == 4)
      {
        v68 = [v62 imageBufferValue];
        if (!v68)
        {

          sub_19A5150E8();
          swift_allocError();
          *v80 = 1;
LABEL_44:
          swift_willThrow();

LABEL_45:

          v81 = *(v0 + 8);

          return v81();
        }

        v69 = v68;
        v64 = v62;
        v27 = [v62 imageBufferValue];
        if (!v27)
        {
          goto LABEL_53;
        }

        v70 = v27;
        v71 = sub_19A55C818(v27);

        v67 = v71;
        CVBufferPropagateAttachments(v69, v67);

        v54 = v89;
      }

      else
      {
        if (v63 != 5)
        {

          sub_19A5150E8();
          swift_allocError();
          *v79 = 0;
          goto LABEL_44;
        }

        v64 = v62;
        v27 = [v62 multiArrayValue];
        if (!v27)
        {
          goto LABEL_52;
        }

        v65 = v27;
        v66 = sub_19A55C2D4(v27);

        v67 = v66;
      }

      v27 = CGColorSpaceCreateWithName(namea);
      if (!v27)
      {
        goto LABEL_51;
      }

      v72 = v27;

      CVBufferSetAttachment(v67, keya, v72, kCVAttachmentMode_ShouldPropagate);

      v57 = v95;
      v74 = *(v95 + 16);
      v73 = *(v95 + 24);
      if (v74 >= v73 >> 1)
      {
        v27 = sub_19A4E446C((v73 > 1), v74 + 1, 1);
        v57 = v95;
      }

      ++v56;
      *(v57 + 16) = v74 + 1;
      v75 = v57 + 16 * v74;
      *(v75 + 32) = v67;
      *(v75 + 40) = 2;
      if (v58 == v56)
      {

        goto LABEL_39;
      }
    }

LABEL_38:
    sub_19A5150E8();
    swift_allocError();
    *v76 = 6;
    swift_willThrow();
    goto LABEL_45;
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v77 = *(v0 + 8);

  return v77(v57);
}

uint64_t sub_19A511684()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_19A511830;
  }

  else
  {

    v2 = sub_19A5117A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A5117A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A511830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Decoder.init(modelAt:alphaModelAt:configuration:alphaDecoderEntryPoint:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v35 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8, &qword_19A579A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_19A570EAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v31 = *(v11 + 16);
  v31(&v29 - v16, a1, v10, v15);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v18 = a3;
  v19 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v17, v18, MEMORY[0x1E69E7CC0], "latent color image decoder", 26, 2);
  v20 = v35;
  v32 = v19;
  sub_19A33546C(v35, v9, &qword_1EAFA02E8, &qword_19A579A50);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_19A2F3FA0(v20, &qword_1EAFA02E8, &qword_19A579A50);
    (*(v11 + 8))(a1, v10);
    sub_19A2F3FA0(v9, &qword_1EAFA02E8, &qword_19A579A50);
  }

  else
  {
    v30 = a1;
    (*(v11 + 32))(v13, v9, v10);
    v21 = v13;
    if (v34)
    {

      v22 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_19A31CE20((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      v26 = v34;
      *(v25 + 4) = v33;
      *(v25 + 5) = v26;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    (v31)(v17, v21, v10);
    swift_allocObject();
    ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v17, v18, v22, "latent alpha image decoder", 26, 2);
    sub_19A2F3FA0(v35, &qword_1EAFA02E8, &qword_19A579A50);
    v27 = *(v11 + 8);
    v27(v30, v10);
    v27(v21, v10);
  }

  return v32;
}

uint64_t sub_19A511C4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A511C6C, 0, 0);
}

uint64_t sub_19A511C6C()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19A511D88;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B8, &qword_19A58FE58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19A354FC8;
  v0[13] = &block_descriptor_11;
  v0[14] = v2;
  [v1 modelDescriptionWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19A511D88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_19A511FA4;
  }

  else
  {
    v2 = sub_19A511E98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A511E98()
{
  v1 = v0[18];
  v2 = [v1 outputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v3 = sub_19A572AFC();

  if (*(v3 + 16) && (v4 = sub_19A31F6BC(0x6567616D69, 0xE500000000000000), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  v8 = v0[19];

  *v8 = v6;
  v9 = v0[1];

  return v9();
}

uint64_t sub_19A511FA4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

Swift::Bool __swiftcall Decoder.usePORParameters()()
{
  v1 = v0 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A569948((v1 + 8), &v8);
  os_unfair_lock_unlock(v1);
  sub_19A506920(v8);
  v3 = v2;

  if (v3)
  {

    v4 = [v3 inputDescriptionsByName];

    sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
    v5 = sub_19A572AFC();

    if (*(v5 + 16))
    {
      sub_19A31F6BC(0x746E6574616CLL, 0xE600000000000000);
      LOBYTE(v3) = v6;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t Decoder.DecoderError.hashValue.getter(unsigned __int8 a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  return sub_19A57410C();
}

uint64_t *sub_19A5121AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a1;
  sub_19A506C14(0, 0, sub_19A515DD8, v38);
  if (v6)
  {
    return v7;
  }

  v9 = v8[2];
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v45 = MEMORY[0x1E69E7CC0];
  v10 = v8;
  sub_19A4E43EC(0, v9, 0);
  v7 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3358, &qword_19A590ED8);
  result = v10;
  v12 = 0;
  v36 = v10;
  v37 = v10 + 4;
  v35 = v9;
  while (v12 < result[2])
  {
    v13 = v12 + 1;
    v14 = v37[v12];
    result = sub_19A573BBC();
    v15 = result;
    v16 = 0;
    v17 = 1 << *(v14 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 8;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_15:
        v25 = v22 | (v16 << 6);
        v26 = (*(v14 + 48) + 16 * v25);
        v27 = *(*(v14 + 56) + 8 * v25);
        v28 = *v26;
        result = v26[1];
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v29 = (v15[6] + 16 * v25);
        *v29 = v28;
        v29[1] = result;
        *(v15[7] + 8 * v25) = v27;
        v30 = v15[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        v15[2] = v32;

        result = v27;
        if (!v19)
        {
          goto LABEL_10;
        }
      }

LABEL_25:
      __break(1u);
      break;
    }

LABEL_10:
    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v16 >= v20)
      {
        break;
      }

      v24 = *(v14 + 64 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v45 = v7;
    v34 = *(v7 + 16);
    v33 = *(v7 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_19A4E43EC((v33 > 1), v34 + 1, 1);
      v7 = v45;
    }

    *(v7 + 16) = v34 + 1;
    *(v7 + 8 * v34 + 32) = v15;
    v12 = v13;
    result = v36;
    if (v13 == v35)
    {

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A512410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10)
{
  *(v10 + 268) = a10;
  *(v10 + 264) = a9;
  *(v10 + 144) = a7;
  *(v10 + 152) = a8;
  *(v10 + 128) = a5;
  *(v10 + 136) = a6;
  *(v10 + 112) = a3;
  *(v10 + 120) = a4;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3350, &qword_19A590EB0);
  *(v10 + 160) = v11;
  *(v10 + 168) = *(v11 - 8);
  *(v10 + 176) = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470) - 8);
  *(v10 + 184) = v12;
  *(v10 + 192) = *(v12 + 64);
  *(v10 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  *(v10 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A512594, 0, 0);
}

uint64_t sub_19A512594()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v24 = v2;
  v5 = v0[19];
  v6 = v0[16];
  v25 = v0[18];
  v26 = v0[17];
  v18 = v0[14];
  v19 = v0[15];
  v7 = swift_allocObject();
  v0[27] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v23 = swift_allocObject();
  v0[28] = v23;
  *(v23 + 16) = v8;
  v22 = sub_19A5731CC();
  v21 = *(*(v22 - 8) + 56);
  v21(v2, 1, 1, v22);
  sub_19A33546C(v5, v1, &qword_1EAFA3300, &qword_19A577470);
  v9 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v20 = v9;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v18;
  v10[6] = v19;
  v10[7] = v6;
  v10[8] = v26;
  v10[9] = v25;
  sub_19A5157A4(v1, v10 + v9);

  sub_19A513560(v2, &unk_19A590EC0, v10);
  sub_19A2F3FA0(v2, &qword_1EAF9FD98, &qword_19A57A710);
  v17 = swift_allocObject();
  v0[29] = v17;
  *(v17 + 16) = 0;
  v16 = swift_allocObject();
  v0[30] = v16;
  *(v16 + 16) = 0;
  v21(v2, 1, 1, v22);
  sub_19A33546C(v5, v1, &qword_1EAFA3300, &qword_19A577470);
  v11 = (v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v23;
  v12[5] = v18;
  v12[6] = v19;
  v12[7] = v6;
  v12[8] = v26;
  v12[9] = v25;
  sub_19A5157A4(v1, v12 + v20);
  *(v12 + v11) = v17;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  sub_19A513560(v24, &unk_19A590ED0, v12);
  sub_19A2F3FA0(v24, &qword_1EAF9FD98, &qword_19A57A710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  sub_19A57326C();
  v13 = swift_task_alloc();
  v0[31] = v13;
  *v13 = v0;
  v13[1] = sub_19A5129A0;
  v14 = v0[20];

  return MEMORY[0x1EEE6DAD8](v0 + 34, 0, 0, v14, v0 + 11);
}

uint64_t sub_19A5129A0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_19A5133B8;
  }

  else
  {
    v2 = sub_19A512AB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A512AB4()
{
  if ((*(v0 + 272) & 1) == 0)
  {
    v50 = swift_task_alloc();
    *(v0 + 248) = v50;
    *v50 = v0;
    v50[1] = sub_19A5129A0;
    v11 = *(v0 + 160);
    v8 = v0 + 272;
    v12 = v0 + 88;
    v9 = 0;
    v10 = 0;

    return MEMORY[0x1EEE6DAD8](v8, v9, v10, v11, v12);
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  swift_beginAccess();
  v4 = *(v3 + 16);
  swift_beginAccess();
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v4 + 16);
  if (v5 && *(v5 + 16) != v7 || v6 && *(v6 + 16) != v7)
  {
    sub_19A5150E8();
    swift_allocError();
    *v51 = 3;
    swift_willThrow();

LABEL_60:

    v53 = *(v0 + 8);
    goto LABEL_61;
  }

  if (!v7)
  {

    v13 = MEMORY[0x1E69E7CC0];
LABEL_51:
    **(v0 + 96) = v13;

    v53 = *(v0 + 8);
LABEL_61:

    return v53();
  }

  v69 = MEMORY[0x1E69E7CC0];

  v66 = v6;

  v8 = sub_19A4E446C(0, v7, 0);
  v13 = v69;
  name = *MEMORY[0x1E695F1C0];
  v14 = *(v0 + 256);
  v61 = -v7;
  key = *MEMORY[0x1E6965CE8];
  v15 = 4;
  v16 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
  v58 = xmmword_19A58F190;
  v64 = v4;
  v65 = v5;
  while (1)
  {
    v17 = v15 - 4;
    if ((v15 - 4) >= *(v4 + 16))
    {
      break;
    }

    v18 = *(v4 + 8 * v15);
    if (!*(v18 + 16))
    {
      goto LABEL_50;
    }

    v8 = sub_19A31F6BC(0x6567616D69, 0xE500000000000000);
    if ((v9 & 1) == 0)
    {

LABEL_50:
      sub_19A5150E8();
      swift_allocError();
      *v52 = 6;
      swift_willThrow();

      goto LABEL_59;
    }

    v67 = v13;
    v19 = *(*(v18 + 56) + 8 * v8);
    if (v5)
    {
      if (v17 >= *(v5 + 16))
      {
        goto LABEL_65;
      }

      v20 = *(v5 + 8 * v15);
      v21 = v19;
      v68 = v20;
      v22 = v20;
      v23 = [v22 type];
      v24 = v23 == [v21 type];
      v16 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
      if (!v24)
      {

        sub_19A5150E8();
        swift_allocError();
        *v54 = 3;
        swift_willThrow();

LABEL_58:

        goto LABEL_59;
      }
    }

    else
    {
      v25 = v19;
      v68 = 0;
    }

    v26 = [v19 v16[135]];
    if (v26 == 4)
    {
      v35 = [v19 imageBufferValue];
      if (!v35)
      {

        sub_19A5150E8();
        swift_allocError();
        *v56 = 1;
        goto LABEL_54;
      }

      v36 = v35;
      if (v68 && (v37 = [v68 imageBufferValue]) != 0)
      {
        v38 = v37;
        v39 = sub_19A55CAB0(v36, v37);
        if (v14)
        {

          goto LABEL_58;
        }
      }

      else
      {
        v8 = [v19 imageBufferValue];
        if (!v8)
        {
          goto LABEL_69;
        }

        v38 = v8;
        v39 = sub_19A55C818(v8);
        if (v14)
        {

LABEL_57:

LABEL_59:

          goto LABEL_60;
        }
      }

      v40 = v39;

      v34 = v40;
      CVBufferPropagateAttachments(v36, v34);
    }

    else
    {
      if (v26 != 5)
      {

        sub_19A5150E8();
        swift_allocError();
        *v55 = 0;
LABEL_54:
        swift_willThrow();

        goto LABEL_57;
      }

      v8 = [v19 multiArrayValue];
      if (!v8)
      {
        goto LABEL_68;
      }

      v27 = v8;
      if (v68)
      {
        v28 = [v68 multiArrayValue];
        if (v28)
        {
          v29 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
          v30 = swift_allocObject();
          *(v30 + 16) = v58;
          *(v30 + 32) = v29;
          *(v30 + 40) = v27;
          v60 = v29;
          v59 = v27;
          v31 = [v60 dataType];
          sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
          v32 = sub_19A57307C();

          v27 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v32 alongAxis:1 dataType:v31];
        }
      }

      v33 = sub_19A55C2D4(v27);

      if (v14)
      {

        goto LABEL_57;
      }

      v34 = v33;
    }

    v8 = CGColorSpaceCreateWithName(name);
    if (!v8)
    {
      goto LABEL_67;
    }

    v41 = v8;

    CVBufferSetAttachment(v34, key, v41, kCVAttachmentMode_ShouldPropagate);
    if (!v66)
    {

LABEL_39:
      v46 = 2;
      goto LABEL_40;
    }

    if (v17 >= *(v66 + 16))
    {
      goto LABEL_66;
    }

    v42 = *(v66 + 8 * v15);
    v43 = [v42 multiArrayValue];
    if (!v43)
    {

      goto LABEL_39;
    }

    v44 = v43;
    v45 = [v43 objectAtIndexedSubscript_];

    v46 = [v45 BOOLValue];
LABEL_40:
    v13 = v67;
    v48 = *(v67 + 16);
    v47 = *(v67 + 24);
    if (v48 >= v47 >> 1)
    {
      v8 = sub_19A4E446C((v47 > 1), v48 + 1, 1);
      v13 = v67;
    }

    v14 = 0;
    *(v13 + 16) = v48 + 1;
    v49 = v13 + 16 * v48;
    *(v49 + 32) = v34;
    *(v49 + 40) = v46;
    ++v15;
    v4 = v64;
    v5 = v65;
    v16 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
    if (v61 + v15 == 4)
    {

      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return MEMORY[0x1EEE6DAD8](v8, v9, v10, v11, v12);
}

uint64_t sub_19A5133B8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A513478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19A5134AC, 0, 0);
}

uint64_t sub_19A5134AC()
{
  v1 = sub_19A5121AC(v0[10], v0[11], v0[6], v0[7], v0[8], v0[9]);
  v2 = v0[5];
  swift_beginAccess();
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A513560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_19A33546C(a1, v18 - v8, &qword_1EAF9FD98, &qword_19A57A710);
  v10 = sub_19A5731CC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19A2F3FA0(v9, &qword_1EAF9FD98, &qword_19A57A710);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_19A57314C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A5731BC();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_19A513750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v11;
  *(v8 + 168) = v12;
  *(v8 + 144) = v10;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a4;
  *(v8 + 120) = a6;
  return MEMORY[0x1EEE6DFA0](sub_19A513788, 0, 0);
}

uint64_t sub_19A513788()
{
  v1 = sub_19A515AC4(*(v0 + 144), *(v0 + 152), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v2 = *(v0 + 112);
  swift_beginAccess();
  *(v2 + 16) = v1;

  v4 = sub_19A510784(0, v1[2], v2 + 16);
  v5 = *(v0 + 160);
  v6 = *(v0 + 112);
  swift_beginAccess();
  *(v5 + 16) = v4;

  swift_beginAccess();
  v7 = sub_19A510938(0, *(*(v6 + 16) + 16), v6 + 16);
  v8 = *(v0 + 168);
  swift_beginAccess();
  *(v8 + 16) = v7;

  v9 = *(v0 + 8);

  return v9();
}

void sub_19A5138E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v63 = a7;
  v65 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v11 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v62 - v16;
  sub_19A4F7E64(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL);
  v17 = *(a6 + 16);
  v66 = a2;
  if (!v17)
  {
LABEL_18:
    v47 = objc_allocWithZone(MEMORY[0x1E695FE30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
    v48 = sub_19A57307C();

    v49 = [v47 initWithFeatureProviderArray_];

    v50 = v64;
    sub_19A33546C(v63, v64, &qword_1EAFA3300, &qword_19A577470);
    v51 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
    if ((*(*(v51 - 1) + 48))(v50, 1, v51) == 1)
    {
      v52 = v49;
      sub_19A2F3FA0(v50, &qword_1EAFA3300, &qword_19A577470);
      v53 = [objc_opt_self() defaultOptions];
    }

    else
    {
      v54 = objc_opt_self();
      v55 = v49;
      v53 = [v54 defaultOptions];
      LODWORD(v86) = *(v50 + v51[6]);
      v56 = v51[8];
      LODWORD(v85) = *(v50 + v51[7]);
      v57 = *(v50 + v56);
      v58 = objc_allocWithZone(MEMORY[0x1E695FE88]);
      v59 = sub_19A570DEC();
      v60 = sub_19A572CCC();
      v61 = [v58 initWithOutputDirectory:v59 prefix:v60 shouldOverwrite:v86 modelIOFrameData:v85 segmentIOFrameData:v57];

      [v53 setInferenceFrameDataSerialization_];
      sub_19A5068AC(v50);
    }

    sub_19A57370C();
    if (v8)
    {

LABEL_24:
      sub_19A515DFC();
    }

    else
    {

      sub_19A515DFC();
    }

    return;
  }

  v87 = MEMORY[0x1E69E7CC0];
  v67 = v17;
  sub_19A573A5C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F08, &qword_19A590D00);
  v19 = 0;
  v68 = a6 + 32;
  v69 = v18;
  v75 = v11 + 16;
  v76 = v11;
  v74 = v11 + 8;
  v20 = v11;
  while (2)
  {
    v21 = *(v68 + 8 * v19);
    v70 = v19 + 1;
    v71 = v8;
    v22 = sub_19A573BBC();
    v23 = v22;
    v24 = *(v21 + 64);
    v73 = v21 + 64;
    v25 = 1 << *(v21 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v24;
    v72 = (v25 + 63) >> 6;
    v80 = v22 + 64;
    v82 = v21;

    v28 = 0;
    v81 = v23;
    if (!v27)
    {
LABEL_8:
      v30 = v28;
      while (1)
      {
        v28 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
          goto LABEL_27;
        }

        if (v28 >= v72)
        {
          break;
        }

        v31 = *(v73 + 8 * v28);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v83 = (v31 - 1) & v31;
          goto LABEL_13;
        }
      }

      v44 = sub_19A543CE8(v23);

      v45 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v46 = v71;
      sub_19A544CF4(v44);
      v8 = v46;
      if (v46)
      {

        goto LABEL_24;
      }

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      v19 = v70;
      if (v70 != v67)
      {
        continue;
      }

      goto LABEL_18;
    }

    break;
  }

  while (1)
  {
    v29 = __clz(__rbit64(v27));
    v83 = (v27 - 1) & v27;
LABEL_13:
    v32 = v29 | (v28 << 6);
    v85 = 16 * v32;
    v33 = *(v82 + 56);
    v34 = (*(v82 + 48) + 16 * v32);
    v35 = v34[1];
    v86 = *v34;
    v36 = *(v20 + 16);
    v37 = v77;
    v38 = v79;
    v36(v77, v33 + *(v20 + 72) * v32, v79);
    v84 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
    v36(v78, v37, v38);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);

    v39 = sub_19A57351C();
    (*(v20 + 8))(v37, v38);
    v23 = v81;
    *(v80 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v40 = (v23[6] + v85);
    *v40 = v86;
    v40[1] = v35;
    *(v23[7] + 8 * v32) = v39;
    v41 = v23[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      break;
    }

    v23[2] = v43;
    v27 = v83;
    if (!v83)
    {
      goto LABEL_8;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_19A513FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v7 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - v12;
  v14 = *(a2 + 16);
  v65 = a1;
  if (!v14)
  {
LABEL_19:
    v50 = objc_allocWithZone(MEMORY[0x1E695FE30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
    v51 = sub_19A57307C();

    v52 = [v50 initWithFeatureProviderArray_];

    sub_19A33546C(v66, v13, &qword_1EAFA3300, &qword_19A577470);
    v53 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
    if ((*(*(v53 - 1) + 48))(v13, 1, v53) == 1)
    {
      v54 = v52;
      sub_19A2F3FA0(v13, &qword_1EAFA3300, &qword_19A577470);
      v55 = [objc_opt_self() defaultOptions];
    }

    else
    {
      v56 = objc_opt_self();
      v57 = v52;
      v55 = [v56 defaultOptions];
      LODWORD(v85) = v13[v53[6]];
      v58 = v13[v53[7]];
      LODWORD(v84) = v13[v53[8]];
      v59 = objc_allocWithZone(MEMORY[0x1E695FE88]);
      v60 = sub_19A570DEC();
      v61 = sub_19A572CCC();
      v62 = [v59 initWithOutputDirectory:v60 prefix:v61 shouldOverwrite:v85 modelIOFrameData:v58 segmentIOFrameData:v84];

      [v55 setInferenceFrameDataSerialization_];
      sub_19A5068AC(v13);
    }

    v48 = sub_19A57370C();

    return v48;
  }

  v64 = &v63 - v12;
  v86 = MEMORY[0x1E69E7CC0];
  v67 = v14;
  sub_19A573A5C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F08, &qword_19A590D00);
  v16 = 0;
  v68 = a2 + 32;
  v69 = v15;
  v72 = v7 + 8;
  v73 = v7 + 16;
  v85 = v7;
  while (2)
  {
    v17 = *(v68 + 8 * v16);
    v70 = v16 + 1;
    v71 = v4;
    v18 = sub_19A573BBC();
    v19 = v18;
    v20 = v17 + 64;
    v21 = 1 << *(v17 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;
    v77 = v18 + 64;
    v79 = v17;

    v26 = 0;
    v78 = v19;
    if (!v23)
    {
LABEL_8:
      v28 = v26;
      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v26 >= v24)
        {
          break;
        }

        v29 = *(v20 + 8 * v26);
        ++v28;
        if (v29)
        {
          v27 = __clz(__rbit64(v29));
          v80 = (v29 - 1) & v29;
          goto LABEL_13;
        }
      }

      v45 = sub_19A543CE8(v19);

      v46 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v47 = v45;
      v48 = v46;
      v49 = v71;
      sub_19A544CF4(v47);
      v4 = v49;

      if (v49)
      {

        return v48;
      }

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      v16 = v70;
      v7 = v85;
      if (v70 != v67)
      {
        continue;
      }

      v13 = v64;
      goto LABEL_19;
    }

    break;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v23));
    v80 = (v23 - 1) & v23;
LABEL_13:
    v30 = v27 | (v26 << 6);
    v83 = 16 * v30;
    v31 = *(v79 + 56);
    v32 = (*(v79 + 48) + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v84 = v34;
    v82 = v33;
    v35 = *(v85 + 16);
    v36 = v74;
    v37 = v76;
    v35(v74, v31 + *(v7 + 72) * v30, v76);
    v81 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
    v35(v75, v36, v37);
    v38 = v85;
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
    v39 = v82;

    v7 = v38;
    v40 = sub_19A57351C();
    result = (*(v7 + 8))(v36, v37);
    v19 = v78;
    *(v77 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v41 = (v19[6] + v83);
    *v41 = v84;
    v41[1] = v39;
    *(v19[7] + 8 * v30) = v40;
    v42 = v19[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    v19[2] = v44;
    v23 = v80;
    if (!v80)
    {
      goto LABEL_8;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_19A514618()
{
  v1 = *(v0 + 8);
  ManagedMLModel.loadResources()();
  if (!v2)
  {
    sub_19A4E3544();
    if (v1)
    {
      ManagedMLModel.loadResources()();
      if (v3)
      {
      }

      sub_19A4E3544();
    }
  }
}

void sub_19A514688()
{
  v1 = *(v0 + 8);
  ManagedMLModel.unloadResources()();
  if (v1)
  {
    ManagedMLModel.unloadResources()();
  }
}

char *sub_19A5146D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3368, &qword_19A594120);
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

void *sub_19A5147F8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_19A514A0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068, &unk_19A580FB0);
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

char *sub_19A514B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
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

void *sub_19A514C14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3340, &qword_19A590EA0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3348, &qword_19A590EA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A514D5C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_19A514E6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
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

void *sub_19A514FA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3330, &qword_19A590E98);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3338, &qword_19A594D20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_19A5150E8()
{
  result = qword_1EAFA3310;
  if (!qword_1EAFA3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3310);
  }

  return result;
}

uint64_t sub_19A51513C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = *(v2 + 68);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_19A33558C;

  return sub_19A512410(a1, a2, v6, v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_19A515238()
{
  result = qword_1EAFA3320;
  if (!qword_1EAFA3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3320);
  }

  return result;
}

void sub_19A5152B0(uint64_t a1)
{
  v3 = sub_19A570EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A2F1600(0, &qword_1ED823EE8, 0x1E695FEA8);
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_19A549F60(v6);
  if (!v1)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = v8;
    v11 = sub_19A4EF1FC(&unk_19A590E90, v9);
    if (!v11)
    {
      goto LABEL_33;
    }

    v12 = v11;
    v13 = [v12 type];
    if (v13 == 4)
    {

      v23 = [v12 imageConstraint];
      if (!v23)
      {
        goto LABEL_32;
      }

      v24 = v23;
      v25 = [v23 sizeConstraint];

      v26 = [v25 enumeratedImageSizes];
      sub_19A2F1600(0, &qword_1EAFA3328, 0x1E695FE80);
      sub_19A57308C();
LABEL_31:

LABEL_32:
LABEL_33:

      return;
    }

    if (v13 != 5 || (v14 = [v12 multiArrayConstraint]) == 0)
    {
LABEL_30:
      v26 = v10;
      v10 = v12;
      goto LABEL_31;
    }

    v15 = v14;
    v16 = [v14 shape];

    sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
    v17 = sub_19A57308C();

    if (v17 >> 62)
    {
      if (sub_19A573B4C() == 4)
      {
        goto LABEL_10;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
LABEL_10:
      v18 = v17 & 0xC000000000000001;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x19A901520](0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v19 = *(v17 + 32);
      }

      v20 = v19;
      v21 = [v19 integerValue];

      if (v21 == 1)
      {
        if (v18)
        {
          v22 = MEMORY[0x19A901520](3, v17);
LABEL_22:
          v27 = v22;
          v28 = [v22 integerValue];

          if (v18)
          {
            v29 = MEMORY[0x19A901520](2, v17);
            goto LABEL_26;
          }

          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
          {
            v29 = *(v17 + 48);
LABEL_26:
            v30 = v29;

            v31 = [v30 integerValue];

            v32 = [objc_allocWithZone(MEMORY[0x1E695FE80]) initWithPixelsWide:v28 pixelsHigh:v31];
            if (v32)
            {
              v33 = v32;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_19A576E00;
              *(v34 + 32) = v33;
            }

            goto LABEL_30;
          }

          goto LABEL_37;
        }

        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v22 = *(v17 + 56);
          goto LABEL_22;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }
    }

    goto LABEL_30;
  }
}

uint64_t sub_19A5156EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A511C4C(a1, v4);
}

uint64_t sub_19A5157A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A515814(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A33558C;

  return sub_19A513478(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_19A515948(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  v11 = v1[2];
  v3 = v1[4];
  v10 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A513750(a1, v11, v10, v3, v4, v5, v6, v7);
}

void *sub_19A515AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (!a3)
  {
    sub_19A5150E8();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    return v6;
  }

  MEMORY[0x1EEE9AC00](a1);
  v40[2] = v10;
  v40[3] = v11;

  sub_19A506C14(a4, a5, sub_19A515DBC, v40);
  if (v5)
  {

    return v6;
  }

  v15 = v12;
  v16 = *(v12 + 16);
  if (!v16)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v40[4] = a3;
  v40[5] = 0;
  v45 = MEMORY[0x1E69E7CC0];
  sub_19A4E43EC(0, v16, 0);
  v6 = v45;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3358, &qword_19A590ED8);
  v17 = 0;
  v43 = v15 + 32;
  v44 = result;
  v41 = v16;
  v42 = v15;
  while (v17 < *(v15 + 16))
  {
    v18 = v17 + 1;
    v19 = *(v43 + 8 * v17);
    result = sub_19A573BBC();
    v20 = result;
    v21 = 0;
    v22 = 1 << *(v19 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v19 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = result + 8;
    if (v24)
    {
      while (1)
      {
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_19:
        v30 = v27 | (v21 << 6);
        v31 = (*(v19 + 48) + 16 * v30);
        v32 = *(*(v19 + 56) + 8 * v30);
        v33 = *v31;
        result = v31[1];
        *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v34 = (v20[6] + 16 * v30);
        *v34 = v33;
        v34[1] = result;
        *(v20[7] + 8 * v30) = v32;
        v35 = v20[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          break;
        }

        v20[2] = v37;

        result = v32;
        if (!v24)
        {
          goto LABEL_14;
        }
      }

LABEL_28:
      __break(1u);
      break;
    }

LABEL_14:
    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v25)
      {
        break;
      }

      v29 = *(v19 + 64 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v24 = (v29 - 1) & v29;
        goto LABEL_19;
      }
    }

    v45 = v6;
    v39 = *(v6 + 16);
    v38 = *(v6 + 24);
    if (v39 >= v38 >> 1)
    {
      result = sub_19A4E43EC((v38 > 1), v39 + 1, 1);
      v6 = v45;
    }

    *(v6 + 16) = v39 + 1;
    *(v6 + 8 * v39 + 32) = v20;
    v17 = v18;
    v15 = v42;
    if (v18 == v41)
    {

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_19A515DFC()
{
  if (MEMORY[0x1E6985FA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000019A59B780;
    v1 = sub_19A570E4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v1;
    *(inited + 56) = v2;
    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00, &qword_19A578A30);
    v3 = sub_19A572CCC();
    v4 = sub_19A572ADC();
  }
}

uint64_t sub_19A515F50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_19A515FD8()
{
  v1 = v0;
  v2 = sub_19A570FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF9ED98 != -1)
  {
    swift_once();
  }

  if (qword_1EAFCA180)
  {
    v75 = qword_1EAFCA188;
    sub_19A570FAC();
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = MEMORY[0x1E69E6158];
    v78 = MEMORY[0x1E69E6158];
    *&v77 = v6;
    *(&v77 + 1) = v7;
    sub_19A3355EC(&v77, v80);

    v9 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v9;
    sub_19A33D694(v80, 0xD000000000000011, 0x800000019A59C000, isUniquelyReferenced_nonNull_native);
    v11 = v79[0];
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    v78 = v8;
    *&v77 = v12;
    *(&v77 + 1) = v13;
    sub_19A3355EC(&v77, v80);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v11;
    sub_19A33D694(v80, 0x69746172656E6567, 0xEC00000044496E6FLL, v14);
    v15 = v79[0];
    v16 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__startDate;
    v78 = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v77);
    v18 = *(v3 + 16);
    v18(boxed_opaque_existential_1, v1 + v16, v2);
    sub_19A3355EC(&v77, v80);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v15;
    sub_19A33D694(v80, 0x7461447472617473, 0xE900000000000065, v19);
    v20 = v79[0];
    v78 = v2;
    v21 = __swift_allocate_boxed_opaque_existential_1(&v77);
    v18(v21, v5, v2);
    sub_19A3355EC(&v77, v80);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    sub_19A33D694(v80, 0x65746144646E65, 0xE700000000000000, v22);
    v23 = v79[0];
    v24 = *(v1 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__inputPixelsCount);
    v25 = MEMORY[0x1E69E6530];
    if (v24 >= 1)
    {
      v78 = MEMORY[0x1E69E6530];
      *&v77 = v24;
      sub_19A3355EC(&v77, v80);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v23;
      sub_19A33D694(v80, 0x7869507475706E69, 0xEB00000000736C65, v26);
      v23 = v79[0];
    }

    v27 = *(v1 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__unetIterationsCount);
    if (v27 >= 1)
    {
      v78 = v25;
      *&v77 = v27;
      sub_19A3355EC(&v77, v80);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v23;
      sub_19A33D694(v80, 0x7265744974656E75, 0xEE00736E6F697461, v28);
      v23 = v79[0];
    }

    v29 = *(v1 + OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__outputPixelsCount);
    if (v29 >= 1)
    {
      v78 = v25;
      *&v77 = v29;
      sub_19A3355EC(&v77, v80);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v23;
      sub_19A33D694(v80, 0x695074757074756FLL, 0xEC000000736C6578, v30);
      v23 = v79[0];
    }

    v31 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__adapters;
    swift_beginAccess();
    v32 = *(v1 + v31);
    if (!v32)
    {
      goto LABEL_54;
    }

    v73 = v23;
    v33 = *(v32 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    v74 = v5;
    if (v33)
    {
      v35 = v3;
      v36 = sub_19A544DDC(v33, 0);
      v72 = sub_19A32E930(&v77, v36 + 32, v33, v32);
      v37 = v77;

      sub_19A2EA480(v37);
      if (v72 != v33)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v3 = v35;
      v5 = v74;
      v34 = MEMORY[0x1E69E7CC0];
      v38 = v36[2];
      if (v38)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v38)
      {
LABEL_14:
        v71 = v3;
        v72 = v2;
        *&v77 = v34;
        sub_19A322580(0, v38, 0);
        v39 = v77;
        v40 = 0x800000019A596540;
        v41 = 0x800000019A596560;
        v42 = 0x800000019A5965C0;
        v43 = 0x800000019A5965E0;
        v44 = 32;
        v45 = 0xE90000000000006ELL;
        do
        {
          v46 = *(v36 + v44);
          if (v46 <= 4)
          {
            if (v46 == 3)
            {
              v47 = 0xD000000000000012;
            }

            else
            {
              v47 = 0x61727473756C6C69;
            }

            if (v46 == 3)
            {
              v48 = v42;
            }

            else
            {
              v48 = 0xEC0000006E6F6974;
            }

            if (v46 == 2)
            {
              v47 = 0x696A6F6D65;
              v48 = 0xE500000000000000;
            }

            v49 = 0xD000000000000016;
            if (*(v36 + v44))
            {
              v52 = v43;
            }

            else
            {
              v49 = 0x6F6974616D696E61;
              v52 = v45;
            }

            v53 = *(v36 + v44) <= 1u;
          }

          else
          {
            v47 = 0xD00000000000001BLL;
            if (v46 == 9)
            {
              v48 = v41;
            }

            else
            {
              v47 = 0xD000000000000014;
              v48 = v40;
            }

            if (v46 == 8)
            {
              v47 = 0x63735F656C797473;
              v48 = 0xEE00656C62626972;
            }

            v49 = 0xD000000000000019;
            v50 = 0xD000000000000013;
            if (v46 == 6)
            {
              v50 = 0x686374656B73;
            }

            v51 = 0xE600000000000000;
            if (v46 != 6)
            {
              v51 = 0x800000019A596580;
            }

            if (v46 == 5)
            {
              v52 = 0x800000019A5965A0;
            }

            else
            {
              v49 = v50;
              v52 = v51;
            }

            v53 = *(v36 + v44) <= 7u;
          }

          if (v53)
          {
            v54 = v49;
          }

          else
          {
            v54 = v47;
          }

          if (v53)
          {
            v55 = v52;
          }

          else
          {
            v55 = v48;
          }

          *&v77 = v39;
          v57 = *(v39 + 16);
          v56 = *(v39 + 24);
          if (v57 >= v56 >> 1)
          {
            v67 = v43;
            v66 = v45;
            v69 = v41;
            v70 = v40;
            v68 = v42;
            sub_19A322580((v56 > 1), v57 + 1, 1);
            v45 = v66;
            v43 = v67;
            v42 = v68;
            v41 = v69;
            v40 = v70;
            v39 = v77;
          }

          *(v39 + 16) = v57 + 1;
          v58 = v39 + 16 * v57;
          *(v58 + 32) = v54;
          *(v58 + 40) = v55;
          ++v44;
          --v38;
        }

        while (v38);

        v3 = v71;
        v2 = v72;
        v5 = v74;
        goto LABEL_53;
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_53:
    *&v77 = v39;

    sub_19A516A34(&v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
    sub_19A331C2C();
    v59 = sub_19A572BEC();
    v61 = v60;

    v78 = MEMORY[0x1E69E6158];
    *&v77 = v59;
    *(&v77 + 1) = v61;
    sub_19A3355EC(&v77, v80);
    v62 = v73;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v62;
    sub_19A33D694(v80, 0x7372657470616461, 0xE800000000000000, v63);
    v23 = v76;
LABEL_54:
    sub_19A543A20(v23);

    v64 = sub_19A572ADC();

    PPSSendTelemetry();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_19A51686C()
{

  v1 = OBJC_IVAR____TtCV13DiffusionBase22AppleDiffusionPipeline15PowerLogMetrics__startDate;
  v2 = sub_19A570FBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s15PowerLogMetricsCMa(uint64_t a1)
{
  result = qword_1EAF9EF88;
  if (!qword_1EAF9EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A51697C(uint64_t a1)
{
  result = sub_19A570FBC();
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

void sub_19A516A34(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A4FF6C8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_19A516AA0(v4);
  *a1 = v2;
}

void sub_19A516AA0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_19A573EBC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_19A5730DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_19A516C68(v7, v8, a1, v4);
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
    sub_19A516B98(0, v2, 1, a1);
  }
}

uint64_t sub_19A516B98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_19A573F1C(), (result & 1) == 0))
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

void sub_19A516C68(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_19A34DDAC(v8);
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
        sub_19A517244((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
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
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_19A573F1C();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_19A573F1C()))
          {
            goto LABEL_23;
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_19A31CF2C(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_19A31CF2C((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
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
        sub_19A517244((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A34DDAC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_19A34DD20(v44);
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
    if (v37 || (sub_19A573F1C() & 1) == 0)
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
}

uint64_t sub_19A517244(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_19A573F1C() & 1) != 0)
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
      if (!v21 && (sub_19A573F1C() & 1) != 0)
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ControlNet.loadResources()()
{
  v2 = v1;
  v19 = v0;
  if (v0 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v4 = 0;
    v5 = &qword_1ED824000;
    v18 = i;
    while ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](v4, v19);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v20 = v6;
      if (v5[424] != -1)
      {
        swift_once();
      }

      v7 = sub_19A5723FC();
      __swift_project_value_buffer(v7, qword_1ED82BD48);

      v8 = sub_19A5723DC();
      v9 = sub_19A57354C();

      v10 = v9;
      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v2;
        v16 = sub_19A31F114(v13, v14, &v21);
        i = v18;

        *(v11 + 4) = v16;
        v2 = v15;
        _os_log_impl(&dword_19A2DE000, v8, v10, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v17 = v11;
        v5 = &qword_1ED824000;
        MEMORY[0x19A902C50](v17, -1, -1);
      }

      sub_19A5735DC();

      if (!v2)
      {
        ++v4;
        if (v20 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v4 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

Swift::Void __swiftcall ControlNet.unloadResources()()
{
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = sub_19A573B4C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](i, v1);
      }

      else
      {
      }

      ManagedMLModel.unloadResources()();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ControlNet.prewarmResources()()
{
  v2 = v1;
  v3 = v0;
  if (v0 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v5 = 0;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    v21 = v3 & 0xC000000000000001;
    v6 = &qword_1ED824000;
    v19 = i;
    while (v21)
    {
      MEMORY[0x19A901520](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

LABEL_7:
      v23 = v7;
      if (v6[424] != -1)
      {
        swift_once();
      }

      v8 = sub_19A5723FC();
      __swift_project_value_buffer(v8, qword_1ED82BD48);

      v9 = sub_19A5723DC();
      v10 = sub_19A57354C();

      v22 = v10;
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v3;
        v16 = v2;
        v17 = sub_19A31F114(v13, v14, &v24);
        i = v19;

        *(v11 + 4) = v17;
        v2 = v16;
        v3 = v15;
        _os_log_impl(&dword_19A2DE000, v9, v22, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v18 = v11;
        v6 = &qword_1ED824000;
        MEMORY[0x19A902C50](v18, -1, -1);
      }

      sub_19A5735DC();
      if (v2)
      {

        return;
      }

      ManagedMLModel.unloadResources()();

      ++v5;
      if (v23 == i)
      {
        return;
      }
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_20;
    }

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

void *sub_19A517A7C(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, float a5)
{
  v125 = a3;
  v137 = a2;
  v130 = a1;
  v152 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = v112 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v12 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v126 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = v112 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v112 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_19A576E20;
  *(v19 + 32) = a5;
  *(v19 + 36) = a5;
  v151 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
  v138 = v18;
  sub_19A57264C();
  v20 = a4;
  v121 = a4;
  if (a4 >> 62)
  {
    goto LABEL_89;
  }

  v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (!v21)
    {
      break;
    }

    v23 = 0;
    v24 = v20 & 0xC000000000000001;
    v25 = v20 & 0xFFFFFFFFFFFFFF8;
    v26 = v20 + 32;
    v136 = 0x800000019A59C520;
    v147 = (v12 + 2);
    v128 = (v12 + 7);
    v124 = (v12 + 6);
    v123 = (v12 + 4);
    v112[1] = v12 + 5;
    v135 = xmmword_19A57A9D0;
    v148 = MEMORY[0x1E69E7CC0];
    v141 = v12;
    v114 = v9;
    v118 = v21;
    v117 = v20 & 0xC000000000000001;
    v116 = v20 & 0xFFFFFFFFFFFFFF8;
    v115 = v20 + 32;
    while (1)
    {
      if (v24)
      {
        v107 = MEMORY[0x19A901520](v23);
        v22 = MEMORY[0x1E69E7CC0];
        v129 = v107;
      }

      else
      {
        if (v23 >= *(v25 + 16))
        {
          goto LABEL_86;
        }

        v129 = *(v26 + 8 * v23);
      }

      v122 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = *(v130 + 16);
      v140 = v23;
      if (v27)
      {
        v151 = v22;
        sub_19A573A5C();
        v28 = *(v12 + 80);
        v29 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
        if (v23 >= *(v125 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
        }

        v9 = v29;
        v30 = (v28 + 32) & ~v28;
        v31 = v130 + v30;
        v139 = v12[9];
        v143 = v125 + v30 + v139 * v23;
        v142 = *v147;
        v134 = v27;
        while (1)
        {
          v144 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
          inited = swift_initStackObject();
          *(inited + 16) = v135;
          *(inited + 32) = 0x656C706D6173;
          *(inited + 40) = 0xE600000000000000;
          v33 = v146;
          v145 = v31;
          v34 = v149;
          v35 = v142;
          v142(v146, v31, v149);
          sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
          *(inited + 48) = sub_19A57351C();
          *(inited + 72) = v9;
          *(inited + 80) = 0x70657473656D6974;
          *(inited + 88) = 0xE800000000000000;
          v35(v33, v138, v34);
          *(inited + 96) = sub_19A57351C();
          *(inited + 120) = v9;
          *(inited + 128) = 0xD000000000000015;
          *(inited + 136) = v136;
          v35(v33, v137, v34);
          *(inited + 144) = sub_19A57351C();
          *(inited + 168) = v9;
          *(inited + 176) = 0x6E6C6F72746E6F63;
          *(inited + 184) = 0xEF646E6F635F7465;
          v35(v33, v143, v34);
          v36 = sub_19A57351C();
          *(inited + 216) = v9;
          *(inited + 192) = v36;
          sub_19A330370(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00, &qword_19A578A30);
          swift_arrayDestroy();
          v37 = objc_allocWithZone(MEMORY[0x1E695FE48]);
          v38 = sub_19A572ADC();

          v150 = 0;
          v39 = [v37 initWithDictionary:v38 error:&v150];

          v40 = v150;
          if (!v39)
          {
            break;
          }

          sub_19A573A2C();
          sub_19A573A6C();
          sub_19A573A7C();
          sub_19A573A3C();
          v31 = &v139[v145];
          v27 = v144 - 1;
          if (v144 == 1)
          {
            v41 = v151;
            v12 = v141;
            v27 = v134;
            goto LABEL_16;
          }
        }

        v108 = v40;
        v109 = sub_19A570D1C();

        v131 = v109;
        swift_willThrow();

        v110 = v149;
        v12 = v141;
        goto LABEL_75;
      }

      v41 = v22;
LABEL_16:
      v120 = v41;

      if (v41 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
        sub_19A573B8C();
      }

      else
      {
        sub_19A573FEC();
      }

      v42 = objc_allocWithZone(MEMORY[0x1E695FE30]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
      v43 = sub_19A57307C();

      v44 = [v42 initWithFeatureProviderArray_];

      MEMORY[0x1EEE9AC00](v45);
      v119 = v44;
      v112[-2] = v44;
      v46 = v131;
      sub_19A506C14(0, 0, sub_19A50B7F8, &v112[-4]);
      v131 = v46;
      if (v46)
      {
LABEL_78:

        v110 = v149;
LABEL_75:
        (v12[1])(v138, v110);
        return v148;
      }

      v48 = v47;
      if (v148[2])
      {
        v49 = v140;
      }

      else
      {
        v49 = v140;
        if (!*(v47 + 16))
        {
          goto LABEL_92;
        }

        v50 = *(v47 + 32);

        v51 = sub_19A519664(v27, v50);

        v148 = v51;
      }

      v134 = *(v48 + 16);
      if (v134)
      {
        v52 = 0;
        v133 = v48 + 32;
        v132 = v48;
LABEL_26:
        if (v52 >= *(v48 + 16))
        {
          goto LABEL_85;
        }

        v53 = *(v133 + 8 * v52);
        v145 = v52;
        v139 = (v52 + 1);
        v54 = v53 + 64;
        v55 = 1 << *(v53 + 32);
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        else
        {
          v56 = -1;
        }

        v57 = v56 & *(v53 + 64);
        v58 = (v55 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v59 = 0;
        v143 = v53;
        v142 = v58;
        while (2)
        {
          v144 = v148 + 4;
          v60 = v59;
          if (!v57)
          {
            goto LABEL_33;
          }

          while (1)
          {
            v59 = v60;
LABEL_36:
            v12 = v148;
            if (!*(v53 + 16))
            {
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v61 = (*(v53 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v57)))));
            v62 = *v61;
            v9 = v61[1];

            v63 = sub_19A31F6BC(v62, v9);
            if ((v64 & 1) == 0)
            {
              goto LABEL_80;
            }

            v65 = [*(*(v53 + 56) + 8 * v63) multiArrayValue];
            if (!v65)
            {
              goto LABEL_94;
            }

            v66 = v65;
            v57 &= v57 - 1;
            if (!v49)
            {
              break;
            }

            sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
            if (v145 >= v12[2])
            {
              goto LABEL_81;
            }

            v67 = v144[v145];
            if (!*(v67 + 16))
            {
              goto LABEL_82;
            }

            v68 = sub_19A31F6BC(v62, v9);
            v12 = v69;

            if ((v12 & 1) == 0)
            {
              goto LABEL_83;
            }

            v12 = v141;
            (v141[2])(v146, *(v67 + 56) + v141[9] * v68, v149);

            sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
            v70 = sub_19A57351C();
            v71 = [v66 count];
            v9 = [v66 dataPointer];
            v72 = [v70 dataPointer];
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            MEMORY[0x19A902DE0](v9, 1, v72, 1, v72, 1, v71);

            v60 = v59;
            v49 = v140;
            v53 = v143;
            v58 = v142;
            if (!v57)
            {
              while (1)
              {
LABEL_33:
                v59 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
                  __break(1u);
                  goto LABEL_78;
                }

                if (v59 >= v58)
                {
                  break;
                }

                v57 = *(v54 + 8 * v59);
                ++v60;
                if (v57)
                {
                  goto LABEL_36;
                }
              }

              v52 = v139;
              v48 = v132;
              if (v139 == v134)
              {
                goto LABEL_68;
              }

              goto LABEL_26;
            }
          }

          v73 = v65;
          v74 = v127;
          sub_19A57267C();
          v75 = *v128;
          (*v128)(v74, 0, 1, v149);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_19A4E52E0(v12);
          }

          if (v145 >= v12[2])
          {
            goto LABEL_88;
          }

          v144 = v73;
          v148 = v12;
          v76 = v12 + 4;
          v77 = v74;
          v78 = v74;
          v79 = v149;
          if ((*v124)(v77, 1, v149) == 1)
          {
            v113 = v75;
            sub_19A519560(v78);
            v80 = v145;
            v81 = sub_19A31F6BC(v62, v9);
            v83 = v82;

            if (v83)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v151 = v76[v80];
              v76[v80] = 0x8000000000000000;
              v85 = v149;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_19A554F90();
              }

              v86 = v151;

              v9 = v114;
              v87.n128_f64[0] = (v141[4])(v114, *(v86 + 56) + v141[9] * v81, v85);
              sub_19A4F4A90(v81, v86, v87);

              v76[v80] = v86;

              v88 = 0;
              v89 = v85;
            }

            else
            {

              v88 = 1;
              v89 = v149;
              v9 = v114;
            }

            v113(v9, v88, 1, v89);
            sub_19A519560(v9);
            v12 = v141;
            v49 = v140;
LABEL_67:
            v53 = v143;
            v58 = v142;
            continue;
          }

          break;
        }

        v113 = *v123;
        (v113)(v126, v78, v79);
        v90 = v145;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v151 = v76[v90];
        v92 = v151;
        v76[v90] = 0x8000000000000000;
        v93 = sub_19A31F6BC(v62, v9);
        v95 = v92[2];
        v96 = (v94 & 1) == 0;
        v97 = __OFADD__(v95, v96);
        v98 = v95 + v96;
        if (v97)
        {
          goto LABEL_91;
        }

        v99 = v94;
        if (v92[3] >= v98)
        {
          if ((v91 & 1) == 0)
          {
            v106 = v93;
            sub_19A554F90();
            v93 = v106;
          }

LABEL_62:
          v49 = v140;
          if (v99)
          {
            v101 = v93;

            v102 = v151;
            (v141[5])(v151[7] + v141[9] * v101, v126, v149);
          }

          else
          {
            v102 = v151;
            v151[(v93 >> 6) + 8] |= 1 << v93;
            v103 = (v102[6] + 16 * v93);
            *v103 = v62;
            v103[1] = v9;
            (v113)(v102[7] + v141[9] * v93, v126, v149);

            v104 = v102[2];
            v97 = __OFADD__(v104, 1);
            v105 = v104 + 1;
            if (v97)
            {
              goto LABEL_93;
            }

            v102[2] = v105;
          }

          v76[v145] = v102;

          v12 = v141;
          goto LABEL_67;
        }

        sub_19A551670(v98, v91);
        v93 = sub_19A31F6BC(v62, v9);
        if ((v99 & 1) == (v100 & 1))
        {
          goto LABEL_62;
        }

        result = sub_19A57404C();
        __break(1u);
        return result;
      }

LABEL_68:

      v23 = v122;
      v22 = MEMORY[0x1E69E7CC0];
      v24 = v117;
      v25 = v116;
      v26 = v115;
      if (v122 == v118)
      {
        goto LABEL_73;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    v21 = sub_19A573B4C();
    v20 = v121;
  }

  v148 = MEMORY[0x1E69E7CC0];
LABEL_73:
  (v12[1])(v138, v149);
  return v148;
}

uint64_t sub_19A518C70(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A573B4C())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v7 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    if (i < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A901520](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }
      }

      MEMORY[0x1EEE9AC00](v6);
      sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
      sub_19A5735DC();

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      if (v5 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_19A518E5C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v5 = sub_19A572AFC();
  if (*(v5 + 16) && (v6 = sub_19A31F6BC(0x6E6C6F72746E6F63, 0xEF646E6F635F7465), (v7 & 1) != 0))
  {
    v8 = v6;

    v9 = *(*(v5 + 56) + 8 * v8);

    *a2 = v9;
  }

  else
  {

    __break(1u);
  }
}

void *ControlNet.inputImageShapes.getter(unint64_t a1)
{
  v1 = sub_19A518C70(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_19A4E458C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    v5 = 0;
    v26 = v2;
    v27 = v2 & 0xC000000000000001;
    v6 = v32;
    v23 = v2 + 32;
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = i;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v27)
      {
        v8 = MEMORY[0x19A901520]();
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v23 + 8 * v5);
      }

      v9 = v8;
      result = [v8 multiArrayConstraint];
      if (!result)
      {
        goto LABEL_35;
      }

      v10 = result;
      v11 = [result shape];

      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      v12 = sub_19A57308C();

      if (v12 >> 62)
      {
        v13 = sub_19A573B4C();
        v30 = v7;
        if (!v13)
        {
LABEL_23:

          v15 = MEMORY[0x1E69E7CC0];
          goto LABEL_24;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v30 = v7;
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v31 = MEMORY[0x1E69E7CC0];
      sub_19A3225A0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_29;
      }

      v28 = v9;
      v29 = v6;
      v14 = 0;
      v15 = v31;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x19A901520](v14, v12);
        }

        else
        {
          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 integerValue];

        v20 = *(v31 + 16);
        v19 = *(v31 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_19A3225A0((v19 > 1), v20 + 1, 1);
        }

        ++v14;
        *(v31 + 16) = v20 + 1;
        *(v31 + 8 * v20 + 32) = v18;
      }

      while (v13 != v14);

      i = v25;
      v2 = v26;
      v6 = v29;
LABEL_24:
      v22 = *(v6 + 16);
      v21 = *(v6 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_19A4E458C((v21 > 1), v22 + 1, 1);
      }

      *(v6 + 16) = v22 + 1;
      *(v6 + 8 * v22 + 32) = v15;
      v5 = v30;
      if (v30 == i)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_19A519288(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x19A902330]();
  sub_19A2E9C68(a1, a2, a3, a4, a5);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    *a6 = v15;
  }
}

uint64_t _s13DiffusionBase10ControlNetV7modelAt13configurationACSay10Foundation3URLVG_So20MLModelConfigurationCtcfC_0(uint64_t a1, void *a2)
{
  v4 = sub_19A570EAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = (a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v20 = *(v12 + 56);
    v21 = v13;
    v22 = v12;
    v18[1] = a1;
    v19 = (v12 - 8);
    do
    {
      v15 = v21;
      v21(v10, v14, v4);
      v15(v7, v10, v4);
      type metadata accessor for ManagedMLModel(0);
      swift_allocObject();
      v16 = a2;
      ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v7, v16, MEMORY[0x1E69E7CC0], "ControlNet?", 11, 2);
      (*v19)(v10, v4);
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      v14 += v20;
      --v11;
    }

    while (v11);

    return v23;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_19A519560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A5195C8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EC0, &qword_19A58F7E0);
    v4 = sub_19A5730DC();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_19A519664(uint64_t a1, uint64_t a2)
{
  v59[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = v59 - v8;
  v9 = sub_19A4E7944(MEMORY[0x1E69E7CC0]);
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v67 = (v4 + 32);
  v64 = v4;
  v15 = v4 + 40;
  v16 = v9;
  v59[1] = v15;

  v17 = 0;
  v62 = v14;
  v63 = a2 + 64;
  v60 = v3;
  v61 = a2;
  v66 = v6;
  while (v13)
  {
    v69 = v16;
    v20 = v17;
LABEL_12:
    v21 = __clz(__rbit64(v13)) | (v20 << 6);
    v22 = *(a2 + 56);
    v23 = (*(a2 + 48) + 16 * v21);
    v24 = v23[1];
    v70 = *v23;
    v71 = v24;
    v25 = *(v22 + 8 * v21);
    v73 = 0;

    v26 = v25;
    v27 = [v26 multiArrayValue];
    if (!v27)
    {
      goto LABEL_40;
    }

    v28 = v27;
    v29 = [v27 shape];

    sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
    v30 = sub_19A57308C();

    if (v30 >> 62)
    {
      v31 = sub_19A573B4C();
      v68 = v26;
      if (!v31)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v68 = v26;
      if (!v31)
      {
        goto LABEL_25;
      }
    }

    v72 = MEMORY[0x1E69E7CC0];
    sub_19A3225A0(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_38;
    }

    v32 = 0;
    v33 = v72;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x19A901520](v32, v30);
      }

      else
      {
        v34 = *(v30 + 8 * v32 + 32);
      }

      v35 = v34;
      v36 = [v34 integerValue];

      v72 = v33;
      v38 = v33[2];
      v37 = v33[3];
      if (v38 >= v37 >> 1)
      {
        sub_19A3225A0((v37 > 1), v38 + 1, 1);
        v33 = v72;
      }

      ++v32;
      v33[2] = v38 + 1;
      v33[v38 + 4] = v36;
    }

    while (v31 != v32);

    v3 = v60;
    a2 = v61;
LABEL_26:
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
    v39 = v65;
    sub_19A57271C();
    v40 = v66;
    v41 = *v67;
    (*v67)(v66, v39, v3);
    v42 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v42;
    v44 = sub_19A31F6BC(v70, v71);
    v46 = v42[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_37;
    }

    v50 = v45;
    if (v42[3] >= v49)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v44;
        sub_19A554F90();
        v44 = v56;
      }
    }

    else
    {
      sub_19A551670(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_19A31F6BC(v70, v71);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_41;
      }
    }

    v13 &= v13 - 1;
    if (v50)
    {
      v18 = v44;

      v19 = v72[7] + *(v64 + 72) * v18;
      v16 = v72;
      (*(v64 + 40))(v19, v40, v3);
    }

    else
    {
      v16 = v72;
      v72[(v44 >> 6) + 8] |= 1 << v44;
      v52 = (v16[6] + 16 * v44);
      v53 = v71;
      *v52 = v70;
      v52[1] = v53;
      v41((v16[7] + *(v64 + 72) * v44), v40, v3);

      v54 = v16[2];
      v48 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v48)
      {
        goto LABEL_39;
      }

      v16[2] = v55;
    }

    v17 = v20;
    v14 = v62;
    v10 = v63;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      v57 = sub_19A5195C8(v16, v59[0]);

      return v57;
    }

    v13 = *(v10 + 8 * v20);
    ++v17;
    if (v13)
    {
      v69 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t PNDMScheduler.__allocating_init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:)(uint64_t a1, uint64_t a2, char a3, float a4, float a5)
{
  v10 = swift_allocObject();
  PNDMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:)(a1, a2, a3 & 1, a4, a5);
  return v10;
}

void sub_19A519C18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_19A4E44CC(0, v6, 0);
  v25 = v5;
  v26 = v4;
  v23 = a1;
  v24 = a2;
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = (a2 + 32);
    v9 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      v10 = *v8;
      v11 = logf(*v7);
      v12 = logf(v10);
      v14 = *(v27 + 16);
      v13 = *(v27 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v12;
        sub_19A4E44CC((v13 > 1), v14 + 1, 1);
        v12 = v15;
      }

      --v5;
      *(v27 + 16) = v14 + 1;
      *(v27 + 4 * v14 + 32) = v11 - v12;
      --v4;
      ++v8;
      ++v7;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v26 <= v25)
    {
      return;
    }

    while (v6 < v26)
    {
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        v17 = *(v24 + 32 + 4 * v6);
        v18 = logf(*(v23 + 32 + 4 * v6));
        v19 = logf(v17);
        v21 = *(v27 + 16);
        v20 = *(v27 + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v19;
          sub_19A4E44CC((v20 > 1), v21 + 1, 1);
          v19 = v22;
        }

        *(v27 + 16) = v21 + 1;
        *(v27 + 4 * v21 + 32) = v18 - v19;
        ++v6;
        if (v16 != v26)
        {
          continue;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t Scheduler.weightedSum(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
    sub_19A51B91C();
    sub_19A5726CC();
    v2 = sub_19A57263C();
    MEMORY[0x1EEE9AC00](v2);
    return sub_19A5725FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19A519F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (v8)
  {
    v9 = *(a1 + 8);
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v9)
    {
      bzero(v8, 4 * v9);
    }
  }

  v10 = *(a3 + 16);
  if (!v10)
  {
    return;
  }

  if (v10 > *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = a4 + 32;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v13 = a3 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
  v14 = *(*(v12 - 8) + 72);
  do
  {
    v11 += 8;
    MEMORY[0x1EEE9AC00](v12);
    v12 = sub_19A57260C();
    v13 += v14;
    --v10;
  }

  while (v10);
}

uint64_t sub_19A51A0A4(uint64_t result, float a2)
{
  v3 = v2[3];
  v4 = v3 * a2;
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= 0)
  {
    if (v3 <= 0)
    {
LABEL_16:
      v8 = MEMORY[0x1EEE9AC00](result);
      v12[2] = &v16;
      v13 = LODWORD(v8);
      v14 = v9;
      v15 = v10;
      return sub_19A4DABB0(sub_19A51D8CC, v12, v11);
    }

    v5 = 0;
  }

  else if (v5 >= v3)
  {
    goto LABEL_16;
  }

  v6 = v2[8];
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_21;
  }

  v7 = *(v6 + 4 * v5 + 32);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v2[6] + 16) > v7)
  {
    goto LABEL_16;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_19A51A248(uint64_t result, float a2)
{
  v3 = v2[3];
  v4 = v3 * a2;
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= 0)
  {
    if (v3 <= 0)
    {
LABEL_16:
      v8 = MEMORY[0x1EEE9AC00](result);
      v13[2] = &v17;
      v14 = LODWORD(v8);
      v15 = v9;
      v16 = v10;
      return sub_19A4DABB0(v11, v13, v12);
    }

    v5 = 0;
  }

  else if (v5 >= v3)
  {
    goto LABEL_16;
  }

  v6 = v2[7];
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_21;
  }

  v7 = *(v6 + 4 * v5 + 32);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v2[6] + 16) > v7)
  {
    goto LABEL_16;
  }

LABEL_26:
  __break(1u);
  return result;
}

void Scheduler.addNoise(originalSample:noise:strength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), float a5)
{
  v11 = a4[2];
  v12 = v11(a3, a4);
  v13 = v11(a3, a4) * a5;
  if (COERCE_INT(fabs(v13)) > 2139095039)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFSUB__(v12, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = (v12 - v13) & ~((v12 - v13) >> 63);
  v15 = v11(a3, a4);
  if (v14 >= v15)
  {
LABEL_13:
    v19 = MEMORY[0x1EEE9AC00](v15);
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = v5;
    v22 = v20;
    v23 = LODWORD(v19);
    v24 = a1;
    sub_19A4DABB0(sub_19A51B9A0, v21, a2);
    return;
  }

  v16 = a4[7](a3, a4);
  v17 = a4[3](a3, a4);
  if (v14 >= *(v17 + 16))
  {
    goto LABEL_18;
  }

  v18 = *(v17 + 4 * v14 + 32);

  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v18 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(v16 + 16) > v18)
  {

    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_19A51A614(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068, &unk_19A580FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19A576E20;
  v17 = v16 + v15;
  v18 = *(v13 + 16);
  v18(v17, a5, v12);
  v18(v17 + v14, a1, v12);
  sub_19A51B91C();
  sub_19A5726CC();
  sub_19A57263C();
  sub_19A5725FC();
  swift_setDeallocating();
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t sub_19A51A80C(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068, &unk_19A580FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19A576E20;
  v15 = v14 + v13;
  v16 = *(v11 + 16);
  v16(v15, a5, v10);
  v16(v15 + v12, a1, v10);
  Scheduler.weightedSum(_:_:)(inited, v14);
  swift_setDeallocating();
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

void sub_19A51A9C4(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  v2 = *(v1 + 24);
  v3 = *&result * v2;
  if (COERCE_INT(fabs(v3)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v1 + 64);
  v7 = *(v6 + 16);
  if (v5 > v7)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v5 < 1)
  {
LABEL_11:

    return;
  }

  sub_19A51CFEC(v6, v6 + 32, v5 & ~(v5 >> 63), (2 * v7) | 1);
}

void sub_19A51AA88(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  v2 = *(v1 + 24);
  v3 = *&result * v2;
  if (COERCE_INT(fabs(v3)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v1 + 56);
  v7 = *(v6 + 16);
  if (v5 > v7)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v5 < 1)
  {
LABEL_11:

    return;
  }

  sub_19A51CFEC(v6, v6 + 32, v5 & ~(v5 >> 63), (2 * v7) | 1);
}

uint64_t Scheduler.calculateTimesteps(strength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x100000000) == 0)
  {
    v5 = *&a1;
    v6 = *(a3 + 16);
    v7 = v6(a2, a3);
    result = v6(a2, a3);
    v9 = v5 * result;
    v10 = COERCE_UNSIGNED_INT(fabs(v9));
    if (v10 > 2139095039)
    {
      __break(1u);
    }

    else
    {
      v10 = 3741319169;
      if (v9 > -9.2234e18)
      {
        if (v9 < 9.2234e18)
        {
          v10 = v9;
          v11 = __OFSUB__(v7, v9);
          v7 -= v9;
          if (!v11)
          {
            result = (*(a3 + 24))(a2, a3);
            v10 = *(result + 16);
            if (v7 <= v10)
            {
              if (v7 < 1)
              {
                return result;
              }

LABEL_17:
              sub_19A51CFEC(result, result + 32, v7 & ~(v7 >> 63), (2 * v10) | 1);
              v14 = v13;

              return v14;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v12 = *(a3 + 24);

  return v12(a2, a3);
}

uint64_t sub_19A51ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_19A57265C();
  sub_19A57263C();
  return sub_19A5725FC();
}

uint64_t sub_19A51AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(char *, char *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a8;
  v15 = a12;
  v16 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v36 - v23;
  sub_19A57265C();
  swift_getWitnessTable();
  result = sub_19A5726CC();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v43 = a1;
    v44 = a7;
    v42 = v18;
    if (result)
    {
      v26 = 0;
      v27 = v16 + 16;
      v40 = *(v16 + 16);
      v41 = a9;
      v28 = *(v16 + 72);
      v38 = (v16 + 8);
      v39 = v28;
      v37 = (v16 + 32);
      do
      {
        v47 = *a6;
        v29 = v40;
        v40(v21, v41 + v26, v15);
        v30 = v15;
        v31 = v21;
        v32 = v42;
        v29(v42, v43 + v26, v30);
        v33 = v27;
        v44(v31, v32);
        v34 = *v38;
        v35 = v32;
        v21 = v31;
        v15 = v30;
        (*v38)(v35, v30);
        v34(v21, v30);
        v27 = v33;
        result = (*v37)(v47 + v26, v46, v30);
        v26 += v39;
        --v25;
      }

      while (v25);
    }
  }

  return result;
}

uint64_t BetaSchedule.hashValue.getter(char a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1 & 1);
  return sub_19A57410C();
}

char *PNDMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:)(uint64_t a1, uint64_t a2, char a3, float a4, float a5)
{
  v6 = v5;
  v66[0] = *v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = v66 - v13;
  v14 = MEMORY[0x1E69E7CC0];
  *(v6 + 11) = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC13DiffusionBase13PNDMScheduler_currentSample;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v68 = v16;
  v66[1] = v17 + 56;
  v18(&v6[v15], 1, 1);
  *(v6 + 2) = a2;
  *(v6 + 3) = a1;
  v67 = v18;
  if (a3)
  {
    v19 = fabsf(sqrtf(a4));
    if (a4 == -INFINITY)
    {
      v19 = INFINITY;
    }

    v20 = fabsf(sqrtf(a5));
    if (a5 == -INFINITY)
    {
      v21 = INFINITY;
    }

    else
    {
      v21 = v20;
    }

    v22 = sub_19A51B9CC(a2, v19, v21);
    v23 = *(v22 + 16);
    if (v23)
    {
      v70[0] = v14;
      v24 = v22;
      sub_19A4E44CC(0, v23, 0);
      v25 = v24;
      v26 = v70[0];
      v27 = *(v70[0] + 16);
      v14 = 32;
      do
      {
        a5 = *(v25 + v14);
        v70[0] = v26;
        v28 = *(v26 + 24);
        if (v27 >= v28 >> 1)
        {
          sub_19A4E44CC((v28 > 1), v27 + 1, 1);
          v25 = v24;
          v26 = v70[0];
        }

        *(v26 + 16) = v27 + 1;
        *(v26 + 4 * v27 + 32) = a5 * a5;
        v14 += 4;
        ++v27;
        --v23;
      }

      while (v23);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v26 = sub_19A51B9CC(a2, a4, a5);
  }

  *(v6 + 4) = v26;
  v29 = *(v26 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v70[0] = MEMORY[0x1E69E7CC0];

    sub_19A4E44CC(0, v29, 0);
    v31 = v70[0];
    v32 = *(v70[0] + 16);
    v14 = 32;
    a5 = 1.0;
    do
    {
      v33 = *(v26 + v14);
      v70[0] = v31;
      v34 = *(v31 + 3);
      if (v32 >= v34 >> 1)
      {
        sub_19A4E44CC((v34 > 1), v32 + 1, 1);
        v31 = v70[0];
      }

      *(v31 + 2) = v32 + 1;
      *&v31[4 * v32 + 32] = 1.0 - v33;
      v14 += 4;
      ++v32;
      --v29;
    }

    while (v29);

    v30 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  *(v6 + 5) = v31;
  v35 = *(v31 + 2);
  v36 = (v35 - 1);
  if (v35 != 1)
  {
    if (v35)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_19A4E52CC(v31);
      }

      v37 = 0;
      while (v37 < *(v31 + 2))
      {
        *&v31[4 * v37 + 36] = *&v31[4 * v37 + 32] * *&v31[4 * v37 + 36];
        if (v36 == ++v37)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_31:
  *(v6 + 6) = v31;
  if (!a1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a2 != 0x8000000000000000 || a1 != -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a5 = (a2 / a1);
      v70[0] = v30;

      v38 = sub_19A4E44CC(0, a1, 0);
      v39 = 0;
      a2 = v70[0];
      v40 = *(v70[0] + 16);
      do
      {
        v70[0] = a2;
        v41 = *(a2 + 24);
        if (v40 >= v41 >> 1)
        {
          v38 = sub_19A4E44CC((v41 > 1), v40 + 1, 1);
          a2 = v70[0];
        }

        v42 = roundf(a5 * v39++);
        *(a2 + 16) = v40 + 1;
        *(a2 + 4 * v40++ + 32) = v42 + 1.0;
      }

      while (a1 != v39);
      v70[0] = *(v6 + 6);
      v43 = *(v70[0] + 16);
      MEMORY[0x1EEE9AC00](v38);
      v66[-2] = v70;

      v44 = sub_19A51D274(v43, sub_19A51D4E0);

      *(v6 + 8) = v44;
      v46 = *(v6 + 6);
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = sub_19A5730DC();
        *(v48 + 16) = v47;
        memset_pattern16((v48 + 32), &unk_19A590FB0, 4 * v47);
        v46 = *(v6 + 6);
      }

      else
      {
        v47 = *(v30 + 16);
        v48 = v30;
      }

      v70[0] = v48;
      v71 = v46;
      MEMORY[0x1EEE9AC00](v45);
      v66[-2] = v70;
      v66[-1] = &v71;

      v49 = sub_19A51D274(v47, sub_19A51D52C);

      v70[0] = v49;
      MEMORY[0x1EEE9AC00](*(v49 + 16));
      v66[-2] = v70;
      v51 = sub_19A51D274(v50, sub_19A51DBE0);

      *(v6 + 9) = v51;
      v52 = *(v6 + 8);

      sub_19A519C18(v52, v51);
      v54 = v53;
      a1 = a2 + 32;

      *(v6 + 10) = v54;
      v71 = MEMORY[0x1E69E7CC0];
      v26 = *(a2 + 16);
      v55 = v26 - 1;
      if (!v26)
      {
        v55 = 0;
      }

      v56 = (2 * v55) | 1;

      sub_19A559880(v57, a2 + 32, 0, v56);
      v36 = v71;
      v14 = *(v71 + 2);
      if (v14)
      {
        a5 = *&v71[4 * v14 + 28];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_46;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      v36 = sub_19A514B10(0, v14 + 1, 1, v36);
LABEL_46:
      v59 = *(v36 + 2);
      v58 = *(v36 + 3);
      if (v59 >= v58 >> 1)
      {
        v36 = sub_19A514B10((v58 > 1), v59 + 1, 1, v36);
      }

      *(v36 + 2) = v59 + 1;
      v60 = &v36[4 * v59];
      *(v60 + 32) = a5;
      if (v26)
      {
        v60 = *(a2 + 16);
        if (v26 <= v60)
        {
          a5 = *(a1 + 4 * v26 - 4);

          v59 = *(v36 + 2);
          v60 = *(v36 + 3);
          a1 = v59 + 1;
          if (v59 < v60 >> 1)
          {
LABEL_51:
            v62 = v68;
            v61 = v69;
            v63 = v67;
            *(v36 + 2) = a1;
            *&v36[4 * v59 + 32] = a5;
            v71 = v36;
            sub_19A51BAC4();
            *(v6 + 7) = v71;
            *(v6 + 12) = 0;
            *(v6 + 13) = MEMORY[0x1E69E7CC0];
            v63(v61, 1, 1, v62);
            v64 = OBJC_IVAR____TtC13DiffusionBase13PNDMScheduler_currentSample;
            swift_beginAccess();
            sub_19A51D57C(v61, &v6[v64]);
            swift_endAccess();

            return v6;
          }

LABEL_60:
          v36 = sub_19A514B10((v60 > 1), a1, 1, v36);
          goto LABEL_51;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_60;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  __break(1u);

  sub_19A519560(&v6[OBJC_IVAR____TtC13DiffusionBase13PNDMScheduler_currentSample]);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}