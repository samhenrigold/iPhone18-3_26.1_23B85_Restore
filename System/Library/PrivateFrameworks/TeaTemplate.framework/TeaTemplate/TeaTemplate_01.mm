uint64_t sub_1D79313D4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 40);
  if (*(result + 616) == 1)
  {
    switch(*(v2 + 40))
    {
      case 1:
        if (*(result + 48))
        {
          v3 = 0;
        }

        break;
      case 2:
        if ((*(result + 48) & 1) == 0)
        {
          v3 = 3;
        }

        break;
      case 3:
        if (!*(result + 48))
        {
          v3 = 2;
        }

        break;
      case 4:
      case 5:
      case 6:
        break;
      default:
        if (*(result + 48))
        {
          v3 = 1;
        }

        break;
    }
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1D7931460()
{
  result = qword_1EE09C458;
  if (!qword_1EE09C458)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE09C458);
  }

  return result;
}

char *sub_1D79314BC()
{
  v1 = v0;
  v2 = sub_1D796C170();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64))
  {
    sub_1D7930964();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0;
    *(v6 + 48) = 6;
    swift_willThrow();
  }

  else
  {
    v7 = sub_1D7931738(v1);
    v9 = v8;
    sub_1D796C160();
    v10 = sub_1D796C150();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
    v13 = *(v1 + 112);
    v14 = *(v1 + 120);
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    memcpy(v28, (v1 + 128), 0x109uLL);
    memcpy(v27, (v1 + 128), 0x109uLL);
    memcpy(v26, (v1 + 400), sizeof(v26));
    v30 = *(v1 + 48);
    *&v23 = v10;
    *(&v23 + 1) = v12;
    v24 = v7;
    v25 = v9;
    v17 = *(v1 + 696);
    v18 = *(v1 + 704);
    v19 = *(v1 + 714);
    v20 = *(v1 + 712);
    v29[0] = *(v1 + 713);
    v29[1] = v19;
    v22 = *(v1 + 88);
    v5 = sub_1D7928168(v27, v26, &v30, &v23, v17, v18, v20, v29, v15, v16, v13, v14, &v22, *(v1 + 616));
    sub_1D7923AE4(v28, v27);
  }

  return v5;
}

double sub_1D7931738(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v6 = *(a1 + 112);
  v5 = *(a1 + 120);
  v9.origin.x = v4;
  v9.origin.y = v3;
  v9.size.width = v6;
  v9.size.height = v5;
  Width = CGRectGetWidth(v9);
  if (v2)
  {
    v10.origin.x = v4;
    v10.origin.y = v3;
    v10.size.width = v6;
    v10.size.height = v5;
    CGRectGetHeight(v10);
    swift_beginAccess();
  }

  else
  {
    swift_beginAccess();
    Width = Width - *(a1 + 680);
    v11.origin.x = v4;
    v11.origin.y = v3;
    v11.size.width = v6;
    v11.size.height = v5;
    CGRectGetHeight(v11);
  }

  return Width;
}

void sub_1D7931820(CGFloat *a1@<X8>, double a2@<D0>)
{
  v15 = SizerResult.postProcess(frame:nonIntegral:)(*&a2, 0);
  if (!v6)
  {
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    sub_1D792C9F8();
    *a1 = x;
    a1[1] = y;
    a1[2] = width;
    a1[3] = height;
    *(a1 + 4) = v11;
    *(a1 + 5) = v12;
    *(a1 + 6) = v13;
    *(a1 + 7) = v14;
  }
}

uint64_t sub_1D7931904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LayoutDecoder.ObjectPath(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D79319A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7931A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_1();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_0();
  sub_1D7931ABC(v7, a2, a3, v6, v8, v9, v10);
  return v5;
}

char *sub_1D7931ABC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v111 = a2;
  v92 = *v7;
  v15 = *(v92 + 80);
  v94 = sub_1D796C690();
  OUTLINED_FUNCTION_0_15();
  v86 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v90 = v15;
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v89 = sub_1D796CB20();
  OUTLINED_FUNCTION_0_15();
  v88 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_0();
  v27 = (v26 - v25);
  v28 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_0();
  v91 = v28;
  v30 = *(v28 + 16);
  v30(v32 - v31, a1, a3);
  sub_1D793257C(0, &qword_1EE09D138, &protocol descriptor for FastLayoutDecodable);
  if (swift_dynamicCast())
  {
    sub_1D7924DA0(&v103, &v106);
    v33 = *(&v107 + 1);
    v34 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
    *&v103 = a4;
    *(&v103 + 1) = a5;
    *&v104 = a6;
    *(&v104 + 1) = a7;
    *&v105 = v111;
    v35 = v93;
    (*(v34 + 8))(&v97, &v103, v33, v34);
    if (!v35)
    {
      v36 = v90;
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_9_4();
        v37(a1, a3);
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v36);
        v38 = v87[4];
        v38(v22, v19, v36);
        v38(&v8[*(*v8 + 96)], v22, v36);
        v39 = OUTLINED_FUNCTION_13_1();
        type metadata accessor for LayoutDecoder.ObjectPath(v39, v36, v40, v41);
        swift_storeEnumTagMultiPayload();
        __swift_destroy_boxed_opaque_existential_1(&v106);
        return v8;
      }

      __swift_storeEnumTagSinglePayload(v19, 1, 1, v36);
      OUTLINED_FUNCTION_9_4();
      v80(v19, v94);
      sub_1D7953554();
      swift_allocError();
      *v81 = 2;
      swift_willThrow();
    }

    OUTLINED_FUNCTION_9_4();
    v82(a1, a3);
    __swift_destroy_boxed_opaque_existential_1(&v106);
    swift_deallocPartialClassInstance();
    return v8;
  }

  v87 = v8;
  *&v105 = 0;
  v103 = 0u;
  v104 = 0u;
  sub_1D79325D0(&v103, &qword_1EE09D130, &qword_1EE09D138, &protocol descriptor for FastLayoutDecodable);
  *(&v107 + 1) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
  v85 = a1;
  v86 = a3;
  v30(boxed_opaque_existential_1, a1, a3);
  sub_1D796CB00();
  sub_1D796CB10();
  sub_1D796C850();

  v43 = MEMORY[0x1E69E7CC8];
  v44 = v27;
  v94 = v27;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_1D796C8F0();
        v107 = v104;
        v108 = v105;
        v106 = v103;
        if (!*(&v105 + 1))
        {

          OUTLINED_FUNCTION_9_4();
          v73(v85, v86);
          OUTLINED_FUNCTION_9_4();
          v74(v44, v89);
          v75 = v87;
          v76 = v75 + *(*v75 + 96);
          *v76 = v43;
          v8 = v75;
          *(v76 + 8) = 0;
          v77 = OUTLINED_FUNCTION_13_1();
          type metadata accessor for LayoutDecoder.ObjectPath(v77, v90, v78, v79);
          swift_storeEnumTagMultiPayload();
          return v8;
        }

        v45 = v106;
        sub_1D79326E0(&v107, v102);
        if (*(&v45 + 1))
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v102);
      }

      if (v111)
      {
        break;
      }

      sub_1D79326F0(v102, &v103);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_2_20();
      if (v55)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_11_2();
      if (OUTLINED_FUNCTION_10_3(v58))
      {
        v59 = OUTLINED_FUNCTION_8_5();
        sub_1D792CF90(v59, v60);
        OUTLINED_FUNCTION_7_9();
        if (!v46)
        {
          goto LABEL_64;
        }
      }

      if (a3)
      {
LABEL_45:

        OUTLINED_FUNCTION_17_0(&v110);
        sub_1D79326E0(&v103, v44);
        __swift_destroy_boxed_opaque_existential_1(v102);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_30(&v110);
      OUTLINED_FUNCTION_5_10(&v103, v61);
      if (v55)
      {
        goto LABEL_60;
      }

LABEL_47:
      *(v43 + 16) = v62;
LABEL_48:
      v44 = v94;
    }

    if (v111 != 1)
    {
      break;
    }

    v46 = v45 == 0x656D617266 && *(&v45 + 1) == 0xE500000000000000;
    if (v46)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_8_5();
    if (sub_1D796C990())
    {
      goto LABEL_40;
    }

    sub_1D79326F0(v102, &v100);
    v44 = &qword_1EC9DA278;
    sub_1D793257C(0, &qword_1EC9DA278, &protocol descriptor for LayoutAdjustable);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      sub_1D79325D0(&v97, &qword_1EC9DA280, &qword_1EC9DA278, &protocol descriptor for LayoutAdjustable);
LABEL_40:
      sub_1D79326F0(v102, &v103);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_2_20();
      if (v55)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_11_2();
      if (OUTLINED_FUNCTION_10_3(v67))
      {
        v68 = OUTLINED_FUNCTION_8_5();
        sub_1D792CF90(v68, v69);
        OUTLINED_FUNCTION_7_9();
        if (!v46)
        {
          goto LABEL_64;
        }
      }

      if (a3)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_0_30(&v110);
      OUTLINED_FUNCTION_5_10(&v103, v70);
      if (v55)
      {
        goto LABEL_61;
      }

      goto LABEL_47;
    }

    sub_1D7924DA0(&v97, &v103);
    v47 = *(&v104 + 1);
    v48 = v105;
    __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
    LOBYTE(a3) = v48 + 8;
    v84 = *(v48 + 8);
    *(&v98 + 1) = v47;
    v99 = v48;
    __swift_allocate_boxed_opaque_existential_1(&v97);
    v49 = OUTLINED_FUNCTION_0();
    v84(v47, v48, v49);
    v50 = *(&v98 + 1);
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    v101 = v50;
    __swift_allocate_boxed_opaque_existential_1(&v100);
    OUTLINED_FUNCTION_15_1();
    (*(v51 + 16))();
    sub_1D79326E0(&v100, v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v43;
    v53 = OUTLINED_FUNCTION_8_5();
    sub_1D792CF90(v53, v54);
    OUTLINED_FUNCTION_2_20();
    if (v55)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_11_2();
    if (sub_1D796C880())
    {
      v56 = OUTLINED_FUNCTION_8_5();
      sub_1D792CF90(v56, v57);
      OUTLINED_FUNCTION_7_9();
      if (!v46)
      {
        goto LABEL_64;
      }
    }

    if ((v48 + 8))
    {

      OUTLINED_FUNCTION_17_0(v109);
      sub_1D79326E0(v96, isUniquelyReferenced_nonNull_native);
      __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      OUTLINED_FUNCTION_0_30(v109);
      OUTLINED_FUNCTION_5_10(v96, v71);
      if (v55)
      {
        goto LABEL_63;
      }

      *(v43 + 16) = v72;
    }

    v44 = v94;
    __swift_destroy_boxed_opaque_existential_1(&v97);
    __swift_destroy_boxed_opaque_existential_1(&v103);
  }

  sub_1D79326F0(v102, &v103);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_2_20();
  if (!v55)
  {
    OUTLINED_FUNCTION_11_2();
    if (OUTLINED_FUNCTION_10_3(v63))
    {
      v64 = OUTLINED_FUNCTION_8_5();
      sub_1D792CF90(v64, v65);
      OUTLINED_FUNCTION_7_9();
      if (!v46)
      {
        goto LABEL_64;
      }
    }

    if (a3)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_0_30(&v110);
    OUTLINED_FUNCTION_5_10(&v103, v66);
    if (v55)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

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
  __break(1u);
LABEL_64:
  result = sub_1D796CA70();
  __break(1u);
  return result;
}

uint64_t sub_1D793257C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D79325D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7932628(0, a2, a3, a4);
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D7932628(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D793257C(255, a3, a4);
    v5 = sub_1D796C690();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1D79326E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D79326F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1D793274C()
{
  if (!qword_1EE09C4A0)
  {
    v0 = sub_1D796C8B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C4A0);
    }
  }
}

uint64_t sub_1D79327B0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for LayoutDecoder.ObjectPath(0, v5, *(*v2 + 88), a1);
  OUTLINED_FUNCTION_0_15();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  (*(v11 + 16))(v18 - v9, v2 + *(v4 + 96), v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = v10[8];
    v14 = type metadata accessor for _LayoutDecoder();
    swift_allocObject();
    v15 = sub_1D79329A4(v12, v13);
    v18[4] = v14;
    v18[5] = sub_1D7932A18();
    v18[1] = v15;
    return sub_1D796C520();
  }

  else
  {
    OUTLINED_FUNCTION_15_1();
    return (*(v17 + 32))(a2, v10, v5);
  }
}

uint64_t sub_1D79329A4(uint64_t a1, char a2)
{
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  sub_1D796C870();
  *(v2 + 40) = sub_1D796C240();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

unint64_t sub_1D7932A18()
{
  result = qword_1EE09D470;
  if (!qword_1EE09D470)
  {
    type metadata accessor for _LayoutDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09D470);
  }

  return result;
}

uint64_t sub_1D7932A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LayoutKeyedDecodingContainer(0, a2, a3, a4);
  sub_1D7932BA0(*(v4 + 16), *(v4 + 24));

  swift_getWitnessTable();
  return sub_1D796C920();
}

uint64_t sub_1D7932BA0(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t sub_1D7932C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a1;
  v32 = a3;
  v5 = sub_1D796C690();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = sub_1D796CB30();
  if ((v12 & 1) == 0)
  {
    sub_1D7933170(v13, v14, v11, &v41);

    if (v42)
    {
      sub_1D79326E0(&v41, v40);
      sub_1D79326F0(v40, v36);
      sub_1D793257C(0, qword_1EE09D280, &protocol descriptor for LayoutDecodable);
      if (swift_dynamicCast())
      {
        sub_1D7924DA0(v34, &v37);
        v16 = v38;
        v17 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, v38);
        (*(v17 + 8))(v34, v16, v17);
        sub_1D7933374();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v40);
          __swift_storeEnumTagSinglePayload(v10, 0, 1, a2);
          (*(*(a2 - 8) + 32))(v32, v10, a2);
          return __swift_destroy_boxed_opaque_existential_1(&v37);
        }

        __swift_storeEnumTagSinglePayload(v10, 1, 1, a2);
        (*(v31 + 8))(v10, v5);
        sub_1D79534BC();
        swift_allocError();
        v26 = v25;
        v27 = v38;
        v28 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, v38);
        (*(v28 + 8))(v27, v28);
        *(v26 + 32) = sub_1D796CB50();
        *(v26 + 40) = v29;
        *(v26 + 48) = 0;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v40);
        v22 = &v37;
      }

      else
      {
        v35 = 0;
        memset(v34, 0, sizeof(v34));
        sub_1D795C2E4(v34, &qword_1EC9DA340, qword_1EE09D280, &protocol descriptor for LayoutDecodable);
        sub_1D79534BC();
        swift_allocError();
        v24 = v23;
        sub_1D79326F0(v40, v23);
        *(v24 + 48) = 1;
        swift_willThrow();
        v22 = v40;
      }

      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

LABEL_9:
    sub_1D79534BC();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0;
    *(v18 + 48) = 2;
    return swift_willThrow();
  }

  sub_1D7933170(v13, v14, v11, &v37);

  if (!v38)
  {
    goto LABEL_9;
  }

  sub_1D79326E0(&v37, v34);
  sub_1D79326F0(v34, &v41);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(v32, v7, a2);
  }

  __swift_storeEnumTagSinglePayload(v7, 1, 1, a2);
  (*(v31 + 8))(v7, v5);
  sub_1D79534BC();
  swift_allocError();
  v20 = v19;
  sub_1D79326F0(v34, v19);
  *(v20 + 32) = sub_1D796CB50();
  *(v20 + 40) = v21;
  *(v20 + 48) = 0;
  swift_willThrow();
  v22 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

double sub_1D7933170@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D792CF90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D79326F0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D79331D4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_5();
  v4 = *(v3 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_5();
  v6 = OUTLINED_FUNCTION_6_4();
  v7(v6);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    v8 = OUTLINED_FUNCTION_7_5();
    result = v9(v8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, v1, v4);
  }

  return result;
}

void sub_1D7933374()
{
  if (!qword_1EE09C450)
  {
    v0 = sub_1D796C690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C450);
    }
  }
}

uint64_t sub_1D79333C8()
{
  sub_1D79333FC();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1D79333FC()
{

  return v0;
}

uint64_t sub_1D7933424()
{
  v0 = sub_1D7933454();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *sub_1D7933454()
{

  return v0;
}

uint64_t sub_1D7933484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for LayoutDecoder.ObjectPath(0, *(*v4 + 80), *(*v4 + 88), a4);
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 8))(v4 + v5);
  return v4;
}

uint64_t sub_1D7933518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7933484(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

uint64_t LayoutItem.__deallocating_deinit()
{
  LayoutItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LayoutItem.deinit()
{
  v1 = *(*v0 + 96);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

__n128 sub_1D7933644()
{
  OUTLINED_FUNCTION_0_41();
  (*(v2 + 32))(v1);
  v3 = OUTLINED_FUNCTION_9_7();
  v5 = v1 + *(type metadata accessor for Layout.InternalLayoutResult(v3, v4) + 52);
  v6 = *(v0 + 16);
  *v5 = *v0;
  *(v5 + 16) = v6;
  result = *(v0 + 32);
  v8 = *(v0 + 48);
  *(v5 + 32) = result;
  *(v5 + 48) = v8;
  return result;
}

uint64_t sub_1D79336C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a6;
  v46 = a4;
  v51 = a2;
  v47 = a1;
  v52 = *v7;
  v54 = *(v52 + 176);
  v60 = *(v54 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v53 = v44 - v11;
  v48 = *v12;
  v14 = *v13;
  v15 = *(*v13 + 32);
  v16 = *(*v13 + 40);
  v18 = *(v17 + 224);
  v19 = *(v18 + 16);
  v20 = *(v17 + 192);
  v44[1] = v18 + 16;
  v44[0] = v19;
  v21 = v19(v20, v18, v10);
  v23 = sub_1D7933BC4(v15 + v21, v16 + v22);
  v25 = v7[13];
  v24 = v7[14];
  LayoutContext.set(context:for:)(v23, v8[13], v8[14]);

  LOBYTE(v56[0]) = *(v47 + 48);
  v57[0] = v48;
  v26 = SizerResult.metadata.getter();
  v45 = v18;
  v48 = a7;
  sub_1D7933DA4(a7, v46, v56, v26, v25, v24, v14, v20, v18);

  sub_1D7927B8C(v49);
  v27 = v7[15];
  if (v27)
  {
    v49 = v20;
    v28 = v7[16];

    v29 = v53;
    swift_getAtKeyPath();
    v58 = v52;
    v59 = &protocol witness table for Node<A>;
    v57[0] = v8;
    v30 = *(v52 + 208);
    v31 = *(v30 + 24);

    v32 = v54;
    v31(v55, v57, v54, v30);
    v33 = *(v60 + 8);
    v60 += 8;
    v33(v29, v32);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v34 = v50;
    v27(v56, v48, v55);
    sub_1D792A250(v55, sub_1D7933374);
    if (v34)
    {
      return sub_1D7935140(v27, v28);
    }

    v41 = v53;
    swift_getAtKeyPath();
    v58 = v52;
    v59 = &protocol witness table for Node<A>;
    v57[0] = v8;
    v42 = *(v30 + 16);

    v43 = v54;
    v42(v56, v57, MEMORY[0x1E69E7CA0] + 8, v54, v30);
    sub_1D7935140(v27, v28);
    v33(v41, v43);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v40 = v49;
  }

  else
  {
    v36 = v53;
    swift_getAtKeyPath();
    v58 = v52;
    v59 = &protocol witness table for Node<A>;
    v57[0] = v8;
    v37 = *(v52 + 208);
    v38 = *(v37 + 16);

    v39 = v54;
    v38(v48, v57, v20, v54, v37);
    (*(v60 + 8))(v36, v39);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v40 = v20;
  }

  return (v44[0])(v40, v45);
}

uint64_t sub_1D7933BC4(double a1, double a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  OUTLINED_FUNCTION_4_3((v2 + 7), v20);
  v8 = v2[7];
  OUTLINED_FUNCTION_4_3((v3 + 8), v19);
  v9 = v3[8];
  OUTLINED_FUNCTION_4_3((v3 + 9), v18);
  v10 = v3[9];
  OUTLINED_FUNCTION_4_3((v3 + 10), &v17);
  v11 = v3[10];
  v12 = v3[6];
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v6;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *&v14 = v12;
  *(&v14 + 1) = v8;
  *(v13 + 80) = v11;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  *(v13 + 48) = v14;
  *(v13 + 64) = v15;

  return v13;
}

void LayoutContext.set(context:for:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_3(v3 + 72, v12);

    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 72);
    v4 = OUTLINED_FUNCTION_1_6();
    sub_1D79299F8(v4, v5, v6, v7, v8, v9, v10);
    *(v3 + 72) = v11;
    swift_endAccess();
  }
}

uint64_t sub_1D7933DA4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44[3] = a8;
  v44[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a1, a8);
  if (a6)
  {
    v17 = *a3;
    v18 = (*(a9 + 16))(a8, a9);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    type metadata accessor for LayoutContextFrame();
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v20;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    *(v25 + 48) = v17;
    OUTLINED_FUNCTION_6_3(a7 + 56, v42);
    swift_isUniquelyReferenced_nonNull_native();
    v41[0] = *(a7 + 56);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_5();
    sub_1D79299F8(v26, v27, v28, v29, v30, v31, v32);
    *(a7 + 56) = v41[0];
    swift_endAccess();
    sub_1D7924F60(v44, v42);
    v43 = a2;
    OUTLINED_FUNCTION_6_3(a7 + 80, v41);

    OUTLINED_FUNCTION_2_5();
    sub_1D79457D0(v33, v34, v35);
    swift_endAccess();
    if (a4)
    {
      OUTLINED_FUNCTION_6_3(a7 + 64, v42);

      swift_isUniquelyReferenced_nonNull_native();
      v41[0] = *(a7 + 64);
      v36 = OUTLINED_FUNCTION_1_6();
      sub_1D7946050(v36, v37, v38, v39);
      *(a7 + 64) = v41[0];
      swift_endAccess();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t LayoutItemList.apply<A>(_:source:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v48 = *(*v4 + 80);
  v49 = sub_1D796C690();
  OUTLINED_FUNCTION_0_15();
  v45 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v43 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = v41 - v11;
  v47 = a3;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  OUTLINED_FUNCTION_4_3((v4 + 3), v51);
  v19 = v4[3];
  v21 = a2[3];
  v20 = a2[4];
  v22 = __swift_project_boxed_opaque_existential_1(a2, v21);
  v23 = *(v20 + 8);

  v41[1] = v22;
  v42 = v23;
  v24 = v23(v21, v20);
  v41[0] = sub_1D7934318(v24, v25, v19);
  LOBYTE(v23) = v26;

  v27 = *(v12 + 16);
  if (v23)
  {
    v27(v15, v46, v47);
    v28 = OUTLINED_FUNCTION_11_0(v43, v15);
    OUTLINED_FUNCTION_5_4(v28);
    sub_1D796C4F0();
    sub_1D796C4C0();
    swift_endAccess();
    v29 = v42(v21, v20);
    v31 = v30;
    OUTLINED_FUNCTION_6_3((v4 + 3), v50);
    sub_1D792BD44();
    v32 = *(v4[3] + 16);
    sub_1D792B604(v32);
    v33 = v4[3];
    *(v33 + 16) = v32 + 1;
    v34 = v33 + 16 * v32;
    *(v34 + 32) = v29;
    *(v34 + 40) = v31;
    v4[3] = v33;
  }

  else
  {
    v27(v18, v46, v47);
    v35 = v44;
    v36 = OUTLINED_FUNCTION_11_0(v44, v18);
    OUTLINED_FUNCTION_5_4(v36);
    v37 = v49;
    sub_1D796C4F0();
    sub_1D796C470();
    v38 = v4[2];
    v39 = v41[0];
    sub_1D79343A4(v41[0], v38, v37);
    (*(v45 + 40))(v38 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39, v35, v37);
  }

  return swift_endAccess();
}

uint64_t sub_1D7934318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1D796C990() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1D79343A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D79343F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a4;
  v7 = *v5;
  v8 = *(*v5 + 192);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - v11;
  v26 = &v24 - v11;
  v28 = *v13;
  v25 = v7[21];
  v27 = v7[25];
  v29 = type metadata accessor for NodeRepositioning(0, v25, v27, v14);
  v15 = v7[28];
  (*(v15 + 16))(v8, v15);
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v24 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = v25;
  *(v19 + 3) = v7[22];
  *(v19 + 4) = v7[23];
  *(v19 + 5) = v8;
  *(v19 + 6) = v27;
  *(v19 + 7) = v7[26];
  *(v19 + 8) = v7[27];
  *(v19 + 9) = v15;
  (*(v9 + 32))(&v19[v16], v20, v8);
  *&v19[v24] = v5;
  v21 = v31;
  *&v19[v17] = v30;
  *&v19[v18] = v28;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v21;
  v22 = sub_1D7928004(v5, 0, sub_1D796BF1C, v19);

  swift_retain_n();

  return v22;
}

uint64_t sub_1D79346D4()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = (((((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1D79347C0(double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v9 = a3;
  if (CGRectGetHeight(*&a3) != 0.0)
  {
    sub_1D796C630();
    v9 = v11;
    a4 = v12;
    a5 = v13;
    a6 = v14;
  }

  *a2 = v9;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4] = v9;
  a2[5] = a4;
  a2[6] = a5;
  a2[7] = a6;
}

double sub_1D793487C()
{
  if (*v0 == 1.79769313e308)
  {
    v2.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetMaxX(v2);
  }

  v3.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetHeight(v3);
  return 0.0;
}

uint64_t sub_1D79348F4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_3(v1 + 16, v5);
  sub_1D796C690();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_10_1();
  v3 = sub_1D796C370();

  result = sub_1D796C4F0();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t LayoutItemList.__deallocating_deinit()
{
  LayoutItemList.deinit();
  v0 = OUTLINED_FUNCTION_3_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LayoutItemList.deinit()
{

  return v0;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 208);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v1);
  }

  v2 = *(v0 + 216);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v2);
  }

  v3 = *(v0 + 224);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v3);
  }

  v4 = *(v0 + 232);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v4);
  }

  v5 = *(v0 + 240);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v5);
  }

  v6 = *(v0 + 248);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v6);
  }

  v7 = *(v0 + 256);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v7);
  }

  v8 = *(v0 + 264);
  if ((~v8 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, 281, 7);
}

uint64_t Layout.DebugLayoutAttributes.init(layoutAttributes:debugData:)()
{
  OUTLINED_FUNCTION_0_41();
  (*(v2 + 32))(v1);
  v3 = OUTLINED_FUNCTION_9_7();
  result = type metadata accessor for Layout.DebugLayoutAttributes(v3, v4);
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t DebugLayoutData.__deallocating_deinit()
{
  DebugLayoutData.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t DebugLayoutData.deinit()
{

  return v0;
}

uint64_t LayoutContextRecords.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t Layout.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Layout.__deallocating_deinit()
{
  v0 = Layout.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

void *sub_1D7934D50()
{
  v0 = Node.deinit();
  sub_1D7934DC0(*(v0 + 80));

  return v0;
}

uint64_t sub_1D7934D90()
{
  v0 = sub_1D7934D50();

  return MEMORY[0x1EEE6BDC0](v0, 121, 7);
}

unint64_t sub_1D7934DC0(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t Space.deinit()
{
  v0 = Node.deinit();
  sub_1D7934DC0(*(v0 + 80));
  return v0;
}

uint64_t Space.__deallocating_deinit()
{
  v0 = Space.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void *sub_1D7934ED8()
{
  v0 = Node.deinit();

  sub_1D7934F58(*(v0 + 88));

  sub_1D7935140(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t sub_1D7934F28()
{
  v0 = sub_1D7934ED8();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

unint64_t sub_1D7934F58(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

void *Frame.deinit()
{
  v0 = Node.deinit();

  sub_1D7935088(*(v0 + 88));

  sub_1D7935140(*(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t Frame.__deallocating_deinit()
{
  v0 = Frame.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1D7935088(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7935140(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1D7935150()
{
  v0 = sub_1D7934D50();

  return v0;
}

uint64_t sub_1D7935188()
{
  v0 = sub_1D7935150();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1D79351B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 265))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

void BuilderType.embed<A, B>(name:keyPath:size:_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_71();
  v57 = v23;
  v58 = v24;
  v52 = v25;
  v55 = v26;
  v56 = v27;
  v29 = v28;
  v54 = v30;
  v59 = v31;
  v32 = *v30;
  v53 = a21;
  v33 = (v32 + *MEMORY[0x1E69E77B0]);
  v34 = v33[1];
  v62 = *v33;
  v63 = v34;
  v64 = v35;
  v65 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = a22;
  v68 = a23;
  v69 = a23;
  v36 = OUTLINED_FUNCTION_58();
  v38 = type metadata accessor for EmbedFactory.Context(v36, v37);
  OUTLINED_FUNCTION_0_15();
  v40 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v52 - v42;
  v44 = *v29;
  v63 = v34;
  v65 = AssociatedConformanceWitness;
  AssociatedConformanceWitness = a22;
  v67 = a23;
  v45 = OUTLINED_FUNCTION_58();
  type metadata accessor for EmbedFactory(v45, v46);
  OUTLINED_FUNCTION_53();
  v61 = v44;
  v47 = v55;

  v48 = v54;

  v49 = v52;
  v50 = v53;
  sub_1D792233C(&v61, v56, &v60);
  (*(v40 + 16))(v43, v58, v38);
  v51 = sub_1D7935408(v59, v47, &v62, v48, &v60, v43, 0, 0);
  (*(v50 + 40))(v51, v49, v50);

  OUTLINED_FUNCTION_67();
}

double OUTLINED_FUNCTION_53()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 1;
  return result;
}

uint64_t sub_1D793549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = *v8;
  v16 = *(a3 + 32);
  v17 = *a5;
  *(v8 + 10) = a4;
  *(v8 + 11) = v17;
  *(v8 + 12) = a1;
  *(v8 + 13) = a2;
  v18 = v14[30];
  v19 = v14[25];
  v20 = v14[26];
  v31 = *(v15 + 21);
  v21 = *(v15 + 23);
  *v32 = v15[23];
  *&v32[8] = v21;
  v33 = v19;
  v34 = v20;
  v35 = v20;
  v22 = type metadata accessor for EmbedFactory.Context(0, &v31);
  v23 = *(v22 - 8);
  v27 = *(a3 + 16);
  v28 = *a3;
  (*(v23 + 16))(&v8[v18], a6, v22);
  v24 = &v8[*(*v8 + 248)];
  *v24 = a7;
  *(v24 + 1) = a8;
  v30 = 4;
  v31 = v28;
  *v32 = v27;
  v32[16] = v16;

  v25 = sub_1D79202C0(&v30, a1, a2, &v31);
  (*(v23 + 8))(a6, v22);
  return v25;
}

uint64_t sub_1D793569C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  v3 = v2;
  v4 = *(v1 + 176);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-1] - v7;
  swift_getAtKeyPath();
  v14[3] = v3;
  v14[4] = &protocol witness table for Node<A>;
  v14[0] = v0;
  OUTLINED_FUNCTION_1_3();
  v10 = *(v9 + 200);
  v11 = *(v10 + 8);

  v11(v14, v4, v10);
  (*(v5 + 8))(v8, v4);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1D79357F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65 = a1;
  v4 = v3;
  v66 = a2;
  v61 = *v4;
  v6 = v61;
  v7 = v61[23];
  v63 = v61[26];
  v57 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness;
  v60 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v15 = v4[11];
  v14 = v4[12];
  v16 = v4[13];
  v58 = a3;
  v17 = sub_1D7929258(v14, v16);
  v70 = v15;
  v18 = v6[21];
  v19 = v6[24];
  v21 = type metadata accessor for Sizing(0, v18, v19, v20);
  sub_1D79228AC(v21, v67);
  v23 = v68;
  v22 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v24 = v64;
  v25 = (*(v22 + 8))(v65, v66, v17, v18, v19, v23, v22);
  if (!v24)
  {
    v64 = v25;
    v55 = v10;
    v56 = v13;
    v26 = v68;
    v27 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v28 = v65;
    (*(v27 + 16))(&v70, v65, v66, v17, v18, v19, v26, v27);
    v54 = v19;
    v53 = v18;
    v30 = v70;
    if ((SizerResult.isAmbiguous.getter() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v67);
      v67[0] = v30;
      v70 = v30;
      v32 = SizerResult.nonIntegral.getter();
      sub_1D79276B0(v32 & 1);
      v67[0] = v30;
      v33 = v56;
      sub_1D793636C(v28, v67, v56, v34, v35, v36, v37);
      v38 = v66;
      v66 = 0;
      v67[0] = v30;
      sub_1D7936940(v28, v38, v58, v67, v64, v33);
      v39 = v33;
      v18 = swift_allocObject();
      v40 = v53;
      v65 = type metadata accessor for NodeRepositioning(0, v53, v54, v41);
      v42 = v57;
      v43 = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v43, AssociatedConformanceWitness);
      v45 = v60 + 32;
      v60 = *(v60 + 32);
      (v60)(v62, v39, v43);
      v46 = (*(v45 + 48) + 64) & ~*(v45 + 48);
      v58 = (v55 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      v47[2] = v40;
      v49 = v61;
      v48 = v62;
      v47[3] = v61[22];
      v47[4] = v42;
      v47[5] = v54;
      v50 = v63;
      v47[6] = v49[25];
      v47[7] = v50;
      (v60)(v47 + v46, v48, v43);
      *(v47 + v58) = v4;
      v51 = v55;
      *(v47 + v56) = v30;
      *(v47 + v51) = v64;
      v52 = sub_1D792EC4C();
      *(v18 + 16) = sub_1D7928004(v4, v52 & 1, sub_1D7942428, v47);
      swift_retain_n();
      return v18;
    }

    sub_1D7930964();
    swift_allocError();
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 6;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v67);
  return v18;
}

uint64_t sub_1D7935D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7935D90()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1D7935E8C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v4 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      v1 = swift_getAssociatedTypeWitness();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1D7935F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = swift_beginAccess();
  if (*(a1 + 64))
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    if (*(a1 + 48))
    {
      OUTLINED_FUNCTION_2_14(v6, v7, v8, v9, v10, v11, v12, v13, v26);
      v16 = *(a1 + 664);
      v17 = *(a1 + 672);
      v18 = swift_allocObject();
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      *(v19 + 32) = v14;
      *(v19 + 40) = v15 * a3;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22(&qword_1EE09D478);
      }

      OUTLINED_FUNCTION_1_17(&word_1EE09D480);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D796EBB0;
      *(result + 32) = v15;
      *(result + 40) = 1;
      *(v18 + 24) = MEMORY[0x1E69E7CC0];
      *(v18 + 32) = result;
    }

    else
    {
      OUTLINED_FUNCTION_2_14(v6, v7, v8, v9, v10, v11, v12, v13, v26);
      v22 = *(a1 + 664);
      v23 = *(a1 + 672);
      v18 = swift_allocObject();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      *(v24 + 32) = v14 * a3;
      *(v24 + 40) = v15;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22(&qword_1EE09D478);
      }

      OUTLINED_FUNCTION_1_17(&word_1EE09D480);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D796EBB0;
      *(result + 32) = v14;
      *(result + 40) = 1;
      v25 = MEMORY[0x1E69E7CC0];
      *(v18 + 24) = result;
      *(v18 + 32) = v25;
    }

    v21 = 0x4000000000000000;
  }

  else
  {
    result = swift_allocObject();
    v18 = result;
    *(result + 40) = &type metadata for FlexibleSizer;
    *(result + 48) = &off_1F528A0F8;
    *(result + 16) = a3;
    v21 = 0x2000000000000000;
  }

  *a2 = v21 | v18;
  return result;
}

uint64_t sub_1D79361A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79361FC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t EmbedFactory.Context.init(factory:model:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v26[0] = a4;
  v26[1] = a5;
  v26[2] = a6;
  v26[3] = a7;
  v26[4] = a8;
  v26[5] = a10;
  v26[6] = a11;
  v26[7] = a12;
  v19 = type metadata accessor for EmbedFactory.Context(0, v26);
  v20 = *(v19 + 84);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  (*(v21 + 32))(a9 + v20, a2);
  v22 = *(v19 + 88);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  return (*(v23 + 32))(a9 + v22, a3);
}

uint64_t sub_1D793636C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v28 = a3;
  v30 = *v7;
  v14 = *(v30 + 208);
  v15 = *(v30 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v25 - v17;
  v18 = *a2;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  memcpy(v38, (a1 + 128), 0x109uLL);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  memcpy(&v39[4], (a1 + 128), 0x109uLL);
  *v39 = a4;
  *&v39[1] = a5;
  *&v39[2] = a6;
  *&v39[3] = a7;
  v39[38] = sub_1D793675C;
  v39[39] = v20;
  memcpy(v37, v39, sizeof(v37));
  sub_1D7923AE4(v38, &v31);

  v31 = *(v30 + 168);
  v32 = v15;
  v33 = v15;
  v21 = v29;
  v34 = *(v30 + 192);
  v35 = v14;
  v36 = v14;
  v22 = type metadata accessor for EmbedFactory.Context(0, &v31);
  v23 = v39[46];
  sub_1D793665C(v37, v22);
  sub_1D793683C(v39);
  if (!v23)
  {
    (*(v26 + 32))(v28, v21, v27);
  }
}

uint64_t sub_1D7936618()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t EmbedFactoryCursor.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x109uLL);
  memcpy(a1, (v1 + 32), 0x109uLL);
  return sub_1D7923AE4(__dst, v4);
}

void sub_1D7936790(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  SizerResult.postProcess(frame:nonIntegral:)(v10, 0);
}

uint64_t sub_1D793686C(uint64_t a1)
{
  v12 = MEMORY[0x1E69E5D20] + 64;
  v13 = "\b";
  v14 = &unk_1D796F950;
  v1 = *(a1 + 200);
  v2 = *(a1 + 208);
  v6 = *(a1 + 168);
  v3 = *(a1 + 184);
  v7 = *(a1 + 184);
  v8 = v3;
  v9 = v1;
  v10 = v2;
  v11 = v2;
  result = type metadata accessor for EmbedFactory.Context(319, &v6);
  if (v5 <= 0x3F)
  {
    v15 = *(result - 8) + 64;
    v16 = &unk_1D796F950;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D7936940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v42 = a5;
  v43 = a2;
  v44 = *v6;
  v46 = *(v44 + 176);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v40 - v10;
  v12 = *v11;
  v40[1] = *v13;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 16);
  v16 = swift_checkMetadataState();
  v17 = v15(v16, AssociatedConformanceWitness);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v47[0]) = *(a1 + 48);
  v48[0] = v12;
  v24 = SizerResult.metadata.getter();
  v25 = v6[12];
  v26.value._countAndFlagsBits = v6[13];
  v51.origin.x = v17;
  v51.origin.y = v19;
  v51.size.width = v21;
  v27 = v24;
  v51.size.height = v23;
  LayoutContext.set(frame:direction:metadata:for:)(v51, v47, *(&v25 - 1), v26);

  v15(v16, AssociatedConformanceWitness);
  sub_1D7927B8C(v42);
  v28 = v7 + *(*v7 + 248);
  v29 = *v28;
  if (*v28)
  {
    v30 = *(v28 + 1);

    v29(v47, a6);
    v31 = v41;
    swift_getAtKeyPath();
    v49 = v44;
    v50 = &protocol witness table for Node<A>;
    v48[0] = v7;
    v32 = *(v44 + 200);
    v33 = *(v32 + 16);

    v34 = v46;
    v33(v47, v48, MEMORY[0x1E69E7CA0] + 8, v46, v32);
    sub_1D7935140(v29, v30);
    (*(v45 + 8))(v31, v34);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    v35 = v41;
    swift_getAtKeyPath();
    v49 = v44;
    v50 = &protocol witness table for Node<A>;
    v48[0] = v7;
    v36 = *(v44 + 200);
    v37 = *(v36 + 16);

    v38 = v46;
    v37(a6, v48, v16, v46, v36);
    (*(v45 + 8))(v35, v38);
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

char *EmbedFactory.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = Node.deinit();

  sub_1D7936E54(v3[11]);

  v4 = *(*v3 + 240);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v10 = *(v2 + 168);
  v7 = *(v2 + 184);
  v11 = *(v2 + 184);
  v12 = v7;
  v13 = v5;
  v14 = v6;
  v15 = v6;
  type metadata accessor for EmbedFactory.Context(0, &v10);
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 8))(v3 + v4);
  sub_1D7935140(*(v3 + *(*v3 + 248)), *(v3 + *(*v3 + 248) + 8));
  return v3;
}

uint64_t EmbedFactory.__deallocating_deinit()
{
  v0 = EmbedFactory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1D7936E54(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7936F30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 168);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26[-1] - v9;
  v12 = v11[13];
  v13 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v12);
  (*(v13 + 8))(v26, v12, v13);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v8 + 16))(v10, a3, v7);
  v16 = *(v6 + 176);
  v17 = (*(v15 + 8))(a2, v10, v7, v16, v14, v15);
  (*(v8 + 8))(v10, v7);
  v18 = __swift_destroy_boxed_opaque_existential_1(v26);
  if (v17)
  {
    return (a1[15])(v18);
  }

  v21 = a1[17];
  if (v21)
  {
    v22 = a1[18];

    v20 = v21(v23);
    sub_1D7935140(v21, v22);
  }

  else
  {
    type metadata accessor for Node(0, v7, v16, v19);
    return sub_1D796C480();
  }

  return v20;
}

uint64_t sub_1D7937140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = *a1;
  v10 = v5[3];
  v11 = v5[4];
  v21 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v10);
  LOBYTE(v23) = 0;
  sub_1D7938D18(&v23, a1, v24);
  OUTLINED_FUNCTION_0_38();
  v12 = *(v11 + 16);
  v13 = *(v9 + 80);
  v14 = *(v9 + 88);

  v12(&v25, &v23, a2, a3, v13, v14, v10, v11);

  if (!v22)
  {
    v16 = v25;
    v17 = v21[8];
    v18 = v21[9];
    __swift_project_boxed_opaque_existential_1(v21 + 5, v17);
    LOBYTE(v23) = 1;
    sub_1D7938D18(&v23, a1, v24);
    OUTLINED_FUNCTION_0_38();
    v19 = *(v18 + 16);

    v19(&v25, &v23, a2, a3, v13, v14, v17, v18);

    v24[0] = v16;
    v23 = v25;
    sub_1D793797C(v24, &v23, a4);
  }

  return result;
}

void *sub_1D7937308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Node(0, *(*v4 + 80), *(*v4 + 96), a4);
  v4[2] = sub_1D796C480();
  return v4;
}

uint64_t sub_1D7937364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v22 = v4[2];
  v23 = v4[1];
  v28 = *v4;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v10 = type metadata accessor for Conditional(0, v9, v8, a4);
  Conditional.condition.getter(v10, v25);
  v11 = v26;
  v12 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v13 = *(v7 + 80);
  v14 = *(v7 + 88);
  v15 = (*(v12 + 8))(a1, a2, v13, v14, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v15)
  {
    v16 = v23;
  }

  else
  {
    v16 = v22;
  }

  v28 = v16;
  sub_1D7922754(v16);
  v18 = type metadata accessor for Sizing(0, v9, v8, v17);
  sub_1D79228AC(v18, v25);
  v19 = v26;
  v20 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v20 + 16))(a1, a2, a3, v13, v14, v19, v20);
  sub_1D7934DC0(v16);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1D79374F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[4];
  if (v6)
  {
    v7 = v4[5];
    v8 = *(v5 + 96);
    v12[0] = *(v5 + 80);
    v12[1] = v8;
    type metadata accessor for ListBuilder(0, v12);

    v9 = sub_1D79375E0();
    v6();
    sub_1D7935140(v6, v7);
    swift_beginAccess();
    v10 = *(v9 + 16);
  }

  else
  {
    type metadata accessor for Node(0, *(v5 + 80), *(v5 + 96), a4);
    return sub_1D796C480();
  }

  return v10;
}

uint64_t sub_1D79375E0()
{
  v0 = swift_allocObject();
  sub_1D7937308(v0, v1, v2, v3);
  return v0;
}

uint64_t sub_1D793763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_1D793774C(v3, a1, a2);
  type metadata accessor for Node(255, *(v7 + 168), *(v7 + 176), v9);
  sub_1D796C4F0();
  swift_getWitnessTable();
  if (sub_1D796C570())
  {

    return 0x8000000000000000;
  }

  else
  {
    v10 = sub_1D7929380(v8, a1, a2, a3);
  }

  return v10;
}

uint64_t sub_1D793774C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 168);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26[-1] - v9;
  v12 = v11[13];
  v13 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v12);
  (*(v13 + 8))(v26, v12, v13);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v8 + 16))(v10, a3, v7);
  v16 = *(v6 + 176);
  LOBYTE(a2) = (*(v15 + 8))(a2, v10, v7, v16, v14, v15);
  (*(v8 + 8))(v10, v7);
  v17 = __swift_destroy_boxed_opaque_existential_1(v26);
  v19 = a1[19];
  if (a2)
  {
    if (!v19 || (a1[20] & 1) == 0)
    {
      return (a1[15])(v17);
    }

    goto LABEL_9;
  }

  if (v19 && (a1[20] & 1) == 0)
  {
LABEL_9:

    return v19;
  }

  v21 = a1[17];
  if (!v21)
  {
    type metadata accessor for Node(0, v7, v16, v18);
    return sub_1D796C480();
  }

  v22 = a1[18];

  v19 = v21(v23);
  sub_1D7935140(v21, v22);
  return v19;
}

uint64_t sub_1D793797C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  sub_1D7938C58();
  v7 = v5 >> 61;
  if (v5 >> 61 == 1)
  {
    goto LABEL_6;
  }

  v8 = v6 >> 61;
  if (!v7 && !v8)
  {
    v9 = *(v5 + 32);
    v50.val[0] = *(v5 + 16);
    v50.val[1] = *(v6 + 16);
    v10 = *(v6 + 32);
    result = swift_allocObject();
    v12 = (result + 16);
    v54 = v50;
    vst2q_f64(v12, v54);
    *(result + 48) = v9;
    *(result + 49) = v10;
LABEL_12:
    *a3 = result;
    return result;
  }

  if (v8 == 1)
  {
LABEL_6:
    v13 = swift_allocObject();
    *(v13 + 40) = &type metadata for DimensionWiseSizer;
    *(v13 + 48) = &off_1F528C508;
    v14 = swift_allocObject();
    *(v13 + 16) = v14;
    sub_1D795B2D4(v3, v14 + 16);
    result = v13 | 0x2000000000000000;
    goto LABEL_12;
  }

  if (v7 == 4)
  {
    v5 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_11:

    v15 = swift_allocObject();
    v52 = v6;
    v53 = v5;
    sub_1D793797C(&v53, &v52, (v15 + 16));

    result = v15 | 0x3000000000000000;
    goto LABEL_12;
  }

  if (v8 == 4)
  {
    v6 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_11;
  }

  if (v7 == 5)
  {
    v16 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = v6;
    v52 = v16;

    sub_1D793797C(&v52, &v51, &v53);
    v19 = v53;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v18;
    v22 = sub_1D795B2CC;
LABEL_17:
    *(v20 + 24) = v22;
    *(v20 + 32) = v21;

    result = v20 | 0x6000000000000000;
    goto LABEL_12;
  }

  if (v8 == 5)
  {
    v23 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v24 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v52 = v5;

    sub_1D793797C(&v52, &v51, &v53);
    v25 = v53;
    v20 = swift_allocObject();
    *(v20 + 16) = v25;
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = v24;
    v22 = sub_1D795B2C4;
    goto LABEL_17;
  }

  if (v7 == 6)
  {
    v26 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    v27 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = *(v26 + 24);
    v29 = *(v26 + 32);
    v30 = swift_allocObject();
    v52 = v6;
    v53 = v27;

    sub_1D793797C(&v53, &v52, (v30 + 16));
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    v32 = sub_1D795B264;
LABEL_22:
    *(v30 + 24) = v32;
    *(v30 + 32) = v31;

    result = v30 | 0x7000000000000000;
    goto LABEL_12;
  }

  if (v8 == 6)
  {
    v33 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v34 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *(v33 + 24);
    v36 = *(v33 + 32);
    v30 = swift_allocObject();
    v52 = v34;
    v53 = v5;

    sub_1D793797C(&v53, &v52, (v30 + 16));
    v31 = swift_allocObject();
    *(v31 + 16) = v35;
    *(v31 + 24) = v36;
    v32 = sub_1D795B248;
    goto LABEL_22;
  }

  if (v7 == 3)
  {
    v5 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_27:

    v37 = swift_allocObject();
    v52 = v6;
    v53 = v5;
    sub_1D793797C(&v53, &v52, (v37 + 16));

    result = v37 | 0x5000000000000000;
    goto LABEL_12;
  }

  if (v8 == 3)
  {
    v6 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_27;
  }

  if (v7 == 2)
  {
    v38 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v40 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = v6;
    v52 = v38;

    sub_1D793797C(&v52, &v51, &v53);
    v41 = v53;
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    sub_1D792EC60();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D796EBB0;
    *(v43 + 32) = v39;
    *(v43 + 40) = v40;

    v44 = MEMORY[0x1E69E7CC0];
    *(v42 + 24) = v43;
    *(v42 + 32) = v44;
LABEL_32:

    result = v42 | 0x4000000000000000;
    goto LABEL_12;
  }

  if (v8 == 2)
  {
    v45 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = v45;
    v52 = v5;

    sub_1D793797C(&v52, &v51, &v53);
    v48 = v53;
    v42 = swift_allocObject();
    *(v42 + 16) = v48;
    sub_1D792EC60();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D796EBB0;
    *(v49 + 32) = v46;
    *(v49 + 40) = v47;

    *(v42 + 24) = MEMORY[0x1E69E7CC0];
    *(v42 + 32) = v49;
    goto LABEL_32;
  }

  result = sub_1D796C980();
  __break(1u);
  return result;
}

uint64_t sub_1D7937F40()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7937F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7937FC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7938004()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D793803C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

void sub_1D793809C(char a1@<W3>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v8 = v4;
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
    *(v8 + 16) = DimensionCursor.position.getter();
    *(v8 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
    v10 = DimensionCursor.position.getter();
    v12 = DimensionCursor.remainingBounds.getter(v9, v11);
    *(v8 + 16) = v10;
    *(v8 + 24) = v12;
  }

  *(v8 + 32) = 0;
  *a2 = v8;
}

CGFloat DimensionCursor.remainingBounds.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = Cursor.remainingBounds.getter(a1, a2);
  if (v3)
  {

    return CGRectGetHeight(*&v4);
  }

  else
  {

    return CGRectGetWidth(*&v4);
  }
}

void sub_1D7938214(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  v8 = type metadata accessor for DimensionCursor(0, a1, a2, v7);
  v9 = DimensionCursor.position.getter();
  v11 = DimensionCursor.remainingBounds.getter(v8, v10);
  *(v6 + 16) = v9;
  *(v6 + 24) = v11;
  *(v6 + 32) = 1;
  *a3 = v6;
}

void sub_1D793830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, __int128 a20, __int128 a21, char a22, __int16 a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  OUTLINED_FUNCTION_37();
  a38 = v44;
  a39 = v45;
  v75 = v46;
  v71 = v47;
  v74 = v48;
  v50 = v49;
  v52 = v51;
  v73 = v53;
  v70 = a42;
  v55 = a40;
  v54 = a41;
  v72 = *(v49 + 32);
  v57 = *v56;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_31();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_54();
  v63 = type metadata accessor for Box(v59, v60, v61, v62);
  *&a20 = v57;
  sub_1D792233C(&a20, v71, &a27);
  a26 = v70;
  v64 = v50[1];
  a20 = *v50;
  a21 = v64;
  a22 = v72;
  a19 = 2;

  v65 = sub_1D792280C(&a19, &a27, &a26, v73, v52, v74, &a20);
  (*(v54 + 40))(v65, v55, v54);
  OUTLINED_FUNCTION_11_3();
  v66 = OUTLINED_FUNCTION_34();
  *&a20 = v43;
  *(&a20 + 1) = v42;
  *&a21 = AssociatedConformanceWitness;
  *(&a21 + 1) = v66;
  v67 = OUTLINED_FUNCTION_32();
  type metadata accessor for BoxBuilder(v67, v68);
  v69 = OUTLINED_FUNCTION_19_0();
  sub_1D79207F4(v69);
  OUTLINED_FUNCTION_45();
  v75(v63);

  OUTLINED_FUNCTION_36();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_getAssociatedConformanceWitness();
}

double OUTLINED_FUNCTION_34_1()
{

  return result;
}

double sub_1D7938564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D7936F30(v3, a1, a2);
  v3[19] = v7;
  *(v3 + 160) = v8;

  if (v7)
  {
    type metadata accessor for Node(0, *(v6 + 168), *(v6 + 176), v9);

    v11 = sub_1D796C430();

    for (i = v11; i != sub_1D796C4A0(); v11 = i)
    {
      v12 = sub_1D796C490();
      sub_1D796C450();
      if (v12)
      {
        v13 = *(v7 + 32 + 8 * v11);
      }

      else
      {
        v13 = sub_1D796C790();
      }

      sub_1D796C4E0();
      (*(*v13 + 144))(a1, a2);
    }
  }

  return result;
}

void BuilderType.frame<A>(name:flexBoxItem:keyPath:size:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_64();
  a28 = v30;
  a29 = v31;
  v33 = v32;
  v34 = a30;
  v35 = *(v32 + 32);
  v37 = *v36;
  OUTLINED_FUNCTION_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a14 = a9;
  *&a15 = AssociatedConformanceWitness;
  *(&a15 + 1) = v34;
  v39 = OUTLINED_FUNCTION_38();
  type metadata accessor for Frame(v39, v40);
  v41 = v33[1];
  a14 = *v33;
  a15 = v41;
  a16 = v35;
  a13 = v37;

  OUTLINED_FUNCTION_24(&a13, &a12);
  OUTLINED_FUNCTION_51();
  sub_1D79236F8(v42, v43, v44, v45, v46, 0, 0);
  OUTLINED_FUNCTION_0_35();
  v47();

  OUTLINED_FUNCTION_66();
}

uint64_t FastLayoutDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_9_13(a2);
  v7 = v6;
  v9 = *(v8 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_7_17();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v16 = *(v2 + 32);
  if (v16 == 1)
  {
    v19 = LayoutItem.flipRightToLeft(bounds:)(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    OUTLINED_FUNCTION_2_36(v19 + *(*v19 + 96));
    v20 = OUTLINED_FUNCTION_6_17();
    v21(v20);

    OUTLINED_FUNCTION_3_26(v4);
    if (!v18)
    {
      goto LABEL_12;
    }

    (*(v11 + 8))(v4, v3);
    goto LABEL_9;
  }

  if (v16)
  {
    v25 = sub_1D7953554();
    OUTLINED_FUNCTION_8_12(&type metadata for FastLayoutDecoderError, v25);
    v24 = 1;
    goto LABEL_11;
  }

  v17 = *(v7 + 96);
  OUTLINED_FUNCTION_2_36(a1 + v17);
  (*(v11 + 16))(v15, a1 + v17, v3);
  OUTLINED_FUNCTION_3_26(v15);
  if (v18)
  {
    (*(v11 + 8))(v15, v3);
LABEL_9:
    v22 = sub_1D7953554();
    OUTLINED_FUNCTION_8_12(&type metadata for FastLayoutDecoderError, v22);
    v24 = 0;
LABEL_11:
    *v23 = v24;
    return swift_willThrow();
  }

  v4 = v15;
LABEL_12:
  OUTLINED_FUNCTION_5_22();
  return (*(v27 + 32))(v28[5], v4, v9);
}

uint64_t ListBuilder.__deallocating_deinit()
{
  ListBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ListBuilder.add(node:)(uint64_t a1)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_0_45();
  OUTLINED_FUNCTION_0_45();
  type metadata accessor for Node(255, v2, *(v1 + 96), v3);
  sub_1D796C4F0();

  sub_1D796C4C0();
  return swift_endAccess();
}

uint64_t sub_1D7938B60()
{
  v1 = *(*v0 + 6);
  v5[0] = *(*v0 + 5);
  v5[1] = v1;
  type metadata accessor for ListBuilder(0, v5);
  v2 = sub_1D79375E0();
  v0[2]();
  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

void sub_1D7938C58()
{
  if (!qword_1EE09D128)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE09D128);
    }
  }
}

double DimensionCursor.position.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v2 + 664;
  if (v1)
  {
    swift_beginAccess();
    v3 = v2 + 672;
  }

  else
  {
    swift_beginAccess();
  }

  return *v3;
}

_BYTE *sub_1D7938D18@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

double sub_1D7938D28(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

void *sub_1D7938D44@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

void *Conditional.condition.getter@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = result;
      a2[3] = &type metadata for NotCondition;
      a2[4] = &off_1F528C758;
      v7 = swift_allocObject();
      *a2 = v7;
      return Conditional.condition.getter(v6, (v7 + 16));
    }

    if (v4 == 0x8000000000000000)
    {
      a2[3] = &type metadata for FlexibleCondition;
      a2[4] = &off_1F528EE98;
      *a2 = 0;
      return result;
    }

    a2[3] = &type metadata for FlexibleCondition;
    a2[4] = &off_1F528EE98;
    if (v4 == 0x8000000000000008)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = *(v4 + 16);
    a2[3] = &type metadata for BoolCondition;
    a2[4] = &off_1F528A208;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_1D7938E9C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t get_enum_tag_for_layout_string_11TeaTemplate11ConditionalOyxG(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

BOOL sub_1D7938EF0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    Height = CGRectGetHeight(*(a1 + 96));
    return Height == 1.79769313e308;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  Height = CGRectGetWidth(*(a1 + 96));
  return Height == 1.79769313e308;
}

void sub_1D7938F48(uint64_t a1@<X8>)
{
  v3 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v7;
      *(a1 + 8) = 0;
      v8 = 1;
      goto LABEL_16;
    case 2uLL:
      v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for ColumnDimensionSizer;
      *(a1 + 32) = &off_1F52892E8;
      *a1 = v5;
      break;
    case 3uLL:
      *(a1 + 24) = &type metadata for InvertDimensionSizer;
      *(a1 + 32) = &off_1F528CE00;
      v6 = swift_allocObject();
      *a1 = v6;
      sub_1D7938F48(v6 + 16);
      break;
    case 4uLL:

      sub_1D7924F60((v3 & 0x1FFFFFFFFFFFFFFFLL) + 16, a1);
      break;
    case 5uLL:
      v9 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = 2;

      v12 = v10;
      break;
    case 6uLL:
      v13 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v13;
      *(a1 + 8) = 0;
      v8 = 3;
LABEL_16:
      *(a1 + 16) = v8;
      break;
    case 7uLL:
      if (v3 == 0xE000000000000000)
      {
        *(a1 + 24) = &type metadata for SizeToFitDimensionSizer;
        *(a1 + 32) = &off_1F52898E0;
        *a1 = 0;
      }

      else if (v3 == 0xE000000000000008)
      {
        *(a1 + 24) = &type metadata for SizeToFitDimensionSizer;
        *(a1 + 32) = &off_1F52898E0;
        *a1 = 1;
      }

      else
      {
        *(a1 + 24) = &type metadata for FillDimensionSizer;
        *(a1 + 32) = &off_1F5287C98;
      }

      break;
    default:
      v4 = *(v3 + 16);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v4;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      break;
  }
}

uint64_t sub_1D793917C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79391DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_0_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlexBoxItemFlex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D793921C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_0_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7939288@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D793B71C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D7939408()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939440()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7939494()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D793963C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939674()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D79396E8()
{

  OUTLINED_FUNCTION_4_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D793972C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939764()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1D7944F10(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_1D79397B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_1D7944F10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939810()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  sub_1D7944F10(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939870()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_1D7944F10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D79398C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_1D7944F10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D793991C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939980()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79399B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7939A04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939A68()
{
  sub_1D79436D4(*(v0 + 16));
  sub_1D79436D4(*(v0 + 24));
  OUTLINED_FUNCTION_3_6();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939AF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7939B38()
{
  OUTLINED_FUNCTION_1_13();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939B6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939C44()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939C7C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7939CBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7939D00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7939D60()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7939DA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D7939E1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7939E60()
{
  OUTLINED_FUNCTION_1_13();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939E94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7939ED8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7939F20()
{

  OUTLINED_FUNCTION_4_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D7939F78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939FF4()
{

  v0 = OUTLINED_FUNCTION_0_28();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D793A100()
{

  OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D793A134()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D793A16C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D793A1A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D793A1DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D793A214()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D793A310()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D793A4BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D793A500()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D793A5B8()
{
  sub_1D7941034(*(v0 + 16));
  sub_1D7941034(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1D793AAB8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ColumnSystem(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t ColumnLayoutSize.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t sub_1D793ABF4(uint64_t a1)
{
  v2 = *v1;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v2);
  return sub_1D796CAF0();
}

uint64_t ColumnLayoutSize.description.getter()
{
  if (*v0)
  {
    return 0x6C6C616D53;
  }

  else
  {
    return 0x656772614CLL;
  }
}

unint64_t sub_1D793AC68()
{
  result = qword_1EC9D9E70;
  if (!qword_1EC9D9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnLayoutSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ColumnLayoutSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

void sub_1D793AECC(uint64_t a2@<X8>)
{
  sub_1D793AF00();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1D793AF34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D793B408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D793AF60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D793B5E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D793AF88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B754(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D793AFB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793F5A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D793AFE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B60C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D793B020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D793B75C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D793B054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D793B7B0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D793B0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B7EC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_1D793B110@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D793B12C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D793B834(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D793B274(uint64_t a1)
{
  v2 = sub_1D792FEA4(&qword_1EC9D9ED8, type metadata accessor for UIContentSizeCategory, &unk_1D796D6EC);
  v3 = sub_1D792FEA4(&qword_1EC9D9EE0, type metadata accessor for UIContentSizeCategory, &unk_1D796D68C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1D793B3C0(uint64_t *a2@<X8>)
{
  v3 = sub_1D796C2E0();

  *a2 = v3;
}

uint64_t sub_1D793B40C(uint64_t a1)
{
  v2 = sub_1D792FEA4(&qword_1EE09C500, type metadata accessor for Key, &unk_1D796D8C0);
  v3 = sub_1D792FEA4(&qword_1EC9D9EF8, type metadata accessor for Key, &unk_1D796D814);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

double sub_1D793B510(uint64_t a1, uint64_t a2)
{
  sub_1D796C310();
  sub_1D796C320();

  return result;
}

uint64_t sub_1D793B564(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D796C310();
  v4 = v3;
  if (v2 == sub_1D796C310() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D796C990();
  }

  return v7 & 1;
}

uint64_t sub_1D793B69C(uint64_t a1, id *a2)
{
  v3 = sub_1D796C300();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D793B71C(uint64_t a1)
{
  sub_1D796C310();
  v1 = sub_1D796C2E0();

  return v1;
}

uint64_t sub_1D793B75C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 & a1;
  if (sub_1D796C5C0())
  {
    return 0;
  }

  *v1 = v3 & ~a1;
  return v4;
}

uint64_t sub_1D793B7B0(uint64_t a1)
{
  v2 = *v1 & a1;
  *v1 |= a1;
  if (sub_1D796C5C0())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D793B7FC(uint64_t a1)
{
  v1 = sub_1D796C310();
  v2 = MEMORY[0x1DA704760](v1);

  return v2;
}

uint64_t sub_1D793B834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StackBuilder.layer(block:)(void (*a1)(void))
{
  v4 = *(*v1 + 96);
  v10 = *(*v1 + 80);
  v11[0] = v10;
  v9 = v4;
  v11[1] = v4;
  type metadata accessor for ListBuilder(0, v11);
  v5 = sub_1D79375E0();
  a1();
  if (!v2)
  {
    type metadata accessor for StackLayer(0, v10, v9, v6);
    swift_beginAccess();
    v7 = sub_1D7951CA0(*(v5 + 16));

    sub_1D7951E18(v7);
  }
}

uint64_t StackBuilder.__deallocating_deinit()
{
  StackBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

double LayoutOptions.layoutMarginAdjuster.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  v5 = v1[26];
  v4 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  sub_1D793BBC4(v2);
  sub_1D793BBC4(v3);
  sub_1D793BBC4(v5);

  return sub_1D793BBC4(v4);
}

double sub_1D793BBC4(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D793BBD8(result);
  }

  return v1;
}

double sub_1D793BBD8(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t LayoutOptions.layoutGuideAdjuster.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 192), 0x49uLL);
  memcpy(a1, (v1 + 192), 0x49uLL);
  return sub_1D793BC64(__dst, &v4);
}

double LayoutOptions.scale.getter()
{
  v1 = *(v0 + 80);
  [v1 displayScale];
  if (v2 <= 0.0)
  {
    return 1.0;
  }

  [v1 displayScale];
  return result;
}

id LayoutOptions.makeCopy(layoutDirection:origin:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v10 = *(v3 + 144);
  OUTLINED_FUNCTION_4(a1, a2, a3);
  *(v6 + 136) = v4;
  *(v6 + 144) = v5;
  OUTLINED_FUNCTION_15(v6);
  v7 = vdupq_n_s64(0xF000000000000007);
  v8[12] = v7;
  v8[13] = v7;
  OUTLINED_FUNCTION_21_0(v8, v7);

  return v10;
}

double LayoutOptions.makeCopy(layoutDirection:origin:layoutMarginAdjuster:)@<D0>(unint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(v4 + 144);
  OUTLINED_FUNCTION_4(a2, a3, a4);
  *(v11 + 136) = v10;
  *(v11 + 144) = v9;
  OUTLINED_FUNCTION_15(v11);
  v12[12].n128_u64[0] = v6;
  v12[12].n128_u64[1] = v5;
  v12[13].n128_u64[0] = v8;
  v12[13].n128_u64[1] = v7;
  OUTLINED_FUNCTION_21_0(v12, vdupq_n_s64(0xF000000000000007));
  v13 = v9;
  sub_1D793BBC4(v6);
  sub_1D793BBC4(v5);
  sub_1D793BBC4(v8);

  return sub_1D793BBC4(v7);
}

uint64_t LayoutOptions.makeCopy(layoutDirection:origin:layoutGuideAdjuster:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  memcpy(__dst, a2, 0x49uLL);
  v11 = *(v5 + 80);
  v12 = *(v5 + 144);
  v13 = *(v5 + 184);
  v14 = *(v5 + 16);
  *a3 = *v5;
  *(a3 + 16) = v14;
  v15 = *(v5 + 48);
  *(a3 + 32) = *(v5 + 32);
  *(a3 + 48) = v15;
  *(a3 + 64) = *(v5 + 64);
  *(a3 + 80) = v11;
  *(a3 + 88) = *(v5 + 88);
  *(a3 + 104) = *(v5 + 104);
  *(a3 + 120) = a4;
  *(a3 + 128) = a5;
  *(a3 + 136) = a1;
  *(a3 + 144) = v12;
  *(a3 + 152) = *(v5 + 152);
  *(a3 + 168) = *(v5 + 168);
  *(a3 + 184) = v13;
  memcpy((a3 + 192), a2, 0x49uLL);
  v16 = v11;
  v17 = v12;
  return sub_1D793BC64(__dst, &v19);
}

uint64_t static LayoutOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7 = *(a1 + 120);
  v6 = *(a1 + 128);
  v8 = *(a1 + 136);
  v34 = *(a1 + 152);
  v35 = *(a1 + 160);
  v36 = *(a1 + 168);
  v37 = *(a1 + 176);
  v29 = *(a1 + 184);
  memcpy(__dst, (a1 + 192), 0x49uLL);
  v10 = *(a2 + 64);
  v9 = *(a2 + 72);
  v40 = *(a1 + 88);
  v41 = *(a1 + 104);
  v38 = *(a2 + 88);
  v39 = *(a2 + 104);
  v12 = *(a2 + 120);
  v11 = *(a2 + 128);
  v13 = *(a2 + 136);
  v30 = *(a2 + 152);
  v31 = *(a2 + 160);
  v32 = *(a2 + 168);
  v33 = *(a2 + 176);
  v14 = *(a2 + 184);
  memcpy(v47, (a2 + 192), 0x49uLL);
  v15 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) == 0)
  {
    return v15 & 1;
  }

  if (v5 != v10)
  {
    return v15 & 1;
  }

  if (v4 != v9)
  {
    return v15 & 1;
  }

  sub_1D793C9A0();
  v15 = 0;
  if ((sub_1D796C670() & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v40, v38), vceqq_f64(v41, v39)), xmmword_1D796D960)) & 0xF) != 0 || v7 != v12 || v6 != v11 || v8 != v13)
  {
    return v15 & 1;
  }

  v16 = sub_1D796C310();
  v18 = v17;
  if (v16 == sub_1D796C310() && v18 == v19)
  {

    if (v34 != v30 || v35 != v31 || v36 != v32 || v37 != v33)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v21 = sub_1D796C990();

  v15 = 0;
  if (v21)
  {
    v22 = v34 == v30 && v35 == v31;
    v23 = v22 && v36 == v32;
    if (v23 && v37 == v33)
    {
LABEL_36:
      if (sub_1D791FF3C(v29, v14))
      {
        memcpy(v43, (a1 + 192), 0x49uLL);
        memcpy(__src, (a2 + 192), 0x49uLL);
        sub_1D793BC64(__dst, v45);
        sub_1D793BC64(v47, v45);
        v15 = static LayoutGuideAdjuster.== infix(_:_:)(v43, __src);
        memcpy(v44, __src, 0x49uLL);
        sub_1D793C9E4(v44);
        memcpy(v45, v43, 0x49uLL);
        sub_1D793C9E4(v45);
        return v15 & 1;
      }

LABEL_38:
      v15 = 0;
    }
  }

  return v15 & 1;
}

uint64_t sub_1D793C23C()
{
  v0 = NodeKind.rawValue.getter();
  v2 = v1;
  v3 = NodeKind.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_5_0(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t sub_1D793C2CC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_6();
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_13(v7);
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_19(v6);
      goto LABEL_7;
    case 5:
      v8 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_17(v8);
LABEL_7:
      v4 = 0xEB00000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    case 2:
      OUTLINED_FUNCTION_7_0();
      break;
    case 3:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14();
      break;
    case 4:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_20();
      goto LABEL_14;
    case 5:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_18();
LABEL_14:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16(v3, v1, v2);
  }

  return v10 & 1;
}

uint64_t sub_1D793C3DC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_6();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_11();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_13(v6);
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_19(v7);
      goto LABEL_8;
    case 6:
      v8 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_17(v8);
LABEL_8:
      v4 = 0xEB00000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    case 2:
      OUTLINED_FUNCTION_7_0();
      break;
    case 3:
      OUTLINED_FUNCTION_12();
      break;
    case 4:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14();
      break;
    case 5:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_20();
      goto LABEL_16;
    case 6:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_18();
LABEL_16:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16(v3, v1, v2);
  }

  return v10 & 1;
}

uint64_t sub_1D793C4FC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_11();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_6();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    case 2:
      OUTLINED_FUNCTION_12();
      break;
    case 3:
      OUTLINED_FUNCTION_7_0();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == 0xE900000000000074)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_16(v3, v1, v2);
  }

  return v6 & 1;
}

uint64_t sub_1D793C5CC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7827314;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7827314;
  switch(v4)
  {
    case 1:
      v5 = 0x7265766552776F72;
      v3 = 0xEA00000000006573;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6E6D756C6F63;
      break;
    case 3:
      v5 = 0x65526E6D756C6F63;
      v3 = 0xED00006573726576;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7265766552776F72;
      v6 = 0xEA00000000006573;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6E6D756C6F63;
      break;
    case 3:
      v2 = 0x65526E6D756C6F63;
      v6 = 0xED00006573726576;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_0(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D793C720(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656D617266;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656D617266;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_8() & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7892834;
      break;
    case 3:
      v5 = 0x6465626D65;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_9_0();
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7892834;
      break;
    case 3:
      v2 = 0x6465626D65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_0(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_1D793C824(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x6B636F6C62;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x6B636F6C62;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_0(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1D793C8B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x706172576F6ELL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1885434487;
    }

    else
    {
      v4 = 0x6576655270617277;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000657372;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x706172576F6ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1885434487;
    }

    else
    {
      v2 = 0x6576655270617277;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB00000000657372;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_0(v4, a2, v2);
  }

  return v8 & 1;
}

unint64_t sub_1D793C9A0()
{
  result = qword_1EC9D9F00;
  if (!qword_1EC9D9F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9D9F00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate25LayoutEdgeInsetAdjustmentO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate25LayoutEdgeInsetAdjustmentOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x7A)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D793CA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static DimensionSizerTrait.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t DimensionSizerTrait.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1DA704EF0](v2);
  }

  else
  {
    MEMORY[0x1DA704EF0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1DA704F00](v3);
  }
}

uint64_t DimensionSizerTrait.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D796CAC0();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA704EF0](v3);
  }

  else
  {
    MEMORY[0x1DA704EF0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA704F00](v4);
  }

  return sub_1D796CAF0();
}

uint64_t sub_1D793CC74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D796CAC0();
  if (v3 == 1)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA704EF0](v4);
  }

  else
  {
    MEMORY[0x1DA704EF0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA704F00](v5);
  }

  return sub_1D796CAF0();
}

unint64_t sub_1D793CCF4()
{
  result = qword_1EC9D9F08;
  if (!qword_1EC9D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F08);
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

uint64_t getEnumTagSinglePayload for DimensionSizerTrait(uint64_t a1, int a2)
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

uint64_t sub_1D793CD80(uint64_t a1)
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

uint64_t Space.description.getter()
{
  v1 = *v0;
  MEMORY[0x1DA704750](0x286563617053, 0xE600000000000000);
  v4 = v0[10];
  sub_1D7922754(v4);
  type metadata accessor for Sizing(0, *(v1 + 168), *(v1 + 176), v2);
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7934DC0(v4);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D793D0C8(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  sub_1D7938D28(*v1);
  sub_1D7922754(v3);
  sub_1D7922754(v5);
  sub_1D796C780();
  MEMORY[0x1DA704750](2647657, 0xE300000000000000);
  v13 = v4;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for Conditional(0, v7, v6, v8);
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D793D248(v13);
  MEMORY[0x1DA704750](0x203A6E656874202CLL, 0xE800000000000000);
  type metadata accessor for Sizing(0, v7, v6, v9);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_6(WitnessTable);
  sub_1D7934DC0(v3);
  v11 = MEMORY[0x1DA704750](0x203A65736C65202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_0_6(v11);
  sub_1D7934DC0(v5);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D793D248(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1D793D264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D793D2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1D793D308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D793D36C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 49))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 6)
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

uint64_t sub_1D793D3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D793D400(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D793D438(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D793D478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D793D4C4(void *a1, id a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
    case 5:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_1D793D554()
{
  v0 = sub_1D796C1E0();
  __swift_allocate_value_buffer(v0, qword_1EC9D9F10);
  v1 = __swift_project_value_buffer(v0, qword_1EC9D9F10);
  return sub_1D793D5A0(v1);
}

uint64_t sub_1D793D5A0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D794A5B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    sub_1D794A5B0(v4 > 1, v5 + 1, 1, v2);
    v3 = v14;
    v4 = *(v14 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  *(v3 + 8 * v5 + 32) = 0x4080F00000000000;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_1D794A5B0(v4 > 1, v5 + 2, 1, v3);
    v3 = v15;
  }

  *(v3 + 16) = v8;
  *(v3 + 8 * v7 + 32) = 0x4085400000000000;
  v9 = *(v3 + 24);
  if ((v5 + 3) > (v9 >> 1))
  {
    sub_1D794A5B0(v9 > 1, v5 + 3, 1, v3);
    v3 = v16;
  }

  *(v3 + 16) = v5 + 3;
  *(v3 + 8 * v8 + 32) = 0x4090E00000000000;
  *a1 = v3;
  v10 = *MEMORY[0x1E69D8798];
  v11 = sub_1D796C1E0();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t static Gutters.columnSystem.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9D9E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1D796C1E0();
  v3 = __swift_project_value_buffer(v2, qword_1EC9D9F10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1D793D918(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(a5 + 32);
  type metadata accessor for Node(0, *(*v5 + 168), *(*v5 + 176), a4);
  v14 = *(a5 + 16);
  v15 = *a5;
  *(v5 + 88) = sub_1D796C480();
  *(v5 + 80) = v10;
  *(v5 + 112) = *a2;
  *(v5 + 121) = *(a2 + 9);
  v12 = sub_1D796C480();
  swift_beginAccess();
  *(v5 + 88) = v12;

  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  v18 = 13;
  v16[0] = v15;
  v16[1] = v14;
  v17 = v11;

  return sub_1D79202C0(&v18, a3, a4, v16);
}

uint64_t sub_1D793DA38(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for Node(255, *(v2 + 168), *(v2 + 176), v3);
  sub_1D796C4F0();
  sub_1D796C460();
  return swift_endAccess();
}

double sub_1D793DAD8(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for Node(255, *(v2 + 168), *(v2 + 176), v3);
  sub_1D796C4F0();

  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  sub_1D796C4B0();
  swift_endAccess();

  return result;
}

double sub_1D793DBA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = v2[11];
  type metadata accessor for Node(0, *(v5 + 168), *(v5 + 176), v7);

  v8 = sub_1D796C430();
  for (i = v8; i != sub_1D796C4A0(); v8 = i)
  {
    v10 = sub_1D796C490();
    sub_1D796C450();
    if (v10)
    {
      v11 = *(v6 + 32 + 8 * v8);
    }

    else
    {
      v11 = sub_1D796C790();
    }

    sub_1D796C4E0();
    (*(*v11 + 144))(a1, a2);
  }

  return result;
}

uint64_t sub_1D793DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[10];
  v8 = v3[12];
  v9 = v3[13];
  v49 = a3;
  v10 = sub_1D7929258(v8, v9);
  v55 = v7;
  v11 = *(v6 + 168);
  v12 = *(v6 + 176);
  v14 = type metadata accessor for Sizing(0, v11, v12, v13);
  sub_1D79228AC(v14, v52);
  v15 = v53;
  v16 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v17 = *(v16 + 8);
  v50 = a1;
  v18 = v17(a1, a2, v10, v11, v12, v15, v16);
  if (!v51)
  {
    v51 = v18;
    v19 = v53;
    v20 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    (*(v20 + 16))(&v55, v50, a2, v10, v11, v12, v19, v20);
    v15 = v55;
    if ((SizerResult.isAmbiguous.getter() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v52);
      v52[0] = v15;
      v55 = v15;
      v23 = SizerResult.nonIntegral.getter();
      sub_1D79276B0(v23 & 1);
      OUTLINED_FUNCTION_1();
      v24 = swift_beginAccess();
      v47 = &v47;
      v55 = v3[11];
      MEMORY[0x1EEE9AC00](v24);
      v48 = v15;
      type metadata accessor for Node(255, v11, v12, v25);
      sub_1D796C4F0();

      OUTLINED_FUNCTION_0_7();
      swift_getWitnessTable();
      v26 = v48;
      v27 = sub_1D796C390();

      v55 = v26;
      v28 = v51;
      v29 = OUTLINED_FUNCTION_2_0();
      sub_1D793E16C(v30, v31, v32, v33, v34, v35, v29, v36, v37, v38);
      OUTLINED_FUNCTION_1();
      v39 = v26;
      v15 = swift_allocObject();
      type metadata accessor for NodeRepositioning(0, v11, v12, v40);
      v41 = swift_allocObject();
      v42 = v27;
      v43 = v41;
      v41[2] = v3;
      v41[3] = v42;
      v41[4] = v39;
      v41[5] = v28;
      sub_1D792EC4C();
      OUTLINED_FUNCTION_2_0();
      *(v15 + 16) = sub_1D7928004(v44, v45, v46, v43);
      swift_retain_n();
      return v15;
    }

    sub_1D7930964();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 6;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v15;
}

CGFloat sub_1D793E16C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, double a7, double a8, double a9, CGFloat a10)
{
  v12 = v11;
  v79 = a6;
  v102 = a3;
  v88 = a1;
  v89 = a2;
  v19 = *v10;
  v20 = sub_1D796C180();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v86 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  LODWORD(v87) = *(v10 + 113) > 1u;
  v23 = *(v19 + 168);
  v85 = v10;
  v24 = *(v19 + 176);
  v26 = type metadata accessor for Cursor(255, v23, v24, v25);
  v84 = sub_1D796C1C0();
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = a8;
  *(v27 + 32) = a9;
  *(v27 + 40) = a10;
  *(v27 + 48) = v88;
  *(v27 + 56) = v87;
  *(v27 + 64) = v22;
  v87 = v22;

  v80 = v26;
  sub_1D793ED20();
  v86 = sub_1D796C1B0();
  v84 = type metadata accessor for LayoutResult(0, v23, v24, v28);
  v101 = sub_1D796C1F0();
  v82 = v23;
  v83 = v24;
  type metadata accessor for Node(0, v23, v24, v29);
  v30 = sub_1D796C430();
  *&v96[0] = v30;
  if (v30 != sub_1D796C4A0())
  {
    v32 = 0;
    while (1)
    {
      v33 = sub_1D796C490();
      sub_1D796C450();
      if (v33)
      {
        v34 = *(a4 + 32 + 8 * v30);
      }

      else
      {
        v34 = sub_1D796C790();
      }

      sub_1D796C4E0();
      sub_1D793EDFC(v85, v86, v88, v87);
      v35 = (*(*v34 + 152))();
      if (v12)
      {

        swift_getErrorValue();
        if ((sub_1D79309B8(v100) & 1) == 0)
        {
          swift_willThrow();
LABEL_39:

LABEL_40:

          return a10;
        }

        v12 = 0;
        v32 = 1;
      }

      else
      {
        v36 = v34[2];
        v37 = v34[3];
        v91[0] = v35;
        v97[0] = v36;
        v97[1] = v37;
        sub_1D796C270();

        sub_1D796C290();
      }

      v38 = sub_1D796C4A0();
      v30 = *&v96[0];
      if (*&v96[0] == v38)
      {
        v31 = v87;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }
  }

  v31 = v87;
LABEL_14:
  v97[0] = v31;
  if (SizerResult.shouldResize.getter() & 1) != 0 || (v97[0] = v31, (SizerResult.shouldPostProcess.getter()))
  {
LABEL_16:
    sub_1D7930964();
    swift_allocError();
    *v40 = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 6;
    swift_willThrow();
    goto LABEL_40;
  }

  type metadata accessor for FlexBoxNode(0, v82, v83, v39);
  v99 = sub_1D796C200();
  v41 = v85;
  swift_beginAccess();
  v42 = v41[11];

  v43 = sub_1D796C430();
  v98 = v43;
  if (v43 != sub_1D796C4A0())
  {
    v81 = v101;
    do
    {
      v59 = sub_1D796C490();
      sub_1D796C450();
      if (v59)
      {
        v60 = *(v42 + 32 + 8 * v43);
      }

      else
      {
        v60 = sub_1D796C790();
      }

      sub_1D796C4E0();
      v61 = *(v60 + 24);
      v97[0] = *(v60 + 16);
      v97[1] = v61;

      sub_1D796C280();

      v62 = *&v96[0];
      if ((~*&v96[0] & 0xF000000000000007) != 0)
      {
        sub_1D793EF74(*&v96[0], &v99, v82, v83);
        if (v12)
        {

          sub_1D793F384(v62);

          goto LABEL_40;
        }

        sub_1D793F384(v62);
      }

      else
      {
      }

      v63 = sub_1D796C4A0();
      v43 = v98;
    }

    while (v98 != v63);
  }

  v84 = &v78;
  v45 = v99;
  *&v96[0] = v99;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v82;
  sub_1D796C4F0();

  swift_getWitnessTable();
  v47 = sub_1D796C7B0();
  v96[0] = *(v85 + 7);
  *(v96 + 9) = *(v85 + 121);
  sub_1D7965D80(v47, v46, v83, a7, a8, a9, a10, v48);

  memcpy(v97, v88 + 128, 0x109uLL);
  memcpy(v96, v88 + 128, 0x109uLL);
  memcpy(v95, v88 + 400, sizeof(v95));
  v94 = v88[48];
  v93 = v87;
  sub_1D7923AE4(v97, v91);
  SizerResult.behavior.getter(v92);
  v90[0] = v92[0];
  v90[1] = v92[1];
  v91[0] = 0x8000000000000000;
  v49 = sub_1D7959AD8();
  v52 = sub_1D792B65C(v96, v95, &v94, v49, v50, v51, v90, v91, 0);

  v53 = sub_1D796C430();

  *&v96[0] = v53;
  while (1)
  {
    v54 = sub_1D796C4A0();
    v55 = *&v96[0];
    if (*&v96[0] == v54)
    {
      break;
    }

    v56 = sub_1D796C490();
    sub_1D796C450();
    if (v56)
    {
      v57 = *(v45 + 32 + 8 * v55);
    }

    else
    {
      v57 = sub_1D796C790();
    }

    sub_1D796C4E0();
    a10 = *(v57 + 16);

    v58 = sub_1D794BD90();
    if (v12)
    {

      goto LABEL_39;
    }

    a10 = v58;

    sub_1D7927B8C(MEMORY[0x1E69E7CD0]);
  }

  v64 = v87;
  *&v96[0] = v87;
  v103.origin.x = Cursor.absoluteFrame.getter();
  SizerResult.postProcess(frame:nonIntegral:)(v103, 0);
  if (v65)
  {
    goto LABEL_39;
  }

  sub_1D792C9F8();
  a10 = v67;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  LOBYTE(v91[0]) = *(v52 + 48);
  *&v96[0] = v64;
  v74 = SizerResult.metadata.getter();
  v75 = v85[12];
  v76.value._countAndFlagsBits = v85[13];
  v104.origin.x = a10;
  v104.origin.y = v69;
  v104.size.width = v71;
  v77 = v74;
  v104.size.height = v73;
  LayoutContext.set(frame:direction:metadata:for:)(v104, v91, *(&v75 - 1), v76);

  sub_1D7927B8C(v79);

  return a10;
}

uint64_t sub_1D793EBB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = (a1 + 128);
  type metadata accessor for Cursor(0, *(*a1 + 80), *(*a1 + 88), a4);
  memcpy(__dst, v9, 0x109uLL);
  memcpy(v20, v9, 0x109uLL);
  memcpy(v19, (a1 + 400), sizeof(v19));
  v18 = a2 & 1;
  v17 = a3;
  sub_1D7923AE4(__dst, v15);
  SizerResult.behavior.getter(&v16);
  v15[0] = 0x8000000000000000;
  v10 = sub_1D7959AD8();
  result = sub_1D792B65C(v20, v19, &v18, v10, v11, v12, &v14, v15, 0);
  *a5 = result;
  return result;
}

uint64_t sub_1D793ED20()
{
  sub_1D796C180();
  sub_1D793F3F4(&qword_1EE09C578, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1D793F39C(0);
  sub_1D793F3F4(&qword_1EE09C550, sub_1D793F39C, MEMORY[0x1E69E6328]);
  return sub_1D796C720();
}

uint64_t sub_1D793EDFC(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(a1 + 112) == 1)
  {
    sub_1D796C1A0();
    return __dst[0];
  }

  else
  {
    type metadata accessor for Cursor(0, *(*a1 + 168), *(*a1 + 176), a4);
    memcpy(__dst, a3 + 128, 0x109uLL);
    memcpy(v16, a3 + 128, 0x109uLL);
    memcpy(v15, a3 + 400, sizeof(v15));
    v14 = a3[48];
    v13 = a4;
    sub_1D7923AE4(__dst, v11);
    SizerResult.behavior.getter(&v12);
    v11[0] = 0x8000000000000000;
    v7 = sub_1D7959AD8();
    return sub_1D792B65C(v16, v15, &v14, v7, v8, v9, &v10, v11, 0);
  }
}

void sub_1D793EF74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    type metadata accessor for LayoutResult(0, a3, a4, a4);

    v9 = sub_1D796C430();
    for (i = v9; ; v9 = i)
    {
      if (v9 == sub_1D796C4A0())
      {

        return;
      }

      v10 = sub_1D796C490();
      sub_1D796C450();
      if (v10)
      {
        v11 = *(v8 + 32 + 8 * v9);
      }

      else
      {
        v11 = sub_1D796C790();

        swift_unknownObjectRelease();
      }

      sub_1D796C4E0();
      sub_1D793EF74(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = v12[3];
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];

    v21.origin.x = v13;
    v21.origin.y = v14;
    v21.size.width = v15;
    v21.size.height = v16;
    if (CGRectGetMaxY(v21) == 1.79769313e308)
    {
      sub_1D7930964();
      swift_allocError();
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *(v18 + 48) = 6;
      swift_willThrow();
    }

    else
    {
      type metadata accessor for FlexBoxNode(0, a3, a4, v17);

      sub_1D796A730(v19);
      sub_1D796C4F0();
      sub_1D796C4C0();
    }
  }
}

double sub_1D793F234()
{
  sub_1D7934DC0(*(v0 + 80));

  return result;
}

unint64_t *sub_1D793F26C()
{
  v0 = Node.deinit();
  sub_1D7934DC0(*(v0 + 80));

  return v0;
}

uint64_t sub_1D793F2AC()
{
  v0 = sub_1D793F26C();

  return MEMORY[0x1EEE6BDC0](v0, 137, 7);
}

double sub_1D793F384(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1D793F39C(uint64_t a1)
{
  if (!qword_1EE09C558)
  {
    sub_1D796C180();
    v1 = sub_1D796C4F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE09C558);
    }
  }
}

uint64_t sub_1D793F3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__C::UIRectCorner __swiftcall UIRectCorner.flipRightToLeft(bounds:)(__C::CGRect bounds)
{
  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) != 0)
    {
      v2.rawValue = 1;
      if ((v1 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v2.rawValue = 0;
    if ((v1 & 4) != 0)
    {
LABEL_12:
      v2.rawValue |= 8;
      goto LABEL_13;
    }

LABEL_7:
    if ((v1 & 8) == 0)
    {
      return v2;
    }

    return (v2.rawValue | 4);
  }

  if ((v1 & 2) == 0)
  {
    v2.rawValue = 2;
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2.rawValue = 3;
  if ((v1 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v1 & 8) != 0 && (v2.rawValue & 4) == 0)
  {
    return (v2.rawValue | 4);
  }

  return v2;
}

__C::UIRectCorner sub_1D793F578@<X0>(__C::UIRectCorner *a1@<X8>, double a2@<D0>)
{
  result.rawValue = UIRectCorner.flipRightToLeft(bounds:)(*&a2).rawValue;
  a1->rawValue = result.rawValue;
  return result;
}

TeaTemplate::Column_optional __swiftcall Column.init(_:)(Swift::Int a1)
{
  if (a1 == 18)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1 == 12)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 6)
  {
    v3 = 0;
  }

  *v1 = v3;
  return a1;
}

double Column.hSpacing(for:columnSystem:)(uint64_t a1, uint64_t a2)
{
  result = 28.0;
  if (*(a2 + 32) == 1 && *(a2 + 16) | *(a2 + 24) | *a2 | *(a2 + 8))
  {
    result = 16.0;
    if (!*v2)
    {
      return 10.0;
    }
  }

  return result;
}

double Column.vSpacing(for:columnSystem:)(id a1, uint64_t a2)
{
  if (*(a2 + 32) == 1 && *(a2 + 16) | *(a2 + 24) | *a2 | *(a2 + 8))
  {
    result = 16.0;
    if (!*v2)
    {
      return 10.0;
    }
  }

  else if (*v2)
  {
    if (*v2 == 1)
    {
      v5 = [a1 horizontalSizeClass];
      v6 = [a1 verticalSizeClass] == 1 && v5 == 1;
      result = 18.0;
      if (!v6)
      {
        return 20.0;
      }
    }

    else
    {
      return 30.0;
    }
  }

  else
  {
    return 18.0;
  }

  return result;
}

void Column.traits(for:viewportWidth:)(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = *v3;
  v8 = [a1 horizontalSizeClass];
  v9 = [a1 verticalSizeClass];
  if (v8 == 1 && v9 == 1)
  {
    v14 = 1;
  }

  else
  {
    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = a3 > 320.0;
    }

    if (v11)
    {
      if (v8 >= 3)
      {
        sub_1D793F858(0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D796EBB0;
        v13 = [a1 horizontalSizeClass];
        v15 = [a1 verticalSizeClass];
        sub_1D793F90C(0);
        sub_1D796C860();
        *(v12 + 56) = MEMORY[0x1E69E6158];
        *(v12 + 64) = sub_1D793F970();
        *(v12 + 32) = 0;
        *(v12 + 40) = 0xE000000000000000;
        MEMORY[0x1DA7045B0]("Unknown size class in %{public}@", 32, 2, v12, v13, v15);
      }

      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  *a2 = v14;
}

void sub_1D793F858(uint64_t a1)
{
  if (!qword_1EC9D9F28)
  {
    sub_1D793F8B0();
    v1 = sub_1D796C940();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9D9F28);
    }
  }
}

unint64_t sub_1D793F8B0()
{
  result = qword_1EC9D9F30;
  if (!qword_1EC9D9F30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9D9F30);
  }

  return result;
}

void sub_1D793F90C(uint64_t a1)
{
  if (!qword_1EC9D9F38)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9D9F38);
    }
  }
}

unint64_t sub_1D793F970()
{
  result = qword_1EC9D9F40;
  if (!qword_1EC9D9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F40);
  }

  return result;
}

uint64_t Column.maxWidth(for:)(void *a1)
{
  v2 = *v1;
  v3 = static ColumnSystem.specs(for:)(a1);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 24;
    v7 = *v4;
    v4 += 24;
    if (v7 == v2)
    {
      v8 = *(v6 - 1);

      *&result = v8 + -1.0;
      return result;
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t Column.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t Column.description.getter()
{
  v1 = 12849;
  if (*v0 != 1)
  {
    v1 = 14385;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 54;
  }
}

uint64_t ColumnSpec.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t ColumnSpec.description.getter()
{
  if (*v0)
  {
    return 0x676E696361705376;
  }

  else
  {
    return 0x676E696361705368;
  }
}

unint64_t sub_1D793FC44()
{
  result = qword_1EE09CCC0;
  if (!qword_1EE09CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09CCC0);
  }

  return result;
}

unint64_t sub_1D793FC9C()
{
  result = qword_1EC9D9F48;
  if (!qword_1EC9D9F48)
  {
    sub_1D793FCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F48);
  }

  return result;
}

void sub_1D793FCF4()
{
  if (!qword_1EC9D9F50)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9D9F50);
    }
  }
}

unint64_t sub_1D793FD48()
{
  result = qword_1EC9D9F58;
  if (!qword_1EC9D9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnSpec(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Frame.init(name:_:_:mapBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v6[10] = a3;
  v6[11] = v9;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a5;
  v6[15] = a6;
  v11 = 0;

  return Node.init(kind:identifier:)(&v11, a1, a2);
}

double sub_1D793FF5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v19 = SizerResult.metadata.getter();
  v20 = sub_1D792CC7C(a1, a2, a8, a9, a10, a11, a3, v19, MEMORY[0x1E69E7CD0]);
  if (!v11)
  {
    a11 = v20;
  }

  return a11;
}

uint64_t sub_1D79400A4()
{

  sub_1D7935088(v0[11]);

  v1 = v0[14];
  v2 = v0[15];

  return sub_1D7935140(v1, v2);
}

uint64_t Frame.description.getter()
{
  v1 = *v0;
  MEMORY[0x1DA704750](0x28656D617246, 0xE600000000000000);
  v4 = v0[11];
  sub_1D7922754(v4);
  type metadata accessor for Sizing(0, *(v1 + 168), *(v1 + 184), v2);
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7935088(v4);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

BOOL static SizerTrait.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a1 + 16) == 1)
  {
    if (!(*&v2 | *&v3))
    {
      if (*(a2 + 16))
      {
LABEL_12:
        if (!(*&v4 | *(a2 + 8)))
        {
          return 1;
        }
      }

      return 0;
    }

    if (!(*&v2 ^ 1 | *&v3))
    {
      if (*(a2 + 16))
      {
        *&v4 ^= 1uLL;
        goto LABEL_12;
      }

      return 0;
    }

    if (!*(a2 + 16))
    {
      return 0;
    }

    result = 1;
    if (*&v4 <= 1uLL)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return v3 == *(a2 + 8) && v2 == v4;
  }

  return result;
}

uint64_t SizerTrait.hashValue.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  sub_1D796CAC0();
  if (v5 == 1)
  {
    if (v3 | v4)
    {
      if (v3 ^ 1 | v4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1DA704EF0](v6);
  }

  else
  {
    OUTLINED_FUNCTION_0_8();
    sub_1D7940410(v1, v2);
  }

  return sub_1D796CAF0();
}

uint64_t sub_1D794036C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  sub_1D796CAC0();
  if (v6 == 1)
  {
    if (v4 | v5)
    {
      if (v4 ^ 1 | v5)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1DA704EF0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_0_8();
    sub_1D7940410(v2, v3);
  }

  return sub_1D796CAF0();
}

uint64_t sub_1D7940410(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1DA704F00](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1DA704F00](*&v3);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SizerTrait(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SizerTrait(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1D79404C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D79404E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

void sub_1D7940560(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = Cursor.remainingBounds.getter(v2, v3);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  if (qword_1EE09D488 != -1)
  {
    swift_once();
  }

  v7 = HIBYTE(word_1EE09D492);
  *(v2 + 48) = word_1EE09D492;
  *(v2 + 49) = v7;
  *a1 = v2;
}

uint64_t sub_1D7940648(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D7940688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D79406E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();
  return v7(a1, a2, a3);
}

void sub_1D7940790(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = v4;
  __swift_project_boxed_opaque_existential_1(v8, *(v8 + 24));
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();
  v14 = v13(v121, a1, a2, a3);
  if (v5)
  {
    return;
  }

  v22 = v121[0];
  v23 = *(v8 + 40);
  v24 = *(v8 + 48);
  if (!(v24 >> 6))
  {
    v41 = OUTLINED_FUNCTION_2_1(v14, v15, v16, v17, v18, v19, v20, v21, v116);
    v42 = OUTLINED_FUNCTION_3_0(v41);
    sub_1D79276B0(v42);
    Height = CGRectGetHeight(v123);
    v44 = sub_1D7940B04(Height * v23, v22, MEMORY[0x1E695F038]);
    v46 = OUTLINED_FUNCTION_1_2(v45);
    v54 = OUTLINED_FUNCTION_0_9(v46, v47, v48, v49, v50, v51, v52, v53, v118, v121[0]);
    OUTLINED_FUNCTION_6_0(v54);
    v56 = v55;
    goto LABEL_6;
  }

  if (v24 >> 6 == 1)
  {
    v25 = OUTLINED_FUNCTION_2_1(v14, v15, v16, v17, v18, v19, v20, v21, v116);
    v26 = OUTLINED_FUNCTION_3_0(v25);
    sub_1D79276B0(v26);
    Width = CGRectGetWidth(v122);
    v28 = sub_1D7940B04(Width * v23, v22, MEMORY[0x1E695F000]);
    v30 = OUTLINED_FUNCTION_1_2(v29);
    v38 = OUTLINED_FUNCTION_0_9(v30, v31, v32, v33, v34, v35, v36, v37, v117, v121[0]);
    OUTLINED_FUNCTION_6_0(v38);
    v40 = v39;
LABEL_26:
    v57 = swift_allocObject();
    *(v57 + 16) = v6;
    *(v57 + 24) = v7;
    *(v57 + 32) = v40;
    *(v57 + 40) = v28;
    goto LABEL_27;
  }

  v58 = OUTLINED_FUNCTION_2_1(v14, v15, v16, v17, v18, v19, v20, v21, v116);
  v59 = OUTLINED_FUNCTION_3_0(v58);
  sub_1D79276B0(v59);
  CGRectGetWidth(v124);
  v60 = 0.0;
  OUTLINED_FUNCTION_4_0();
  v69 = 0.0;
  if (!v70)
  {
    v71 = OUTLINED_FUNCTION_2_1(v61, v62, v63, v64, v65, v66, v67, v68, v119);
    v72 = OUTLINED_FUNCTION_3_0(v71);
    sub_1D79276B0(v72);
    v69 = CGRectGetWidth(v125);
  }

  v73 = OUTLINED_FUNCTION_2_1(v61, v62, v63, v64, v65, v66, v67, v68, v119);
  v74 = OUTLINED_FUNCTION_3_0(v73);
  sub_1D79276B0(v74);
  CGRectGetHeight(v126);
  OUTLINED_FUNCTION_4_0();
  if (v70)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    switch(*&v23)
    {
      case 1:
        v88 = 1.33333333;
        goto LABEL_17;
      case 2:
        v88 = 0.75;
        goto LABEL_17;
      case 3:
        v88 = 1.77777778;
        goto LABEL_17;
      case 4:
        v88 = 1.6;
        goto LABEL_17;
      default:
        v83 = v69;
        v84 = v60;
        if (v60 <= v69)
        {
          goto LABEL_19;
        }

        v84 = v60;
        break;
    }

    goto LABEL_20;
  }

  v85 = OUTLINED_FUNCTION_2_1(v75, v76, v77, v78, v79, v80, v81, v82, v120);
  v86 = OUTLINED_FUNCTION_3_0(v85);
  sub_1D79276B0(v86);
  v87 = CGRectGetHeight(v127);
  v60 = v87;
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_16:
  v88 = v23;
LABEL_17:
  v84 = v60 * v88;
  if (v60 > v69)
  {
    goto LABEL_20;
  }

  v83 = v69 / v88;
LABEL_19:
  if (v84 > v69)
  {
LABEL_20:
    if (v69 <= v84)
    {
      v69 = v84;
    }

    v128.origin.x = Cursor.remainingBounds.getter(v75, v76);
    v90 = CGRectGetWidth(v128);
    if (v69 >= v90)
    {
      v40 = v90;
    }

    else
    {
      v40 = v69;
    }

    v91 = OUTLINED_FUNCTION_1_2(v89);
    v99 = OUTLINED_FUNCTION_0_9(v91, v92, v93, v94, v95, v96, v97, v98, v120, v121[0]);
    OUTLINED_FUNCTION_6_0(v99);
    v28 = v100;
    goto LABEL_26;
  }

  if (v60 > v83)
  {
    v103 = v60;
  }

  else
  {
    v103 = v83;
  }

  v129.origin.x = Cursor.remainingBounds.getter(v75, v76);
  v105 = CGRectGetHeight(v129);
  if (v103 >= v105)
  {
    v56 = v105;
  }

  else
  {
    v56 = v103;
  }

  v106 = OUTLINED_FUNCTION_1_2(v104);
  v114 = OUTLINED_FUNCTION_0_9(v106, v107, v108, v109, v110, v111, v112, v113, v120, v121[0]);
  OUTLINED_FUNCTION_6_0(v114);
  v44 = v115;
LABEL_6:
  v57 = swift_allocObject();
  *(v57 + 16) = v6;
  *(v57 + 24) = v7;
  *(v57 + 32) = v44;
  *(v57 + 40) = v56;
LABEL_27:
  if (qword_1EE09D478 != -1)
  {
    swift_once();
  }

  v101 = word_1EE09D480;
  v102 = HIBYTE(word_1EE09D480);

  *(v57 + 48) = v101;
  *(v57 + 49) = v102;
  *a4 = v57;
}

double sub_1D7940B04(double a1, uint64_t a2, double (*a3)(uint64_t, uint64_t))
{
  v5 = SizerResult.nonIntegral.getter();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  sub_1D79276B0(v6);
  a3(v7, v8);
  OUTLINED_FUNCTION_4_0();
  if (v9 != v10)
  {
    v11 = SizerResult.nonIntegral.getter();
    v12 = OUTLINED_FUNCTION_3_0(v11);
    sub_1D79276B0(v12);
    v15 = a3(v13, v14);
    if (v15 > a1)
    {
      return v15;
    }
  }

  return a1;
}

uint64_t sub_1D7940BC0()
{
  MEMORY[0x1DA704750](0x69746172206E696DLL, 0xEA0000000000286FLL);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t DimensionSizing.description.getter(uint64_t a1, __n128 a2)
{
  v3 = *v2;
  switch(*v2 >> 61)
  {
    case 1uLL:
      v4 = 0x694664656C616373;
      v5 = 0xEC00000028646578;
      goto LABEL_15;
    case 2uLL:
      v19 = 0;
      v20 = 0xE000000000000000;
      MEMORY[0x1DA704750](0x28736E6D756C6F63, 0xE800000000000000, a2);
      sub_1D796C860();
      goto LABEL_17;
    case 3uLL:
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = 0x28747265766E69;
      v20 = 0xE700000000000000;
      v8.n128_f64[0] = sub_1D7941004(v7);
      v10 = DimensionSizing.description.getter(v9, v8);
      MEMORY[0x1DA704750](v10);

      MEMORY[0x1DA704750](41, 0xE100000000000000);
      sub_1D7941034(v7);
      return v19;
    case 4uLL:
      sub_1D7924F60((v3 & 0x1FFFFFFFFFFFFFFFLL) + 16, &v19);
      MEMORY[0x1DA704750](0x2872657A6973, 0xE600000000000000);
      sub_1D7940FA4();
      sub_1D796C860();
      MEMORY[0x1DA704750](41, 0xE100000000000000);
      v6 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v19);
      return v6;
    case 5uLL:
      v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D796C780();

      v19 = 0x7274654D746E6F66;
      v20 = 0xEB00000000286369;
      v13 = [v12 description];
      v14 = sub_1D796C310();
      v16 = v15;

      MEMORY[0x1DA704750](v14, v16);

      MEMORY[0x1DA704750](8236, 0xE200000000000000);
      goto LABEL_16;
    case 6uLL:
      v4 = 0x61746E6563726570;
      v5 = 0xEB00000000286567;
      goto LABEL_15;
    case 7uLL:
      if (v3 == 0xE000000000000008)
      {
        v11 = 0xD000000000000011;
      }

      else
      {
        v11 = 1819044198;
      }

      if (v3 == 0xE000000000000000)
      {
        return 0x69466F54657A6973;
      }

      else
      {
        return v11;
      }

    default:
      v4 = 0x286465786966;
      v5 = 0xE600000000000000;
LABEL_15:
      v19 = v4;
      v20 = v5;
LABEL_16:
      v17 = sub_1D796C510();
      MEMORY[0x1DA704750](v17);

LABEL_17:
      MEMORY[0x1DA704750](41, 0xE100000000000000);
      return v19;
  }
}

unint64_t sub_1D7940FA4()
{
  result = qword_1EE09D1F8[0];
  if (!qword_1EE09D1F8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE09D1F8);
  }

  return result;
}

double sub_1D7941004(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

double sub_1D7941034(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

double DimensionSizing.init(floatLiteral:)@<D0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  v4 = swift_allocObject();
  result = a2;
  *(v4 + 16) = a2;
  *a1 = v4;
  return result;
}

double DimensionSizing.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  result = a1;
  *(v4 + 16) = a1;
  *a2 = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate15DimensionSizingO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D7941138(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

uint64_t sub_1D794118C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D79411EC(unint64_t *result, uint64_t a2)
{
  if (a2 < 7)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ColumnSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColumnSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D794127C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  memcpy(__dst, a1 + 50, sizeof(__dst));
  if (sub_1D792C4B8(__dst) == 1)
  {
    sub_1D7930964();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0;
    *(v8 + 48) = 6;
    return swift_willThrow();
  }

  v10 = swift_beginAccess();
  v11 = a1[83];
  v12 = a1[84];
  v13 = a1;
  Cursor.remainingBounds.getter(v10, v14);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = v15;
    if (v7)
    {
      v17 = dbl_1D796F208[*&v5];
    }

    else
    {
      v17 = v5;
    }

    v18 = (__dst[6] * v6 + __dst[10] * (v6 - 1)) / v17;
    result = swift_allocObject();
    v13 = result;
    *(result + 16) = v11;
    *(result + 24) = v12;
    *(result + 32) = v16;
    *(result + 40) = v18;
    if (qword_1EE09D478 == -1)
    {
      goto LABEL_8;
    }
  }

  result = swift_once();
LABEL_8:
  v19 = HIBYTE(word_1EE09D480);
  *(v13 + 48) = word_1EE09D480;
  *(v13 + 49) = v19;
  *a2 = v13;
  return result;
}

uint64_t sub_1D794143C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1D796C780();

  strcpy(v8, "columnRowSpan(");
  HIBYTE(v8[1]) = -18;
  v3 = sub_1D796C930();
  MEMORY[0x1DA704750](v3);

  MEMORY[0x1DA704750](8236, 0xE200000000000000);
  if (v2 == 1)
  {
    v4 = 0xE300000000000000;
    v5 = 3226161;
    switch(v1)
    {
      case 1:
        v5 = 3357236;
        break;
      case 2:
        v5 = 3422771;
        break;
      case 3:
        v4 = 0xE400000000000000;
        v5 = 960116273;
        break;
      case 4:
        v4 = 0xE500000000000000;
        v5 = 0x30313A3631;
        break;
      default:
        break;
    }
  }

  else
  {
    v5 = sub_1D796C510();
    v4 = v6;
  }

  MEMORY[0x1DA704750](v5, v4);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v8[0];
}

uint64_t storeEnumTagSinglePayload for ColumnRowSpanSizer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t EmbedFactoryCursor.adjustFrameBlock.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

double sub_1D7941618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v31 = a3;
  v32 = a7;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v29 - v25;
  sub_1D7941854(a1, a6, &v29 - v25, a10, a11, a12, a13, a14, a15);
  if (!v15)
  {
    v33 = a6;
    sub_1D7936940(a1, v29, v31, &v33, v32, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v30 + 8))(v26, AssociatedTypeWitness);
  }

  return a15;
}

uint64_t sub_1D7941854@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  if (a5 == a9 && a6 == a10)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_1D794C600(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v14 = a3;
    return sub_1D793636C(a2, &v14, a4, a7, a8, a9, a10);
  }
}

uint64_t sub_1D79419D8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  v3 = v2;

  sub_1D7936E54(v0[11]);

  v4 = *(*v0 + 240);
  OUTLINED_FUNCTION_1_3();
  v6 = *(v5 + 200);
  v7 = *(v1 + 208);
  v11 = *(v3 + 168);
  v8 = *(v3 + 184);
  v12 = *(v3 + 184);
  v13 = v8;
  v14 = v6;
  v15 = v7;
  v16 = v7;
  type metadata accessor for EmbedFactory.Context(0, &v11);
  OUTLINED_FUNCTION_0_0();
  (*(v9 + 8))(v0 + v4);
  return sub_1D7935140(*(v0 + *(*v0 + 248)), *(v0 + *(*v0 + 248) + 8));
}

uint64_t EmbedFactory.description.getter()
{
  v1 = *v0;
  sub_1D796C780();
  MEMORY[0x1DA704750](0x6361466465626D45, 0xED00003C79726F74);
  v2 = sub_1D796CB50();
  MEMORY[0x1DA704750](v2);

  MEMORY[0x1DA704750](10302, 0xE200000000000000);
  v5 = v0[11];
  sub_1D7922754(v5);
  type metadata accessor for Sizing(0, *(v1 + 168), *(v1 + 192), v3);
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7936E54(v5);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7941C5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1D7941C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7941D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v28 = *(v7 + 84);
  v29 = v6;
  if (v28 > v6)
  {
    v6 = *(v7 + 84);
  }

  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v5 + 64) + v12;
  v18 = a1;
  if (a2 <= v11)
  {
LABEL_27:
    if (v29 == v11)
    {
      v10 = v29;
      v16 = v4;
    }

    else
    {
      v18 = ((a1 + v17) & ~v12);
      if (v28 == v11)
      {
        v10 = v28;
        v16 = AssociatedTypeWitness;
      }

      else
      {
        v18 = ((v18 + v13 + v14) & ~v14);
      }
    }

    return __swift_getEnumTagSinglePayload(v18, v10, v16);
  }

  v19 = ((v13 + v14 + (v17 & ~v12)) & ~v14) + v15;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v22 < 2)
    {
LABEL_26:
      if (v11)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_26;
  }

LABEL_16:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v11 + (v25 | v23) + 1;
}

void sub_1D7942094(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v30 = v6;
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v7 + 80);
  v14 = *(v5 + 64) + v13;
  v15 = *(v7 + 64);
  v16 = *(v10 + 80);
  v17 = ((v15 + v16 + (v14 & ~v13)) & ~v16) + *(*(v9 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v12)
  {
    v21 = 0;
    v19 = a1;
    v20 = a2;
  }

  else
  {
    v19 = a1;
    v20 = a2;
    if (v17 <= 3)
    {
      v25 = ((a3 - v12 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  if (v12 >= v20)
  {
    v24 = ~v13;
    switch(v21)
    {
      case 1:
        v19[v17] = 0;
        if (v20)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&v19[v17] = 0;
        if (v20)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&v19[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (v20)
        {
LABEL_29:
          if (v30 == v12)
          {
            v28 = v19;
            v11 = v30;
            v9 = v4;
          }

          else
          {
            v28 = &v19[v14] & v24;
            if (v8 == v12)
            {
              v11 = v8;
              v9 = AssociatedTypeWitness;
            }

            else
            {
              v28 = (v28 + v15 + v16) & ~v16;
            }
          }

          __swift_storeEnumTagSinglePayload(v28, v20, v11, v9);
        }

        break;
    }
  }

  else
  {
    v22 = ~v12 + v20;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v17)
      {
        v27 = v22 & ~(-1 << v18);
        bzero(v19, v17);
        if (v17 == 3)
        {
          *v19 = v27;
          v19[2] = BYTE2(v27);
        }

        else if (v17 == 2)
        {
          *v19 = v27;
        }

        else
        {
          *v19 = v22;
        }
      }
    }

    else
    {
      bzero(v19, v17);
      *v19 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        v19[v17] = v23;
        break;
      case 2:
        *&v19[v17] = v23;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&v19[v17] = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1D7942428(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v23 = *(swift_getAssociatedTypeWitness() - 8);
  v24 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v25 = (*(v23 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D7941618(a1, a2, a3, v11 + v24, *(v11 + v25), *(v11 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v11 + ((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1D79425D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 32);
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  v11 = 6;
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return sub_1D79202C0(&v11, a1, a2, v9);
}

uint64_t sub_1D7942624(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43 = a1;
  v6 = *(*v3 + 168);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v38 - v8;
  v41 = *(v10 + 176);
  v12 = type metadata accessor for Dynamic.State(0, v6, v41, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v38 - v15;
  v17 = *(v7 + 16);
  v45 = a2;
  v18 = a2;
  v19 = v43;
  v17(v9, v18, v6, v14);
  v42 = a3;
  sub_1D7942B34(v19, v9, *a3, v16, v20);
  v21 = v3[10];

  v22 = v44;
  v23 = v21(v16);
  if (v22)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v28 = v23;
  v38[1] = v24;
  v38[2] = v25;
  v29 = v41;
  v30 = v42;
  v39 = v16;
  v40 = v13;
  v44 = v12;
  type metadata accessor for LayoutResult(0, v6, v41, v26);
  v48 = sub_1D796C200();
  type metadata accessor for Node(0, v6, v29, v31);

  v32 = sub_1D796C430();

  v47 = v32;
  while (1)
  {
    v33 = sub_1D796C4A0();
    v34 = v47;
    if (v47 == v33)
    {
      break;
    }

    v35 = sub_1D796C490();
    sub_1D796C450();
    if (v35)
    {
      v36 = *(v28 + 32 + 8 * v34);
    }

    else
    {
      v36 = sub_1D796C790();
    }

    sub_1D796C4E0();
    v46 = (*(*v36 + 152))(v19, v45, v30);
    sub_1D796C4F0();
    sub_1D796C4C0();
  }

  (*(v40 + 8))(v39, v44);

  v37 = swift_allocObject();
  *(v37 + 16) = v48;
  return v37 | 0x4000000000000000;
}

uint64_t sub_1D7942B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *a1;
  *a4 = a1;
  v9 = *(v8 + 80);
  v10 = type metadata accessor for Dynamic.State(0, v9, *(v8 + 88), a5);
  result = (*(*(v9 - 8) + 32))(&a4[*(v10 + 36)], a2, v9);
  *&a4[*(v10 + 40)] = a3;
  return result;
}

uint64_t Dynamic.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Dynamic.__deallocating_deinit()
{
  v0 = Dynamic.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1D7942DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Cursor(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for LayoutContext();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7942E48(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D7942F90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D7943184()
{
  result = qword_1EC9D9F60;
  if (!qword_1EC9D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F60);
  }

  return result;
}

uint64_t Embed<A, B, C, D>(name:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a5;
  v12 = *a4;
  v13 = *(*a5 + 168);
  v15[0] = *(*a3 + *MEMORY[0x1E69E77B0]);
  v15[1] = v13;
  v16 = a6;
  v17 = a7;
  v18 = *(v11 + 184);
  type metadata accessor for EmbedLayout(0, v15);
  *&v15[0] = v12;

  sub_1D7922754(v12);

  return sub_1D796B8CC(a1, a2, a3, v15, a5, 0, 0);
}

uint64_t MapEmbed<A, B, C, D>(name:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a5;
  v15 = *a4;
  v16 = *(*a5 + 184);
  v17 = *(*a5 + 192);
  v18 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v26 = a8;
  v27 = a9;
  v28 = v16;
  v29 = v17;
  v21 = *(v14 + 168);
  v22 = v18;
  v25[0] = v18;
  v25[1] = v21;
  type metadata accessor for EmbedLayout(0, v25);
  *&v25[0] = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 32) = v21;
  *(v19 + 48) = a8;
  *(v19 + 56) = a9;
  *(v19 + 64) = v16;
  *(v19 + 72) = v17;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;

  sub_1D7922754(v15);

  return sub_1D796B8CC(a1, a2, a3, v25, a5, sub_1D794348C, v19);
}

uint64_t Embed<A, B, C>(name:keyPath:sizing:context:)(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v25 = a5;
  v26 = a2;
  v27 = a1;
  v13 = (*a3 + *MEMORY[0x1E69E77B0]);
  v14 = v13[1];
  *&v29 = *v13;
  v15 = v29;
  *(&v29 + 1) = v14;
  *&v30 = a6;
  *(&v30 + 1) = a6;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v34 = a9;
  v16 = type metadata accessor for EmbedFactory.Context(0, &v29);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  v20 = *a4;
  *&v29 = v15;
  *(&v29 + 1) = v14;
  *&v30 = a6;
  *(&v30 + 1) = a7;
  v31 = v24;
  v32 = a9;
  type metadata accessor for EmbedFactory(0, &v29);
  v29 = 0u;
  v30 = 0u;
  LOBYTE(v31) = 1;
  v28 = v20;
  (*(v17 + 16))(v19, v25, v16);
  v21 = v26;

  sub_1D7922754(v20);
  return sub_1D7935408(v27, v21, &v29, a3, &v28, v19, 0, 0);
}

void sub_1D7943668(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

double sub_1D79436C0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D79436D4(result);
  }

  return v1;
}

double sub_1D79436D4(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

__n128 ColumnSystem.Options.columnSystem.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1D7943858@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1D7943888@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

TeaTemplate::ColumnSystem::Options::Traits sub_1D79438F4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ColumnSystem.Options.Traits.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7943934@<X0>(uint64_t *a1@<X8>)
{
  result = ColumnSystem.Options.Traits.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static ColumnSystem.Options.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) != LOBYTE(a2->f64[0]))
  {
    return 0;
  }

  v2 = a1[13].f64[0];
  v4 = a1[11];
  v3 = a1[12];
  v6 = a1[9];
  v5 = a1[10];
  v8 = a2[11];
  v7 = a2[12];
  v50 = a2[10];
  v49 = a2[9];
  v9 = a2[13].f64[0];
  if (LOBYTE(a1[2].f64[1]) == 1)
  {
    if (*&a1[1].f64[1] | *&a1->f64[1] | *&a1[1].f64[0] | *&a1[2].f64[0])
    {
      if ((LOBYTE(a2[2].f64[1]) & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_3_1();
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (!LOBYTE(a2[2].f64[1]))
      {
        return 0;
      }

      OUTLINED_FUNCTION_3_1();
      if (v38)
      {
        return 0;
      }
    }

    result = OUTLINED_FUNCTION_4_1();
    v25 = v39 == v40;
    v28 = v41 == v42;
    v37 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v43, v44), vceqq_f64(v45, v46))));
  }

  else
  {
    if (LOBYTE(a2[2].f64[1]))
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_4_1();
    v25 = v23 == v24;
    v28 = v26 == v27;
    v37 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v34, v33), vceqq_f64(v36, v35)), vuzp1q_s32(vceqq_f64(v29, v30), vceqq_f64(v31, v32)))));
  }

  if ((v37 & 1) != 0 && v14 && v25 && v28 && v12 == v13)
  {
    v47 = CGRectEqualToRect(*&v15, *&v19);
    v48 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v6, v49), vceqq_f64(v5, v50)), vuzp1q_s32(vceqq_f64(v4, v8), vceqq_f64(v3, v7))));
    v48.i8[0] = vminv_u8(v48);
    if (v2 == v9)
    {
      return v47 & v48.i32[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL static ColumnSystem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 32) == 1)
  {
    v6 = *&v2.f64[0] | *&v3.f64[0] | *&v3.f64[1] | *&v2.f64[1];
    v7 = vorrq_s8(v5, v4);
    v8 = vextq_s8(v7, v7, 8uLL).u64[0];
    v9 = vorr_s8(*v7.i8, v8) == 0;
    if (!*(a2 + 32))
    {
      v9 = 0;
    }

    v10 = vorr_s8(*v7.i8, v8) != 0;
    v11 = (*(a2 + 32) & 1) != 0 && v10;
    if (!v6)
    {
      return v9;
    }
  }

  else
  {
    v12 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4))));
    if (*(a2 + 32))
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return v11;
}

uint64_t ColumnSystem.description.getter()
{
  if (*(v0 + 32) == 1)
  {
    if (*(v0 + 8) | *v0 | *(v0 + 16) | *(v0 + 24))
    {
      return 1685217635;
    }

    else
    {
      return 0x746C7561666564;
    }
  }

  else
  {
    sub_1D796C780();
    MEMORY[0x1DA704750](0x69286D6F74737563, 0xEF203A737465736ELL);
    type metadata accessor for UIEdgeInsets(0);
    sub_1D796C860();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    return 0;
  }
}

unint64_t sub_1D7943D18()
{
  result = qword_1EC9D9F68;
  if (!qword_1EC9D9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F68);
  }

  return result;
}

unint64_t sub_1D7943D70()
{
  result = qword_1EC9D9F70[0];
  if (!qword_1EC9D9F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9D9F70);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7943DD8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7943DF4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[216])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t sub_1D7943E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D7943EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate9FontSizerV5AlignOyx_G(uint64_t a1)
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

uint64_t sub_1D7943F08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1D7943F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7943FB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 16);
  result = sub_1D7924DA0(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  *(a5 + 64) = v10;
  *(a5 + 65) = a4;
  return result;
}

uint64_t sub_1D794400C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = OUTLINED_FUNCTION_5_2();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  return (*(v9 + 8))(a1, a2, a3, *(v7 + 80), *(v7 + 88), v8, v9);
}

void sub_1D79440B8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v191 = a4;
  v12 = *a1;
  v14 = *(v7 + 24);
  v13 = *(v7 + 32);
  __swift_project_boxed_opaque_existential_1(v7, v14);
  v15 = (*(v13 + 16))(__src, a1, a2, a3, *(v12 + 80), *(v12 + 88), v14, v13);
  if (!v6)
  {
    v178 = a1;
    v18 = v191;
    v170 = a5;
    v19 = *__src;
    v20 = *(v7 + 48);
    v21 = *(v7 + 56);
    v22 = v7;
    switch(*(v7 + 64))
    {
      case 1:
        OUTLINED_FUNCTION_9_1(v15, v16, v17);
        v102 = *(a3 + 56);

        v103 = OUTLINED_FUNCTION_5_2();
        sub_1D792D5D0(v103, v104, v102);
        v106 = v105;
        v107 = swift_endAccess();
        if (v106)
        {
          v110 = OUTLINED_FUNCTION_5_2();
          sub_1D7944F10(v110, v111, 1u);
          OUTLINED_FUNCTION_4_2();
          v33 = swift_allocObject();
          v112 = OUTLINED_FUNCTION_0_12(v33);
          v120 = OUTLINED_FUNCTION_1_5(v112, v113, v114, v115, v116, v117, v118, v119, v164, v170, v178, __src[0]);
          v121(v120);
          OUTLINED_FUNCTION_6_2();
          v122 = swift_allocObject();
          OUTLINED_FUNCTION_2_4(v122, v123, v124, v125, v126, v127, v128, v129, v168, v175, v186);
          *(v13 + 104) = v106;
          *(v13 + 112) = v21;
          *(v13 + 120) = v187;
          v44 = sub_1D794500C;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_7_2(v107, v108, v109);
        if (*(v13 + 64))
        {
          goto LABEL_19;
        }

        v158 = OUTLINED_FUNCTION_5_2();
        v160 = 1;
        goto LABEL_21;
      case 2:
        OUTLINED_FUNCTION_4_2();
        v63 = swift_allocObject();
        v64 = OUTLINED_FUNCTION_0_12(v63);
        v72 = OUTLINED_FUNCTION_1_5(v64, v65, v66, v67, v68, v69, v70, v71, v164, v170, v178, __src[0]);
        v73(v72);
        OUTLINED_FUNCTION_6_2();
        v74 = swift_allocObject();
        OUTLINED_FUNCTION_3_2(v74, v75, v76, v77, v78, v79, v80, v81, v166, v173, v182);
        *(v7 + 120) = v183;
        v82 = sub_1D7944FAC;
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_4_2();
        v63 = swift_allocObject();
        v83 = OUTLINED_FUNCTION_0_12(v63);
        v91 = OUTLINED_FUNCTION_1_5(v83, v84, v85, v86, v87, v88, v89, v90, v164, v170, v178, __src[0]);
        v92(v91);
        OUTLINED_FUNCTION_6_2();
        v93 = swift_allocObject();
        OUTLINED_FUNCTION_3_2(v93, v94, v95, v96, v97, v98, v99, v100, v167, v174, v184);
        *(v7 + 120) = v185;
        v82 = sub_1D7944F28;
LABEL_9:
        *(v63 + 24) = v82;
        *(v63 + 32) = v7;
        v101 = v63 | 0x7000000000000000;
        goto LABEL_13;
      case 4:
        if (v20 | v21)
        {
          OUTLINED_FUNCTION_4_2();
          v33 = swift_allocObject();
          v45 = OUTLINED_FUNCTION_0_12(v33);
          v53 = OUTLINED_FUNCTION_1_5(v45, v46, v47, v48, v49, v50, v51, v52, v164, v170, v178, __src[0]);
          v54(v53);
          OUTLINED_FUNCTION_8_0();
          v55 = swift_allocObject();
          OUTLINED_FUNCTION_2_4(v55, v56, v57, v58, v59, v60, v61, v62, v165, v172, v180);
          *(v13 + 104) = v21;
          *(v13 + 112) = v181;
          v44 = sub_1D794505C;
          goto LABEL_12;
        }

        v131 = *(v7 + 40);
        [v131 ascender];
        v133 = v132;
        [v131 descender];
        v135 = v133 + fabs(v134);
        [v131 descender];
        v137 = fabs(v136);
        [v131 capHeight];
        v139 = v135 - (v137 + v138);
        OUTLINED_FUNCTION_4_2();
        v140 = swift_allocObject();
        *(v140 + 16) = v19;
        v148 = OUTLINED_FUNCTION_1_5(v140, v141, v142, v143, v144, v145, v146, v147, v164, v170, v178, __src[0]);
        v149(v148);
        OUTLINED_FUNCTION_8_0();
        v150 = swift_allocObject();
        OUTLINED_FUNCTION_2_4(v150, v151, v152, v153, v154, v155, v156, v157, v169, v176, v188);
        MEMORY[0x1E84E6068] = *&v139;
        MEMORY[0x1E84E6070] = v189;
        *(v140 + 24) = sub_1D7945080;
        *(v140 + 32) = 0x1E84E6000uLL;
        *v177 = v140 | 0x7000000000000000;

        break;
      default:
        OUTLINED_FUNCTION_9_1(v15, v16, v17);
        v23 = *(a3 + 56);

        v24 = OUTLINED_FUNCTION_5_2();
        sub_1D792D5D0(v24, v25, v23);
        v27 = v26;
        v28 = swift_endAccess();
        if (v27)
        {
          v31 = OUTLINED_FUNCTION_5_2();
          sub_1D7944F10(v31, v32, 0);
          OUTLINED_FUNCTION_4_2();
          v33 = swift_allocObject();
          v34 = OUTLINED_FUNCTION_0_12(v33);
          v42 = OUTLINED_FUNCTION_1_5(v34, v35, v36, v37, v38, v39, v40, v41, v164, v170, v178, __src[0]);
          v43(v42);
          OUTLINED_FUNCTION_6_2();
          v13 = swift_allocObject();
          *(v13 + 16) = *(v18 + 16);
          *(v13 + 32) = v21;
          memcpy((v13 + 40), __src, 0x42uLL);
          *(v13 + 112) = v27;
          *(v13 + 120) = v179;
          v44 = sub_1D7945034;
LABEL_12:
          *(v33 + 24) = v44;
          *(v33 + 32) = v13;
          v101 = v33 | 0x7000000000000000;
LABEL_13:
          *v171 = v101;

          v130 = v21;
        }

        else
        {
          OUTLINED_FUNCTION_7_2(v28, v29, v30);
          if (*(v13 + 64))
          {
LABEL_19:
            sub_1D7930964();
            swift_allocError();
            *v161 = v20;
            *(v161 + 8) = v21;
            *(v161 + 16) = 0u;
            *(v161 + 32) = 0u;
            *(v161 + 48) = 2;
            swift_willThrow();
          }

          else
          {
            v158 = OUTLINED_FUNCTION_5_2();
            v160 = 0;
LABEL_21:
            sub_1D7944F10(v158, v159, v160);
            v162 = swift_allocObject();
            *(v162 + 40) = v18;
            *(v162 + 48) = &off_1F52888C0;
            v163 = swift_allocObject();
            *(v162 + 16) = v163;
            (*(*(v18 - 8) + 16))(v163 + 16, v22, v18);

            *v170 = v162 | 0x2000000000000000;
          }
        }

        break;
    }
  }
}

double sub_1D7944678(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 0.0;
  v11.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v11))
  {
    v9.origin.x = v7;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    CGRectGetMinY(v9);
    v10.origin.x = v7;
    v10.origin.y = a2;
    v10.size.width = a3;
    v10.size.height = a4;
    return CGRectGetMinX(v10);
  }

  return v7;
}

double sub_1D7944754(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v14))
  {
    v12.origin.x = v10;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinY(v12);
    [a6 descender];
    v13.origin.x = v10;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    return CGRectGetMinX(v13);
  }

  return v10;
}

double sub_1D7944848(void *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (!CGRectEqualToRect(*&a2, v15))
  {
    [a1 ascender];
    [a1 descender];
    [a1 descender];
    [a1 capHeight];
    CGRectGetMinY(*(a7 + 16));
    v14.origin.x = v12;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    return CGRectGetMinX(v14);
  }

  return v12;
}

double sub_1D794497C(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a1;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v16))
  {
    CGRectGetMaxY(*(a6 + 16));
    v14.origin.x = v12;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetHeight(v14);
    [a7 descender];
    v15.origin.x = v12;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    return CGRectGetMinX(v15);
  }

  return v12;
}

double sub_1D7944A8C(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v14))
  {
    [a6 ascender];
    v12.origin.x = v10;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinY(v12);
    v13.origin.x = v10;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    return CGRectGetMinX(v13);
  }

  return v10;
}

double sub_1D7944B90(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v14))
  {
    [a6 descender];
    v12.origin.x = v10;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinY(v12);
    v13.origin.x = v10;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    return CGRectGetMinX(v13);
  }

  return v10;
}

uint64_t sub_1D7944CC8(uint64_t a1)
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x28746E6F66202B20, 0xE800000000000000);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  sub_1D7945104(v6, v7, v8);
  type metadata accessor for FontSizer.Align(0, *(a1 + 16), *(a1 + 24), v3);
  swift_getWitnessTable();
  sub_1D796C960();
  v4 = sub_1D7944F10(v6, v7, v8);
  MEMORY[0x1DA704750](41, 0xE100000000000000, v4);
  return 0;
}

unint64_t sub_1D7944DC0()
{
  v1 = *v0;
  result = 0x736142726568746FLL;
  switch(*(v0 + 16))
  {
    case 1:
      return result;
    case 2:
      v3 = 0x7265646E65637361;
      goto LABEL_9;
    case 3:
      v3 = 0x65646E6563736564;
LABEL_9:
      v6 = v3;
      if (v1)
      {
        v4 = 0x7463617274627573;
      }

      else
      {
        v4 = 0x676E69646461;
      }

      if (v1)
      {
        v5 = 0xEB00000000676E69;
      }

      else
      {
        v5 = 0xE600000000000000;
      }

      MEMORY[0x1DA704750](v4, v5);

      result = v6;
      break;
    case 4:
      if (*v0 == 0)
      {
        result = 0x7361427473726966;
      }

      else
      {
        result = 0x656E696C65736162;
      }

      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

double sub_1D7944F10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  sub_1D7944F10(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1D79450A8()
{
  result = qword_1EE09C598[0];
  if (!qword_1EE09C598[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE09C598);
  }

  return result;
}

uint64_t sub_1D7945104(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D7945134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7945170(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_1D79451B0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D79451F4(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7945220(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D7945260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}