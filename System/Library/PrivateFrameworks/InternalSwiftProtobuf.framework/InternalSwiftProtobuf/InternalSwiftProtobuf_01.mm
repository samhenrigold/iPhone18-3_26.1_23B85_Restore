void OUTLINED_FUNCTION_29_3(_BYTE *a1@<X8>)
{
  if (v1 == 12)
  {
    LOBYTE(v1) = 0;
  }

  *a1 = v1;
}

void OUTLINED_FUNCTION_385(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{

  sub_1AC4513F8(a9, a10);
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1)
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_29_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *(v13 + 16) = v14;
  v15 = v13 + 16 * v10;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  *a10 = v13;
}

void OUTLINED_FUNCTION_29_7()
{
  *(v2 + 16) = v3;
  *(v2 + v0 + 32) = v4;
  *v1 = v2;
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t result)
{
  *v1 = result;
  *(result + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t a1)
{

  return sub_1AC51F338();
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 408))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 416))(a1, a2, a3, a4, a5, a6, a7);
}

void sub_1AC460CB4(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 < 0x80)
      {
        v10 = 1;
        goto LABEL_18;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        v10 = 10;
        goto LABEL_18;
      }

      if (v8 >> 35)
      {
        if (v8 >> 49)
        {
          v8 >>= 28;
          v10 = 8;
LABEL_16:
          if (!(v8 >> 28))
          {
            goto LABEL_18;
          }

LABEL_17:
          ++v10;
          goto LABEL_18;
        }

        v10 = 6;
        if (v8 >> 42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= 0x200000)
        {
          v10 = 4;
          goto LABEL_16;
        }

        v10 = 2;
        if (v8 >= 0x4000)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v11 = __OFADD__(v4, v10);
      v4 += v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (!--v6)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = 0;
LABEL_22:
  v12 = sub_1AC4519B4(v4);
  v13 = v3 + v12;
  if (__OFADD__(v3, v12))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = __OFADD__(v13, v4);
  v14 = v13 + v4;
  if (v11)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = __OFADD__(*v2, v14);
  v15 = *v2 + v14;
  if (!v11)
  {
    OUTLINED_FUNCTION_11_4(v15);
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_27(a1, a2, a3, a4, a5, a6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_16(v14);
  while (1)
  {
    OUTLINED_FUNCTION_20_15();
    result = sub_1AC51F0B8();
    if (v7 == result)
    {
      break;
    }

    OUTLINED_FUNCTION_20_15();
    v16 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_13_16(v16);
    if (v8)
    {
      v17 = OUTLINED_FUNCTION_4_24();
      v18(v17);
    }

    else
    {
      OUTLINED_FUNCTION_19_14();
      result = sub_1AC51F2F8();
      if (v25 != 8)
      {
        __break(1u);
        return result;
      }

      v23 = OUTLINED_FUNCTION_7_20(result);
      v24(v23);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_14();
    sub_1AC51F0F8();
    v19 = OUTLINED_FUNCTION_10_16();
    v20(v19);
    v21 = OUTLINED_FUNCTION_16_14();
    result = v22(v21);
    if (v6)
    {
      return result;
    }

    v7 = v26;
  }

  return result;
}

unint64_t sub_1AC460F80(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  sub_1AC451CCC(a2, 0);
  return sub_1AC457060(v2);
}

unint64_t sub_1AC460FD0(uint64_t a1, uint64_t (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_6_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_15_5();
  return sub_1AC461104(v9, a2, v10, v11, v12, v13, v14, v15, AssociatedTypeWitness, v8);
}

unint64_t sub_1AC461104(uint64_t a1, uint64_t (**a2)(char *, uint64_t), unint64_t a3, void (**a4)(void), void (*a5)(unint64_t *, char *, char *), uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  v123 = a7;
  v124 = a8;
  v125 = a5;
  v126 = a6;
  v120 = a3;
  v121 = a4;
  v117 = a1;
  v118 = a2;
  v105 = *(a10 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v107 = v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v119 = v103 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v103 - v18;
  v104 = *(a9 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v128 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v108 = v103 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v103 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v127 = sub_1AC51F228();
  v27 = MEMORY[0x1EEE9AC00](v127);
  v29 = v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v122 = v103 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v37 = v103 - v36;
  v130 = a10;
  v131 = v10;
  v38 = *v10;
  v129 = a9;
  if (v38 == 1)
  {
    v128 = v103;
    v132 = v117;
    MEMORY[0x1EEE9AC00](v33);
    v103[-6] = v39;
    v103[-5] = a10;
    v41 = v120;
    v40 = v121;
    v103[-4] = v42;
    v103[-3] = v41;
    v103[-2] = v40;
    v44 = v43;
    sub_1AC51ED88();
    swift_getWitnessTable();
    v45 = sub_1AC51F028();
    v46 = sub_1AC51F038();
    v116 = TupleTypeMetadata2 - 8;
    v133 = v46;
    v47 = (v44 + 32);
    v128 = (v104 + 32);
    v121 = (v105 + 32);
    v120 = 8 * (v118 & 0x1FFFFFFF);
    v119 = (v120 | 2);
    v117 = v105 + 8;
    v118 = (v104 + 8);
    v48 = v129;
    while (1)
    {
      v49 = sub_1AC51F0B8();
      v50 = v133;
      if (v133 == v49)
      {
        v51 = v122;
        v52 = v122;
        v53 = 1;
      }

      else
      {
        v54 = sub_1AC51F0A8();
        sub_1AC51F048();
        if (v54)
        {
          v55 = *(TupleTypeMetadata2 - 8);
          v56 = v45 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v50;
          v51 = v122;
          (*(v55 + 16))(v122, v56, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1AC51F2F8();
          v67 = *(TupleTypeMetadata2 - 8);
          if (*(v67 + 64) != 8)
          {
            goto LABEL_60;
          }

          v132 = result;
          v68 = v122;
          (*(v67 + 16))(v122, &v132, TupleTypeMetadata2);
          v51 = v68;
          swift_unknownObjectRelease();
        }

        v48 = v129;
        sub_1AC51F0F8();
        v52 = v51;
        v53 = 0;
      }

      __swift_storeEnumTagSinglePayload(v52, v53, 1, TupleTypeMetadata2);
      (*v47)(v37, v51, v127);
      if (__swift_getEnumTagSinglePayload(v37, 1, TupleTypeMetadata2) == 1)
      {
      }

      v57 = *(TupleTypeMetadata2 + 48);
      (*v128)(v25, v37, v48);
      (*v121)(v19, &v37[v57], v130);
      v58 = *(v131 + 1);
      if (v120 < 0x80)
      {
        LOBYTE(v60) = v119;
      }

      else
      {
        v59 = v119;
        do
        {
          *v58++ = v59 | 0x80;
          v60 = v59 >> 7;
          v61 = v59 >> 14;
          v59 >>= 7;
        }

        while (v61);
      }

      *v58 = v60;
      v62 = v58 + 1;
      *(v131 + 1) = v62;
      v132 = 0;
      v125(&v132, v25, v19);
      if (v11)
      {

        (*v117)(v19, v130);
        return (*v118)(v25, v129);
      }

      v63 = v132;
      if (v132 < 0x80)
      {
        LOBYTE(v64) = v132;
      }

      else
      {
        do
        {
          *v62++ = v63 | 0x80;
          v64 = v63 >> 7;
          v65 = v63 >> 14;
          v63 >>= 7;
        }

        while (v65);
      }

      *v62 = v64;
      *(v131 + 1) = v62 + 1;
      v123();
      (*v117)(v19, v130);
      v48 = v129;
      (*v118)(v25, v129);
    }
  }

  v116 = v34;
  if ((v117 & 0xC000000000000001) != 0)
  {
    v69 = v35;
    v70 = sub_1AC51F368();
    v35 = v69;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = v70 | 0x8000000000000000;
  }

  else
  {
    v75 = -1 << *(v117 + 32);
    v72 = ~v75;
    v71 = v117 + 64;
    v76 = -v75;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v73 = v77 & *(v117 + 64);
    v74 = v117;
  }

  v78 = v128;
  v79 = v119;
  v120 = v105 + 32;
  v121 = (v104 + 32);
  v103[1] = v72;
  v80 = (v72 + 64) >> 6;
  v103[3] = v104 + 16;
  v103[2] = v105 + 16;
  v115 = (v35 + 32);
  v110 = 8 * (v118 & 0x1FFFFFFF);
  v109 = v110 | 2;
  v111 = (v105 + 8);
  v112 = (v104 + 8);

  v81 = 0;
  v82 = v107;
  v106 = v29;
  v113 = v74;
  v114 = v71;
  v83 = v73;
  while (1)
  {
    v117 = v81;
    v118 = v83;
    if ((v74 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1AC51F378())
    {
      v87 = v130;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v79 = v119;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v85 = v117;
      v122 = v118;
LABEL_41:
      v91 = *(TupleTypeMetadata2 + 48);
      v29 = v106;
      (*v121)();
      (*v120)(&v29[v91], v79, v87);
      v92 = 0;
      v88 = v85;
      v82 = v107;
      v78 = v128;
      goto LABEL_42;
    }

    v92 = 1;
    v88 = v117;
    v122 = v118;
LABEL_42:
    __swift_storeEnumTagSinglePayload(v29, v92, 1, TupleTypeMetadata2);
    v93 = v116;
    (*v115)(v116, v29, v127);
    if (__swift_getEnumTagSinglePayload(v93, 1, TupleTypeMetadata2) == 1)
    {
      return sub_1AC460BE4(v113);
    }

    v94 = *(TupleTypeMetadata2 + 48);
    (*v121)(v78, v93, v129);
    (*v120)(v82, v93 + v94, v130);
    v95 = *(v131 + 1);
    if (v110 < 0x80)
    {
      LOBYTE(v97) = v109;
    }

    else
    {
      v96 = v109;
      do
      {
        *v95++ = v96 | 0x80;
        v97 = v96 >> 7;
        v98 = v96 >> 14;
        v96 >>= 7;
      }

      while (v98);
    }

    *v95 = v97;
    v99 = v95 + 1;
    *(v131 + 1) = v99;
    v133 = 0;
    v125(&v133, v128, v82);
    v74 = v113;
    if (v12)
    {
      sub_1AC460BE4(v113);
      (*v111)(v82, v130);
      return (*v112)(v128, v129);
    }

    v100 = v133;
    if (v133 < 0x80)
    {
      LOBYTE(v101) = v133;
    }

    else
    {
      do
      {
        *v99++ = v100 | 0x80;
        v101 = v100 >> 7;
        v102 = v100 >> 14;
        v100 >>= 7;
      }

      while (v102);
    }

    *v99 = v101;
    *(v131 + 1) = v99 + 1;
    v78 = v128;
    v123();
    (*v111)(v82, v130);
    result = (*v112)(v78, v129);
    v81 = v88;
    v83 = v122;
    v79 = v119;
    v71 = v114;
  }

  if (v83)
  {
    v84 = v83;
    v85 = v81;
    v86 = v108;
LABEL_40:
    v122 = ((v84 - 1) & v84);
    v89 = __clz(__rbit64(v84)) | (v85 << 6);
    (*(v104 + 16))(v86, *(v74 + 48) + *(v104 + 72) * v89, v129);
    v90 = *(v74 + 56) + *(v105 + 72) * v89;
    v87 = v130;
    (*(v105 + 16))(v79, v90, v130);
    goto LABEL_41;
  }

  v88 = v81;
  v86 = v108;
  while (1)
  {
    v85 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v85 >= v80)
    {
      v122 = 0;
      v92 = 1;
      v29 = v106;
      goto LABEL_42;
    }

    v84 = *(v71 + 8 * v85);
    ++v88;
    if (v84)
    {
      v79 = v119;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1AC461D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a5);
  }

  return result;
}

uint64_t sub_1AC461E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a5);
  }

  return result;
}

void sub_1AC461F08(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (!*(v3 + 16))
  {
    OUTLINED_FUNCTION_14_5();
    return;
  }

  v5 = OUTLINED_FUNCTION_5_5();
  do
  {
    v7 = *(v3 + 8 * v6);
    if (v7 < 0x80)
    {
      v8 = 1;
      goto LABEL_18;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = 10;
      goto LABEL_18;
    }

    if (!(v7 >> 35))
    {
      if (v7 < 0x200000)
      {
        v8 = 2;
        if (v7 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v8 = 4;
LABEL_16:
      if (!(v7 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v8;
      goto LABEL_18;
    }

    if (v7 >> 49)
    {
      v7 >>= 28;
      v8 = 8;
      goto LABEL_16;
    }

    v8 = 6;
    if (v7 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (__OFADD__(v5, v8))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_12_5();
  }

  while (!v9);
  sub_1AC45702C(v5);
  OUTLINED_FUNCTION_11_5();
  do
  {
    if (*(v3 + 8 * v11) >= 0x80uLL)
    {
      do
      {
        OUTLINED_FUNCTION_1_7(v10);
      }

      while (v12);
    }

    OUTLINED_FUNCTION_4_5(v10);
  }

  while (!v9);
  *(v2 + 8) = v10;
}

uint64_t sub_1AC462044(uint64_t a1, unint64_t a2)
{
  v108 = 0;
  v109 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    v5 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = sub_1AC51F2C8();
        goto LABEL_15;
      }

      if ((a2 & 0x2000000000000000) == 0)
      {
        break;
      }

      v106 = a1;
      v107 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = &v106 + v5;
      v8 = *(&v106 + v5);
      if ((*(&v106 + v5) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      switch(__clz(v8 ^ 0xFF))
      {
        case 0x1Au:
LABEL_36:
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
          v9 = 2;
          break;
        case 0x1Bu:
LABEL_46:
          v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
          v9 = 3;
          break;
        case 0x1Cu:
LABEL_47:
          v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
          v9 = 4;
          break;
        default:
          goto LABEL_14;
      }

LABEL_15:
      v5 += v9;
      if (v8 != 92)
      {
        goto LABEL_44;
      }

      v10 = v5 >= v3;
      v11 = v5 == v3;
      if (v5 >= v3)
      {
        goto LABEL_222;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = sub_1AC51F2C8();
        goto LABEL_26;
      }

      if ((a2 & 0x2000000000000000) == 0)
      {
        v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v12 = sub_1AC51F308();
        }

        v13 = (v12 + v5);
        v14 = *(v12 + v5);
        if (*(v12 + v5) < 0)
        {
          switch(__clz(v14 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_49;
            case 0x1Bu:
              goto LABEL_51;
            case 0x1Cu:
              goto LABEL_52;
            default:
              break;
          }
        }

LABEL_25:
        v15 = 1;
        goto LABEL_26;
      }

      v106 = a1;
      v107 = a2 & 0xFFFFFFFFFFFFFFLL;
      v13 = &v106 + v5;
      v14 = *(&v106 + v5);
      if ((*(&v106 + v5) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      switch(__clz(v14 ^ 0xFF))
      {
        case 0x1Au:
LABEL_49:
          v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
          v15 = 2;
          break;
        case 0x1Bu:
LABEL_51:
          v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
          v15 = 3;
          break;
        case 0x1Cu:
LABEL_52:
          v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
          v15 = 4;
          break;
        default:
          goto LABEL_25;
      }

LABEL_26:
      v5 += v15;
      if (!v11 && v10)
      {
        if (v14 != 34 && v14 != 47 && v14 != 92 && v14 != 98 && v14 != 102)
        {
          goto LABEL_222;
        }
      }

      else
      {
        switch(v14)
        {
          case 'n':
          case 'r':
          case 't':
            break;
          case 'o':
          case 'p':
          case 'q':
          case 's':
            goto LABEL_222;
          case 'u':
            if (v5 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v19 = sub_1AC51F2C8();
              v21 = v20;
              goto LABEL_55;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v16 = sub_1AC51F308();
              }

              v17 = (v16 + v5);
              v18 = *(v16 + v5);
              v19 = *(v16 + v5);
              if (v18 < 0)
              {
                switch(__clz(v19 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_76;
                  case 0x1Bu:
                    goto LABEL_88;
                  case 0x1Cu:
                    goto LABEL_89;
                  default:
                    break;
                }
              }

LABEL_54:
              v21 = 1;
              goto LABEL_55;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v17 = &v106 + v5;
            v19 = *(&v106 + v5);
            if ((*(&v106 + v5) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            switch(__clz(v19 ^ 0xFF))
            {
              case 0x1Au:
LABEL_76:
                v19 = v17[1] & 0x3F | ((v19 & 0x1F) << 6);
                v21 = 2;
                break;
              case 0x1Bu:
LABEL_88:
                v19 = ((v19 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
                v21 = 3;
                break;
              case 0x1Cu:
LABEL_89:
                v19 = ((v19 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
                v21 = 4;
                break;
              default:
                goto LABEL_54;
            }

LABEL_55:
            v22 = sub_1AC4E5E7C(v19);
            if ((v22 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v23 = v21 + v5;
            if (v21 + v5 >= v3)
            {
              goto LABEL_222;
            }

            v24 = v22;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v28 = sub_1AC51F2C8();
              v30 = v29;
              goto LABEL_66;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v25 = sub_1AC51F308();
              }

              v26 = (v25 + v23);
              v27 = *(v25 + v23);
              v28 = *(v25 + v23);
              if (v27 < 0)
              {
                switch(__clz(v28 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_91;
                  case 0x1Bu:
                    goto LABEL_116;
                  case 0x1Cu:
                    goto LABEL_117;
                  default:
                    break;
                }
              }

LABEL_65:
              v30 = 1;
              goto LABEL_66;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v26 = &v106 + v23;
            v28 = *(&v106 + v23);
            if ((*(&v106 + v23) & 0x80000000) == 0)
            {
              goto LABEL_65;
            }

            switch(__clz(v28 ^ 0xFF))
            {
              case 0x1Au:
LABEL_91:
                v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
                v30 = 2;
                break;
              case 0x1Bu:
LABEL_116:
                v28 = ((v28 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
                v30 = 3;
                break;
              case 0x1Cu:
LABEL_117:
                v28 = ((v28 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
                v30 = 4;
                break;
              default:
                goto LABEL_65;
            }

LABEL_66:
            v31 = sub_1AC4E5E7C(v28);
            if ((v31 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v32 = v30 + v23;
            if (v30 + v23 >= v3)
            {
              goto LABEL_222;
            }

            v33 = v31;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v37 = sub_1AC51F2C8();
              v39 = v38;
              goto LABEL_79;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v34 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v34 = sub_1AC51F308();
              }

              v35 = (v34 + v32);
              v36 = *(v34 + v32);
              v37 = *(v34 + v32);
              if (v36 < 0)
              {
                switch(__clz(v37 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_119;
                  case 0x1Bu:
                    goto LABEL_134;
                  case 0x1Cu:
                    goto LABEL_135;
                  default:
                    break;
                }
              }

LABEL_78:
              v39 = 1;
              goto LABEL_79;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v35 = &v106 + v32;
            v37 = *(&v106 + v32);
            if ((*(&v106 + v32) & 0x80000000) == 0)
            {
              goto LABEL_78;
            }

            switch(__clz(v37 ^ 0xFF))
            {
              case 0x1Au:
LABEL_119:
                v37 = v35[1] & 0x3F | ((v37 & 0x1F) << 6);
                v39 = 2;
                break;
              case 0x1Bu:
LABEL_134:
                v37 = ((v37 & 0xF) << 12) | ((v35[1] & 0x3F) << 6) | v35[2] & 0x3F;
                v39 = 3;
                break;
              case 0x1Cu:
LABEL_135:
                v37 = ((v37 & 0xF) << 18) | ((v35[1] & 0x3F) << 12) | ((v35[2] & 0x3F) << 6) | v35[3] & 0x3F;
                v39 = 4;
                break;
              default:
                goto LABEL_78;
            }

LABEL_79:
            v40 = sub_1AC4E5E7C(v37);
            if ((v40 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v41 = v39 + v32;
            if (v41 >= v3)
            {
              goto LABEL_222;
            }

            v42 = v40;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v46 = sub_1AC51F2C8();
              v48 = v47;
              goto LABEL_94;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v43 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v43 = sub_1AC51F308();
              }

              v44 = (v43 + v41);
              v45 = *(v43 + v41);
              v46 = *(v43 + v41);
              if (v45 < 0)
              {
                switch(__clz(v46 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_137;
                  case 0x1Bu:
                    goto LABEL_160;
                  case 0x1Cu:
                    goto LABEL_161;
                  default:
                    break;
                }
              }

LABEL_93:
              v48 = 1;
              goto LABEL_94;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v44 = &v106 + v41;
            v46 = *(&v106 + v41);
            if ((*(&v106 + v41) & 0x80000000) == 0)
            {
              goto LABEL_93;
            }

            switch(__clz(v46 ^ 0xFF))
            {
              case 0x1Au:
LABEL_137:
                v46 = v44[1] & 0x3F | ((v46 & 0x1F) << 6);
                v48 = 2;
                break;
              case 0x1Bu:
LABEL_160:
                v46 = ((v46 & 0xF) << 12) | ((v44[1] & 0x3F) << 6) | v44[2] & 0x3F;
                v48 = 3;
                break;
              case 0x1Cu:
LABEL_161:
                v46 = ((v46 & 0xF) << 18) | ((v44[1] & 0x3F) << 12) | ((v44[2] & 0x3F) << 6) | v44[3] & 0x3F;
                v48 = 4;
                break;
              default:
                goto LABEL_93;
            }

LABEL_94:
            v49 = sub_1AC4E5E7C(v46);
            if ((v49 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            if (v24 >> 28)
            {
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              JUMPOUT(0x1AC4631A0);
            }

            v50 = v33 + 16 * v24;
            if (__CFADD__(v33, 16 * v24))
            {
              goto LABEL_226;
            }

            if (v50 >> 28)
            {
              goto LABEL_227;
            }

            v10 = __CFADD__(v42, 16 * v50);
            v51 = v42 + 16 * v50;
            if (v10)
            {
              goto LABEL_228;
            }

            if (v51 >> 28)
            {
              goto LABEL_229;
            }

            v52 = v49 + 16 * v51;
            if (__CFADD__(v49, 16 * v51))
            {
              goto LABEL_230;
            }

            v5 = v48 + v41;
            if (HIWORD(v52) <= 0x10u && (v52 & 0xFFFFF800) != 55296)
            {
              break;
            }

            if (v52 >= 0xE000 || v52 >> 10 >= 0x37 || v5 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v57 = sub_1AC51F2C8();
              goto LABEL_122;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v54 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v54 = sub_1AC51F308();
              }

              v55 = (v54 + v5);
              v56 = *(v54 + v5);
              v57 = *(v54 + v5);
              if (v56 < 0)
              {
                switch(__clz(v57 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_163;
                  case 0x1Bu:
                    goto LABEL_175;
                  case 0x1Cu:
                    goto LABEL_176;
                  default:
                    break;
                }
              }

LABEL_121:
              v58 = 1;
              goto LABEL_122;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v55 = &v106 + v5;
            v57 = *(&v106 + v5);
            if ((*(&v106 + v5) & 0x80000000) == 0)
            {
              goto LABEL_121;
            }

            switch(__clz(v57 ^ 0xFF))
            {
              case 0x1Au:
LABEL_163:
                v57 = v55[1] & 0x3F | ((v57 & 0x1F) << 6);
                v58 = 2;
                break;
              case 0x1Bu:
LABEL_175:
                v57 = ((v57 & 0xF) << 12) | ((v55[1] & 0x3F) << 6) | v55[2] & 0x3F;
                v58 = 3;
                break;
              case 0x1Cu:
LABEL_176:
                v57 = ((v57 & 0xF) << 18) | ((v55[1] & 0x3F) << 12) | ((v55[2] & 0x3F) << 6) | v55[3] & 0x3F;
                v58 = 4;
                break;
              default:
                goto LABEL_121;
            }

LABEL_122:
            v59 = v58 + v5;
            if (v57 != 92 || v59 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v64 = sub_1AC51F2C8();
              goto LABEL_140;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v61 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v61 = sub_1AC51F308();
              }

              v62 = (v61 + v59);
              v63 = *(v61 + v59);
              v64 = *(v61 + v59);
              if (v63 < 0)
              {
                switch(__clz(v64 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_178;
                  case 0x1Bu:
                    goto LABEL_192;
                  case 0x1Cu:
                    goto LABEL_193;
                  default:
                    break;
                }
              }

LABEL_139:
              v65 = 1;
              goto LABEL_140;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v62 = &v106 + v59;
            v64 = *(&v106 + v59);
            if ((*(&v106 + v59) & 0x80000000) == 0)
            {
              goto LABEL_139;
            }

            switch(__clz(v64 ^ 0xFF))
            {
              case 0x1Au:
LABEL_178:
                v64 = v62[1] & 0x3F | ((v64 & 0x1F) << 6);
                v65 = 2;
                break;
              case 0x1Bu:
LABEL_192:
                v64 = ((v64 & 0xF) << 12) | ((v62[1] & 0x3F) << 6) | v62[2] & 0x3F;
                v65 = 3;
                break;
              case 0x1Cu:
LABEL_193:
                v64 = ((v64 & 0xF) << 18) | ((v62[1] & 0x3F) << 12) | ((v62[2] & 0x3F) << 6) | v62[3] & 0x3F;
                v65 = 4;
                break;
              default:
                goto LABEL_139;
            }

LABEL_140:
            if (v64 != 117)
            {
              goto LABEL_222;
            }

            v66 = v65 + v59;
            if (v65 + v59 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v70 = sub_1AC51F2C8();
              v72 = v71;
              goto LABEL_151;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v67 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v67 = sub_1AC51F308();
              }

              v68 = (v67 + v66);
              v69 = *(v67 + v66);
              v70 = *(v67 + v66);
              if (v69 < 0)
              {
                switch(__clz(v70 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_180;
                  case 0x1Bu:
                    goto LABEL_194;
                  case 0x1Cu:
                    goto LABEL_195;
                  default:
                    break;
                }
              }

LABEL_150:
              v72 = 1;
              goto LABEL_151;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v68 = &v106 + v66;
            v70 = *(&v106 + v66);
            if ((*(&v106 + v66) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            switch(__clz(v70 ^ 0xFF))
            {
              case 0x1Au:
LABEL_180:
                v70 = v68[1] & 0x3F | ((v70 & 0x1F) << 6);
                v72 = 2;
                break;
              case 0x1Bu:
LABEL_194:
                v70 = ((v70 & 0xF) << 12) | ((v68[1] & 0x3F) << 6) | v68[2] & 0x3F;
                v72 = 3;
                break;
              case 0x1Cu:
LABEL_195:
                v70 = ((v70 & 0xF) << 18) | ((v68[1] & 0x3F) << 12) | ((v68[2] & 0x3F) << 6) | v68[3] & 0x3F;
                v72 = 4;
                break;
              default:
                goto LABEL_150;
            }

LABEL_151:
            v73 = sub_1AC4E5E7C(v70);
            if ((v73 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v74 = v72 + v66;
            if (v72 + v66 >= v3)
            {
              goto LABEL_222;
            }

            v75 = v73;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v79 = sub_1AC51F2C8();
              v81 = v80;
              goto LABEL_166;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v76 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v76 = sub_1AC51F308();
              }

              v77 = (v76 + v74);
              v78 = *(v76 + v74);
              v79 = *(v76 + v74);
              if (v78 < 0)
              {
                switch(__clz(v79 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_197;
                  case 0x1Bu:
                    goto LABEL_212;
                  case 0x1Cu:
                    goto LABEL_213;
                  default:
                    break;
                }
              }

LABEL_165:
              v81 = 1;
              goto LABEL_166;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v77 = &v106 + v74;
            v79 = *(&v106 + v74);
            if ((*(&v106 + v74) & 0x80000000) == 0)
            {
              goto LABEL_165;
            }

            switch(__clz(v79 ^ 0xFF))
            {
              case 0x1Au:
LABEL_197:
                v79 = v77[1] & 0x3F | ((v79 & 0x1F) << 6);
                v81 = 2;
                break;
              case 0x1Bu:
LABEL_212:
                v79 = ((v79 & 0xF) << 12) | ((v77[1] & 0x3F) << 6) | v77[2] & 0x3F;
                v81 = 3;
                break;
              case 0x1Cu:
LABEL_213:
                v79 = ((v79 & 0xF) << 18) | ((v77[1] & 0x3F) << 12) | ((v77[2] & 0x3F) << 6) | v77[3] & 0x3F;
                v81 = 4;
                break;
              default:
                goto LABEL_165;
            }

LABEL_166:
            v82 = sub_1AC4E5E7C(v79);
            if ((v82 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v83 = v81 + v74;
            if (v83 >= v3)
            {
              goto LABEL_222;
            }

            v84 = v82;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v88 = sub_1AC51F2C8();
              v90 = v89;
              goto LABEL_183;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v85 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v85 = sub_1AC51F308();
              }

              v86 = (v85 + v83);
              v87 = *(v85 + v83);
              v88 = *(v85 + v83);
              if (v87 < 0)
              {
                switch(__clz(v88 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_215;
                  case 0x1Bu:
                    goto LABEL_216;
                  case 0x1Cu:
                    goto LABEL_217;
                  default:
                    break;
                }
              }

LABEL_182:
              v90 = 1;
              goto LABEL_183;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v86 = &v106 + v83;
            v88 = *(&v106 + v83);
            if ((*(&v106 + v83) & 0x80000000) == 0)
            {
              goto LABEL_182;
            }

            switch(__clz(v88 ^ 0xFF))
            {
              case 0x1Au:
LABEL_215:
                v88 = v86[1] & 0x3F | ((v88 & 0x1F) << 6);
                v90 = 2;
                break;
              case 0x1Bu:
LABEL_216:
                v88 = ((v88 & 0xF) << 12) | ((v86[1] & 0x3F) << 6) | v86[2] & 0x3F;
                v90 = 3;
                break;
              case 0x1Cu:
LABEL_217:
                v88 = ((v88 & 0xF) << 18) | ((v86[1] & 0x3F) << 12) | ((v86[2] & 0x3F) << 6) | v86[3] & 0x3F;
                v90 = 4;
                break;
              default:
                goto LABEL_182;
            }

LABEL_183:
            v91 = sub_1AC4E5E7C(v88);
            if ((v91 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v92 = v90 + v83;
            if (v92 >= v3)
            {
              goto LABEL_222;
            }

            v93 = v91;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v97 = sub_1AC51F2C8();
              v105 = v98;
              goto LABEL_201;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v94 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v94 = sub_1AC51F308();
              }

              v95 = (v94 + v92);
              v96 = *(v94 + v92);
              v97 = *(v94 + v92);
              if (v96 < 0)
              {
                switch(__clz(v97 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_219;
                  case 0x1Bu:
                    goto LABEL_220;
                  case 0x1Cu:
                    goto LABEL_221;
                  default:
                    break;
                }
              }

LABEL_199:
              v99 = 1;
              goto LABEL_200;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v95 = &v106 + v92;
            v97 = *(&v106 + v92);
            if ((*(&v106 + v92) & 0x80000000) == 0)
            {
              goto LABEL_199;
            }

            switch(__clz(v97 ^ 0xFF))
            {
              case 0x1Au:
LABEL_219:
                v97 = v95[1] & 0x3F | ((v97 & 0x1F) << 6);
                v99 = 2;
                break;
              case 0x1Bu:
LABEL_220:
                v97 = ((v97 & 0xF) << 12) | ((v95[1] & 0x3F) << 6) | v95[2] & 0x3F;
                v99 = 3;
                break;
              case 0x1Cu:
LABEL_221:
                v97 = ((v97 & 0xF) << 18) | ((v95[1] & 0x3F) << 12) | ((v95[2] & 0x3F) << 6) | v95[3] & 0x3F;
                v99 = 4;
                break;
              default:
                goto LABEL_199;
            }

LABEL_200:
            v105 = v99;
LABEL_201:
            v100 = sub_1AC4E5E7C(v97);
            if ((v100 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            if (v75 >> 28)
            {
              goto LABEL_231;
            }

            v101 = v84 + 16 * v75;
            if (__CFADD__(v84, 16 * v75))
            {
              goto LABEL_232;
            }

            if (v101 >> 28)
            {
              goto LABEL_233;
            }

            v10 = __CFADD__(v93, 16 * v101);
            v102 = v93 + 16 * v101;
            if (v10)
            {
              goto LABEL_234;
            }

            if (v102 >> 28)
            {
              goto LABEL_235;
            }

            v10 = __CFADD__(v100, 16 * v102);
            v103 = v100 + 16 * v102;
            if (v10)
            {
              goto LABEL_236;
            }

            if (v103 >> 10 != 55)
            {
              goto LABEL_222;
            }

            if (v52 < 0xD800)
            {
              goto LABEL_237;
            }

            if ((sub_1AC51F4E8() & 0x100000000) != 0)
            {
LABEL_222:

              return 0;
            }

            v5 = v105 + v92;
            break;
          default:
            JUMPOUT(0);
        }
      }

LABEL_44:
      sub_1AC51EE88();
      if (v5 >= v3)
      {

        return v108;
      }
    }

    v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((a1 & 0x1000000000000000) == 0)
    {
      v6 = sub_1AC51F308();
    }

    v7 = (v6 + v5);
    v8 = *(v6 + v5);
    if (*(v6 + v5) < 0)
    {
      switch(__clz(v8 ^ 0xFF))
      {
        case 0x1Au:
          goto LABEL_36;
        case 0x1Bu:
          goto LABEL_46;
        case 0x1Cu:
          goto LABEL_47;
        default:
          break;
      }
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  return 0;
}

uint64_t static Message.jsonString<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_12_8();
  v16 = v15 - v14;
  LOBYTE(v15) = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v22[0] = *a2;
  v22[1] = v15;
  v22[2] = v17;
  v22[3] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  static Message.jsonUTF8Bytes<A, B>(from:options:)(a1, v22, a3, a4, v19, a5, a6, &protocol witness table for <A> [A], &v23);
  if (v6)
  {
    return v16;
  }

  sub_1AC51EE18();
  sub_1AC45A8C0();
  result = sub_1AC51EE08();
  if (v21)
  {
    v16 = result;

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t static Message.jsonUTF8Bytes<A, B>(from:options:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a8;
  v67 = a6;
  v58 = a5;
  AssociatedConformanceWitness = a1;
  v57[1] = a9;
  OUTLINED_FUNCTION_5();
  v63 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_8();
  v18 = v17 - v16;
  v19 = sub_1AC51F228();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v57 - v20;
  OUTLINED_FUNCTION_5();
  v65 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12_8();
  v61 = v25 - v24;
  v62 = *(a7 + 8);
  v60 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5();
  v64 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v68 = v57 - v28;
  v29 = *a2;
  v30 = a2[1];
  v31 = a2[2];
  v32 = a2[3];
  if (dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding))
  {
    (*(v33 + 8))(&v70);
    v74 = v70;
    *v75 = v71;
    *&v75[16] = 0;
    v75[24] = v29;
    v75[25] = v30;
    v75[26] = v31;
    v75[27] = v32;
    v34 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_23();
      v34 = v54;
    }

    v35 = *(v34 + 16);
    if (v35 >= *(v34 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_27();
      v34 = v55;
    }

    *(v34 + 16) = v35 + 1;
    *(v34 + v35 + 32) = 91;
    *&v73 = v34;
    WORD4(v73) = 256;
    (*(v65 + 16))(v61, AssociatedConformanceWitness, v60);
    sub_1AC51F008();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = (v63 + 32);
    v65 = v67 + 72;
    v37 = (v63 + 8);
    while (1)
    {
      sub_1AC51F248();
      if (__swift_getEnumTagSinglePayload(v21, 1, a3) == 1)
      {
        break;
      }

      (*v36)(v18, v21, a3);
      v38 = v67;
      sub_1AC463A40(v18, &v73, a3, v67);
      (*(v38 + 72))(&v73, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, a3, v38);
      if (v9)
      {
        (*v37)(v18, a3);
        v52 = OUTLINED_FUNCTION_6_17();
        v53(v52);
        goto LABEL_19;
      }

      v34 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_23();
        v34 = v40;
      }

      v39 = *(v34 + 16);
      if (v39 >= *(v34 + 24) >> 1)
      {
        OUTLINED_FUNCTION_0_27();
        v34 = v41;
      }

      (*v37)(v18, a3);
      *(v34 + 16) = v39 + 1;
      OUTLINED_FUNCTION_5_18(v34 + v39);
    }

    v44 = OUTLINED_FUNCTION_6_17();
    v45(v44);
    v46 = *(v34 + 16);
    if (v46 >= *(v34 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_27();
      v34 = v56;
    }

    v47 = v59;
    v48 = v58;
    *(v34 + 16) = v46 + 1;
    OUTLINED_FUNCTION_5_18(v34 + v46);
    v76 = v34;
    v49 = *(v47 + 16);

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    v51 = sub_1AC45A8C0();
    v49(&v76, v50, v51, v48, v47);
LABEL_19:
    v70 = v73;
    v71 = v74;
    v72[0] = *v75;
    *(v72 + 12) = *&v75[12];
    return sub_1AC45A95C(&v70);
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    *v42 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1AC463A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1();
  (*(v5 + 16))();
  sub_1AC45A5F0(v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (OUTLINED_FUNCTION_33_4(v6, v7))
  {
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    v8 = OUTLINED_FUNCTION_24_6();
    v9(v8);
    v10 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1AC45A718(&v14, &qword_1EB5597A0, &qword_1AC528E18);
    v10 = 0;
  }

  *(v4 + 48) = v10;
  sub_1AC463B50();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1AC463B50()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_0_22();
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_13_8(v1);
  *(v0 + 8) = 256;
}

void sub_1AC463BA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v4 + 40);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;

        if (v7)
        {
          sub_1AC45A774();
          OUTLINED_FUNCTION_37_4();
          v11 = *v2;
          *(v11 + 16) = v5 + 1;
          *(v11 + v5 + 32) = 44;
          *v2 = v11;
        }

        sub_1AC45AEA4(v10, v9);

        v8 += 2;
        v7 = 1;
        --v6;
      }

      while (v6);
    }

    sub_1AC45A774();
    v12 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v12);
    OUTLINED_FUNCTION_0_23();
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 384))(a1, a2, a3, a4);
}

{
  return (*(a5 + 392))(a1, a2, a3, a4);
}

void sub_1AC463CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  if (!*(v20 + 33))
  {
    OUTLINED_FUNCTION_17_0();
    v32 = sub_1AC453530(v31);
    if (!v21)
    {
      (*(v25 + 32))(v32, v23, v25);
      OUTLINED_FUNCTION_20_2();
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_93_0();
        v35(v34);
      }

      else
      {
        OUTLINED_FUNCTION_5();
        v37 = v36;
        v38 = OUTLINED_FUNCTION_12();
        v39(v38);
        (*(v37 + 32))(v24, v30, v23);
        *(v22 + 32) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

void *OUTLINED_FUNCTION_105(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(__srca, a22);
  __src = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);

  return memcpy((v22 - 256), __srca, 0x67uLL);
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1AC463E94(uint64_t result)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xF7u)
    {
      v3 = (*v1 >> result);
      v4 = ((result + 8) - result) / -8;
      *v1 = (*v1 >> (((result + 8) >> 1) & 0x1C) >> (((result + 8) >> 1) & 0x1C) << ((result + 8 + 8 * v4) & 0x18)) | *v1 & ((1 << ((result >> 1) & 0x1C) << ((result >> 1) & 0x1C)) - 1);
      *(v1 + 4) = v2 + 8 * v4;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC463F1C()
{
  result = qword_1ED6E4330;
  if (!qword_1ED6E4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4330);
  }

  return result;
}

uint64_t sub_1AC463F8C(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return sub_1AC4519B4(a1);
  }

  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AC463FF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC451978(8 * a2);
  v8 = *v4 + result;
  if (__OFADD__(*v4, result))
  {
    __break(1u);
  }

  else
  {
    v9 = (*(a4 + 40))(a3, a4);
    result = sub_1AC463F8C(v9);
    if (!__OFADD__(v8, result))
    {
      *v4 = v8 + result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC46408C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1AC4640DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

double Google_Protobuf_Timestamp.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t Google_Protobuf_Timestamp.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  while (1)
  {
    result = v6(a2, a3);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_36_0();
      v9();
    }
  }

  return result;
}

unint64_t sub_1AC46424C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = (*(v0 + 40))(v1, v0);
  v3 = OUTLINED_FUNCTION_10_7();
  sub_1AC451CCC(v3, 0);
  return sub_1AC457060(v2);
}

uint64_t Google_Protobuf_Timestamp.date.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_1AC51ECE8();
  OUTLINED_FUNCTION_0_17();
  if (!(v5 ^ v6 | v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3.n128_f64[0] <= -9.22337204e18)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_14();
  if (!v5)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v1, v3.n128_f64[0]))
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x1EEDC4690](v3);
  }

  v3.n128_f64[0] = v2 / 1000000000.0 + (v1 - v3.n128_f64[0]);

  return MEMORY[0x1EEDC4690](v3);
}

void sub_1AC464360(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1AC451978((8 * a3) | 2u);
  v7 = MEMORY[0x1AC5B40B0](a1, a2);
  v8 = sub_1AC4519B4(v7);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = __OFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = __OFADD__(*v3, v11);
  v12 = *v3 + v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_11_4(v12);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1AC464420()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_13_3(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_12();
  v4 = MEMORY[0x1AC5B40B0](v3);
  sub_1AC45702C(v4);
  v5 = OUTLINED_FUNCTION_12();
  return sub_1AC46448C(v5, v6);
}

uint64_t sub_1AC46448C(uint64_t result, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v5;
      goto LABEL_7;
    case 2uLL:
      v8 = *(result + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v7 = v8;
LABEL_7:
      result = sub_1AC4645F4(result, v7, v6, v2);
      break;
    case 3uLL:
      return result;
    default:
      __src = result;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v3 = BYTE6(a2);
      v14 = BYTE5(a2);
      if (BYTE6(a2))
      {
        v4 = *v2;
        result = memcpy(*v2, &__src, BYTE6(a2));
        *v2 = &v4[v3];
      }

      break;
  }

  return result;
}

char *sub_1AC4645F4(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  result = sub_1AC51EB78();
  v8 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AC51EB98();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1AC464698(v8, v14, a4);
}

void *sub_1AC464698(void *__src, uint64_t a2, void **a3)
{
  if (__src)
  {
    v3 = a2 - __src;
    if (a2 - __src >= 1)
    {
      __src = memmove(*a3, __src, v3);
      *a3 = *a3 + v3;
    }
  }

  return __src;
}

void sub_1AC464710(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 10;
  v5 = 11;
  v6 = 12;
  if ((8 * a2) >> 28)
  {
    v6 = 13;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 9;
  }

  v8 = __OFADD__(*v2, v7);
  v9 = *v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v9);
  }
}

void sub_1AC4647B8()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (2 * v1) ^ (v1 >> 31);
  v11 = 2;
  v12 = 3;
  v13 = 4;
  if (v10 >> 28)
  {
    v13 = 5;
  }

  if (v10 >= 0x200000)
  {
    v12 = v13;
  }

  if (v10 >> 14)
  {
    v11 = v12;
  }

  if (v10 >= 0x80)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 + v9;
  v16 = __OFADD__(*v0, v15);
  v17 = *v0 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v17);
  }
}

uint64_t UnknownStorage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v5 = v3[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v6 = result;
      v7 = result >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(result + 16);
      v7 = *(result + 24);
LABEL_6:
      if (v6 != v7)
      {
        return (*(a3 + 448))(result);
      }

      return result;
    case 3uLL:
      return result;
    default:
      if ((v5 & 0xFF000000000000) == 0)
      {
        return result;
      }

      return (*(a3 + 448))(result);
  }
}

uint64_t sub_1AC46491C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC464994(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t Message.debugDescription.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_76();
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1AC51EE48();
}

unint64_t sub_1AC464A5C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = OUTLINED_FUNCTION_3_7(v0, v1);
  sub_1AC451CCC(v2, 0);
  v3 = OUTLINED_FUNCTION_10_7();
  return sub_1AC457060(v3);
}

void sub_1AC464AA8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 1u);
  v5 = *(v2 + 8);
  *v5 = v3;
  OUTLINED_FUNCTION_16_5((v5 + 1));
}

void sub_1AC464AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_28_0();
  v28 = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  if (!*(v20 + 33))
  {
    OUTLINED_FUNCTION_17_0();
    v35 = sub_1AC453530(v34);
    if (!v21)
    {
      (*(v25 + 32))(v35, v23, v25);
      v36 = OUTLINED_FUNCTION_92_0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v23);
      v39 = *(v30 + 8);
      if (EnumTagSinglePayload == 1)
      {
        v39(v33, v28);
      }

      else
      {
        v39(v24, v28);
        OUTLINED_FUNCTION_7_1();
        (*(v40 + 32))(v24, v33, v23);
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
        *(v22 + 32) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC464D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC464D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void Google_Protobuf_UInt32Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t OUTLINED_FUNCTION_321(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_322(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12)
{
  a11 = *v12;
  a12 = a11;

  return sub_1AC4848F4(&a12, &a9);
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 248))(a1, a2);
}

{
  return (*(a3 + 240))(a1, a2);
}

void sub_1AC464EF0(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(a1);
    if (!v2)
    {
      OUTLINED_FUNCTION_102_0(v4);
      *(a1 + 4) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 176))(a1, a2);
}

{
  return (*(a3 + 168))(a1, a2);
}

void *OUTLINED_FUNCTION_102_2(void *a1)
{

  return memcpy(a1, &STACK[0x220], 0x48uLL);
}

void sub_1AC464FB0(int a1)
{
  v2 = 8 * a1;
  v3 = 6;
  v4 = 7;
  v5 = 8;
  if ((8 * a1) >> 28)
  {
    v5 = 9;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * a1) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 5;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v8);
  }
}

void sub_1AC465040()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  sub_1AC451CCC(v3, 5u);
  v4 = *(v0 + 8);
  *v4 = v2;
  OUTLINED_FUNCTION_16_5((v4 + 1));
}

void sub_1AC4650E4()
{
  OUTLINED_FUNCTION_60();
  v105 = v4;
  v6 = v5;
  v91 = v7;
  sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_1();
  if (!v24)
  {
    if (!v21)
    {
      v25 = v23;
      v90 = v22;
      v26 = v20;
      v27 = sub_1AC453530(v20);
      if (!v1)
      {
        v89 = v0;
        (*(v105 + 32))(v27, v6);
        OUTLINED_FUNCTION_42_0(v11, 1, v6);
        if (v24)
        {
          v25[1](v11, v26);
        }

        else
        {
          (*(v13 + 32))(v3, v11, v6);
          (*(v13 + 16))(v90, v3, v6);
          OUTLINED_FUNCTION_88_0();
          sub_1AC51F108();
          sub_1AC51F0D8();
          v37 = OUTLINED_FUNCTION_67_0();
          v38(v37);
          *(v89 + 32) = 1;
        }
      }
    }

    goto LABEL_34;
  }

  v87 = v23;
  v88 = v20;
  v90 = v22;
  v28 = sub_1AC453530(v20);
  if (v1)
  {
    goto LABEL_34;
  }

  v29 = v28;
  v89 = v0;
  OUTLINED_FUNCTION_27_1();
  if (!v24 && v30)
  {
    v39 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v39);
    OUTLINED_FUNCTION_36_1();
    goto LABEL_13;
  }

  v31 = v89;
  v32 = *(v89 + 8);
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v30 = v32 >= v29;
  v33 = v32 - v29;
  if (!v30)
  {
    v34 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v34);
    OUTLINED_FUNCTION_53_1();
LABEL_13:
    OUTLINED_FUNCTION_59(v35, v36);
    goto LABEL_34;
  }

  v40 = *v89;
  *v89 += v29;
  *(v31 + 8) = v33;
  v41 = sub_1AC453E68(v40, v29);
  if (__OFADD__(sub_1AC51F0B8(), v41))
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_88_0();
  v85 = sub_1AC51F108();
  sub_1AC51F058();
  sub_1AC4530E8(v89, &v93);
  v42 = v95[7];
  LODWORD(v86) = v96;
  sub_1AC452928(v95, v92, &qword_1EB557F98, &qword_1AC520460);
  OUTLINED_FUNCTION_7_2();
  *(v43 + 128) = xmmword_1AC5205D0;
  *(v43 + 144) = xmmword_1AC5205D0;
  v98 = v40;
  v99 = v29;
  v100 = v40;
  v101 = 0;
  sub_1AC454060(v92, v44 + 48, &qword_1EB557F98, &qword_1AC520460);
  v102 = v42;
  v103 = v86;
  v45 = v97;
  sub_1AC45466C(&v93);
  v81 = 0;
  v104 = v45;
  v83 = (v13 + 16);
  v84 = (v13 + 32);
  v82 = (v13 + 8);
  v86 = v105 + 32;
  ++v87;
LABEL_16:
  v46 = v89;
  while (1)
  {
    if (!v29)
    {
      v63 = v81;
      if (v81)
      {
        v64 = *(v46 + 40);
        v65 = *(v81 + 16);
        if (v65)
        {
          v66 = 0;
          v67 = (v81 + 32);
          while (1)
          {
            v69 = *v67++;
            v68 = v69;
            if (v69 >= 0x80)
            {
              if ((v68 & 0x80000000) != 0)
              {
                v70 = 10;
              }

              else if (v68 >> 21)
              {
                v70 = v68 >> 28 ? 5 : 4;
              }

              else
              {
                v70 = v68 >= 0x4000 ? 3 : 2;
              }
            }

            else
            {
              v70 = 1;
            }

            v71 = __OFADD__(v66, v70);
            v66 += v70;
            if (v71)
            {
              goto LABEL_59;
            }

            if (!--v65)
            {
              goto LABEL_54;
            }
          }
        }

        v66 = 0;
LABEL_54:
        v72 = (8 * v64) | 2;
        v73 = sub_1AC5168CC(v72);
        v74 = sub_1AC4519B4(v66);
        v75 = v73 + v74;
        if (__OFADD__(v73, v74))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          return;
        }

        if (__OFADD__(v75, v66))
        {
          goto LABEL_62;
        }

        v93 = MEMORY[0x1AC5B40A0](v75 + v66);
        v94 = v76;

        sub_1AC48D370(&v93, v72, v66, v63);
        sub_1AC45466C(&v98);
        v77 = v93;
        v78 = v94;
        v79 = v89;
        sub_1AC45AC74(*(v89 + 144), *(v89 + 152));

        *(v79 + 144) = v77;
        *(v79 + 152) = v78;
      }

      else
      {
        sub_1AC45466C(&v98);
      }

      OUTLINED_FUNCTION_26_1();
      goto LABEL_34;
    }

    v48 = *v40++;
    v47 = v48;
    --v29;
    if (v48 < 0)
    {
      break;
    }

LABEL_23:
    v98 = v40;
    v99 = v29;
    (*(v105 + 32))(v47, v6);
    OUTLINED_FUNCTION_42_0(v2, 1, v6);
    if (!v24)
    {
      (*v84)(v17, v2, v6);
      (*v83)(v90, v17, v6);
      sub_1AC51F0D8();
      (*v82)(v17, v6);
      goto LABEL_16;
    }

    (*v87)(v2, v88);
    v46 = v89;
    if ((*(v89 + 112) & 1) == 0)
    {
      v52 = v81;
      if (!v81)
      {
        v52 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_4();
        sub_1AC48F190();
        v52 = v57;
      }

      v54 = *(v52 + 16);
      v53 = *(v52 + 24);
      v81 = v52;
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_57_0(v53);
        v80 = v58;
        sub_1AC48F190();
        v54 = v80;
        v81 = v59;
      }

      v56 = v81;
      *(v81 + 16) = v55;
      *(v56 + 4 * v54 + 32) = v47;
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_100_0();
  while (1)
  {
    v50 = v29-- < 1;
    if (v50 || v49 >= 0x40)
    {
      break;
    }

    OUTLINED_FUNCTION_11_2();
    if ((v51 & 0x80) == 0)
    {
      goto LABEL_23;
    }
  }

  v60 = sub_1AC48D31C();
  OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v60);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_59(v61, v62);
  sub_1AC45466C(&v98);

LABEL_34:
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_61();
}

double Google_Protobuf_StringValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_StringValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1AC4658D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  sub_1AC459C7C(v9);
  if (!v5)
  {
    v10 = OUTLINED_FUNCTION_40_4();
    v11(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
    if (swift_dynamicCast())
    {
      sub_1AC465B44(v21, v23);
      v12 = v24;
      v13 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      OUTLINED_FUNCTION_31_3();
      LOBYTE(v21[0]) = v14;
      BYTE1(v21[0]) = v15;
      BYTE2(v21[0]) = v16;
      BYTE3(v21[0]) = v17;
      v18 = (*(v13 + 8))(v21, v12, v13);
      sub_1AC45FA3C(v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_1AC45A718(v21, &qword_1EB557FC8, &unk_1AC528980);
      if ((*(v4 + 57) & 1) != 0 || (sub_1AC469654(a3, a4, v26), HIBYTE(v27) > 0xFEu))
      {
        v20 = (*(a4 + 40))(a3, a4);
        sub_1AC4E30BC(v20);
      }

      else
      {
        v28[0] = v26[0];
        v28[1] = v26[1];
        v29 = v27;
        sub_1AC45ABA8(v28);
        sub_1AC45A718(v26, &qword_1EB559790, "6V");
      }
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_31_5()
{
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 16) = v3;
  *(v2 + 24) = 1;
}

void OUTLINED_FUNCTION_31_6()
{
  *(v1 + 16) = v3;
  *(v1 + v4 + 32) = v0;
  *v2 = v1;
}

uint64_t Google_Protobuf_NullValue.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void Google_Protobuf_Timestamp.traverse<A>(visitor:)()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (!*v0 || (OUTLINED_FUNCTION_10(), v5(), !v1))
  {
    if (!v2 || (OUTLINED_FUNCTION_10(), v6(), !v1))
    {
      sub_1AC4578F4(v3, v4);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v7, v8, v9);
      sub_1AC4513F8(v3, v4);
    }
  }
}

uint64_t sub_1AC465DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = OUTLINED_FUNCTION_34_3();
  if (v5)
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

double Google_Protobuf_Timestamp.init(date:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AC51ECD8();
  Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(&v8, v4);
  v5 = sub_1AC51ECF8();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

void Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = floor(a2);
  OUTLINED_FUNCTION_0_17();
  if (!(v6 ^ v7 | v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 <= -9.22337204e18)
  {
    goto LABEL_16;
  }

  v8 = v4;
  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1AC51ECE8();
  OUTLINED_FUNCTION_0_17();
  if (!(v6 ^ v7 | v5))
  {
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_14();
  if (!v6)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v3, v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = round((v8 - v3) * 1000000000.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 <= -2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 >= 2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = OUTLINED_FUNCTION_1_17(v11);
  if (!__OFADD__(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_5_10(v12);
    OUTLINED_FUNCTION_4_10(v15);
    *(a1 + 16) = xmmword_1AC51F990;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1AC466024(unint64_t a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FBF4(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC46606C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    OUTLINED_FUNCTION_0_24();
LABEL_6:
    sub_1AC45FE50(v6, v7, v8);
    goto LABEL_7;
  }

  if ((*(v3 + 17) & 1) == 0)
  {
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = *(v3 + 16);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_15(",");
LABEL_7:
  sub_1AC45AEA4(a1, a2);
}

void sub_1AC466118(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC45AE04(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_1();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + v7 + 32), (v3 + 32), v1);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1AC4661B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a5);
  }

  return result;
}

uint64_t sub_1AC466284(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_29_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AC4663B4(a1, a2, sub_1AC492B38, v12, sub_1AC466F88, v11, AssociatedTypeWitness, v9);
}

uint64_t sub_1AC4663B4(unint64_t a1, uint64_t a2, unint64_t a3, void (**a4)(uint64_t, char *, uint64_t), void (*a5)(__int128 *, char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v113 = a5;
  v114 = a6;
  v109 = a4;
  v101 = a3;
  v108 = a1;
  v95 = *(a8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v105 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = v93 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v111 = v93 - v15;
  v94 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v104 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = v93 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v93 - v21;
  v115 = v23;
  v116 = v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = sub_1AC51F228();
  i = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v93 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (v93 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v93 - v36;
  v38 = v112;
  result = sub_1AC459C7C(a2);
  if (v38)
  {
    return result;
  }

  v110 = v35;
  v102 = v32;
  v99 = v22;
  v103 = v29;
  v112 = v26;
  v40 = sub_1AC45FA3C(123, 0xE100000000000000);
  v41 = v8[56];
  v42 = v8[57];
  v43 = v8[58];
  v44 = v8[59];
  v118 = 0uLL;
  v119 = 256;
  v120 = MEMORY[0x1E69E7CC0];
  v121 = 256;
  v122 = v41;
  v123 = v42;
  v124 = v43;
  v125 = v44;
  v93[2] = v8;
  if (v44 != 1)
  {
    v63 = i;
    if ((v108 & 0xC000000000000001) != 0)
    {
      v64 = sub_1AC51F368();
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v101 = v64 | 0x8000000000000000;
    }

    else
    {
      v68 = -1 << *(v108 + 32);
      v66 = ~v68;
      v65 = v108 + 64;
      v69 = -v68;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v67 = (v70 & *(v108 + 64));
      v101 = v108;
    }

    v71 = v107;
    v72 = v106;
    v109 = (v95 + 32);
    v110 = (v94 + 32);
    v93[1] = v66;
    v73 = (v66 + 64) >> 6;
    v93[4] = v94 + 16;
    v93[3] = v95 + 16;
    v98 = (v63 + 32);
    v96 = (v95 + 8);
    v97 = (v94 + 8);

    v74 = 0;
    for (i = v65; ; v65 = i)
    {
      v99 = v67;
      v108 = v74;
      if ((v101 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1AC51F378())
      {
        sub_1AC51F3C8();
        swift_unknownObjectRelease();
        v77 = v116;
        sub_1AC51F3C8();
        swift_unknownObjectRelease();
        v76 = v108;
        v111 = v67;
LABEL_31:
        v82 = *(TupleTypeMetadata2 + 48);
        v83 = v103;
        (*v110)();
        (*v109)(v83 + v82, v71, v77);
        v84 = 0;
        v78 = v76;
        goto LABEL_35;
      }

      v84 = 1;
      v85 = v67;
      v78 = v108;
      v111 = v85;
LABEL_34:
      v83 = v103;
LABEL_35:
      __swift_storeEnumTagSinglePayload(v83, v84, 1, TupleTypeMetadata2);
      v86 = v102;
      (*v98)(v102, v83, v112);
      if (__swift_getEnumTagSinglePayload(v86, 1, TupleTypeMetadata2) == 1)
      {
        sub_1AC460BE4(v101);
        goto LABEL_38;
      }

      v87 = *(TupleTypeMetadata2 + 48);
      v88 = v104;
      v89 = v115;
      (*v110)(v104, v86, v115);
      v90 = (v86 + v87);
      v91 = v105;
      v92 = v116;
      (*v109)(v105, v90, v116);
      v113(&v118, v88, v91);
      (*v96)(v91, v92);
      result = (*v97)(v88, v89);
      v74 = v78;
      v67 = v111;
      v71 = v107;
      v72 = v106;
    }

    if (!v67)
    {
      v78 = v74;
      while (1)
      {
        v76 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v76 >= v73)
        {
          v111 = 0;
          v84 = 1;
          goto LABEL_34;
        }

        v75 = *(v65 + 8 * v76);
        ++v78;
        if (v75)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v75 = v67;
    v76 = v74;
LABEL_30:
    v111 = ((v75 - 1) & v75);
    v79 = __clz(__rbit64(v75)) | (v76 << 6);
    v80 = v101;
    (*(v94 + 16))(v72, *(v101 + 48) + *(v94 + 72) * v79, v115);
    v81 = *(v80 + 56) + *(v95 + 72) * v79;
    v77 = v116;
    (*(v95 + 16))(v71, v81, v116);
    goto LABEL_31;
  }

  *&v117 = v108;
  MEMORY[0x1EEE9AC00](v40);
  v93[-6] = v45;
  v93[-5] = v46;
  v47 = v101;
  v93[-4] = v48;
  v93[-3] = v47;
  v93[-2] = v109;
  sub_1AC51ED88();
  swift_getWitnessTable();
  v49 = v115;
  v50 = sub_1AC51F028();
  v51 = sub_1AC51F038();
  v104 = (TupleTypeMetadata2 - 8);
  v126 = v51;
  v109 = (i + 32);
  v106 = (v94 + 32);
  v105 = (v95 + 32);
  v107 = (v95 + 8);
  v108 = v94 + 8;
  for (j = v99; ; j = v60)
  {
    v53 = sub_1AC51F0B8();
    v54 = v126;
    v55 = v110;
    if (v126 == v53)
    {
      __swift_storeEnumTagSinglePayload(v110, 1, 1, TupleTypeMetadata2);
      v57 = v111;
      v56 = v112;
    }

    else
    {
      v58 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v58)
      {
        (*(*(TupleTypeMetadata2 - 8) + 16))(v55, v50 + ((*(*(TupleTypeMetadata2 - 8) + 80) + 32) & ~*(*(TupleTypeMetadata2 - 8) + 80)) + *(*(TupleTypeMetadata2 - 8) + 72) * v54, TupleTypeMetadata2);
      }

      else
      {
        result = sub_1AC51F2F8();
        v62 = *(TupleTypeMetadata2 - 8);
        if (*(v62 + 64) != 8)
        {
          goto LABEL_41;
        }

        *&v117 = result;
        (*(v62 + 16))(v55, &v117, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      v49 = v115;
      v57 = v111;
      sub_1AC51F0F8();
      __swift_storeEnumTagSinglePayload(v55, 0, 1, TupleTypeMetadata2);
      v56 = v112;
    }

    (*v109)(v37, v55, v56);
    if (__swift_getEnumTagSinglePayload(v37, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v59 = *(TupleTypeMetadata2 + 48);
    (*v106)(j, v37, v49);
    v60 = j;
    v61 = v116;
    (*v105)(v57, &v37[v59], v116);
    v113(&v118, v60, v57);
    (*v107)(v57, v61);
    (*v108)(v60, v49);
  }

LABEL_38:
  sub_1AC466118(v120);
  return sub_1AC45FA3C(125, 0xE100000000000000);
}

uint64_t sub_1AC466FA8()
{
  OUTLINED_FUNCTION_3_20();
  if (v3)
  {
    if (*(v1 + 17))
    {
      OUTLINED_FUNCTION_6_15(",");
    }

    else
    {
      sub_1AC45FE50(*v1, *(v1 + 8), *(v1 + 16));
    }
  }

  else
  {
    v4 = v2;
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v5, v6, v7);
    if (*(v1 + 34) == 1)
    {
      v8 = OUTLINED_FUNCTION_4_13();
      return v4(v8);
    }
  }

  v10 = OUTLINED_FUNCTION_4_13();
  return v0(v10);
}

uint64_t sub_1AC467088(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    v2 = ~(~a2 / 0x3B9ACA00u);
  }

  else
  {
    v2 = a2 / 0x3B9ACA00;
  }

  v3 = result + v2;
  if (__OFADD__(result, v2))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1AC4673EC(a2, 1000000000);
  if ((v3 - 0x3AFFF44180) < 0xFFFFFFB68879C780)
  {
    return 0;
  }

  v5 = v4;
  result = sub_1AC4673B4(v3, 86400);
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  v6 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = sub_1AC4673EC(result, 60);
  if (v6 < 0)
  {
    v8 = ~(~v6 / 0x3Cu);
  }

  else
  {
    v8 = v6 / 0x3C;
  }

  v9 = sub_1AC4673EC(v8, 60);
  if (v6 < 0)
  {
    v10 = ~(~v6 / 0xE10u);
  }

  else
  {
    v10 = v6 / 0xE10;
  }

  v11 = sub_1AC467424(v3);
  v13 = v12;
  v14 = HIDWORD(v11);
  v24 = sub_1AC46763C(v11, 4);
  MEMORY[0x1AC5B4340](45, 0xE100000000000000);
  v15 = sub_1AC46763C(v14, 2);
  MEMORY[0x1AC5B4340](v15);

  MEMORY[0x1AC5B4340](45, 0xE100000000000000);
  v16 = sub_1AC46763C(v13, 2);
  MEMORY[0x1AC5B4340](v16);

  v17 = v24;
  v25 = sub_1AC46763C(v10, 2);
  v26 = v18;
  MEMORY[0x1AC5B4340](58, 0xE100000000000000);
  v19 = sub_1AC46763C(v9, 2);
  MEMORY[0x1AC5B4340](v19);

  MEMORY[0x1AC5B4340](58, 0xE100000000000000);
  v20 = sub_1AC46763C(v7, 2);
  MEMORY[0x1AC5B4340](v20);

  v21 = sub_1AC467704(v5);
  v23 = v22;
  MEMORY[0x1AC5B4340](84, 0xE100000000000000);
  MEMORY[0x1AC5B4340](v25, v26);

  MEMORY[0x1AC5B4340](v21, v23);

  MEMORY[0x1AC5B4340](90, 0xE100000000000000);
  return v17;
}

uint64_t sub_1AC467308()
{
  v1 = sub_1AC467088(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x1AC5B4340](v1);

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1AC4673B4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_10;
  }

  result %= a2;
  if (result < 0)
  {
    v3 = __OFADD__(result, a2);
    result += a2;
    if (v3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1AC4673EC(uint64_t result, int a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result == 0x80000000 && a2 == -1)
  {
    goto LABEL_10;
  }

  result = (result % a2);
  if ((result & 0x80000000) != 0)
  {
    v3 = __OFADD__(result, a2);
    result = (result + a2);
    if (v3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

int64_t sub_1AC467424(uint64_t a1)
{
  v1 = __OFADD__(a1, 0x3118A41200);
  result = a1 + 0x3118A41200;
  if (v1)
  {
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1AC467610(result, 86400);
  v3 = result + 1401;
  if (__OFADD__(result, 1401))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v1 = __OFADD__(274277, 4 * result);
  result = 4 * result + 274277;
  if (v1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = sub_1AC467610(result, 146097);
  v5 = (v4 * 3) >> 64;
  result = 3 * v4;
  if (v5 != result >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = sub_1AC467610(result, 4);
  v6 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = __OFSUB__(v6, 38);
  v7 = v6 - 38;
  if (v1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = (4 * v7) | 3;
  v9 = sub_1AC4673B4(v8, 1461);
  result = sub_1AC467610(v9, 4);
  v10 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_1AC4673B4(v10 + 2, 153);
  result = sub_1AC467610(v11, 5);
  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = sub_1AC467610(v10 + 2, 153);
  v1 = __OFADD__(v13, 2);
  result = v13 + 2;
  if (v1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  result = sub_1AC4673B4(result, 12);
  v14 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = sub_1AC467610(v8, 1461);
  v15 = result - 4716;
  if (__OFADD__(result, -4716))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = 14 - v14;
  if (__OFSUB__(14, v14))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = sub_1AC467610(result, 12);
  v1 = __OFADD__(v15, v16);
  result = v15 + v16;
  if (v1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v12 < 0xFFFFFFFF80000000 || v14 < 0xFFFFFFFF80000000 || result < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    return result | (v14 << 32);
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1AC467610(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    if (a2)
    {
      return (result + 1) / a2 - 1;
    }
  }

  else
  {
    if (a2)
    {
      result /= a2;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC46763C(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_1AC51F3B8();
    v5 = v4;
    if (sub_1AC51EEC8() >= a2)
    {
      return v3;
    }

    result = sub_1AC51EEC8();
    if (!__OFSUB__(a2, result))
    {
      v6 = sub_1AC51EFB8();

      MEMORY[0x1AC5B4340](v3, v5);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC467704(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if (!(result % 1000000))
  {
    if ((result & 0x80000000) == 0 || (v1 = __OFSUB__(0, result), result = -result, !v1))
    {
      result = (result / 1000000);
      v2 = 3;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!(result % 1000))
  {
    if ((result & 0x80000000) == 0 || (v1 = __OFSUB__(0, result), result = -result, !v1))
    {
      result = (result / 1000);
      v2 = 6;
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v1 = __OFSUB__(0, result);
    result = -result;
    if (v1)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  v2 = 9;
LABEL_14:
  v3 = sub_1AC46763C(result, v2);
  MEMORY[0x1AC5B4340](v3);

  return 46;
}

void sub_1AC46781C(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 33) == 5)
  {
    v5 = a2();
    if (!v3)
    {
      *a1 = v5;
      *(a1 + 4) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

char *OUTLINED_FUNCTION_47_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  *v1 += v2;
  *(v1 + 8) = a1;

  return sub_1AC453E68(v4, v2);
}

uint64_t OUTLINED_FUNCTION_47_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 - 24) = a9;
  *(v10 - 8) = v11;
  *(v10 + 4) = v13;
  *v10 = v12;
  *(v9 + 46) = *(v9 + 14);
  v9[2] = *v9;

  return sub_1AC4AEF78((v9 + 2));
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_47_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return memcpy((v2 - 160), (v2 - 304), 0x41uLL);
}

uint64_t dispatch thunk of Decoder.decodeSingularFloatField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

uint64_t sub_1AC46797C(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 < 4;
  v4 = (v2 - 4);
  if (v3)
  {
    sub_1AC48D31C();
    v5 = swift_allocError();
    return OUTLINED_FUNCTION_15(v5, v6);
  }

  else
  {
    result = *(*v1)++;
    v1[1] = v4;
  }

  return result;
}

unint64_t sub_1AC4679DC(unsigned int a1)
{
  if (a1 < 8 || (v1 = a1, sub_1AC450A70(a1 & 7) == 6))
  {
    v1 = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 32);
}

void sub_1AC467A40(unsigned int a1)
{
  v4 = sub_1AC450A70(a1 & 7);
  switch(v4)
  {
    case 1:
      v9 = *(v1 + 8);
      if (v9 <= 7)
      {
        goto LABEL_20;
      }

      v10 = *v1 + 8;
      v11 = v9 - 8;
      goto LABEL_23;
    case 2:
      v12 = sub_1AC453530(v4);
      if (v2)
      {
        return;
      }

      v13 = *(v1 + 8);
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1AC467C00);
      }

      v8 = v13 >= v12;
      v11 = v13 - v12;
      if (!v8)
      {
        goto LABEL_20;
      }

      v10 = *v1 + v12;
LABEL_23:
      *v1 = v10;
      *(v1 + 8) = v11;
      return;
    case 3:
      sub_1AC4506F4(v4);
      if (v2)
      {
        return;
      }

      break;
    case 4:
      goto LABEL_20;
    case 5:
      v14 = *(v1 + 8);
      if (v14 <= 3)
      {
        goto LABEL_20;
      }

      v10 = *v1 + 4;
      v11 = v14 - 4;
      goto LABEL_23;
    case 6:
      goto LABEL_29;
    default:
      sub_1AC453530(v4);
      return;
  }

  while (1)
  {
    if (*(v1 + 8) < 1)
    {
LABEL_20:
      sub_1AC48D31C();
      swift_allocError();
      v16 = 1;
LABEL_21:
      *v15 = v16;
      swift_willThrow();
      return;
    }

    v6 = sub_1AC453530(v5);
    if (v6 > 0xFFFFFFFE)
    {
      goto LABEL_27;
    }

    v7 = v6 & 7;
    v8 = v6 < 8 || v7 >= 6;
    if (v8)
    {
      goto LABEL_27;
    }

    if (v7 == 4)
    {
      break;
    }

    *(v1 + 33) = v7;
    *(v1 + 40) = v6 >> 3;
    v5 = sub_1AC467A40(v6);
  }

  *(v1 + 33) = 4;
  v17 = v6 >> 3;
  *(v1 + 40) = v17;
  if (v17 != a1 >> 3)
  {
LABEL_27:
    sub_1AC48D31C();
    swift_allocError();
    v16 = 3;
    goto LABEL_21;
  }

  sub_1AC451450();
}

unint64_t sub_1AC467C1C(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 < 1)
  {
    v10 = 0;
    return v10 | ((v3 < 1) << 32);
  }

  result = sub_1AC453530(a1);
  if (!v2)
  {
    OUTLINED_FUNCTION_99_0();
    if (!v7 & v6 || (v8 = sub_1AC4679DC(v5), (v8 & 0x100000000) != 0))
    {
      v11 = sub_1AC48D31C();
      v12 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v11);
      return OUTLINED_FUNCTION_16_3(v12, v13);
    }

    else
    {
      v9 = v8;
      result = sub_1AC450A70(v8 & 7);
      if (result != 6)
      {
        *(v1 + 33) = result;
        *(v1 + 40) = v9 >> 3;
        v10 = v9;
        return v10 | ((v3 < 1) << 32);
      }

      __break(1u);
    }
  }

  return result;
}

void sub_1AC467CD8(uint64_t a1)
{
  sub_1AC467D1C(a1);
  if (!v2)
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      MEMORY[0x1AC5B4090](*(v1 + 16), v3 - *(v1 + 16));
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AC467D1C(uint64_t result)
{
  v3 = v1[3];
  if (v3)
  {
    *v1 = v3;
  }

  else
  {
    v5 = v1[1];
    v4 = v1[2];
    v6 = *v1 - v4;
    v7 = __OFADD__(v5, v6);
    v8 = v5 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *v1 = v4;
      v1[1] = v8;
      v9 = sub_1AC467C1C(result);
      if (!v2)
      {
        if ((v9 & 0x100000000) != 0)
        {
          sub_1AC48D31C();
          swift_allocError();
          *v10 = 1;
          swift_willThrow();
        }

        else
        {
          sub_1AC467A40(v9);
          v1[3] = *v1;
        }
      }
    }
  }
}

BOOL OUTLINED_FUNCTION_99_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22)
{

  return sub_1AC48610C(a22, a21, a19);
}

uint64_t sub_1AC467E68(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  v5 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v5);
  OUTLINED_FUNCTION_1();
  *(v6 + 32) = 34;
  *v2 = v7;
  if (MEMORY[0x1AC5B40B0](a1, a2) >= 1)
  {
    sub_1AC467F0C(a1, a2, v2);
  }

  sub_1AC45A774();
  v8 = *(*v2 + 16);
  result = sub_1AC45A85C(v8);
  v10 = *v2;
  *(v10 + 16) = v8 + 1;
  *(v10 + v8 + 32) = 34;
  *v2 = v10;
  return result;
}

void sub_1AC467F0C(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v7;
      goto LABEL_7;
    case 2uLL:
      v4 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v4;
LABEL_7:
      sub_1AC468058(a1, v6, v5, a3);
      break;
    case 3uLL:
      sub_1AC4E4EFC(0, 0, a3);
      break;
    default:
      v8 = a1;
      v9 = a2;
      v10 = BYTE2(a2);
      v11 = BYTE3(a2);
      v12 = BYTE4(a2);
      v13 = BYTE5(a2);
      sub_1AC4680FC(&v8, &v8 + BYTE6(a2), a3);
      break;
  }
}

void sub_1AC468058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1AC51EB78();
  if (v7)
  {
    v8 = sub_1AC51EBA8();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AC51EB98();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1AC4680FC(v7, v14, a4);
}

void sub_1AC4680FC(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return;
  }

  v4 = a1;
  v5 = a2 - a1;
  if (a2 - a1 < 1)
  {
    return;
  }

  v94 = v3;
  v95 = a3;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v8 == 3)
    {
      if (qword_1ED6E3418 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23_6();
      if (v9)
      {
        goto LABEL_52;
      }

      v10 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v22);
      }

      OUTLINED_FUNCTION_15_7();
      if (v9)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_16_7(v23, v24, v25, v26, v27, v28, v29, v30, v94, v95);
      }

      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_23_6();
      if (v9)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_17_8();
      v12 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v10;
      if ((v12 & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v31);
      }

      OUTLINED_FUNCTION_15_7();
      if (v9)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_16_7(v32, v33, v34, v35, v36, v37, v38, v39, v94, v95);
      }

      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_23_6();
      if (v9)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_17_8();
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v10;
      if ((v13 & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v40);
      }

      OUTLINED_FUNCTION_15_7();
      if (v9)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_16_7(v41, v42, v43, v44, v45, v46, v47, v48, v94, v95);
      }

      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_23_6();
      if (v9)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_17_8();
      v16 = *(v15 + v14);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v10;
      if ((v17 & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v49);
      }

      v18 = *(v10 + 16);
      if (v18 >= *(v10 + 24) >> 1)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_20_7(v50);
      }

      v8 = 0;
      v19 = 0;
      *(v10 + 16) = v18 + 1;
      *(v10 + v18 + 32) = v16;
    }

    else
    {
      v19 = v7;
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v21 = *v4++;
    v7 = v21 | (v19 << 8);
    --v5;
  }

  while (v5);
  if (v8 == 1)
  {
    if (qword_1ED6E3418 == -1)
    {
LABEL_46:
      v81 = qword_1ED6E3420;
      OUTLINED_FUNCTION_21_5();
      if (!v9)
      {
        v83 = *(v81 + 32 + v82);
        sub_1AC45A774();
        v84 = OUTLINED_FUNCTION_5_14();
        sub_1AC45A85C(v84);
        OUTLINED_FUNCTION_1();
        *(v85 + 32) = v83;
        OUTLINED_FUNCTION_21_5();
        if (!v9)
        {
          v87 = *(v81 + 32 + v86);
          sub_1AC45A774();
          v88 = OUTLINED_FUNCTION_5_14();
          sub_1AC45A85C(v88);
          OUTLINED_FUNCTION_1();
          *(v89 + 32) = v87;
          sub_1AC45A774();
          v90 = OUTLINED_FUNCTION_5_14();
          sub_1AC45A85C(v90);
          OUTLINED_FUNCTION_1();
          v66 = 61;
          *(v91 + 32) = 61;
          goto LABEL_49;
        }

        goto LABEL_63;
      }

      __break(1u);
LABEL_60:
      OUTLINED_FUNCTION_7_12(&qword_1ED6E3418);
      goto LABEL_35;
    }

LABEL_58:
    OUTLINED_FUNCTION_7_12(&qword_1ED6E3418);
    goto LABEL_46;
  }

  if (v8 == 2)
  {
    if (qword_1ED6E3418 == -1)
    {
LABEL_41:
      v67 = qword_1ED6E3420;
      OUTLINED_FUNCTION_21_5();
      if (!v9)
      {
        v69 = v67 + 32;
        v70 = *(v67 + 32 + v68);
        sub_1AC45A774();
        v71 = OUTLINED_FUNCTION_5_14();
        sub_1AC45A85C(v71);
        OUTLINED_FUNCTION_1();
        *(v72 + 32) = v70;
        OUTLINED_FUNCTION_21_5();
        if (!v9)
        {
          v74 = *(v69 + v73);
          sub_1AC45A774();
          v75 = OUTLINED_FUNCTION_5_14();
          sub_1AC45A85C(v75);
          OUTLINED_FUNCTION_1();
          *(v76 + 32) = v74;
          OUTLINED_FUNCTION_21_5();
          if (!v9)
          {
            v78 = *(v69 + v77);
            sub_1AC45A774();
            v79 = OUTLINED_FUNCTION_5_14();
            sub_1AC45A85C(v79);
            OUTLINED_FUNCTION_1();
            *(v80 + 32) = v78;
            v66 = 61;
            goto LABEL_49;
          }

          goto LABEL_65;
        }

        goto LABEL_62;
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    OUTLINED_FUNCTION_7_12(&qword_1ED6E3418);
    goto LABEL_41;
  }

  if (v8 != 3)
  {
    return;
  }

  if (qword_1ED6E3418 != -1)
  {
    goto LABEL_60;
  }

LABEL_35:
  v51 = qword_1ED6E3420;
  OUTLINED_FUNCTION_24_5();
  if (v9)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v53 = v51 + 32;
  v54 = *(v51 + 32 + v52);
  sub_1AC45A774();
  v55 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v55);
  OUTLINED_FUNCTION_1();
  *(v56 + 32) = v54;
  OUTLINED_FUNCTION_24_5();
  if (v9)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v58 = *(v53 + v57);
  sub_1AC45A774();
  v59 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v59);
  OUTLINED_FUNCTION_1();
  *(v60 + 32) = v58;
  OUTLINED_FUNCTION_24_5();
  if (v9)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v62 = *(v53 + v61);
  sub_1AC45A774();
  v63 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v63);
  OUTLINED_FUNCTION_1();
  *(v64 + 32) = v62;
  OUTLINED_FUNCTION_24_5();
  if (!v9)
  {
    v66 = *(v53 + v65);
LABEL_49:
    sub_1AC45A774();
    v92 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v92);
    OUTLINED_FUNCTION_1();
    *(v93 + 32) = v66;
    return;
  }

LABEL_67:
  __break(1u);
}

void OUTLINED_FUNCTION_23_7()
{
  *(v1 + 16) = v2;
  *(v1 + v3 + 32) = 45;
  *v0 = v1;
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_1AC51EDF8();
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_23_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return memcpy(va, v28, 0x4AuLL);
}

void OUTLINED_FUNCTION_23_11()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1AC4854E8(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *a2 = 0;

  return swift_willThrow();
}

char *OUTLINED_FUNCTION_23_13(char *a1)
{

  return sub_1AC45FE50(a1, 2, 2);
}

void *OUTLINED_FUNCTION_382(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x46uLL);
}

uint64_t sub_1AC4687A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v16 = *(a4 + 8);
  (*(a7 + 16))(a5, a7);
  v21 = v15;
  v22 = v16;
  v17 = v23;
  Message.merge<A>(serializedBytes:extensions:partial:options:)(a1, a2, a3, &v21, a5, a6, a7, a8);
  sub_1AC455360(a2);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  if (v17)
  {
    return (*(*(a5 - 8) + 8))(a9, a5);
  }

  return result;
}

void sub_1AC4688F0(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_9;
      }

      v3 = v3;
LABEL_6:
      v6 = __OFADD__(*v2, v3);
      v7 = *v2 + v3;
      if (v6)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x1AC46895CLL);
      }

      OUTLINED_FUNCTION_6_4(v7);
      return;
    case 2uLL:
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_1AC4689B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v26 = v12;
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OUTLINED_FUNCTION_3_7(v11, v14);
  sub_1AC451CCC(v15, 2u);
  v32 = 0;
  v33 = a1;
  v30 = a3;
  v31 = a4;
  sub_1AC51F108();
  swift_getWitnessTable();
  sub_1AC51F018();
  sub_1AC45702C(v34);
  OUTLINED_FUNCTION_12();
  v16 = sub_1AC51F038();
  v34 = v16;
  OUTLINED_FUNCTION_12();
  result = sub_1AC51F0B8();
  if (v16 != result)
  {
    v24 = v5;
    v25 = v6;
    v18 = *(v6 + 8);
    v29 = a4;
    v19 = *(a4 + 40);
    v27 = (v10 + 16);
    v28 = v19;
    while (1)
    {
      OUTLINED_FUNCTION_12();
      v20 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v20)
      {
        (*(v10 + 16))(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, a3);
      }

      else
      {
        result = sub_1AC51F2F8();
        if (v26 != 8)
        {
          __break(1u);
          return result;
        }

        v33 = result;
        (*v27)(v13, &v33, a3);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v21 = v28(a3, v29);
      (*(v10 + 8))(v13, a3);
      if (v21 < 0x80)
      {
        LOBYTE(v22) = v21;
      }

      else
      {
        do
        {
          *v18++ = v21 | 0x80;
          v22 = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }

      *v18++ = v22;
      OUTLINED_FUNCTION_12();
      result = sub_1AC51F0B8();
      v16 = v34;
      if (v34 == result)
      {
        *(v25 + 8) = v18;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1AC468CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = (*(a3 + 40))(a2, a3);
  result = sub_1AC463F8C(v6);
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a4 = v5 + result;
  }

  return result;
}

void sub_1AC468D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v82 = a4;
  OUTLINED_FUNCTION_9_13();
  v72 = v8;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v68 - v16);
  sub_1AC459C7C(v18);
  if (v5)
  {
    return;
  }

  v78 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v72;
  v81 = v17;
  v73 = v10;
  sub_1AC45A774();
  v20 = *(*v4 + 16);
  sub_1AC45A85C(v20);
  v21 = *v4;
  *(v21 + 16) = v20 + 1;
  *(v21 + v20 + 32) = 91;
  *v4 = v21;
  v4[4] = 256;
  if (!dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _CustomJSONCodable))
  {
    v39 = dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding);
    v40 = v73;
    if (!v39)
    {
      sub_1AC4777D8();
      v63 = swift_allocError();
      OUTLINED_FUNCTION_21_6(v63, v64);
      return;
    }

    v41 = v19;
    OUTLINED_FUNCTION_42_3();
    v42();
    v44 = v83;
    v43 = v84;
    v45 = v85;
    v46 = v86;
    v47 = *(v6 + 16);
    v75 = *(v6 + 24);
    v76 = v47;
    v48 = *(v6 + 32);
    v70 = *(v6 + 40);
    v71 = v48;
    v49 = *(v6 + 48);
    *(v6 + 16) = v83;
    *(v6 + 24) = v43;
    *(v6 + 32) = v45;
    *(v6 + 40) = v46;
    v69 = v49;

    v77 = v44;

    v74 = v43;

    v68[2] = v45;

    v68[1] = v46;

    OUTLINED_FUNCTION_25_0();
    v50 = sub_1AC51F038();
    v83 = v50;
    v80 = (v82 + 72);
    v81 = (v41 + 16);
    v79 = (v41 + 8);
    v51 = v78;
    while (1)
    {
      OUTLINED_FUNCTION_25_0();
      if (v50 == sub_1AC51F0B8())
      {
        break;
      }

      OUTLINED_FUNCTION_25_0();
      v52 = sub_1AC51F0A8();
      OUTLINED_FUNCTION_49_3(v52);
      if (v52)
      {
        OUTLINED_FUNCTION_19_7();
        v53(v51);
      }

      else
      {
        OUTLINED_FUNCTION_39_4();
        v58 = sub_1AC51F2F8();
        if (v40 != 8)
        {
          goto LABEL_36;
        }

        v87 = v58;
        (*v81)(v51, &v87, a3);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_39_4();
      sub_1AC51F0F8();
      v54 = v82;
      sub_1AC463A40(v51, v6, a3, v82);
      (*(v54 + 72))(v6, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, a3, v54);
      (*v79)(v51, a3);
      v55 = *v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        v55 = v59;
      }

      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_57_0(v56);
        sub_1AC45A78C();
        v55 = v60;
      }

      *(v55 + 16) = v57 + 1;
      OUTLINED_FUNCTION_22(v55 + v57);
      *(v6 + 8) = 44;
      v50 = v83;
      v40 = v73;
    }

    v65 = v75;
    *(v6 + 16) = v76;
    *(v6 + 24) = v65;
    v66 = v70;
    *(v6 + 32) = v71;
    *(v6 + 40) = v66;

    *(v6 + 48) = v69;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_25_0();
  v22 = sub_1AC51F038();
  v83 = v22;
  OUTLINED_FUNCTION_25_0();
  if (v22 == sub_1AC51F0B8())
  {
LABEL_33:
    sub_1AC45A774();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_14_10(v67);
    return;
  }

  v23 = v19;
  v24 = 0;
  LODWORD(v79) = *(v6 + 56);
  LODWORD(v78) = *(v6 + 57);
  v80 = (v23 + 16);
  LODWORD(v77) = *(v6 + 58);
  v75 = (v23 + 32);
  v76 = v23 + 8;
  LODWORD(v74) = *(v6 + 59);
  while (1)
  {
    OUTLINED_FUNCTION_25_0();
    v25 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_49_3(v25);
    if (v25)
    {
      OUTLINED_FUNCTION_19_7();
      v26 = v81;
      v27(v81);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_39_4();
    v36 = sub_1AC51F2F8();
    if (v73 != 8)
    {
      break;
    }

    v87 = v36;
    v26 = v81;
    (*v80)(v81, &v87, a3);
    swift_unknownObjectRelease();
LABEL_7:
    OUTLINED_FUNCTION_39_4();
    sub_1AC51F0F8();
    (*v75)(v15, v26, a3);
    if (v24)
    {
      v28 = *v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        v28 = v37;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_57_0(v29);
        sub_1AC45A78C();
        v28 = v38;
      }

      *(v28 + 16) = v30 + 1;
      OUTLINED_FUNCTION_22(v28 + v30);
    }

    LOBYTE(v87) = v79;
    BYTE1(v87) = v78;
    BYTE2(v87) = v77;
    BYTE3(v87) = v74;
    v31 = &v87;
    v32 = Message.jsonString(options:)(v31);
    if (v33)
    {
      v61 = OUTLINED_FUNCTION_38_4();
      v62(v61);
      return;
    }

    sub_1AC45FA3C(v32._countAndFlagsBits, v32._object);
    v34 = OUTLINED_FUNCTION_38_4();
    v35(v34);
    OUTLINED_FUNCTION_25_0();
    v24 = 1;
    if (v83 == sub_1AC51F0B8())
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1AC4693E4()
{
  OUTLINED_FUNCTION_10_6();
  result = sub_1AC451978(8 * v1);
  v3 = *v0 + result;
  if (__OFADD__(*v0, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](result);
  v4 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_3_6(v4);
  OUTLINED_FUNCTION_7_4();
  result = sub_1AC4519B4(v8);
  v5 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v3, v5);
  v7 = v3 + v5;
  if (!v6)
  {
    *v0 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1AC4695AC(unsigned int a1, uint64_t a2)
{
  sub_1AC459C7C(a2);
  if (!v2)
  {
    sub_1AC45FBF4(a1);
  }
}

uint64_t sub_1AC469654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for _ProtoNameProviding);
  v8 = 0uLL;
  if (result)
  {
    (*(v7 + 8))(v21, 0);
    v9 = v21[1];
    v10 = (*(a2 + 40))(a1, a2);
    if (*(v9 + 16) && (v11 = sub_1AC45AA38(v10), (v12 & 1) != 0))
    {
      v13 = *(v9 + 56) + 80 * v11;
      v20 = *(v13 + 40);
      v14 = *(v13 + 56);
      v15 = *(v13 + 64);
      v16 = *(v13 + 72);
      v17 = *(v13 + 73);
      sub_1AC45AC88(v14, v15, *(v13 + 72), *(v13 + 73));

      v8 = v20;
      if (v17)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 | v16;
    }

    else
    {

      v14 = 0;
      v15 = 0;
      v19 = -256;
      v8 = 0uLL;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v19 = -256;
  }

  *a3 = v8;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v19;
  return result;
}

uint64_t sub_1AC4697D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 34))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC469880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC51ECB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s21InternalSwiftProtobuf07Google_C11_Int32ValueV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

void sub_1AC469A2C()
{
  if (OUTLINED_FUNCTION_34_3())
  {
    v2 = 0;
    v3 = 0xF000000000000000;
  }

  else
  {
    sub_1AC469AA4();
    if (v0)
    {
      return;
    }

    v2 = v4;
    v3 = v5;
  }

  sub_1AC45AC74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

void sub_1AC469AA4()
{
  sub_1AC458F28();
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[1] - v1;
  }

  else
  {
    v2 = 0;
  }

  if (v0[2] == v2)
  {
    v3 = sub_1AC477660();
    v4 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v3);
    OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v4, v5);
  }

  else
  {
    v6 = v0[1];
    if (v1)
    {
      v7 = v6 - v1;
    }

    else
    {
      v7 = 0;
    }

    sub_1AC469B3C(v1, v6, v0 + 2, v7);
  }
}

void sub_1AC469B3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + *a3) != 34)
  {
LABEL_27:
    v19 = sub_1AC477660();
    v20 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v19);
    OUTLINED_FUNCTION_36(xmmword_1AC51FB50, v20, v21);
    return;
  }

  v9 = sub_1AC458F9C(*a3, a1, a2);
  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2 - a1;
  if (!a1)
  {
    v14 = 0;
  }

  v15 = v9;
  while (1)
  {
    if (v15 == a4)
    {
      goto LABEL_24;
    }

    v16 = *(a1 + v15);
    if (v16 == 43)
    {
      goto LABEL_18;
    }

    switch(v16)
    {
      case '-':
        goto LABEL_13;
      case '/':
        goto LABEL_18;
      case '\\':
        if (v15 < 0 || v15 >= v14)
        {
          goto LABEL_33;
        }

        if (++v15 == a4)
        {
          goto LABEL_24;
        }

        v16 = *(a1 + v15);
        if (v16 != 47)
        {
          *a3 = v15;
          goto LABEL_27;
        }

LABEL_18:
        v13 = 1;
        goto LABEL_19;
      case '_':
LABEL_13:
        v12 = 1;
        goto LABEL_19;
    }

    if (v16 == 34)
    {
      break;
    }

LABEL_19:
    if ((qword_1F2126EC0[v16 + 4] & 0x8000000000000000) == 0 && __OFADD__(v11++, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if ((v15 & 0x8000000000000000) == 0 && v15++ < v14)
    {
      continue;
    }

    __break(1u);
LABEL_24:
    *a3 = a4;
    goto LABEL_27;
  }

  *a3 = v15;
  if (v13 & v12)
  {
    goto LABEL_27;
  }

  v22 = (v11 * 3) >> 64;
  v23 = 3 * v11;
  if (v22 != v23 >> 63)
  {
    goto LABEL_34;
  }

  v25 = MEMORY[0x1AC5B40A0](v23 / 4);
  v26 = v24;
  *a3 = v10;
  sub_1AC469D28(&v25, a1, a2, a3);
  if (v4)
  {
    sub_1AC4513F8(v25, v26);
  }

  else
  {
    *a3 = sub_1AC458F9C(*a3, a1, a2);
  }
}

_BYTE *sub_1AC469D28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1AC4513F8(v5, v4);
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v5 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      if (v24 < v5)
      {
        goto LABEL_29;
      }

      if (sub_1AC51EB78() && __OFSUB__(v5, sub_1AC51EBA8()))
      {
        goto LABEL_30;
      }

      sub_1AC51EBB8();
      swift_allocObject();
      v25 = sub_1AC51EB58();

      v22 = v25;
      v24 = v5 >> 32;
LABEL_16:
      v36 = a3;
      v26 = v24 - v5;
      if (v24 < v5)
      {
        goto LABEL_26;
      }

      v27 = sub_1AC51EB78();
      if (!v27)
      {
        goto LABEL_32;
      }

      v28 = v27;
      v29 = sub_1AC51EBA8();
      v30 = v5 - v29;
      if (__OFSUB__(v5, v29))
      {
        goto LABEL_28;
      }

      v31 = sub_1AC51EB98();
      if (v31 >= v26)
      {
        v32 = v26;
      }

      else
      {
        v32 = v31;
      }

      sub_1AC46A10C((v28 + v30), v28 + v30 + v32, a2, v36, a4);

      v21 = v22 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_23;
    case 2uLL:

      sub_1AC4513F8(v5, v4);
      *&v38 = v5;
      *(&v38 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      sub_1AC51EBE8();
      v11 = *(v38 + 16);
      v12 = *(v38 + 24);
      v13 = sub_1AC51EB78();
      if (!v13)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        JUMPOUT(0x1AC46A0FCLL);
      }

      v14 = v13;
      v15 = sub_1AC51EBA8();
      v16 = v11 - v15;
      if (__OFSUB__(v11, v15))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = __OFSUB__(v12, v11);
      v18 = v12 - v11;
      if (v17)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v19 = sub_1AC51EB98();
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      result = sub_1AC46A10C((v14 + v16), v14 + v16 + v20, a2, a3, a4);
      v21 = *(&v38 + 1) | 0x8000000000000000;
      *a1 = v38;
LABEL_23:
      a1[1] = v21;
      return result;
    case 3uLL:
      *(&v38 + 7) = 0;
      *&v38 = 0;
      return sub_1AC46A10C(&v38, &v38, a2, a3, a4);
    default:
      sub_1AC4513F8(v5, v4);
      *&v38 = v5;
      WORD4(v38) = v4;
      BYTE10(v38) = BYTE2(v4);
      BYTE11(v38) = BYTE3(v4);
      BYTE12(v38) = BYTE4(v4);
      BYTE13(v38) = BYTE5(v4);
      BYTE14(v38) = BYTE6(v4);
      result = sub_1AC46A10C(&v38, &v38 + BYTE6(v4), a2, a3, a4);
      v10 = DWORD2(v38) | ((WORD6(v38) | (BYTE14(v38) << 16)) << 32);
      *a1 = v38;
      a1[1] = v10;
      return result;
  }
}

_BYTE *sub_1AC46A10C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (result && a2 - result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4 - a3;
    if (!a3)
    {
      v7 = 0;
    }

    v8 = *a5;
    while (2)
    {
      for (i = v8; ; *a5 = i)
      {
        v10 = *(a3 + i);
        v11 = qword_1F2126EC0[v10 + 4];
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        if (v10 != 32)
        {
          break;
        }

        if (v8 < 0 || i >= v7)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        ++i;
      }

      if (v10 != 34)
      {
        if (v10 == 92)
        {
          if (i < 0 || i >= v7)
          {
            goto LABEL_53;
          }

          *a5 = i + 1;
          if (*(a3 + i + 1) == 47)
          {
            v11 = qword_1F2127058;
            ++i;
LABEL_18:
            v12 = __OFADD__(v6++, 1);
            if (!v12)
            {
              v5 = v11 | (v5 << 6);
              if (v6 == 4)
              {
                v6 = 0;
                *result = BYTE2(v5);
                result[1] = BYTE1(v5);
                result[2] = v5;
                result += 3;
                i = *a5;
                v5 = 0;
              }

              if ((i & 0x8000000000000000) == 0 && i < v7)
              {
                v8 = i + 1;
                *a5 = i + 1;
                continue;
              }

              goto LABEL_52;
            }

LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }
        }

        else if (v10 == 61)
        {
          v13 = 0;
          v14 = i + 1;
          v15 = 61;
          while (1)
          {
            if (v15 != 32)
            {
              if (v15 != 61)
              {
                goto LABEL_42;
              }

              v12 = __OFADD__(v13++, 1);
              if (v12)
              {
                break;
              }
            }

            if (i < 0 || v14 - 1 >= v7)
            {
              goto LABEL_49;
            }

            *a5 = v14;
            v15 = *(a3 + v14++);
            if (v15 == 34)
            {
              if (v6)
              {
                if (v6 == 2)
                {
                  *result = v5 >> 4;
                  if ((v13 | 2) == 2)
                  {
                    return result;
                  }
                }

                else if (v6 == 3)
                {
                  goto LABEL_41;
                }

                goto LABEL_42;
              }

              if (v13)
              {
                goto LABEL_42;
              }

              return result;
            }
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_42;
      }

      break;
    }

    if (!v6)
    {
      return result;
    }

    if (v6 != 3)
    {
      if (v6 == 2)
      {
        *result = v5 >> 4;
        return result;
      }

      goto LABEL_42;
    }

    v13 = 0;
LABEL_41:
    *result = v5 >> 10;
    result[1] = v5 >> 2;
    if (v13 >= 2)
    {
LABEL_42:
      sub_1AC477660();
      swift_allocError();
      *v16 = xmmword_1AC51FB50;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1AC46A334()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  v44 = v6;
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_8();
  v12 = v11 - v10;
  v46 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  if ((sub_1AC457638() & 1) == 0)
  {
    sub_1AC46A6E0(v5, v3, v1);
    if (v0)
    {
      goto LABEL_15;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
    v29 = *(v14 + 8);
    if (EnumTagSinglePayload == 1)
    {
      v29(v1, v46);
      goto LABEL_15;
    }

    v37 = v44;
    v29(v44, v46);
    v38 = *(v8 + 32);
    v38(v12, v1, v5);
    v38(v37, v12, v5);
    v31 = v37;
    v32 = 0;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v31, v32, 1, v5);
    goto LABEL_15;
  }

  v19 = OUTLINED_FUNCTION_50_3();
  v22 = dynamic_cast_existential_1_conditional(v19, v20, v21);
  if (!v22)
  {
    v30 = v44;
    (*(v14 + 8))(v44, v46);
    v31 = v30;
    v32 = 1;
    goto LABEL_13;
  }

  v24 = v22;
  v25 = v23;
  v42 = v14;
  OUTLINED_FUNCTION_54_2();
  v43 = &v41;
  OUTLINED_FUNCTION_3_0();
  v41 = v26;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48_4();
  v3(v24, v25);
  if (!v0)
  {
    v33 = v42;
    (*(v42 + 8))(v44, v46);
    OUTLINED_FUNCTION_19_5(v1);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_47_3();
      v36(v35);
      OUTLINED_FUNCTION_20_6();
    }

    else
    {
      v45[3] = v24;
      v45[4] = v25;
      __swift_allocate_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_13_7();
      (*(v39 + 32))();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
    v40 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v18, v40 ^ 1u, 1, v5);
    (*(v33 + 32))(v44, v18, v46);
  }

LABEL_15:
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

unsigned __int8 *sub_1AC46A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v51 = a2;
  v52 = a3;
  sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v49 = v8;
  v50 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  v53 = a1;
  v48 = *(a1 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - v24;
  sub_1AC458F28();
  v26 = v3[2];
  v27 = *v3;
  if (*v3)
  {
    v28 = v3[1] - v27;
  }

  else
  {
    v28 = 0;
  }

  if (v26 == v28)
  {
    v29 = sub_1AC477660();
    v30 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v29);
    return OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v30, v31);
  }

  if (*(v27 + v26) == 34)
  {
    result = sub_1AC4595E0();
    if (v4)
    {
      return result;
    }

    if (v34)
    {
      v35 = sub_1AC45993C();
      v36 = v53;
      sub_1AC4C93D8(v35, v37, v53, v51, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v36) == 1)
      {
        (*(v49 + 8))(v14, v50);
        v38 = v52;
        v39 = v5;
        v40 = v36;
        return sub_1AC4E64CC(v39, v40, v38);
      }

      v46 = *(v48 + 32);
      v46(v23, v14, v36);
      v44 = v52;
      v46(v52, v23, v36);
      v42 = v36;
    }

    else
    {
      v42 = v53;
      sub_1AC46AB60(result, v33, v53, v51, v17);
      if (__swift_getEnumTagSinglePayload(v17, 1, v42) == 1)
      {
        (*(v49 + 8))(v17, v50);
        v38 = v52;
        v39 = v3;
        v40 = v42;
        return sub_1AC4E64CC(v39, v40, v38);
      }

      v45 = *(v48 + 32);
      v45(v25, v17, v42);
      v44 = v52;
      v45(v52, v25, v42);
    }
  }

  else
  {
    v41 = OUTLINED_FUNCTION_3_21();
    result = sub_1AC457AEC(v41, sub_1AC45BEC8, sub_1AC45BEC8);
    if (v4)
    {
      return result;
    }

    v42 = v53;
    (*(v51 + 32))(result, v53, v51);
    if (__swift_getEnumTagSinglePayload(v11, 1, v42) == 1)
    {
      (*(v49 + 8))(v11, v50);
      v38 = v52;
      v39 = v3;
      v40 = v42;
      return sub_1AC4E64CC(v39, v40, v38);
    }

    v43 = *(v48 + 32);
    v43(v20, v11, v42);
    v44 = v52;
    v43(v52, v20, v42);
  }

  return __swift_storeEnumTagSinglePayload(v44, 0, 1, v42);
}

uint64_t sub_1AC46AB60@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  if (dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding))
  {
    v24[0] = v13;
    v24[1] = v5;
    v25 = a5;
    OUTLINED_FUNCTION_1_8();
    v17();
    v18 = v26;
    v27[0] = a1;
    v27[1] = a2;
    v27[2] = "";
    v27[3] = 0;
    v28 = 258;
    if (*(v26 + 16) && (v19 = sub_1AC4599C0(v27), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      (*(a4 + 32))(v21, a3, a4);
      if (!__swift_getEnumTagSinglePayload(v16, 1, a3))
      {
        a5 = v25;
        (*(*(a3 - 8) + 32))(v25, v16, a3);
        v22 = 0;
        return __swift_storeEnumTagSinglePayload(a5, v22, 1, a3);
      }

      (*(v24[0] + 8))(v16, v11);
    }

    else
    {
    }

    v22 = 1;
    a5 = v25;
  }

  else
  {
    v22 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a5, v22, 1, a3);
}

void sub_1AC46AD8C()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v5 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  if (sub_1AC457638())
  {
    v11 = OUTLINED_FUNCTION_50_3();
    v14 = dynamic_cast_existential_1_conditional(v11, v12, v13);
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = *(v15 + 24);
      v19 = sub_1AC51F228();
      OUTLINED_FUNCTION_3_0();
      v41 = v20;
      OUTLINED_FUNCTION_65();
      MEMORY[0x1EEE9AC00](v21);
      v23 = &v40 - v22;
      v18(v16, v17);
      if (!v0)
      {
        v32 = v41;
        v40 = &v40;
        v33 = OUTLINED_FUNCTION_98();
        v34(v33);
        OUTLINED_FUNCTION_19_5(v23);
        if (v27)
        {
          (*(v32 + 8))(v23, v19);
          OUTLINED_FUNCTION_20_6();
        }

        else
        {
          v42[3] = v16;
          v42[4] = v17;
          __swift_allocate_boxed_opaque_existential_1(v42);
          OUTLINED_FUNCTION_13_7();
          (*(v39 + 32))();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
        swift_dynamicCast();
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_98();
      v29(v28);
      v30 = OUTLINED_FUNCTION_51();
      v31(v30);
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_51();
    sub_1AC46A6E0(v24, v25, v26);
    if (!v0)
    {
      OUTLINED_FUNCTION_42_0(v10, 1, v2);
      if (v27)
      {
        (*(v7 + 8))(v10, v5);
      }

      else
      {
        OUTLINED_FUNCTION_5();
        v36 = v35;
        v37 = OUTLINED_FUNCTION_98();
        v38(v37);
        (*(v36 + 32))(v4, v10, v2);
      }
    }
  }

  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

void sub_1AC46B108()
{
  if (OUTLINED_FUNCTION_34_3())
  {
    v2 = 0;
    v3 = 0xC000000000000000;
  }

  else
  {
    sub_1AC469AA4();
    if (v0)
    {
      return;
    }

    v2 = v4;
    v3 = v5;
  }

  sub_1AC4513F8(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t Message.init(textFormatString:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = 100;
  v15 = 0;
  sub_1AC450324(a3, v13);
  Message.init(textFormatString:options:extensions:)(a1, a2, &v14, v13, a4, a5, a6);
  return sub_1AC455360(a3);
}

uint64_t Message.init(textFormatString:options:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a4;
  v40 = a7;
  v41 = a1;
  v39 = sub_1AC51EE28();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_8();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_5();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12_8();
  v22 = v21 - v20;
  v38 = *a3;
  LODWORD(v21) = *(a3 + 8);
  v36 = *(a3 + 9);
  v37 = v21;
  v23 = *(a6 + 16);
  v42 = a5;
  v24 = a6;
  v23(a5, a6);
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    goto LABEL_8;
  }

  sub_1AC51EE18();
  v26 = sub_1AC51EDF8();
  v28 = v27;

  v29 = (*(v12 + 8))(v16, v39);
  if (v28 >> 60 == 15)
  {
LABEL_8:
    v30 = v42;
    v31 = v43;
LABEL_9:
    (*(v18 + 16))(v40, v22, v30);
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v29);
  v30 = v42;
  v31 = v43;
  *(&v35 - 6) = v42;
  *(&v35 - 5) = v24;
  *(&v35 - 4) = v38;
  v32 = v36;
  *(&v35 - 24) = v37;
  *(&v35 - 23) = v32;
  *(&v35 - 2) = v31;
  *(&v35 - 1) = v22;
  v33 = v44;
  sub_1AC46B4AC(sub_1AC46B978, (&v35 - 8), v26, v28);
  sub_1AC45AC74(v26, v28);
  if (!v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1AC455360(v31);
  return (*(v18 + 8))(v22, v30);
}

uint64_t sub_1AC46B4AC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v6 = a3;
      goto LABEL_7;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_7:
      result = sub_1AC46B604(v6, v7, a1);
      break;
    case 3uLL:
      result = sub_1AC4E4F68(a1, a2, 0, 0);
      break;
    default:
      v8 = a3;
      v9 = a4;
      v10 = BYTE2(a4);
      v11 = BYTE3(a4);
      v12 = BYTE4(a4);
      v13 = BYTE5(a4);
      result = a1(&v8, &v8 + BYTE6(a4));
      break;
  }

  return result;
}

uint64_t sub_1AC46B604(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1AC51EB78();
  v7 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1AC51EB98();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unsigned __int8 *sub_1AC46B6AC(unsigned __int8 *result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = result;
    v10 = a2 - result;
    if (a2 - result >= 1)
    {
      __dst[22] = a6;
      sub_1AC450324(a5, v26);
      *(&__src[5] + 1) = 0;
      LOWORD(__src[6]) = 256;
      *(&__src[6] + 8) = 0u;
      *(&__src[7] + 8) = 0u;
      sub_1AC450324(v26, v24);
      type metadata accessor for DoubleParser();
      memset(__src, 0, 40);
      v15 = swift_allocObject();
      *(v15 + 16) = swift_slowAlloc();
      *(v15 + 24) = 128;
      *(&__src[3] + 1) = v15;
      v16 = &v9[v10];
      *(&__src[2] + 1) = v9;
      *&__src[3] = &v9[v10];
      result = sub_1AC46B9B4(v24, __src);
      *&__src[4] = a3;
      WORD4(__src[4]) = a4 & 0x101;
      if (__OFSUB__(a3, 1))
      {
        __break(1u);
      }

      else
      {
        *&__src[5] = a3 - 1;
        do
        {
          v17 = *v9;
          if (v17 > 0x23)
          {
            break;
          }

          if (((1 << v17) & 0x100002600) == 0)
          {
            if (v17 == 35)
            {
              ++v9;
              while (v9 != v16)
              {
                v19 = *v9++;
                v18 = v19;
                if (v19 == 10 || v18 == 13)
                {
                  goto LABEL_8;
                }
              }

              *(&__src[2] + 1) = v16;
            }

            break;
          }

          ++v9;
LABEL_8:
          *(&__src[2] + 1) = v9;
        }

        while (v9 != v16);
        sub_1AC455360(v24);
        if (dynamic_cast_existential_1_conditional(a7, a7, &protocol descriptor for _ProtoNameProviding))
        {
          (*(v21 + 8))(v24);
          sub_1AC455360(v26);
          sub_1AC458E14(*(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8]);
          *(&__src[7] + 8) = v24[1];
          *(&__src[6] + 8) = v24[0];
          *(&__src[8] + 1) = a7;
          *&__src[9] = a8;
          memcpy(__dst, __src, 0x98uLL);
          (*(a8 + 64))(__dst, &type metadata for TextFormatDecoder, &off_1F211BCA0, a7, a8);
          if (!v8 && __dst[5] != __dst[6])
          {
            sub_1AC477954();
            swift_allocError();
            *v22 = 2;
            swift_willThrow();
          }

          return sub_1AC477AA8(__dst);
        }

        else
        {
          sub_1AC477954();
          swift_allocError();
          *v23 = 6;
          swift_willThrow();
          sub_1AC455360(v26);
          sub_1AC477A04(__src);
          return sub_1AC458E14(*(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8]);
        }
      }
    }
  }

  return result;
}

unsigned __int8 *sub_1AC46B978(unsigned __int8 *a1, uint64_t a2)
{
  if (*(v2 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1AC46B6AC(a1, a2, *(v2 + 32), v3 | *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1AC46B9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _NameMap.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v382 = a2;
  type metadata accessor for InternPool();
  v774 = swift_allocObject();
  *(v774 + 16) = MEMORY[0x1E69E7CC0];
  v715 = sub_1AC51ED58();
  sub_1AC46C9B4();
  v3 = OUTLINED_FUNCTION_33_5();
  v4 = OUTLINED_FUNCTION_33_5();
  v670 = *(a1 + 16);
  if (v670)
  {
    v5 = 0;
    v626 = a1;
    v648 = a1 + 32;
    while (1)
    {
      if (v5 >= *(a1 + 16))
      {
        goto LABEL_141;
      }

      v6 = v648 + 56 * v5;
      v7 = *(v6 + 8);
      v793 = *v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);
      v12 = *(v6 + 48);
      v692 = v5 + 1;
      switch(v8 >> 62)
      {
        case 1uLL:
          swift_retain_n();
          v172 = OUTLINED_FUNCTION_51();
          sub_1AC46CA08(v172, v173, v8, v174);
          *v572 = v828;
          v175 = v830;
          v176 = v831;
          v177 = *(&v829 + 1);
          *v737 = v829;
          if (v831)
          {
            v178 = sub_1AC51F2E8();
            v177 = v179;
          }

          else
          {

            v178 = v737[0];
          }

          v180 = sub_1AC46CB70(v178, v177);
          v182 = v181;

          v183 = sub_1AC46CC84(v180, v182);
          v185 = v184;

          v853[0] = v183;
          v853[1] = v185;
          v853[2] = v180;
          v853[3] = v182;
          v854 = 0;
          BYTE2(v824) = v176;
          v855[0] = v183;
          v855[1] = v185;
          v855[2] = v180;
          v855[3] = v182;
          v856 = 0;
          v857 = v823;
          v858 = WORD2(v823);
          v860 = *v737;
          v859 = *v572;
          v861 = v175;
          v862 = v176;
          sub_1AC46D160(&v828, &v813);

          v194 = OUTLINED_FUNCTION_36_4(v186, v187, v188, v189, v190, v191, v192, v193, v382, v404, v426, v447, v470, v491, v515, v537, v572[0], v572[1], v604, v626, v648, v670, v692, v715);
          v813 = v183;
          sub_1AC46D198(v855, v793, v194);
          v715 = v813;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v813 = v3;
          sub_1AC46D330(v793, &v828, isUniquelyReferenced_nonNull_native);
          v3 = v813;
          v196 = swift_isUniquelyReferenced_nonNull_native();
          v813 = v4;
          sub_1AC46D330(v793, &v828, v196);
          sub_1AC46D4D4(&v828);
          v197 = v813;
          v198 = swift_isUniquelyReferenced_nonNull_native();
          v813 = v197;
          sub_1AC46D330(v793, v853, v198);

          v4 = v813;
          goto LABEL_134;
        case 2uLL:
          swift_retain_n();
          sub_1AC46CA08(v10, v11, v12, &v832);
          v68 = v832;
          v452 = v833;
          v69 = v7;
          v70 = v834;
          v71 = v835;
          sub_1AC46CA08(v69, v9, v8, &v836);
          v496 = v836;
          v541 = v837;
          LODWORD(v737[0]) = v838;
          if (v71)
          {
            v72 = 256;
          }

          else
          {
            v72 = 0;
          }

          BYTE1(v824) = BYTE1(v838);
          sub_1AC46D160(&v832, &v813);
          v73 = sub_1AC46D160(&v836, &v813);
          OUTLINED_FUNCTION_36_4(v73, v74, v75, v76, v77, v78, v79, v80, v382, v404, v68.n128_i64[1], v452.n128_i64[0], v452.n128_i64[1], v496.n128_i64[0], v496.n128_i64[1], v541.n128_i64[0], v541.n128_i64[1], v582, v604, v626, v648, v670, v692, v715);
          v823 = v71;
          sub_1AC45AA38(v793);
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v83, v84))
          {
            goto LABEL_144;
          }

          v85 = v81;
          v86 = v82;
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
          if ((OUTLINED_FUNCTION_30_5(v87) & 1) == 0)
          {
            goto LABEL_23;
          }

          sub_1AC45AA38(v793);
          OUTLINED_FUNCTION_9_16();
          if (!v36)
          {
            goto LABEL_162;
          }

          v85 = v88;
LABEL_23:
          v89 = v72 | v70;
          if (v86)
          {
            OUTLINED_FUNCTION_8_17();
            v92 = v90 + v85 * v91;
            v101 = OUTLINED_FUNCTION_23_10(v93, v94, v95, v96, v97, v98, v99, v100, v387, v409, v68.n128_i64[1], v453, v475, v497, v520, v542, v564, v587, v609, v631, v653, v675, v697, v720, v737[0], v737[1], v774, v793);
            *v92 = v68.n128_u64[0];
            *(v92 + 8) = v431;
            *(v92 + 16) = v454;
            *(v92 + 24) = v476;
            *(v92 + 32) = v89;
            OUTLINED_FUNCTION_15_11(v101, v102, v103, v104, v105, v106, v107, v108, v388, v410, v431, v454, v476, v498, v521, v543, v565, v588, v610, v632, v654, v676, v698, v721, v741, v759, v778, v797, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824);
            *(v92 + 40) = v499;
            *(v92 + 48) = v522;
            *(v92 + 56) = v544;
            *(v92 + 64) = v566;
            *(v92 + 72) = v742;
            OUTLINED_FUNCTION_25_5(v109, v110, v111, v112, v113, v114, v115, v116, v389, v411, v432, v455, v477, v499, v522, v544, v566, v589, v611, v633, v655, v677, v699, v722, v742, v760, v779, v798, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, SBYTE1(v824));
          }

          else
          {
            OUTLINED_FUNCTION_4_17(v823 + 8 * (v85 >> 6));
            OUTLINED_FUNCTION_17_12(v199, v200, v201, v202, v203, v204, v205, v206, v387, v409, v68.n128_i64[1], v453, v475, v497, v520, v542, v564, v587, v609, v631, v653, v675, v697, v720, v737[0], v737[1], v774, v793);
            *v207 = v68.n128_u64[0];
            *(v207 + 8) = v438;
            *(v207 + 16) = v461;
            *(v207 + 24) = v482;
            *(v207 + 32) = v89;
            OUTLINED_FUNCTION_14_12(v207, v395, v417, v438, v461, v482, v506, v528, v551, v573, v595, v617, v639, v661, v683, v706, v728, v747, v765, v784, v803, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824);
            *(v208 + 40) = v507;
            *(v208 + 48) = v529;
            *(v208 + 56) = v552;
            *(v208 + 64) = v574;
            *(v208 + 72) = v748;
            OUTLINED_FUNCTION_13_12(v208, v396, v418, v439, v462, v483, v507, v529, v552, v574, v596, v618, v640, v662, v684, v707, v729, v748, v766, v785, v804, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, SBYTE1(v824));
            if (v211)
            {
              goto LABEL_154;
            }

            v723 = v210;
            *(v210 + 16) = v209;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v823 = v3;
          sub_1AC4599C0(&v836);
          OUTLINED_FUNCTION_12_15();
          a1 = v634;
          if (__OFADD__(v214, v215))
          {
            goto LABEL_145;
          }

          v216 = v212;
          v217 = v213;
          v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
          if ((OUTLINED_FUNCTION_24_9(v218) & 1) == 0)
          {
            goto LABEL_45;
          }

          sub_1AC4599C0(&v836);
          OUTLINED_FUNCTION_5_19();
          if (!v36)
          {
            goto LABEL_162;
          }

          v216 = v219;
LABEL_45:
          if (v217)
          {
            v3 = v823;
            OUTLINED_FUNCTION_7_16(*(v823 + 56), v390, v412, v433, v456, v478, v500, v523, v545, v567, v590, v612, v634, v656, v678, v700, v723, v743, v761, v780, v799);
          }

          else
          {
            v847 = v837;
            v848 = v838;
            v3 = v823;
            OUTLINED_FUNCTION_0_28(v823 + 8 * (v216 >> 6));
            OUTLINED_FUNCTION_22_10();
            v266 = v836;
            v265 = v837;
            v267[2].n128_u16[0] = v838;
            *v267 = v266;
            v267[1] = v265;
            OUTLINED_FUNCTION_7_16(*(v3 + 56), v390, v412, v433, v456, v478, v500, v523, v545, v567, v590, v612, v634, v656, v678, v700, v723, v743, v761, v780, v799);
            OUTLINED_FUNCTION_21_8();
            if (v211)
            {
              goto LABEL_156;
            }

            *(v3 + 16) = v268;
            sub_1AC46D444(&v847, &v813);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v813 = v4;
          sub_1AC4599C0(&v836);
          v270 = v269;
          OUTLINED_FUNCTION_6_18();
          if (v211)
          {
            goto LABEL_150;
          }

          if ((OUTLINED_FUNCTION_32_6(v271, v272) & 1) == 0)
          {
            goto LABEL_72;
          }

          sub_1AC4599C0(&v836);
          OUTLINED_FUNCTION_5_19();
          if (!v36)
          {
            goto LABEL_162;
          }

          v216 = v273;
LABEL_72:
          v274 = v813;
          if (v270)
          {
            OUTLINED_FUNCTION_7_16(*(v813 + 56), v397, v419, v440, v463, v484, v508, v530, v553, v575, v597, v619, v641, v663, v685, v708, v730, v749, v767, v786, v805);
            sub_1AC46D4D4(&v836);
          }

          else
          {
            OUTLINED_FUNCTION_0_28(v813 + 8 * (v216 >> 6));
            OUTLINED_FUNCTION_22_10();
            OUTLINED_FUNCTION_16_10(v307, v836, v837);
            OUTLINED_FUNCTION_7_16(*(v274 + 56), v397, v419, v440, v463, v484, v508, v530, v553, v575, v597, v619, v641, v663, v685, v708, v730, v749, v767, v786, v805);
            v308 = *(v274 + 16);
            v211 = __OFADD__(v308, 1);
            v309 = v308 + 1;
            if (v211)
            {
              goto LABEL_160;
            }

            *(v274 + 16) = v309;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v813 = v274;
          sub_1AC4599C0(&v832);
          v311 = v310;
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v313, v314))
          {
            goto LABEL_151;
          }

          v315 = v312;
          if ((sub_1AC51F338() & 1) == 0)
          {
            goto LABEL_99;
          }

          sub_1AC4599C0(&v832);
          OUTLINED_FUNCTION_5_19();
          if (!v36)
          {
            goto LABEL_162;
          }

          v315 = v316;
LABEL_99:
          v4 = v813;
          if (v311)
          {
            OUTLINED_FUNCTION_7_16(*(v813 + 56), v403, v425, v446, v469, v490, v514, v536, v559, v581, v603, v625, v647, v669, v691, v714, v736, v755, v773, v792, v811);
            v306 = &v832;
LABEL_101:
            sub_1AC46D4D4(v306);
          }

          else
          {
            OUTLINED_FUNCTION_0_28(v813 + 8 * (v315 >> 6));
            OUTLINED_FUNCTION_22_10();
            OUTLINED_FUNCTION_16_10(v380, v832, v833);
            OUTLINED_FUNCTION_7_16(*(v4 + 56), v403, v425, v446, v469, v490, v514, v536, v559, v581, v603, v625, v647, v669, v691, v714, v736, v755, v773, v792, v811);
            OUTLINED_FUNCTION_26_8();
            if (v211)
            {
              goto LABEL_161;
            }

LABEL_131:
            *(v4 + 16) = v379;
          }

          goto LABEL_134;
        case 3uLL:

          v117 = OUTLINED_FUNCTION_51();
          v737[0] = v10;
          v546 = v11;
          LODWORD(v560) = v12;
          sub_1AC4F009C(v117, v118, v8);
          v119 = OUTLINED_FUNCTION_51();
          sub_1AC46CA08(v119, v120, v8, v121);
          v122 = v839;
          v501 = v840;
          v123 = v841;
          v851 = v840;
          v852 = v841;
          if (HIBYTE(v841))
          {
            v124 = 256;
          }

          else
          {
            v124 = 0;
          }

          BYTE1(v824) = HIBYTE(v841);
          sub_1AC46D444(&v851, &v813);
          v125 = sub_1AC46D444(&v851, &v813);
          OUTLINED_FUNCTION_36_4(v125, v126, v127, v128, v129, v130, v131, v132, v382, v7, v9, v8, v122.n128_i64[1], v501.n128_i64[0], v501.n128_i64[1], v546, v560, v582, v604, v626, v648, v670, v692, v715);
          v823 = v774;
          sub_1AC45AA38(v793);
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v135, v136))
          {
            goto LABEL_142;
          }

          v137 = v133;
          v138 = v134;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
          if ((sub_1AC51F338() & 1) == 0)
          {
            goto LABEL_32;
          }

          v139 = sub_1AC45AA38(v793);
          if ((v138 & 1) != (v140 & 1))
          {
            goto LABEL_162;
          }

          v137 = v139;
LABEL_32:
          v141 = v124 | v123;
          if (v138)
          {
            OUTLINED_FUNCTION_8_17();
            v144 = v142 + v137 * v143;
            v153 = OUTLINED_FUNCTION_23_10(v145, v146, v147, v148, v149, v150, v151, v152, v391, v413, v434, v457, v122.n128_i64[1], v502, v524, v547, v568, v591, v613, v635, v657, v679, v701, v724, v737[0], v737[1], v774, v793);
            *v144 = v122.n128_u64[0];
            *(v144 + 8) = v479;
            *(v144 + 16) = v503;
            *(v144 + 24) = v525;
            *(v144 + 32) = v141;
            OUTLINED_FUNCTION_15_11(v153, v154, v155, v156, v157, v158, v159, v160, v392, v414, v435, v458, v479, v503, v525, v548, v569, v592, v614, v636, v658, v680, v702, v725, v744, v762, v781, v800, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824);
            *(v144 + 40) = v122.n128_u64[0];
            *(v144 + 48) = v161;
            *(v144 + 56) = v163;
            *(v144 + 64) = v162;
            *(v144 + 72) = v123;
            OUTLINED_FUNCTION_25_5(v164, v165, v166, v167, v168, v169, v170, v171, v393, v415, v436, v459, v480, v504, v526, v549, v570, v593, v615, v637, v659, v681, v703, v726, v745, v763, v782, v801, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, SBYTE1(v824));
          }

          else
          {
            OUTLINED_FUNCTION_4_17(v823 + 8 * (v137 >> 6));
            *(*(v220 + 48) + 8 * v137) = v793;
            v221 = *(v220 + 56) + 80 * v137;
            *v221 = v122;
            *(v221 + 16) = v502;
            *(v221 + 24) = v524;
            *(v221 + 32) = v141;
            OUTLINED_FUNCTION_14_12(v221, v391, v413, v434, v457, v122.n128_i64[1], v502, v524, v547, v568, v591, v613, v635, v657, v679, v701, v724, v10, v737[1], v774, v793, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824);
            *(v222 + 40) = v122.n128_u64[0];
            *(v222 + 48) = v223;
            *(v222 + 56) = v225;
            *(v222 + 64) = v224;
            *(v222 + 72) = v123;
            OUTLINED_FUNCTION_13_12(v222, v398, v420, v441, v464, v485, v509, v531, v554, v576, v598, v620, v642, v664, v686, v709, v731, v750, v768, v787, v806, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, SBYTE1(v824));
            if (v211)
            {
              goto LABEL_152;
            }

            v727 = v227;
            *(v227 + 16) = v226;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v823 = v3;
          sub_1AC4599C0(&v839);
          OUTLINED_FUNCTION_12_15();
          if (__OFADD__(v230, v231))
          {
            goto LABEL_146;
          }

          v232 = v228;
          v233 = v229;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
          v234 = sub_1AC51F338();
          if ((v234 & 1) == 0)
          {
            goto LABEL_54;
          }

          sub_1AC4599C0(&v839);
          OUTLINED_FUNCTION_10_12();
          if (!v36)
          {
            goto LABEL_162;
          }

          v232 = v234;
LABEL_54:
          v3 = v823;
          if (v233)
          {
            OUTLINED_FUNCTION_11_12(v234, v235, v236, v237, v238, v239, v240, v241, v394, v416, v437, v460, v481, v505, v527, v550, v571, v594, v616, v638, v660, v682, v704, v727, v746, v764, v783, v802);
          }

          else
          {
            OUTLINED_FUNCTION_3_24(v823 + 8 * (v232 >> 6));
            OUTLINED_FUNCTION_16_10((v275 + v232 * v276), v839, v840);
            OUTLINED_FUNCTION_11_12(v277, v278, v279, v280, v281, v282, v283, v284, v394, v416, v437, v460, v481, v505, v527, v550, v571, v594, v616, v638, v660, v682, v704, v727, v746, v764, v783, v802);
            OUTLINED_FUNCTION_21_8();
            if (v211)
            {
              goto LABEL_155;
            }

            *(v3 + 16) = v285;
            sub_1AC46D444(&v851, &v813);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v813 = v4;
          sub_1AC4599C0(&v839);
          v287 = v286;
          OUTLINED_FUNCTION_6_18();
          if (v211)
          {
            goto LABEL_149;
          }

          v290 = OUTLINED_FUNCTION_28_5(v288, v289);
          if ((v290 & 1) == 0)
          {
            goto LABEL_81;
          }

          sub_1AC4599C0(&v839);
          OUTLINED_FUNCTION_10_12();
          if (!v36)
          {
            goto LABEL_162;
          }

          v232 = v290;
LABEL_81:
          v298 = v751;
          v4 = v813;
          if (v287)
          {
            OUTLINED_FUNCTION_20_10(v290, v291, v292, v293, v294, v295, v296, v297, v399, v421, v442, v465, v486, v510, v532, v555, v577, v599, v621, v643, v665, v687, v710, v732, v751, v769, v788, v807);
            sub_1AC46D4D4(&v839);
          }

          else
          {
            OUTLINED_FUNCTION_2_19(v813 + 8 * (v232 >> 6));
            OUTLINED_FUNCTION_16_10((v317 + v232 * v318), v839, v840);
            OUTLINED_FUNCTION_20_10(v319, v320, v321, v322, v323, v324, v325, v326, v399, v421, v442, v465, v486, v510, v532, v555, v577, v599, v621, v643, v665, v687, v710, v732, v751, v769, v788, v807);
            OUTLINED_FUNCTION_26_8();
            if (v211)
            {
              goto LABEL_158;
            }

            *(v4 + 16) = v327;
          }

          v328 = *(v298 + 16);
          if (v328)
          {
            v329 = 0;
            v330 = (v298 + 48);
            while (v329 < *(v298 + 16))
            {
              v332 = *(v330 - 2);
              v331 = *(v330 - 1);
              v333 = *v330;

              sub_1AC46CA08(v332, v331, v333, &v842);
              swift_isUniquelyReferenced_nonNull_native();
              v823 = v3;
              sub_1AC4599C0(&v842);
              v335 = v334;
              OUTLINED_FUNCTION_6_18();
              if (v211)
              {
                goto LABEL_137;
              }

              v337 = v336;
              v338 = sub_1AC51F338();
              if (v338)
              {
                sub_1AC4599C0(&v842);
                OUTLINED_FUNCTION_10_12();
                if (!v36)
                {
                  goto LABEL_162;
                }

                v337 = v338;
              }

              v3 = v823;
              if (v335)
              {
                OUTLINED_FUNCTION_11_12(v338, v339, v340, v341, v342, v343, v344, v345, v382, v404, v426, v447, v470, v491, v515, v537, v560, v582, v604, v626, v648, v670, v705, v715, v737[0], v737[1], v774, v812);
              }

              else
              {
                OUTLINED_FUNCTION_3_24(v823 + 8 * (v337 >> 6));
                OUTLINED_FUNCTION_16_10((v346 + v337 * v347), v842, v843);
                OUTLINED_FUNCTION_11_12(v348, v349, v350, v351, v352, v353, v354, v355, v382, v404, v426, v447, v470, v491, v515, v537, v560, v582, v604, v626, v648, v670, v705, v715, v737[0], v737[1], v774, v812);
                OUTLINED_FUNCTION_21_8();
                if (v211)
                {
                  goto LABEL_139;
                }

                *(v3 + 16) = v356;
                v849 = v843;
                v850 = v844;
                sub_1AC46D444(&v849, &v813);
              }

              swift_isUniquelyReferenced_nonNull_native();
              v813 = v4;
              sub_1AC4599C0(&v842);
              v358 = v357;
              OUTLINED_FUNCTION_6_18();
              if (v211)
              {
                goto LABEL_138;
              }

              if (OUTLINED_FUNCTION_28_5(v359, v360))
              {
                sub_1AC4599C0(&v842);
                OUTLINED_FUNCTION_10_12();
                if (!v36)
                {
                  goto LABEL_162;
                }

                v337 = v361;
              }

              v298 = v737[0];
              if (v358)
              {
                sub_1AC46D4D4(&v842);
                v4 = v813;
                *(*(v813 + 56) + 8 * v337) = v812;
              }

              else
              {
                v4 = v813;
                OUTLINED_FUNCTION_2_19(v813 + 8 * (v337 >> 6));
                v364 = (v362 + v337 * v363);
                LOWORD(v363) = v844;
                v365 = v843;
                *v364 = v842;
                v364[1] = v365;
                v364[2].n128_u16[0] = v363;
                OUTLINED_FUNCTION_20_10(v366, v367, v368, v369, v370, v371, v372, v373, v382, v404, v426, v447, v470, v491, v515, v537, v560, v582, v604, v626, v648, v670, v705, v715, v737[0], v737[1], v774, v812);
                OUTLINED_FUNCTION_26_8();
                if (v211)
                {
                  goto LABEL_140;
                }

                *(v4 + 16) = v374;
              }

              ++v329;
              v330 += 24;
              if (v328 == v329)
              {
                v375 = v404;
                v376 = v426;
                v377 = v447;
                goto LABEL_133;
              }
            }

            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            while (1)
            {
LABEL_162:
              sub_1AC51F408();
              __break(1u);
            }
          }

          v375 = v404;
          v376 = v426;
          v377 = v447;
LABEL_133:
          sub_1AC4F0568(v375, v376, v377);
          a1 = v626;
LABEL_134:
          v5 = v705;
          if (v705 == v670)
          {
            goto LABEL_135;
          }

          break;
        default:

          v13 = OUTLINED_FUNCTION_51();
          sub_1AC46CA08(v13, v14, v8, v15);
          v16 = v825;
          v17 = v826;
          v18 = v827;
          v845 = v826;
          v846 = v827;
          if (HIBYTE(v827))
          {
            v19 = 256;
          }

          else
          {
            v19 = 0;
          }

          BYTE1(v824) = HIBYTE(v827);
          sub_1AC46D444(&v845, &v813);
          v20 = sub_1AC46D444(&v845, &v813);
          OUTLINED_FUNCTION_36_4(v20, v21, v22, v23, v24, v25, v26, v27, v382, v404, v426, v447, v470, v491, v515, v16.n128_i64[1], v17.n128_i64[0], v582, v604, v626, v648, v670, v692, v715);
          v823 = v774;
          sub_1AC45AA38(v793);
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v30, v31))
          {
            goto LABEL_143;
          }

          v32 = v28;
          v33 = v29;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
          if ((OUTLINED_FUNCTION_30_5(v34) & 1) == 0)
          {
            goto LABEL_13;
          }

          sub_1AC45AA38(v793);
          OUTLINED_FUNCTION_9_16();
          if (!v36)
          {
            goto LABEL_162;
          }

          v32 = v35;
LABEL_13:
          v37 = v19 | v18;
          if (v33)
          {
            OUTLINED_FUNCTION_8_17();
            v40 = v38 + v32 * v39;
            v49 = OUTLINED_FUNCTION_23_10(v41, v42, v43, v44, v45, v46, v47, v48, v383, v405, v427, v448, v471, v492, v516, v16.n128_i64[1], v17.n128_i64[0], v583, v605, v627, v649, v671, v693, v716, v17.n128_i64[1], v737[1], v774, v793);
            *v40 = v16.n128_u64[0];
            *(v40 + 8) = v538;
            *(v40 + 16) = v561;
            *(v40 + 24) = v738;
            *(v40 + 32) = v37;
            OUTLINED_FUNCTION_15_11(v49, v50, v51, v52, v53, v54, v55, v56, v384, v406, v428, v449, v472, v493, v517, v538, v561, v584, v606, v628, v650, v672, v694, v717, v738, v756, v775, v794, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824);
            *(v40 + 40) = v16.n128_u64[0];
            *(v40 + 48) = v57;
            *(v40 + 56) = v59;
            *(v40 + 64) = v58;
            *(v40 + 72) = v18;
            OUTLINED_FUNCTION_25_5(v60, v61, v62, v63, v64, v65, v66, v67, v385, v407, v429, v450, v473, v494, v518, v539, v562, v585, v607, v629, v651, v673, v695, v718, v739, v757, v776, v795, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, SBYTE1(v824));
            a1 = v630;
          }

          else
          {
            OUTLINED_FUNCTION_4_17(v823 + 8 * (v32 >> 6));
            OUTLINED_FUNCTION_17_12(v242, v243, v244, v245, v246, v247, v248, v249, v383, v405, v427, v448, v471, v492, v516, v16.n128_i64[1], v17.n128_i64[0], v583, v605, v627, v649, v671, v693, v716, v17.n128_i64[1], v737[1], v774, v793);
            *v250 = v16.n128_u64[0];
            *(v250 + 8) = v556;
            *(v250 + 16) = v578;
            *(v250 + 24) = v752;
            *(v250 + 32) = v37;
            OUTLINED_FUNCTION_14_12(v250, v400, v422, v443, v466, v487, v511, v533, v556, v578, v600, v622, v644, v666, v688, v711, v733, v752, v770, v789, v808, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824);
            *(v251 + 40) = v16.n128_u64[0];
            *(v251 + 48) = v252;
            *(v251 + 56) = v254;
            *(v251 + 64) = v253;
            *(v251 + 72) = v18;
            OUTLINED_FUNCTION_13_12(v251, v401, v423, v444, v467, v488, v512, v534, v557, v579, v601, v623, v645, v667, v689, v712, v734, v753, v771, v790, v809, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, SBYTE1(v824));
            a1 = v630;
            if (v211)
            {
              goto LABEL_153;
            }

            v719 = v256;
            *(v256 + 16) = v255;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v823 = v3;
          sub_1AC4599C0(&v825);
          OUTLINED_FUNCTION_12_15();
          if (__OFADD__(v259, v260))
          {
            goto LABEL_147;
          }

          v261 = v257;
          v262 = v258;
          v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
          if ((OUTLINED_FUNCTION_24_9(v263) & 1) == 0)
          {
            goto LABEL_63;
          }

          sub_1AC4599C0(&v825);
          OUTLINED_FUNCTION_5_19();
          if (!v36)
          {
            goto LABEL_162;
          }

          v261 = v264;
LABEL_63:
          v3 = v823;
          if (v262)
          {
            OUTLINED_FUNCTION_7_16(*(v823 + 56), v386, v408, v430, v451, v474, v495, v519, v540, v563, v586, v608, v630, v652, v674, v696, v719, v740, v758, v777, v796);
          }

          else
          {
            OUTLINED_FUNCTION_0_28(v823 + 8 * (v261 >> 6));
            OUTLINED_FUNCTION_22_10();
            OUTLINED_FUNCTION_16_10(v299, v825, v826);
            OUTLINED_FUNCTION_7_16(*(v3 + 56), v386, v408, v430, v451, v474, v495, v519, v540, v563, v586, v608, v630, v652, v674, v696, v719, v740, v758, v777, v796);
            OUTLINED_FUNCTION_21_8();
            if (v211)
            {
              goto LABEL_157;
            }

            *(v3 + 16) = v300;
            sub_1AC46D444(&v845, &v813);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v813 = v4;
          sub_1AC4599C0(&v825);
          v302 = v301;
          OUTLINED_FUNCTION_6_18();
          if (v211)
          {
            goto LABEL_148;
          }

          if ((OUTLINED_FUNCTION_32_6(v303, v304) & 1) == 0)
          {
            goto LABEL_90;
          }

          sub_1AC4599C0(&v825);
          OUTLINED_FUNCTION_5_19();
          if (!v36)
          {
            goto LABEL_162;
          }

          v261 = v305;
LABEL_90:
          v4 = v813;
          if (v302)
          {
            OUTLINED_FUNCTION_7_16(*(v813 + 56), v402, v424, v445, v468, v489, v513, v535, v558, v580, v602, v624, v646, v668, v690, v713, v735, v754, v772, v791, v810);
            v306 = &v825;
            goto LABEL_101;
          }

          OUTLINED_FUNCTION_0_28(v813 + 8 * (v261 >> 6));
          OUTLINED_FUNCTION_22_10();
          OUTLINED_FUNCTION_16_10(v378, v825, v826);
          OUTLINED_FUNCTION_7_16(*(v4 + 56), v402, v424, v445, v468, v489, v513, v535, v558, v580, v602, v624, v646, v668, v690, v713, v735, v754, v772, v791, v810);
          OUTLINED_FUNCTION_26_8();
          if (v211)
          {
            goto LABEL_159;
          }

          goto LABEL_131;
      }
    }
  }

LABEL_135:

  *v382 = v774;
  v382[1] = v715;
  v382[2] = v3;
  v382[3] = v4;
  return result;
}

unint64_t sub_1AC46C9B4()
{
  result = qword_1ED6E4340;
  if (!qword_1ED6E4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4340);
  }

  return result;
}

unint64_t sub_1AC46CA08@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X8>)
{
  v7 = result;
  if ((a3 & 1) == 0)
  {

    if (v7)
    {
      v10 = a2 + v7;
      v11 = v7;
LABEL_10:
      *a5 = v11;
      *(a5 + 8) = v10;
      *(a5 + 16) = v7;
      *(a5 + 24) = a2;
      *(a5 + 32) = a3;
      *(a5 + 33) = 1;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  v9 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v9 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v12 = result + 1;
LABEL_9:
        v13 = __clz(v12);
        v20 = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v13 >> 3))));
        v11 = sub_1AC4EFB98(&v20, 4 - (v13 >> 3));
        v10 = v14;

        goto LABEL_10;
      }

LABEL_14:
      v15 = (v7 & 0x3F) << 8;
      v16 = (v7 >> 6) + v15 + 33217;
      v17 = (v15 | (v7 >> 6) & 0x3F) << 8;
      v18 = (v7 >> 18) + ((v17 | (v7 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (v7 >> 12) + v17 + 8487393;
      if (v9)
      {
        v12 = v18;
      }

      else
      {
        v12 = v19;
      }

      if (v7 < 0x800)
      {
        v12 = v16;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC46CB70(uint64_t a1, uint64_t a2)
{

  v2 = 0;
  while (1)
  {
    v3 = sub_1AC51EF38();
    if (!v4)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    v7 = v3 == 95 && v4 == 0xE100000000000000;
    if (v7 || (sub_1AC51F3D8() & 1) != 0)
    {

      v2 = 1;
    }

    else
    {
      if (v2)
      {
        v8 = sub_1AC51EE58();
        v10 = v9;

        MEMORY[0x1AC5B4340](v8, v10);
      }

      else
      {
        MEMORY[0x1AC5B4340](v5, v6);
      }

      v2 = 0;
    }
  }

  return 0;
}

uint64_t sub_1AC46CC84(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AC51EF48();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = swift_slowAlloc();
  sub_1AC46CD6C(a1, a2, v7);
  swift_beginAccess();
  sub_1AC46D068();
  v8 = *(*(v3 + 16) + 16);
  sub_1AC46D148(v8);
  v9 = *(v3 + 16);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v7 + v6;
  *(v3 + 16) = v9;
  swift_endAccess();
  return v7;
}

unint64_t sub_1AC46CD6C(unint64_t result, unint64_t a2, uint64_t a3)
{
  v19[0] = result;
  v19[1] = a2;
  if (a3)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v15[2] = v19;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v6;
    result = sub_1AC46CF58(sub_1AC46CFFC, v15, v5, a2);
    if (result)
    {
      v8 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v10 = (v5 >> 59) & 1;
      if ((a2 & 0x1000000000000000) == 0)
      {
        LOBYTE(v10) = 1;
      }

      v11 = 4 << v10;
      v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v17 = a2 & 0xFFFFFFFFFFFFFFLL;
      v12 = 15;
      while (1)
      {
        if (4 * v9 == v12 >> 14)
        {
          return result;
        }

        result = v12;
        if ((v12 & 0xC) == v11)
        {
          result = sub_1AC488FF0(v12, v5, a2);
        }

        v13 = result >> 16;
        if (result >> 16 >= v9)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          result = sub_1AC51EF88();
          v14 = result;
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = v5;
          v18[1] = v17;
          v14 = *(v18 + v13);
        }

        else
        {
          result = v16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            result = sub_1AC51F308();
          }

          v14 = *(result + v13);
        }

        if ((v12 & 0xC) == v11)
        {
          result = sub_1AC488FF0(v12, v5, a2);
          v12 = result;
          if ((a2 & 0x1000000000000000) == 0)
          {
LABEL_21:
            v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_26;
          }
        }

        else if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        if (v9 <= v12 >> 16)
        {
          goto LABEL_31;
        }

        result = sub_1AC51EF58();
        v12 = result;
LABEL_26:
        if (__OFADD__(v8, 1))
        {
          goto LABEL_30;
        }

        *(a3 + v8++) = v14;
      }
    }
  }

  return result;
}

void *sub_1AC46CF58(void *(*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
    v10[0] = a3;
    v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v10;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1AC51F308();
  }

  result = a1(&v11, v7, v8);
  if (!v4)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  return result;
}

void *sub_1AC46D01C(void *__src, size_t __len, int a3, int a4, int a5, int a6, void *__dst)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(__dst, __src, __len);
    }
  }

  return __src;
}

void sub_1AC46D080()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_5_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558270, &qword_1AC520A30);
    v7 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_5();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void *sub_1AC46D198(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1AC45AA38(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
  if ((sub_1AC51F338() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1AC45AA38(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7] + 80 * v10;

    return sub_1AC4F0AB0(a1, v15);
  }

  else
  {

    return sub_1AC46D2C0(v10, a2, a1, v14);
  }
}

void *sub_1AC46D2C0(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 80 * a1), __src, 0x4AuLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1AC46D330(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1AC4599C0(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
  result = sub_1AC51F338();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1AC4599C0(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_10:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {
    sub_1AC46D47C(v10, a2, a1, v14);
    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    return sub_1AC46D444(&v16, v15);
  }

  return result;
}

unint64_t sub_1AC46D47C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC46D518(uint64_t a1)
{
  sub_1AC51F468();
  sub_1AC46D554();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC46D554()
{
  v1 = *v0;
  if (*v0)
  {
    for (i = v0[1]; v1 != i; result = sub_1AC51F488())
    {
      ++v1;
    }
  }

  return result;
}

uint64_t sub_1AC46D5B8()
{
  result = sub_1AC4FA494();
  if (v0)
  {
    return v2;
  }

  return result;
}

InternalSwiftProtobuf::BinaryDecodingOptions __swiftcall BinaryDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

void *Message.hash(into:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  (*(a3 + 72))(__dst, &type metadata for HashVisitor, &off_1F211C928, a2, a3);
  return memcpy(__src, __dst, 0x48uLL);
}

char *sub_1AC46DCF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

void sub_1AC46DDD8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1AC46DDE4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xF000000000000000;
}

void sub_1AC46DDF4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xF000000000000000;
}

uint64_t sub_1AC46DEB0@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_FileOptions.OptimizeMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC46DEFC@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_FeatureSet.JsonFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC46E384()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FileDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E3B0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FileDescriptorProto.package.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E3EC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FileDescriptorProto.syntax.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E5B0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_DescriptorProto.ExtensionRange.start.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E5FC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_DescriptorProto.ExtensionRange.end.getter();
  *v0 = result;
  return result;
}

void *sub_1AC46E648()
{
  OUTLINED_FUNCTION_200();
  Google_Protobuf_DescriptorProto.ExtensionRange.options.getter(v1);
  return memcpy(v0, __src, 0x47uLL);
}

double sub_1AC46E728()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_ExtensionRangeOptions.features.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12, *&v12[4]).n128_u64[0];
  return result;
}

uint64_t sub_1AC46E764()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ExtensionRangeOptions.Declaration.number.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E7B0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ExtensionRangeOptions.Declaration.fullName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E7DC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ExtensionRangeOptions.Declaration.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E808()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_ExtensionRangeOptions.Declaration.reserved.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46E854()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_ExtensionRangeOptions.Declaration.repeated.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46E8A0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E8CC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.number.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E928()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.typeName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E954()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.extendee.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E980()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.defaultValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E9AC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.oneofIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E9F8()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.jsonName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46EA2C()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_FieldDescriptorProto.proto3Optional.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46EA78()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_OneofDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

__n128 sub_1AC46EAA4()
{
  OUTLINED_FUNCTION_63_0();
  v2 = Google_Protobuf_OneofDescriptorProto.options.getter(v1);
  OUTLINED_FUNCTION_362(v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v11);
  result = v15;
  *(v0 + 46) = v15;
  return result;
}

uint64_t sub_1AC46EAE0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_EnumDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1AC46EB0C()
{
  OUTLINED_FUNCTION_200();
  v1 = Google_Protobuf_EnumDescriptorProto.options.getter(v0);
  return OUTLINED_FUNCTION_330(v1, v3);
}

uint64_t sub_1AC46EB9C()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_EnumValueDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46EBC8()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_EnumValueDescriptorProto.number.getter();
  *v0 = result;
  return result;
}

void *sub_1AC46EC14()
{
  OUTLINED_FUNCTION_200();
  Google_Protobuf_EnumValueDescriptorProto.options.getter(v1);
  return memcpy(v0, __src, 0x71uLL);
}

uint64_t sub_1AC46EC54()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ServiceDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

__n128 sub_1AC46EC80()
{
  OUTLINED_FUNCTION_63_0();
  v2 = Google_Protobuf_ServiceDescriptorProto.options.getter(v1);
  OUTLINED_FUNCTION_362(v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v11);
  result = v15;
  *(v0 + 47) = v15;
  return result;
}

uint64_t sub_1AC46ECBC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_MethodDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46ECE8()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_MethodDescriptorProto.inputType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46ED14()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_MethodDescriptorProto.outputType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1AC46ED40()
{
  OUTLINED_FUNCTION_200();
  v1 = Google_Protobuf_MethodDescriptorProto.options.getter(v0);
  return OUTLINED_FUNCTION_330(v1, v3);
}

uint64_t sub_1AC46ED78()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_MethodDescriptorProto.clientStreaming.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46EDC4()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_MethodDescriptorProto.serverStreaming.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46F328()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_EnumOptions.allowAlias.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46F374()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_EnumOptions.deprecated.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46F3C0()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_EnumOptions.deprecatedLegacyJsonFieldConflicts.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46F40C()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_MessageOptions.mapEntry.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46F458()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_MessageOptions.deprecatedLegacyJsonFieldConflicts.getter();
  return OUTLINED_FUNCTION_156(v0);
}

double sub_1AC46F4A4()
{
  OUTLINED_FUNCTION_63_0();
  v0 = Google_Protobuf_EnumOptions.features.getter();
  *&result = OUTLINED_FUNCTION_45_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, *v11, *&v11[4]).n128_u64[0];
  return result;
}

double sub_1AC46F908()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_OneofOptions.features.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12, *&v12[4]).n128_u64[0];
  return result;
}

uint64_t sub_1AC46F968()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_EnumValueOptions.deprecated.getter();
  return OUTLINED_FUNCTION_156(v0);
}

double sub_1AC46F9B4()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_EnumValueOptions.features.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12, *&v12[4]).n128_u64[0];
  return result;
}

uint64_t sub_1AC46F9E8()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_EnumValueOptions.debugRedact.getter();
  return OUTLINED_FUNCTION_156(v0);
}

double sub_1AC46FA3C()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_ServiceOptions.features.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12, *&v12[4]).n128_u64[0];
  return result;
}

uint64_t sub_1AC46FA70()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_ServiceOptions.deprecated.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46FAF0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_UninterpretedOption.identifierValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46FB1C()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_UninterpretedOption.positiveIntValue.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46FB6C()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_UninterpretedOption.negativeIntValue.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46FC0C()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_UninterpretedOption.stringValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46FC38()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_UninterpretedOption.aggregateValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double sub_1AC46FD2C()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.overridableFeatures.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12, *&v12[4]).n128_u64[0];
  return result;
}

double sub_1AC46FD88()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.fixedFeatures.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12, *&v12[4]).n128_u64[0];
  return result;
}

uint64_t sub_1AC46FDE4()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_SourceCodeInfo.Location.leadingComments.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46FE10()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_SourceCodeInfo.Location.trailingComments.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46FE3C()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46FE68()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_GeneratedCodeInfo.Annotation.begin.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46FEB4()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_GeneratedCodeInfo.Annotation.end.getter();
  *v0 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C22_ExtensionRangeOptionsVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return OUTLINED_FUNCTION_217(v1);
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C12_FileOptionsVSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return OUTLINED_FUNCTION_217(v1);
}

uint64_t sub_1AC470048()
{
  sub_1AC4513F8(v0[2], v0[3]);
  if (v0[7])
  {
    sub_1AC4513F8(v0[5], v0[6]);
  }

  if (v0[11])
  {
    sub_1AC4513F8(v0[9], v0[10]);
  }

  return MEMORY[0x1EEE6BDD0](v0, 102, 7);
}

uint64_t sub_1AC4700B0()
{
  sub_1AC4513F8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1AC4700F0()
{
  sub_1AC4513F8(v0[2], v0[3]);

  if (v0[10])
  {

    sub_1AC4513F8(v0[11], v0[12]);

    if (v0[17])
    {
      sub_1AC4513F8(v0[15], v0[16]);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AC470174()
{
  sub_1AC4513F8(v0[2], v0[3]);

  if (v0[7])
  {

    sub_1AC4513F8(v0[8], v0[9]);

    if (v0[14])
    {
      sub_1AC4513F8(v0[12], v0[13]);
    }

    if (v0[20] != 1)
    {
      sub_1AC4513F8(v0[16], v0[17]);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 169, 7);
}

uint64_t sub_1AC470204()
{
  sub_1AC4513F8(v0[2], v0[3]);

  if (v0[6])
  {

    sub_1AC4513F8(v0[7], v0[8]);

    if (v0[12])
    {
      sub_1AC4513F8(v0[10], v0[11]);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 110, 7);
}

uint64_t sub_1AC470278()
{
  sub_1AC4513F8(v0[2], v0[3]);
  if (v0[6])
  {

    sub_1AC4513F8(v0[8], v0[9]);

    if (v0[13])
    {
      sub_1AC4513F8(v0[11], v0[12]);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 119, 7);
}

uint64_t sub_1AC4702EC()
{

  sub_1AC4513F8(v0[3], v0[4]);

  v1 = v0[14];
  if (v1 >> 60 != 15)
  {
    sub_1AC4513F8(v0[13], v1);
  }

  OUTLINED_FUNCTION_95_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC470350()
{
  sub_1AC4513F8(v0[2], v0[3]);

  if (v0[18])
  {
    sub_1AC4513F8(v0[16], v0[17]);
  }

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

uint64_t sub_1AC4703D0()
{

  sub_1AC4513F8(v0[3], v0[4]);

  if (v0[7])
  {

    sub_1AC4513F8(v0[8], v0[9]);

    if (v0[13])
    {
      sub_1AC4513F8(v0[11], v0[12]);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 119, 7);
}

uint64_t sub_1AC47044C()
{

  sub_1AC4513F8(v0[5], v0[6]);

  if (v0[9])
  {

    sub_1AC4513F8(v0[10], v0[11]);

    if (v0[16])
    {
      sub_1AC4513F8(v0[14], v0[15]);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 142, 7);
}

uint64_t sub_1AC4704D8()
{

  sub_1AC4513F8(v0[9], v0[10]);

  if (v0[17])
  {
    sub_1AC4513F8(v0[15], v0[16]);
  }

  if (v0[19])
  {

    sub_1AC4513F8(v0[20], v0[21]);
  }

  return MEMORY[0x1EEE6BDD0](v0, 193, 7);
}

uint64_t sub_1AC47061C@<X0>(uint64_t *a1@<X8>)
{
  result = PackedExtensionField.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC47076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC470800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC47099C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if ((~v1 & 0x3000000000000000) != 0 || v2 != 255)
  {
    sub_1AC48550C(*(v0 + 16), *(v0 + 24), v1, v2 & 1);
  }

  sub_1AC4513F8(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1AC470B50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    sub_1AC4513F8(a2, a3);
  }
}

uint64_t sub_1AC470B6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1AC4578F4(a2, a3);
  }

  return result;
}

void sub_1AC470B88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    sub_1AC4513F8(a3, a4);
  }
}

uint64_t sub_1AC470BA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_1AC4578F4(a3, a4);
  }

  return result;
}

uint64_t sub_1AC470BC0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC470BE4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC471510@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_Field.Cardinality.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s21InternalSwiftProtobuf22Google_Protobuf_SyntaxOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_85_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC471624(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_85_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4716D0(int a1, uint64_t a2)
{
  v2 = a1;
  MEMORY[0x1AC5B48A0](a2);
  return MEMORY[0x1AC5B48D0](v2);
}

uint64_t sub_1AC471708(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  MEMORY[0x1AC5B48A0](a2);
  return MEMORY[0x1AC5B48D0](v2);
}

uint64_t storeEnumTagSinglePayload for Google_Protobuf_NullValue(uint64_t result, int a2, int a3)
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

uint64_t sub_1AC471B44(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t Google_Protobuf_Any.typeURL.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1AC4720B4@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_Any.typeURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Google_Protobuf_Any.typeURL.setter()
{
  v3 = OUTLINED_FUNCTION_4();
  v4 = *(v1 + 16);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_0_1();
    v6 = sub_1AC474690(v5);
    OUTLINED_FUNCTION_3_1(v6);
  }

  swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;
}

uint64_t Google_Protobuf_Any.typeURL.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = *(v1 + 16);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v3[6] = *(v4 + 16);
  v3[7] = v5;

  return OUTLINED_FUNCTION_1_1();
}

void sub_1AC47222C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {

    Google_Protobuf_Any.typeURL.setter();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[8];
      type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_0_1();
      v7 = sub_1AC474690(v9);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
  }

  free(v2);
}

uint64_t sub_1AC472314@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_Any.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Google_Protobuf_Any.value.setter()
{
  if ((OUTLINED_FUNCTION_4() & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_0_1();
    v3 = sub_1AC474690(v2);
    OUTLINED_FUNCTION_3_1(v3);
  }

  return sub_1AC474608(v1, v0);
}

void (*Google_Protobuf_Any.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1AC474398();
  a1[1] = v3;
  return sub_1AC472440;
}

void sub_1AC472440(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_1_1();
    sub_1AC4578F4(v2, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2();
      swift_allocObject();
      v4 = OUTLINED_FUNCTION_0_1();
      v5 = sub_1AC474690(v4);
      OUTLINED_FUNCTION_3_1(v5);
    }

    v6 = OUTLINED_FUNCTION_1_1();
    sub_1AC474608(v6, v7);
    v8 = OUTLINED_FUNCTION_1_1();

    sub_1AC4513F8(v8, v9);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_1();
      v11 = sub_1AC474690(v10);
      OUTLINED_FUNCTION_3_1(v11);
    }

    v12 = OUTLINED_FUNCTION_1_1();
    sub_1AC474608(v12, v13);
  }
}

uint64_t Google_Protobuf_Any.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}