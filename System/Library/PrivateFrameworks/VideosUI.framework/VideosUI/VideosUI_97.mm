void sub_1E3E2854C()
{
  OUTLINED_FUNCTION_31_1();
  v47 = v0;
  v48 = v1;
  v3 = v2;
  v5 = v4;
  v52 = v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39800, &qword_1E42D50E8);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v45 = v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39808, &qword_1E42D50F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v51 = v11;
  v12 = OUTLINED_FUNCTION_138();
  v13 = type metadata accessor for HorizontalMultiRowCollectionView(v12);
  v14 = OUTLINED_FUNCTION_8_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39810, &qword_1E42D50F8);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = [objc_opt_self() sharedInstance];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 vStackInForEachEnabled];

    v27 = v18 + 7;
    v54[42] = v5;
    if (v26)
    {
      KeyPath = swift_getKeyPath();
      sub_1E3E276C4(v47, &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v29 = (v27 + v28) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      sub_1E3E27728(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v28);
      memcpy((v30 + v29), v3, 0x150uLL);
      *(v30 + ((v29 + 343) & 0xFFFFFFFFFFFFFFF8)) = v48;

      sub_1E37E6E1C(v3, v54);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BB8, &unk_1E42D5120);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v31, &unk_1ECF2C790, &qword_1E42996A0, v32);
      sub_1E375BEF4();
      sub_1E374AD40(&qword_1EE288518, &qword_1ECF36BB8, &unk_1E42D5120, MEMORY[0x1E6981870]);
      sub_1E4203B34();
      v33 = v50;
      (*(v20 + 16))(v51, v23, v50);
      swift_storeEnumTagMultiPayload();
      sub_1E3E299E8();
      OUTLINED_FUNCTION_12_130(&qword_1ECF39820, &qword_1ECF39800, &qword_1E42D50E8);
      sub_1E4201F44();
      (*(v20 + 8))(v23, v33);
    }

    else
    {
      swift_getKeyPath();
      sub_1E3E276C4(v47, &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v35 = (v27 + v34) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      sub_1E3E27728(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v34);
      memcpy((v36 + v35), v3, 0x150uLL);
      *(v36 + ((v35 + 343) & 0xFFFFFFFFFFFFFFF8)) = v48;

      sub_1E37E6E1C(v3, v54);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628, &unk_1E42A0C40);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v37, &unk_1ECF2C790, &qword_1E42996A0, v38);
      sub_1E375BEF4();
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
      v40 = OUTLINED_FUNCTION_6_8(v39);
      v54[0] = v39;
      v54[1] = v40;
      OUTLINED_FUNCTION_9_142();
      swift_getOpaqueTypeConformance2();
      v41 = v45;
      sub_1E4203B34();
      v42 = KeyPath;
      v43 = v53;
      (*(KeyPath + 16))(v51, v41, v53);
      swift_storeEnumTagMultiPayload();
      sub_1E3E299E8();
      OUTLINED_FUNCTION_12_130(&qword_1ECF39820, &qword_1ECF39800, &qword_1E42D50E8);
      sub_1E4201F44();
      (*(v42 + 8))(v41, v43);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3E28B4C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = *v6;
  *v8 = sub_1E4201D44();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BC0, &qword_1E42C9998);
  memcpy(v22, v4, sizeof(v22));
  OUTLINED_FUNCTION_25();
  v19 = sub_1E40EA03C(v14, v15, v16, v17, v18);
  v20 = OUTLINED_FUNCTION_6_8(v19);
  v21 = OUTLINED_FUNCTION_51_1() & 1;
  sub_1E3C6184C(v2, v13, v21, 0, 0, v9, v20);
  (*(v11 + 8))(v0, v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E28C98(uint64_t *a1, const void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  OUTLINED_FUNCTION_25();
  v17 = sub_1E40EA03C(v12, v13, v14, v15, v16);
  v18 = OUTLINED_FUNCTION_6_8(v17);
  v19 = OUTLINED_FUNCTION_51_1();
  sub_1E3C6184C(a3, v11, v19 & 1, 0, 0, v7, v18);
  return (*(v9 + 8))(v3, v7);
}

char *sub_1E3E28DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39828, &unk_1E42D5130);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

void sub_1E3E28F24(uint64_t a1)
{
  sub_1E3E29144(319, &qword_1EE259C58, &unk_1F5D8B8B8, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E3E290B0(319);
    if (v2 <= 0x3F)
    {
      sub_1E3E29194(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E3E29144(319, &qword_1EE288680, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1E3E29194(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CollectionViewModel();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E3E290B0(uint64_t a1)
{
  if (!qword_1EE289E48)
  {
    type metadata accessor for CollectionInteractor(255);
    sub_1E3E293B0(qword_1EE26D7F8, type metadata accessor for CollectionInteractor, &unk_1E42BD340);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E48);
    }
  }
}

void sub_1E3E29144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E3E29194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3E29230()
{
  result = qword_1ECF39728;
  if (!qword_1ECF39728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39720, &qword_1E42D5040);
    sub_1E3E292BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39728);
  }

  return result;
}

unint64_t sub_1E3E292BC()
{
  result = qword_1ECF39730;
  if (!qword_1ECF39730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39738, &qword_1E42D5048);
    sub_1E374AD40(&qword_1ECF39740, &unk_1ECF39748, &unk_1E42D5050, MEMORY[0x1E697D7A0]);
    sub_1E374AD40(&qword_1ECF39750, &qword_1ECF39758, &qword_1E42D5058, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39730);
  }

  return result;
}

uint64_t sub_1E3E293B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3E293F8()
{
  result = qword_1ECF39778;
  if (!qword_1ECF39778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39770, &qword_1E42D5068);
    sub_1E3E2947C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39778);
  }

  return result;
}

unint64_t sub_1E3E2947C()
{
  result = qword_1ECF39780;
  if (!qword_1ECF39780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39788, &qword_1E42D5070);
    sub_1E374AD40(&qword_1ECF39790, &qword_1ECF39798, &unk_1E42D5078, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39780);
  }

  return result;
}

uint64_t objectdestroyTm_43()
{
  type metadata accessor for HorizontalMultiRowCollectionView(0);
  OUTLINED_FUNCTION_144();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v4 = *(v3 + 10);
  if (v4 != 1)
  {
  }

  sub_1E3264CE0(*(v3 + 42), *(v3 + 43));
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(&v3[v5]);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3E29694(double a1, double a2)
{
  type metadata accessor for HorizontalMultiRowCollectionView(0);
  if (a2 > 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
    sub_1E4203904();
  }
}

unint64_t sub_1E3E29744()
{
  result = qword_1ECF397C0;
  if (!qword_1ECF397C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF397B0, &qword_1E42D5098);
    v3 = sub_1E3E297D0();
    sub_1E3BF7594(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF397C0);
  }

  return result;
}

unint64_t sub_1E3E297D0()
{
  result = qword_1ECF397C8;
  if (!qword_1ECF397C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF397A8, &qword_1E42D5090);
    sub_1E3E2985C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF397C8);
  }

  return result;
}

unint64_t sub_1E3E2985C()
{
  result = qword_1ECF397D0;
  if (!qword_1ECF397D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF397A0, &qword_1E42D5088);
    sub_1E3E29A98(&qword_1ECF397D8, &unk_1ECF397E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF397D0);
  }

  return result;
}

void *sub_1E3E29914@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  OUTLINED_FUNCTION_8_0(v4);
  v7 = *(v2 + ((*(v6 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E3E27EFC(a2, v7);
}

unint64_t sub_1E3E299E8()
{
  result = qword_1ECF39818;
  if (!qword_1ECF39818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39810, &qword_1E42D50F8);
    sub_1E374AD40(&qword_1EE288518, &qword_1ECF36BB8, &unk_1E42D5120, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39818);
  }

  return result;
}

uint64_t sub_1E3E29A98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
    OUTLINED_FUNCTION_6_8(v6);
    OUTLINED_FUNCTION_9_142();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_57();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_27Tm_1()
{
  type metadata accessor for HorizontalMultiRowCollectionView(0);
  OUTLINED_FUNCTION_144();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_118();
  if (!v6)
  {
  }

  sub_1E3264CE0(*(v2 + 336), *(v2 + 344));
  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_124();

  return swift_deallocObject();
}

uint64_t sub_1E3E29CAC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView(0);
  OUTLINED_FUNCTION_8_0(v4);
  v7 = (*(v6 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 343) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v7, v8);
}

uint64_t sub_1E3E29DA0()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[14] = sub_1E383BCC0();
  v0[15] = sub_1E383BCC0();
  v0[16] = sub_1E383BCC0();
  v0[17] = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v0[18] = sub_1E3BBB724();
  v0[19] = sub_1E383BCC0();
  v0[20] = sub_1E383BCC0();
  type metadata accessor for AlertTemplateFooterLayout();
  v0[21] = sub_1E3CCDAEC();
  v1 = sub_1E3C2F9A0();

  sub_1E3952C58();
  v142[0] = v2;
  v142[1] = v3;
  v142[2] = v4;
  v142[3] = v5;
  v143 = 0;
  (*(*v1 + 184))(v142);
  OUTLINED_FUNCTION_9_2();
  v7 = (v6 + 1760);
  v8 = *(v6 + 1760);
  v8();
  sub_1E3952C94();
  OUTLINED_FUNCTION_1_229();
  (*(v9 + 160))(v146);

  v11 = (v8)(v10);
  (*(*v11 + 208))(0x4079A00000000000, 0);

  (v8)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 312))(0x406CC00000000000, 0);

  v15 = (v8)(v14);
  v16 = *sub_1E418A524();
  (*(*v15 + 440))(v16, 0);

  v18 = (v8)(v17);
  sub_1E39537A8();
  v144[0] = v19;
  v144[1] = v20;
  v144[2] = v21;
  v144[3] = v22;
  v145 = 0;
  (*(*v18 + 560))(v144);

  OUTLINED_FUNCTION_9_2();
  v24 = *(v23 + 1784);
  v25 = v24();
  sub_1E3E5F58C();
  OUTLINED_FUNCTION_7_16();
  v26 = *(*v25 + 680);
  v27 = v7;
  v26(v7);

  (v24)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1696))(7);

  (v24)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 1984))(1);

  (v24)(v32);
  OUTLINED_FUNCTION_2_1();
  (*(v33 + 2056))(4, 0);

  (v24)(v34);
  OUTLINED_FUNCTION_2_1();
  v35 = OUTLINED_FUNCTION_5_181();
  v36(v35);

  OUTLINED_FUNCTION_9_2();
  v38 = *(v37 + 1808);
  v39 = v38();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v40 = *(*v39 + 680);
  v41 = v7;
  v40(v7);

  (v38)(v42);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 1696))(22);

  (v38)(v44);
  OUTLINED_FUNCTION_2_1();
  (*(v45 + 1984))(1);

  (v38)(v46);
  OUTLINED_FUNCTION_2_1();
  v47 = OUTLINED_FUNCTION_5_181();
  v48(v47);

  OUTLINED_FUNCTION_9_2();
  v50 = *(v49 + 1832);
  v51 = v50();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v52 = *(*v51 + 680);
  v53 = v7;
  v52(v7);

  (v50)(v54);
  OUTLINED_FUNCTION_2_1();
  (*(v55 + 1696))(22);

  (v50)(v56);
  OUTLINED_FUNCTION_2_1();
  (*(v57 + 1984))(1);

  (v50)(v58);
  OUTLINED_FUNCTION_2_1();
  v59 = OUTLINED_FUNCTION_5_181();
  v60(v59);

  (v50)(v61);
  sub_1E3952C88();
  OUTLINED_FUNCTION_1_229();
  (*(v62 + 160))(v146);

  OUTLINED_FUNCTION_9_2();
  v64 = *(v63 + 1856);
  v65 = v64();
  sub_1E3E5F6B8();
  OUTLINED_FUNCTION_7_16();
  v66 = *(*v65 + 680);
  v67 = v7;
  v66(v7);

  (v64)(v68);
  OUTLINED_FUNCTION_2_1();
  (*(v69 + 1696))(15);

  (v64)(v70);
  OUTLINED_FUNCTION_2_1();
  (*(v71 + 1984))(1);

  (v64)(v72);
  OUTLINED_FUNCTION_2_1();
  v73 = OUTLINED_FUNCTION_5_181();
  v74(v73);

  OUTLINED_FUNCTION_9_2();
  v76 = *(v75 + 1880);
  v76();
  OUTLINED_FUNCTION_2_1();
  (*(v77 + 1280))(0x403E000000000000, 0);

  (v76)(v78);
  sub_1E3952C64();
  OUTLINED_FUNCTION_1_229();
  (*(v79 + 184))(v146);

  (v76)(v80);
  OUTLINED_FUNCTION_2_1();
  (*(v81 + 312))(0x4050800000000000, 0);

  (v76)(v82);
  OUTLINED_FUNCTION_2_1();
  (*(v83 + 256))(0x4087700000000000, 0);

  v85 = (v76)(v84);
  (*(*v85 + 232))(0x4079A00000000000, 0);

  (v76)(v86);
  OUTLINED_FUNCTION_2_1();
  v88 = (*(v87 + 2048))();

  (*(*v88 + 1984))(1);

  (v76)(v89);
  OUTLINED_FUNCTION_2_1();
  v91 = (*(v90 + 2048))();

  (*(*v91 + 1696))(15);

  (v76)(v92);
  OUTLINED_FUNCTION_2_1();
  v94 = (*(v93 + 2048))();

  (*(*v94 + 1792))(10);

  OUTLINED_FUNCTION_9_2();
  v96 = *(v95 + 1904);
  v96();
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 1696))(22);

  v99 = (v96)(v98);
  sub_1E3E5F58C();
  OUTLINED_FUNCTION_7_16();
  v100 = *(*v99 + 680);
  v101 = v94;
  v100(v94);

  (v96)(v102);
  OUTLINED_FUNCTION_2_1();
  (*(v103 + 2056))(6, 0);

  (v96)(v104);
  OUTLINED_FUNCTION_2_1();
  (*(v105 + 1984))(1);

  (v96)(v106);
  OUTLINED_FUNCTION_2_1();
  (*(v107 + 256))(0x408E000000000000, 0);

  OUTLINED_FUNCTION_9_2();
  v109 = *(v108 + 1928);
  v109();
  OUTLINED_FUNCTION_2_1();
  (*(v110 + 1696))(22);

  v112 = (v109)(v111);
  sub_1E3E5F58C();
  OUTLINED_FUNCTION_7_16();
  v113 = *(*v112 + 680);
  v114 = v94;
  v113(v94);

  (v109)(v115);
  OUTLINED_FUNCTION_2_1();
  (*(v116 + 2056))(6, 0);

  (v109)(v117);
  OUTLINED_FUNCTION_2_1();
  (*(v118 + 1984))(1);

  (v109)(v119);
  OUTLINED_FUNCTION_2_1();
  (*(v120 + 256))(0x408E000000000000, 0);

  (v109)(v121);
  sub_1E3952C88();
  OUTLINED_FUNCTION_1_229();
  (*(v122 + 160))(v146);

  OUTLINED_FUNCTION_9_2();
  v124 = (*(v123 + 1760))();
  sub_1E3C37CBC(v124, 39);

  OUTLINED_FUNCTION_9_2();
  v126 = (*(v125 + 1784))();
  sub_1E3C37CBC(v126, 23);

  OUTLINED_FUNCTION_9_2();
  v128 = (*(v127 + 1808))();
  sub_1E3C37CBC(v128, 5);

  OUTLINED_FUNCTION_9_2();
  v130 = (*(v129 + 1832))();
  sub_1E3C37CBC(v130, 6);

  OUTLINED_FUNCTION_9_2();
  v132 = (*(v131 + 1856))();
  sub_1E3C37CBC(v132, 15);

  OUTLINED_FUNCTION_9_2();
  v134 = (*(v133 + 1880))();
  sub_1E3C37CBC(v134, 59);

  OUTLINED_FUNCTION_9_2();
  v136 = (*(v135 + 1904))();
  sub_1E3C37CBC(v136, 17);

  OUTLINED_FUNCTION_9_2();
  v138 = (*(v137 + 1928))();
  sub_1E3C37CBC(v138, 18);

  OUTLINED_FUNCTION_9_2();
  v140 = (*(v139 + 1952))();
  sub_1E3C37CBC(v140, 73);

  return v1;
}

uint64_t sub_1E3E2B148()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E374AD40(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t type metadata accessor for SyndicationListLockup(uint64_t a1)
{
  result = qword_1EE29B140;
  if (!qword_1EE29B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E2B21C(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  a3[26] = sub_1E4200544();
  v6 = *(type metadata accessor for SyndicationListLockup(0) + 32);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  v7 = *(*a1 + 392);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_4;
  }

  if (*v9 != _TtC8VideosUI21SyndicationCellLayout)
  {

LABEL_4:
    type metadata accessor for SyndicationCellLayout();
    v9 = sub_1E3E0B744();
  }

  a3[27] = v9;
}

uint64_t sub_1E3E2B37C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39830, &qword_1E42D51E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39838, &qword_1E42D51E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39840, &qword_1E42D51F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-v11];
  v13 = *(v0 + 216);
  v14 = swift_beginAccess();
  if (v13[128] == 1)
  {
    (*(*v13 + 176))(v37, v14);
    if (v38)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v17.n128_u64[0] = v37[2];
      v18.n128_u64[0] = v37[3];
      v15.n128_u64[0] = v37[0];
      v16.n128_u64[0] = v37[1];
      j_nullsub_1(v15, v16, v17, v18);
    }

    OUTLINED_FUNCTION_3();
    sub_1E3E2B618();
    v28 = sub_1E4202734();
    v29 = &v12[*(v9 + 36)];
    *v29 = v28;
    *(v29 + 1) = v1;
    *(v29 + 2) = v2;
    *(v29 + 3) = v3;
    *(v29 + 4) = v4;
    v29[40] = 0;
    v19 = &qword_1ECF39840;
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v30, v31, v32, &qword_1E42D51F0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_169();
    sub_1E3E2DD88(v33, &qword_1ECF39840, &qword_1E42D51F0, v34);
    sub_1E3E2C128();
    OUTLINED_FUNCTION_19_115();
    v27 = v12;
  }

  else
  {
    sub_1E3E2B618();
    v19 = &qword_1ECF39830;
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v20, v21, v22, &qword_1E42D51E0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_169();
    sub_1E3E2DD88(v23, v24, v25, v26);
    sub_1E3E2C128();
    OUTLINED_FUNCTION_19_115();
    v27 = v7;
  }

  return sub_1E325F69C(v27, v19);
}

void sub_1E3E2B618()
{
  OUTLINED_FUNCTION_21_5();
  v132 = v1;
  v119 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v118 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8, &unk_1E42D52A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3D0, &qword_1E42A96A0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398B8, &unk_1E42D52B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398A0, &qword_1E42D5218);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39890, &qword_1E42D5210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v115 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39880, &qword_1E42D5208);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39870, &qword_1E42D5200);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = (v32 - v31);
  v34 = v0[27];
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v35 + 152))(v136);
  v36 = v136[0];
  v37 = v136[1];
  v38 = v136[2];
  v39 = v136[3];

  v44 = 0;
  if ((v137 & 1) == 0)
  {
    v40.n128_u64[0] = v36;
    v41.n128_u64[0] = v37;
    v42.n128_u64[0] = v38;
    v43.n128_u64[0] = v39;
    j_nullsub_1(v40, v41, v42, v43);
    v44 = v45;
  }

  v46 = *v0;
  LOBYTE(v140[0]) = 38;
  (*(*v46 + 776))(&v142, v140, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v145)
  {
    if (swift_dynamicCast())
    {
      v47 = LOBYTE(v140[0]);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1E325F69C(&v142, &unk_1ECF296E0);
  }

  v47 = 1;
LABEL_8:
  v120 = v47;
  (*(*v34 + 176))(v138);
  v128 = v22;
  v134 = v34;
  if (v139)
  {
    v52 = OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v50.n128_u64[0] = v138[2];
    v51.n128_u64[0] = v138[3];
    v48.n128_u64[0] = v138[0];
    v49.n128_u64[0] = v138[1];
    v52 = j_nullsub_1(v48, v49, v50, v51);
  }

  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  type metadata accessor for SyndicationListLockup(0);
  sub_1E3746E10(v33);
  v60 = sub_1E3B0352C();
  v61 = *(v29 + 8);
  v61(v33, v27);
  if (v60)
  {
    v142 = sub_1E4201D54();
    v143 = 0;
    v144 = 0;
    sub_1E37E65E0(v142, v62, v63);
  }

  else
  {
    v142 = sub_1E4201B84();
    v143 = 0;
    v144 = 0;
    sub_1E37E658C(v142, v64, v65);
  }

  v66 = sub_1E4203E84();
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v67 + 152))(v140);
  v68 = *&v140[3];

  if (v141)
  {
    v68 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  sub_1E3746E10(v33);
  v69 = sub_1E3B0352C();
  v61(v33, v27);
  if (v69)
  {
    v68 = 0.0;
  }

  v70 = sub_1E4201D54();
  v71 = v135;
  *v135 = v70;
  v71[1] = 0;
  *(v71 + 16) = 0;
  *v133 = v66;
  v121 = v66;

  sub_1E3E2C424();
  if (v120)
  {
    v72 = 1;
    v73 = v122;
    v74 = v124;
  }

  else
  {
    sub_1E4203B04();
    v75 = sub_1E4202764();
    v76 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v75)
    {
      v76 = sub_1E4202774();
    }

    sub_1E3746E10(v33);
    v77 = sub_1E3B0352C();
    v61(v33, v27);
    if ((v77 & 1) == 0)
    {
      sub_1E3E2DA8C();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();
    v78 = v117;
    (*(v118 + 32))(v117, v6, v119);
    v74 = v124;
    v79 = v78 + *(v124 + 36);
    *v79 = v76;
    *(v79 + 8) = v44;
    *(v79 + 16) = v56;
    *(v79 + 24) = v58;
    *(v79 + 32) = v68;
    *(v79 + 40) = 0;
    v80 = v78;
    v81 = v116;
    sub_1E38E4D50(v80, v116);
    v73 = v122;
    sub_1E38E4D50(v81, v122);
    v72 = 0;
  }

  __swift_storeEnumTagSinglePayload(v73, v72, 1, v74);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398C0, &qword_1E42D52C0);
  v83 = v135 + *(v82 + 44);
  v84 = v133;
  v85 = v123;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v86, v87, v88, v89);
  v90 = v126;
  sub_1E3743538(v73, v126, &qword_1ECF2D3D0, &qword_1E42A96A0);
  *v83 = 0;
  v83[8] = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398C8, &qword_1E42D52C8);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v92, v93, v94, v95);
  v96 = &v83[*(v91 + 64)];
  *v96 = 0;
  v96[8] = 0;
  sub_1E3743538(v90, &v83[*(v91 + 80)], &qword_1ECF2D3D0, &qword_1E42A96A0);
  sub_1E325F69C(v73, &qword_1ECF2D3D0);
  sub_1E325F69C(v84, &qword_1ECF398B8);
  sub_1E325F69C(v90, &qword_1ECF2D3D0);
  sub_1E325F69C(v85, &qword_1ECF398B8);
  v97 = sub_1E4202764();
  v98 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v97)
  {
    v98 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v99 = v128;
  sub_1E3741EA0(v135, v128, &qword_1ECF398A0, &qword_1E42D5218);
  v100 = (v99 + *(v125 + 36));
  *v100 = v98;
  OUTLINED_FUNCTION_15_3(v100);
  v101 = sub_1E4202784();
  v102 = sub_1E4202774();
  sub_1E4202774();
  v103 = sub_1E4202774();
  v104 = v129;
  v105 = v134;
  if (v103 != v101)
  {
    v102 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v106 = sub_1E3741EA0(v99, v104, &qword_1ECF39890, &qword_1E42D5210);
  v107 = v104 + *(v127 + 36);
  *v107 = v102;
  *(v107 + 8) = v59;
  *(v107 + 16) = v57;
  *(v107 + 24) = v44;
  *(v107 + 32) = v56;
  *(v107 + 40) = 0;
  if (!(*(*v105 + 744))(v106))
  {
    v108 = [objc_opt_self() systemFillColor];
  }

  v109 = sub_1E4203644();
  v110 = sub_1E4202734();
  v111 = v104;
  v112 = v131;
  v113 = sub_1E3741EA0(v111, v131, &qword_1ECF39880, &qword_1E42D5208);
  v114 = v112 + *(v130 + 36);
  *v114 = v109;
  *(v114 + 8) = v110;
  (*(*v105 + 552))(&v142, v113);
  sub_1E3E2C26C();
  sub_1E3E361E8();

  sub_1E325F69C(v112, &qword_1ECF39870);
  OUTLINED_FUNCTION_20_0();
}

unint64_t sub_1E3E2C128()
{
  result = qword_1ECF39850;
  if (!qword_1ECF39850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39830, &qword_1E42D51E0);
    sub_1E3E2C1B4();
    sub_1E3E2C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39850);
  }

  return result;
}

unint64_t sub_1E3E2C1B4()
{
  result = qword_1ECF39858;
  if (!qword_1ECF39858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39860, &qword_1E42D51F8);
    sub_1E3E2C26C();
    sub_1E374AD40(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39858);
  }

  return result;
}

unint64_t sub_1E3E2C26C()
{
  result = qword_1ECF39868;
  if (!qword_1ECF39868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39870, &qword_1E42D5200);
    sub_1E3E2DD88(&qword_1ECF39878, &qword_1ECF39880, &qword_1E42D5208, sub_1E3E2C350);
    sub_1E374AD40(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39868);
  }

  return result;
}

unint64_t sub_1E3E2C350()
{
  result = qword_1ECF39888;
  if (!qword_1ECF39888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39890, &qword_1E42D5210);
    sub_1E374AD40(&qword_1ECF39898, &qword_1ECF398A0, &qword_1E42D5218, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39888);
  }

  return result;
}

void sub_1E3E2C424()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v62 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398D0, &qword_1E42D52D0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398D8, &qword_1E42D52D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398E0, &qword_1E42D52E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398E8, &qword_1E42D52E8);
  OUTLINED_FUNCTION_0_10();
  v59 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v60 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v58 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398F0, &qword_1E42D52F0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  v57 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v57 - v32;
  sub_1E3E2C908();
  sub_1E4202784();
  sub_1E4200A54();
  OUTLINED_FUNCTION_10_136(&v33[*(v29 + 44)], v34, v35, v36, v37);
  *v14 = sub_1E4201D54();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398F8, &qword_1E42D52F8);
  sub_1E3E2CD80(v9, &v14[*(v38 + 44)]);
  LOBYTE(v29) = sub_1E4202744();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v29)
  {
    v39 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v14, v18, &qword_1ECF398D0, &qword_1E42D52D0);
  v40 = &v18[*(v15 + 36)];
  *v40 = v39;
  *(v40 + 1) = v5;
  *(v40 + 2) = v7;
  *(v40 + 3) = v0;
  *(v40 + 4) = v1;
  v40[40] = 0;
  v41 = sub_1E4202754();
  v42 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v41)
  {
    v42 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v18, v22, &qword_1ECF398D8, &qword_1E42D52D8);
  v43 = &v22[*(v19 + 36)];
  *v43 = v42;
  OUTLINED_FUNCTION_15_3(v43);
  sub_1E3E2DD88(&qword_1ECF39900, &qword_1ECF398E0, &qword_1E42D52E0, sub_1E3E2DE08);
  sub_1E3D4174C();
  v44 = v58;
  sub_1E3D414C8(v19, v58);

  sub_1E325F69C(v22, &qword_1ECF398E0);
  v45 = v33;
  v46 = v57;
  sub_1E3743538(v33, v57, &qword_1ECF398F0, &qword_1E42D52F0);
  v48 = v59;
  v47 = v60;
  v49 = *(v59 + 16);
  v50 = v61;
  v49(v60, v44, v61);
  v51 = v62;
  sub_1E3743538(v46, v62, &qword_1ECF398F0, &qword_1E42D52F0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39918, &qword_1E42D5300);
  v49(v51 + *(v52 + 48), v47, v50);
  v53 = v51 + *(v52 + 64);
  *v53 = v3;
  *(v53 + 8) = 0;
  v54 = *(v48 + 8);
  v54(v44, v50);
  sub_1E325F69C(v45, &qword_1ECF398F0);
  v54(v47, v50);
  v55 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v55, v56);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3E2C908()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v61 = v7;
  v62 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367B0, &qword_1E42C8C18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v23 = (*(**v0 + 488))(v19);
  if (v23)
  {
    v24 = sub_1E373E010(39, v23, v22);

    if (v24)
    {
      type metadata accessor for ImageViewModel();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
      }
    }

    else
    {
      v23 = 0;
    }
  }

  (*(**(v3 + 216) + 176))(v63);
  if (v64)
  {
    v29 = OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v27.n128_u64[0] = v63[2];
    v28.n128_u64[0] = v63[3];
    v25.n128_u64[0] = v63[0];
    v26.n128_u64[0] = v63[1];
    v29 = j_nullsub_1(v25, v26, v27, v28);
  }

  v31 = v29;
  v32 = v30;
  if (v23)
  {
    v58 = v21;
    v59 = v5;
    memcpy(v74, (v3 + 8), 0x5BuLL);
    v77 = *(v3 + 8);
    v78 = *(v3 + 24);
    v33 = *(v3 + 66);
    v75 = *(v3 + 50);
    *v76 = v33;
    *&v76[14] = *(v3 + 80);
    v34 = *&v74[89];
    sub_1E375C2C0(v74, &v65);
    v35 = sub_1E3E2DA8C();
    v65 = v77;
    v66 = v78;
    v67 = v35;
    v68 = 0;
    v69 = 256;
    v70 = v75;
    *v71 = *v76;
    *&v71[14] = *&v76[14];
    v72 = 1;
    v73 = v34;
    v36 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v23, &v65, 0, v36 & 1, 0, 0, v10);
    sub_1E375C31C(&v65);
    v37 = sub_1E4202744();
    v38 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v37)
    {
      v38 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();
    (*(v61 + 32))(v13, v10, v62);
    v39 = &v13[*(v60 + 36)];
    *v39 = v38;
    OUTLINED_FUNCTION_15_3(v39);
    v40 = sub_1E4202754();
    v41 = sub_1E4202774();
    sub_1E4202774();
    v42 = sub_1E4202774();
    v43 = v59;
    if (v42 != v40)
    {
      v41 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    sub_1E3741EA0(v13, v17, &qword_1ECF29240, &unk_1E429B770);
    v44 = &v17[*(v14 + 36)];
    *v44 = v41;
    *(v44 + 1) = v32;
    *(v44 + 2) = v31;
    *(v44 + 3) = v1;
    *(v44 + 4) = v2;
    v44[40] = 0;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v45, v46, v47, v48);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v49, v50, v51, v52);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v14);
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  }
}

uint64_t sub_1E3E2CD80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39920, &qword_1E42D5308);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  sub_1E3E2D030(&v38 - v16);
  v18 = sub_1E3E2D800(*a1);
  if (!v19)
  {
    OUTLINED_FUNCTION_15_125();
    v26 = 1;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_1E3285D14();
  v3 = *((*MEMORY[0x1E69E7D40] & **v22) + 0x110);
  v4 = (*MEMORY[0x1E69E7D40] & **v22) + 272;
  v2 = *v22;
  v23 = (v3)(v20, v21);

  if (!v23)
  {
    v26 = 0;
    OUTLINED_FUNCTION_15_125();
    goto LABEL_6;
  }

  v24 = v23;
  OUTLINED_FUNCTION_18();
  sub_1E3C11690();
  v26 = v25;
  v28 = v27;
  v29 = sub_1E4202744();
  sub_1E3E0B68C();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v5 = v28 & 0xFF00;
  v2 = v28 & 1;
  v3 = v29;
  v4 = 0x1000000;
LABEL_7:
  sub_1E3743538(v17, v14, &qword_1ECF39920, &qword_1E42D5308);
  v30 = v5 | v2 | v4;
  OUTLINED_FUNCTION_40_21();
  sub_1E3743538(v31, v32, v33, &qword_1E42D5308);
  v34 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39928, &qword_1E42D5310) + 48));
  *&v39[0] = v26;
  *(&v39[0] + 1) = v30;
  v39[1] = v3;
  *v40 = v6;
  *&v40[8] = v7;
  *&v40[16] = v8;
  v40[24] = 0;
  *v34 = v39[0];
  v34[1] = v3;
  v34[2] = *v40;
  *(v34 + 41) = *&v40[9];
  sub_1E3743538(v39, v41, &qword_1ECF39930, &unk_1E42D5318);
  sub_1E325F69C(v17, &qword_1ECF39920);
  v41[0] = v26;
  v41[1] = v30;
  v41[2] = v3;
  v41[3] = 0;
  v41[4] = v6;
  v41[5] = v7;
  v41[6] = v8;
  v42 = 0;
  sub_1E325F69C(v41, &qword_1ECF39930);
  v35 = OUTLINED_FUNCTION_32_0();
  return sub_1E325F69C(v35, v36);
}

uint64_t sub_1E3E2D030@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39940, &qword_1E42D5328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v77 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39948, &unk_1E42D5330);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v76 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v75 = v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530, &qword_1E42D5340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v70 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39950, &qword_1E42D5348);
  OUTLINED_FUNCTION_0_10();
  v72 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v80 = v21;
  v22 = *(**v1 + 488);
  v24 = v22();
  if (v24)
  {
    v24 = sub_1E373E010(23, v24, v23);

    if (v24)
    {
      if (*v24 != _TtC8VideosUI13TextViewModel)
      {

        v24 = 0;
      }
    }
  }

  v81 = v24;
  v25 = v22();
  if (v25)
  {
    v27 = sub_1E373E010(15, v25, v26);

    v28 = v14;
    v29 = v10;
    if (v27)
    {
      if (*v27 == _TtC8VideosUI13TextViewModel)
      {
        v82 = v27;
        goto LABEL_12;
      }
    }

    v82 = 0;
  }

  else
  {
    v82 = 0;
    v28 = v14;
    v29 = v10;
  }

LABEL_12:
  sub_1E374EA2C();
  OUTLINED_FUNCTION_30();
  (*(v30 + 152))(v83);

  sub_1E37BD068();
  OUTLINED_FUNCTION_30();
  (*(v31 + 152))(v84);

  if (v81)
  {
    v34 = sub_1E3C27528(v32, v33);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v35 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v70[2] = v34;
    v37 = v71;
    sub_1E38838AC(v34, 2u, 2, v71, OpaqueTypeConformance2, v17);
    v38 = *(v29 + 8);
    v70[1] = v29 + 8;
    v38(v13, v37);
    sub_1E4202744();
    sub_1E4200A54();
    OUTLINED_FUNCTION_10_136(&v17[*(v28 + 36)], v39, v40, v41, v42);
    sub_1E3E2DF18();
    sub_1E3D4174C();
    sub_1E3D414C8(v28, v80);

    sub_1E325F69C(v17, &qword_1ECF37530);
    v43 = v82;
    if (v82)
    {

      v46 = sub_1E3C27528(v44, v45);
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      sub_1E38838AC(v46, 2u, 2, v37, OpaqueTypeConformance2, v17);
      v38(v13, v37);
      sub_1E4202744();
      sub_1E4200A54();
      OUTLINED_FUNCTION_10_136(&v17[*(v28 + 36)], v47, v48, v49, v50);
      sub_1E3D4174C();
      v51 = v28;
      v52 = v73;
      sub_1E3D414C8(v51, v73);
      v82 = v43;

      sub_1E325F69C(v17, &qword_1ECF37530);
      v53 = v72;
      v55 = v74;
      v54 = v75;
      (*(v72 + 32))(v75, v52, v74);
      v35 = 0;
    }

    else
    {
      v82 = 0;
      v55 = v74;
      v54 = v75;
      v53 = v72;
      v52 = v73;
    }

    __swift_storeEnumTagSinglePayload(v54, v35, 1, v55);
    v59 = *(v53 + 16);
    v60 = v80;
    v59(v52, v80, v55);
    v61 = v76;
    sub_1E3743538(v54, v76, &qword_1ECF39948, &unk_1E42D5330);
    v62 = v77;
    v59(v77, v52, v55);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39960, qword_1E42D5350);
    sub_1E3743538(v61, v62 + *(v63 + 48), &qword_1ECF39948, &unk_1E42D5330);

    OUTLINED_FUNCTION_40_21();
    sub_1E325F69C(v64, v65);
    v66 = *(v53 + 8);
    v66(v60, v55);
    OUTLINED_FUNCTION_40_21();
    sub_1E325F69C(v67, v68);
    v66(v52, v55);
    v69 = v79;
    sub_1E3741EA0(v62, v79, &qword_1ECF39940, &qword_1E42D5328);
    return __swift_storeEnumTagSinglePayload(v69, 0, 1, v78);
  }

  else
  {

    v57 = v78;
    v56 = v79;

    return __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
  }
}

uint64_t sub_1E3E2D800(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  LOBYTE(v18) = 0;
  (*(*a1 + 776))(v19, &v18, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_1E325F69C(v19, &unk_1ECF296E0);
  }

  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    v18 = a1;
    type metadata accessor for ViewModel();
    sub_1E3E2DEC0();
    v15 = sub_1E4207944();
    v17 = sub_1E3270FC8(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v11, v12, "SyndicationListLockup:: missing syndicationId attribute for cellViewModel: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  (*(v4 + 8))(v8, v2);
  return 0;
}

double sub_1E3E2DA8C()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  v8 = COERCE_DOUBLE((*(v7 + 200))());
  v10 = v9;

  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  type metadata accessor for SyndicationListLockup(0);
  sub_1E3746E10(v6);
  v12 = sub_1E3B0352C();
  (*(v2 + 8))(v6, v0);
  if (v12)
  {
    [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:v11];
    return v13;
  }

  return v11;
}

void sub_1E3E2DC14(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3BF5F74();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SyndicationCellLayout();
      if (v3 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E3E2DCD0()
{
  result = qword_1ECF398A8;
  if (!qword_1ECF398A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF398B0, &qword_1E42D5298);
    sub_1E3E2DD88(&qword_1ECF39848, &qword_1ECF39840, &qword_1E42D51F0, sub_1E3E2C128);
    sub_1E3E2C128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF398A8);
  }

  return result;
}

uint64_t sub_1E3E2DD88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E2DE08()
{
  result = qword_1ECF39908;
  if (!qword_1ECF39908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF398D8, &qword_1E42D52D8);
    sub_1E374AD40(&qword_1ECF39910, &qword_1ECF398D0, &qword_1E42D52D0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39908);
  }

  return result;
}

unint64_t sub_1E3E2DEC0()
{
  result = qword_1ECF39938;
  if (!qword_1ECF39938)
  {
    type metadata accessor for ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39938);
  }

  return result;
}

unint64_t sub_1E3E2DF18()
{
  result = qword_1ECF39958;
  if (!qword_1ECF39958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37530, &qword_1E42D5340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39958);
  }

  return result;
}

uint64_t sub_1E3E2E004(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v6)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v8 = sub_1E3A9BD04(v7, v4);

    if (v8)
    {
    }
  }

  else if (!v4)
  {
  }

  result = sub_1E32AE9B0(v4);
  if (result)
  {
    v10 = result;
    if (result < 1)
    {
      goto LABEL_30;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        v12 = *(v4 + 8 * i + 32);
      }

      v13 = v12;
      [v12 removeFromSuperview];
    }
  }

  v6 = *&v1[v5];
  if (!v6)
  {
LABEL_27:
    [v1 vui_setNeedsLayout];
  }

LABEL_14:
  result = sub_1E32AE9B0(v6);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    if (result)
    {
      v15 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_descriptionTextView;
      v16 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView;
      v27 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_debugUIOverlay;

      v17 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1E6911E60](v17, v6);
        }

        else
        {
          v18 = *(v6 + 8 * v17 + 32);
        }

        v19 = v18;
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          v22 = *&v1[v15];
          *&v1[v15] = v20;
          v23 = v19;

          v24 = *&v1[v16];
          *&v1[v16] = v21;
          v25 = v23;

          [v1 addSubview_];
        }

        else
        {
          [v1 addSubview_];
        }

        if (v1[v27] == 1)
        {
          v26 = [objc_opt_self() randomColor];
          [v19 setVuiBackgroundColor_];
        }

        ++v17;
      }

      while (v14 != v17);
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void (*sub_1E3E2E28C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3[3] = *(v1 + v4);

  return sub_1E3E2E310;
}

void sub_1E3E2E310(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3E2E004(v4);
  }

  else
  {
    sub_1E3E2E004(v3);
  }

  free(v2);
}

double sub_1E3E2E3E8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3E2E434(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void (*sub_1E3E2E4D8())()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer);
  }

  else
  {
    v4 = nullsub_1;
    *v1 = nullsub_1;
    v1[1] = 0;
  }

  sub_1E37FAED4(v2, v3);
  return v4;
}

unint64_t sub_1E3E2E53C(char a1)
{
  v2 = v1;
  [v1 bounds];
  Width = CGRectGetWidth(v97);
  v5 = &selRef_processPendingChanges;
  v6 = [v1 safeAreaInsets];
  v8 = v7;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v6);
  v10 = result;
  v84 = result;
  if ((a1 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    [v1 sizeThatFits_];
    result = sub_1E32AE9B0(v10);
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    v31 = result;
    if (!result)
    {
    }

    OUTLINED_FUNCTION_25_0();
    v83 = *(v32 + 184);
    v80 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment;
    v81 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView;
    v82 = v10 & 0xC000000000000001;
    v85 = 1.79769313e308;
    for (i = 4; ; ++i)
    {
      if (v82)
      {
        v34 = MEMORY[0x1E6911E60](i - 4, v84);
      }

      else
      {
        v34 = *(v84 + 8 * i);
      }

      v35 = v34;
      result = v83();
      if (result)
      {
        if ((result & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1E6911E60](i - 4, result);
        }

        else
        {
          if ((i - 4) >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v36 = *(result + 8 * i);
        }

        v37 = *(*v36 + 152);

        v37(v91, v38);

        if (v92)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = *(v91 + 1);
        }

        v37(v93, v40);

        v41 = *&v93[3];
        if (v94)
        {
          v41 = 0.0;
        }
      }

      else
      {
        v36 = 0;
        v41 = 0.0;
        v39 = 0.0;
      }

      v42 = Width - v39 - v41;
      v43 = *&v2[v81];
      if (v43 && (sub_1E373C4DC(), v44 = v35, v45 = v43, v46 = sub_1E4206F64(), v45, v44, (v46 & 1) != 0))
      {
        v47 = v44;
        sub_1E3C8B764(v36, v42, 0.0);
        v49 = v48;
        v51 = v50 - *&v2[v80];
        if (!v36)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *(&v88 + 1) = type metadata accessor for DescriptionTemplateView();
        *&v87 = v2;
        v52 = objc_allocWithZone(MEMORY[0x1E69DD060]);
        v53 = v2;
        v54 = sub_1E3814AF0(&v87, sel_handleSelected_);
        v55 = v35;
        [v55 addGestureRecognizer_];
        [v55 setUserInteractionEnabled_];
        sub_1E3C8B764(v36, v42, 0.0);
        v49 = v56;
        v51 = v57;

        if (!v36)
        {
          goto LABEL_50;
        }
      }

      v58 = *(*v36 + 456);

      v60 = v58(v59);

      if (v60 == 7 || (LOBYTE(v87) = v60, LOBYTE(v90[0]) = 4, sub_1E3793D00(v61, v62, v63), (sub_1E4205E84() & 1) == 0))
      {
LABEL_50:
        v64 = (Width - v49) * 0.5;
        v65 = v85;
        if (v64 < v85)
        {
          v65 = (Width - v49) * 0.5;
        }

        v85 = v65;
        if (!v36)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      v64 = v85 + v39;
LABEL_53:
      v66 = *(*v36 + 152);

      v66(v95, v67);

      if ((v96 & 1) == 0)
      {
        v8 = v8 + v95[0];
      }

LABEL_55:
      [v35 setFrame_];
      [v35 frame];
      [v2 bounds];
      [v2 vuiIsRTL];
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v35 setFrame_];

      v8 = v51 + v8;
      if (!--v31)
      {
      }
    }
  }

  v11 = 0.0;
  if (!result)
  {
    goto LABEL_59;
  }

  result = sub_1E32AE9B0(result);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_71;
  }

  v12 = result;
  if (!result)
  {

LABEL_59:
    v68 = v8 + v11;
    [v1 bounds];
    if (v69 >= v68)
    {
      v76 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView;
      v77 = *&v2[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView];
      if (v77)
      {
        [v77 setBounces_];
        v78 = *&v2[v76];
        if (v78)
        {
          [v78 setShowsVerticalScrollIndicator_];
        }
      }

      result = [v2 v5[420]];
      *&v2[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment] = -v79;
    }

    else
    {
      v70 = sub_1E3E2E4D8();
      v70();

      v71 = *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView];
      if (v71)
      {
        v72 = v71;
        sub_1E3952C94();
        [v72 setContentInset_];
      }

      [v2 bounds];
      v74 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment;
      *&v2[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment] = v68 - v73 + 56.0;
      result = [v2 v5[420]];
      *&v2[v74] = *&v2[v74] - v75;
    }

    return result;
  }

  OUTLINED_FUNCTION_25_0();
  v14 = *(v13 + 184);
  v15 = v10 & 0xC000000000000001;
  v16 = 4;
  v86 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v15)
    {
      v17 = MEMORY[0x1E6911E60](v16 - 4, v10);
    }

    else
    {
      v17 = *(v10 + 8 * v16);
    }

    v18 = v17;
    result = v14();
    if (!result)
    {
      goto LABEL_20;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1E6911E60](v16 - 4, result);
LABEL_13:

    if (v19)
    {
      v20 = *(*v19 + 152);

      v20(v91, v21);

      v87 = v91[0];
      v88 = v91[1];
      v89 = v92;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
      sub_1E4148C68(sub_1E3C2FC84, v22, v90);
      v23 = v90[0];
      v24 = *(*v19 + 152);

      v24(v93, v25);

      if (v94)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = *&v93[1];
      }

      v24(v95, v27);
      v15 = v86;
      v10 = v84;

      v28 = v95[3];
      if (v96)
      {
        v28 = 0.0;
      }

      goto LABEL_21;
    }

LABEL_20:
    v19 = 0;
    v23 = 0.0;
    v28 = 0.0;
    v26 = 0.0;
LABEL_21:
    sub_1E3C8B764(v19, Width - v26 - v28, 0.0);
    v30 = v29;

    v11 = v11 + v23 + v30;
    ++v16;
    if (!--v12)
    {

      v5 = &selRef_processPendingChanges;
      goto LABEL_59;
    }
  }

  if ((v16 - 4) < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 8 * v16);

    goto LABEL_13;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

id sub_1E3E2EE74()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewLayouts) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewsAndModels) = 0;
  OUTLINED_FUNCTION_0_258(&OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView);
  v2 = (v0 + v1);
  v3 = type metadata accessor for DescriptionTemplateView();
  *v2 = 0;
  v2[1] = 0;
  v8 = v3;
  v4 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v5, v6, v4, v0, v8);
}

id sub_1E3E2EF24(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewLayouts] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewsAndModels] = 0;
  OUTLINED_FUNCTION_0_258(&OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView);
  v4 = &v1[v3];
  v5 = type metadata accessor for DescriptionTemplateView();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1E3E2EFEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptionTemplateView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3E2F0AC(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v6 = v2;
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))();
    if (v3 && (v4 = sub_1E3E2F1CC(v6, v3), , v4))
    {
      OUTLINED_FUNCTION_25();
      v5();
    }

    else
    {
    }
  }
}

uint64_t sub_1E3E2F1CC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1E4207694();

    if (v3)
    {
      type metadata accessor for ViewModel();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1E373C68C(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_1E3E2F2E4()
{

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E2F370()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v28 = v6;
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326D0, &qword_1E42B8F28);
  OUTLINED_FUNCTION_0_10();
  v30 = v9;
  v31 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
  type metadata accessor for EpicShowcasePlaybackManager.ItemIdsPublishersMap();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39980, &unk_1E42D5390);
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 16) = sub_1E4205CB4();
  *(v1 + v13) = v14;
  *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibleItems) = v15;
  v16 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibilityItemsSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v1 + v16) = sub_1E4200544();
  *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_subscriptions) = v15;
  v17 = sub_1E3B500B4();
  v32 = *(v17 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibilityItemsSubject);
  swift_retain_n();

  sub_1E4207064();
  v18 = [objc_opt_self() mainRunLoop];
  v33 = v18;
  v19 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_1E3C8D9A0();
  OUTLINED_FUNCTION_2_195();
  sub_1E32752B0(v20, &unk_1ECF326C0, &qword_1E429D160, v21);
  sub_1E3782CC4();
  sub_1E42007F4();
  sub_1E325F748(v4, &unk_1ECF3DB30, &unk_1E42A89B0);

  (*(v28 + 8))(v8, v29);

  OUTLINED_FUNCTION_4_0();
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1E3E2F914;
  *(v23 + 24) = v22;
  sub_1E32752B0(&unk_1EE28A2D0, &unk_1ECF326D0, &qword_1E42B8F28, MEMORY[0x1E695BE50]);
  v24 = v30;
  sub_1E4200844();

  (*(v31 + 8))(v12, v24);
  swift_beginAccess();
  v25 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
  sub_1E42004D4();
  swift_endAccess();

  return v17;
}

uint64_t sub_1E3E2F80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E3C066E8(0, 0, v4, &unk_1E42D5400, v6);

  return sub_1E325F748(v4, &unk_1ECF2C400, &qword_1E429ABE0);
}

uint64_t sub_1E3E2F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E3E2F93C, 0, 0);
}

uint64_t sub_1E3E2F93C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_5_0(*(v0 + 48) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1E4206434();
    *(v0 + 64) = sub_1E4206424();
    v3 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E3E2FA28, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E3E2FA28()
{
  OUTLINED_FUNCTION_24();

  sub_1E3E30598();

  return MEMORY[0x1EEE6DFA0](sub_1E3E2FA98, 0, 0);
}

void sub_1E3E2FAC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v8 = TVAppFeature.isEnabled.getter(17, a2, a3);
  v13 = a1[2];
  if (v8)
  {
    if (!v13)
    {
      OUTLINED_FUNCTION_5_182(v8, v9, v10, v11, v12);
      v49 = *(v6 + 16);
      OUTLINED_FUNCTION_0_259();
      OUTLINED_FUNCTION_13_140();
      v50 = 0;
      if (v5)
      {
        while (1)
        {
LABEL_40:
          OUTLINED_FUNCTION_4_201();

          sub_1E4200524();
        }
      }

      while (1)
      {
        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_48;
        }

        if (v51 >= v4)
        {
          goto LABEL_34;
        }

        ++v50;
        if (*(v49 + 64 + 8 * v51))
        {
          goto LABEL_40;
        }
      }
    }

    v14 = sub_1E3E2FF0C(a1);
    if (v14)
    {
      v55 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibleItems;
      v56 = v14;

      v16 = sub_1E3E30038(v15);

      v17 = sub_1E3AAF2AC(v16);
      v18 = sub_1E3E30CE4(a1, v17);
      v19 = v18;
      v20 = 0;
      v21 = 1 << *(v18 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v18 + 56;
      v24 = v22 & *(v18 + 56);
      v25 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
      v26 = (v21 + 63) >> 6;
      v57 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
      while (v24)
      {
LABEL_12:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = (*(v19 + 48) + ((v20 << 10) | (16 * v28)));
        v30 = v29[1];
        if (v30)
        {
          v31 = *v29;
          v32 = *(v6 + v25);
          OUTLINED_FUNCTION_5_0(v32 + 16, v58);
          if (*(*(v32 + 16) + 16))
          {

            sub_1E327D33C(v31, v30);
            v34 = v33;

            if (v34)
            {

              sub_1E4200524();
            }

            else
            {
            }

            v25 = v57;
          }
        }
      }

      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v27 >= v26)
        {

          *(v6 + v55) = v56;

          sub_1E3E3050C();
          v47 = OUTLINED_FUNCTION_27_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
          OUTLINED_FUNCTION_3_195(&qword_1EE28A140);
          sub_1E4200624();
          return;
        }

        v24 = *(v23 + 8 * v27);
        ++v20;
        if (v24)
        {
          v20 = v27;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }
  }

  else
  {
    if (!v13)
    {
      OUTLINED_FUNCTION_5_182(v8, v9, v10, v11, v12);
      v52 = *(v6 + 16);
      OUTLINED_FUNCTION_0_259();
      OUTLINED_FUNCTION_13_140();
      v53 = 0;
      if (v5)
      {
        while (1)
        {
LABEL_45:
          OUTLINED_FUNCTION_4_201();

          sub_1E4200524();
        }
      }

      while (1)
      {
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_49;
        }

        if (v54 >= v4)
        {
LABEL_34:

          return;
        }

        ++v53;
        if (*(v52 + 64 + 8 * v54))
        {
          goto LABEL_45;
        }
      }
    }

    v35 = a1[5];
    if (v35)
    {
      v36 = a1[4];
      OUTLINED_FUNCTION_5_182(v8, v9, v10, v11, v12);
      v37 = *(v6 + 16);
      OUTLINED_FUNCTION_0_259();
      v40 = v39 & v38;
      v42 = (v41 + 63) >> 6;
      swift_bridgeObjectRetain_n();

      v43 = 0;
      if (v40)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_47;
        }

        if (v44 >= v42)
        {

          goto LABEL_34;
        }

        v40 = *(v37 + 64 + 8 * v44);
        ++v43;
        if (v40)
        {
          v43 = v44;
          do
          {
LABEL_25:
            v45 = (*(v37 + 48) + 16 * (__clz(__rbit64(v40)) | (v43 << 6)));
            if (*v45 != v36 || v35 != v45[1])
            {
              sub_1E42079A4();
            }

            v40 &= v40 - 1;

            sub_1E4200524();
          }

          while (v40);
        }
      }
    }
  }
}

uint64_t sub_1E3E2FF0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v2, 0);
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E377FD30((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E3E30038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1E3E31650(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E3E31650((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E3E30150(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap);
  OUTLINED_FUNCTION_5_0(v6 + 16, v16);
  v7 = *(v6 + 16);

  v8 = sub_1E396E6C0(a1, a2, v7);

  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39980, &unk_1E42D5390);
    swift_allocObject();
    v10 = sub_1E4200544();
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v6 + 16);
    sub_1E3E317A0(v10, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v6 + 16) = v15;
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39980, &unk_1E42D5390);
  OUTLINED_FUNCTION_2_195();
  sub_1E32752B0(v12, &qword_1ECF39980, &unk_1E42D5390, v13);
  v9 = sub_1E42006B4();

  return v9;
}

uint64_t sub_1E3E302E4(unint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E324FBDC();
  v10 = OUTLINED_FUNCTION_16_119();
  v11(v10);

  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E3270FC8(a1, a2, v20);
    _os_log_impl(&dword_1E323F000, v12, v13, "EpicShowcasePlaybackManager: hasPlayedToEnd %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v9, v4);
  swift_beginAccess();

  sub_1E3277398(&v21, a1, a2);
  swift_endAccess();

  v16 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_3_195(&qword_1EE28A140);
  return sub_1E4200624();
}

uint64_t sub_1E3E3050C()
{

  sub_1E32772D8(v1);
  v2 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems;
  swift_beginAccess();

  v3 = OUTLINED_FUNCTION_27_0();
  v5 = sub_1E3E3198C(v3, v4);

  *(v0 + v2) = v5;
}

void sub_1E3E30598()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  sub_1E324FBDC();
  v10 = OUTLINED_FUNCTION_16_119();
  v62 = v11;
  v61 = v12;
  v60 = v13;
  (v13)(v10);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v71[0] = v67;
    *v16 = 136315138;
    OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems, v68);

    v17 = sub_1E4206634();
    v19 = v18;

    v20 = sub_1E3270FC8(v17, v19, v71);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1E323F000, v14, v15, "EpicShowcasePlaybackManager: playNextItemIfPossible played %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v21 = *(v4 + 8);
  v21(v9, v2);
  v22 = *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibleItems);
  v67 = *(v22 + 16);
  if (v67)
  {
    v58 = v21;
    v59 = v2;
    isa = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems;
    v65 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
    v64 = v22 + 32;

    v66 = isa;
    OUTLINED_FUNCTION_5_0(v1 + isa, v72);
    v24 = 0;
    v25 = 0;
    v57 = v4 + 8;
    *&v26 = 136315138;
    v56 = v26;
    while (1)
    {
      if (v25 >= *(v22 + 16))
      {
        __break(1u);
        return;
      }

      v27 = (v64 + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      ++v25;
      v30 = *(v1 + v66);
      if (*(v30 + 16))
      {
        sub_1E4207B44();

        sub_1E4206014();
        v31 = sub_1E4207BA4();
        isa = v30 + 56;
        v32 = ~(-1 << *(v30 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(isa + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(v30 + 48) + 16 * v33);
          if (*v34 != v29 || v34[1] != v28)
          {
            v36 = sub_1E42079A4();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if ((v24 & 1) == 0)
        {
LABEL_24:
          v42 = v63;
          v43 = v59;
          v60(v63, v62, v59);

          v44 = sub_1E41FFC94();
          v45 = sub_1E4206814();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v55 = v44;
            v44 = v47;
            v71[0] = v47;
            *v46 = v56;
            *(v46 + 4) = sub_1E3270FC8(v29, v28, v71);
            v48 = v45;
            v49 = v55;
            _os_log_impl(&dword_1E323F000, v55, v48, "EpicShowcasePlaybackManager: play item %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {
          }

          v58(v42, v43);
          v50 = OUTLINED_FUNCTION_14_135();
          OUTLINED_FUNCTION_5_0(v50, v69);
          isa = v44[2].isa;
          if (!*(isa + 16) || (, v51 = sub_1E327D33C(v29, v28), v53 = v52, , (v53 & 1) == 0))
          {

            v24 = 1;
            goto LABEL_21;
          }

          v41 = *(*(isa + 56) + 8 * v51);

          v24 = 1;
          LOBYTE(v71[0]) = 1;
          goto LABEL_19;
        }
      }

      else
      {

        if ((v24 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_16:
      v37 = OUTLINED_FUNCTION_14_135();
      OUTLINED_FUNCTION_5_0(v37, v70);
      isa = *(isa + 16);
      if (!*(isa + 16) || (, v38 = sub_1E327D33C(v29, v28), v40 = v39, , (v40 & 1) == 0))
      {

        goto LABEL_21;
      }

      v41 = *(*(isa + 56) + 8 * v38);

      LOBYTE(v71[0]) = 0;
LABEL_19:
      isa = v41;
      sub_1E4200524();

LABEL_21:
      if (v25 == v67)
      {

        return;
      }
    }
  }
}

uint64_t sub_1E3E30BB8()
{
}

uint64_t sub_1E3E30C24()
{
  v0 = sub_1E3B4FF80();

  return v0;
}

uint64_t sub_1E3E30C90()
{
  v0 = sub_1E3E30C24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E30CE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v3 = 0;
  v53 = a1;
  v4 = *(a1 + 16);
  v50 = a1;
  v51 = a1 + 32;
  v5 = (a2 + 56);

  v43 = 0;
  v52 = v2;
  for (i = v4; ; v4 = i)
  {
    if (v3 == v4)
    {
LABEL_49:

      return v2;
    }

    v6 = (v51 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    sub_1E4207B44();
    sub_1E4207B64();
    if (v7)
    {

      sub_1E4206014();
    }

    ++v3;
    v9 = sub_1E4207BA4();
    v10 = -1 << *(v2 + 32);
    v11 = v9 & ~v10;
    v12 = v11 >> 6;
    v13 = 1 << v11;
    if (((1 << v11) & v5[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_18:

    v2 = v52;
  }

  v14 = v2;
  v15 = ~v10;
  v16 = *(v14 + 48);
  while (1)
  {
    v17 = (v16 + 16 * v11);
    v18 = v17[1];
    if (!v18)
    {
      break;
    }

    if (v7)
    {
      v19 = *v17 == v8 && v18 == v7;
      if (v19 || (v9 = sub_1E42079A4(), (v9 & 1) != 0))
      {
        v54 = v3;

        goto LABEL_22;
      }
    }

LABEL_17:
    v11 = (v11 + 1) & v15;
    v12 = v11 >> 6;
    v13 = 1 << v11;
    if ((v5[v11 >> 6] & (1 << v11)) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v54 = v3;
LABEL_22:
  v20 = v52;
  v21 = *(v52 + 32);
  v44 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v44;
  v23 = v50;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v45 = &v43;
    MEMORY[0x1EEE9AC00](v9);
    v11 = &v43 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v11, v5, v22);
    v24 = *(v11 + 8 * v12) & ~v13;
    v47 = v11;
    *(v11 + 8 * v12) = v24;
    v25 = *(v20 + 16) - 1;
    i = *(v23 + 16);
    v13 = 1;
    v26 = v3;
LABEL_24:
    v46 = v25;
    v48 = v26;
LABEL_25:
    while (2)
    {
      if (v3 == i)
      {
        v2 = sub_1E3E31418(v47, v44, v46, v20);
        goto LABEL_49;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
        if (v3 >= *(v23 + 16))
        {
          goto LABEL_53;
        }

        v27 = (v51 + 16 * v3);
        v28 = *v27;
        v12 = v27[1];
        sub_1E4207B44();
        sub_1E4207B64();
        if (v12)
        {

          sub_1E4206014();
        }

        ++v3;
        v29 = sub_1E4207BA4();
        v30 = -1 << *(v20 + 32);
        v31 = v29 & ~v30;
        v11 = v31 >> 6;
        v32 = 1 << v31;
        if (((1 << v31) & v5[v31 >> 6]) == 0)
        {
LABEL_42:

          v20 = v52;
          v23 = v50;
          v26 = v48;
          continue;
        }

        v22 = ~v30;
        v33 = *(v20 + 48);
        while (1)
        {
          v34 = (v33 + 16 * v31);
          v35 = v34[1];
          if (v35)
          {
            if (v12)
            {
              v36 = *v34 == v28 && v35 == v12;
              if (v36 || (sub_1E42079A4() & 1) != 0)
              {

LABEL_44:
                v37 = v47[v11];
                v47[v11] = v37 & ~v32;
                v20 = v52;
                v23 = v50;
                v26 = v48;
                if ((v37 & v32) != 0)
                {
                  v25 = v46 - 1;
                  if (__OFSUB__(v46, 1))
                  {
                    __break(1u);
                  }

                  v26 = v3;
                  if (v46 == 1)
                  {

                    v2 = MEMORY[0x1E69E7CD0];
                    goto LABEL_49;
                  }

                  goto LABEL_24;
                }

                goto LABEL_25;
              }
            }
          }

          else if (!v12)
          {
            goto LABEL_44;
          }

          v31 = (v31 + 1) & v22;
          v11 = v31 >> 6;
          v32 = 1 << v31;
          if ((v5[v31 >> 6] & (1 << v31)) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      break;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();
  v40 = v43;
  v41 = sub_1E3E31390(v39, v44, v5, v44, v20, v11, &v53);
  if (v40)
  {

    result = MEMORY[0x1E69143B0](v39, -1, -1);
    __break(1u);
  }

  else
  {
    v42 = v41;

    MEMORY[0x1E69143B0](v39, -1, -1);

    return v42;
  }

  return result;
}

uint64_t sub_1E3E3119C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
LABEL_2:
  v25 = v7;
LABEL_3:
  while (2)
  {
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1E3E31418(v26, a2, v25, v5);
    }

    if (v9 < v10)
    {
      v11 = *a5 + 16 * v9;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      a5[1] = v9 + 1;
      sub_1E4207B44();
      sub_1E4207B64();
      if (v12)
      {

        sub_1E4206014();
      }

      result = sub_1E4207BA4();
      v14 = -1 << *(v5 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
      {
LABEL_19:

        v5 = a3;
        a5 = v27;
        continue;
      }

      v18 = ~v14;
      v19 = *(v5 + 48);
      while (1)
      {
        v20 = (v19 + 16 * v15);
        v21 = v20[1];
        if (v21)
        {
          if (v12)
          {
            v22 = *v20 == v13 && v21 == v12;
            if (v22 || (result = sub_1E42079A4(), (result & 1) != 0))
            {

LABEL_21:
              a5 = v27;
              v23 = v26[v16];
              v26[v16] = v23 & ~v17;
              v5 = a3;
              if ((v23 & v17) != 0)
              {
                v7 = v25 - 1;
                if (__OFSUB__(v25, 1))
                {
                  goto LABEL_27;
                }

                if (v25 == 1)
                {
                  return MEMORY[0x1E69E7CD0];
                }

                goto LABEL_2;
              }

              goto LABEL_3;
            }
          }
        }

        else if (!v12)
        {
          goto LABEL_21;
        }

        v15 = (v15 + 1) & v18;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v8 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    break;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E3E31390(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1E3E3119C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1E3E31418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0, &qword_1E42D53F0);
  result = sub_1E4207464();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_1E4207B44();
    sub_1E4207B64();
    if (v17)
    {

      sub_1E4206014();
    }

    result = sub_1E4207BA4();
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
          goto LABEL_28;
        }
      }

      goto LABEL_32;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_33;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_1E3E31650(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E31670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E31670(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3E317A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39988, &qword_1E42D53E8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

uint64_t type metadata accessor for EpicShowcasePlaybackManager(uint64_t a1)
{
  result = qword_1EE294C00;
  if (!qword_1EE294C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_1E3E3198C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1E373CBF0(0, v6, v8);
    v9 = sub_1E3E31BE4(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1E3E31B54(v11, v6, a2, a1);

    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_1E3E31B54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1E3E31BE4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1E3E31BE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1E4207B44();

      sub_1E4206014();
      v40 = sub_1E4207BA4();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1E42079A4();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_1E38689E8(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1E4207B44();

      sub_1E4206014();
      v18 = sub_1E4207BA4();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1E42079A4();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1E3E31F88()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v8;
  v5[1] = sub_1E398814C;

  return sub_1E3E2F91C(v2, v6, v7, v3);
}

uint64_t sub_1E3E3201C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v5;

  *v1 = *(v5 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E3E32124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v0, v1, v2, v3);
  return sub_1E42006B4();
}

void *sub_1E3E321AC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  v10 = sub_1E4200544();
  *a5 = a1;
  result = memcpy((a5 + 8), a2, 0x41uLL);
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  *(a5 + 96) = v10;
  return result;
}

uint64_t sub_1E3E32238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v72 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v71 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_3(&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v62 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39990, &qword_1E42D5410);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39998, &qword_1E42D5418);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399A0, &qword_1E42D5420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399A8, &qword_1E42D5428);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399B0, &qword_1E42D5430);
  OUTLINED_FUNCTION_0_10();
  v66 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_3(&v62 - v23);
  sub_1E3E32904();
  v24 = *v1;
  v25 = *(**v1 + 392);
  v26 = v25();
  if (v26 && ((*(*v26 + 176))(v74), v27 = v74[0], v28 = v74[1], v29 = v74[2], v30 = v74[3], , (v75 & 1) == 0))
  {
    v31.n128_u64[0] = v27;
    v32.n128_u64[0] = v28;
    v33.n128_u64[0] = v29;
    v34.n128_u64[0] = v30;
    v35 = j_nullsub_1(v31, v32, v33, v34);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_5_8();
  }

  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = sub_1E4202734();
  v44 = sub_1E329E454(v10, v14, &qword_1ECF39990, &qword_1E42D5410);
  v45 = &v14[*(v11 + 36)];
  *v45 = v43;
  *(v45 + 1) = v39;
  *(v45 + 2) = v40;
  *(v45 + 3) = v41;
  *(v45 + 4) = v42;
  v45[40] = 0;
  if (!*(v2 + 56) || (*(v2 + 72) & 1) == 0)
  {
    v46 = (v25)(v44);
    if (v46)
    {
      (*(*v46 + 304))();
    }
  }

  v47 = v64;
  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E329E454(v14, v17, &qword_1ECF39998, &qword_1E42D5418);
  v48 = &v17[*(v63 + 36)];
  v49 = v77;
  *v48 = v76;
  *(v48 + 1) = v49;
  *(v48 + 2) = v78;
  v50 = *(v2 + 88);
  sub_1E329E454(v17, v20, &qword_1ECF399A0, &qword_1E42D5420);
  v20[*(v47 + 36)] = v50;
  v51 = swift_allocObject();
  memcpy((v51 + 16), v2, 0x68uLL);
  sub_1E382CDC8(v2, v73);
  v52 = sub_1E3E331B8();
  v53 = v65;
  sub_1E4202E74();

  v54 = sub_1E325F6F0(v20, &qword_1ECF399A8, &qword_1E42D5428);
  if (v50 != 1)
  {
    v57 = sub_1E4204724();
    v56 = v68;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
    goto LABEL_15;
  }

  v55 = (*(*v24 + 576))(v54);
  v56 = v68;
  if (!v55)
  {
    v57 = sub_1E4204724();
    goto LABEL_14;
  }

  (*(*v55 + 224))(v55);

LABEL_15:
  v73[0] = v47;
  v73[1] = v52;
  OUTLINED_FUNCTION_2_196();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v69;
  v60 = v67;
  sub_1E3B29C44(v67, OpaqueTypeConformance2);
  sub_1E3B29C48();
  (*(v71 + 8))(v59, v72);
  sub_1E325F6F0(v56, &qword_1ECF2B7B0, &qword_1E429EC30);
  return (*(v66 + 8))(v53, v60);
}

void sub_1E3E32904()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v58 = v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A20, &qword_1E42D5458);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v51 - v4);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A40, &unk_1E42D55B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v51 - v7);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399F0, &qword_1E42D5440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v51 - v9);
  v11 = *(v1 + 56);
  v53 = v1;
  if (!v11 || (*(v1 + 72) & 1) == 0)
  {
    v52 = v5;
    OUTLINED_FUNCTION_8();
    v19 = (*(v18 + 464))();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    *&v65 = MEMORY[0x1E69E7CC0];
    v21 = sub_1E32AE9B0(v20);
    for (i = 0; ; ++i)
    {
      if (v21 == i)
      {

        v24 = v65;
        v25 = sub_1E4201B84();
        v26 = v52;
        *v52 = v25;
        *(v26 + 8) = 0;
        *(v26 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A48, &qword_1E42D55C8);
        v27 = v53;
        sub_1E3E335DC(v24);
        *&v65 = v28;
        v29 = swift_allocObject();
        memcpy((v29 + 16), v27, 0x68uLL);
        sub_1E382CDC8(v27, &v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A50, &qword_1E42D55D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A58, &qword_1E42D55D8);
        sub_1E32752B0(&qword_1ECF39A60, &qword_1ECF39A50, &qword_1E42D55D0, MEMORY[0x1E69E6338]);
        v30 = sub_1E3E35360();
        sub_1E3E35440(v30, v31, v32);
        sub_1E4203B44();

        sub_1E3E35494(v26, v57);
        swift_storeEnumTagMultiPayload();
        sub_1E3E33498();
        OUTLINED_FUNCTION_9_0();
        sub_1E32752B0(v33, &qword_1ECF39A20, &qword_1E42D5458, v34);
        sub_1E4201F44();
        sub_1E325F6F0(v26, &qword_1ECF39A20, &qword_1E42D5458);
        goto LABEL_42;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E6911E60](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v23 = *(v20 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      LOBYTE(v64) = 2;
      (*(*v23 + 776))(&v59, &v64, &unk_1F5D5D5B8, &off_1F5D5C878);
      if (v61)
      {
        if ((swift_dynamicCast() & 1) != 0 && v64 == 1)
        {

          continue;
        }
      }

      else
      {
        sub_1E325F6F0(&v59, &unk_1ECF296E0, &unk_1E4298030);
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }
  }

  v52 = v10;
  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 464))();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v64 = MEMORY[0x1E69E7CC0];
  v15 = sub_1E32AE9B0(v14);
  for (j = 0; v15 != j; ++j)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](j, v14);
    }

    else
    {
      if (j >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v17 = *(v14 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_45;
    }

    v63 = 2;
    (*(*v17 + 776))(&v65, &v63, &unk_1F5D5D5B8, &off_1F5D5C878);
    if (v66)
    {
      sub_1E329504C(&v65, &v59);
      sub_1E329504C(&v59, &v65);
      if (!swift_dynamicCast() || (v63 & 1) != 0)
      {

        continue;
      }
    }

    else
    {
      sub_1E325F6F0(&v65, &unk_1ECF296E0, &unk_1E4298030);
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  v35 = v64;
  v36 = v53;
  v37 = MEMORY[0x1E69E7CC0];
  if (v53[10])
  {
    OUTLINED_FUNCTION_8();
    v39 = (*(v38 + 464))();
    if (v39)
    {
      v37 = v39;
    }
  }

  v40 = v57;
  sub_1E3E3391C(v35, v37);

  sub_1E3EB9AB8(&v65);
  v41 = *(v36 + 24);
  v42 = *(v36 + 48);
  v59 = *(v36 + 1);
  v60 = v41 & 1;
  v61 = *(v36 + 2);
  v62 = v42 & 1;
  v43 = sub_1E4201D54();
  v44 = v52;
  *v52 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A80, &qword_1E42D55E0);
  sub_1E3E33B58();

  sub_1E4202794();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A00, &qword_1E42D5448);
  OUTLINED_FUNCTION_7_181(v45);
  sub_1E4202724();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399F0, &qword_1E42D5440);
  OUTLINED_FUNCTION_7_181(v46);
  sub_1E3294EE4(v44, v40, &qword_1ECF399F0, &qword_1E42D5440);
  swift_storeEnumTagMultiPayload();
  sub_1E3E33498();
  OUTLINED_FUNCTION_9_0();
  sub_1E32752B0(v47, v48, v49, v50);
  sub_1E4201F44();
  sub_1E325F6F0(v44, &qword_1ECF399F0, &qword_1E42D5440);
LABEL_42:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E33138()
{
  if (*(v0 + 104))
  {
    memset(v3, 0, sizeof(v3));
    v4 = 1;
    sub_1E40421AC(2, 0, v3, &v2);
    sub_1E4200524();
    return sub_1E38E5014(&v2);
  }

  return result;
}

unint64_t sub_1E3E331B8()
{
  result = qword_1ECF399B8;
  if (!qword_1ECF399B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399A8, &qword_1E42D5428);
    sub_1E3E33244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399B8);
  }

  return result;
}

unint64_t sub_1E3E33244()
{
  result = qword_1ECF399C0;
  if (!qword_1ECF399C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399A0, &qword_1E42D5420);
    sub_1E3E332D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399C0);
  }

  return result;
}

unint64_t sub_1E3E332D0()
{
  result = qword_1ECF399C8;
  if (!qword_1ECF399C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39998, &qword_1E42D5418);
    sub_1E3E3335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399C8);
  }

  return result;
}

unint64_t sub_1E3E3335C()
{
  result = qword_1ECF399D0;
  if (!qword_1ECF399D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39990, &qword_1E42D5410);
    sub_1E3E333E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399D0);
  }

  return result;
}

unint64_t sub_1E3E333E0()
{
  result = qword_1ECF399D8;
  if (!qword_1ECF399D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399E0, &qword_1E42D5438);
    sub_1E3E33498();
    sub_1E32752B0(&qword_1ECF39A18, &qword_1ECF39A20, &qword_1E42D5458, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399D8);
  }

  return result;
}

unint64_t sub_1E3E33498()
{
  result = qword_1ECF399E8;
  if (!qword_1ECF399E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399F0, &qword_1E42D5440);
    sub_1E3E33524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399E8);
  }

  return result;
}

unint64_t sub_1E3E33524()
{
  result = qword_1ECF399F8;
  if (!qword_1ECF399F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39A00, &qword_1E42D5448);
    sub_1E32752B0(&qword_1ECF39A08, &qword_1ECF39A10, &qword_1E42D5450, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399F8);
  }

  return result;
}

void sub_1E3E335DC(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1;
  v6 = MEMORY[0x1E69E7CC0];
  v25 = a1 & 0xC000000000000001;
  v26 = v2;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 == v2)
    {
      return;
    }

    if (v4)
    {
      v7 = MEMORY[0x1E6911E60](v3, v23);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_43;
      }
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_42;
    }

    v27 = v7;
    v28 = v6;
    sub_1E3742F1C(v7, v8, v9);
    sub_1E4206254();
    sub_1E4206254();
    if (v31 == v29 && v32 == v30)
    {
    }

    else
    {
      v11 = sub_1E42079A4();

      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_8();
    v13 = (*(v12 + 464))();
    if (v13)
    {
      break;
    }

LABEL_28:
    v17 = 0;
LABEL_33:
    v6 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1E3E34970(0, *(v28 + 2) + 1, 1, v28);
    }

    v21 = *(v6 + 2);
    v20 = *(v6 + 3);
    if (v21 >= v20 >> 1)
    {
      v6 = sub_1E3E34970((v20 > 1), v21 + 1, 1, v6);
    }

    *(v6 + 2) = v21 + 1;
    v22 = &v6[32 * v21];
    *(v22 + 4) = v3;
    *(v22 + 5) = v3++;
    *(v22 + 6) = v27;
    *(v22 + 7) = v17;
  }

  v14 = v13;
  v15 = sub_1E32AE9B0(v13);
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v17 = 0;
      goto LABEL_32;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v31 == v29 && v32 == v30)
    {

LABEL_31:

LABEL_32:
      v4 = v25;
      v2 = v26;
      v5 = v24;
      goto LABEL_33;
    }

    v19 = sub_1E42079A4();

    if (v19)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void *sub_1E3E3391C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for FlexibleGridLayoutHelper();
  v6 = sub_1E39DAFFC(a1);
  v7 = sub_1E39DAFFC(a2);
  v8 = sub_1E376EDA8(49, 0xE100000000000000, v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_1E376EDA8(50, 0xE100000000000000, v6);
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_1E376EDA8(51, 0xE100000000000000, v6);
  if (!v12)
  {

    goto LABEL_8;
  }

  v13 = v12;
  sub_1E379738C(v11);
  sub_1E379738C(v13);
  v14 = v9;
  v15 = sub_1E3E34840(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v15[2] = v18;
    v15[v17 + 4] = v14;
LABEL_10:
    v14 = 0;
    v17 = sub_1E3E34A78(v6, 0x34, 0xE100000000000000);

    sub_1E3E343E8(v17);
    v18 = v19;

    v16 = *(v18 + 16);
    if (!v16)
    {
      __break(1u);
      goto LABEL_17;
    }

    v6 = *(v18 + 32);

    v17 = sub_1E3E34A78(v7, 0x34, 0xE100000000000000);

    sub_1E3E343E8(v17);
    v18 = v20;

    v16 = *(v18 + 16);
    if (v16)
    {
      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v15 = sub_1E3E34840((v16 > 1), v18, 1, v15);
  }

  v21 = *(v18 + 32);

  if (*(v3 + 56))
  {
    v22 = *(v3 + 64);
  }

  else
  {
    v22 = INFINITY;
  }

  sub_1E39DB3E8(v6, v21, v22);

  return v15;
}

void sub_1E3E33B58()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v0;
  v2 = v1;
  v4 = v3;
  v50 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A88, &qword_1E42D55E8);
  OUTLINED_FUNCTION_0_10();
  v48 = v7;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v47 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v41 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A90, &unk_1E42D55F0);
  OUTLINED_FUNCTION_0_10();
  v51 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v45 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = *(v4 + 16);
  v53 = 0;
  v54 = v19;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_11_142();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  v21 = v2[1];
  *(v20 + 24) = *v2;
  *(v20 + 40) = v21;
  *(v20 + 49) = *(v2 + 25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A98, &qword_1E42D5620);
  sub_1E37432DC();
  v22 = MEMORY[0x1E69817F8];
  sub_1E32752B0(&qword_1ECF39AA0, &qword_1ECF39A98, &qword_1E42D5620, MEMORY[0x1E69817F8]);
  v42 = v18;
  sub_1E4203B34();
  v23 = v44;
  v24 = *(v44 + 16);
  v53 = 0;
  v54 = v24;
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_142();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v2[1];
  *(v25 + 24) = *v2;
  *(v25 + 40) = v26;
  *(v25 + 49) = *(v2 + 25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AA8, &qword_1E42D5628);
  sub_1E32752B0(&qword_1ECF39AB0, &qword_1ECF39AA8, &qword_1E42D5628, v22);
  v27 = v52;
  sub_1E4203B34();
  v28 = *(v51 + 16);
  v29 = v45;
  v30 = v18;
  v31 = v46;
  v28(v45, v30, v46);
  v32 = v47;
  v33 = v48;
  v34 = *(v48 + 16);
  v35 = v27;
  v36 = v49;
  v34(v47, v35, v49);
  v37 = v50;
  v28(v50, v29, v31);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AB8, &qword_1E42D5630);
  v34(v37 + *(v38 + 48), v32, v36);
  v39 = *(v33 + 8);
  v39(v52, v36);
  v40 = *(v51 + 8);
  v40(v42, v31);
  v39(v32, v36);
  v40(v29, v31);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E33F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AD8, &qword_1E42D5648);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = *v25;
  if ((*v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v36 = *(v23 + 16);
  if (v35 >= v36)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *v34 = sub_1E4201D44();
  *(v34 + 1) = 0;
  v34[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AE0, &qword_1E42D5650);
  sub_1E3E3414C();
  v37 = v35 >= v36 - 1;
  v38 = !v37;
  sub_1E3294EE4(v34, v31, &qword_1ECF39AD8, &qword_1E42D5648);
  sub_1E3294EE4(v31, v27, &qword_1ECF39AD8, &qword_1E42D5648);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AE8, &unk_1E42D5658) + 48);

  v40 = v27 + v39;
  *v40 = 0;
  *(v40 + 8) = v38;
  *(v40 + 9) = v37;
  sub_1E325F6F0(v34, &qword_1ECF39AD8, &qword_1E42D5648);
  sub_1E325F6F0(v31, &qword_1ECF39AD8, &qword_1E42D5648);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E3414C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  v6 = *v5;
  v43 = *(v5 + 8);
  v44 = v6;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  v42 = *(v5 + 24);
  v9 = *(v5 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B0, &unk_1E4297EA0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v46[0] = v44;
  v46[1] = v43;
  v46[2] = v7 & 1;
  v46[3] = v42;
  v46[4] = v8;
  v47 = v9 & 1;
  v48 = 0;
  v25 = (*(*v1 + 392))(v22);
  sub_1E382A9B4(v1, v46, v25, v24);

  *&v24[*(v11 + 44)] = 1;
  v27 = (*(*v3 + 392))(v26);
  sub_1E382A9B4(v3, v46, v27, v20);

  *&v20[*(v11 + 44)] = 1;
  sub_1E3294EE4(v24, v17, &qword_1ECF289B0, &unk_1E4297EA0);
  sub_1E3294EE4(v20, v14, &qword_1ECF289B0, &unk_1E4297EA0);
  v28 = v45;
  sub_1E3294EE4(v17, v45, &qword_1ECF289B0, &unk_1E4297EA0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AF0, &qword_1E42D5668);
  sub_1E3294EE4(v14, v28 + *(v29 + 48), &qword_1ECF289B0, &unk_1E4297EA0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v30, v31, v32);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v33, v34, v35);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v36, v37, v38);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v39, v40, v41);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E343E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1E3E346F0(0, v1, 0);
    v4 = sub_1E37817B4(a1);
    v6 = v5;
    v7 = 0;
    v8 = a1 + 64;
    v28 = v1;
    v9 = v1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_31;
        }

        v30 = v3;
        v11 = *(*(a1 + 56) + 8 * v4);
        v29 = v6;
        if (v11 >> 62)
        {
          v24 = sub_1E4207384();
          if (v24)
          {
            v27 = v24;
            v12 = sub_1E37FEA14(v24, 0);
            swift_bridgeObjectRetain_n();
            sub_1E3798230(v12 + 32, v27, v11);
            v26 = v25;

            if (v26 != v27)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v12 = MEMORY[0x1E69E7CC0];
          }

          v9 = v28;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        v14 = *(v31 + 16);
        v13 = *(v31 + 24);
        v15 = v30;
        if (v14 >= v13 >> 1)
        {
          sub_1E3E346F0((v13 > 1), v14 + 1, 1);
          v15 = v30;
          v9 = v28;
        }

        *(v31 + 16) = v14 + 1;
        *(v31 + 8 * v14 + 32) = v12;
        v16 = 1 << *(a1 + 32);
        if (v4 >= v16)
        {
          goto LABEL_32;
        }

        v8 = a1 + 64;
        v17 = *(a1 + 64 + 8 * v10);
        if ((v17 & (1 << v4)) == 0)
        {
          goto LABEL_33;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_34;
        }

        v18 = v17 & (-2 << (v4 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v10 << 6;
          v20 = v10 + 1;
          v21 = (a1 + 72 + 8 * v10);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1E3746E04(v4, v15, v29 & 1);
              v9 = v28;
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_20;
            }
          }

          sub_1E3746E04(v4, v15, v29 & 1);
          v9 = v28;
        }

LABEL_20:
        if (++v7 == v9)
        {
          return;
        }

        v6 = 0;
        v3 = *(a1 + 36);
        v4 = v16;
        if (v16 < 0)
        {
          break;
        }
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
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void *sub_1E3E346F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E34710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E34710(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A28, &qword_1E42D55A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3E34840(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A28, &qword_1E42D55A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3E34970(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A38, &qword_1E42D55B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3E34A78(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v17 = OUTLINED_FUNCTION_8_157();
      a2 = sub_1E3E34D84(v17, v18, v19, v20, v21);
      MEMORY[0x1E69143B0](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  sub_1E373CBF0(0, v7, v22 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));

  v9 = OUTLINED_FUNCTION_8_157();
  v14 = sub_1E3E34C28(v9, v10, v11, v12, v13);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

uint64_t sub_1E3E34C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1E42079A4();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:
      v22 = sub_1E3E34E2C(v24, a2, v8, a3);

      return v22;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E3E34D84(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1E3E34C28(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1E3E34E2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A30, &qword_1E42D55A8);
  result = sub_1E4207744();
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
    sub_1E4207B44();

    sub_1E4206014();
    result = sub_1E4207BA4();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E3E35084(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1E3E350C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_44()
{

  return swift_deallocObject();
}

void *sub_1E3E3518C@<X0>(void **a1@<X0>, void *a2@<X8>, __n128 a3@<Q0>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  if (v9)
  {
    *&v12 = COERCE_DOUBLE(OUTLINED_FUNCTION_15_126(a3));
    if ((v13 & 0xFF00) != 0x200)
    {
      v19 = v13;
      v18 = *&v12;
      v32 = (v13 >> 8) & 1;
LABEL_6:

      v21 = OUTLINED_FUNCTION_15_126(v20);
      if ((v22 & 0xFF00) != 0x200)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v14 = j__OUTLINED_FUNCTION_18();
  v15 = j__OUTLINED_FUNCTION_18();
  v16 = sub_1E406F5AC(v14, v15 & 1);
  v18 = v17;
  v19 = v16;
  v32 = (v16 >> 8) & 1;
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v23 = v8;
  v24 = v7;
  v25 = v6;
  v26 = a2;
  v27 = j__OUTLINED_FUNCTION_18();
  v28 = j__OUTLINED_FUNCTION_18();
  sub_1E406F5AC(v27, v28 & 1);
  v21 = v29;
  a2 = v26;
  v6 = v25;
  v7 = v24;
  v8 = v23;
LABEL_8:
  v34 = *(v3 + 24);
  v35 = *(v3 + 40);
  v36 = v21;
  v37 = 0;
  v38 = 0;
  *v39 = *(v3 + 65);
  *&v39[3] = *(v3 + 68);
  v40 = v9;
  v41 = v10;
  if (v32)
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  v42 = v11;

  sub_1E4117970(__src, &v34, v6, v5, v7, v8, v30 & 0xFFFFFF00 | v19, v18);
  sub_1E4203DA4();
  sub_1E4200D94();
  return memcpy(a2, __src, 0xA8uLL);
}

unint64_t sub_1E3E35360()
{
  result = qword_1ECF39A68;
  if (!qword_1ECF39A68)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39A58, &qword_1E42D55D8);
    sub_1E3E353EC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39A68);
  }

  return result;
}

unint64_t sub_1E3E353EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39A70;
  if (!qword_1ECF39A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39A70);
  }

  return result;
}

unint64_t sub_1E3E35440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39A78;
  if (!qword_1ECF39A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39A78);
  }

  return result;
}

uint64_t sub_1E3E35494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A20, &qword_1E42D5458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E35504@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(v2 + 16);
  if (v4 >= *(v5 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v5 + 8 * v4 + 32);

  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AF8, &qword_1E42D5670);
  result = sub_1E32AE9B0(v6);
  if ((result & 0x8000000000000000) == 0)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_142();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_6_170(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
    sub_1E37432DC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_13_141(OpaqueTypeConformance2, v9, sub_1E3E357CC, v10, v11, v12, v13, MEMORY[0x1E69E6540], OpaqueTypeConformance2, v14, 0);
    return sub_1E4203B34();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1E3E3565C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(*(v2 + 16) + 16))
  {

    *a2 = sub_1E4201B84();
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AC0, &qword_1E42D5638);
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_142();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_6_170(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AC8, &qword_1E42D5640);
    sub_1E37432DC();
    v5 = sub_1E32752B0(&qword_1ECF39AD0, &qword_1ECF39AC8, &qword_1E42D5640, MEMORY[0x1E6981F48]);
    OUTLINED_FUNCTION_13_141(v5, v6, sub_1E3E357C0, v7, v8, v9, v10, MEMORY[0x1E69E6540], v5, v11, 0);
    return sub_1E4203B34();
  }

  __break(1u);
  return result;
}

double sub_1E3E357CC@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *a1;
  sub_1E34AF4E4(*a1, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](v11, v4);
  }

  else
  {
    v12 = *(v4 + 8 * v11 + 32);
  }

  v22[0] = v5;
  v22[1] = v6;
  v22[2] = v7 & 1;
  v22[3] = v8;
  v22[4] = v9;
  v23 = v10 & 1;
  v24 = 0;
  OUTLINED_FUNCTION_8();
  v20 = (*(v13 + 392))(v14, v15, v16, v17, v18, v19);
  sub_1E382A9B4(v12, v22, v20, a2);

  return result;
}

uint64_t sub_1E3E358F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 0:
      sub_1E4203C94();
      goto LABEL_6;
    case 1:
      sub_1E4203CB4();
      goto LABEL_6;
    case 2:
      sub_1E4203C84();
      goto LABEL_6;
    case 3:
      sub_1E4203CA4();
LABEL_6:
      v3 = 0;
      break;
    default:
      v3 = 1;
      break;
  }

  v4 = sub_1E4203CC4();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

unint64_t VUIGlassBackground.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3E359B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUIGlassBackground.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1E3E359E8()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v0;
  v53 = v2;
  v54 = v1;
  v4 = v3;
  v6 = v5;
  v47 = v8;
  v48 = v7;
  v50 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_1_2();
  v49 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  OUTLINED_FUNCTION_1_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v47 - v27;
  v52 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v47 - v33;
  if (v50)
  {
    v48(v51, v32);
    v35 = *(v21 + 16);
    v36 = OUTLINED_FUNCTION_11_6();
    v35(v36);
    v51 = v11;
    v37 = *(v21 + 8);
    v37(v25, v4);
    (v35)(v25, v28, v4);
    OUTLINED_FUNCTION_168_0();
    sub_1E37B8D98(v38, v39);
    v37(v25, v4);
    v37(v28, v4);
    v11 = v51;
  }

  else
  {
    v40 = v49;
    v41 = *(v49 + 16);
    v41(v19, v51, v6, v32);
    (v41)(v16, v19, v6);
    OUTLINED_FUNCTION_168_0();
    sub_1E37B8E90(v42, v43, v44);
    v45 = *(v40 + 8);
    v45(v16, v6);
    v45(v19, v6);
  }

  v55 = v53;
  v56 = v54;
  OUTLINED_FUNCTION_2_25();
  v46 = v52;
  swift_getWitnessTable();
  (*(v30 + 16))(v11, v34, v46);
  (*(v30 + 8))(v34, v46);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E35D1C@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14(v2, v11);
  v15 = *(v6 + 16);
  v15(v13, v9, a1);
  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_11_6();
  v16(v17);
  v15(a2, v13, a1);
  return (v16)(v13, a1);
}

void sub_1E3E35E58()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v2 = v1;
  v55 = v4;
  v56 = v3;
  v6 = v5;
  v49 = v7;
  LODWORD(v51) = v8;
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v50 = v18;
  v19 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - v27;
  OUTLINED_FUNCTION_168_0();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v53 = v30;
  v54 = v29;
  OUTLINED_FUNCTION_5_7();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v49 - v33;
  if (v51)
  {
    v51 = v2;
    v35 = v56;
    MEMORY[0x1E690DE70](v49, v6, v50, v56, v32);
    v57 = v35;
    v58 = v51;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v36 = *(v21 + 16);
    v36(v28, v25, v19);
    v37 = *(v21 + 8);
    v37(v25, v19);
    v38 = OUTLINED_FUNCTION_11_6();
    (v36)(v38);
    OUTLINED_FUNCTION_168_0();
    v2 = v51;
    sub_1E37B8D98(v39, v40);
    v37(v25, v19);
    v37(v28, v19);
  }

  else
  {
    v41 = *(v10 + 16);
    v41(v17, WitnessTable, v6, v32);
    (v41)(v14, v17, v6);
    v63 = v56;
    v64 = v2;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_168_0();
    sub_1E37B8E90(v42, v43, v44);
    v45 = *(v10 + 8);
    v45(v14, v6);
    v45(v17, v6);
  }

  v46 = v56;
  v61 = v56;
  v62 = v2;
  OUTLINED_FUNCTION_4_1();
  v59 = swift_getWitnessTable();
  v60 = v46;
  OUTLINED_FUNCTION_2_25();
  v47 = v54;
  swift_getWitnessTable();
  v48 = v53;
  (*(v53 + 16))(v55, v34, v47);
  (*(v48 + 8))(v34, v47);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E361E8()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v50 = v1;
  v3 = v2;
  LODWORD(v48) = v4;
  v52 = v5;
  OUTLINED_FUNCTION_1_2();
  v46 = v6;
  v47 = v7;
  MEMORY[0x1EEE9AC00](*&v6);
  OUTLINED_FUNCTION_4_6();
  v45 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = sub_1E4201534();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298B0, &unk_1E42AC0E0);
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v51 = v28;
  OUTLINED_FUNCTION_5_7();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v45 - v31;
  if (v48)
  {
    v33 = v47;
    v34 = *(v47 + 16);
    v34(v12, WitnessTable, v3, v30);
    v35 = v45;
    (v34)(v45, v12, v3);
    v36 = sub_1E3953E6C();
    v37 = v50;
    v59 = v50;
    v60 = v36;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v35, v17, v3);
    v38 = *(v33 + 8);
    v38(v35, v3);
    v38(v12, v3);
  }

  else
  {
    sub_1E3DBED70(v16, v46);
    sub_1E3E36604();
    v48 = v27;
    v39 = v50;
    sub_1E4203574();
    sub_1E3A69608(v16);
    v40 = sub_1E3953E6C();
    v53 = v39;
    v54 = v40;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v41 = *(v19 + 16);
    v41(v26, v23, v17);
    v42 = *(v19 + 8);
    v42(v23, v17);
    v41(v23, v26, v17);
    v37 = v39;
    v27 = v48;
    sub_1E37B8D98(v23, v17);
    v42(v23, v17);
    v42(v26, v17);
  }

  v43 = sub_1E3953E6C();
  v57 = v37;
  v58 = v43;
  OUTLINED_FUNCTION_4_1();
  v55 = swift_getWitnessTable();
  v56 = v37;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v44 = v51;
  (*(v51 + 16))(v52, v32, v27);
  (*(v44 + 8))(v32, v27);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3E36604()
{
  result = qword_1EE2893F0;
  if (!qword_1EE2893F0)
  {
    sub_1E4201534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2893F0);
  }

  return result;
}

uint64_t sub_1E3E3665C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *(v6 + 16);
  v11(v9 - v8, v2, a1);
  v11(a2, v10, a1);
  v12 = OUTLINED_FUNCTION_11_6();
  return v13(v12);
}

void sub_1E3E36744()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v47 = v1;
  v41 = v3;
  v42 = v2;
  v5 = v4;
  v44 = v6;
  v8 = v7;
  v39 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B00, &qword_1E42D5678);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v38 - v11);
  v13 = sub_1E4203CC4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v40 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v43 = v8;
  v48 = v8;
  v49 = v5;
  v45 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v38 - v34;
  sub_1E3E358F4(v39, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1E4203C94();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_1E3E36A78(v12);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
  }

  sub_1E4203D04();
  (*(v15 + 8))(v19, v13);
  sub_1E3E36AE0(v25, v42, v43, v44, v45, *(v41 + 8));
  (*(v21 + 8))(v25, v40);
  v36 = *(v28 + 16);
  v36(v35, v32, OpaqueTypeMetadata2);
  v37 = *(v28 + 8);
  v37(v32, OpaqueTypeMetadata2);
  v36(v47, v35, OpaqueTypeMetadata2);
  v37(v35, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E36A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B00, &qword_1E42D5678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E36AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[2] = a5;
  v17[0] = a1;
  v17[1] = a3;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4203FA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33620, &qword_1E42BB528);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E4297BE0;
  (*(v8 + 16))(v10, a2, a4);
  *(v15 + 32) = sub_1E4203BD4();
  sub_1E4203F94();
  sub_1E4202F44();
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_1E3E36D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39B08;
  if (!qword_1ECF39B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B08);
  }

  return result;
}

void *sub_1E3E36DD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    type metadata accessor for ExponentialBackoffRetryStrategy();
  }

  else
  {
    type metadata accessor for SequentialRetryStrategy();
  }

  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t sub_1E3E36EA4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

long double sub_1E3E36F20(uint64_t a1)
{
  OUTLINED_FUNCTION_10_137(a1);
  result = exp2(*(v1 + 32)) * 0.5;
  if (*(v1 + 24) < result)
  {
    return *(v1 + 24);
  }

  return result;
}

uint64_t sub_1E3E36FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1E325A828(a1, &v17 - v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a6;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  swift_unknownObjectRetain();

  return sub_1E3E3795C(0, 0, v14, &unk_1E42D57E0, v15, a6);
}

uint64_t sub_1E3E370D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E3E370F8, 0, 0);
}

uint64_t sub_1E3E370F8()
{
  v1 = v0[8];
  v0[11] = swift_getObjectType();
  result = (*(v1 + 16))();
  v0[12] = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v0[13] = 1;
      OUTLINED_FUNCTION_0_260();
      v12 = v3;
      swift_task_alloc();
      OUTLINED_FUNCTION_33_3();
      v0[14] = v4;
      *v4 = v5;
      OUTLINED_FUNCTION_2_197();
    }

    else
    {
      sub_1E4206514();
      OUTLINED_FUNCTION_0_260();
      v12 = v9;
      swift_task_alloc();
      OUTLINED_FUNCTION_33_3();
      v0[16] = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_1_230();
    }

    *(v6 + 8) = v7;
    v8 = OUTLINED_FUNCTION_9_143();

    return v12(v8);
  }

  return result;
}

uint64_t sub_1E3E3727C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3E3747C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v5();
  }
}

uint64_t sub_1E3E3739C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3E3747C()
{
  v1 = (*(v0[8] + 40))(v0 + 2, v0[11]);
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[11];
  v4 = v0[8];
  ++*v2;
  v1(v0 + 2, 0);
  v5 = (*(v4 + 8))(v3, v4) * 1000000000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DA60](v1);
  }

  v6 = v5;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1E3E375D8;
  v1 = v6;

  return MEMORY[0x1EEE6DA60](v1);
}

uint64_t sub_1E3E375D8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1E3E37844;
  }

  else
  {
    v5 = sub_1E3E376DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1E3E376DC()
{
  v1 = *(v0 + 104);
  if (v1 == *(v0 + 96))
  {
    v2 = *(v0 + 144);
    sub_1E4206514();
    if (v2)
    {
      OUTLINED_FUNCTION_54();

      v3();
      return;
    }

    OUTLINED_FUNCTION_0_260();
    v13 = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 128) = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_1_230();
  }

  else
  {
    *(v0 + 104) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_260();
    v13 = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 112) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_2_197();
  }

  *(v7 + 8) = v8;
  v12 = OUTLINED_FUNCTION_9_143();

  v13(v12);
}

uint64_t sub_1E3E37844()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3E378A0(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1E3286A7C;

  return sub_1E3E370D0(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_1E3E3795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23[-1] - v11;
  v23[5] = a4;
  v23[6] = a5;
  sub_1E325A828(a3, &v23[-1] - v11);
  v13 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v12);
  }

  else
  {
    sub_1E4206464();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E42063B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E4205FB4();
      sub_1E3E37B98(v19 + 32, v23);

      v20 = v23[0];
      sub_1E325A8C0(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325A8C0(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E3E37B98@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3E37C60()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3E37CB8(char a1, char a2)
{
  v3 = sub_1E32877AC(a1);
  v5 = v4;
  if (v3 == sub_1E32877AC(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3E37D44(char a1)
{
  sub_1E4207B44();
  sub_1E32877AC(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E37DB0(uint64_t a1, char a2)
{
  sub_1E32877AC(a2);
  sub_1E4206014();
}

uint64_t sub_1E3E37E0C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E32877AC(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3E37E6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E37C60();
  *a1 = result;
  return result;
}

unint64_t sub_1E3E37E9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E32877AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3E38024@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E41FFCB4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_1E3E380C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39B10;
  if (!qword_1ECF39B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LoggerCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3E381F0()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3E3823C(char a1)
{
  result = 0x656E696665646E75;
  switch(a1)
  {
    case 1:
      result = 0x426C656E6E616863;
      break;
    case 2:
      result = 0x4F6C656E6E616863;
      break;
    case 3:
      result = 0x776F685363697065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3E382F0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0x656E696665646E75;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0x426C656E6E616863;
      v7 = 0x72656E6E61;
      goto LABEL_5;
    case 2:
      v5 = 0x4F6C656E6E616863;
      v6 = 0xEC00000072656666;
      break;
    case 3:
      v5 = 0x776F685363697065;
      v7 = 0x4565736163;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x426C656E6E616863;
      v8 = 0x72656E6E61;
      goto LABEL_10;
    case 2:
      v3 = 0x4F6C656E6E616863;
      v2 = 0xEC00000072656666;
      break;
    case 3:
      v3 = 0x776F685363697065;
      v8 = 0x4565736163;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3E38484(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3E384D4(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3E384D4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3E385B8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3E384D4(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3E385FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E381F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E3862C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E3823C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3E38658(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3E38694(v1);
}

uint64_t sub_1E3E38694(char a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  sub_1E3E386D4();

  return v2;
}

void sub_1E3E386D4()
{
  v1 = v0;
  switch((*(*v0 + 1712))())
  {
    case 1u:
      OUTLINED_FUNCTION_111();
      v2 += 217;
      v3 = *v2;
      (*v2)();
      OUTLINED_FUNCTION_2_1();
      (*(v4 + 1808))(1);

      (v3)(v5);
      OUTLINED_FUNCTION_2_1();
      (*(v6 + 360))(0x4070E00000000000, 0);

      v8 = (v3)(v7);
      v9 = *(MEMORY[0x1E69DDCE0] + 16);
      __src[0] = *MEMORY[0x1E69DDCE0];
      __src[1] = v9;
      LOBYTE(__src[2]) = 0;
      (*(*v8 + 160))(__src);

      v11 = (v3)(v10);
      v12 = *sub_1E3E5F58C();
      v13 = *(*v11 + 680);
      v14 = v12;
      v13(v12);

      OUTLINED_FUNCTION_9_2();
      v16 = (*(v15 + 1760))();
      v17 = *sub_1E3E5FD88();
      v18 = *(*v16 + 680);
      v19 = v17;
      v18(v17);

      break;
    case 2u:
      OUTLINED_FUNCTION_111();
      v20 += 217;
      v21 = *v20;
      (*v20)();
      OUTLINED_FUNCTION_2_1();
      (*(v22 + 1808))(1);

      v24 = (v21)(v23);
      v25 = sub_1E3E5F58C();
      v26 = *v25;
      v27 = *(*v24 + 680);
      v28 = *v25;
      v27(v26);

      LODWORD(v26) = [objc_opt_self() isTV];
      v21();
      OUTLINED_FUNCTION_2_1();
      v30 = *(v29 + 256);
      if (v26)
      {
        v30(0x4074A00000000000, 0);

        v32 = (v21)(v31);
        v35 = (TVAppFeature.isEnabled.getter(10, v33, v34) & 1) == 0;
        v36 = 0x404E000000000000;
        v37 = 0x4043000000000000;
      }

      else
      {
        v30(0x405B000000000000, 0);

        v32 = (v21)(v38);
        v35 = (TVAppFeature.isEnabled.getter(10, v39, v40) & 1) == 0;
        v36 = 0x4041000000000000;
        v37 = 0x4040000000000000;
      }

      if (v35)
      {
        v41 = v36;
      }

      else
      {
        v41 = v37;
      }

      (*(*v32 + 360))(v41, 0);

      OUTLINED_FUNCTION_111();
      v42 += 220;
      v43 = *v42;
      (*v42)();
      OUTLINED_FUNCTION_15_11();
      v44 = *v25;
      v46 = *(*v45 + 680);
      v47 = v44;
      v46(v44);

      (v43)(v48);
      OUTLINED_FUNCTION_2_1();
      (*(v49 + 1808))(1);

      (v43)(v50);
      sub_1E3952C88();
      v96[0] = v51;
      v96[1] = v52;
      v96[2] = v53;
      v96[3] = v54;
      LOBYTE(v96[4]) = 0;
      memset(v108, 0, sizeof(v108));
      v109 = 1;
      memset(v106, 0, sizeof(v106));
      v107 = 1;
      sub_1E3952C88();
      v104[0] = v55;
      v104[1] = v56;
      v104[2] = v57;
      v104[3] = v58;
      v105 = 0;
      sub_1E3952C88();
      v102[0] = v59;
      v102[1] = v60;
      v102[2] = v61;
      v102[3] = v62;
      v103 = 0;
      type metadata accessor for UIEdgeInsets();
      v64 = v63;
      sub_1E3C3DE00();
      v97[0] = v99;
      v97[1] = v100;
      v98 = v101;
      sub_1E3C2FCB8(v96, v108, v106, v104, v102, v97, v64, __src);
      memcpy(v96, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v65 + 1600))(v96, 0, v66 & 1, v64);

      v68 = (v43)(v67);
      v21();
      OUTLINED_FUNCTION_2_1();
      (*(v69 + 352))();

      VUIRoundValue();
      (*(*v68 + 360))(v70, 0);

      v72 = (v43)(v71);
      v21();
      OUTLINED_FUNCTION_30();
      v74 = (*(v73 + 248))();
      LOBYTE(v46) = v75;

      if (v46)
      {
        v76 = 0;
      }

      else
      {
        v76 = v74;
      }

      (*(*v72 + 256))(v76, 0);

      (v21)(v77);
      OUTLINED_FUNCTION_2_1();
      v79 = (*(v78 + 352))();
      v81 = v80;

      (v43)(v82);
      OUTLINED_FUNCTION_2_1();
      v84 = (*(v83 + 352))();
      v86 = v85;

      (v43)(v87);
      OUTLINED_FUNCTION_30();
      (*(v88 + 152))(__src);

      v89 = *__src;
      if (__src[2])
      {
        v89 = 0.0;
      }

      v90 = *&v84;
      if (v86)
      {
        v90 = 0.0;
      }

      v91 = *&v79;
      if (v81)
      {
        v91 = 0.0;
      }

      (*(*v1 + 360))(v91 + v90 + v89, 0);
      break;
    default:
      sub_1E3E397BC();
      break;
  }

  OUTLINED_FUNCTION_111();
  v93 = (*(v92 + 1736))();
  sub_1E3C37CBC(v93, 39);

  OUTLINED_FUNCTION_9_2();
  v95 = (*(v94 + 1760))();
  sub_1E3C37CBC(v95, 40);
}

uint64_t sub_1E3E390F8()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3E386D4();

  return v1;
}

double sub_1E3E39138(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1E3C35CF4(a1, a2);
  switch((*(*v2 + 1712))())
  {
    case 1u:

      goto LABEL_4;
    default:
      v5 = sub_1E42079A4();

      if (v5)
      {
LABEL_4:
        OUTLINED_FUNCTION_111();
        v7 += 195;
        v8 = *v7;
        v9 = (*v7)();
        if ((sub_1E373F630(v9, 6, v10) & 1) == 0 && a2)
        {
          v11 = a2;
          [v11 isAXEnabled];
          v12 = v8();
          sub_1E3A24FDC(v12);
        }

        VUIRoundValue();
        v14 = v13;
        VUIRoundValue();
        VUIRoundValue();
        v16 = v15;
        VUIRoundValue();
        v17 = OUTLINED_FUNCTION_36_2();
        v18(v17);
        OUTLINED_FUNCTION_9_2();
        v19 = OUTLINED_FUNCTION_36_2();
        v20(v19);
        v21 = OUTLINED_FUNCTION_36_2();
        v22(v21);
        OUTLINED_FUNCTION_9_2();
        v24 = *(v23 + 1736);
        v24();
        OUTLINED_FUNCTION_15_11();
        (*(*v2 + 360))(v14, 0);

        (v24)(v25);
        OUTLINED_FUNCTION_2_1();
        v26 = OUTLINED_FUNCTION_36_2();
        v27(v26);

        OUTLINED_FUNCTION_9_2();
        v29 = *(v28 + 1760);
        v30 = v29();
        sub_1E3952C88();
        v39[0] = v31;
        v39[1] = v32;
        v39[2] = v33;
        v39[3] = v34;
        v40 = 0;
        (*(*v30 + 160))(v39);

        (v29)(v35);
        OUTLINED_FUNCTION_2_1();
        v36 = OUTLINED_FUNCTION_36_2();
        v37(v36);

        (v29)(v38);
        OUTLINED_FUNCTION_15_11();
        (*(*v3 + 360))(v16, 0);
      }

      return result;
  }
}

unint64_t sub_1E3E39668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39B18;
  if (!qword_1ECF39B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelLogoViewLayout.LogoMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

double sub_1E3E397BC()
{
  v1 = (*v0 + 1736);
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_30();
  (*(v3 + 1808))(1);

  OUTLINED_FUNCTION_9_2();
  v157 = v4 + 1760;
  v168 = *(v4 + 1760);
  v168();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1808))(1);

  OUTLINED_FUNCTION_1_232();
  LOBYTE(v194) = 0;
  LOBYTE(v189) = 0;
  v6 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_262(v6, v7, v8, v9, v10, v11, v12, v13, v157, v168, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v180, SBYTE8(v180), v181, *(&v181 + 1), v182, v183, v184, SBYTE8(v184), v185, *(&v185 + 1), v186, v187, 0x4073800000000000, v189, v190, v191, v192, 0x4072600000000000, v194, v195, v196, v197, *&v198[0]);
  OUTLINED_FUNCTION_6_172(v14, v15, v16, v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v19 = *(v18 + 1600);
  v28 = OUTLINED_FUNCTION_4_68(v20, v21, v22, v23, v24, v25, v26, v27, v158, v169, __dst[0]);
  v19(v28, 4);
  OUTLINED_FUNCTION_1_232();
  LOBYTE(v194) = 0;
  v29 = OUTLINED_FUNCTION_12_131();
  OUTLINED_FUNCTION_0_262(v29, v30, v31, v32, v33, v34, v35, v36, v159, v170, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v180, SBYTE8(v180), v181, *(&v181 + 1), v182, v183, v184, SBYTE8(v184), v185, *(&v185 + 1), v186, v187, 0x404E000000000000, v189, v190, v191, v192, 0x404E000000000000, v194, v195, v196, v197, *&v198[0]);
  OUTLINED_FUNCTION_6_172(v37, v38, v39, v40);
  v41 = OUTLINED_FUNCTION_18();
  v49 = OUTLINED_FUNCTION_4_68(v41, v42, v43, v44, v45, v46, v47, v48, v160, v171, __dst[0]);
  v50 = (v19)(v49, 8);
  (v2)(v50);
  OUTLINED_FUNCTION_1_232();
  LOBYTE(v194) = 0;
  v51 = OUTLINED_FUNCTION_12_131();
  OUTLINED_FUNCTION_0_262(v51, v52, v53, v54, v55, v56, v57, v58, v161, v172, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v180, SBYTE8(v180), v181, *(&v181 + 1), v182, v183, v184, SBYTE8(v184), v185, *(&v185 + 1), v186, v187, 0x4073600000000000, v189, v190, v191, v192, 0x4072600000000000, v194, v195, v196, v197, *&v198[0]);
  OUTLINED_FUNCTION_6_172(v59, v60, v61, v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v71 = OUTLINED_FUNCTION_4_68(v63, v64, v65, v66, v67, v68, v69, v70, v162, v173, __dst[0]);
  v72(v71, 4);

  (v2)(v73);
  OUTLINED_FUNCTION_1_232();
  LOBYTE(v194) = 0;
  v74 = OUTLINED_FUNCTION_12_131();
  OUTLINED_FUNCTION_0_262(v74, v75, v76, v77, v78, v79, v80, v81, v163, v174, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v180, SBYTE8(v180), v181, *(&v181 + 1), v182, v183, v184, SBYTE8(v184), v185, *(&v185 + 1), v186, v187, 0x404E000000000000, v189, v190, v191, v192, 0x403F000000000000, v194, v195, v196, v197, *&v198[0]);
  OUTLINED_FUNCTION_6_172(v82, v83, v84, v85);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v94 = OUTLINED_FUNCTION_4_68(v86, v87, v88, v89, v90, v91, v92, v93, v164, v175, __dst[0]);
  v95(v94, 8);

  v97 = (v2)(v96);
  v98 = sub_1E3E5F58C();
  v99 = *v98;
  v100 = *(*v97 + 680);
  v101 = *v98;
  v100(v99);

  v103 = v176;
  v176(v102);
  OUTLINED_FUNCTION_1_232();
  LOBYTE(v194) = 0;
  LOBYTE(v189) = 1;
  v104 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_262(v104, v105, v106, v107, v108, v109, v110, v111, v165, v176, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v180, SBYTE8(v180), v181, *(&v181 + 1), v182, v183, v184, SBYTE8(v184), v185, *(&v185 + 1), v186, v187, 0, v189, v190, v191, v192, 0x4030000000000000, v194, v195, v196, v197, *&v198[0]);
  OUTLINED_FUNCTION_6_172(v112, v113, v114, v115);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v124 = OUTLINED_FUNCTION_4_68(v116, v117, v118, v119, v120, v121, v122, v123, v166, v177, __dst[0]);
  v125(v124, 6);

  v103(v126);
  sub_1E3952C88();
  *__dst = v127;
  *&__dst[8] = v128;
  *&__dst[16] = v129;
  *&__dst[24] = v130;
  __dst[32] = 0;
  memset(v200, 0, sizeof(v200));
  v201 = 1;
  memset(v198, 0, sizeof(v198));
  v199 = 1;
  sub_1E3952C88();
  v193 = v131;
  v194 = v132;
  v195 = v133;
  v196 = v134;
  LOBYTE(v197) = 0;
  sub_1E3952C88();
  v188 = v135;
  v189 = v136;
  v190 = v137;
  v191 = v138;
  LOBYTE(v192) = 0;
  type metadata accessor for UIEdgeInsets();
  v140 = v139;
  sub_1E3C3DE00();
  v180 = v184;
  v181 = v185;
  LOBYTE(v182) = v186;
  sub_1E3C2FCB8(__dst, v200, v198, &v193, &v180, &v188, v140, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v149 = OUTLINED_FUNCTION_4_68(v141, v142, v143, v144, v145, v146, v147, v148, v167, v178, __dst[0]);
  v150(v149, 0);

  v103(v151);
  OUTLINED_FUNCTION_15_11();
  v152 = *v98;
  v154 = *(*v153 + 680);
  v155 = v152;
  v154(v152);

  return result;
}

void sub_1E3E39D3C(uint64_t a1, double a2, double a3)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6.n128_f64[0] = a3;
  sub_1E3C8BB10(a1, sub_1E3E39DD4, a2, v6);

  OUTLINED_FUNCTION_17_4();
}

void sub_1E3E39DD4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = [Strong numberOfLines], v6, v7 >= 2))
  {
    OUTLINED_FUNCTION_2_199(Strong, v3, v4, v5);
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 numberOfLines];
    }

    else
    {
      v12 = 1;
    }

    [v9 textRectForBounds:v12 limitedToNumberOfLines:{0.0, 0.0, a1, 1.79769313e308}];
  }

  else
  {
    OUTLINED_FUNCTION_2_199(Strong, v3, v4, v5);
    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v13;
    v14 = OUTLINED_FUNCTION_17_4();
    [v15 v16];
  }

LABEL_12:
  OUTLINED_FUNCTION_17_4();
}

unint64_t sub_1E3E39F14()
{
  v0 = sub_1E4207784();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3E39F60(char a1)
{
  result = 0x656C626179616C70;
  switch(a1)
  {
    case 1:
    case 3:
    case 5:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x61746C6564;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1E3E3A03C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x656C626179616C70;
  v4 = a1;
  v5 = 0x656C626179616C70;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x80000001E42855E0;
      break;
    case 3:
      v6 = 0xEF73656C61636F4CLL;
      goto LABEL_7;
    case 4:
      v6 = 0x80000001E4285610;
      v5 = 0xD000000000000011;
      break;
    case 5:
      v6 = 0xEA00000000006449;
LABEL_7:
      v5 = 0x656C626179616C70;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x61746C6564;
      break;
    default:
      v6 = 0x80000001E42855B0;
      v5 = 0xD000000000000017;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x80000001E42855E0;
      break;
    case 3:
      v2 = 0xEF73656C61636F4CLL;
      break;
    case 4:
      v2 = 0x80000001E4285610;
      v3 = 0xD000000000000011;
      break;
    case 5:
      v2 = 0xEA00000000006449;
      break;
    case 6:
      v2 = 0xE500000000000000;
      v3 = 0x61746C6564;
      break;
    default:
      v2 = 0x80000001E42855B0;
      v3 = 0xD000000000000017;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3E3A214(char a1)
{
  sub_1E4207B44();
  sub_1E3E39F60(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E3A280(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3E3A38C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3E39F60(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3E3A3EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E39F14();
  *a1 = result;
  return result;
}

unint64_t sub_1E3E3A41C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3E39F60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3E3A450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3E3A4A4(v5, a2, a3);
}

uint64_t sub_1E3E3A4A4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[31] = 0;
  v8 = (v3 + 31);
  sub_1E388C2BC();

  v10 = sub_1E3E3A8DC(v9);
  swift_beginAccess();
  v11 = v3[31];
  v3[31] = v10;
  v12 = v10;

  v13 = MEMORY[0x1E69E7CA0];
  if (v10)
  {
  }

  else
  {
    sub_1E3277E60(0x746C7561666564, 0xE700000000000000, a2, &v47);
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (swift_dynamicCast())
      {
        v16 = sub_1E3E3A8DC(v50[0]);
        v17 = *v8;
        *v8 = v16;
      }
    }

    else
    {
      sub_1E325F748(&v47, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  v48 = &unk_1F5D7C258;
  v49 = &off_1F5D7BCB8;
  LOBYTE(v47) = 0;
  sub_1E3F9F164(&v47, a2, v13 + 8);
  if (v51)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_0_263(v14, v15))
    {
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v3[32] = sub_1E3E3A8DC(v42);
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1E325F748(v50, &unk_1ECF296E0, &unk_1E4298030);
  }

  v18 = v3[31];
  v3[32] = v18;
  v19 = v18;
LABEL_12:
  v48 = &unk_1F5D7C258;
  v49 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(4, v38, v42, v47);
  if (v51)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_0_263(v20, v21))
    {
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v3[34] = sub_1E3E3A8DC(v43);
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1E325F748(v50, &unk_1ECF296E0, &unk_1E4298030);
  }

  v22 = v3[31];
  v3[34] = v22;
  v23 = v22;
LABEL_18:
  v48 = &unk_1F5D7C258;
  v49 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(3, v39, v43, v47);
  if (v51)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_0_263(v24, v25))
    {
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v3[33] = sub_1E3E3A8DC(v44);
      goto LABEL_24;
    }

    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1E325F748(v50, &unk_1ECF296E0, &unk_1E4298030);
  }

  v26 = v3[31];
  v3[33] = v26;
  v27 = v26;
LABEL_24:
  v48 = &unk_1F5D7C258;
  v49 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(1, v40, v44, v47);
  if (v51)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_0_263(v28, v29))
    {
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v3[35] = sub_1E3E3A8DC(v45);
      goto LABEL_30;
    }

    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1E325F748(v50, &unk_1ECF296E0, &unk_1E4298030);
  }

  v30 = v3[31];
  v3[35] = v30;
  v31 = v30;
LABEL_30:
  v48 = &unk_1F5D7C258;
  v49 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(2, v41, v45, v47);
  if (!v51)
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1E325F748(v50, &unk_1ECF296E0, &unk_1E4298030);
LABEL_35:
    v34 = v3[31];
    v3[36] = v34;
    v35 = v34;
    goto LABEL_36;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_0_263(v32, v33) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_35;
  }

  __swift_destroy_boxed_opaque_existential_1(&v47);
  v3[36] = sub_1E3E3A8DC(v46);
LABEL_36:
  v48 = &type metadata for VideoViewModel.Keys;
  v49 = &off_1F5D87FC0;
  LOBYTE(v47) = 0;
  v36 = sub_1E39BD1A0(&v47, a2);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v4[37] = v36;
  return sub_1E39BEDCC(a1, a2, a3);
}

id sub_1E3E3A8DC(uint64_t a1)
{
  v10 = &unk_1F5D7BE68;
  v11 = &off_1F5D7BC48;
  LOBYTE(v9) = 5;
  sub_1E3F9F164(&v9, a1, MEMORY[0x1E69E7CA0] + 8);
  if (!v12[3])
  {

    __swift_destroy_boxed_opaque_existential_1(&v9);
    sub_1E325F748(v12, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(&v9);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v9);
  v2 = sub_1E4205F14();
  sub_1E3277E60(v2, v3, a1, &v9);

  if (!v10)
  {
    sub_1E325F748(&v9, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = v12[0];
LABEL_11:
  sub_1E3744600(v8);

  v6 = sub_1E4205C44();

  if (v4)
  {
    sub_1E3744600(v4);

    v4 = sub_1E4205C44();
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDictionary:v6 andMetadataDictionary:v4];

  if (v5)
  {
  }

  return v5;
}

id sub_1E3E3AB0C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (!*(v8 + 296))
  {
    v82 = 0u;
    v83 = 0u;
    goto LABEL_14;
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 3;
  OUTLINED_FUNCTION_2_200(a1, a2, a3, a4, a5, a6, a7, a8, v60, v64, v68, v72);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (!*(&v83 + 1))
  {
LABEL_14:
    sub_1E325F748(&v82, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
  OUTLINED_FUNCTION_3_197();
  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
LABEL_15:
    v37 = objc_opt_self();
    if ([v37 isVision])
    {
      v38 = 288;
    }

    else if (a1 < 3u)
    {
      memcpy(__dst, a2, 0x82uLL);
      if (sub_1E3D44104(__dst) == 1 || (__dst[16] & 0x100) != 0) && (sub_1E373F630(a1, 2, v39) & 1) != 0 && ([v37 isPad])
      {
        v38 = 272;
      }

      else
      {
        v38 = 264;
      }
    }

    else
    {
      v38 = 256;
      if (a1 - 3 < 3)
      {
        v38 = 272;
      }
    }

    v40 = *(v9 + v38);
    v41 = v40;
    return v40;
  }

  v20 = __dst[0];
  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 4;
  OUTLINED_FUNCTION_2_200(v12, v13, v14, v15, v16, v17, v18, v19, v61, v65, v69, v73);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (!*(&v83 + 1))
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_197();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    goto LABEL_15;
  }

  v21 = __dst[1];
  v78 = __dst[0];
  sub_1E39C30DC();
  if (!v22)
  {
LABEL_30:

    goto LABEL_31;
  }

  v30 = v22;
  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 1;
  OUTLINED_FUNCTION_2_200(v22, v23, v24, v25, v26, v27, v28, v29, v62, v66, v70, v74);
  if (!*(&v83 + 1))
  {
LABEL_32:

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_197();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_15;
  }

  v75 = v80;
  v77 = v30;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  __dst[3] = &unk_1F5D5DAC8;
  __dst[4] = &off_1F5D5C998;
  LOBYTE(__dst[0]) = 52;
  sub_1E39C29A4(__dst);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v32)
  {
    v71 = [objc_opt_self() standardUserDefaults];
    v67 = sub_1E4205ED4();

    v33 = [v71 stringForKey_];

    if (v33)
    {
      v34 = sub_1E4205F14();
      v71 = v35;

      v67 = v34;
      if (sub_1E376EDA8(v34, v71, v20))
      {

        v36 = v34;
        v21 = v71;
        goto LABEL_36;
      }
    }
  }

  v36 = v78;
LABEL_36:
  v43 = sub_1E376EDA8(v36, v21, v20);

  if (!v43)
  {
    goto LABEL_30;
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 5;
  OUTLINED_FUNCTION_2_200(v44, v45, v46, v47, v48, v49, v50, v51, v63, v67, v71, v75);
  if (!*(&v83 + 1))
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_3_197();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v52 = v80;
  v53 = v81;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v54 = sub_1E376EDA8(v52, v53, v76);

  if (!v54)
  {
    goto LABEL_30;
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 6;
  v55 = sub_1E39BD1A0(__dst, v43);

  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v55)
  {
    v54 = sub_1E3E3B048(v55, v54);
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 2;
  v56 = sub_1E39BD1A0(__dst, v77);

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v57 = sub_1E3744600(v54);

  if (v56)
  {
    v58 = sub_1E3744600(v56);
  }

  else
  {
    v58 = 0;
  }

  v59 = objc_allocWithZone(VUIVideosPlayable);
  v40 = sub_1E37448C4(v57, v58);
  if (!v40)
  {
    goto LABEL_15;
  }

  return v40;
}

uint64_t sub_1E3E3B048(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E394C48C(a1, sub_1E394C454, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1E3E3B0FC()
{
}

id *sub_1E3E3B154()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3E3B1B4()
{
  v0 = sub_1E3E3B154();

  return MEMORY[0x1EEE6BDC0](v0, 304, 7);
}

unint64_t sub_1E3E3B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39B20;
  if (!qword_1ECF39B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoViewModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E3B33C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x1E6980F00];
      goto LABEL_13;
    case 2:
    case 5:
      v3 = MEMORY[0x1E6980F08];
      goto LABEL_13;
    case 3:
      v3 = MEMORY[0x1E6980F10];
      goto LABEL_13;
    case 6:
      v3 = MEMORY[0x1E6980EE8];
      goto LABEL_13;
    case 7:
      v3 = MEMORY[0x1E6980F38];
      goto LABEL_13;
    case 14:
      v3 = MEMORY[0x1E6980F18];
      goto LABEL_13;
    case 15:
      v3 = MEMORY[0x1E6980EF8];
      goto LABEL_13;
    case 17:
      v3 = MEMORY[0x1E6980EF0];
      goto LABEL_13;
    case 19:
      v3 = MEMORY[0x1E6980F30];
      goto LABEL_13;
    case 21:
      v3 = MEMORY[0x1E6980F20];
      goto LABEL_13;
    case 22:
      v3 = MEMORY[0x1E6980F28];
LABEL_13:
      v4 = *v3;
      v5 = sub_1E4202A94();
      OUTLINED_FUNCTION_2();
      (*(v6 + 104))(a2, v4, v5);
      v7 = OUTLINED_FUNCTION_22_1();
      v10 = v5;
      break;
    default:
      sub_1E4202A94();
      v7 = OUTLINED_FUNCTION_10_2();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1E3E3B47C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 24:
      sub_1E4202814();
      goto LABEL_7;
    case 23:
      sub_1E4202804();
      goto LABEL_7;
    case 20:
      sub_1E4202824();
LABEL_7:
      v3 = 0;
      goto LABEL_9;
  }

  v3 = 1;
LABEL_9:
  v4 = sub_1E4202834();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

uint64_t sub_1E3E3B50C(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      sub_1E42028F4();
      goto LABEL_11;
    case 2:
      sub_1E4202914();
      goto LABEL_11;
    case 3:
      sub_1E4202944();
      goto LABEL_11;
    case 4:
      sub_1E4202964();
      goto LABEL_11;
    case 5:
      sub_1E4202954();
      goto LABEL_11;
    case 6:
      sub_1E4202974();
      goto LABEL_11;
    case 7:
      sub_1E4202904();
      goto LABEL_11;
    case 8:
      sub_1E4202934();
      goto LABEL_11;
    case 9:
      sub_1E4202924();
LABEL_11:
      v2 = v1;
      break;
    default:
      v2 = 0;
      break;
  }

  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  if (IsBoldTextEnabled)
  {
    sub_1E376C2B0(IsBoldTextEnabled, v4, v5);
    if ((sub_1E4205E84() & 1) == 0 && (sub_1E4205E84() & 1) == 0)
    {
      sub_1E4202904();
      return v6;
    }
  }

  return v2;
}

uint64_t sub_1E3E3B648(char a1)
{
  switch(a1)
  {
    case 1:
      result = MEMORY[0x1EEDE2C50]();
      break;
    case 3:
      result = MEMORY[0x1EEDE2C40]();
      break;
    case 4:
      result = MEMORY[0x1EEDE2C38]();
      break;
    default:
      result = MEMORY[0x1EEDE2C48]();
      break;
  }

  return result;
}

uint64_t sub_1E3E3B67C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A200, &qword_1E42F3640);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = (*(*v1 + 1928))(v5);
  v9 = sub_1E4202BE4();
  if (v8 != 4)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
    if (v8 == 1)
    {
      v17 = MEMORY[0x1E6980FD0];
    }

    else
    {
      if (v8 != 2)
      {
        return sub_1E3E3B808(v7, a1);
      }

      v17 = MEMORY[0x1E6980FD8];
    }

    sub_1E325F6F0(v7, &qword_1ECF2A200, &qword_1E42F3640);
    (*(*(v9 - 8) + 104))(v7, *v17, v9);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    return sub_1E3E3B808(v7, a1);
  }

  v10 = OUTLINED_FUNCTION_10_2();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
}

uint64_t sub_1E3E3B808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A200, &qword_1E42F3640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3E3B878()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v142 = v2;
  sub_1E4202A24();
  OUTLINED_FUNCTION_0_10();
  v149 = v4;
  v150 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v148 = v6 - v5;
  sub_1E42028B4();
  OUTLINED_FUNCTION_0_10();
  v146 = v8;
  v147 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v145 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B28, &qword_1E42D5B58);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v141 - v13;
  v151 = sub_1E4202834();
  OUTLINED_FUNCTION_0_10();
  v144 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v143 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v141 - v21;
  v22 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v141 = &v141 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v141 - v38;
  v40 = (*(*v0 + 1784))(v37);
  if (v40 == 11)
  {
    v41 = v28;
    v154 = 0;
LABEL_3:
    v153 = 1;
    goto LABEL_17;
  }

  v42 = v40;
  v43 = sub_1E3E3B50C(v40);
  v44 = v43;
  if (v45)
  {
    if ((sub_1E376A0AC(v42, 10) & 1) == 0)
    {
      v154 = v44;
      v41 = v28;
      goto LABEL_3;
    }

    v156 = v24;
    v46 = v39;
    OUTLINED_FUNCTION_12_6();
    v47 += 211;
    v48 = *v47;
    (*v47)();
    OUTLINED_FUNCTION_11_143();
    if ((v119 || (v158 = v49, v157 = 0, sub_1E376C200(v49, v50, v51), (sub_1E4205E84() & 1) == 0)) && ((v48(), OUTLINED_FUNCTION_11_143(), v119) || (v160 = v52, v159 = 1, sub_1E376C200(v52, v53, v54), (sub_1E4205E84() & 1) == 0)) && ((v48(), OUTLINED_FUNCTION_11_143(), v119) || (v162 = v55, v161 = 2, sub_1E376C200(v55, v56, v57), (sub_1E4205E84() & 1) == 0)))
    {
      v41 = v28;
      sub_1E4202974();
    }

    else
    {
      v41 = v28;
      sub_1E4202904();
    }

    v153 = 0;
    v154 = v58;
    v39 = v46;
    v24 = v156;
  }

  else
  {
    v154 = v43;
    v41 = v28;
    v153 = 0;
  }

LABEL_17:
  v59 = v14;
  OUTLINED_FUNCTION_12_6();
  v155 = *(v60 + 1688);
  v156 = v60 + 1688;
  v61 = v155();
  v62 = v24;
  v63 = v39;
  if (v61 == 27)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v22);
  }

  else
  {
    sub_1E3E3B33C(v61, v39);
  }

  OUTLINED_FUNCTION_12_6();
  v68 = (*(v67 + 1760))();
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    OUTLINED_FUNCTION_12_6();
    v73 = (*(v72 + 1808))();
    if (v74)
    {

      goto LABEL_23;
    }

    v89 = *&v73;
    OUTLINED_FUNCTION_12_6();
    v91 = (*(v90 + 1736))();
    if (v91 != 2 && (v91 & 1) != 0)
    {
      OUTLINED_FUNCTION_12_6();
      v100 = (*(v99 + 1712))();
      if (v100 == 13)
      {
        sub_1E42012F4();
        v101 = v141;
        v102 = OUTLINED_FUNCTION_10_2();
        __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
      }

      else
      {
        v101 = v141;
        sub_1E3B033CC(v100, v141);
      }

      sub_1E3AC5CD8(v142, v101, v89);
      sub_1E325F6F0(v101, &qword_1ECF2A250, " B\r");
    }

    type metadata accessor for TextLayout();
    v119 = sub_1E4205F14() == v70 && v118 == v71;
    if (v119)
    {
    }

    else
    {
      v120 = sub_1E42079A4();

      if ((v120 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_184();
        sub_1E3E3C4B0();
LABEL_51:
        v88 = v121;

        v76 = v155;
        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_7_184();
    sub_1E3E3CA80();
    goto LABEL_51;
  }

LABEL_23:
  v70 = v63;
  sub_1E3E3C440(v63, v35);
  if (__swift_getEnumTagSinglePayload(v35, 1, v22) == 1)
  {
    v75 = sub_1E325F6F0(v35, &qword_1ECF2DEE8, &unk_1E42B3940);
    v76 = v155;
    v77 = (v155)(v75);
    v78 = v59;
    if (v77 == 27)
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v151);
LABEL_31:
      sub_1E325F6F0(v78, &qword_1ECF39B28, &qword_1E42D5B58);
      v88 = 0;
      goto LABEL_52;
    }

    sub_1E3E3B47C(v77, v59);
    v92 = v59;
    v93 = v151;
    if (__swift_getEnumTagSinglePayload(v92, 1, v151) == 1)
    {
      goto LABEL_31;
    }

    (*(v144 + 32))(v143, v78, v93);
    if (v153)
    {
      sub_1E42028E4();
      v106 = v152;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
      v88 = sub_1E42029C4();
      sub_1E325F6F0(v106, &qword_1ECF335F8, &qword_1E42BB500);
    }

    else
    {
      sub_1E42028E4();
      v111 = v152;
      v112 = OUTLINED_FUNCTION_10_2();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
      sub_1E42029C4();
      sub_1E325F6F0(v111, &qword_1ECF335F8, &qword_1E42BB500);
      v88 = sub_1E4202A04();
    }

    v116 = OUTLINED_FUNCTION_119_0();
    v117(v116);
  }

  else
  {
    v82 = v62;
    (*(v62 + 32))(v41, v35, v22);
    v76 = v155;
    if (v153)
    {
      sub_1E42028E4();
      v83 = v152;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
      v88 = sub_1E42029D4();
      sub_1E325F6F0(v83, &qword_1ECF335F8, &qword_1E42BB500);
    }

    else
    {
      sub_1E42028E4();
      v94 = v152;
      v95 = OUTLINED_FUNCTION_10_2();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
      sub_1E42029D4();
      sub_1E325F6F0(v94, &qword_1ECF335F8, &qword_1E42BB500);
      v88 = sub_1E4202A04();
    }

    (*(v82 + 8))(v41, v22);
  }

LABEL_52:
  OUTLINED_FUNCTION_12_6();
  v123 = (*(v122 + 1832))();
  if (v123 != 5 && v88)
  {
    v124 = v145;
    sub_1E3E3B648(v123);
    sub_1E42028D4();
    OUTLINED_FUNCTION_14_15();
    (*(v146 + 8))(v124, v147);
    v88 = v1;
  }

  OUTLINED_FUNCTION_12_6();
  v126 = (*(v125 + 1856))();
  v127 = MEMORY[0x1E6980EA8];
  if (v126 == 3)
  {
    if (v88)
    {
      v129 = v148;
      v128 = v149;
      v130 = v70;
      v131 = v150;
      (*(v149 + 104))(v148, *MEMORY[0x1E6980EA8], v150);
      sub_1E4202A54();
      OUTLINED_FUNCTION_14_15();
      v132 = v131;
      v70 = v130;
      (*(v128 + 8))(v129, v132);
      goto LABEL_65;
    }
  }

  else if (v126 == 2)
  {
    if (v88)
    {
      sub_1E4202844();
      goto LABEL_62;
    }
  }

  else if (v126 == 1 && v88)
  {
    sub_1E4202AA4();
LABEL_62:
    OUTLINED_FUNCTION_14_15();
LABEL_65:
    v88 = v1;
  }

  v76();
  OUTLINED_FUNCTION_11_143();
  if (!v119 && (v164 = v133, v163 = 5, sub_1E376C200(v133, v134, v135), (sub_1E4205E84() & 1) != 0) && v88)
  {
    v136 = *v127;
    v138 = v149;
    v137 = v150;
    v139 = v70;
    v140 = v148;
    (*(v149 + 104))(v148, v136, v150);
    sub_1E4202A54();
    OUTLINED_FUNCTION_14_15();
    (*(v138 + 8))(v140, v137);
    sub_1E325F6F0(v139, &qword_1ECF2DEE8, &unk_1E42B3940);
  }

  else
  {
    sub_1E325F6F0(v70, &qword_1ECF2DEE8, &unk_1E42B3940);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E3C440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3E3C4B0()
{
  OUTLINED_FUNCTION_93();
  v62 = v0;
  v59 = v2;
  v60 = v1;
  v4 = v3;
  v56 = v5;
  v61 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v9;
  v58 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v53 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = sub_1E42028E4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v55 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B48, &qword_1E42D5B78);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B50, &unk_1E42D5B80) - 8);
  v27 = *(*v26 + 72);
  v28 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E4299720;
  v30 = (v29 + v28);
  v31 = v26[14];
  *v30 = sub_1E4205F14();
  v30[1] = v32;
  v33 = *(v22 + 104);
  v33(v30 + v31, *MEMORY[0x1E6980E28], v20);
  v34 = (v30 + v27);
  v35 = v26[14];
  *v34 = sub_1E4205F14();
  v34[1] = v36;
  v37 = v34 + v35;
  v38 = v60;
  v33(v37, *MEMORY[0x1E6980E20], v20);
  v39 = v61;
  v40 = sub_1E4205CB4();
  sub_1E3E3C9C0(v39, v38, v40, MEMORY[0x1E6980E30], v19);

  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1E325F6F0(v19, &qword_1ECF335F8, &qword_1E42BB500);
    v41 = v62;
  }

  else
  {
    v42 = v55;
    (*(v22 + 32))(v55, v19, v20);
    v41 = v62;
    if ((v62 & 1) == 0)
    {
      v47 = v52;
      (*(v22 + 16))(v52, v42, v20);
      v48 = OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v20);
      sub_1E42029B4();
      sub_1E325F6F0(v47, &qword_1ECF335F8, &qword_1E42BB500);
      (*(v22 + 8))(v42, v20);
      goto LABEL_11;
    }

    (*(v22 + 8))(v42, v20);
  }

  v43 = v57;
  sub_1E3E3C440(v56, v57);
  v44 = v58;
  if (__swift_getEnumTagSinglePayload(v43, 1, v58) == 1)
  {
    sub_1E325F6F0(v43, &qword_1ECF2DEE8, &unk_1E42B3940);
    sub_1E4202994();
    if (v41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v46 = v53;
    v45 = v54;
    (*(v54 + 32))(v53, v43, v44);
    MEMORY[0x1E690D2E0](v39, v38, v46, v4);
    (*(v45 + 8))(v46, v44);
    if (v41)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  sub_1E4202A04();

LABEL_12:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E3C9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_1E327D33C(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    OUTLINED_FUNCTION_2();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = OUTLINED_FUNCTION_22_1();
    v16 = v11;
  }

  else
  {
    (a4)(0, a2);
    v13 = OUTLINED_FUNCTION_10_2();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_1E3E3CA80()
{
  OUTLINED_FUNCTION_93();
  v45 = v0;
  v41[1] = v2;
  v42 = v1;
  v4 = v3;
  v43 = v6;
  v44 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v41[0] = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B30, &qword_1E42D5B60);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  v21 = sub_1E42027F4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B38, &qword_1E42D5B68);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B40, &qword_1E42D5B70) - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E4297BE0;
  v31 = (v30 + v29);
  *v31 = sub_1E4205F14();
  v31[1] = v32;
  sub_1E42027E4();
  v33 = sub_1E4205CB4();
  v34 = OUTLINED_FUNCTION_119_0();
  sub_1E3E3C9C0(v34, v35, v33, v36, v37);

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1E325F6F0(v20, &qword_1ECF39B30, &qword_1E42D5B60);
    v38 = v45;
  }

  else
  {
    (*(v23 + 32))(v27, v20, v21);
    v38 = v45;
    if ((v45 & 1) == 0)
    {
      sub_1E42029A4();
      (*(v23 + 8))(v27, v21);
      goto LABEL_11;
    }

    (*(v23 + 8))(v27, v21);
  }

  sub_1E3E3C440(v42, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF2DEE8, &unk_1E42B3940);
    OUTLINED_FUNCTION_119_0();
    sub_1E4202994();
    if (v38)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v39 = v41[0];
  (*(v41[0] + 32))(v16, v10, v11);
  v40 = OUTLINED_FUNCTION_119_0();
  MEMORY[0x1E690D2E0](v40, v4);
  (*(v39 + 8))(v16, v11);
  if ((v38 & 1) == 0)
  {
LABEL_11:
    sub_1E4202A04();
  }

LABEL_12:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3E3CEC0(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3E3CF0C(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_19(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38063DC;
}

uint64_t sub_1E3E3CF9C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

double sub_1E3E3CFF0(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_weakAssign();

  return result;
}

void (*sub_1E3E3D040(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_19(v2);
  v2[3] = swift_weakLoadStrong();
  return sub_1E3806578;
}

double sub_1E3E3D1E8(void *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3E3D284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = swift_allocObject();
  sub_1E3E3D2EC(v7, a2, a3, a4);
  return v8;
}

uint64_t sub_1E3E3D2EC(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1E41FE624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_contextData) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_contextDataRef) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_appendContextDataRef) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_updateContextDataRef) = 0;
  sub_1E41FE614();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestID, v12, v9);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) = a1;
  v13 = (v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_controllerRef);
  *v13 = a2;
  v13[1] = a3;
  return v4;
}

uint64_t sub_1E3E3D480@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B018, &unk_1E42D5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  strcpy((inited + 32), "controllerRef");
  *(inited + 46) = -4864;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_controllerRef + 8);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_controllerRef);
    v7 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 72) = v7;
  strcpy((inited + 80), "contextDataRef");
  *(inited + 95) = -18;
  v8 = *(*v1 + 224);

  v10 = v8(v9);
  v11 = v10;
  if (v10)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v11;
  *(inited + 120) = v10;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000001E425E740;
  v12 = (*(*v2 + 248))();
  v13 = v12;
  if (v12)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v13;
  *(inited + 168) = v12;
  ViewModelKeys.rawValue.getter(34);
  *(inited + 176) = v14;
  *(inited + 184) = v15;
  v16 = (*(*v2 + 272))();
  v17 = v16;
  if (v16)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v17;
  *(inited + 216) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v18 = MEMORY[0x1E69E6158];
  v19 = sub_1E4205CB4();
  v20 = *(v2 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
  if (v20 != 5)
  {
    *&v28 = ViewModelRequestType.rawValue.getter(v20);
    *(&v28 + 1) = v21;
    v29 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1E3807164(&v28, 0x5474736575716572, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  }

  v23 = (*(*v2 + 200))(v20);
  if (v23)
  {
    v24 = v23;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *&v28 = v24;
    v29 = v25;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E3807164(&v28, 0x44747865746E6F63, 0xEB00000000617461, v26);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1E3E3D7D8()
{
  v1 = OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_appContext);
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E3E3D8A4()
{
  sub_1E3E3D7D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E3D8FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for CollectionServiceRequestContext(uint64_t a1)
{
  result = qword_1EE292AB0;
  if (!qword_1EE292AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E3DA64(uint64_t a1)
{
  result = sub_1E41FE624();
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

id sub_1E3E3DB24()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF08]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B78, &unk_1E42D5C68);
  sub_1E42024A4();
  [v1 setDelegate_];

  [v1 setAutocorrectionType_];
  sub_1E3E3F7D0(*(v0 + 168), *(v0 + 176), v1);
  [v1 setMaximumContentSizeCategory_];
  return v1;
}

void sub_1E3E3DBEC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60, &unk_1E42D5C50);
  OUTLINED_FUNCTION_18_104();
  sub_1E390E860(v2, v3, a1);
}

id sub_1E3E3DC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60, &unk_1E42D5C50);
  sub_1E4203AB4();
  v14 = *(v0 + 40);
  v15 = *(v0 + 32);
  v2 = *(v0 + 56);
  v19 = *(v0 + 72);
  v20 = *(v0 + 48);
  v3 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  v18 = *(v0 + 96);
  v4 = *(v0 + 144);
  v17 = v1[17];
  v5 = v1[20];
  v16 = v1[19];
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  objc_allocWithZone(type metadata accessor for HostedUISearchBar.Coordinator());

  sub_1E394C830(v8, v9);
  *&v11 = v7;
  *(&v11 + 1) = v6;
  return sub_1E3E3E718(v21, v22, v23, v24, v15, v14, v20, v2, v12, v19, v13, v3, v18, v17, v4, v16, v5, v11, v8, v9);
}

uint64_t sub_1E3E3DE90()
{
  OUTLINED_FUNCTION_8_158(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60, &unk_1E42D5C50);
  OUTLINED_FUNCTION_18_104();
  return v1;
}

uint64_t sub_1E3E3DEE4()
{
  OUTLINED_FUNCTION_8_158(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  v10 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60, &unk_1E42D5C50);
  return OUTLINED_FUNCTION_7_185(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void (*sub_1E3E3DF38())()
{
  v2 = __swift_coroFrameAllocStub(0x88uLL);
  OUTLINED_FUNCTION_18_4(v2);
  v3 = OUTLINED_FUNCTION_12_132(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  v5 = *(v4 + 16);
  v1[14] = v5;
  v6 = *(v4 + 24);
  v1[15] = v6;
  *v1 = v3;
  v1[1] = v0;
  v1[2] = v5;
  v1[3] = v6;

  v1[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60, &unk_1E42D5C50);
  MEMORY[0x1E690E3F0]();
  return sub_1E3E3DFE8;
}