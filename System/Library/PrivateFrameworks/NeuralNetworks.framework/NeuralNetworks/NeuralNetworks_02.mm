uint64_t sub_25BAB8778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (sub_25BCB5B0C())
  {
    v6 = *a3;
    if (*a3 - 2048) < 0xFFFFFFFFFFFFF801 || ((v8 = sub_25BCB5ACC(), v8 < 0x800) ? (v9 = v8 == v6) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), (v6 - 515) < 2 || (v10))
    {
      sub_25BCB781C();
    }

    else
    {
      sub_25BCB736C();
    }
  }

  else
  {
    sub_25BCB7BDC();
  }

  return sub_25BCB7BCC();
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAB8870(uint64_t a1, _DWORD *a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  if (swift_dynamicCastMetatype() && swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  v9 = swift_dynamicCastMetatype();
  if (v9)
  {
    v9 = swift_dynamicCastMetatype();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v12 = OUTLINED_FUNCTION_53_1(v9, v10, &protocol descriptor for Layer);
  if (v12)
  {
    return OUTLINED_FUNCTION_53_1(v12, v13, &protocol descriptor for Parameterless) == 0;
  }

  if (OUTLINED_FUNCTION_53_1(0, v13, &protocol descriptor for OptionalBaseLayer) || (result = OUTLINED_FUNCTION_53_1(0, v14, &protocol descriptor for BaseLayerArray)) != 0)
  {
LABEL_5:
    *a2 |= a4;
    return 1;
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25BAB89AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v72 = a4;
  v80 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = *(v14 + 152);
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  v22 = MEMORY[0x28223BE20](v18);
  v24 = v65 - v23;
  LOBYTE(v23) = *(v25 + 48);
  v70 = v26;
  v71 = v19;
  if ((v23 & 1) == 0)
  {
    v40 = *(a2 + 40);
    v41 = (*(v17 + 16))(v24, v19, v15, v22);
    v67 = v65;
    MEMORY[0x28223BE20](v41);
    v65[-4] = a5;
    v65[-3] = a6;
    v69 = a7;
    v65[-2] = a7;
    v65[-1] = v40;
    type metadata accessor for StoredPropertyInfo(255, a6, v42, v43);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_4_26();
    sub_25BCB6E8C();
    sub_25BAB1BE8();
    v44 = OUTLINED_FUNCTION_5_25();
    v45(v44);
    if (v77[0])
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_10_16();

    return;
  }

  v66 = v21;
  v67 = v20;
  v65[1] = 0;
  v27 = sub_25BAB1D20();
  sub_25BCB7BDC();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v65[0] = v27;
  (*(v17 + 16))(v24, v71, v15);
  v28 = v12;
  v30 = v66;
  v29 = v67;
  swift_getAtKeyPath();
  v31 = OUTLINED_FUNCTION_5_25();
  v32(v31);
  (*(v30 + 16))(v28, v29, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51A0, &qword_25BCC3690);
  v33 = swift_dynamicCast();
  v69 = a7;
  if (v33)
  {
    sub_25BA97060(v75, v77);
    v34 = v78;
    v35 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    *&v75[0] = (*(v35 + 8))(v34, v35);
    MEMORY[0x28223BE20](*&v75[0]);
    v65[-2] = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51B0, &unk_25BCC36A0);
    v36 = OUTLINED_FUNCTION_7_20();
    type metadata accessor for StoredPropertyInfo(v36, v37, v38, v39);
    sub_25BB77648();
    sub_25BCB65BC();

    (*(v30 + 8))(v67, a6);

    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    sub_25BAB1544(v75);
    v47 = OUTLINED_FUNCTION_7_20();
    type metadata accessor for StoredPropertyInfo(v47, v48, v49, v50);
    *&v75[0] = sub_25BCB604C();
    if (sub_25BCB5B2C())
    {
      v51 = 0;
      do
      {
        if (v51 >= sub_25BCB5B2C())
        {
          goto LABEL_28;
        }

        v52 = sub_25BCB5AFC();
        sub_25BAB5F30(v52, v51++, a6, a6, v75, a6, v52);
      }

      while (v51 != sub_25BCB5B2C());
    }

    (*(v30 + 8))(v67, a6);
    OUTLINED_FUNCTION_35(v75);
  }

LABEL_15:
  sub_25BCB617C();
  v53 = OUTLINED_FUNCTION_7_20();
  type metadata accessor for StoredPropertyInfo(v53, v54, v55, v56);
  v57 = sub_25BCB681C();

  if (v57 < 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_35(v72);
  for (i = 0; v57 != i; ++i)
  {
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_25BCB617C();
    v59 = sub_25BCB681C();
    if (__OFSUB__(v59, 1))
    {
      goto LABEL_26;
    }

    if (__OFSUB__(v59 - 1, i))
    {
      goto LABEL_27;
    }

    sub_25BCB690C();

    v60 = sub_25BAB1C88(v73);
    if (v60)
    {
      v62 = *v72;
      v73 = v60;
      v74 = v62;
      type metadata accessor for RecursiveStoredPropertiesIterator(0, v70, v69, v61);
      type metadata accessor for StoredPropertyInfo(255, v68, v63, v64);
      swift_getTupleTypeMetadata2();
      OUTLINED_FUNCTION_4_26();
      sub_25BCB732C();
      sub_25BCB72FC();
    }
  }

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAB9034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *(v5 + 16);
  v12(v26 - v10, v13 + v14, v15, v9);
  (v12)(v7, v11, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51A0, &qword_25BCC3690);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v27, v29);
    v16 = v30;
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v32 = (*(v17 + 8))(v16, v17);
    v26[1] = v26;
    *&v27[0] = v32;
    MEMORY[0x28223BE20](v32);
    v26[-2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51B0, &unk_25BCC36A0);
    type metadata accessor for StoredPropertyInfo(0, a2, v18, v19);
    sub_25BB77648();
    v20 = sub_25BCB65BC();
    (*(v5 + 8))(v11, a2);

    result = __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_8:
    *a3 = v20;
    return result;
  }

  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_25BAB1544(v27);
  type metadata accessor for StoredPropertyInfo(0, a2, v22, v23);
  *&v27[0] = sub_25BCB604C();
  if (!sub_25BCB5B2C())
  {
LABEL_7:
    (*(v5 + 8))(v11, a2);
    result = swift_beginAccess();
    v20 = *&v27[0];
    goto LABEL_8;
  }

  v24 = 0;
  while (1)
  {
    result = sub_25BCB5B2C();
    if (v24 >= result)
    {
      break;
    }

    v25 = sub_25BCB5AFC();
    sub_25BAB5F30(v25, v24++, a2, a2, v27, a2, v25);
    if (v24 == sub_25BCB5B2C())
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_25BAB934C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17 = a2[2];
  v8 = *a2;
  sub_25BCB617C();
  v9 = sub_25BCB617C();
  sub_25BAB1D84(v9);
  if (a2[6] & 1) != 0 || (*(a3 + 48))
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v14 = a2[5];
    v15 = *(a3 + 40);
    v12 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      __break(1u);
      return;
    }

    v13 = 0;
  }

  if (*(a2 + 49) == 1)
  {
    v16 = *(a3 + 49);
  }

  else
  {
    v16 = 0;
  }

  type metadata accessor for StoredPropertyInfo(0, *(v8 + 152), v10, v11);
  sub_25BAB21D4(v17, a4, a1, v12, v13, v16);
}

uint64_t sub_25BAB9480(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_25BAB94DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 48))(*a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_25BAB9528()
{
  sub_25BCB6FFC();
  sub_25BCB736C();

  return sub_25BCB73BC();
}

void sub_25BAB95C8(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result;
  v6 = *(a2 + 16);
  v7 = *(*result + 16);
  if (v7 >= v6)
  {
    v43 = *result;
    if (v6)
    {
      i = a2;
      v34 = a2;
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BAB806C(&v34);
      v9 = 0;
      v10 = v34;
      v11 = *(v34 + 16);
      while (v11 != v9)
      {
        if (v9 >= *(v10 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v35 = 0;
          v36 = 0;
          v34 = v3;
          v37 = -1;
          v40 = 0;
          v38 = i;
LABEL_66:
          v39 = 0;
          v41 = -1;
LABEL_67:
          v42 = 4;
          OUTLINED_FUNCTION_17_4();
          sub_25BADDD28(v27, v28, v29, v30, v31, v32, v33);
        }

        v12 = *(v10 + 8 * v9 + 32);
        i = *(v5 + 16);
        if (v12 < -i || v12 >= i)
        {

          goto LABEL_2;
        }

        v3 = (i & (v12 >> 63)) + v12;
        if (v3 < -i)
        {
          goto LABEL_63;
        }

        if (v3 >= 0)
        {
          v14 = (i & (v12 >> 63)) + v12;
        }

        else
        {
          v14 = v3 + i;
        }

        if (v14 < 0)
        {
          goto LABEL_55;
        }

        if (*(v5 + 8 * v14 + 32) != 1)
        {

          goto LABEL_2;
        }

        if (!i)
        {
          goto LABEL_56;
        }

        if (v3 < 0 && v3 + i < 0)
        {
          goto LABEL_57;
        }

        if (v3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_58;
        }

        if (v3 < 0)
        {
          goto LABEL_59;
        }

        if (i < (v3 + 1))
        {
          goto LABEL_60;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (i - 1) > *(v5 + 24) >> 1)
        {
          sub_25BA96630(isUniquelyReferenced_nonNull_native, i, 1, v5);
          v5 = v16;
        }

        memmove((v5 + 32 + 8 * v3), (v5 + 32 + 8 * (v3 + 1)), 8 * (*(v5 + 16) - (v3 + 1)));
        --*(v5 + 16);
        v43 = v5;
        ++v9;
      }

      *a3 = v5;
    }

    else
    {
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {
          sub_25BCB617C();
          i = v7;
          goto LABEL_53;
        }

        if (*(v5 + 8 * i + 32) == 1)
        {
          break;
        }
      }

      sub_25BCB617C();
      v17 = i;
LABEL_36:
      v18 = v17;
      while (v7 - 1 != v18)
      {
        v17 = v18 + 1;
        if (v18 + 1 >= v7)
        {
          v36 = 0;
          v34 = v18 + 1;
          goto LABEL_65;
        }

        v19 = *(v5 + 40 + 8 * v18++);
        if (v19 != 1)
        {
          if (i != v17)
          {
            if (i < -v7 || i >= v7)
            {
              v36 = 0;
              v34 = i;
LABEL_65:
              v35 = 0;
              v37 = -1;
              v40 = 0;
              v38 = v7;
              goto LABEL_66;
            }

            v21 = *(v5 + 32 + 8 * i);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_25BAA2110(v5, v22, v23, v24);
              v5 = v26;
            }

            v25 = *(v5 + 16);
            if (i >= v25)
            {
              goto LABEL_62;
            }

            *(v5 + 8 * i + 32) = v19;
            if (v17 >= v25)
            {
              v35 = 0;
              v36 = 0;
              v34 = v17;
              OUTLINED_FUNCTION_23_39();
              goto LABEL_67;
            }

            *(v5 + 8 * v17 + 32) = v21;
            v43 = v5;
            v7 = *(v5 + 16);
          }

          ++i;
          goto LABEL_36;
        }
      }

      if (v7 < i)
      {
        goto LABEL_61;
      }

LABEL_53:
      sub_25BC02820(i, v7);
      *a3 = v43;
    }
  }

  else
  {
LABEL_2:
    *a3 = 0;
  }
}

uint64_t sub_25BAB9974(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BCA55A0(v7, v8, a1, v4);
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
    return sub_25BAB80F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BAB9A8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v6 = a5[1];
  *(v5 + 48) = *a5;
  *(v5 + 64) = v6;
  *(v5 + 80) = a5[2];
  *(v5 + 90) = *(a5 + 42);
  return v5;
}

uint64_t OUTLINED_FUNCTION_124_2()
{

  return sub_25BA97060((v0 - 344), v0 - 280);
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL | 0x6F70000000000000;

  return sub_25BB2BAEC(v2, 0xEB00000000745F77);
}

uint64_t OUTLINED_FUNCTION_168_1(uint64_t a1)
{

  return swift_initStackObject();
}

uint64_t sub_25BAB9E04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 152);
  LOBYTE(v2) = *(v2 + 160);
  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_25BCB617C();
}

uint64_t sub_25BAB9E1C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1)
{

  return sub_25BCB77CC();
}

uint64_t OUTLINED_FUNCTION_110_2()
{
}

uint64_t OUTLINED_FUNCTION_110_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_111(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_111_0(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_111_2()
{

  return sub_25BB0EA20(v0);
}

uint64_t OUTLINED_FUNCTION_111_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{

  return swift_weakInit();
}

uint64_t sub_25BAB9FA8(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  a2();
  swift_setDeallocating();
  sub_25BAB9E1C();
  sub_25BCB617C();
  return OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1)
{

  return sub_25BB3EFD4(v2, v1 | 0x8000000000000000, v3, a1);
}

void OUTLINED_FUNCTION_166_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{
  *(v2 - 352) = v1;

  return sub_25BAC4018();
}

__n128 OUTLINED_FUNCTION_109_3()
{
  v2 = *(v0 + 72);
  *(v1 - 160) = *(v0 + 56);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 88);
  result = *(v0 + 98);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_5()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_108_2(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  *(v5 - 472) = v4;

  sub_25BBC0130(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_108_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 *a8, uint64_t a9, uint64_t a10)
{

  return sub_25BABED3C(a1, a2, a3, a4, v10, v11, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_92_2()
{
}

void OUTLINED_FUNCTION_92_4()
{

  JUMPOUT(0x25F876C80);
}

uint64_t OUTLINED_FUNCTION_92_6()
{

  return swift_weakAssign();
}

uint64_t OUTLINED_FUNCTION_88()
{
}

uint64_t OUTLINED_FUNCTION_146_0()
{
  result = __swift_destroy_boxed_opaque_existential_1((v2 - 240));
  *(v2 - 240) = v1;
  *(v2 - 232) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_121_0()
{
  *(v3 - 96) = v2;
  *(v3 - 88) = v1;
  *(v3 - 87) = v0;
  *(v3 - 65) = 0;

  return sub_25BB39990();
}

__n128 *OUTLINED_FUNCTION_121_1(__n128 *result, __n128 a2, __n128 a3)
{
  result[1] = a3;
  result[2] = a2;
  *(v4 + 168) = result;
  *(v4 + 176) = 0;
  *(v4 + 184) = v3;
  return result;
}

uint64_t TensorShape.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_25BABA598(a1, a2, *v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((v10 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);

  if (__OFSUB__(v11 >> 1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 != (v11 >> 1) - v9)
  {
LABEL_12:
    swift_unknownObjectRelease_n();
LABEL_2:
    v12 = sub_25BABA62C(v5, v7, v9, v11);
LABEL_9:
    result = swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v12 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v12)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  *a3 = v12;
  return result;
}

uint64_t Flatten.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 152);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v4 + 32);
  v15 = v4;
  v7 = 1;
  TensorShape.subscript.getter(1uLL, v5, &v14);
  v8 = *(v14 + 16);
  if (v8)
  {
    v9 = (v14 + 32);
    v10 = 1;
    while (1)
    {
      v11 = *v9++;
      v7 = v10 * v11;
      if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
      {
        break;
      }

      v10 = v7;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v22 = -1;
    v23 = 4;
    sub_25BCB617C();
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

LABEL_6:

  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE70;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  v14 = v12;
  Tensor.reshaped(to:)(&v14, a2);
}

unint64_t sub_25BABA598(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_25BCB617C();
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_25BABA634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v9);
      OUTLINED_FUNCTION_39_2();
      v4[2] = v6;
      v4[3] = v10;
    }

    if (v5 != a3)
    {
      memcpy(v4 + 4, (a2 + 8 * a3), 8 * v6);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t Dense.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 24);
  v87 = *(v2 + 8);
  v88 = v6;
  v89 = *(v2 + 40);
  v7 = *(*(v4 + 16) + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5108, &qword_25BCC2C18);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE90;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 56) = -2;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 64) = 0;
  *(v8 + 88) = -3;
  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  v12 = *(*((v10 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  v13 = *(v12 + 16);
  if (v13 <= 1)
  {
LABEL_23:
    *&v66[16] = 0;
    *v66 = 1uLL;
    v66[24] = -1;
    *&v66[40] = 0;
    v67 = 0;
    *&v66[32] = v13;
    LOBYTE(v68) = -1;
    v71 = 4;
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    goto LABEL_25;
  }

  v14 = v9;
  *(v9 + 96) = *(v12 + 40);
  *(v9 + 104) = xmmword_25BCC2BE0;
  *(v9 + 120) = 0;
  *v66 = xmmword_25BCBAE70;
  v66[16] = 1;
  *&v66[24] = v9;
  *&v81 = v7;
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BABADF0(&v81);
  if ((v15 & 1) == 0)
  {
    *v66 = v7;
    *&v66[8] = xmmword_25BCBCE20;
    v66[24] = 0;
    *&v66[32] = xmmword_25BCBAE70;
    LOBYTE(v67) = 1;
    *&v68 = v14;
    v71 = 11;
    sub_25BCB617C();
    sub_25BAB7654(2, 4, 1);
    sub_25BCB617C();
    OUTLINED_FUNCTION_5_24();
    v48 = 97;
    goto LABEL_25;
  }

  sub_25BABAF8C(2, 4, 1);

  *v66 = v4;
  Tensor.scalarType.getter(v16);
  (*(v17 + 32))(v73);
  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_30:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_31;
  }

  v20 = v73[0];
  *&v81 = v19 & 0x7FFFFFFFFFFFFFFFLL;
  Tensor.scalarType.getter(v18);
  v22 = (*(v21 + 32))(v72);
  if (v20 == LOBYTE(v72[0]))
  {
    goto LABEL_10;
  }

  v13 = LOBYTE(v72[0]) + 13 * v20;
  if (v13 > 0xA8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v20 = byte_286D42018[v13 + 32];
  if (v20 == 13)
  {
    *&v81 = v4;
    Tensor.scalarType.getter(v22);
    OUTLINED_FUNCTION_6_28();
    if (!v11)
    {
      if (v51 < 0)
      {
LABEL_32:
        v60 = v49;
        v61 = v50;
        *v73 = v51 & 0x7FFFFFFFFFFFFFFFLL;
        v62 = Tensor.scalarType.getter(v49);
        *v66 = v60;
        *&v66[8] = v61;
        *&v66[16] = xmmword_25BCBCE20;
        v66[32] = 0;
        *&v66[40] = v62;
        v67 = v63;
        v68 = xmmword_25BCBEAD0;
        LOBYTE(v69) = 0;
        v71 = 1;
        OUTLINED_FUNCTION_5_24();
        v48 = 108;
LABEL_25:
        sub_25BADDD28(v42, v43, v44, v45, v46, v47, v48);
      }

      goto LABEL_30;
    }

LABEL_28:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_31:
    v49 = OUTLINED_FUNCTION_67(v52, v53, v54, v55, v56, v57, v58, v59, v64, v65);
    __break(1u);
    goto LABEL_32;
  }

LABEL_10:
  *&v81 = *(*(v4 + 16) + 152);
  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  *v73 = *(*((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BABAFE4(&v81, v73, v66);

  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  v25 = *v66;
  v26 = *(v4 + 16);
  v27 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  *v66 = v5;
  *&v66[8] = v87;
  *&v66[24] = v88;
  *&v66[40] = v89;
  Dense.bias.getter(&v81);
  if (v81)
  {
    v28 = *(v81 + 16);
  }

  else
  {

    v28 = 0;
  }

  v79 = v25;
  v80 = v20;
  v76 = v87;
  v77 = v88;
  v75[1] = v5;
  v78 = v89;
  Dense.bias.getter(v75);
  v29 = v75[0];
  if (v75[0])
  {
  }

  v30 = OUTLINED_FUNCTION_68(&unk_286D4B030);
  *(v30 + 16) = v29 != 0;
  v31 = sub_25BAAF074(sub_25BAC8C08, v30);
  v33 = v32;

  v74 = 0;
  *&v81 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v81 + 1) = 107;
  v82 = 2;
  v83 = xmmword_25BCC2BF0;
  v84 = "init(id:input:weight:bias:resultDescriptor:creationSite:backward:)";
  v85 = 66;
  v86 = 2;
  type metadata accessor for LinearOperation();
  swift_allocObject();
  v34 = sub_25BABB32C(0, 0, 0, v26, v27, v28, &v79, &v81, v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25BCBAE70;
  v36 = *(v5 + 32);
  if ((~v36 & 0xF000000000000007) == 0)
  {
    goto LABEL_28;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  *(v35 + 32) = v36 & 0x7FFFFFFFFFFFFFFFLL;
  *(v35 + 40) = v4;
  sub_25BAB3020(v36);

  sub_25BAB7DE8(v35, v73);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v73, v72);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v66);

  v37 = v70;

  sub_25BAA4AF4(v66);
  sub_25BAA49B8();
  sub_25BAA4A5C(v66);

  v38 = v69;

  sub_25BAA4AF4(v66);
  type metadata accessor for TensorRepresentation();
  v39 = swift_allocObject();
  v66[0] = 1;
  sub_25BABB3EC(v34, 0, v72, 0x100000000, v37, v38, v39);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v73);
  *a2 = v40;
  return result;
}

void sub_25BABADF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  if (sub_25BAB74D0(*(*a1 + 16), *v1, *(v1 + 8), *(v1 + 16)))
  {
    sub_25BABAF60(0, *(v2 + 16), v2);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_25BABAF60(0, *(v3 + 16), v3);
    if (v11 == v12 >> 1)
    {
LABEL_22:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v10;
      v14 = v11;
      v15 = v12 >> 1;
      v16 = v9 >> 1;
      while (v14 < v15)
      {
        v17 = v13 + 32 * v14;
        v18 = *v17;
        ++v14;
        if (*(v17 + 24) == 253)
        {
          if (__OFSUB__(v15, v14))
          {
            goto LABEL_29;
          }

          while (!__OFSUB__(v16, v7))
          {
            if (v15 - v14 >= v16 - v7)
            {
              sub_25BABAF68(v18, *(v17 + 8), *(v17 + 16), 253);
              goto LABEL_21;
            }

            if (v16 == v7)
            {
              goto LABEL_25;
            }

            if (v7 >= v16)
            {
              goto LABEL_26;
            }

            ++v7;
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          break;
        }

        if (v7 == v16)
        {
          goto LABEL_28;
        }

        if (v7 >= v16)
        {
          goto LABEL_30;
        }

        if (*(v17 + 24) - 253 < 2 || v18 == *(v5 + 8 * v7))
        {
          ++v7;
LABEL_21:
          if (v14 != v15)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

double sub_25BABAF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 + 3) >= 2u)
  {
    return sub_25BC02C38(a2, a3, a4);
  }

  return result;
}

uint64_t sub_25BABAF8C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks20DimensionExpectationO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 6)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks17DebugValueLocatorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks17DebugValueLocatorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

void sub_25BABAFE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(*a2 + 16))
  {
    OUTLINED_FUNCTION_9_60();
    OUTLINED_FUNCTION_8_62();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v6, v7, v8, v9, v10, v11, v12);
  }

  v3 = *a1;
  v4 = *(v3 + 16) - 1;
  v5 = *(*a2 + 32);
  *a3 = v3;
  sub_25BCB617C();
  TensorShape.subscript.setter(v5, v4);
}

void TensorShape.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (-v4 > a2 || v4 <= a2)
  {
LABEL_12:
    OUTLINED_FUNCTION_1_74();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v13, v14, v15, v16, v17, v18, v19);
  }

  v7 = (v4 & (a2 >> 63)) + a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BAA2110(v3, v9, v10, v11);
  v3 = v12;
  *v2 = v12;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v7 >= *(v3 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + 8 * v7 + 32) = a1;
  *v2 = v3;
}

void Dense.bias.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 26) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(*(v1 + 16) + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC(v2);
}

void OUTLINED_FUNCTION_64_6(uint64_t a1@<X8>)
{
  *(v1 - 200) = a1;
  *(v1 - 192) = 125;
  *(v1 - 184) = 2;
}

uint64_t OUTLINED_FUNCTION_64_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v25 + 192) = a10;
  *(v25 + 200) = a1 & 1;
  *(v25 + 208) = a2;

  return sub_25BB6B668((v25 + 216));
}

uint64_t OUTLINED_FUNCTION_64_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_25BABF20C(v7, 0, v4 + 184, a4, v6, v5);
}

void OUTLINED_FUNCTION_64_10()
{

  sub_25BAB173C(v0, v1 - 128);
}

void *OUTLINED_FUNCTION_64_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return memcpy(va, v24, 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_64_12()
{

  return sub_25BCB5E9C();
}

uint64_t sub_25BABB32C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  v15 = *a7;
  v16 = *(a7 + 8);
  *(v10 + 56) = 0;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7261656E696CLL, 0xE600000000000000);
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;

  *(v10 + 64) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  v17 = a8[1];
  *(v10 + 96) = *a8;
  *(v10 + 112) = v17;
  *(v10 + 128) = a8[2];
  *(v10 + 138) = *(a8 + 42);
  return v10;
}

uint64_t sub_25BABB688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE50;
  v3 = *(v0 + 72);
  *(v2 + 32) = *(v0 + 64);
  *(v2 + 40) = v3;
  sub_25BCB617C();
  return v2;
}

uint64_t Reshape.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6[0] = *v2;
  v6[1] = v4;
  sub_25BCB617C();
  Tensor.reshaped(to:)(v6, a2);
}

_BYTE *storeEnumTagSinglePayload for LossReduction(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25BABB838);
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

uint64_t softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, float a5@<S0>, void *a6@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a4;
  v12 = *(*(*(*a1 + 16) + 152) + 16);
  if (!sub_25BAB74D0(v12, 2, 0, 2))
  {
    v201 = v12;
    v202 = xmmword_25BCCD6C0;
    LOBYTE(v203) = 0;
    *v204 = xmmword_25BCBC6A0;
    v204[16] = 2;
    v210 = 7;
    OUTLINED_FUNCTION_0_79();
    v147 = 264;
    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_17_36(*(v9 + 16)) & 1) == 0)
  {
    v201 = 2;
    v202 = xmmword_25BCCD6C0;
    LOBYTE(v203) = 0;
    *v204 = v12;
    *&v204[8] = xmmword_25BCCD6D0;
    LOBYTE(v205) = 0;
    v210 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
    v147 = 265;
    goto LABEL_21;
  }

  if (a5 < 0.0 || a5 > 1.0)
  {
    v203 = MEMORY[0x277D83A90];
    *&v201 = a5;
    *v204 = xmmword_25BCCD6E0;
    v204[16] = 0;
    v205 = 0x3F80000000000000;
    v207 = 0;
    v208 = 0;
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    v209 = -1;
    v210 = 12;
    OUTLINED_FUNCTION_0_79();
    v147 = 268;
    goto LABEL_21;
  }

  v14 = *(*(*(v9 + 16) + 152) + 16);
  if (-v14 > a3 || v14 <= a3)
  {
    v202 = 0uLL;
    v201 = a3;
    LOBYTE(v203) = -1;
    *&v204[16] = 0;
    *v204 = v14;
    LOBYTE(v205) = -1;
    v210 = 4;

    v141 = "positiveAxis(fromAxis:from:rank:from:function:file:line:)";
    v144 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift";
    v142 = 57;
    v143 = 2;
    v145 = 102;
    v146 = 2;
    v147 = 133;
LABEL_21:
    sub_25BADDD28(v141, v142, v143, v144, v145, v146, v147);
  }

  v16 = v14 & (a3 >> 63);
  v175 = v16;
  if (a5 <= 0.0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_37();
    v18 = *(v17 + 160);
    v27 = OUTLINED_FUNCTION_21_29(v19, v20, v21, v22, v23, v24, v25, v26, v148, v157, v165, v16, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
    v29 = sub_25BAA51C8(v27, v28);
    v30 = MEMORY[0x277D84F90];
    HIBYTE(v191) = v18;
    v38 = OUTLINED_FUNCTION_20_28(v29, v31, v32, v33, v34, v35, v36, v37, v149, v158, v166, v176, v185, v186, v187, v188, v189, v190, v191, MEMORY[0x277D84F90], v193, v194);
    sub_25BAA51C8(v38, v39);

    v47 = OUTLINED_FUNCTION_10_39(v40, &unk_286D45AA0, v41, v42, v43, v44, v45, v46, v150, v159, v167, v177, v185, v186, v187, v188, v189, v190, v191, v192);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v47, v48, v49, v50, v51);
    sub_25BA9C2C8(&v194);
    sub_25BA9C2C8(&v201);
    v52 = v193;
    v201 = *(*(v9 + 16) + 152);
    v53 = TensorShape.subscript.getter(v16 + a3);
    OUTLINED_FUNCTION_12_37();
    v54 = *(*(v9 + 16) + 160);
    v63 = OUTLINED_FUNCTION_21_29(v55, v56, v57, v58, v59, v60, v61, v62, v151, v160, v168, v178, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
    sub_25BAA51C8(v63, v64);
    v192 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_25BCBAE50;
    *(v65 + 32) = v53;
    HIBYTE(v191) = v54;
    v73 = OUTLINED_FUNCTION_20_28(v65, v66, v67, v68, v69, v70, v71, v72, 1, 2, v169, v179, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194);
    v75 = sub_25BAA51C8(v73, v74);
    v83 = OUTLINED_FUNCTION_10_39(v75, v76, v77, v78, v79, v80, v81, v82, v152, v161, v170, v180, v185, v186, v187, v188, v189, v190, v191, v192);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v83, v65, v84, v85, v86);
    sub_25BA9C2C8(&v194);
    sub_25BA9C2C8(&v201);
    v87 = v193;
    OUTLINED_FUNCTION_12_37();
    v88 = *(*(v9 + 16) + 160);
    v97 = OUTLINED_FUNCTION_21_29(v89, v90, v91, v92, v93, v94, v95, v96, v153, v162, v171, v181, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
    sub_25BAA51C8(v97, v98);
    v192 = v30;
    v99 = swift_allocObject();
    *(v99 + 16) = v154;
    *(v99 + 32) = a5;
    HIBYTE(v191) = v88;
    v107 = OUTLINED_FUNCTION_20_28(v99, v100, v101, v102, v103, v104, v105, v106, v154, *(&v154 + 1), v172, v182, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194);
    v109 = sub_25BAA51C8(v107, v108);
    v117 = OUTLINED_FUNCTION_10_39(v109, v110, v111, v112, v113, v114, v115, v116, v155, v163, v173, v183, v185, v186, v187, v188, v189, v190, v191, v192);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v117, v99, v118, v119, v120);
    sub_25BA9C2C8(&v194);
    v121 = sub_25BA9C2C8(&v201);
    v122 = v193;
    v201 = v10;
    OUTLINED_FUNCTION_20_28(v121, v123, v124, v125, v126, v127, v128, v129, v156, v164, v174, v184, v193, v186, v187, v188, v189, v190, v191, v192, v193, v52);
    static Tensor.- infix(_:_:)();
    static Tensor.* infix(_:_:)();

    v201 = v122;
    v185 = v87;
    static Tensor./ infix(_:_:)();
    static Tensor.+ infix(_:_:)();

    v10 = v201;
  }

  if (v11 == 2)
  {
    v194 = *(*(v9 + 16) + 152);
    sub_25BCB617C();
    TensorShape.removing(at:)(v175 + a3);
  }

  LOBYTE(v185) = v11;
  v138 = OUTLINED_FUNCTION_21_29(v130, v131, v132, v133, v134, v135, v136, v137, v148, v157, v165, v175, v185, v186, v187, v188, v189, v190, v191, v192, v193, v10, v195, v196, v197, v198, v199, v200, v9);
  basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)(v138, v139, a3, &v185, a6);
}

uint64_t basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a4;
  v10 = *(*(*(*a1 + 16) + 152) + 16);
  if (!sub_25BAB74D0(v10, 2, 0, 2))
  {
    v96 = v10;
    v97 = xmmword_25BCCD6C0;
    v98 = 0;
    *v99 = xmmword_25BCBC6A0;
    v99[16] = 2;
    v101 = 7;
    OUTLINED_FUNCTION_8_38();
    v84 = 139;
    goto LABEL_17;
  }

  v11 = *(v7[2] + 152);
  v12 = *(v8[2] + 152);
  if ((sub_25BAB5C48(v11, v12) & 1) == 0)
  {
    v96 = v11;
    v97 = xmmword_25BCCD6C0;
    v98 = 0;
    *v99 = v12;
    *&v99[8] = xmmword_25BCCD6D0;
    v100 = 0;
    v101 = 10;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_8_38();
    v84 = 140;
    goto LABEL_17;
  }

  v13 = *(*(v7[2] + 152) + 16);
  if (-v13 > a3 || v13 <= a3)
  {
    v97 = 0uLL;
    v96 = a3;
    v98 = -1;
    *&v99[16] = 0;
    *v99 = v13;
    v100 = -1;
    v101 = 4;
    OUTLINED_FUNCTION_8_38();
    v84 = 133;
LABEL_17:
    sub_25BADDD28(v78, v79, v80, v81, v82, v83, v84);
  }

  v15 = (v13 & (a3 >> 63)) + a3;
  v95 = v7;
  v96 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v15;
  Tensor.max(alongAxes:)(&v89);
  v17 = swift_setDeallocating();
  OUTLINED_FUNCTION_22_32(v17, v18, v19, v20, v21, v22, v23, v24, 1, 2, v89, v90, v91, v92, v93, v94, v95);
  static Tensor.- infix(_:_:)();

  v26 = v96;
  v34 = OUTLINED_FUNCTION_22_32(v25, v27, v28, v29, v30, v31, v32, v33, v85, v87, v89, v90, v91, v92, v93, v94, v96);
  exp(_:)(v34);
  v95 = v96;
  v35 = OUTLINED_FUNCTION_18_37();
  v45 = OUTLINED_FUNCTION_12_41(v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  Tensor.sum(alongAxes:)(&v96, v45);

  v95 = v96;
  v96 = v26;
  log(_:)(&v89, &v95);
  static Tensor.- infix(_:_:)();

  v54 = OUTLINED_FUNCTION_22_32(v46, v47, v48, v49, v50, v51, v52, v53, v86, v88, v89, v90, v91, v92, v93, v94, v95);
  static Tensor.- prefix(_:)(v54);

  v95 = v96;
  v96 = v8;
  static Tensor.* infix(_:_:)();
  v55 = OUTLINED_FUNCTION_18_37();
  v65 = OUTLINED_FUNCTION_12_41(v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  Tensor.sum(alongAxes:)(&v96, v65);

  v66 = v96;
  if (v9 == 2)
  {
    v67 = OUTLINED_FUNCTION_18_37();
    OUTLINED_FUNCTION_12_41(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
    v96 = v66;
    Tensor.squeezingShape(at:)();
  }

  else
  {
    if (v9)
    {
      v95 = v96;
      v89 = &unk_286D423B0;
      Tensor.reshaped(to:)(&v89, &v96);

      v95 = v96;
      Tensor.sum(squeezingAxes:)(a5, &unk_286D423D8);
    }

    else
    {
      v95 = &unk_286D42360;
      Tensor.reshaped(to:)(&v95, &v89);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }
}

void sub_25BABC3B0()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v5 = *isUniquelyReferenced_nonNull_native;
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  v9 = MEMORY[0x277D84F90];
  if (v7)
  {
    while (1)
    {
      v10 = *v8;
      v11 = *(v5 + 16);
      if (*v8 < -v11 || v10 >= v11)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_45();
        sub_25BA96630(v14, v15, v16, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v17 = OUTLINED_FUNCTION_4_74(v12);
        sub_25BA96630(v17, v18, v19, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = (v11 & (v10 >> 63)) + v10;
      ++v8;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    v20 = 0;
  }

  else
  {
LABEL_11:
    if (v2)
    {
      sub_25BABC528(v9, 1, v5, &v22);

      v20 = v22;
    }

    else
    {
      v22 = v9;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v21[2] = &v22;
      v20 = sub_25BAC17E4(sub_25BAC17C8, v21, v5);
    }
  }

  *v4 = v20;
  OUTLINED_FUNCTION_10_16();
}

void sub_25BABC528(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a1 + 16);
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = (a1 + 32);
    v13 = v8 & ~(v8 >> 63);
    if (!v8)
    {
      break;
    }

    while (v13)
    {
      v14 = *v12;
      v15 = *(a3 + 16);
      if (*v12 < -v15 || v14 >= v15)
      {
        sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
      }

      v17 = (v15 & (v14 >> 63)) + v14;
      if (v17 < 0)
      {
        goto LABEL_13;
      }

      *(a3 + 32 + 8 * v17) = a2;
      --v13;
      ++v12;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_25BAA2110(a3, v9, v10, v11);
    a3 = v18;
  }

LABEL_11:
  *a4 = a3;
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
}

void OUTLINED_FUNCTION_40_4()
{
  v1 = *(v0 - 128);
  *(v0 - 152) = *(v0 - 136);
  *(v0 - 144) = v1;
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_25BCB6D8C();
}

void OUTLINED_FUNCTION_40_6()
{
  *(v3 - 336) = v0;
  *(v3 - 312) = v1;
  *(v3 - 456) = v2;
}

double OUTLINED_FUNCTION_40_7(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  result = a10;
  *(v11 + 8 * v10) = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = v5;
  *(a1 + 72) = v3;
  *(a1 + 80) = v4;
  *(a1 + 88) = v2;

  return sub_25BAF9FC0(a1);
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t a1)
{

  return sub_25BB00C00(a1, v1, 1);
}

void OUTLINED_FUNCTION_40_10(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[1] = v6;
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = a2;
}

uint64_t OUTLINED_FUNCTION_40_11()
{
}

uint64_t OUTLINED_FUNCTION_40_14()
{
}

void OUTLINED_FUNCTION_40_18()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_40_19(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_40_22()
{

  return sub_25BCB5EEC();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_25BAA51C8(a3, va);
}

__n128 OUTLINED_FUNCTION_40_25(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v33 + 16) = v34;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_41_4()
{
  *(v1 - 72) = *(v0 + 112);

  return sub_25BBF4F40();
}

uint64_t OUTLINED_FUNCTION_41_5(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 24576;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

id OUTLINED_FUNCTION_41_9(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_41_10()
{
}

void OUTLINED_FUNCTION_41_13()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_41_14(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = a1;
  *(v2 + 88) = 6;
}

uint64_t OUTLINED_FUNCTION_41_15(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAA48D4(v2, va, v3, v4);
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t *OUTLINED_FUNCTION_41_19(NSUInteger a1)
{

  return sub_25BBC9A4C(a1, 0);
}

uint64_t OUTLINED_FUNCTION_41_23(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return Tensor.init(onesLike:)(va);
}

uint64_t OUTLINED_FUNCTION_41_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_25BAA51C8(a3, va);
}

uint64_t OUTLINED_FUNCTION_41_25@<X0>(char a1@<W8>)
{
  *(v3 - 88) = v1;
  *(v3 - 80) = v2;
  *(v3 - 72) = a1;
  return 0;
}

uint64_t sub_25BABCB24(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for ContextManager();
  v4 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v4, v5);

  v7 = v14;
  v6 = v15;
  sub_25BCB617C();
  sub_25BAA4AF4(&v12);
  v8 = a2(a1);
  v10 = v9;
  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v6)
  {
    v12 = v7;
    v13 = v6;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v8, v10);

    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v12 = v8;
    v13 = v10;
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BABCC4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 130) = a4;
  *(v11 + 136) = a6;
  *(v11 + 144) = a10;
  *(v11 + 152) = a11;
  if (!a3)
  {
    a1 = sub_25BABCCAC(a4);
  }

  return OUTLINED_FUNCTION_0_86(a1, a2, a3);
}

uint64_t sub_25BABCCC4(char a1)
{
  result = 0x6D756D6978616DLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_2_70();
      break;
    case 2:
      result = OUTLINED_FUNCTION_3_57();
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_72();
      break;
    case 4:
      result = 7173491;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BABCFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 64);
  *(v1 + 32) = *(v0 + 56);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

void static Tensor.- infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v6 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v7);
  v8 = 0;
  do
  {
    if (v8 == 4)
    {
      v64 = OUTLINED_FUNCTION_171_0(v5);
      v65 = v51;
      v50 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v7);
  OUTLINED_FUNCTION_98_6(v9);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v67)
  {
    OUTLINED_FUNCTION_54_10(*(v2 + 16));
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v59, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    v58 = 157;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_207_1(v10);
  OUTLINED_FUNCTION_35_16();
  v12 = v11();
  OUTLINED_FUNCTION_151_1(v12);
  OUTLINED_FUNCTION_53_11();
  v13();
  OUTLINED_FUNCTION_195_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v7 & v14))
    {
      OUTLINED_FUNCTION_127_0();
      if (!v7)
      {
        goto LABEL_13;
      }

      v60 = OUTLINED_FUNCTION_203_0(v15);
      v61 = OUTLINED_FUNCTION_101_5(v60);
      v64 = v67;
      v65 = v0;
      OUTLINED_FUNCTION_52_10(v61, v62, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v63, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
      v58 = 160;
LABEL_18:
      sub_25BADDD28(v52, v53, v54, v55, v56, v57, v58);
    }

    __break(1u);
LABEL_15:
    v64 = OUTLINED_FUNCTION_172_1(v5);
    v65 = v49;
    v50 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v50);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v64 = v2;
  v16 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v67) = v3;
  v17 = OUTLINED_FUNCTION_46_14(v16, *MEMORY[0x277D84660]);
  v18(v17);
  OUTLINED_FUNCTION_62_6();
  v19 = OUTLINED_FUNCTION_126_1();
  v1(v19);

  OUTLINED_FUNCTION_57_6();
  v20 = OUTLINED_FUNCTION_66_7();
  v21(v20);
  OUTLINED_FUNCTION_62_6();
  v22 = OUTLINED_FUNCTION_25_12();
  v1(v22);

  OUTLINED_FUNCTION_90_4();

  v23 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v23, v24);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v68 = xmmword_25BCCB470;
  v26 = OUTLINED_FUNCTION_77_5(v25);
  OUTLINED_FUNCTION_161_1(v26);
  v27 = OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_108_5(v27, v28, v29, 1, v30, v31, v32, v33, v2, v3);
  OUTLINED_FUNCTION_137_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v35 = OUTLINED_FUNCTION_31(v34);
  OUTLINED_FUNCTION_102_5(v35, xmmword_25BCBAE70);

  v36 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v36, v37, v38, v39, 178, v40, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v64);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v64);
  v42 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v42);
  LOBYTE(v64) = 1;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_107_6();
  v48 = OUTLINED_FUNCTION_15_7(v47);
  OUTLINED_FUNCTION_13_22(v48);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v66);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 48) = a11;
}

__n128 OUTLINED_FUNCTION_118_2()
{
  v2 = *(v0 + 64);
  *(v1 - 160) = *(v0 + 48);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 80);
  result = *(v0 + 90);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_25BCB783C();
}

__n128 OUTLINED_FUNCTION_98_3()
{
  v2 = *(v0 + 104);
  *(v1 - 160) = *(v0 + 88);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 120);
  result = *(v0 + 130);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_5(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_98_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 48) = *(a1 + 152);
  *(v3 - 208) = *(v1 + 152);

  return sub_25BCB617C();
}

void static ShapeInference.broadcasting(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (sub_25BAB5C48(*a1, *a2))
  {
    *a3 = v4;
    OUTLINED_FUNCTION_27_34();

    sub_25BCB617C();
    return;
  }

  v49 = a3;
  v50 = v5;
  v7 = *(v4 + 16);
  v8 = v7 - 1;
  v9 = *(v5 + 16);
  v10 = v9 - 1;
  v11 = (v5 + 8 * v9 + 24);
  v12 = v4 + 8 * v7;
  v13 = (v12 + 24);
  v14 = MEMORY[0x277D84F90];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = *(v4 + 16);
  if (v8 >= v12)
  {
    goto LABEL_44;
  }

  for (i = *v13; ; i = 0)
  {
    v16 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v17 = 0;
    }

    else
    {
      v12 = *(v50 + 16);
      if (v10 >= v12)
      {
        v52 = 0;
        v51[0] = v10;
        goto LABEL_46;
      }

      v17 = *v11;
    }

    v18 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_42;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if ((v10 & 0x8000000000000000) != 0 || v17 == 1)
    {
      v17 = i;
      goto LABEL_28;
    }

    if (i == 1)
    {
      goto LABEL_28;
    }

    if (i != v17)
    {

      *v49 = 0;
      goto LABEL_40;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_45();
      sub_25BAAE04C(v31, v32, v33, v14);
      v14 = v34;
    }

    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      v35 = OUTLINED_FUNCTION_4_74(v19);
      sub_25BAAE04C(v35, v36, v37, v14);
      v14 = v38;
    }

    v17 = i;
LABEL_32:
    *(v14 + 16) = v21;
    *(v14 + 8 * v20 + 32) = v17;
    --v11;
    --v13;
    v8 = v16;
    v10 = v18;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    ;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_45();
      sub_25BAAE04C(v23, v24, v25, v14);
      v14 = v26;
    }

    v20 = *(v14 + 16);
    v22 = *(v14 + 24);
    v21 = v20 + 1;
    if (v20 >= v22 >> 1)
    {
      v27 = OUTLINED_FUNCTION_4_74(v22);
      sub_25BAAE04C(v27, v28, v29, v14);
      v14 = v30;
    }

    goto LABEL_32;
  }

  v39 = *(v14 + 16);
  if (v39)
  {
    v40 = sub_25BABD89C(*(v14 + 16), 0);
    swift_bridgeObjectRetain_n();
    v41 = sub_25BABD918(v51, v40 + 4, v39);

    if (v41 == v39)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_39;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v52 = 0;
    v51[0] = v8;
LABEL_46:
    v51[1] = 0;
    v53 = -1;
    v55 = 0;
    v56 = 0;
    v54 = v12;
    v57 = -1;
    v58 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v42, v43, v44, v45, v46, v47, v48);
  }

  v40 = MEMORY[0x277D84F90];
LABEL_39:
  *v49 = v40;
LABEL_40:
  OUTLINED_FUNCTION_27_34();
}

uint64_t OUTLINED_FUNCTION_129()
{
  *(v1 - 160) = v0;

  return sub_25BAFC990();
}

void OUTLINED_FUNCTION_129_1()
{

  static ShapeInference.broadcasting(_:_:)((v0 + 48), (v1 - 208), (v1 - 152));
}

void *sub_25BABD89C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_25BABD918(void *result, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (!a2)
  {
    a3 = 0;
LABEL_10:
    v7 = *(*v3 + 16);
LABEL_11:
    *result = v4;
    result[1] = v7;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      if (!(v5 + v6))
      {
        v7 = 0;
        a3 = v5;
        goto LABEL_11;
      }

      if (v5 + v6 > *(v4 + 16))
      {
        break;
      }

      *a2++ = *(v4 + 8 * v5 + 24 + 8 * v6--);
      if (!(a3 + v6))
      {
        v7 = v5 + v6;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_207()
{

  return sub_25BCB614C();
}

ValueMetadata *OUTLINED_FUNCTION_207_1(uint64_t a1)
{
  *(v1 + 48) = v2;

  return Tensor.scalarType.getter(a1);
}

ValueMetadata *OUTLINED_FUNCTION_151_1(uint64_t a1)
{
  *(v2 - 152) = v1;

  return Tensor.scalarType.getter(a1);
}

uint64_t sub_25BABDA0C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_42_13(a1);
  if (sub_25BAB5C48(v5, v6))
  {
    *v1 = v3;
  }

  else
  {
    v8 = *(v4 + 16);
    v9 = *(v2 + 152);
    if (*(v9 + 16) == v8)
    {
      OUTLINED_FUNCTION_22();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;

      sub_25BCB617C();
      sub_25BAAF074(sub_25BAC7AE0, v10);

      OUTLINED_FUNCTION_46_12("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryArithmeticOps.swift");
      v82 = xmmword_25BCC6DB0;
      v83 = "init(id:operator:operand:creationSite:backward:)";
      v84 = 48;
      v85 = v11;
      type metadata accessor for UnaryArithmeticOperation();
      swift_allocObject();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_79_4();
      sub_25BABE090(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = OUTLINED_FUNCTION_25();
      sub_25BAA51C8(v20, v78);
      sub_25BAA51C8(v78, v77);
      type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v21);

      v22 = v75;

      sub_25BAA4AF4(&v65);
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v23);

      OUTLINED_FUNCTION_21_18(v24, v25, v26, v27, v28, v29, v30, v31, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      sub_25BAA4AF4(&v65);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      swift_allocObject();
      OUTLINED_FUNCTION_7_36();
      v32 = OUTLINED_FUNCTION_6_42();
      sub_25BABE62C(v32, v33, v34, v35, v36, v37, v38);
    }

    else
    {
      v65 = *(v2 + 152);
      sub_25BCB617C();
      static ShapeInference.broadcasting(_:toRank:)(&v65, v8, &v79);

      if (!v79)
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_25BCB70FC();

        OUTLINED_FUNCTION_86();
        v80 = 0xD00000000000001BLL;
        v81 = v55;
        v56 = sub_25BCB617C();
        v57 = MEMORY[0x25F876F80](v56, MEMORY[0x277D83B88]);
        MEMORY[0x25F876C90](v57);

        MEMORY[0x25F876C90](0x6E6172206F742060, 0xEB0000000060206BLL);
        v65 = v8;
        v58 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v58);

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        v65 = v80;
        v66 = v81;
        v76 = 17;
        sub_25BCB617C();
        OUTLINED_FUNCTION_3_40();
        sub_25BADDD28(v59, v60, v61, v62, v63, v64, 223);
      }

      v39 = *(v3 + 16);
      v65 = v79;
      v40 = *(v39 + 152);
      OUTLINED_FUNCTION_22();
      *(swift_allocObject() + 16) = v40;

      sub_25BCB617C();
      OUTLINED_FUNCTION_62_5();

      v78[55] = 0;
      OUTLINED_FUNCTION_46_12("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
      v82 = xmmword_25BCCB420;
      OUTLINED_FUNCTION_81_5(v41);
      type metadata accessor for ReshapeOperation();
      swift_allocObject();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_79_4();
      sub_25BAAFF64();
      v42 = OUTLINED_FUNCTION_25();
      sub_25BAA51C8(v42, v78);
      sub_25BAA51C8(v78, v77);
      type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v43);

      v22 = v75;

      sub_25BAA4AF4(&v65);
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v44);

      OUTLINED_FUNCTION_21_18(v45, v46, v47, v48, v49, v50, v51, v52, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      sub_25BAA4AF4(&v65);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      swift_allocObject();
      OUTLINED_FUNCTION_7_36();
      v53 = OUTLINED_FUNCTION_6_42();
      sub_25BAAFFBC(v53);
    }

    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v54 = swift_allocObject();
    OUTLINED_FUNCTION_21_25(v54);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_15_8();

    result = sub_25BA9C2C8(v78);
    *v1 = v22;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_195()
{
  result = *(v0 + 176);
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  *(v1 + 144) = 7;
  return result;
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return sub_25BCB6FAC();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_86_0(uint64_t a1)
{
  *v1 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(a1);
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_57_6()
{
  v4 = v0[5];
  v0[3] = v0[6];
  v0[6] = v4;
  *(v2 - 152) = v1;

  return sub_25BABDA0C(v2 - 152);
}

void OUTLINED_FUNCTION_57_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v13 - 216) = v12;

  Tensor.reshaped(to:)((v13 - 216), a12);
}

void OUTLINED_FUNCTION_57_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t sub_25BABE090(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a4;
  if (!a3)
  {
    a1 = sub_25BABE114(a4);
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  *v16 = a6[2];
  *&v16[9] = *(a6 + 41);
  v17 = 0;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  return sub_25BAB9A8C(a1, a2, a3, a5, v15);
}

unint64_t sub_25BABE12C(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      return 1936679777;
    case 2:
      v3 = 1936679777;
      goto LABEL_20;
    case 3:
      return 1852404577;
    case 4:
      v3 = 1852404577;
      goto LABEL_20;
    case 5:
      return 1851880545;
    case 6:
      v3 = 1851880545;
LABEL_20:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 7:
      result = 1818846563;
      break;
    case 8:
      result = 7565155;
      break;
    case 9:
      result = 1752395619;
      break;
    case 10:
      result = 7370853;
      break;
    case 11:
      result = 846231653;
      break;
    case 12:
      result = 0x726F6F6C66;
      break;
    case 13:
      result = 0x797469746E656469;
      break;
    case 14:
      result = 6778732;
      break;
    case 15:
      result = 0x636F727069636572;
      break;
    case 16:
      result = 0x646E756F72;
      break;
    case 17:
      result = 0x7472717372;
      break;
    case 18:
      result = 1852270963;
      break;
    case 19:
      result = 7235955;
      break;
    case 20:
      result = 1752066419;
      break;
    case 21:
      result = 1953657203;
      break;
    case 22:
      result = 0x657261757173;
      break;
    case 23:
      result = 7233908;
      break;
    case 24:
      result = 1752064372;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BCB74CC(a1, a2, a3, a4, a5, a6, 105, 2, a9);
}

uint64_t OUTLINED_FUNCTION_29_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_25BCB74CC(a1, a2, a3, v10, a5, a6, 103, 2, a9);
}

uint64_t OUTLINED_FUNCTION_29_16(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_25BAC8690(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_29_21@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(*(a1 + 16) + 152) + 16);

  return sub_25BC54B00(0, v2);
}

uint64_t OUTLINED_FUNCTION_29_24(uint64_t a1)
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_29_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_25BAA51C8(va, &a20);
}

void *OUTLINED_FUNCTION_29_26(uint64_t a1, ...)
{

  return sub_25BCB79CC();
}

void OUTLINED_FUNCTION_29_28()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_29_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  return _s9IOMappingVMa(255, v5, v6, a4);
}

uint64_t OUTLINED_FUNCTION_66_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BC675C0(a2, a3, a5, v5 - 104);
}

void OUTLINED_FUNCTION_66_3(char a1@<W8>)
{
  *(v1 + 72) = 6581861;
  *(v1 + 80) = 0xE300000000000000;
  *(v1 + 88) = *(v2 + 56);
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
  *(v1 + 112) = 0x656469727473;
  *(v1 + 120) = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_66_9()
{
}

uint64_t OUTLINED_FUNCTION_91_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for OptimizerStateDictionary(0, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_91_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return sub_25BCB768C();
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return swift_weakAssign();
}

uint64_t OUTLINED_FUNCTION_65_0()
{
  result = v0;
  *(v2 - 320) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  return result;
}

__n128 OUTLINED_FUNCTION_65_2()
{
  v2 = *(v0 + 128);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 64) = v2;
  result = *(v0 + 144);
  *(v1 + 80) = result;
  *(v0 + 288) = *(v0 + 160);
  return result;
}

void OUTLINED_FUNCTION_65_6()
{

  JUMPOUT(0x25F876DC0);
}

ValueMetadata *OUTLINED_FUNCTION_65_7(uint64_t a1)
{

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_5@<X0>(__int16 a1@<W8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 82;
  *(v2 - 96) = a1;

  return type metadata accessor for BinaryArithmeticOperation();
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return sub_25BAAF074(v0, v1);
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return sub_25BCB777C();
}

uint64_t sub_25BABED3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 *a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 152) = a4;
  if (!a3)
  {
    a1 = sub_25BABCB24(a4, sub_25BABEE4C);
  }

  v12 = *a8;
  v13 = a8[1];
  *(v10 + 72) = *a8;
  *(v10 + 136) = a9;
  *(v10 + 144) = a10;
  return OUTLINED_FUNCTION_0_90(a1, a2, a3, v12.n128_f64[0], v13);
}

uint64_t OUTLINED_FUNCTION_107_3()
{

  return sub_25BCB54FC();
}

uint64_t OUTLINED_FUNCTION_107_5()
{

  return sub_25BCB77FC();
}

uint64_t OUTLINED_FUNCTION_107_6()
{

  return type metadata accessor for TensorHandle();
}

uint64_t sub_25BABEE4C(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_61();
      break;
    case 2:
      result = OUTLINED_FUNCTION_7_60();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_61();
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_57();
      break;
    case 5:
      result = OUTLINED_FUNCTION_13_48(0x6978616Du);
      break;
    case 6:
      result = OUTLINED_FUNCTION_13_48(0x696E696Du);
      break;
    case 7:
      result = 0x6F6C75646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

double OUTLINED_FUNCTION_178_1@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  return sub_25BAB524C(a1, a2, a3, a4, a5, a6, 7, 2u, a7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25BABEFE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 16))(v1, v2) == 0x6F73736572707345 && v3 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_25BCB789C();

    return v5 & 1;
  }
}

uint64_t OUTLINED_FUNCTION_175_0()
{

  return sub_25BAA4A5C(v0 + 240);
}

uint64_t OUTLINED_FUNCTION_175_1()
{

  return sub_25BAA51C8(v1 - 208, v0 + 184);
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return sub_25BAA4A5C(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_176_1()
{
}

uint64_t OUTLINED_FUNCTION_174_1()
{
}

uint64_t OUTLINED_FUNCTION_173_1()
{
}

uint64_t sub_25BABF4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

__n128 OUTLINED_FUNCTION_106_3()
{
  v2 = *(v0 + 88);
  *(v1 - 160) = *(v0 + 72);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 104);
  result = *(v0 + 114);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_201(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_162_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_162_1()
{
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = v13;

  return OptionalParameter.init(wrappedValue:)(&a13);
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  sub_25BC170C8(v2, va, va1);
}

void OUTLINED_FUNCTION_30_5()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_30_9()
{

  return sub_25BB00C00(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_30_10()
{

  return sub_25BCB672C();
}

void OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{

  static ShapeInference.broadcasting(_:_:)(&a9, &a34, (v34 - 144));
}

__n128 OUTLINED_FUNCTION_30_14(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_17()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_30_20()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_30_21(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_30_23()
{
}

uint64_t OUTLINED_FUNCTION_30_24()
{

  return sub_25BCB681C();
}

uint64_t OUTLINED_FUNCTION_30_27()
{

  return sub_25BC60CE8();
}

uint64_t OUTLINED_FUNCTION_30_30()
{

  return sub_25BAC783C(0, 0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_30_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_25BB0EE34(v14, v12, v13, a4, a5, a6, a7, va, a9, a10, a11, a12);
}

uint64_t sub_25BABFD18()
{

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BCB74CC(a1, a2, a3, 0xD000000000000037, a5, a6, 108, 2, a9);
}

__n128 OUTLINED_FUNCTION_49_13()
{
  v2 = *(v0 + 272);
  *(v0 + 192) = *(v0 + 256);
  *(v0 + 208) = v2;
  result = *(v0 + 288);
  *(v0 + 224) = result;
  *(v1 - 176) = *(v1 - 112);
  return result;
}

void OUTLINED_FUNCTION_49_14(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 104) = a2;
  *(v2 + 120) = a1;
  *(v2 + 156) = 1;
}

uint64_t OUTLINED_FUNCTION_49_18()
{

  return swift_bridgeObjectRelease_n();
}

void *OUTLINED_FUNCTION_49_19()
{

  return memcpy((v1 - 248), v0, 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_49_20()
{

  return type metadata accessor for MPSGraphTensorStorage();
}

uint64_t static Tensor.- prefix(_:)(uint64_t *a1)
{
  v1 = *a1;
  *&v16[0] = *a1;
  v2 = Tensor.scalarType.getter(a1);
  if (dynamic_cast_existential_1_conditional(v2, v2, &protocol descriptor for TensorIntegerScalar) || (*&v16[0] = v1, v3 = Tensor.scalarType.getter(0), dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for TensorFloatingPointScalar)))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = *(*(v1 + 16) + 160);
    sub_25BAA51C8(v16, v15);
    v13 = MEMORY[0x277D84F90];
    v12 = v4;
    sub_25BAA51C8(v15, v11);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v13, &unk_286D42338, &v12, v11, &v14);
    sub_25BA9C2C8(v15);
    sub_25BA9C2C8(v16);
    *&v16[0] = v14;
    v15[0] = v1;
    static Tensor.* infix(_:_:)();
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC(v6, v7, v8, 0xD000000000000027, v9, v10, 109, 2, 216);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAC01BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t *, __int128 *, _OWORD *, uint64_t, uint64_t, void *)@<X5>, uint64_t *a7@<X8>)
{
  v11 = *a1;
  v12 = *a3;
  if (*(*a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v13)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_14:
    v16 = qword_281557400;
    v49 = v11;
    LOBYTE(v66) = v12;
    sub_25BCB617C();
    a6(&v49, &v66, v69, v16, a2, v12);
    v18 = v17;

    sub_25BAA48D4(v69, &v49, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v19 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_19_22();
    sub_25BAA5BB4(v21, v22, v23, v19, ObjectType, v18);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v24);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_78_6(a4);
    OUTLINED_FUNCTION_78_6(v69);
    OUTLINED_FUNCTION_78_6(v71);

    *a7 = v24;
    return result;
  }

  v14 = 1;
LABEL_8:
  if (v14 == *(a2 + 16))
  {
    OUTLINED_FUNCTION_102_4(a4, v71);
    OUTLINED_FUNCTION_102_4(v71, &v66);
    if (*(&v67 + 1))
    {
      OUTLINED_FUNCTION_12_31(v69, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v70 = v15;
      sub_25BCB617C();
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BCB617C();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v49);

      sub_25BAA48D4(&v49, v69, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(&v49);
      if (*(&v67 + 1))
      {
        sub_25BAA6FBC(&v66, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v26 = a5;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v11 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v13)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v13)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v27, v28, v29);
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v30, v31, v32);

    __break(1u);
  }

LABEL_21:
  v33 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v33);

  v34 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v34);
  v35 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v35);

  v36 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v36);
  OUTLINED_FUNCTION_10_5();
  result = OUTLINED_FUNCTION_25_0(v37, v38, v39, v40, v41, v42, v43, v44, v26, 0);
  __break(1u);
  return result;
}

uint64_t Tensor.init(shape:coercingScalars:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_25BAC01BC(a1, a2, a3, a4, 298, sub_25BAC05A0, a5);
}

{
  return sub_25BAC01BC(a1, a2, a3, a4, 324, sub_25BAC5C60, a5);
}

{
  return sub_25BAC01BC(a1, a2, a3, a4, 350, sub_25BC738DC, a5);
}

void sub_25BAC05A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_16_48(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_60();
  if (v27)
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_53_13(v10, v11, v12, &unk_286D4F738) & 1) != 0 && v29 >= 3)
    {
      type metadata accessor for SharedMetalDevice();
      v13 = swift_unknownObjectRetain();
      sub_25BBC97E0(v13);
      if (!v8)
      {
        OUTLINED_FUNCTION_32_26();
        if (v19)
        {
          OUTLINED_FUNCTION_22_34();
          while (1)
          {
            OUTLINED_FUNCTION_3_59();
            if (!v14)
            {
              goto LABEL_28;
            }

            OUTLINED_FUNCTION_44_18();
            if (v14)
            {
              OUTLINED_FUNCTION_33_27();
              if (v6 > 0)
              {
                goto LABEL_27;
              }

              goto LABEL_8;
            }
          }
        }

        OUTLINED_FUNCTION_33_27();
LABEL_27:
        v20 = OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_39_24(v20);
        OUTLINED_FUNCTION_34_21();
        sub_25BCB617C();
        sub_25BCB617C();
        OUTLINED_FUNCTION_6_58();
        sub_25BC299C8(v21, v22, v23, v24, v25, v30);
LABEL_17:
        OUTLINED_FUNCTION_30_28();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_27_31();
        return;
      }

      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      sub_25BABF0A8(v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    sub_25BA9C2C8(v26);
  }

LABEL_8:
  if (!*(v7 + 16))
  {
LABEL_14:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_47_19();
    if (!v14)
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_15_29();
    sub_25BCB6F1C();
    OUTLINED_FUNCTION_21_35();
    v15 = OUTLINED_FUNCTION_7_58();
    v16(v15);
    OUTLINED_FUNCTION_20_35();
    sub_25BAC0838();
    v17 = OUTLINED_FUNCTION_46_22();
    v18(v17);
    OUTLINED_FUNCTION_10_48();
    OUTLINED_FUNCTION_17_26();

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_22_34();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (!v14)
    {
      break;
    }

    OUTLINED_FUNCTION_44_18();
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_25BAC0838()
{
  OUTLINED_FUNCTION_31_7();
  if (v4 == 10)
  {
    if (v3)
    {
      v5 = (v2 - v3) / 4;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v1 + 16) >> 61)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_5();
    sub_25BAC5FB4(v6, v7, v8, v9, v10, v11, 10);
    if (!v0)
    {
      return;
    }

    __break(1u);
  }

  v5 = 0;
LABEL_8:
  v12 = *(v1 + 16);
  if (!v12)
  {
    return;
  }

  if (v5 < v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  memcpy(v3, (v1 + 32), 4 * v12);
}

void static Tensor.* infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v6 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v7);
  v8 = 0;
  do
  {
    if (v8 == 4)
    {
      v67 = OUTLINED_FUNCTION_171_0(v5);
      v68 = v52;
      v51 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v7);
  OUTLINED_FUNCTION_98_6(v9);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v70)
  {
    OUTLINED_FUNCTION_54_10(v2[1].Kind);
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v60, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    v59 = 260;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_207_1(v10);
  OUTLINED_FUNCTION_35_16();
  v12 = v11();
  OUTLINED_FUNCTION_151_1(v12);
  OUTLINED_FUNCTION_53_11();
  v13();
  OUTLINED_FUNCTION_195_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v7 & v14))
    {
      OUTLINED_FUNCTION_127_0();
      if (!v7)
      {
        goto LABEL_13;
      }

      v61 = OUTLINED_FUNCTION_203_0(v15);
      v62 = OUTLINED_FUNCTION_101_5(v61);
      v67 = v70;
      v68 = v0;
      OUTLINED_FUNCTION_52_10(v62, v63, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v64, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
      v59 = 263;
LABEL_18:
      sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
    }

    __break(1u);
LABEL_15:
    v67 = OUTLINED_FUNCTION_172_1(v5);
    v68 = v50;
    v51 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v51);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v67 = v2;
  v16 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v70) = v3;
  v17 = OUTLINED_FUNCTION_46_14(v16, *MEMORY[0x277D84660]);
  v18(v17);
  OUTLINED_FUNCTION_62_6();
  v19 = OUTLINED_FUNCTION_126_1();
  v1(v19);

  OUTLINED_FUNCTION_57_6();
  v20 = OUTLINED_FUNCTION_66_7();
  v21(v20);
  OUTLINED_FUNCTION_62_6();
  v22 = OUTLINED_FUNCTION_25_12();
  v1(v22);

  OUTLINED_FUNCTION_90_4();

  v23 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v23, v24);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v71 = xmmword_25BCCB470;
  v26 = OUTLINED_FUNCTION_77_5(v25);
  OUTLINED_FUNCTION_161_1(v26);
  v27 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_108_5(v27, v28, v29, 2, v30, v31, v32, v33, v65, v66);
  OUTLINED_FUNCTION_137_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v35 = OUTLINED_FUNCTION_31(v34);
  OUTLINED_FUNCTION_102_5(v35, xmmword_25BCBAE70);

  v36 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v36, v37, v38, v39, 281, v40, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v67);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v67);
  v42 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v42);
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v67) = v43;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_107_6();
  v49 = OUTLINED_FUNCTION_15_7(v48);
  OUTLINED_FUNCTION_13_22(v49);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v69);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t *static ShapeInference.broadcasting(_:toRank:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (a2 != v5)
  {
    if (a2 > v5)
    {
      sub_25BAC0E14(1, a2 - v5);
      v13 = MEMORY[0x277D84F90];
      v6 = sub_25BCB617C();
      sub_25BAC0EB8(v6);
      v7 = sub_25BCB617C();
      sub_25BAC0F84(v7);
LABEL_13:

      *a3 = v13;
      return result;
    }

    v8 = __OFSUB__(v5, a2);
    v9 = v5 - a2;
    if (v8)
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      result = sub_25BBFD334(0, v9, v5);
      v10 = *(v4 + 16);
      v11 = v10;
      if (v12)
      {
LABEL_12:
        sub_25BCB617C();
        TensorShape.subscript.getter(v11, v10, &v13);
        goto LABEL_13;
      }

      if (v10 >= result)
      {
        v11 = result;
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  *a3 = v4;

  return sub_25BCB617C();
}

uint64_t sub_25BAC0E14(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_25BCB67DC();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_25BCCB570)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_25BAC0ED0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v5 + v4, 1);
  v6 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_80_6();
  if (v8 != v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v4);

  if (!v4)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v9 = __OFADD__(v10, v4);
  v11 = v10 + v4;
  if (!v9)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25BAC0F84(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  v1 = v2;
  sub_25BA979FC(v6 + v5, 1);
  v3 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_25BAC111C(&v20, v3 + 8 * v7 + 32, v8, v4);
  if (v9 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v10 = *(v3 + 16);
    v11 = __OFADD__(v10, v9);
    v12 = v10 + v9;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v12;
  }

  if (v9 != v8)
  {
LABEL_7:

LABEL_8:
    *v1 = v3;
    return result;
  }

LABEL_11:
  v4 = v20;
  v5 = v21;
  if (v21 == *(v20 + 16))
  {
    goto LABEL_7;
  }

LABEL_14:
  v14 = *(v3 + 16);
  result = TensorShape.subscript.getter(v5);
  v11 = __OFADD__(v5, 1);
  v15 = v5 + 1;
  if (!v11)
  {
LABEL_15:
    v16 = *(v3 + 24);
    v17 = v16 >> 1;
    if ((v16 >> 1) < v14 + 1)
    {
      v18 = result;
      sub_25BA96630(v16 > 1, v14 + 1, 1, v3);
      v3 = v19;
      result = v18;
      v17 = *(v3 + 24) >> 1;
    }

    while (1)
    {
      if (v14 >= v17)
      {
        *(v3 + 16) = v14;
        goto LABEL_15;
      }

      *(v3 + 8 * v14 + 32) = result;
      if (v15 == *(v4 + 16))
      {
        break;
      }

      result = TensorShape.subscript.getter(v15);
      ++v14;
      v11 = __OFADD__(v15++, 1);
      if (v11)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    *(v3 + 16) = v14 + 1;
    goto LABEL_8;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BAC111C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
LABEL_13:
        OUTLINED_FUNCTION_9_60();
        OUTLINED_FUNCTION_8_62();
        OUTLINED_FUNCTION_17_4();
        sub_25BADDD28(v7, v8, v9, v10, v11, v12, v13);
      }

      v4 = 0;
      v5 = *(a4 + 16);
      while (v5 != v4)
      {
        if (v4 >= *(a4 + 16))
        {
          goto LABEL_13;
        }

        *(a2 + 8 * v4) = *(a4 + 32 + 8 * v4);
        if (a3 == ++v4)
        {
          goto LABEL_11;
        }
      }

      a3 = v5;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = a4;
  a1[1] = a3;
  return a3;
}

uint64_t OUTLINED_FUNCTION_125()
{

  return type metadata accessor for LayerVariableReference();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{

  return sub_25BBA18D8(a1, a2, a3, a4, a5, a6, v9, v10, a9);
}

uint64_t sub_25BAC1714()
{

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_25BAC174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25BAC1900(a1, a3))
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_25BAC1784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_25BAC174C(*a1, a1[1], *a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_25BAC17E4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x277D84F90];
  v22 = a1;
  while (v6 != v5)
  {
    v9 = *(v7 + 8 * v5);
    v21[0] = v5;
    v21[1] = v9;
    (v4)(&v19, v21, a2);
    if (v3)
    {

      return v8;
    }

    if ((v20 & 1) == 0)
    {
      v10 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_45();
        sub_25BA96630(v13, v14, v15, v8);
        v8 = v16;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25BA96630(v11 > 1, v12 + 1, 1, v8);
        v8 = v17;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      v4 = v22;
    }

    ++v5;
  }

  return v8;
}

BOOL sub_25BAC1900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_25BAC192C()
{
  OUTLINED_FUNCTION_31_28();
  v2 = *(v1 + 112);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    sub_25BAB62B8(1);
    v3 = *(v0 + v2);
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v3;
}

uint64_t (*sub_25BAC1988(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x277D84900];
  v7 = *(a1 + 16);
  v8 = 32;
  v9 = MEMORY[0x277D839B0];
  while (v7)
  {
    v10 = &protocol witness table for Int8;
    v11 = v6;
    switch(*(*(*(a1 + v8) + 16) + 160))
    {
      case 1:
        v11 = MEMORY[0x277D84958];
        v10 = &protocol witness table for Int16;
        break;
      case 2:
        v11 = MEMORY[0x277D849A8];
        v10 = &protocol witness table for Int32;
        break;
      case 3:
        v11 = MEMORY[0x277D83B88];
        v10 = &protocol witness table for Int;
        break;
      case 4:
        v11 = MEMORY[0x277D84B78];
        v10 = &protocol witness table for UInt8;
        break;
      case 5:
        v11 = MEMORY[0x277D84C58];
        v10 = &protocol witness table for UInt16;
        break;
      case 6:
        v11 = MEMORY[0x277D84CC0];
        v10 = &protocol witness table for UInt32;
        break;
      case 7:
        v11 = MEMORY[0x277D84D38];
        v10 = &protocol witness table for UInt64;
        break;
      case 8:
        v11 = MEMORY[0x277D84DC8];
        v10 = &protocol witness table for Float16;
        break;
      case 9:
        v10 = sub_25BB18AFC();
        v11 = &type metadata for BFloat16;
        break;
      case 0xA:
        v11 = MEMORY[0x277D83A90];
        v10 = &protocol witness table for Float;
        break;
      case 0xB:
        v11 = MEMORY[0x277D839F8];
        v10 = &protocol witness table for Double;
        break;
      case 0xC:
        v11 = v9;
        v10 = &protocol witness table for Bool;
        break;
      default:
        break;
    }

    v8 += 8;
    --v7;
    if (!sub_25BAC1C50(v11, v10))
    {
      sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000036, 0x800000025BCE58D0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift", 105, 2, 1139);
      __break(1u);
      break;
    }
  }

  sub_25BAC1CA0(a1);
  OUTLINED_FUNCTION_1_2();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_25BCB617C();
  sub_25BCB617C();

  return sub_25BAC2A98;
}

uint64_t sub_25BAC1C0C()
{

  OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

BOOL sub_25BAC1C50(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&var1, a1);
  v2 = var1;

  return sub_25BAA80BC(v2, &unk_286D42270);
}

uint64_t sub_25BAC1CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v6 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = a1 + 32;
    do
    {
      v4 += 8;

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v1;
    }

    while (v1);
    v2 = v6;
  }

  swift_beginAccess();
  sub_25BAC1D78(v2);
  return swift_endAccess();
}

uint64_t sub_25BAC1D78(unint64_t a1)
{
  v3 = sub_25BAAF54C(a1);
  v4 = sub_25BAAF54C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_25BAC1E24(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25BAC1ED4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25BAC1E34(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25BCB749C();
LABEL_9:
  result = sub_25BCB719C();
  *v2 = result;
  return result;
}

uint64_t sub_25BAC1ED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_25BCB749C();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_24_1();
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return OUTLINED_FUNCTION_24_1();
    }
  }

  if (v5)
  {
    result = sub_25BAAF54C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TensorRepresentation();
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_24_1();
      }

      if (v7 >= 1)
      {
        sub_25BC0908C();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6608, &qword_25BCCB660);
          v9 = sub_25BC547F8(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return OUTLINED_FUNCTION_24_1();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_180()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_180_0(unint64_t result, unint64_t a2, __n128 a3)
{
  v3[5] = a3;
  v3[6].n128_u8[0] = 6;
  v3[6].n128_u64[1] = result;
  v3[7].n128_u64[0] = a2;
  return result;
}

uint64_t (*sub_25BAC2070())(uint64_t a1)
{
  v1 = *v0;
  v2 = sub_25BAC2130();
  OUTLINED_FUNCTION_1_2();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;
  return sub_25BACBC58;
}

uint64_t sub_25BAC20F8()
{

  OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_25BAC2130()
{
  OUTLINED_FUNCTION_31_28();
  v2 = *(v1 + 104);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    sub_25BAB62B8(1);
    v3 = *(v0 + v2);
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v3;
}

uint64_t sub_25BAC218C()
{
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_31_28();

  OUTLINED_FUNCTION_31_28();

  OUTLINED_FUNCTION_31_28();

  return v0;
}

uint64_t sub_25BAC2240()
{
  sub_25BAC218C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAC2298()
{
  sub_25BAC22CC();

  return swift_deallocClassInstance();
}

void *sub_25BAC22CC()
{

  return v0;
}

uint64_t sub_25BAC231C()
{
  sub_25BAB310C(*(v0 + 32));
  OUTLINED_FUNCTION_1_2();

  return swift_deallocClassInstance();
}

uint64_t Tensor.init(onesLike:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_93_5(a1);
  if (!sub_25BAA80BC(v4, &unk_286D427E8))
  {
    v5 = sub_25BAA80BC(*(v2 + 160), &unk_286D42270);
    if (!v5)
    {
      v18 = v3;
      v7 = Tensor.scalarType.getter(v5);
      v9 = v8;
      sub_25BC03500(&unk_286D42270);
      v19[0] = v7;
      v19[1] = v9;
      v19[2] = 0;
      v19[3] = 0;
      v20 = -1;
      v21 = &unk_286D427E8;
      v22 = 1;
      v23 = 3;
      OUTLINED_FUNCTION_60_6();
      sub_25BADDD28(v10, v11, v12, v13, v14, v15, 729);
    }
  }

  v17 = *(v2 + 152);
  v16 = *(v2 + 160);
  sub_25BCB617C();

  sub_25BAA48D4(v2 + 168, v19, &qword_27FBB6730, &qword_25BCBC4B0);

  result = Tensor.init(ones:scalarType:on:)(&v17, &v16, v19, &v18);
  *v1 = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_25BA95FB0(v0);
}

uint64_t OUTLINED_FUNCTION_84_1()
{
  v2 = *(v0 - 200);

  return sub_25BB556A0(v2);
}

__n128 OUTLINED_FUNCTION_84_2()
{
  v2 = *(v0 + 88);
  *(v1 - 160) = *(v0 + 72);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 104);
  result = *(v0 + 114);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = 73;
  *(v2 - 96) = v1;

  return type metadata accessor for GatherOperation();
}

uint64_t OUTLINED_FUNCTION_84_6(_WORD *a1)
{
  *a1 = 0;

  return sub_25BCB5EDC();
}

uint64_t Tensor.init(ones:scalarType:on:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v22 = *a1;
  v7 = *(v22 + 16);
  if (v7)
  {
    v8 = (v22 + 32);
    v9 = 1;
    while (1)
    {
      v10 = *v8++;
      result = v9 * v10;
      if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
      {
        break;
      }

      v9 = result;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    sub_25BAC26E8(result, 1.0);
    v13 = v12;
    v21 = v6;
    sub_25BAA48D4(a3, &v15, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v16 + 1))
    {
      v19[0] = v15;
      v19[1] = v16;
      v19[2] = v17;
      v20 = v18;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v14);

      sub_25BAA48D4(v14, v19, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v14);
      if (*(&v16 + 1))
      {
        sub_25BAA6FBC(&v15, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    Tensor.init(shape:coercingScalars:scalarType:on:)(&v22, v13, &v21, v19, v14);
    result = sub_25BAA6FBC(a3, &qword_27FBB6730, &qword_25BCBC4B0);
    *a4 = v14[0];
  }

  return result;
}

void sub_25BAC26E8(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(sub_25BCB67DC() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_11_44();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_14_37();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_25BAC27B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_52_0(unint64_t a1, char a2)
{
  v3 = a2 & 1;

  return sub_25BB17760(a1, v3);
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t result)
{
  *(v2 - 96) = result;
  *(v2 - 88) = v1;
  *(v2 - 65) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t result)
{
  *(v3 - 264) = result;
  *(v3 - 360) = v1;
  *(v3 - 368) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_25BCB73CC();
}

__n128 OUTLINED_FUNCTION_52_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_25BCB74CC(a1, a2, a3, v10, a5, a6, 107, 2, a9);
}

unint64_t OUTLINED_FUNCTION_52_10(unint64_t result, unint64_t a2, __n128 a3)
{
  v3[4] = a3;
  v3[5].n128_u8[0] = 6;
  v3[5].n128_u64[1] = result;
  v3[6].n128_u64[0] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_12@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v3;
  *(v4 - 128) = a1;
  *(v4 - 120) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_52_16()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_25BAC29A4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v6;

  v8 = a2(v7);

  v9 = a4(v8);

  return v9;
}

uint64_t sub_25BAC2AA8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    MEMORY[0x28223BE20](a1);
    return sub_25BAC2C4C(sub_25BAC2E18);
  }

  else
  {
    sub_25BCB70FC();

    v3 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v3);

    MEMORY[0x25F876C90](0xD00000000000001ALL, 0x800000025BCE5910);
    v4 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v4);

    MEMORY[0x25F876C90](96, 0xE100000000000000);
    result = sub_25BCB74CC("Fatal error", 11, 2, 0x6E69746365707845, 0xEB00000000602067, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift", 105, 2, 1148);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAC2C4C(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v6);

  type metadata accessor for ResolutionDependencies();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = 0;
  *(v3 + 24) = v4;

  v6[9] = v3;
  sub_25BAA49B8();
  sub_25BAB7060(v6);

  a1(&v7, v3);

  sub_25BAA49B8();
  sub_25BAB814C();

  if (v1)
  {
    return sub_25BAA4AF4(v6);
  }

  sub_25BAA4AF4(v6);
  return v7;
}

uint64_t sub_25BAC2DE4@<X0>(_UNKNOWN **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25BAC2DA4(a1, *a2, *a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_25BAC2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _UNKNOWN **a5)
{
  v105 = sub_25BCB5EBC();
  v9 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  if (qword_28154BE88 != -1)
  {
LABEL_80:
    swift_once();
  }

  v15 = sub_25BCB5EEC();
  __swift_project_value_buffer(v15, qword_28154BE90);
  sub_25BCB5EAC();
  v16 = sub_25BCB5EDC();
  v17 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v18 = swift_slowAlloc();
    v104 = a2;
    v19 = v18;
    *v18 = 0;
    v20 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v16, v17, v20, "Backpropagation (Gradient Pass)", "", v19, 2u);
    v21 = v19;
    a2 = v104;
    MEMORY[0x25F8797F0](v21, -1, -1);
  }

  v22 = v105;
  (*&v9->NumRequirements)(v11, v14, v105);
  sub_25BCB5F2C();
  swift_allocObject();
  v92 = sub_25BCB5F1C();
  v23 = *&v9->Name;
  v9 = (v9 + 8);
  v23(v14, v22);
  type metadata accessor for GradientAccumulator();
  swift_allocObject();

  v24 = sub_25BCB617C();
  v98 = sub_25BAC3C14(v24, a5);
  type metadata accessor for BackpropQueue();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v104 = v25;
  v26 = *(a3 + 16);
  sub_25BCB617C();
  sub_25BCB617C();
  v11 = -v26;
  for (i = 4; i - v26 != 4; ++i)
  {
    v28 = *(a1 + 16);
    if (i - 4 == v28)
    {
      break;
    }

    if (i - 4 >= v28)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    a2 = *(a3 + 8 * i);
    v9 = *(a1 + 8 * i);
    v108 = a2;
    v29 = *&v9->NumRequirements;

    sub_25BAC43A4(&v108, v29);

    v14 = *&v9->NumRequirements;

    sub_25BAC46D8(v30);

    if (a5)
    {
      v108 = v9;
      sub_25BAC481C(&v108, v31, v32);
    }
  }

  v9 = &protocol descriptor for DifferentiableTensorOperation;
  v107 = MEMORY[0x277D84FA0];
  while (2)
  {
    a1 = -1;
    while (1)
    {
      while (1)
      {
        v33 = sub_25BAC4928();
        if (!v33)
        {
          goto LABEL_75;
        }

        v11 = v33;
        v34 = sub_25BAB3058();
        if (v34)
        {
          break;
        }
      }

      v14 = v34;
      ObjectType = swift_getObjectType();
      v36 = dynamic_cast_existential_1_conditional(v14, ObjectType, &protocol descriptor for DifferentiableTensorOperation);
      if (!v36)
      {
        goto LABEL_24;
      }

      a5 = v36;
      v105 = v37;
      v38 = v98[3];
      v39 = sub_25BAC4018();
      if (*(v38 + 16))
      {
        v40 = v39;
        v41 = sub_25BCB79BC();
        v42 = ~(-1 << *(v38 + 32));
        do
        {
          v43 = v41 & v42;
          if (((*(v38 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
          {
            goto LABEL_21;
          }

          v41 = v43 + 1;
        }

        while (*(*(v38 + 48) + 8 * v43) != v40);
        if (sub_25BAB6A04())
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v44 = swift_getObjectType();
      v45 = v105;
      v46 = *(v105 + 8);
      v47 = (*(v46 + 16))(v44, v46);
      sub_25BAC4A64(&v108, v47, v48, v49, v48, v49, v50, v51, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1));
      v53 = v52;

      if ((v53 & 1) == 0)
      {
        goto LABEL_24;
      }

      v54 = (*(v45 + 16))(v44, v45);
      v96 = v55;
      v97 = v54;
      if (v54)
      {
        break;
      }

      if (sub_25BACB000())
      {
        (*(v46 + 24))(v44, v46);
        (*(v46 + 48))(&v108, v44, v46);
        if (v115)
        {
          v83 = xmmword_25BCD2BC0;
          v84 = "computeGradients(targets:sources:outputGradients:persistentGraphScope:resolutionDependencies:)";
          v85 = 2;
          v86 = 94;
          v87 = 105;
          v88 = 2;
          v89 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift";
LABEL_93:
          v116 = v89;
          v117 = v87;
          v118 = v85;
          *v119 = v106;
          *&v119[3] = *(&v106 + 3);
          v120 = v83;
          v121 = v84;
          v122 = v86;
          v123 = v88;
          goto LABEL_94;
        }

LABEL_92:
        v85 = v110;
        v89 = v108;
        v87 = v109;
        v88 = v114;
        v84 = v112;
        v86 = v113;
        v83 = v111;
        LODWORD(v106) = *(&v110 + 1);
        *(&v106 + 3) = HIDWORD(v110);
        goto LABEL_93;
      }

LABEL_24:

      swift_unknownObjectRelease();
    }

    v95 = sub_25BAC4FEC(a5, v45);
    if (!v95)
    {
      (*(v46 + 24))(v44, v46);
      (*(v46 + 48))(&v108, v44, v46);
      if ((v115 & 1) == 0)
      {
        goto LABEL_92;
      }

      v83 = xmmword_25BCD2BB0;
      goto LABEL_91;
    }

    v56 = *(v46 + 32);
    v93 = v46;
    v57 = v56(v44, v46);
    a2 = v57;
    if (v57 >> 62)
    {
      a3 = sub_25BCB749C();
    }

    else
    {
      a3 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = a5;
    v94 = v14;
    v99 = v44;
    if (!a3)
    {

      a1 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v108 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    if (a3 < 0)
    {
      goto LABEL_79;
    }

    v58 = 0;
    a1 = v108;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x25F8779B0](v58, a2);
      }

      else
      {
        v59 = *(a2 + 8 * v58 + 32);
      }

      type metadata accessor for TensorHandle();
      v14 = swift_allocObject();
      *(v14 + 2) = v59;

      sub_25BAA6EB0();

      v108 = a1;
      v60 = *(a1 + 16);
      if (v60 >= *(a1 + 24) >> 1)
      {
        sub_25BAC5590();
        a1 = v108;
      }

      ++v58;
      *(a1 + 16) = v60 + 1;
      *(a1 + 8 * v60 + 32) = v14;
    }

    while (a3 != v58);

    a5 = v100;
    v44 = v99;
LABEL_40:
    v103 = v97(v95, a1);
    v61 = *(v103 + 16);
    v62 = *(v105 + 24);
    v102 = v105 + 24;
    v101 = v62;
    v63 = v62(v44);
    if (v63 >> 62)
    {
      v64 = sub_25BCB749C();
    }

    else
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v61 != v64)
    {
      v90 = v93;
      (*(v93 + 24))(v44, v93);
      (*(v90 + 48))(&v108, v44, v90);
      if ((v115 & 1) == 0)
      {
        goto LABEL_92;
      }

      v83 = xmmword_25BCD2B90;
LABEL_91:
      v84 = "computeGradients(targets:sources:outputGradients:persistentGraphScope:resolutionDependencies:)";
      v85 = 2;
      v86 = 94;
      v87 = 105;
      v88 = 2;
      v89 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift";
      goto LABEL_93;
    }

    v65 = v101(v44, v105);
    if (!(v65 >> 62))
    {
      a2 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_45:
      v66 = v105;
      if (!a2)
      {
LABEL_70:

        sub_25BA9D148(v97, v96);
        swift_unknownObjectRelease();
        v9 = &protocol descriptor for DifferentiableTensorOperation;
        continue;
      }

      v9 = 0;
      v67 = v103 + 48;
      while (1)
      {
        v68 = v101(v99, v66);
        a3 = v68;
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x25F8779B0](v9, v68);
        }

        else
        {
          if (v9 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v69 = *(v68 + 8 * v9 + 32);
        }

        if (v9 >= *(v103 + 16))
        {
          break;
        }

        v9 = (v9 + 1);
        v14 = *(v67 - 16);
        a5 = &protocol witness table for Int8;
        v70 = MEMORY[0x277D84900];
        switch(*(*(v14 + 2) + 160))
        {
          case 1:
            v70 = MEMORY[0x277D84958];
            a5 = &protocol witness table for Int16;
            break;
          case 2:
            v70 = MEMORY[0x277D849A8];
            a5 = &protocol witness table for Int32;
            break;
          case 3:
            v70 = MEMORY[0x277D83B88];
            a5 = &protocol witness table for Int;
            break;
          case 4:
            v70 = MEMORY[0x277D84B78];
            a5 = &protocol witness table for UInt8;
            break;
          case 5:
            v70 = MEMORY[0x277D84C58];
            a5 = &protocol witness table for UInt16;
            break;
          case 6:
            v70 = MEMORY[0x277D84CC0];
            a5 = &protocol witness table for UInt32;
            break;
          case 7:
            v70 = MEMORY[0x277D84D38];
            a5 = &protocol witness table for UInt64;
            break;
          case 8:
            v70 = MEMORY[0x277D84DC8];
            a5 = &protocol witness table for Float16;
            break;
          case 9:
            a5 = sub_25BB18AFC();
            v70 = &type metadata for BFloat16;
            break;
          case 0xA:
            v70 = MEMORY[0x277D83A90];
            a5 = &protocol witness table for Float;
            break;
          case 0xB:
            v70 = MEMORY[0x277D839F8];
            a5 = &protocol witness table for Double;
            break;
          case 0xC:
            v70 = MEMORY[0x277D839B0];
            a5 = &protocol witness table for Bool;
            break;
          default:
            break;
        }

        sub_25BCB617C();
        if (sub_25BAC1C50(v70, a5))
        {
          v108 = v14;

          sub_25BAC43A4(&v108, v69);

          sub_25BAC46D8(v69);
        }

        else if (sub_25BACB000())
        {
          v74 = v93;
          v75 = v99;
          (*(v93 + 24))(v99, v93);
          (*(v74 + 48))(&v108, v75, v74);
          if (v115)
          {
            v76 = xmmword_25BCD2BA0;
            v77 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift";
            v78 = 2;
            v79 = 105;
            v80 = 94;
            v81 = 2;
            v82 = "computeGradients(targets:sources:outputGradients:persistentGraphScope:resolutionDependencies:)";
          }

          else
          {
            v81 = v110;
            v77 = v108;
            v79 = v109;
            v78 = v114;
            v82 = v112;
            v80 = v113;
            v76 = v111;
            LODWORD(v106) = *(&v110 + 1);
            *(&v106 + 3) = HIDWORD(v110);
          }

          v116 = v77;
          v117 = v79;
          v118 = v81;
          *v119 = v106;
          *&v119[3] = *(&v106 + 3);
          v120 = v76;
          v121 = v82;
          v122 = v80;
          v123 = v78;
LABEL_94:
          sub_25BB28E60(&v116);
        }

        v67 += 24;
        v66 = v105;
        if (a2 == v9)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    break;
  }

  a2 = sub_25BCB749C();

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_45;
  }

  __break(1u);
LABEL_75:

  sub_25BACB138();
  v72 = v71;

  sub_25BACB9CC(v92);

  return v72;
}

void *sub_25BAC3C14(uint64_t a1, uint64_t a2)
{
  sub_25BAC3F80();
  v4 = MEMORY[0x277D84F90];
  v2[4] = sub_25BCB614C();
  v2[5] = 0;
  v14 = v2;
  sub_25BCB727C();
  sub_25BAC3FD4();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(a1 + 16))
    {
      v7 = *(a1 + 32 + 8 * v6++);
      v8 = &protocol witness table for Int8;
      v9 = MEMORY[0x277D84900];
      switch(*(*(v7 + 16) + 160))
      {
        case 1:
          v9 = MEMORY[0x277D84958];
          v8 = &protocol witness table for Int16;
          break;
        case 2:
          v9 = MEMORY[0x277D849A8];
          v8 = &protocol witness table for Int32;
          break;
        case 3:
          v9 = MEMORY[0x277D83B88];
          v8 = &protocol witness table for Int;
          break;
        case 4:
          v9 = MEMORY[0x277D84B78];
          v8 = &protocol witness table for UInt8;
          break;
        case 5:
          v9 = MEMORY[0x277D84C58];
          v8 = &protocol witness table for UInt16;
          break;
        case 6:
          v9 = MEMORY[0x277D84CC0];
          v8 = &protocol witness table for UInt32;
          break;
        case 7:
          v9 = MEMORY[0x277D84D38];
          v8 = &protocol witness table for UInt64;
          break;
        case 8:
          v9 = MEMORY[0x277D84DC8];
          v8 = &protocol witness table for Float16;
          break;
        case 9:
          v8 = sub_25BB18AFC();
          v9 = &type metadata for BFloat16;
          break;
        case 0xA:
          v9 = MEMORY[0x277D83A90];
          v8 = &protocol witness table for Float;
          break;
        case 0xB:
          v9 = MEMORY[0x277D839F8];
          v8 = &protocol witness table for Double;
          break;
        case 0xC:
          v9 = MEMORY[0x277D839B0];
          v8 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      if (!sub_25BAC1C50(v9, v8))
      {
        goto LABEL_23;
      }

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v10 = sub_25BAC4018();
      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_25BAC3FD4();
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v10;
      if (v5 == v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000036, 0x800000025BCE59B0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift", 105, 2, 1313);
    __break(1u);
    JUMPOUT(0x25BAC3F4CLL);
  }

LABEL_21:

  v14[2] = v4;
  v14[3] = sub_25BAC4034(v4);
  v14[5] = a2;

  return v14;
}

unint64_t sub_25BAC3F80()
{
  result = qword_28154F210;
  if (!qword_28154F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F210);
  }

  return result;
}

uint64_t sub_25BAC4018()
{
  if (*(v0 + 16))
  {
    return *(v0 + 16);
  }

  result = v0;
  *(v0 + 16) = v0;
  return result;
}

uint64_t sub_25BAC4034(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_48_1(a1);
  result = MEMORY[0x25F877220](v2, MEMORY[0x277D83690], MEMORY[0x277D83698]);
  v9 = result;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v1 + 16))
    {
      v6 = *(v1 + 8 * v5++ + 32);
      result = sub_25BAC40D8(&v8, v6);
      if (v4 == v5)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = result;

    return v7;
  }

  return result;
}

BOOL sub_25BAC40D8(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_25BCB79BC();
  OUTLINED_FUNCTION_10_40();
  do
  {
    OUTLINED_FUNCTION_26_28();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_49_17();
      sub_25BAC4188(a2, v3, v9);
      OUTLINED_FUNCTION_48_16(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
      goto LABEL_7;
    }
  }

  while (*(*(v7 + 48) + 8 * v3) != a2);
  a2 = *(*(v7 + 48) + 8 * v3);
LABEL_7:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

void sub_25BAC4188(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BAD4418(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25BAD2634(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_25BCB79BC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_25BC4AD1C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_25BAC42B0()
{
  v0 = sub_25BAB3058();
  if (v0 && (Class = object_getClass(v0), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
  {
    v3 = sub_25BAC44E4();
    MEMORY[0x25F876C90](v3);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    sub_25BAC4018();
    sub_25BCB73CC();

    return 0;
  }

  else
  {
    v2 = sub_25BAC44E4();
  }

  return v2;
}

uint64_t sub_25BAC43A4(uint64_t *a1, uint64_t a2)
{

  v3 = sub_25BAC42B0();
  v5 = v4;
  swift_beginAccess();
  v6 = *(*(v2 + 32) + 16);

  if (v6 && (sub_25BA9266C(v3, v5), (v7 & 1) != 0))
  {
    swift_endAccess();

    static Tensor.+ infix(_:_:)();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 32);
  sub_25BAC4594();
  *(v2 + 32) = v9;

  swift_endAccess();
}

uint64_t sub_25BAC44E4()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(v0 + 40, v6);
  if (v8)
  {
    if (v8 != 1)
    {
      v2 = v6[2];
      swift_unknownObjectRelease();
      return v2;
    }

    swift_unknownObjectRelease();
    v1 = &v7;
  }

  else
  {
    v1 = v6;
  }

  sub_25BA9BE3C(v1, v4);
  v2 = v5;
  sub_25BCB617C();
  sub_25BA977E0(v4);
  return v2;
}

uint64_t sub_25BAC4594()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6700, &qword_25BCCBEF0);
  v8 = OUTLINED_FUNCTION_10_33(v7);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v12, v13);
    OUTLINED_FUNCTION_4_50();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v8, v9, v10, v11, *v0);
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_37_17();

    return sub_25BCB617C();
  }
}

uint64_t OUTLINED_FUNCTION_184@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

void sub_25BAC4690(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_11_36(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_17(v6, v10);
  }
}

uint64_t sub_25BAC46D8(uint64_t a1)
{
  type metadata accessor for BackpropQueue.Node();
  OUTLINED_FUNCTION_1_2();
  result = swift_allocObject();
  v4 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a1;
  v5 = *(v1 + 16);
  if (!v5 || (v6 = *(v1 + 24)) == 0)
  {
    *(v1 + 16) = result;

    *(v1 + 24) = v4;
LABEL_20:

    return 1;
  }

  v7 = *(*(v6 + 16) + 24);
  v8 = *(a1 + 24);
  if (v7 >= v8)
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = *(*(v6 + 16) + 24);
  }

  if (v7 <= v8)
  {
    v7 = *(a1 + 24);
  }

  v10 = v7 - v9;
  if (v7 < v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(*(v5 + 16) + 24);
    if (v11 >= v8)
    {
      v12 = *(a1 + 24);
    }

    else
    {
      v12 = *(*(v5 + 16) + 24);
    }

    if (v11 > v8)
    {
      v8 = *(*(v5 + 16) + 24);
    }

    v13 = v8 - v12;
    if (v8 >= v12)
    {

      if (v10 >= v13)
      {
        sub_25BAC70CC(v4, v5, v6);
      }

      else
      {
        sub_25BAC9950(v4, v5, v6);
      }

      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_48(a1, a2, a3);
  swift_weakAssign();
  OUTLINED_FUNCTION_0_69(v3 + 24);
  sub_25BAC4888();
  v4 = OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_1_58(v4, v5, v6, v7, v8, v9);
  *(v3 + 24) = v3 + 24;
  return swift_endAccess();
}

uint64_t sub_25BAC48B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BAC4928()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (v0 + 16);
  if (v1)
  {
    if (v1 == v2)
    {
      *v3 = 0;
      v3[1] = 0;
      goto LABEL_9;
    }

    if (!v2)
    {
      return 0;
    }

LABEL_7:
    *v3 = *(v2 + 32);

    if (!v5)
    {
LABEL_10:
      v4 = *(v2 + 16);

      return v4;
    }

    *(v5 + 24) = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v4 = 0;
  *v3 = 0;
  v3[1] = 0;
  return v4;
}

uint64_t sub_25BAC49BC()
{
  sub_25BAC49EC();
  OUTLINED_FUNCTION_1_2();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAC49EC()
{

  return v0;
}

uint64_t sub_25BAC4A24()
{
  v1 = *(v0 + 16);
  sub_25BCB617C();
  return v1;
}

void sub_25BAC4A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_80();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v50 = v37;
  v38 = *v30;
  sub_25BCB79CC();
  sub_25BCB625C();
  v39 = sub_25BCB7A3C();
  v40 = -1 << *(v38 + 32);
  v41 = v39 & ~v40;
  if ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
  {
    v42 = ~v40;
    v43 = *(v38 + 48);
    while (1)
    {
      v44 = v43 + 24 * v41;
      if (*v44 == v36)
      {
        v45 = *(v44 + 8) == v34 && *(v44 + 16) == v32;
        if (v45 || (sub_25BCB789C() & 1) != 0)
        {
          break;
        }
      }

      v41 = (v41 + 1) & v42;
      if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v47 = *(v38 + 48) + 24 * v41;
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
    *v50 = *v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = v48;
    sub_25BCB617C();
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *v30;
    sub_25BCB617C();
    sub_25BAC4E18(v36, v34, v32, v41, isUniquelyReferenced_nonNull_native);
    *v30 = v51;
    *v50 = v36;
    *(v50 + 8) = v34;
    *(v50 + 16) = v32;
  }

  OUTLINED_FUNCTION_79();
}

uint64_t sub_25BAC4BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6978, &qword_25BCCE4A8);
  result = sub_25BCB70CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_25BCB79CC();
        sub_25BCB617C();
        sub_25BCB625C();
        result = sub_25BCB7A3C();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 24 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        *(v28 + 16) = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_25BAC4E18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_25BAC5704(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25BC4ADD4();
      goto LABEL_17;
    }

    sub_25BAC4BD0(v11 + 1);
  }

  v13 = *v5;
  sub_25BCB79CC();
  sub_25BCB625C();
  v14 = sub_25BCB7A3C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      if (*v19 == v10)
      {
        v20 = *(v19 + 8) == a2 && *(v19 + 16) == a3;
        if (v20 || (sub_25BCB789C() & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_20:
  sub_25BCB794C();
  __break(1u);
}

uint64_t sub_25BAC4FC0()
{
  v0 = OUTLINED_FUNCTION_24_1();
  sub_25BA9D8C4(v0, v1);
  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BAC4FEC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(a2 + 8);
  v34 = *(v4 + 40);
  v5 = *(v34(ObjectType, v4) + 16);

  v41 = v5;
  if (!v5)
  {
    v37 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_24:
    v32 = *(v34(ObjectType, v4) + 16);

    if (v37 >= v32)
    {

      return 0;
    }

    return v8;
  }

  v6 = 0;
  v7 = 0;
  v37 = 0;
  v40 = *(a2 + 32);
  v8 = MEMORY[0x277D84F90];
  v33 = v4;
  v35 = a2;
  while ((v40(v7, ObjectType, a2) & 1) == 0)
  {
LABEL_21:
    ++v7;
    v6 += 16;
    if (v41 == v7)
    {
      goto LABEL_24;
    }
  }

  v9 = (*(v4 + 72))(v7, ObjectType, v4);
  v11 = v10;
  swift_beginAccess();
  v12 = *(v36 + 32);
  v38 = v9;
  v39 = v11;
  if (*(v12 + 16))
  {
    v13 = sub_25BA9266C(v9, v11);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAC5544();
        v8 = v30;
      }

      v27 = *(v8 + 16);
      v28 = v39;
      if (v27 >= *(v8 + 24) >> 1)
      {
        sub_25BAC5544();
        v28 = v39;
        v8 = v31;
      }

      *(v8 + 16) = v27 + 1;
      v29 = (v8 + 24 * v27);
      v29[4] = v15;
      v29[5] = v38;
      v29[6] = v28;
      a2 = v35;
      goto LABEL_21;
    }
  }

  result = swift_endAccess();
  if (!__OFADD__(v37, 1))
  {
    result = v34(ObjectType, v4);
    if (v7 >= *(result + 16))
    {
      goto LABEL_28;
    }

    ++v37;
    v17 = *(result + v6 + 32);
    v18 = *(result + v6 + 40);
    sub_25BCB617C();

    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_25BAA51C8(v50, v49);
    sub_25BAA51C8(v49, &v43);
    if (*(&v44 + 1))
    {
      v47[0] = v43;
      v47[1] = v44;
      v47[2] = v45;
      v48 = v46;
      sub_25BCB617C();
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BCB617C();
      sub_25BAA49B8();
      sub_25BAA4A5C(v42);

      sub_25BAA51C8(v42, v47);
      sub_25BAA4AF4(v42);
      if (*(&v44 + 1))
      {
        sub_25BA9C2C8(&v43);
      }
    }

    v20 = ObjectType;
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v42[0] = v17;
    LOBYTE(v43) = v18;
    sub_25BC72C64(v42, &v43, v47, qword_281557400, v19);
    v22 = v21;

    v23 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(v47, v42);
    v24 = swift_getObjectType();
    v25 = swift_unknownObjectRetain();
    LOBYTE(v43) = 1;
    v26 = sub_25BC5FAD0(v25, v42, 0x100000000uLL, v23, v24, v22);
    type metadata accessor for TensorHandle();
    v15 = swift_allocObject();
    *(v15 + 16) = v26;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v47);
    sub_25BA9C2C8(v49);
    sub_25BA9C2C8(v50);
    ObjectType = v20;
    v4 = v33;
    goto LABEL_16;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_25BAC5498()
{
  OUTLINED_FUNCTION_107_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_52();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_87(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_121(v13);
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_111(v15);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_54_0();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BAC55DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v4 = *(result + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25BCBAE50;
      v7[0] = a3;
      v7[1] = v4;

      Tensor.reshaped(to:)(v7, &v8);
      *(v5 + 32) = v8;

      *(v5 + 40) = sub_25BAC42B0();
      *(v5 + 48) = v6;

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

uint64_t sub_25BAC56BC(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BAC5704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6978, &qword_25BCCE4A8);
  result = sub_25BCB70CC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_25BC42288(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_25BCB79CC();
    sub_25BCB625C();
    result = sub_25BCB7A3C();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25BAC5974()
{
  v1 = *(v0 + 144);
  sub_25BA9D8C4(v1, *(v0 + 152));
  return v1;
}

uint64_t sub_25BAC59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *((*(a3 + 40))(a2, a3) + 16);

  (*(a3 + 16))(a2, a3);
  if (v5 == 1)
  {
    return v6;
  }

  v8 = v6;
  OUTLINED_FUNCTION_11_4();
  sub_25BCB77FC();
  OUTLINED_FUNCTION_28_0();

  return v8;
}

uint64_t sub_25BAC5A94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v6 = *(result + 32);
      v7 = *(*(v6 + 16) + 160);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v15 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = a3;
      v14 = v7;
      sub_25BAA51C8(v17, v13);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v15, inited, &v14, v13, &v16);
      sub_25BA9C2C8(v17);
      v9 = v16;
      *&v17[0] = v6;
      v13[0] = a4;
      Tensor.broadcasted(to:)(v13);
      v13[0] = v9;
      static Tensor./ infix(_:_:)();

      v10 = *&v17[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE50;
      *(v11 + 32) = v10;

      *(v11 + 40) = sub_25BAC42B0();
      *(v11 + 48) = v12;

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BAC5C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_16_48(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_60();
  if (v27)
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_53_13(v10, v11, v12, &unk_286D4F738) & 1) != 0 && v29 >= 3)
    {
      type metadata accessor for SharedMetalDevice();
      v13 = swift_unknownObjectRetain();
      sub_25BBC97E0(v13);
      if (!v8)
      {
        OUTLINED_FUNCTION_32_26();
        if (v19)
        {
          OUTLINED_FUNCTION_22_34();
          while (1)
          {
            OUTLINED_FUNCTION_3_59();
            if (!v14)
            {
              goto LABEL_28;
            }

            OUTLINED_FUNCTION_44_18();
            if (v14)
            {
              OUTLINED_FUNCTION_33_27();
              if (v6 > 0)
              {
                goto LABEL_27;
              }

              goto LABEL_8;
            }
          }
        }

        OUTLINED_FUNCTION_33_27();
LABEL_27:
        v20 = OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_39_24(v20);
        OUTLINED_FUNCTION_34_21();
        sub_25BCB617C();
        sub_25BCB617C();
        OUTLINED_FUNCTION_6_58();
        sub_25BC29D2C(v21, v22, v23, v24, v25, v30);
LABEL_17:
        OUTLINED_FUNCTION_30_28();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_27_31();
        return;
      }

      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      sub_25BABF0A8(v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    sub_25BA9C2C8(v26);
  }

LABEL_8:
  if (!*(v7 + 16))
  {
LABEL_14:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_47_19();
    if (!v14)
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_15_29();
    sub_25BCB6F1C();
    OUTLINED_FUNCTION_21_35();
    v15 = OUTLINED_FUNCTION_7_58();
    v16(v15);
    OUTLINED_FUNCTION_20_35();
    sub_25BAC5EF8();
    v17 = OUTLINED_FUNCTION_46_22();
    v18(v17);
    OUTLINED_FUNCTION_10_48();
    OUTLINED_FUNCTION_17_26();

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_22_34();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (!v14)
    {
      break;
    }

    OUTLINED_FUNCTION_44_18();
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_25BAC5EF8()
{
  OUTLINED_FUNCTION_31_7();
  if (v4 == 3)
  {
    if (v3)
    {
      v5 = (v2 - v3) / 8;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v1 + 16) >> 60)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_5();
    sub_25BAC5FB4(v6, v7, v8, v9, v10, v11, 3);
    if (!v0)
    {
      return;
    }

    __break(1u);
  }

  v5 = 0;
LABEL_8:
  v12 = *(v1 + 16);
  if (!v12)
  {
    return;
  }

  if (v5 < v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  memcpy(v3, (v1 + 32), 8 * v12);
}

uint64_t sub_25BAC5FB4(const float *a1, uint64_t a2, double *a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  v20 = a4;
  v13 = sub_25BCB783C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a7;
  v21 = a5;
  v18 = *(a6 + 16);
  (*(v14 + 104))(v17, *MEMORY[0x277D84660], v13, v15);
  sub_25BAA83F4(a1, a2, &v22, a3, v20, &v21, v18);
  return (*(v14 + 8))(v17, v13);
}

float sub_25BAC6100()
{
  OUTLINED_FUNCTION_3_17();
  v8 = OUTLINED_FUNCTION_21_11(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  v10 = v9(v8);
  return OUTLINED_FUNCTION_39_7(v10, v11, v12, v13, v14, v15, v16, v17, v20, *&v21, *(&v21 + 1));
}

float sub_25BAC6148@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t Tensor.broadcasted(to:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_42_13(a1);
  if (sub_25BAB5C48(v5, v6))
  {
  }

  else
  {
    v32[0] = v4;
    v8 = *(v2 + 152);
    OUTLINED_FUNCTION_22();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    sub_25BCB617C();
    sub_25BCB617C();
    v10 = sub_25BAAF074(sub_25BAC7AE0, v9);
    v12 = v11;

    v35[55] = 0;
    OUTLINED_FUNCTION_46_12("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
    v36 = xmmword_25BCCB470;
    OUTLINED_FUNCTION_81_5(v13);
    type metadata accessor for BroadcastOperation();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_3();
    sub_25BAC6364(v14, v15, v16, v2, v17, v18, v10, v12);
    v19 = OUTLINED_FUNCTION_25();
    sub_25BAA51C8(v19, v35);
    sub_25BAA51C8(v35, v34);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_15_8();
    swift_retain_n();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_29_19();
    sub_25BAA4A5C(v20);

    v3 = v33;

    sub_25BAA4AF4(v32);
    sub_25BAA49B8();
    OUTLINED_FUNCTION_29_19();
    sub_25BAA4A5C(v21);

    OUTLINED_FUNCTION_21_18(v22, v23, v24, v25, v26, v27, v28, v29, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9]);
    sub_25BAA4AF4(v32);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    swift_allocObject();
    OUTLINED_FUNCTION_7_36();
    v30 = OUTLINED_FUNCTION_6_42();
    sub_25BAC6414(v30);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_21_25(v31);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_15_8();

    result = sub_25BA9C2C8(v35);
  }

  *v1 = v3;
  return result;
}

uint64_t sub_25BAC6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v13 = *a5;
  if (!a3)
  {
    v14 = OUTLINED_FUNCTION_6_5();
    a1 = sub_25BAA5EA0(v14, v15);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v8 + 40) = a4;
  *(v8 + 48) = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v17 = OUTLINED_FUNCTION_31(v16);
  *(v17 + 16) = xmmword_25BCBAE50;
  v18 = *(a4 + 160);
  *(v17 + 32) = v13;
  *(v17 + 40) = v18;
  *(v8 + 56) = v17;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 106) = *(a6 + 42);
  v19 = a6[2];
  *(v8 + 80) = a6[1];
  *(v8 + 96) = v19;
  *(v8 + 64) = *a6;
  sub_25BCB617C();
  return v8;
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = *a1;

  return Parameter.wrappedValue.setter(&a10);
}

__n128 OUTLINED_FUNCTION_94_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  a1[1] = a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_4(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

void OUTLINED_FUNCTION_94_5()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_135(uint64_t result)
{
  v2[6] = result;
  v2[7] = 121;
  v2[8] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_135_0()
{
  *(v0 + 288) = *(v0 + 160);

  return sub_25BABEF40(v0 + 240, v0 + 56);
}

void OUTLINED_FUNCTION_135_1()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_193@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_193_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return sub_25BA9BD18(v22, a2, va);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_86_3()
{

  JUMPOUT(0x25F876C90);
}

uint64_t sub_25BAC6844(uint64_t a1)
{
  if (*(*(v1 + 56) + 16) == 1)
  {
    sub_25BCB617C();
  }

  else
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();
  }

  return OUTLINED_FUNCTION_24_1();
}

void *OUTLINED_FUNCTION_100(uint64_t a1, ...)
{

  return sub_25BCB79CC();
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_25BAA48D4(v16 - 224, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_100_5()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t a1)
{
  *(v1 + 320) = 1;
  *(v1 + 328) = a1;

  return Array<A>.resolve(descriptor:)((v1 + 320), v2);
}

uint64_t OUTLINED_FUNCTION_114_2()
{

  return sub_25BCB614C();
}

double OUTLINED_FUNCTION_114_3()
{
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_114_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = v29;
  a25 = v27;

  return sub_25BAA0E58(&a22, v28 + 40);
}

uint64_t OUTLINED_FUNCTION_196_0()
{

  return sub_25BCB6FAC();
}

void static Tensor./ infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v6 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v7);
  v8 = 0;
  do
  {
    if (v8 == 4)
    {
      v67 = OUTLINED_FUNCTION_171_0(v5);
      v68 = v52;
      v51 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v7);
  OUTLINED_FUNCTION_98_6(v9);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v70)
  {
    OUTLINED_FUNCTION_54_10(v2[1].Kind);
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v60, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    v59 = 335;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_207_1(v10);
  OUTLINED_FUNCTION_35_16();
  v12 = v11();
  OUTLINED_FUNCTION_151_1(v12);
  OUTLINED_FUNCTION_53_11();
  v13();
  OUTLINED_FUNCTION_195_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v7 & v14))
    {
      OUTLINED_FUNCTION_127_0();
      if (!v7)
      {
        goto LABEL_13;
      }

      v61 = OUTLINED_FUNCTION_203_0(v15);
      v62 = OUTLINED_FUNCTION_101_5(v61);
      v67 = v70;
      v68 = v0;
      OUTLINED_FUNCTION_52_10(v62, v63, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v64, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
      v59 = 338;
LABEL_18:
      sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
    }

    __break(1u);
LABEL_15:
    v67 = OUTLINED_FUNCTION_172_1(v5);
    v68 = v50;
    v51 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v51);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v67 = v2;
  v16 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v70) = v3;
  v17 = OUTLINED_FUNCTION_46_14(v16, *MEMORY[0x277D84660]);
  v18(v17);
  OUTLINED_FUNCTION_62_6();
  v19 = OUTLINED_FUNCTION_126_1();
  v1(v19);

  OUTLINED_FUNCTION_57_6();
  v20 = OUTLINED_FUNCTION_66_7();
  v21(v20);
  OUTLINED_FUNCTION_62_6();
  v22 = OUTLINED_FUNCTION_25_12();
  v1(v22);

  OUTLINED_FUNCTION_90_4();

  v23 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v23, v24);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v71 = xmmword_25BCCB470;
  v26 = OUTLINED_FUNCTION_77_5(v25);
  OUTLINED_FUNCTION_161_1(v26);
  v27 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_108_5(v27, v28, v29, 3, v30, v31, v32, v33, v65, v66);
  OUTLINED_FUNCTION_137_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v35 = OUTLINED_FUNCTION_31(v34);
  OUTLINED_FUNCTION_102_5(v35, xmmword_25BCBAE70);

  v36 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v36, v37, v38, v39, 356, v40, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v67);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v67);
  v42 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v42);
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v67) = v43;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_107_6();
  v49 = OUTLINED_FUNCTION_15_7(v48);
  OUTLINED_FUNCTION_13_22(v49);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v69);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAC6E28(uint64_t result, uint64_t a2, char a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_25BCBAE50;

      v13 = OUTLINED_FUNCTION_30_19(v5, v6, v7, v8, v9, v10, v11, v12, v15, a3);
      Tensor.broadcasted(to:)(v13);
      *(v4 + 32) = v16;

      *(v4 + 40) = sub_25BAC42B0();
      *(v4 + 48) = v14;

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

uint64_t sub_25BAC6F10()
{
  v1 = *(v0 + 136);
  sub_25BA9D8C4(v1, *(v0 + 144));
  return v1;
}

uint64_t sub_25BAC6F48(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = a2[2];
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 != 1)
  {

    static Tensor.* infix(_:_:)();

    v3 = sub_25BAC42B0();
    v5 = v4;
    static Tensor.* infix(_:_:)();

    v6 = sub_25BAC42B0();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25BCBAE70;
    *(v9 + 32) = v10;
    *(v9 + 40) = v3;
    *(v9 + 48) = v5;
    *(v9 + 56) = v10;
    *(v9 + 64) = v6;
    *(v9 + 72) = v8;

    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BAC70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  else
  {
    return sub_25BCB789C();
  }
}

uint64_t sub_25BAC70CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  swift_retain_n();
  while (1)
  {
    v7 = *(*(a2 + 16) + 24);

    v8 = *(v6 + 24);
    if (v8 >= v7)
    {
      break;
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      break;
    }

    swift_retain_n();

    a2 = v9;
  }

  if (a2 == a3 && v8 < *(*(a3 + 16) + 24))
  {
    sub_25BAC9A20(a1, a3);
  }

  else
  {
    sub_25BAC719C(a1, a2);
  }
}

uint64_t sub_25BAC719C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = a2;

  v5 = *(a2 + 24);
  if (v5)
  {
    *(v5 + 32) = a1;
  }

  else
  {
  }

  *(a2 + 24) = a1;

  v6 = *(v2 + 16);
  if (v6 && v6 == a2)
  {
    *(v2 + 16) = a1;
  }
}

uint64_t sub_25BAC729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!*(a2 + 16))
  {
LABEL_6:
    __break(1u);
LABEL_7:
    v12 = *(*(v3 + 16) + 152);
    v20[1] = 0;
    v20[2] = 0;
    v20[0] = v4;
    v21 = -1;
    v23 = 0;
    v24 = 0;
    v22 = v12;
    v25 = -1;
    v26 = 8;
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_40();
    sub_25BADDD28(v13, v14, v15, v16, v17, v18, 269);
  }

  v4 = a3;
  v3 = *(a1 + 32);
  v20[0] = a3;
  v27 = *(*(v3 + 16) + 152);

  sub_25BCB617C();
  v5 = static ShapeInference.broadcastingAxes(_:_:)(v20, &v27);

  if (!v5)
  {
    goto LABEL_7;
  }

  v20[0] = v3;
  Tensor.sum(alongAxes:)(&v27, v6);

  v19[0] = v4;
  v19[1] = v27;
  Tensor.reshaped(to:)(v19, v20);

  v7 = v20[0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v9 = OUTLINED_FUNCTION_32_11(v8);
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = v7;

  *(v9 + 40) = sub_25BAC42B0();
  *(v9 + 48) = v10;

  return v9;
}

uint64_t static ShapeInference.broadcastingAxes(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_25BAB5C48(*a1, *a2) & 1) == 0)
  {
    if (*(v3 + 16) <= *(v2 + 16))
    {
      v5 = *(v2 + 16);
    }

    else
    {
      v5 = *(v3 + 16);
    }

    sub_25BCB617C();
    sub_25BCB617C();
    v6 = MEMORY[0x277D84F90];
    sub_25BAAE04C(0, v5, 0, MEMORY[0x277D84F90]);
    v4 = v7;
    if (*(v3 + 16) <= *(v2 + 16))
    {
      v8 = *(v2 + 16);
    }

    else
    {
      v8 = *(v3 + 16);
    }

    sub_25BAAE04C(0, v8, 0, v6);
    v52 = v9;
    v10 = *(v2 + 16);
    v11 = *(v3 + 16);
    if (v10 >= v11)
    {
      if (v11 >= v10)
      {
LABEL_27:
        sub_25BCB617C();
        sub_25BCB617C();
        v26 = 0;
        for (i = 0; ; i += v28 + 1)
        {
          v28 = 0;
          v29 = *(v2 + 16);
          while (1)
          {
            v30 = v26 + v28;
            if (!(i - v29 + v28))
            {
              v43 = *(v3 + 16);
              if (v30 == v43)
              {

                return v4;
              }

              if (v30 < v43)
              {
LABEL_54:
                sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000019, 0x800000025BCE78E0, "NeuralNetworks/ShapeInference.swift", 35, 2, 247);
                __break(1u);
              }

LABEL_55:
              OUTLINED_FUNCTION_27_37();
LABEL_56:
              OUTLINED_FUNCTION_17_4();
              sub_25BADDD28(v45, v46, v47, v48, v49, v50, v51);
            }

            if (i + v28 < -v29 || i + v28 >= v29)
            {
              goto LABEL_56;
            }

            v32 = *(v3 + 16);
            if (v30 == v32)
            {
              goto LABEL_54;
            }

            if (v30 >= v32)
            {
              goto LABEL_55;
            }

            v33 = *(v3 + 32 + 8 * v26 + 8 * v28);
            if (v33 == 1)
            {
              break;
            }

            v34 = *(v2 + 32 + 8 * i + 8 * v28);
            if (v34 == 1)
            {
              v36 = *(v4 + 16);
              v39 = *(v4 + 24);
              v37 = v36 + 1;
              if (v36 >= v39 >> 1)
              {
                v42 = OUTLINED_FUNCTION_81(v39);
                sub_25BAAE04C(v42, v36 + 1, 1, v4);
                v4 = v38;
              }

              else
              {
                v38 = v4;
              }

              goto LABEL_44;
            }

            ++v28;
            if (v34 != v33)
            {

              return 0;
            }
          }

          v36 = *(v52 + 16);
          v35 = *(v52 + 24);
          v37 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            v40 = OUTLINED_FUNCTION_81(v35);
            sub_25BAAE04C(v40, v36 + 1, 1, v41);
            v52 = v38;
          }

          else
          {
            v38 = v52;
          }

LABEL_44:
          *(v38 + 16) = v37;
          *(v38 + 8 * v36 + 32) = v26 + v28;
          v26 += v28 + 1;
        }
      }

      v19 = sub_25BAC0E14(1, v10 - v11);
      v20 = *(v3 + 16);
      v21 = *(v19 + 16);
      v22 = v20 + v21;
      if (!__OFADD__(v20, v21))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v22 > *(v3 + 24) >> 1)
        {
          if (v20 <= v22)
          {
            v24 = v20 + v21;
          }

          else
          {
            v24 = v20;
          }

          sub_25BA96630(isUniquelyReferenced_nonNull_native, v24, 1, v3);
          v3 = v25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v12 = sub_25BAC0E14(1, v11 - v10);
      v13 = *(v2 + 16);
      v14 = *(v12 + 16);
      v15 = v13 + v14;
      if (!__OFADD__(v13, v14))
      {
        v16 = swift_isUniquelyReferenced_nonNull_native();
        if (!v16 || v15 > *(v2 + 24) >> 1)
        {
          if (v13 <= v15)
          {
            v17 = v13 + v14;
          }

          else
          {
            v17 = v13;
          }

          sub_25BA96630(v16, v17, 1, v2);
          v2 = v18;
        }

LABEL_26:
        OUTLINED_FUNCTION_30_30();
        goto LABEL_27;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25BAC783C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(*(v9 + 16), a2))
  {
    goto LABEL_15;
  }

  result = sub_25BAB254C(v9 + 32 + 8 * a2);
  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v13;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      memcpy(v10, (a4 + 32), 8 * a3);
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

uint64_t sub_25BAC7908(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2[2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v14[12] = v2;
    v14[13] = v3;
    v5 = *(result + 32);
    swift_retain_n();

    v6 = sub_25BAC42B0();
    v8 = v7;
    v14[0] = v5;
    static Tensor.- prefix(_:)(v14);
    v9 = v14[1];

    v10 = sub_25BAC42B0();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25BCBAE70;
    *(v13 + 32) = v5;
    *(v13 + 40) = v6;
    *(v13 + 48) = v8;
    *(v13 + 56) = v9;
    *(v13 + 64) = v10;
    *(v13 + 72) = v12;

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BAC7A2C()
{
  v1 = *(v0 + 112);
  sub_25BA9D8C4(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_25BAC7A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25BCBAE50;
  sub_25BAB9E04(v0 + 32);
  return v0;
}

uint64_t sub_25BAC7AE4(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_25BCBAE50;

      static Tensor./ infix(_:_:)();
      *(v2 + 32) = v4;

      *(v2 + 40) = sub_25BAC42B0();
      *(v2 + 48) = v3;

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC7BB0(uint64_t result, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v4 = *(result + 32);
      v5 = *(a2 + 32);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v7 = OUTLINED_FUNCTION_32_11(v6);
      *(v7 + 16) = xmmword_25BCBAE50;
      v9[1] = v4;
      v10 = v5;

      a3(v9, &v10);
      static Tensor.* infix(_:_:)();

      *(v7 + 32) = v10;

      *(v7 + 40) = sub_25BAC42B0();
      *(v7 + 48) = v8;

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

void static Tensor.+ infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v6 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v7);
  v8 = 0;
  do
  {
    if (v8 == 4)
    {
      v67 = OUTLINED_FUNCTION_171_0(v5);
      v68 = v52;
      v51 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v7);
  OUTLINED_FUNCTION_98_6(v9);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v70)
  {
    OUTLINED_FUNCTION_54_10(v2[1].Kind);
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v60, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    v59 = 89;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_207_1(v10);
  OUTLINED_FUNCTION_35_16();
  v12 = v11();
  OUTLINED_FUNCTION_151_1(v12);
  OUTLINED_FUNCTION_53_11();
  v13();
  OUTLINED_FUNCTION_195_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v7 & v14))
    {
      OUTLINED_FUNCTION_127_0();
      if (!v7)
      {
        goto LABEL_13;
      }

      v61 = OUTLINED_FUNCTION_203_0(v15);
      v62 = OUTLINED_FUNCTION_101_5(v61);
      v67 = v70;
      v68 = v0;
      OUTLINED_FUNCTION_52_10(v62, v63, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v64, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
      v59 = 92;
LABEL_18:
      sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
    }

    __break(1u);
LABEL_15:
    v67 = OUTLINED_FUNCTION_172_1(v5);
    v68 = v50;
    v51 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v51);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v67 = v2;
  v16 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v70) = v3;
  v17 = OUTLINED_FUNCTION_46_14(v16, *MEMORY[0x277D84660]);
  v18(v17);
  OUTLINED_FUNCTION_62_6();
  v19 = OUTLINED_FUNCTION_126_1();
  v1(v19);

  OUTLINED_FUNCTION_57_6();
  v20 = OUTLINED_FUNCTION_66_7();
  v21(v20);
  OUTLINED_FUNCTION_62_6();
  v22 = OUTLINED_FUNCTION_25_12();
  v1(v22);

  OUTLINED_FUNCTION_90_4();

  v23 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v23, v24);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v71 = xmmword_25BCCB470;
  v26 = OUTLINED_FUNCTION_77_5(v25);
  OUTLINED_FUNCTION_161_1(v26);
  v27 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_108_5(v27, v28, v29, 0, v30, v31, v32, v33, v65, v66);
  OUTLINED_FUNCTION_137_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v35 = OUTLINED_FUNCTION_31(v34);
  OUTLINED_FUNCTION_102_5(v35, xmmword_25BCBAE70);

  v36 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v36, v37, v38, v39, 110, v40, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v67);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v67);
  v42 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v42);
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v67) = v43;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_107_6();
  v49 = OUTLINED_FUNCTION_15_7(v48);
  OUTLINED_FUNCTION_13_22(v49);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v69);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAC80D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v8 = *(result + 32);

      OUTLINED_FUNCTION_38_16();
      a5(a3);
      v13[0] = v14;
      v13[1] = a4;
      v12 = v8;
      sub_25BAC81F4(a3, v13, &v12);
      v9 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_25BCBAE50;
      *(v10 + 32) = v9;

      *(v10 + 40) = sub_25BAC42B0();
      *(v10 + 48) = v11;

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC81F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *a3;
  v19 = *v3;
  v12 = v19;
  v20 = v10;
  static Tensor..== infix(_:_:)(&v18, &v20, &v19);
  LOBYTE(v19) = *(*(v12 + 16) + 160);
  (*(v7 + 104))(v9, *MEMORY[0x277D84660], v6);
  Tensor.cast(to:roundingRule:)();
  (*(v7 + 8))(v9, v6);

  v13 = v20;
  v19 = v20;
  Tensor.sum(alongAxes:)(&v20, v14);
  v15 = v20;
  v19 = *(*(v12 + 16) + 152);
  v20 = v11;
  sub_25BCB617C();
  Tensor.broadcasted(to:)(&v19);

  v20 = v13;
  static Tensor.* infix(_:_:)();

  v20 = v15;
  static Tensor./ infix(_:_:)();
}

BOOL sub_25BAC863C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = (*v1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_25BAC8690(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_11_51(a1, a2, a3, a4);
  if (!v8)
  {
    v6 = sub_25BABCB24(v9, sub_25BAC86EC);
  }

  v10 = *v4;
  v11 = v4[1];
  *(v5 + 72) = *v4;
  return OUTLINED_FUNCTION_0_90(v6, v7, v8, v10.n128_f64[0], v11);
}

uint64_t sub_25BAC86EC(char a1)
{
  result = 0x6C61757165;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_8_57();
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_75();
      break;
    case 3:
      result = OUTLINED_FUNCTION_10_51();
      break;
    case 4:
      result = OUTLINED_FUNCTION_4_67();
      break;
    case 5:
      result = 0x6C61757145746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAC87B4()
{
  OUTLINED_FUNCTION_1_64();
  v6 = v5;
  v8 = *v7;
  if (!v4)
  {
    v2 = sub_25BAA5EA0(1953718627, 0xE400000000000000);
  }

  *(v1 + 56) = *v0;
  OUTLINED_FUNCTION_8_2(v2, v3, v4);
  *(v1 + 40) = v6;
  *(v1 + 48) = v8;
  return OUTLINED_FUNCTION_2_68(v9, v10);
}

uint64_t OUTLINED_FUNCTION_194_1()
{

  return swift_retain_n();
}

uint64_t sub_25BAC8B08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(*(v0 + 40) + 152), *(v0 + 48));
  return v2;
}

uint64_t sub_25BAC8B7C()
{
  v0 = OUTLINED_FUNCTION_24_1();
  sub_25BA9D8C4(v0, v1);
  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BAC8C10(uint64_t result, void *a2, char a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2[2];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *(result + 32);
  v6 = a2[4];
  v5 = a2[5];
  if ((a3 & 1) == 0)
  {
    v11 = 0;
    v35 = 0;
    v8 = *(v4 + 16);
    v9 = *(v6 + 16);
    v10 = *(v5 + 16);
    goto LABEL_8;
  }

  if (v3 < 3)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = a2[6];
  v8 = *(v4 + 16);
  v9 = *(v6 + 16);
  v10 = *(v5 + 16);
  v11 = *(v7 + 16);

  v35 = v7;

LABEL_8:
  v41[55] = 0;
  *&v42 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v42 + 1) = 107;
  v43 = 2;
  v44 = xmmword_25BCC2C00;
  v45 = "init(id:gradient:input:weight:bias:creationSite:)";
  v46 = 49;
  v47 = 2;
  type metadata accessor for LinearGradientOperation();
  swift_allocObject();

  v12 = sub_25BAC9234(0, 0, 0, v8, v9, v10, v11, &v42);
  sub_25BAA51C8(*(v4 + 16) + 168, v41);
  sub_25BAA51C8(v41, v40);
  sub_25BAA51C8(v40, v39);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v13 = v38;

  sub_25BAA4AF4(v36);
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v14 = v37;

  sub_25BAA4AF4(v36);
  type metadata accessor for TensorRepresentation();
  v15 = swift_allocObject();
  v36[0] = 1;
  v16 = sub_25BAC94A0(v12, 0, v39, 0x100000000, v13, v14, v15);
  type metadata accessor for TensorHandle();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v40);
  sub_25BAA51C8(v41, v40);
  sub_25BAA51C8(v40, v39);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v18 = v38;

  sub_25BAA4AF4(v36);
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v19 = v37;

  sub_25BAA4AF4(v36);
  v20 = swift_allocObject();
  v36[0] = 1;
  v21 = sub_25BAC94A0(v12, 1, v39, 0x100000000, v18, v19, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BCBAE70;
  *(v23 + 32) = v17;

  *(v23 + 40) = sub_25BAC42B0();
  *(v23 + 48) = v24;
  *(v23 + 56) = v22;

  *(v23 + 64) = sub_25BAC42B0();
  *(v23 + 72) = v25;
  if (v35)
  {
    sub_25BAA51C8(v41, v40);
    sub_25BAA51C8(v40, v39);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v36);

    v26 = v38;

    sub_25BAA4AF4(v36);
    sub_25BAA49B8();
    sub_25BAA4A5C(v36);

    v27 = v37;

    sub_25BAA4AF4(v36);
    v28 = swift_allocObject();
    v36[0] = 1;
    v29 = sub_25BAC94A0(v12, 2, v39, 0x100000000, v26, v27, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v40);

    v31 = sub_25BAC42B0();
    v33 = v32;
    sub_25BAC98F4();
    v23 = v34;

    sub_25BA9C2C8(v41);
    *(v23 + 16) = 3;
    *(v23 + 80) = v30;
    *(v23 + 88) = v31;
    *(v23 + 96) = v33;
  }

  else
  {
    sub_25BA9C2C8(v41);
  }

  return v23;
}

uint64_t sub_25BAC9234(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  *(v8 + 64) = 0;
  if (!a3)
  {
    v14 = OUTLINED_FUNCTION_4_3(0x7261656E696CLL);
    a1 = sub_25BAA5EA0(v14, v15);
  }

  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;

  v16 = a8[1];
  *(v8 + 80) = *a8;
  *(v8 + 96) = v16;
  *(v8 + 112) = a8[2];
  *(v8 + 122) = *(a8 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE70;

  sub_25BAC9400(v18, v17 + 32);

  sub_25BAC9400(v19, v17 + 48);
  if (a7)
  {
    v20 = *(a7 + 152);
    v26 = *(a7 + 160);
    v22 = *(v17 + 16);
    v21 = *(v17 + 24);

    sub_25BCB617C();
    if (v22 >= v21 >> 1)
    {
      sub_25BAC944C();
      v17 = v25;
    }

    *(v17 + 16) = v22 + 1;
    v23 = v17 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v26;
  }

  else
  {
  }

  *(v8 + 72) = v17;
  return v8;
}

uint64_t sub_25BAC9400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  sub_25BCB617C();

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

char *sub_25BAC9480(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

__n128 *sub_25BAC9730()
{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  if (v1)
  {
    OUTLINED_FUNCTION_16_23(v2, xmmword_25BCC5CB0);
    v2[3].n128_u64[0] = v0;
    v2[3].n128_u64[1] = v1;
  }

  else
  {
    OUTLINED_FUNCTION_16_23(v2, xmmword_25BCBAE60);
    v2[3].n128_u64[0] = v0;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_177@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 88) = a2;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_177_1()
{

  return sub_25BAAF54C(v0);
}

__n128 *OUTLINED_FUNCTION_182(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 120;
  result[2].n128_u64[1] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_182_0@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v3 - 104) = a2;
  *(v3 - 88) = v2;
  *(v3 - 80) = 39;
  *(v3 - 72) = a1;
  *(v3 - 71) = 0;

  return type metadata accessor for InputOperation();
}

uint64_t sub_25BAC986C(uint64_t a1)
{
  if (*(*(v1 + 72) + 16) == 1)
  {
    sub_25BCB617C();
  }

  else
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();
  }

  return OUTLINED_FUNCTION_24_1();
}

char *sub_25BAC9928(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

uint64_t sub_25BAC9950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  swift_retain_n();
  while (1)
  {
    v7 = *(*(a3 + 16) + 24);

    v8 = *(v6 + 24);
    if (v7 >= v8)
    {
      break;
    }

    v9 = *(a3 + 24);
    if (!v9)
    {
      break;
    }

    swift_retain_n();

    a3 = v9;
  }

  if (a3 == a2 && *(*(a2 + 16) + 24) < v8)
  {
    sub_25BAC719C(a1, a2);
  }

  else
  {
    sub_25BAC9A20(a1, a3);
  }
}

uint64_t sub_25BAC9A20(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 24) = a2;

  v5 = *(a2 + 32);
  if (v5)
  {
    *(v5 + 24) = a1;
  }

  else
  {
  }

  *(a2 + 32) = a1;

  v6 = *(v2 + 24);
  if (v6 && v6 == a2)
  {
    *(v2 + 24) = a1;
  }
}

uint64_t sub_25BAC9B04(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(v2 + 16);
      v4 = *(*(a2 + 32) + 16);
      v24 = 0;
      *&v18 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift";
      *(&v18 + 1) = 115;
      v19 = 2;
      v20 = xmmword_25BCD3A40;
      v21 = "init(id:gradientOperand:operand:creationSite:)";
      v22 = 46;
      v23 = 2;
      type metadata accessor for ReLUGradientOperation();
      swift_allocObject();

      v5 = sub_25BAC9D9C(0, 0, 0, v3, v4, &v18);
      sub_25BAA51C8(*(v2 + 16) + 168, v17);
      sub_25BAA51C8(v17, v16);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v13);

      v6 = v15;

      sub_25BAA4AF4(v13);
      sub_25BAA49B8();
      sub_25BAA4A5C(v13);

      v7 = v14;

      sub_25BAA4AF4(v13);
      type metadata accessor for TensorRepresentation();
      v8 = swift_allocObject();
      v13[0] = 1;
      v9 = sub_25BAC9DF0(v5, 0, v16, 0x100000000, v6, v7, v8);
      type metadata accessor for TensorHandle();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE50;
      *(v11 + 32) = v10;

      *(v11 + 40) = sub_25BAC42B0();
      *(v11 + 48) = v12;

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC9D9C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  *(v6 + 112) = a4;
  if (!a3)
  {
    v9 = OUTLINED_FUNCTION_0_52();
    a1 = sub_25BAA5EA0(v9, v10);
  }

  return sub_25BAB9A8C(a1, a2, a3, a5, a6);
}

uint64_t sub_25BACA0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_25BCB6D8C();
}

void OUTLINED_FUNCTION_43_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BCB74CC(a1, a2, a3, a4, a5, a6, 114, 2, a9);
}

uint64_t OUTLINED_FUNCTION_43_14()
{

  return sub_25BCB681C();
}

uint64_t OUTLINED_FUNCTION_43_16()
{

  return sub_25BCB643C();
}

uint64_t OUTLINED_FUNCTION_43_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_43_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4)
{

  return sub_25BCB74CC(a1, 11, 2, 0xD000000000000060, a3 | 0x8000000000000000, a2, 105, 2, a4);
}

__n128 *OUTLINED_FUNCTION_43_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_25BACA374()
{
  v0 = OUTLINED_FUNCTION_24_1();
  sub_25BA9D8C4(v0, v1);
  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BACA420(uint64_t result, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = a2[2];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = *(result + 32);
  if ((a3 & 1) == 0)
  {
    v35 = 0;
    goto LABEL_8;
  }

  if (v10 < 3)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = a2[6];

  v35 = v11;

LABEL_8:
  v43[55] = 0;
  v44 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  v45 = 107;
  v46 = 2;
  v47 = xmmword_25BCD6FA0;
  v48 = "init(id:gradient:input:weight:bias:stride:padding:dilation:groupCount:creationSite:)";
  v49 = 84;
  v50 = 2;
  type metadata accessor for Convolution2DGradientOperation();
  swift_allocObject();

  v12 = sub_25BACAA60();
  sub_25BAA51C8(*(v36 + 16) + 168, v43);
  sub_25BAA51C8(v43, v41);
  sub_25BAA51C8(v41, v40);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v37);

  v13 = v39;

  sub_25BAA4AF4(v37);
  sub_25BAA49B8();
  sub_25BAA4A5C(v37);

  v14 = v38;

  sub_25BAA4AF4(v37);
  type metadata accessor for TensorRepresentation();
  v15 = swift_allocObject();
  v37[0] = 1;
  v16 = sub_25BACAAF8(v12, 0, v40, 0x100000000, v13, v14, v15);
  type metadata accessor for TensorHandle();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v41);
  sub_25BAA51C8(v43, v41);
  sub_25BAA51C8(v41, v40);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v37);

  v18 = v39;

  sub_25BAA4AF4(v37);
  sub_25BAA49B8();
  sub_25BAA4A5C(v37);

  v19 = v38;

  sub_25BAA4AF4(v37);
  v20 = swift_allocObject();
  v37[0] = 1;
  v21 = sub_25BACAAF8(v12, 1, v40, 0x100000000, v18, v19, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BCBAE70;
  *(v23 + 32) = v17;

  *(v23 + 40) = sub_25BAC42B0();
  *(v23 + 48) = v24;
  *(v23 + 56) = v22;

  *(v23 + 64) = sub_25BAC42B0();
  *(v23 + 72) = v25;
  if (v35)
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_25BAA51C8(v41, v40);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v37);

    v26 = v39;

    sub_25BAA4AF4(v37);
    sub_25BAA49B8();
    sub_25BAA4A5C(v37);

    v27 = v38;

    sub_25BAA4AF4(v37);
    v28 = swift_allocObject();
    v37[0] = 1;
    v29 = sub_25BACAAF8(v12, 2, v40, 0x100000000, v26, v27, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v41);

    v31 = sub_25BAC42B0();
    v33 = v32;
    sub_25BAC98F4();
    v23 = v34;

    sub_25BA9C2C8(v43);
    *(v23 + 16) = 3;
    *(v23 + 80) = v30;
    *(v23 + 88) = v31;
    *(v23 + 96) = v33;
  }

  else
  {
    sub_25BA9C2C8(v43);
  }

  return v23;
}

uint64_t sub_25BACAA60()
{
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_5_30(v1, v2, v3, v4);
  if (v5)
  {
  }

  else
  {

    v14 = OUTLINED_FUNCTION_4_3(0x6432766E6F63);
    v6 = sub_25BAA5EA0(v14, v15);
  }

  OUTLINED_FUNCTION_0_45(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22);
  return v0;
}

uint64_t sub_25BACAD94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE70;

  sub_25BAC9400(v2, v1 + 32);

  sub_25BAC9400(v3, v1 + 48);
  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = *(v4 + 152);
    v6 = *(v4 + 160);

    sub_25BCB617C();
    sub_25BAC944C();
    v1 = v7;

    *(v1 + 16) = 3;
    *(v1 + 64) = v5;
    *(v1 + 72) = v6;
  }

  return v1;
}

uint64_t sub_25BACAE6C()
{
  v0 = sub_25BAB4304();

  v2 = sub_25BACAEC4(v1, v0);

  return v2;
}

uint64_t sub_25BACAEC4(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84F90];
  v2 = sub_25BAAF54C(a2);
  v3 = __OFADD__(v2, 1);
  result = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_25BAC1E24(result, 0);

    sub_25BACAF48(v5);
    v6 = sub_25BCB617C();
    sub_25BAC1D78(v6);
    return v7;
  }

  return result;
}

uint64_t sub_25BACAF48(uint64_t a1)
{
  v3 = sub_25BAAF54C(*v1);
  v4 = __OFADD__(v3, 1);
  result = v3 + 1;
  if (v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_25BAC1E24(result, 1);
  v6 = *v1;
  v7 = *v1 & 0xFFFFFFFFFFFFFF8;
  v8 = *(v7 + 0x10);
  v9 = *(v7 + 0x18) >> 1;
  v10 = v9 - v8;
  if (v9 != v8)
  {
    v11 = 0;
    while (1)
    {
      if ((v10 & ~(v10 >> 63)) == v11)
      {
        __break(1u);
        goto LABEL_12;
      }

      if (!a1)
      {
        break;
      }

      *(v7 + 8 * v8 + 32 + 8 * v11++) = a1;
      a1 = 0;
      if (v10 == v11)
      {
        v11 = v10;
        break;
      }
    }

    if (v11 < 1)
    {
      goto LABEL_14;
    }

    v4 = __OFADD__(v8, v11);
    v12 = v8 + v11;
    if (!v4)
    {
      *(v7 + 16) = v12;
      *v1 = v6;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25BACB000()
{
  v0 = sub_25BAB3058();
  if (v0)
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for DifferentiableTensorOperation))
    {
      v3 = sub_25BACB108();
    }

    else
    {
      v3 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_25BACB06C()
{
  OUTLINED_FUNCTION_17_10();
  v0 = swift_beginAccess();
  v8 = OUTLINED_FUNCTION_6_54(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v31)
  {
    if (v31 != 1)
    {
      sub_25BA9778C(v29);
      return 0;
    }

    OUTLINED_FUNCTION_7_54(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3]);
    swift_unknownObjectRelease();
    v16 = &v30;
  }

  else
  {
    v16 = v29;
  }

  sub_25BA9BE3C(v16, &v19);
  Strong = swift_weakLoadStrong();
  sub_25BA977E0(&v19);
  return Strong;
}

uint64_t sub_25BACB108()
{
  result = sub_25BACB06C();
  if (result)
  {
    v1 = *(result + 24);

    return v1 & 1;
  }

  return result;
}

void sub_25BACB138()
{
  v1 = v0;
  sub_25BACB3B4();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);

  v4 = 0;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    swift_retain_n();
    v5 = sub_25BAB3058();
    if (v5 && (Class = object_getClass(v5), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      v10 = sub_25BAC44E4();
      MEMORY[0x25F876C90](v10);

      MEMORY[0x25F876C90](95, 0xE100000000000000);
      sub_25BAC4018();
      sub_25BCB73CC();

      v7 = v23;
      v9 = v24;
    }

    else
    {
      v7 = sub_25BAC44E4();
      v9 = v8;
    }

    swift_beginAccess();
    v11 = *(v1 + 32);
    if (*(v11 + 16))
    {
      v12 = sub_25BA9266C(v7, v9);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }

      v15 = *(*(v11 + 56) + 8 * v12);
      swift_endAccess();
      if (*(v1 + 40))
      {
        v23 = v15;

        sub_25BAC481C(&v23, v16, v17);
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAA1B64();
        v22 = v20;
      }

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_14_15(v18);
        sub_25BAA1B64();
        v22 = v21;
      }

      ++v4;
      *(v22 + 16) = v19 + 1;
      *(v22 + 8 * v19 + 32) = v15;
    }

    else
    {

LABEL_13:
      swift_endAccess();

      ++v4;
    }
  }

  __break(1u);
}