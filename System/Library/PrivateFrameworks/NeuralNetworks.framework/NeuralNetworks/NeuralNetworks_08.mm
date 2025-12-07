_BYTE *storeEnumTagSinglePayload for ReductionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_25BB2CA2C(uint64_t a1)
{
  v3 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v10[2] = a1;
  v11 = v1;
  v5 = *(v3 + 56);
  v6 = sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v5(&v12, sub_25BB2CEC4, v10, v6, ObjectType, v3);
  v7 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_25BCBB6D0;
  *(v8 + 32) = v7;
  return result;
}

void sub_25BB2CB1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    v7 = MEMORY[0x25F876250](a1, a2 - a1);
    v9 = v8;
    v10 = sub_25BCB59FC();
    sub_25BB0D160(v7, v9);
    v11 = *(a4 + 64);
    ObjectType = swift_getObjectType();
    if (sub_25BC5D23C())
    {
      (*(v11 + 16))(&v18, ObjectType, v11);
      sub_25BAF99E8(v18);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_25BCBB6D0;
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      *(v13 + 32) = sub_25BCB6DDC();
    }

    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v14 = sub_25BCB672C();

    (*(v11 + 8))(&v17, ObjectType, v11);
    v15 = [a3 constantWithData:v10 shape:v14 dataType:sub_25BC6640C()];

    *a5 = v15;
  }

  else
  {
    __break(1u);
  }
}

double sub_25BB2CD00(void *a1)
{
  v2 = v1;
  v4 = sub_25BAF99E8(*(v1 + 40));
  v5 = sub_25BC6640C();
  v6 = *(v1 + 24);
  v7 = *(v2 + 32);
  sub_25BCB617C();
  v8 = sub_25BB2CEE0(v4, v5, v6, v7, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_25BCBB6D0;
  *(v9 + 32) = v8;
  return result;
}

uint64_t sub_25BB2CDCC(uint64_t a1)
{
  result = sub_25BB2CE7C(&qword_28154F720, type metadata accessor for InputOperation, &unk_25BCC42EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2CE24(uint64_t a1)
{
  result = sub_25BB2CE7C(&qword_27FBB4570, type metadata accessor for ConstantOperation, byte_25BCBB79C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2CE7C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_25BB2CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  v8 = sub_25BCB633C();

  v9 = [a5 placeholderWithShape:v7 dataType:a2 name:v8];

  return v9;
}

uint64_t sub_25BB2CF9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(v2 >> 13)
  {
    case 1u:
      if (!v0[1])
      {
        return 0xD00000000000001CLL;
      }

      sub_25BCB617C();
      return v1;
    case 2u:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_4_14();
      v6 = v7 | 4;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90]();
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_4_14();
      v6 = v5 + 18;
LABEL_5:
      v31 = v6;
LABEL_7:
      OUTLINED_FUNCTION_2_13();
      v3 = 11872;
      v4 = 0xE200000000000000;
      break;
    case 5u:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90]();
      OUTLINED_FUNCTION_2_13();
      v8 = MEMORY[0x25F876C90](0x657078650A202C60, 0xEE0020676E697463);
      OUTLINED_FUNCTION_1_14(v8, v9, v10, v11, v12, v13, v14, v15, v25, *v27, *&v27[4], v27[6], v2, v31);
      v16 = MEMORY[0x25F876C90](0x20646E6120, 0xE500000000000000);
      OUTLINED_FUNCTION_1_14(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28, v29, v30, BYTE1(v2) & 0x1F, v32);
      v3 = 0x6374616D206F7420;
      v4 = 0xEA00000000002E68;
      break;
    default:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90](0xD00000000000001BLL);
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_3_3();
      break;
  }

  MEMORY[0x25F876C90](v3, v4);
  return v31;
}

void sub_25BB2D1F8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_25BAD6FB0(a1, v4);
  type metadata accessor for BNNSExecutor();
  swift_initStackObject();
  sub_25BB2D2D8(v4);
  sub_25BB2D37C();
  sub_25BB2D608();
  if (!v1)
  {
    sub_25BB2DD70();
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_25BB2D2D8(uint64_t a1)
{
  sub_25BAD6FB0(a1, v5);
  type metadata accessor for BNNSExecutor.Context();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
  *(v3 + 16) = sub_25BCB614C();
  memcpy((v3 + 24), v5, 0xECuLL);
  sub_25BA9AC78(a1);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_25BB2D37C()
{
  sub_25BB2D2C8(v26);
  v0 = v26[11];
  sub_25BCB617C();
  sub_25BA9AC78(v26);
  result = sub_25BA9BEA0(v0);
  v25 = result;
  if (!result)
  {
  }

  if (result < 1)
  {
    goto LABEL_26;
  }

  v2 = 0;
  while (1)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x25F8779B0](v2, v0);
    }

    else
    {
      v3 = *(v0 + 8 * v2 + 32);
    }

    sub_25BB2D2C8(v26);
    v4 = v26[13];
    v5 = v26[14];
    v6 = sub_25BAC44E4();
    if (!*(v5 + 16))
    {

      goto LABEL_13;
    }

    v8 = sub_25BA9266C(v6, v7);
    v10 = v9;

    if (v10)
    {
      break;
    }

LABEL_13:
    v4 = v26[17];
    v12 = v26[18];
    v13 = sub_25BAC44E4();
    if (!*(v12 + 16))
    {

LABEL_19:
      v20 = sub_25BAC44E4();
      v19 = v21;
      goto LABEL_20;
    }

    v15 = sub_25BA9266C(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    v11 = *(*(v12 + 56) + 8 * v15);
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v11 >= *(v4 + 16))
    {
      goto LABEL_25;
    }

LABEL_17:
    v18 = v4 + 16 * v11;
    v20 = *(v18 + 32);
    v19 = *(v18 + 40);
    sub_25BCB617C();
LABEL_20:
    ++v2;
    sub_25BA9AC78(v26);

    v22 = sub_25BA928B4();
    [v22 lock];

    sub_25BA92920(v3, 0, 0, v26);
    [*(v3 + 224) unlock];

    v23 = v26[1];
    swift_beginAccess();
    v24 = swift_unknownObjectRetain();
    sub_25BB2E2B0(v24, v23, v20, v19);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v25 == v2)
    {
    }
  }

  v11 = *(*(v5 + 56) + 8 * v8);
  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v11 >= *(v4 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_17;
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
  return result;
}

uint64_t sub_25BB2D608()
{
  sub_25BB2D2C8(v85);
  v0 = v85[15];
  sub_25BCB617C();
  sub_25BA9AC78(v85);
  v1 = 0;
  v2 = v0 + 32;
  v3 = *(v0 + 16);
  v73 = v0;
  v69 = v3;
  v70 = v0 + 32;
LABEL_2:
  if (v1 == v3)
  {
  }

  if (v1 >= *(v0 + 16))
  {
    goto LABEL_57;
  }

  v4 = (v2 + 16 * v1);
  v6 = *v4;
  v5 = v4[1];
  v7 = v1;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v6, ObjectType, &protocol descriptor for BNNSOperationDispatchable))
  {
    swift_unknownObjectRetain();

    v64 = swift_getObjectType();
    v65 = (*(v5 + 24))(v64, v5);
    v67 = v66;
    sub_25BB0E2EC();
    swift_allocError();
    *v68 = v65;
    *(v68 + 8) = v67;
    *(v68 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v72 = v9;
  v71 = v7 + 1;
  v10 = swift_getObjectType();
  v11 = *(v5 + 32);
  swift_unknownObjectRetain_n();
  v76 = v5;
  v75 = v10;
  v12 = v11(v10, v5);
  v13 = 0;
  v79 = v12 & 0xC000000000000001;
  v80 = sub_25BA9BEA0(v12);
  v82 = v12;
  v77 = v12 & 0xFFFFFFFFFFFFFF8;
  v14 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v80 == v13)
    {

      v31 = swift_getObjectType();
      v32 = (*(v72 + 16))(v14, v31);
      if (v74)
      {

        swift_willThrow();
        goto LABEL_43;
      }

      v33 = v32;

      v34 = 0;
      v35 = v76;
      v81 = *(v33 + 16);
      v78 = v33;
      while (v81 != v34)
      {
        if (v34 >= *(v33 + 16))
        {
          goto LABEL_51;
        }

        v84 = *(v33 + 16 * v34 + 32);
        v36 = *(v87 + 16);
        sub_25BB2D2C8(v85);
        v37 = *(v35 + 72);
        swift_unknownObjectRetain();
        v38 = v37(v34, v75, v35);
        v40 = v38;
        v41 = v39;
        v42 = v86;
        if (*(v86 + 16))
        {
          v43 = v85[17];
          v44 = sub_25BA9266C(v38, v39);
          if (v45)
          {
            v46 = v44;

            v47 = *(*(v42 + 56) + 8 * v46);
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v47 >= *(v43 + 16))
            {
              goto LABEL_56;
            }

            v48 = v43 + 16 * v47;
            v40 = *(v48 + 32);
            v41 = *(v48 + 40);
            sub_25BCB617C();
          }
        }

        sub_25BA9AC78(v85);
        swift_beginAccess();
        swift_unknownObjectRetain();
        swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v36 + 16);
        *(v36 + 16) = 0x8000000000000000;
        v50 = sub_25BA9266C(v40, v41);
        if (__OFADD__(v49[2], (v51 & 1) == 0))
        {
          goto LABEL_52;
        }

        v52 = v50;
        v53 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4580, &qword_25BCBE488);
        if (sub_25BCB745C())
        {
          v54 = sub_25BA9266C(v40, v41);
          v33 = v78;
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_58;
          }

          v52 = v54;
        }

        else
        {
          v33 = v78;
        }

        if (v53)
        {
          swift_unknownObjectRelease();
          *(v49[7] + 16 * v52) = v84;
        }

        else
        {
          v49[(v52 >> 6) + 8] |= 1 << v52;
          v56 = (v49[6] + 16 * v52);
          *v56 = v40;
          v56[1] = v41;
          *(v49[7] + 16 * v52) = v84;
          v57 = v49[2];
          v29 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v29)
          {
            goto LABEL_54;
          }

          v49[2] = v58;
          sub_25BCB617C();
        }

        *(v36 + 16) = v49;

        swift_endAccess();
        swift_unknownObjectRelease();

        ++v34;
        v35 = v76;
      }

      swift_unknownObjectRelease_n();

      v0 = v73;
      v2 = v70;
      v1 = v71;
      v3 = v69;
      goto LABEL_2;
    }

    if (v79)
    {
      MEMORY[0x25F8779B0](v13, v82);
    }

    else
    {
      if (v13 >= *(v77 + 16))
      {
        goto LABEL_49;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v15 = sub_25BB2E080();
    if (!v15)
    {

      v85[0] = 0;
      v85[1] = 0xE000000000000000;
      sub_25BCB70FC();

      sub_25BB2D2C8(v85);
      v59 = sub_25BC60380(v75, v76);
      v61 = v60;
      sub_25BA9AC78(v85);
      MEMORY[0x25F876C90](v59, v61);

      MEMORY[0x25F876C90](96, 0xE100000000000000);
      sub_25BB0E2EC();
      swift_allocError();
      *v62 = 0xD000000000000027;
      *(v62 + 8) = 0x800000025BCDAB50;
      *(v62 + 16) = 0x2000;
      swift_willThrow();

LABEL_43:
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v17 = v15;
    v18 = v16;
    v83 = v13;
    v19 = sub_25BAC4018();
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v85[0] = v14;
    v20 = sub_25BAFEEB0(v19);
    if (__OFADD__(v14[2], (v21 & 1) == 0))
    {
      goto LABEL_50;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4578, &qword_25BCBE480);
    if (sub_25BCB745C())
    {
      v24 = sub_25BAFEEB0(v19);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_58;
      }

      v22 = v24;
    }

    v14 = v85[0];
    if (v23)
    {
      v26 = (*(v85[0] + 56) + 16 * v22);
      *v26 = v17;
      v26[1] = v18;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      *(v85[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v14[6] + 8 * v22) = v19;
      v27 = (v14[7] + 16 * v22);
      *v27 = v17;
      v27[1] = v18;
      swift_unknownObjectRelease();

      v28 = v14[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_53;
      }

      v14[2] = v30;
    }

    v13 = v83 + 1;
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
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BB2DD70()
{
  sub_25BB2D2C8(v32);
  v0 = v33;
  sub_25BCB617C();
  sub_25BA9AC78(v32);
  v2 = sub_25BA9BEA0(v0);
  v3 = 0;
  v34 = v0 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v2 == v3)
    {
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25F8779B0](v3, v0);
    }

    else
    {
      if (v3 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      v4 = *(v0 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      BYTE4(v23) = 9;
      sub_25BA97890("resolved(with:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorRepresentation.swift", 109, 2, 426, v1, v15, v16, v17, 0xD00000000000002BLL, 0x800000025BCDAAA0, v18[2], v18[3], v18[4], v18[5], v19, v20, v21, v22, v23, v24[0], v24[1]);
    }

    v5 = sub_25BB2E080();
    if (!v5)
    {
      break;
    }

    v7 = v5;
    v8 = v6;

    swift_unknownObjectRetain();
    v9 = sub_25BA928B4();
    [v9 lock];

    swift_beginAccess();
    sub_25BA9323C(v4 + 40, v32);
    if (!v32[105])
    {
      sub_25BA9323C(v4 + 40, v26);
      sub_25BA9323C(v26, v24);
      if (v25)
      {
        goto LABEL_21;
      }

      sub_25BA9BE3C(v24, v18);
      v10 = v20;
      v17 = v19;
      Strong = swift_weakLoadStrong();
      swift_unknownObjectRetain();
      sub_25BCB617C();
      if (Strong)
      {

        v27 = v7;
        v28 = v8;
        v29 = v17;
        v30 = v10;
        sub_25BA9BE3C(v18, v31);
        v12 = 1;
      }

      else
      {
        sub_25BA977E0(v18);
        v27 = v7;
        v28 = v8;
        v12 = 2;
        v29 = v17;
        v30 = v10;
      }

      v31[73] = v12;
      sub_25BA9778C(v26);
      swift_beginAccess();
      sub_25BA97834(&v27, v4 + 40);
      swift_endAccess();
    }

    sub_25BA9778C(v32);
    [*(v4 + 224) unlock];
    swift_unknownObjectRelease_n();

    ++v3;
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v14 = 0xD000000000000034;
  *(v14 + 8) = 0x800000025BCDAA60;
  *(v14 + 16) = 0x2000;
  swift_willThrow();
}

uint64_t sub_25BB2E080()
{
  sub_25BAD6FB0(v0 + 24, v16);
  v1 = v16[13];
  v2 = v16[14];
  v3 = sub_25BAC44E4();
  v5 = sub_25BB2E238(v3, v4, v1, v2);
  v7 = v6;

  if (!v7)
  {
    v8 = v16[17];
    v9 = v16[18];
    v10 = sub_25BAC44E4();
    v5 = sub_25BB2E238(v10, v11, v8, v9);
    v7 = v12;

    if (!v7)
    {
      v5 = sub_25BAC44E4();
      v7 = v13;
    }
  }

  sub_25BA9AC78(v16);
  swift_beginAccess();
  v14 = sub_25BAD7914(v5, v7, *(v0 + 16));
  swift_endAccess();

  return v14;
}

uint64_t sub_25BB2E178()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2E1D4()
{

  sub_25BA9AC78(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2E238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  result = sub_25BA9266C(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a4 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a3 + 16))
  {
    v9 = *(a3 + 16 * v8 + 32);
    sub_25BCB617C();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB2E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  v9 = sub_25BA9266C(a3, a4);
  if (__OFADD__(*(v17 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4580, &qword_25BCBE488);
  if (sub_25BCB745C())
  {
    v13 = sub_25BA9266C(a3, a4);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v12)
  {
    v15 = (*(v17 + 56) + 16 * v11);
    result = *v15;
    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
    sub_25BC1ACAC(v11, a3, a4, a1, a2, v17);
    sub_25BCB617C();
    result = 0;
  }

  *v4 = v17;
  return result;
}

uint64_t sub_25BB2E400(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 18))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 13) | (8 * (HIBYTE(*(a1 + 16)) & 0x10 | (*(a1 + 16) >> 4)))) ^ 0xFF;
      if (v2 >= 0xFA)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25BB2E454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (32 * (-a2 & 0x80) - (a2 << 13)) & 0xFF0F | (16 * ((-a2 >> 3) & 0xF));
    }
  }

  return result;
}

uint64_t Tensor.cumulativeSum(alongAxis:exclusive:reverse:)()
{
  OUTLINED_FUNCTION_6_16();
  if (!v3)
  {
    v46[56] = v2;
    v44[0] = sub_25BC8FACC();
    v44[1] = v34;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28(v35, v36, v37, v38, v39, v40, 73);
  }

  OUTLINED_FUNCTION_11_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_14(v4);

  sub_25BAAF074(sub_25BB2F490, v1);

  v46[55] = 0;
  OUTLINED_FUNCTION_1_15("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/CumulativeOps.swift");
  v47 = xmmword_25BCBE600;
  OUTLINED_FUNCTION_4_15(v5);
  type metadata accessor for CumulativeOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_10_7();
  v6 = OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_6(v6, v7, v8, 0, v9, v10, v11, v12, v41, v42, v43);
  OUTLINED_FUNCTION_12_7();
  sub_25BAA51C8(v46, v45);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v13 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v13, v14, v15, v16, v17, v18, v19, v20);

  sub_25BAA4AF4(v44);
  v21 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v21, v22, v23, v24, v25, v26, v27, v28);

  sub_25BAA4AF4(v44);
  v29 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v29);
  LOBYTE(v44[0]) = 1;
  v30 = OUTLINED_FUNCTION_7_10();
  sub_25BC0CBC8(v30);
  v31 = OUTLINED_FUNCTION_17_7();
  v32 = OUTLINED_FUNCTION_15_7(v31);
  OUTLINED_FUNCTION_14_2(v32);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v46);
  *v0 = v32;
  return result;
}

uint64_t sub_25BB2E70C(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 != 1)
  {

    Tensor.cumulativeSum(alongAxis:exclusive:reverse:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE50;
    *(v3 + 32) = v5;

    *(v3 + 40) = sub_25BAC42B0();
    *(v3 + 48) = v4;

    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BB2E84C(uint64_t a1, char a2, char a3, void (*a4)(_OWORD *, void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4588, &qword_25BCBE630);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE70;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  v16 = *(*(*(v14 + 16) + 152) + 16);
  if (!v16)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v15;
  *(v15 + 56) = -v16;
  *(v15 + 64) = v16 - 1;
  *(v15 + 72) = 1;
  if (!sub_25BAB74D0(a1, v15, 0, 4))
  {
    goto LABEL_9;
  }

  v26[1] = v14;
  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_7;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    *&v27[0] = a1;
    *(v27 + 8) = xmmword_25BCBE5F0;
    BYTE8(v27[1]) = 0;
    v28 = v8;
    LOBYTE(v29) = 4;
    v30 = 7;
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28(v19, v20, v21, v22, v23, v24, a7);
  }

  v29 = 0;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  sub_25BAA51C8(v27, v25);
  sub_25BB2F098(MEMORY[0x277D84F90], inited, v25, v26);
  sub_25BA9C2C8(v27);
  *&v27[0] = v26[0];
  a4(v27, a2 & 1, a3 & 1);
}

uint64_t Tensor.cumulativeProduct(alongAxis:exclusive:reverse:)()
{
  OUTLINED_FUNCTION_6_16();
  if (!v3)
  {
    v46[56] = v2;
    v44[0] = sub_25BC8FACC();
    v44[1] = v34;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28(v35, v36, v37, v38, v39, v40, 163);
  }

  OUTLINED_FUNCTION_11_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_14(v4);

  sub_25BAAF074(sub_25BB2F49C, v1);

  v46[55] = 0;
  OUTLINED_FUNCTION_1_15("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/CumulativeOps.swift");
  v47 = xmmword_25BCBE600;
  OUTLINED_FUNCTION_4_15(v5);
  type metadata accessor for CumulativeOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_10_7();
  v6 = OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_6(v6, v7, v8, 1, v9, v10, v11, v12, v41, v42, v43);
  OUTLINED_FUNCTION_12_7();
  sub_25BAA51C8(v46, v45);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v13 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v13, v14, v15, v16, v17, v18, v19, v20);

  sub_25BAA4AF4(v44);
  v21 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v21, v22, v23, v24, v25, v26, v27, v28);

  sub_25BAA4AF4(v44);
  v29 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v29);
  LOBYTE(v44[0]) = 1;
  v30 = OUTLINED_FUNCTION_7_10();
  sub_25BC0CBC8(v30);
  v31 = OUTLINED_FUNCTION_17_7();
  v32 = OUTLINED_FUNCTION_15_7(v31);
  OUTLINED_FUNCTION_14_2(v32);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v46);
  *v0 = v32;
  return result;
}

uint64_t sub_25BB2EC3C(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 != 1)
  {

    Tensor.cumulativeProduct(alongAxis:exclusive:reverse:)();
    static Tensor.* infix(_:_:)();
    Tensor.cumulativeSum(alongAxis:exclusive:reverse:)();

    static Tensor./ infix(_:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE50;
    *(v3 + 32) = v5;

    *(v3 + 40) = sub_25BAC42B0();
    *(v3 + 48) = v4;

    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BB2EE50@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, void (*a3)(uint64_t, void, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  v7 = *(*(*(*v4 + 16) + 152) + 16);
  if (-v7 > a1 || v7 <= a1)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[0] = a1;
    v25 = -1;
    v27 = 0;
    v28 = 0;
    v26 = v7;
    v29 = -1;
    v32 = 4;

    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  v34[55] = 0;
  OUTLINED_FUNCTION_1_15("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SortingOps.swift");
  v35 = v11;
  v13 = OUTLINED_FUNCTION_4_15(v12);
  v14(v13);
  swift_allocObject();

  v15 = OUTLINED_FUNCTION_3();
  v16 = a2(v15);
  sub_25BAA51C8(*(v6 + 16) + 168, v34);
  sub_25BAA51C8(v34, v33);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v24);

  v17 = v31;

  sub_25BAA4AF4(v24);
  sub_25BAA49B8();
  sub_25BAA4A5C(v24);

  v18 = v30;

  sub_25BAA4AF4(v24);
  v19 = type metadata accessor for TensorRepresentation();
  v20 = OUTLINED_FUNCTION_16_3(v19);
  LOBYTE(v24[0]) = 1;
  a3(v16, 0, v33, 0x100000000, v17, v18, v20);
  v21 = OUTLINED_FUNCTION_17_7();
  v22 = OUTLINED_FUNCTION_15_7(v21);
  OUTLINED_FUNCTION_14_2(v22);
  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v34);
  *a4 = v22;
  return result;
}

uint64_t sub_25BB2F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a2;
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
LABEL_13:
    v27 = a1;
    LOBYTE(v29) = 2;
    sub_25BAA4B48(&v27, &v29, v33, sub_25BACC614, v4);
    v14 = v13;

    sub_25BAA51C8(v33, &v27);
    v15 = type metadata accessor for TensorRepresentation();
    v16 = OUTLINED_FUNCTION_16_3(v15);
    ObjectType = swift_getObjectType();
    v18 = swift_unknownObjectRetain();
    LOBYTE(v29) = 1;
    sub_25BAA5BB4(v18, &v27, 0x100000000, v16, ObjectType, v14);
    v19 = OUTLINED_FUNCTION_17_7();
    v20 = OUTLINED_FUNCTION_15_7(v19);
    OUTLINED_FUNCTION_14_2(v20);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(a3);
    sub_25BA9C2C8(v33);
    sub_25BA9C2C8(v35);

    *a4 = v20;
    return result;
  }

  v10 = 1;
LABEL_7:
  if (v10 == *(a2 + 16))
  {
    v12 = sub_25BAA51C8(a3, v35);
    MEMORY[0x28223BE20](v12);
    v4 = v26;
    v26[2] = &v36;
    sub_25BAA51C8(v35, &v29);
    if (*(&v30 + 1))
    {
      v33[0] = v29;
      v33[1] = v30;
      v33[2] = v31;
      v34 = v32;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v27);

      sub_25BAA51C8(&v27, v33);
      sub_25BAA4AF4(&v27);
      if (*(&v30 + 1))
      {
        sub_25BA9C2C8(&v29);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v22 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    sub_25BA9C2C8(v33);
    sub_25BA9C2C8(v35);

    __break(1u);
  }

  v23 = 1;
LABEL_21:
  v35[0] = v23;
  v24 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v24);

  MEMORY[0x25F876C90](0x7372616C61637320, 0xED00002074756220);
  v35[0] = *(a2 + 16);
  v25 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v25);

  MEMORY[0x25F876C90](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_25BCB74CC("Fatal error", 11, 2, v27, v28, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorInitializers.swift", 107, 2, 224);
  __break(1u);
  return result;
}

uint64_t sub_25BB2F4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  v2 = v0[6];
  *(v1 + 32) = v0[5];
  *(v1 + 40) = v2;
  *(v1 + 48) = v0[7];

  return v1;
}

uint64_t sub_25BB2F524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BB2F588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 88);
  *(v1 + 32) = *(v0 + 80);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB2F5EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  v15 = *a7;
  v16 = *(a7 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7463656C6573, 0xE600000000000000);
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 88) = v16;
  v17 = a8[1];
  *(v10 + 96) = *a8;
  *(v10 + 112) = v17;
  *(v10 + 128) = a8[2];
  *(v10 + 138) = *(a8 + 42);
  *(v10 + 56) = a6;
  *(v10 + 64) = a9;
  *(v10 + 72) = a10;
  *(v10 + 80) = v15;
  return v10;
}

uint64_t sub_25BB2F690(uint64_t a1, uint64_t a2)
{
  v5 = sub_25BAC4018();
  v6 = v2 + 5;
  if (v5 != sub_25BAC4018())
  {
    v7 = *(a1 + 16);
    v6 = v2 + 6;
    if (sub_25BAC4018() != v7)
    {
      v8 = *(a1 + 16);
      if (sub_25BAC4018() != v8)
      {
        return 0;
      }

      v6 = v2 + 7;
    }
  }

  *v6 = a2;

  return 1;
}

uint64_t sub_25BB2F73C()
{

  sub_25BA9D148(*(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t sub_25BB2F784()
{
  sub_25BB2F73C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2F7FC()
{
  v1 = *(v0 + 64);
  sub_25BA9D8C4(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_25BB2F884(uint64_t a1)
{
  result = sub_25BB2F8C8(qword_27FBB4590, &unk_25BCBE698);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2F8C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SelectOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_25BB2F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_25BB2F9A0()
{

  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 32);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_25BB2FA20()
{
  sub_25BB2F9A0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2FA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_ypSbIegnd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BB2FABC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25BB2FAFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB2FB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3850, &qword_25BCBB820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = v0[3];
  *(v1 + 32) = v0[2];
  *(v1 + 40) = v2;
  sub_25BCB617C();

  v3 = 0;
  for (i = 2; ; ++i)
  {
    v5 = v0[4];
    if (!v5)
    {
      break;
    }

    v7 = v5[2];
    v6 = v5[3];
    v8 = *(v1 + 24);

    sub_25BCB617C();
    if (i - 1 >= v8 >> 1)
    {
      sub_25BAFD258();
      v1 = v10;
    }

    *(v1 + 16) = i;
    v9 = v1 + v3;
    *(v9 + 48) = v7;
    *(v9 + 56) = v6;
    v3 += 16;
    v0 = v5;
  }

  v11 = swift_allocObject();

  *(v11 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46A8, &qword_25BCBE970);
  result = swift_allocObject();
  *(result + 16) = sub_25BB30804;
  *(result + 24) = v11;
  return result;
}

uint64_t sub_25BB2FCC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    sub_25BB30D3C();
    if (v5 == 1)
    {
      sub_25BB30924(*(*(a1 + 16) + 16) - 1);
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a2 = v4;
  a2[1] = v5;
  return swift_endAccess();
}

uint64_t sub_25BB2FD50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25BB2FB70();

  *a1 = v2;
  return result;
}

uint64_t sub_25BB2FD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46B8, &qword_25BCBE988);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_25BCB7AAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB7A5C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_25BB30D98(v7);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_25BB2FD94(v11, a2, a3);
    (*(v9 + 8))(v11, v8);
  }

  sub_25BCB7A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46C0, &qword_25BCBE990);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46D0, &qword_25BCBE9A8);
    swift_allocObject();
    v14 = sub_25BB30BA0(v13);
    v15 = v14;
  }

  else
  {

    v16 = sub_25BBA894C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46C8, &qword_25BCBE998);
    swift_allocObject();
    v15 = sub_25BB30C84(v16);
  }

  MEMORY[0x28223BE20](v14);
  v17 = *(a3 + 16);
  v27[-2] = v17;
  v27[-1] = a2;
  MEMORY[0x28223BE20](v18);
  v27[-4] = v17;
  v27[-3] = sub_25BB30E00;
  v27[-2] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
  _s17RecursiveChildrenV9LabelPathCMa(255, v17, v21, v22);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_25BB301AC(sub_25BB30E08, &v27[-6], v15, v20, TupleTypeMetadata2, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v24);

  v27[0] = v25;
  sub_25BCB68CC();
  swift_getWitnessTable();
  return sub_25BCB686C();
}

void *sub_25BB30124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s17RecursiveChildrenV9LabelPathCMa(0, a6, a3, a4);
  v11 = sub_25BB2F958(a2, a3, a5);
  sub_25BB2BA90(a4, a1);

  sub_25BCB617C();
  return v11;
}

uint64_t sub_25BB301AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_25BCB73AC();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    swift_dynamicCast();
    swift_willThrowTypedImpl();
  }

  return v9;
}

uint64_t sub_25BB30264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v47 = a1;
  v4 = *(a1 + 16);
  v48 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_25BCB7AAC();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s17RecursiveChildrenV9LabelPathCMa(255, v4, v19, v20);
  v22 = (v15 + 8);
  v45 = (v11 + 32);
  v42 = (v11 + 8);
  v43 = (v6 + 8);
  while (1)
  {
    while (1)
    {
      swift_getTupleTypeMetadata2();
      v23 = sub_25BCB68CC();
      WitnessTable = swift_getWitnessTable();
      v25 = swift_getWitnessTable();
      MEMORY[0x25F8773F0](&v49, v23, WitnessTable, v25);
      if (!v49)
      {
        v31 = sub_25BCB6E8C();
        (*(*(v31 - 8) + 8))(&v49, v31);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB46B0, &qword_25BCBE978);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v33 = v41;
        v34 = 1;
        return __swift_storeEnumTagSinglePayload(v33, v34, 1, TupleTypeMetadata2);
      }

      v51 = v49;
      sub_25BB1D62C(&v50, v52);
      v26 = v51;
      sub_25BB1D62C(v52, &v53);
      v27 = *(v3 + 8);
      if (!v27 || (v27(&v53) & 1) != 0)
      {
        sub_25BB2BA90(&v53, &v51);
        sub_25BCB7A6C();

        sub_25BB2FD94(v18, v26, v47);

        (*v22)(v18, v46);
      }

      sub_25BB2BA90(&v53, &v51);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      (*v43)(v9, v48);
    }

    v28 = v21;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
    v29 = v44;
    v30 = *v45;
    (*v45)(v44, v9, v4);
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    if (swift_getDynamicType() != v48)
    {
      break;
    }

    (*v42)(v29, v4);
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v21 = v28;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB46B0, &qword_25BCBE978);
  v35 = swift_getTupleTypeMetadata2();
  v36 = *(v35 + 48);
  v51 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3858, &qword_25BCBE980);
  swift_getWitnessTable();
  v37 = sub_25BCB68DC();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v38 = v41;
  *v41 = v37;
  v30(v38 + v36, v29, v4);
  v33 = v38;
  v34 = 0;
  TupleTypeMetadata2 = v35;
  return __swift_storeEnumTagSinglePayload(v33, v34, 1, TupleTypeMetadata2);
}

void sub_25BB3080C(unint64_t a1)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF1360();
    v1 = v6;
  }

  v4 = *(v1 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_25BAC9924();
    *(v1 + 16) = v5;
    *v2 = v1;
  }
}

void sub_25BB30898(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF1454();
    v2 = v7;
  }

  v5 = *(v2 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v2 + 144 * a1;
    memcpy(a2, (v6 + 32), 0x88uLL);
    sub_25BC561F4((v6 + 176), v5 - 1 - a1, (v6 + 32));
    OUTLINED_FUNCTION_1_16();
  }
}

void sub_25BB30924(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BBF146C();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_25BAC9480((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_25BB309AC(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14B4();
    v2 = v7;
  }

  v5 = *(v2 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v2 + 240 * a1;
    memcpy(a2, (v6 + 32), 0xECuLL);
    sub_25BC56184((v6 + 272), v5 - 1 - a1, (v6 + 32));
    OUTLINED_FUNCTION_1_16();
  }
}

void sub_25BB30A38(unint64_t a1)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14CC();
    v1 = v3;
  }

  if (*(v1 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    sub_25BAB254C(v1 + 8 * a1 + 40);
    OUTLINED_FUNCTION_1_16();
  }
}

uint64_t sub_25BB30AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (v7)
  {
    swift_allocError();
    return (*(v9 + 32))(v15, v12, a6);
  }

  return result;
}

void *sub_25BB30BA0(uint64_t a1)
{
  v1[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46D8, &unk_25BCBE9B0);
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 32);
  v4 = sub_25BB30E7C(&qword_27FBB46E0, &qword_27FBB46D8, &unk_25BCBE9B0, MEMORY[0x277D84F38]);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v1[5] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

void *sub_25BB30C84(uint64_t a1)
{
  v1[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46E8, &unk_25BCBE9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = sub_25BB30E7C(&qword_27FBB46F0, &qword_27FBB46E8, &unk_25BCBE9C0, MEMORY[0x277D84F38]);
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v6;
  v1[5] = v4;
  return v1;
}

void sub_25BB30D3C()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BBF146C();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25BB30D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46B8, &qword_25BCBE988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB30E08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(a2 + 1, *a1, a1[1], a1 + 2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB30E7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25BB30EC4(void *a1@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14B4();
    v1 = v4;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    memcpy(a1, (v1 + 240 * v3 - 208), 0xECuLL);
    OUTLINED_FUNCTION_1_16();
  }

  else
  {
    __break(1u);
  }
}

void sub_25BB30F30()
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14CC();
    v0 = v3;
  }

  v2 = *(v0 + 16);
  if (v2)
  {
    *(v0 + 16) = v2 - 1;
    *v1 = v0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25BB30F88()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 16);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB30FF8()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 24);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB31060()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB310C0()
{
  v3 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for DifferentiableTensorOperation))
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  swift_getObjectType();
  OUTLINED_FUNCTION_1_17();
  v7 = *(v2 + 24);
  swift_unknownObjectRetain();
  v8 = v7(v1, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_25BB3115C()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 56);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3 & 1;
}

double sub_25BB311BC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 48);
  swift_unknownObjectRetain();
  v5(v8, ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = v8[1];
  *a1 = v8[0];
  a1[1] = v6;
  a1[2] = v9[0];
  result = *(v9 + 10);
  *(a1 + 42) = *(v9 + 10);
  return result;
}

uint64_t sub_25BB31258()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 40);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB312B8()
{
  v3 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v6 = dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for DifferentiableTensorOperation);
  if (v6)
  {
    v7 = v5;
    swift_getObjectType();
    OUTLINED_FUNCTION_1_17();
    v8 = *(v2 + 16);
    swift_unknownObjectRetain();
    v6 = v8(v1, v7);
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_25BB3135C(uint64_t a1)
{
  v3 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for DifferentiableTensorOperation);
  if (result)
  {
    v7 = v6;
    v8 = swift_getObjectType();
    v9 = *(v7 + 32);
    swift_unknownObjectRetain();
    v10 = v9(a1, v8, v7);
    swift_unknownObjectRelease();
    return v10 & 1;
  }

  return result;
}

uint64_t sub_25BB31404(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 80);
  swift_unknownObjectRetain();
  LOBYTE(a2) = v7(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return a2 & 1;
}

double sub_25BB314C4@<D0>(_OWORD *a1@<X8>)
{
  sub_25BB311BC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_25BB31514()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 64);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB3157C(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 88);
  swift_unknownObjectRetain();
  LOBYTE(a1) = v5(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t sub_25BB31658(uint64_t a1)
{
  v2 = v1;
  v23 = *(v2 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E40, &qword_25BCC88E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46F8, &qword_25BCBEA90);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_25BB31954(&v20);
    *&v10 = 0;
    *(&v10 + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    v20 = v10;
    MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDB070);
    swift_getObjectType();
    v7 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v7);

    MEMORY[0x25F876C90](0xD00000000000003ALL, 0x800000025BCDB090);
    v10 = v20;
    BYTE4(v19) = 9;
    sub_25BCB617C();
    sub_25BA97890("hashDescription(into:)", 22, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ControlOps.swift", 112, 2, 91, v8, v9, v10, *(&v10 + 1), v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1));
  }

  sub_25BA97060(&v20, &v10);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(&v10, v12);
  (*(v5 + 8))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(&v10);
}

uint64_t sub_25BB31830()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB3188C(uint64_t a1)
{
  result = sub_25BB31914(&qword_28154E3C0, byte_25BCBEA68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB318D0(uint64_t a1)
{
  result = sub_25BB31914(qword_28154E3C8, &unk_25BCBEA24);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB31914(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassthroughOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB31954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4700, &qword_25BCBEA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB319C0@<X0>(void *a1@<X0>, void (**a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v82 = a1;
  v85 = a3;
  v81 = a2;
  v6 = sub_25BCB5C9C();
  OUTLINED_FUNCTION_2();
  v84 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_50();
  v88 = v9;
  MEMORY[0x28223BE20](v10);
  v86 = &v67 - v11;
  v87 = sub_25BCB5BCC();
  OUTLINED_FUNCTION_2();
  v89 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50();
  v75 = v14;
  MEMORY[0x28223BE20](v15);
  v74 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4840, &qword_25BCBEAA0);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = (&v67 - v18);
  sub_25BCB5DDC();
  OUTLINED_FUNCTION_2();
  v76 = v20;
  v77 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v79 = sub_25BCB5E7C();
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = sub_25BCB5E6C();
  OUTLINED_FUNCTION_2();
  v78 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  sub_25BCB5C7C();
  v36 = a5;
  sub_25BCB5BEC();
  v37 = v82;
  v38 = v83;
  sub_25BB320E8(v37, v35);
  if (v38)
  {
    sub_25BCB5C8C();
    OUTLINED_FUNCTION_6_4();
    (*(v39 + 8))(v36);
  }

  else
  {
    v71 = v37;
    v72 = 0;
    v73 = v23;
    (*(v78 + 16))(v29, v35, v30);
    (*(v25 + 104))(v29, *MEMORY[0x277D253D8], v79);
    sub_25BCB5BFC();
    v41 = sub_25BCB5E5C();
    v42 = v80;
    sub_25BB3EE50(v81, v85, v41, v80);

    v43 = v77;
    if (__swift_getEnumTagSinglePayload(v42, 1, v77) == 1)
    {
      (*(v78 + 8))(v35, v30);

      return sub_25BB33D84(v42, &qword_27FBB4840, &qword_25BCBEAA0);
    }

    else
    {
      v44 = v36;
      v68 = v35;
      v69 = v30;
      v45 = v76;
      v46 = v73;
      (*(v76 + 32))(v73, v42, v43);
      v47 = *(sub_25BCB5DBC() + 16);
      v85 = v6;
      v70 = v44;
      if (v47)
      {
        OUTLINED_FUNCTION_3_13();
        v83 = *(v84 + 16);
        v48 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v67 = v45;
        v49 = v45 + v48;
        v81 = *(v84 + 72);
        v82 = (v84 + 16);
        v79 = v89 + 32;
        v80 = (v84 + 8);
        v50 = v74;
        do
        {
          v51 = OUTLINED_FUNCTION_7_11();
          v52 = v83;
          v83(v51);
          v52(v88, v46, v6);
          sub_25BCB5BDC();
          (*v80)(v46, v6);
          OUTLINED_FUNCTION_5_15();
          if (v54)
          {
            OUTLINED_FUNCTION_4_16(v53);
          }

          v55 = OUTLINED_FUNCTION_2_16();
          v56(v55, v50, v87);
          v49 += v81;
          --v47;
          v6 = v85;
        }

        while (v47);

        v45 = v76;
        v46 = v73;
      }

      else
      {
      }

      sub_25BCB5C3C();
      v57 = *(sub_25BCB5DCC() + 16);
      v58 = v89;
      if (v57)
      {
        OUTLINED_FUNCTION_3_13();
        v59 = *(v84 + 16);
        v60 = v45 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
        v82 = *(v84 + 72);
        v83 = v59;
        v81 = (v84 + 8);
        v79 = v45;
        v80 = (v58 + 32);
        v61 = v75;
        v84 += 16;
        do
        {
          v62 = OUTLINED_FUNCTION_7_11();
          v63 = v83;
          v83(v62);
          v63(v88, v46, v6);
          sub_25BCB5BDC();
          (*v81)(v46, v6);
          OUTLINED_FUNCTION_5_15();
          if (v54)
          {
            OUTLINED_FUNCTION_4_16(v64);
          }

          v65 = OUTLINED_FUNCTION_2_16();
          v66(v65, v61, v87);
          v60 += v82;
          --v57;
          v6 = v85;
        }

        while (v57);

        v45 = v76;
        v46 = v73;
      }

      else
      {
      }

      sub_25BCB5C6C();

      (*(v45 + 8))(v46, v77);
      return (*(v78 + 8))(v68, v69);
    }
  }
}

void sub_25BB320E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25BCB5E6C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v22[0] = 0;
  v11 = [a1 serializeToProtobufWithError_];
  v12 = v22[0];
  sub_25BCB5A1C();

  if (v12)
  {
    swift_willThrow();

    a1 = v12;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_8_12();
    sub_25BB33C70(v13, v14);
    OUTLINED_FUNCTION_8_12();
    sub_25BCB5CAC();
    if (!v21)
    {
      (*(v6 + 32))(a2, v10, v4);
      v17 = sub_25BCB614C();
      v18 = sub_25BB3242C(a2, v17);
      sub_25BB322B8(v18);

      v19 = OUTLINED_FUNCTION_8_12();
      sub_25BB0D160(v19, v20);
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_8_12();
  sub_25BB0D160(v15, v16);
}

uint64_t sub_25BB322B8(uint64_t a1)
{
  result = sub_25BCB5E5C();
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; v2 = v8)
  {
    v8 = v2;
LABEL_8:
    v6 &= v6 - 1;
    sub_25BCB617C();
    v9 = sub_25BCB5E4C();
    v10 = sub_25BB3A46C();
    v12 = v11;
    v13 = sub_25BCB5DDC();
    if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
    {
      sub_25BB32EB4();
    }

    (v10)(&v14, 0);

    result = v9(v15, 0);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB3242C(uint64_t a1, uint64_t a2)
{
  sub_25BCB617C();
  result = sub_25BCB5E5C();
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; v3 = v9)
  {
    v9 = v3;
LABEL_8:
    v7 &= v7 - 1;
    sub_25BCB617C();
    v15 = sub_25BCB5E4C();
    v10 = sub_25BB3A46C();
    v12 = v11;
    v13 = sub_25BCB5DDC();
    if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
    {
      sub_25BCB617C();
      sub_25BB325E8(v12, a2);
    }

    (v10)(v16, 0);

    result = v15(v17, 0);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      swift_bridgeObjectRelease_n();
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB325E8(uint64_t a1, uint64_t a2)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4720, &unk_25BCBEAC0);
  MEMORY[0x28223BE20](v97);
  v96 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v86 = &v78 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v8 = &v78 - v7;
  v80 = a1;
  v9 = sub_25BCB5D9C();
  if (*(a2 + 16))
  {
    sub_25BA9266C(v9, v10);
    if (v11)
    {
      sub_25BCB617C();
    }
  }

  sub_25BCB5DAC();
  v12 = sub_25BCB5D7C();
  v13 = *(v12 + 16);
  if (v13)
  {
    v107 = MEMORY[0x277D84F90];
    sub_25BB00AD4(0, v13, 0);
    v94 = v107;
    result = sub_25BBE144C();
    v17 = 0;
    v98 = 0;
    v95 = v12 + 64;
    v18 = a2 + 64;
    v81 = v15;
    v79 = v12 + 72;
    v102 = v8;
    v83 = v12;
    v82 = v13;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v12 + 32))
    {
      if ((*(v95 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_54;
      }

      if (*(v12 + 36) != v15)
      {
        goto LABEL_55;
      }

      v90 = 1 << result;
      v91 = result >> 6;
      v89 = v15;
      v87 = v16;
      v88 = v17;
      v19 = *(v97 + 48);
      v20 = *(v12 + 56);
      v21 = (*(v12 + 48) + 16 * result);
      v22 = *v21;
      v99 = v21[1];
      v23 = result;
      v24 = sub_25BCB5CDC();
      v25 = *(v24 - 8);
      v26 = *(v25 + 72);
      v93 = v23;
      v27 = *(v25 + 16);
      v28 = v86;
      v27(&v86[v19], v20 + v26 * v23, v24);
      v29 = v96;
      v92 = v22;
      v30 = v99;
      *v96 = v22;
      *(v29 + 1) = v30;
      v31 = *(v97 + 48);
      (*(v25 + 32))(&v29[v31], &v28[v19], v24);
      v32 = *(v85 + 48);
      v27(v102 + v32, &v29[v31], v24);
      v33 = v102;
      sub_25BCB617C();
      v101 = v32;
      v34 = *(sub_25BCB5CCC() + 16);

      v100 = v34;
      if (v34)
      {
        v35 = 0;
        while (1)
        {
          v36 = sub_25BCB5CBC();
          v38 = v37;
          v39 = *v37;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v38 = v39;
          if ((result & 1) == 0)
          {
            sub_25BCB617C();
            sub_25BBF1484();
            *v38 = v57;

            v39 = *v38;
          }

          if (v35 >= *(v39 + 16))
          {
            break;
          }

          v103 = v35 + 1;
          v104 = v36;
          sub_25BCB5E2C();
          v40 = sub_25BCB5E0C();
          v42 = v41;
          v43 = 1 << *(a2 + 32);
          if (v43 < 64)
          {
            v44 = ~(-1 << v43);
          }

          else
          {
            v44 = -1;
          }

          v45 = v44 & *(a2 + 64);
          v46 = (v43 + 63) >> 6;
          v47 = a2;
          sub_25BCB617C();
          v48 = 0;
          do
          {
            if (!v45)
            {
              while (1)
              {
                v49 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  break;
                }

                if (v49 >= v46)
                {
                  a2 = v47;

                  goto LABEL_28;
                }

                v45 = *(v18 + 8 * v49);
                ++v48;
                if (v45)
                {
                  v48 = v49;
                  goto LABEL_24;
                }
              }

              __break(1u);
              goto LABEL_49;
            }

LABEL_24:
            v45 &= v45 - 1;
            sub_25BCB617C();
            v50 = sub_25BCB64EC();
          }

          while ((v50 & 1) == 0);
          v105[0] = 46;
          v105[1] = 0xE100000000000000;
          MEMORY[0x28223BE20](v51);
          *(&v78 - 2) = v105;
          sub_25BCB617C();
          v52 = v98;
          result = sub_25BBB3568(0x7FFFFFFFFFFFFFFFLL, 1, sub_25BB33D64, (&v78 - 4), v40, v42);
          if (*(result + 16) < 2uLL)
          {
            goto LABEL_52;
          }

          v98 = v52;
          v53 = *(result + 64);
          v54 = *(result + 72);
          v55 = *(result + 80);
          v56 = *(result + 88);
          sub_25BCB617C();

          MEMORY[0x25F876C00](v53, v54, v55, v56);

          a2 = v47;

LABEL_28:
          sub_25BCB5E1C();
          v104(v106, 0);
          v33 = v102;
          v35 = v103;
          if (v103 == v100)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

LABEL_29:
      if (*(a2 + 16))
      {
        v58 = v92;
        v59 = v99;
        v60 = sub_25BA9266C(v92, v99);
        if (v61)
        {
          v62 = (*(a2 + 56) + 16 * v60);
          v58 = *v62;
          v59 = v62[1];
        }
      }

      else
      {
        v58 = v92;
        v59 = v99;
      }

      sub_25BCB617C();
      *v33 = v58;
      v33[1] = v59;
      sub_25BB33D84(v96, &qword_27FBB4720, &unk_25BCBEAC0);
      v63 = v94;
      v107 = v94;
      v65 = *(v94 + 16);
      v64 = *(v94 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_25BB00AD4((v64 > 1), v65 + 1, 1);
        v63 = v107;
      }

      *(v63 + 16) = v65 + 1;
      v66 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v94 = v63;
      sub_25BB33DD8(v33, v63 + v66 + *(v84 + 72) * v65);
      v12 = v83;
      v67 = 1 << *(v83 + 32);
      result = v93;
      if (v93 >= v67)
      {
        goto LABEL_56;
      }

      v68 = *(v95 + 8 * v91);
      if ((v68 & v90) == 0)
      {
        goto LABEL_57;
      }

      if (*(v83 + 36) != v89)
      {
        goto LABEL_58;
      }

      v69 = v68 & (-2 << (v93 & 0x3F));
      if (v69)
      {
        v70 = v93;
        sub_25BB33E48(v93, v89, v87 & 1);
        v67 = __clz(__rbit64(v69)) | v70 & 0x7FFFFFFFFFFFFFC0;
        v71 = v88;
      }

      else
      {
        v72 = v91 << 6;
        v73 = v91 + 1;
        v74 = (v79 + 8 * v91);
        while (v73 < (v67 + 63) >> 6)
        {
          v76 = *v74++;
          v75 = v76;
          v72 += 64;
          ++v73;
          if (v76)
          {
            sub_25BB33E48(v93, v89, v87 & 1);
            v67 = __clz(__rbit64(v75)) + v72;
            goto LABEL_45;
          }
        }

        sub_25BB33E48(v93, v89, v87 & 1);
LABEL_45:
        v71 = v88;
      }

      v16 = 0;
      v17 = v71 + 1;
      result = v67;
      v15 = v81;
      if (v17 == v82)
      {

        v77 = v94;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_49:

    v77 = MEMORY[0x277D84F90];
LABEL_50:
    sub_25BAFA648(v77);
    sub_25BCB5D8C();
  }

  return result;
}

uint64_t sub_25BB32EB4()
{
  v107 = sub_25BCB5E3C();
  v1 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_25BCB5D0C();
  v3 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4708, &qword_25BCBEAA8);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4710, &qword_25BCBEAB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v105 = v96 - v14;
  MEMORY[0x28223BE20](v15);
  v123 = v96 - v16;
  v17 = sub_25BCB5D5C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v102 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v121 = v96 - v21;
  v22 = sub_25BCB5D7C();
  v23 = 0;
  v25 = v22 + 64;
  v24 = *(v22 + 64);
  v111 = v22;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v116 = v18 + 16;
  v120 = (v18 + 32);
  v115 = *MEMORY[0x277D25290];
  v118 = (v18 + 8);
  v104 = (v3 + 32);
  v103 = (v1 + 8);
  v117 = v18;
  v96[0] = v18 + 40;
  v101 = (v3 + 8);
  v30 = v17;
  v109 = v22 + 64;
  v108 = v29;
  v96[1] = v0;
  if ((v27 & v24) != 0)
  {
LABEL_8:
    while (1)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = *(*(v111 + 48) + ((v23 << 10) | (16 * v32)) + 8);
      sub_25BCB617C();
      v34 = sub_25BCB5D6C();
      v35 = sub_25BB3A4C8();
      v37 = v36;
      v38 = sub_25BCB5CDC();
      if (!__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        break;
      }

      (v35)(v132, 0);

      v34(v133, 0);
LABEL_52:
      v25 = v109;
      v29 = v108;
      if (!v28)
      {
        goto LABEL_4;
      }
    }

    v98 = v35;
    v99 = v33;
    v39 = *(sub_25BCB5CCC() + 16);

    v125 = v39;
    if (!v39)
    {
LABEL_51:
      (v98)(v132, 0);

      v34(v133, 0);
      goto LABEL_52;
    }

    v40 = 0;
    v112 = v9;
    v126 = v12;
    v127 = v30;
    v124 = v34;
    v100 = v37;
    while (1)
    {
      v128 = sub_25BCB5CBC();
      v42 = v41;
      v43 = *v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v42 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BBF1484();
        v43 = v94;
        *v42 = v94;
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_56;
      }

      sub_25BCB5E2C();
      if (sub_25BCB5E0C() == 0x74736E6F63 && v45 == 0xE500000000000000)
      {
        break;
      }

      v47 = sub_25BCB789C();

      if (v47)
      {
        goto LABEL_22;
      }

LABEL_50:
      ++v40;
      v128(v131, 0);
      v12 = v126;
      v34 = v124;
      if (v125 == v40)
      {
        goto LABEL_51;
      }
    }

LABEL_22:
    v48 = sub_25BCB5DFC();
    if (*(v48 + 16) && (v49 = sub_25BA9266C(7102838, 0xE300000000000000), (v50 & 1) != 0))
    {
      (*(v117 + 16))(v123, *(v48 + 56) + *(v117 + 72) * v49, v127);
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = v122;
    v53 = v123;
    v54 = v127;
    __swift_storeEnumTagSinglePayload(v123, v51, 1, v127);
    v30 = v54;

    if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
    {
      v55 = v53;
      v56 = &qword_27FBB4710;
      v57 = &qword_25BCBEAB0;
    }

    else
    {
      v58 = v121;
      v119 = *v120;
      v119(v121, v53, v30);
      sub_25BCB5D2C();
      v59 = sub_25BCB5D1C();
      if (__swift_getEnumTagSinglePayload(v9, 1, v59) == 1)
      {
        (*v118)(v58, v30);
      }

      else
      {
        sub_25BB33CC8(v9, v52);
        v60 = v52;
        v61 = *(v59 - 8);
        v62 = (*(v61 + 88))(v60, v59);
        if (v62 == v115)
        {
          (*(v61 + 96))(v60, v59);
          v63 = v30;
          (*v104)(v113, v60, v114);
          strcpy(v130, "@model_path/");
          HIBYTE(v130[6]) = 0;
          v130[7] = -5120;
          v64 = sub_25BCB5CFC();
          MEMORY[0x25F876C90](v64);

          v65 = v106;
          sub_25BCB5D4C();
          sub_25BCB5CEC();
          v66 = v105;
          sub_25BCB5D3C();

          (*v103)(v65, v107);
          __swift_storeEnumTagSinglePayload(v66, 0, 1, v63);
          v67 = v63;
          v68 = sub_25BCB5DEC();
          v70 = v69;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v67);
          v110 = v68;
          if (EnumTagSinglePayload == 1)
          {
            sub_25BB33D84(v66, &qword_27FBB4710, &qword_25BCBEAB0);
            v72 = sub_25BA9266C(7102838, 0xE300000000000000);
            if (v73)
            {
              v74 = v72;
              swift_isUniquelyReferenced_nonNull_native();
              v129 = *v70;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4718, &qword_25BCBEAB8);
              sub_25BCB745C();
              v75 = v129;

              v77 = v126;
              v76 = v127;
              v119(v126, v75[7] + *(v117 + 72) * v74, v127);
              sub_25BCB747C();
              v78 = 0;
              *v70 = v75;
              v79 = v114;
              v9 = v112;
            }

            else
            {
              v78 = 1;
              v79 = v114;
              v9 = v112;
              v77 = v126;
              v76 = v127;
            }

            v88 = v121;
            __swift_storeEnumTagSinglePayload(v77, v78, 1, v76);
            sub_25BB33D84(v77, &qword_27FBB4710, &qword_25BCBEAB0);
            v30 = v76;
          }

          else
          {
            v119(v102, v66, v67);
            swift_isUniquelyReferenced_nonNull_native();
            v97 = v70;
            v129 = *v70;
            v80 = v129;
            v81 = sub_25BA9266C(7102838, 0xE300000000000000);
            if (__OFADD__(v80[2], (v82 & 1) == 0))
            {
              goto LABEL_57;
            }

            v83 = v81;
            v84 = v82;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4718, &qword_25BCBEAB8);
            if (sub_25BCB745C())
            {
              v85 = sub_25BA9266C(7102838, 0xE300000000000000);
              v87 = v114;
              v9 = v112;
              if ((v84 & 1) != (v86 & 1))
              {
                goto LABEL_59;
              }

              v83 = v85;
            }

            else
            {
              v87 = v114;
              v9 = v112;
            }

            v30 = v127;
            v89 = v129;
            if (v84)
            {
              (*(v117 + 40))(v129[7] + *(v117 + 72) * v83, v102, v127);
            }

            else
            {
              v129[(v83 >> 6) + 8] |= 1 << v83;
              v90 = (v89[6] + 16 * v83);
              *v90 = 7102838;
              v90[1] = 0xE300000000000000;
              v119((v89[7] + *(v117 + 72) * v83), v102, v30);
              v91 = v89[2];
              v92 = __OFADD__(v91, 1);
              v93 = v91 + 1;
              if (v92)
              {
                goto LABEL_58;
              }

              v89[2] = v93;
            }

            *v97 = v89;
            v88 = v121;
            v79 = v87;
          }

          v110(v130, 0);
          (*v101)(v113, v79);
          (*v118)(v88, v30);
        }

        else
        {
          (*v118)(v121, v30);
          (*(v61 + 8))(v60, v59);
          v9 = v112;
        }
      }

      v55 = v9;
      v56 = &qword_27FBB4708;
      v57 = &qword_25BCBEAA8;
    }

    sub_25BB33D84(v55, v56, v57);
    goto LABEL_50;
  }

LABEL_4:
  while (1)
  {
    v31 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
    }

    v28 = *(v25 + 8 * v31);
    ++v23;
    if (v28)
    {
      v23 = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

double sub_25BB33C70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_25BB33CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4708, &qword_25BCBEAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB33D84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25BB33DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB33E48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t Conv1D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t (*Conv1D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3A330;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB3A32C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BB33FB0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_80_1();
  v60 = v10;
  v61 = v11;
  v13 = *v12;
  v14 = *(v12 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4728, &unk_25BCBEAE0);
  *(OUTLINED_FUNCTION_68(v15) + 16) = 0;
  OUTLINED_FUNCTION_22_5();
  if (v53)
  {
    goto LABEL_34;
  }

  v59 = v16;
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_46_2();
  if (!OUTLINED_FUNCTION_35_2(v18))
  {
    OUTLINED_FUNCTION_108_1();
    v47 = 47;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_22_5();
  if (v53)
  {
    goto LABEL_34;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_19();
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_13_7(v19);
  if (!v21)
  {
LABEL_41:
    OUTLINED_FUNCTION_53_3();
    sub_25BCB617C();
    goto LABEL_42;
  }

  if (a4 != -1)
  {
    v22 = *(v20 + 32);
    if (a4)
    {
      v22 = *(v20 + 32) % a4;
    }

    if (v22)
    {
      OUTLINED_FUNCTION_2_17();
      v57 = 48;
      goto LABEL_31;
    }
  }

  if (!v13)
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();
    OUTLINED_FUNCTION_92_2();
    v63 = sub_25BB1AB60(0);
    LOBYTE(v14) = 0;
    LOBYTE(v24) = 1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_48_3();
  if (v53)
  {
LABEL_34:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
    goto LABEL_35;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_23_6();
  if (!v53)
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_106_1();
    v57 = 52;
LABEL_31:
    while (1)
    {
      OUTLINED_FUNCTION_10_5();
      for (i = 108; ; i = 102)
      {
        sub_25BCB74CC(v35, v36, v37, v38, v39, v40, i, 2, v57);
        __break(1u);
LABEL_37:
        if (v54 < 0)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_26:
        OUTLINED_FUNCTION_7_0();
LABEL_35:
        ;
      }

      OUTLINED_FUNCTION_13_7(v54);
      if (!v55)
      {
        break;
      }

      v56 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v56);

      OUTLINED_FUNCTION_83_1();
      v57 = 53;
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_99_1();
  if (!v53)
  {
    OUTLINED_FUNCTION_79_1();
    sub_25BAB3020(v49);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](a3 + 13, 0x800000025BCDB380);
    v50 = OUTLINED_FUNCTION_91_1();
    v51 = MEMORY[0x25F876F80](v50, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v51);

    v52 = OUTLINED_FUNCTION_37_2();
    MEMORY[0x25F876C90](v52, 0xE500000000000000);
    OUTLINED_FUNCTION_22_5();
    if (!v53)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v24 = (v14 >> 8) & 1;

  v63 = v13;
LABEL_20:

  OUTLINED_FUNCTION_22_5();
  if (v53)
  {
    goto LABEL_34;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  v58 = v24;
  OUTLINED_FUNCTION_46_2();
  v27 = *(v26 + 152);
  if (!v27[2])
  {
    goto LABEL_41;
  }

  v28 = v5;
  v29 = a2;
  v30 = a4;
  v31 = a3;
  v32 = v27[4];
  sub_25BCB617C();

  if (v27[2] <= 2uLL)
  {
    OUTLINED_FUNCTION_10_8();
LABEL_42:
    OUTLINED_FUNCTION_17_4();
LABEL_43:
    sub_25BADDD28(v41, v42, v43, v44, v45, v46, v47);
  }

  v33 = v27[6];

  *a5 = v28;
  *(a5 + 8) = v61;
  *(a5 + 9) = v60;
  *(a5 + 16) = v63;
  *(a5 + 24) = v14 & 1;
  *(a5 + 25) = v58;
  *(a5 + 26) = v13 != 0;
  *(a5 + 32) = v32;
  *(a5 + 40) = v33;
  *(a5 + 48) = a1;
  *(a5 + 56) = v29;
  *(a5 + 64) = v31;
  *(a5 + 72) = v30;
  *(a5 + 80) = v59;
  return result;
}

void *Conv1D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = *a1;
  v14 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_87_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4728, &unk_25BCBEAE0);
  v16 = OUTLINED_FUNCTION_68(v15);
  *(v16 + 16) = 0;
  __src[10] = v16;
  if (!OUTLINED_FUNCTION_35_2(*(v13 + 16)))
  {
    OUTLINED_FUNCTION_108_1();
    v48 = 93;
    goto LABEL_24;
  }

  v17 = OUTLINED_FUNCTION_43(*(v13 + 16));
  if (!v18)
  {
    goto LABEL_22;
  }

  if (a6 != -1)
  {
    v19 = *(v17 + 32);
    if (a6)
    {
      v19 = *(v17 + 32) % a6;
    }

    if (v19)
    {
      OUTLINED_FUNCTION_28_5();
      v64 = 94;
LABEL_20:
      OUTLINED_FUNCTION_10_5();
      goto LABEL_21;
    }
  }

  if (v14)
  {
    OUTLINED_FUNCTION_23_6();
    if (!v20)
    {
      OUTLINED_FUNCTION_18();
      v64 = 98;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
LABEL_21:
      OUTLINED_FUNCTION_69_1(v49, v50, v51, v52, v53, v54, v55, v56, v64, v65);
      __break(1u);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_99_1();
    if (!v20)
    {

      sub_25BCB70FC();
      v57 = OUTLINED_FUNCTION_39_5();
      MEMORY[0x25F876C90](v57);
      v58 = OUTLINED_FUNCTION_91_1();
      v59 = MEMORY[0x25F876F80](v58, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v59);

      v60 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v60, 0xE500000000000000);
      OUTLINED_FUNCTION_43(*(v13 + 16));
      if (!v61)
      {
        goto LABEL_22;
      }

      v62 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v62);

      OUTLINED_FUNCTION_83_1();
      LODWORD(v65) = 0;
      v64 = 99;
      goto LABEL_20;
    }
  }

  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_92_2();
  __src[0] = OUTLINED_FUNCTION_95_1(v21, v22, v23, v24, v25, v26, v27, v28);

  OUTLINED_FUNCTION_123_0(v29, v30, v31, v32, v33, v34, v35, v36, v63, v65, v66, v67, v13);
  v37 = OUTLINED_FUNCTION_81_1();
  if (!v38)
  {
LABEL_22:
    sub_25BCB617C();
    goto LABEL_23;
  }

  __src[4] = *(v37 + 32);

  v39 = *(v7 + 152);
  sub_25BCB617C();

  if (*(v39 + 16) <= 2uLL)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_23:
    OUTLINED_FUNCTION_17_4();
LABEL_24:
    sub_25BADDD28(v42, v43, v44, v45, v46, v47, v48);
  }

  v40 = *(v39 + 48);

  __src[5] = v40;
  __src[6] = a3;
  __src[7] = a4;
  __src[8] = a5;
  __src[9] = a6;
  return memcpy(a7, __src, 0x58uLL);
}

uint64_t Conv1D.initializeParameters(for:)(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v10 & v4))
  {
LABEL_13:
    OUTLINED_FUNCTION_59_1(v3);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v13, v14, v15, v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_54_2();
  v5 = *(v1 + 40);
  v6 = *(v1 + 72);
  v8 = *(v7 + 40);
  if (v6 != -1 && v8 % v6)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4(v20, v21, v22, v23, v24, v25, v26, v27, 158);
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v9 = swift_allocObject();
    v3 = OUTLINED_FUNCTION_74_1(v9, xmmword_25BCBAE90);
    v10 = v8 == 0x8000000000000000 && v6 == -1;
    if (v10)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v3 + 40) = v8 / v6;
    *(v3 + 48) = v5;

    sub_25BB1ABC8();

    if (v2)
    {
      OUTLINED_FUNCTION_1_2();
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_74_1(v12, xmmword_25BCBAE50);

      sub_25BB1ABC8();
    }
  }

  return result;
}

void Conv1D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4730, &qword_25BCBEAF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = sub_25BB398E8();
  OUTLINED_FUNCTION_44_2(&type metadata for Conv1D.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    LOBYTE(v14[0]) = v6;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_26_7(2);
    OUTLINED_FUNCTION_26_7(3);
    OUTLINED_FUNCTION_26_7(4);
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_60_1();
    sub_25BB33FB0(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_24_5();
    v13(v12);
    memcpy(v2, v14, 0x58uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB34D2C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB34DA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB34D2C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB34DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB34D78();
  *a1 = result;
  return result;
}

uint64_t sub_25BB34E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB34D7C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB34E28(uint64_t a1)
{
  v2 = sub_25BB398E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB34E64(uint64_t a1)
{
  v2 = sub_25BB398E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conv2D.weight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t sub_25BB34F2C@<X0>(void *a1@<X8>)
{
  result = Conv2D.weight.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BB34F68(uint64_t *a1)
{
  v9 = *a1;

  return Conv2D.weight.setter(&v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t Conv2D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

void Conv2D.bias.getter()
{
  OUTLINED_FUNCTION_73_1();
  if (!v1)
  {
    *v0 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v4 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v4);
}

void Conv2D.bias.setter()
{
  OUTLINED_FUNCTION_73_1();
  if (v1)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_93_2(v0, v10, v11, v12, v13);
      return;
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    goto LABEL_9;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_32();
    v10 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_9:
    OUTLINED_FUNCTION_98(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
    __break(1u);
  }
}

uint64_t (*Conv2D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3A330;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB3A32C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

void Conv2D.$bias.getter()
{
  OUTLINED_FUNCTION_78_1();
  if (v1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v1)
    {
      v2 = 0;
    }

    v5 = v2 | v3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *v0 = v4;
  *(v0 + 8) = v5;
}

uint64_t Conv2D.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 112);
  if (*(v1 + 16))
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = *(*v0 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (((v3 < 0) & *(v0 + 26)) == 1)
    {
      v5 = *(*(v0 + 16) + 32);
      v4 = (~v5 & 0xF000000000000007) != 0 && v5 < 0;
    }

    else
    {
      v4 = v3 >> 63;
    }
  }

  else
  {
    v4 = 0;
  }

  return OUTLINED_FUNCTION_89_1(v4, v1);
}

void *Conv2D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t x2_0@<X2>, uint64_t a7@<X3>, uint64_t a8@<X4>, uint64_t a6)
{
  v13 = *a1;
  v14 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_88_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4740, &qword_25BCBEB00);
  v16 = OUTLINED_FUNCTION_68(v15);
  *(v16 + 16) = 0;
  __src[14] = v16;
  v17 = *(*(v13 + 16) + 152);
  if (*(v17 + 16) != 4)
  {
    OUTLINED_FUNCTION_28_5();
    v57 = 317;
    goto LABEL_19;
  }

  v18 = *(v17 + 32);
  if (a6 != -1)
  {
    v19 = v18;
    if (a6)
    {
      v19 = v18 % a6;
    }

    if (v19)
    {
      OUTLINED_FUNCTION_28_5();
      v57 = 318;
      goto LABEL_19;
    }
  }

  if (v14)
  {
    OUTLINED_FUNCTION_23_6();
    if (!v20)
    {
      OUTLINED_FUNCTION_18();
      v57 = 322;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
      while (1)
      {
        OUTLINED_FUNCTION_69_1(v35, v36, v37, v38, v39, v40, v41, v42, v57, v58);
        __break(1u);
LABEL_21:
        v65 = 0;
        v66 = 0xE000000000000000;

        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCDB4C0);
        v43 = OUTLINED_FUNCTION_91_1();
        v44 = MEMORY[0x25F876F80](v43, MEMORY[0x277D83B88]);
        MEMORY[0x25F876C90](v44);

        MEMORY[0x25F876C90](0x20202020203D2120, 0xE90000000000005BLL);
        v45 = OUTLINED_FUNCTION_43(*(v13 + 16));
        if (!v46)
        {
          break;
        }

        v65 = *(v45 + 32);
        v47 = sub_25BCB77FC();
        v13 = v48;
        MEMORY[0x25F876C90](v47);

        OUTLINED_FUNCTION_83_1();
        LODWORD(v58) = 0;
        v57 = 323;
LABEL_19:
        OUTLINED_FUNCTION_10_5();
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_99_1();
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_92_2();
  __src[0] = OUTLINED_FUNCTION_96_1(v21, v22, v23, v24, v25, v26, v27, v28, v56, v58, v59, x2_0, a7, a8, v63, v64);

  v65 = v14;
  OptionalParameter.init(wrappedValue:)(&v65);
  v29 = OUTLINED_FUNCTION_81_1();
  if (!v30)
  {
LABEL_23:
    OUTLINED_FUNCTION_64_2();
    goto LABEL_24;
  }

  __src[4] = *(v29 + 32);
  if (v30 <= 2)
  {
    v66 = 0;
    v67 = 0;
    v65 = 2;
    OUTLINED_FUNCTION_27_5();
LABEL_24:
    OUTLINED_FUNCTION_107_2();
    sub_25BCB617C();
LABEL_25:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v49, v50, v51, v52, v53, v54, v55);
  }

  v31 = *(v29 + 48);

  v32 = *(v9 + 152);
  sub_25BCB617C();

  if (*(v32 + 16) <= 3uLL)
  {
    v66 = 0;
    v67 = 0;
    v65 = 3;
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_107_2();
    goto LABEL_25;
  }

  v33 = *(v32 + 56);

  __src[5] = v31;
  __src[6] = v33;
  OUTLINED_FUNCTION_112_1();
  __src[11] = a3;
  __src[12] = a4;
  __src[13] = a6;
  return memcpy(a5, __src, 0x78uLL);
}

uint64_t Conv2D.initializeParameters(for:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v16 & v3))
  {
LABEL_13:
    OUTLINED_FUNCTION_6_17();
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v19, v20, v21, v22, v23, v24, v25);
  }

  OUTLINED_FUNCTION_54_2();
  v4 = *(v1 + 104);
  v6 = *(v5 + 40);
  if (v4 != -1 && v6 % v4)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4(v26, v27, v28, v29, v30, v31, v32, v33, 382);
    __break(1u);
  }

  else
  {
    v36 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v7 = swift_allocObject();
    v8 = OUTLINED_FUNCTION_74_1(v7, xmmword_25BCBDF80);
    v16 = v6 == 0x8000000000000000 && v4 == -1;
    if (v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8[2].n128_u64[1] = v6 / v4;
    OUTLINED_FUNCTION_118_1(v8, v9, v10, v11, v12, v13, v14, v15, v34, v35, v36);
    sub_25BB1ABC8();

    if (v2)
    {
      OUTLINED_FUNCTION_1_2();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_74_1(v18, xmmword_25BCBAE50);

      sub_25BB1ABC8();
    }
  }

  return result;
}

uint64_t Conv2D.forward(_:)()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  OUTLINED_FUNCTION_115_1();
  if (v11)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    __break(1u);
    return result;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v34 = v1 & 0x7FFFFFFFFFFFFFFFLL;
  v25 = v10;
  v26 = *(v0 + 8);
  v27 = *(v0 + 24);
  v28 = *(v0 + 40);
  v29 = v5;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  Conv2D.bias.getter();
  sub_25BAB3020(v1);
  conv2D(_:weight:bias:stride:padding:dilation:groupCount:)(v35, &v34, &v24, v2, v3, v4, v5, v6, v7, v8, v23, v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v2, v3, v4);
}

void Conv2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4748, &qword_25BCBEB08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = sub_25BB399E4();
  OUTLINED_FUNCTION_44_2(&type metadata for Conv2D.CodingKeys, v5, v4);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12_8();
    v12 = *v13;
    v15[16] = 4;
    OUTLINED_FUNCTION_12_8();
    v11 = *v13;
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    v13[0] = v6;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_34_4();
    v7 = OUTLINED_FUNCTION_110_1();
    sub_25BB353C4(v13, v15, &v14, v7.n128_u64[0], v7.n128_u64[1], v12, *(&v12 + 1), v11, *(&v11 + 1), v8);
    v9 = OUTLINED_FUNCTION_24_5();
    v10(v9);
    memcpy(v2, v13, 0x78uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Conv2D.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4768, &qword_25BCBEB18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_4();
  v12 = sub_25BB399E4();
  OUTLINED_FUNCTION_122_2(&type metadata for Conv2D.CodingKeys, v13, v12);
  OUTLINED_FUNCTION_121_0();

  OUTLINED_FUNCTION_19_6();
  sub_25BCB779C();
  if (v10)
  {

    v14 = OUTLINED_FUNCTION_102_1();
    v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_119_1();
    if (a10)
    {
    }

    else
    {
      v16 = 0;
    }

    OUTLINED_FUNCTION_52_2(v16);
    OUTLINED_FUNCTION_19_6();
    sub_25BCB773C();

    OUTLINED_FUNCTION_101_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_51(&qword_27FBB4770);
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_70_2(5);
    sub_25BCB778C();
    v17 = OUTLINED_FUNCTION_102_1();
    v18(v17);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB3653C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB3658C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB3653C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB365BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB36588();
  *a1 = result;
  return result;
}

uint64_t sub_25BB365E4(uint64_t a1)
{
  v2 = sub_25BB399E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB36620(uint64_t a1)
{
  v2 = sub_25BB399E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB36660()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t TransposedConv1D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

void sub_25BB3681C()
{
  OUTLINED_FUNCTION_73_1();
  if (v1)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_93_2(v0, v10, v11, v12, v13);
      return;
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    goto LABEL_9;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_32();
    v10 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_9:
    OUTLINED_FUNCTION_98(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
    __break(1u);
  }
}

uint64_t (*TransposedConv1D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3698C;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB36988;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

void sub_25BB36994()
{
  OUTLINED_FUNCTION_78_1();
  if (v1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v1)
    {
      v2 = 0;
    }

    v5 = v2 | v3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *v0 = v4;
  *(v0 + 8) = v5;
}

uint64_t sub_25BB36A08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v56 = *(a1 + 9);
  v57 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4778, &qword_25BCBEB20);
  *(OUTLINED_FUNCTION_68(v14) + 16) = 0;
  OUTLINED_FUNCTION_82_2();
  if (v16)
  {
    goto LABEL_31;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  v17 = OUTLINED_FUNCTION_11_13(v15 & 0x7FFFFFFFFFFFFFFFLL);
  if (!(!v16 & v19))
  {
    goto LABEL_36;
  }

  if (a6 != -1)
  {
    v20 = *(v17 + 40);
    if (a6)
    {
      v20 = *(v17 + 40) % a6;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_2_17();
      v52 = 513;
      goto LABEL_40;
    }
  }

  v55 = v18;
  if (v12)
  {
    OUTLINED_FUNCTION_48_3();
    if (v16)
    {
      goto LABEL_31;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
LABEL_32:
      OUTLINED_FUNCTION_0_19();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_23_6();
    if (!v16)
    {
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_106_1();
      v52 = 517;
LABEL_40:
      OUTLINED_FUNCTION_10_5();
      v43 = 108;
      goto LABEL_35;
    }

    if ((v23 * a6) >> 64 != (v23 * a6) >> 63)
    {
      __break(1u);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v16)
    {
LABEL_25:
      sub_25BAB3020(v22);
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000003BLL, 0x800000025BCDB540);
      v33 = sub_25BCB617C();
      v34 = MEMORY[0x25F876F80](v33, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v34);

      v35 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v35, 0xE500000000000000);
      OUTLINED_FUNCTION_82_2();
      if (!v16)
      {
        if (v36 < 0)
        {
          OUTLINED_FUNCTION_11_13(v36 & 0x7FFFFFFFFFFFFFFFLL);
          if (!(!v16 & v19))
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_109_1();
          if (v16)
          {
            v51 = sub_25BCB77FC();
            MEMORY[0x25F876C90](v51);

            OUTLINED_FUNCTION_83_1();
            v52 = 518;
            goto LABEL_40;
          }

          __break(1u);
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_33:
        OUTLINED_FUNCTION_7_0();
        goto LABEL_34;
      }

LABEL_31:
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_3();
LABEL_34:
      v43 = 102;
LABEL_35:
      sub_25BCB74CC(v37, v38, v39, v40, v41, v42, v43, 2, v52);
      __break(1u);
      goto LABEL_36;
    }

    v24 = (v13 >> 8) & 1;

    v54 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();

    v54 = sub_25BB1AB60(0);
    LOBYTE(v13) = 0;
    LOBYTE(v24) = 1;
  }

  OUTLINED_FUNCTION_82_2();
  if (v16)
  {
    goto LABEL_31;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  v53 = a4;
  OUTLINED_FUNCTION_46_2();
  v27 = *(v26 + 152);
  if (v27[2] <= 1uLL)
  {
LABEL_36:
    OUTLINED_FUNCTION_10_8();
    sub_25BCB617C();
    goto LABEL_38;
  }

  v28 = a6;
  v29 = a5;
  v30 = v27[5];
  sub_25BCB617C();

  if (v27[2] <= 2uLL)
  {
    OUTLINED_FUNCTION_10_8();
LABEL_38:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v44, v45, v46, v47, v48, v49, v50);
  }

  v31 = v27[6];

  *a7 = v11;
  *(a7 + 8) = v57;
  *(a7 + 9) = v56;
  *(a7 + 16) = v54;
  *(a7 + 24) = v13 & 1;
  *(a7 + 25) = v24;
  *(a7 + 26) = v12 != 0;
  *(a7 + 32) = v30;
  *(a7 + 40) = v31;
  *(a7 + 48) = a3;
  *(a7 + 56) = v53;
  *(a7 + 64) = v29;
  *(a7 + 72) = v28;
  *(a7 + 80) = v55;
  return result;
}

void *TransposedConv1D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_87_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4778, &qword_25BCBEB20);
  v15 = OUTLINED_FUNCTION_68(v14);
  *(v15 + 16) = 0;
  __src[10] = v15;
  v16 = OUTLINED_FUNCTION_18_9(*(v12 + 16));
  if (!(!v18 & v17))
  {
    goto LABEL_21;
  }

  if (a6 != -1)
  {
    v19 = *(v16 + 40);
    if (a6)
    {
      v19 = *(v16 + 40) % a6;
    }

    if (v19)
    {
      OUTLINED_FUNCTION_28_5();
      v63 = 553;
      goto LABEL_25;
    }
  }

  if (v13)
  {
    OUTLINED_FUNCTION_23_6();
    if (!v18)
    {
      OUTLINED_FUNCTION_18();
      v63 = 557;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
      while (1)
      {
        OUTLINED_FUNCTION_69_1(v53, v54, v55, v56, v57, v58, v59, v60, v63, v64);
        __break(1u);
LABEL_27:
        v61 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v61);

        OUTLINED_FUNCTION_83_1();
        LODWORD(v64) = 0;
        v63 = 558;
LABEL_25:
        OUTLINED_FUNCTION_10_5();
      }
    }

    if ((v20 * a6) >> 64 != (v20 * a6) >> 63)
    {
      __break(1u);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v18)
    {
LABEL_17:

      sub_25BCB70FC();
      v42 = OUTLINED_FUNCTION_39_5();
      MEMORY[0x25F876C90](v42);
      v43 = sub_25BCB617C();
      v44 = MEMORY[0x25F876F80](v43, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v44);

      v45 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v45, 0xE500000000000000);
      OUTLINED_FUNCTION_18_9(*(v12 + 16));
      if (!v18 & v17)
      {
        OUTLINED_FUNCTION_109_1();
        if (v18)
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      goto LABEL_21;
    }
  }

  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  __src[0] = OUTLINED_FUNCTION_95_1(v21, v22, v23, v24, v25, v26, v27, v28);

  OUTLINED_FUNCTION_123_0(v29, v30, v31, v32, v33, v34, v35, v36, v62, v64, v65, v66, v12);
  v37 = *(v12 + 16);
  v38 = *(v37 + 152);
  if (*(v38 + 16) <= 1uLL)
  {
LABEL_21:
    OUTLINED_FUNCTION_6_17();
    sub_25BCB617C();
    goto LABEL_23;
  }

  __src[4] = *(v38 + 40);

  v39 = *(v37 + 152);
  sub_25BCB617C();

  if (*(v39 + 16) <= 2uLL)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_23:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v46, v47, v48, v49, v50, v51, v52);
  }

  v40 = *(v39 + 48);

  __src[5] = v40;
  __src[6] = a3;
  __src[7] = a4;
  __src[8] = a5;
  __src[9] = a6;
  return memcpy(a7, __src, 0x58uLL);
}

uint64_t TransposedConv1D.initializeParameters(for:)(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v11 & v4))
  {
LABEL_17:
    OUTLINED_FUNCTION_59_1(v3);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v14, v15, v16, v17, v18, v19, v20);
  }

  OUTLINED_FUNCTION_54_2();
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[9];
  v9 = *(v8 + 40);
  v10 = v9;
  if (v7)
  {
    if (v7 == -1)
    {
      goto LABEL_7;
    }

    v10 = v9 % v7;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4(v21, v22, v23, v24, v25, v26, v27, v28, 615);
    __break(1u);
    return result;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE90;
  *(v3 + 32) = v9;
  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v5 == 0x8000000000000000 && v7 == -1;
  if (v11)
  {
    goto LABEL_16;
  }

  *(v3 + 40) = v5 / v7;
  *(v3 + 48) = v6;

  sub_25BB1ABC8();

  if (v2)
  {
    OUTLINED_FUNCTION_1_2();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_74_1(v13, xmmword_25BCBAE50);

    sub_25BB1ABC8();
  }

  return result;
}

void TransposedConv1D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4780, &qword_25BCBEB28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = sub_25BB39A88();
  OUTLINED_FUNCTION_44_2(&type metadata for TransposedConv1D.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    LOBYTE(v16[0]) = v6;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_26_7(2);
    OUTLINED_FUNCTION_26_7(3);
    OUTLINED_FUNCTION_26_7(4);
    OUTLINED_FUNCTION_34_4();
    v7 = OUTLINED_FUNCTION_60_1();
    sub_25BB36A08(v7, v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_24_5();
    v15(v14);
    memcpy(v2, v16, 0x58uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void sub_25BB37928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v60 = v26;
  v61 = v25;
  v28 = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_2();
  v62 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v33);
  v35 = v53 - v34;
  v36 = *v24;
  v37 = *(v24 + 8);
  v66 = *(v24 + 9);
  v38 = v24[2];
  v39 = *(v24 + 24);
  v56 = *(v24 + 25);
  v57 = v39;
  v58 = *(v24 + 26);
  v40 = v24[7];
  v53[0] = v24[6];
  v53[1] = v38;
  v59 = v40;
  v41 = v24[8];
  v54 = v24[9];
  v55 = v41;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v60();
  v42 = v31;
  sub_25BCB7B6C();
  v63 = v36;
  v64 = v37;
  v65 = v66;
  sub_25BB39990();

  v43 = v61;
  sub_25BCB779C();
  if (v43)
  {

    (*(v62 + 8))(v35, v31);
  }

  else
  {
    v44 = v54;
    v45 = v55;
    v46 = v62;

    if (v58)
    {
    }

    else
    {
      v47 = 0;
    }

    v48 = v59;
    OUTLINED_FUNCTION_52_2(v47);
    OUTLINED_FUNCTION_19_6();
    sub_25BCB773C();

    OUTLINED_FUNCTION_70_2(2);
    OUTLINED_FUNCTION_72_1(v53[0], v49);
    OUTLINED_FUNCTION_70_2(3);
    OUTLINED_FUNCTION_72_1(v48, v50);
    OUTLINED_FUNCTION_70_2(4);
    OUTLINED_FUNCTION_72_1(v45, v51);
    OUTLINED_FUNCTION_70_2(5);
    OUTLINED_FUNCTION_72_1(v44, v52);
    (*(v46 + 8))(v35, v42);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB37BA8()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB37BF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB37BA8();
  *a1 = result;
  return result;
}

uint64_t sub_25BB37C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB37BF4();
  *a1 = result;
  return result;
}

uint64_t sub_25BB37C50(uint64_t a1)
{
  v2 = sub_25BB39A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB37C8C(uint64_t a1)
{
  v2 = sub_25BB39A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransposedConv2D.weight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t sub_25BB37D54@<X0>(void *a1@<X8>)
{
  result = TransposedConv2D.weight.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BB37D90(uint64_t *a1)
{
  v9 = *a1;

  return TransposedConv2D.weight.setter(&v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t TransposedConv2D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t sub_25BB37E84(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = *a1;

    Parameter.wrappedValue.setter(&v3);
  }

  else
  {
    v3 = *a1;
    return Parameter.wrappedValue.setter(&v3);
  }
}

void TransposedConv2D.bias.getter()
{
  OUTLINED_FUNCTION_73_1();
  if (!v1)
  {
    *v0 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v4 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v4);
}

void TransposedConv2D.bias.setter()
{
  OUTLINED_FUNCTION_73_1();
  if (v1)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_93_2(v0, v10, v11, v12, v13);
      return;
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    goto LABEL_9;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_32();
    v10 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_9:
    OUTLINED_FUNCTION_98(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
    __break(1u);
  }
}

uint64_t (*TransposedConv2D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3A330;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB3A32C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BB38180(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v14 = *a1;
      return Parameter.wrappedValue.setter(&v14);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    result = OUTLINED_FUNCTION_98(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
    return result;
  }

  v14 = *a1;

  Parameter.wrappedValue.setter(&v14);
}

void *sub_25BB38238(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_98(v1, v2, v3, 0xD000000000000037, v4, v5, v6, v7, 399, v8);
    __break(1u);
  }

  return result;
}

void TransposedConv2D.$bias.getter()
{
  OUTLINED_FUNCTION_78_1();
  if (v1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v1)
    {
      v2 = 0;
    }

    v5 = v2 | v3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *v0 = v4;
  *(v0 + 8) = v5;
}

uint64_t TransposedConv2D.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 128);
  if (*(v1 + 16))
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = *(*v0 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (((v3 < 0) & *(v0 + 26)) == 1)
    {
      v5 = *(*(v0 + 16) + 32);
      v4 = (~v5 & 0xF000000000000007) != 0 && v5 < 0;
    }

    else
    {
      v4 = v3 >> 63;
    }
  }

  else
  {
    v4 = 0;
  }

  return OUTLINED_FUNCTION_89_1(v4, v1);
}

uint64_t sub_25BB38378@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_80_1();
  v65 = v15;
  v66 = v16;
  v69 = v18;
  v70 = *v17;
  v19 = *(v17 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  *(OUTLINED_FUNCTION_68(v20) + 16) = 0;
  OUTLINED_FUNCTION_22_5();
  if (v22)
  {
    goto LABEL_32;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

  v68 = a2;
  v23 = OUTLINED_FUNCTION_11_13(v21 & 0x7FFFFFFFFFFFFFFFLL);
  if (!(!v22 & v25))
  {
    goto LABEL_37;
  }

  if (a9 != -1)
  {
    v26 = *(v23 + 40);
    if (a9)
    {
      v26 = *(v23 + 40) % a9;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_2_17();
      v60 = 730;
      goto LABEL_41;
    }
  }

  v64 = v24;
  if (v70)
  {
    OUTLINED_FUNCTION_48_3();
    if (v22)
    {
      goto LABEL_32;
    }

    if ((v27 & 0x8000000000000000) == 0)
    {
LABEL_33:
      OUTLINED_FUNCTION_0_19();
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_23_6();
    if (!v22)
    {
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_106_1();
      v60 = 734;
LABEL_41:
      OUTLINED_FUNCTION_10_5();
      v51 = 108;
      goto LABEL_36;
    }

    if ((v28 * a9) >> 64 != (v28 * a9) >> 63)
    {
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v22)
    {
LABEL_26:
      OUTLINED_FUNCTION_79_1();
      sub_25BAB3020(v39);
      sub_25BCB70FC();
      MEMORY[0x25F876C90](a6 + 13, 0x800000025BCDB540);
      v40 = OUTLINED_FUNCTION_91_1();
      v41 = MEMORY[0x25F876F80](v40, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v41);

      v42 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v42, 0xE500000000000000);
      OUTLINED_FUNCTION_22_5();
      if (!v22)
      {
        if (v43 < 0)
        {
          v44 = OUTLINED_FUNCTION_11_13(v43 & 0x7FFFFFFFFFFFFFFFLL);
          if (!(!v22 & v25))
          {
            goto LABEL_37;
          }

          if ((*(v44 + 40) * a9) >> 64 == (*(v44 + 40) * a9) >> 63)
          {
            v59 = sub_25BCB77FC();
            MEMORY[0x25F876C90](v59);

            OUTLINED_FUNCTION_83_1();
            v60 = 735;
            goto LABEL_41;
          }

          __break(1u);
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_34:
        OUTLINED_FUNCTION_7_0();
        goto LABEL_35;
      }

LABEL_32:
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_3();
LABEL_35:
      v51 = 102;
LABEL_36:
      sub_25BCB74CC(v45, v46, v47, v48, v49, v50, v51, 2, v60);
      __break(1u);
LABEL_37:
      OUTLINED_FUNCTION_31_3();
      sub_25BCB617C();
      goto LABEL_39;
    }

    v29 = v19;
    v30 = (v19 >> 8) & 1;

    v63 = v70;
  }

  else
  {
    OUTLINED_FUNCTION_25_6();
    swift_allocObject();
    OUTLINED_FUNCTION_92_2();
    v63 = sub_25BB1AB60(0);
    v29 = 0;
    LOBYTE(v30) = 1;
  }

  OUTLINED_FUNCTION_22_5();
  if (v22)
  {
    goto LABEL_32;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_46_2();
  v33 = *(v32 + 152);
  v34 = v33[2];
  if (v34 <= 1)
  {
    goto LABEL_37;
  }

  v62 = a3;
  if (v34 == 2)
  {
    goto LABEL_37;
  }

  v35 = v33[6];
  v61 = v33[5];
  sub_25BCB617C();

  if (v33[2] <= 3uLL)
  {
    OUTLINED_FUNCTION_31_3();
LABEL_39:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v52, v53, v54, v55, v56, v57, v58);
  }

  v36 = v29 & 1;
  v37 = v33[7];

  *a6 = v9;
  *(a6 + 8) = v66;
  *(a6 + 9) = v65;
  *(a6 + 16) = v63;
  *(a6 + 24) = v36;
  *(a6 + 25) = v30;
  *(a6 + 26) = v70 != 0;
  *(a6 + 32) = v61;
  *(a6 + 40) = v35;
  *(a6 + 48) = v37;
  *(a6 + 56) = a1;
  *(a6 + 64) = v68;
  *(a6 + 72) = v62;
  *(a6 + 80) = a4;
  *(a6 + 88) = a7;
  *(a6 + 96) = a8;
  *(a6 + 104) = a9;
  *(a6 + 112) = a5;
  *(a6 + 120) = v69;
  *(a6 + 128) = v64;
  return result;
}

void *TransposedConv2D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v11 = *a1;
  v13 = *a2;
  v14 = v11;
  TransposedConv2D.init(weight:bias:stride:padding:outputPadding:dilation:groupCount:)(&v14, &v13, 0, 0, __src, a3, a4, a5, a7, a8, a10);
  return memcpy(a9, __src, 0x88uLL);
}

void *TransposedConv2D.init(weight:bias:stride:padding:outputPadding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t x2_0@<X2>, uint64_t x3_0@<X3>, uint64_t x4_0@<X4>, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v16 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_88_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  v18 = OUTLINED_FUNCTION_68(v17);
  *(v18 + 16) = 0;
  __src[16] = v18;
  v19 = OUTLINED_FUNCTION_18_9(*(v15 + 16));
  if (!(!v21 & v20))
  {
    goto LABEL_21;
  }

  if (a8 != -1)
  {
    v22 = *(v19 + 40);
    if (a8)
    {
      v22 = *(v19 + 40) % a8;
    }

    if (v22)
    {
      OUTLINED_FUNCTION_28_5();
      v63 = 814;
      goto LABEL_28;
    }
  }

  if (v16)
  {
    OUTLINED_FUNCTION_23_6();
    if (!v21)
    {
      OUTLINED_FUNCTION_18();
      v63 = 818;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
LABEL_29:
      OUTLINED_FUNCTION_69_1(v53, v54, v55, v56, v57, v58, v59, v60, v63, v64);
      __break(1u);
      goto LABEL_30;
    }

    if ((v23 * a8) >> 64 != (v23 * a8) >> 63)
    {
      __break(1u);
LABEL_18:
      v72 = 0;
      v73 = 0xE000000000000000;

      sub_25BCB70FC();
      v39 = OUTLINED_FUNCTION_39_5();
      MEMORY[0x25F876C90](v39);
      v40 = OUTLINED_FUNCTION_91_1();
      v41 = MEMORY[0x25F876F80](v40, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v41);

      v42 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v42, 0xE500000000000000);
      v43 = OUTLINED_FUNCTION_43(*(v15 + 16));
      if (!v44)
      {
LABEL_30:
        OUTLINED_FUNCTION_64_2();
        goto LABEL_24;
      }

      v45 = *(v43 + 32);
      if ((v45 * a8) >> 64 != (v45 * a8) >> 63)
      {
        __break(1u);
        goto LABEL_21;
      }

      v72 = v45 * a8;
      v61 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v61);

      OUTLINED_FUNCTION_83_1();
      LODWORD(v64) = 0;
      v63 = 819;
LABEL_28:
      OUTLINED_FUNCTION_10_5();
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  __dsta = a5;
  v24 = a4;
  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();
  v25 = OUTLINED_FUNCTION_92_2();
  __src[0] = OUTLINED_FUNCTION_96_1(v25, v26, v27, v28, v29, v30, v31, v32, v62, v64, __dsta, x2_0, x3_0, x4_0, v70, v71);

  v72 = v16;
  OptionalParameter.init(wrappedValue:)(&v72);
  v33 = OUTLINED_FUNCTION_81_1();
  if (v34 <= 1)
  {
LABEL_21:
    v74 = 0;
    v72 = 1;
LABEL_23:
    v73 = 0;
    OUTLINED_FUNCTION_27_5();
LABEL_24:
    OUTLINED_FUNCTION_107_2();
    sub_25BCB617C();
    goto LABEL_26;
  }

  __src[4] = *(v33 + 40);
  if (v34 == 2)
  {
    v74 = 0;
    v72 = 2;
    goto LABEL_23;
  }

  v35 = *(v33 + 48);

  v36 = *(v11 + 152);
  sub_25BCB617C();

  if (*(v36 + 16) <= 3uLL)
  {
    v73 = 0;
    v74 = 0;
    v72 = 3;
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_107_2();
LABEL_26:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v46, v47, v48, v49, v50, v51, v52);
  }

  v37 = *(v36 + 56);

  __src[5] = v35;
  __src[6] = v37;
  OUTLINED_FUNCTION_112_1();
  __src[11] = a6;
  __src[12] = a7;
  __src[13] = a8;
  __src[14] = a3;
  __src[15] = v24;
  return memcpy(__dst, __src, 0x88uLL);
}

uint64_t TransposedConv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  v20 = OUTLINED_FUNCTION_68(v19);
  *(v20 + 16) = 0;
  if (a1 < 1)
  {
    OUTLINED_FUNCTION_18();
    v36 = 906;
    OUTLINED_FUNCTION_7_0();
    v35 = 0xD000000000000026;
LABEL_17:
    result = OUTLINED_FUNCTION_69_1(v28, v29, v30, v35, v31, v32, v33, v34, v36, v37);
    __break(1u);
    return result;
  }

  v21 = v20;
  if (a11 != -1 && (!a11 || a1 % a11))
  {
    OUTLINED_FUNCTION_20_4();
    v36 = 907;
LABEL_16:
    OUTLINED_FUNCTION_7_0();
    goto LABEL_17;
  }

  v39 = a8;
  if (a2 < 1 || a3 < 1)
  {
    OUTLINED_FUNCTION_20_4();
    v36 = 910;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  v24 = sub_25BB1AB04(v23);
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  if (a13)
  {
    v25 = sub_25BB1AB04(a13);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_66();
  }

  v26 = v25;

  *a9 = v24;
  *(a9 + 8) = 256;
  *(a9 + 16) = v26;
  *(a9 + 24) = 256;
  *(a9 + 26) = a13 != 0;
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = v39;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = 0;
  *(a9 + 128) = v21;
  return result;
}

uint64_t TransposedConv2D.initializeParameters(for:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v18 & v3))
  {
LABEL_17:
    OUTLINED_FUNCTION_6_17();
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v21, v22, v23, v24, v25, v26, v27);
  }

  OUTLINED_FUNCTION_54_2();
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 104);
  v8 = *(v7 + 40);
  v9 = v8;
  if (v6)
  {
    if (v6 == -1)
    {
      goto LABEL_7;
    }

    v9 = v8 % v6;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4(v28, v29, v30, v31, v32, v33, v34, v35, 926);
    __break(1u);
    return result;
  }

LABEL_7:
  v38 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBDF80;
  *(v10 + 32) = v8;
  if (!v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v4 == 0x8000000000000000 && v6 == -1;
  if (v18)
  {
    goto LABEL_16;
  }

  *(v10 + 40) = v4 / v6;
  OUTLINED_FUNCTION_118_1(v10, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38);
  sub_25BB1ABC8();

  if (v2)
  {
    OUTLINED_FUNCTION_1_2();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_74_1(v20, xmmword_25BCBAE50);

    sub_25BB1ABC8();
  }

  return result;
}

unint64_t sub_25BB392FC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB39358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB392FC();
  *a1 = result;
  return result;
}

uint64_t sub_25BB39388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB39348();
  *a1 = result;
  return result;
}

uint64_t sub_25BB393B0(uint64_t a1)
{
  v2 = sub_25BB39ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB393EC(uint64_t a1)
{
  v2 = sub_25BB39ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

void TransposedConv2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB47A0, &qword_25BCBEB40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = sub_25BB39ADC();
  OUTLINED_FUNCTION_44_2(&type metadata for TransposedConv2D.CodingKeys, v5, v4);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_12_8();
    v12 = OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_8();
    v11 = OUTLINED_FUNCTION_110_1();
    v14 = 4;
    OUTLINED_FUNCTION_12_8();
    v10 = OUTLINED_FUNCTION_110_1();
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    LOBYTE(v13[0]) = v6;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    v7 = OUTLINED_FUNCTION_34_4();
    sub_25BB38378(v12.n128_i64[0], v12.n128_i64[1], v11.n128_i64[0], v11.n128_i64[1], 0, v13, v10.n128_i64[0], v10.n128_i64[1], v7);
    v8 = OUTLINED_FUNCTION_24_5();
    v9(v8);
    memcpy(v2, v13, 0x88uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void TransposedConv2D.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB47B0, &qword_25BCBEB48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_4();
  v12 = sub_25BB39ADC();
  OUTLINED_FUNCTION_122_2(&type metadata for TransposedConv2D.CodingKeys, v13, v12);
  OUTLINED_FUNCTION_121_0();

  OUTLINED_FUNCTION_19_6();
  sub_25BCB779C();
  if (v10)
  {

    v14 = OUTLINED_FUNCTION_102_1();
    v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_119_1();
    if (a10)
    {
    }

    else
    {
      v16 = 0;
    }

    OUTLINED_FUNCTION_52_2(v16);
    OUTLINED_FUNCTION_19_6();
    sub_25BCB773C();

    OUTLINED_FUNCTION_101_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_51(&qword_27FBB4770);
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_70_2(5);
    sub_25BCB778C();
    v17 = OUTLINED_FUNCTION_102_1();
    v18(v17);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB398E8()
{
  result = qword_28154C258;
  if (!qword_28154C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C258);
  }

  return result;
}

unint64_t sub_25BB3993C()
{
  result = qword_28154BED0;
  if (!qword_28154BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BED0);
  }

  return result;
}

unint64_t sub_25BB39990()
{
  result = qword_28154BED8;
  if (!qword_28154BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BED8);
  }

  return result;
}

unint64_t sub_25BB399E4()
{
  result = qword_27FBB4750;
  if (!qword_27FBB4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4750);
  }

  return result;
}

uint64_t sub_25BB39A38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4758, &qword_25BCBEB10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BB39A88()
{
  result = qword_27FBB4788;
  if (!qword_27FBB4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4788);
  }

  return result;
}

unint64_t sub_25BB39ADC()
{
  result = qword_27FBB47A8;
  if (!qword_27FBB47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47A8);
  }

  return result;
}

uint64_t sub_25BB39B4C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_25BB39B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB39BF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_25BB39C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB39C9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25BB39CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MILOpset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB39E00(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB39EE0()
{
  result = qword_27FBB47B8;
  if (!qword_27FBB47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47B8);
  }

  return result;
}

unint64_t sub_25BB39F38()
{
  result = qword_27FBB47C0;
  if (!qword_27FBB47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47C0);
  }

  return result;
}

unint64_t sub_25BB39F90()
{
  result = qword_27FBB47C8;
  if (!qword_27FBB47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47C8);
  }

  return result;
}

unint64_t sub_25BB39FE8()
{
  result = qword_27FBB47D0;
  if (!qword_27FBB47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47D0);
  }

  return result;
}

unint64_t sub_25BB3A040()
{
  result = qword_27FBB47D8;
  if (!qword_27FBB47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47D8);
  }

  return result;
}

unint64_t sub_25BB3A098()
{
  result = qword_27FBB47E0;
  if (!qword_27FBB47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47E0);
  }

  return result;
}

unint64_t sub_25BB3A0F0()
{
  result = qword_27FBB47E8;
  if (!qword_27FBB47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47E8);
  }

  return result;
}

unint64_t sub_25BB3A148()
{
  result = qword_27FBB47F0;
  if (!qword_27FBB47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47F0);
  }

  return result;
}

unint64_t sub_25BB3A1A0()
{
  result = qword_27FBB47F8;
  if (!qword_27FBB47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47F8);
  }

  return result;
}

unint64_t sub_25BB3A1F8()
{
  result = qword_27FBB4800;
  if (!qword_27FBB4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4800);
  }

  return result;
}

unint64_t sub_25BB3A250()
{
  result = qword_28154C248;
  if (!qword_28154C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C248);
  }

  return result;
}

unint64_t sub_25BB3A2A8()
{
  result = qword_28154C250;
  if (!qword_28154C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C250);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_25BAB6D38(va, 0x100000000);
}

uint64_t OUTLINED_FUNCTION_96_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_25BAB6D38(va, 0x100000000);
}

__n128 OUTLINED_FUNCTION_101_1()
{
  result = *(v0 - 160);
  *(v0 - 96) = result;
  *(v0 - 65) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_119_1()
{
}

uint64_t OUTLINED_FUNCTION_120_1()
{
}

uint64_t OUTLINED_FUNCTION_122_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB7B6C();
}

uint64_t (*sub_25BB3A46C())()
{
  v1 = OUTLINED_FUNCTION_4_17();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_14(v2);
  *(v0 + 32) = sub_25BB3C420(v3, v4, v5);
  return sub_25BB3D704;
}

uint64_t (*sub_25BB3A4C8())()
{
  v1 = OUTLINED_FUNCTION_4_17();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_14(v2);
  *(v0 + 32) = sub_25BB3C4B8(v3, v4, v5);
  return sub_25BB3D704;
}

uint64_t (*sub_25BB3A524(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_25BB3C550(v8, a2, a3, a4);
  return sub_25BB3A5A0;
}

uint64_t (*sub_25BB3A5A4())()
{
  v1 = OUTLINED_FUNCTION_4_17();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_14(v2);
  *(v0 + 32) = sub_25BB3C5FC(v3, v4, v5);
  return sub_25BB3D704;
}

void sub_25BB3A600(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_25BB3A64C(SEL *a1)
{
  OUTLINED_FUNCTION_22_6();
  v19 = *(v1 + 24) + 64;
  v20 = *(v1 + 24);
  OUTLINED_FUNCTION_0_20();
  v6 = v5 & v4;
  v18 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = 0;
  while (2)
  {
    if (v6)
    {
      v21 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = OUTLINED_FUNCTION_11_14(v11 | (v8 << 6), v18, v19, v20);
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();

      v13 = 0;
      v14 = 0;
      while (v12 != v13)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F8779B0](v13, v2);
        }

        else
        {
          if (v13 >= *(v2 + 16))
          {
            goto LABEL_23;
          }

          v15 = *(v2 + 8 * v13 + 32);
        }

        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v16 = [*(v15 + 16) *a1];

        ++v13;
        v17 = __OFADD__(v14, v16);
        v14 += v16;
        if (v17)
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_15_8();

      v17 = __OFADD__(v21, v14);
      v9 = v21 + v14;
      if (!v17)
      {
        continue;
      }

      __break(1u);
LABEL_21:
    }

    else
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v18)
        {
          goto LABEL_21;
        }

        v6 = *(v19 + 8 * v10);
        ++v8;
        if (v6)
        {
          v21 = v9;
          v8 = v10;
          goto LABEL_8;
        }
      }

LABEL_25:
      __break(1u);
    }

    break;
  }
}

void sub_25BB3A7F0()
{
  OUTLINED_FUNCTION_22_6();
  v17 = *(v0 + 24) + 64;
  v18 = *(v0 + 24);
  OUTLINED_FUNCTION_0_20();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = 0;
  while (2)
  {
    if (v4)
    {
      v19 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v11 = OUTLINED_FUNCTION_11_14(v10 | (v7 << 6), v16, v17, v18);
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();

      v12 = 0;
      v13 = 0;
      while (v11 != v12)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](v12, v1);
        }

        else
        {
          if (v12 >= *(v1 + 16))
          {
            goto LABEL_23;
          }
        }

        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v14 = sub_25BCB198C();

        ++v12;
        v15 = __OFADD__(v13, v14);
        v13 += v14;
        if (v15)
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_15_8();

      v8 = v19 + v13;
      if (!__OFADD__(v19, v13))
      {
        continue;
      }

      __break(1u);
LABEL_21:
    }

    else
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v6)
        {
          goto LABEL_21;
        }

        v4 = *(v17 + 8 * v9);
        ++v7;
        if (v4)
        {
          v19 = v8;
          v7 = v9;
          goto LABEL_8;
        }
      }

LABEL_25:
      __break(1u);
    }

    break;
  }
}

uint64_t sub_25BB3A984()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    return *(v0 + 32);
  }

  v1 = MEMORY[0x25F879240]();
  v2 = v1 < 1;
  if (v1 >= 1)
  {
    result = v1 - 0x10000000;
  }

  else
  {
    result = 0;
  }

  *(v0 + 32) = result;
  v4 = v2;
  *(v0 + 40) = v4;
  *(v0 + 41) = 0;
  return result;
}

uint64_t sub_25BB3A9D4()
{
  if ((*(v0 + 57) & 1) == 0)
  {
    return *(v0 + 48);
  }

  v1 = MEMORY[0x25F879240]();
  v2 = v1 < 1;
  result = v1 & ~(v1 >> 63);
  *(v0 + 48) = result;
  v4 = v2;
  *(v0 + 56) = v4;
  *(v0 + 57) = 0;
  return result;
}

uint64_t sub_25BB3AA1C(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 256;
  *(v1 + 48) = 0;
  *(v1 + 56) = 256;
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4818, &qword_25BCBF510);
  sub_25BB3D5C8();
  *(v1 + 24) = sub_25BCB614C();
  return v1;
}

uint64_t sub_25BB3AA90()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_25BB3AAB8()
{
  sub_25BB3AA90();

  return swift_deallocClassInstance();
}

uint64_t *sub_25BB3AB10(NSUInteger a1, int a2)
{
  v3 = v2;
  v5 = NSRoundUpToMultipleOfPageSize(a1);
  v6 = *(v3 + 16);
  if (v5 >= [v6 maxBufferLength])
  {
LABEL_101:
    OUTLINED_FUNCTION_13_8();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_9_9();
    v136 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](v5 + 10, 0x800000025BCDB6F0);
    v136 = [v6 maxBufferLength];
    v96 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v96);

    MEMORY[0x25F876C90](3039330, 0xE300000000000000);
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_2_18();
    v104 = 171;
    goto LABEL_105;
  }

  v128 = v5;
  v7 = sub_25BCB18F0(v5, [v6 hasUnifiedMemory]);
  v5 = v7;
  v130 = v8;
  HIDWORD(v125) = a2;
  if ((a2 & 0xFE) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  v129 = v7;
  v131 = v9;
  if (v7 > 0x800000)
  {
    v10 = sub_25BB3A984();
    if ((v11 & 1) == 0 && [v6 currentAllocatedSize] >= v10)
    {
      v112 = v6;
      swift_beginAccess();
      v12 = *(v3 + 24) + 64;
      OUTLINED_FUNCTION_0_20();
      v118 = v14 & v13;
      v115 = v16;
      v116 = (v15 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v17 = 0;
      v114 = v12;
      while (1)
      {
        v18 = v118;
        if (!v118)
        {
          break;
        }

LABEL_14:
        v117 = v17;
        v118 = (v18 - 1) & v18;
        v20 = *(v115 + 48) + 24 * (__clz(__rbit64(v18)) | (v17 << 6));
        v6 = *v20;
        v21 = *(v20 + 8);
        v22 = *(v20 + 16);
        OUTLINED_FUNCTION_20_5();
        v23 = *(v3 + 24);
        if (*(v23 + 16) && (v24 = sub_25BAFEF78(v6, v21, v22), (v25 & 1) != 0))
        {
          v26 = (*(v23 + 56) + 24 * v24);
          v27 = *v26;
          v28 = v26[2];
          swift_endAccess();
          v29 = MEMORY[0x277D84F90];
          v133 = MEMORY[0x277D84F90];
          v30 = sub_25BA9BEA0(v27);
          v123 = v6;
          HIDWORD(v111) = v21;
          v127 = v27;
          v113 = v28;
          if (v30)
          {
            v31 = v30;
            if (v30 < 1)
            {
              goto LABEL_100;
            }

            v32 = v27;
            v33 = v27 & 0xC000000000000001;
            swift_retain_n();

            v34 = 0;
            v35 = MEMORY[0x277D84F90];
            do
            {
              if (v33)
              {
                v36 = MEMORY[0x25F8779B0](v34, v32);
              }

              else
              {
                v36 = *(v32 + 8 * v34 + 32);
              }

              if ([*(v36 + 16) usedSize] || !sub_25BCB19DC())
              {

                MEMORY[0x25F876F40](v37);
                if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_25BCB67AC();
                }

                sub_25BCB680C();

                v35 = v133;
              }

              else
              {
              }

              ++v34;
              v32 = v127;
            }

            while (v31 != v34);

            v29 = MEMORY[0x277D84F90];
            v6 = v123;
          }

          else
          {

            v35 = v29;
          }

          v136 = v29;
          v124 = sub_25BA9BEA0(v35);
          v38 = 0;
          v121 = v35 + 32;
          v122 = v35 & 0xC000000000000001;
          v9 = v131;
          v39 = v35;
          v119 = v35;
          v120 = v3;
          while (v38 != v124)
          {
            v5 = v35 & 0xC000000000000001;
            sub_25BAB4D78(v38, v122 == 0, v39);
            if (v122)
            {
              MEMORY[0x25F8779B0](v38, v39);
            }

            else
            {
            }

            v40 = __OFADD__(v38++, 1);
            if (v40)
            {
              goto LABEL_94;
            }

            sub_25BCB723C();
            v6 = v136[2];
            sub_25BCB728C();
            sub_25BCB729C();
            sub_25BCB725C();
            v41 = v136;
            v42 = v136[2];
            v5 = v42 - 1;
            sub_25BC16CFC(v42 - 1, v136);
            v44 = v43;
            v45 = v42 - 2;
            while (v5 >= 1)
            {
              if (v45 < -1)
              {
                __break(1u);
LABEL_90:
                __break(1u);
LABEL_91:
                __break(1u);
LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              v6 = v45 / 2;
              if (v45 / 2 >= v41[2])
              {
                goto LABEL_90;
              }

              v46 = sub_25BCB198C();
              if (sub_25BCB198C() >= v46)
              {
                break;
              }

              if (v6 >= v41[2])
              {
                goto LABEL_91;
              }

              v47 = v41[v6 + 4];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v41 = sub_25BC1B13C();
                v136 = v41;
              }

              if (v5 >= v41[2])
              {
                goto LABEL_92;
              }

              v41[v5 + 4] = v47;

              sub_25BCB725C();
              v45 = v6 - 1;
              v41 = v136;
              v5 = v6;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_25BC1B13C();
              v136 = v41;
            }

            v6 = v123;
            if (v5 < 0)
            {
              goto LABEL_95;
            }

            if (v5 >= v41[2])
            {
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }

            v41[v5 + 4] = v44;

            sub_25BCB725C();

            v39 = v35;
            v3 = v120;
            v5 = v129;
            v9 = v131;
          }

          v6 = v136;
          OUTLINED_FUNCTION_5_16();
          swift_isUniquelyReferenced_nonNull_native();
          v132 = *(v3 + 24);
          sub_25BC19ED8();
          *(v3 + 24) = v132;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v12 = v114;
        v17 = v117;
      }

      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_93;
        }

        if (v19 >= v116)
        {
          break;
        }

        v18 = *(v12 + 8 * v19);
        ++v17;
        if (v18)
        {
          v17 = v19;
          goto LABEL_14;
        }
      }

      v6 = v112;
    }
  }

  v48 = v6;
  [v6 heapBufferSizeAndAlignWithLength:v128 options:sub_25BC9DF1C(v9)];
  v50 = v49;
  OUTLINED_FUNCTION_20_5();
  v51 = OUTLINED_FUNCTION_1_18();
  v54 = sub_25BB3EF0C(v51, v52, v9, v53);
  if (!v54)
  {
    swift_endAccess();
LABEL_61:
    v57 = v131;
    goto LABEL_62;
  }

  v55 = v54;
  swift_endAccess();
  sub_25BB3BEAC(v55);
  v6 = v56;

  v57 = v131;
  if (!v6)
  {
    goto LABEL_62;
  }

  if ([*(v6 + 16) maxAvailableSizeWithAlignment_] < v128)
  {

    goto LABEL_62;
  }

  swift_beginAccess();
  v84 = sub_25BB3A524(&v136, v5, v130 & 1, v131);
  if (!*v85)
  {
    (v84)(&v136, 0);
    swift_endAccess();

    v5 = v129;
    goto LABEL_61;
  }

  v62 = sub_25BB3B7E8();
  (v84)(&v136, 0);
  swift_endAccess();

  v5 = v129;
  v57 = v131;
  if (v62)
  {
    if ((v125 & 0xFE00000000) != 0)
    {
      v86 = 48;
    }

    else
    {
      v86 = 0;
    }

    v48 = [*(v62 + 16) newBufferWithLength:a1 options:v86];
    OUTLINED_FUNCTION_5_16();
    swift_isUniquelyReferenced_nonNull_native();
    v135 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    v87 = OUTLINED_FUNCTION_1_18();
    sub_25BAFEF78(v87, v88, v131);
    OUTLINED_FUNCTION_19_7();
    if (!v40)
    {
      v68 = v89;
      v91 = v90;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
      v78 = v135;
      if (OUTLINED_FUNCTION_21_6(v92))
      {
        v93 = OUTLINED_FUNCTION_1_18();
        v95 = sub_25BAFEF78(v93, v94, v131);
        if ((v91 & 1) != (v71 & 1))
        {
LABEL_103:
          sub_25BCB795C();
          __break(1u);
          goto LABEL_104;
        }

        v68 = v95;
      }

      *(v3 + 24) = v135;
      if (v91)
      {
        goto LABEL_76;
      }

      v82 = MEMORY[0x277D84F90];
      goto LABEL_75;
    }

    goto LABEL_99;
  }

LABEL_62:
  v58 = sub_25BB3A9D4();
  if ((v59 & 1) == 0)
  {
    v6 = v58;
    sub_25BB3A64C(&selRef_size);
    if (__OFADD__(v60, v5))
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if (v60 + v5 >= v6)
    {
LABEL_104:
      OUTLINED_FUNCTION_13_8();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_9_9();
      v136 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](v5 + 10, 0x800000025BCDB6F0);
      v136 = [v48 maxBufferLength];
      v109 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v109);

      MEMORY[0x25F876C90](3039330, 0xE300000000000000);
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_2_18();
      v104 = 194;
LABEL_105:
      sub_25BA97890(v97, v98, v99, v100, v101, v102, v104, v103, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
    }
  }

  v61 = [objc_allocWithZone(MEMORY[0x277CD6E48]) init];
  [v61 setType_];
  [v61 setCpuCacheMode_];
  [v61 setStorageMode_];
  [v61 setHazardTrackingMode_];
  [v61 setSize_];
  v6 = [v48 newHeapWithDescriptor_];

  if (!v6)
  {
    OUTLINED_FUNCTION_13_8();
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000027, 0x800000025BCDB7D0);
    sub_25BB3A64C(&selRef_size);
    v136 = v105;
    v106 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v106);

    MEMORY[0x25F876C90](0x7720666F202C6062, 0xEE00602068636968);
    sub_25BB3A64C(&selRef_usedSize);
    v136 = v107;
    v108 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v108);

    MEMORY[0x25F876C90](0xD00000000000002FLL, 0x800000025BCDB800);
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_2_18();
    v104 = 202;
    goto LABEL_105;
  }

  type metadata accessor for MPSHeap();
  v62 = swift_allocObject();
  *(v62 + 16) = v6;
  if ((v125 & 0xFE00000000) != 0)
  {
    v63 = 48;
  }

  else
  {
    v63 = 0;
  }

  v48 = [v6 newBufferWithLength:a1 options:v63];
  OUTLINED_FUNCTION_5_16();
  swift_isUniquelyReferenced_nonNull_native();
  v134 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  v64 = OUTLINED_FUNCTION_1_18();
  sub_25BAFEF78(v64, v65, v57);
  OUTLINED_FUNCTION_19_7();
  if (v40)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v68 = v66;
  v69 = v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
  v78 = v134;
  if ((OUTLINED_FUNCTION_21_6(v70) & 1) == 0)
  {
    goto LABEL_73;
  }

  v79 = OUTLINED_FUNCTION_1_18();
  v81 = sub_25BAFEF78(v79, v80, v131);
  if ((v69 & 1) != (v71 & 1))
  {
    goto LABEL_103;
  }

  v68 = v81;
LABEL_73:
  *(v3 + 24) = v134;
  if ((v69 & 1) == 0)
  {
    v82 = MEMORY[0x277D84F90];
LABEL_75:
    sub_25BC1ADB8(v68, v5, v130 & 1, v131, v82, sub_25BB3D6FC, 0, v78);
  }

LABEL_76:
  sub_25BC16AE8(v62, v71, v72, v73, v74, v75, v76, v77, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  swift_endAccess();

  return v48;
}

uint64_t sub_25BB3B7E8()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    sub_25BB3BF28();
    return v7;
  }

  if (!v1)
  {
    return v1;
  }

  sub_25BC16CFC(0, *v0);
  v1 = v2;
  sub_25BB3BF28();
  v4 = v3;
  v5 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v5;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C();
    v5 = result;
    *v0 = result;
  }

  if (*(v5 + 16))
  {
    *(v5 + 32) = v4;

    sub_25BCB725C();
    sub_25BB3C00C(0, *(*v0 + 16));
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB3B8E4()
{
  strcpy(v28, "MPSAllocator");
  BYTE5(v28[1]) = 0;
  HIWORD(v28[1]) = -5120;
  sub_25BCB70FC();

  result = swift_beginAccess();
  v2 = 0;
  v3 = 0;
  v4 = *(v0 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + 24 * (v10 | (v9 << 6))) + 16);
    v12 = __OFADD__(v3, v11);
    v3 += v11;
    if (v12)
    {
      __break(1u);
LABEL_13:
      sub_25BCB77FC();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      sub_25BCB70FC();

      sub_25BB3A64C(&selRef_size);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      sub_25BCB70FC();

      sub_25BB3A64C(&selRef_usedSize);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      sub_25BCB70FC();

      sub_25BB3A7F0();
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      MEMORY[0x25F876C90](0x7370616548090ALL, 0xE700000000000000);
      v13 = *(v0 + 24) + 64;
      OUTLINED_FUNCTION_0_20();
      v16 = v15 & v14;
      v18 = (v17 + 63) >> 6;
      v27 = v19;
      result = sub_25BCB617C();
      v20 = 0;
      if (!v16)
      {
        goto LABEL_15;
      }

      do
      {
        v21 = v20;
LABEL_19:
        v22 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v23 = *(*(v27 + 48) + 24 * (v22 | (v21 << 6)) + 16);

        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCDB680);
        v24 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v24);

        MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDB6A0);
        v25 = sub_25BC9DFF4(v23);
        MEMORY[0x25F876C90](v25);

        MEMORY[0x25F876C90](96, 0xE100000000000000);
        MEMORY[0x25F876C90](0, 0xE000000000000000);

        MEMORY[0x25F876C90](30752, 0xE200000000000000);
        v26 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v26);

        MEMORY[0x25F876C90](592138, 0xE300000000000000);
      }

      while (v16);
LABEL_15:
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_23;
        }

        if (v21 >= v18)
        {

          return v28[0];
        }

        v16 = *(v13 + 8 * v21);
        ++v20;
        if (v16)
        {
          v20 = v21;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25BB3BDF4(uint64_t a1)
{
  result = sub_25BB3D31C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_17_9();
  if (v7)
  {
    return 2;
  }

  else
  {
    return sub_25BB3D35C(v5, v6, 0, a1) & 1;
  }
}

uint64_t sub_25BB3BE50(uint64_t a1)
{
  result = sub_25BB3D31C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_17_9();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_25BB3D3AC(v5, v6, 0, a1);
  }
}

void sub_25BB3BEAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }
}

uint64_t sub_25BB3BEDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_25BB3BF28()
{
  OUTLINED_FUNCTION_10_9();
  if (v2)
  {
    v4 = v1;
    if (!v0())
    {
      OUTLINED_FUNCTION_10_9();

      v4(v3 - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25BB3BF8C(void *a1@<X8>)
{
  OUTLINED_FUNCTION_10_9();
  if (v2)
  {
    sub_25BB30EC4(__src);
    if (__src[0])
    {
      memcpy(a1, __src, 0xECuLL);
    }

    else
    {
      sub_25BAA6F5C(__src, &qword_27FBB4828, &qword_25BCBF518);
      OUTLINED_FUNCTION_10_9();
      sub_25BB309AC(v3 - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25BB3C00C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  for (i = result; (i + 0x4000000000000000) >= 0; i = v6)
  {
    if (__OFADD__(2 * i, 2))
    {
      goto LABEL_15;
    }

    v6 = i;
    if (((2 * i) | 1) < a2)
    {
      v7 = v3[1];
      v8 = *v3;
      sub_25BC16CFC((2 * i) | 1, *v3);
      v18 = v9;
      sub_25BC16CFC(i, v8);
      v17 = v10;
      v11 = v7(&v18, &v17);

      if (v11)
      {
        v6 = (2 * i) | 1;
      }

      else
      {
        v6 = i;
      }
    }

    if ((2 * i + 2) < a2)
    {
      v12 = v3[1];
      v13 = *v3;
      sub_25BC16CFC(2 * i + 2, *v3);
      v18 = v14;
      sub_25BC16CFC(v6, v13);
      v17 = v15;
      v16 = v12(&v18, &v17);

      if (v16)
      {
        v6 = 2 * i + 2;
      }
    }

    if (v6 == i)
    {
      return result;
    }

    result = sub_25BB3C1E4(i, v6);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_25BB3C170(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = TensorShape.subscript.getter(result);
    v5 = TensorShape.subscript.getter(a2);
    TensorShape.subscript.setter(v5, result);

    TensorShape.subscript.setter(v4, a2);
  }
}

unint64_t sub_25BB3C1E4(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = *(v4 + 32 + 8 * result);
  v8 = *(v4 + 32 + 8 * a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C();
    v4 = result;
    *v2 = result;
  }

  if (*(v4 + 16) <= v3)
  {
    goto LABEL_17;
  }

  *(v4 + 8 * v3 + 32) = v8;

  sub_25BCB725C();
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C();
    v9 = result;
    *v2 = result;
  }

  if (*(v9 + 16) <= a2)
  {
    goto LABEL_18;
  }

  *(v9 + 8 * a2 + 32) = v7;

  return sub_25BCB725C();
}

void sub_25BB3C310(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v4 = *(v7 + 32 + 8 * result);
          v5 = *(v7 + 32 + 8 * a2);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        sub_25BBF14FC();
        v7 = v9;
LABEL_6:
        if (*(v7 + 16) <= result)
        {
          __break(1u);
        }

        else
        {
          *(v7 + 32 + 8 * result) = v5;

          if (*(v7 + 16) > v2)
          {
            *(v7 + 32 + 8 * v2) = v4;

            *v3 = v7;
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_12;
  }
}

BOOL sub_25BB3C3F4(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t (*sub_25BB3C420(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25BB3D2C0(v6);
  v6[9] = sub_25BB3C6F4(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_25BB3D708;
}

uint64_t (*sub_25BB3C4B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25BB3D2C0(v6);
  v6[9] = sub_25BB3C980(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_25BB3D708;
}

uint64_t (*sub_25BB3C550(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_25BB3D2E8(v8);
  v8[9] = sub_25BB3CE40(v8 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_25BB3C5F8;
}

uint64_t (*sub_25BB3C5FC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25BB3D2C0(v6);
  v6[9] = sub_25BB3D088(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_25BB3D708;
}

void sub_25BB3C694(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25BB3C6F4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = sub_25BCB5DDC();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4840, &qword_25BCBEAA0) - 8) + 64);
  v9[8] = __swift_coroFrameAllocStub(v14);
  v9[9] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v9[10] = v15;
  v16 = *v5;
  v17 = sub_25BA9266C(a2, a3);
  *(v9 + 96) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4848, &qword_25BCBF528);
  if (sub_25BCB745C())
  {
    v21 = sub_25BA9266C(a2, a3);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v19;
  if (v20)
  {
    (*(v12 + 32))(v15, *(*v5 + 56) + *(v12 + 72) * v19, v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_25BB3C958;
}

void (*sub_25BB3C980(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = sub_25BCB5CDC();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB4830, &qword_25BCBF520) - 8) + 64);
  v9[8] = __swift_coroFrameAllocStub(v14);
  v9[9] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v9[10] = v15;
  v16 = *v5;
  v17 = sub_25BA9266C(a2, a3);
  *(v9 + 96) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC0, &qword_25BCBBE10);
  if (sub_25BCB745C())
  {
    v21 = sub_25BA9266C(a2, a3);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v19;
  if (v20)
  {
    (*(v12 + 32))(v15, *(*v5 + 56) + *(v12 + 72) * v19, v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_25BB3CBE4;
}

void sub_25BB3CC0C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(v8 + 3);
  if (a2)
  {
    v11 = *(v8 + 8);
    sub_25BAA486C(v9, v11, a3, a4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v10);
    v13 = *(v8 + 96);
    v14 = *(v8 + 8);
    if (EnumTagSinglePayload != 1)
    {
      v15 = *(v8 + 2);
      v16 = *(*(v8 + 4) + 32);
      v16(*(v8 + 6), v14, *(v8 + 3));
      v17 = *v15;
      v18 = *(v8 + 11);
      v19 = *(v8 + 6);
      if ((v13 & 1) == 0)
      {
LABEL_4:
        v20 = *(v8 + 5);
        v21 = *(v8 + 1);
        v31 = *v8;
        v16(v20, v19, *(v8 + 3));
        a5(v18, v31, v21, v20, v17);
        sub_25BCB617C();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v22 = *(v8 + 9);
    sub_25BAA486C(v9, v22, a3, a4);
    v23 = __swift_getEnumTagSinglePayload(v22, 1, v10);
    v13 = *(v8 + 96);
    v14 = *(v8 + 9);
    if (v23 != 1)
    {
      v24 = *(v8 + 2);
      v16 = *(*(v8 + 4) + 32);
      v16(*(v8 + 7), v14, *(v8 + 3));
      v17 = *v24;
      v18 = *(v8 + 11);
      v19 = *(v8 + 7);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v16(*(v17 + 56) + *(*(v8 + 4) + 72) * v18, v19, *(v8 + 3));
      goto LABEL_10;
    }
  }

  sub_25BAA6F5C(v14, a3, a4);
  if (v13)
  {
    sub_25BB3D61C(*(**(v8 + 2) + 48) + 16 * *(v8 + 11));
    sub_25BCB747C();
  }

LABEL_10:
  v25 = *(v8 + 9);
  v26 = *(v8 + 10);
  v28 = *(v8 + 7);
  v27 = *(v8 + 8);
  v30 = *(v8 + 5);
  v29 = *(v8 + 6);
  sub_25BAA6F5C(v26, a3, a4);
  free(v26);
  free(v25);
  free(v27);
  free(v28);
  free(v29);
  free(v30);

  free(v8);
}

void (*sub_25BB3CE40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1)
{
  v6 = v5;
  v11 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v11;
  v11[4] = a4;
  v11[5] = v5;
  *(v11 + 56) = a3;
  v11[3] = a2;
  v12 = *v5;
  v13 = sub_25BAFEF78(a2, a3, a4);
  *(v11 + 57) = v14 & 1;
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
  if (sub_25BCB745C())
  {
    v17 = sub_25BAFEF78(a2, a3 & 1, a4);
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  v11[6] = v15;
  if (v16)
  {
    v19 = *(*v6 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 16);
  }

  else
  {
    v21 = 0;
    v20 = 0uLL;
  }

  *v11 = v20;
  v11[2] = v21;
  return sub_25BB3CFA4;
}

void sub_25BB3CFA4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 57);
  if (v2)
  {
    v6 = v1[6];
    v7 = *v1[5];
    if (v5)
    {
      OUTLINED_FUNCTION_18_10(v6, *(v7 + 56));
    }

    else
    {
      sub_25BC1ADB8(v6, v1[3], *(v1 + 56), v1[4], v2, v3, v4, v7);
    }
  }

  else if (*(*a1 + 57))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4818, &qword_25BCBF510);
    sub_25BB3D5C8();
    OUTLINED_FUNCTION_16_5();
    sub_25BCB747C();
  }

  v8 = OUTLINED_FUNCTION_14_12();
  sub_25BB3D548(v8);
  v9 = OUTLINED_FUNCTION_16_5();
  sub_25BB3D588(v9);

  free(v1);
}

void (*sub_25BB3D088(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  *(v9 + 4) = a3;
  *(v9 + 5) = v4;
  *(v9 + 3) = a2;
  v10 = *v4;
  v11 = sub_25BA9266C(a2, a3);
  v9[56] = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4850, &qword_25BCCBF10);
  if (sub_25BCB745C())
  {
    v15 = sub_25BA9266C(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v9 + 6) = v13;
  if (v14)
  {
    v17 = *(*v5 + 56) + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
  }

  else
  {
    v18 = 0;
    v19 = 0uLL;
  }

  *v9 = v18;
  *(v9 + 8) = v19;
  return sub_25BB3D1DC;
}

void sub_25BB3D1DC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 56);
  if (v3)
  {
    v6 = v1[6];
    v7 = *v1[5];
    if (v5)
    {
      OUTLINED_FUNCTION_18_10(v6, *(v7 + 56));
    }

    else
    {
      sub_25BC1AFB8(v6, v1[3], v1[4], v2, v3, v4, v7);
      sub_25BCB617C();
    }
  }

  else if ((*a1)[7])
  {
    sub_25BB3D61C(*(*v1[5] + 48) + 16 * v1[6]);
    OUTLINED_FUNCTION_16_5();
    sub_25BCB747C();
  }

  v8 = OUTLINED_FUNCTION_14_12();
  sub_25BB3D670(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_16_5();
  sub_25BB3D6B4(v11, v12);

  free(v1);
}

uint64_t (*sub_25BB3D2C0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25BB3D6F8;
}

uint64_t (*sub_25BB3D2E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25BB3D310;
}

uint64_t sub_25BB3D35C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25BB3D3AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v4 = *(*(a4 + 48) + 16 * result);
    sub_25BCB617C();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25BB3D428(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C();
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_25BAB2550((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    sub_25BCB725C();
    return v9;
  }

  return result;
}

uint64_t sub_25BB3D4A8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C();
    v1 = result;
    *v0 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    sub_25BCB725C();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

double sub_25BB3D548(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_25BB3D588(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25BB3D5C8()
{
  result = qword_27FBB4820;
  if (!qword_27FBB4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4820);
  }

  return result;
}

void sub_25BB3D670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_25BCB617C();

    sub_25BCB617C();
  }
}

uint64_t sub_25BB3D6B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_25BB3D70C(char a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:0];

  return v2;
}

id sub_25BB3D780(unsigned __int8 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:9];

  return v2;
}

id sub_25BB3D7F4(unsigned __int16 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:10];

  return v2;
}

id sub_25BB3D8B0(char a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:5];

  return v2;
}

id sub_25BB3D924(__int16 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:6];

  return v2;
}

id sub_25BB3D998(uint64_t a1, SEL *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) *a2];
  v5 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v4 dataType:a3];

  return v5;
}

id sub_25BB3DA38(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v4 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v3 dataType:a2];

  return v4;
}

id sub_25BB3DAC8(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:7];

  return v2;
}

id sub_25BB3DB3C(__n128 _Q0)
{
  __asm { FCVT            S8, H0 }

  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v7) = _S8;
  v8 = [v6 initWithFloat_];
  v9 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v8 dataType:2];

  return v9;
}

id sub_25BB3DBB8(float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v3 = a1;
  v4 = [v2 initWithFloat_];
  v5 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v4 dataType:3];

  return v5;
}

id sub_25BB3DC34(uint64_t a1, uint64_t a2)
{
  sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  sub_25BCB617C();
  return sub_25BB3DC94(a1, a2);
}

id sub_25BB3DC94(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_25BCB633C();

  v4 = [v2 initWithStringScalar_];

  return v4;
}

id sub_25BB3DD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = OUTLINED_FUNCTION_5(v5);
  *(v6 + 16) = xmmword_25BCBB6D0;
  sub_25BCB681C();
  *(v6 + 32) = sub_25BCB6A6C();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB73BC();
  v8 = sub_25BB3DD10(v7, a2, a3);
  v9 = objc_allocWithZone(SNNMILDataValue);
  return sub_25BB3EA78(v6, v7, v8);
}

id sub_25BB3DE3C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = OUTLINED_FUNCTION_5(v2);
  *(v3 + 16) = xmmword_25BCBB6D0;
  *(v3 + 32) = sub_25BCB6A6C();
  v4 = sub_25BAF99E8(v1);
  v5 = objc_allocWithZone(SNNMILDataValue);
  return sub_25BB3EA78(v3, v4, 7);
}

uint64_t sub_25BB3DF08(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v4 = *(a2 + 64);
  v5 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  v4(&v8, sub_25BB3E7FC, v7, v5, a1, a2);
  return v8;
}

id sub_25BB3DFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BAF99E8(*(a3 + 16));
  if (a1)
  {
    v5 = result;
    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC0300();
    return sub_25BBC052C(v5, a1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BB3E02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BAF99E8(*(a3 + 24));
  if (a1)
  {
    v5 = result;
    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC15E8();
    return sub_25BBC052C(v5, a1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB3E0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  (*(a3 + 16))(&v11, a2, a3);
  result = sub_25BAF99E8(v11);
  if (a1)
  {
    v9 = result;

    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v10 = sub_25BB3DEC4(a2, a3);
    result = sub_25BBC052C(v9, a1, v10);
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BB3E2B4()
{

  sub_25BAA4554(0);
  BaseAddress = IOSurfaceGetBaseAddress(*(v0 + 16));
  sub_25BAA4640();
  v2 = sub_25BCB617C();
  result = sub_25BAF99E8(v2);
  if (BaseAddress)
  {
    v4 = result;

    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v5 = sub_25BBC15E8();
    v6 = sub_25BBC052C(v4, BaseAddress, v5);
    sub_25BAA46FC(0);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BB3E3A0()
{
  if (*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) == 1)
  {
    v1 = sub_25BCB58EC();
    v3 = v2;
    v4 = sub_25BCB617C();
    v5 = sub_25BAF99E8(v4);

    v6 = sub_25BBC046C();
    v7 = sub_25BCB7AEC();
    v8 = objc_allocWithZone(SNNMILBlobValue);
    return sub_25BB3EB28(v1, v3, v5, v6, v7);
  }

  else
  {

    return sub_25BB9AA18(v10, v0);
  }
}

id sub_25BB3E4C0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:7];
      goto LABEL_10;
    case 2:
      _H0 = *v0;
      __asm { FCVT            S8, H0 }

      v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v20) = _S8;
      v21 = [v19 initWithFloat_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:2];
      goto LABEL_10;
    case 3:
      v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v24) = v2;
      v21 = [v23 initWithFloat_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:3];
      goto LABEL_10;
    case 4:
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      sub_25BCB617C();
      return sub_25BB3DC94(v2, v1);
    case 5:
    case 7:
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v4 = OUTLINED_FUNCTION_5(v3);
      *(v4 + 16) = xmmword_25BCBB6D0;
      *(v4 + 32) = sub_25BCB6A6C();
      v5 = sub_25BAF99E8(v2);
      objc_allocWithZone(SNNMILDataValue);
      v6 = v4;
      v7 = v5;
      v8 = 7;
      goto LABEL_5;
    case 6:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v11 = OUTLINED_FUNCTION_5(v10);
      *(v11 + 16) = xmmword_25BCBB6D0;
      *(v11 + 32) = sub_25BCB6A6C();
      v12 = sub_25BAF9F20(v2);
      objc_allocWithZone(SNNMILDataValue);
      v6 = v11;
      v7 = v12;
      v8 = 3;
LABEL_5:
      result = sub_25BB3EA78(v6, v7, v8);
      break;
    case 8:
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4860, &unk_25BCBF6D0);
      if (swift_dynamicCast())
      {
        v26 = *(&v31 + 1);
        v27 = v32;
        __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
        v28 = (*(v27 + 16))(v26, v27);
        __swift_destroy_boxed_opaque_existential_1(&v30);
      }

      else
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        sub_25BB3ECB0(&v30);
        ObjectType = swift_getObjectType();
        v28 = sub_25BB3DF08(ObjectType, v1);
      }

      result = v28;
      break;
    default:
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:0];
LABEL_10:
      v25 = v22;

      result = v25;
      break;
  }

  return result;
}

uint64_t sub_25BB3E81C(uint64_t a1, uint64_t a2)
{

  v6 = sub_25BC76C08();
  [v6 lock];

  v15 = *(v2 + 40);
  if (v15 < 0)
  {
    v17 = v15 & 0x7FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
  }

  else
  {
    sub_25BC76F00(v7, v8, v9, v10, v11, v12, v13, v14);
    v17 = v16;
  }

  [*(v2 + 48) unlock];

  ObjectType = swift_getObjectType();
  MEMORY[0x28223BE20](ObjectType);
  v22[2] = a1;
  v22[3] = a2;
  v19 = *(v17 + 64);
  v20 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  v19(&v23, sub_25BB3EC4C, v22, v20, ObjectType, v17);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_25BB3E97C(uint64_t a1, uint64_t a2)
{
  sub_25BC2B4B4();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 64);
  v9 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  v8(&v11, a1, a2, v9, ObjectType, v6);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v11;
}

void *sub_25BB3EA40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr))
{
  result = (a3)(&v5, a1, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

id sub_25BB3EA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v5 = sub_25BCB672C();

  v6 = sub_25BCB672C();

  v7 = [v3 initWithShape:v5 scalars:v6 dataType:a3];

  return v7;
}

id sub_25BB3EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v9 = sub_25BCB672C();

  v10 = [v5 initWithFilename:v8 shape:v9 dataType:a4 offset:a5];

  return v10;
}

id sub_25BB3EBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25BB3DFA8(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void *sub_25BB3EC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr)@<X2>, void *a4@<X8>)
{
  result = sub_25BB3EA40(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

id sub_25BB3EC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25BB3E02C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_25BB3ECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4868, &unk_25BCC88C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB3ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_25BA9266C(a1, a2), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_11_15();
    sub_25BCB617C();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BB3ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25BA9266C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void *sub_25BB3EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25BA9266C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_25BB3EE04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_25BAFEEB0(a1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_15();
  return swift_unknownObjectRetain();
}

uint64_t sub_25BB3EE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25BA9266C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_25BCB5DDC();
    OUTLINED_FUNCTION_9_3();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_25BCB5DDC();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_25BB3EF0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (sub_25BAFEF78(a1, a2 & 1, a3), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_16_12();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

double sub_25BB3EF70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_25BAFEFFC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_25BB2BA90(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25BB3EFD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (sub_25BAFF060(a1, a2, a3), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_11_15();
    sub_25BCB617C();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

void sub_25BB3F020(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_25BAFEEB0(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_25BB3F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_25BA9266C(a1, a2), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_16_12();
    sub_25BCB617C();
    sub_25BCB617C();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t Tensor.placed(on:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = Tensor.scalarType.getter(a1);
  v8 = sub_25BBABD24(v6, v7);
  if (v8 != 2)
  {
    sub_25BC87800(a1, v8 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
  }

  *a2 = v5;

  return Tensor.place(on:)(a1);
}

uint64_t Tensor.scalarCount.getter()
{
  v1 = *(*(*v0 + 16) + 152);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    result = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = result;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}