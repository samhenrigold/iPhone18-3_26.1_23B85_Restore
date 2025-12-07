id sub_1B8ACF60C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B8ADA8C8(0xD000000000000019, 0x80000001B8B06CE0, 0);
  qword_1EDB75710 = result;
  return result;
}

uint64_t sub_1B8ACF698()
{
  v1 = sub_1B8AE6E68(MEMORY[0x1E69E7CC0]);
  result = sub_1B8ACF9CC(&v1, 0x1000000000000012uLL, 0x80000001B8B06D30, 0x222227272D2DuLL, 0xE600000000000000);
  off_1EDB75740 = v1;
  return result;
}

uint64_t sub_1B8ACF700()
{
  v1 = sub_1B8AE6E68(MEMORY[0x1E69E7CC0]);
  sub_1B8ACF9CC(&v1, 0xABC7uLL, 0xA200000000000000, 0x71uLL, 0xE100000000000000);
  result = sub_1B8ACF9CC(&v1, 0x1000000000000027uLL, 0x80000001B8B06CB0, 0x6F6D696865646361uLL, 0xED00007876757472);
  off_1EDB75730 = v1;
  return result;
}

void *sub_1B8ACF790()
{
  result = sub_1B8ACF7B0();
  off_1EDB75720 = result;
  return result;
}

void *sub_1B8ACF7B0()
{
  v1 = sub_1B8AE6E68(MEMORY[0x1E69E7CC0]);
  sub_1B8ACF9CC(&v1, 0x1000000000000047uLL, 0x80000001B8B06A80, 0xD00000000000001CLL, 0x80000001B8B06AD0);
  sub_1B8ACF9CC(&v1, 0x1000000000000086uLL, 0x80000001B8B06AF0, 0xD000000000000024, 0x80000001B8B06B80);
  sub_1B8ACF9CC(&v1, 0x1000000000000068uLL, 0x80000001B8B06BB0, 0xD00000000000001ALL, 0x80000001B8B06C20);
  sub_1B8ACF9CC(&v1, 0x1000000000000068uLL, 0x80000001B8B06C40, 0xD00000000000001ALL, 0x80000001B8B06C20);
  sub_1B8ACF9CC(&v1, 0x91E1AB91E1AD91E1, 0xAC000000AF91E1B2, 0x64627170uLL, 0xE400000000000000);
  return v1;
}

id SCMLNormalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLNormalizer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLNormalizer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SCMLNormalizer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SCMLNormalizer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B8ACF9CC(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v10 = sub_1B8AF0728();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B8A3F974(v10, 0);

    v48 = v12;
    v13 = sub_1B8A3F9FC(v49, v12 + 4, v11, a2, a3);

    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v14 = sub_1B8AF0728();
  if (!v14)
  {
LABEL_8:
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v15 = v14;
  v16 = sub_1B8A3F974(v14, 0);

  v47 = v16;
  v17 = sub_1B8A3F9FC(v49, v16 + 4, v15, a4, a5);

  if (v17 != v15)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v46 = v48[2];
  if (!v46)
  {
LABEL_26:
  }

  v18 = 0;
  v19 = v48 + 5;
  v20 = v47 + 5;
  v45 = a1;
  while (v18 < v48[2])
  {
    v24 = v47[2];
    if (v18 == v24)
    {
      goto LABEL_26;
    }

    if (v18 >= v24)
    {
      goto LABEL_30;
    }

    v26 = *(v19 - 1);
    v25 = *v19;
    v27 = *(v20 - 1);
    v28 = *v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0].n128_u64[0] = *a1;
    v30 = v49[0].n128_u64[0];
    v31 = sub_1B8A3FBF0(v26, v25);
    v33 = *(v30 + 16);
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_31;
    }

    v37 = v32;
    if (*(v30 + 24) < v36)
    {
      sub_1B8AC53C4(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1B8A3FBF0(v26, v25);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_33;
      }

LABEL_21:
      if (v37)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v43 = v31;
    sub_1B8AC6370();
    v31 = v43;
    if (v37)
    {
LABEL_11:
      v21 = v31;

      v22 = v49[0].n128_u64[0];
      v23 = (*(v49[0].n128_u64[0] + 56) + 16 * v21);
      *v23 = v27;
      v23[1] = v28;

      goto LABEL_12;
    }

LABEL_22:
    v22 = v49[0].n128_u64[0];
    *(v49[0].n128_u64[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v39 = (v22[6] + 16 * v31);
    *v39 = v26;
    v39[1] = v25;
    v40 = (v22[7] + 16 * v31);
    *v40 = v27;
    v40[1] = v28;
    v41 = v22[2];
    v35 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v35)
    {
      goto LABEL_32;
    }

    v22[2] = v42;
LABEL_12:
    ++v18;
    a1 = v45;
    *v45 = v22;
    v19 += 2;
    v20 += 2;
    if (v46 == v18)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B8AF0FB8();
  __break(1u);
  return result;
}

uint64_t sub_1B8ACFCBC(unint64_t a1, unint64_t a2)
{
  v45[0].n128_u64[0] = a1;
  v45[0].n128_u64[1] = a2;
  sub_1B8A3F920();
  v2 = sub_1B8AF09F8();
  v4 = v3;
  v5 = sub_1B8AF0728();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B8A3F974(v5, 0);

    v8 = sub_1B8A3F9FC(v45, v7 + 4, v6, v2, v4);

    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v10 = v7[2];
  if (v10)
  {
    v45[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A3FAC4(0, v10, 0);
    v11 = v45[0].n128_u64[0];
    v12 = v7 + 5;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = qword_1EDB75728;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = off_1EDB75730;
      if (*(off_1EDB75730 + 2))
      {
        v17 = sub_1B8A3FBF0(v13, v14);
        if (v18)
        {
          v19 = (v16[7] + 16 * v17);
          v13 = *v19;
          v20 = v19[1];

          v14 = v20;
        }
      }

      v45[0].n128_u64[0] = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B8A3FAC4((v21 > 1), v22 + 1, 1);
        v11 = v45[0].n128_u64[0];
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v13;
      *(v23 + 40) = v14;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v45[0].n128_u64[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97208, &qword_1B8AFB240);
  sub_1B8A3FD68();
  v24 = sub_1B8AF07C8();
  v26 = v25;
  v27 = sub_1B8AF0728();
  if (!v27)
  {

    v29 = MEMORY[0x1E69E7CC0];
    v31 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v31)
    {
LABEL_20:
      v45[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
      sub_1B8A3FAC4(0, v31, 0);
      v32 = v45[0].n128_u64[0];
      v33 = v29 + 5;
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v36 = qword_1EDB75718;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = off_1EDB75720;
        if (*(off_1EDB75720 + 2))
        {
          v38 = sub_1B8A3FBF0(v34, v35);
          if (v39)
          {
            v40 = (v37[7] + 16 * v38);
            v34 = *v40;
            v41 = v40[1];

            v35 = v41;
          }
        }

        v45[0].n128_u64[0] = v32;
        v43 = *(v32 + 16);
        v42 = *(v32 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1B8A3FAC4((v42 > 1), v43 + 1, 1);
          v32 = v45[0].n128_u64[0];
        }

        *(v32 + 16) = v43 + 1;
        v44 = v32 + 16 * v43;
        *(v44 + 32) = v34;
        *(v44 + 40) = v35;
        v33 += 2;
        --v31;
      }

      while (v31);

      goto LABEL_32;
    }

LABEL_31:

    v32 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v45[0].n128_u64[0] = v32;
    return sub_1B8AF07C8();
  }

  v28 = v27;
  v29 = sub_1B8A3F974(v27, 0);

  v30 = sub_1B8A3F9FC(v45, v29 + 4, v28, v24, v26);

  if (v30 == v28)
  {

    v31 = v29[2];
    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B8AD0090(unint64_t a1, unint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = sub_1B8ACFCBC(a1, a2);
  v16 = v15;
  v17 = sub_1B8AF0728();
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B8A3F974(v17, 0);

    v20 = sub_1B8A3F9FC(&v57, v19 + 4, v18, v14, v16);

    if (v20 != v18)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v56 = v11;
  v22 = v19[2];
  if (v22)
  {
    v52 = v8;
    v53 = v13;
    v54 = v5;
    v55 = v4;
    v57.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A3FAC4(0, v22, 0);
    v23 = v19;
    v24 = v57.n128_u64[0];
    v51 = v23;
    v25 = v23 + 5;
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = qword_1EDB75738;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = off_1EDB75740;
      if (*(off_1EDB75740 + 2))
      {
        v30 = sub_1B8A3FBF0(v26, v27);
        if (v31)
        {
          v32 = (v29[7] + 16 * v30);
          v26 = *v32;
          v33 = v32[1];

          v27 = v33;
        }
      }

      v57.n128_u64[0] = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1B8A3FAC4((v34 > 1), v35 + 1, 1);
        v24 = v57.n128_u64[0];
      }

      *(v24 + 16) = v35 + 1;
      v36 = v24 + 16 * v35;
      *(v36 + 32) = v26;
      *(v36 + 40) = v27;
      v25 += 2;
      --v22;
    }

    while (v22);

    v5 = v54;
    v4 = v55;
    v8 = v52;
    v13 = v53;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v57.n128_u64[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97208, &qword_1B8AFB240);
  sub_1B8A3FD68();
  v37 = sub_1B8AF07C8();
  v39 = v38;
  if (qword_1EDB75708 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDB75710;
  v41 = sub_1B8AF0658();
  v42 = MEMORY[0x1B8CC5F80](v37, v39);

  v43 = sub_1B8AF0658();
  v44 = [v40 stringByReplacingMatchesInString:v41 options:0 range:0 withTemplate:{v42, v43}];

  v45 = sub_1B8AF0668();
  v47 = v46;

  v57.n128_u64[0] = v45;
  v57.n128_u64[1] = v47;
  v48 = v56;
  sub_1B8AEFB08();
  sub_1B8AEFAF8();
  sub_1B8AEFB18();
  v49 = *(v5 + 8);
  v49(v8, v4);
  v49(v48, v4);
  sub_1B8A3F920();
  sub_1B8AF09D8();
  v49(v13, v4);

  v50 = sub_1B8AF06C8();

  return v50;
}

uint64_t sub_1B8AD0514()
{
  v13[3] = &_s5ErrorON_1;
  v13[4] = sub_1B8ADA320();
  v1 = swift_allocObject();
  v13[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  sub_1B8ADA3DC(v0, v12);
  v3 = TerseEncoder.encode(_:typeNameStyle:)(v13, &unk_1F3746E60);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(v13);
  v12[0] = v3;
  v12[1] = v5;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v6 = sub_1B8AD541C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v8 = MEMORY[0x1B8CC6010](v6, v7);
  v10 = v9;

  MEMORY[0x1B8CC5F50](v8, v10);

  return v12[0];
}

uint64_t sub_1B8AD065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = &_s5ErrorON_0;
  v18[4] = sub_1B8AD9BAC();
  v8 = swift_allocObject();
  v18[0] = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  sub_1B8AD9C14(a1, a2, a3, a4);
  v9 = TerseEncoder.encode(_:typeNameStyle:)(v18, &unk_1F3746E38);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0(v18);
  v18[0] = v9;
  v18[1] = v11;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v12 = sub_1B8AD560C(a1, a2, a3, a4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v14 = MEMORY[0x1B8CC6010](v12, v13);
  v16 = v15;

  MEMORY[0x1B8CC5F50](v14, v16);

  return v18[0];
}

uint64_t sub_1B8AD07C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = &_s5ErrorON;
  v19 = sub_1B8ADA1F4();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1B8ADA248(a1, a2, a3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(&v15, &unk_1F3746E10);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v15 = v6;
  v16 = v8;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v9 = sub_1B8AD57F8(a1, a2, a3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v11 = MEMORY[0x1B8CC6010](v9, v10);
  v13 = v12;

  MEMORY[0x1B8CC5F50](v11, v13);

  return v15;
}

uint64_t sub_1B8AD08FC(uint64_t a1, uint64_t a2)
{
  v15 = &_s25NotAnAssetBackedLLMBundleVN;
  v16 = sub_1B8A978A8();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746DE8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A96FE4, &_s25NotAnAssetBackedLLMBundleVN, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0A4C(uint64_t a1, uint64_t a2)
{
  v15 = &_s24ResolveModelBundleFailedVN;
  v16 = sub_1B8A97660();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746DC0);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A96F38, &_s24ResolveModelBundleFailedVN, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0B9C(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for AFMModel.ImageConverterNotEnabled;
  v16 = sub_1B8A882DC();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746D98);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A851A0, &type metadata for AFMModel.ImageConverterNotEnabled, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0CEC(uint64_t a1, uint64_t a2)
{
  v15 = &_s23BundleContainsNoAdapterVN;
  v16 = sub_1B8A97AF0();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746D70);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A97038, &_s23BundleContainsNoAdapterVN, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = &type metadata for AFMModel.MiscSafetyOutputType.Error;
  v19 = sub_1B8A89D48();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1B8ADA534(a1, a2, a3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(&v15, &unk_1F3746D48);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v15 = v6;
  v16 = v8;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v9 = sub_1B8AD59D4(a1, a2, a3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v11 = MEMORY[0x1B8CC6010](v9, v10);
  v13 = v12;

  MEMORY[0x1B8CC5F50](v11, v13);

  return v15;
}

uint64_t sub_1B8AD0F78(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for AFMModel.LoadFailed;
  v16 = sub_1B8A8A03C();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746BB8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A89DF4, &type metadata for AFMModel.LoadFailed, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD10C8(uint64_t a1)
{
  v11[3] = &type metadata for TextImageAlignmentCalculator.InvalidEmbeddingSizeError;
  v11[4] = sub_1B8AB3988();
  v11[0] = a1;
  v2 = TerseEncoder.encode(_:typeNameStyle:)(v11, &unk_1F3746CD0);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0(v11);
  v11[0] = v2;
  v11[1] = v4;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v5 = sub_1B8AD5F0C(a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v7 = MEMORY[0x1B8CC6010](v5, v6);
  v9 = v8;

  MEMORY[0x1B8CC5F50](v7, v9);

  return v11[0];
}

uint64_t sub_1B8AD11D8(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for TextImageAlignmentCalculator.EmbeddingSizesDoNotMatch;
  v16 = sub_1B8AB3150();
  v13 = a1;
  v14 = a2;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746CA8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD60B4(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD12F0(uint64_t a1, char a2)
{
  v15 = &type metadata for SCMLSafetyGuardrailError;
  v16 = sub_1B8AD9A5C();
  v13 = a1;
  LOBYTE(v14) = a2 & 1;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746C80);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD6264(a1, a2 & 1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD1410(uint64_t a1, uint64_t a2, char a3)
{
  v18 = &type metadata for MultimodalSanitizer.Error;
  v19 = sub_1B8ABEE04();
  v15 = a1;
  v16 = a2;
  v17 = a3 & 1;
  sub_1B8ADA1E4(a1, a2);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(&v15, &unk_1F3746C58);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v15 = v6;
  v16 = v8;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v9 = sub_1B8AD641C(a1, a2, a3 & 1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v11 = MEMORY[0x1B8CC6010](v9, v10);
  v13 = v12;

  MEMORY[0x1B8CC5F50](v11, v13);

  return v15;
}

uint64_t sub_1B8AD154C(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for BackgroundEstimator.Error;
  v16 = sub_1B8AAB618();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746C30);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD65FC(a1, a2, sub_1B8AAB2D4, &type metadata for BackgroundEstimator.Error, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD169C(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for PromptRewriter.Error;
  v16 = sub_1B8ACE7B8();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746C08);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD65FC(a1, a2, sub_1B8A89824, &type metadata for PromptRewriter.Error, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD1830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B8AF1018();
  sub_1B8AF05F8();
  v6 = sub_1B8AF1038();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B8AF0EA8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B8AD1928()
{
  v0 = sub_1B8AB5C54(&unk_1F3747188);
  result = swift_arrayDestroy();
  qword_1EBA97218 = v0;
  return result;
}

id SCMLSafetyGuardrailResult.init(result:)(uint64_t a1, unint64_t a2)
{
  v49 = sub_1B8AEFB28();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53 = 10;
  *(&v53 + 1) = 0xE100000000000000;
  v51 = &v53;
  v8 = sub_1B8AD7C84(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8AD8C94, v50, a1, a2, &v53);
  v9 = *(v8 + 16);
  if (v9 == 1)
  {

    v10 = sub_1B8AF0958();
    v12 = v11;

    if (v10 == 1701208435 && v12 == 0xE400000000000000)
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_1B8AF0EA8();
    }

    v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = v14 & 1;
    goto LABEL_29;
  }

  if (!v9)
  {

    v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = 0;
LABEL_29:
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v48 = v5;
  v15 = v8;

  v16 = sub_1B8AF0958();
  v18 = v17;

  if (v16 == 1701208435 && v18 == 0xE400000000000000)
  {

    v22 = 1;
  }

  else
  {
    v20 = sub_1B8AF0EA8();

    if ((v20 & 1) == 0)
    {
      v23 = v15;
      if (qword_1EDB74A20 != -1)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    v22 = 1;
  }

  while (1)
  {
    v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = v22 & 1;
    if (v15[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_32:
    result = swift_once();
    v23 = v15;
LABEL_19:
    if (v23[2] < 2uLL)
    {
      __break(1u);
      return result;
    }

    v24 = qword_1EBA97218;

    v25 = sub_1B8AF0958();
    v27 = v26;

    v22 = sub_1B8AD1830(v25, v27, v24);
  }

  v28 = v15[8];
  v29 = v15[9];
  v30 = v15[10];

  *&v53 = 44;
  *(&v53 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v31);
  *(&v46 - 2) = &v53;
  v32 = sub_1B8AD8044(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8ADA57C, (&v46 - 4), v28, v29, v30, &v46);
  v33 = *(v32 + 2);
  if (!v33)
  {

    goto LABEL_29;
  }

  v47 = v2;
  v56 = MEMORY[0x1E69E7CC0];
  sub_1B8AD846C(0, v33, 0);
  v34 = v56;
  v35 = (v48 + 8);
  v48 = v32;
  v36 = (v32 + 56);
  do
  {
    v37 = *(v36 - 1);
    v38 = *v36;
    v53 = *(v36 - 3);
    v54 = v37;
    v55 = v38;

    sub_1B8AEFB08();
    sub_1B8AD8D08();
    v39 = sub_1B8AF09D8();
    v41 = v40;
    (*v35)(v7, v49);

    v56 = v34;
    v43 = *(v34 + 16);
    v42 = *(v34 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1B8AD846C((v42 > 1), v43 + 1, 1);
      v34 = v56;
    }

    *(v34 + 16) = v43 + 1;
    v44 = v34 + 16 * v43;
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
    v36 += 4;
    --v33;
  }

  while (v33);

  v2 = v47;
LABEL_30:
  *&v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels] = v34;
  v45 = type metadata accessor for SCMLSafetyGuardrailResult();
  v52.receiver = v2;
  v52.super_class = v45;
  return objc_msgSendSuper2(&v52, sel_init);
}

uint64_t sub_1B8AD1F9C(void *a1, uint64_t a2, int a3)
{
  v20 = a3;
  v18 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972C8, &qword_1B8AFB500);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972D0, &qword_1B8AFB508);
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972D8, &unk_1B8AFB510);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AD9AB0();
  sub_1B8AF1058();
  if (v20)
  {
    v21 = 0;
    sub_1B8AD9B58();
    sub_1B8AF0C88();
    (*(v6 + 8))(v8, v16);
  }

  else
  {
    v22 = 1;
    sub_1B8AD9B04();
    sub_1B8AF0C88();
    v14 = v19;
    sub_1B8AF0CB8();
    (*(v17 + 8))(v5, v14);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B8AD2294()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C69614664616F6CLL;
  }
}

uint64_t sub_1B8AD22D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B8B06F40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AD23C4(uint64_t a1)
{
  v2 = sub_1B8AD9AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AD2400(uint64_t a1)
{
  v2 = sub_1B8AD9AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AD243C(uint64_t a1)
{
  v2 = sub_1B8AD9B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AD2478(uint64_t a1)
{
  v2 = sub_1B8AD9B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AD24CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E656B636162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AD2554(uint64_t a1)
{
  v2 = sub_1B8AD9B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AD2590(uint64_t a1)
{
  v2 = sub_1B8AD9B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B8AD25CC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8AD8E20(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

unint64_t sub_1B8AD2620()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v4;
  v5 = sub_1B8AD7288(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v7;
}

uint64_t sub_1B8AD26E8(uint64_t a1)
{
  v2 = sub_1B8AD98B8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AD2724(uint64_t a1)
{
  v2 = sub_1B8AD98B8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t SCMLSafetyGuardrail.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID);

  return v1;
}

id SCMLSafetyGuardrail.init(backend:onBehalfOf:modelManagerServicesUseCaseID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  *&v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_chunkOverlap] = 30;
  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_logger;
  sub_1B8AF0398();
  if (a1 == 4)
  {
    v48 = a2;
    v55 = a4;
    v52 = v18;
    v19 = 12;
  }

  else
  {
    if (a1 != 16)
    {

      sub_1B8AD8D80();
      swift_allocError();
      *v39 = a1;
      *(v39 + 8) = 0;
      swift_willThrow();
      goto LABEL_13;
    }

    v48 = a2;
    v55 = a4;
    v52 = v18;
    v19 = 1;
  }

  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_task;
  v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_task] = v19;
  LOBYTE(v59[0]) = v19;
  AFMModel.Task.bundleID.getter(v17);
  v21 = sub_1B8AEFF58();
  v23 = v22;
  (*(v15 + 8))(v17, v14);
  v24 = &v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID];
  *v24 = v21;
  v24[1] = v23;
  v25 = v5[v20];
  v26 = sub_1B8AEFCC8();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v51 = type metadata accessor for AFMModel(0);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v56 = v13;
  v29 = sub_1B8AF03A8();
  v30 = __swift_project_value_buffer(v29, qword_1EDB75B38);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v50 = v28;
  v32(v27 + v28, v30, v29);
  v33 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v34 = sub_1B8AF0328();
  v35 = __swift_project_value_buffer(v34, qword_1EDB75B50);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v49 = v33;
  v37(v27 + v33, v35, v34);
  v61 = v25;
  v38 = v57;
  sub_1B8A93BF0(v59);
  if (!v38)
  {
    v57 = v24;
    v40 = v27 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v41 = v59[1];
    *v40 = v59[0];
    *(v40 + 16) = v41;
    *(v40 + 32) = v60;
    LOBYTE(v59[0]) = v25;
    v42 = v53;
    sub_1B8A8975C(v56, v53, &qword_1EBA96528, &unk_1B8AF64B0);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v44 = sub_1B8A8AB94(v59, v54, v55, v48, 0, v42);
    sub_1B8A897C4(v56, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v27 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v44;
    *&v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model] = v27;
    v45 = type metadata accessor for SCMLSafetyGuardrail(0);
    v58.receiver = v5;
    v58.super_class = v45;
    return objc_msgSendSuper2(&v58, sel_init);
  }

  sub_1B8A897C4(v56, &qword_1EBA96528, &unk_1B8AF64B0);
  (*(v31 + 8))(v27 + v50, v29);
  (*(v36 + 8))(v27 + v49, v34);
  swift_deallocPartialClassInstance();

  v18 = v52;
LABEL_13:
  v43 = sub_1B8AF03A8();
  (*(*(v43 - 8) + 8))(&v5[v18], v43);
  type metadata accessor for SCMLSafetyGuardrail(0);
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1B8AD2F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8AF0128();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AD3044, 0, 0);
}

uint64_t sub_1B8AD3044()
{
  v1 = v0[3];
  if ((v1 & 0x1000000000000000) != 0)
  {
    v2 = sub_1B8AF0788();
  }

  else if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2 <= v0[4])
  {
    v6 = v0[2];
    v5 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B8AF6490;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v0[9] = *(*(*(v0[5] + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator);

    sub_1B8AF0138();
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1B8AD31FC;
    v4 = v0[8];

    return MEMORY[0x1EEE49B98](v4);
  }
}

uint64_t sub_1B8AD31FC(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1B8AD3914;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1B8AD33A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B8AD33A8()
{
  v24 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  if (*(v0 + 96) <= *(v0 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B8AF6490;
    *(v18 + 32) = v2;
    *(v18 + 40) = v1;

    v19 = *(v0 + 8);

    return v19(v18);
  }

  else
  {
    v3 = sub_1B8AF07D8();
    sub_1B8ADB4D0(v3, v4, v5, v6, 30, 30, v20);
    v7 = v20[0];
    v8 = v20[1];
    v9 = v20[2];
    v10 = v20[3];
    *(v0 + 104) = v21;
    v11 = v23;
    *(v0 + 120) = v22;
    *(v0 + 128) = v11;

    v12 = MEMORY[0x1B8CC5EE0](v7, v8, v9, v10);
    v14 = v13;

    *(v0 + 136) = v14;
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_1B8AD3584;
    v16 = *(v0 + 32);

    return sub_1B8AD2F80(v12, v14, v16);
  }
}

uint64_t sub_1B8AD3584(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1B8AD3978;
  }

  else
  {

    v4 = sub_1B8AD36A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8AD36A0()
{
  v1 = MEMORY[0x1B8CC5EE0](v0[13], v0[14], v0[15], v0[16]);
  v3 = v2;

  v0[21] = v3;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1B8AD3764;
  v5 = v0[4];

  return sub_1B8AD2F80(v1, v3, v5);
}

uint64_t sub_1B8AD3764(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1B8AD39EC;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1B8AD3894;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8AD3894()
{
  v3 = *(v0 + 152);
  sub_1B8AE5884(*(v0 + 192));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_1B8AD3914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AD3978()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AD39EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AD3A64(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v3[39] = swift_task_alloc();
  v4 = sub_1B8AEFB28();
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AD3B60, 0, 0);
}

uint64_t sub_1B8AD3B60(uint64_t a1)
{
  v3 = v1[41];
  v2 = v1[42];
  v4 = v1[40];
  v5 = v1[37];
  v1[18] = v1[36];
  v1[19] = v5;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v6 = sub_1B8AF09D8();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v1[20] = v6;
  v1[21] = v8;
  v1[22] = 0xD000000000000020;
  v1[23] = 0x80000001B8B056C0;
  v1[24] = 0;
  v1[25] = 0xE000000000000000;
  v9 = sub_1B8AF09E8();
  v11 = v10;

  v1[26] = v9;
  v1[28] = 0xD00000000000003ELL;
  v1[27] = v11;
  v1[29] = 0x80000001B8B056F0;
  v1[30] = 0;
  v1[31] = 0xE000000000000000;
  v12 = sub_1B8AF09E8();
  v14 = v13;

  v1[43] = v12;
  v1[44] = v14;
  swift_arrayDestroy();
  if (AFMModel.Task.rawValue.getter() == 0x6566615365646F63 && v15 == 0xEA00000000007974)
  {

LABEL_5:

    v17 = swift_task_alloc();
    v1[45] = v17;
    *v17 = v1;
    v17[1] = sub_1B8AD3F70;
    v19 = v1[36];
    v18 = v1[37];

    return sub_1B8A84AAC(v19, v18);
  }

  v16 = sub_1B8AF0EA8();

  if (v16)
  {
    goto LABEL_5;
  }

  if (MEMORY[0x1B8CC5F80](v1[36], v1[37]) <= 1000000000)
  {
    v26 = *(v1[38] + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model);
    v27 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core;
    v1[46] = v26;
    v1[47] = v27;
    v1[48] = *(*(v26 + v27) + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator);

    v28 = swift_task_alloc();
    v1[49] = v28;
    *v28 = v1;
    v28[1] = sub_1B8AD40B8;

    return MEMORY[0x1EEE49B88]();
  }

  else
  {
    v21 = v1[36];
    v22 = v1[37];

    v23 = MEMORY[0x1B8CC5F80](v21, v22);
    sub_1B8AD94F8();
    swift_allocError();
    *v24 = v23;
    v24[1] = 1000000000;
    swift_willThrow();

    v25 = v1[1];

    return v25();
  }
}

uint64_t sub_1B8AD3F70(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1B8AD40B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = sub_1B8AD4E08;
  }

  else
  {

    *(v4 + 408) = a1;
    v5 = sub_1B8AD41E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1B8AD41E8()
{
  v1 = v0[51];
  v2 = v1 - 200;
  if (__OFSUB__(v1, 200))
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[52] = v3;
    *v3 = v0;
    v3[1] = sub_1B8AD4294;
    v5 = v0[43];
    v4 = v0[44];

    sub_1B8AD2F80(v5, v4, v2);
  }
}

uint64_t sub_1B8AD4294(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 424) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8AD440C, 0, 0);
  }
}

void *sub_1B8AD440C(uint64_t a1)
{
  v27 = v1;
  super_class = v1[26].super_class;
  v3 = type metadata accessor for SCMLSafetyGuardrailResult();
  v1[27].receiver = v3;
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = 1;
  *&v4[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels] = MEMORY[0x1E69E7CC0];
  v1[16].receiver = v4;
  v1[16].super_class = v3;
  v5 = objc_msgSendSuper2(v1 + 16, sel_init);
  v6 = *(super_class + 2);
  v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_logger;
  v1[27].super_class = v6;
  v1[28].receiver = v7;
  result = v1[26].super_class;
  if (v6)
  {
    v1[28].super_class = 0;
    v1[29].receiver = v5;
    if (result[2])
    {
      v10 = result[4];
      v9 = result[5];
      v1[29].super_class = v9;
      swift_bridgeObjectRetain_n();

      v11 = sub_1B8AF0388();
      v12 = sub_1B8AF08C8();

      v13 = os_log_type_enabled(v11, v12);
      v14 = v1[26].super_class;
      if (v13)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 134218499;
        *(v15 + 4) = 1;
        *(v15 + 12) = 2048;
        *(v15 + 14) = *(v14 + 2);

        *(v15 + 22) = 2085;
        *(v15 + 24) = sub_1B8A9E870(v10, v9, &v26);
        _os_log_impl(&dword_1B8A3C000, v11, v12, "Safety guardrail chunk %ld of %ld: %{sensitive}s", v15, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1B8CC7D70](v16, -1, -1);
        MEMORY[0x1B8CC7D70](v15, -1, -1);
      }

      else
      {
      }

      v18 = v1[19].super_class;
      v19 = *(v1[23].receiver + v1[23].super_class);
      v20 = MEMORY[0x1E69C6560];
      v1[8].receiver = MEMORY[0x1E69E6158];
      v1[8].super_class = v20;
      v1[6].super_class = v10;
      v1[7].receiver = v9;
      v21 = sub_1B8AF00F8();
      (*(*(v21 - 8) + 56))(v18, 1, 1, v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B8AF6490;
      *(inited + 32) = 0x6D6F725072657375;
      *(inited + 40) = 0xEA00000000007470;
      sub_1B8A85238(&v1[6].super_class, inited + 48);
      v23 = sub_1B8AE66C0(inited);
      v1[30].receiver = v23;
      swift_setDeallocating();
      sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
      v24 = swift_task_alloc();
      v1[30].super_class = v24;
      *v24 = v1;
      *(v24 + 1) = sub_1B8AD47C0;
      v25 = v1[19].super_class;

      return sub_1B8A8C1E8(v23, 12, v25, "AFMModel.predict", 16, 2, v19);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v17 = v1->super_class;

    return v17(v5);
  }

  return result;
}

uint64_t sub_1B8AD47C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 496) = v2;

  if (v2)
  {
    v7 = sub_1B8AD4D48;
  }

  else
  {

    *(v6 + 504) = a2;
    *(v6 + 512) = a1;
    v7 = sub_1B8AD48FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1B8AD48FC()
{
  v35 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 432);
  sub_1B8A897C4(*(v0 + 312), &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v4 = objc_allocWithZone(v3);
  v5 = SCMLSafetyGuardrailResult.init(result:)(v2, v1);

  v6 = *(v0 + 464);
  if ((v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] & 1) == 0)
  {

    goto LABEL_7;
  }

  v7 = v6[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe];
  v8 = *&v6[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels];
  if (!*(v8 + 16))
  {
    v8 = *&v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels];
  }

  v9 = *(v0 + 432);
  v10 = *(v0 + 440);
  v11 = *(v0 + 456) + 1;
  v12 = objc_allocWithZone(v9);
  v12[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = v7;
  *&v12[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels] = v8;
  *(v0 + 272) = v12;
  *(v0 + 280) = v9;
  v13 = objc_msgSendSuper2((v0 + 272), sel_init);

  if (v11 == v10)
  {
    v5 = v13;
LABEL_7:

    v14 = *(v0 + 8);

    v14(v5);
    return;
  }

  v15 = *(v0 + 456);
  *(v0 + 456) = v15 + 1;
  *(v0 + 464) = v13;
  v16 = *(v0 + 424);
  if ((v15 + 1) >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    v17 = v16 + 16 * (v15 + 1);
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);
    *(v0 + 472) = v18;
    swift_bridgeObjectRetain_n();

    v20 = sub_1B8AF0388();
    v21 = sub_1B8AF08C8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v15 + 2;
      v23 = *(v0 + 424);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 134218499;
      *(v24 + 4) = v22;
      *(v24 + 12) = 2048;
      *(v24 + 14) = *(v23 + 16);

      *(v24 + 22) = 2085;
      *(v24 + 24) = sub_1B8A9E870(v19, v18, &v34);
      _os_log_impl(&dword_1B8A3C000, v20, v21, "Safety guardrail chunk %ld of %ld: %{sensitive}s", v24, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B8CC7D70](v25, -1, -1);
      MEMORY[0x1B8CC7D70](v24, -1, -1);
    }

    else
    {
    }

    v26 = *(v0 + 312);
    v27 = *(*(v0 + 368) + *(v0 + 376));
    v28 = MEMORY[0x1E69C6560];
    *(v0 + 128) = MEMORY[0x1E69E6158];
    *(v0 + 136) = v28;
    *(v0 + 104) = v19;
    *(v0 + 112) = v18;
    v29 = sub_1B8AF00F8();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = 0x6D6F725072657375;
    *(inited + 40) = 0xEA00000000007470;
    sub_1B8A85238(v0 + 104, inited + 48);
    v31 = sub_1B8AE66C0(inited);
    *(v0 + 480) = v31;
    swift_setDeallocating();
    sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
    v32 = swift_task_alloc();
    *(v0 + 488) = v32;
    *v32 = v0;
    v32[1] = sub_1B8AD47C0;
    v33 = *(v0 + 312);

    sub_1B8A8C1E8(v31, 12, v33, "AFMModel.predict", 16, 2, v27);
  }
}

uint64_t sub_1B8AD4D48()
{
  v1 = v0[58];
  v2 = v0[39];

  sub_1B8A897C4(v2, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8AD4E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AD5014(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1B8AF0668();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B8AD50E8;

  return sub_1B8AD3A64(v5, v7);
}

uint64_t sub_1B8AD50E8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1B8AEFBC8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id SCMLSafetyGuardrail.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B8AD5354(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B8AD541C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 16);
  v26 = *v0;
  v27 = v2;
  v28 = *(v0 + 32);
  v29 = *(v0 + 48);
  sub_1B8ADA3DC(v0, v25);
  sub_1B8ADA48C();
  v3 = sub_1B8AF0E88();
  if (v3)
  {
    v4 = v3;
    sub_1B8ADA4E0(v0);
  }

  else
  {
    v4 = swift_allocError();
    v6 = *(v0 + 16);
    v5 = *(v0 + 32);
    v7 = *v0;
    *(v8 + 48) = *(v0 + 48);
    *(v8 + 16) = v6;
    *(v8 + 32) = v5;
    *v8 = v7;
  }

  sub_1B8AD6AB8(v4, &v30);

  v9 = v30;
  v10 = *(v30 + 16);
  if (v10)
  {
    *&v26 = v1;
    sub_1B8AD844C(0, v10, 0);
    v11 = 32;
    v12 = v26;
    do
    {
      v13 = *(v9 + v11);
      v14 = v13;
      v15 = sub_1B8AEFBC8();
      v16 = [v15 domain];
      v17 = sub_1B8AF0668();
      v19 = v18;

      v20 = [v15 code];
      *&v26 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B8AD844C((v21 > 1), v22 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v22 + 1;
      v23 = (v12 + 24 * v22);
      v23[4] = v17;
      v23[5] = v19;
      v23[6] = v20;
      v11 += 8;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1B8AD560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B8AD9C14(a1, a2, a3, a4);
  sub_1B8A7BACC();
  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
    sub_1B8AD9C00(a1, a2, a3, v4);
  }

  else
  {
    v10 = swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    *(v11 + 24) = v4;
  }

  sub_1B8AD6AB8(v10, &v28);

  v12 = v28;
  v13 = *(v28 + 16);
  if (v13)
  {
    sub_1B8AD844C(0, v13, 0);
    v14 = 32;
    v15 = v8;
    do
    {
      v16 = *(v12 + v14);
      v17 = v16;
      v18 = sub_1B8AEFBC8();
      v19 = [v18 domain];
      v20 = sub_1B8AF0668();
      v22 = v21;

      v23 = [v18 code];
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8AD844C((v24 > 1), v25 + 1, 1);
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1B8AD57F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B8ADA248(a1, a2, a3);
  sub_1B8ADA2B4();
  v7 = sub_1B8AF0E88();
  if (v7)
  {
    v8 = v7;
    sub_1B8ADA308(a1, a2, v3);
  }

  else
  {
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = v3;
  }

  sub_1B8AD6AB8(v8, &v26);

  v10 = v26;
  v11 = *(v26 + 16);
  if (v11)
  {
    sub_1B8AD844C(0, v11, 0);
    v12 = 32;
    v13 = v6;
    do
    {
      v14 = *(v10 + v12);
      v15 = v14;
      v16 = sub_1B8AEFBC8();
      v17 = [v16 domain];
      v18 = sub_1B8AF0668();
      v20 = v19;

      v21 = [v16 code];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B8AD844C((v22 > 1), v23 + 1, 1);
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 24 * v23);
      v24[4] = v18;
      v24[5] = v20;
      v24[6] = v21;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B8AD59D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B8ADA534(a1, a2, a3);
  sub_1B8A89680();
  v7 = sub_1B8AF0E88();
  if (v7)
  {
    v8 = v7;
    sub_1B8ADA554(a1, a2, v3);
  }

  else
  {
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = v3;
  }

  sub_1B8AD6AB8(v8, &v26);

  v10 = v26;
  v11 = *(v26 + 16);
  if (v11)
  {
    sub_1B8AD844C(0, v11, 0);
    v12 = 32;
    v13 = v6;
    do
    {
      v14 = *(v10 + v12);
      v15 = v14;
      v16 = sub_1B8AEFBC8();
      v17 = [v16 domain];
      v18 = sub_1B8AF0668();
      v20 = v19;

      v21 = [v16 code];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B8AD844C((v22 > 1), v23 + 1, 1);
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 24 * v23);
      v24[4] = v18;
      v24[5] = v20;
      v24[6] = v21;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B8AD5BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, uint64_t *))
{
  v8 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  a3();

  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = swift_allocError();
    *v11 = a1;
    v11[1] = a2;
  }

  a5(v10, &v28);

  v12 = v28;
  v13 = *(v28 + 16);
  if (v13)
  {
    sub_1B8AD844C(0, v13, 0);
    v14 = 32;
    v15 = v8;
    do
    {
      v16 = *(v12 + v14);
      v17 = v16;
      v18 = sub_1B8AEFBC8();
      v19 = [v18 domain];
      v20 = sub_1B8AF0668();
      v22 = v21;

      v23 = [v18 code];
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8AD844C((v24 > 1), v25 + 1, 1);
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1B8AD5DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(a1, a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B8AD844C(0, v5, 0);
    v6 = 32;
    v7 = v20;
    do
    {
      v8 = *(v4 + v6);
      v9 = v8;
      v10 = sub_1B8AEFBC8();
      v11 = [v10 domain];
      v12 = sub_1B8AF0668();
      v14 = v13;

      v15 = [v10 code];
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B8AD844C((v16 > 1), v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      v18 = (v20 + 24 * v17);
      v18[4] = v12;
      v18[5] = v14;
      v18[6] = v15;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1B8AD5F0C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v22 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B8AB36C8();
  v3 = sub_1B8AF0E88();
  if (!v3)
  {
    v3 = swift_allocError();
    *v4 = a1;
  }

  v5 = v3;
  sub_1B8AD6AB8(v3, &v23);

  v6 = v23;
  v7 = *(v23 + 16);
  if (v7)
  {
    v23 = v2;
    sub_1B8AD844C(0, v7, 0);
    v8 = 32;
    v9 = v23;
    do
    {
      v10 = *(v6 + v8);
      v11 = v10;
      v12 = sub_1B8AEFBC8();
      v13 = [v12 domain];
      v14 = sub_1B8AF0668();
      v16 = v15;

      v17 = [v12 code];
      v23 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B8AD844C((v18 > 1), v19 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v19 + 1;
      v20 = (v9 + 24 * v19);
      v20[4] = v14;
      v20[5] = v16;
      v20[6] = v17;
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1B8AD60B4(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B8AB2C24();
  v5 = sub_1B8AF0E88();
  if (!v5)
  {
    v5 = swift_allocError();
    *v6 = a1;
    v6[1] = a2;
  }

  v7 = v5;
  sub_1B8AD6AB8(v5, &v24);

  v8 = v24;
  v9 = *(v24 + 16);
  if (v9)
  {
    sub_1B8AD844C(0, v9, 0);
    v10 = 32;
    v11 = v4;
    do
    {
      v12 = *(v8 + v10);
      v13 = v12;
      v14 = sub_1B8AEFBC8();
      v15 = [v14 domain];
      v16 = sub_1B8AF0668();
      v18 = v17;

      v19 = [v14 code];
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B8AD844C((v20 > 1), v21 + 1, 1);
      }

      *(v11 + 16) = v21 + 1;
      v22 = (v11 + 24 * v21);
      v22[4] = v16;
      v22[5] = v18;
      v22[6] = v19;
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1B8AD6264(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v4 = a2 & 1;
  sub_1B8AD8D80();
  v5 = sub_1B8AF0E88();
  if (!v5)
  {
    v5 = swift_allocError();
    *v6 = a1;
    *(v6 + 8) = v4;
  }

  v7 = v5;
  sub_1B8AD6AB8(v5, &v24);

  v8 = v24;
  v9 = *(v24 + 16);
  if (v9)
  {
    sub_1B8AD844C(0, v9, 0);
    v10 = 32;
    v11 = v3;
    do
    {
      v12 = *(v8 + v10);
      v13 = v12;
      v14 = sub_1B8AEFBC8();
      v15 = [v14 domain];
      v16 = sub_1B8AF0668();
      v18 = v17;

      v19 = [v14 code];
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B8AD844C((v20 > 1), v21 + 1, 1);
      }

      *(v11 + 16) = v21 + 1;
      v22 = (v11 + 24 * v21);
      v22[4] = v16;
      v22[5] = v18;
      v22[6] = v19;
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1B8AD641C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v6 = a3 & 1;
  sub_1B8ADA1E4(a1, a2);
  sub_1B8AB6C40();
  v7 = sub_1B8AF0E88();
  if (v7)
  {
    v8 = v7;
    sub_1B8ADA1EC(a1, a2);
  }

  else
  {
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = v6;
  }

  sub_1B8AD6AB8(v8, &v26);

  v10 = v26;
  v11 = *(v26 + 16);
  if (v11)
  {
    sub_1B8AD844C(0, v11, 0);
    v12 = 32;
    v13 = v5;
    do
    {
      v14 = *(v10 + v12);
      v15 = v14;
      v16 = sub_1B8AEFBC8();
      v17 = [v16 domain];
      v18 = sub_1B8AF0668();
      v20 = v19;

      v21 = [v16 code];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B8AD844C((v22 > 1), v23 + 1, 1);
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 24 * v23);
      v24[4] = v18;
      v24[5] = v20;
      v24[6] = v21;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B8AD65FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, uint64_t *))
{
  v8 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  a3();

  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = swift_allocError();
    *v11 = a1;
    v11[1] = a2;
  }

  a5(v10, &v28);

  v12 = v28;
  v13 = *(v28 + 16);
  if (v13)
  {
    sub_1B8AD844C(0, v13, 0);
    v14 = 32;
    v15 = v8;
    do
    {
      v16 = *(v12 + v14);
      v17 = v16;
      v18 = sub_1B8AEFBC8();
      v19 = [v18 domain];
      v20 = sub_1B8AF0668();
      v22 = v21;

      v23 = [v18 code];
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8AD844C((v24 > 1), v25 + 1, 1);
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1B8AD67D0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  *&v21 = a1;
  *(&v21 + 1) = a2;
  sub_1B8AD94F8();
  v3 = sub_1B8AF0E88();
  if (!v3)
  {
    v3 = swift_allocError();
    *v4 = v21;
  }

  v5 = v3;
  sub_1B8AD6AB8(v3, &v22);

  v6 = v22;
  v7 = *(v22 + 16);
  if (v7)
  {
    sub_1B8AD844C(0, v7, 0);
    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      v10 = v9;
      v11 = sub_1B8AEFBC8();
      v12 = [v11 domain];
      v13 = sub_1B8AF0668();
      v15 = v14;

      v16 = [v11 code];
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B8AD844C((v17 > 1), v18 + 1, 1);
      }

      *(v2 + 16) = v18 + 1;
      v19 = (v2 + 24 * v18);
      v19[4] = v13;
      v19[5] = v15;
      v19[6] = v16;
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  return v2;
}

uint64_t sub_1B8AD69D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *), uint64_t a5, void (*a6)(void *, uint64_t *))
{
  v15 = MEMORY[0x1E69E7CC0];

  a4(a3);
  v11 = sub_1B8AF0E88();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
  }

  a6(v12, &v15);

  return v15;
}

uint64_t sub_1B8AD6AD0(void *a1, void *a2, void (*a3)(void *, void *))
{
  v6 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1B8ABA9E4(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B8ABA9E4((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = a1;
  *a2 = v6;
  v9 = a1;
  v10 = sub_1B8AEFBC8();
  v11 = [v10 underlyingErrors];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
  v12 = sub_1B8AF0818();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      v16 = v15;
      a3(v15, a2);

      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1B8AD6C1C()
{
  v6[3] = &_s5ErrorON_1;
  v6[4] = sub_1B8ADA320();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  sub_1B8ADA3DC(v0, v5);
  v3 = TerseEncoder.encode(_:typeNameStyle:)(v6, &unk_1F3746E60);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_1B8AD6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11[3] = &_s5ErrorON_0;
  v11[4] = sub_1B8AD9BAC();
  v8 = swift_allocObject();
  v11[0] = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v4;
  sub_1B8AD9C14(a1, a2, a3, v4);
  v9 = TerseEncoder.encode(_:typeNameStyle:)(v11, &unk_1F3746E38);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9;
}

uint64_t sub_1B8AD6DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v10 = &_s5ErrorON;
  v11 = sub_1B8ADA1F4();
  v8[0] = a1;
  v8[1] = a2;
  v9 = v3;
  sub_1B8ADA248(a1, a2, v3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v8, &unk_1F3746E10);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1B8AD6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10[3] = a3;
  v10[4] = a4();
  v10[0] = a1;
  v10[1] = a2;

  v8 = TerseEncoder.encode(_:typeNameStyle:)(v10, a5);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1B8AD7040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v10 = &type metadata for AFMModel.MiscSafetyOutputType.Error;
  v11 = sub_1B8A89D48();
  v8[0] = a1;
  v8[1] = a2;
  v9 = v3;
  sub_1B8ADA534(a1, a2, v3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v8, &unk_1F3746D48);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1B8AD713C(uint64_t a1)
{
  v4[3] = &type metadata for TextImageAlignmentCalculator.InvalidEmbeddingSizeError;
  v4[4] = sub_1B8AB3988();
  v4[0] = a1;
  v2 = TerseEncoder.encode(_:typeNameStyle:)(v4, &unk_1F3746CD0);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_1B8AD71E0(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for TextImageAlignmentCalculator.EmbeddingSizesDoNotMatch;
  v6[4] = sub_1B8AB3150();
  v6[0] = a1;
  v6[1] = a2;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(v6, &unk_1F3746CA8);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1B8AD7288(uint64_t a1, char a2)
{
  v8 = &type metadata for SCMLSafetyGuardrailError;
  v9 = sub_1B8AD9A5C();
  v6 = a1;
  v7 = a2 & 1;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v6, &unk_1F3746C80);
  __swift_destroy_boxed_opaque_existential_0(&v6);
  return v4;
}

uint64_t sub_1B8AD7338(uint64_t a1, uint64_t a2, char a3)
{
  v10 = &type metadata for MultimodalSanitizer.Error;
  v11 = sub_1B8ABEE04();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  sub_1B8ADA1E4(a1, a2);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v8, &unk_1F3746C58);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1B8AD7470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10[3] = a3;
  v10[4] = a4();
  v10[0] = a1;
  v10[1] = a2;

  v8 = TerseEncoder.encode(_:typeNameStyle:)(v10, a5);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1B8AD7528(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for PublicError.TextSanitizer;
  v6[4] = sub_1B8AD9EA0();
  v6[0] = a1;
  v6[1] = a2;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(v6, &unk_1F3746BE0);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1B8AD75C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B8AA7150;

  return v6();
}

uint64_t sub_1B8AD76B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B8A7B414;

  return v7();
}

uint64_t sub_1B8AD7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B8A8975C(a3, v23 - v10, &qword_1EBA96B88, &qword_1B8AFAB20);
  v12 = sub_1B8AF0888();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B8A897C4(v11, &qword_1EBA96B88, &qword_1B8AFAB20);
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

  sub_1B8AF0878();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B8AF0858();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B8AF06E8() + 32;
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

    sub_1B8A897C4(a3, &qword_1EBA96B88, &qword_1B8AFAB20);

    return v21;
  }

LABEL_8:
  sub_1B8A897C4(a3, &qword_1EBA96B88, &qword_1B8AFAB20);
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

uint64_t sub_1B8AD7A94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B8AD7B8C;

  return v6(a1);
}

uint64_t sub_1B8AD7B8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B8AD7C84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B8AF07D8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B8ABAB18(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B8ABAB18((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B8AF07B8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B8AF0738();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B8AF0738();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B8AF07D8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B8ABAB18(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B8AF07D8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B8ABAB18(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B8ABAB18((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B8AF0738();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B8AD8044@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x1E69E7CC0];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_1B8AF09A8();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_1B8AF0968() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_1B8AF0968();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_1B8AF09B8();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1B8ABAB18(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_1B8ABAB18((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_1B8AF0968();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_1B8AF09B8();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_1B8ABAB18((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_1B8ABAB18(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_1B8AF09B8();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_1B8ABAB18(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1B8AD844C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8AD850C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD846C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8AD8654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD848C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8AD8760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8AD84AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8AD8854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD84CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8AD8A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD84EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8AD8B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8AD850C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97290, &unk_1B8AFB4D0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8AD8654(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
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

char *sub_1B8AD8760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97288, &unk_1B8AFB4C0);
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

void *sub_1B8AD8854(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972F8, &qword_1B8AFB578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0) - 8);
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

char *sub_1B8AD8A44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97308, &qword_1B8AFB580);
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

char *sub_1B8AD8B38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97300, &qword_1B8AFB8D0);
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

uint64_t sub_1B8AD8C3C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8AF0EA8() & 1;
  }
}

uint64_t sub_1B8AD8CB0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8AF0EA8() & 1;
  }
}

unint64_t sub_1B8AD8D08()
{
  result = qword_1EBA97230;
  if (!qword_1EBA97230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97230);
  }

  return result;
}

unint64_t sub_1B8AD8D80()
{
  result = qword_1EBA97238;
  if (!qword_1EBA97238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97238);
  }

  return result;
}

uint64_t type metadata accessor for SCMLSafetyGuardrail(uint64_t a1)
{
  result = qword_1EDB756A8;
  if (!qword_1EDB756A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B8AD8E20(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97298, &qword_1B8AFB4E0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972A0, &qword_1B8AFB4E8);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972A8, &unk_1B8AFB4F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = a1[3];
  v30 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B8AD9AB0();
  v14 = v29;
  sub_1B8AF1048();
  if (!v14)
  {
    v25 = v5;
    v15 = v28;
    v29 = v9;
    v16 = sub_1B8AF0C78();
    v17 = (2 * *(v16 + 16)) | 1;
    v31 = v16;
    v32 = v16 + 32;
    v33 = 0;
    v34 = v17;
    v18 = sub_1B8AE4FD0();
    if (v18 == 2 || v33 != v34 >> 1)
    {
      v20 = sub_1B8AF0B08();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v22 = &type metadata for SCMLSafetyGuardrailError;
      v13 = v11;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v29 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v35 = 1;
      sub_1B8AD9B04();
      sub_1B8AF0BF8();
      v19 = v29;
      v13 = sub_1B8AF0C38();
      (*(v27 + 8))(v4, v15);
      (*(v19 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      sub_1B8AD9B58();
      sub_1B8AF0BF8();
      v24 = v29;
      (*(v26 + 8))(v7, v25);
      (*(v24 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v13;
}

uint64_t _s26SensitiveContentAnalysisML19SCMLSafetyGuardrailC15trimEmojiPrefix4textS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v8 = sub_1B8AF09D8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v20 = v8;
  v21 = v10;
  v18 = 0xD000000000000020;
  v19 = 0x80000001B8B056C0;
  v16 = 0;
  v17 = 0xE000000000000000;
  v11 = sub_1B8AF09E8();
  v13 = v12;

  v20 = v11;
  v21 = v13;
  v18 = 0xD00000000000003ELL;
  v19 = 0x80000001B8B056F0;
  v16 = 0;
  v17 = 0xE000000000000000;
  v14 = sub_1B8AF09E8();

  swift_arrayDestroy();
  return v14;
}

unint64_t sub_1B8AD94F8()
{
  result = qword_1EBA97250;
  if (!qword_1EBA97250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97250);
  }

  return result;
}

uint64_t sub_1B8AD9580(uint64_t a1)
{
  result = sub_1B8AF03A8();
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

uint64_t dispatch thunk of SCMLSafetyGuardrail.predict(text:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B8ACA118;

  return v9(a1, a2);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SCMLSafetyGuardrailError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SCMLSafetyGuardrailError(uint64_t result, int a2, int a3)
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

uint64_t sub_1B8AD981C(uint64_t a1)
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

uint64_t sub_1B8AD9838(uint64_t result, int a2)
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

unint64_t sub_1B8AD9868(void *a1)
{
  a1[1] = sub_1B8AD98B8();
  a1[2] = sub_1B8AD990C();
  a1[3] = sub_1B8AD9960();
  a1[4] = sub_1B8AD99B4();
  a1[5] = sub_1B8AD9A08();
  result = sub_1B8AD9A5C();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AD98B8()
{
  result = qword_1EBA97258;
  if (!qword_1EBA97258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97258);
  }

  return result;
}

unint64_t sub_1B8AD990C()
{
  result = qword_1EBA97260;
  if (!qword_1EBA97260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97260);
  }

  return result;
}

unint64_t sub_1B8AD9960()
{
  result = qword_1EBA97268;
  if (!qword_1EBA97268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97268);
  }

  return result;
}

unint64_t sub_1B8AD99B4()
{
  result = qword_1EBA97270;
  if (!qword_1EBA97270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97270);
  }

  return result;
}

unint64_t sub_1B8AD9A08()
{
  result = qword_1EBA97278;
  if (!qword_1EBA97278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97278);
  }

  return result;
}

unint64_t sub_1B8AD9A5C()
{
  result = qword_1EBA97280;
  if (!qword_1EBA97280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97280);
  }

  return result;
}

unint64_t sub_1B8AD9AB0()
{
  result = qword_1EBA972B0;
  if (!qword_1EBA972B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972B0);
  }

  return result;
}

unint64_t sub_1B8AD9B04()
{
  result = qword_1EBA972B8;
  if (!qword_1EBA972B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972B8);
  }

  return result;
}

unint64_t sub_1B8AD9B58()
{
  result = qword_1EBA972C0;
  if (!qword_1EBA972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972C0);
  }

  return result;
}

unint64_t sub_1B8AD9BAC()
{
  result = qword_1EBA972E0;
  if (!qword_1EBA972E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972E0);
  }

  return result;
}

uint64_t sub_1B8AD9C00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1B8AD9C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

unint64_t sub_1B8AD9C28()
{
  result = qword_1EBA972E8;
  if (!qword_1EBA972E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972E8);
  }

  return result;
}

uint64_t sub_1B8AD9C7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B8A7B414;

  return sub_1B8AD5014(v2, v3, v4);
}

uint64_t sub_1B8AD9D30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8AA7150;

  return sub_1B8AD7A94(a1, v4);
}

uint64_t sub_1B8AD9DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8A7B414;

  return sub_1B8AD7A94(a1, v4);
}

unint64_t sub_1B8AD9EA0()
{
  result = qword_1EBA972F0;
  if (!qword_1EBA972F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972F0);
  }

  return result;
}

unint64_t sub_1B8AD9F28()
{
  result = qword_1EBA97310;
  if (!qword_1EBA97310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97310);
  }

  return result;
}

unint64_t sub_1B8AD9F80()
{
  result = qword_1EBA97318;
  if (!qword_1EBA97318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97318);
  }

  return result;
}

unint64_t sub_1B8AD9FD8()
{
  result = qword_1EBA97320;
  if (!qword_1EBA97320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97320);
  }

  return result;
}

unint64_t sub_1B8ADA030()
{
  result = qword_1EBA97328;
  if (!qword_1EBA97328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97328);
  }

  return result;
}

unint64_t sub_1B8ADA088()
{
  result = qword_1EBA97330;
  if (!qword_1EBA97330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97330);
  }

  return result;
}

unint64_t sub_1B8ADA0E0()
{
  result = qword_1EBA97338;
  if (!qword_1EBA97338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97338);
  }

  return result;
}

unint64_t sub_1B8ADA138()
{
  result = qword_1EBA97340;
  if (!qword_1EBA97340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97340);
  }

  return result;
}

unint64_t sub_1B8ADA190()
{
  result = qword_1EBA97348;
  if (!qword_1EBA97348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97348);
  }

  return result;
}

unint64_t sub_1B8ADA1F4()
{
  result = qword_1EBA97350;
  if (!qword_1EBA97350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97350);
  }

  return result;
}

uint64_t sub_1B8ADA248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1B8ADA260()
{
  result = qword_1EBA97358;
  if (!qword_1EBA97358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97358);
  }

  return result;
}

unint64_t sub_1B8ADA2B4()
{
  result = qword_1EBA97360;
  if (!qword_1EBA97360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97360);
  }

  return result;
}

uint64_t sub_1B8ADA308(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1B8ADA320()
{
  result = qword_1EBA97368;
  if (!qword_1EBA97368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97368);
  }

  return result;
}

uint64_t sub_1B8ADA374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

unint64_t sub_1B8ADA438()
{
  result = qword_1EBA97370;
  if (!qword_1EBA97370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97370);
  }

  return result;
}

unint64_t sub_1B8ADA48C()
{
  result = qword_1EBA97378;
  if (!qword_1EBA97378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97378);
  }

  return result;
}

uint64_t sub_1B8ADA534(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_1B8ADA554(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

double static TextSplitter.splitInHalf(_:overlap:maxWordBoundarySearch:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<X1>, uint64_t a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  sub_1B8ADB4D0(a1, a3, a4, a5, a6, a7, &v14);
  v8 = v15;
  v9 = v16;
  v10 = v18;
  v11 = v19;
  result = *&v14;
  v13 = v17;
  *a2 = v14;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v13;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  return result;
}

id sub_1B8ADA5EC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B8ADA8C8(25180, 0xE200000000000000, 0);
  qword_1EBA97380 = result;
  return result;
}

unint64_t sub_1B8ADA668(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1B8AF0BA8();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1B8ADAA2C(v19, 0);
      sub_1B8ADACBC(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1B8AF0BA8();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8CC62C0]();
          v11 = MEMORY[0x1B8CC62C0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1B8ADAAB4(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1B8ADAAB4(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

id sub_1B8ADA8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B8AF0658();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B8AEFBD8();

    swift_willThrow();
  }

  return v6;
}

void *sub_1B8ADA9A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97300, &qword_1B8AFB8D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1B8ADAA2C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973A0, &qword_1B8AFB8C0);
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

uint64_t sub_1B8ADAAB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B8AF0BA8();
  }

  return sub_1B8AF0AE8();
}

uint64_t sub_1B8ADAB2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8AF0BA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8AF0BA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B8A93534(&qword_1EBA973B0, &qword_1EBA973A8, &qword_1B8AFB8C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973A8, &qword_1B8AFB8C8);
            v9 = sub_1B8ADAE4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SCMLPeopleDetectionAttribute();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8ADACBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8AF0BA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8AF0BA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B8A93534(&qword_1EBA97398, &qword_1EBA97390, &qword_1B8AFB8B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97390, &qword_1B8AFB8B8);
            v9 = sub_1B8ADAED4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B8ADB6C0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1B8ADAE4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC62C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8ADAECC;
  }

  __break(1u);
  return result;
}

void (*sub_1B8ADAED4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC62C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8ADB70C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8ADAF54(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v8 = sub_1B8AF0978();
  if (v9)
  {
    v10 = a2;
  }

  else
  {
    v10 = v8;
  }

  if (v10 >> 14 < a5 >> 14)
  {
    goto LABEL_20;
  }

  sub_1B8AF09B8();
  MEMORY[0x1B8CC5EE0]();
  if (qword_1EBA96470 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v11 = qword_1EBA97380;
    v12 = sub_1B8AF0658();
    v13 = [v11 matchesInString:v12 options:0 range:{0, sub_1B8AF0998()}];

    sub_1B8ADB6C0();
    v14 = sub_1B8AF0818();

    if (v14 >> 62)
    {
      break;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_8:
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B8CC62C0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 range];
      if (v20 >= 1 && v20 < sub_1B8AF0728())
      {

        [v18 range];
        v21 = sub_1B8AF0988();

        goto LABEL_24;
      }

      ++v16;
      if (v19 == v15)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v15 = sub_1B8AF0BA8();
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_23:

  v21 = 0;
LABEL_24:

  return v21;
}

uint64_t sub_1B8ADB208(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (__OFSUB__(0, a6))
  {
    goto LABEL_20;
  }

  v8 = sub_1B8AF0978();
  if (v9)
  {
    v8 = a1;
  }

  if (a5 >> 14 < v8 >> 14)
  {
    goto LABEL_21;
  }

  sub_1B8AF09B8();
  MEMORY[0x1B8CC5EE0]();
  if (qword_1EBA96470 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v10 = qword_1EBA97380;
    v11 = sub_1B8AF0658();
    v12 = [v10 matchesInString:v11 options:0 range:{0, sub_1B8AF0998()}];

    sub_1B8ADB6C0();
    v13 = sub_1B8AF0818();

    v14 = sub_1B8ADA668(v13);
    v15 = v14;
    if (v14 >> 62)
    {
      break;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_8:
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8CC62C0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 range];
      if (v21 >= 1 && v21 < sub_1B8AF0728())
      {

        [v19 range];
        v22 = sub_1B8AF0988();

        goto LABEL_25;
      }

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v16 = sub_1B8AF0BA8();
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_24:

  v22 = 0;
LABEL_25:

  return v22;
}

unint64_t sub_1B8ADB4D0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  result = sub_1B8AF0998();
  if (__OFADD__(result, a5))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1B8AF0988();
  v15 = __OFADD__(a6, 1);
  v16 = a6 + 1;
  if (v15)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  v18 = sub_1B8ADAF54(a1, a2, a3, a4, result, v16);
  if ((v19 & 1) == 0)
  {
    v17 = v18;
  }

  result = sub_1B8AF0998();
  if (__OFSUB__(result, a5))
  {
    goto LABEL_13;
  }

  v20 = sub_1B8AF0988();
  result = sub_1B8ADB208(a1, a2, a3, a4, v20, v16);
  if ((v21 & 1) == 0)
  {
    v20 = result;
  }

  if (v17 >> 14 < a1 >> 14)
  {
    goto LABEL_14;
  }

  result = sub_1B8AF09B8();
  if (a2 >> 14 >= v20 >> 14)
  {
    v25 = result;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    result = sub_1B8AF09B8();
    *a7 = v25;
    a7[1] = v26;
    a7[2] = v27;
    a7[3] = v28;
    a7[4] = result;
    a7[5] = v29;
    a7[6] = v30;
    a7[7] = v31;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1B8ADB6C0()
{
  result = qword_1EBA97388;
  if (!qword_1EBA97388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA97388);
  }

  return result;
}

unint64_t CausedErrorWithArgument.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF72A0;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = CausedErrorWithArgument.localizedDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = sub_1B8AF0668();
  *(inited + 88) = v8;
  v9 = (*(a2 + 72))(a1, a2);
  swift_getErrorValue();
  *(inited + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1);

  v11 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  swift_arrayDestroy();
  return v11;
}

uint64_t CausedError.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  v10 = sub_1B8AE7FFC(v2, a1);
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  v5 = (*(a2 + 40))(a1, a2);
  swift_getErrorValue();
  v6 = sub_1B8AF0FE8();
  v8 = v7;

  MEMORY[0x1B8CC5F50](v6, v8);

  return v10;
}

uint64_t sub_1B8ADB988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v11 = a3();
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v5 = sub_1B8AE315C(a1, *(*(a2 + 8) + 8));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v7 = MEMORY[0x1B8CC6010](v5, v6);
  v9 = v8;

  MEMORY[0x1B8CC5F50](v7, v9);

  return v11;
}

unint64_t CausedError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF72A0;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = CausedError.localizedDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = sub_1B8AF0668();
  *(inited + 88) = v8;
  v9 = (*(a2 + 40))(a1, a2);
  swift_getErrorValue();
  *(inited + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1);

  v11 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  swift_arrayDestroy();
  return v11;
}

uint64_t CausedErrorWithArgument.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  v9 = CausedErrorWithArgument.selfDescription.getter(a1, a2);
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  v4 = (*(a2 + 72))(a1, a2);
  swift_getErrorValue();
  v5 = sub_1B8AF0FE8();
  v7 = v6;

  MEMORY[0x1B8CC5F50](v5, v7);

  return v9;
}

uint64_t CausedErrorWithArgument.selfDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 + 64);
  v13[3] = v6;
  v13[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v13);
  v7(a1, a2);
  v8 = TerseEncoder.encode(_:typeNameStyle:)(v13, &unk_1F37476A0);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v13);
  v13[0] = sub_1B8AE7FFC(v2, a1);
  v13[1] = v11;
  MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
  MEMORY[0x1B8CC5F50](v8, v10);

  MEMORY[0x1B8CC5F50](41, 0xE100000000000000);
  return v13[0];
}

uint64_t sub_1B8ADBEAC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a4;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97458, &qword_1B8AFBBB8);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97460, &qword_1B8AFBBC0);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97468, &qword_1B8AFBBC8);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97470, &qword_1B8AFBBD0);
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v30 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97478, &qword_1B8AFBBD8);
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97480, &qword_1B8AFBBE0);
  v31 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97488, &qword_1B8AFBBE8);
  v47 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8ADDD68();
  sub_1B8AF1058();
  if (v45)
  {
    if (v45 == 1)
    {
      v53 = 5;
      sub_1B8ADDDBC();
      v23 = v42;
      sub_1B8AF0C88();
      v24 = v44;
      sub_1B8AF0C98();
      (*(v43 + 8))(v23, v24);
      return (*(v47 + 8))(v22, v20);
    }

    else
    {
      if (v46 > 1)
      {
        if (v46 ^ 2 | *(&v46 + 1))
        {
          v51 = 3;
          sub_1B8ADDE64();
          v27 = v37;
          sub_1B8AF0C88();
          v29 = v38;
          v28 = v39;
        }

        else
        {
          v50 = 2;
          sub_1B8ADDEB8();
          v27 = v34;
          sub_1B8AF0C88();
          v29 = v35;
          v28 = v36;
        }

        (*(v29 + 8))(v27, v28);
      }

      else if (v46 == 0)
      {
        v48 = 0;
        sub_1B8ADDF60();
        sub_1B8AF0C88();
        (*(v31 + 8))(v19, v17);
      }

      else
      {
        v49 = 1;
        sub_1B8ADDF0C();
        sub_1B8AF0C88();
        (*(v32 + 8))(v16, v33);
      }

      return (*(v47 + 8))(v22, v20);
    }
  }

  else
  {
    v52 = 4;
    sub_1B8ADDE10();
    sub_1B8AF0C88();
    v26 = v41;
    sub_1B8AF0C98();
    (*(v40 + 8))(v9, v26);
    return (*(v47 + 8))(v22, v20);
  }
}

unint64_t sub_1B8ADC530()
{
  v1 = *v0;
  v2 = 0x6F5464656C696166;
  v3 = 0x5064696C61766E69;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ELL;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8ADC608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8ADCE2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8ADC63C(uint64_t a1)
{
  v2 = sub_1B8ADDD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC678(uint64_t a1)
{
  v2 = sub_1B8ADDD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC6B4(uint64_t a1)
{
  v2 = sub_1B8ADDF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC6F0(uint64_t a1)
{
  v2 = sub_1B8ADDF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC72C(uint64_t a1)
{
  v2 = sub_1B8ADDEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC768(uint64_t a1)
{
  v2 = sub_1B8ADDEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC7A4(uint64_t a1)
{
  v2 = sub_1B8ADDE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC7E0(uint64_t a1)
{
  v2 = sub_1B8ADDE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC81C(uint64_t a1)
{
  v2 = sub_1B8ADDE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC858(uint64_t a1)
{
  v2 = sub_1B8ADDE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC894(uint64_t a1)
{
  v2 = sub_1B8ADDF0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC8D0(uint64_t a1)
{
  v2 = sub_1B8ADDF0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC90C(uint64_t a1)
{
  v2 = sub_1B8ADDDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC948(uint64_t a1)
{
  v2 = sub_1B8ADDDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC984@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8ADD038(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1B8ADC9D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD6DD8(v1, v2, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v8;
}

uint64_t sub_1B8ADCAA8(uint64_t a1)
{
  v2 = sub_1B8ADA260();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8ADCAE4(uint64_t a1)
{
  v2 = sub_1B8ADA260();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

__CFData *sub_1B8ADCB20(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_6;
  }

  v3 = Mutable;
  sub_1B8AF0228();
  v7 = sub_1B8AF0658();

  v8 = CGImageDestinationCreateWithData(v3, v7, 1uLL, 0);

  if (!v8)
  {

LABEL_6:
    sub_1B8ADA2B4();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v3;
  }

  if ((a2 & 0x100000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973B8, &qword_1B8AFB960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = sub_1B8AF0668();
    *(inited + 40) = v10;
    *(inited + 48) = a2;
    sub_1B8AE6FA8(inited);
    swift_setDeallocating();
    sub_1B8A897C4(inited + 32, &qword_1EBA973C0, &qword_1B8AFB968);
    v11 = sub_1B8AF0598();
  }

  CGImageDestinationAddImage(v8, v4, v11);
  if (CGImageDestinationFinalize(v8))
  {
    v13 = v3;
    v3 = sub_1B8AEFC28();
  }

  else
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v14 = xmmword_1B8AFB930;
    *(v14 + 16) = 2;
    swift_willThrow();
  }

  return v3;
}

const __CFData *sub_1B8ADCD40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AEFC18();
  v3 = CGImageSourceCreateWithData(v2, 0);

  if (v3)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, 0);
    if (ImageAtIndex)
    {
      v2 = ImageAtIndex;
    }

    else
    {
      sub_1B8ADA2B4();
      swift_allocError();
      *v6 = xmmword_1B8AFB940;
      *(v6 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v5 = xmmword_1B8AFB950;
    *(v5 + 16) = 2;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1B8ADCE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x80000001B8B06FC0 == a2;
  if (v4 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8B06FE0 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B8B07000 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEE0065646F636544 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B8B07020 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5064696C61766E69 && a2 == 0xEB00000000687461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

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

uint64_t sub_1B8ADD038(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973E8, &qword_1B8AFBB78);
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973F0, &qword_1B8AFBB80);
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v46 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973F8, &qword_1B8AFBB88);
  v54 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v61 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97400, &qword_1B8AFBB90);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97408, &qword_1B8AFBB98);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97410, &qword_1B8AFBBA0);
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97418, &unk_1B8AFBBA8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = a1[3];
  v64 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B8ADDD68();
  v23 = v63;
  sub_1B8AF1048();
  if (!v23)
  {
    v24 = v16;
    v46 = v14;
    v47 = v13;
    v25 = v60;
    v26 = v61;
    v27 = v62;
    v63 = v17;
    v28 = sub_1B8AF0C78();
    v29 = (2 * *(v28 + 16)) | 1;
    v65 = v28;
    v66 = v28 + 32;
    v67 = 0;
    v68 = v29;
    v30 = sub_1B8AE4FD4();
    if (v30 == 6 || v67 != v68 >> 1)
    {
      v34 = sub_1B8AF0B08();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v36 = &_s5ErrorON;
      v22 = v20;
      v37 = v63;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v22, v37);
      swift_unknownObjectRelease();
    }

    else if (v30 > 2u)
    {
      v39 = v18;
      if (v30 == 3)
      {
        v69 = 3;
        sub_1B8ADDE64();
        v43 = v63;
        sub_1B8AF0BF8();
        (*(v54 + 8))(v26, v51);
        (*(v18 + 8))(v20, v43);
        swift_unknownObjectRelease();
        v22 = 3;
      }

      else
      {
        v40 = v63;
        if (v30 == 4)
        {
          v69 = 4;
          sub_1B8ADDE10();
          sub_1B8AF0BF8();
          v41 = v55;
          v22 = sub_1B8AF0C18();
          (*(v56 + 8))(v27, v41);
          (*(v18 + 8))(v20, v40);
        }

        else
        {
          v69 = 5;
          sub_1B8ADDDBC();
          v44 = v59;
          sub_1B8AF0BF8();
          v45 = v57;
          v22 = sub_1B8AF0C18();
          (*(v58 + 8))(v44, v45);
          (*(v39 + 8))(v20, v40);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v31 = v18;
      if (v30)
      {
        v32 = v63;
        if (v30 == 1)
        {
          v69 = 1;
          sub_1B8ADDF0C();
          v33 = v47;
          sub_1B8AF0BF8();
          (*(v49 + 8))(v33, v50);
          (*(v31 + 8))(v20, v32);
          swift_unknownObjectRelease();
          v22 = 1;
        }

        else
        {
          v69 = 2;
          sub_1B8ADDEB8();
          sub_1B8AF0BF8();
          (*(v52 + 8))(v25, v53);
          (*(v31 + 8))(v20, v32);
          swift_unknownObjectRelease();
          v22 = 2;
        }
      }

      else
      {
        v69 = 0;
        sub_1B8ADDF60();
        v42 = v63;
        sub_1B8AF0BF8();
        (*(v48 + 8))(v24, v46);
        (*(v31 + 8))(v20, v42);
        swift_unknownObjectRelease();
        v22 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v64);
  return v22;
}

const __CFURL *sub_1B8ADD9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AEFBE8();
  v8 = sub_1B8AEFBF8();
  v9 = CGImageSourceCreateWithURL(v8, 0);

  if (!v9)
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 1;
    swift_willThrow();

LABEL_6:
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
  if (!ImageAtIndex)
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v8 = ImageAtIndex;
  (*(v5 + 8))(v7, v4);

  return v8;
}

uint64_t get_enum_tag_for_layout_string_So10CGImageRefa26SensitiveContentAnalysisMLE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B8ADDBA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B8ADDBC8(void *a1)
{
  a1[1] = sub_1B8ADA260();
  a1[2] = sub_1B8ADDC18();
  a1[3] = sub_1B8ADDC6C();
  a1[4] = sub_1B8ADDCC0();
  a1[5] = sub_1B8ADDD14();
  result = sub_1B8ADA1F4();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8ADDC18()
{
  result = qword_1EBA973C8;
  if (!qword_1EBA973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973C8);
  }

  return result;
}

unint64_t sub_1B8ADDC6C()
{
  result = qword_1EBA973D0;
  if (!qword_1EBA973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973D0);
  }

  return result;
}

unint64_t sub_1B8ADDCC0()
{
  result = qword_1EBA973D8;
  if (!qword_1EBA973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973D8);
  }

  return result;
}

unint64_t sub_1B8ADDD14()
{
  result = qword_1EBA973E0;
  if (!qword_1EBA973E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973E0);
  }

  return result;
}

unint64_t sub_1B8ADDD68()
{
  result = qword_1EBA97420;
  if (!qword_1EBA97420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97420);
  }

  return result;
}

unint64_t sub_1B8ADDDBC()
{
  result = qword_1EBA97428;
  if (!qword_1EBA97428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97428);
  }

  return result;
}

unint64_t sub_1B8ADDE10()
{
  result = qword_1EBA97430;
  if (!qword_1EBA97430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97430);
  }

  return result;
}

unint64_t sub_1B8ADDE64()
{
  result = qword_1EBA97438;
  if (!qword_1EBA97438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97438);
  }

  return result;
}

unint64_t sub_1B8ADDEB8()
{
  result = qword_1EBA97440;
  if (!qword_1EBA97440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97440);
  }

  return result;
}

unint64_t sub_1B8ADDF0C()
{
  result = qword_1EBA97448;
  if (!qword_1EBA97448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97448);
  }

  return result;
}

unint64_t sub_1B8ADDF60()
{
  result = qword_1EBA97450;
  if (!qword_1EBA97450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97450);
  }

  return result;
}

unint64_t sub_1B8ADE028()
{
  result = qword_1EBA97490;
  if (!qword_1EBA97490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97490);
  }

  return result;
}

unint64_t sub_1B8ADE080()
{
  result = qword_1EBA97498;
  if (!qword_1EBA97498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97498);
  }

  return result;
}

unint64_t sub_1B8ADE0D8()
{
  result = qword_1EBA974A0;
  if (!qword_1EBA974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974A0);
  }

  return result;
}

unint64_t sub_1B8ADE130()
{
  result = qword_1EBA974A8;
  if (!qword_1EBA974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974A8);
  }

  return result;
}

unint64_t sub_1B8ADE188()
{
  result = qword_1EBA974B0;
  if (!qword_1EBA974B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974B0);
  }

  return result;
}

unint64_t sub_1B8ADE1E0()
{
  result = qword_1EBA974B8;
  if (!qword_1EBA974B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974B8);
  }

  return result;
}

unint64_t sub_1B8ADE238()
{
  result = qword_1EBA974C0;
  if (!qword_1EBA974C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974C0);
  }

  return result;
}

unint64_t sub_1B8ADE290()
{
  result = qword_1EBA974C8;
  if (!qword_1EBA974C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974C8);
  }

  return result;
}

unint64_t sub_1B8ADE2E8()
{
  result = qword_1EBA974D0;
  if (!qword_1EBA974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974D0);
  }

  return result;
}

unint64_t sub_1B8ADE340()
{
  result = qword_1EBA974D8;
  if (!qword_1EBA974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974D8);
  }

  return result;
}

unint64_t sub_1B8ADE398()
{
  result = qword_1EBA974E0;
  if (!qword_1EBA974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974E0);
  }

  return result;
}

unint64_t sub_1B8ADE3F0()
{
  result = qword_1EBA974E8;
  if (!qword_1EBA974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974E8);
  }

  return result;
}

unint64_t sub_1B8ADE448()
{
  result = qword_1EBA974F0;
  if (!qword_1EBA974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974F0);
  }

  return result;
}

unint64_t sub_1B8ADE4A0()
{
  result = qword_1EBA974F8;
  if (!qword_1EBA974F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974F8);
  }

  return result;
}

unint64_t sub_1B8ADE4F8()
{
  result = qword_1EBA97500;
  if (!qword_1EBA97500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97500);
  }

  return result;
}

unint64_t sub_1B8ADE550()
{
  result = qword_1EBA97508;
  if (!qword_1EBA97508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97508);
  }

  return result;
}

unint64_t sub_1B8ADE5A8()
{
  result = qword_1EBA97510;
  if (!qword_1EBA97510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97510);
  }

  return result;
}

uint64_t Condition.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_1B8AF0188();

  return v0;
}

uint64_t Condition.init()()
{
  *(v0 + 16) = *sub_1B8AF0188();

  return v0;
}

uint64_t sub_1B8ADE674(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1B8AF0858();
    v6 = v5;
    v3[5] = v4;
    v3[6] = v5;
    v7 = sub_1B8ADE718;
    v8 = v4;
  }

  else
  {
    v7 = sub_1B8ADE91C;
    v8 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v6);
}

uint64_t sub_1B8ADE718()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B8ADE7E8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8ADE7E8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B8ADE908, v3, v2);
}

uint64_t sub_1B8ADE920(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = *(a2 + 16);
  v5 = *(result + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    if (*(v8 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B8ADF0E4(isUniquelyReferenced_nonNull_native, v6, 0);
      v8 = *(a2 + 16);
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8);
    sub_1B8ADF360((v8 + 16), v8 + ((*(v9 + 80) + 40) & ~*(v9 + 80)), a1);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8ADEA08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  if (!a1)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  if (*(*(v1 + 16) + 24) < 1)
  {
    v16 = 1;
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v11 = *(v1 + 16);
  result = (*(v7 + 32))(v5, &v11[((*(v7 + 80) + 40) & ~*(v7 + 80)) + *(v7 + 72) * *(v11 + 4)], v6);
  v12 = *(v11 + 4);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *(v11 + 3);
  if (v14 >= *(v11 + 2))
  {
    v14 = 0;
  }

  *(v11 + 4) = v14;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_16;
  }

  v16 = 0;
  *(v11 + 3) = v15 - 1;
LABEL_11:
  (*(v7 + 56))(v5, v16, 1, v6);
  swift_endAccess();
  v17 = (*(v7 + 48))(v5, 1, v6);
  if (v17 == 1)
  {
    sub_1B8ADEC74(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1B8AF0868();
    (*(v7 + 8))(v10, v6);
  }

  return v17 != 1;
}

uint64_t sub_1B8ADEC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8ADECDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-v10];
  if (!a1)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  if (*(*(v2 + 16) + 24) < 1)
  {
    v17 = 1;
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v12 = *(v2 + 16);
  result = (*(v8 + 32))(v6, &v12[((*(v8 + 80) + 40) & ~*(v8 + 80)) + *(v8 + 72) * *(v12 + 4)], v7);
  v13 = *(v12 + 4);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v16 = *(v12 + 3);
  if (v15 >= *(v12 + 2))
  {
    v15 = 0;
  }

  *(v12 + 4) = v15;
  if (__OFSUB__(v16, 1))
  {
    goto LABEL_25;
  }

  v17 = 0;
  *(v12 + 3) = v16 - 1;
LABEL_11:
  (*(v8 + 56))(v6, v17, 1, v7);
  swift_endAccess();
  v25 = (*(v8 + 48))(v6, 1, v7);
  if (v25 != 1)
  {
    do
    {
      (*(v8 + 32))(v11, v6, v7);
      sub_1B8AF0868();
      (*(v8 + 8))(v11, v7);
      swift_beginAccess();
      if (*(*(v2 + 16) + 24) < 1)
      {
        v18 = 1;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B8A9EE18();
        }

        v19 = *(v2 + 16);
        result = (*(v8 + 32))(v6, &v19[((*(v8 + 80) + 40) & ~*(v8 + 80)) + *(v8 + 72) * *(v19 + 4)], v7);
        v20 = *(v19 + 4);
        v14 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v22 = *(v19 + 3);
        if (v21 >= *(v19 + 2))
        {
          v21 = 0;
        }

        *(v19 + 4) = v21;
        if (__OFSUB__(v22, 1))
        {
          goto LABEL_25;
        }

        v18 = 0;
        *(v19 + 3) = v22 - 1;
      }

      (*(v8 + 56))(v6, v18, 1, v7);
      swift_endAccess();
    }

    while ((*(v8 + 48))(v6, 1, v7) != 1);
  }

  v23 = v25 != 1;
  sub_1B8ADEC74(v6);
  return v23;
}

BOOL sub_1B8ADF044(_BOOL8 result)
{
  if (result)
  {
    swift_beginAccess();
    return *(*(v1 + 16) + 24) != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Condition.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

size_t sub_1B8ADF0E4(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_1B8ADF7C0(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1B8AF0198();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_1B8ADF440(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_1B8ADF64C(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1B8ADF360(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1B8ADF440(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1B8ADF64C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  swift_arrayInitWithCopy();
}

void sub_1B8ADF7C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t dispatch thunk of Condition.wait(isolation:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B8A7B414;

  return v8(a1, a2);
}

__CVBuffer *CVBufferRef.surface.getter()
{
  IOSurface = CVPixelBufferGetIOSurface(v0);
  if (IOSurface)
  {
    v0 = IOSurface;
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 2;
    *(v2 + 24) = 3;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1B8ADFBB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v52 = a5;
  *&v51 = a4;
  *(&v51 + 1) = a3;
  v53 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975B0, &qword_1B8AFC528);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975B8, &qword_1B8AFC530);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975C0, &qword_1B8AFC538);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975C8, &qword_1B8AFC540);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975D0, &qword_1B8AFC548);
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975D8, &qword_1B8AFC550);
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975E0, &unk_1B8AFC558);
  v22 = *(v21 - 8);
  v54 = v21;
  v55 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE282C();
  sub_1B8AF1058();
  if (v52 <= 1u)
  {
    if (v52)
    {
      v64 = 3;
      sub_1B8AE2928();
      v25 = v54;
      sub_1B8AF0C88();
      v63 = 0;
      v18 = v47;
      v31 = v56;
      sub_1B8AF0CA8();
      if (!v31)
      {
        v62 = 1;
        sub_1B8AF0CA8();
        v27 = *(v46 + 8);
        v28 = v12;
        v32 = v18;
        goto LABEL_16;
      }

      v27 = *(v46 + 8);
      v28 = v12;
    }

    else
    {
      v59 = 0;
      sub_1B8AE2A24();
      v25 = v54;
      sub_1B8AF0C88();
      v58[0] = 0;
      v26 = v56;
      sub_1B8AF0CD8();
      if (!v26)
      {
        v57 = 1;
        sub_1B8AF0C98();
        (*(v45 + 8))(v20, v18);
        return (*(v55 + 8))(v24, v25);
      }

      v27 = *(v45 + 8);
      v28 = v20;
    }

    v32 = v18;
LABEL_16:
    v27(v28, v32);
    return (*(v55 + 8))(v24, v25);
  }

  if (v52 == 2)
  {
    v66 = 5;
    sub_1B8AE2880();
    v29 = v48;
    v25 = v54;
    sub_1B8AF0C88();
    v30 = v50;
    sub_1B8AF0CE8();
    (*(v49 + 8))(v29, v30);
    return (*(v55 + 8))(v24, v25);
  }

  if (v51 | *(&v51 + 1) | v53)
  {
    if (v53 == 1 && v51 == 0)
    {
      v61 = 2;
      sub_1B8AE297C();
      v33 = v38;
      v34 = v54;
      sub_1B8AF0C88();
      v36 = v39;
      v35 = v40;
    }

    else
    {
      v65 = 4;
      sub_1B8AE28D4();
      v33 = v41;
      v34 = v54;
      sub_1B8AF0C88();
      v36 = v42;
      v35 = v43;
    }

    (*(v36 + 8))(v33, v35);
  }

  else
  {
    v60 = 1;
    sub_1B8AE29D0();
    v34 = v54;
    sub_1B8AF0C88();
    (*(v44 + 8))(v17, v15);
  }

  return (*(v55 + 8))(v24, v34);
}

unint64_t sub_1B8AE02E4()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  if (v2 != 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v2 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000017;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = v4;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8AE0388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8AE1BB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8AE03B0(uint64_t a1)
{
  v2 = sub_1B8AE282C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE03EC(uint64_t a1)
{
  v2 = sub_1B8AE282C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0428()
{
  if (*v0)
  {
    return 0x6E6F6974636E7566;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B8AE0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AE052C(uint64_t a1)
{
  v2 = sub_1B8AE2A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE0568(uint64_t a1)
{
  v2 = sub_1B8AE2A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE05A4(uint64_t a1)
{
  v2 = sub_1B8AE29D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE05E0(uint64_t a1)
{
  v2 = sub_1B8AE29D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE061C(uint64_t a1)
{
  v2 = sub_1B8AE297C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE0658(uint64_t a1)
{
  v2 = sub_1B8AE297C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0694()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_1B8AE06C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AE079C(uint64_t a1)
{
  v2 = sub_1B8AE2928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE07D8(uint64_t a1)
{
  v2 = sub_1B8AE2928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0814(uint64_t a1)
{
  v2 = sub_1B8AE28D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE0850(uint64_t a1)
{
  v2 = sub_1B8AE28D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE088C(uint64_t a1)
{
  v2 = sub_1B8AE2880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE08C8(uint64_t a1)
{
  v2 = sub_1B8AE2880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0904@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8AE1DBC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

unint64_t sub_1B8AE095C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v6;
  v7 = sub_1B8AD6CF4(v1, v2, v3, v4);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v9;
}

uint64_t sub_1B8AE0A38(uint64_t a1)
{
  v2 = sub_1B8AD9C28();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AE0A74(uint64_t a1)
{
  v2 = sub_1B8AD9C28();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

__CFData *CVBufferRef.encode(format:quality:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  v9 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  [v8 extent];
  v10 = [v9 createCGImage:v8 fromRect:?];
  if (v10)
  {
    v11 = v10;
    v4 = sub_1B8ADCB20(a1, a2 | ((HIDWORD(a2) & 1) << 32));
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 1;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return v4;
}

void static CVBufferRef.create(width:height:format:ioSurfaceBacked:rowAlignment:)(int64_t a1, int64_t a2, OSType a3, char a4, __CVBuffer *a5, char a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 < 1 || a2 <= 0)
  {
    sub_1B8A7BACC();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    swift_willThrow();
  }

  else
  {
    sub_1B8AE6B28(MEMORY[0x1E69E7CC0]);
    if (a4)
    {
      v12 = *MEMORY[0x1E69660D8];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97518, &qword_1B8AFC2C0);
      pixelBufferOut[0] = MEMORY[0x1E69E7CC8];
      sub_1B8AAB328(pixelBufferOut, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v21, v12, isUniquelyReferenced_nonNull_native);
    }

    if ((a6 & 1) == 0)
    {
      v14 = *MEMORY[0x1E6966020];
      v23 = MEMORY[0x1E69E6530];
      pixelBufferOut[0] = a5;
      sub_1B8AAB328(pixelBufferOut, v21);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v21, v14, v15);
    }

    pixelBufferOut[0] = 0;
    v16 = *MEMORY[0x1E695E480];
    type metadata accessor for CFString(0);
    sub_1B8AE18D4();
    v17 = sub_1B8AF0598();

    v18 = CVPixelBufferCreate(v16, a1, a2, a3, v17, pixelBufferOut);

    if (!pixelBufferOut[0])
    {
      sub_1B8A7BACC();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = 0xD000000000000013;
      *(v19 + 16) = 0x80000001B8B07080;
      *(v19 + 24) = 0;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CVBufferRef.transferFrom(image:)(CGImageRef image)
{
  v3 = CVPixelBufferLockBaseAddress(v1, 0);
  if (v3)
  {
    v4 = v3;
    sub_1B8A7BACC();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0xD00000000000001CLL;
    *(v5 + 16) = 0x80000001B8B070A0;
    *(v5 + 24) = 0;
    swift_willThrow();
  }

  else
  {
    sub_1B8AE146C(v1, image);
    sub_1B8AE12C0(v1, 0);
  }
}

CVPixelBufferRef static CVBufferRef.load(path:)(uint64_t a1, uint64_t a2)
{
  pixelBufferOut[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B8ADD9C8(a1, a2);
  if (!v3)
  {
    v5 = v4;
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v5);
    v8 = Height;
    if (Width < 1 || Height < 1)
    {
      sub_1B8A7BACC();
      v2 = swift_allocError();
      *v17 = Width;
      *(v17 + 8) = v8;
      *(v17 + 16) = 0;
      *(v17 + 24) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1B8AE6B28(MEMORY[0x1E69E7CC0]);
      v9 = *MEMORY[0x1E69660D8];
      pixelBufferOut[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97518, &qword_1B8AFC2C0);
      pixelBufferOut[0] = MEMORY[0x1E69E7CC8];
      sub_1B8AAB328(pixelBufferOut, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v20, v9, isUniquelyReferenced_nonNull_native);
      pixelBufferOut[0] = 0;
      v11 = *MEMORY[0x1E695E480];
      type metadata accessor for CFString(0);
      sub_1B8AE18D4();
      v12 = sub_1B8AF0598();

      v13 = CVPixelBufferCreate(v11, Width, v8, 0x42475241u, v12, pixelBufferOut);

      v2 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        v14 = CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
        if (v14)
        {
          v15 = v14;
          sub_1B8A7BACC();
          swift_allocError();
          *v16 = v15;
          *(v16 + 8) = 0xD00000000000001CLL;
          *(v16 + 16) = 0x80000001B8B070A0;
          *(v16 + 24) = 0;
          swift_willThrow();
        }

        else
        {
          sub_1B8AE146C(v2, v5);
          sub_1B8AE12C0(v2, 0);
        }
      }

      else
      {
        sub_1B8A7BACC();
        v2 = swift_allocError();
        *v18 = v13;
        *(v18 + 8) = 0xD000000000000013;
        *(v18 + 16) = 0x80000001B8B07080;
        *(v18 + 24) = 0;
        swift_willThrow();
      }
    }
  }

  return v2;
}

void CVBufferRef.withLock<A>(flags:block:)(CVPixelBufferLockFlags lockFlags, void (*a2)(void))
{
  v5 = CVPixelBufferLockBaseAddress(v2, lockFlags);
  if (v5)
  {
    v6 = v5;
    sub_1B8A7BACC();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0xD00000000000001CLL;
    *(v7 + 16) = 0x80000001B8B070A0;
    *(v7 + 24) = 0;
    swift_willThrow();
  }

  else
  {
    a2();
    sub_1B8AE12C0(v2, lockFlags);
  }
}

void sub_1B8AE12C0(__CVBuffer *a1, CVPixelBufferLockFlags a2)
{
  v2 = CVPixelBufferUnlockBaseAddress(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (qword_1EBA96488 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8AF03A8();
    __swift_project_value_buffer(v4, qword_1EBAA5858);
    oslog = sub_1B8AF0388();
    v5 = sub_1B8AF08E8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = v3;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_1B8A7BACC();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = 0xD00000000000001ELL;
      *(v9 + 16) = 0x80000001B8B070C0;
      *(v9 + 24) = 0;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1B8A3C000, oslog, v5, "ignoring error: %@", v7, 0xCu);
      sub_1B8A897C4(v8, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v8, -1, -1);
      MEMORY[0x1B8CC7D70](v7, -1, -1);
    }
  }
}

void sub_1B8AE146C(__CVBuffer *a1, CGImage *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1111970369)
  {
    v5 = 8194;
  }

  else
  {
    if (PixelFormatType != 1380401729)
    {
      v13 = CVPixelBufferGetPixelFormatType(a1);
      sub_1B8A7BACC();
      swift_allocError();
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = v13;
      *(v14 + 24) = 2;
      swift_willThrow();
      return;
    }

    v5 = 1;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v11 = __CGBitmapContextCreate(BaseAddress, Width, Height, BytesPerRow, DeviceRGB, v5);
  if (v11)
  {
    v12 = v11;
    CGImageGetWidth(a2);
    CGImageGetHeight(a2);
    CGRectMake();
    sub_1B8AF08B8();
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }
}

CVPixelBufferRef sub_1B8AE1600(uint64_t a1, uint64_t a2)
{
  pixelBufferOut[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B8ADCD40(a1, a2);
  if (!v3)
  {
    v5 = v4;
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v5);
    v8 = Height;
    if (Width < 1 || Height < 1)
    {
      sub_1B8A7BACC();
      v2 = swift_allocError();
      *v17 = Width;
      *(v17 + 8) = v8;
      *(v17 + 16) = 0;
      *(v17 + 24) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1B8AE6B28(MEMORY[0x1E69E7CC0]);
      v9 = *MEMORY[0x1E69660D8];
      pixelBufferOut[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97518, &qword_1B8AFC2C0);
      pixelBufferOut[0] = MEMORY[0x1E69E7CC8];
      sub_1B8AAB328(pixelBufferOut, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v20, v9, isUniquelyReferenced_nonNull_native);
      pixelBufferOut[0] = 0;
      v11 = *MEMORY[0x1E695E480];
      type metadata accessor for CFString(0);
      sub_1B8AE18D4();
      v12 = sub_1B8AF0598();

      v13 = CVPixelBufferCreate(v11, Width, v8, 0x42475241u, v12, pixelBufferOut);

      v2 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        v14 = CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
        if (v14)
        {
          v15 = v14;
          sub_1B8A7BACC();
          swift_allocError();
          *v16 = v15;
          *(v16 + 8) = 0xD00000000000001CLL;
          *(v16 + 16) = 0x80000001B8B070A0;
          *(v16 + 24) = 0;
          swift_willThrow();
        }

        else
        {
          sub_1B8AE146C(v2, v5);
          sub_1B8AE12C0(v2, 0);
        }
      }

      else
      {
        sub_1B8A7BACC();
        v2 = swift_allocError();
        *v18 = v13;
        *(v18 + 8) = 0xD000000000000013;
        *(v18 + 16) = 0x80000001B8B07080;
        *(v18 + 24) = 0;
        swift_willThrow();
      }
    }
  }

  return v2;
}

unint64_t sub_1B8AE18D4()
{
  result = qword_1EBA964D8;
  if (!qword_1EBA964D8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA964D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So11CVBufferRefa26SensitiveContentAnalysisMLE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B8AE195C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B8AE19A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8AE19EC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1B8AE1A18(void *a1)
{
  a1[1] = sub_1B8AD9C28();
  a1[2] = sub_1B8AE1A68();
  a1[3] = sub_1B8AE1ABC();
  a1[4] = sub_1B8AE1B10();
  a1[5] = sub_1B8AE1B64();
  result = sub_1B8AD9BAC();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AE1A68()
{
  result = qword_1EBA97520;
  if (!qword_1EBA97520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97520);
  }

  return result;
}

unint64_t sub_1B8AE1ABC()
{
  result = qword_1EBA97528;
  if (!qword_1EBA97528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97528);
  }

  return result;
}

unint64_t sub_1B8AE1B10()
{
  result = qword_1EBA97530;
  if (!qword_1EBA97530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97530);
  }

  return result;
}

unint64_t sub_1B8AE1B64()
{
  result = qword_1EBA97538;
  if (!qword_1EBA97538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97538);
  }

  return result;
}

uint64_t sub_1B8AE1BB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B8B070E0 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B8B07100 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B8B07120 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8B07140 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B8B07160 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8B07180 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B8AE1DBC(void *a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97540, &qword_1B8AFC4E8);
  v54 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v58 = &v42 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97548, &qword_1B8AFC4F0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97550, &qword_1B8AFC4F8);
  v53 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v56 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97558, &qword_1B8AFC500);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97560, &qword_1B8AFC508);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97568, &qword_1B8AFC510);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97570, &unk_1B8AFC518);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B8AE282C();
  v18 = v59;
  sub_1B8AF1048();
  if (!v18)
  {
    v43 = v9;
    v19 = v12;
    v42 = v10;
    v20 = v56;
    v21 = v57;
    v22 = v58;
    v59 = v13;
    v23 = sub_1B8AF0C78();
    v24 = (2 * *(v23 + 16)) | 1;
    v61 = v23;
    v62 = v23 + 32;
    v63 = 0;
    v64 = v24;
    v25 = sub_1B8AE4FD4();
    if (v25 == 6 || v63 != v64 >> 1)
    {
      v30 = sub_1B8AF0B08();
      swift_allocError();
      v9 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v9 = &_s5ErrorON_0;
      v32 = v59;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v30 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v14 + 8))(v16, v32);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    if (v25 > 2u)
    {
      if (v25 == 3)
      {
        v65 = 3;
        sub_1B8AE2928();
        v37 = v59;
        sub_1B8AF0BF8();
        v65 = 0;
        v38 = v46;
        v39 = v20;
        v9 = sub_1B8AF0C28();
        v65 = 1;
        sub_1B8AF0C28();
        (*(v53 + 8))(v39, v38);
        (*(v14 + 8))(v16, v37);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v34 = v59;
      if (v25 == 4)
      {
        v65 = 4;
        sub_1B8AE28D4();
        sub_1B8AF0BF8();
        (*(v50 + 8))(v21, v52);
        (*(v14 + 8))(v16, v34);
        swift_unknownObjectRelease();
        v9 = 2;
        goto LABEL_9;
      }

      v65 = 5;
      sub_1B8AE2880();
      sub_1B8AF0BF8();
      v41 = v51;
      LODWORD(v9) = sub_1B8AF0C68();
      (*(v54 + 8))(v22, v41);
      (*(v14 + 8))(v16, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = v14;
      if (v25)
      {
        v27 = v16;
        v28 = v59;
        if (v25 == 1)
        {
          v65 = 1;
          sub_1B8AE29D0();
          v29 = v43;
          sub_1B8AF0BF8();
          (*(v44 + 8))(v29, v45);
          (*(v14 + 8))(v27, v28);
          swift_unknownObjectRelease();
          v9 = 0;
        }

        else
        {
          v65 = 2;
          sub_1B8AE297C();
          v40 = v55;
          sub_1B8AF0BF8();
          (*(v48 + 8))(v40, v49);
          (*(v14 + 8))(v27, v28);
          swift_unknownObjectRelease();
          v9 = 1;
        }

        goto LABEL_9;
      }

      v65 = 0;
      sub_1B8AE2A24();
      v35 = v59;
      sub_1B8AF0BF8();
      v65 = 0;
      v36 = v42;
      LODWORD(v9) = sub_1B8AF0C58();
      v65 = 1;
      sub_1B8AF0C18();
      (*(v47 + 8))(v19, v36);
      (*(v26 + 8))(v16, v35);
      swift_unknownObjectRelease();
    }

    v9 = v9;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v60);
  return v9;
}

unint64_t sub_1B8AE282C()
{
  result = qword_1EBA97578;
  if (!qword_1EBA97578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97578);
  }

  return result;
}

unint64_t sub_1B8AE2880()
{
  result = qword_1EBA97580;
  if (!qword_1EBA97580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97580);
  }

  return result;
}

unint64_t sub_1B8AE28D4()
{
  result = qword_1EBA97588;
  if (!qword_1EBA97588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97588);
  }

  return result;
}

unint64_t sub_1B8AE2928()
{
  result = qword_1EBA97590;
  if (!qword_1EBA97590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97590);
  }

  return result;
}

unint64_t sub_1B8AE297C()
{
  result = qword_1EBA97598;
  if (!qword_1EBA97598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97598);
  }

  return result;
}

unint64_t sub_1B8AE29D0()
{
  result = qword_1EBA975A0;
  if (!qword_1EBA975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975A0);
  }

  return result;
}

unint64_t sub_1B8AE2A24()
{
  result = qword_1EBA975A8;
  if (!qword_1EBA975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975A8);
  }

  return result;
}

unint64_t sub_1B8AE2B14()
{
  result = qword_1EBA975E8;
  if (!qword_1EBA975E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975E8);
  }

  return result;
}

unint64_t sub_1B8AE2B6C()
{
  result = qword_1EBA975F0;
  if (!qword_1EBA975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975F0);
  }

  return result;
}

unint64_t sub_1B8AE2BC4()
{
  result = qword_1EBA975F8;
  if (!qword_1EBA975F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975F8);
  }

  return result;
}

unint64_t sub_1B8AE2C1C()
{
  result = qword_1EBA97600;
  if (!qword_1EBA97600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97600);
  }

  return result;
}

unint64_t sub_1B8AE2C74()
{
  result = qword_1EBA97608;
  if (!qword_1EBA97608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97608);
  }

  return result;
}

unint64_t sub_1B8AE2CCC()
{
  result = qword_1EBA97610;
  if (!qword_1EBA97610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97610);
  }

  return result;
}

unint64_t sub_1B8AE2D24()
{
  result = qword_1EBA97618;
  if (!qword_1EBA97618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97618);
  }

  return result;
}

unint64_t sub_1B8AE2D7C()
{
  result = qword_1EBA97620;
  if (!qword_1EBA97620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97620);
  }

  return result;
}

unint64_t sub_1B8AE2DD4()
{
  result = qword_1EBA97628;
  if (!qword_1EBA97628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97628);
  }

  return result;
}

unint64_t sub_1B8AE2E2C()
{
  result = qword_1EBA97630;
  if (!qword_1EBA97630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97630);
  }

  return result;
}

unint64_t sub_1B8AE2E84()
{
  result = qword_1EBA97638;
  if (!qword_1EBA97638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97638);
  }

  return result;
}

unint64_t sub_1B8AE2EDC()
{
  result = qword_1EBA97640;
  if (!qword_1EBA97640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97640);
  }

  return result;
}

unint64_t sub_1B8AE2F34()
{
  result = qword_1EBA97648;
  if (!qword_1EBA97648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97648);
  }

  return result;
}

unint64_t sub_1B8AE2F8C()
{
  result = qword_1EBA97650;
  if (!qword_1EBA97650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97650);
  }

  return result;
}

unint64_t sub_1B8AE2FE4()
{
  result = qword_1EBA97658;
  if (!qword_1EBA97658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97658);
  }

  return result;
}

unint64_t sub_1B8AE303C()
{
  result = qword_1EBA97660;
  if (!qword_1EBA97660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97660);
  }

  return result;
}

unint64_t sub_1B8AE3094()
{
  result = qword_1EBA97668;
  if (!qword_1EBA97668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97668);
  }

  return result;
}

unint64_t sub_1B8AE30EC()
{
  result = qword_1EBA97670;
  if (!qword_1EBA97670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97670);
  }

  return result;
}

uint64_t sub_1B8AE315C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AE32B0(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B8AD844C(0, v3, 0);
    v4 = 32;
    v5 = v18;
    do
    {
      v6 = *(v2 + v4);
      v7 = v6;
      v8 = sub_1B8AEFBC8();
      v9 = [v8 domain];
      v10 = sub_1B8AF0668();
      v12 = v11;

      v13 = [v8 code];
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B8AD844C((v14 > 1), v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = (v18 + 24 * v15);
      v16[4] = v10;
      v16[5] = v12;
      v16[6] = v13;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B8AE32B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  (*(v4 + 16))(v6, v7, a1);
  v8 = sub_1B8AF0E88();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v6, a1);
  }

  sub_1B8AE3410(v9, &v13, a1, a2);

  return v13;
}

uint64_t sub_1B8AE3410(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1B8ABA9E4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B8ABA9E4((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = a1;
  *a2 = v8;
  v11 = a1;
  v12 = sub_1B8AEFBC8();
  v13 = [v12 underlyingErrors];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
  v14 = sub_1B8AF0818();

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      v18 = v17;
      sub_1B8AE3410(v17, a2, a3, a4);

      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1B8AE356C()
{
  v0 = sub_1B8AF03A8();
  __swift_allocate_value_buffer(v0, qword_1EBAA5828);
  __swift_project_value_buffer(v0, qword_1EBAA5828);
  return sub_1B8AF0398();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B8AE371C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B8AF03A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1B8AF0398();
}

uint64_t sub_1B8AE3794()
{
  v0 = sub_1B8AF03A8();
  __swift_allocate_value_buffer(v0, qword_1EDB75AF0);
  __swift_project_value_buffer(v0, qword_1EDB75AF0);
  return sub_1B8AF0398();
}

uint64_t sub_1B8AE3814()
{
  v0 = sub_1B8AF03A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B8AF0328();
  __swift_allocate_value_buffer(v4, qword_1EDB75B50);
  __swift_project_value_buffer(v4, qword_1EDB75B50);
  if (qword_1EDB75380 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDB75B20);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B8AF0308();
}

SensitiveContentAnalysisML::PublicError::TextSanitizer::TextTooLongErrorInfo __swiftcall PublicError.TextSanitizer.TextTooLongErrorInfo.init(utf16WordCount:utf16WordCountMaximum:)(Swift::Int utf16WordCount, Swift::Int utf16WordCountMaximum)
{
  *v2 = utf16WordCount;
  v2[1] = utf16WordCountMaximum;
  result.utf16WordCountMaximum = utf16WordCountMaximum;
  result.utf16WordCount = utf16WordCount;
  return result;
}

uint64_t sub_1B8AE3968()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x726F573631667475;
  }
}

uint64_t sub_1B8AE39B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F573631667475 && a2 == 0xEE00746E756F4364;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B8B071E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AE3AA0(uint64_t a1)
{
  v2 = sub_1B8AE3CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE3ADC(uint64_t a1)
{
  v2 = sub_1B8AE3CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PublicError.TextSanitizer.TextTooLongErrorInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97678, &qword_1B8AFCC60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE3CA4();
  sub_1B8AF1058();
  v11 = 0;
  sub_1B8AF0CA8();
  if (!v2)
  {
    v10 = 1;
    sub_1B8AF0CA8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B8AE3CA4()
{
  result = qword_1EBA97680;
  if (!qword_1EBA97680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97680);
  }

  return result;
}

uint64_t PublicError.TextSanitizer.TextTooLongErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97688, &qword_1B8AFCC68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE3CA4();
  sub_1B8AF1048();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B8AF0C28();
    v13 = 1;
    v10 = sub_1B8AF0C28();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B8AE3F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C6F6F5474786574 && a2 == 0xEB00000000676E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AE3F8C(uint64_t a1)
{
  v2 = sub_1B8AE4294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE3FC8(uint64_t a1)
{
  v2 = sub_1B8AE4294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE4004(uint64_t a1)
{
  v2 = sub_1B8AE42E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE4040(uint64_t a1)
{
  v2 = sub_1B8AE42E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PublicError.TextSanitizer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97690, &qword_1B8AFCC70);
  v4 = *(v3 - 8);
  v16 = v3;
  v17 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97698, &qword_1B8AFCC78);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  v15 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE4294();
  sub_1B8AF1058();
  sub_1B8AE42E8();
  sub_1B8AF0C88();
  v18 = v11;
  v19 = v15;
  sub_1B8AE433C();
  v12 = v16;
  sub_1B8AF0CC8();
  (*(v17 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1B8AE4294()
{
  result = qword_1EBA976A0;
  if (!qword_1EBA976A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976A0);
  }

  return result;
}

unint64_t sub_1B8AE42E8()
{
  result = qword_1EBA976A8;
  if (!qword_1EBA976A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976A8);
  }

  return result;
}

unint64_t sub_1B8AE433C()
{
  result = qword_1EBA976B0;
  if (!qword_1EBA976B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976B0);
  }

  return result;
}

uint64_t PublicError.TextSanitizer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA976B8, &qword_1B8AFCC80);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA976C0, &unk_1B8AFCC88);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE4294();
  sub_1B8AF1048();
  if (v2)
  {
    goto LABEL_5;
  }

  v18 = a1;
  v19 = v7;
  v10 = v23;
  if (*(sub_1B8AF0C78() + 16) != 1)
  {
    v12 = sub_1B8AF0B08();
    swift_allocError();
    v13 = v10;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
    *v15 = &type metadata for PublicError.TextSanitizer;
    sub_1B8AF0C08();
    sub_1B8AF0AF8();
    (*(*(v12 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v12);
    swift_willThrow();
    (*(v19 + 8))(v9, v13);
    swift_unknownObjectRelease();
    a1 = v18;
LABEL_5:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  sub_1B8AE42E8();
  sub_1B8AF0BF8();
  v11 = v19;
  sub_1B8AE4778();
  sub_1B8AF0C48();
  (*(v21 + 8))(v6, v4);
  (*(v11 + 8))(v9, v10);
  swift_unknownObjectRelease();
  *v20 = v22;
  v17 = v18;
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_1B8AE4710()
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

uint64_t sub_1B8AE4744()
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

unint64_t sub_1B8AE4778()
{
  result = qword_1EBA976C8;
  if (!qword_1EBA976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976C8);
  }

  return result;
}

unint64_t sub_1B8AE47CC(void *a1)
{
  a1[1] = sub_1B8AE481C();
  a1[2] = sub_1B8AE4870();
  a1[3] = sub_1B8AE48C4();
  a1[4] = sub_1B8AE4918();
  a1[5] = sub_1B8AE496C();
  result = sub_1B8AD9EA0();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AE481C()
{
  result = qword_1EBA976D0;
  if (!qword_1EBA976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976D0);
  }

  return result;
}

unint64_t sub_1B8AE4870()
{
  result = qword_1EBA976D8;
  if (!qword_1EBA976D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976D8);
  }

  return result;
}

unint64_t sub_1B8AE48C4()
{
  result = qword_1EBA976E0;
  if (!qword_1EBA976E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976E0);
  }

  return result;
}

unint64_t sub_1B8AE4918()
{
  result = qword_1EBA976E8;
  if (!qword_1EBA976E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976E8);
  }

  return result;
}

unint64_t sub_1B8AE496C()
{
  result = qword_1EBA976F0;
  if (!qword_1EBA976F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976F0);
  }

  return result;
}

uint64_t sub_1B8AE49C0()
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

uint64_t sub_1B8AE4A38()
{
  v1 = *v0;
  v2 = v0[1];
  v9 = sub_1B8AD7528(*v0, v2);
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v3 = sub_1B8AD67D0(v1, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v5 = MEMORY[0x1B8CC6010](v3, v4);
  v7 = v6;

  MEMORY[0x1B8CC5F50](v5, v7);

  return v9;
}

unint64_t sub_1B8AE4B2C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v4;
  v5 = sub_1B8AD7528(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v7;
}

uint64_t sub_1B8AE4BE0(uint64_t a1)
{
  v2 = sub_1B8AE481C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AE4C1C(uint64_t a1)
{
  v2 = sub_1B8AE481C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B8AE4CBC()
{
  result = qword_1EBA976F8;
  if (!qword_1EBA976F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976F8);
  }

  return result;
}

unint64_t sub_1B8AE4D14()
{
  result = qword_1EBA97700;
  if (!qword_1EBA97700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97700);
  }

  return result;
}

unint64_t sub_1B8AE4D6C()
{
  result = qword_1EBA97708;
  if (!qword_1EBA97708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97708);
  }

  return result;
}

unint64_t sub_1B8AE4DC4()
{
  result = qword_1EBA97710;
  if (!qword_1EBA97710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97710);
  }

  return result;
}

unint64_t sub_1B8AE4E1C()
{
  result = qword_1EBA97718;
  if (!qword_1EBA97718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97718);
  }

  return result;
}

unint64_t sub_1B8AE4E74()
{
  result = qword_1EBA97720;
  if (!qword_1EBA97720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97720);
  }

  return result;
}

unint64_t sub_1B8AE4ECC()
{
  result = qword_1EBA97728;
  if (!qword_1EBA97728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97728);
  }

  return result;
}

unint64_t sub_1B8AE4F24()
{
  result = qword_1EBA97730;
  if (!qword_1EBA97730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97730);
  }

  return result;
}

unint64_t sub_1B8AE4F7C()
{
  result = qword_1EBA97738;
  if (!qword_1EBA97738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97738);
  }

  return result;
}

uint64_t sub_1B8AE5014(void (*a1)(void *__return_ptr))
{
  a1(v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_1B8AEFE68();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v1;
}

uint64_t FeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for FeatureFlags;
  v4[4] = sub_1B8A9708C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1B8AEFCD8();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

const char *sub_1B8AE50E8()
{
  result = "AfmPlusCustomized";
  switch(*v0)
  {
    case 1:
      result = "AfmPlusStandard";
      break;
    case 2:
      result = "BackgroundEstimation";
      break;
    case 3:
      result = "FlagsAndMapsCustomized";
      break;
    case 4:
      result = "FlagsAndMapsStandard";
      break;
    case 5:
      result = "PeopleCounterCustomized";
      break;
    case 6:
      result = "PeopleCounterStandard";
      break;
    case 7:
      result = "PrepubescentCustomized";
      break;
    case 8:
      result = "PrepubescentStandard";
      break;
    case 9:
      result = "StructuralIntegrityCustomized";
      break;
    case 0xA:
      result = "StructuralIntegrityStandard";
      break;
    case 0xB:
      result = "ViolenceAndGoreCustomized";
      break;
    case 0xC:
      result = "ViolenceAndGoreStandard";
      break;
    default:
      return result;
  }

  return result;
}