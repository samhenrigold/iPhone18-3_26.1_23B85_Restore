uint64_t sub_1C102F7D8()
{
  OUTLINED_FUNCTION_2_15();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  OUTLINED_FUNCTION_13_8();
  PhotosSelection.firstIdentifier.getter(&v10);

  if (v11)
  {
    v6 = sub_1C0FD09FC(&v10, v12);
    OUTLINED_FUNCTION_17_9(v6, v7);
    OUTLINED_FUNCTION_46();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    swift_getAssociatedConformanceWitness();
    v8 = sub_1C1262330();
    (*(v2 + 8))(v5, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    sub_1C0FD1A5C(&v10, &qword_1EBE90620, &qword_1C12A8B00);
    return 0;
  }

  return v8;
}

char *sub_1C102F984()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_36_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14 - v1;
  OUTLINED_FUNCTION_17_9(v3, v4);
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v5 = sub_1C1030E30();
  if (v6)
  {
    OUTLINED_FUNCTION_28_2();
    swift_getAssociatedConformanceWitness();
    v7 = v2;
    sub_1C1262300();
    v8 = OUTLINED_FUNCTION_40_2();
    v9(v8);
  }

  else
  {
    v10 = v5;
    OUTLINED_FUNCTION_28_2();
    swift_getAssociatedConformanceWitness();
    v7 = v2;
    sub_1C1262300();
    v11 = OUTLINED_FUNCTION_40_2();
    v12(v11);
    if (v10 < v2)
    {
      return v10;
    }
  }

  return v7;
}

void sub_1C102FB10(uint64_t a1)
{
  v1 = a1 + 56;
  OUTLINED_FUNCTION_3_17();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v7 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_7:
    OUTLINED_FUNCTION_32_1();
    sub_1C102F638(v9, v10);
    v12 = v11;
    if (*(v11 + 16) && (, v13 = OUTLINED_FUNCTION_22_1(), v15 = sub_1C0FA4574(v13, v14), v17 = v16, , (v17 & 1) != 0))
    {
      sub_1C10335C0(*(v12 + 56) + 112 * v15, __src);

      memcpy(__dst, __src, 0x70uLL);
      sub_1C0FDB0A8(__dst, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_12();
        sub_1C0FE40BC();
        v22 = v20;
      }

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_5_14(v18);
        sub_1C0FE40BC();
        v22 = v21;
      }

      sub_1C1033D88(__dst);
      *(v22 + 16) = v19 + 1;
      sub_1C0F9DDE4(__src, v22 + 40 * v19 + 32);
    }

    else
    {
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

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C102FCC8()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v21 = v3;
  v20 = v4;
  v6 = v5;
  v7 = MEMORY[0x1E69C4368];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v19 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_34_3();
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_5();
  if (v21)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_17_9(v16, v17);
  sub_1C12620A0();
  swift_unknownObjectRelease();
  MEMORY[0x1C68EBC60](v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v19 + 8))(v1, AssociatedTypeWitness);
  v18 = sub_1C1030BC8();
  (*(v14 + 8))(v7, v12, v18);
  if (!v23)
  {
    sub_1C0FD1A5C(&v22, &qword_1EBE91420, &unk_1C12B70C0);
LABEL_5:
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_6;
  }

  sub_1C0F9DDE4(&v22, v6);
  *(v2 + 64) = v20;
  *(v2 + 72) = 0;
  OUTLINED_FUNCTION_13_8();
  PhotosSelection.set(item:)(v6);

LABEL_6:
  OUTLINED_FUNCTION_22_0();
}

void sub_1C102FF30()
{
  OUTLINED_FUNCTION_23();
  LODWORD(v65) = v1;
  v62 = v2;
  v63 = v3;
  v5 = v4;
  v66 = v6;
  v7 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v61 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v55 - v18;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_35_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v58 = v21;
  v59 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v55 - v23;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v55 - v28;
  if (v5 & 1) != 0 || (v65)
  {
    v30 = v66;
    *(v66 + 32) = 0;
    *v30 = 0u;
    v30[1] = 0u;
  }

  else
  {
    v56 = v27;
    v31 = v25;
    OUTLINED_FUNCTION_17_9(v25, v26);
    sub_1C12620A0();
    swift_unknownObjectRelease();
    v32 = v63;
    v33 = v29;
    v65 = v31;
    MEMORY[0x1C68EBC60](v63, v31, AssociatedConformanceWitness);
    *(v0 + 64) = v32;
    *(v0 + 72) = 0;
    if (v32 <= v62)
    {
      v35 = v62;
    }

    else
    {
      v35 = v32;
    }

    if (v32 >= v62)
    {
      v36 = v62;
    }

    else
    {
      v36 = v32;
    }

    sub_1C102F57C(v34, v16);
    OUTLINED_FUNCTION_9_13();
    sub_1C1034198(v37, v38, MEMORY[0x1E6969B90]);
    sub_1C1266860();
    v39 = v36;
    while (1)
    {
      v67 = v39;
      sub_1C1266840();
      if (v35 == v39)
      {
        break;
      }

      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        break;
      }
    }

    v41 = v61;
    v42 = *(v61 + 32);
    v43 = v36;
    v62 = v36;
    v44 = v57;
    v42(v57, v11, v7);
    sub_1C10CABFC(v44, v60);
    v45 = *(v41 + 8);
    v46 = OUTLINED_FUNCTION_26_3();
    v63 = v45;
    v45(v46);
    (v45)(v16, v7);
    OUTLINED_FUNCTION_13_8();
    MEMORY[0x1EEE9AC00](v47);
    OUTLINED_FUNCTION_37_2();
    v49 = sub_1C10304C0(sub_1C10341E0, v48, v43, v35);
    PhotosSelection.select(items:)(v49);

    sub_1C102F53C();
    MEMORY[0x1EEE9AC00](v50);
    OUTLINED_FUNCTION_37_2();
    v52 = sub_1C103061C(sub_1C103411C, v51);
    PhotosSelection.deselect(items:)(v52);

    swift_beginAccess();
    sub_1C1261F00();
    v67 = v62;
    v68 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91428, &qword_1C12B2440);
    sub_1C0FDB6D4(&qword_1EBE91430, &qword_1EBE91428, &qword_1C12B2440, MEMORY[0x1E69E5FB8]);
    sub_1C1261EF0();
    swift_endAccess();
    v53 = v64;
    sub_1C1030BC8();
    v54 = OUTLINED_FUNCTION_22_1();
    v63(v54);
    (*(v58 + 8))(v53, v59);
    (*(v56 + 8))(v33, v65);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10304C0(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = a3;
    a1(&v14, &v17, a2);
    if (v4)
    {
      break;
    }

    if (v15)
    {
      sub_1C0F9DDE4(&v14, v16);
      sub_1C0F9DDE4(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE40BC();
        v8 = v12;
      }

      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 24) >> 1)
      {
        sub_1C0FE40BC();
        v8 = v13;
      }

      *(v8 + 16) = v9 + 1;
      result = sub_1C0F9DDE4(&v14, v8 + 40 * v9 + 32);
    }

    else
    {
      result = sub_1C0FD1A5C(&v14, &qword_1EBE91420, &unk_1C12B70C0);
    }

    if (a4 == a3)
    {
      return v8;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v8;
}

uint64_t sub_1C103061C(uint64_t a1, uint64_t a2)
{
  v26[0] = a1;
  v26[1] = a2;
  v28 = sub_1C1261EA0();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1261F10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902B8, &unk_1C12A8C70);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  (*(v8 + 16))(v10, v2, v7, v12);
  v15 = MEMORY[0x1E6969B50];
  sub_1C1034198(&qword_1EBE91438, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1C1265F60();
  sub_1C1034198(&qword_1EDE82F10, v15, MEMORY[0x1E6969B88]);
  v27 = (v4 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C1266310();
    sub_1C1034198(&unk_1EDE82F18, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v17 = v28;
    v18 = sub_1C1265DE0();
    (*v27)(v6, v17);
    if (v18)
    {
      sub_1C0FD1A5C(v14, &qword_1EBE902B8, &unk_1C12A8C70);
      return v16;
    }

    v19 = sub_1C12663A0();
    v21 = *v20;
    v19(v31, 0);
    sub_1C1266320();
    v32 = v21;
    (v26[0])(&v29, &v32);
    if (v3)
    {
      break;
    }

    if (v30)
    {
      sub_1C0F9DDE4(&v29, v31);
      sub_1C0F9DDE4(v31, &v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE40BC();
        v16 = v23;
      }

      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_1C0FE40BC();
        v16 = v24;
      }

      *(v16 + 16) = v22 + 1;
      sub_1C0F9DDE4(&v29, v16 + 40 * v22 + 32);
    }

    else
    {
      sub_1C0FD1A5C(&v29, &qword_1EBE91420, &unk_1C12B70C0);
    }
  }

  sub_1C0FD1A5C(v14, &qword_1EBE902B8, &unk_1C12A8C70);

  return v16;
}

uint64_t sub_1C1030A38(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = *a1;
  OUTLINED_FUNCTION_34_3();
  v12 = swift_checkMetadataState();
  MEMORY[0x1C68EBC60](v11, v12, AssociatedConformanceWitness);
  v13 = sub_1C1030BC8();
  return (*(v7 + 8))(v10, AssociatedTypeWitness, v13);
}

double sub_1C1030BC8()
{
  OUTLINED_FUNCTION_2_15();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_11_5();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0, &unk_1C12A8C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return OUTLINED_FUNCTION_20_9();
  }

  return result;
}

uint64_t sub_1C1030D24(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EDE9B6A0;
  OUTLINED_FUNCTION_7_4(v2 + qword_1EDE9B6A0, a2);
  return *(v2 + v3);
}

uint64_t sub_1C1030D5C(uint64_t a1)
{
  v3 = qword_1EDE9B6A0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1030E30()
{
  v1 = v0 + qword_1EDE9B5C8;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C1030E7C(uint64_t a1, char a2)
{
  v5 = v2 + qword_1EDE9B5C8;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void sub_1C1030F2C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_1C102F984() < 1)
  {
    OUTLINED_FUNCTION_20_9();
    return;
  }

  switch(v3)
  {
    case 1:
      if (!__OFSUB__(sub_1C102F984(), 1))
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_25;
    case 2:
      goto LABEL_21;
    case 3:
      if (!__OFSUB__(sub_1C102F984(), 1))
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    default:
      if (sub_1C1030D24(0, v4) < 1)
      {
        goto LABEL_17;
      }

      v5 = sub_1C102F984();
      v7 = v5 - 1;
      if (__OFSUB__(v5, 1))
      {
        goto LABEL_28;
      }

      v8 = sub_1C1030D24(v5, v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      if (v7 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_30;
      }

      v10 = v7 / v8;
LABEL_18:
      v11 = sub_1C102F984();
      if (__OFSUB__(v11, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = sub_1C1030D24(v11, v12);
      if ((v10 * v13) >> 64 != (v10 * v13) >> 63)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (!__OFADD__(v10 * v13, a2))
      {
LABEL_21:

        sub_1C102FCC8();
        return;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
  }
}

void sub_1C1031078(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1C102F7D8();
  if ((v6 & 1) == 0 && ((v7 = v5, v8 = sub_1C1030D24(v5, v6), v8 <= 0) ? (v10 = (v3 & 0xFE) == 2) : (v10 = 1), v10))
  {
    if (v4)
    {
      if (*(v2 + 88) == 1)
      {
        *(v2 + 80) = v7;
        *(v2 + 88) = 0;
        OUTLINED_FUNCTION_29_1(v2 + qword_1EDE7FEA0, v9);
        sub_1C1261F00();
        v8 = swift_endAccess();
      }
    }

    else
    {
      *(v2 + 80) = 0;
      *(v2 + 88) = 1;
    }

    if (!*(v2 + 72))
    {
      v7 = *(v2 + 64);
    }

    switch(v3)
    {
      case 1:
        v13 = sub_1C1030D24(v8, v9);
        v14 = v7 + v13;
        if (__OFADD__(v7, v13))
        {
          goto LABEL_34;
        }

        v15 = sub_1C102F984();
        if (v14 >= v15)
        {
          goto LABEL_29;
        }

        if (__OFADD__(v7, sub_1C1030D24(v15, v16)))
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      case 2:
        goto LABEL_18;
      case 3:
        if (__OFSUB__(v7, 1))
        {
          goto LABEL_33;
        }

        if (v7 - 1 < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      default:
        v11 = sub_1C1030D24(v8, v9);
        if (v7 < v11)
        {
          goto LABEL_29;
        }

        if (!__OFSUB__(v7, sub_1C1030D24(v11, v12)))
        {
          goto LABEL_27;
        }

        __break(1u);
LABEL_18:
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        else
        {
          if (v7 + 1 >= sub_1C102F984())
          {
            goto LABEL_29;
          }

LABEL_27:
          if (v4)
          {
            sub_1C102FF30();
          }

          else
          {
            sub_1C102FCC8();
          }
        }

        break;
    }
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_20_9();
  }
}

void sub_1C103122C(_BYTE *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v85 - v5;
  v94 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v85 - v8;
  v9 = *(v2 + qword_1EDE793B0) == 2 || *a1 == 0;
  v87 = v7;
  if (v9)
  {
    OUTLINED_FUNCTION_13_8();
    PhotosSelection.selectionIdentifiers.getter(v10);
    v12 = v11;

    sub_1C102F600(v12);
    sub_1C102F638(v13, v14);
    v16 = v15;
    v17 = v15 + 64;
    OUTLINED_FUNCTION_3_17();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;

    v23 = 0;
    if (!v20)
    {
      goto LABEL_8;
    }

    do
    {
      v24 = v23;
LABEL_11:
      sub_1C10335C0(*(v16 + 56) + 112 * (__clz(__rbit64(v20)) | (v24 << 6)), v100);
      memcpy(v99, v100, sizeof(v99));
      if (OUTLINED_FUNCTION_15_12(*&v99[9], *&v99[10], *&v99[11], *&v99[12]))
      {

        memcpy(__src, v99, 0x70uLL);
LABEL_15:

        sub_1C1033DDC(__src, v99);
        if (v99[3])
        {
          memcpy(v100, v99, sizeof(v100));
          sub_1C102F5F0();
          v26 = v25;
          v27 = *(&v100[1] + 1);
          v28 = *&v100[2];
          __swift_project_boxed_opaque_existential_1(v100, *(&v100[1] + 1));
          OUTLINED_FUNCTION_23_4();
          v30 = v29(v27, v28);
          LOBYTE(v27) = sub_1C1260708(v30, v31, v26);

          sub_1C0FD1A5C(__src, &unk_1EBE90A18, &qword_1C12A6648);
          sub_1C1033D88(v100);
          v32 = v27 & 1;
        }

        else
        {
          sub_1C0FD1A5C(__src, &unk_1EBE90A18, &qword_1C12A6648);
          sub_1C0FD1A5C(v99, &unk_1EBE90A18, &qword_1C12A6648);
          v32 = 2;
        }

        *(v2 + qword_1EDE793B0) = v32;
        goto LABEL_19;
      }

      v20 &= v20 - 1;
      sub_1C1033D88(v99);
      v23 = v24;
    }

    while (v20);
LABEL_8:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        memset(__src, 0, 112);
        goto LABEL_15;
      }

      v20 = *(v17 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_11;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_13_8();
    PhotosSelection.selectionIdentifiers.getter(v33);
    v86 = v34;

    v97._rawValue = MEMORY[0x1E69E7CC0];
    v98._rawValue = MEMORY[0x1E69E7CC0];
    v96 = MEMORY[0x1E69E7CD0];
    OUTLINED_FUNCTION_17_9(v35, v36);
    OUTLINED_FUNCTION_33_3();
    sub_1C12620A0();
    v37 = swift_unknownObjectRelease();
    v88 = v2;
    sub_1C102F638(v37, v38);
    v40 = v39;
    v41 = 0;
    v42 = v39 + 64;
    v43 = 1 << *(v39 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v45 = ~(-1 << v43);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v39 + 64);
    v47 = (v43 + 63) >> 6;
    v48 = -1;
    v89 = v39;
    v90 = -1;
    while (v46)
    {
      v49 = v41;
LABEL_28:
      OUTLINED_FUNCTION_32_1();
      sub_1C10335C0(*(v40 + 56) + 112 * (v50 | (v49 << 6)), __src);
      memcpy(v100, __src, sizeof(v100));
      if (OUTLINED_FUNCTION_15_12(*(&v100[4] + 1), *&v100[5], *(&v100[5] + 1), *&v100[6]))
      {
        v51 = *(&v100[1] + 1);
        v52 = *&v100[2];
        __swift_project_boxed_opaque_existential_1(v100, *(&v100[1] + 1));
        OUTLINED_FUNCTION_23_4();
        v53(v51, v52);

        v54 = *(&v100[1] + 1);
        __swift_project_boxed_opaque_existential_1(v100, *(&v100[1] + 1));
        v99[3] = v54;
        __swift_allocate_boxed_opaque_existential_1(v99);
        OUTLINED_FUNCTION_15_1();
        (*(v55 + 16))();
        v56 = sub_1C1262330();
        LOBYTE(v51) = v57;
        __swift_destroy_boxed_opaque_existential_0Tm(v99);
        if (v51)
        {
          v56 = -1;
        }

        if (v48 == -1 && (v44 = v90, v90 == -1))
        {
          sub_1C1033D88(v100);
          v44 = v56;
          v48 = v56;
          v90 = v56;
        }

        else if (v56 >= v48)
        {
          sub_1C1033D88(v100);
          v58 = v44 < v56;
          if (v44 <= v56)
          {
            v44 = v56;
          }

          v59 = v90;
          if (v58)
          {
            v59 = v56;
          }

          v90 = v59;
        }

        else
        {
          sub_1C1033D88(v100);
          v48 = v56;
        }

        v41 = v49;
        v40 = v89;
      }

      else
      {
        sub_1C1033D88(v100);
        v41 = v49;
      }
    }

    while (1)
    {
      v49 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v49 >= v47)
      {
        break;
      }

      v46 = *(v42 + 8 * v49);
      ++v41;
      if (v46)
      {
        goto LABEL_28;
      }
    }

    v60 = v88;
    if ((v48 & 0x8000000000000000) == 0 && (v44 & 0x8000000000000000) == 0)
    {
      if (v44 < v48)
      {
        goto LABEL_71;
      }

      v61 = MEMORY[0x1E69E7CC0];
      v62 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C1262350();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0, &unk_1C12A8C60);
        if (swift_dynamicCast())
        {
          sub_1C0F9DDE4(v100, __src);
          v63 = *(v60 + qword_1EDE793B0);
          if (v63 == 2 || (v63 & 1) == 0)
          {
            sub_1C0FDB0A8(__src, v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_12();
              sub_1C0FE40BC();
              v61 = v74;
            }

            v67 = v61[2];
            v66 = v61[3];
            if (v67 >= v66 >> 1)
            {
              OUTLINED_FUNCTION_5_14(v66);
              sub_1C0FE40BC();
              v61 = v75;
            }

            v61[2] = v67 + 1;
            sub_1C0F9DDE4(v100, &v61[5 * v67 + 4]);
            v98._rawValue = v61;
          }

          else
          {
            sub_1C0FDB0A8(__src, v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_12();
              sub_1C0FE40BC();
              v62 = v76;
            }

            v65 = v62[2];
            v64 = v62[3];
            if (v65 >= v64 >> 1)
            {
              OUTLINED_FUNCTION_5_14(v64);
              sub_1C0FE40BC();
              v62 = v77;
            }

            v62[2] = v65 + 1;
            sub_1C0F9DDE4(v100, &v62[5 * v65 + 4]);
            v97._rawValue = v62;
          }

          v69 = __src[3];
          v68 = __src[4];
          __swift_project_boxed_opaque_existential_1(__src, __src[3]);
          OUTLINED_FUNCTION_23_4();
          v71 = v70(v69, v68);
          sub_1C11030CC(v100, v71, v72);

          __swift_destroy_boxed_opaque_existential_0Tm(__src);
        }

        else
        {
          memset(v100, 0, 40);
          sub_1C0FD1A5C(v100, &qword_1EBE91420, &unk_1C12B70C0);
        }

        if (v44 == v48)
        {
          break;
        }

        if (__OFADD__(v48++, 1))
        {
          goto LABEL_69;
        }
      }
    }

    __src[0] = v86;
    sub_1C102F5F0();
    sub_1C1033FF0(v78);

    v79 = v96;
    sub_1C1033FF0(v96);
    sub_1C102FB10(__src[0]);
    v81 = v80;

    sub_1C1163784(v81);
    sub_1C102F5F0();
    *&v100[0] = v82;
    sub_1C1033FF0(v79);

    sub_1C102FB10(*&v100[0]);
    v84 = v83;

    sub_1C1163784(v84);
    OUTLINED_FUNCTION_13_8();
    PhotosSelection.deselect(items:)(v97);

    OUTLINED_FUNCTION_13_8();
    PhotosSelection.select(items:)(v98);

    (*(v87 + 8))(v95, v94);
  }
}

void sub_1C1031B3C()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_19_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_17_9(v9, v10);
  OUTLINED_FUNCTION_22_1();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v11 = OUTLINED_FUNCTION_24_5();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_34_3();
  v22 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_33_3();
  sub_1C12622C0();
  v13 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v20[3] = v13;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_15_1();
  (*(v14 + 16))();
  swift_getAssociatedConformanceWitness();
  v15 = sub_1C1262330();
  v17 = v16;
  (*(v7 + 8))(v1, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if ((v17 & 1) == 0)
  {
    *(v2 + 64) = v15;
    *(v2 + 72) = 0;
    OUTLINED_FUNCTION_13_8();
    sub_1C0FDB0A8(v4, v21);
    PhotosSelection.isItemSelected(_:)();
    v19 = v18;

    sub_1C0FD1A5C(v21, &qword_1EBE91420, &unk_1C12B70C0);
    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_8();
      PhotosSelection.set(item:)(v4);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_1C1031DAC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_19_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-1] - v6;
  v8 = sub_1C102F7D8();
  if ((v9 & 1) == 0)
  {
    v14 = v8;
    OUTLINED_FUNCTION_17_9(v8, v9);
    OUTLINED_FUNCTION_22_1();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_35_1();
    v17 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v16);
    sub_1C12622C0();
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v15[3] = v10;
    __swift_allocate_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_15_1();
    (*(v11 + 16))();
    swift_getAssociatedConformanceWitness();
    sub_1C1262330();
    v13 = v12;
    (*(v4 + 8))(v7, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    if ((v13 & 1) == 0)
    {
      sub_1C102FF30();
      sub_1C0FD1A5C(v16, &qword_1EBE91420, &unk_1C12B70C0);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_1C103202C()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_36_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_17_9(v9, v10);
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v11 = OUTLINED_FUNCTION_24_5();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_34_3();
  v24 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_33_3();
  sub_1C12622C0();
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v22[3] = v13;
  __swift_allocate_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_15_1();
  (*(v14 + 16))();
  swift_getAssociatedConformanceWitness();
  v15 = sub_1C1262330();
  v17 = v16;
  (*(v7 + 8))(v1, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  if ((v17 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_8();
    sub_1C0FDB0A8(v4, v23);
    PhotosSelection.isItemSelected(_:)();
    v19 = v18;

    sub_1C0FD1A5C(v23, &qword_1EBE91420, &unk_1C12B70C0);
    if (v19)
    {
      if ((*(v2 + 72) & 1) == 0 && *(v2 + 64) == v15)
      {
        *(v2 + 64) = 0;
        *(v2 + 72) = 1;
      }

      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8, &unk_1C12A4560);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C12A8B40;
      sub_1C0FDB0A8(v4, inited + 32);
      PhotosSelection.deselect(items:)(inited);
    }

    else
    {
      *(v2 + 64) = v15;
      *(v2 + 72) = 0;
      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8, &unk_1C12A4560);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1C12A8B40;
      sub_1C0FDB0A8(v4, v21 + 32);
      PhotosSelection.select(items:)(v21);
    }

    swift_setDeallocating();
    sub_1C1102090();
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_1C1032364()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_15();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v30 = v0;
  OUTLINED_FUNCTION_17_9(v10, v11);
  sub_1C12620A0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_46();
  v12 = sub_1C1262300();
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    v29 = v6;
    if (v12)
    {
      v14 = 0;
      v31._rawValue = MEMORY[0x1E69E7CC0];
      v15 = &qword_1EBE907C0;
      do
      {
        MEMORY[0x1C68EBC60](v14, v4, AssociatedConformanceWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(v15, &unk_1C12A8C60);
        if (swift_dynamicCast())
        {
          v16 = v13;
          v17 = v4;
          v18 = AssociatedConformanceWitness;
          v19 = AssociatedTypeWitness;
          v20 = v15;
          sub_1C0F9DDE4(v32, v34);
          OUTLINED_FUNCTION_13_8();
          sub_1C0FDB0A8(v34, v32);
          PhotosSelection.isItemSelected(_:)();
          v22 = v21;

          sub_1C0FD1A5C(v32, &qword_1EBE91420, &unk_1C12B70C0);
          if (v22)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v34);
          }

          else
          {
            sub_1C0FDB0A8(v34, v32);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_12();
              sub_1C0FE40BC();
              v31._rawValue = v26;
            }

            v24 = *(v31._rawValue + 2);
            v23 = *(v31._rawValue + 3);
            if (v24 >= v23 >> 1)
            {
              OUTLINED_FUNCTION_5_14(v23);
              sub_1C0FE40BC();
              v31._rawValue = v27;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v34);
            rawValue = v31._rawValue;
            *(v31._rawValue + 2) = v24 + 1;
            sub_1C0F9DDE4(v32, rawValue + 40 * v24 + 32);
          }

          v15 = v20;
          AssociatedTypeWitness = v19;
          AssociatedConformanceWitness = v18;
          v4 = v17;
          v13 = v16;
        }

        else
        {
          v33 = 0;
          memset(v32, 0, sizeof(v32));
          sub_1C0FD1A5C(v32, &qword_1EBE91420, &unk_1C12B70C0);
        }

        ++v14;
      }

      while (v13 != v14);
    }

    else
    {
      v31._rawValue = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_13_8();
    PhotosSelection.select(items:)(v31);

    (*(v29 + 8))(v9, v4);
    OUTLINED_FUNCTION_22_0();
  }
}

double sub_1C10326E4()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  OUTLINED_FUNCTION_13_8();
  PhotosSelection.deselectEverything()();

  return result;
}

void sub_1C1032730()
{
  OUTLINED_FUNCTION_39();
  sub_1C102F638(v0, v1);
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v2 + 64;
  v8 = v6 & *(v2 + 64);
  v9 = (v5 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1C10335C0(*(v3 + 56) + 112 * (v11 | (v10 << 6)), v16);
    v12 = *&v16[9];
    v13 = *&v16[10];
    v14 = *&v16[11];
    v15 = *&v16[12];
    sub_1C1033D88(v16);
    if (OUTLINED_FUNCTION_15_12(v12, v13, v14, v15))
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v7 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1C1032878()
{
  v0 = sub_1C102F7D8();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = sub_1C1030D24(v0, v1);
  if (v3 < 1)
  {
    return 0;
  }

  result = sub_1C1030D24(v3, v4);
  if (result)
  {
    if (v2 != 0x8000000000000000 || result != -1)
    {
      return v2 % result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C10328DC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_15();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_17_9(v5, v6);
  sub_1C12620A0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_8();
  sub_1C10FEB40();
  v8 = v7;

  v9 = *(v8 + 16);

  OUTLINED_FUNCTION_13_8();
  if (v9)
  {
    sub_1C10FEB40();

    OUTLINED_FUNCTION_38_3(v11, v12, v13, v14, v15, v16, v17, v18, v35);
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_25_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91400, &unk_1C12A8B50);
    OUTLINED_FUNCTION_26_3();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_1_12();
    sub_1C0FDB6D4(v20, v21, &unk_1C12A8B50, v22);
  }

  else
  {
    PhotosSelection.selectionIdentifiers.getter(v10);

    OUTLINED_FUNCTION_38_3(v23, v24, v25, v26, v27, v28, v29, v30, v35);
    MEMORY[0x1EEE9AC00](v31);
    OUTLINED_FUNCTION_25_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91410, &qword_1C12A8C58);
    OUTLINED_FUNCTION_26_3();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_1_12();
    sub_1C0FDB6D4(v32, v33, &qword_1C12A8C58, v34);
  }

  sub_1C1265F80();

  (*(v3 + 8))(v0, AssociatedTypeWitness);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1032BA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v4;
  v7[1] = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1C1262340();
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_1C1032C7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[3] = MEMORY[0x1E69E5FE0];
  v6[0] = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C1262340();
  return __swift_destroy_boxed_opaque_existential_0Tm(v6);
}

uint64_t sub_1C1032D44()
{
  OUTLINED_FUNCTION_13_8();
  sub_1C10FEB40();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91400, &unk_1C12A8B50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_35_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_12();
  sub_1C0FDB6D4(v0, v1, &unk_1C12A8B50, v2);
  sub_1C1265F80();

  sub_1C12661A0();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_1C12662A0();
}

uint64_t sub_1C1032F5C@<X0>(uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v6 ^ 1u, 1, AssociatedTypeWitness);
}

void sub_1C10330A8()
{
  v1 = v0;
  sub_1C102F53C();
  PhotosSelection.selectionIdentifiers.getter(v2);
  v4 = v3;

  OUTLINED_FUNCTION_3_17();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v7 = *(v4 + 56 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      do
      {
LABEL_6:
        v13 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
        v14 = v13[1];
        v20[0] = *v13;
        v20[1] = v14;

        sub_1C1033270(v20, v1, __src);

        if (*(&__src[1] + 1))
        {
          memcpy(v18, __src, sizeof(v18));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_8_12();
            sub_1C0FE41A4();
            v11 = v16;
          }

          v15 = *(v11 + 16);
          if (v15 >= *(v11 + 24) >> 1)
          {
            sub_1C0FE41A4();
            v11 = v17;
          }

          *(v11 + 16) = v15 + 1;
          memcpy((v11 + 112 * v15 + 32), v18, 0x70uLL);
        }

        else
        {
          sub_1C0FD1A5C(__src, &unk_1EBE90A18, &qword_1C12A6648);
        }

        v7 &= v7 - 1;
      }

      while (v7);
    }
  }

  __break(1u);
}

double sub_1C1033270@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1C102F638(a1, a2);
  v7 = v6;
  if (*(v6 + 16) && (v8 = sub_1C0FA4574(v4, v5), (v9 & 1) != 0))
  {
    sub_1C10335C0(*(v7 + 56) + 112 * v8, a3);
  }

  else
  {

    result = 0.0;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_1C103330C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_36_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v16 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  OUTLINED_FUNCTION_28_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_35_1();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = sub_1C102F7D8();
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    OUTLINED_FUNCTION_17_9(v12, v13);
    sub_1C12620A0();
    swift_unknownObjectRelease();
    MEMORY[0x1C68EBC60](v14, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v16 + 8))(v5, AssociatedTypeWitness);
    (*(v0 + qword_1EDE7FEA8))(v11);
    (*(v8 + 8))(v11, v15);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1033520(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_23_4();
  v3 = OUTLINED_FUNCTION_28_2();
  v5 = v4(v3);
  v7 = v6;
  sub_1C10335C0(a1, __src);
  OUTLINED_FUNCTION_29_1(v1 + qword_1EDE7FE98, v8);
  sub_1C0FF9294(__src, v5, v7);
  return swift_endAccess();
}

double sub_1C103361C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  OUTLINED_FUNCTION_23_4();
  v4(v2, v3);
  OUTLINED_FUNCTION_29_1(v1 + qword_1EDE7FE98, v5);
  sub_1C103391C();
  sub_1C0FD1A5C(v7, &unk_1EBE90A18, &qword_1C12A6648);
  swift_endAccess();

  return result;
}

uint64_t PhotosItemListSelectionController.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = qword_1EDE7FEA0;
  sub_1C1261F10();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PhotosItemListSelectionController.__deallocating_deinit()
{
  PhotosItemListSelectionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1C103385C()
{
  OUTLINED_FUNCTION_21_2();
  sub_1C0FA4574(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_4_13();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909F8, &qword_1C12A63C0);
    v8 = OUTLINED_FUNCTION_10_12(v7);
    OUTLINED_FUNCTION_43_2(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    v16 = (*(v1 + 56) + 48 * v3);
    v17 = v16[1];
    *v2 = *v16;
    *(v2 + 16) = v17;
    *(v2 + 25) = *(v16 + 25);
    OUTLINED_FUNCTION_41_0();
    sub_1C1266B40();
    *v0 = v1;
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *&result = 1;
    *(v2 + 24) = xmmword_1C12A6550;
    *(v2 + 40) = 0;
  }

  return result;
}

double sub_1C103391C()
{
  OUTLINED_FUNCTION_21_2();
  sub_1C0FA4574(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_4_13();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909F0, &qword_1C12A63B8);
    v8 = OUTLINED_FUNCTION_10_12(v7);
    OUTLINED_FUNCTION_43_2(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
    memcpy(v2, (*(v1 + 56) + 112 * v3), 0x70uLL);
    OUTLINED_FUNCTION_41_0();
    sub_1C1266B40();
    *v0 = v1;
  }

  else
  {
    result = 0.0;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
  }

  return result;
}

uint64_t sub_1C10339D4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C1033A74(uint64_t a1)
{
  result = sub_1C1261F10();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1C1033DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90A18, &qword_1C12A6648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C1033E4C()
{
  OUTLINED_FUNCTION_21_2();
  sub_1C0FFE15C(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_4_13();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909E8, &qword_1C12A63B0);
    OUTLINED_FUNCTION_10_12(v5);
    sub_1C0FD0978(*(v10 + 48) + 48 * v2);
    v6 = *(v10 + 56) + 16 * v2;
    v7 = *v6;
    v8 = *(v6 + 8);
    *v1 = v7;
    *(v1 + 8) = v8;
    sub_1C1034138();
    OUTLINED_FUNCTION_41_0();
    sub_1C1266B40();
    *v0 = v10;
  }

  else
  {
    result = 0.0;
    *v1 = xmmword_1C12A3E50;
  }

  return result;
}

uint64_t sub_1C1033F0C(double a1, double a2)
{
  v4 = v2;
  sub_1C0FFE25C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_4_13();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909E0, &unk_1C12A8C80);
  OUTLINED_FUNCTION_10_12(v6);
  v7 = *(*(v9 + 56) + 8 * v3);
  type metadata accessor for CGPoint(0);
  sub_1C1034198(&qword_1EBE91440, type metadata accessor for CGPoint, MEMORY[0x1E695EFB0]);
  OUTLINED_FUNCTION_28_2();
  sub_1C1266B40();
  *v4 = v9;
  return v7;
}

void sub_1C1033FF0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1C11061D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

unint64_t sub_1C1034138()
{
  result = qword_1EDE7F668;
  if (!qword_1EDE7F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F668);
  }

  return result;
}

uint64_t sub_1C1034198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhotosObservableAsset.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableAsset.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableAsset.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_5();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t sub_1C1034328(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  sub_1C10344AC(&v16[-v10]);
  v12 = *(v8 + 8);
  v12(v11, v6);
  v19 = v6;
  v20 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v21 = *(v13 + 104);
  KeyPath = swift_getKeyPath();
  v17 = v1;
  v18 = a1;
  sub_1C1035050(KeyPath, sub_1C1035124, v16, MEMORY[0x1E69E7CA8] + 8);

  return v12(a1, v6);
}

uint64_t sub_1C10344AC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C1034540(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  (*(*(*(v5 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C10345DC(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C1034668(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C1034328(v3);
}

uint64_t sub_1C1034728@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1C1034FB4(KeyPath);

  return sub_1C10344AC(a1);
}

uint64_t sub_1C10347AC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1034540(v3);
}

uint64_t (*sub_1C1034878(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C1034FB4(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableAsset(255, v3);
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C10345DC(v3);
  return sub_1C10349E8;
}

void sub_1C10349E8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  (*(*a1 + 48))(*a1, 0);
  sub_1C1034A3C(v2);

  free(v1);
}

double sub_1C1034A3C(void *a1)
{
  v1 = *a1;
  v7[4] = a1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  swift_getKeyPath();
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  type metadata accessor for PhotosObservableAsset(255, v7);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C1034B58()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_11(v6, v8);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C1034C28()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_11(v6, v9);
  OUTLINED_FUNCTION_20();
  (*(*(v7 + 88) + 24))(v2);
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C1034D08()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_14(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v5 = (*(*(v4 + 88) + 40))(v1);
  v6 = OUTLINED_FUNCTION_8_2();
  v7(v6);
  return v5 & 1;
}

double sub_1C1034DE4()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_14(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v5 = (*(*(v4 + 88) + 32))(v1);
  v6 = OUTLINED_FUNCTION_8_2();
  v7(v6);
  return v5;
}

uint64_t sub_1C1034ED0()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_14(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v5 = (*(*(v4 + 96) + 16))(v1);
  v6 = OUTLINED_FUNCTION_8_2();
  v7(v6);
  return v5;
}

uint64_t sub_1C1034FB4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C1035050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableAsset.deinit()
{
  OUTLINED_FUNCTION_5();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableAsset.__deallocating_deinit()
{
  PhotosObservableAsset.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C10352DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void (*sub_1C103532C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1034878(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C1035388(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C103540C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_11@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1C1034728(v3);
}

__n128 PhotosBordersSpec.init(cornerRadius:shadow:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  a2->n128_f64[0] = a3;
  a2->n128_u64[1] = v3;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

double PhotosBordersSpec.shadow.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;

  return result;
}

double sub_1C1035618()
{
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  qword_1EDE82B08 = 0;
  qword_1EDE82B10 = qword_1EDE82B80;
  xmmword_1EDE82B18 = *&qword_1EDE82B88;
  qword_1EDE82B28 = qword_1EDE82B98;

  return result;
}

double static PhotosBordersSpec.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE82B10;
  v3 = qword_1EDE82B28;
  *a1 = qword_1EDE82B08;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_1EDE82B18;
  *(a1 + 32) = v3;

  return result;
}

uint64_t static PhotosBordersSpec.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[3];
  v2 = a2[4];
  v4 = a2[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[2];

  v8 = sub_1C1265100();

  v9 = v8 & (v7 == v4);
  if (v6 != v3)
  {
    v9 = 0;
  }

  if (v5 == v2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t View.photosBorders(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v32 = sub_1C1263320();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C12633D0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v33 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = *a1;
  v21 = a1[1];
  v31 = *(a1 + 1);
  v22 = a1[4];
  sub_1C12633B0();
  sub_1C1264C60();
  (*(v11 + 8))(v14, v9);
  v37 = v21;
  v38 = v31;
  v39 = v22;
  v23 = *(v32 + 20);
  v24 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  (*(v25 + 104))(&v8[v23], v24);
  *v8 = v20;
  *(v8 + 1) = v20;
  OUTLINED_FUNCTION_0_0();
  v28 = sub_1C0FDB6D4(v26, &unk_1EBE92EC0, &qword_1C12A8E00, v27);
  v35 = a3;
  v36 = v28;

  WitnessTable = swift_getWitnessTable();
  sub_1C1035B4C();
  View.clipShadow<A>(_:shape:)(&v37, WitnessTable, v34);
  sub_1C100867C(v8);

  return (*(v33 + 8))(v19, v15);
}

uint64_t PhotosBordersSpec.clipShape.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_1C1263320() + 20);
  v5 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  result = (*(v6 + 104))(&a1[v4], v5);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

unint64_t sub_1C1035B4C()
{
  result = qword_1EDE7BCE8;
  if (!qword_1EDE7BCE8)
  {
    sub_1C1263320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BCE8);
  }

  return result;
}

uint64_t sub_1C1035BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for OneUpAnimatedInfoButton(0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v50 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91488, &qword_1C12A9180);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v47 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91490, &qword_1C12A9188);
  OUTLINED_FUNCTION_0();
  v54 = v18;
  v55 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v47 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91498, &qword_1C12A9190);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v47 - v21;
  *v16 = sub_1C12659A0();
  v16[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914A0, &qword_1C12A9198);
  sub_1C1036168(v1, v16 + *(v23 + 44));
  v24 = *v1;
  v25 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {

    sub_1C1266420();
    v47 = v10;
    v30 = sub_1C1264410();
    v48 = v16;
    v31 = a1;
    v32 = v30;
    sub_1C1262620();

    a1 = v31;
    v9 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v48;
    v33 = v49;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v34 = sub_1C0FF9034(v24, v25, 0);
    (*(v50 + 8))(v33, v47, v34);
    v25 = *(&v57 + 1);
    if (v57)
    {
      goto LABEL_3;
    }

LABEL_5:
    v29 = 0;
    v27 = xmmword_1C12A8E90;
    v28 = 0uLL;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!v24)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  (*(v25 + 184))(&v57, ObjectType, v25);
  swift_unknownObjectRelease();
  v27 = v57;
  v28 = v58;
  v29 = v59;
LABEL_6:
  v57 = v27;
  v58 = v28;
  v59 = v29;
  sub_1C10388D4(v2, v9);
  v35 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v36 = swift_allocObject();
  sub_1C1038AF8(v9, v36 + v35, type metadata accessor for OneUpAnimatedInfoButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914B8, &qword_1C12A91B0);
  sub_1C0FDB6D4(&qword_1EBE914C0, &qword_1EBE91488, &qword_1C12A9180, MEMORY[0x1E6981880]);
  sub_1C10389B8();
  v37 = v53;
  sub_1C1265000();

  sub_1C1038A90(v57, *(&v57 + 1), v58, *(&v58 + 1));
  v38 = sub_1C0FD1A5C(v16, &qword_1EBE91488, &qword_1C12A9180);
  v39 = MEMORY[0x1C68EF360](v38, 0.5, 0.4, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91470, &qword_1C12A9108);
  sub_1C12628E0();
  sub_1C10372D8(&v57);

  v40 = v60;
  sub_1C0FF2048(v57, *(&v57 + 1), v58, *(&v58 + 1));
  v41 = v56;
  (*(v54 + 32))(v56, v37, v55);
  v42 = (v41 + *(v52 + 36));
  *v42 = v39;
  v42[1] = v40;
  v43 = sub_1C1265A30();
  sub_1C12628E0();
  sub_1C10372D8(&v57);

  v44 = v61;
  sub_1C0FF2048(v57, *(&v57 + 1), v58, *(&v58 + 1));
  sub_1C0FAE2D0(v41, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914C8, &qword_1C12A91B8);
  v46 = (a1 + *(result + 36));
  *v46 = v43;
  v46[1] = v44;
  return result;
}

uint64_t sub_1C1036168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914D0, &qword_1C12A91C0);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v97 - v3;
  v4 = sub_1C1263840();
  v105 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v97 - v7;
  v107 = sub_1C1265E50();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OneUpBarButton(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v97 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914D8, &qword_1C12A91C8);
  MEMORY[0x1EEE9AC00](v108);
  v101 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v97 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914E0, &unk_1C12A91D0);
  MEMORY[0x1EEE9AC00](v109);
  v98 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v97 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v97 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97 - v25;
  v27 = *(type metadata accessor for OneUpAnimatedInfoButton(0) + 20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91470, &qword_1C12A9108);
  sub_1C12628E0();
  sub_1C10372D8(&v127);

  v113 = a1;
  v115 = v27;
  v114 = v28;
  if (v128 >= 4)
  {

    sub_1C12628E0();
    sub_1C10372D8(&v127);

    v35 = v127;
    v36 = v128;
    v38 = v129;
    v37 = v130;
    v122 = v127;
    v123 = v128;
    v124 = v129;
    v125 = v130;
    v126 = v131;
    v105 = sub_1C1036FF8();
    v104 = v39;
    sub_1C0FF2048(v35, v36, v38, v37);
    sub_1C12628E0();
    sub_1C10372D8(&v117);

    if (v118 >= 4)
    {
      sub_1C0FF2048(v117, v118, v119, v120);
      v40 = 0x3F1A36E2EB1C432DLL;
    }

    else
    {
      v40 = qword_1C12A9348[v118];
    }

    sub_1C1265DF0();
    v70 = static String.photosSwiftUICoreLocalized(_:)(v9);
    v103 = v71;
    (*(v106 + 8))(v9, v107);
    sub_1C1263A50();
    v116 = MEMORY[0x1E69E7CC0];
    sub_1C1038AB0(&qword_1EDE7BC70, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920, &qword_1C12AAE60, MEMORY[0x1E69E6328]);
    sub_1C1266870();
    *(v12 + 7) = 0;
    *(v12 + 40) = 0u;
    *(v12 + 24) = 0u;
    v72 = &v12[v10[16]];
    *v72 = swift_getKeyPath();
    v72[8] = 0;
    v73 = v10[17];
    *&v12[v73] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v74 = &v12[v10[18]];
    *v74 = swift_getKeyPath();
    v74[8] = 0;
    v75 = &v12[v10[19]];
    *v75 = swift_getKeyPath();
    v75[8] = 0;
    v76 = &v12[v10[20]];
    *v76 = swift_getKeyPath();
    v76[8] = 0;
    v77 = &v12[v10[21]];
    *v77 = swift_getKeyPath();
    *(v77 + 1) = 0;
    v77[16] = 0;
    v78 = &v12[v10[22]];
    *v78 = swift_getKeyPath();
    *(v78 + 4) = 0;
    v79 = &v12[v10[23]];
    *v79 = swift_getKeyPath();
    v79[8] = 0;
    *(v12 + 12) = v104;
    *(v12 + 13) = 0;
    *(v12 + 14) = v40;
    v12[16] = 49;
    *v12 = 0;
    *(v12 + 1) = 0;
    v80 = v105;
    *(v12 + 10) = 0;
    *(v12 + 11) = v80;
    *(v12 + 8) = 0;
    *(v12 + 9) = 0;
    v81 = v103;
    *(v12 + 15) = v70;
    *(v12 + 16) = v81;
    v82 = &v12[v10[13]];
    *v82 = 0;
    *(v82 + 1) = 0;
    v83 = &v12[v10[14]];
    *v83 = 0xD000000000000017;
    *(v83 + 1) = 0x80000001C12A90F0;
    v84 = &v12[v10[15]];
    *v84 = 0;
    v84[8] = 1;
    sub_1C12628E0();
    sub_1C10372D8(&v127);

    v85 = v127;
    v86 = v128;
    v87 = v129;
    v88 = v130;
    v117 = v127;
    v118 = v128;
    v119 = v129;
    v120 = v130;
    v121 = v131;
    v89 = sub_1C1036FF8();
    v91 = v90;
    sub_1C0FF2048(v85, v86, v87, v88);
    v92 = v101;
    sub_1C1038AF8(v12, v101, type metadata accessor for OneUpBarButton);
    v93 = (v92 + *(v108 + 52));
    *v93 = v89;
    v93[1] = v91;
    sub_1C1262CB0();
    sub_1C1262CC0();
    v94 = sub_1C1262CA0();

    v95 = v98;
    sub_1C1012024(v92, v98, &qword_1EBE914D8, &qword_1C12A91C8);
    *(v95 + *(v109 + 36)) = v94;
    v26 = v99;
    sub_1C1012024(v95, v99, &qword_1EBE914E0, &unk_1C12A91D0);
  }

  else
  {
    v101 = v4;
    sub_1C0FF2048(v127, v128, v129, v130);
    sub_1C12628E0();
    sub_1C10372D8(&v127);

    v29 = v127;
    v30 = v128;
    v31 = v129;
    v32 = v130;
    v122 = v127;
    v123 = v128;
    v124 = v129;
    v125 = v130;
    v126 = v131;
    v99 = sub_1C1036FF8();
    v98 = v33;
    sub_1C0FF2048(v29, v30, v31, v32);
    sub_1C12628E0();
    sub_1C10372D8(&v117);

    if (v118 >= 4)
    {
      sub_1C0FF2048(v117, v118, v119, v120);
      v34 = 0x3F1A36E2EB1C432DLL;
    }

    else
    {
      v34 = qword_1C12A9348[v118];
    }

    sub_1C1265DF0();
    v41 = static String.photosSwiftUICoreLocalized(_:)(v9);
    v97 = v42;
    (*(v106 + 8))(v9, v107);
    v107 = 0x80000001C12A90F0;
    sub_1C1263A50();
    v116 = MEMORY[0x1E69E7CC0];
    sub_1C1038AB0(&qword_1EDE7BC70, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920, &qword_1C12AAE60, MEMORY[0x1E69E6328]);
    sub_1C1266870();
    *(v15 + 7) = 0;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    v43 = &v15[v10[16]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = v10[17];
    *&v15[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v45 = &v15[v10[18]];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    v46 = &v15[v10[19]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = &v15[v10[20]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = &v15[v10[21]];
    *v48 = swift_getKeyPath();
    *(v48 + 1) = 0;
    v48[16] = 0;
    v49 = &v15[v10[22]];
    *v49 = swift_getKeyPath();
    *(v49 + 4) = 0;
    v50 = &v15[v10[23]];
    *v50 = swift_getKeyPath();
    v50[8] = 0;
    *(v15 + 12) = v98;
    *(v15 + 13) = 0;
    *(v15 + 14) = v34;
    v15[16] = 49;
    *v15 = 0;
    *(v15 + 1) = 0;
    v51 = v99;
    *(v15 + 10) = 0;
    *(v15 + 11) = v51;
    *(v15 + 8) = 0;
    *(v15 + 9) = 0;
    v52 = v97;
    *(v15 + 15) = v41;
    *(v15 + 16) = v52;
    v53 = &v15[v10[13]];
    *v53 = 0;
    *(v53 + 1) = 0;
    v54 = &v15[v10[14]];
    *v54 = 0xD000000000000017;
    *(v54 + 1) = v107;
    v55 = &v15[v10[15]];
    *v55 = 0;
    v55[8] = 1;
    sub_1C12628E0();
    sub_1C10372D8(&v127);

    v56 = v127;
    v57 = v128;
    v58 = v129;
    v59 = v130;
    v117 = v127;
    v118 = v128;
    v119 = v129;
    v120 = v130;
    v121 = v131;
    v60 = sub_1C1036FF8();
    v62 = v61;
    sub_1C0FF2048(v56, v57, v58, v59);
    v63 = v102;
    sub_1C1038AF8(v15, v102, type metadata accessor for OneUpBarButton);
    v64 = (v63 + *(v108 + 52));
    *v64 = v60;
    v64[1] = v62;
    v65 = v104;
    sub_1C1263830();
    v66 = v105;
    v67 = v101;
    (*(v105 + 16))(v103, v65, v101);
    sub_1C1038AB0(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v68 = sub_1C1262CE0();
    (*(v66 + 8))(v65, v67);
    v69 = v100;
    sub_1C1012024(v63, v100, &qword_1EBE914D8, &qword_1C12A91C8);
    *(v69 + *(v109 + 36)) = v68;
    sub_1C1012024(v69, v26, &qword_1EBE914E0, &unk_1C12A91D0);
  }

  sub_1C1038B58(v26, v110);
  swift_storeEnumTagMultiPayload();
  sub_1C1038BC8();
  sub_1C1263C20();
  return sub_1C0FD1A5C(v26, &qword_1EBE914E0, &unk_1C12A91D0);
}

unint64_t sub_1C1036FF8()
{
  v1 = 0x7269632E6F666E69;
  switch(*(v0 + 8))
  {
    case 0:
      return v1;
    case 1:
      v1 = 0xD000000000000010;
      break;
    case 2:
      v1 = 0xD00000000000001ALL;
      break;
    case 3:
      v1 = 0xD00000000000001FLL;
      break;
    default:
      if (MEMORY[0xEB00000000656C83])
      {
        v1 = MEMORY[0xEB00000000656C73];
      }

      else
      {
        v1 = MEMORY[0xEB00000000656C63];
      }

      break;
  }

  return v1;
}

double sub_1C10370EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 32);
  type metadata accessor for OneUpAnimatedInfoButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91470, &qword_1C12A9108);
  sub_1C12628E0();
  if (v3 == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  if (v3 == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  if (v3 == 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  if (v3 == 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  v13[0] = v7;
  v13[1] = v8;
  if (v3 == 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v13[2] = v9;
  v13[3] = v10;
  v14 = v11;
  sub_1C1038AA0(v2, v3, v4, v5);
  sub_1C1037954(v13);

  return result;
}

BOOL sub_1C10371B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v17 = *(a1 + 48);
  v18 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15 = *(a2 + 48);
  v16 = *(a2 + 40);
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  v21[0] = v2;
  v21[1] = v3;
  v21[2] = v4;
  v21[3] = v5;
  v22 = v10;
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  v20 = v11;
  sub_1C0FF2090(v2, v3, v4, v5);
  sub_1C0FF2090(v6, v7, v8, v9);
  v14 = static OneUpVisualAnalysisState.== infix(_:_:)(v21, v19);
  sub_1C0FF2048(v6, v7, v8, v9);
  sub_1C0FF2048(v2, v3, v4, v5);
  v12 = v17 == v15;
  if (v18 != v16)
  {
    v12 = 0;
  }

  return (v14 & 1) != 0 && v12;
}

double sub_1C10372D8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model, &unk_1C12A9070);
  sub_1C1261F30();

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 40) = *(v1 + 56);
  return sub_1C0FF2090(v3, v4, v5, v6);
}

double sub_1C103739C@<D0>(uint64_t a1@<X8>)
{
  sub_1C10372D8(v5);
  v2 = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
  result = v7[0];
  *(a1 + 40) = *v7;
  return result;
}

void sub_1C10373E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  sub_1C0FF2090(v5, v1, v2, v3);
  sub_1C1037444(&v5);
}

void sub_1C1037444(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = a1[2];
  v15 = *(a1 + 6);
  v3 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v16[1] = v3;
  v16[2] = *(v1 + 48);
  v17 = *(v1 + 64);
  sub_1C10386AC(v16, v11);
  v4 = sub_1C1038034(v16, &v12);
  sub_1C10386E4(v16);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1037F80();
    sub_1C10386E4(&v12);
  }

  else
  {
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = v13;
    *(v1 + 16) = v12;
    *(v1 + 32) = v10;
    *(v1 + 48) = v14;
    *(v1 + 64) = v15;
    sub_1C0FF2048(v6, v7, v8, v9);
  }
}

void sub_1C1037560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = *(a2 + 48);
  sub_1C10386AC(a2, v7);
  sub_1C0FF2048(v2, v3, v4, v5);
}

uint64_t sub_1C10375E8()
{
  swift_getKeyPath();
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model, &unk_1C12A9070);
  sub_1C1261F30();

  return *(v0 + 72);
}

double sub_1C1037688(uint64_t a1)
{
  if (*(v1 + 72) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1037F80();
  }

  return result;
}

uint64_t sub_1C103772C()
{
  swift_getKeyPath();
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model, &unk_1C12A9070);
  sub_1C1261F30();

  return *(v0 + 80);
}

double sub_1C10377CC(uint64_t a1)
{
  if (*(v1 + 80) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1037F80();
  }

  return result;
}

void sub_1C1037870(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v13 = v7;
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v2;
  sub_1C0FF2090(v3, v4, v5, v6);
  v9 = static OneUpVisualAnalysisState.== infix(_:_:)(v12, v10);
  sub_1C0FF2048(v3, v4, v5, v6);
  if ((v9 & 1) == 0)
  {
    if (*(v1 + 96) >= 4uLL)
    {
      sub_1C1037DDC();
    }

    sub_1C1037A10();
  }
}

void sub_1C1037954(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  v8 = *(v1 + 120);
  *(v1 + 120) = v2;
  sub_1C0FF2090(v3, v4, v5, v6);
  sub_1C0FF2048(v3, v4, v5, v6);
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v10 = v8;
  sub_1C1037870(v9);

  sub_1C0FF2048(v3, v4, v5, v6);
}

void sub_1C1037A10()
{
  if (*(v0 + 136) != 1)
  {
    v5 = *(v0 + 88);
    v1 = *(v0 + 96);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    goto LABEL_5;
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  if (v1 < 4)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
LABEL_5:
    sub_1C0FF2090(v5, v1, v4, v3);
    goto LABEL_10;
  }

  v5 = 0;
  v4 = 0;
  v3 = 0;
  if (*(v0 + 120))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 0;
LABEL_10:
  v17 = v3;
  v28[0] = v5;
  v28[1] = v1;
  v28[2] = v4;
  v28[3] = v3;
  v29 = v2;
  sub_1C10372D8(&v22);
  v6 = v22;
  v7 = v23;
  v8 = v24;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v9 = static OneUpVisualAnalysisState.== infix(_:_:)(v28, &v18);
  sub_1C0FF2048(v6, *(&v6 + 1), v7, v8);
  if ((v9 & 1) == 0)
  {
    *&v22 = v5;
    *(&v22 + 1) = v1;
    v23 = v4;
    v24 = v3;
    v25 = v2;
    if (sub_1C1037D60(&v22))
    {
      swift_getKeyPath();
      *&v22 = v0;
      sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model, &unk_1C12A9070);
      sub_1C1261F30();

      *&v22 = v0;
      swift_getKeyPath();
      sub_1C1261F50();

      v10 = *(v0 + 80);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (!v11)
      {
        *(v0 + 80) = v12;
        *&v22 = v0;
LABEL_19:
        swift_getKeyPath();
        sub_1C1261F40();

        v15 = sub_1C103772C();
        v16 = sub_1C10375E8();
        *&v22 = v5;
        *(&v22 + 1) = v1;
        v23 = v4;
        v24 = v17;
        v25 = v2;
        v26 = v15;
        v27 = v16;
        sub_1C1037444(&v22);
        return;
      }

      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      *&v22 = v0;
      sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model, &unk_1C12A9070);
      sub_1C1261F30();

      *&v22 = v0;
      swift_getKeyPath();
      sub_1C1261F50();

      v13 = *(v0 + 72);
      v11 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (!v11)
      {
        *(v0 + 72) = v14;
        *&v22 = v0;
        goto LABEL_19;
      }
    }

    __break(1u);
    return;
  }

  sub_1C0FF2048(v5, v1, v4, v3);
}

BOOL sub_1C1037D60(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1C10372D8(&v3);
  if (v4 >= 4)
  {

    return 0;
  }

  else
  {
    sub_1C0FF2048(v3, v4, v5, v6);
    return v1 > 3;
  }
}

void sub_1C1037DDC()
{
  sub_1C1037F70(0);
  [*(v0 + 128) invalidate];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1C1038684;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C10CB7AC;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:3.0];
  _Block_release(v3);
  v5 = *(v0 + 128);
  *(v0 + 128) = v4;
}

double sub_1C1037EFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1037F70(1);
  }

  return result;
}

void sub_1C1037F58(char a1)
{
  if (*(v1 + 136) != (a1 & 1))
  {
    sub_1C1037A10();
  }
}

void sub_1C1037F70(char a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  sub_1C1037F58(v2);
}

uint64_t sub_1C1037F80()
{
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model, &unk_1C12A9070);
  OUTLINED_FUNCTION_5_15();
  return sub_1C1261F20();
}

BOOL sub_1C1038034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return !sub_1C10371B4(v7, v5);
}

uint64_t sub_1C1038094()
{
  sub_1C0FF2048(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1C0FF2048(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_58FD93809CBDE7A582015EB869B845695Model___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C103811C()
{
  v0 = sub_1C1038094();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1038170(uint64_t a1)
{
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  sub_1C1261F60();
  return v1;
}

unint64_t static OneUpVisualAnalysisState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  switch(v2)
  {
    case 0:
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 1:
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_1_13();
      sub_1C0FF2048(v18, v19, v20, v21);
      OUTLINED_FUNCTION_5_15();
      sub_1C0FF2048(v22, v23, v24, v25);
      return v6 & 1;
    case 2:
      if (v6 == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_11;
      }

LABEL_7:
      OUTLINED_FUNCTION_1_13();
      sub_1C0FF2048(v10, v11, v12, v13);
      OUTLINED_FUNCTION_5_15();
      sub_1C0FF2048(v14, v15, v16, v17);
      LOBYTE(v6) = 1;
      return v6 & 1;
    default:
      if (v6 < 4 || (*a1 == *a2 ? (v43 = v2 == v6) : (v43 = 0), !v43 && (sub_1C1266D50() & 1) == 0))
      {
LABEL_11:
        v26 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2090(v26, v27, v28, v29);
        v30 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2090(v30, v31, v32, v33);
        v34 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2048(v34, v35, v36, v37);
        v38 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2048(v38, v39, v40, v41);
        LOBYTE(v6) = 0;
        return v6 & 1;
      }

      if (v4 == v8 && v3 == v7)
      {
        v61 = OUTLINED_FUNCTION_6_12();
        sub_1C0FF2090(v61, v62, v63, v64);
        v65 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2090(v65, v66, v67, v68);
        v69 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2048(v69, v70, v71, v72);
        v73 = OUTLINED_FUNCTION_6_12();
        sub_1C0FF2048(v73, v74, v75, v76);
      }

      else
      {
        OUTLINED_FUNCTION_5_15();
        v77 = sub_1C1266D50();
        v45 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2090(v45, v46, v47, v48);
        v49 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2090(v49, v50, v51, v52);
        v53 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2048(v53, v54, v55, v56);
        v57 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2048(v57, v58, v59, v60);
        LOBYTE(v6) = 0;
        if ((v77 & 1) == 0)
        {
          return v6 & 1;
        }
      }

      LOBYTE(v6) = v9 ^ v5 ^ 1;
      return v6 & 1;
  }
}

uint64_t sub_1C10383F4(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore24OneUpVisualAnalysisStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C10384D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 33))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1038528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1C103858C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C10385C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFB && *(a1 + 56))
    {
      v2 = *a1 + 2147483643;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 4;
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

uint64_t sub_1C1038618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483644;
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void sub_1C1038778(uint64_t a1)
{
  sub_1C10387FC(319);
  if (v1 <= 0x3F)
  {
    sub_1C1038860(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C10387FC(uint64_t a1)
{
  if (!qword_1EDE77668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91478, qword_1C12B6A70);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77668);
    }
  }
}

void sub_1C1038860(uint64_t a1)
{
  if (!qword_1EBE91480)
  {
    type metadata accessor for Model(255);
    v1 = sub_1C1262900();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE91480);
    }
  }
}

uint64_t sub_1C10388D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpAnimatedInfoButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C1038938(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for OneUpAnimatedInfoButton(0);

  return sub_1C10370EC(a1, a2);
}

unint64_t sub_1C10389B8()
{
  result = qword_1EDE77968;
  if (!qword_1EDE77968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914B8, &qword_1C12A91B0);
    sub_1C1038A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77968);
  }

  return result;
}

unint64_t sub_1C1038A3C()
{
  result = qword_1EDE77970;
  if (!qword_1EDE77970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77970);
  }

  return result;
}

void sub_1C1038A90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 4)
  {
    sub_1C0FF2048(a1, a2, a3, a4);
  }
}

double sub_1C1038AA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 4)
  {
    return sub_1C0FF2090(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C1038AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1038AF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C1038B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914E0, &unk_1C12A91D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1038BC8()
{
  result = qword_1EBE914E8;
  if (!qword_1EBE914E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914E0, &unk_1C12A91D0);
    sub_1C0FDB6D4(&qword_1EBE914F0, &qword_1EBE914D8, &qword_1C12A91C8, MEMORY[0x1E6981810]);
    sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE914E8);
  }

  return result;
}

unint64_t sub_1C1038CAC()
{
  result = qword_1EBE91500;
  if (!qword_1EBE91500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914C8, &qword_1C12A91B8);
    sub_1C1038D64();
    sub_1C0FDB6D4(&qword_1EBE91510, &qword_1EBE91518, &unk_1C12A9338, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91500);
  }

  return result;
}

unint64_t sub_1C1038D64()
{
  result = qword_1EBE91508;
  if (!qword_1EBE91508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91498, &qword_1C12A9190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91488, &qword_1C12A9180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914B8, &qword_1C12A91B0);
    sub_1C0FDB6D4(&qword_1EBE914C0, &qword_1EBE91488, &qword_1C12A9180, MEMORY[0x1E6981880]);
    sub_1C10389B8();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EBE91510, &qword_1EBE91518, &unk_1C12A9338, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91508);
  }

  return result;
}

uint64_t OptionSet<>.count.getter(uint64_t a1, uint64_t a2)
{
  sub_1C1266040();
  v2 = v6;
  if (!v6)
  {
    return 0;
  }

  result = 0;
  while (1)
  {
    v4 = __OFADD__(result, v2 & 1);
    result += v2 & 1;
    if (v4)
    {
      break;
    }

    v5 = v2 > 1;
    v2 >>= 1;
    if (!v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C1038F14(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1C12662E0();
  if (!v19)
  {
    return sub_1C1266130();
  }

  v41 = v19;
  v45 = sub_1C1266AA0();
  v32 = sub_1C1266AB0();
  sub_1C1266A40();
  result = sub_1C12662D0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1C12663A0();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1C1266A90();
      result = sub_1C1266320();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1039330@<X0>(uint64_t *a1@<X1>, char a2@<W2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *a1;
  OUTLINED_FUNCTION_15_1();
  (*(v17 + 32))(a8);
  v18 = (v16 + *MEMORY[0x1E69E77B0]);
  v20 = *v18;
  v19 = v18[1];
  v42[0] = a10;
  v42[1] = v20;
  v42[2] = v19;
  v42[3] = a11;
  v42[4] = a12;
  v42[5] = a13;
  v42[6] = a14;
  v21 = type metadata accessor for PhotosDraggableForEach(0, v42);
  *(a8 + v21[19]) = a1;
  *(a8 + v21[20]) = a2 & 1;
  sub_1C0F9DDE4(a3, a8 + v21[21]);
  *(a8 + v21[22]) = a4;
  v22 = (a8 + v21[23]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a8 + v21[24]);
  *v23 = a7;
  v23[1] = a9;
  v24 = (a8 + v21[25]);
  *v24 = sub_1C1039524(0, a10, v20, v19, a11, a12, a13, a14);
  v24[1] = v25;
  v26 = (a8 + v21[26]);
  *v26 = sub_1C103967C(0, v25, v27, v19, v28, v29, a13);
  v26[1] = v30;
  v31 = a8 + v21[27];
  *v31 = sub_1C1012790(0) & 1;
  *(v31 + 8) = v32;
  v33 = a8 + v21[28];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  v34 = a8 + v21[29];
  result = swift_getKeyPath();
  *v34 = result;
  *(v34 + 8) = 0;
  return result;
}

uint64_t sub_1C1039524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[7] = a1;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v9[6] = a8;
  type metadata accessor for PhotosDraggableForEach.DraggingModel(255, v9);
  sub_1C1266790();
  sub_1C1265410();
  return v9[0];
}

uint64_t sub_1C1039580(uint64_t a1)
{
  v7 = *(v1 + *(a1 + 100));
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  v5[2] = *(a1 + 48);
  v6 = v2;
  type metadata accessor for PhotosDraggableForEach.DraggingModel(255, v5);
  sub_1C1266790();
  sub_1C1265450();
  sub_1C1265420();
  return *&v5[0];
}

double sub_1C10395FC(uint64_t a1, uint64_t a2)
{
  v9 = *(v2 + *(a2 + 100));
  v8 = a1;
  v3 = *(a2 + 64);
  v4 = *(a2 + 32);
  v6[0] = *(a2 + 16);
  v6[1] = v4;
  v6[2] = *(a2 + 48);
  v7 = v3;
  type metadata accessor for PhotosDraggableForEach.DraggingModel(255, v6);
  sub_1C1266790();
  sub_1C1265450();
  sub_1C1265430();
  return result;
}

uint64_t sub_1C103967C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C1266290();
  sub_1C1266790();
  sub_1C1265410();
  return v8;
}

uint64_t sub_1C10396CC(uint64_t a1)
{
  sub_1C1266290();
  sub_1C1266790();
  sub_1C1265450();
  sub_1C1265420();
  return v2;
}

double sub_1C1039734(uint64_t a1, uint64_t a2)
{
  sub_1C1266290();
  sub_1C1266790();
  sub_1C1265450();
  sub_1C1265430();
  return result;
}

uint64_t sub_1C10397A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v2;
}

double sub_1C1039804(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1039868(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 112));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C10399B4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 84));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 64))(a1, v5, v6);
}

uint64_t sub_1C1039A14(uint64_t a1, uint64_t a2)
{
  sub_1C1266790();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91590, &qword_1C12A96E8);
  sub_1C1039B70(sub_1C1040090, MEMORY[0x1E69E73E0], v2, v3, &v5);
  if (v5 == 1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1C1039ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a10;
  v12 = (a2 + *(type metadata accessor for PhotosDraggableForEach(0, v16) + 84));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  result = (*(v14 + 56))(a1, v13, v14);
  *a9 = result;
  return result;
}

uint64_t sub_1C1039B70@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v21, 1, v27);
}

uint64_t sub_1C1039DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C12661A0();
  swift_getWitnessTable();
  return sub_1C1265F70() & 1;
}

uint64_t sub_1C1039E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v12 = (a2 + *(type metadata accessor for PhotosDraggableForEach(0, v16) + 84));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  return (*(v14 + 48))(a1, a3, v13, v14) & 1;
}

void PhotosDraggableForEach.body.getter()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v43 = v3;
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = *(v9 + 24);
  v10 = sub_1C12661A0();
  v11 = *(v2 + 32);
  v44 = *(v2 + 56);
  v45 = v11;
  v51 = v11;
  v52 = v44;
  v36 = type metadata accessor for PhotosDraggableItemView(255, &v51);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538, &unk_1C12A9380);
  v38 = OUTLINED_FUNCTION_27_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  v14 = OUTLINED_FUNCTION_27_3(v13);
  v39 = v14;
  OUTLINED_FUNCTION_8_13();
  v42 = v10;
  WitnessTable = swift_getWitnessTable();
  *&v51 = v10;
  *(&v51 + 1) = v45;
  *&v52 = v14;
  *(&v52 + 1) = WitnessTable;
  v40 = WitnessTable;
  v41 = v44;
  v53 = v44;
  v16 = sub_1C12656A0();
  OUTLINED_FUNCTION_0();
  v35 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  *&v51 = sub_1C103A30C(v2);
  (*(v5 + 16))(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v2);
  v22 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = v37;
  *(v23 + 16) = *(v2 + 16);
  *(v23 + 24) = v24;
  v25 = v44;
  *(v23 + 32) = v45;
  *(v23 + 48) = *(v2 + 48);
  *(v23 + 56) = v25;
  (*(v5 + 32))(v23 + v22, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

  OUTLINED_FUNCTION_7_13();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x1E697FDC0];
  v28 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
  v49 = v26;
  v50 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, v27);
  v47 = v29;
  v48 = v30;
  v33 = swift_getWitnessTable();
  sub_1C1265680();
  v46 = v33;
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v31 = *(v35 + 8);
  v31(v20, v16);
  OUTLINED_FUNCTION_34_0();
  sub_1C0FDBA4C();
  v32 = OUTLINED_FUNCTION_34_0();
  (v31)(v32);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103A30C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C1039580(v6))
  {
    sub_1C103C7DC();
    v8 = v7;

    return v8;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    return sub_1C12661C0();
  }
}

uint64_t sub_1C103A414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int *a10)
{
  v81 = a9;
  v82 = a1;
  v88 = a5;
  v89 = a6;
  v90 = a8;
  v91 = a10;
  v17 = type metadata accessor for PhotosDraggableItemView(0, &v88);
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v63[-v18];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538, &unk_1C12A9380);
  v73 = v17;
  v19 = sub_1C1263190();
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v63[-v20];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  v78 = v19;
  v21 = sub_1C1263190();
  v79 = *(v21 - 8);
  v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v63[-v24];
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v63[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63[-v28];
  v66 = a3;
  v88 = a3;
  v89 = a4;
  v67 = a4;
  v30 = a8;
  v90 = a5;
  v91 = a6;
  v70 = a6;
  v69 = a7;
  WitnessTable = a7;
  v93 = a8;
  v68 = a10;
  v94 = a10;
  v31 = type metadata accessor for PhotosDraggableForEach(0, &v88);
  swift_getAtKeyPath();
  v32 = (a2 + v31[21]);
  v33 = v32[3];
  v34 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v64 = PhotosDraggingDelegate.canDragItem(_:)(v29, v33, v34);
  v36 = v32[3];
  v35 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v36);
  v37 = (*(v35 + 32))(v29, v36, v35);
  v38 = sub_1C1039580(v31);
  v39 = v38;
  if (v38)
  {
    v40 = *(v38 + 24);

    v88 = v40;
    sub_1C12661A0();
    swift_getWitnessTable();
    v39 = sub_1C1266020();
  }

  v41 = v65;
  (*(v83 + 16))(v65, v29, a5);
  v91 = v31;
  WitnessTable = swift_getWitnessTable();
  v42 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v43 = (*(*(v31 - 1) + 16))(v42, a2, v31);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v67;
  *&v63[-80] = v66;
  *&v63[-72] = v44;
  v45 = v70;
  *&v63[-64] = a5;
  *&v63[-56] = v45;
  *&v63[-48] = v69;
  *&v63[-40] = v30;
  v46 = v82;
  v62 = v30;
  v47 = v71;
  sub_1C11A8184(v41, v64 & 1, v37 & 1, v39 & 1, &v88, sub_1C10400F0, a5, v71, v45, v62, v68);
  v48 = (a2 + v31[23]);
  v49 = v74;
  if (*v48)
  {
    (*v48)(v46);
  }

  v50 = v73;
  v51 = swift_getWitnessTable();
  sub_1C1264F20();
  (*(v72 + 8))(v47, v50);
  if (!*(a2 + v31[22]))
  {
    sub_1C1262CC0();
  }

  v52 = MEMORY[0x1E697FDC0];
  v53 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
  v86 = v51;
  v87 = v53;

  v54 = v78;
  v55 = swift_getWitnessTable();
  v56 = v75;
  sub_1C12649D0();

  (*(v76 + 8))(v49, v54);
  (*(v83 + 8))(v29, a5);
  v57 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, v52);
  v84 = v55;
  v85 = v57;
  v58 = v80;
  swift_getWitnessTable();
  v59 = v77;
  sub_1C0FDBA4C();
  v60 = *(v79 + 8);
  v60(v56, v58);
  sub_1C0FDBA4C();
  return (v60)(v59, v58);
}

uint64_t sub_1C103ABC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for PhotosDraggableForEach(0, v15);
  OUTLINED_FUNCTION_15(v12);
  return sub_1C103A414(a1, v2 + ((*(v13 + 80) + 72) & ~*(v13 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

uint64_t sub_1C103AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a8;
  v13[6] = a9;
  v11 = type metadata accessor for PhotosDraggableForEach(0, v13);
  return (*(a1 + *(v11 + 96)))(a2);
}

uint64_t sub_1C103AD04(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 84));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 24))(a1, v5, v6);
}

void sub_1C103AD74()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  v30 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v29 = v10 - v9;
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v11 = sub_1C1262720();
  v12 = OUTLINED_FUNCTION_28_3(v11, qword_1EBE91520);
  v13 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v13))
  {
    v14 = OUTLINED_FUNCTION_20_10();
    *v14 = 0;
    _os_log_impl(&dword_1C0F96000, v12, v13, "dragSessionStarted", v14, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  v31 = &v28;
  v34[0] = v5;
  MEMORY[0x1EEE9AC00](v15);
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  *(&v28 - 8) = v6;
  *(&v28 - 7) = v16;
  v33 = v5;
  v19 = *(v3 + 40);
  v18 = *(v3 + 48);
  *(&v28 - 6) = v17;
  *(&v28 - 5) = v19;
  v28 = v6;
  v21 = *(v3 + 56);
  v20 = *(v3 + 64);
  *(&v28 - 4) = v18;
  *(&v28 - 3) = v21;
  *(&v28 - 2) = v20;
  *(&v28 - 1) = v1;
  sub_1C1266290();
  v32 = v1;
  swift_getWitnessTable();
  if (sub_1C1265F70())
  {
    v22 = v28;
    v34[0] = v28;
    v34[1] = v16;
    v34[2] = v17;
    v34[3] = v19;
    v34[4] = v18;
    v34[5] = v21;
    v34[6] = v20;
    type metadata accessor for PhotosDraggableForEach.DraggingModel(0, v34);
    v23 = *(v32 + *(v3 + 76));
    (*(v30 + 16))(v29, v32, v22);

    v24 = sub_1C12661C0();
    v25 = v33;

    v26 = sub_1C103B0B8(v23, v24, v25);
    sub_1C10395FC(v26, v3);
  }

  else
  {

    sub_1C1039734(v27, v3);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103B018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v10 = (a2 + *(type metadata accessor for PhotosDraggableForEach(0, v14) + 84));
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  return (*(v12 + 32))(a1, v11, v12) & 1;
}

uint64_t sub_1C103B0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C103D2C4(a1, a2, a3);
  return v6;
}

double sub_1C103B110(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v5 = sub_1C1262720();
  v6 = OUTLINED_FUNCTION_28_3(v5, qword_1EBE91520);
  v7 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v7))
  {
    *OUTLINED_FUNCTION_20_10() = 0;
    OUTLINED_FUNCTION_16_10(&dword_1C0F96000, v8, v9, "dragSessionEnded");
    OUTLINED_FUNCTION_4_8();
  }

  result = sub_1C1039734(0, a3);
  if ((a2 & 1) == 0)
  {

    return sub_1C10395FC(0, a3);
  }

  return result;
}

uint64_t sub_1C103B1FC(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 84));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 88))(a1, v5, v6);
}

uint64_t sub_1C103B25C(uint64_t a1, uint64_t a2)
{
  sub_1C103EBB8();
  v5 = sub_1C1261FF0();
  v6 = (v2 + *(a2 + 84));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 96))(a1, v7, v8);
  sub_1C1163858(v9);
  return v5;
}

uint64_t sub_1C103B300(uint64_t a1, uint64_t a2)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v4 = sub_1C1262720();
  v5 = OUTLINED_FUNCTION_28_3(v4, qword_1EBE91520);
  v6 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v6))
  {
    *OUTLINED_FUNCTION_20_10() = 0;
    OUTLINED_FUNCTION_16_10(&dword_1C0F96000, v7, v8, "validateMerge");
    OUTLINED_FUNCTION_4_8();
  }

  result = sub_1C1039580(a2);
  if (result)
  {

    v11 = sub_1C1039DE4(v10, a1, a2);

    return v11 & 1;
  }

  return result;
}

uint64_t sub_1C103B3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v8 = sub_1C1262720();
  v9 = OUTLINED_FUNCTION_28_3(v8, qword_1EBE91520);
  v10 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v10))
  {
    v11 = OUTLINED_FUNCTION_20_10();
    *v11 = 0;
    _os_log_impl(&dword_1C0F96000, v9, v10, "validateDrop", v11, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  if (sub_1C1039580(a3))
  {
    if (sub_1C103D6CC(a2))
    {

      return 1;
    }

    else
    {
      v13 = sub_1C103D0DC();

      return v13 & 1;
    }
  }

  else if (sub_1C10396CC(a3))
  {

    return 0;
  }

  else
  {
    v14 = (v4 + *(a3 + 84));
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    return (*(v16 + 112))(a1, a2, v15, v16) & 1;
  }
}

BOOL sub_1C103B560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v5 = sub_1C1262720();
  v6 = OUTLINED_FUNCTION_28_3(v5, qword_1EBE91520);
  v7 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v7))
  {
    *OUTLINED_FUNCTION_20_10() = 0;
    OUTLINED_FUNCTION_16_10(&dword_1C0F96000, v8, v9, "validateDropAppearance");
    OUTLINED_FUNCTION_4_8();
  }

  if (!sub_1C1039580(a3))
  {
    return 1;
  }

  v10 = sub_1C103D6CC(a2);

  return v10;
}

void sub_1C103B640()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v74 = v6;
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_1();
  v78 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  v72 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v76 = v18;
  v77 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v71 - v20;
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v21 = sub_1C1262720();
  v22 = OUTLINED_FUNCTION_28_3(v21, qword_1EBE91520);
  v23 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v23))
  {
    v24 = OUTLINED_FUNCTION_20_10();
    *v24 = 0;
    _os_log_impl(&dword_1C0F96000, v22, v23, "performDrop", v24, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  v25 = sub_1C1039580(v3);
  if (!v25)
  {
    v52 = (v1 + *(v3 + 84));
    v53 = v52[4];
    v77 = v52[3];
    v75 = v53;
    v76 = __swift_project_boxed_opaque_existential_1(v52, v77);
    v54 = v72;
    v55 = OUTLINED_FUNCTION_34_0();
    v56(v55);
    v57 = v78;
    v58 = v73;
    (*(v78 + 16))(v73, v5, v7);
    v59 = (*(v54 + 80) + 72) & ~*(v54 + 80);
    v60 = (v14 + v59 + *(v57 + 80)) & ~*(v57 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = *(v3 + 16);
    *(v61 + 32) = v7;
    *(v61 + 40) = *(v3 + 40);
    *(v61 + 56) = *(v3 + 56);
    (*(v54 + 32))(v61 + v59, v16, v3);
    (*(v57 + 32))(v61 + v60, v58, v7);
    (*(v75 + 104))(v74, sub_1C103FE90, v61, v77);

    goto LABEL_20;
  }

  v26 = v25;
  v74 = sub_1C103FFAC();
  v79 = *(v26 + 24);
  MEMORY[0x1EEE9AC00](v74);
  v27 = *(v3 + 24);
  *(&v71 - 8) = *(v3 + 16);
  *(&v71 - 7) = v27;
  v29 = *(v3 + 40);
  v28 = *(v3 + 48);
  *(&v71 - 6) = v7;
  *(&v71 - 5) = v29;
  v30 = *(v3 + 56);
  v31 = *(v3 + 64);
  *(&v71 - 4) = v28;
  *(&v71 - 3) = v30;
  *(&v71 - 2) = v31;
  *(&v71 - 1) = v1;
  MEMORY[0x1EEE9AC00](v28);
  *(&v71 - 10) = v32;
  *(&v71 - 9) = v33;
  *(&v71 - 8) = v7;
  *(&v71 - 7) = v34;
  *(&v71 - 6) = v35;
  *(&v71 - 5) = v36;
  *(&v71 - 4) = v37;
  *(&v71 - 3) = sub_1C103FFF0;
  *(&v71 - 2) = v38;
  sub_1C12661A0();

  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  v39 = sub_1C1265F80();

  v40 = sub_1C103BEF4(v39);
  if (!sub_1C103D6CC(v5))
  {
    v62 = sub_1C10399B4(v5, v3);
    if (v62)
    {
      v63 = v62;
      v64 = v75;
      sub_1C103CB98(v75);
      v65 = sub_1C1039A14(v64, v3);
      (v76[1])(v64, v77);
      v66 = sub_1C1039868(v3);
      OUTLINED_FUNCTION_26_4(v66);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v67 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        v69 = *(v67 + 32);
        swift_unknownObjectRetain();
        v70 = v40;
        v69(v63, v70, v65, ObjectType, v67);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v41 = v75;
  (*(v78 + 16))(v75, v5, v7);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v7);
  v45 = sub_1C1039A14(v41, v3);
  (v76[1])(v41, v77);
  if (!v45)
  {
LABEL_15:

    goto LABEL_20;
  }

  v47 = sub_1C1039DE4(v46, v5, v3);

  if (v47)
  {
    v48 = sub_1C1039868(v3);
    OUTLINED_FUNCTION_26_4(v48);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v3 + 24);
      swift_getObjectType();
      v50 = *(v49 + 24);
      v51 = v40;
      v50();

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_unknownObjectRelease();

LABEL_20:
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v25 = a2;
  v15 = sub_1C1266790();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  (*(*(a5 - 8) + 16))(&v23 - v18, a1, a5, v17);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, a5);
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;
  v26[5] = v24;
  v26[6] = a9;
  v20 = type metadata accessor for PhotosDraggableForEach(0, v26);
  v21 = sub_1C1039A14(v19, v20);
  (*(v16 + 8))(v19, v15);
  return v21;
}

double sub_1C103BE84@<D0>(uint64_t (*a1)(void)@<X1>, _OWORD *a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    *&v6 = v4;
    sub_1C0FD09FC(&v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_1C103BEF4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1C12660A0();

  v3 = [v1 initWithArray_];

  return v3;
}

double sub_1C103BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a7;
  v26 = a8;
  v24 = a1;
  v14 = sub_1C1266790();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(*(a6 - 8) + 16))(&v24 - v17, a3, a6, v16);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, a6);
  v27[0] = a4;
  v27[1] = a5;
  v27[2] = a6;
  v27[3] = v25;
  v27[4] = v26;
  v27[5] = a9;
  v27[6] = a10;
  v19 = type metadata accessor for PhotosDraggableForEach(0, v27);
  v20 = sub_1C1039A14(v18, v19);
  (*(v15 + 8))(v18, v14);
  if (v20)
  {
    v22 = sub_1C1039868(v19);
    v23 = v24;
    swift_getObjectType();
    sub_1C11FF798(v23, v20, v22);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C103C11C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat width@<D0>, CGFloat height@<D1>)
{
  v9 = v7;
  v56 = a1;
  v58 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v57 = sub_1C1262D10();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24_6();
  sub_1C1264250();
  OUTLINED_FUNCTION_0();
  v54 = v19;
  v55 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v53 = v21 - v20;
  OUTLINED_FUNCTION_1();
  v52 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C1039580(a4);
  if (v26)
  {
    v27 = v26;
    v51 = a2;
    if (sub_1C103D6CC(a2))
    {
      x = 0.0;
      if ((a3 & 1) == 0 || (sub_1C103D760(), (v29 & 0x100000000) != 0))
      {
        y = 0.0;
      }

      else
      {
        v30 = v29;
        v31 = sub_1C1264450();
        if (v31 == sub_1C1264450())
        {
          v32 = width;
        }

        else
        {
          v32 = height;
        }

        memset(&slice, 0, sizeof(slice));
        v33 = v32 * 0.3;
        memset(&remainder, 0, sizeof(remainder));
        v64.origin.x = 0.0;
        v64.origin.y = 0.0;
        v64.size.width = width;
        v64.size.height = height;
        CGRectDivide(v64, &slice, &remainder, v33, v30);
        x = slice.origin.x;
        y = slice.origin.y;
        width = slice.size.width;
        height = slice.size.height;
      }

      if ((sub_1C10397A4(a4) & 1) == 0)
      {
        sub_1C12657B0();
        v63.x = v37;
        v63.y = v38;
        v65.origin.x = x;
        v65.origin.y = y;
        v65.size.width = width;
        v65.size.height = height;
        if (CGRectContainsPoint(v65, v63))
        {
          sub_1C1039804(1, a4);
          v39 = MEMORY[0x1C68EF360](0.5, 0.7, 0.0);
          v56 = &v51;
          v40 = MEMORY[0x1EEE9AC00](v39);
          v41 = v51;
          *(&v51 - 2) = v27;
          *(&v51 - 1) = v41;
          v42 = v52;
          (*(v52 + 16))(&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a4, v40);
          v43 = (*(v42 + 80) + 72) & ~*(v42 + 80);
          v44 = swift_allocObject();
          v45 = *(a4 + 32);
          *(v44 + 16) = *(a4 + 16);
          *(v44 + 32) = v45;
          *(v44 + 48) = *(a4 + 48);
          *(v44 + 64) = *(a4 + 64);
          (*(v42 + 32))(v44 + v43, &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
          v46 = v53;
          sub_1C1264240();
          sub_1C1262E90();

          (*(v54 + 8))(v46, v55);
        }
      }
    }

    (*(v16 + 104))(v8, *MEMORY[0x1E697BF98], v57);
    sub_1C1262BA0();

    sub_1C1262BB0();
    OUTLINED_FUNCTION_29_2();
    return __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  else
  {
    v35 = sub_1C1262BB0();

    return __swift_storeEnumTagSinglePayload(v58, 1, 1, v35);
  }
}

double sub_1C103C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a8;
  v8 = type metadata accessor for PhotosDraggableForEach(0, v10);
  return sub_1C1039804(0, v8);
}

void sub_1C103C644(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v5 = sub_1C1262720();
  oslog = OUTLINED_FUNCTION_28_3(v5, qword_1EBE91520);
  v6 = sub_1C1266430();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = OUTLINED_FUNCTION_20_10();
    *v7 = 0;
    _os_log_impl(&dword_1C0F96000, oslog, v6, a4, v7, 2u);
    OUTLINED_FUNCTION_4_8();
  }
}

double sub_1C103C70C(uint64_t a1, uint64_t a2)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1EBE8FC40);
  }

  v3 = sub_1C1262720();
  v4 = OUTLINED_FUNCTION_28_3(v3, qword_1EBE91520);
  v5 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v5))
  {
    v6 = OUTLINED_FUNCTION_20_10();
    *v6 = 0;
    _os_log_impl(&dword_1C0F96000, v4, v5, "dropAnimationCompleted", v6, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  return sub_1C10395FC(0, a2);
}

double sub_1C103C7DC()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  KeyPath = swift_getKeyPath();
  sub_1C103E558(KeyPath);

  swift_beginAccess();

  return result;
}

double sub_1C103C8B0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  v6 = *(v3 + 88);
  sub_1C12661A0();
  OUTLINED_FUNCTION_20();
  v15 = *(v7 + 80);
  v16 = v6;
  v8 = *(v5 + 112);
  v17 = *(v5 + 96);
  v18 = v8;
  OUTLINED_FUNCTION_20();
  v19 = *(v9 + 128);
  KeyPath = swift_getKeyPath();
  v13 = v1;
  v14 = a1;
  sub_1C103E5F4(KeyPath, sub_1C103FBEC, &v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1C103C9BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

double sub_1C103CA24(void *a1)
{
  v1 = *a1;
  v10[7] = a1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  swift_getKeyPath();
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  type metadata accessor for PhotosDraggableForEach.DraggingModel(255, v10);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C103CB98@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  KeyPath = swift_getKeyPath();
  sub_1C103E558(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 168);
  swift_beginAccess();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  return (*(v6 + 16))(a1, v1 + v5);
}

void sub_1C103CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C1266790();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v9 - v7, a1, v6);
  sub_1C103CD60();
}

void sub_1C103CD60()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_22_6();
  v28 = v4;
  v27 = *(v3 + 96);
  v5 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  OUTLINED_FUNCTION_22_6();
  v12 = *(v11 + 168);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v13(v10, &v0[v12], v5);
  OUTLINED_FUNCTION_22_6();
  v15 = *(v14 + 120);
  v31 = *(v15 + 8);
  WitnessTable = swift_getWitnessTable();
  v30 = v2;
  LOBYTE(v3) = sub_1C0FA8038(v10, v2, v5, WitnessTable);
  v17 = OUTLINED_FUNCTION_34_0();
  v29 = v18;
  v19 = (v18)(v17);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_15_13();
    v21 = v27;
    v20 = v28;
    *(v22 - 64) = *(v28 + 80);
    *(v22 - 48) = v21;
    *(v22 - 40) = *(v20 + 104);
    v23 = *(v20 + 128);
    *(v22 - 24) = v15;
    *(v22 - 16) = v23;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v25 = v30;
    *(&v27 - 2) = v0;
    *(&v27 - 1) = v25;
    sub_1C103E5F4(v26, sub_1C103FBD0, (&v27 - 4), MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    v25 = v30;
    v13(v10, v30, v5);
    swift_beginAccess();
    (*(v7 + 40))(&v0[v12], v10, v5);
    swift_endAccess();
  }

  v29(v25, v5);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103D014(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  v5 = sub_1C1266790();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_1C103D0DC()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  KeyPath = swift_getKeyPath();
  sub_1C103E558(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 176));
}

void sub_1C103D17C()
{
  OUTLINED_FUNCTION_33_4();
  v2 = v1;
  v3 = *(v1 + 176);
  v14 = *(v0 + v3);
  v5 = v4 & 1;
  v13 = v4;
  v6 = sub_1C0FA8038(&v14, &v13, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_15_13();
    v7 = *(v2 + 96);
    *(v8 - 64) = *(v2 + 80);
    *(v8 - 48) = v7;
    *(v8 - 32) = *(v2 + 112);
    *(v8 - 16) = *(v2 + 128);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v0;
    v12 = v5;
    sub_1C103E5F4(v10, sub_1C103FBAC, v11, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    *(v0 + v3) = v5;
  }
}

void *sub_1C103D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3 + *(v7 + 168), 1, 1, *(v7 + 96));
  *(v3 + *(*v3 + 176)) = 0;
  sub_1C1261F60();
  v3[2] = a1;
  v3[4] = a2;
  v3[5] = a2;
  sub_1C12661A0();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  v8 = sub_1C1265F80();

  v4[3] = v8;
  return v4;
}

uint64_t sub_1C103D570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  v6 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  swift_getAtKeyPath();
  if (sub_1C1266280())
  {
    (*(v7 + 32))(a5, v9, v6);
    v10 = 0;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v6);
}

BOOL sub_1C103D6CC(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  sub_1C12661A0();
  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  return (sub_1C1266020() & 1) == 0;
}

void sub_1C103D760()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91578, &qword_1C12A9660);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91580, &qword_1C12A9668);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = (v15 - v14);
  sub_1C103E110(v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91570, &qword_1C12A9620);
  if (__swift_getEnumTagSinglePayload(v5, 1, v17) == 1)
  {
    sub_1C103FB1C(v5);
  }

  else
  {
    v24[2] = v1;
    v18 = *&v5[*(v17 + 48)];
    v19 = *(v6 + 48);
    v20 = *(v12 + 32);
    v20(v9, v5, v10);
    *&v9[v19] = v18;
    v20(v16, v9, v10);
    sub_1C1261EE0();
    v22 = v21;
    (*(v12 + 8))(v16, v10);
    if ((v22 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_5;
    }
  }

  v23 = 1;
LABEL_5:
  v25 = v23;
  OUTLINED_FUNCTION_22_0();
}

void sub_1C103D998()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v85 = v2;
  v4 = *v0;
  v5 = *v0;
  *&v90 = *v0 + 104;
  OUTLINED_FUNCTION_22_6();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_1();
  v72 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v70 - v10;
  OUTLINED_FUNCTION_22_6();
  v12 = *(v11 + 96);
  v13 = sub_1C1266790();
  v14 = OUTLINED_FUNCTION_15(v13);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v70 - v17;
  sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v83 = v19;
  v84 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v89 = v21 - v20;
  sub_1C103C7DC();
  sub_1C1266110();

  sub_1C103C7DC();
  v111 = v22;
  v104 = v0;
  v105 = v3;
  sub_1C12661A0();
  OUTLINED_FUNCTION_9_14();
  WitnessTable = swift_getWitnessTable();
  sub_1C1266330();

  v23 = *&v107[0];
  if (BYTE8(v107[0]))
  {
    v23 = 0;
  }

  v86 = v23;
  v87 = v12;
  *&v24 = *(v5 + 80);
  v74 = v7;
  *(&v24 + 1) = v7;
  *&v25 = v12;
  *(&v25 + 1) = *v90;
  v90 = v25;
  v91 = v24;
  v99 = v24;
  v100 = v25;
  v101 = v4[14];
  v26 = v101;
  v102 = v4[15];
  v27 = v102;
  v103 = v4[16];
  v28 = v103;
  KeyPath = swift_getKeyPath();
  sub_1C103E558(KeyPath);

  v30 = *(*v0 + 184);
  v111 = v0;
  v94 = v91;
  v95 = v90;
  v96 = v26;
  v97 = v27;
  v98 = v28;
  swift_getKeyPath();
  v107[0] = v91;
  v107[1] = v90;
  v81 = v26;
  v82 = v27;
  v108 = v26;
  v109 = v27;
  v31 = v85;
  v80 = v28;
  v110 = v28;
  type metadata accessor for PhotosDraggableForEach.DraggingModel(255, v107);
  OUTLINED_FUNCTION_4_15();
  v32 = swift_getWitnessTable();
  v79 = v30;
  sub_1C1261F50();

  OUTLINED_FUNCTION_36_3();
  v77 = sub_1C1266100();
  swift_endAccess();
  sub_1C103CA24(v0);
  sub_1C103C7DC();
  v111 = v33;
  v92 = v0;
  v93 = v31;
  sub_1C1266330();

  if (BYTE8(v107[0]))
  {
    v34 = 0;
  }

  else
  {
    v34 = *&v107[0];
  }

  sub_1C1261EC0();
  v78 = 0;
  v76 = v32;
  if (v35)
  {
    v36 = v87;
    OUTLINED_FUNCTION_15_1();
    (*(v37 + 16))(v75, v31, v36);
    OUTLINED_FUNCTION_29_2();
    v41 = v36;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    sub_1C103CD60();
    v111 = v77;
    v106 = v34;
    MEMORY[0x1EEE9AC00](v48);
    OUTLINED_FUNCTION_15_13();
    v49 = v90;
    *(v50 - 64) = v91;
    *(v50 - 48) = v49;
    v51 = v81;
    v52 = v82;
    *(v50 - 32) = v81;
    *(v50 - 24) = v52;
    v53 = v80;
    *(v50 - 16) = v80;
    v54 = swift_getKeyPath();
    sub_1C103E558(v54);

    *&v107[0] = v1;
    MEMORY[0x1EEE9AC00](v55);
    OUTLINED_FUNCTION_15_13();
    v56 = v90;
    *(v57 - 64) = v91;
    *(v57 - 48) = v56;
    *(v57 - 32) = v51;
    *(v57 - 24) = v52;
    *(v57 - 16) = v53;
    swift_getKeyPath();
    sub_1C1261F50();

    OUTLINED_FUNCTION_36_3();
    swift_getWitnessTable();
    v58 = WitnessTable;
    sub_1C12663B0();
    swift_endAccess();
    sub_1C103CA24(v1);
    *&v107[0] = v1[4];

    v59 = OUTLINED_FUNCTION_32_2();
    sub_1C1038F14(v59, v60, v61, v36, v62, v58, v63, v64);

    sub_1C103C7DC();
    *&v107[0] = v65;
    v66 = OUTLINED_FUNCTION_32_2();
    sub_1C1038F14(v66, v67, v68, v36, MEMORY[0x1E69E73E0], v58, MEMORY[0x1E69E7410], v69);

    sub_1C12661B0();

    sub_1C103D17C();
    (*(v83 + 8))(v89, v84);
    OUTLINED_FUNCTION_22_0();
    return;
  }

  v42 = v87;
  if (!__OFADD__(v34++, 1))
  {
    sub_1C103C7DC();
    v44 = v74;
    v45 = sub_1C1266170();

    if (v34 >= v45)
    {
      v39 = 1;
      v47 = v73;
    }

    else
    {
      sub_1C103C7DC();
      v46 = v71;
      sub_1C12661D0();

      v47 = v73;
      swift_getAtKeyPath();
      (*(v72 + 8))(v46, v44);
      v39 = 0;
    }

    v38 = v47;
    v40 = 1;
    v41 = v42;
    v36 = v42;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1C103E110@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24_6();
  sub_1C103C7DC();
  sub_1C1266110();

  sub_1C103C7DC();
  sub_1C12661A0();
  OUTLINED_FUNCTION_9_14();
  swift_getWitnessTable();
  sub_1C1266330();

  if (v16)
  {
    (*(v6 + 8))(v2, v4);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91570, &qword_1C12A9620);
    v9 = a2;
    v10 = 1;
    v11 = 1;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91570, &qword_1C12A9620);
    v13 = *(v12 + 48);
    (*(v6 + 32))(a2, v2, v4);
    *(a2 + v13) = v15;
    OUTLINED_FUNCTION_29_2();
    v8 = v12;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
}

uint64_t sub_1C103E300(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a2 + 96);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_6();

  swift_getAtKeyPath();
  sub_1C12661A0();
  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  v7 = sub_1C1266020();
  (*(v5 + 8))(v2, v3);

  return v7 & 1;
}

uint64_t sub_1C103E444(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*a2 + 96);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  swift_getAtKeyPath();
  v9 = sub_1C1265DE0();
  (*(v5 + 8))(v8, v3);
  return v9 & 1;
}

uint64_t sub_1C103E558(uint64_t a1)
{
  OUTLINED_FUNCTION_4_15();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C103E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_15();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

char *sub_1C103E6C8()
{

  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 168);
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 184);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1C103E7A8()
{
  sub_1C103E6C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C103E870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91598, &unk_1C12A9740);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1C1262610();
  __swift_allocate_value_buffer(v3, qword_1EDE7C080);
  __swift_project_value_buffer(v3, qword_1EDE7C080);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_1C1262600();
}

void static PhotosDraggableItem.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_23();
  v13[1] = v1;
  v2 = sub_1C1262610();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91540, &qword_1C12A9390);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  if (qword_1EDE7C078 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EDE7C080);
  (*(v4 + 16))(v0, v12, v2);
  sub_1C103EBB8();
  sub_1C103EC0C();
  sub_1C103EC60();
  sub_1C1262000();
  sub_1C1261950();
  sub_1C1261920();
  sub_1C103ECB4(&qword_1EDE82F60, MEMORY[0x1E6968010], MEMORY[0x1E6967FF0]);
  sub_1C103ECB4(&qword_1EDE82F68, MEMORY[0x1E6967F70], MEMORY[0x1E6967F50]);
  sub_1C1262010();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_1C103EBB8()
{
  result = qword_1EDE82680;
  if (!qword_1EDE82680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82680);
  }

  return result;
}

unint64_t sub_1C103EC0C()
{
  result = qword_1EDE82670;
  if (!qword_1EDE82670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82670);
  }

  return result;
}

unint64_t sub_1C103EC60()
{
  result = qword_1EDE82678;
  if (!qword_1EDE82678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82678);
  }

  return result;
}

uint64_t sub_1C103ECB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C103ED30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C103ED00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C103ED78@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_15_6();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C103EDA4(uint64_t a1)
{
  v2 = sub_1C103EF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C103EDE0(uint64_t a1)
{
  v2 = sub_1C103EF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosDraggableItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91548, &qword_1C12A9398);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_6();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C103EF1C();
  sub_1C1266F00();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1C103EF1C()
{
  result = qword_1EBE91550;
  if (!qword_1EBE91550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91550);
  }

  return result;
}

uint64_t sub_1C103F04C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v27 = 0;
    v38 = v2;
    v6 = *(a1 + 24);
    v5 = *(a1 + 32);
    v7 = sub_1C1266F10();
    if (v8 > 0x3F)
    {
      return v7;
    }

    v28 = 0;
    v39 = v7;
    v40 = MEMORY[0x1E6980D10];
    v24[0] = v5;
    v29 = 0;
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    sub_1C103F6C0(319, &qword_1EDE77500, MEMORY[0x1E697E0C8], MEMORY[0x1E69E6720]);
    if (v9 > 0x3F)
    {
      return v7;
    }

    v30 = 0;
    v42 = v7;
    sub_1C103F768(319, &qword_1EDE768F0, &qword_1EBE90BA0, qword_1C12A8220, MEMORY[0x1E69E6720]);
    if (v10 > 0x3F)
    {
      return v7;
    }

    v31 = 0;
    v43 = v7;
    v7 = sub_1C1007F88();
    if (v11 > 0x3F)
    {
      return v7;
    }

    else
    {
      v32 = 0;
      v44 = v7;
      v24[0] = v3;
      v24[1] = v6;
      v24[2] = v5;
      v23 = *(a1 + 56);
      v25 = *(a1 + 40);
      v26 = v23;
      type metadata accessor for PhotosDraggableForEach.DraggingModel(255, v24);
      sub_1C1266790();
      v12 = sub_1C1265450();
      v3 = v12;
      if (v13 <= 0x3F)
      {
        v33 = 0;
        v45 = v12;
        sub_1C1266290();
        sub_1C1266790();
        v14 = sub_1C1265450();
        v3 = v14;
        if (v15 <= 0x3F)
        {
          v34 = 0;
          v46 = v14;
          sub_1C103F6C0(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          v3 = v16;
          if (v17 <= 0x3F)
          {
            v35 = 0;
            v47 = v16;
            sub_1C103F710(319);
            v3 = v18;
            if (v19 <= 0x3F)
            {
              v36 = 0;
              v48 = v18;
              sub_1C103F768(319, &qword_1EDE77648, &qword_1EBE91558, qword_1C12A94B8, MEMORY[0x1E697DCC0]);
              v3 = v20;
              if (v21 <= 0x3F)
              {
                v37 = 0;
                v49 = v20;
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1C103F2F8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C103F484(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((((((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C103F6C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C103F710(uint64_t a1)
{
  if (!qword_1EDE77658)
  {
    type metadata accessor for PhotosActionManager();
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77658);
    }
  }
}

void sub_1C103F768(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C103F7CC(uint64_t a1)
{
  result = sub_1C1266790();
  if (v2 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDraggableItem(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C103F984()
{
  result = qword_1EBE91560;
  if (!qword_1EBE91560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91560);
  }

  return result;
}

unint64_t sub_1C103F9DC()
{
  result = qword_1EBE91568;
  if (!qword_1EBE91568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91568);
  }

  return result;
}

uint64_t sub_1C103FA9C()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE91520);
  __swift_project_value_buffer(v0, qword_1EBE91520);
  return sub_1C1262700();
}

uint64_t sub_1C103FB1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91578, &qword_1C12A9660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v4 = *(v1 + 48);
  v9[1] = v3;
  v9[2] = v4;
  v10 = v2;
  type metadata accessor for PhotosDraggableForEach(0, v9);
  OUTLINED_FUNCTION_10_4();
  v6 = v1 + ((*(v5 + 80) + 72) & ~*(v5 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v7 + 8))(v6);

  __swift_destroy_boxed_opaque_existential_0Tm((v6 + *(v0 + 84)));

  if (*(v6 + *(v0 + 92)))
  {
  }

  j__swift_release();
  return swift_deallocObject();
}

double sub_1C103FDCC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v12[0] = v0[2];
  v1 = v12[0];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v5;
  v12[5] = v6;
  v12[6] = v7;
  v8 = type metadata accessor for PhotosDraggableForEach(0, v12);
  OUTLINED_FUNCTION_15(v8);
  v10 = v0 + ((*(v9 + 80) + 72) & ~*(v9 + 80));

  return sub_1C103C5F4(v10, v1, v2, v3, v4, v5, v6, v7);
}

double sub_1C103FE90(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = *(type metadata accessor for PhotosDraggableForEach(0, v13) - 8);
  v11 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  return sub_1C103BF6C(a1, v1 + v11, v1 + ((v11 + *(v10 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1C103FFAC()
{
  result = qword_1EBE91588;
  if (!qword_1EBE91588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE91588);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return swift_beginAccess();
}

double sub_1C104018C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1C0FFE094(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1C0FA139C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C10401F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1C0FFE1CC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1C1040248(uint64_t a1, double a2, double a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_1C0FFE230(a2, a3);
  if (v5)
  {
    return *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t PhotosItemListManagerFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915A0, &qword_1C12A9750);
  *(v0 + 16) = sub_1C1265CE0();
  return v0;
}

uint64_t PhotosItemListManagerFactory.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C1040394()
{
  type metadata accessor for PhotosItemListManagerFactory();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915A0, &qword_1C12A9750);
  result = sub_1C1265CE0();
  *(v0 + 16) = result;
  qword_1EDE80300 = v0;
  return result;
}

double sub_1C1040404@<D0>(void *a1@<X8>)
{
  if (qword_1EDE802F8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE80300;

  return result;
}

uint64_t sub_1C1040470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1040720();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.itemListManagerFactory.getter()
{
  sub_1C104066C();
  sub_1C12637F0();
  return v1;
}

void (*EnvironmentValues.itemListManagerFactory.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C104066C();
  sub_1C12637F0();
  return sub_1C10405D8;
}

void sub_1C10405D8(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C1263800();
  }

  else
  {
    sub_1C1263800();
  }
}

unint64_t sub_1C104066C()
{
  result = qword_1EDE802F0;
  if (!qword_1EDE802F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE802F0);
  }

  return result;
}

unint64_t sub_1C1040720()
{
  result = qword_1EDE80B50[0];
  if (!qword_1EDE80B50[0])
  {
    type metadata accessor for PhotosItemListManagerFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80B50);
  }

  return result;
}

uint64_t static String.photosSwiftUICoreLocalized(_:)(uint64_t a1)
{
  v2 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C1265E50();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  if (qword_1EDE7E628 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EDE7E628);
  }

  v7 = qword_1EDE7E630;
  sub_1C1261E40();
  return sub_1C1265EC0();
}

uint64_t sub_1C10408D0@<X0>(uint64_t *a3@<X8>)
{

  result = sub_1C12652F0();
  *a3 = result;
  return result;
}

uint64_t sub_1C1040918@<X0>(uint64_t a5@<X8>)
{
  if (qword_1EDE7E628 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EDE7E628);
  }

  v6 = qword_1EDE7E630;

  result = sub_1C12648D0();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpMacSyncedToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1C1040AD8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915B0, &qword_1C12A98A8) + 36)) = a1 & 1;

  return sub_1C1040B30(a1 & 1, a2);
}

double sub_1C1040B30@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  KeyPath = swift_getKeyPath();
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  v11 = swift_getKeyPath();
  v19[15] = 0;
  sub_1C1265410();
  v12 = v19[16];
  v13 = v20;
  sub_1C10388D4(v9, v6);
  v14 = a1 & 1;
  *a2 = a1 & 1;
  *(a2 + 8) = 0x4044000000000000;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915B8, &unk_1C12A9900);
  sub_1C10388D4(v6, a2 + v15[16]);
  v16 = a2 + v15[20];
  *v16 = v14;
  *(v16 + 8) = 0x4044000000000000;
  *(v16 + 16) = v11;
  *(v16 + 24) = 0;
  v17 = a2 + v15[24];
  *v17 = v12;
  *(v17 + 8) = v13;

  sub_1C1040D5C(v9);

  sub_1C1040D5C(v6);

  return result;
}

uint64_t sub_1C1040D1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Model(0);
  v2 = swift_allocObject();
  result = sub_1C1038170(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1C1040D5C(uint64_t a1)
{
  v2 = type metadata accessor for OneUpAnimatedInfoButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1040DB8()
{
  result = qword_1EBE915C0;
  if (!qword_1EBE915C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915B0, &qword_1C12A98A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE915C0);
  }

  return result;
}

uint64_t View.photosInlinePlaybackScrollViewTracker<A>(itemIDType:colsPerPage:trackItemVisibility:onScrollPhaseDidChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a7;
  v49 = a1;
  v57 = a4;
  v58 = a5;
  v52 = a3;
  v50 = a2;
  v59 = a9;
  v47 = a10;
  v13 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(0, a7, a10, a4);
  OUTLINED_FUNCTION_0();
  v56 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90, &qword_1C12A9910);
  v18 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v51 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v53 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v54 = v28;
  v55 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v46 - v31;
  View.photosInlinePlayback(colsPerPage:)(a2, a6, a8);
  sub_1C10412C8(v52, v48, v47, v17);
  OUTLINED_FUNCTION_24();
  v35 = sub_1C0FDB6D4(v33, &qword_1EBE90B90, &qword_1C12A9910, v34);
  v64 = a8;
  v65 = v35;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C68EE920](v17, v18, v13, WitnessTable);
  (*(v56 + 8))(v17, v13);
  (*(v51 + 8))(v22, v18);
  OUTLINED_FUNCTION_1_14();
  v37 = swift_getWitnessTable();
  v62 = WitnessTable;
  v63 = v37;
  v38 = swift_getWitnessTable();
  View.photosInlinePlaybackScrollViewTracker(onScrollPhaseDidChange:)(v57, v58, v23, v38);
  (*(v53 + 8))(v27, v23);
  OUTLINED_FUNCTION_0_19();
  v41 = sub_1C1045180(v39, v40, &unk_1C12A9AE4);
  v60 = v38;
  v61 = v41;
  v42 = v54;
  v43 = swift_getWitnessTable();
  v44 = View.photosInlinePlayback(colsPerPage:)(v50, v42, v43);
  return (*(v55 + 8))(v32, v42, v44);
}

double View.photosInlinePlayback(colsPerPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  sub_1C1041560();
  sub_1C1264D40();

  return result;
}

uint64_t sub_1C10412C8@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(255, a2, a3, a3);
  v9 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  *(a4 + 8) = swift_getKeyPath();
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = sub_1C1012790(0) & 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = sub_1C1042100(0);
  *(a4 + 64) = v13;
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(0, a2, a3, v14);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v8);
  result = sub_1C1042138(v11, a2, a3, v15);
  *a4 = a1;
  return result;
}

uint64_t View.photosInlinePlaybackScrollViewTracker(onScrollPhaseDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_14();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = swift_getKeyPath();
  *(v4 + 24) = 0;
  sub_1C0FCF1B4(a1, a2);
  sub_1C1263D00();
  sub_1C12628D0();
  type metadata accessor for PhotosScrollViewTracker(0);
  sub_1C12628D0();
  MEMORY[0x1C68EE920](v4, a3, v9, a4);
  return sub_1C1044B6C(v4);
}

uint64_t *sub_1C1041534(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result <= a2)
  {
    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t *sub_1C1041548(uint64_t *result)
{
  v2 = *(v1 + 16);
  if (*result > v2)
  {
    v2 = *result;
  }

  *result = v2;
  return result;
}

unint64_t sub_1C1041560()
{
  result = qword_1EDE7F0B0;
  if (!qword_1EDE7F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F0B0);
  }

  return result;
}

void sub_1C10415B8()
{
  if (__OFADD__(qword_1EDE7D700, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EDE7D700;
    sub_1C1266940();

    v0 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v0);

    sub_1C1263F30();
  }
}

uint64_t sub_1C1041698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C1263D00();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v36 - v9;
  v10 = sub_1C12637E0();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915D0, &qword_1C12A9978);
  v40 = v13;
  sub_1C12628E0();
  v14 = v45;
  v15 = *v3;
  v16 = *(v3 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915F8, &qword_1C12A9BA0);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = a2;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91600, &qword_1C12A9BA8) + 36));
  *v19 = v14;
  v19[1] = v15;
  v19[2] = v16;
  v20 = *(v3 + 16);
  LOBYTE(a2) = *(v3 + 24);
  sub_1C0FCF1B4(v15, v16);

  if ((a2 & 1) == 0)
  {
    sub_1C1266420();
    v21 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v37 + 8))(v12, v38);
    v20 = v45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915C8, &qword_1C12A9970);
  v22 = v44;
  sub_1C12628E0();
  sub_1C12628E0();
  v23 = v45;
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91608, &qword_1C12A9BB0) + 36));
  v25 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  v26 = &v24[v25[7]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  *v24 = v20;
  v27 = v20;
  v28 = v42;
  v29 = v43;
  v30 = *(v42 + 16);
  v30(&v24[v25[5]], v22, v43);
  *&v24[v25[6]] = v23;
  v31 = v41;
  v30(v41, v22, v29);
  v32 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v33 = (v39 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  (*(v28 + 32))(v34 + v32, v31, v29);
  *(v34 + v33) = v23;
  type metadata accessor for PhotosInlinePlaybackContainerModel(0);

  sub_1C12628D0();
  return (*(v28 + 8))(v44, v29);
}

uint64_t sub_1C1041AD8()
{
  sub_1C10457AC();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1041B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v31 = a2;
  v4 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  v5 = v4 - 8;
  v29 = *(v4 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C12637E0();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91618, &qword_1C12A9D18);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91620, &qword_1C12A9D20);
  sub_1C0FDB6D4(&qword_1EDE7BAF8, &qword_1EBE91620, &qword_1C12A9D20, MEMORY[0x1E697FDF8]);
  sub_1C1264BA0();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91610, &qword_1C12A9C50);
  sub_1C12628E0();
  v14 = v32;
  v15 = &v12[*(v10 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  v16 = v2 + *(v5 + 36);
  v17 = *v16;
  v18 = *(v16 + 8);

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v19 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v20 = j__swift_release_0();
    (*(v26 + 8))(v9, v27, v20);
    v17 = v32;
  }

  v32 = v17;
  v21 = v30;
  sub_1C1045C3C(v3, v30);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_1C1045CA0(v21, v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915D8, &qword_1C12BE650);
  sub_1C1045D78();
  sub_1C10450CC();
  sub_1C1265000();

  return sub_1C0FAF690(v12);
}

double sub_1C1041EE4(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  *&result = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (*a1)
  {
    if (*a1 == v11)
    {
      return result;
    }
  }

  else if (!v11)
  {
    return result;
  }

  v12 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91610, &qword_1C12A9C50);
  sub_1C12628E0();
  v13 = a3 + *(v12 + 28);
  v14 = *v13;
  LOBYTE(v12) = *(v13 + 8);

  if ((v12 & 1) == 0)
  {
    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v16 = j__swift_release_0();
    (*(v7 + 8))(v10, v6, v16);
    v14 = v17[1];
  }

  sub_1C10CB9E4(v14);

  return result;
}

uint64_t sub_1C10420A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C12407A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C1042138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(255, a2, a3, a4);
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  (*(v6 + 16))(&v10 - v8, a1, v5, v7);
  sub_1C1265410();
  return (*(v6 + 8))(a1, v5);
}

__n128 sub_1C1042238@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_1C1261E20();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v14 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(0, a3, a4, v13);
  v15 = a5 + *(v14 + 36);
  result = *a2;
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v17;
  *(v15 + 32) = *(a2 + 32);
  *(a5 + *(v14 + 40)) = a6;
  return result;
}

uint64_t sub_1C10422F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a1;
  v165 = a3;
  v164 = sub_1C12637E0();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = *(a2 - 8);
  v180 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v8 = sub_1C1263DE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915E0, &qword_1C12A9B88);
  v131 = v8;
  v9 = sub_1C1263190();
  v134 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v175 = v128 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915E8, &qword_1C12A9B90);
  v133 = v9;
  v11 = sub_1C1263190();
  v137 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v166 = v128 - v12;
  WitnessTable = swift_getWitnessTable();
  v128[1] = WitnessTable;
  v14 = MEMORY[0x1E6980620];
  v15 = sub_1C0FDB6D4(&qword_1EDE7BA10, &qword_1EBE915E0, &qword_1C12A9B88, MEMORY[0x1E6980620]);
  v195 = WitnessTable;
  v196 = v15;
  v16 = swift_getWitnessTable();
  v132 = v16;
  v17 = sub_1C0FDB6D4(&qword_1EDE7BA00, &qword_1EBE915E8, &qword_1C12A9B90, v14);
  v193 = v16;
  v194 = v17;
  v18 = swift_getWitnessTable();
  v189 = v11;
  v190 = MEMORY[0x1E69E6370];
  v129 = v11;
  v19 = MEMORY[0x1E69E6370];
  v191 = v18;
  v192 = MEMORY[0x1E69E6388];
  v20 = v18;
  v130 = v18;
  v21 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v167 = v128 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8, &qword_1C12BE650);
  v189 = v11;
  v190 = v19;
  v191 = v20;
  v192 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1C10450CC();
  v189 = OpaqueTypeMetadata2;
  v190 = v24;
  v191 = OpaqueTypeConformance2;
  v192 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v141 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v140 = v128 - v28;
  v29 = *(a2 + 16);
  v144 = OpaqueTypeMetadata2;
  v189 = OpaqueTypeMetadata2;
  v190 = v24;
  v139 = v24;
  v136 = OpaqueTypeConformance2;
  v191 = OpaqueTypeConformance2;
  v192 = v26;
  v135 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = *(a2 + 24);
  v32 = a2;
  v189 = v27;
  v190 = v29;
  v191 = v30;
  v192 = v31;
  v33 = v31;
  v34 = swift_getOpaqueTypeMetadata2();
  v145 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v168 = v128 - v35;
  v142 = v27;
  v189 = v27;
  v190 = v29;
  v138 = v30;
  v191 = v30;
  v192 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v149 = v34;
  v189 = v34;
  v190 = v29;
  v146 = v36;
  v191 = v36;
  v192 = v33;
  v178 = v33;
  v37 = swift_getOpaqueTypeMetadata2();
  v147 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v169 = v128 - v38;
  v148 = v39;
  v40 = sub_1C1263190();
  v151 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v150 = v128 - v41;
  v152 = v42;
  v43 = sub_1C1263190();
  v159 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v170 = v128 - v44;
  v179 = v29;
  v46 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.GeometryInfo(255, v29, v33, v45);
  v47 = swift_getWitnessTable();
  v154 = v46;
  v153 = v47;
  v48 = sub_1C1263FF0();
  v161 = v43;
  v155 = v48;
  v160 = sub_1C1263190();
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v156 = v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v157 = v128 - v52;
  v53 = v181;
  v54 = v181 + 16;
  v177 = *(v181 + 16);
  v55 = v182;
  v173 = v32;
  v177(v7, v182, v32, v51);
  v56 = *(v53 + 80);
  v57 = (v56 + 32) & ~v56;
  v58 = swift_allocObject();
  v59 = v178;
  *(v58 + 16) = v179;
  *(v58 + 24) = v59;
  v60 = *(v53 + 32);
  v60(v58 + v57, v7, v32);
  sub_1C104524C();
  sub_1C1264C90();

  v61 = v55;
  v62 = v173;
  (v177)(v7, v61, v173);
  v63 = swift_allocObject();
  v64 = v178;
  *(v63 + 16) = v179;
  *(v63 + 24) = v64;
  v60(v63 + v57, v7, v62);
  sub_1C1041560();
  v65 = v133;
  v66 = v175;
  sub_1C1264C90();

  (*(v134 + 8))(v66, v65);
  v67 = v182;
  LOBYTE(v189) = *v182;
  v176 = v54;
  (v177)(v7, v182, v62);
  v175 = v56;
  v68 = swift_allocObject();
  v69 = v178;
  *(v68 + 16) = v179;
  *(v68 + 24) = v69;
  v172 = v57;
  v171 = v7;
  v181 = v53 + 32;
  v174 = v60;
  v60(v68 + v57, v7, v62);
  v70 = v129;
  v71 = v166;
  sub_1C1265000();

  (*(v137 + 8))(v71, v70);
  v72 = *(v67 + 3);
  LOBYTE(v71) = v67[32];

  if ((v71 & 1) == 0)
  {
    sub_1C1266420();
    v73 = sub_1C1264410();
    sub_1C1262620();

    v74 = v162;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v75 = j__swift_release_0();
    (*(v163 + 8))(v74, v164, v75);
    v72 = v189;
  }

  v189 = v72;
  v76 = v171;
  v77 = v173;
  (v177)(v171, v182, v173);
  v78 = v172;
  v79 = swift_allocObject();
  v80 = v179;
  v81 = v178;
  *(v79 + 16) = v179;
  *(v79 + 24) = v81;
  v174(v79 + v78, v76, v77);
  v82 = v140;
  v83 = v144;
  v84 = v167;
  sub_1C1265000();

  (*(v143 + 8))(v84, v83);
  v85 = v182;
  (v177)(v76, v182, v77);
  v86 = swift_allocObject();
  *(v86 + 16) = v80;
  *(v86 + 24) = v81;
  v174(v86 + v78, v76, v77);
  v87 = v142;
  sub_1C1264E40();

  (*(v141 + 8))(v82, v87);
  LOBYTE(v80) = v85[16];

  if ((v80 & 1) == 0)
  {
    sub_1C1266420();
    v88 = sub_1C1264410();
    sub_1C1262620();

    v89 = v162;
    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v163 + 8))(v89, v164);
  }

  sub_1C1165B00(&v189);

  v90 = v171;
  v91 = v173;
  v92 = v177;
  (v177)(v171, v182, v173);
  v93 = v92;
  v94 = v172;
  v95 = swift_allocObject();
  v96 = v179;
  v97 = v178;
  *(v95 + 16) = v179;
  *(v95 + 24) = v97;
  v174(v95 + v94, v90, v91);
  v98 = v149;
  v99 = v146;
  v100 = v168;
  sub_1C1264E40();

  (*(v145 + 8))(v100, v98);
  v93(v90, v182, v91);
  v101 = swift_allocObject();
  *(v101 + 16) = v96;
  *(v101 + 24) = v97;
  v174(v101 + v94, v90, v91);
  v189 = v98;
  v190 = v96;
  v191 = v99;
  v192 = v97;
  v102 = swift_getOpaqueTypeConformance2();
  v103 = v150;
  v104 = v148;
  v105 = v169;
  sub_1C1264A60();

  (*(v147 + 8))(v105, v104);
  (v177)(v90, v182, v91);
  v106 = swift_allocObject();
  v107 = v179;
  v108 = v178;
  *(v106 + 16) = v179;
  *(v106 + 24) = v108;
  v109 = v106 + v94;
  v110 = v91;
  v174(v109, v90, v91);
  v187 = v102;
  v188 = MEMORY[0x1E69805D0];
  v169 = MEMORY[0x1E697E858];
  v111 = v152;
  v168 = swift_getWitnessTable();
  sub_1C1264FF0();

  (*(v151 + 8))(v103, v111);
  v112 = v90;
  v113 = v177;
  (v177)(v90, v182, v110);
  v114 = v172;
  v115 = swift_allocObject();
  v116 = v178;
  *(v115 + 16) = v107;
  *(v115 + 24) = v116;
  v117 = v174;
  v174(v115 + v114, v112, v110);
  v113(v112, v182, v110);
  v118 = swift_allocObject();
  *(v118 + 16) = v179;
  *(v118 + 24) = v116;
  v117(v118 + v114, v112, v110);
  v185 = v168;
  v186 = MEMORY[0x1E69805D0];
  v119 = v161;
  v120 = swift_getWitnessTable();
  v121 = v156;
  v122 = v170;
  sub_1C1264C40();

  (*(v159 + 8))(v122, v119);
  v123 = swift_getWitnessTable();
  v183 = v120;
  v184 = v123;
  v124 = v160;
  swift_getWitnessTable();
  v125 = v157;
  sub_1C0FDBA4C();
  v126 = *(v158 + 8);
  v126(v121, v124);
  sub_1C0FDBA4C();
  return (v126)(v125, v124);
}

double sub_1C1043860(char *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

double sub_1C10438C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915F0, &qword_1C12A9B98);
  sub_1C1265420();
  if (v9 != v6)
  {
    sub_1C1265430();
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(0, a3, a4, v8);
    return sub_1C1043974();
  }

  return result;
}

double sub_1C1043974()
{
  v1 = v0;
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 3);
  v7 = v1[32];

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v10 = j__swift_release_0();
    (*(v3 + 8))(v5, v2, v10);
    v6 = v12;
  }

  if (v6)
  {
    sub_1C10CC9E4(*v1);
    v12 = *(v1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915F0, &qword_1C12A9B98);
    sub_1C1265420();
    sub_1C10CC8DC(v11[1]);
  }

  return result;
}

double sub_1C1043B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v8 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_14();
  if (*a2 == 1)
  {
    v13 = *(a2 + 24);
    v14 = *(a2 + 32);

    if ((v14 & 1) == 0)
    {
      sub_1C1266420();
      v15 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      v16 = j__swift_release_0();
      (*(v10 + 8))(v5, v8, v16);
      v13 = v18;
    }

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078, &qword_1C12A26B0);
      v17 = sub_1C1266B00();
      sub_1C10CCBB4(v17, v6);
    }
  }

  return result;
}

double sub_1C1043CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1261E20();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(255, a2, a3, v9);
  v10 = sub_1C1266790();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v26 - v15;
  v16 = sub_1C12637E0();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);

  if ((v20 & 1) == 0)
  {
    sub_1C1266420();
    v27 = v8;
    v22 = sub_1C1264410();
    v8 = v27;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v23 = j__swift_release_0();
    (*(v28 + 8))(v18, v29, v23);
    v19 = *&v36[0];
  }

  if (v19)
  {
    (*(v30 + 16))(v8, v19 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_id, v31);
    v36[0] = *(v19 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame);
    v36[1] = *(v19 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 16);
    v37 = *(v19 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32);
    v24 = v33;
    sub_1C1042238(v8, v36, a2, a3, v33, *(v19 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage));
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v32);
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(0, a2, a3, v25);
    (*(v11 + 16))(v13, v24, v10);
    sub_1C1265450();
    sub_1C1265430();
    (*(v11 + 8))(v24, v10);
    memset(v34, 0, sizeof(v34));
    v35 = 1;
    sub_1C10CC00C(v34);
    sub_1C10CC158(0.0);
  }

  return result;
}

double sub_1C10440B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v30 = a2;
  v6 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(255, a2, a3, a4);
  v7 = sub_1C1266790();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v26 - v9;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1C12637E0();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v27 = v4;
    v21 = sub_1C1264410();
    v4 = v27;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v22 = j__swift_release_0();
    (*(v28 + 8))(v16, v29, v22);
    v17 = *&v32[0];
  }

  if (v17)
  {
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(0, v30, v4, v19);
    sub_1C1265450();
    v23 = v31;
    sub_1C1265420();
    if (__swift_getEnumTagSinglePayload(v23, 1, v6) == 1)
    {

      (*(v8 + 8))(v23, v7);
    }

    else
    {
      (*(v10 + 32))(v13, v23, v6);
      if (_s17PhotosSwiftUICore0A20SearchSuggestionViewV7SectionV6ActionV2eeoiySbAG_AGtFZ_0())
      {
        v24 = &v13[*(v6 + 36)];
        v25 = *(v24 + 1);
        v32[0] = *v24;
        v32[1] = v25;
        v33 = v24[32];
        sub_1C10CC00C(v32);
        sub_1C10CC158(*&v13[*(v6 + 40)]);

        (*(v10 + 8))(v13, v6);
      }

      else
      {
        (*(v10 + 8))(v13, v6);
      }
    }
  }

  return result;
}

void sub_1C104445C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1C12630E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  LOBYTE(v19) = *(a1 + 40);
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  if (v24 == 1)
  {
    sub_1C1262D40();
    if (qword_1EDE80380 != -1)
    {
      swift_once();
    }

    v9 = sub_1C1263D00();
    __swift_project_value_buffer(v9, qword_1EDE9B6A8);
    MEMORY[0x1C68ED630]();
    sub_1C1262D30();
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    (*(v5 + 8))(v7, v4);
    sub_1C12665F0();
    v15 = v14;
    sub_1C12665F0();
    LOBYTE(v24) = 0;
    v23 = 0;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = 0;
    *(a2 + 33) = v19;
    *(a2 + 36) = *(&v19 + 3);
    v17 = v15 / v16;
  }

  else
  {
    LOBYTE(v19) = 1;
    LOBYTE(v24) = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    v17 = 0.0;
  }

  *(a2 + 40) = v17;
}

void sub_1C1044660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v28 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(255, a3, a4, a4);
  v8 = sub_1C1266790();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v26 - v12;
  v13 = sub_1C12637E0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v17;
  v33 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);

  if ((v20 & 1) == 0)
  {
    sub_1C1266420();
    v21 = sub_1C1264410();
    v27 = v5;
    v22 = v21;
    sub_1C1262620();

    v5 = v27;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v23 = j__swift_release_0();
    (*(v14 + 8))(v16, v13, v23);
    v19 = v31;
  }

  if (v19)
  {
    v24 = v29;
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v28);
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(0, v5, a4, v25);
    (*(v9 + 16))(v30, v24, v8);
    sub_1C1265450();
    sub_1C1265430();
    (*(v9 + 8))(v24, v8);
    sub_1C10CC00C(v32);
    sub_1C10CC158(v18);
  }
}

BOOL sub_1C104495C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      result = CGRectEqualToRect(*a1, *a2);
      if (!result)
      {
        return result;
      }

      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 40) == *(a2 + 40);
}

BOOL sub_1C10449C8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1C104495C(v7, v8);
}

uint64_t sub_1C1044A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10450CC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

char *sub_1C1044A80(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void *sub_1C1044AD4(uint64_t *a1, void *(*a2)(uint64_t *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v6 <= v3)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1044B2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosScrollViewTracker(0);
  swift_allocObject();
  result = PhotosScrollViewTracker.init()();
  *a1 = result;
  return result;
}

uint64_t sub_1C1044B6C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1044C00(uint64_t a1)
{
  sub_1C103F768(319, &qword_1EDE768F0, &qword_1EBE90BA0, qword_1C12A8220, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C10459F4(319, &qword_1EDE77628, type metadata accessor for PhotosInlinePlaybackCoordinator, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1C10459F4(319, &qword_1EDE77680, MEMORY[0x1E697FA40], MEMORY[0x1E697DA80]);
      if (v3 <= 0x3F)
      {
        sub_1C10459F4(319, &qword_1EDE776C0, type metadata accessor for PhotosScrollViewTracker, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1044D70(uint64_t a1)
{
  sub_1C10459F4(319, &qword_1EDE77628, type metadata accessor for PhotosInlinePlaybackCoordinator, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1C103F768(319, &qword_1EDE77610, &qword_1EBE915D8, &qword_1C12BE650, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1C1044F24(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370]);
      if (v4 <= 0x3F)
      {
        sub_1C1044F24(319, &qword_1EDE76C88, MEMORY[0x1E69E6530]);
        if (v6 <= 0x3F)
        {
          type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(255, *(a1 + 16), *(a1 + 24), v5);
          sub_1C1266790();
          sub_1C1265450();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C1044F24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C1265450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1044F78(uint64_t a1)
{
  sub_1C1261E20();
  if (v1 <= 0x3F)
  {
    sub_1C10459F4(319, &qword_1EDE769A0, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C10450CC()
{
  result = qword_1EDE7F7A8[0];
  if (!qword_1EDE7F7A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8, &qword_1C12BE650);
    sub_1C1045180(&qword_1EDE7FD60, type metadata accessor for PhotosInlinePlaybackContainerModel, &unk_1C12B3ADC);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7F7A8);
  }

  return result;
}

uint64_t sub_1C1045180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1C10451E4()
{
  v0 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_8_14(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_5_16();

  return sub_1C1043860(v4, v5);
}

unint64_t sub_1C104524C()
{
  result = qword_1EDE7F518;
  if (!qword_1EDE7F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F518);
  }

  return result;
}

double sub_1C10452A0()
{
  v0 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_8_14(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_5_16();

  return sub_1C10438C0(v4, v5, v6, v7);
}

double sub_1C1045308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_16(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_11_12();

  return sub_1C1043B0C(v6, v7, v8, v4, v5);
}

uint64_t sub_1C1045438(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  OUTLINED_FUNCTION_8_14(0, v5, v6, a4);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void sub_1C10454C8(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  OUTLINED_FUNCTION_4_16(a2, a3, a4, a5);
  v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_1C104445C(v8, a1);
}

uint64_t objectdestroy_25Tm()
{
  v2 = OUTLINED_FUNCTION_7_14();
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(v2, v3, v4, v5);
  OUTLINED_FUNCTION_17_10();
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  j__swift_release_0();

  v8 = v7 + *(v0 + 60);
  v9 = OUTLINED_FUNCTION_7_14();
  v13 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState(v9, v10, v11, v12);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v13))
  {
    sub_1C1261E20();
    OUTLINED_FUNCTION_4_2();
    (*(v14 + 8))(v8);
  }

  sub_1C1266790();
  sub_1C1265450();

  return swift_deallocObject();
}

void sub_1C104568C()
{
  v0 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_8_14(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_5_16();

  sub_1C1044660(v4, v5, v6, v7);
}

uint64_t sub_1C1045714@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1C1263D00() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  result = sub_1C1164F04(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

unint64_t sub_1C10457AC()
{
  result = qword_1EDE801F0[0];
  if (!qword_1EDE801F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE801F0);
  }

  return result;
}

uint64_t sub_1C1045810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C104584C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C104586C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_1C10458CC(uint64_t a1)
{
  type metadata accessor for PhotosInlinePlaybackCoordinator(319);
  if (v1 <= 0x3F)
  {
    sub_1C1263D00();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewTracker(319);
      if (v3 <= 0x3F)
      {
        sub_1C103F768(319, &qword_1EDE77610, &qword_1EBE915D8, &qword_1C12BE650, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C10459F4(319, &qword_1EDE77690, type metadata accessor for PhotosInlinePlaybackContainerModel, MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C10459F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C1045A58()
{
  result = qword_1EDE7BDD0;
  if (!qword_1EDE7BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91608, &qword_1C12A9BB0);
    sub_1C1045B14();
    sub_1C1045180(&unk_1EDE7F210, type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker, &unk_1C12A9C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDD0);
  }

  return result;
}

unint64_t sub_1C1045B14()
{
  result = qword_1EDE7BEE8;
  if (!qword_1EDE7BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91600, &qword_1C12A9BA8);
    sub_1C0FDB6D4(&qword_1EDE7BAF0, &qword_1EBE915F8, &qword_1C12A9BA0, MEMORY[0x1E697FDF8]);
    sub_1C1045BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEE8);
  }

  return result;
}

unint64_t sub_1C1045BCC()
{
  result = qword_1EDE7F680[0];
  if (!qword_1EDE7F680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7F680);
  }

  return result;
}

uint64_t sub_1C1045C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1045CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C1045D04()
{
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  v0 = OUTLINED_FUNCTION_11_12();

  return sub_1C1041EE4(v0, v1, v2);
}

unint64_t sub_1C1045D78()
{
  result = qword_1EDE7BE68;
  if (!qword_1EDE7BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91618, &qword_1C12A9D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91620, &qword_1C12A9D20);
    sub_1C0FDB6D4(&qword_1EDE7BAF8, &qword_1EBE91620, &qword_1C12A9D20, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7B990, &qword_1EBE91638, &qword_1C12A9D38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE68);
  }

  return result;
}

uint64_t sub_1C1045F30()
{
  sub_1C1266E90();
  sub_1C12666C0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1045F8C(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C12666C0();
  return sub_1C1266EE0();
}

uint64_t PhotosSearchInitialSuggestionsView.init(suggestions:isExpanded:style:selectionHandler:expandingAnimation:onAppearHandler:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = v11;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  return result;
}

uint64_t PhotosSearchInitialSuggestionsView.body.getter@<X0>(const void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91640, &qword_1C12A9D60);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v80 - v4);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91648, &qword_1C12A9D68);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v7);
  v8 = sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v97 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_1(&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C1264160();
  v13 = OUTLINED_FUNCTION_0_20(v12, &__dst[6]);
  v93 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91650, &qword_1C12A9D70);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91658, &qword_1C12A9D78);
  OUTLINED_FUNCTION_0_20(v23, v110);
  v85 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91660, &qword_1C12A9D80);
  OUTLINED_FUNCTION_0_20(v28, &v111);
  v87 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91668, &qword_1C12A9D88);
  OUTLINED_FUNCTION_0_20(v32, &v112);
  v90 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91670, &qword_1C12A9D90);
  OUTLINED_FUNCTION_0_20(v36, &v113);
  v91 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91678, &qword_1C12A9D98);
  OUTLINED_FUNCTION_0_20(v40, &v114);
  v94 = v41;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v43);
  memcpy(__dst, v98, sizeof(__dst));
  if (LOBYTE(__dst[3]) > 1u)
  {
    if (__dst[1])
    {
      v106 = sub_1C1263AB0();
      v107 = 0x4020000000000000;
      v108 = 0;
      sub_1C10228C4();
    }

    else
    {
      v106 = sub_1C1265960();
      v107 = v72;
      sub_1C1046AD4();
    }

    *v5 = sub_1C1265A70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91688, &unk_1C12A9DA0);

    sub_1C1046C78(__dst);

    v73 = swift_allocObject();
    memcpy((v73 + 16), __dst, 0x50uLL);
    v74 = (v5 + *(v2 + 36));
    *v74 = sub_1C1046F80;
    v74[1] = v73;
    v74[2] = 0;
    v74[3] = 0;
    sub_1C1046F84(v5, v105);
    swift_storeEnumTagMultiPayload();
    sub_1C1046FF4(__dst, &v106);
    v75 = OUTLINED_FUNCTION_4_17(&qword_1EBE91690, &qword_1EBE91650, &qword_1C12A9D70);
    v106 = v17;
    v107 = v75;
    v76 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v76, v110);
    v77 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v77, &v111);
    v78 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v78, &v112);
    v79 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v79, &v113);
    OUTLINED_FUNCTION_3_18();
    sub_1C104702C();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v5, &qword_1EBE91640, &qword_1C12A9D60);
  }

  else
  {
    v82 = LOBYTE(__dst[3]);
    v84 = v8;
    v98 = a1;
    v81 = __dst[2];
    v44 = sub_1C1264420();
    MEMORY[0x1EEE9AC00](v44);
    *(&v80 - 2) = __dst;
    v83 = sub_1C104702C();
    sub_1C1262950();
    v45 = OUTLINED_FUNCTION_4_17(&qword_1EBE91690, &qword_1EBE91650, &qword_1C12A9D70);
    sub_1C1264CC0();
    (*(v19 + 8))(v22, v17);
    sub_1C1264140();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0, &unk_1C12BDB80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C12A3440;
    v47 = sub_1C1264440();
    *(inited + 32) = v47;
    v48 = sub_1C1264420();
    *(inited + 33) = v48;
    sub_1C1264430();
    sub_1C1264430();
    if (sub_1C1264430() != v47)
    {
      sub_1C1264430();
    }

    sub_1C1264430();
    if (sub_1C1264430() != v48)
    {
      sub_1C1264430();
    }

    v106 = v17;
    v107 = v45;
    v49 = OUTLINED_FUNCTION_3_18();
    v50 = v86;
    v51 = v99;
    sub_1C1264C50();
    OUTLINED_FUNCTION_8_11();
    v52(v16, v95);
    OUTLINED_FUNCTION_8_11();
    v53(v27, v51);
    sub_1C1265BA0();
    v106 = v51;
    v107 = v49;
    v54 = OUTLINED_FUNCTION_3_18();
    v55 = v88;
    v56 = v100;
    sub_1C1264CF0();
    OUTLINED_FUNCTION_8_11();
    v57(v50, v56);
    v58 = sub_1C1264460();
    v59 = v96;
    sub_1C1263DF0();
    v106 = v56;
    v107 = v54;
    v60 = OUTLINED_FUNCTION_3_18();
    v61 = v89;
    v62 = v101;
    MEMORY[0x1C68EE480](v58, v81, 0, v59, v101, v60);
    OUTLINED_FUNCTION_8_11();
    v63(v59, v84);
    OUTLINED_FUNCTION_8_11();
    v64(v55, v62);
    v106 = v62;
    v107 = v60;
    v65 = OUTLINED_FUNCTION_3_18();
    v66 = v92;
    v67 = v102;
    sub_1C1264B70();
    OUTLINED_FUNCTION_8_11();
    v68(v61, v67);
    v69 = v94;
    v70 = v103;
    (*(v94 + 16))(v105, v66, v103);
    swift_storeEnumTagMultiPayload();
    v106 = v67;
    v107 = v65;
    OUTLINED_FUNCTION_3_18();
    sub_1C1263C20();
    return (*(v69 + 8))(v66, v70);
  }
}

unint64_t sub_1C1046AD4()
{
  result = qword_1EBE91680;
  if (!qword_1EBE91680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91680);
  }

  return result;
}

uint64_t sub_1C1046B28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    if (a1[1])
    {
      v8 = sub_1C1263AB0();
      v9 = 0x4020000000000000;
      v10 = 0;
      sub_1C10228C4();
    }

    else
    {
      v8 = sub_1C1265960();
      v9 = v4;
      sub_1C1046AD4();
    }
  }

  else
  {
    v8 = sub_1C12638E0();
    v9 = 0x4020000000000000;
    v10 = 0;
    sub_1C1022918();
  }

  *a2 = sub_1C1265A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91688, &unk_1C12A9DA0);

  sub_1C1046C78(a1);

  v5 = swift_allocObject();
  memcpy((v5 + 16), a1, 0x50uLL);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91640, &qword_1C12A9D60) + 36));
  *v6 = sub_1C1049C70;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = 0;
  return sub_1C1046FF4(a1, &v8);
}

uint64_t sub_1C1046C78(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 24);

  if (v4 == 2 && v3 == 0)
  {
    v2 = sub_1C119103C(v2);
  }

  sub_1C11E3DB0(v2);
  v7 = v6;

  v12 = v7;
  swift_getKeyPath();
  v8 = swift_allocObject();
  memcpy((v8 + 16), a1, 0x50uLL);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C104930C;
  *(v9 + 24) = v8;
  sub_1C1046FF4(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91778, &qword_1C12AA158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE916C0, &qword_1C12A9DB8);
  sub_1C0FDB6D4(&qword_1EBE91780, &qword_1EBE91778, &qword_1C12AA158, MEMORY[0x1E69E6338]);
  sub_1C10471F4();
  return sub_1C1265680();
}

void *sub_1C1046E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[4];
  v8 = a3[5];
  sub_1C0FDB0A8(a2, v17);
  *(&v17[2] + 1) = v7;
  *&v17[3] = v8;
  *(&v17[3] + 1) = swift_getKeyPath();
  memset(&v17[4], 0, 35);
  *(&v17[6] + 1) = a1;
  v9 = *(a3 + 8);
  memcpy(__dst, v17, sizeof(__dst));
  if (*(a3 + 24) != 2 || a3[2] || (v9 & 1) != 0)
  {
    sub_1C0FCF1B4(v7, v8);
    goto LABEL_7;
  }

  sub_1C0FCF1B4(v7, v8);

  v11 = *(sub_1C119103C(v10) + 16);

  v12 = 30.0;
  if (v11 - 1 != a1)
  {
LABEL_7:
    v12 = 0.0;
  }

  v13 = a3[6];
  if (v13)
  {
    v14 = v13(a1, *(*a3 + 16));
  }

  else
  {
    v14 = 0;
  }

  if (v9)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  result = memcpy(a4, __dst, 0x70uLL);
  *(a4 + 112) = v15;
  *(a4 + 120) = 0;
  *(a4 + 128) = v12;
  *(a4 + 136) = v14;
  *(a4 + 144) = v9;
  return result;
}

uint64_t sub_1C1046F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91640, &qword_1C12A9D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C104702C()
{
  result = qword_1EBE91698;
  if (!qword_1EBE91698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91640, &qword_1C12A9D60);
    sub_1C10470B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91698);
  }

  return result;
}

unint64_t sub_1C10470B8()
{
  result = qword_1EBE916A0;
  if (!qword_1EBE916A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91688, &unk_1C12A9DA0);
    sub_1C0FDB6D4(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
    sub_1C1047170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916A0);
  }

  return result;
}

unint64_t sub_1C1047170()
{
  result = qword_1EBE916A8;
  if (!qword_1EBE916A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916B0, &qword_1C12A9DB0);
    sub_1C10471F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916A8);
  }

  return result;
}

unint64_t sub_1C10471F4()
{
  result = qword_1EBE916B8;
  if (!qword_1EBE916B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916C0, &qword_1C12A9DB8);
    sub_1C10472AC();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916B8);
  }

  return result;
}

unint64_t sub_1C10472AC()
{
  result = qword_1EBE916C8;
  if (!qword_1EBE916C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916D0, &qword_1C12A9DC0);
    sub_1C1047338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916C8);
  }

  return result;
}

unint64_t sub_1C1047338()
{
  result = qword_1EBE916D8;
  if (!qword_1EBE916D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916E0, &qword_1C12A9DC8);
    sub_1C10473C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916D8);
  }

  return result;
}

unint64_t sub_1C10473C4()
{
  result = qword_1EBE916E8;
  if (!qword_1EBE916E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916F0, &unk_1C12A9DD0);
    sub_1C104747C();
    sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916E8);
  }

  return result;
}

unint64_t sub_1C104747C()
{
  result = qword_1EBE916F8;
  if (!qword_1EBE916F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosSearchInitialSuggestionsViewStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for PhotosSearchInitialSuggestionsViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C10475A4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C10475BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C10475E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C1047628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1047688()
{
  result = qword_1EBE91700;
  if (!qword_1EBE91700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91708, &qword_1C12A9F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91670, &qword_1C12A9D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91668, &qword_1C12A9D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91660, &qword_1C12A9D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91658, &qword_1C12A9D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91650, &qword_1C12A9D70);
    sub_1C0FDB6D4(&qword_1EBE91690, &qword_1EBE91650, &qword_1C12A9D70, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C104702C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91700);
  }

  return result;
}

uint64_t sub_1C1047898(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 99))
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

uint64_t sub_1C10478D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1047964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91710, &qword_1C12AA070);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0, &unk_1C12BDB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v5 = sub_1C1264420();
  *(inited + 32) = v5;
  v6 = sub_1C1264440();
  *(inited + 33) = v6;
  v7 = sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v5)
  {
    v7 = sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v6)
  {
    v7 = sub_1C1264430();
  }

  *v3 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91718, &qword_1C12AA078);
  sub_1C1047B2C(v0, &v3[*(v8 + 44)]);
  sub_1C0FDB6D4(&qword_1EBE91720, &qword_1EBE91710, &qword_1C12AA070, MEMORY[0x1E697BF80]);
  sub_1C1264DF0();
  return sub_1C0FAF7A8(v3);
}

uint64_t sub_1C1047B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  ButtonStyle = type metadata accessor for SuggestedQueryButtonStyle(0);
  MEMORY[0x1EEE9AC00](ButtonStyle);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C1263320();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91728, &qword_1C12AA080);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91730, &qword_1C12AA088);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47[-v15];
  sub_1C10481FC(a1, __src);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x63uLL);
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91738, &unk_1C12AA090);
  sub_1C1048274();
  sub_1C1265480();
  sub_1C1265160();
  v18 = sub_1C12651E0();

  v19 = *(v7 + 28);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1C12639D0();
  (*(*(v21 - 8) + 104))(&v9[v19], v20, v21);
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  v27 = sub_1C12659A0();
  v29 = v28;
  v30 = &v12[*(v10 + 36)];
  sub_1C1048300(v9, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91748, &qword_1C12AA0A8) + 36));
  *v31 = v18;
  v31[1] = 0x4014000000000000;
  v31[2] = 0;
  v31[3] = 0;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE931D0, &unk_1C12AA0B0) + 36)) = xmmword_1C12A9D40;
  v32 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92ED0, &unk_1C12A8E80) + 36));
  *v32 = v27;
  v32[1] = v29;
  sub_1C1048448(v9, MEMORY[0x1E697EAF0]);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  sub_1C1048364();
  sub_1C1049540(&qword_1EBE91768, type metadata accessor for SuggestedQueryButtonStyle, &unk_1C12AA280);
  sub_1C1264A00();
  sub_1C1048448(v5, type metadata accessor for SuggestedQueryButtonStyle);
  sub_1C0FD1A5C(v12, &qword_1EBE91728, &qword_1C12AA080);
  v33 = sub_1C1265170();
  sub_1C12659A0();
  sub_1C1262C80();
  v51 = __src[0];
  v50 = LOBYTE(__src[1]);
  v49 = __src[2];
  v48 = LOBYTE(__src[3]);
  v34 = __src[4];
  v35 = __src[5];
  v37 = v52;
  v36 = v53;
  v38 = *(v52 + 16);
  v39 = v16;
  v40 = v16;
  v41 = v54;
  v38(v53, v40, v54);
  v42 = v55;
  v38(v55, v36, v41);
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91770, &qword_1C12AA100) + 48)];
  v44 = v51;
  *v43 = v33;
  *(v43 + 1) = v44;
  v43[16] = v50;
  *(v43 + 3) = v49;
  v43[32] = v48;
  *(v43 + 5) = v34;
  *(v43 + 6) = v35;
  v45 = *(v37 + 8);

  v45(v39, v41);

  return (v45)(v36, v41);
}

uint64_t sub_1C10480B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 string];

  sub_1C1265EA0();
  sub_1C0FDB9AC();
  v7 = sub_1C12648F0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;
  result = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = result;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 49) = 257;
  return result;
}

uint64_t type metadata accessor for SuggestedQueryButtonStyle(uint64_t a1)
{
  result = qword_1EBE91788;
  if (!qword_1EBE91788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1048234()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1(v0 + 16);
  }

  return result;
}

unint64_t sub_1C1048274()
{
  result = qword_1EBE91740;
  if (!qword_1EBE91740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91738, &unk_1C12AA090);
    sub_1C0FFC6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91740);
  }

  return result;
}

uint64_t sub_1C1048300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263320();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1048364()
{
  result = qword_1EBE91750;
  if (!qword_1EBE91750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91728, &qword_1C12AA080);
    sub_1C0FDB6D4(&qword_1EBE91758, &qword_1EBE91760, &qword_1C12AA0F8, MEMORY[0x1E697D680]);
    sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91750);
  }

  return result;
}

uint64_t sub_1C1048448(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C10484A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v113 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1263B20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1264060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917B0, &qword_1C12AA2B8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v100 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917B8, &qword_1C12AA2C0);
  MEMORY[0x1EEE9AC00](v101);
  v17 = &v100 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917C0, &qword_1C12AA2C8);
  MEMORY[0x1EEE9AC00](v102);
  *&v107 = &v100 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917C8, &qword_1C12AA2D0);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917D0, &qword_1C12AA2D8);
  MEMORY[0x1EEE9AC00](v105);
  v110 = &v100 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917D8, &qword_1C12AA2E0);
  MEMORY[0x1EEE9AC00](v104);
  v109 = &v100 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917E0, &qword_1C12AA2E8);
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v100 - v22;
  v112 = a1;
  sub_1C1264070();
  sub_1C1263B10();
  sub_1C1049540(&qword_1EDE7BA80, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
  sub_1C1049540(&qword_1EBE917E8, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  sub_1C12649A0();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v23 = sub_1C1264530();
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F0, &unk_1C12AA320) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  *&v15[*(v13 + 44)] = sub_1C1263E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
  inited = swift_initStackObject();
  v100 = xmmword_1C12A3440;
  *(inited + 16) = xmmword_1C12A3440;
  LOBYTE(v7) = sub_1C12644A0();
  *(inited + 32) = v7;
  v27 = sub_1C12644C0();
  *(inited + 33) = v27;
  v28 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v7)
  {
    v28 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v27)
  {
    v28 = sub_1C12644B0();
  }

  sub_1C12628A0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1C1012024(v15, v17, &qword_1EBE917B0, &qword_1C12AA2B8);
  v37 = &v17[*(v101 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = swift_initStackObject();
  *(v38 + 16) = v100;
  v39 = sub_1C1264480();
  *(v38 + 32) = v39;
  v40 = sub_1C1264490();
  *(v38 + 33) = v40;
  v41 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v39)
  {
    v41 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v40)
  {
    v41 = sub_1C12644B0();
  }

  sub_1C12628A0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v107;
  sub_1C1012024(v17, v107, &qword_1EBE917B8, &qword_1C12AA2C0);
  v51 = v50 + *(v102 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = sub_1C10490FC();
  v53 = sub_1C1264470();
  v54 = swift_getKeyPath();
  v55 = v106;
  v56 = &v106[*(v103 + 36)];
  v57 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91800, &qword_1C12AA360) + 36)];
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91808, &qword_1C12AA368) + 28);
  sub_1C12658D0();
  v59 = sub_1C1265900();
  __swift_storeEnumTagSinglePayload(v57 + v58, 0, 1, v59);
  *v57 = v54;
  *v56 = 0x4049000000000000;
  *(v56 + 1) = v52;
  v56[16] = v53;
  v60 = sub_1C12659A0();
  v62 = v61;
  v63 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91810, &unk_1C12AA370) + 36)];
  *v63 = v60;
  v63[1] = v62;
  sub_1C1012024(v50, v55, &qword_1EBE917C0, &qword_1C12AA2C8);
  if (sub_1C1264080())
  {
    v64 = 0.75;
  }

  else
  {
    v64 = 1.0;
  }

  v65 = v110;
  sub_1C1012024(v55, v110, &qword_1EBE917C8, &qword_1C12AA2D0);
  *(v65 + *(v105 + 36)) = v64;
  v66 = v109;
  v67 = &v109[*(v104 + 36)];
  v68 = v113;
  v69 = *(v113 + 20);
  v70 = *MEMORY[0x1E697F468];
  v71 = sub_1C12639D0();
  v72 = *(*(v71 - 8) + 104);
  v72(&v67[v69], v70, v71);
  __asm { FMOV            V0.2D, #16.0 }

  v107 = _Q0;
  *v67 = _Q0;
  *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010) + 36)] = 256;
  sub_1C1012024(v65, v66, &qword_1EBE917D0, &qword_1C12AA2D8);
  v78 = sub_1C1265A60();
  v79 = sub_1C1264080();
  v80 = v111;
  sub_1C1012024(v66, v111, &qword_1EBE917D8, &qword_1C12AA2E0);
  v81 = v80 + *(v108 + 36);
  *v81 = v78;
  *(v81 + 8) = v79 & 1;
  v82 = *(v68 + 20);
  v83 = v114;
  v72(&v114[v82], v70, v71);
  *v83 = v107;
  sub_1C1265190();
  sub_1C1048FB0();
  v84 = sub_1C12651E0();

  sub_1C1262B10();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91818, &qword_1C12AA380);
  v86 = v115;
  v87 = v115 + *(v85 + 36);
  sub_1C1048300(v83, v87);
  v88 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91820, &qword_1C12AA388) + 36);
  v89 = v117;
  *v88 = v116;
  *(v88 + 16) = v89;
  *(v88 + 32) = v118;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91828, &qword_1C12AA390);
  *(v87 + *(v90 + 52)) = v84;
  *(v87 + *(v90 + 56)) = 256;
  v91 = sub_1C12659A0();
  v93 = v92;
  sub_1C1048448(v83, MEMORY[0x1E697EAF0]);
  v94 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91830, &qword_1C12AA398) + 36));
  *v94 = v91;
  v94[1] = v93;
  v95 = sub_1C12659A0();
  v97 = v96;
  v98 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91838, &unk_1C12AA3A0) + 36));
  *v98 = v95;
  v98[1] = v97;
  return sub_1C1012024(v80, v86, &qword_1EBE917E0, &qword_1C12AA2E8);
}