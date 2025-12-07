void sub_1E3F02CB0(uint64_t a1, uint64_t a2)
{

  v2 = sub_1E4207384();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1E3F023EC(v3, v2);

  v5 = sub_1E4206F54();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
    v8 = *(*(v4 + 48) + 8 * v7);
    v9 = sub_1E4206F64();

    if (v9)
    {

      sub_1E3BE5134(v7);
      if (sub_1E4206F64())
      {
        *v10 = v4;
        return;
      }

      __break(1u);
      break;
    }

    v5 = v7 + 1;
  }

  __break(1u);
}

uint64_t sub_1E3F02E0C(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078, &unk_1E42DC990);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1E3F03014()
{
  type metadata accessor for SportsFavoritesPresenter(0);

  return sub_1E41E9990();
}

uint64_t sub_1E3F0304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  sub_1E380E99C();
  type metadata accessor for SportsFavoritesPresenter(0);
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v9, v10, &unk_1E42F5540);
  sub_1E4200BC4();
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_1_252();
  sub_1E3F0659C(v11, v12, &unk_1E42EB398);
  v13 = sub_1E4201754();
  v15 = v14;
  result = sub_1E42010C4();
  *a4 = sub_1E3F0336C;
  *(a4 + 8) = v8;
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = result;
  *(a4 + 40) = v17;
  *(a4 + 48) = 0;
  return result;
}

void sub_1E3F03188()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C160, &qword_1E42DCCF0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  sub_1E4200E64();
  if (v17 == 0.0 && v16 == 0.0)
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    v23 = sub_1E4202704();
    v26[1] = v26;
    MEMORY[0x1EEE9AC00](v23);
    v26[-4] = v5;
    v26[-3] = v3;
    LOBYTE(v26[-2]) = v1 & 1;
    v26[-1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C168, &qword_1E42DCCF8);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v24, &qword_1ECF3C168, &qword_1E42DCCF8, v25);
    sub_1E4200AD4();
    (*(v12 + 32))(v9, v15, v10);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3F03378@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C180, &qword_1E42DCD08);
  OUTLINED_FUNCTION_0_10();
  v53 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v52 = v9;
  type metadata accessor for SportsFavoritesPresenter(0);
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v10, v11, &unk_1E42F5540);
  OUTLINED_FUNCTION_123_1();
  v12 = *sub_1E4200BC4();
  v13 = (*(v12 + 256))();

  v54 = a3;
  if (v13)
  {
    v14 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v15 = *(v13 + v14);
  }

  else
  {
    v15 = 0;
  }

  sub_1E4200E64();
  v17 = v16;
  sub_1E4200E44();
  v19 = v17 + v18;
  sub_1E4200E44();
  v21 = v19 + v20;
  if (!v15 || (v22 = *(*v15 + 392), v23 = , v24 = v22(v23), , !v24) || (OUTLINED_FUNCTION_8(), v26 = (*(v25 + 984))(), v28 = v27, , (v28 & 1) != 0) || v26 == 21)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v21);
  }

  else
  {
    v29 = *MEMORY[0x1E69DDCE0];
    v30 = *(MEMORY[0x1E69DDCE0] + 8);
    v31 = *(MEMORY[0x1E69DDCE0] + 16);
    v32 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  *&v33 = v21 - sub_1E3952BE0(v29, v30, v31, v32);
  v34 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_91();
  sub_1E3EB9C0C(v33, 0, 0, 0, 0, 1, v34 & 1, 2, v58, 0, 1, 0, 1, 0, 2, v49, SHIBYTE(v49));
  v35 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_23_91();
  sub_1E3EB9DAC(v59, v58, 0, 0, 1, v33, 0, 0, 0, 1, 0, 0, 256, 3, 0, v35 & 1, v50, v51);

  memcpy(v57, v59, 0xC3uLL);
  OUTLINED_FUNCTION_123_1();
  v36 = sub_1E4200BC4();
  v37 = (*(*v36 + 208))();

  if (*(v37 + 16))
  {
    v59[0] = v37;
    swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = a2;
    *(v38 + 32) = v54 & 1;
    memcpy((v38 + 40), v57, 0xC3uLL);
    OUTLINED_FUNCTION_123_1();
    sub_1E380E99C();
    v39 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C190, &qword_1E42DCD38);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v41, &qword_1ECF3C188, &qword_1E42DCD30, v42);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v43, &qword_1ECF3C190, &qword_1E42DCD38, v44);
    sub_1E4203B34();
    v46 = v55;
    v45 = a4;
    (*(v53 + 32))(a4, v52, v55);
    v47 = 0;
  }

  else
  {
    sub_1E37E6F2C(v57);

    v47 = 1;
    v46 = v55;
    v45 = a4;
  }

  return __swift_storeEnumTagSinglePayload(v45, v47, 1, v46);
}

uint64_t sub_1E3F038A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v57 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1A8, &unk_1E42DCD40);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v62 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_3(&v54 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0, &qword_1E42A7B30);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v61 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = *(a1 + 24);
  if (*(a5 + 136))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *(a5 + 120);
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v23);
  v28 = j_nullsub_1(v24, v25, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  *a6 = sub_1E4201D44();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v35 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1B0, &qword_1E42DCD50) + 44);
  OUTLINED_FUNCTION_25();
  sub_1E39E19A0(v36, v37, v38);
  v39 = sub_1E4202734();
  v40 = &v21[*(v17 + 44)];
  v55 = v21;
  *v40 = v39;
  *(v40 + 1) = v28;
  *(v40 + 2) = v30;
  *(v40 + 3) = v32;
  *(v40 + 4) = v34;
  v40[40] = 0;
  v64 = v22;
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  memcpy((v41 + 16), a5, 0xC3uLL);
  *(v41 + 216) = a2;
  *(v41 + 224) = v57;
  *(v41 + 232) = v58 & 1;
  OUTLINED_FUNCTION_2_4();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1E3F06D7C;
  *(v42 + 24) = v41;

  sub_1E375C1CC(a5, v63);
  sub_1E380E99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1B8, &qword_1E42DCD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1C0, &unk_1E42DCD80);
  OUTLINED_FUNCTION_14_11();
  sub_1E32752B0(v43, &qword_1ECF3C1B8, &qword_1E42DCD78, v44);
  sub_1E3F06DC0();
  v45 = v60;
  sub_1E4203B34();
  v46 = v61;
  sub_1E3743538(v21, v61, &qword_1ECF2CBA0, &qword_1E42A7B30);
  v47 = *(v11 + 16);
  v48 = v62;
  v49 = v59;
  v47(v62, v45, v59);
  sub_1E3743538(v46, v35, &qword_1ECF2CBA0, &qword_1E42A7B30);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1E0, &qword_1E42DCD90);
  v47(v35 + *(v50 + 48), v48, v49);
  v51 = *(v11 + 8);
  v52 = OUTLINED_FUNCTION_123_1();
  v51(v52);
  sub_1E325F6F0(v55, &qword_1ECF2CBA0, &qword_1E42A7B30);
  (v51)(v48, v49);
  return sub_1E325F6F0(v46, &qword_1ECF2CBA0, &qword_1E42A7B30);
}

void sub_1E3F03D18()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = (*(*v1 + 552))(v6);
  if (!v7)
  {
    v27 = 0u;
    v28 = 0u;
    goto LABEL_10;
  }

  v29[3] = &type metadata for ViewModelKeys.Sports;
  v29[4] = &off_1F5D7BC68;
  LOBYTE(v29[0]) = 3;
  sub_1E3F9F164(v29, v7, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v29);
  if (!*(&v28 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
    v9 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v8 = swift_dynamicCast();
  if (v8)
  {
    v9 = v29[0];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v29[1];
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  OUTLINED_FUNCTION_25();
  v16 = sub_1E40EA03C(v11, v12, v13, v14, v15);
  v17 = (*(*v1 + 392))(v16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_138_0();
  v19 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_138_0();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_138_0();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v17, v19 & 1, v20 & 1, 1, v21 & 1, v4, OpaqueTypeConformance2);

  v22 = OUTLINED_FUNCTION_123_1();
  v23(v22);
  type metadata accessor for SportsFavoritesPresenter(0);
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v24, v25, &unk_1E42F5540);
  sub_1E4200BC4();
  sub_1E3F04018(v9, v10, v29);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1C0, &unk_1E42DCD80);
  memcpy((v3 + *(v26 + 36)), v29, 0x60uLL);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3F04018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  LOBYTE(__src[0]) = 0;
  sub_1E42038E4();
  type metadata accessor for SportsFavoritesPresenter(0);
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v6, v7, &unk_1E42F5540);

  OUTLINED_FUNCTION_21_1();
  v30 = sub_1E42010C4();
  v9 = v8;
  v10 = objc_opt_self();
  result = [v10 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v25 = v33;
  v26 = v34;
  v27 = a1;
  v28 = a2;
  __dst = a3;
  v13 = sub_1E3741090(0xD000000000000015, 0x80000001E427DA90, result);
  v15 = v14;

  result = [v10 sharedInstance];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, result);
  v19 = v18;

  result = [v10 sharedInstance];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_1E38469F4(0xD00000000000001CLL, 0x80000001E427DAB0, result);

  if (v21)
  {
    v22 = sub_1E4205F14();
    v24 = v23;
  }

  else
  {

    v22 = 0;
    v24 = 0;
  }

  __src[0] = v30;
  __src[1] = v9;
  LOBYTE(__src[2]) = v33;
  *(&__src[2] + 1) = v46[0];
  HIDWORD(__src[2]) = *(v46 + 3);
  __src[3] = v34;
  __src[4] = v27;
  __src[5] = v28;
  __src[6] = v13;
  __src[7] = v15;
  __src[8] = v17;
  __src[9] = v19;
  __src[10] = v22;
  __src[11] = v24;
  v33 = v30;
  v34 = v9;
  v35 = v25;
  *&v36[3] = *(v46 + 3);
  *v36 = v46[0];
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v13;
  v41 = v15;
  v42 = v17;
  v43 = v19;
  v44 = v22;
  v45 = v24;
  sub_1E3F05DB4(__src, v31);
  sub_1E3F05DEC(&v33);
  return memcpy(__dst, __src, 0x60uLL);
}

double sub_1E3F04294(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = sub_1E4050F14(v6, v4, v5);
  v9 = v8;
  v11 = v10;
  sub_1E3CFEA54();
  v12 = swift_allocObject();
  memcpy((v12 + 16), v1, 0x60uLL);

  sub_1E3F05DB4(v1, &v14);
  sub_1E3D00E1C(v7, v9, v11, sub_1E3F05E1C, v12);

  return result;
}

void sub_1E3F0439C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v143 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C088, &qword_1E42DC9A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v119 - v7;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C090, &qword_1E42DC9A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v132 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v131 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
  OUTLINED_FUNCTION_0_10();
  v134 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C098, &qword_1E42DC9B8);
  OUTLINED_FUNCTION_0_10();
  v136 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0A0, &qword_1E42DC9C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0A8, &qword_1E42DC9C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v152[0] = *v0;
  v25 = *(v0 + 32);
  v26 = *(v1 + 40);
  v27 = *(**(&v152[0] + 1) + 336);

  v28 = v27(v25, v26);
  if (v28)
  {
    v29 = v28;
    v129 = v22;
    v30 = v28;
    v31 = (*(*v28 + 552))();
    v128 = v5;
    v127 = v8;
    if (v31)
    {
      v30 = v31;
      v148 = &type metadata for ViewModelKeys.Sports;
      v149 = &off_1F5D7BC68;
      LOBYTE(v145) = 4;
      sub_1E3F9F164(&v145, v31, MEMORY[0x1E69E7CA0] + 8);

      __swift_destroy_boxed_opaque_existential_1(&v145);
      if (*(&v151 + 1))
      {
        v32 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {
          v33 = v146;
          if (*(v1 + 56))
          {
            v34 = *(v1 + 72);
            if (v34)
            {
              v35 = *(v1 + 88);
              if (v35)
              {
                v121 = v3;
                v36 = v145;
                v125 = *(v1 + 48);
                v119[1] = v34;
                v124 = *(v1 + 64);
                v123 = *(v1 + 80);
                v122 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
                v37 = swift_allocObject();
                *(v37 + 16) = xmmword_1E4297BE0;
                *(v37 + 56) = v32;
                *(v37 + 64) = sub_1E3283528(v37, v38, v39);
                *(v37 + 32) = v36;
                *(v37 + 40) = v33;
                v120 = sub_1E4205F44();
                v125 = v40;
                v41 = v130;
                sub_1E4200AE4();
                OUTLINED_FUNCTION_3_139();
                v42 = swift_allocObject();
                OUTLINED_FUNCTION_32_76(v42);
                *(v37 + 112) = v29;
                OUTLINED_FUNCTION_2_4();
                v43 = swift_allocObject();
                *(v43 + 16) = sub_1E3F062E8;
                *(v43 + 24) = v37;
                sub_1E3F05DB4(v1, &v145);

                v44 = v133;
                v45 = v132;
                sub_1E4203B64();

                OUTLINED_FUNCTION_15_5();
                v46(v41, v45);
                sub_1E4200BA4();
                v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0B8, &qword_1E42DC9D8);
                OUTLINED_FUNCTION_1_11();
                v49 = sub_1E32752B0(v47, &qword_1ECF3C0B8, &qword_1E42DC9D8, v48);
                v50 = OUTLINED_FUNCTION_13_156(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0);
                v51 = v135;
                v52 = v50;
                sub_1E4203204();
                OUTLINED_FUNCTION_15_5();
                v53(v44, v51);
                *&v150 = v120;
                *(&v150 + 1) = v125;
                v144 = *(v1 + 16);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
                v54 = sub_1E4203914();
                v134 = v119;
                v132 = v145;
                v131 = v146;
                LODWORD(v133) = v147;
                MEMORY[0x1EEE9AC00](v54);
                v55 = v122;
                v119[-6] = v123;
                v119[-5] = v55;
                v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32160, &qword_1E42B7C00);
                v145 = v130;
                v146 = v51;
                v147 = v49;
                v148 = v52;
                v57 = OUTLINED_FUNCTION_10_146();
                v135 = v57;
                v60 = sub_1E32822E0(v57, v58, v59);
                v61 = sub_1E32752B0(&qword_1ECF32168, &qword_1ECF32160, &qword_1E42B7C00, MEMORY[0x1E6981F48]);
                v117 = v60;
                v118 = v61;
                v115 = v56;
                v116 = v57;
                v62 = v126;
                v63 = v138;
                v64 = v142;
                sub_1E4203454();

                OUTLINED_FUNCTION_15_5();
                v65(v64, v63);

                type metadata accessor for Router(0);
                OUTLINED_FUNCTION_1_252();
                sub_1E3F0659C(v66, v67, &unk_1E42EB398);
                v68 = sub_1E4201754();
                v70 = v69;
                type metadata accessor for SportsFavoritesPresenter(0);
                OUTLINED_FUNCTION_0_285();
                sub_1E3F0659C(v71, v72, &unk_1E42F5540);
                v73 = sub_1E42010C4();
                v74 = v62 + *(v137 + 36);
                *v74 = v68;
                *(v74 + 8) = v70;
                *(v74 + 16) = v73;
                *(v74 + 24) = v75;
                *(v74 + 32) = 1;
                sub_1E3743538(v62, v141, &qword_1ECF3C0A0, &qword_1E42DC9C0);
                swift_storeEnumTagMultiPayload();
                sub_1E3F06090();
                v76 = v139;
                sub_1E4201F44();
                OUTLINED_FUNCTION_21_1();
                sub_1E325F6F0(v77, v78, v79);
                v80 = v8;
LABEL_16:
                sub_1E3743538(v76, v80, &qword_1ECF3C0A8, &qword_1E42DC9C8);
                swift_storeEnumTagMultiPayload();
                v108 = OUTLINED_FUNCTION_75();
                __swift_instantiateConcreteTypeFromMangledNameV2(v108, v109);
                sub_1E3F05F34();
                OUTLINED_FUNCTION_1_11();
                sub_1E32752B0(v110, &qword_1ECF3C0B8, &qword_1E42DC9D8, v111);
                sub_1E4201F44();

                OUTLINED_FUNCTION_21_1();
                sub_1E325F6F0(v112, v113, v114);
                goto LABEL_17;
              }
            }
          }

          sub_1E325F6F0(v152, &qword_1ECF3C0B0, &qword_1E42DC9D0);

LABEL_15:
          v92 = v130;
          sub_1E4200AE4();
          OUTLINED_FUNCTION_3_139();
          v93 = swift_allocObject();
          OUTLINED_FUNCTION_32_76(v93);
          *(v30 + 112) = v29;
          OUTLINED_FUNCTION_2_4();
          v94 = swift_allocObject();
          *(v94 + 16) = sub_1E3F06EF4;
          *(v94 + 24) = v30;
          sub_1E3F05DB4(v1, &v145);

          v95 = v133;
          v96 = v132;
          sub_1E4203B64();

          OUTLINED_FUNCTION_15_5();
          v97(v92, v96);
          sub_1E4200BA4();
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0B8, &qword_1E42DC9D8);
          OUTLINED_FUNCTION_1_11();
          v101 = sub_1E32752B0(v99, &qword_1ECF3C0B8, &qword_1E42DC9D8, v100);
          v102 = OUTLINED_FUNCTION_13_156(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0);
          v103 = v142;
          v104 = v135;
          sub_1E4203204();
          OUTLINED_FUNCTION_15_5();
          v105(v95, v104);
          v106 = v136;
          v107 = v138;
          (*(v136 + 16))(v141, v103, v138);
          swift_storeEnumTagMultiPayload();
          sub_1E3F06090();
          v145 = v98;
          v146 = v104;
          v147 = v101;
          v148 = v102;
          OUTLINED_FUNCTION_10_146();
          v76 = v139;
          sub_1E4201F44();
          (*(v106 + 8))(v103, v107);
          v80 = v127;
          goto LABEL_16;
        }

        v89 = &qword_1ECF3C0B0;
        v90 = &qword_1E42DC9D0;
        v91 = v152;
LABEL_14:
        sub_1E325F6F0(v91, v89, v90);
        goto LABEL_15;
      }

      sub_1E325F6F0(v152, &qword_1ECF3C0B0, &qword_1E42DC9D0);
    }

    else
    {
      sub_1E325F6F0(v152, &qword_1ECF3C0B0, &qword_1E42DC9D0);
      v150 = 0u;
      v151 = 0u;
    }

    v89 = &unk_1ECF296E0;
    v90 = &unk_1E4298030;
    v91 = &v150;
    goto LABEL_14;
  }

  sub_1E325F6F0(v152, &qword_1ECF3C0B0, &qword_1E42DC9D0);
  v81 = OUTLINED_FUNCTION_32_0();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
  OUTLINED_FUNCTION_2();
  (*(v84 + 16))(v8, v3, v83);
  swift_storeEnumTagMultiPayload();
  sub_1E3F05F34();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v85, v86, v87, v88);
  sub_1E4201F44();
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F05118()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v42 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v39 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  v43[12] = v9;
  v43[13] = v7;
  OUTLINED_FUNCTION_3_139();
  v28 = swift_allocObject();
  memcpy((v28 + 16), v5, 0x60uLL);
  *(v28 + 112) = v3;

  v29 = sub_1E3F05DB4(v5, v43);
  sub_1E32822E0(v29, v30, v31);

  sub_1E4203994();
  v43[0] = v40;
  v43[1] = v41;

  sub_1E4200A14();
  v32 = sub_1E4200A34();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v32);
  sub_1E4203974();
  v33 = *(v16 + 16);
  v33(v21, v27, v14);
  v34 = v39;
  v33(v39, v24, v14);
  v35 = v42;
  v33(v42, v21, v14);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178, &qword_1E42B7C50);
  v33(&v35[*(v36 + 48)], v34, v14);
  v37 = *(v16 + 8);
  v37(v24, v14);
  v38 = OUTLINED_FUNCTION_138_0();
  (v37)(v38);
  v37(v34, v14);
  v37(v21, v14);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F0548C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v33[1] = v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0E0, &qword_1E42DC9E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0E8, &qword_1E42DC9E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0F0, &unk_1E42DC9F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  if (v1[2])
  {
    v41 = v1[1];
    OUTLINED_FUNCTION_8();
    v39 = (*(v17 + 136))() & 1;
    v40 = *v1;
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_24_97(v18);
    sub_1E3743538(&v40, &v35, &qword_1ECF38700, &qword_1E42D0D60);
    sub_1E3743538(&v41, &v35, &qword_1ECF3C0B0, &qword_1E42DC9D0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0F8, &qword_1E42DCA00);
    OUTLINED_FUNCTION_1_11();
    v22 = sub_1E32752B0(v20, &qword_1ECF3C0F8, &qword_1E42DCA00, v21);
    v23 = MEMORY[0x1E69E6370];
    sub_1E4203524();

    v24 = v34;
    (*(v6 + 16))(v12, v9, v34);
    swift_storeEnumTagMultiPayload();
    sub_1E3F064B4();
    v35 = v19;
    v36 = v23;
    v37 = v22;
    v38 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_9_158();
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
    (*(v6 + 8))(v9, v24);
  }

  else
  {
    v25 = *v1;
    v40 = v1[1];
    v41 = v25;
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_24_97(v26);
    v27 = &v16[*(v13 + 36)];
    sub_1E4200FC4();
    sub_1E3743538(&v41, &v35, &qword_1ECF38700, &qword_1E42D0D60);
    sub_1E3743538(&v40, &v35, &qword_1ECF3C0B0, &qword_1E42DC9D0);
    sub_1E4206444();
    *v27 = &unk_1E42DCA10;
    *(v27 + 1) = v26;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0F8, &qword_1E42DCA00);
    OUTLINED_FUNCTION_2();
    (*(v29 + 16))(v16, v3, v28);
    sub_1E3743538(v16, v12, &qword_1ECF3C0F0, &unk_1E42DC9F0);
    swift_storeEnumTagMultiPayload();
    sub_1E3F064B4();
    OUTLINED_FUNCTION_1_11();
    v32 = sub_1E32752B0(v30, &qword_1ECF3C0F8, &qword_1E42DCA00, v31);
    v35 = v28;
    v36 = MEMORY[0x1E69E6370];
    v37 = v32;
    v38 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_9_158();
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
    sub_1E325F6F0(v16, &qword_1ECF3C0F0, &unk_1E42DC9F0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F058E4()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  sub_1E4206434();
  v0[9] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v0[10] = v3;
  v0[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3F05978, v3, v2);
}

uint64_t sub_1E3F05978()
{
  v1 = sub_1E41E8DAC();
  v0[12] = v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*v1)
  {

    OUTLINED_FUNCTION_54();

    return v2();
  }

  else
  {
    v0[13] = *(v0[8] + 24);
    OUTLINED_FUNCTION_8();
    v6 = (*(v4 + 392) + **(v4 + 392));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1E3F05AEC;

    return v6();
  }
}

uint64_t sub_1E3F05AEC(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1E3F05D58;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1E3F05C1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E3F05C1C()
{
  v1 = *(v0 + 120);

  if (v1)
  {
LABEL_4:
    OUTLINED_FUNCTION_54();

    return v8();
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  swift_beginAccess();
  *v2 = 1;
  if (*v3)
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 400);
    v7 = v6;
    v5();

    goto LABEL_4;
  }

  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_1_252();
  sub_1E3F0659C(v10, v11, &unk_1E42EB398);

  return sub_1E4201744();
}

uint64_t sub_1E3F05D58()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

double sub_1E3F05E1C(void *a1)
{
  if (a1 && (v1 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410), (swift_dynamicCast() & 1) != 0) && sub_1E374E8E4(v7, 1))
  {
    OUTLINED_FUNCTION_8();
    (*(v2 + 144))(1);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v4 + 344))();
    type metadata accessor for SportsFavoritesPresenter(0);
    OUTLINED_FUNCTION_0_285();
    sub_1E3F0659C(v5, v6, &unk_1E42F5540);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

unint64_t sub_1E3F05F34()
{
  result = qword_1ECF3C0C0;
  if (!qword_1ECF3C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0A8, &qword_1E42DC9C8);
    sub_1E3F06090();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0B8, &qword_1E42DC9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
    sub_1E32752B0(&qword_1ECF3C0D0, &qword_1ECF3C0B8, &qword_1E42DC9D8, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C0C0);
  }

  return result;
}

unint64_t sub_1E3F06090()
{
  result = qword_1ECF3C0C8;
  if (!qword_1ECF3C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0A0, &qword_1E42DC9C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C098, &qword_1E42DC9B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32160, &qword_1E42B7C00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0B8, &qword_1E42DC9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
    sub_1E32752B0(&qword_1ECF3C0D0, &qword_1ECF3C0B8, &qword_1E42DC9D8, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0, MEMORY[0x1E697E238]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E32822E0(OpaqueTypeConformance2, v2, v3);
    sub_1E32752B0(&qword_1ECF32168, &qword_1ECF32160, &qword_1E42B7C00, MEMORY[0x1E6981F48]);
    v6 = swift_getOpaqueTypeConformance2();
    sub_1E3F06294(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C0C8);
  }

  return result;
}

unint64_t sub_1E3F06294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3C0D8;
  if (!qword_1ECF3C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C0D8);
  }

  return result;
}

double sub_1E3F062E8()
{
  v1 = *(v0 + 112);
  sub_1E3CFEA54();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 376);

  v4 = OUTLINED_FUNCTION_75();
  v5 = v3(v4);

  if ((v5 & 1) == 0)
  {
    return sub_1E3F04294(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  return result;
}

void sub_1E3F063D0(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_8();
      v4 = *(v3 + 400);
      v8 = v5;
      v4();
    }

    else
    {
      type metadata accessor for Router(0);
      OUTLINED_FUNCTION_1_252();
      sub_1E3F0659C(v6, v7, &unk_1E42EB398);
      OUTLINED_FUNCTION_21_1();
      sub_1E4201744();
      __break(1u);
    }
  }
}

unint64_t sub_1E3F064B4()
{
  result = qword_1ECF3C108;
  if (!qword_1ECF3C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0F0, &unk_1E42DC9F0);
    sub_1E32752B0(&qword_1ECF3C100, &qword_1ECF3C0F8, &qword_1E42DCA00, MEMORY[0x1E697FDF8]);
    sub_1E3F0659C(&qword_1ECF3C110, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C108);
  }

  return result;
}

uint64_t sub_1E3F0659C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_20Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1E3F06624()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3F066B4;

  return sub_1E3F058E4();
}

uint64_t sub_1E3F066B4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3F067D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3C118;
  if (!qword_1ECF3C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C118);
  }

  return result;
}

uint64_t sub_1E3F06858(uint64_t result, int a2, int a3)
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

uint64_t sub_1E3F068BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

_BYTE *sub_1E3F06908(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3F069E0()
{
  result = qword_1ECF3C120;
  if (!qword_1ECF3C120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C128, &qword_1E42DCCD0);
    v3 = sub_1E32752B0(&qword_1ECF3C130, &qword_1ECF3C138, &qword_1E42DCCD8, MEMORY[0x1E697E378]);
    sub_1E3F06294(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C120);
  }

  return result;
}

unint64_t sub_1E3F06A98()
{
  result = qword_1ECF3C140;
  if (!qword_1ECF3C140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C148, &qword_1E42DCCE0);
    sub_1E3F05F34();
    sub_1E32752B0(&qword_1ECF3C0D0, &qword_1ECF3C0B8, &qword_1E42DC9D8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C140);
  }

  return result;
}

unint64_t sub_1E3F06B50()
{
  result = qword_1ECF3C150;
  if (!qword_1ECF3C150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C158, &qword_1E42DCCE8);
    sub_1E3F064B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0F8, &qword_1E42DCA00);
    sub_1E32752B0(&qword_1ECF3C100, &qword_1ECF3C0F8, &qword_1E42DCA00, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C150);
  }

  return result;
}

uint64_t objectdestroy_7Tm_1()
{

  OUTLINED_FUNCTION_3_139();

  return swift_deallocObject();
}

uint64_t sub_1E3F06CF4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C178, &qword_1E42DCD00);
  return sub_1E3F03378(v4, v5, v6, a2 + *(v7 + 44));
}

unint64_t sub_1E3F06DC0()
{
  result = qword_1ECF3C1D0;
  if (!qword_1ECF3C1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C1C0, &unk_1E42DCD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3F06EA0(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C1D0);
  }

  return result;
}

unint64_t sub_1E3F06EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3C1D8;
  if (!qword_1ECF3C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C1D8);
  }

  return result;
}

void *OUTLINED_FUNCTION_32_76(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x60uLL);
}

uint64_t sub_1E3F06F2C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a5;
  v59 = a4;
  v55 = a1;
  v56 = sub_1E41FF5A4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1E8, &qword_1E42DCD98);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1F0, &qword_1E42DCDA0);
  OUTLINED_FUNCTION_0_10();
  v52 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1F8, &qword_1E42DCDA8);
  OUTLINED_FUNCTION_0_10();
  v51 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C200, &qword_1E42DCDB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v49 = &v47 - v27;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C208, &qword_1E42DCDB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v47 - v32;
  v60 = a3;
  v57 = a2;
  if (a3)
  {
    v61 = a2;
    v62 = a3;
    sub_1E32822E0(v29, v30, v31);

    sub_1E41FF584();
  }

  else
  {
    sub_1E41FF574();
  }

  v34 = v59;
  if (v59)
  {
  }

  sub_1E41FF564();

  (*(v14 + 8))(v17, v12);
  v35 = MEMORY[0x1E69E3AD8];
  v36 = v55 & 1;
  if ((v55 & 1) == 0)
  {
    v35 = MEMORY[0x1E69E3AD0];
  }

  v37 = v56;
  (*(v8 + 104))(v11, *v35, v56);
  v61 = MEMORY[0x1E6981148];
  v62 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v38 = v54;
  sub_1E4202C64();
  (*(v8 + 8))(v11, v37);
  (*(v52 + 8))(v21, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v40 = v57;
  v41 = v60;
  *(v39 + 24) = v57;
  *(v39 + 32) = v41;
  *(v39 + 40) = v34;
  v42 = v49;
  (*(v51 + 32))(v49, v25, v53);
  v43 = (v42 + *(v48 + 36));
  *v43 = sub_1E3F0743C;
  v43[1] = v39;
  v43[2] = 0;
  v43[3] = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  *(v44 + 24) = v40;
  *(v44 + 32) = v41;
  *(v44 + 40) = v34;
  sub_1E329E454(v42, v33, &qword_1ECF3C200, &qword_1E42DCDB0);
  v45 = &v33[*(v50 + 36)];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 2) = sub_1E3F07484;
  *(v45 + 3) = v44;
  sub_1E329E454(v33, v58, &qword_1ECF3C208, &qword_1E42DCDB8);
  swift_retain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t objectdestroyTm_49()
{

  return swift_deallocObject();
}

uint64_t sub_1E3F0748C(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    return (*(*v2 + 208))(result, 0, 1);
  }

  return result;
}

void *sub_1E3F074EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v32 = sub_1E4201D44();
  LOBYTE(v66) = 1;
  v10 = sub_1E4201B84();
  v72[96] = 1;
  v72[112] = 1;
  v72[104] = 1;

  v72[88] = 1;
  __src[0] = v10;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  __src[3] = 0;
  LOBYTE(__src[4]) = 1;
  LOBYTE(__src[5]) = v8;
  __src[6] = a2;
  __src[7] = a3;
  __src[8] = a4;
  __src[9] = 0;
  LOBYTE(__src[10]) = 1;
  v11 = memcpy(&v72[7], __src, 0x51uLL);
  v71 = 1;
  v68 = v10;
  v69[0] = 0;
  LOBYTE(v69[1]) = 1;
  v69[2] = 0;
  LOBYTE(v69[3]) = 1;
  LOBYTE(v69[4]) = v8;
  v69[5] = a2;
  v69[6] = a3;
  v69[7] = a4;
  v69[8] = 0;
  LOBYTE(v69[9]) = 1;
  OUTLINED_FUNCTION_3_215(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v65[12], v65[13], v65[14], v66);
  sub_1E325F6F0(&v68, &qword_1ECF3C248, &unk_1E42DCE60);
  __src[0] = 0;
  LOBYTE(__src[1]) = 1;
  memcpy(&__src[1] + 1, v72, 0x58uLL);
  __src[13] = 0;
  LOBYTE(__src[14]) = 1;
  v68 = 0;
  LOBYTE(v69[0]) = 1;
  v19 = memcpy(v69 + 1, v72, 0x58uLL);
  v69[12] = 0;
  v70 = 1;
  OUTLINED_FUNCTION_3_215(v19, v20, v21, v22, v23, v24, v25, v26, v31, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v65[12], v65[13], v65[14], v66);
  sub_1E325F6F0(&v68, &qword_1ECF3C210, &qword_1E42DCDC0);
  memcpy(v65 + 7, __src, 0x71uLL);
  v27 = v66;
  v28 = sub_1E42013E4();
  LOBYTE(a3) = sub_1E4202734();
  *a5 = v34;
  *(a5 + 8) = 0;
  *(a5 + 16) = v27;
  result = memcpy((a5 + 17), v65, 0x78uLL);
  *(a5 + 144) = v28;
  *(a5 + 152) = a3;
  return result;
}

uint64_t sub_1E3F076D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1E3F07728(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1E3F0778C()
{
  result = qword_1ECF3C218;
  if (!qword_1ECF3C218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C208, &qword_1E42DCDB8);
    sub_1E3F07818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C218);
  }

  return result;
}

unint64_t sub_1E3F07818()
{
  result = qword_1ECF3C220;
  if (!qword_1ECF3C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C200, &qword_1E42DCDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C1F0, &qword_1E42DCDA0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C220);
  }

  return result;
}

unint64_t sub_1E3F07910()
{
  result = qword_1ECF3C228;
  if (!qword_1ECF3C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C230, &qword_1E42DCE50);
    sub_1E3F0799C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C228);
  }

  return result;
}

unint64_t sub_1E3F0799C()
{
  result = qword_1ECF3C238;
  if (!qword_1ECF3C238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C240, &qword_1E42DCE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C238);
  }

  return result;
}

uint64_t sub_1E3F07A38()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0(v1 + 24, v3);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3F07A7C()
{
  OUTLINED_FUNCTION_53_0();
  v0 = swift_allocObject();
  sub_1E3F07AAC();
  return v0;
}

void *sub_1E3F07AAC()
{
  v1 = sub_1E4204874();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  sub_1E4204964();
  v0[3] = sub_1E4204954();
  v0[4] = MEMORY[0x1E69AB380];
  sub_1E42048E4();
  sub_1E4204864();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v0[2] = sub_1E4204884();
  return v0;
}

uint64_t sub_1E3F07B98()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_67();
  sub_1E3F07BD4();
  return v0;
}

void sub_1E3F07BD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_24_4();
  v7(v8);
  v9 = sub_1E4204804();

  if (!v9)
  {
    v10 = OUTLINED_FUNCTION_24_4();
    v9 = (v7)(v10);
  }

  v1[2] = v9;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v11 = OUTLINED_FUNCTION_24_4();
  v13 = v12(v11);
  v15 = v14;
  sub_1E42046B4();
  OUTLINED_FUNCTION_2();
  (*(v16 + 8))(v3);
  v1[3] = v13;
  v1[4] = v15;
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3F07CE8()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_8();
  (*(v0 + 96))();
  OUTLINED_FUNCTION_2_0();
  sub_1E4204854();

  return result;
}

void static BaseImpressionManager.getSnapshotImpressionsFromTracker(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v28 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_5();
  v7 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4204564();
  OUTLINED_FUNCTION_0_10();
  v26 = v15;
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E42049E4();
  v16 = (v5 + 8);
  if (swift_dynamicCastClass())
  {
    (*(v9 + 104))(v13, *MEMORY[0x1E69AB3D8], v7);
    swift_unknownObjectRetain();
    sub_1E41FE5C4();
    sub_1E4204994();
    (*v16)(v1, v28);
    (*(v9 + 8))(v13, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    *(inited + 32) = sub_1E3BA363C(2);
    *(inited + 40) = v19;
    v20 = sub_1E4204544();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
    *(inited + 72) = v21;
    *(inited + 48) = v20;
    *(inited + 80) = sub_1E3BA47C4(2);
    *(inited + 88) = v22;
    v23 = sub_1E4204554();
    *(inited + 120) = v21;
    *(inited + 96) = v23;
    *(v17 + 32) = sub_1E4205CB4();
    swift_unknownObjectRelease();
    (*(v26 + 8))(v0, v27);
  }

  else
  {
    swift_getObjectType();
    (*(v9 + 104))(v13, *MEMORY[0x1E69AB3D8], v7);
    sub_1E41FE5C4();
    v24 = v3;
    v25 = sub_1E4204774();
    (*v16)(v1, v28);
    (*(v9 + 8))(v13, v7);
    sub_1E3BA7DD8(v25);
    OUTLINED_FUNCTION_50();

    static BaseImpressionManager.processImpressionsForPrivacy(_:)(v24);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F08144(uint64_t (*a1)(void))
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  (*(v2 + 120))();
  v3 = a1();
  swift_unknownObjectRelease();
  return v3;
}

void static BaseImpressionManager.getRecordedImpressionsFromTracker(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_12();
  v6 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  swift_getObjectType();
  (*(v8 + 104))(v1, *MEMORY[0x1E69AB3D8], v6);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_124();
  v10 = sub_1E4204784();
  (*(v4 + 8))(v0, v2);
  v11 = OUTLINED_FUNCTION_171_0();
  v12(v11);
  v13 = sub_1E3BA7DD8(v10);

  static BaseImpressionManager.processImpressionsForPrivacy(_:)(v13);
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F0834C()
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  (*(v0 + 120))();
  static BaseImpressionManager.getRecordedImpressionsWithDynamicEventsFromTracker(_:)();

  return swift_unknownObjectRelease();
}

void static BaseImpressionManager.getRecordedImpressionsWithDynamicEventsFromTracker(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v8 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_5();
  sub_1E42049E4();
  if (swift_dynamicCastClass())
  {
    (*(v10 + 104))(v1, *MEMORY[0x1E69AB3D8], v8);
    swift_unknownObjectRetain();
    sub_1E41FE5C4();
    OUTLINED_FUNCTION_123_1();
    sub_1E42049A4();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v0, v4);
    (*(v10 + 8))(v1, v8);
    v12 = sub_1E4204564();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E4204564();
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

double sub_1E3F08590(void *a1, uint64_t a2)
{
  [a1 frame];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 96))();
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_6();
  v6(a2, v4, v5);

  return result;
}

void sub_1E3F0863C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v67 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v69 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v54 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v68 = v22 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v76 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_36();
  if (!(*(v27 + 576))())
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_30();
  (*(v28 + 224))();

  OUTLINED_FUNCTION_52(v18, 1, v19);
  if (v29)
  {
LABEL_8:
    sub_1E325F6F0(v18, &qword_1ECF2B7B0, &qword_1E429EC30);
    goto LABEL_11;
  }

  v64 = v2;
  v30 = v1;
  v31 = v54;
  v32 = *(v54 + 32);
  v66 = v19;
  v32(v30, v18, v19);
  v33 = static BaseImpressionManager.getImpressionableChildren(_:)();
  v53 = v30;
  sub_1E42046D4();
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(*v3 + 96);
    v61 = *v3 + 96;
    v62 = v35;
    v37 = *(v31 + 16);
    v36 = v31 + 16;
    v73 = v37;
    v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v52 = v33;
    v39 = v33 + v38;
    v60 = *(v36 + 56);
    v58 = (v55 + 16);
    v59 = (v55 + 8);
    v74 = v36;
    v57 = (v36 - 8);
    v55 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65 = v4;
    v56 = v11;
    v40 = v76;
    v63 = v3;
    v41 = v11;
    v42 = v59;
    do
    {
      v75 = v39;
      v72 = v34;
      v43 = v66;
      v44 = v73(v40, v39, v66);
      v71 = v62(v44);
      v70 = sub_1E4204694();
      sub_1E42046D4();
      sub_1E4204694();
      v45 = *v42;
      v46 = v65;
      (*v42)(v41, v65);
      sub_1E42046D4();
      sub_1E4204634();
      v47 = OUTLINED_FUNCTION_171_0();
      v45(v47);

      v48 = v64;
      sub_1E4204664();
      v49 = v68;
      v73(v68, v76, v43);
      (*v58)(v41, v48, v46);
      sub_1E42046E4();

      v50 = OUTLINED_FUNCTION_171_0();
      v45(v50);
      sub_1E4204894();
      v40 = v76;

      v51 = *v57;
      (*v57)(v49, v43);
      v51(v40, v43);
      v39 = v75 + v60;
      v34 = v72 - 1;
    }

    while (v72 != 1);

    v4 = v65;
  }

  else
  {

    v45 = *(v55 + 8);
  }

  (v45)(v69, v4);
  (*(v54 + 8))(v53, v66);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t static BaseImpressionManager.getImpressionableChildren(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8();
  if ((*(v1 + 488))())
  {

    sub_1E39E4ACC(v2);
    sub_1E3F0C504();

LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v3 + 464))())
  {
    sub_1E3F0C504();
    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  v4 = *(v0 + 16);

  return v4;
}

void sub_1E3F08CC0()
{
  OUTLINED_FUNCTION_9_4();
  v83 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_0_8();
  v5 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v82 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v75 = v8 - v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v74 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v73 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v86 = OUTLINED_FUNCTION_64_30();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B230, &qword_1E42DCE70);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v71 - v30;
  OUTLINED_FUNCTION_46_54();
  OUTLINED_FUNCTION_21_18();
  v36 = __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  if ((*(*v4 + 576))(v36))
  {
    OUTLINED_FUNCTION_30();
    (*(v37 + 224))();

    v38 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v38, v39, v86);
    if (!v40)
    {
      OUTLINED_FUNCTION_202_1();
      v41 = OUTLINED_FUNCTION_11_6();
      v42(v41);
      sub_1E42046D4();
      v43 = OUTLINED_FUNCTION_11_6();
      v44(v43);
      OUTLINED_FUNCTION_21_18();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      sub_1E3F0C9AC(v28, v31);
      goto LABEL_6;
    }
  }

  else
  {
    v49 = OUTLINED_FUNCTION_44_5();
    __swift_storeEnumTagSinglePayload(v49, v50, 1, v86);
  }

  sub_1E325F6F0(v0, &qword_1ECF2B7B0, &qword_1E429EC30);
LABEL_6:
  v51 = static BaseImpressionManager.getImpressionableChildren(_:)();
  v52 = *(v51 + 16);
  if (v52)
  {
    v55 = *(v17 + 16);
    v54 = v17 + 16;
    v53 = v55;
    v56 = v51 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v57 = *(v54 + 56);
    v72 = (v82 + 8);
    v71[0] = v51;
    v71[1] = v82 + 16;
    v58 = (v54 - 8);
    v81 = v57;
    v82 = v31;
    v84 = v1;
    v85 = v55;
    v79 = v21;
    v80 = v54;
    do
    {
      v53(v1, v56, v86);
      v59 = OUTLINED_FUNCTION_46_54();
      if (__swift_getEnumTagSinglePayload(v59, v60, v5))
      {
        v53(v21, v1, v86);
      }

      else
      {
        v78 = sub_1E4204694();
        v61 = v74;
        sub_1E42046D4();
        v62 = sub_1E4204694();
        v76 = v63;
        v77 = v62;
        v64 = *v72;
        (*v72)(v61, v5);
        sub_1E42046D4();
        sub_1E4204634();
        v65 = OUTLINED_FUNCTION_124();
        v64(v65);

        v66 = v73;
        sub_1E4204664();
        v85(v79, v84, v86);
        v67 = OUTLINED_FUNCTION_123_1();
        v68(v67);
        v21 = v79;
        sub_1E42046E4();

        (v64)(v66, v5);
        v1 = v84;
      }

      OUTLINED_FUNCTION_2_0();
      sub_1E4204824();
      v69 = *v58;
      v70 = v86;
      (*v58)(v21, v86);
      v69(v1, v70);
      v31 = v82;
      v56 += v81;
      --v52;
      v53 = v85;
    }

    while (v52);
  }

  sub_1E325F6F0(v31, &qword_1ECF3B230, &qword_1E42DCE70);
  OUTLINED_FUNCTION_10_3();
}

uint64_t BaseImpressionManager.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseImpressionManager.__deallocating_deinit()
{
  BaseImpressionManager.deinit();
  v0 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F09234(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_12();
  v7 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_8();
  (*(v11 + 224))();
  OUTLINED_FUNCTION_52(v3, 1, v7);
  if (v12)
  {
    return sub_1E325F6F0(v3, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  v13 = OUTLINED_FUNCTION_24_4();
  v15 = v14(v13);
  (*(*v1 + 96))(v15);
  [a1 frame];
  sub_1E4204824();

  return (*(v9 + 8))(v2, v7);
}

uint64_t sub_1E3F093E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_71_0();
  v4 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_8();
  (*(v8 + 224))();
  OUTLINED_FUNCTION_52(v0, 1, v4);
  if (v9)
  {
    return sub_1E325F6F0(v0, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  OUTLINED_FUNCTION_202_1();
  v10(v1, v0, v4);
  OUTLINED_FUNCTION_111();
  (*(v11 + 96))();
  sub_1E4204894();

  return (*(v6 + 8))(v1, v4);
}

uint64_t sub_1E3F09578()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_67();
  sub_1E3F095B4();
  return v0;
}

uint64_t sub_1E3F095B4()
{
  OUTLINED_FUNCTION_156();
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_12();
  sub_1E327F454(v1, v8);
  v3 = OUTLINED_FUNCTION_45_61();
  v4(v3);
  sub_1E3F07BD4();
  v5 = OUTLINED_FUNCTION_35_67();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v0;
}

uint64_t sub_1E3F0990C(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 40, a3);
  *(v3 + 40) = a1;
  return result;
}

void sub_1E3F09940(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v129 = *&a5;
  v130 = a3;
  v131 = a2;
  v125 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v124 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v123 = v14 - v13;
  v15 = sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  v128 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_12();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  v126 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v119 - v23;
  v25 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v132 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v127 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25_3();
  v35 = v34;
  OUTLINED_FUNCTION_36();
  if (!(*(v36 + 576))())
  {
    v69 = OUTLINED_FUNCTION_44_5();
    __swift_storeEnumTagSinglePayload(v69, v70, 1, v25);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_30();
  (*(v37 + 224))();

  v38 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v38, v39, v25);
  if (v40)
  {
LABEL_10:
    v71 = v24;
LABEL_11:
    sub_1E325F6F0(v71, &qword_1ECF2B7B0, &qword_1E429EC30);
    return;
  }

  v122 = a1;
  v121 = v5;
  v41 = v132;
  OUTLINED_FUNCTION_202_1();
  v119[2] = v42;
  v119[1] = v43;
  v43(v35, v24, v25);
  OUTLINED_FUNCTION_36();
  v45 = (*(v44 + 576))();
  if (!v45)
  {
    (*(v41 + 8))(v35, v25);
    return;
  }

  v46 = v45;
  v120 = v25;
  v47 = [v130 collectionViewLayout];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (!v48)
  {

    (*(v132 + 8))(v35, v120);
    return;
  }

  v49 = v48;
  v50 = [v122 vuiCellView];
  v51 = v35;
  if (!v50)
  {
    v72 = OUTLINED_FUNCTION_38_61();
    v73(v72, v120);

    return;
  }

  v52 = v50;
  v130 = v46;
  v53 = [v49 _orthogonalScrollingSections];
  sub_1E41FE754();

  sub_1E41FE854();
  LOBYTE(v53) = sub_1E41FE784();
  v128[1](v6, v15);
  if ((v53 & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    v75 = *(v74 + 96);
    v75();
    [v52 frame];
    sub_1E4204824();

    v76 = v122;
    v135 = v122;
    sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250, &qword_1E42DCE78);
    OUTLINED_FUNCTION_40_62();
    if (swift_dynamicCast())
    {
      sub_1E325F6F0(v133, &unk_1ECF429D0, &qword_1E42DCE80);
      OUTLINED_FUNCTION_44_51();
      v78 = v132;
    }

    else
    {
      v134 = 0;
      memset(v133, 0, sizeof(v133));
      sub_1E325F6F0(v133, &unk_1ECF429D0, &qword_1E42DCE80);
      v76 = v130;
      OUTLINED_FUNCTION_8();
      (*(v90 + 224))();
      OUTLINED_FUNCTION_55_43();
      OUTLINED_FUNCTION_44_51();
      OUTLINED_FUNCTION_52(v91, v92, v76);
      v78 = v132;
      if (v40)
      {
        sub_1E325F6F0(v7, &qword_1ECF2B7B0, &qword_1E429EC30);
      }

      else
      {
        OUTLINED_FUNCTION_56_33();
        v103 = v102();
        v76 = (v75)(v103);
        [v52 frame];
        sub_1E4204824();
        OUTLINED_FUNCTION_44_51();

        (*(v78 + 8))(v30, v76);
      }
    }

    v135 = v77;
    v104 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C258, &qword_1E42DCE88);
    OUTLINED_FUNCTION_40_62();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v133);
      [v52 frame];
      OUTLINED_FUNCTION_3();
      v105 = (v75)();
      OUTLINED_FUNCTION_8();
      v106 = OUTLINED_FUNCTION_6();
      v107(v131, v105, v106);
      OUTLINED_FUNCTION_66_33();

      (*(v78 + 8))(v35, v76);
      return;
    }

    (*(v78 + 8))(v35, v76);
    goto LABEL_34;
  }

  v54 = sub_1E41FE854();
  v128 = v49;
  v55 = [v49 vui:v54 layoutFrameForSection:?];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v121;
  v65 = *(*v121 + 296);
  v66 = v65(v55);
  v67 = *v64;
  if (v66)
  {
    v68 = (*(v67 + 96))();
    goto LABEL_18;
  }

  v79 = (*(v67 + 248))();
  v136.origin.x = v57;
  v136.origin.y = v59;
  v136.size.width = v61;
  v136.size.height = v63;
  v137 = CGRectOffset(v136, 0.0, v79);
  width = v137.size.width;
  height = v137.size.height;
  v80 = *(*v64 + 96);
  v80();
  sub_1E4204824();

  (v80)(v81);
  v82 = v123;
  sub_1E42046D4();
  v68 = sub_1E4204804();

  (*(v124 + 8))(v82, v125);
  if (!v68)
  {
    v117 = OUTLINED_FUNCTION_38_61();
    v118(v117, v120);
LABEL_34:
    OUTLINED_FUNCTION_66_33();

    return;
  }

LABEL_18:

  OUTLINED_FUNCTION_8();
  v84 = v126;
  (*(v83 + 224))();
  v85 = OUTLINED_FUNCTION_55_43();
  v86 = v120;
  OUTLINED_FUNCTION_52(v85, v87, v120);
  if (v40)
  {
    v88 = OUTLINED_FUNCTION_38_61();
    v89(v88, v86);
    OUTLINED_FUNCTION_66_33();

    v71 = v84;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_56_33();
  v93();
  v94 = [v128 _offsetForOrthogonalScrollingSection_];
  v96 = v95;
  v97 = v65(v94);
  if (v97)
  {
    v98 = sub_1E4204834();
    *v99 = v96;
    v98(v133, 0);
    [v52 frame];
    OUTLINED_FUNCTION_54_43(v100);
    v101 = 0.0;
  }

  else
  {
    sub_1E4204854();
    [v52 frame];
    OUTLINED_FUNCTION_54_43(v108);
    v138.origin.x = OUTLINED_FUNCTION_24_0();
    v101 = -CGRectGetMinX(v138);
  }

  v139.origin.x = OUTLINED_FUNCTION_24_0();
  v109 = -CGRectGetMinY(v139);
  v140.origin.x = v129;
  v140.origin.y = width;
  v140.size.width = height;
  v140.size.height = v57;
  CGRectOffset(v140, v101, v109);
  sub_1E4204824();
  v110 = v122;
  v135 = v122;
  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v111 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C258, &qword_1E42DCE88);
  OUTLINED_FUNCTION_40_62();
  v112 = swift_dynamicCast();
  v113 = v132;
  if (v112)
  {
    __swift_destroy_boxed_opaque_existential_1(v133);
    v114 = OUTLINED_FUNCTION_2_0();
    v110 = v64;
    v115(v131, v68, v114);
  }

  OUTLINED_FUNCTION_66_33();

  v116 = *(v113 + 8);
  OUTLINED_FUNCTION_44_51();
  v116();
  (v116)(v51, v110);
}

void sub_1E3F0A528()
{
  OUTLINED_FUNCTION_9_4();
  v78 = v2;
  v79 = v1;
  v76 = v3;
  v80 = v4;
  v6 = v5;
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v72 = v8;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v71 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v81 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v77 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v74 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v75 = v28;
  v29 = sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_36();
  if (((*(v36 + 296))() & 1) == 0)
  {
    v82[5] = v6;
    sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250, &qword_1E42DCE78);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v82);
      goto LABEL_13;
    }

    v38 = [v80 collectionViewLayout];
    objc_opt_self();
    v80 = v38;
    v39 = swift_dynamicCastObjCClass();
    if (v39 && (v40 = v39, v41 = [v39 _orthogonalScrollingSections], sub_1E41FE754(), v41, sub_1E41FE854(), LOBYTE(v41) = sub_1E41FE784(), (*(v31 + 8))(v35, v29), (v41 & 1) != 0))
    {
      OUTLINED_FUNCTION_8();
      (*(v42 + 224))();
      v43 = OUTLINED_FUNCTION_55_43();
      v44 = v81;
      OUTLINED_FUNCTION_52(v43, v45, v81);
      if (v59)
      {

        v46 = v19;
      }

      else
      {
        v53 = v77;
        v54 = *(v77 + 32);
        v55 = v75;
        v54(v75, v19, v44);
        OUTLINED_FUNCTION_8();
        (*(v56 + 224))();
        v57 = OUTLINED_FUNCTION_46_54();
        OUTLINED_FUNCTION_52(v57, v58, v44);
        if (!v59)
        {
          v54(v74, v0, v44);
          OUTLINED_FUNCTION_47_0();
          v61 = *(v60 + 96);
          v61();
          v62 = v71;
          sub_1E42046D4();
          v63 = sub_1E4204804();

          (*(v72 + 8))(v62, v73);
          if (v63)
          {
            [v40 vui:sub_1E41FE854() layoutFrameForSection:?];
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_47_0();
            (*(v64 + 248))();
            v83.origin.x = OUTLINED_FUNCTION_6();
            CGRectOffset(v83, v65, v66);
            OUTLINED_FUNCTION_3();
            v61();
            v67 = v75;
            OUTLINED_FUNCTION_6();
            sub_1E4204824();

            sub_1E4204894();

            v68 = OUTLINED_FUNCTION_61_26();
            v63(v68);
            v69 = v67;
          }

          else
          {

            v70 = OUTLINED_FUNCTION_61_26();
            MEMORY[0](v70);
            v69 = v75;
          }

          (v63)(v69, v44);
          goto LABEL_13;
        }

        (*(v53 + 8))(v55, v44);

        v46 = v0;
      }
    }

    else
    {

      OUTLINED_FUNCTION_8();
      (*(v47 + 224))();
      v48 = v81;
      OUTLINED_FUNCTION_52(v15, 1, v81);
      if (!v59)
      {
        OUTLINED_FUNCTION_202_1();
        v49(v24, v15, v48);
        OUTLINED_FUNCTION_47_0();
        (*(v50 + 96))();
        OUTLINED_FUNCTION_50();
        sub_1E4204894();

        v51 = OUTLINED_FUNCTION_35_67();
        v52(v51);
        goto LABEL_13;
      }

      v46 = v15;
    }

    sub_1E325F6F0(v46, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

LABEL_13:
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F0ABA8()
{
  OUTLINED_FUNCTION_9_4();
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33_5();
  v5 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_8();
  (*(v9 + 224))();
  OUTLINED_FUNCTION_52(v1, 1, v5);
  if (v10)
  {
    sub_1E325F6F0(v1, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  else
  {
    (*(v7 + 32))(v0, v1, v5);
    OUTLINED_FUNCTION_47_0();
    (*(v11 + 96))();
    sub_1E42046D4();
    sub_1E42048B4();

    v12 = OUTLINED_FUNCTION_11_6();
    v13(v12);
    v14 = OUTLINED_FUNCTION_124();
    v15(v14);
  }

  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3F0AE08(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 48, a2);
  *(v2 + 48) = a1;
  return result;
}

uint64_t sub_1E3F0AE3C()
{
  OUTLINED_FUNCTION_16_131();
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1E3F07AAC();
  return v0;
}

uint64_t sub_1E3F0AE74()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_16_131();
  swift_allocObject();
  OUTLINED_FUNCTION_37_67();
  sub_1E3F0AEB0();
  return v0;
}

uint64_t sub_1E3F0AEB0()
{
  OUTLINED_FUNCTION_156();
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_12();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1E327F454(v1, v8);
  v3 = OUTLINED_FUNCTION_45_61();
  v4(v3);
  sub_1E3F095B4();
  v5 = OUTLINED_FUNCTION_35_67();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v0;
}

uint64_t sub_1E3F0AF90()
{
  BaseImpressionManager.deinit();
  v0 = OUTLINED_FUNCTION_16_131();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E3F0B03C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 264))();
  return sub_1E37C4BF8;
}

void (*sub_1E3F0B214(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 312))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3F0B294()
{
  OUTLINED_FUNCTION_16_131();
  v0 = swift_allocObject();
  sub_1E3F0B2C4();
  return v0;
}

uint64_t sub_1E3F0B2C4()
{
  v1 = sub_1E4204874();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v3 = sub_1E42049C4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1E3F07AAC();

  sub_1E42049B4();
  v10 = OUTLINED_FUNCTION_124();
  v11(v10);
  sub_1E42049E4();
  swift_allocObject();
  sub_1E42049F4();
  OUTLINED_FUNCTION_111();
  (*(v12 + 128))();
  sub_1E42048E4();
  sub_1E4204864();
  OUTLINED_FUNCTION_111();
  (*(v13 + 120))();
  sub_1E4204884();
  OUTLINED_FUNCTION_111();
  (*(v14 + 104))();

  (*(v5 + 8))(v9, v3);
  return v0;
}

void sub_1E3F0B4F0()
{
  OUTLINED_FUNCTION_9_4();
  v60 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v16 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_36();
  if (!(*(v24 + 576))())
  {
    v39 = OUTLINED_FUNCTION_46_54();
    __swift_storeEnumTagSinglePayload(v39, v40, 1, v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_30();
  (*(v25 + 224))();

  v26 = OUTLINED_FUNCTION_46_54();
  OUTLINED_FUNCTION_52(v26, v27, v16);
  if (v28)
  {
LABEL_8:
    v41 = v15;
    goto LABEL_9;
  }

  v59 = v3;
  v58 = *(v18 + 32);
  v29 = v58(v1, v15, v16);
  v30 = (*(*v5 + 576))(v29);
  if (!v30)
  {
    v42 = OUTLINED_FUNCTION_14_152();
    v43(v42);
    goto LABEL_10;
  }

  v31 = v30;
  if (![v7 vuiCellView])
  {
    v44 = OUTLINED_FUNCTION_14_152();
    v45(v44);
    goto LABEL_13;
  }

  v56 = v31;
  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 96);
  v35 = v34;
  v54[1] = v32 + 96;
  v55 = v33;
  v33();
  v57 = v35;
  [v35 frame];
  OUTLINED_FUNCTION_3();
  sub_1E41FE844();
  OUTLINED_FUNCTION_6();
  sub_1E4204814();

  v63 = v7;
  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v36 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250, &qword_1E42DCE78);
  if (swift_dynamicCast())
  {
    sub_1E325F6F0(v61, &unk_1ECF429D0, &qword_1E42DCE80);
    v37 = OUTLINED_FUNCTION_14_152();
    v38(v37);

LABEL_13:

    goto LABEL_10;
  }

  v46 = v57;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v47 = sub_1E325F6F0(v61, &unk_1ECF429D0, &qword_1E42DCE80);
  (*(*v56 + 224))(v47);
  OUTLINED_FUNCTION_52(v12, 1, v16);
  if (!v28)
  {
    v50 = OUTLINED_FUNCTION_123_1();
    v51 = (v58)(v50);
    (v55)(v51);
    [v46 frame];
    OUTLINED_FUNCTION_3();
    sub_1E41FE844();
    OUTLINED_FUNCTION_6();
    sub_1E4204814();

    v52 = *(v18 + 8);
    v52(v22, v16);
    v53 = OUTLINED_FUNCTION_11_6();
    (v52)(v53);
    goto LABEL_10;
  }

  v48 = OUTLINED_FUNCTION_14_152();
  v49(v48);

  v41 = v12;
LABEL_9:
  sub_1E325F6F0(v41, &qword_1ECF2B7B0, &qword_1E429EC30);
LABEL_10:
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3F0B9E4()
{
  v0 = sub_1E4204764();
  __swift_allocate_value_buffer(v0, static BaseImpressionManager.impressionContext);
  __swift_project_value_buffer(v0, static BaseImpressionManager.impressionContext);
  return sub_1E4204754();
}

uint64_t BaseImpressionManager.impressionContext.unsafeMutableAddressor()
{
  if (qword_1EE29C570 != -1)
  {
    OUTLINED_FUNCTION_8_171(&qword_1EE29C570);
  }

  v0 = sub_1E4204764();

  return __swift_project_value_buffer(v0, static BaseImpressionManager.impressionContext);
}

uint64_t static BaseImpressionManager.impressionContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE29C570 != -1)
  {
    OUTLINED_FUNCTION_8_171(&qword_1EE29C570);
  }

  v2 = sub_1E4204764();
  v3 = __swift_project_value_buffer(v2, static BaseImpressionManager.impressionContext);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static BaseImpressionManager.getParentSnapshotImpressions(responder:)(void *a1)
{
  v1 = a1;
  sub_1E3280A90(0, &qword_1EE23B3D0, 0x1E69DCE60);
  while (1)
  {
    *&v21 = v1;
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E3E0, &qword_1E42DCE90);
    if ((OUTLINED_FUNCTION_19_129(v3, v4) & 1) == 0)
    {
      OUTLINED_FUNCTION_96_0();
LABEL_7:
      sub_1E325F6F0(&v23, &unk_1ECF3E3D0, &qword_1E42DCE98);
      goto LABEL_8;
    }

    if (!v24)
    {
      goto LABEL_7;
    }

    sub_1E3251BE8(&v23, v25);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v5 = OUTLINED_FUNCTION_30_76();
    v6(v5);
    if (v22)
    {
      goto LABEL_20;
    }

    sub_1E325F6F0(&v21, &qword_1ECF2C970, &qword_1E429D870);
    __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_8:
    *&v21 = v2;
    v2 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260, &unk_1E42DCEA0);
    if ((OUTLINED_FUNCTION_19_129(v7, v8) & 1) == 0)
    {
      OUTLINED_FUNCTION_96_0();
      goto LABEL_13;
    }

    if (v24)
    {
      break;
    }

LABEL_13:
    sub_1E325F6F0(&v23, &qword_1ECF3C268, &unk_1E42E5630);
LABEL_14:
    *&v21 = v2;
    v11 = v2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C270, &unk_1E42DCEB0);
    if (OUTLINED_FUNCTION_19_129(v12, v13))
    {
      if (v24)
      {
        sub_1E3251BE8(&v23, v25);
        v14 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v15 = OUTLINED_FUNCTION_50();
        v17 = v16(v15, v14);

        goto LABEL_21;
      }
    }

    else
    {
      OUTLINED_FUNCTION_96_0();
    }

    sub_1E325F6F0(&v23, &qword_1ECF3C278, &unk_1E42E5640);
    v1 = [v11 nextResponder];

    if (!v1)
    {
      return 0;
    }
  }

  sub_1E3251BE8(&v23, v25);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v9 = OUTLINED_FUNCTION_30_76();
  v10(v9);
  if (!v22)
  {
    sub_1E325F6F0(&v21, &unk_1ECF296D0, &qword_1E429BAA0);
    __swift_destroy_boxed_opaque_existential_1(v25);
    goto LABEL_14;
  }

LABEL_20:
  sub_1E3251BE8(&v21, &v23);
  __swift_project_boxed_opaque_existential_1(&v23, v24);
  v18 = OUTLINED_FUNCTION_50();
  v17 = v19(v18);

  __swift_destroy_boxed_opaque_existential_1(&v23);
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v17;
}

void *static BaseImpressionManager.processImpressionsForPrivacy(_:)(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = sub_1E4205F14();
    v7 = v6;
    if (v4[2])
    {
      v8 = v5;

      OUTLINED_FUNCTION_1_28();
      v10 = sub_1E3C69B60(v8, v7, v9);
      v12 = v11;

      if (v12)
      {
        sub_1E328438C(v4[7] + 32 * v10, &v69);
        if (swift_dynamicCast())
        {
          v13 = *(&v68[0] + 1);
          v14 = *&v68[0];
          goto LABEL_10;
        }
      }
    }

    else
    {
    }

    v14 = 0;
    v13 = 0;
LABEL_10:
    v15 = sub_1E3BA48D4();
    if (!v13)
    {

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }

    if (v14 == v15 && v13 == v16)
    {
    }

    else
    {
      v18 = sub_1E42079A4();

      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v20 = sub_1E4205F14();
    v22 = v21;
    v70 = MEMORY[0x1E69E6158];
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_1E329504C(&v69, v68);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_28();
    v26 = OUTLINED_FUNCTION_65_33(v23, v24, v25);
    if (__OFADD__(v4[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
    if (sub_1E4207644())
    {
      OUTLINED_FUNCTION_1_28();
      v33 = OUTLINED_FUNCTION_65_33(v30, v31, v32);
      if ((v29 & 1) != (v34 & 1))
      {
        goto LABEL_48;
      }

      v28 = v33;
    }

    if (v29)
    {
      v35 = (v4[7] + 32 * v28);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_1E329504C(v68, v35);
    }

    else
    {
      v4[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v4[6] + 16 * v28);
      *v36 = v20;
      v36[1] = v22;
      sub_1E329504C(v68, (v4[7] + 32 * v28));
      v37 = v4[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_46;
      }

      v4[2] = v39;
    }

    v40 = sub_1E4205F14();
    v42 = v41;
    v70 = MEMORY[0x1E69E6158];
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_1E329504C(&v69, v68);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_28();
    v46 = OUTLINED_FUNCTION_65_33(v43, v44, v45);
    v48 = v47;
    if (__OFADD__(v4[2], (v47 & 1) == 0))
    {
      goto LABEL_45;
    }

    v49 = v46;
    if (sub_1E4207644())
    {
      OUTLINED_FUNCTION_1_28();
      v53 = OUTLINED_FUNCTION_65_33(v50, v51, v52);
      if ((v48 & 1) != (v54 & 1))
      {
        goto LABEL_48;
      }

      v49 = v53;
    }

    if (v48)
    {
      v55 = (v4[7] + 32 * v49);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1E329504C(v68, v55);
    }

    else
    {
      v4[(v49 >> 6) + 8] |= 1 << v49;
      v56 = (v4[6] + 16 * v49);
      *v56 = v40;
      v56[1] = v42;
      sub_1E329504C(v68, (v4[7] + 32 * v49));
      v57 = v4[2];
      v38 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v38)
      {
        goto LABEL_47;
      }

      v4[2] = v58;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_41:
      OUTLINED_FUNCTION_21_18();
      v3 = sub_1E39239C8(v59, v60, v61, v62);
    }

LABEL_19:
    v19 = v3[2];
    if (v19 >= v3[3] >> 1)
    {
      OUTLINED_FUNCTION_21_18();
      v3 = sub_1E39239C8(v63, v64, v65, v66);
    }

    v3[2] = v19 + 1;
    v3[v19 + 4] = v4;
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

void sub_1E3F0C2C0()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v1;
  v3 = v2;
  v28 = v4;
  v29 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1E37E93E8(v3, v11, &qword_1ECF2B7B0, &qword_1E429EC30);
  v19 = OUTLINED_FUNCTION_55_43();
  OUTLINED_FUNCTION_52(v19, v20, v12);
  if (v21)
  {
    sub_1E325F6F0(v11, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  else
  {
    (*(v14 + 32))(v18, v11, v12);
    ObjectType = swift_getObjectType();
    sub_1E41FE5C4();
    if (qword_1EE29C570 != -1)
    {
      OUTLINED_FUNCTION_8_171(&qword_1EE29C570);
    }

    v23 = sub_1E4204764();
    v24 = __swift_project_value_buffer(v23, static BaseImpressionManager.impressionContext);
    v30(v18, v0, v24, ObjectType, v28);
    (*(v6 + 8))(v0, v29);
    v25 = OUTLINED_FUNCTION_123_1();
    v26(v25);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F0C504()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_64_30();
  OUTLINED_FUNCTION_0_10();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v39 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v38 = v13;
  if (v4 >> 62)
  {
LABEL_29:
    v14 = sub_1E4207384();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_30:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = v4 & 0xC000000000000001;
    v37 = (v36 + 32);
    v34 = v0;
    v35 = v2;
    v40 = v7;
    v33 = v4;
    while (1)
    {
      if (v16)
      {
        v17 = MEMORY[0x1E6911E60](v15, v4);
      }

      else
      {
        v17 = *(v4 + 8 * v15 + 32);
      }

      type metadata accessor for CollectionViewModel();
      if (swift_dynamicCastClass())
      {
        goto LABEL_9;
      }

      if ((*(*v17 + 576))())
      {
        OUTLINED_FUNCTION_30();
        (*(v18 + 224))();
        v19 = OUTLINED_FUNCTION_44_5();
        OUTLINED_FUNCTION_52(v19, v20, v7);
        if (v21)
        {

          sub_1E325F6F0(v0, &qword_1ECF2B7B0, &qword_1E429EC30);
        }

        else
        {
          v22 = v0;
          v23 = *v37;
          (*v37)(v38, v22, v7);
          (*(v36 + 16))(v39, v38, v7);
          swift_beginAccess();
          v24 = *(v2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 16) = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_1E3885C98(0, *(v24 + 2) + 1, 1, v24);
            *(v2 + 16) = v24;
          }

          v27 = *(v24 + 2);
          v26 = *(v24 + 3);
          if (v27 >= v26 >> 1)
          {
            v24 = sub_1E3885C98((v26 > 1), v27 + 1, 1, v24);
          }

          *(v24 + 2) = v27 + 1;
          v23(&v24[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27], v39, v40);
          v2 = v35;
          *(v35 + 16) = v24;
          v7 = v40;
          swift_endAccess();

          (*(v36 + 8))(v38, v40);
          v4 = v33;
          v0 = v34;
        }
      }

      v28 = (*(*v17 + 488))();
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = *(v28 + 16);
      if (v30)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v7 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v7);
        v7[2] = v30;
        v7[3] = (2 * ((v31 - 32) / 8)) | 1;
        v32 = sub_1E39E6CC0(&v41, v7 + 4, v30, v29);
        sub_1E34AF4DC(v41);
        if (v32 != v30)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
      }

      sub_1E3F0C504();

      v7 = v40;
LABEL_27:
      if (v14 == ++v15)
      {
        goto LABEL_30;
      }
    }

    if ((*(*v17 + 464))())
    {
      sub_1E3F0C504();
    }

LABEL_9:

    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_1E3F0C9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B230, &qword_1E42DCE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void static BaseImpressionManager.makeImpressionsData(_:parent:)()
{
  OUTLINED_FUNCTION_31_1();
  v22[1] = v1;
  v22[2] = v0;
  v3 = v2;
  v22[3] = v4;
  v5 = sub_1E4204624();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v7 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = sub_1E4205F14();
  sub_1E3277E60(v17, v18, v3, &v23);

  if (v24)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1E325F6F0(&v23, &unk_1ECF296E0, &unk_1E4298030);
  }

  v19 = sub_1E4205F14();
  sub_1E3277E60(v19, v20, v3, &v23);

  if (v24)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1E325F6F0(&v23, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E4204664();
  (*(v9 + 16))(v13, v16, v7);

  sub_1E4204614();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E37E5C70(MEMORY[0x1E69E7CC0]);
  sub_1E37E5C70(v21);
  sub_1E42046C4();
  (*(v9 + 8))(v16, v7);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F0CD40(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  if (!v4)
  {
    v5 = (*(a2 + 32))(a1, a2);
    goto LABEL_5;
  }

  v7[0] = *(a2 + 32);
  v7[1] = v7;
  v8 = (v7[0])(a1, a2);
  MEMORY[0x1EEE9AC00](v8);
  swift_getAssociatedTypeWitness();
  sub_1E4206374();
  OUTLINED_FUNCTION_0_286();
  swift_getWitnessTable();
  sub_1E4206744();

  if (v10 == 1)
  {
    v5 = (v7[0])(a1, a2);
LABEL_5:
    v8 = v5;
    MEMORY[0x1EEE9AC00](v5);
    swift_getAssociatedTypeWitness();
    sub_1E4206374();
    OUTLINED_FUNCTION_0_286();
    swift_getWitnessTable();
    sub_1E4206744();

    return v9;
  }

  return v9;
}

uint64_t sub_1E3F0CF7C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 64);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness) & 1;
}

uint64_t sub_1E3F0D034()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 8);
  v5 = *(v4 + 16);
  v6 = swift_checkMetadataState();
  if (v5(v6, v4) == v1 && v7 == v2)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return (*(AssociatedConformanceWitness + 64))(v6, AssociatedConformanceWitness) & 1;
}

id static VUIAction.makeAction(with:appContext:)(uint64_t a1, void *a2)
{
  v66 = sub_1E4205F14();
  v67 = v4;
  v5 = sub_1E4207414();
  v13 = OUTLINED_FUNCTION_1_39(v5, v6, v7, v8, v9, v10, v11, v12, v55, v58, v62, v65[0]);
  sub_1E375D7E8(a1, v14, v13);
  v15 = sub_1E375D84C(v65);
  if (v68)
  {
    v19 = OUTLINED_FUNCTION_2_215(v15, v16, v17, MEMORY[0x1E69E6158], v18);
    if (v19)
    {
      v20 = v59;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v63;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v66);
    v20 = 0;
    v21 = 0;
  }

  type metadata accessor for VUIActionRef();
  v65[0] = v20;
  v65[1] = v21;
  v22 = OUTLINED_FUNCTION_0_287(&qword_1ECF3C280);
  OUTLINED_FUNCTION_1_39(v22, v23, v22, v24, v25, v26, v27, v28, v56, v59, v63, v65[0]);
  sub_1E4149694();
  v29 = v66;
  v66 = sub_1E4205F14();
  v67 = v30;
  v31 = sub_1E4207414();
  v39 = OUTLINED_FUNCTION_1_39(v31, v32, v33, v34, v35, v36, v37, v38, v57, v60, v64, v65[0]);
  sub_1E375D7E8(a1, v40, v39);
  sub_1E375D84C(v65);
  if (v68)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    if (OUTLINED_FUNCTION_2_215(v41, v42, v43, v41, v44))
    {
      v45 = v61;
    }

    else
    {
      v45 = 0;
    }

    if (!v29)
    {
      goto LABEL_22;
    }

LABEL_16:
    v46 = sub_1E4205F14();
    v48 = v47;
    if (v46 == sub_1E4205F14() && v48 == v49)
    {
    }

    else
    {
      v51 = sub_1E42079A4();

      if ((v51 & 1) == 0)
      {

        goto LABEL_22;
      }
    }

    type metadata accessor for VUIActionAppStoreOffer();
    v53 = a2;
    v52 = sub_1E395E4BC(v45, a2);

    return v52;
  }

  sub_1E329505C(&v66);
  v45 = 0;
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_22:

  return 0;
}

uint64_t sub_1E3F0D38C(uint64_t a1)
{
  if (!a1)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_8:
    sub_1E329505C(&v45);
    return 0;
  }

  v40 = sub_1E3C7E9C0(0);
  v42 = v2;
  v3 = sub_1E4207414();
  v11 = OUTLINED_FUNCTION_1_39(v3, v4, v5, v6, v7, v8, v9, v10, v38, v40, v42, v44);
  sub_1E375D7E8(a1, v12, v11);
  v13 = sub_1E375D84C(&v44);
  if (!*(&v46 + 1))
  {

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_3_216(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18) & 1) == 0)
  {

    return 0;
  }

  v19 = v44;
  *&v45 = sub_1E3C7E9C0(1);
  *(&v45 + 1) = v20;
  v21 = sub_1E4207414();
  v29 = OUTLINED_FUNCTION_1_39(v21, v22, v23, v24, v25, v26, v27, v28, v39, v41, v43, v44);
  sub_1E375D7E8(a1, v30, v29);

  v31 = sub_1E375D84C(&v44);
  if (*(&v46 + 1))
  {
    OUTLINED_FUNCTION_3_216(v31, v32, v33, MEMORY[0x1E69E6158], v34, v35, v36);
  }

  else
  {
    sub_1E329505C(&v45);
  }

  return v19;
}

uint64_t sub_1E3F0D4D8(uint64_t a1)
{
  if (!a1)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  v17 = sub_1E3C7E9C0(2);
  v18 = v2;
  v3 = sub_1E4207414();
  v11 = OUTLINED_FUNCTION_1_39(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18, v19[0]);
  sub_1E375D7E8(a1, v12, v11);
  sub_1E375D84C(v19);
  if (!*(&v21 + 1))
  {
LABEL_6:
    sub_1E329505C(&v20);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C288, &qword_1E42DD090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1E3F0D5C0(*v19);
  v14 = v13;

  return v14;
}

void sub_1E3F0D5C0(uint64_t a1)
{
  v41 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);

    v44 = sub_1E3C7E9C0(0);
    v45 = v14;
    sub_1E4207414();
    if (*(v13 + 16) && (v15 = sub_1E375D924(&v42), (v16 & 1) != 0))
    {
      sub_1E328438C(*(v13 + 56) + 32 * v15, &v46);
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v5 &= v5 - 1;
    sub_1E375D84C(&v42);
    if (*(&v47 + 1))
    {
      if (swift_dynamicCast())
      {
        v39 = v43;
        v40 = v42;
        *&v46 = sub_1E3C7E9C0(1);
        *(&v46 + 1) = v17;
        sub_1E4207414();
        if (*(v13 + 16) && (v18 = sub_1E375D924(&v42), (v19 & 1) != 0))
        {
          sub_1E328438C(*(v13 + 56) + 32 * v18, &v46);
        }

        else
        {
          v46 = 0u;
          v47 = 0u;
        }

        sub_1E375D84C(&v42);
        if (*(&v47 + 1))
        {
          v20 = swift_dynamicCast();
          if (v20)
          {
            v21 = v42;
          }

          else
          {
            v21 = 0;
          }

          if (v20)
          {
            v22 = v43;
          }

          else
          {
            v22 = 0;
          }

          v37 = v22;
          v38 = v21;
        }

        else
        {
          sub_1E329505C(&v46);
          v37 = 0;
          v38 = 0;
        }

        v23 = v41;
        v24 = *(v41 + 16);
        if (*(v41 + 24) <= v24)
        {
          sub_1E3F0DB24(v24 + 1, 1);
          v23 = v48;
        }

        v41 = v23;
        sub_1E4207B44();
        sub_1E4206014();
        v25 = sub_1E4207BA4();
        v26 = v41 + 64;
        v27 = -1 << *(v41 + 32);
        v28 = v25 & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v41 + 64 + 8 * (v28 >> 6))) == 0)
        {
          v31 = 0;
          v32 = (63 - v27) >> 6;
          while (++v29 != v32 || (v31 & 1) == 0)
          {
            v33 = v29 == v32;
            if (v29 == v32)
            {
              v29 = 0;
            }

            v31 |= v33;
            v34 = *(v26 + 8 * v29);
            if (v34 != -1)
            {
              v30 = __clz(__rbit64(~v34)) + (v29 << 6);
              goto LABEL_42;
            }
          }

          goto LABEL_45;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v41 + 64 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_42:
        *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v35 = (*(v41 + 48) + 16 * v30);
        *v35 = v12;
        v35[1] = v11;
        v36 = (*(v41 + 56) + 32 * v30);
        *v36 = v40;
        v36[1] = v39;
        v36[2] = v38;
        v36[3] = v37;
        ++*(v41 + 16);
      }

      else
      {
      }
    }

    else
    {

      sub_1E329505C(&v46);
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void type metadata accessor for VUIActionRef()
{
  if (!qword_1ECF3C290)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF3C290);
    }
  }
}

uint64_t sub_1E3F0D9C0(uint64_t a1)
{
  sub_1E3F0DAE0(&qword_1ECF3C2A8, &unk_1E42DD194);
  sub_1E3F0DAE0(&qword_1ECF3C2B0, &unk_1E42DD13C);

  return sub_1E4207764();
}

uint64_t sub_1E3F0DAE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VUIActionRef();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3F0DB24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2B8, &qword_1E42DD258);
  v38 = v4;
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v36 = v2;
  v37 = v5;
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
  v14 = v6 + 64;
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
        goto LABEL_34;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1E373CBF0(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = (*(v5 + 56) + 32 * v18);
    v22 = v21[1];
    v40 = *v21;
    v41 = *v19;
    v23 = v21[3];
    v39 = v21[2];
    if ((v38 & 1) == 0)
    {
    }

    sub_1E4207B44();
    sub_1E4206014();
    v24 = sub_1E4207BA4();
    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v41;
    v33[1] = v20;
    v34 = (*(v7 + 56) + 32 * v28);
    *v34 = v40;
    v34[1] = v22;
    v34[2] = v39;
    v34[3] = v23;
    ++*(v7 + 16);
    v5 = v37;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void *sub_1E3F0DDF4()
{
  v1 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F0DE38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  OUTLINED_FUNCTION_13_18(&v8[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView], a2, a3, a4, a5, a6, a7, a8, v14);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  v13 = a1;
  OUTLINED_FUNCTION_5_0(&v8[v12], v15);
  [v8 vui:*&v8[v12] addSubview:v11 oldView:?];
  if (*&v8[v12])
  {
    [v8 vui_sendSubviewToBack_];
  }
}

uint64_t sub_1E3F0DED8()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView, v1);
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3F0DF64()
{
  v1 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3F0DFB4()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView, v1);
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F0E040(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3F0E0C0()
{
  v1 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F0E110(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  OUTLINED_FUNCTION_13_18(&v8[*a2], a2, a3, a4, a5, a6, a7, a8, v15);
  v12 = *&v8[v11];
  *&v8[v11] = a1;
  v13 = *a2;
  v14 = a1;
  OUTLINED_FUNCTION_5_0(&v8[v13], v16);
  [v8 vui:*&v8[v13] addSubview:v12 oldView:?];
}

uint64_t sub_1E3F0E198()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView, v1);
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F0E224()
{
  swift_getObjectType();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  objc_msgSendSuper2(&v8, sel_invalidateIntrinsicContentSize);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E3F0E3C8;
  *(v3 + 24) = v2;
  v7[4] = sub_1E379E500;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E3839B50;
  v7[3] = &block_descriptor_134;
  v4 = _Block_copy(v7);
  v5 = v0;

  [ObjCClassFromMetadata vui:v4 performWithoutAnimation:?];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1E3F0E3C8()
{
  v1 = *(v0 + 16);
  v2 = [v1 superview];
  [v2 invalidateIntrinsicContentSize];

  v3 = [v1 superview];
  [v3 vui_setNeedsLayout];
}

double sub_1E3F0E4A4(double a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_17_4();
    [v7 v8];
  }

  v9 = (*((*v3 & *v1) + 0x80))();
  if (v9)
  {
    v10 = v9;
    v11 = OUTLINED_FUNCTION_17_4();
    [v12 v13];
  }

  return a1;
}

id sub_1E3F0E5E4(char a1, double a2, double a3)
{
  if ((a1 & 1) == 0)
  {
    [v3 bounds];
    v8 = v7;
    OUTLINED_FUNCTION_4_133();
    v10 = (*(v9 + 104))();
    v11 = OUTLINED_FUNCTION_9_159();
    [v12 v13];

    OUTLINED_FUNCTION_4_133();
    v15 = (*(v14 + 128))();
    if (v15)
    {
      OUTLINED_FUNCTION_79_25(v15);
      v30.origin.x = OUTLINED_FUNCTION_9_159();
      CGRectGetWidth(v30);
      v16 = OUTLINED_FUNCTION_76_22();
      [v17 v18];
    }

    OUTLINED_FUNCTION_4_133();
    v20 = (*(v19 + 152))();
    if (v20)
    {
      OUTLINED_FUNCTION_79_25(v20);
      v22 = v21;
      v31.origin.x = OUTLINED_FUNCTION_9_159();
      MinY = CGRectGetMinY(v31);
      v32.origin.x = OUTLINED_FUNCTION_9_159();
      v24 = MinY + CGRectGetHeight(v32) - v22;
      v33.origin.x = OUTLINED_FUNCTION_9_159();
      CGRectGetWidth(v33);
      v25 = OUTLINED_FUNCTION_76_22();
      [v26 v27];
    }
  }

  v29.receiver = v3;
  v29.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  return objc_msgSendSuper2(&v29, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
}

id sub_1E3F0E7E0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView) = 0;
  v5 = type metadata accessor for SportsCanonicalBannerViewWrapper();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3F0E874(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3F0E928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3F0E9EC(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerView(0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_27_0();
  sub_1E3F161CC(v4, v5);
  v6 = sub_1E4201214();
  sub_1E42011F4();

  sub_1E3F176DC(a1);
  return v6;
}

id sub_1E3F0EA84(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + qword_1ECF68390);
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  (*(v5 + 16))(v2, a1, v4);
  v7 = sub_1E4201214();
  sub_1E42011F4();

  v8 = OUTLINED_FUNCTION_27_0();
  v9(v8);
  return v7;
}

void sub_1E3F0EC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WrapperHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1ECF68390), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1ECF68390 + 8), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, sel_invalidateIntrinsicContentSize);
  v6 = [v4 superview];
  [v6 invalidateIntrinsicContentSize];

  v7 = [v4 superview];
  [v7 vui_setNeedsLayout];
}

void sub_1E3F0ECF4(void *a1)
{
  v4 = a1;
  sub_1E3F0EC18(v4, v1, v2, v3);
}

id sub_1E3F0ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WrapperHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1ECF68390), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1ECF68390 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void *sub_1E3F0EDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for SportsCanonicalBannerView(0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  v10 = objc_allocWithZone(type metadata accessor for SportsCanonicalBannerViewWrapper());
  v11 = OUTLINED_FUNCTION_2_0();
  v14 = [v12 v13];

  sub_1E3F0EF84(a1, a3, v9);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2D8, &qword_1E42DD260));
  v16 = sub_1E3F0E9EC(v9);
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0xA0))(v16);
  type metadata accessor for ProductGradientView();
  v18 = sub_1E3890DAC();
  (*((*v17 & *v14) + 0x70))(v18);
  return v14;
}

uint64_t type metadata accessor for SportsCanonicalBannerView(uint64_t a1)
{
  result = qword_1ECF68420;
  if (!qword_1ECF68420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F0EF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SportsCanonicalBannerView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[10]) = 0;
  *(a3 + v6[11]) = 0;
  *(a3 + v6[12]) = 0;
  v9 = (a3 + v6[13]);
  sub_1E42038E4();
  *v9 = v32;
  v9[1] = v33;
  v10 = a3 + v6[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
  sub_1E42038E4();
  *v10 = v32;
  *(v10 + 1) = v33;
  *(a3 + v6[15]) = 0;
  *(a3 + v6[16]) = 0;
  *(a3 + v6[17]) = 0;
  *(a3 + v6[18]) = 0;
  *(a3 + v6[19]) = 0;
  *(a3 + v6[20]) = 0;
  *(a3 + v6[21]) = 0;
  *(a3 + v6[22]) = 0;
  *(a3 + v6[24]) = a2;
  v11 = (a3 + v6[7]);
  type metadata accessor for SportsCanonicalBannerPresenter(0);
  sub_1E3F174F4(&qword_1ECF3C2E0, type metadata accessor for SportsCanonicalBannerPresenter, &unk_1E42BD340);

  OUTLINED_FUNCTION_69_28();
  *v11 = sub_1E42010C4();
  v11[1] = v12;
  *(a3 + v6[8]) = a1;
  v13 = a3 + v6[9];
  *v13 = sub_1E379F17C;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = *(*a1 + 392);

  v16 = v14(v15);
  if (!v16)
  {
    goto LABEL_4;
  }

  if (*v16 != _TtC8VideosUI31SportsCanonicalBannerViewLayout)
  {

LABEL_4:
    type metadata accessor for SportsCanonicalBannerViewLayout();
    sub_1E3D3E7F8();
  }

  v17 = (a3 + v6[23]);
  type metadata accessor for SportsCanonicalBannerViewLayout();
  OUTLINED_FUNCTION_22_88();
  sub_1E3F174F4(v18, v19, &unk_1E42CD198);
  *v17 = sub_1E42010C4();
  v17[1] = v20;
  sub_1E3F111C8();
  v21 = v17[1];
  type metadata accessor for MediaShowcaseHostingView();

  v23 = sub_1E40037C8(v22);

  result = OUTLINED_FUNCTION_13_18(v21 + 112, v24, v25, v26, v27, v28, v29, v30, v32);
  *(v21 + 112) = v23;
  return result;
}

unint64_t sub_1E3F0F328()
{
  result = sub_1E39D7838(&unk_1F5D8D200);
  qword_1EE28C7C8 = result;
  return result;
}

void sub_1E3F0F350()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v63[4] = v6;
  v63[3] = v7;
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2E8, &qword_1E42DD308);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2F0, &qword_1E42DD310);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2F8, &qword_1E42DD318);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v63 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C300, &qword_1E42DD320);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C308, &qword_1E42DD328);
  OUTLINED_FUNCTION_70_27(v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C310, &qword_1E42DD330);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v29);
  OUTLINED_FUNCTION_5_0(v5 + 120, &v67);
  if ((*(v5 + 120) & 0xFE) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3F11958();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
  }

  else
  {
    v63[0] = v26;
    v63[1] = v9;
    v63[2] = v0;
    *v22 = sub_1E4201B84();
    *(v22 + 1) = 0;
    v22[16] = 1;
    v30 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C338, &qword_1E42DD338) + 44)];
    sub_1E3F0F820();
    OUTLINED_FUNCTION_81_24(v18, v15);
    OUTLINED_FUNCTION_81_24(v15, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C340, &unk_1E42DD340);
    OUTLINED_FUNCTION_68_30(v31);
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v32, v33);
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v34, v35);
    sub_1E4203DA4();
    v36 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1(v36, v37, v38, v39, 0x7FF0000000000000, 0, v40, v41, v62);
    sub_1E3741EA0(v22, v2, &qword_1ECF3C2F8, &qword_1E42DD318);
    memcpy((v2 + *(v64 + 36)), v68, 0x70uLL);
    sub_1E3D3E45C(v69);
    if (v70)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v44.n128_u64[0] = v69[2];
      v45.n128_u64[0] = v69[3];
      v42.n128_u64[0] = v69[0];
      v43.n128_u64[0] = v69[1];
      j_nullsub_1(v42, v43, v44, v45);
    }

    OUTLINED_FUNCTION_3();
    v46 = v63[0];
    v47 = sub_1E4202734();
    sub_1E3741EA0(v2, v1, &qword_1ECF3C300, &qword_1E42DD320);
    v48 = (v1 + *(v65 + 36));
    *v48 = v47;
    OUTLINED_FUNCTION_11_4(v48);
    v49 = sub_1E42013E4();
    v50 = sub_1E4202734();
    sub_1E3741EA0(v1, v3, &qword_1ECF3C308, &qword_1E42DD328);
    v51 = v3 + *(v46 + 36);
    *v51 = v49;
    *(v51 + 8) = v50;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v52, v53, v54, v55);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v56, v57, v58, v59);
    swift_storeEnumTagMultiPayload();
    sub_1E3F11958();
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v60, v61);
  }

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F0F820()
{
  OUTLINED_FUNCTION_31_1();
  v102 = v5;
  v7 = v6;
  v96 = v8;
  v103 = v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v94 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v93 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5A8, &qword_1E42DD8F0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5B0, &qword_1E42DD8F8);
  OUTLINED_FUNCTION_70_27(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_77_0();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5B8, &unk_1E42DD900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5C0, &qword_1E42DD910);
  OUTLINED_FUNCTION_0_10();
  v97 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5C8, &qword_1E42DD918);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v31);
  if (v7)
  {
    v99 = v32;

    sub_1E3EB9BB4(v104);
    v33 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v7, v104, 0, v33 & 1, 0, 0, v27);
    sub_1E375C31C(v104);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    (*(v24 + 8))(v27, v22);
    OUTLINED_FUNCTION_36();
    (*(v34 + 352))();
    sub_1E4203DA4();
    v35 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1(v35, v36, v37, v38, 0, 1, v39, v40, v89);
    (*(v97 + 32))(v1, v0, v98);
    memcpy((v1 + *(v99 + 36)), v105, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v41, v42, v43, v44);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v45, v46, v47, v48);
    swift_storeEnumTagMultiPayload();
    sub_1E3F1753C();
    sub_1E3F1761C();
    OUTLINED_FUNCTION_59_33();
    sub_1E4201F44();

LABEL_5:
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5D0, &qword_1E42DD920);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v49 = v92;
  v50 = v93;
  v51 = v94;
  v52 = v95;
  v91 = v4;
  v98 = v2;
  v97 = v3;
  if (v96)
  {
    v99 = v32;

    v53 = sub_1E4201B84();
    v54 = v98;
    *v98 = v53;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5D8, &qword_1E42DD928) + 44);
    OUTLINED_FUNCTION_18();
    v56 = v49;
    sub_1E3F23370();
    v57 = *(v51 + 16);
    v57(v50, v56, v52);
    v57(v55, v50, v52);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5E0, &unk_1E42DD930);
    OUTLINED_FUNCTION_68_30(v58);
    v59 = *(v51 + 8);
    v59(v56, v52);
    v59(v50, v52);
    sub_1E3D3DD40();
    OUTLINED_FUNCTION_26_0();
    v61 = (*(v60 + 248))();

    sub_1E4203DA4();
    v62 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1(v62, v63, v64, v65, v61, v66, v67, v68, v89);
    v69 = v91;
    sub_1E3741EA0(v54, v91, &qword_1ECF3C5A8, &qword_1E42DD8F0);
    memcpy((v69 + *(v101 + 36)), v105, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v70, v71, v72, v73);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v74, v75, v76, v77);
    swift_storeEnumTagMultiPayload();
    sub_1E3F1753C();
    sub_1E3F1761C();
    OUTLINED_FUNCTION_59_33();
    sub_1E4201F44();

    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5D0, &qword_1E42DD920);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
}

uint64_t sub_1E3F10098@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = *(*a1 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C518, &qword_1E42DD858);
  sub_1E3743538(a1[1], a2 + v10[12], &qword_1ECF3C4F8, &qword_1E42DD830);
  sub_1E3743538(a1[2], a2 + v10[16], &qword_1ECF3C4F0, &qword_1E42DD828);
  v11 = v10[20];
  v12 = a1[3];
  v14 = *(v12 + 1);
  v13 = *(v12 + 2);
  v15 = *v12;
  *&v21[11] = *(v12 + 43);
  v20[1] = v14;
  *v21 = v13;
  v20[0] = v15;
  memmove((a2 + v11), v12, 0x3BuLL);
  sub_1E3743538(a1[4], a2 + v10[24], &qword_1ECF3C4E8, &qword_1E42DD820);
  sub_1E3743538(a1[5], a2 + v10[28], &qword_1ECF3C4E0, &qword_1E42DD818);
  v16 = v10[32];
  v17 = a1[6];
  memcpy(__dst, v17, 0x5AuLL);
  memmove((a2 + v16), v17, 0x5AuLL);
  sub_1E3F172BC(v4, v5);
  sub_1E3743538(v20, v19, &qword_1ECF3C510, &qword_1E42DD850);
  return sub_1E3743538(__dst, v19, &qword_1ECF3C508, &qword_1E42DD848);
}

uint64_t sub_1E3F10248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v22 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  *a2 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v22;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5A0, &unk_1E42DD8E0);
  sub_1E3743538(*(a1 + 8), a2 + v8[12], &qword_1ECF3C4F8, &qword_1E42DD830);
  sub_1E3743538(*(a1 + 16), a2 + v8[16], &qword_1ECF3C4F0, &qword_1E42DD828);
  v9 = (a2 + v8[20]);
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  *v9 = *v11;
  v9[1] = v13;
  v9[2] = v14;
  v15 = v8[24];
  v16 = *(v10 + 43);
  v18 = v10[1];
  v17 = v10[2];
  v24[0] = *v10;
  v24[1] = v18;
  v25[0] = v17;
  *(v25 + 11) = v16;
  memmove((a2 + v15), v10, 0x3BuLL);
  sub_1E3743538(*(a1 + 40), a2 + v8[28], &qword_1ECF3C4E8, &qword_1E42DD820);
  sub_1E3743538(*(a1 + 48), a2 + v8[32], &qword_1ECF3C4E0, &qword_1E42DD818);
  v19 = v8[36];
  v20 = *(a1 + 56);
  memcpy(__dst, v20, 0x5AuLL);
  memmove((a2 + v19), v20, 0x5AuLL);

  sub_1E3F17474(v12);
  sub_1E3743538(v24, v23, &qword_1ECF3C510, &qword_1E42DD850);
  return sub_1E3743538(__dst, v23, &qword_1ECF3C508, &qword_1E42DD848);
}

uint64_t sub_1E3F10430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  *a2 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C598, &qword_1E42DD8D8);
  sub_1E3743538(*(a1 + 8), a2 + v9[12], &qword_1ECF3C4F8, &qword_1E42DD830);
  sub_1E3743538(*(a1 + 16), a2 + v9[16], &qword_1ECF3C4F0, &qword_1E42DD828);
  sub_1E3743538(*(a1 + 24), a2 + v9[20], &qword_1ECF3C4E8, &qword_1E42DD820);
  sub_1E3743538(*(a1 + 32), a2 + v9[24], &qword_1ECF3C4E0, &qword_1E42DD818);
  v10 = v9[28];
  v11 = *(a1 + 40);
  memcpy(__dst, v11, 0x5AuLL);
  memmove((a2 + v10), v11, 0x5AuLL);

  return sub_1E3743538(__dst, &v13, &qword_1ECF3C508, &qword_1E42DD848);
}

void sub_1E3F105B0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C610, &qword_1E42DDA28);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C618, &qword_1E42DDA30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C620, &qword_1E42DDA38);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_5();
  v17 = sub_1E38D5E2C(v6, v4 & 1);
  v18 = *v8;
  if (v17)
  {
    v19 = (*(v18 + 744))();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C628, &qword_1E42DDA40);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_69_28();
    v25 = sub_1E374AD40(v21, v22, v23, v24);
    sub_1E39B87A4(v19, v20, v25);

    (*(v15 + 16))(v0, v2, v13);
    OUTLINED_FUNCTION_35_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_16();
    swift_getOpaqueTypeConformance2();
    *&v32[0] = v20;
    *(&v32[0] + 1) = v25;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
    (*(v15 + 8))(v2, v13);
  }

  else
  {
    v26 = (*(v18 + 792))();
    memset(v32, 0, sizeof(v32));
    v33 = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C628, &qword_1E42DDA40);
    OUTLINED_FUNCTION_1_11();
    v30 = sub_1E374AD40(v28, &qword_1ECF3C628, &qword_1E42DDA40, v29);
    sub_1E3A6929C(v26, 0, 0, 1, v32, v27, v30);
    (*(v10 + 16))(v0, v1, v31);
    OUTLINED_FUNCTION_35_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_16();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
    (*(v10 + 8))(v1, v31);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F1094C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v56 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C460, &qword_1E42DD720);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v48 - v5);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C468, &qword_1E42DD728);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C470, &qword_1E42DD730);
  OUTLINED_FUNCTION_0_10();
  v54 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  *v6 = sub_1E4203DA4();
  v6[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C478, &qword_1E42DD738);
  v49 = v6;
  sub_1E3F10E54();
  v13 = *(*v1 + 200);
  *&v14 = COERCE_DOUBLE(v13());
  v16 = v15;
  *&v17 = COERCE_DOUBLE(v13());
  v19 = v18;
  v20 = *(*v1 + 304);
  v21 = v20();
  v22 = OUTLINED_FUNCTION_70_27(v21);
  v57 = v23;
  *&v58 = COERCE_DOUBLE((v20)(v22));
  v25 = v24;
  *&v26 = COERCE_DOUBLE(v20());
  v28 = v27;
  sub_1E4203DA4();
  v50 = v14;
  v29 = *&v14;
  if (v16)
  {
    v29 = -INFINITY;
  }

  v48[1] = v17;
  v30 = *&v17;
  if (v19)
  {
    v30 = v29;
  }

  if (v29 > v30)
  {
    goto LABEL_17;
  }

  v31 = v59;
  if (v57)
  {
    v31 = -INFINITY;
  }

  v32 = *&v58;
  if (v25)
  {
    v32 = v31;
  }

  v33 = *&v26;
  if (v28)
  {
    v33 = v32;
  }

  if (v31 > v32 || v32 > v33)
  {
LABEL_17:
    v35 = sub_1E4206804();
    v36 = sub_1E42026D4();
    OUTLINED_FUNCTION_108(v35, &dword_1E323F000, v36, "Contradictory frame constraints specified.");
  }

  sub_1E42015C4();
  v37 = v51;
  sub_1E3741EA0(v49, v51, &qword_1ECF3C460, &qword_1E42DD720);
  v38 = memcpy((v37 + *(v52 + 36)), v60, 0x70uLL);
  (*(*v1 + 552))(v61, v38);
  if ((v62 & 1) == 0)
  {
    sub_1E3952BE8(v61[0], v61[1], v61[2], v61[3]);
  }

  sub_1E3F17188();
  v39 = v53;
  sub_1E3E361E8();
  v40 = sub_1E325F69C(v37, &qword_1ECF3C468);
  (*(*v1 + 152))(v63, v40);
  if (v64)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v43.n128_u64[0] = v63[2];
    v44.n128_u64[0] = v63[3];
    v41.n128_u64[0] = v63[0];
    v42.n128_u64[0] = v63[1];
    j_nullsub_1(v41, v42, v43, v44);
  }

  OUTLINED_FUNCTION_3();
  v45 = sub_1E4202734();
  v46 = v56;
  (*(v54 + 32))(v56, v39, v55);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C490, &unk_1E42DD740) + 36));
  *v47 = v45;
  OUTLINED_FUNCTION_11_4(v47);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F10E54()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  v16 = sub_1E42036E4();
  KeyPath = swift_getKeyPath();
  memset(v21, 0, sizeof(v21));
  v22 = 1;

  sub_1E382A9B4(v3, v21, v1, v15);
  v18 = *(v8 + 16);
  v18(v12, v15, v6);
  *v5 = v16;
  *(v5 + 8) = 256;
  *(v5 + 16) = v1;
  *(v5 + 24) = KeyPath;
  *(v5 + 32) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C498, &unk_1E42DD780);
  v18((v5 + *(v19 + 48)), v12, v6);

  sub_1E3F17240(KeyPath, 0);
  v20 = *(v8 + 8);
  v20(v15, v6);
  v20(v12, v6);

  sub_1E38D5FEC(KeyPath, 0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F11040(char a1)
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 440))();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E32AE9B0(v2);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v12[3] = &unk_1F5D5D528;
      v12[4] = &off_1F5D5C858;
      LOBYTE(v12[0]) = 11;
      sub_1E3E07E10(v6, v7, v8);
      sub_1E39C2B80();
      v9 = __swift_destroy_boxed_opaque_existential_1(v12);
      if (v13 != 3)
      {
        LOBYTE(v12[0]) = v13;
        sub_1E3858078(v9, v10, v11);
        if (sub_1E4205E84())
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_1E3F111C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 464))();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1E32AE9B0(v11);
  if (!v12)
  {
LABEL_63:

    v48 = type metadata accessor for SportsCanonicalBannerView(0);
    v59 = *(v1 + *(v48 + 60));
    MEMORY[0x1EEE9AC00](v48);
    *(&v49 - 2) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420, &qword_1E429AFA0);
    sub_1E4148DE0(sub_1E3F176D4);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v14 = v12;
  v15 = 0;
  v57 = v11 + 32;
  v58 = v11 & 0xFFFFFFFFFFFFFF8;
  v52 = (v4 + 16);
  v50 = v0 + 8;
  v51 = (v4 + 8);
  v16 = v11 & 0xC000000000000001;
  *&v13 = 136315138;
  v49 = v13;
  v55 = v11;
  v56 = v11 & 0xC000000000000001;
  v53 = v8;
  v54 = v2;
  while (1)
  {
    if (v16)
    {
      v17 = MEMORY[0x1E6911E60](v15, v11);
      v20 = v17;
    }

    else
    {
      if (v15 >= *(v58 + 16))
      {
        goto LABEL_65;
      }

      v20 = *(v57 + 8 * v15);
    }

    if (__OFADD__(v15++, 1))
    {
      break;
    }

    v22 = v20[49];
    if ((v22 - 53) >= 4)
    {
      switch(v22)
      {
        case 3:
          if (*v20 != _TtC8VideosUI13TextViewModel)
          {

            v20 = 0;
          }

          v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 84);
          goto LABEL_25;
        case 4:
          if (*v20 != _TtC8VideosUI13TextViewModel)
          {

            v20 = 0;
          }

          v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 76);
          goto LABEL_25;
        case 11:
          if (*v20 != _TtC8VideosUI13TextViewModel)
          {

            v20 = 0;
          }

          v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 44);
          goto LABEL_25;
        case 15:
          if (*v20 != _TtC8VideosUI13TextViewModel)
          {

            v20 = 0;
          }

          v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 68);
          goto LABEL_25;
        case 17:
          if (*v20 != _TtC8VideosUI13TextViewModel)
          {

            v20 = 0;
          }

          v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 80);
          goto LABEL_25;
        case 23:
          if (*v20 != _TtC8VideosUI13TextViewModel)
          {

            v20 = 0;
          }

          v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 72);
          goto LABEL_25;
      }

      if (v22 != 50)
      {
        if (v22 == 91)
        {
          v29 = (*(*v20 + 464))(v17, v18);

          v30 = *(type metadata accessor for SportsCanonicalBannerView(0) + 48);
        }

        else
        {
          if (v22 != 241)
          {
            if (v22 == 234)
            {
              type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
              v23 = swift_dynamicCastClass();
              if (v23)
              {
                v24 = v23;
                v25 = *(type metadata accessor for SportsCanonicalBannerView(0) + 60);

                *(v1 + v25) = v24;
                v26 = *(*v24 + 1936);

                v26(v27);
                v11 = v55;
              }

              else
              {
                v47 = *(type metadata accessor for SportsCanonicalBannerView(0) + 60);

                *(v1 + v47) = 0;
              }
            }

            else
            {
              if (_MergedGlobals_251 != -1)
              {
                OUTLINED_FUNCTION_27_82();
                v17 = swift_once();
              }

              v31 = qword_1EE28C7C8;
              LOWORD(v59) = v22;
              if (*(qword_1EE28C7C8 + 16))
              {
                v32 = *(qword_1EE28C7C8 + 40);
                sub_1E37414E0(v17, v18, v19);
                sub_1E4205DA4();
                OUTLINED_FUNCTION_60_32();
                while (1)
                {
                  v36 = v33 & v2;
                  if (((*(v32 + (((v33 & v2) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v2)) & 1) == 0)
                  {
                    break;
                  }

                  v60 = *(*(v31 + 48) + 2 * v36);
                  sub_1E3741534(v33, v34, v35);
                  v37 = sub_1E4205E84();
                  v33 = v36 + 1;
                  if (v37)
                  {

                    goto LABEL_59;
                  }
                }
              }

              v38 = sub_1E3E37F30();
              v39 = v53;
              v2 = v54;
              (*v52)(v53, v38, v54);

              v40 = sub_1E41FFC94();
              v41 = sub_1E4206814();

              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                OUTLINED_FUNCTION_78_20(v43);
                v46 = sub_1E3270FC8(v44, v45, &v59);

                *(v42 + 4) = v46;
                v2 = v54;
                _os_log_impl(&dword_1E323F000, v40, v41, "SportsCanonicalBannerView: unhandled view model type [%s]", v42, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v43);
                v39 = v53;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              (*v51)(v39, v2);
LABEL_59:
              v11 = v55;
            }

            goto LABEL_61;
          }

          type metadata accessor for SportStatsViewModel(0);
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
          }

          v30 = *(type metadata accessor for SportsCanonicalBannerView(0) + 64);
        }

        *(v1 + v30) = v29;
LABEL_61:
        v16 = v56;
        goto LABEL_62;
      }
    }

    v28 = *(type metadata accessor for SportsCanonicalBannerView(0) + 40);
LABEL_25:

    *(v1 + v28) = v20;
LABEL_62:
    if (v15 == v14)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

unint64_t sub_1E3F11958()
{
  result = qword_1ECF3C318;
  if (!qword_1ECF3C318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C310, &qword_1E42DD330);
    sub_1E3F119E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C318);
  }

  return result;
}

unint64_t sub_1E3F119E4()
{
  result = qword_1ECF3C320;
  if (!qword_1ECF3C320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C308, &qword_1E42DD328);
    sub_1E3F11A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C320);
  }

  return result;
}

unint64_t sub_1E3F11A70()
{
  result = qword_1ECF3C328;
  if (!qword_1ECF3C328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C300, &qword_1E42DD320);
    sub_1E374AD40(&qword_1ECF3C330, &qword_1ECF3C2F8, &qword_1E42DD318, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C328);
  }

  return result;
}

double sub_1E3F11B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C8, &qword_1E42DD940);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  (*(v8 + 1640))();
  sub_1E374AD40(&qword_1ECF3C600, &qword_1ECF2B4C8, &qword_1E42DD940, MEMORY[0x1E695C068]);
  v9 = sub_1E42006B4();
  (*(v6 + 8))(v2, v4);
  if (*(a2 + *(type metadata accessor for SportsCanonicalBannerView(0) + 64)))
  {
    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 1120);

    v11(v9);
  }

  return result;
}

void sub_1E3F11CC0()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v0;
  v58 = v6;
  v7 = type metadata accessor for SportsCanonicalBannerView(0);
  OUTLINED_FUNCTION_0_10();
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v56 = v10;
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C348, &qword_1E42DD350);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C350, &qword_1E42DD358);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C358, &qword_1E42DD360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C360, &qword_1E42DD368);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  sub_1E3F12158();
  OUTLINED_FUNCTION_36();
  v20 = (*(v19 + 1576))();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 vuiUserInterfaceStyle];

    sub_1E3C5F680(v22, v4);
  }

  else
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  sub_1E3741EA0(v4, v1 + *(v15 + 36), &qword_1ECF33D80, &qword_1E42BD8B0);
  v27 = OUTLINED_FUNCTION_125();
  sub_1E3741EA0(v27, v28, v29, v30);
  if (sub_1E39C408C())
  {

    sub_1E3D3E4DC(&v60);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v31 + 152))(&v60);
  }

  v33 = v62;
  v32 = v63;
  v35 = v60;
  v34 = v61;
  v59 = v64;
  if (v64)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v36 = v5 + *(v7 + 56);
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v60) = v37;
    v61 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8, &qword_1E42DD7A0);
    sub_1E42038F4();
    if (v65)
    {
      v41.n128_f64[0] = 0.0;
    }

    else
    {
      v41.n128_f64[0] = v33;
    }

    v39.n128_u64[0] = v35;
    v40.n128_u64[0] = v34;
    v42.n128_u64[0] = v32;
    j_nullsub_1(v39, v40, v41, v42);
  }

  OUTLINED_FUNCTION_3();
  v43 = sub_1E4202734();
  sub_1E3741EA0(v1, v3, &qword_1ECF3C350, &qword_1E42DD358);
  v44 = (v3 + *(v53 + 36));
  *v44 = v43;
  OUTLINED_FUNCTION_11_4(v44);
  v45 = v5;
  v46 = v57;
  sub_1E3F161CC(v45, v57);
  v47 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v48 = swift_allocObject();
  sub_1E3F16230(v46, v48 + v47);
  sub_1E3741EA0(v3, v2, &qword_1ECF3C358, &qword_1E42DD360);
  v49 = (v2 + *(v54 + 36));
  *v49 = sub_1E3F16294;
  v49[1] = v48;
  v50 = sub_1E42013E4();
  LOBYTE(v47) = sub_1E4202734();
  v51 = v58;
  sub_1E3741EA0(v2, v58, &qword_1ECF3C360, &qword_1E42DD368);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C368, qword_1E42DD370) + 36);
  *v52 = v50;
  *(v52 + 8) = v47;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F12158()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v70 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4A0, &qword_1E42DD7A8);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C440, &qword_1E42DD670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_3();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C420, &qword_1E42DD660);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_5();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4A8, &qword_1E42DD7B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v68 = v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4B0, &qword_1E42DD7B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C3F0, &qword_1E42DD640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C400, &qword_1E42DD648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49_2();
  v23 = *(v5 + *(type metadata accessor for SportsCanonicalBannerView(0) + 92) + 8);
  OUTLINED_FUNCTION_5_0(v23 + 120, &v71);
  v24 = *(v23 + 120);
  if (v24 == 3)
  {
    *v3 = sub_1E4201B84();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v38 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4B8, &qword_1E42DD7C0) + 44);
    *v14 = sub_1E4201D54();
    *(v14 + 1) = 0;
    v14[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4C0, &qword_1E42DD7C8);
    sub_1E3F142A0();
    OUTLINED_FUNCTION_81_24(v14, v11);
    OUTLINED_FUNCTION_81_24(v11, v38);
    v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4C8, &qword_1E42DD7D0) + 48);
    *v39 = 0;
    *(v39 + 8) = 0;
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v40, v41);
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v42, v43);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v44, v45, v46, v47);
    swift_storeEnumTagMultiPayload();
    sub_1E3F16F0C();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E374AD40(v48, v49, v50, v51);
    OUTLINED_FUNCTION_33_74();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
  }

  else
  {
    if (v24 == 2)
    {
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4D8, &qword_1E42DD810);
      sub_1E3F127B0();
      v25 = (v1 + *(v21 + 36));
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
      v27 = *MEMORY[0x1E697DBA8];
      sub_1E4200B44();
      OUTLINED_FUNCTION_2();
      (*(v28 + 104))(v25 + v26, v27);
      *v25 = swift_getKeyPath();
      v29 = &qword_1ECF3C400;
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v30, v31, v32, &qword_1E42DD648);
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F98();
      sub_1E3F1707C();
      OUTLINED_FUNCTION_72_28();
      sub_1E4201F44();
      OUTLINED_FUNCTION_66_34();
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F0C();
      OUTLINED_FUNCTION_9_0();
      sub_1E374AD40(v33, v34, v35, v36);
      OUTLINED_FUNCTION_33_74();
      sub_1E4201F44();
      sub_1E325F69C(v0, &qword_1ECF3C3F0);
      v37 = v1;
    }

    else
    {
      *v2 = *sub_1E3E77EE8();
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4D0, &qword_1E42DD7D8);
      sub_1E3F14A48();
      v53 = (v2 + *(v65 + 36));
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
      v55 = *MEMORY[0x1E697DBA8];
      sub_1E4200B44();
      OUTLINED_FUNCTION_2();
      (*(v56 + 104))(v53 + v54, v55);
      *v53 = swift_getKeyPath();
      v29 = &qword_1ECF3C420;
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v57, v58, v59, &qword_1E42DD660);
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F98();
      sub_1E3F1707C();
      OUTLINED_FUNCTION_72_28();
      sub_1E4201F44();
      OUTLINED_FUNCTION_66_34();
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F0C();
      OUTLINED_FUNCTION_9_0();
      sub_1E374AD40(v60, v61, v62, v63);
      OUTLINED_FUNCTION_33_74();
      sub_1E4201F44();
      sub_1E325F69C(v0, &qword_1ECF3C3F0);
      v37 = v2;
    }

    v52 = v29;
  }

  sub_1E325F69C(v37, v52);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F127B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v65 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E0, &qword_1E42DD818);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v67 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v64 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E8, &qword_1E42DD820);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v66 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v63 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F0, &qword_1E42DD828);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v73 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v71 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F8, &qword_1E42DD830);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v72 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v74 = v26;
  v27 = type metadata accessor for SportsCanonicalBannerView(0);
  v28 = *(v2 + *(v27 + 60));
  if (v28 && ((*(*v28 + 1152))() & 1) != 0)
  {
    v60 = 0;
    v61 = 0;
    v69 = 0;
    v70 = 0;
    v62 = 0;
    v68 = 0;
  }

  else
  {
    v29 = *(v2 + *(v27 + 92) + 8);
    OUTLINED_FUNCTION_58_35();
    v30 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
    OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter, &v94);
    v31 = *(v0 + v30);
    OUTLINED_FUNCTION_5_0(v29 + 264, &v93);
    v32 = *(v29 + 264);

    OUTLINED_FUNCTION_69_28();
    sub_1E385EB44(v33, v34, v35, v31, v32, 1, v36);
    v37 = v96;
    v68 = v100;
    v60 = v95;
    v61 = v98;
    v103 = v97;
    v104[0] = v95;
    v62 = v97;
    v101 = v99;
    v102 = v98;
    v69 = v99;
    sub_1E3743538(v104, v90, &qword_1ECF29420, &qword_1E429AFA0);
    v70 = v37;

    sub_1E3743538(&v103, v90, &qword_1ECF2BB28, &qword_1E42A2A60);
    sub_1E3743538(&v102, v90, &qword_1ECF3C500, &unk_1E42DD838);
    sub_1E3743538(&v101, v90, &qword_1ECF30B28, &unk_1E42B2C80);
  }

  sub_1E3F12EA0();
  if (!v28)
  {
    goto LABEL_9;
  }

  v38 = *(*v28 + 1152);
  v39 = *v28 + 1152;

  if ((v38(v40) & 1) == 0)
  {

LABEL_9:
    v47 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_58_35();
  v41 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  OUTLINED_FUNCTION_5_0(v39 + OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter, &v75);
  v42 = *(v39 + v41);

  OUTLINED_FUNCTION_69_28();
  sub_1E385D788(v43, v44, v45, v42, v46);
  v47 = 0;
LABEL_10:
  v48 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  __swift_storeEnumTagSinglePayload(v19, v47, 1, v48);
  v49 = v71;
  sub_1E3741EA0(v19, v71, &qword_1ECF3C4F0, &qword_1E42DD828);
  v50 = *(v2 + *(v27 + 92) + 8);
  sub_1E3F13240(v87);
  v51 = v63;
  sub_1E3F13498();
  v52 = v64;
  sub_1E3F13A60();
  sub_1E3F13F3C(v50, v89);
  v53 = v60;
  v80 = v60;
  v81 = v70;
  v82 = v62;
  v83 = v61;
  v84 = v69;
  v85 = v68;
  v86[0] = &v80;
  v54 = v72;
  sub_1E3743538(v74, v72, &qword_1ECF3C4F8, &qword_1E42DD830);
  v86[1] = v54;
  v55 = v73;
  sub_1E3743538(v49, v73, &qword_1ECF3C4F0, &qword_1E42DD828);
  v77 = v87[0];
  v78 = v87[1];
  v79[0] = v88[0];
  *(v79 + 11) = *(v88 + 11);
  v86[2] = v55;
  v86[3] = &v77;
  v56 = v66;
  sub_1E3743538(v51, v66, &qword_1ECF3C4E8, &qword_1E42DD820);
  v86[4] = v56;
  v57 = v67;
  sub_1E3743538(v52, v67, &qword_1ECF3C4E0, &qword_1E42DD818);
  v86[5] = v57;
  memcpy(v76, v89, 0x5AuLL);
  v86[6] = v76;
  sub_1E3F10098(v86, v65);
  sub_1E3F1724C(v53, v70);
  sub_1E325F69C(v52, &qword_1ECF3C4E0);
  sub_1E325F69C(v51, &qword_1ECF3C4E8);
  sub_1E325F69C(v71, &qword_1ECF3C4F0);
  sub_1E325F69C(v74, &qword_1ECF3C4F8);
  memcpy(v90, v76, 0x5AuLL);
  sub_1E325F69C(v90, &qword_1ECF3C508);
  sub_1E325F69C(v57, &qword_1ECF3C4E0);
  v58 = OUTLINED_FUNCTION_35_4();
  sub_1E325F69C(v58, v59);
  v91[0] = v77;
  v91[1] = v78;
  v92[0] = v79[0];
  *(v92 + 11) = *(v79 + 11);
  sub_1E325F69C(v91, &qword_1ECF3C510);
  sub_1E325F69C(v73, &qword_1ECF3C4F0);
  sub_1E325F69C(v72, &qword_1ECF3C4F8);
  sub_1E3F1724C(v80, v81);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F12EA0()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C558, &unk_1E42DD898);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v43 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B098, &qword_1E42D9990);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v42 = v19;
  v20 = type metadata accessor for SportsCanonicalBannerView(0);
  if (!*(v0 + *(v20 + 72)))
  {
LABEL_5:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    return;
  }

  v41 = v8;
  if (*(v0 + *(v20 + 60)))
  {
    OUTLINED_FUNCTION_8();
    v22 = *(v21 + 1152);

    if (v22(v23))
    {

      goto LABEL_5;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  (*(v6 + 8))(v1, v4);
  v29 = sub_1E4202744();
  v30 = sub_1E4202774();
  sub_1E4202774();
  v31 = sub_1E4202774();
  if (v31 != v29)
  {
    v31 = sub_1E4202774();
    v30 = v31;
  }

  if (sub_1E3C27528(v31, v32))
  {
    OUTLINED_FUNCTION_26_0();
    (*(v33 + 152))(&v44);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  (*(v10 + 32))(v17, v43, v41);
  v34 = (v17 + *(v13 + 36));
  *v34 = v30;
  OUTLINED_FUNCTION_11_4(v34);
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v35, v36, v37, &qword_1E42D9990);
  sub_1E3741EA0(v42, v3, &qword_1ECF3B098, &qword_1E42D9990);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v13);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F13240(uint64_t a1@<X8>)
{
  type metadata accessor for SportsCanonicalBannerView(0);
  LOBYTE(v33[0]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 776))(v34, v33, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (!v35)
  {
    sub_1E325F69C(v34, &unk_1ECF296E0);
LABEL_7:
    v13 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0uLL;
    v29 = 0uLL;
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = v33[0];
  v4 = v33[1];
  v5 = sub_1E3285D14();
  v6 = *((*MEMORY[0x1E69E7D40] & **v5) + 0x110);
  v7 = *v5;
  v8 = v6(v3, v4);

  if (!v8)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 456);
  v11 = v8;
  v10();
  sub_1E3C11690();
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_8();
  (*(v16 + 152))(v34);
  if (v36)
  {
    *&v21 = OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v19.n128_u64[0] = v34[2];
    v20.n128_u64[0] = v35;
    v17.n128_u64[0] = v34[0];
    v18.n128_u64[0] = v34[1];
    *&v21 = j_nullsub_1(v17, v18, v19, v20);
  }

  *(&v21 + 1) = v22;
  *(&v23 + 1) = v24;
  v31 = v23;
  v32 = v21;
  v30 = sub_1E4202734();

  v29 = v31;
  v28 = v32;
  v25 = 0x10000;
  v27 = v15 & 0xFF01;
  v26 = v30;
LABEL_8:
  *a1 = v13;
  *(a1 + 8) = v27;
  *(a1 + 16) = v26;
  *(a1 + 24) = v28;
  *(a1 + 40) = v29;
  *(a1 + 56) = v25;
  *(a1 + 58) = BYTE2(v25);
}

void sub_1E3F13498()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v5;
  v8 = v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C528, &qword_1E42DD870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C530, &qword_1E42DD878);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C538, &unk_1E42DD880);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_2();
  v16 = (*(*v6 + 552))();
  if (!v16)
  {
    v61 = 0u;
    v62 = 0u;
    goto LABEL_8;
  }

  v59 = v12;
  *(&v64 + 1) = &unk_1F5D7BE68;
  *&v65 = &off_1F5D7BC48;
  LOBYTE(v63) = 6;
  sub_1E3F9F164(&v63, v16, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (!*(&v62 + 1))
  {
LABEL_8:
    sub_1E325F69C(&v61, &unk_1ECF296E0);
LABEL_9:
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v14);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(v63 + 16);

  if (!v17)
  {
    goto LABEL_9;
  }

  v58 = v8;
  v57 = v10;
  if (sub_1E39C408C())
  {

    v21 = sub_1E3D3D2A8(v19, v20);
  }

  else
  {
    v21 = sub_1E3D3D23C(0, v18);
  }

  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF10, &qword_1E42AB000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v27;

  v28 = v25;
  sub_1E32ABF64();
  OUTLINED_FUNCTION_8();
  v30 = *(v29 + 96);

  LOBYTE(v30) = v30(v31);

  LOBYTE(v63) = v30 & 1;
  sub_1E4207414();
  v56 = sub_1E4205CB4();
  type metadata accessor for SportsCanonicalBannerView(0);
  type metadata accessor for ViewRepresentableProperties(0);
  sub_1E3F174F4(&qword_1EE24D450, type metadata accessor for ViewRepresentableProperties, &unk_1E42BD340);
  v32 = sub_1E4200BC4();
  sub_1E3820C20(v6, v28, v56, v32, 47, v2);
  sub_1E4203DB4();
  sub_1E4200D94();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C540, &qword_1E42DD890);
  v34 = (v2 + *(v33 + 36));
  v35 = v64;
  v36 = v65;
  *v34 = v63;
  v34[1] = v35;
  v34[2] = v36;
  v38 = sub_1E3D3D23C(v33, v37);
  [v38 margin];
  OUTLINED_FUNCTION_3();

  v39.n128_f64[0] = OUTLINED_FUNCTION_17_4();
  v40.n128_u64[0] = v3;
  v41.n128_u64[0] = v4;
  j_nullsub_1(v39, v42, v40, v41);
  OUTLINED_FUNCTION_3();
  v43 = sub_1E4202734();
  v44 = (v2 + *(v60 + 36));
  *v44 = v43;
  OUTLINED_FUNCTION_11_4(v44);
  v45 = sub_1E3F1732C();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  v46 = sub_1E325F69C(v2, &qword_1ECF3C528);
  v48 = sub_1E3D3D23C(v46, v47);
  v49 = [v48 shadow];

  *&v61 = v60;
  *(&v61 + 1) = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3C42EB4(v49, 0, v57, OpaqueTypeConformance2, v1);

  (*(v59 + 8))(v0, v57);
  v51 = v6[3];
  v52 = (v1 + *(v14 + 52));
  *v52 = v6[2];
  v52[1] = v51;
  sub_1E3741EA0(v1, v58, &qword_1ECF3C538, &unk_1E42DD880);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v14);

LABEL_10:
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F13A60()
{
  OUTLINED_FUNCTION_9_4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29880, &qword_1E42DD860);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C520, &qword_1E42DD868);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = type metadata accessor for SportsCanonicalBannerView(0);
  v15 = *sub_1E3D3D9F0();
  v16 = (*(v15 + 1976))();

  if (v16 == 5)
  {
    v17 = sub_1E4203DB4();
  }

  else
  {
    v17 = sub_1E4203DA4();
  }

  if (*(v0 + *(v14 + 84)))
  {
    OUTLINED_FUNCTION_70_27(v17);

    sub_1E3D3D9F0();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E3D3D9F0();
    OUTLINED_FUNCTION_26_0();
    (*(v18 + 152))(v56);
    v19 = v56[2];
    v20 = v56[3];

    if (v57)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v26.n128_f64[0] = OUTLINED_FUNCTION_17_4();
      v27.n128_u64[0] = v19;
      v28.n128_u64[0] = v20;
      j_nullsub_1(v26, v29, v27, v28);
    }

    OUTLINED_FUNCTION_3();
    v30 = sub_1E4202734();
    (*(v6 + 32))(v1, v4, v53);
    v31 = (v1 + *(v8 + 36));
    *v31 = v30;
    OUTLINED_FUNCTION_11_4(v31);
    sub_1E3D3D9F0();
    OUTLINED_FUNCTION_26_0();
    v33 = (*(v32 + 248))();

    v34 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1(v34, v35, v36, v37, v33, v38, v39, v40, v52);

    sub_1E3741EA0(v1, v2, &qword_1ECF28CC0, &qword_1E4298440);
    memcpy((v2 + *(v54 + 36)), v58, 0x70uLL);
    sub_1E3741EA0(v2, v3, &qword_1ECF29880, &qword_1E42DD860);
    *(v3 + *(v55 + 36)) = 0x4000000000000000;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v41, v42, v43, v44);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v45, v46, v47, v48);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v55);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

uint64_t sub_1E3F13F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = type metadata accessor for SportsCanonicalBannerView(0);
  v37 = result;
  v7 = *(v2 + *(result + 48));
  if (!v7)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
LABEL_27:
    *a2 = v23;
    *(a2 + 16) = v24;
    *(a2 + 32) = v25;
    *(a2 + 48) = v26;
    *(a2 + 64) = v27;
    *(a2 + 80) = v21;
    *(a2 + 88) = v22;
    return result;
  }

  result = OUTLINED_FUNCTION_5_0(a1 + 120, v38);
  v8 = *(a1 + 120);
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 3);
  }

  *&v41[0] = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    result = sub_1E4207384();
    v10 = result;
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v9;
  if (!v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v28 = *(a1 + 144);
    v29 = *(*a1 + 152);

    v29(v39, v30);
    v31 = v40 & 1;
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v39[2];
    }

    v33 = *(v3 + *(v37 + 44));

    sub_1E3E76734(v20, v28, v36, v32, v31, v33, 0, v41);
    result = sub_1E3D3CD34(*(a1 + 120));
    v23 = v41[0];
    v24 = v41[1];
    v25 = v41[2];
    v26 = v41[3];
    v27 = v41[4];
    v22 = result & 1;
    v21 = v42;
    goto LABEL_27;
  }

  if (v10 >= 1)
  {
    v34 = a1;
    v35 = a2;
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      if ((*(*v12 + 392))())
      {
        type metadata accessor for ButtonLayout();
        OUTLINED_FUNCTION_40_3();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = *(v2 + 8 + *(v37 + 92));
          v15 = OUTLINED_FUNCTION_5_0(v14 + 120, v44);
          LOBYTE(v39[0]) = *(v14 + 120);
          v43 = 3;
          sub_1E392EDD8(v15, v16, v17);

          v18 = sub_1E4205E84();
          (*(*v13 + 2360))((v18 & 1) == 0);
        }
      }

      MEMORY[0x1E6910BF0](v19);
      if (*((*&v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      ++v11;
      sub_1E4206324();
    }

    while (v10 != v11);
    v20 = *&v41[0];
    a1 = v34;
    a2 = v35;
    v3 = v2;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_1E3F142A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E0, &qword_1E42DD818);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v70 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v67 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E8, &qword_1E42DD820);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v68 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v66 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F0, &qword_1E42DD828);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v72 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  *&v64 = &v58 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v65 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F8, &qword_1E42DD830);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v71 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77_0();
  v25 = type metadata accessor for SportsCanonicalBannerView(0);
  v26 = *(v2 + v25[15]);
  v27 = *(v2 + v25[23] + 8);
  v28 = *(v2 + v25[10]);
  v63 = v25;
  v29 = *(v2 + v25[7] + 8);
  v30 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  OUTLINED_FUNCTION_5_0(v29 + OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter, v89);
  v59 = v30;
  v60 = v29;
  v31 = *(v29 + v30);
  OUTLINED_FUNCTION_5_0(v27 + 264, &v88);
  v32 = *(v27 + 264);

  swift_retain_n();

  v33 = 1;
  v34 = OUTLINED_FUNCTION_20_13();
  v61 = v28;
  sub_1E385EB44(v34, v35, v28, v31, v32, 1, v36);
  v62 = v0;
  sub_1E3F12EA0();
  if (!v26)
  {
    goto LABEL_5;
  }

  if (((*(*v26 + 1152))() & 1) == 0)
  {

LABEL_5:
    v39 = v64;
    goto LABEL_6;
  }

  v37 = *(v60 + v59);
  v38 = v61;

  v39 = v64;
  v40 = OUTLINED_FUNCTION_20_13();
  sub_1E385D788(v40, v41, v38, v37, v42);
  v33 = 0;
LABEL_6:
  v43 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  __swift_storeEnumTagSinglePayload(v39, v33, 1, v43);
  v44 = v65;
  sub_1E3741EA0(v39, v65, &qword_1ECF3C4F0, &qword_1E42DD828);
  sub_1E3F148B4(v85);
  v64 = v85[0];
  v45 = *&v85[1];
  sub_1E3F13240(v82);
  v46 = v66;
  sub_1E3F13498();
  v47 = v67;
  sub_1E3F13A60();
  sub_1E3F13F3C(v27, v84);
  v79 = *&v89[24];
  v80[0] = v90[0];
  *(v80 + 9) = *(v90 + 9);
  v81[0] = &v79;
  v48 = v62;
  v49 = v71;
  sub_1E3743538(v62, v71, &qword_1ECF3C4F8, &qword_1E42DD830);
  v81[1] = v49;
  v50 = v72;
  sub_1E3743538(v44, v72, &qword_1ECF3C4F0, &qword_1E42DD828);
  v77 = v64;
  v78 = v45;
  v81[2] = v50;
  v81[3] = &v77;
  v74 = v82[0];
  v75 = v82[1];
  v76[0] = v83[0];
  *(v76 + 11) = *(v83 + 11);
  v81[4] = &v74;
  v51 = v68;
  sub_1E3743538(v46, v68, &qword_1ECF3C4E8, &qword_1E42DD820);
  v81[5] = v51;
  v52 = v70;
  OUTLINED_FUNCTION_112_1();
  sub_1E3743538(v53, v54, v55, &qword_1E42DD818);
  v81[6] = v52;
  memcpy(v73, v84, 0x5AuLL);
  v81[7] = v73;
  sub_1E3F10248(v81, v69);
  sub_1E325F69C(v47, &qword_1ECF3C4E0);
  sub_1E325F69C(v46, &qword_1ECF3C4E8);
  sub_1E325F69C(v44, &qword_1ECF3C4F0);
  sub_1E325F69C(v48, &qword_1ECF3C4F8);
  memcpy(v85, v73, 0x5AuLL);
  sub_1E325F69C(v85, &qword_1ECF3C508);
  v56 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v56, v57);
  sub_1E325F69C(v51, &qword_1ECF3C4E8);
  v86[0] = v74;
  v86[1] = v75;
  v87[0] = v76[0];
  *(v87 + 11) = *(v76 + 11);
  sub_1E325F69C(v86, &qword_1ECF3C510);
  sub_1E3F174B4(v77);
  sub_1E325F69C(v72, &qword_1ECF3C4F0);
  sub_1E325F69C(v71, &qword_1ECF3C4F8);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F148B4(void *a1@<X8>)
{
  v3 = type metadata accessor for SportsCanonicalBannerView(0);
  v4 = *(v1 + *(v3 + 64));
  if (!v4)
  {
    goto LABEL_9;
  }

  if (!*(v1 + *(v3 + 60)))
  {
LABEL_8:
    v4 = 0;
LABEL_9:
    v10 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1088);

  if ((v6(v7) & 1) == 0 || (OUTLINED_FUNCTION_8(), ((*(v8 + 1208))() & 1) == 0) && (OUTLINED_FUNCTION_8(), ((*(v9 + 1216))() & 1) == 0))
  {

    goto LABEL_8;
  }

  type metadata accessor for SportStatsLayout();
  sub_1E3F174F4(&qword_1ECF38950, type metadata accessor for SportStatsLayout, &unk_1E42D12A0);

  v10 = sub_1E42010C4();
  v12 = v11;

LABEL_10:
  *a1 = v4;
  a1[1] = v10;
  a1[2] = v12;
}

void sub_1E3F14A48()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v36 = v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C560, &qword_1E42DD8A8);
  OUTLINED_FUNCTION_0_10();
  v32 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v35 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C568, &qword_1E42DD8B0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  *v13 = sub_1E4201D54();
  *(v13 + 1) = 0;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C570, &qword_1E42DD8B8);
  v30 = v13;
  sub_1E3F14EA4();
  v33 = *(*(v3 + *(type metadata accessor for SportsCanonicalBannerView(0) + 92) + 8) + 240);
  v31 = sub_1E4201D64();
  v39 = 0;
  sub_1E3F13240(v40);
  sub_1E3F148B4(v45);
  v14 = v45[0];
  v15 = *&v45[1];
  v41 = v40[0];
  v42 = v40[1];
  v43[0] = v40[2];
  *(v43 + 11) = *(&v40[2] + 11);
  *(&v37[2] + 11) = *(&v40[2] + 11);
  v37[1] = v40[1];
  v37[2] = v40[2];
  v37[0] = v40[0];
  sub_1E3743538(&v41, v45, &qword_1ECF3C510, &qword_1E42DD850);
  sub_1E3F17474(v14);
  sub_1E3F174B4(v14);
  v45[0] = v40[0];
  v45[1] = v40[1];
  v45[2] = v40[2];
  *(&v45[2] + 11) = *(&v40[2] + 11);
  sub_1E325F69C(v45, &qword_1ECF3C510);
  v40[0] = v37[0];
  v40[1] = v37[1];
  v40[2] = v37[2];
  v40[3] = v37[3];
  v40[4] = v14;
  *&v40[5] = v15;
  v43[0] = v37[2];
  v43[1] = v37[3];
  v41 = v37[0];
  v42 = v37[1];
  v43[2] = v14;
  v44 = v15;
  sub_1E3743538(v40, v45, &qword_1ECF3C578, &qword_1E42DD8C0);
  sub_1E325F69C(&v41, &qword_1ECF3C578);
  memcpy(&v38[7], v40, 0x58uLL);
  v37[0] = v31;
  LOBYTE(v37[1]) = v39;
  memcpy(&v37[1] + 1, v38, 0x5FuLL);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C580, &qword_1E42DD8C8);
  v17 = sub_1E374AD40(&qword_1ECF3C588, &qword_1ECF3C580, &qword_1E42DD8C8, MEMORY[0x1E6981870]);
  v18 = OUTLINED_FUNCTION_51_1();
  sub_1E3E77F2C(v18 & 1, v16, v17);
  memcpy(v45, v37, 0x70uLL);
  sub_1E325F69C(v45, &qword_1ECF3C580);
  v19 = v1;
  v29 = v1;
  sub_1E3743538(v13, v1, &qword_1ECF3C568, &qword_1E42DD8B0);
  v20 = v32;
  v21 = *(v32 + 16);
  v23 = v34;
  v22 = v35;
  v21(v35, v0, v34);
  v24 = v19;
  v25 = v36;
  sub_1E3743538(v24, v36, &qword_1ECF3C568, &qword_1E42DD8B0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C590, &qword_1E42DD8D0);
  v27 = v25 + *(v26 + 48);
  *v27 = v33;
  *(v27 + 8) = 0;
  v21(v25 + *(v26 + 64), v22, v23);
  v28 = *(v20 + 8);
  v28(v0, v23);
  sub_1E325F69C(v30, &qword_1ECF3C568);
  v28(v22, v23);
  sub_1E325F69C(v29, &qword_1ECF3C568);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F14EA4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v66 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E0, &qword_1E42DD818);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v68 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v65 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E8, &qword_1E42DD820);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v67 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v63 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F0, &qword_1E42DD828);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v64 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v56 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v62 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F8, &qword_1E42DD830);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v69 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77_0();
  v25 = type metadata accessor for SportsCanonicalBannerView(0);
  v26 = v25[15];
  v59 = v2;
  v27 = *(v2 + v26);
  v28 = *(v2 + v25[23] + 8);
  v29 = *(v2 + v25[10]);
  v30 = *(v2 + v25[7] + 8);
  v31 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  OUTLINED_FUNCTION_5_0(v30 + OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter, v77);
  v56 = v31;
  v57 = v30;
  v32 = *(v30 + v31);
  OUTLINED_FUNCTION_5_0(v28 + 264, &v76);
  v33 = *(v28 + 264);

  swift_retain_n();

  v34 = 1;
  v35 = OUTLINED_FUNCTION_20_13();
  v58 = v29;
  sub_1E385EB44(v35, v36, v29, v32, v33, 1, v37);
  v61 = v0;
  sub_1E3F12EA0();
  if (!v27)
  {
    goto LABEL_5;
  }

  if (((*(*v27 + 1152))() & 1) == 0)
  {

LABEL_5:
    v40 = v60;
    goto LABEL_6;
  }

  v38 = *(v57 + v56);
  v39 = v58;

  v40 = v60;
  v41 = OUTLINED_FUNCTION_20_13();
  sub_1E385D788(v41, v42, v39, v38, v43);
  v34 = 0;
LABEL_6:
  v44 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  __swift_storeEnumTagSinglePayload(v40, v34, 1, v44);
  v45 = v40;
  v46 = v62;
  sub_1E3741EA0(v45, v62, &qword_1ECF3C4F0, &qword_1E42DD828);
  v47 = v63;
  sub_1E3F13498();
  v48 = v65;
  sub_1E3F13A60();
  sub_1E3F13F3C(v28, v74);
  v71 = *&v77[24];
  v72[0] = v78[0];
  *(v72 + 9) = *(v78 + 9);
  v73[0] = &v71;
  v49 = v61;
  v50 = v69;
  sub_1E3743538(v61, v69, &qword_1ECF3C4F8, &qword_1E42DD830);
  v73[1] = v50;
  v51 = v64;
  sub_1E3743538(v46, v64, &qword_1ECF3C4F0, &qword_1E42DD828);
  v73[2] = v51;
  v52 = v67;
  sub_1E3743538(v47, v67, &qword_1ECF3C4E8, &qword_1E42DD820);
  v73[3] = v52;
  v53 = v68;
  sub_1E3743538(v48, v68, &qword_1ECF3C4E0, &qword_1E42DD818);
  v73[4] = v53;
  memcpy(v70, v74, 0x5AuLL);
  v73[5] = v70;
  sub_1E3F10430(v73, v66);
  v54 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v54, v55);
  sub_1E325F69C(v47, &qword_1ECF3C4E8);
  sub_1E325F69C(v46, &qword_1ECF3C4F0);
  sub_1E325F69C(v49, &qword_1ECF3C4F8);
  memcpy(v75, v70, 0x5AuLL);
  sub_1E325F69C(v75, &qword_1ECF3C508);
  sub_1E325F69C(v53, &qword_1ECF3C4E0);
  sub_1E325F69C(v52, &qword_1ECF3C4E8);
  sub_1E325F69C(v51, &qword_1ECF3C4F0);
  sub_1E325F69C(v69, &qword_1ECF3C4F8);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3F15438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1E3A79350();
  result = 0.0;
  if (!v7)
  {
    return *a6;
  }

  return result;
}

uint64_t sub_1E3F1547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_0_8();
  v27 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    v14 = a6[3];
    v28.origin.x = OUTLINED_FUNCTION_2_0();
    MinY = CGRectGetMinY(v28);
    result = sub_1E3A7992C();
    if (result != v16)
    {
      v17 = result;
      v18 = v16;
      if (v16 >= result)
      {
        if (result >= v16)
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (result < 0)
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v19 = *(v14 + 16);
        if (result >= v19 || v16 - 1 >= v19)
        {
          goto LABEL_20;
        }

        v21 = a6[1];
        v22 = v14 + 32;
        v23 = (v8 + 8);
        v24 = *(v21 + 16);
        v25 = (v21 + 8 * result + 32);
        while (v17 < v24)
        {
          sub_1E4201054();
          v29.origin.x = OUTLINED_FUNCTION_2_0();
          CGRectGetMidX(v29);
          sub_1E4203F34();
          sub_1E4200F04();
          result = (*v23)(v12, v27);
          v24 = *(v21 + 16);
          if (v17 >= v24)
          {
            goto LABEL_16;
          }

          v26 = *v25++;
          MinY = MinY + v26 + *(v22 + 8 * v17++);
          if (v18 == v17)
          {
            return result;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  return result;
}

void sub_1E3F15674(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1E3F15788(a1);
  v10 = v9;
  v11 = v8;
  v12 = *(v8 + 16);
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v15 = (v8 + 32);
    do
    {
      v16 = *v15++;
      v14 = v14 + v16;
      --v12;
    }

    while (v12);
  }

  v17 = sub_1E3A7992C();
  MEMORY[0x1EEE9AC00](v17);
  v24[2] = a1;
  v24[3] = a2;
  v25 = a3 & 1;
  sub_1E3A79A28(sub_1E3F16338, v24, v18, v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = (v20 + 32);
    v13 = 0.0;
    do
    {
      v23 = *v22++;
      v13 = v13 + v23;
      --v21;
    }

    while (v21);
  }

  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 16) = v14;
  *(a4 + 24) = v20;
  *(a4 + 32) = v13;
}

uint64_t sub_1E3F15788(uint64_t a1)
{
  v4 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v65 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v70 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v69 = v10;
  v11 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58, &unk_1E42DD790) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v63 = v22;
  OUTLINED_FUNCTION_49();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - v25;
  (*(v13 + 16))(v17, a1, v11, v24);
  v27 = MEMORY[0x1E697E3C0];
  sub_1E3F174F4(&qword_1EE289D90, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
  sub_1E4206194();
  v28 = *(v18 + 44);
  sub_1E3F174F4(&qword_1EE289D88, v27, MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_35_4();
  sub_1E4206724();
  v29 = *(v1 + v28);
  v71 = v4;
  v64 = v26;
  if (v29 == v74[0])
  {
    sub_1E325F69C(v1, &qword_1ECF30E58);
    v30 = v26;
    v31 = 1;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_64_31();
    v33 = v65 + 16;
    v67 = *(v65 + 16);
    v67(v69);
    v32(v74, 0);
    OUTLINED_FUNCTION_77_21();
    v34 = v33;
    v35 = (v33 - 8);
    v68 = v34;
    v66 = (v34 + 16);
    v36 = v71;
    while (1)
    {
      OUTLINED_FUNCTION_35_4();
      sub_1E4206724();
      if (*(v1 + v28) == v74[0])
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_64_31();
      v67(v2);
      v37(v74, 0);
      OUTLINED_FUNCTION_77_21();
      v38 = v69;
      sub_1E4200F24();
      v40 = v39;
      sub_1E4200F24();
      v41 = *v35;
      if (v40 >= v42)
      {
        v41(v2, v36);
      }

      else
      {
        v41(v38, v36);
        (*v66)(v38, v2, v36);
      }
    }

    sub_1E325F69C(v1, &qword_1ECF30E58);
    v26 = v64;
    v4 = v71;
    (*v66)(v64, v69, v71);
    v30 = v26;
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v4);
  v43 = v63;
  sub_1E3743538(v26, v63, &qword_1ECF2ED18, qword_1E42AD5E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v4);
  v45 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F69C(v43, &qword_1ECF2ED18);
    v46 = 0;
  }

  else
  {
    sub_1E4201504();
    LOBYTE(v74[0]) = v47 & 1;
    LOBYTE(v73) = v48 & 1;
    sub_1E4200EF4();
    v46 = v49;
    (*(v45 + 8))(v43, v4);
  }

  OUTLINED_FUNCTION_35_4();
  v50 = sub_1E42066D4();
  if (!v50)
  {
    sub_1E325F69C(v26, &qword_1ECF2ED18);
    return MEMORY[0x1E69E7CC0];
  }

  v51 = v50;
  v73 = MEMORY[0x1E69E7CC0];
  sub_1E3887DC4(0, v50 & ~(v50 >> 63), 0);
  v52 = v73;
  OUTLINED_FUNCTION_35_4();
  result = sub_1E42066B4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v69 = v46;
    v54 = (v45 + 16);
    v55 = (v45 + 8);
    do
    {
      v56 = sub_1E4206764();
      v57 = v70;
      (*v54)(v70);
      v56(v74, 0);
      LOBYTE(v74[0]) = 0;
      v72 = 1;
      sub_1E4200EF4();
      v59 = v58;
      (*v55)(v57, v4);
      v73 = v52;
      v60 = a1;
      v62 = *(v52 + 16);
      v61 = *(v52 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1E3887DC4((v61 > 1), v62 + 1, 1);
        v52 = v73;
      }

      *(v52 + 16) = v62 + 1;
      *(v52 + 8 * v62 + 32) = v59;
      sub_1E4206734();
      --v51;
      a1 = v60;
      v4 = v71;
    }

    while (v51);
    sub_1E325F69C(v64, &qword_1ECF2ED18);
    return v52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F15E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, double *a4@<X8>)
{
  v31 = a3;
  v28 = a2;
  v32 = a4;
  sub_1E4200C74();
  OUTLINED_FUNCTION_0_10();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v27 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = *a1;
  sub_1E4201044();
  sub_1E3F174F4(&qword_1EE289D88, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1E42066B4();
  sub_1E4206724();
  result = sub_1E4206714();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v20 >= result - 1)
  {
    *v32 = 0.0;
  }

  else if (v31)
  {
    sub_1E4201054();
    sub_1E4200F14();
    v22 = *(v27 + 8);
    v22(v19, v14);
    sub_1E4201054();
    sub_1E4200F14();
    v22(v4, v14);
    sub_1E4200C54();
    v24 = v23;
    v25 = v30;
    v26 = *(v29 + 8);
    v26(v10, v30);
    result = v26(v13, v25);
    *v32 = v24;
  }

  else
  {
    *v32 = v28;
  }

  return result;
}

double sub_1E3F160D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3F15674(a1, *v2, *(v2 + 8), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_1E3F16128(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3F1619C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E42019C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3F161CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F16230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3F16294(char *a1)
{
  v1 = type metadata accessor for SportsCanonicalBannerView(0);
  OUTLINED_FUNCTION_17_2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8, &qword_1E42DD7A0);
  sub_1E4203904();
  return result;
}

unint64_t sub_1E3F1639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3C370;
  if (!qword_1ECF3C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C370);
  }

  return result;
}

uint64_t sub_1E3F16484(uint64_t a1)
{
  sub_1E3F1694C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v3 & v2))
  {
    sub_1E3F1694C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    OUTLINED_FUNCTION_39_6();
    if (!(!v3 & v2))
    {
      sub_1E3F1694C(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      OUTLINED_FUNCTION_39_6();
      if (!(!v3 & v2))
      {
        sub_1E3F16858(319);
        OUTLINED_FUNCTION_39_6();
        if (!(!v3 & v2))
        {
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_39_6();
          if (!(!v3 & v2))
          {
            sub_1E37A6718(319);
            OUTLINED_FUNCTION_39_6();
            if (!(!v3 & v2))
            {
              sub_1E3F1694C(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
              OUTLINED_FUNCTION_39_6();
              if (!(!v3 & v2))
              {
                sub_1E3F1694C(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v3 & v2))
                {
                  sub_1E3F168EC(319, &qword_1EE23B530, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6720]);
                  if (v5 > 0x3F)
                  {
                    return v4;
                  }

                  sub_1E3A99200();
                  if (v6 > 0x3F)
                  {
                    return v4;
                  }

                  sub_1E3F168EC(319, &qword_1ECF3C380, &qword_1ECF2AC60, &qword_1E42D7E80, MEMORY[0x1E6981790]);
                  if (v7 > 0x3F)
                  {
                    return v4;
                  }

                  sub_1E3F1694C(319, &qword_1ECF3C388, type metadata accessor for SportsCanonicalBannerScoreboardViewModel, MEMORY[0x1E69E6720]);
                  if (v8 > 0x3F)
                  {
                    return v4;
                  }

                  sub_1E3F1694C(319, &qword_1ECF3C390, type metadata accessor for SportStatsViewModel, MEMORY[0x1E69E6720]);
                  if (v9 > 0x3F)
                  {
                    return v4;
                  }

                  else
                  {
                    sub_1E3F1694C(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v3 & v2))
                    {
                      sub_1E3F169AC(319);
                      OUTLINED_FUNCTION_39_6();
                      if (!(!v3 & v2))
                      {
                        type metadata accessor for SportsCanonicalBannerProxy(319);
                        OUTLINED_FUNCTION_39_6();
                        if (!(!v3 & v2))
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
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

  return v1;
}

void sub_1E3F16858(uint64_t a1)
{
  if (!qword_1ECF3C378)
  {
    type metadata accessor for SportsCanonicalBannerPresenter(255);
    sub_1E3F174F4(&qword_1ECF3C2E0, type metadata accessor for SportsCanonicalBannerPresenter, &unk_1E42BD340);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3C378);
    }
  }
}

void sub_1E3F168EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_40_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3F1694C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_40_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E3F169AC(uint64_t a1)
{
  if (!qword_1ECF3C398)
  {
    type metadata accessor for SportsCanonicalBannerViewLayout();
    sub_1E3F174F4(&qword_1ECF37B58, type metadata accessor for SportsCanonicalBannerViewLayout, &unk_1E42CD198);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3C398);
    }
  }
}

uint64_t getEnumTagSinglePayload for ButtonDisclaimerVStack(uint64_t a1, int a2)
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

uint64_t sub_1E3F16A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 40))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

unint64_t sub_1E3F16ABC()
{
  result = qword_1ECF3C3A0;
  if (!qword_1ECF3C3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C3A8, &qword_1E42DD630);
    sub_1E3F11958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3A0);
  }

  return result;
}

unint64_t sub_1E3F16B48()
{
  result = qword_1ECF3C3B0;
  if (!qword_1ECF3C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C368, qword_1E42DD370);
    sub_1E3F16BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3B0);
  }

  return result;
}

unint64_t sub_1E3F16BD4()
{
  result = qword_1ECF3C3B8;
  if (!qword_1ECF3C3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C360, &qword_1E42DD368);
    sub_1E3F16C8C();
    sub_1E374AD40(&qword_1ECF3C450, &unk_1ECF3C458, &unk_1E42DD680, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3B8);
  }

  return result;
}

unint64_t sub_1E3F16C8C()
{
  result = qword_1ECF3C3C0;
  if (!qword_1ECF3C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C358, &qword_1E42DD360);
    sub_1E3F16D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3C0);
  }

  return result;
}

unint64_t sub_1E3F16D18()
{
  result = qword_1ECF3C3C8;
  if (!qword_1ECF3C3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C350, &qword_1E42DD358);
    sub_1E3F16DD0();
    sub_1E374AD40(&qword_1EE288830, &unk_1ECF3C448, &unk_1E42DD678, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3C8);
  }

  return result;
}

unint64_t sub_1E3F16DD0()
{
  result = qword_1ECF3C3D0;
  if (!qword_1ECF3C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C348, &qword_1E42DD350);
    sub_1E3F16E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3D0);
  }

  return result;
}

unint64_t sub_1E3F16E54()
{
  result = qword_1ECF3C3D8;
  if (!qword_1ECF3C3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C3E0, &qword_1E42DD638);
    sub_1E3F16F0C();
    sub_1E374AD40(&qword_1ECF3C438, &qword_1ECF3C440, &qword_1E42DD670, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3D8);
  }

  return result;
}

unint64_t sub_1E3F16F0C()
{
  result = qword_1ECF3C3E8;
  if (!qword_1ECF3C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C3F0, &qword_1E42DD640);
    sub_1E3F16F98();
    sub_1E3F1707C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3E8);
  }

  return result;
}

unint64_t sub_1E3F16F98()
{
  result = qword_1ECF3C3F8;
  if (!qword_1ECF3C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C400, &qword_1E42DD648);
    sub_1E374AD40(&qword_1ECF3C408, &unk_1ECF3C410, &unk_1E42DD650, MEMORY[0x1E6981870]);
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3F8);
  }

  return result;
}

unint64_t sub_1E3F1707C()
{
  result = qword_1ECF3C418;
  if (!qword_1ECF3C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C420, &qword_1E42DD660);
    sub_1E374AD40(&qword_1ECF3C428, &unk_1ECF3C430, &unk_1E42DD668, MEMORY[0x1E69817F8]);
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C418);
  }

  return result;
}

unint64_t sub_1E3F17188()
{
  result = qword_1ECF3C480;
  if (!qword_1ECF3C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C468, &qword_1E42DD728);
    sub_1E374AD40(&qword_1ECF3C488, &qword_1ECF3C460, &qword_1E42DD720, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C480);
  }

  return result;
}

uint64_t sub_1E3F17240(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_1E3F1724C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E3F172BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E3F1732C()
{
  result = qword_1ECF3C548;
  if (!qword_1ECF3C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C528, &qword_1E42DD870);
    sub_1E3F173B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C548);
  }

  return result;
}

unint64_t sub_1E3F173B8()
{
  result = qword_1ECF3C550;
  if (!qword_1ECF3C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C540, &qword_1E42DD890);
    sub_1E3F174F4(&qword_1EE23BD30, type metadata accessor for MediaTags, &unk_1E42A0E0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C550);
  }

  return result;
}

uint64_t sub_1E3F17474(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1E3F174B4(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1E3F174F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3F1753C()
{
  result = qword_1ECF3C5E8;
  if (!qword_1ECF3C5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C5C8, &qword_1E42DD918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29238, &unk_1E42999B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C5E8);
  }

  return result;
}

unint64_t sub_1E3F1761C()
{
  result = qword_1ECF3C5F0;
  if (!qword_1ECF3C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C5B0, &qword_1E42DD8F8);
    sub_1E374AD40(&qword_1ECF3C5F8, &qword_1ECF3C5A8, &qword_1E42DD8F0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C5F0);
  }

  return result;
}

uint64_t sub_1E3F176DC(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E3F17744(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 17) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3F1778C()
{
  result = qword_1ECF3C608;
  if (!qword_1ECF3C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C490, &unk_1E42DD740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C468, &qword_1E42DD728);
    sub_1E3F17188();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C608);
  }

  return result;
}

unint64_t sub_1E3F1786C()
{
  result = qword_1ECF3C638;
  if (!qword_1ECF3C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C640, &qword_1E42DDA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C628, &qword_1E42DDA40);
    sub_1E374AD40(&qword_1ECF3C630, &qword_1ECF3C628, &qword_1E42DDA40, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C638);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_30(uint64_t result)
{
  v2 = v1 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_21()
{

  return sub_1E4206734();
}

id OUTLINED_FUNCTION_79_25(void *a1)
{

  return [a1 (v1 + 2424)];
}

double OUTLINED_FUNCTION_84_18()
{

  return result;
}

void sub_1E3F17A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [v3 appContext];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = a1;
    v9[4] = a2;
    v9[5] = ObjectType;
    OUTLINED_FUNCTION_0_155();
    OUTLINED_FUNCTION_1_253();
    v13[2] = v10;
    v13[3] = &block_descriptor_135;
    v11 = _Block_copy(v13);
    v12 = v3;

    [v8 evaluate_];
    _Block_release(v11);
  }
}

void sub_1E3F17B20(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = sub_1E3A246B8();
  v19[3] = v5;
  v19[0] = v3;
  v8 = v3;
  v9 = a1;
  v10 = sub_1E3A243F8(v19, a1);
  if (v10)
  {
    v11 = v10;
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v6;
    OUTLINED_FUNCTION_2_4();
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E4299720;
    swift_retain_n();
    v15 = sub_1E3A242D8(v9, sub_1E3F184F4, v12);
    *(v14 + 56) = v7;
    *(v14 + 32) = v15;
    v16 = sub_1E3A242D8(v9, sub_1E3F186E0, v13);
    *(v14 + 88) = v7;
    *(v14 + 64) = v16;
    v17 = sub_1E4205ED4();
    v18 = sub_1E3A49FB0(v17, v14, v11);
  }
}

id sub_1E3F17CD0(uint64_t a1, unint64_t a2, void (*a3)(void, void, void, void, __n128), uint64_t a4)
{
  v8 = sub_1E41FFCB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E32AE9B0(a2);
  if (result)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_13;
      }

      v13 = *(a2 + 32);
    }

    v14 = v13;
    v15 = [v13 debugDescription];

    v16 = sub_1E4205F14();
    v18 = v17;
  }

  else
  {
    v18 = 0x80000001E426D780;
    v16 = 0xD000000000000015;
  }

  v35 = a4;
  v19 = sub_1E324FBDC();
  (*(v9 + 16))(v11, v19, v8);

  v20 = sub_1E41FFC94();
  v21 = sub_1E42067F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = a3;
    v23 = a1;
    v24 = v22;
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1E3270FC8(v16, v18, &v36);
    _os_log_impl(&dword_1E323F000, v20, v21, "Fetch SearchRACConfiguration - An error occured %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E69143B0](v25, -1, -1);
    v26 = v24;
    a1 = v23;
    a3 = v34;
    MEMORY[0x1E69143B0](v26, -1, -1);
  }

  v27 = (*(v9 + 8))(v11, v8);
  sub_1E3A648A8(v27, v28, v29);
  v30 = swift_allocError();
  *v31 = v16;
  v31[1] = v18;

  (a3)(v30, 0, 0, 1);

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v32 = result;

    return v32;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1E3F17FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = [v7 appContext];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    v19[2] = v8;
    v19[3] = a6;
    v19[4] = a7;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = ObjectType;
    OUTLINED_FUNCTION_0_155();
    OUTLINED_FUNCTION_1_253();
    v23[2] = v20;
    v23[3] = &block_descriptor_6_4;
    v21 = _Block_copy(v23);
    v22 = v8;

    [v18 evaluate_];
    _Block_release(v21);
  }

  OUTLINED_FUNCTION_140_0();
}

void sub_1E3F180FC(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v24 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = v1[10];
  v11 = sub_1E3A246B8();
  v26[3] = v10;
  v26[0] = v4;
  v12 = v4;
  v13 = a1;
  v25 = sub_1E3A243F8(v26, a1);
  if (v25)
  {
    v14 = v13;
    OUTLINED_FUNCTION_5_200();
    OUTLINED_FUNCTION_4_215();
    v15 = sub_1E4205ED4();
    v16 = [v25 hasProperty_];

    if (v16)
    {
      OUTLINED_FUNCTION_2_4();
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      *(v17 + 24) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E4298AD0;
      v19 = MEMORY[0x1E69E6158];
      *(v18 + 32) = v6;
      *(v18 + 40) = v7;
      *(v18 + 88) = v19;
      *(v18 + 56) = v19;
      *(v18 + 64) = v24;
      *(v18 + 72) = v9;
      *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *(v18 + 96) = v8;

      v20 = sub_1E3A242D8(v14, sub_1E3F18434, v17);
      *(v18 + 152) = v11;
      *(v18 + 128) = v20;
      OUTLINED_FUNCTION_4_215();
      OUTLINED_FUNCTION_5_200();
      v21 = sub_1E4205ED4();
      sub_1E3A49FB0(v21, v18, v25);
    }

    OUTLINED_FUNCTION_140_0();
  }

  else
  {
    OUTLINED_FUNCTION_140_0();
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI14SearchRACErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3F18350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3F183A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

id sub_1E3F18434(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = OUTLINED_FUNCTION_2_216(a1, a2, a3);
  if (result)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_11;
      }

      v7 = *(v4 + 32);
    }

    v8 = v7;
    v9 = [v7 toBool];
  }

  else
  {
    v9 = 0;
  }

  v5(v9);
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

id sub_1E3F184F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = OUTLINED_FUNCTION_2_216(a1, a2, a3);
  if (!result)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_12:
    sub_1E329505C(&v19);
    goto LABEL_13;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E6911E60](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v4 + 32);
  }

  v8 = v7;
  v9 = [v7 toObject];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v10 = v17;
    goto LABEL_14;
  }

LABEL_13:
  v10 = sub_1E4205CB4();
LABEL_14:
  v11 = sub_1E3A62BE8(v10);
  if (v13)
  {
    v5(v11 & 1);
  }

  else
  {
    sub_1E3A648A8(v11, v12, 0);
    v14 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    (v5)(v14, 0, 0, 1);
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v16 = result;

    return v16;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E3F18718@<X0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v6 = *((*(*a2 + 696))() + 16);

  if (v6 <= 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F0, &qword_1E42BB3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C648, &unk_1E42DDAF8);
  sub_1E3B1FF74();
  sub_1E3F18A04();
  sub_1E4202B04();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C668, &qword_1E42DDB10);
  *(a5 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_1E3F18874()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v8 = (*(*v1 + 696))();
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C670, &qword_1E42DDB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C660, &qword_1E42DDB08);
  OUTLINED_FUNCTION_5_58(&qword_1ECF3C678);
  v6 = OUTLINED_FUNCTION_0_288(&qword_1ECF3C658);
  return OUTLINED_FUNCTION_3_217(v6, v6, v8);
}

uint64_t sub_1E3F189BC()
{
  v1 = OUTLINED_FUNCTION_4_216();
  v2 = sub_1E42028C4();
  result = swift_getKeyPath();
  *v0 = v1;
  v0[1] = result;
  v0[2] = v2;
  return result;
}

unint64_t sub_1E3F18A04()
{
  result = qword_1ECF3C650;
  if (!qword_1ECF3C650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C648, &unk_1E42DDAF8);
    sub_1E32752B0(&qword_1ECF3C658, &qword_1ECF3C660, &qword_1E42DDB08, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C650);
  }

  return result;
}

uint64_t sub_1E3F18AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1E3F18B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1E327F454(a1, v11);
  v9 = swift_allocObject();
  sub_1E37DADF4(v11, v9 + 16);
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C698, &qword_1E42DDC18);
  sub_1E32752B0(&qword_1ECF3C6A0, &qword_1ECF3C698, &qword_1E42DDC18, MEMORY[0x1E69817F8]);
  return sub_1E4203964();
}

double sub_1E3F18C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v8 = sub_1E41FFCB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E41A3110();
  (*(v9 + 16))(v11, v12, v8);
  sub_1E327F454(a1, v36);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v5;
    v29 = v17;
    v34[0] = v17;
    *v16 = 136315138;
    v5 = a1;
    v18 = a2;
    v32 = a4;
    v20 = v37;
    v19 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v21 = v20;
    a2 = v18;
    a1 = v5;
    v22 = (*(v19 + 24))(v21, v19);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v25 = sub_1E3270FC8(v22, v24, v34);
    a4 = v32;

    *(v16 + 4) = v25;
    _os_log_impl(&dword_1E323F000, v13, v14, "tapped %s", v16, 0xCu);
    v26 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    LOBYTE(v5) = v31;
    MEMORY[0x1E69143B0](v26, -1, -1);
    MEMORY[0x1E69143B0](v16, -1, -1);

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  (*(*a2 + 880))(a1);
  LOBYTE(v36[0]) = v5 & 1;
  v36[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  LOBYTE(v34[0]) = v5 & 1;
  v34[1] = a4;
  v33 = (v35 & 1) == 0;
  sub_1E4203904();

  return result;
}

uint64_t sub_1E3F18F50(uint64_t a1)
{
  type metadata accessor for LibDataSourceManager(0);
  sub_1E3B4E86C();
  v1 = sub_1E42010C4();
  sub_1E42038E4();
  return v1;
}

unint64_t sub_1E3F19004()
{
  result = qword_1ECF3C680;
  if (!qword_1ECF3C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C668, &qword_1E42DDB10);
    sub_1E32752B0(&qword_1ECF3C688, &qword_1ECF3C690, &qword_1E42DDC10, MEMORY[0x1E697CD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C680);
  }

  return result;
}

void *sub_1E3F190D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v73 = v7;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v12 = v11;
  sub_1E327F454(v3, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  type metadata accessor for LibLocalSource();
  v13 = swift_dynamicCast();
  v14 = v13;
  if (v13)
  {
  }

  v15 = v3[3];
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v19 = v18;
  v20 = (*(*v2 + 672))();
  sub_1E37D9AD0(v20, v94);

  v21 = v95;
  if (v95)
  {
    v22 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v64 = (*(v22 + 16))(v21, v22);
    v75 = v23;
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
    sub_1E325F748(v94, &unk_1ECF2A740, &qword_1E42EF010);
    v64 = 0;
    v75 = 0;
  }

  v70 = sub_1E4201B84();
  v93 = 1;
  v69 = sub_1E4201D54();
  LOBYTE(v78[0]) = 1;
  v92[0] = v10;
  v92[1] = v12;
  sub_1E32822E0(v69, v24, v25);

  v26 = sub_1E4202C44();
  v29 = v28;
  v74 = v30;
  v72 = v26;
  if (v14)
  {
    v31 = v26;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v92[0] = v17;
    v92[1] = v19;
    v67 = v27;

    v36 = sub_1E4202C44();
    v38 = v37;
    v40 = v39;
    sub_1E4202A74();
    v32 = sub_1E4202C04();
    v33 = v41;
    v65 = v42;
    v35 = v43;

    v44 = v40 & 1;
    v31 = v72;
    sub_1E37434B8(v36, v38, v44);

    v34 = v65 & 1;
    sub_1E37E6F1C(v32, v33, v65 & 1);

    v27 = v67;
  }

  v45 = v27 & 1;
  LOBYTE(v92[0]) = v27 & 1;
  sub_1E37E6F1C(v31, v29, v27 & 1);

  v46 = OUTLINED_FUNCTION_2_217();
  sub_1E39E38F4(v46, v47, v48, v49);
  v50 = OUTLINED_FUNCTION_2_217();
  sub_1E39E3938(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_2_217();
  sub_1E39E3938(v54, v55, v56, v57);
  sub_1E37434B8(v31, v29, v45);

  v58 = v78[0];
  v66 = v35;
  v68 = v32;
  if (v75 && (v6 == v64 ? (v59 = v75 == v73) : (v59 = 0), v59 || (sub_1E42079A4() & 1) != 0))
  {
    v60 = v33;
    v61 = sub_1E42037C4();
  }

  else
  {
    v60 = v33;
    v61 = 0;
  }

  __src[0] = v69;
  __src[1] = 0;
  LOBYTE(__src[2]) = v78[0];
  *(&__src[2] + 1) = v91[0];
  HIDWORD(__src[2]) = *(v91 + 3);
  __src[3] = v31;
  __src[4] = v29;
  LOBYTE(__src[5]) = v45;
  *(&__src[5] + 1) = v90[0];
  HIDWORD(__src[5]) = *(v90 + 3);
  __src[6] = v74;
  __src[7] = v68;
  __src[8] = v60;
  __src[9] = v34;
  __src[10] = v66;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1E3F195F8(__src, v92);

  v78[0] = v69;
  v78[1] = 0;
  v79 = v58;
  *v80 = v91[0];
  *&v80[3] = *(v91 + 3);
  v81 = v72;
  v82 = v29;
  v83 = v45;
  *v84 = v90[0];
  *&v84[3] = *(v90 + 3);
  v85 = v74;
  v86 = v68;
  v87 = v60;
  v88 = v34;
  v89 = v66;
  sub_1E325F748(v78, &qword_1ECF3C6A8, &unk_1E42DDC20);

  memcpy(v92 + 7, __dst, 0x58uLL);
  v62 = v93;
  *a1 = v70;
  *(a1 + 8) = 0;
  *(a1 + 16) = v62;
  result = memcpy((a1 + 17), v92, 0x5FuLL);
  *(a1 + 112) = v61;
  return result;
}

uint64_t sub_1E3F195F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6A8, &unk_1E42DDC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3F1966C(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for GridView(0);
  v10 = v9[6];
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v11 = (a5 + v9[7]);
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_2_218();
  sub_1E3F1C300(v12, v13, &unk_1E42BD340);
  *v11 = sub_1E4201754();
  v11[1] = v14;
  v15 = (a5 + v9[10]);
  __src[0] = 0;
  sub_1E42038E4();
  v16 = __dst[1];
  *v15 = __dst[0];
  v15[1] = v16;
  v17 = v9[11];
  sub_1E381BEF8(__src);
  memcpy((a5 + v17), __src, 0x150uLL);
  *(a5 + 16) = sub_1E381AE50;
  *(a5 + 24) = a1;
  *(a5 + 32) = 0;
  *(a5 + v9[12]) = a1;
  *(a5 + v9[14]) = a2;
  memcpy(__dst, (a5 + v17), 0x150uLL);
  memcpy((a5 + v17), a3, 0x150uLL);
  swift_retain_n();
  sub_1E3743538(a3, v69, &qword_1ECF2B5C0, &unk_1E42B4E40);
  sub_1E325F6F0(__dst, &qword_1ECF2B5C0, &unk_1E42B4E40);
  memcpy(v69, a3, sizeof(v69));
  v18 = sub_1E3748B78(v69);
  v19 = 0uLL;
  if (v18 != 1)
  {
    v20 = vdup_n_s32(LOBYTE(v69[27]));
    v21.i64[0] = v20.u32[0];
    v21.i64[1] = v20.u32[1];
    v19 = vandq_s8(*&v69[25], vcgezq_s64(vshlq_n_s64(v21, 0x3FuLL)));
  }

  v67 = *v19.i64;
  v22 = (a5 + v9[8]);
  *v22 = v19;
  v22[1].i64[0] = 0;
  type metadata accessor for LayoutGrid();
  v23 = sub_1E3A2579C(v67);
  v24 = a5 + v9[9];
  *v24 = v23;
  *(v24 + 8) = 0;
  memcpy(v68, a3, sizeof(v68));
  if (sub_1E3748B78(v68) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v68[281];
    sub_1E325F6F0(a3, &qword_1ECF2B5C0, &unk_1E42B4E40);
  }

  *(a5 + v9[13]) = v25 & 1;
  if (!a4)
  {
    type metadata accessor for CollectionEditableModel(0);
    sub_1E3845488(0);
  }

  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_4_217();
  sub_1E3F1C300(v26, v27, &unk_1E42A2B70);

  OUTLINED_FUNCTION_32_0();
  *a5 = sub_1E42010C4();
  *(a5 + 8) = v28;
  v29 = *(*a1 + 1040);

  v31 = v29(v30);

  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_47:
    OUTLINED_FUNCTION_8();
    (*(v59 + 392))(v35);

    return;
  }

  v33 = sub_1E32AE9B0(v31);
  v34 = 0;
  v65 = v31 & 0xFFFFFFFFFFFFFF8;
  v66 = v31 & 0xC000000000000001;
  v64 = v31 + 32;
  v35 = v32;
  v61 = v33;
  v62 = v31;
  while (1)
  {
    if (v34 == v33)
    {

      goto LABEL_47;
    }

    if (v66)
    {
      v37 = MEMORY[0x1E6911E60](v34, v31);
      v36 = v37;
    }

    else
    {
      if (v34 >= *(v65 + 16))
      {
        goto LABEL_49;
      }

      v36 = *(v64 + 8 * v34);
    }

    v38 = __OFADD__(v34++, 1);
    if (v38)
    {
      break;
    }

    v39 = (*(*v36 + 872))(v37);
    if (!v39)
    {
      goto LABEL_30;
    }

    v40 = v39;
    if (v39 >> 62)
    {
      v41 = sub_1E4207384();
      if (!v41)
      {
LABEL_29:

LABEL_30:
        v43 = v32;
        goto LABEL_31;
      }
    }

    else
    {
      v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v41)
      {
        goto LABEL_29;
      }
    }

    sub_1E3E31650(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      goto LABEL_53;
    }

    v63 = v35;
    v42 = 0;
    v43 = v32;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1E6911E60](v42, v40);
      }

      else
      {
        v44 = *(v40 + 8 * v42 + 32);
      }

      v45 = *(v44 + 16);
      v46 = *(v44 + 24);

      v48 = v43[2];
      v47 = v43[3];
      if (v48 >= v47 >> 1)
      {
        sub_1E3E31650((v47 > 1), v48 + 1, 1);
      }

      ++v42;
      v43[2] = v48 + 1;
      v49 = &v43[2 * v48];
      v49[4] = v45;
      v49[5] = v46;
    }

    while (v41 != v42);

    v33 = v61;
    v31 = v62;
    v32 = MEMORY[0x1E69E7CC0];
    v35 = v63;
LABEL_31:
    v50 = v43[2];
    v51 = v35[2];
    v52 = v51 + v50;
    if (__OFADD__(v51, v50))
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v54 = v35[3] >> 1, v55 = v35, v54 < v52))
    {
      if (v51 <= v52)
      {
        v56 = v51 + v50;
      }

      else
      {
        v56 = v51;
      }

      v55 = sub_1E3F1B6AC(isUniquelyReferenced_nonNull_native, v56, 1, v35);
      v54 = v55[3] >> 1;
    }

    if (v43[2])
    {
      if (v54 - v55[2] < v50)
      {
        goto LABEL_52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      swift_arrayInitWithCopy();

      if (v50)
      {
        v57 = v55[2];
        v38 = __OFADD__(v57, v50);
        v58 = v57 + v50;
        if (v38)
        {
          goto LABEL_54;
        }

        v55[2] = v58;
      }
    }

    else
    {

      if (v50)
      {
        goto LABEL_51;
      }
    }

    v35 = v55;
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
LABEL_54:
  __break(1u);
}

uint64_t sub_1E3F19CCC@<X0>(uint64_t a1@<X8>)
{
  v196 = a1;
  v2 = type metadata accessor for GridView(0);
  OUTLINED_FUNCTION_0_10();
  v183 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v192 = v5;
  v193 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v179 = v8 - v7;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6B0, &qword_1E42DDC70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v182 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v168 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6B8, &qword_1E42DDC78);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v194 = v15;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6C0, &qword_1E42DDC80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v189 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6C8, &qword_1E42DDC88);
  OUTLINED_FUNCTION_0_10();
  v186 = v19;
  v187 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v191 = v21;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6D0, &qword_1E42DDC90);
  OUTLINED_FUNCTION_0_10();
  v185 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v184 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6D8, &qword_1E42DDC98);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v197 = v27;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v206 = v28;
  v207 = v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v203 = (v31 - v30);
  sub_1E4203C44();
  OUTLINED_FUNCTION_0_10();
  v199 = v33;
  v200 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v36 = (v35 - v34);
  sub_1E4203C54();
  OUTLINED_FUNCTION_0_10();
  v204 = v38;
  v205 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v177 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v208 = &v168 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v42);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v168 - v44);
  v46 = (v1 + *(v2 + 32));
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v217 = *v46;
  v218 = v48;
  v219 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  if (!*(v1 + *(v2 + 28)))
  {
    goto LABEL_31;
  }

  v50 = v2;
  v51 = *v216[0].i64;
  OUTLINED_FUNCTION_8();
  v53 = *(v52 + 248);

  v53(v54);

  v217 = v47;
  v218 = v48;
  v219 = v49;
  sub_1E42038F4();
  v55 = v50;
  v56 = v50[12];
  v57 = v1;
  v58 = *(v1 + v56);
  sub_1E3A610FC(v58);
  v201 = v59;
  v60 = (*(*v58 + 960))();
  v202 = v55[6];
  sub_1E3746E10(v45);
  v61 = v206;
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v206);
  memcpy(v216, (v1 + v55[11]), sizeof(v216));
  v62 = sub_1E3748B78(v216);
  v63.i32[0] = 1;
  v64.i32[0] = v62;
  v65 = vdupq_lane_s32(*&vceqq_s32(v64, v63), 0);
  v225 = vbicq_s8(v216[14], v65);
  v226 = vbicq_s8(v216[15], v65);
  v227 = v62 == 1;
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_11();
  v195 = v60;
  sub_1E389BFA8();
  sub_1E325F6F0(v45, &qword_1ECF2A250, " B\r");
  type metadata accessor for LayoutGrid();
  sub_1E3A25950(v51);
  v67 = v66;
  *v36 = xmmword_1E42DDC30;
  (*(v199 + 13))(v36, *MEMORY[0x1E697D748], v200);
  sub_1E4203D84();
  sub_1E4203C64();
  sub_1E3A258E4(v51);
  v72.n128_f64[0] = j_nullsub_1(v68, v69, v70, v71);
  v74 = v73;
  v76 = v75;
  v77 = (*(*v58 + 1040))(v72);
  if (!v77)
  {
LABEL_9:
    v79 = 0;
    goto LABEL_10;
  }

  v78 = v77;
  if (!sub_1E32AE9B0(v77))
  {

    goto LABEL_9;
  }

  if ((v78 & 0xC000000000000001) != 0)
  {
    v79 = MEMORY[0x1E6911E60](0, v78);
    goto LABEL_7;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v79 = *(v78 + 32);

LABEL_7:

LABEL_10:
    v80 = v203;
    sub_1E3746E10(v203);
    v81 = sub_1E389CA24(v58, v80, 0);
    v82 = *(v207 + 8);
    v207 += 8;
    v176 = v82;
    v83 = v82(v80, v61);
    if (v79 && (v84 = (*(*v79 + 872))(v83)) != 0)
    {
      v85 = sub_1E32AE9B0(v84);
    }

    else
    {
      v85 = 0;
    }

    v199 = v55;
    v86 = v57 + v55[9];
    v87 = *v86;
    v88 = *(v86 + 8);
    LOBYTE(v215[0]) = v87;
    v215[1] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C18, &qword_1E429C8B8);
    sub_1E42038F4();
    sub_1E3A260B4(v85, v81, 1, LOBYTE(v214[0]), 1.0);
    v174 = v89;
    v90 = v220;
    v91 = v221;
    sub_1E3F1AE60(v67);
    v92 = (*(*v58 + 392))();
    v175 = sub_1E3BBA798(v92);

    v188 = v57;
    type metadata accessor for CollectionInteractor(0);
    OUTLINED_FUNCTION_0_289();
    sub_1E3F1C300(v93, v94, &unk_1E42BD340);
    v95 = OUTLINED_FUNCTION_13_157();
    v96 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v97 = *(v95 + v96);

    v99 = (*(*v97 + 968))(v98);

    OUTLINED_FUNCTION_13_157();
    sub_1E37CDDA4();

    if (v79)
    {
      v200 = v99;
      v100 = *(*v79 + 872);

      v102 = v100(v101);

      if (v102)
      {
        v103 = sub_1E32AE9B0(v102);

        if (v103)
        {
          v172 = v74;
          v104 = sub_1E4201D54();
          v105 = v194;
          *v194 = v104;
          v105[1] = 0;
          *(v105 + 16) = 0;
          v106 = OUTLINED_FUNCTION_5_8();
          v108 = v107;
          v110 = v109;
          v112 = v111;
          v113 = v199;
          v114 = v188;
          v171 = *(v188 + v199[13]);
          v173 = v76;
          if (v171 == 1)
          {
            v115 = v203;
            sub_1E3746E10(v203);
            sub_1E3B0352C();
            v116 = OUTLINED_FUNCTION_16_132();
            v117(v116);
            v118 = v115 ^ 1;
            v119 = *(v114 + v113[14]);
          }

          else
          {
            v119 = 0;
            v118 = 0;
          }

          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6E0, &qword_1E42DDCA0);
          v199 = (v194 + *(v122 + 44));
          v123 = (v114 + v113[10]);
          v124 = *v123;
          v125 = v123[1];
          v170 = v124;
          v214[0] = v124;
          v169 = v125;
          v214[1] = v125;
          v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
          sub_1E4203914();
          v126 = v215[0];
          v127 = v215[1];
          v128 = *&v215[2];

          sub_1E3CEC988(v129, v118 & 1, v119, v126, v127, v222, v106, v108, v110, v112, v128);
          v130 = v177;
          (*(v204 + 16))(v177, v208, v205);
          v131 = sub_1E3E27BC4(v130, v174);
          v178 = &v168;
          MEMORY[0x1EEE9AC00](v131);
          *(&v168 - 4) = v79;
          *(&v168 - 3) = &v217;
          v167 = v114;
          LODWORD(v215[0]) = 0;
          sub_1E3F1C300(&qword_1EE2889E8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
          sub_1E4207CD4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6E8, &qword_1E42DDCA8);
          v166 = sub_1E3F1B834();
          v132 = v181;
          sub_1E4203EB4();

          sub_1E3AB26D4(v223);
          v133 = v132 + *(v180 + 36);
          v134 = v223[1];
          *v133 = v223[0];
          *(v133 + 16) = v134;
          *(v133 + 32) = v224;
          v135 = v182;
          sub_1E32DB380(v132, v182);
          memcpy(v214, v222, sizeof(v214));
          v136 = v199;
          memcpy(v199, v222, 0x50uLL);
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6F8, &qword_1E42DDCB0);
          sub_1E32DB380(v135, v136 + *(v137 + 48));
          sub_1E381BF1C(v214, v215);
          sub_1E325F6F0(v132, &qword_1ECF3C6B0, &qword_1E42DDC70);
          sub_1E325F6F0(v135, &qword_1ECF3C6B0, &qword_1E42DDC70);
          memcpy(v215, v222, 0x50uLL);
          sub_1E381BFD4(v215);
          v138 = 0.0;
          if (v171)
          {
            v139 = v203;
            sub_1E3746E10(v203);
            sub_1E3B0352C();
            v140 = OUTLINED_FUNCTION_16_132();
            v141(v140);
            v142 = v183;
            v144 = v172;
            v143 = v173;
            if ((v139 & 1) == 0)
            {
              v210 = v170;
              v211 = v169;
              sub_1E42038F4();
              v138 = v209;
            }
          }

          else
          {
            v142 = v183;
            v144 = v172;
            v143 = v173;
          }

          v145 = sub_1E4202734();
          v146 = v189;
          sub_1E3741EA0(v194, v189, &qword_1ECF3C6B8, &qword_1E42DDC78);
          v147 = v146 + *(v190 + 36);
          *v147 = v145;
          *(v147 + 8) = v90 - v138;
          *(v147 + 16) = v144;
          *(v147 + 24) = v91;
          *(v147 + 32) = v143;
          *(v147 + 40) = 0;
          v210 = v58;
          v148 = v193;
          sub_1E3F1B90C(v114, v193);
          v149 = (*(v142 + 80) + 16) & ~*(v142 + 80);
          v150 = swift_allocObject();
          sub_1E3F1B970(v148, v150 + v149);
          v207 = type metadata accessor for CollectionViewModel();
          v151 = sub_1E3F1BAB0();
          v152 = sub_1E3F1C300(&qword_1EE275068, type metadata accessor for CollectionViewModel, &protocol conformance descriptor for ViewModel);

          v153 = v190;
          v154 = v189;
          sub_1E4203524();

          sub_1E325F6F0(v154, &qword_1ECF3C6C0, &qword_1E42DDC80);
          v155 = v193;
          sub_1E3F1B90C(v188, v193);
          v156 = swift_allocObject();
          sub_1E3F1B970(v155, v156 + v149);
          v210 = v153;
          v211 = v207;
          v212 = v151;
          v213 = v152;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v158 = v184;
          v159 = v187;
          v160 = v191;
          sub_1E403796C(1, sub_1E3F1BCE4, v156, v187, OpaqueTypeConformance2);

          sub_1E375B760(&v217);

          (*(v186 + 8))(v160, v159);
          v121 = v197;
          v161 = v198;
          (*(v185 + 32))(v197, v158, v198);
          __swift_storeEnumTagSinglePayload(v121, 0, 1, v161);
          v120 = v196;
          goto LABEL_28;
        }
      }

      sub_1E375B760(&v217);
    }

    else
    {

      sub_1E375B760(&v217);
    }

    v120 = v196;
    v121 = v197;
    __swift_storeEnumTagSinglePayload(v197, 1, 1, v198);
LABEL_28:
    v162 = v208;
    sub_1E3741EA0(v121, v120, &qword_1ECF3C6D8, &qword_1E42DDC98);
    return (*(v204 + 8))(v162, v205);
  }

  __break(1u);
LABEL_31:
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_2_218();
  sub_1E3F1C300(v164, v165, &unk_1E42BD340);
  result = sub_1E4201744();
  __break(1u);
  return result;
}