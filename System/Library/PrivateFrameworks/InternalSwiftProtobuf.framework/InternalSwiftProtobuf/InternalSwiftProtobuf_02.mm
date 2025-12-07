void Google_Protobuf_Any.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t Google_Protobuf_Any.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AC51F990;
  if (qword_1ED6E3410 != -1)
  {
    swift_once();
  }

  *(a1 + 16) = qword_1ED6E4C40;
}

uint64_t static Google_Protobuf_Any._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB557B20 != -1)
  {
    swift_once();
  }

  v2 = unk_1EB557B30;
  v3 = qword_1EB557B38;
  v4 = unk_1EB557B40;
  *a1 = qword_1EB557B28;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t Google_Protobuf_Any.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_0_1();
    v9 = sub_1AC474690(v10);
    *(v4 + 16) = v9;
  }

  return sub_1AC47272C(v9, a1, a2, a3);
}

uint64_t sub_1AC47272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  while (1)
  {
    result = v9(a3, a4);
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1AC472864(a2, a1, a3, a4);
    }

    else if (result == 1)
    {
      sub_1AC4727D0(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1AC4727D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 336))(a2 + 16, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC472864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AC474398();
  v9 = v6;
  (*(a4 + 360))(&v8, a3, a4);
  return sub_1AC474608(v8, v9);
}

void Google_Protobuf_Any.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  sub_1AC472994(v3[2], a1, a2, a3);
  if (!v4)
  {
    sub_1AC4578F4(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    sub_1AC4513F8(v9, v8);
  }
}

void sub_1AC472994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC474E28();
  if (!v4)
  {
    swift_beginAccess();
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = *(a4 + 112);

      v11(v8, v9, 1, a3, a4);
    }

    v12 = sub_1AC474398();
    v14 = v13;
    v15 = sub_1AC516844(v12, v13);
    sub_1AC4513F8(v12, v14);
    if (!v15)
    {
      v16 = sub_1AC474398();
      v18 = v17;
      (*(a4 + 120))();
      sub_1AC4513F8(v16, v18);
    }
  }
}

uint64_t static Google_Protobuf_Any.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (v2 != v5 && (sub_1AC472EE4(v5) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1_1();
  sub_1AC4578F4(v6, v7);
  sub_1AC4578F4(v3, v4);
  v8 = OUTLINED_FUNCTION_1_1();
  v9 = MEMORY[0x1AC5B4070](v8);
  sub_1AC4513F8(v3, v4);
  v10 = OUTLINED_FUNCTION_1_1();
  sub_1AC4513F8(v10, v11);
  return v9 & 1;
}

uint64_t Google_Protobuf_Any.hashValue.getter()
{
  sub_1AC51F468();
  sub_1AC476370(v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC472C30(uint64_t a1)
{
  sub_1AC51F468();
  sub_1AC476370(v2);
  return sub_1AC51F4C8();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1AC472CA8(uint64_t a1)
{
  result = sub_1AC472CD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC472CD0()
{
  result = qword_1ED6E3428;
  if (!qword_1ED6E3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3428);
  }

  return result;
}

unint64_t sub_1AC472D24(uint64_t a1)
{
  *(a1 + 8) = sub_1AC472D54();
  result = sub_1AC472DA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC472D54()
{
  result = qword_1EB557B18;
  if (!qword_1EB557B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B18);
  }

  return result;
}

unint64_t sub_1AC472DA8()
{
  result = qword_1EB557F80;
  if (!qword_1EB557F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557F80);
  }

  return result;
}

unint64_t sub_1AC472E00()
{
  result = qword_1EB557F88;
  if (!qword_1EB557F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557F88);
  }

  return result;
}

uint64_t sub_1AC472E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1AC472E94(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AC472EE4(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v5 = v3 == *(a1 + 16) && v4 == *(a1 + 24);
  if (v5 || (OUTLINED_FUNCTION_10_1(), v6 = 0, (sub_1AC51F3D8() & 1) != 0))
  {
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    sub_1AC475114(v1 + 32, v20);
    if (v21 == 1)
    {
      sub_1AC458DF0(v20, v22);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      sub_1AC475114(a1 + 32, v20);
      if (v21 == 1)
      {
        sub_1AC458DF0(v20, v19);
        __swift_project_boxed_opaque_existential_1(v22, v23);
        DynamicType = swift_getDynamicType();
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        if (DynamicType == swift_getDynamicType())
        {
          v17 = v23;
          v18 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          v6 = (*(v18 + 88))(v19, v17, v18);
          __swift_destroy_boxed_opaque_existential_1(v19);
          __swift_destroy_boxed_opaque_existential_1(v22);
          return v6 & 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        sub_1AC476F40(v20);
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_1AC476F40(v20);
    }

    sub_1AC475114(v1 + 32, v20);
    if (!v21)
    {
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      sub_1AC475114(a1 + 32, v20);
      if (!v21)
      {
        v12 = v20[0];
        v13 = OUTLINED_FUNCTION_10_1();
        v14 = MEMORY[0x1AC5B4070](v13);
        v15 = OUTLINED_FUNCTION_10_1();
        sub_1AC4513F8(v15, v16);
        sub_1AC4513F8(v12, *(&v12 + 1));
        if (v14)
        {
LABEL_26:
          v6 = 1;
          return v6 & 1;
        }

LABEL_17:
        sub_1AC475114(v1 + 32, v20);
        if (v21 == 2)
        {
          OUTLINED_FUNCTION_3();
          swift_beginAccess();
          sub_1AC475114(a1 + 32, v20);
          if (v21 == 2)
          {
            v10 = sub_1AC486118();

            if (v10)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }
        }

        sub_1AC476F40(v20);
LABEL_23:
        v6 = 0;
        return v6 & 1;
      }

      v8 = OUTLINED_FUNCTION_10_1();
      sub_1AC4513F8(v8, v9);
    }

    sub_1AC476F40(v20);
    goto LABEL_17;
  }

  return v6 & 1;
}

uint64_t sub_1AC473190(void *a1, uint64_t a2, unint64_t a3, char *a4)
{
  v68 = a3;
  v55 = a2;
  v7 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = a4[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v64 = 1;
  if (!dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for _ProtoNameProviding))
  {
    sub_1AC4777D8();
    swift_allocError();
    *v28 = 4;
    swift_willThrow();

    return v12;
  }

  v54 = v4;
  v53[1] = v9;
  (*(v15 + 8))(&v59);
  *&v65 = MEMORY[0x1E69E7CC0];
  BYTE8(v65) = 0;
  BYTE9(v65) = v64;
  v66 = v59;
  *v67 = v60;
  *&v67[16] = 0;
  v67[24] = v10;
  v67[25] = v11;
  v67[26] = v12;
  v67[27] = v13;
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1AC45A44C(v18, &v65, v16, v17);
  v19 = v65;
  if ((BYTE9(v65) & 1) == 0)
  {
    v20 = BYTE8(v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v19 = v46;
    }

    v21 = *(v19 + 16);
    if (v21 >= *(v19 + 24) >> 1)
    {
      sub_1AC45A78C();
      v19 = v47;
    }

    *(v19 + 16) = v21 + 1;
    *(v19 + v21 + 32) = v20;
    *&v65 = v19;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC45A78C();
    v19 = v44;
  }

  v22 = *(v19 + 16);
  if (v22 >= *(v19 + 24) >> 1)
  {
    sub_1AC45A78C();
    v19 = v45;
  }

  *(v19 + 16) = v22 + 1;
  *(v19 + v22 + 32) = 34;
  *&v65 = v19;
  sub_1AC45FA3C(0x6570797440, 0xE500000000000000);
  sub_1AC45FE50(":", 2, 2);
  WORD4(v65) = 44;
  sub_1AC45AEA4(v55, v68);
  sub_1AC47782C(a1, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(v62, &v56);
    v23 = *(&v57 + 1);
    v24 = *&v58[0];
    __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
    LOBYTE(v62[0]) = v10;
    BYTE1(v62[0]) = v11;
    BYTE2(v62[0]) = v12;
    BYTE3(v62[0]) = v13;
    v25 = v54;
    v26 = (*(v24 + 8))(v62, v23, v24);
    if (v25)
    {
      v59 = v65;
      v60 = v66;
      v61[0] = *v67;
      *(v61 + 12) = *&v67[12];
      sub_1AC45A95C(&v59);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      return v12;
    }

    v32 = v26;
    v33 = v27;
    v34 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC45A78C();
      v34 = v50;
    }

    v35 = *(v34 + 16);
    v36 = *(v34 + 24) >> 1;
    v37 = v35 + 1;
    if (v36 <= v35)
    {
      sub_1AC45A78C();
      v34 = v51;
      v36 = *(v51 + 24) >> 1;
    }

    *(v34 + 16) = v37;
    *(v34 + v35 + 32) = 44;
    v38 = v35 + 2;
    if (v36 < v38)
    {
      sub_1AC45A78C();
      v34 = v52;
    }

    *(v34 + 16) = v38;
    *(v34 + v37 + 32) = 34;
    *&v65 = v34;
    sub_1AC45FA3C(0x65756C6176, 0xE500000000000000);
    sub_1AC45FE50(":", 2, 2);
    WORD4(v65) = 44;
    sub_1AC45FA3C(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    v12 = &v65;
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    sub_1AC477890(v62);
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    v31 = v54;
    (*(v30 + 72))(&v65, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, v29, v30);
    if (v31)
    {
      v59 = v65;
      v60 = v66;
      v61[0] = *v67;
      *(v61 + 12) = *&v67[12];
      sub_1AC45A95C(&v59);
      return v12;
    }
  }

  v39 = v65;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC45A78C();
    v39 = v48;
  }

  v40 = *(v39 + 16);
  if (v40 >= *(v39 + 24) >> 1)
  {
    sub_1AC45A78C();
    v39 = v49;
  }

  *(v39 + 16) = v40 + 1;
  *(v39 + v40 + 32) = 125;
  *&v65 = v39;
  WORD4(v65) = 44;
  v59 = v65;
  v60 = v66;
  v61[0] = *v67;
  *(v61 + 12) = *&v67[12];
  *&v62[0] = v39;

  sub_1AC4778F8(&v59, &v56);
  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC477788(&qword_1ED6E4338, MEMORY[0x1E69E6328]);
  v12 = sub_1AC51EE08();
  v42 = v41;

  if (v42)
  {
    v56 = v65;
    v57 = v66;
    v58[0] = *v67;
    *(v58 + 12) = *&v67[12];
    sub_1AC45A95C(&v56);
    sub_1AC45A95C(&v59);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC473878(uint64_t a1)
{

  sub_1AC466118(v1);
  v2 = &unk_1F2121720;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC45A78C();
    v2 = v5;
  }

  v3 = v2[2];
  if (v3 >= v2[3] >> 1)
  {
    sub_1AC45A78C();
    v2 = v6;
  }

  v2[2] = v3 + 1;
  *(v2 + v3 + 32) = 125;

  return sub_1AC473940(v2);
}

uint64_t sub_1AC473940(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  v8 = sub_1AC477788(qword_1ED6E3438, MEMORY[0x1E6969E08]);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1AC4773AC(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_1AC473A00(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[3] = MEMORY[0x1E6969080];
  v12[4] = MEMORY[0x1E6969078];
  v12[0] = a1;
  v12[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x1E6969080]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_1AC477424(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_1AC4773AC(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v8;
  }
}

void sub_1AC473B84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, uint64_t *a6@<X2>)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _CustomJSONCodable);
  if (v14)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x1EEE9AC00](v14);
    v16[2] = v12;
    v17 = v13;
    v18 = a2;
    v19 = &v23;
    sub_1AC48E5B4(sub_1AC476FC0, v16, a1);
    if (!v6)
    {
      sub_1AC47782C(a2, v22);
      v20 = v12;
      v21 = v13;
      a5[3] = a3;
      a5[4] = a4;
      __swift_allocate_boxed_opaque_existential_1(a5);

      Message.init(jsonString:extensions:options:)();
    }
  }

  else
  {
    v23 = sub_1AC473878(a1);
    v24 = v15;
    sub_1AC47782C(a2, v22);
    v20 = v12;
    v21 = v13;
    a5[3] = a3;
    a5[4] = a4;
    __swift_allocate_boxed_opaque_existential_1(a5);
    Message.init<A>(jsonUTF8Bytes:extensions:options:)();
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_1(a5);
    }
  }
}

void sub_1AC473D50(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  if (!result || a2 - result < 1)
  {
    return;
  }

  v73 = a6;
  sub_1AC47782C(a5, &v70);
  type metadata accessor for DoubleParser();
  v11 = swift_allocObject();
  *(v11 + 16) = swift_slowAlloc();
  *(v11 + 24) = 128;
  __src[0] = result;
  __src[1] = a2;
  __src[2] = 0;
  __src[3] = v11;
  __src[11] = a3;
  __src[4] = a3;
  LOBYTE(__src[5]) = a4 & 1;
  if (v71)
  {
    sub_1AC458DF0(&v70, &v66);
  }

  else
  {
    v68 = &protocol witness table for SimpleExtensionMap;
    v67 = &type metadata for SimpleExtensionMap;
    *&v66 = MEMORY[0x1E69E7CC8];
  }

  sub_1AC458DF0(&v66, &__src[6]);
  memcpy(__dst, __src, 0x60uLL);
  for (i = __dst[2]; ; __dst[2] = i)
  {
    v13 = __dst[0];
    v14 = __dst[1];
    v15 = __dst[1] - __dst[0];
    if (__dst[0])
    {
      v16 = __dst[1] - __dst[0];
    }

    else
    {
      v16 = 0;
    }

    v17 = i;
    if (__dst[0])
    {
LABEL_11:
      if (v15 == v17)
      {
        goto LABEL_98;
      }

      goto LABEL_14;
    }

    while (1)
    {
      if (!v17)
      {
        goto LABEL_97;
      }

LABEL_14:
      v18 = *(__dst[0] + v17);
      v19 = v18 > 0x20;
      v20 = (1 << v18) & 0x100002600;
      if (v19 || v20 == 0)
      {
        break;
      }

      if (i < 0 || v17 >= v16)
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        sub_1AC477660();
        swift_allocError();
        v55 = xmmword_1AC51FB50;
        goto LABEL_121;
      }

      __dst[2] = ++v17;
      if (__dst[0])
      {
        goto LABEL_11;
      }
    }

    if (__dst[0])
    {
      if (v15 == v17)
      {
        goto LABEL_98;
      }
    }

    else if (!v17)
    {
LABEL_97:
      v15 = 0;
      v13 = 0;
LABEL_98:
      if (a4)
      {
        goto LABEL_123;
      }

      goto LABEL_99;
    }

    v22 = v17;
    if (__dst[0])
    {
      goto LABEL_27;
    }

    while (1)
    {
      if (!v22)
      {
        goto LABEL_120;
      }

LABEL_30:
      v23 = *(__dst[0] + v22);
      if (v23 > 0x20 || ((1 << v23) & 0x100002600) == 0)
      {
        break;
      }

      if (v17 < 0 || v22 >= v16)
      {
        goto LABEL_127;
      }

      __dst[2] = ++v22;
      if (__dst[0])
      {
LABEL_27:
        if (v15 == v22)
        {
          goto LABEL_120;
        }

        goto LABEL_30;
      }
    }

    if (__dst[0])
    {
      if (v15 == v22)
      {
        goto LABEL_120;
      }
    }

    else if (!v22)
    {
      goto LABEL_120;
    }

    if (v23 != 34)
    {
      goto LABEL_128;
    }

    v25 = sub_1AC459B18();
    if (!v26)
    {
      goto LABEL_128;
    }

    v27 = v25;
    v28 = v26;
    v29 = __dst[2];
    v30 = __dst[2];
    if (v13)
    {
LABEL_45:
      if (v15 == v30)
      {
        goto LABEL_119;
      }

      goto LABEL_48;
    }

    while (1)
    {
      if (!v30)
      {
        goto LABEL_119;
      }

LABEL_48:
      v31 = *(v13 + v30);
      if (v31 > 0x20 || ((1 << v31) & 0x100002600) == 0)
      {
        break;
      }

      if (v29 < 0 || v30 >= v16)
      {
        __break(1u);
LABEL_130:

LABEL_131:
        sub_1AC477660();
        swift_allocError();
        *v56 = 0;
        v56[1] = 0;
LABEL_122:
        swift_willThrow();
LABEL_123:
        sub_1AC457DC4(__dst);
        return;
      }

      __dst[2] = ++v30;
      if (v13)
      {
        goto LABEL_45;
      }
    }

    if (v13)
    {
      if (v15 == v30)
      {
        goto LABEL_119;
      }
    }

    else if (!v30)
    {
LABEL_119:

LABEL_120:
      sub_1AC477660();
      swift_allocError();
      v55 = xmmword_1AC51FB60;
      goto LABEL_121;
    }

    v64 = v27;
    if (v31 != 58)
    {
      goto LABEL_130;
    }

    v65 = sub_1AC458F9C(v30, v13, v14);
    __dst[2] = v65;
    if (v64 == 0x65756C6176 && v28 == 0xE500000000000000)
    {
      break;
    }

    v34 = sub_1AC51F3D8();

    if (v34)
    {
      goto LABEL_133;
    }

    v35 = v65;
    if ((a4 & 1) == 0)
    {
      goto LABEL_118;
    }

    if (v13)
    {
LABEL_68:
      if (v15 == v35)
      {
        v35 = v15;
        goto LABEL_79;
      }

      goto LABEL_71;
    }

    while (v35)
    {
LABEL_71:
      v36 = *(v13 + v35);
      v19 = v36 > 0x20;
      v37 = (1 << v36) & 0x100002600;
      if (v19 || v37 == 0)
      {
        break;
      }

      if (v65 < 0 || v35 >= v16)
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      __dst[2] = ++v35;
      if (v13)
      {
        goto LABEL_68;
      }
    }

LABEL_79:
    sub_1AC4E61EC();
    if (v6)
    {
      goto LABEL_123;
    }

    v39 = __dst[0];
    if (!__dst[0])
    {
      goto LABEL_157;
    }

    v40 = __dst[2];
    if (__OFSUB__(__dst[2], v35))
    {
      goto LABEL_155;
    }

    sub_1AC456544(__dst[0] + v35, __dst[2] - v35);
    if (!v41)
    {
      goto LABEL_151;
    }

    v42 = __dst[1] - v39;
    if (v40 == __dst[1] - v39)
    {
      v43 = v40;
    }

    else
    {
      v43 = v40;
      while (1)
      {
        v44 = *(v39 + v43);
        v19 = v44 > 0x20;
        v45 = (1 << v44) & 0x100002600;
        if (v19 || v45 == 0)
        {
          break;
        }

        if (v40 < 0 || v43 >= v42)
        {
          goto LABEL_153;
        }

        __dst[2] = ++v43;
        if (v42 == v43)
        {
          goto LABEL_120;
        }
      }
    }

    if (v43 == v42)
    {
      goto LABEL_120;
    }

    if (*(v39 + v43) != 44)
    {
      goto LABEL_131;
    }

    i = sub_1AC458F9C(v43, v39, __dst[1]);
  }

LABEL_133:
  v57 = v65;
  if (!v13)
  {
LABEL_136:
    if (v57)
    {
      goto LABEL_137;
    }

LABEL_145:
    sub_1AC4E61EC();
    if (v6)
    {
      goto LABEL_123;
    }

    v13 = __dst[0];
    if (!__dst[0])
    {
      goto LABEL_158;
    }

    v15 = __dst[2];
    if (__OFSUB__(__dst[2], v57))
    {
      goto LABEL_156;
    }

    v61 = sub_1AC456544(__dst[0] + v57, __dst[2] - v57);
    if (v62)
    {
      v63 = v73;
      *v73 = v61;
      v63[1] = v62;

      if (a4)
      {
        goto LABEL_123;
      }

LABEL_99:
      v47 = __dst[1] - v13;
      if (v13)
      {
        v48 = __dst[1] - v13;
      }

      else
      {
        v48 = 0;
      }

      v49 = v15;
      if (!v13)
      {
        goto LABEL_105;
      }

LABEL_103:
      if (v47 == v49)
      {
        goto LABEL_123;
      }

      while (1)
      {
        v50 = *(v13 + v49);
        v19 = v50 > 0x20;
        v51 = (1 << v50) & 0x100002600;
        if (v19 || v51 == 0)
        {
          break;
        }

        if (v15 < 0 || v49 >= v48)
        {
          goto LABEL_126;
        }

        __dst[2] = ++v49;
        if (v13)
        {
          goto LABEL_103;
        }

LABEL_105:
        if (!v49)
        {
          goto LABEL_123;
        }
      }

      if (v13)
      {
        if (v47 == v49)
        {
          goto LABEL_123;
        }
      }

      else if (!v49)
      {
        goto LABEL_123;
      }

LABEL_118:
      sub_1AC4776B4();
      swift_allocError();
      *v53 = 1;
      goto LABEL_122;
    }

LABEL_151:
    sub_1AC477660();
    swift_allocError();
    v55 = xmmword_1AC51FB70;
LABEL_121:
    *v54 = v55;
    goto LABEL_122;
  }

  while (2)
  {
    if (v15 == v57)
    {
      v57 = v15;
      goto LABEL_145;
    }

LABEL_137:
    v58 = *(v13 + v57);
    v19 = v58 > 0x20;
    v59 = (1 << v58) & 0x100002600;
    if (v19 || v59 == 0)
    {
      goto LABEL_145;
    }

    if ((v65 & 0x8000000000000000) == 0 && v57 < v16)
    {
      __dst[2] = ++v57;
      if (v13)
      {
        continue;
      }

      goto LABEL_136;
    }

    break;
  }

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
}

uint64_t sub_1AC474398()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  sub_1AC475114(v0 + 32, &v26);
  if (!v28)
  {
    return sub_1AC473A00(v26, *(&v26 + 1));
  }

  if (v28 == 1)
  {
    sub_1AC458DF0(&v26, v22);
    v1 = v23;
    v2 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v3 = MEMORY[0x1E6969080];
    sub_1AC48E5EC(v25);
    LOBYTE(v19) = v25[0];
    Message.serializedBytes<A>(partial:options:)(1, &v19, v1, v3, v2, &protocol witness table for Data);
  }

  else
  {
    v5 = v26;
    v6 = v27;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    v7 = OUTLINED_FUNCTION_24();
    sub_1AC4D3E40(v7, v8);

    v9 = OUTLINED_FUNCTION_10_1();
    v11 = static Google_Protobuf_Any.messageType(forMessageName:)(v9, v10);
    v13 = v12;

    if (!v11)
    {

      return 0;
    }

    v21[4] = &protocol witness table for SimpleExtensionMap;
    v21[3] = &type metadata for SimpleExtensionMap;
    v21[0] = MEMORY[0x1E69E7CC8];
    v19 = *(&v5 + 1);
    v20 = v6;
    sub_1AC473B84(v5, v21, v11, v13, v22, &v19);

    __swift_destroy_boxed_opaque_existential_1(v21);
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = MEMORY[0x1E6969080];
    sub_1AC48E5EC(&v19);
    v18[0] = v19;
    Message.serializedBytes<A>(partial:options:)(1, v18, v14, v16, v15, &protocol witness table for Data);
  }

  v4 = v21[0];
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v4;
}

uint64_t sub_1AC474608(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = 0;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  sub_1AC477750(v4, v2 + 32);
  return swift_endAccess();
}

double sub_1AC474650(uint64_t a1)
{
  type metadata accessor for AnyMessageStorage();
  OUTLINED_FUNCTION_2();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  result = 0.0;
  *(v1 + 32) = xmmword_1AC51F990;
  *(v1 + 72) = 0;
  qword_1ED6E4C40 = v1;
  return result;
}

uint64_t sub_1AC474690(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = xmmword_1AC51F990;
  *(v1 + 72) = 0;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  sub_1AC475114(a1 + 32, v6);

  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  sub_1AC477750(v6, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1AC47476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    v9 = sub_1AC4D3E40(v6, v7);
    v11 = v10;

    if (v9 == (*(a3 + 24))(a2, a3) && v11 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1AC51F3D8();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void sub_1AC474864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v51 = a1;
  v9 = sub_1AC51F228();
  v49 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v50 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - v17;
  v19 = *a3;
  v20 = *(a3 + 8);
  v53 = a5;
  if ((sub_1AC47476C(v16, a4, a5) & 1) == 0)
  {
    v24 = sub_1AC4776B4();
    v25 = OUTLINED_FUNCTION_11(&type metadata for AnyUnpackError, v24);
    OUTLINED_FUNCTION_5_0(v25, v26);
    return;
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  sub_1AC475114(v5 + 32, &v63);
  if (v65)
  {
    if (v65 == 1)
    {
      sub_1AC458DF0(&v63, v60);
      sub_1AC47782C(v60, &v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v12, 0, 1, a4);
        v21 = v50;
        v22 = OUTLINED_FUNCTION_4_0();
        v23(v22);
        (*(v21 + 32))(v5, v12, a4);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v12, 1, 1, a4);
        (*(v49 + 8))(v12, v9);
        v35 = v61;
        v36 = v62;
        __swift_project_boxed_opaque_existential_1(v60, v61);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
        sub_1AC48E5EC(&v55);
        LOBYTE(v66) = v55;
        v38 = v54;
        Message.serializedBytes<A>(partial:options:)(1, &v66, v35, v37, v36, &protocol witness table for <A> [A]);
        if (!v38)
        {
          v66 = v57;
          sub_1AC450324(v52, &v57);
          *&v55 = 100;
          BYTE8(v55) = 0;
          Message.init<A>(serializedBytes:extensions:partial:options:)(&v66, &v57, 1, &v55, a4, v37, v53, &protocol witness table for <A> [A], v15);
          v39 = v50;
          v40 = OUTLINED_FUNCTION_4_0();
          v41(v40);
          (*(v39 + 32))(a4, v15, a4);
        }
      }

      v42 = v60;
    }

    else
    {
      v32 = v63;
      v33 = v64;
      sub_1AC450324(v52, &v55);
      v34 = v54;
      if (v56)
      {
        sub_1AC458DF0(&v55, &v57);
      }

      else
      {
        v59 = &protocol witness table for SimpleExtensionMap;
        v58 = &type metadata for SimpleExtensionMap;
        *&v57 = MEMORY[0x1E69E7CC8];
      }

      *&v55 = *(&v32 + 1);
      BYTE8(v55) = v33;
      sub_1AC473B84(v32, &v57, a4, v53, v60, &v55);
      if (!v34)
      {
        (*(v50 + 8))(v51, a4);

        __swift_destroy_boxed_opaque_existential_1(&v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
        swift_dynamicCast();
        return;
      }

      v42 = &v57;
    }

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v57 = v63;
    sub_1AC450324(v52, v60);
    *&v55 = v19;
    BYTE8(v55) = v20;
    v27 = OUTLINED_FUNCTION_22_0();
    sub_1AC4578F4(v27, v28);
    v29 = v54;
    Message.init<A>(serializedBytes:extensions:partial:options:)(&v57, v60, 1, &v55, a4, MEMORY[0x1E6969080], v53, &protocol witness table for Data, v18);
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_22_0();
      sub_1AC4513F8(v30, v31);
    }

    else
    {
      v43 = v50;
      v44 = OUTLINED_FUNCTION_4_0();
      v45(v44);
      v46 = OUTLINED_FUNCTION_22_0();
      sub_1AC4513F8(v46, v47);
      (*(v43 + 32))(a4, v18, a4);
    }
  }
}

uint64_t sub_1AC474E28()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  sub_1AC475114(v0 + 32, v23);
  if (!v25 || v25 == 1)
  {
    return sub_1AC476F40(v23);
  }

  v3 = v23[0];
  v4 = v23[1];
  v5 = v24;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();

  v6 = OUTLINED_FUNCTION_24();
  v8 = sub_1AC4D3E40(v6, v7);
  v10 = v9;

  v11 = static Google_Protobuf_Any.messageType(forMessageName:)(v8, v10);
  v13 = v12;

  if (v11)
  {
    v21[4] = &protocol witness table for SimpleExtensionMap;
    v21[3] = &type metadata for SimpleExtensionMap;
    v21[0] = MEMORY[0x1E69E7CC8];
    v19 = v4;
    v20 = v5;
    sub_1AC473B84(v3, v21, v11, v13, v22, &v19);
    if (v1)
    {

      __swift_destroy_boxed_opaque_existential_1(v21);
      v14 = sub_1AC476EEC();
      OUTLINED_FUNCTION_11(&type metadata for BinaryEncodingError, v14);
      *v15 = 0;
      swift_willThrow();
      return MEMORY[0x1AC5B4BA0](v1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v22);

      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {

    v16 = sub_1AC476EEC();
    v17 = OUTLINED_FUNCTION_11(&type metadata for BinaryEncodingError, v16);
    return OUTLINED_FUNCTION_5_0(v17, v18);
  }
}

uint64_t sub_1AC474FD4()
{

  sub_1AC476F40(v0 + 32);
  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC475054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC475090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AC4750DC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

void sub_1AC47514C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v8 = *(v4 + 24);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v9 = sub_1AC4D3E40(a1, a2);
  v11 = static Google_Protobuf_Any.messageType(forMessageName:)(v9, v10);
  v13 = v12;

  if (!v11)
  {
    v27 = sub_1AC477954();
    v28 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v27);
    OUTLINED_FUNCTION_5_0(v28, v29);
    return;
  }

  OUTLINED_FUNCTION_19_1();
  sub_1AC507264();
  if (v8)
  {
    return;
  }

  v15 = v14;
  v145 = v4;
  sub_1AC4779A8(a3, v153);
  *&__src[88] = 0;
  memset(&__src[104], 0, 32);
  sub_1AC4779A8(v153, __src);
  __src[96] = v15;
  __src[97] = 0;
  if (!dynamic_cast_existential_1_conditional(v11, v11, &protocol descriptor for _ProtoNameProviding))
  {
    v30 = sub_1AC477954();
    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v30);
    *v31 = 6;
    swift_willThrow();
    sub_1AC477A04(v153);
    sub_1AC477A04(__src);
    sub_1AC458E14(*&__src[104], *&__src[112], *&__src[120], *&__src[128]);
    return;
  }

  (*(v16 + 8))(v151);
  sub_1AC477A04(v153);
  sub_1AC458E14(*&__src[104], *&__src[112], *&__src[120], *&__src[128]);
  *&__src[120] = v151[1];
  *&__src[104] = v151[0];
  *&__src[136] = v11;
  *&__src[144] = v13;
  memcpy(__dst, __src, sizeof(__dst));
  if (v11 != &type metadata for Google_Protobuf_Any)
  {
    v32 = a3;
    v33 = *(v13 + 16);
    v154 = v11;
    v155 = v13;
    __swift_allocate_boxed_opaque_existential_1(v153);
    v33(v11, v13);
    v34 = v154;
    v35 = v155;
    __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
    (*(v13 + 64))(__dst, &type metadata for TextFormatDecoder, &off_1F211BCA0, v34, v35);
    sub_1AC47782C(v153, __src);
    __src[40] = 1;
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    sub_1AC477750(__src, v4 + 32);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v153);
    v99 = v32;
LABEL_186:
    sub_1AC477AFC(__dst, v99);
    sub_1AC4FA494();
    if ((v106 & 1) == 0)
    {
      v107 = sub_1AC477954();
      v108 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v107);
      OUTLINED_FUNCTION_5_0(v108, v109);
    }

    sub_1AC477AA8(__dst);
    return;
  }

  v143 = a3;
  if (qword_1ED6E3410 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED6E4C40;
  v18 = __dst[5];
  v19 = __dst[6];
  if (__dst[5] != __dst[6])
  {
    v20 = 1;
    v21 = 0x100002600;
    do
    {
      v22 = *v18;
      if (v22 > 0x23)
      {
        break;
      }

      if (((v20 << v22) & v21) != 0)
      {
        v23 = v18 + 1;
      }

      else
      {
        if (v22 != 35)
        {
          break;
        }

        v23 = v18 + 1;
        while (v23 != v19)
        {
          v25 = *v23++;
          v24 = v25;
          v26 = v25 == 10 || v24 == 13;
          if (v26)
          {
            goto LABEL_12;
          }
        }

        v23 = v19;
      }

LABEL_12:
      OUTLINED_FUNCTION_25(v23);
    }

    while (!v26);
  }

  if (v18 != v19 && *v18 == 91)
  {
    v36 = v18 + 1;
    __dst[5] = (v18 + 1);
    if (v18 + 1 == v19 || (*v36 & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      goto LABEL_215;
    }

    for (i = v18 + 2; ; ++i)
    {
      __dst[5] = i;
      if (i == v19)
      {
        break;
      }

      v38 = *i;
      v39 = (v38 - 58) > 0xFFFFFFF5 || (v38 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (!v39 && (v38 - 46) >= 2 && v38 != 95)
      {
        if (v38 != 93)
        {
          goto LABEL_215;
        }

        break;
      }
    }

    if (i == v19 || *i != 93)
    {
LABEL_215:
      v127 = sub_1AC477954();
      OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v127);
      *v128 = 0;
    }

    else
    {

      v116 = OUTLINED_FUNCTION_24();
      sub_1AC456544(v116, v117);
      if (v118)
      {
        OUTLINED_FUNCTION_25((i + 1));
        if (!v26)
        {
          v120 = 1;
          v121 = 0x100002600;
          do
          {
            v122 = *v119;
            if (v122 > 0x23)
            {
              break;
            }

            if (((v120 << v122) & v121) != 0)
            {
              v123 = v119 + 1;
            }

            else
            {
              if (v122 != 35)
              {
                break;
              }

              v123 = v119 + 1;
              while (v123 != v19)
              {
                v125 = *v123++;
                v124 = v125;
                if (v125 == 10 || v124 == 13)
                {
                  goto LABEL_202;
                }
              }

              v123 = v19;
            }

LABEL_202:
            OUTLINED_FUNCTION_25(v123);
          }

          while (!v26);
        }

        v131 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for AnyMessageStorage();
          OUTLINED_FUNCTION_2();
          v132 = swift_allocObject();
          sub_1AC474690(v17);
          v131 = v132;
        }

        OUTLINED_FUNCTION_19_1();
        sub_1AC47514C(v133, v134, v135);
        v100 = v131;
        if (v36)
        {
          sub_1AC477AA8(__dst);

LABEL_218:
          v129 = OUTLINED_FUNCTION_15_1();
          sub_1AC4513F8(v129, v130);

          return;
        }

        v99 = v143;
LABEL_185:
        *&__src[24] = &type metadata for Google_Protobuf_Any;
        v101 = sub_1AC472D54();
        *__src = xmmword_1AC51F990;
        *&__src[32] = v101;
        *&__src[16] = v100;
        v102 = OUTLINED_FUNCTION_15_1();
        sub_1AC4578F4(v102, v103);

        v104 = OUTLINED_FUNCTION_15_1();
        sub_1AC4513F8(v104, v105);

        __src[40] = 1;
        OUTLINED_FUNCTION_9();
        swift_beginAccess();
        sub_1AC477750(__src, v4 + 32);
        swift_endAccess();
        goto LABEL_186;
      }

      v136 = sub_1AC477954();
      OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v136);
      *v137 = 0;
    }

    swift_willThrow();
LABEL_217:
    sub_1AC477AA8(__dst);
    goto LABEL_218;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2();
    v40 = swift_allocObject();
    sub_1AC474690(v17);
    v17 = v40;
  }

  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2();
    v41 = swift_allocObject();
    sub_1AC474690(v17);
    v17 = v41;
  }

  v42 = OUTLINED_FUNCTION_15_1();
  sub_1AC474608(v42, v43);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2();
    v44 = swift_allocObject();
    sub_1AC474690(v17);
    v17 = v44;
  }

  v45 = __dst[13];
  v157 = __dst[14];
  v147 = __dst[16];
  v148 = __dst[15];
  v144 = v17;
  v146 = __dst[13];
LABEL_49:
  v46 = __dst[11];
  while (1)
  {
    if (v46 >= 1)
    {
      v47 = __dst[5];
      if (__dst[5] != __dst[6])
      {
        v48 = *__dst[5];
        if (v48 == 59 || v48 == 44)
        {
LABEL_54:
          ++v47;
LABEL_55:
          while (1)
          {
            __dst[5] = v47;
            if (v47 == __dst[6])
            {
              break;
            }

            v49 = *v47;
            if (v49 > 0x23)
            {
              break;
            }

            if (((1 << v49) & 0x100002600) != 0)
            {
              goto LABEL_54;
            }

            if (v49 != 35)
            {
              break;
            }

            ++v47;
            while (v47 != __dst[6])
            {
              v51 = *v47++;
              v50 = v51;
              if (v51 == 10 || v50 == 13)
              {
                goto LABEL_55;
              }
            }

            v47 = __dst[6];
          }
        }
      }
    }

    if (!v45)
    {
      goto LABEL_230;
    }

    *__src = v45;
    *&__src[8] = v157;
    v52 = v147;
    *&__src[16] = v148;
    *&__src[24] = v147;
    v53 = __dst[17];
    v54 = __dst[18];
    v55 = LOBYTE(__dst[12]);
    v56 = BYTE1(__dst[12]);

    v57 = sub_1AC5073AC(__src, v53, v54, v55 | (v56 << 8));
    LOBYTE(v54) = v58;

    if (v54)
    {
      v99 = v143;
      v100 = v144;
      v4 = v145;
      goto LABEL_185;
    }

    if (__OFADD__(v46++, 1))
    {
      __break(1u);
      goto LABEL_226;
    }

    __dst[11] = v46;
    if (v57 == 2)
    {
      break;
    }

    v45 = v146;
    if (v57 == 1)
    {
      OUTLINED_FUNCTION_9();
      swift_beginAccess();
      v60 = __dst[5];
      v61 = __dst[6];
      while (v60 != v61)
      {
        OUTLINED_FUNCTION_17();
        if (!v26 & v62)
        {
          break;
        }

        OUTLINED_FUNCTION_16_1();
        if (v26)
        {
          if (v63 != 35)
          {
            break;
          }

          ++v60;
          while (v60 != v61)
          {
            OUTLINED_FUNCTION_1_0();
            if (v26)
            {
              goto LABEL_75;
            }
          }

          v60 = v61;
        }

        else
        {
          ++v60;
        }

LABEL_75:
        __dst[5] = v60;
      }

      if (v60 == v61 || *v60 != 58)
      {
        goto LABEL_190;
      }

LABEL_85:
      v64 = (v60 + 1);
LABEL_86:
      while (1)
      {
        OUTLINED_FUNCTION_25(v64);
        if (v26)
        {
          break;
        }

        OUTLINED_FUNCTION_17();
        if (!v26 & v62)
        {
          break;
        }

        OUTLINED_FUNCTION_16_1();
        if (!v26)
        {
          goto LABEL_85;
        }

        if (v65 != 35)
        {
          break;
        }

        v64 = (v60 + 1);
        while (v64 != v61)
        {
          OUTLINED_FUNCTION_1_0();
          if (v26)
          {
            goto LABEL_86;
          }
        }

        v64 = v61;
      }

      while (v60 != v61)
      {
        OUTLINED_FUNCTION_17();
        if (!v26 & v62)
        {
          break;
        }

        OUTLINED_FUNCTION_16_1();
        if (v26)
        {
          if (v66 != 35)
          {
            break;
          }

          ++v60;
          while (v60 != v61)
          {
            OUTLINED_FUNCTION_1_0();
            if (v26)
            {
              goto LABEL_107;
            }
          }

          v60 = v61;
        }

        else
        {
          ++v60;
        }

LABEL_107:
        __dst[5] = v60;
      }

      if (v60 == v61 || (v67 = *v60, v67 != 34) && v67 != 39 || (OUTLINED_FUNCTION_26(v60), v69 = sub_1AC50A11C(v68), !v70))
      {
LABEL_190:
        v110 = sub_1AC477954();
        v111 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v110);
        OUTLINED_FUNCTION_5_0(v111, v112);
        swift_endAccess();
        goto LABEL_217;
      }

      *&v151[0] = v69;
      *(&v151[0] + 1) = v70;
      v71 = __dst[5];
      if (__dst[5] != v61)
      {
        while (1)
        {
          v72 = *v71;
          if (v72 != 39 && v72 != 34)
          {
LABEL_118:
            v70 = *(&v151[0] + 1);
            goto LABEL_119;
          }

          OUTLINED_FUNCTION_26(v71);
          v74 = sub_1AC50A11C(v73);
          if (!v75)
          {
            break;
          }

          MEMORY[0x1AC5B4340](v74);

          v71 = __dst[5];
          if (__dst[5] == v61)
          {
            goto LABEL_118;
          }
        }

        goto LABEL_190;
      }

LABEL_119:
      *(v144 + 16) = *&v151[0];
      *(v144 + 24) = v70;
      swift_endAccess();

LABEL_183:
      v45 = v146;
      goto LABEL_49;
    }
  }

  v52 = sub_1AC474398();
  v77 = v76;
  v78 = __dst[5];
  for (j = __dst[6]; v78 != j; __dst[5] = v78)
  {
    OUTLINED_FUNCTION_17();
    if (!v26 & v62)
    {
      break;
    }

    OUTLINED_FUNCTION_16_1();
    if (v26)
    {
      if (v80 != 35)
      {
        break;
      }

      ++v78;
      while (v78 != j)
      {
        OUTLINED_FUNCTION_1_0();
        if (v26)
        {
          goto LABEL_124;
        }
      }

      v78 = j;
    }

    else
    {
      ++v78;
    }

LABEL_124:
    ;
  }

  if (v78 == j || *v78 != 58)
  {
    goto LABEL_191;
  }

LABEL_135:
  ++v78;
LABEL_136:
  while (1)
  {
    __dst[5] = v78;
    if (v78 == j)
    {
      break;
    }

    OUTLINED_FUNCTION_17();
    if (!v26 & v62)
    {
      break;
    }

    OUTLINED_FUNCTION_16_1();
    if (!v26)
    {
      goto LABEL_135;
    }

    if (v81 != 35)
    {
      break;
    }

    ++v78;
    while (v78 != j)
    {
      OUTLINED_FUNCTION_1_0();
      if (v26)
      {
        goto LABEL_136;
      }
    }

    v78 = j;
  }

  while (v78 != j)
  {
    OUTLINED_FUNCTION_17();
    if (!v26 & v62)
    {
      break;
    }

    OUTLINED_FUNCTION_16_1();
    if (v26)
    {
      if (v82 != 35)
      {
        break;
      }

      ++v78;
      while (v78 != j)
      {
        OUTLINED_FUNCTION_1_0();
        if (v26)
        {
          goto LABEL_157;
        }
      }

      v78 = j;
    }

    else
    {
      ++v78;
    }

LABEL_157:
    __dst[5] = v78;
  }

  if (v78 == j)
  {
LABEL_191:
    v113 = sub_1AC477954();
    v114 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v113);
    OUTLINED_FUNCTION_5_0(v114, v115);
LABEL_192:
    sub_1AC474608(v52, v77);
    goto LABEL_217;
  }

  v141 = v77;
  v83 = *v78;
  if (v83 != 34 && v83 != 39)
  {
LABEL_226:
    v138 = sub_1AC477954();
    v139 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v138);
    OUTLINED_FUNCTION_5_0(v139, v140);
    v77 = v141;
    goto LABEL_192;
  }

  OUTLINED_FUNCTION_26(v78);
  v150[0] = 0;
  sub_1AC509AA4(v83, v150);
  v85 = v84;
  if (v150[0])
  {
    *__src = MEMORY[0x1AC5B40A0](v84);
    *&__src[8] = v86;
    sub_1AC476FE4(__src, __dst, v83);
    goto LABEL_176;
  }

  v87 = __dst[5];
  *__src = MEMORY[0x1AC5B4090](__dst[5], v84);
  *&__src[8] = v88;
  v89 = v85 + 1;
  if (!__OFADD__(v85, 1))
  {
    while (2)
    {
      __dst[5] = v87 + v89;
      while (1)
      {
LABEL_176:
        sub_1AC509980();
        if (__dst[5] == j || (v94 = *__dst[5], v94 != 39) && v94 != 34)
        {
          sub_1AC4513F8(v52, v141);
          sub_1AC474608(*__src, *&__src[8]);
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_26(__dst[5]);
        v149 = 0;
        sub_1AC509AA4(v94, &v149);
        v96 = v95;
        if ((v149 & 1) == 0)
        {
          break;
        }

        if (v95)
        {
          if (v95 <= 14)
          {
            if (v95 < 0)
            {
              goto LABEL_228;
            }

            v91 = 0;
            v92 = v142 & 0xF00000000000000 | (v96 << 48);
            v142 = v92;
          }

          else
          {
            sub_1AC51EBB8();
            swift_allocObject();
            v90 = sub_1AC51EB88();
            if (v96 >= 0x7FFFFFFF)
            {
              sub_1AC51EC18();
              v91 = swift_allocObject();
              *(v91 + 16) = 0;
              *(v91 + 24) = v96;
              v92 = v90 | 0x8000000000000000;
            }

            else
            {
              v91 = v96 << 32;
              v92 = v90 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v91 = 0;
          v92 = 0xC000000000000000;
        }

        *&v151[0] = v91;
        *(&v151[0] + 1) = v92;
        sub_1AC476FE4(v151, __dst, v94);
        v93 = v151[0];
        sub_1AC51EC98();
        sub_1AC4513F8(v93, *(&v93 + 1));
      }

      v87 = __dst[5];
      MEMORY[0x1AC5B4090](__dst[5], v95);
      sub_1AC51EC98();
      v97 = OUTLINED_FUNCTION_22_0();
      sub_1AC4513F8(v97, v98);
      v89 = v96 + 1;
      if (!__OFADD__(v96, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_228:
    __break(1u);
  }

  __break(1u);
LABEL_230:
  __break(1u);
}

void sub_1AC475F40(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  sub_1AC475114(v1 + 32, &v70);
  if (v72)
  {
    if (v72 == 1)
    {
      sub_1AC458DF0(&v70, v67);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
LABEL_4:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      v6 = v68;
      v7 = v69;
      v8 = __swift_project_boxed_opaque_existential_1(v67, v68);

      sub_1AC4774B8(a1, v8, v4, v5, v6, v7);
LABEL_5:

      __swift_destroy_boxed_opaque_existential_1(v67);
      return;
    }

    v31 = v70;
    v32 = v71;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v33 = *(v1 + 16);
    v34 = *(v2 + 24);

    v35 = sub_1AC4D3E40(v33, v34);
    v37 = v36;

    v38 = static Google_Protobuf_Any.messageType(forMessageName:)(v35, v37);
    v40 = v39;

    if (v38)
    {
      v66 = &protocol witness table for SimpleExtensionMap;
      *(&v65 + 1) = &type metadata for SimpleExtensionMap;
      *&v64 = MEMORY[0x1E69E7CC8];
      *&v63 = *(&v31 + 1);
      BYTE8(v63) = v32;
      sub_1AC473B84(v31, &v64, v38, v40, v67, &v63);

      __swift_destroy_boxed_opaque_existential_1(&v64);
      goto LABEL_4;
    }

    v42 = *(v2 + 16);
    v41 = *(v2 + 24);
    v43 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v43 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {

      sub_1AC502478(1uLL);
      OUTLINED_FUNCTION_14();
      sub_1AC45FE50(v44, v45, v46);
      sub_1AC5011C8(v42, v41);

      sub_1AC45A774();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_0_2();
    }

    sub_1AC473878(v31);

    sub_1AC466118(v47);
    sub_1AC45FE50("#json: ", 7, 2);
    v48 = OUTLINED_FUNCTION_10_1();
    sub_1AC50182C(v48, v49);
    sub_1AC45FE50("\n", 1, 2);
    v29 = OUTLINED_FUNCTION_10_1();
    goto LABEL_21;
  }

  v9 = v70;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = *(v2 + 24);

  v12 = sub_1AC4D3E40(v10, v11);
  v14 = v13;

  v15 = static Google_Protobuf_Any.messageType(forMessageName:)(v12, v14);
  v17 = v16;

  if (v15)
  {
    v63 = v9;
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v61 = 100;
    v62 = 0;
    v68 = v15;
    v69 = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
    v19 = OUTLINED_FUNCTION_12();
    sub_1AC4578F4(v19, v20);
    Message.init<A>(serializedBytes:extensions:partial:options:)(&v63, &v64, 1, &v61, v15, MEMORY[0x1E6969080], v17, &protocol witness table for Data, boxed_opaque_existential_1);
    v57 = *(v2 + 16);
    v58 = *(v2 + 24);

    sub_1AC4774B8(a1, boxed_opaque_existential_1, v57, v58, v15, v17);
    v59 = OUTLINED_FUNCTION_12();
    sub_1AC4513F8(v59, v60);
    goto LABEL_5;
  }

  v22 = *(v2 + 16);
  v21 = *(v2 + 24);
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    sub_1AC502478(1uLL);
    OUTLINED_FUNCTION_14();
    sub_1AC45FE50(v24, v25, v26);
    sub_1AC5011C8(v22, v21);

    sub_1AC45A774();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_0_2();
  }

  v27 = OUTLINED_FUNCTION_12();
  if (sub_1AC516844(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_12();
LABEL_21:
    sub_1AC4513F8(v29, v30);
    return;
  }

  sub_1AC502478(2uLL);
  OUTLINED_FUNCTION_14();
  sub_1AC45FE50(v50, v51, v52);
  v53 = OUTLINED_FUNCTION_12();
  sub_1AC50182C(v53, v54);
  sub_1AC45A774();
  OUTLINED_FUNCTION_21_0();
  v55 = OUTLINED_FUNCTION_12();
  sub_1AC4513F8(v55, v56);
  OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1AC476370(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    sub_1AC51EEB8();
  }

  return result;
}

uint64_t sub_1AC4763E8(char *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  sub_1AC475114(v4 + 32, v85);
  if (v86)
  {
    if (v86 == 1)
    {
      sub_1AC458DF0(v85, v82);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v13 = *(v4 + 16);
      v14 = *(v4 + 24);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
      }

      else
      {
        a1 = v83;
        v54 = v84;
        v55 = __swift_project_boxed_opaque_existential_1(v82, v83);
        v13 = sub_1AC4D5238(v55, 0xD000000000000013, 0x80000001AC52DE90, a1, v54);
        v14 = v56;
      }

      LOBYTE(v81) = v9;
      BYTE1(v81) = v10;
      BYTE2(v81) = v11;
      BYTE3(v81) = v12;
      sub_1AC473190(v82, v13, v14, &v81);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v82);

        return a1;
      }

      OUTLINED_FUNCTION_20();
      __swift_destroy_boxed_opaque_existential_1(v82);
LABEL_38:

      return a1;
    }

    v33 = *&v85[0];
    sub_1AC45A78C();
    v35 = v34;
    v37 = *(v34 + 16);
    v36 = *(v34 + 24);
    v38 = v36 >> 1;
    v39 = v37 + 1;
    if (v36 >> 1 <= v37)
    {
      OUTLINED_FUNCTION_2_0(v36);
      sub_1AC45A78C();
      v35 = v66;
      v38 = *(v66 + 24) >> 1;
    }

    *(v35 + 16) = v39;
    *(v35 + v37 + 32) = 123;
    LOWORD(v79[1]) = 256;
    if (v38 < (v37 + 2))
    {
      sub_1AC45A78C();
      v35 = v67;
    }

    *(v35 + 16) = v37 + 2;
    OUTLINED_FUNCTION_8(v35, v35 + v39);
    OUTLINED_FUNCTION_14();
    sub_1AC45FE50(v40, v41, v42);
    LOWORD(v79[1]) = 44;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v43 = *(v4 + 16);
    v44 = *(v4 + 24);

    sub_1AC45AEA4(v43, v44);

    if (*(v33 + 16))
    {
      sub_1AC45FE50(",", 1, 2);
      sub_1AC466118(v33);
    }

    else
    {
    }

    v57 = v79[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_6_0();
      sub_1AC45A78C();
      v57 = v68;
    }

    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    if (v59 >= v58 >> 1)
    {
      OUTLINED_FUNCTION_2_0(v58);
      sub_1AC45A78C();
      v57 = v69;
    }

    *(v57 + 16) = v59 + 1;
    *(v57 + v59 + 32) = 125;
    v81 = v57;

    sub_1AC51EE18();
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    v60 = OUTLINED_FUNCTION_7_0(&qword_1ED6E4338);
    OUTLINED_FUNCTION_27_0(v60);
    OUTLINED_FUNCTION_20();

    if (v8)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  else
  {
    v16 = v85[0];
    if (!sub_1AC516844(*&v85[0], *(&v85[0] + 1)))
    {
      v87 = *(&v16 + 1);
      v76 = v2;
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      a1 = *(v4 + 24);

      v45 = OUTLINED_FUNCTION_24();
      v47 = sub_1AC4D3E40(v45, v46);
      v49 = v48;

      static Google_Protobuf_Any.messageType(forMessageName:)(v47, v49);
      OUTLINED_FUNCTION_20();

      if (a1)
      {
        v50 = v47;
        v75 = v47;
        v51 = v87;
        v80[0] = v16;
        v80[1] = v87;
        memset(v79, 0, 40);
        v77 = 100;
        v78 = 0;
        v83 = *(&v16 + 1);
        v84 = v50;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
        v74 = v16;
        sub_1AC4578F4(v16, v51);
        v53 = v76;
        Message.init<A>(serializedBytes:extensions:partial:options:)(v80, v79, 1, &v77, *(&v16 + 1), MEMORY[0x1E6969080], v75, &protocol witness table for Data, boxed_opaque_existential_1);
        if (v53)
        {
          sub_1AC4513F8(v74, v51);
          __swift_deallocate_boxed_opaque_existential_1(v82);
        }

        else
        {
          v63 = v74;
          v64 = *(v4 + 16);
          v65 = *(v4 + 24);
          LOBYTE(v79[0]) = v9;
          BYTE1(v79[0]) = v10;
          BYTE2(v79[0]) = v11;
          BYTE3(v79[0]) = v12;

          sub_1AC473190(v82, v64, v65, v79);
          OUTLINED_FUNCTION_20();

          sub_1AC4513F8(v63, v87);
          __swift_destroy_boxed_opaque_existential_1(v82);
        }
      }

      else
      {
        v61 = sub_1AC4777D8();
        OUTLINED_FUNCTION_11(&type metadata for JSONEncodingError, v61);
        *v62 = 0;
        swift_willThrow();
        sub_1AC4513F8(v16, v87);
      }

      return a1;
    }

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v17 = *(v4 + 24);
    v18 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v17) & 0xF;
    }

    if (!v18)
    {
      sub_1AC4513F8(v16, *(&v16 + 1));
      return 32123;
    }

    LOWORD(v79[1]) = 256;
    sub_1AC45A78C();
    v20 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_2_0(v21);
      sub_1AC45A78C();
      v20 = v70;
    }

    *(v20 + 16) = v22 + 1;
    OUTLINED_FUNCTION_8(v20, v20 + v22);
    OUTLINED_FUNCTION_14();
    sub_1AC45FE50(v23, v24, v25);
    LOWORD(v79[1]) = 44;
    v26 = *(v4 + 16);
    v27 = *(v4 + 24);

    sub_1AC45AEA4(v26, v27);

    v28 = v79[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_6_0();
      sub_1AC45A78C();
      v28 = v71;
    }

    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_2_0(v29);
      sub_1AC45A78C();
      v28 = v72;
    }

    *(v28 + 16) = v30 + 1;
    *(v28 + v30 + 32) = 125;
    v81 = v28;

    sub_1AC51EE18();
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    v31 = OUTLINED_FUNCTION_7_0(&qword_1ED6E4338);
    OUTLINED_FUNCTION_27_0(v31);
    OUTLINED_FUNCTION_20();

    if (v8)
    {
      sub_1AC4513F8(v16, *(&v16 + 1));
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC476AEC(uint64_t *a1)
{
  v3 = v1;
  sub_1AC458E74(0x7Bu);
  if (v2)
  {
    return;
  }

  OUTLINED_FUNCTION_19_1();
  sub_1AC458FC0(v5);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;

  v42 = xmmword_1AC51F990;
  v44 = 0;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  sub_1AC477750(&v42, v1 + 32);
  swift_endAccess();
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
    return;
  }

  v6 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v7 = 1;
  while (1)
  {
    sub_1AC458F28();
    if (!sub_1AC45E184())
    {
LABEL_34:
      v34 = 13;
LABEL_35:
      v35 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v35);
      *v36 = 0;
      v36[1] = v34;
LABEL_36:
      swift_willThrow();

      return;
    }

    v8 = *a1;
    if (*(*a1 + a1[2]) != 34)
    {
      goto LABEL_33;
    }

    v9 = sub_1AC459B18();
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v9;
    v12 = v10;
    OUTLINED_FUNCTION_19_1();
    sub_1AC458E74(v13);
    v14 = v11 == 0x6570797440 && v12 == 0xE500000000000000;
    if (v14 || (sub_1AC51F3D8() & 1) != 0)
    {

      sub_1AC458F28();
      if (!sub_1AC45E184())
      {
        goto LABEL_34;
      }

      if (*(v8 + a1[2]) == 34)
      {
        v15 = sub_1AC459B18();
        if (v16)
        {
          *(v3 + 16) = v15;
          *(v3 + 24) = v16;

          goto LABEL_31;
        }
      }

LABEL_33:
      v34 = 5;
      goto LABEL_35;
    }

    v17 = v41;
    if ((v7 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        v17 = v32;
      }

      v18 = *(v17 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v17 + 24) >> 1)
      {
        OUTLINED_FUNCTION_18_0(v19);
        v19 = v45;
        v17 = v33;
      }

      *(v17 + 16) = v19;
      *(v17 + v18 + 32) = v6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_6_0();
      sub_1AC45A78C();
      v17 = v30;
    }

    v20 = *(v17 + 16);
    v21 = v20 + 1;
    if (v20 >= *(v17 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_0(v21);
      v21 = v45;
      v17 = v31;
    }

    *(v17 + 16) = v21;
    *(v17 + v20 + 32) = 34;
    v41 = v17;

    sub_1AC45FA3C(v11, v12);
    OUTLINED_FUNCTION_14();
    sub_1AC45FE50(v22, v23, v24);

    sub_1AC458F28();
    v25 = a1[2];
    sub_1AC4E61EC();
    if (!*a1)
    {
      goto LABEL_41;
    }

    v26 = a1[2];
    if (__OFSUB__(v26, v25))
    {
      break;
    }

    v27 = sub_1AC456544(*a1 + v25, v26 - v25);
    if (!v28)
    {
      v39 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v39);
      *v40 = xmmword_1AC51FB70;
      goto LABEL_36;
    }

    sub_1AC45FA3C(v27, v28);
    v7 = 0;
    v6 = 44;
LABEL_31:
    if (sub_1AC459020(0x7Du))
    {
      sub_1AC45A9B0();
      v37 = *(a1 + 40);
      v38 = a1[11];
      *&v42 = v41;
      *(&v42 + 1) = v38;
      v43 = v37;
      v44 = 2;
      OUTLINED_FUNCTION_9();
      swift_beginAccess();
      sub_1AC477750(&v42, v3 + 32);
      swift_endAccess();
      return;
    }

    OUTLINED_FUNCTION_19_1();
    sub_1AC458E74(v29);
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t sub_1AC476EEC()
{
  result = qword_1EB557F90;
  if (!qword_1EB557F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557F90);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC5B4D30);
  }

  return result;
}

_BYTE *sub_1AC476FE4(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v21 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1AC4513F8(v4, v3);
      *a1 = xmmword_1AC51F990;
      v22 = OUTLINED_FUNCTION_15_1();
      sub_1AC4513F8(v22, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v4 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      if (v25 < v4)
      {
        goto LABEL_29;
      }

      if (sub_1AC51EB78() && __OFSUB__(v4, sub_1AC51EBA8()))
      {
        goto LABEL_30;
      }

      sub_1AC51EBB8();
      swift_allocObject();
      v26 = sub_1AC51EB58();

      v21 = v26;
      v25 = v4 >> 32;
LABEL_16:
      v27 = a2;
      v28 = v25 - v4;
      if (v25 < v4)
      {
        goto LABEL_26;
      }

      result = sub_1AC51EB78();
      if (!result)
      {
        goto LABEL_32;
      }

      v29 = result;
      v30 = sub_1AC51EBA8();
      v31 = v4 - v30;
      if (__OFSUB__(v4, v30))
      {
        goto LABEL_28;
      }

      v32 = sub_1AC51EB98();
      if (v32 >= v28)
      {
        v33 = v28;
      }

      else
      {
        v33 = v32;
      }

      sub_1AC509DE0(&v29[v31], &v29[v31 + v33], v27, a3);

      v20 = v21 | 0x4000000000000000;
      *a1 = v4;
      goto LABEL_23;
    case 2uLL:

      sub_1AC4513F8(v4, v3);
      *&v37 = v4;
      *(&v37 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      v9 = OUTLINED_FUNCTION_15_1();
      sub_1AC4513F8(v9, v10);
      sub_1AC51EBE8();
      v11 = *(v37 + 16);
      v12 = *(v37 + 24);
      result = sub_1AC51EB78();
      if (!result)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = sub_1AC51EBA8();
      v15 = v11 - v14;
      if (__OFSUB__(v11, v14))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (v16)
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

      v18 = sub_1AC51EB98();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      result = sub_1AC509DE0(&v13[v15], &v13[v15 + v19], a2, a3);
      v20 = *(&v37 + 1) | 0x8000000000000000;
      *a1 = v37;
LABEL_23:
      a1[1] = v20;
      return result;
    case 3uLL:
      *(&v37 + 7) = 0;
      *&v37 = 0;
      return sub_1AC509DE0(&v37, &v37, a2, a3);
    default:
      sub_1AC4513F8(v4, v3);
      *&v37 = v4;
      WORD4(v37) = v3;
      BYTE10(v37) = BYTE2(v3);
      BYTE11(v37) = BYTE3(v3);
      BYTE12(v37) = BYTE4(v3);
      BYTE13(v37) = BYTE5(v3);
      BYTE14(v37) = BYTE6(v3);
      result = sub_1AC509DE0(&v37, &v37 + BYTE6(v3), a2, a3);
      v8 = DWORD2(v37) | ((WORD6(v37) | (BYTE14(v37) << 16)) << 32);
      *a1 = v37;
      a1[1] = v8;
      return result;
  }
}

uint64_t sub_1AC4773AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1AC51EBD8();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1AC5B4020]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1AC5B4030]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1AC477424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

  return sub_1AC4773AC(v7, v13, a3);
}

uint64_t sub_1AC4774B8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
  }

  else
  {
    a3 = sub_1AC4D5238(v13, 0xD000000000000013, 0x80000001AC52DE90, a5, a6);
    a4 = v15;
  }

  sub_1AC506DDC(v13, a3, a4, a1, a5, a6);

  return (*(v11 + 8))(v13, a5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AC477660()
{
  result = qword_1EB557A80;
  if (!qword_1EB557A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557A80);
  }

  return result;
}

unint64_t sub_1AC4776B4()
{
  result = qword_1EB557FA0;
  if (!qword_1EB557FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557FA0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC477788(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AC4777D8()
{
  result = qword_1EB557FB0;
  if (!qword_1EB557FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557FB0);
  }

  return result;
}

uint64_t sub_1AC47782C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AC477890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AC477954()
{
  result = qword_1EB557FD0;
  if (!qword_1EB557FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557FD0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t AnyUnpackError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC477BEC(uint64_t a1)
{
  v2 = *v1;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v2);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC477C34()
{
  result = qword_1EB557FD8;
  if (!qword_1EB557FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyUnpackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnyUnpackError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1AC477E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v18 = 0;
    return v18 & 1;
  }

  if (!v2 || a1 == a2)
  {
    v18 = 1;
    return v18 & 1;
  }

  v3 = (a1 + 80);
  v4 = (a2 + 40);
  while (1)
  {
    result = *(v3 - 5);
    v6 = *(v3 - 4);
    v7 = *(v3 - 3);
    v8 = *(v3 - 2);
    v9 = *(v3 - 1);
    v10 = *v3;
    v32[0] = *(v3 - 6);
    v32[1] = result;
    v32[2] = v6;
    v32[3] = v7;
    v32[4] = v8;
    v32[5] = v9;
    v33 = v10;
    if (!v2)
    {
      break;
    }

    v28 = v2;
    v11 = v4[1];
    v12 = v4[2];
    v30 = v4[4];
    v31 = v4[3];
    v29 = v4[5];

    v13 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v13, v14);
    OUTLINED_FUNCTION_34_0();
    sub_1AC4852EC(v15, v16, v17);

    sub_1AC4578F4(v11, v12);
    sub_1AC4852EC(v31, v30, v29);
    v18 = static Google_Protobuf_Option.== infix(_:_:)(v32);

    v19 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v19, v20);
    v21 = OUTLINED_FUNCTION_18();
    sub_1AC48532C(v21, v22, v29);
    v23 = v33;

    v24 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v24, v25);
    v26 = OUTLINED_FUNCTION_18();
    sub_1AC48532C(v26, v27, v23);
    if (v18)
    {
      v3 += 7;
      v4 += 7;
      v2 = v28 - 1;
      if (v28 != 1)
      {
        continue;
      }
    }

    return v18 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC477F88()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, sizeof(__dst));
      memcpy(v10, v0, sizeof(v10));
      memcpy(v12, v1, sizeof(v12));
      memcpy(__src, v1, sizeof(__src));
      sub_1AC48536C(__dst, v8);
      sub_1AC48536C(v12, v8);
      v6 = static Google_Protobuf_Field.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, sizeof(v13));
      sub_1AC4853C8(v13);
      memcpy(v14, v10, sizeof(v14));
      sub_1AC4853C8(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v0 += 128;
      v1 += 128;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47808C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1AC51F3D8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC478118(uint64_t a1, uint64_t a2)
{
  v500 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v477 = a2 + 32;
  v478 = a1 + 32;
  v476 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_270;
    }

    v4 = (v478 + 48 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    v9 = v4[3];
    v8 = v4[4];
    v10 = v4[5];
    v11 = v477 + 48 * v3;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    v16 = v5 == *v11 && v6 == *(v11 + 8);
    v488 = *(v11 + 24);
    if (v16)
    {
      if (v7 != v12)
      {
        return 0;
      }
    }

    else
    {
      v17 = v3;
      v18 = sub_1AC51F3D8();
      result = 0;
      if ((v18 & 1) == 0)
      {
        return result;
      }

      v3 = v17;
      v13 = v488;
      if (v7 != v12)
      {
        return result;
      }
    }

    v20 = *(v9 + 16);
    if (v20 != *(v13 + 16))
    {
      return 0;
    }

    v479 = v3;
    v482 = v8;
    v483 = v10;
    v487 = v9;
    v480 = v14;
    v481 = v15;
    if (v20)
    {
      break;
    }

    sub_1AC4578F4(v8, v10);

    sub_1AC4578F4(v14, v15);
LABEL_177:
    v323 = v483 >> 62;
    v324 = v481 >> 62;
    if (v21)
    {
      v330 = 0;
      if (v482)
      {
        v331 = v480;
      }

      else
      {
        v325 = v483 == 0xC000000000000000 && v481 >> 62 == 3;
        v331 = v480;
        if (v325)
        {
          v330 = 0;
          if (!v480 && v481 == 0xC000000000000000)
          {

            v326 = OUTLINED_FUNCTION_15_1();
            sub_1AC4513F8(v326, v327);

            v328 = OUTLINED_FUNCTION_15_1();
LABEL_217:
            sub_1AC4513F8(v328, v329);
            goto LABEL_256;
          }
        }
      }
    }

    else
    {
      v330 = 0;
      v331 = v480;
      switch(v323)
      {
        case 0uLL:
          v330 = BYTE6(v483);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v482), v482))
          {
            goto LABEL_290;
          }

          v330 = HIDWORD(v482) - v482;
          break;
        case 2uLL:
          v333 = *(v482 + 16);
          v332 = *(v482 + 24);
          v79 = __OFSUB__(v332, v333);
          v330 = v332 - v333;
          if (!v79)
          {
            break;
          }

          goto LABEL_289;
        case 3uLL:
          break;
        default:
          goto LABEL_321;
      }
    }

    v334 = BYTE6(v481);
    switch(v324)
    {
      case 1uLL:
        LODWORD(v335) = HIDWORD(v331) - v331;
        if (__OFSUB__(HIDWORD(v331), v331))
        {
          goto LABEL_286;
        }

        v335 = v335;
LABEL_205:
        if (v330 != v335)
        {
          goto LABEL_265;
        }

        if (v330 < 1)
        {
LABEL_216:

          sub_1AC4513F8(v480, v481);

          v328 = v482;
          v329 = v483;
          goto LABEL_217;
        }

        v338 = v480 >> 32;
        v339 = v480 >> 8;
        v340 = v480 >> 16;
        v341 = v480 >> 24;
        v342 = v480 >> 40;
        v343 = HIWORD(v480);
        v344 = HIBYTE(v480);
        switch(v323)
        {
          case 1:
            if (v482 >> 32 < v482)
            {
              goto LABEL_295;
            }

            v377 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v377, v378);
            v379 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v379, v380);
            v381 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v381, v382);
            v383 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v383, v384);
            v385 = OUTLINED_FUNCTION_53();
            sub_1AC4578F4(v385, v386);
            v363 = sub_1AC51EB78();
            if (!v363)
            {
              goto LABEL_236;
            }

            v387 = sub_1AC51EBA8();
            if (__OFSUB__(v482, v387))
            {
              goto LABEL_304;
            }

            v363 += v482 - v387;
LABEL_236:
            sub_1AC51EB98();
            OUTLINED_FUNCTION_45();
            sub_1AC484FFC(&__s1, v363, v480, v481);
            v388 = OUTLINED_FUNCTION_30();
            sub_1AC4513F8(v388, v389);
            v390 = OUTLINED_FUNCTION_30();
            sub_1AC4513F8(v390, v391);
            v392 = OUTLINED_FUNCTION_53();
            sub_1AC4513F8(v392, v393);
            v394 = __s1;
            v395 = OUTLINED_FUNCTION_30();
            sub_1AC4513F8(v395, v396);
            v397 = OUTLINED_FUNCTION_30();
            sub_1AC4513F8(v397, v398);

            v399 = OUTLINED_FUNCTION_30();
            sub_1AC4513F8(v399, v400);
            goto LABEL_255;
          case 2:
            v351 = *(v482 + 16);
            v352 = *(v482 + 24);
            v353 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v353, v354);
            v355 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v355, v356);
            v357 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v357, v358);
            v359 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v359, v360);
            v361 = OUTLINED_FUNCTION_53();
            sub_1AC4578F4(v361, v362);
            v363 = sub_1AC51EB78();
            if (!v363)
            {
              goto LABEL_221;
            }

            v364 = sub_1AC51EBA8();
            if (__OFSUB__(v351, v364))
            {
              goto LABEL_303;
            }

            v363 += v351 - v364;
LABEL_221:
            if (!__OFSUB__(v352, v351))
            {
              goto LABEL_236;
            }

            goto LABEL_296;
          case 3:
            OUTLINED_FUNCTION_77();
            if (v16)
            {
              v406 = *(v480 + 16);
              v407 = *(v480 + 24);
              v408 = OUTLINED_FUNCTION_30();
              sub_1AC4578F4(v408, v409);
              v410 = OUTLINED_FUNCTION_53();
              sub_1AC4578F4(v410, v411);
              v412 = sub_1AC51EB78();
              if (v412)
              {
                v413 = sub_1AC51EBA8();
                if (__OFSUB__(v406, v413))
                {
                  goto LABEL_310;
                }

                v412 += v406 - v413;
              }

              v79 = __OFSUB__(v407, v406);
              v414 = v407 - v406;
              if (v79)
              {
                goto LABEL_308;
              }

              v415 = sub_1AC51EB98();
              if (!v412)
              {
                goto LABEL_320;
              }

              goto LABEL_250;
            }

            if (v365 != 1)
            {
LABEL_237:
              v401 = OUTLINED_FUNCTION_4_1(v344, v343, v334, v342, v341, v340, v339);
              v372 = OUTLINED_FUNCTION_9_0(v401, v402, v403);
              goto LABEL_238;
            }

            if (v338 < v480)
            {
              goto LABEL_306;
            }

            v366 = OUTLINED_FUNCTION_30();
            sub_1AC4578F4(v366, v367);
            v368 = OUTLINED_FUNCTION_53();
            sub_1AC4578F4(v368, v369);
            v349 = sub_1AC51EB78();
            if (v349)
            {
              v370 = sub_1AC51EBA8();
              if (__OFSUB__(v480, v370))
              {
                goto LABEL_311;
              }

              v349 += v480 - v370;
            }

            sub_1AC51EB98();
            if (!v349)
            {
              goto LABEL_319;
            }

            goto LABEL_231;
          default:
            __s1 = v482;
            v498 = v483;
            v499 = WORD2(v483);
            if (!v324)
            {
              goto LABEL_237;
            }

            if (v324 == 1)
            {
              if (v338 < v480)
              {
                goto LABEL_305;
              }

              v345 = OUTLINED_FUNCTION_30();
              sub_1AC4578F4(v345, v346);
              v347 = OUTLINED_FUNCTION_53();
              sub_1AC4578F4(v347, v348);
              v349 = sub_1AC51EB78();
              if (v349)
              {
                v350 = sub_1AC51EBA8();
                if (__OFSUB__(v480, v350))
                {
                  goto LABEL_312;
                }

                v349 += v480 - v350;
              }

              sub_1AC51EB98();
              if (!v349)
              {
                goto LABEL_318;
              }

LABEL_231:
              OUTLINED_FUNCTION_40();
              v372 = memcmp(&__s1, v349, v371);
              v373 = OUTLINED_FUNCTION_53();
              sub_1AC4513F8(v373, v374);
              v375 = OUTLINED_FUNCTION_30();
              sub_1AC4513F8(v375, v376);
LABEL_238:

              v404 = OUTLINED_FUNCTION_30();
              sub_1AC4513F8(v404, v405);
            }

            else
            {
              v416 = *(v480 + 16);
              v417 = *(v480 + 24);
              v418 = OUTLINED_FUNCTION_30();
              sub_1AC4578F4(v418, v419);
              v420 = OUTLINED_FUNCTION_53();
              sub_1AC4578F4(v420, v421);
              v412 = sub_1AC51EB78();
              if (v412)
              {
                v422 = sub_1AC51EBA8();
                if (__OFSUB__(v416, v422))
                {
                  goto LABEL_309;
                }

                v412 += v416 - v422;
              }

              v79 = __OFSUB__(v417, v416);
              v414 = v417 - v416;
              if (v79)
              {
                goto LABEL_307;
              }

              v415 = sub_1AC51EB98();
              if (!v412)
              {
                goto LABEL_317;
              }

LABEL_250:
              if (v415 >= v414)
              {
                v423 = v414;
              }

              else
              {
                v423 = v415;
              }

              v372 = memcmp(&__s1, v412, v423);
              v424 = OUTLINED_FUNCTION_53();
              sub_1AC4513F8(v424, v425);
              v426 = OUTLINED_FUNCTION_30();
              sub_1AC4513F8(v426, v427);

              v428 = OUTLINED_FUNCTION_30();
              sub_1AC4513F8(v428, v429);
            }

            v394 = v372 == 0;
LABEL_255:

            v430 = OUTLINED_FUNCTION_53();
            sub_1AC4513F8(v430, v431);
            if ((v394 & 1) == 0)
            {
              return 0;
            }

            break;
        }

        break;
      case 2uLL:
        v337 = *(v331 + 16);
        v336 = *(v331 + 24);
        v79 = __OFSUB__(v336, v337);
        v335 = v336 - v337;
        if (!v79)
        {
          goto LABEL_205;
        }

        goto LABEL_285;
      case 3uLL:
        if (v330)
        {
          goto LABEL_265;
        }

        goto LABEL_216;
      default:
        v335 = BYTE6(v481);
        goto LABEL_205;
    }

LABEL_256:
    v3 = v479 + 1;
    result = 1;
    v2 = v476;
    if (v479 + 1 == v476)
    {
      return result;
    }
  }

  sub_1AC4578F4(v8, v10);

  sub_1AC4578F4(v14, v15);
  v21 = v9 == v13;
  if (v9 == v13)
  {
    goto LABEL_177;
  }

  v22 = 0;
  v23 = (v9 + 80);
  v24 = (v13 + 40);
  v484 = v20;
  while (1)
  {
    if (v22 >= *(v9 + 16))
    {
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
    }

    if (v22 >= *(v13 + 16))
    {
      goto LABEL_269;
    }

    v490 = v22;
    v25 = *(v23 - 4);
    v26 = *(v23 - 1);
    v495 = *(v23 - 3);
    v496 = *(v23 - 2);
    v489 = v23;
    v27 = *v23;
    v28 = v24[1];
    v29 = v24[2];
    v30 = v24[3];
    v492 = v24[4];
    v31 = *(v23 - 6) == *(v24 - 1) && *(v23 - 5) == *v24;
    v32 = v24[5];
    v493 = v32;
    if (!v31)
    {
      v32 = v24[5];
      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_265;
      }
    }

    v491 = v26;
    v494 = v25;
    if (v27)
    {
      break;
    }

    v52 = OUTLINED_FUNCTION_41_0();
    sub_1AC4578F4(v52, v53);
    v54 = OUTLINED_FUNCTION_20_0();
    sub_1AC4852EC(v54, v55, 0);

    sub_1AC4578F4(v28, v29);
    v33 = v30;
    if (v493)
    {
      v433 = v493;
      sub_1AC4852EC(v30, v492, v493);
      v454 = OUTLINED_FUNCTION_32();
      sub_1AC4852EC(v454, v455, 0);
      sub_1AC4852EC(v30, v492, v493);
      v445 = v492;
      goto LABEL_262;
    }

    sub_1AC4852EC(v30, v492, 0);
    v56 = OUTLINED_FUNCTION_32();
    sub_1AC4852EC(v56, v57, 0);
    sub_1AC4852EC(v30, v492, 0);
    v40 = v29;
    v41 = v28;
LABEL_66:
    v98 = OUTLINED_FUNCTION_32();
    sub_1AC48532C(v98, v99, v100);
LABEL_89:
    v184 = v495 >> 62;
    v185 = v40 >> 62;
    if (v101)
    {
      v193 = 0;
      if (!v494 && v495 == 0xC000000000000000 && v40 >> 62 == 3)
      {
        v193 = 0;
        if (!v41 && v40 == 0xC000000000000000)
        {

          v187 = OUTLINED_FUNCTION_15_1();
          sub_1AC4513F8(v187, v188);
          v189 = OUTLINED_FUNCTION_17_1();
          sub_1AC48532C(v189, v190, v493);

          v191 = OUTLINED_FUNCTION_15_1();
LABEL_124:
          sub_1AC4513F8(v191, v192);
          OUTLINED_FUNCTION_34_0();
          sub_1AC48532C(v209, v210, v211);
          goto LABEL_174;
        }
      }
    }

    else
    {
      v193 = 0;
      switch(v184)
      {
        case 0uLL:
          v193 = BYTE6(v495);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v494), v494))
          {
            goto LABEL_276;
          }

          v193 = HIDWORD(v494) - v494;
          break;
        case 2uLL:
          v195 = *(v494 + 16);
          v194 = *(v494 + 24);
          v79 = __OFSUB__(v194, v195);
          v193 = v194 - v195;
          if (!v79)
          {
            break;
          }

          goto LABEL_275;
        case 3uLL:
          break;
        default:
          goto LABEL_321;
      }
    }

    switch(v185)
    {
      case 1uLL:
        LODWORD(v196) = HIDWORD(v41) - v41;
        if (__OFSUB__(HIDWORD(v41), v41))
        {
          goto LABEL_271;
        }

        v196 = v196;
LABEL_114:
        if (v193 != v196)
        {
          goto LABEL_263;
        }

        if (v193 < 1)
        {
LABEL_123:

          v205 = OUTLINED_FUNCTION_25_0();
          sub_1AC4513F8(v205, v206);
          v207 = OUTLINED_FUNCTION_17_1();
          sub_1AC48532C(v207, v208, v493);

          v191 = v494;
          v192 = v495;
          goto LABEL_124;
        }

        v486 = v27;
        v199 = v41 >> 32;
        switch(v184)
        {
          case 1:
            if (v494 >> 32 < v494)
            {
              goto LABEL_277;
            }

            v236 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v236, v237);
            v238 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v238, v239);
            v240 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v240, v241);
            v242 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v242, v243);
            sub_1AC4578F4(v494, v495);
            if (sub_1AC51EB78() && __OFSUB__(v494, sub_1AC51EBA8()))
            {
              goto LABEL_284;
            }

            v222 = v495;
            goto LABEL_141;
          case 2:
            v212 = *(v494 + 16);
            v213 = *(v494 + 24);
            v214 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v214, v215);
            v216 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v216, v217);
            v218 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v218, v219);
            v220 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v220, v221);
            v222 = v495;
            sub_1AC4578F4(v494, v495);
            if (!sub_1AC51EB78())
            {
              goto LABEL_128;
            }

            if (__OFSUB__(v212, sub_1AC51EBA8()))
            {
              goto LABEL_283;
            }

            v222 = v495;
LABEL_128:
            if (__OFSUB__(v213, v212))
            {
              goto LABEL_278;
            }

LABEL_141:
            sub_1AC51EB98();
            v244 = OUTLINED_FUNCTION_14_0();
            sub_1AC484FFC(v245, v244, v41, v40);
            v246 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v246, v247);
            v248 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v248, v249);
            v250 = v494;
            sub_1AC4513F8(v494, v222);
            v251 = __s1;
            v252 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v252, v253);
            v254 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v254, v255);

            v256 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v256, v257);
            sub_1AC48532C(v33, v492, v493);
            v258 = v486;
            goto LABEL_173;
          case 3:
            OUTLINED_FUNCTION_77();
            if (v16)
            {
              v259 = *(v41 + 16);
              v474 = *(v41 + 24);
              v260 = OUTLINED_FUNCTION_25_0();
              sub_1AC4578F4(v260, v261);
              v262 = OUTLINED_FUNCTION_41_0();
              sub_1AC4578F4(v262, v263);
              v264 = sub_1AC51EB78();
              if (v264)
              {
                v265 = sub_1AC51EBA8();
                if (__OFSUB__(v259, v265))
                {
                  goto LABEL_299;
                }

                v264 += v259 - v265;
              }

              v79 = __OFSUB__(v474, v259);
              v266 = v474 - v259;
              if (v79)
              {
                goto LABEL_294;
              }

              v267 = sub_1AC51EB98();
              if (!v264)
              {
                goto LABEL_315;
              }

              if (v267 >= v266)
              {
                v268 = v266;
              }

              else
              {
                v268 = v267;
              }

              v269 = memcmp(&__s1, v264, v268);
              v270 = OUTLINED_FUNCTION_41_0();
              sub_1AC4513F8(v270, v271);
              v272 = OUTLINED_FUNCTION_25_0();
              sub_1AC4513F8(v272, v273);

              v274 = OUTLINED_FUNCTION_25_0();
              sub_1AC4513F8(v274, v275);
              v276 = OUTLINED_FUNCTION_17_1();
              sub_1AC48532C(v276, v277, v493);
              v258 = v486;
            }

            else
            {
              if (v230 == 1)
              {
                if (v199 < v41)
                {
                  goto LABEL_292;
                }

                v231 = OUTLINED_FUNCTION_25_0();
                sub_1AC4578F4(v231, v232);
                v233 = OUTLINED_FUNCTION_41_0();
                sub_1AC4578F4(v233, v234);
                v235 = sub_1AC51EB78();
                if (v235)
                {
                  v471 = v235;
                  if (__OFSUB__(v41, sub_1AC51EBA8()))
                  {
                    goto LABEL_302;
                  }

                  OUTLINED_FUNCTION_24_0();
                }

                else
                {
                  v471 = 0;
                }

                sub_1AC51EB98();
                if (!v471)
                {
                  goto LABEL_314;
                }

                OUTLINED_FUNCTION_22_1();
                v269 = memcmp(&__s1, v303, v304);
                v305 = OUTLINED_FUNCTION_41_0();
                sub_1AC4513F8(v305, v306);
                v307 = OUTLINED_FUNCTION_25_0();
                sub_1AC4513F8(v307, v308);
              }

              else
              {
                v282 = OUTLINED_FUNCTION_4_1(v223, v224, v225, v226, v227, v228, v229);
                v269 = OUTLINED_FUNCTION_9_0(v282, v283, v284);
              }

              v309 = OUTLINED_FUNCTION_25_0();
              sub_1AC4513F8(v309, v310);
              v311 = OUTLINED_FUNCTION_17_1();
              sub_1AC48532C(v311, v312, v493);
              v258 = v486;
            }

            v251 = v269 == 0;
            goto LABEL_172;
          default:
            __s1 = v494;
            v498 = v495;
            v499 = WORD2(v495);
            if (!v185)
            {
              v278 = OUTLINED_FUNCTION_4_1(HIBYTE(v41), SBYTE6(v41), BYTE6(v40), SBYTE5(v41), SBYTE3(v41), SBYTE2(v41), SBYTE1(v41));
              v281 = OUTLINED_FUNCTION_9_0(v278, v279, v280);
LABEL_170:

              v319 = OUTLINED_FUNCTION_25_0();
              sub_1AC4513F8(v319, v320);
              v321 = OUTLINED_FUNCTION_17_1();
              sub_1AC48532C(v321, v322, v493);
              goto LABEL_171;
            }

            if (v185 == 1)
            {
              if (v199 < v41)
              {
                goto LABEL_291;
              }

              v200 = OUTLINED_FUNCTION_25_0();
              sub_1AC4578F4(v200, v201);
              v202 = OUTLINED_FUNCTION_41_0();
              sub_1AC4578F4(v202, v203);
              v204 = sub_1AC51EB78();
              if (v204)
              {
                v470 = v204;
                if (__OFSUB__(v41, sub_1AC51EBA8()))
                {
                  goto LABEL_301;
                }

                OUTLINED_FUNCTION_24_0();
              }

              else
              {
                v470 = 0;
              }

              sub_1AC51EB98();
              if (!v470)
              {
                __break(1u);
LABEL_314:
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
LABEL_318:
                __break(1u);
LABEL_319:
                __break(1u);
LABEL_320:
                __break(1u);
                v468 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v468, v469);
                MEMORY[0x1AC5B4BA0](0);
                __break(1u);
LABEL_321:
                JUMPOUT(0);
              }

              OUTLINED_FUNCTION_22_1();
              v281 = memcmp(&__s1, v313, v314);
              v315 = OUTLINED_FUNCTION_41_0();
              sub_1AC4513F8(v315, v316);
              v317 = OUTLINED_FUNCTION_25_0();
              sub_1AC4513F8(v317, v318);
              goto LABEL_170;
            }

            v285 = *(v41 + 16);
            v475 = *(v41 + 24);
            v286 = OUTLINED_FUNCTION_25_0();
            sub_1AC4578F4(v286, v287);
            v288 = OUTLINED_FUNCTION_41_0();
            sub_1AC4578F4(v288, v289);
            v290 = sub_1AC51EB78();
            if (v290)
            {
              v291 = sub_1AC51EBA8();
              if (__OFSUB__(v285, v291))
              {
                goto LABEL_300;
              }

              v290 += v285 - v291;
            }

            v79 = __OFSUB__(v475, v285);
            v292 = v475 - v285;
            if (v79)
            {
              goto LABEL_293;
            }

            v293 = sub_1AC51EB98();
            if (!v290)
            {
              goto LABEL_316;
            }

            if (v293 >= v292)
            {
              v294 = v292;
            }

            else
            {
              v294 = v293;
            }

            v281 = memcmp(&__s1, v290, v294);
            v295 = OUTLINED_FUNCTION_41_0();
            sub_1AC4513F8(v295, v296);
            v297 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v297, v298);

            v299 = OUTLINED_FUNCTION_25_0();
            sub_1AC4513F8(v299, v300);
            v301 = OUTLINED_FUNCTION_17_1();
            sub_1AC48532C(v301, v302, v493);
LABEL_171:
            v251 = v281 == 0;
            v258 = v486;
LABEL_172:
            v250 = v494;
            v222 = v495;
LABEL_173:

            sub_1AC4513F8(v250, v222);
            sub_1AC48532C(v496, v491, v258);
            if ((v251 & 1) == 0)
            {
              goto LABEL_265;
            }

            break;
        }

        break;
      case 2uLL:
        v198 = *(v41 + 16);
        v197 = *(v41 + 24);
        v79 = __OFSUB__(v197, v198);
        v196 = v197 - v198;
        if (!v79)
        {
          goto LABEL_114;
        }

        goto LABEL_272;
      case 3uLL:
        if (v193)
        {
          goto LABEL_263;
        }

        goto LABEL_123;
      default:
        v196 = BYTE6(v40);
        goto LABEL_114;
    }

LABEL_174:
    v22 = v490 + 1;
    v23 = v489 + 7;
    v24 += 7;
    v21 = v484 == v490 + 1;
    v9 = v487;
    v13 = v488;
    if (v484 == v490 + 1)
    {
      goto LABEL_177;
    }
  }

  v33 = v30;
  if (!v32)
  {

    v440 = OUTLINED_FUNCTION_41_0();
    sub_1AC4578F4(v440, v441);
    v442 = OUTLINED_FUNCTION_8_0();
    sub_1AC4852EC(v442, v443, v444);

    sub_1AC4578F4(v28, v29);
    v445 = v492;
    sub_1AC4852EC(v30, v492, 0);
    v446 = OUTLINED_FUNCTION_8_0();
    sub_1AC4852EC(v446, v447, v448);
    sub_1AC4852EC(v30, v492, 0);
    v449 = OUTLINED_FUNCTION_8_0();
    sub_1AC4852EC(v449, v450, v451);
    v452 = OUTLINED_FUNCTION_32();
    sub_1AC4513F8(v452, v453);

    v433 = 0;
LABEL_262:
    v456 = OUTLINED_FUNCTION_8_0();
    sub_1AC48532C(v456, v457, v458);
    sub_1AC48532C(v33, v445, v433);
    goto LABEL_264;
  }

  if (v27 == v32)
  {

    v34 = OUTLINED_FUNCTION_41_0();
    sub_1AC4578F4(v34, v35);
    v36 = v496;
    v37 = OUTLINED_FUNCTION_8_0();
    sub_1AC4852EC(v37, v38, v39);

    v40 = v29;
    v41 = v28;
    sub_1AC4578F4(v28, v40);
    v42 = v492;
    sub_1AC4852EC(v33, v492, v27);
    v43 = OUTLINED_FUNCTION_8_0();
    sub_1AC4852EC(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_17_1();
    sub_1AC4852EC(v46, v47, v27);
    v48 = OUTLINED_FUNCTION_8_0();
    sub_1AC4852EC(v48, v49, v50);
    goto LABEL_32;
  }

  v58 = OUTLINED_FUNCTION_41_0();
  sub_1AC4578F4(v58, v59);
  v36 = v496;
  v60 = OUTLINED_FUNCTION_8_0();
  sub_1AC4852EC(v60, v61, v62);

  v63 = v24;
  v64 = v28;
  sub_1AC4578F4(v28, v29);
  v42 = v492;
  sub_1AC4852EC(v30, v492, v32);
  v65 = OUTLINED_FUNCTION_8_0();
  sub_1AC4852EC(v65, v66, v67);
  sub_1AC4852EC(v30, v492, v32);
  v68 = OUTLINED_FUNCTION_8_0();
  sub_1AC4852EC(v68, v69, v70);
  v33 = v30;
  v40 = v29;
  v41 = v64;
  v24 = v63;
  if (sub_1AC472EE4(v32))
  {
LABEL_32:
    v71 = v26 >> 62;
    v72 = v42 >> 62;
    if (!v51)
    {
      v76 = 0;
      switch(v71)
      {
        case 0uLL:
          v76 = BYTE6(v26);
          goto LABEL_48;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v496), v496))
          {
            goto LABEL_280;
          }

          v76 = HIDWORD(v496) - v496;
          break;
        case 2uLL:
          v78 = *(v496 + 16);
          v77 = *(v496 + 24);
          v79 = __OFSUB__(v77, v78);
          v76 = v77 - v78;
          if (!v79)
          {
            goto LABEL_48;
          }

          goto LABEL_279;
        case 3uLL:
          goto LABEL_48;
        default:
          goto LABEL_321;
      }

      goto LABEL_48;
    }

    v76 = 0;
    if (v496 || (v26 == 0xC000000000000000 ? (v73 = v42 >> 62 == 3) : (v73 = 0), !v73 || (v76 = 0, v33) || v42 != 0xC000000000000000))
    {
LABEL_48:
      switch(v72)
      {
        case 1uLL:
          LODWORD(v80) = HIDWORD(v33) - v33;
          if (__OFSUB__(HIDWORD(v33), v33))
          {
            goto LABEL_274;
          }

          v80 = v80;
LABEL_57:
          if (v76 != v80)
          {
            goto LABEL_259;
          }

          if (v76 >= 1)
          {
            v485 = v27;
            v83 = v33 >> 32;
            switch(v71)
            {
              case 1:
                if (v496 >> 32 < v496)
                {
                  goto LABEL_281;
                }

                v120 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v120, v121);
                v122 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v122, v123);
                v124 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v124, v125);
                v126 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v126, v127);
                sub_1AC4578F4(v496, v491);
                if (sub_1AC51EB78() && __OFSUB__(v496, sub_1AC51EBA8()))
                {
                  goto LABEL_288;
                }

                v36 = (v496 >> 32) - v496;
                v84 = v491;
                sub_1AC51EB98();
                v128 = OUTLINED_FUNCTION_14_0();
                sub_1AC484FFC(v129, v128, v33, v42);
                v130 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v130, v131);
                v132 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v132, v133);
                v134 = OUTLINED_FUNCTION_43_0();
                sub_1AC4513F8(v134, v491);
                v135 = __s1;
                v136 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v136, v137);
                v138 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v138, v139);
                v140 = OUTLINED_FUNCTION_17_1();
                sub_1AC48532C(v140, v141, v493);
                goto LABEL_88;
              case 2:
                v102 = *(v496 + 16);
                v472 = *(v496 + 24);
                v103 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v103, v104);
                v105 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v105, v106);
                v107 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v107, v108);
                v109 = OUTLINED_FUNCTION_17_1();
                sub_1AC4578F4(v109, v110);
                sub_1AC4578F4(v496, v491);
                if (sub_1AC51EB78())
                {
                  if (__OFSUB__(v102, sub_1AC51EBA8()))
                  {
                    goto LABEL_287;
                  }

                  v111 = v491;
                }

                else
                {
                  v111 = v491;
                }

                v36 = v472 - v102;
                if (__OFSUB__(v472, v102))
                {
                  goto LABEL_282;
                }

                v84 = v111;
                sub_1AC51EB98();
                v142 = OUTLINED_FUNCTION_14_0();
                sub_1AC484FFC(v143, v142, v33, v42);
                v144 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v144, v145);
                v146 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v146, v147);
                v148 = OUTLINED_FUNCTION_43_0();
                sub_1AC4513F8(v148, v84);
                v135 = __s1;
                goto LABEL_87;
              case 3:
                OUTLINED_FUNCTION_77();
                if (v16)
                {
                  v149 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v149, v150);
                  v151 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v151, v152);
                  v153 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v153, v154);
                  v155 = OUTLINED_FUNCTION_43_0();
                  v84 = v491;
                  sub_1AC4578F4(v155, v491);
                  OUTLINED_FUNCTION_102();
                  v92 = OUTLINED_FUNCTION_52();
                }

                else
                {
                  if (v119 != 1)
                  {
                    v162 = OUTLINED_FUNCTION_4_1(v112, v113, v114, v115, v116, v117, v118);
                    v165 = OUTLINED_FUNCTION_9_0(v162, v163, v164);
                    v166 = OUTLINED_FUNCTION_17_1();
                    sub_1AC48532C(v166, v167, v493);
                    v135 = v165 == 0;
                    v84 = v491;
LABEL_84:
                    v36 = v496;
                    goto LABEL_88;
                  }

                  if (v83 < v33)
                  {
                    goto LABEL_298;
                  }

LABEL_63:
                  v85 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v85, v86);
                  v87 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v87, v88);
                  v89 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v89, v90);
                  v91 = OUTLINED_FUNCTION_43_0();
                  v84 = v491;
                  sub_1AC4578F4(v91, v491);
                  OUTLINED_FUNCTION_102();
                  v92 = OUTLINED_FUNCTION_24();
                }

LABEL_86:
                v135 = sub_1AC485234(v92, v93, v94, v95);
                v176 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v176, v177);
                sub_1AC4513F8(v36, v84);
LABEL_87:
                v178 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v178, v179);
                v180 = OUTLINED_FUNCTION_17_1();
                sub_1AC4513F8(v180, v181);
                v182 = OUTLINED_FUNCTION_17_1();
                sub_1AC48532C(v182, v183, v493);
                v27 = v485;
LABEL_88:
                sub_1AC4513F8(v36, v84);

                sub_1AC48532C(v36, v84, v27);
                if (v135)
                {
                  goto LABEL_89;
                }

LABEL_263:
                v433 = v493;
                break;
              default:
                __s1 = v496;
                v84 = v491;
                v498 = v491;
                v499 = WORD2(v491);
                if (!v72)
                {
                  v156 = OUTLINED_FUNCTION_4_1(HIBYTE(v33), SBYTE6(v33), BYTE6(v42), SBYTE5(v33), SBYTE3(v33), SBYTE2(v33), SBYTE1(v33));
                  v159 = OUTLINED_FUNCTION_9_0(v156, v157, v158);
                  v160 = OUTLINED_FUNCTION_17_1();
                  sub_1AC48532C(v160, v161, v493);
                  v135 = v159 == 0;
                  goto LABEL_84;
                }

                if (v72 != 1)
                {
                  v168 = *(v33 + 24);
                  v473 = *(v33 + 16);
                  v169 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v169, v170);
                  v171 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v171, v172);
                  v173 = OUTLINED_FUNCTION_17_1();
                  sub_1AC4578F4(v173, v174);
                  v175 = OUTLINED_FUNCTION_43_0();
                  sub_1AC4578F4(v175, v491);
                  OUTLINED_FUNCTION_102();
                  v92 = v473;
                  v93 = v168;
                  goto LABEL_86;
                }

                if (v83 < v33)
                {
                  goto LABEL_297;
                }

                goto LABEL_63;
            }

            goto LABEL_264;
          }

LABEL_64:
          v74 = OUTLINED_FUNCTION_17_1();
          break;
        case 2uLL:
          v82 = *(v33 + 16);
          v81 = *(v33 + 24);
          v79 = __OFSUB__(v81, v82);
          v80 = v81 - v82;
          if (!v79)
          {
            goto LABEL_57;
          }

          goto LABEL_273;
        case 3uLL:
          if (v76)
          {
            goto LABEL_259;
          }

          goto LABEL_64;
        default:
          v80 = BYTE6(v42);
          goto LABEL_57;
      }
    }

    else
    {
      v74 = OUTLINED_FUNCTION_15_1();
    }

    sub_1AC48532C(v74, v75, v493);
    v96 = OUTLINED_FUNCTION_20_0();
    sub_1AC4513F8(v96, v97);

    goto LABEL_66;
  }

LABEL_259:
  v432 = OUTLINED_FUNCTION_17_1();
  v433 = v493;
  sub_1AC48532C(v432, v434, v493);
  v435 = OUTLINED_FUNCTION_20_0();
  sub_1AC4513F8(v435, v436);

  v437 = OUTLINED_FUNCTION_8_0();
  sub_1AC48532C(v437, v438, v439);
LABEL_264:

  v459 = OUTLINED_FUNCTION_25_0();
  sub_1AC4513F8(v459, v460);
  v461 = OUTLINED_FUNCTION_17_1();
  sub_1AC48532C(v461, v462, v433);

  v463 = OUTLINED_FUNCTION_41_0();
  sub_1AC4513F8(v463, v464);
  v465 = OUTLINED_FUNCTION_8_0();
  sub_1AC48532C(v465, v466, v467);
LABEL_265:

  sub_1AC4513F8(v480, v481);

  sub_1AC4513F8(v482, v483);
  return 0;
}

uint64_t sub_1AC479974(uint64_t a1, uint64_t a2)
{
  v173[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v154 = a1 + 32;
  v155 = *(a1 + 16);
  v153 = a2 + 32;
  while (1)
  {
    memcpy(__dst, (v4 + 104 * v3), sizeof(__dst));
    memcpy(v173, (v5 + 104 * v3), 0x68uLL);
    v6 = __dst[0] == v173[0] && __dst[1] == v173[1];
    if (!v6 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }

    v7 = __dst[2] == v173[2] && __dst[3] == v173[3];
    if (!v7 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }

    if (LOBYTE(__dst[4]) != LOBYTE(v173[4]))
    {
      return 0;
    }

    v8 = __dst[5] == v173[5] && __dst[6] == v173[6];
    if (!v8 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }

    if (LOBYTE(__dst[7]) != LOBYTE(v173[7]))
    {
      return 0;
    }

    v9 = __dst[8];
    v10 = v173[8];
    v11 = *(__dst[8] + 16);
    if (v11 != *(v173[8] + 16))
    {
      return 0;
    }

    v156 = v3;
    if (v11)
    {
      if (__dst[8] != v173[8])
      {
        break;
      }
    }

    sub_1AC48604C(__dst, __s1);
    sub_1AC48604C(v173, __s1);
LABEL_168:
    v103 = LOBYTE(v173[10]) == 1;
    if (LOBYTE(v173[10]) == 1)
    {
      if (v173[9])
      {
        if (v173[9] == 1)
        {
          v103 = __dst[9] == 1;
          if (__dst[9] != 1)
          {
            goto LABEL_267;
          }
        }

        else
        {
          v103 = __dst[9] == 2;
          if (__dst[9] != 2)
          {
            goto LABEL_267;
          }
        }
      }

      else if (__dst[9])
      {
        goto LABEL_267;
      }
    }

    else
    {
      v103 = __dst[9] == v173[9];
      if (__dst[9] != v173[9])
      {
        goto LABEL_267;
      }
    }

    v18 = __dst[11];
    v104 = __dst[12];
    v105 = __dst[12] >> 62;
    v107 = v173[11];
    v106 = v173[12];
    v108 = v173[12] >> 62;
    if (v103)
    {
      v110 = 0;
      if (!__dst[11] && __dst[12] == 0xC000000000000000 && v173[12] >> 62 == 3)
      {
        v110 = 0;
        if (!v173[11] && v173[12] == 0xC000000000000000)
        {
LABEL_214:
          sub_1AC486084(v173);
          sub_1AC486084(__dst);
          v120 = v155;
          v121 = v156;
          goto LABEL_256;
        }
      }
    }

    else
    {
      v110 = 0;
      switch(v105)
      {
        case 0:
          v110 = BYTE6(__dst[12]);
          break;
        case 1:
          if (__OFSUB__(HIDWORD(__dst[11]), __dst[11]))
          {
            goto LABEL_286;
          }

          v110 = HIDWORD(__dst[11]) - LODWORD(__dst[11]);
          break;
        case 2:
          v112 = *(__dst[11] + 16);
          v111 = *(__dst[11] + 24);
          v34 = __OFSUB__(v111, v112);
          v110 = v111 - v112;
          if (!v34)
          {
            break;
          }

          goto LABEL_287;
        case 3:
          break;
        default:
          goto LABEL_313;
      }
    }

    switch(v108)
    {
      case 1:
        LODWORD(v113) = HIDWORD(v173[11]) - LODWORD(v173[11]);
        if (__OFSUB__(HIDWORD(v173[11]), v173[11]))
        {
          goto LABEL_284;
        }

        v113 = v113;
LABEL_203:
        if (v110 != v113)
        {
          goto LABEL_267;
        }

        if (v110 < 1)
        {
          goto LABEL_214;
        }

        break;
      case 2:
        v115 = *(v173[11] + 16);
        v114 = *(v173[11] + 24);
        v34 = __OFSUB__(v114, v115);
        v113 = v114 - v115;
        if (!v34)
        {
          goto LABEL_203;
        }

        goto LABEL_285;
      case 3:
        if (v110)
        {
          goto LABEL_267;
        }

        goto LABEL_214;
      default:
        v113 = BYTE6(v173[12]);
        goto LABEL_203;
    }

    v19 = SLODWORD(v173[11]);
    v116 = v173[11] >> 32;
    switch(v105)
    {
      case 1:
        if (__dst[11] >> 32 < SLODWORD(__dst[11]))
        {
          goto LABEL_291;
        }

        sub_1AC4578F4(v173[11], v173[12]);
        sub_1AC4578F4(v107, v106);
        sub_1AC4578F4(v107, v106);
        sub_1AC4578F4(v107, v106);
        sub_1AC4578F4(v18, v104);
        v124 = sub_1AC51EB78();
        if (!v124)
        {
          goto LABEL_236;
        }

        v129 = sub_1AC51EBA8();
        if (__OFSUB__(v18, v129))
        {
          goto LABEL_298;
        }

        v124 += v18 - v129;
LABEL_236:
        sub_1AC51EB98();
        sub_1AC484FFC(__s1, v124, v107, v106);
        sub_1AC4513F8(v107, v106);
        sub_1AC4513F8(v107, v106);
        sub_1AC4513F8(v18, v104);
        v130 = __s1[0];
        sub_1AC4513F8(v107, v106);
        sub_1AC4513F8(v107, v106);
        sub_1AC486084(v173);
        v120 = v155;
        v121 = v156;
        goto LABEL_255;
      case 2:
        v122 = *(__dst[11] + 16);
        v123 = *(__dst[11] + 24);
        sub_1AC4578F4(v173[11], v173[12]);
        sub_1AC4578F4(v107, v106);
        sub_1AC4578F4(v107, v106);
        sub_1AC4578F4(v107, v106);
        sub_1AC4578F4(v18, v104);
        v124 = sub_1AC51EB78();
        if (!v124)
        {
          goto LABEL_218;
        }

        v125 = sub_1AC51EBA8();
        if (__OFSUB__(v122, v125))
        {
          goto LABEL_297;
        }

        v124 += v122 - v125;
LABEL_218:
        if (!__OFSUB__(v123, v122))
        {
          goto LABEL_236;
        }

        goto LABEL_292;
      case 3:
        *&__s1[6] = 0;
        *__s1 = 0;
        if (v108 == 2)
        {
          v131 = *(v173[11] + 16);
          v132 = *(v173[11] + 24);
          sub_1AC4578F4(v173[11], v173[12]);
          sub_1AC4578F4(v18, v104);
          v133 = sub_1AC51EB78();
          if (v133)
          {
            v134 = sub_1AC51EBA8();
            if (__OFSUB__(v131, v134))
            {
              goto LABEL_303;
            }

            v133 += v131 - v134;
          }

          v34 = __OFSUB__(v132, v131);
          v19 = v132 - v131;
          if (v34)
          {
            goto LABEL_302;
          }

          v135 = sub_1AC51EB98();
          if (!v133)
          {
            goto LABEL_310;
          }

          goto LABEL_250;
        }

        if (v108 != 1)
        {
LABEL_237:
          __s2 = v173[11];
          v169 = v173[12];
          v170 = WORD2(v173[12]);
          v128 = memcmp(__s1, &__s2, BYTE6(v173[12]));
          goto LABEL_238;
        }

        if (v116 < SLODWORD(v173[11]))
        {
          goto LABEL_300;
        }

        sub_1AC4578F4(v173[11], v173[12]);
        sub_1AC4578F4(v18, v104);
        v117 = sub_1AC51EB78();
        if (v117)
        {
          v126 = sub_1AC51EBA8();
          if (__OFSUB__(v107, v126))
          {
            goto LABEL_306;
          }

          v117 += v107 - v126;
        }

        v119 = sub_1AC51EB98();
        if (!v117)
        {
          goto LABEL_309;
        }

        goto LABEL_228;
      default:
        *__s1 = __dst[11];
        *&__s1[8] = __dst[12];
        *&__s1[12] = WORD2(__dst[12]);
        if (!v108)
        {
          goto LABEL_237;
        }

        if (v108 == 1)
        {
          if (v116 < SLODWORD(v173[11]))
          {
            goto LABEL_299;
          }

          sub_1AC4578F4(v173[11], v173[12]);
          sub_1AC4578F4(v18, v104);
          v117 = sub_1AC51EB78();
          if (v117)
          {
            v118 = sub_1AC51EBA8();
            if (__OFSUB__(v107, v118))
            {
              goto LABEL_305;
            }

            v117 += v107 - v118;
          }

          v119 = sub_1AC51EB98();
          if (!v117)
          {
            goto LABEL_312;
          }

LABEL_228:
          if (v119 >= v116 - v107)
          {
            v127 = v116 - v107;
          }

          else
          {
            v127 = v119;
          }

          v128 = memcmp(__s1, v117, v127);
          sub_1AC4513F8(v18, v104);
          sub_1AC4513F8(v107, v106);
LABEL_238:
          sub_1AC486084(v173);
        }

        else
        {
          v136 = *(v173[11] + 16);
          v137 = *(v173[11] + 24);
          sub_1AC4578F4(v173[11], v173[12]);
          sub_1AC4578F4(v18, v104);
          v133 = sub_1AC51EB78();
          if (v133)
          {
            v138 = sub_1AC51EBA8();
            if (__OFSUB__(v136, v138))
            {
              goto LABEL_304;
            }

            v133 += v136 - v138;
          }

          v34 = __OFSUB__(v137, v136);
          v19 = v137 - v136;
          if (v34)
          {
            goto LABEL_301;
          }

          v135 = sub_1AC51EB98();
          if (!v133)
          {
            goto LABEL_311;
          }

LABEL_250:
          if (v135 >= v19)
          {
            v139 = v19;
          }

          else
          {
            v139 = v135;
          }

          v128 = memcmp(__s1, v133, v139);
          sub_1AC4513F8(v18, v104);
          sub_1AC4513F8(v107, v106);
          sub_1AC486084(v173);
        }

        v130 = v128 == 0;
        v120 = v155;
        v121 = v156;
LABEL_255:
        sub_1AC486084(__dst);
        if ((v130 & 1) == 0)
        {
          return 0;
        }

        break;
    }

LABEL_256:
    v3 = v121 + 1;
    result = 1;
    v5 = v153;
    v4 = v154;
    if (v3 == v120)
    {
      return result;
    }
  }

  sub_1AC48604C(__dst, __s1);
  sub_1AC48604C(v173, __s1);
  v12 = 0;
  v13 = (v9 + 80);
  v14 = (v10 + 40);
  v158 = v10;
  v159 = v9;
  v157 = v11;
  while (1)
  {
    if (v12 >= *(v9 + 16))
    {
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
    }

    if (v12 >= *(v10 + 16))
    {
      goto LABEL_270;
    }

    v162 = v12;
    v166 = *(v13 - 3);
    v167 = *(v13 - 4);
    v16 = *(v13 - 2);
    v15 = *(v13 - 1);
    v17 = *v13;
    v18 = v14[1];
    v19 = v14[2];
    v21 = v14[3];
    v20 = v14[4];
    v22 = *(v13 - 6) == *(v14 - 1) && *(v13 - 5) == *v14;
    v23 = v14[5];
    v164 = *(v13 - 1);
    v165 = v23;
    if (!v22)
    {
      v16 = *(v13 - 2);
      v20 = v14[4];
      v17 = *v13;
      v15 = *(v13 - 1);
      v23 = v14[5];
      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_267;
      }
    }

    v163 = v20;
    if (!v17)
    {
      break;
    }

    if (!v23)
    {

      v145 = v20;
      v146 = v167;
      sub_1AC4578F4(v167, v166);
      sub_1AC4852EC(v16, v15, v17);

      sub_1AC4578F4(v18, v19);
      sub_1AC4852EC(v21, v145, 0);
      sub_1AC4852EC(v16, v15, v17);
      sub_1AC4852EC(v21, v145, 0);
      sub_1AC4852EC(v16, v15, v17);
      sub_1AC4513F8(v16, v15);

      goto LABEL_264;
    }

    if (v17 == v23)
    {

      sub_1AC4578F4(v167, v166);
      sub_1AC4852EC(v16, v15, v17);

      sub_1AC4578F4(v18, v19);
      sub_1AC4852EC(v21, v20, v17);
      sub_1AC4852EC(v16, v15, v17);
      sub_1AC4852EC(v21, v20, v17);
      sub_1AC4852EC(v16, v15, v17);
    }

    else
    {

      sub_1AC4578F4(v167, v166);
      sub_1AC4852EC(v16, v15, v17);

      sub_1AC4578F4(v18, v19);
      sub_1AC4852EC(v21, v20, v23);
      sub_1AC4852EC(v16, v15, v17);
      sub_1AC4852EC(v21, v20, v23);
      sub_1AC4852EC(v16, v15, v17);
      v15 = v164;
      if ((sub_1AC472EE4(v23) & 1) == 0)
      {
LABEL_259:
        sub_1AC48532C(v21, v20, v165);
        sub_1AC4513F8(v16, v15);

        sub_1AC48532C(v16, v15, v17);
LABEL_260:

        sub_1AC4513F8(v18, v19);
        sub_1AC48532C(v21, v20, v165);

        sub_1AC4513F8(v167, v166);
        v141 = v16;
        v142 = v164;
        goto LABEL_266;
      }
    }

    v26 = v15 >> 62;
    v27 = v20 >> 62;
    if (v24)
    {
      v31 = 0;
      if (!v16 && v15 == 0xC000000000000000 && v20 >> 62 == 3)
      {
        v31 = 0;
        if (!v21 && v20 == 0xC000000000000000)
        {
          v29 = 0;
          v30 = 0xC000000000000000;
LABEL_73:
          sub_1AC48532C(v29, v30, v165);
          sub_1AC4513F8(v16, v15);

          v25 = v17;
          goto LABEL_74;
        }
      }
    }

    else
    {
      v31 = 0;
      switch(v26)
      {
        case 0uLL:
          v31 = BYTE6(v15);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_280;
          }

          v31 = HIDWORD(v16) - v16;
          break;
        case 2uLL:
          v33 = *(v16 + 16);
          v32 = *(v16 + 24);
          v34 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (!v34)
          {
            break;
          }

          goto LABEL_279;
        case 3uLL:
          break;
        default:
          goto LABEL_313;
      }
    }

    switch(v27)
    {
      case 1uLL:
        LODWORD(v35) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_274;
        }

        v35 = v35;
LABEL_65:
        if (v31 != v35)
        {
          goto LABEL_259;
        }

        if (v31 < 1)
        {
LABEL_72:
          v29 = v21;
          v30 = v20;
          goto LABEL_73;
        }

        v160 = v17;
        v38 = v21 >> 32;
        switch(v26)
        {
          case 1:
            v53 = v16 >> 32;
            if (v16 >> 32 < v16)
            {
              goto LABEL_281;
            }

            v54 = v16;
            sub_1AC4578F4(v21, v20);
            sub_1AC4578F4(v21, v20);
            sub_1AC4578F4(v21, v20);
            sub_1AC4578F4(v21, v20);
            v55 = v16;
            v41 = v16;
            v40 = v164;
            sub_1AC4578F4(v55, v164);
            v49 = v164 & 0x3FFFFFFFFFFFFFFFLL;
            v50 = v54;
            v51 = v53;
LABEL_82:
            v56 = sub_1AC485168(v50, v51, v49, v21, v20);
            sub_1AC4513F8(v21, v20);
            sub_1AC4513F8(v41, v40);
            sub_1AC4513F8(v21, v20);
            sub_1AC4513F8(v21, v20);
            sub_1AC48532C(v21, v20, v165);
            goto LABEL_89;
          case 2:
            v46 = *(v16 + 16);
            v47 = *(v16 + 24);
            sub_1AC4578F4(v21, v20);
            sub_1AC4578F4(v21, v20);
            sub_1AC4578F4(v21, v20);
            sub_1AC4578F4(v21, v20);
            v48 = v16;
            v41 = v16;
            v40 = v164;
            sub_1AC4578F4(v48, v164);
            v49 = v164 & 0x3FFFFFFFFFFFFFFFLL;
            v50 = v46;
            v51 = v47;
            goto LABEL_82;
          case 3:
            *&__s1[6] = 0;
            *__s1 = 0;
            if (v27 == 2)
            {
              v57 = *(v21 + 16);
              v58 = *(v21 + 24);
              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              v59 = v16;
              v41 = v16;
              v40 = v164;
              sub_1AC4578F4(v59, v164);
              v42 = v20 & 0x3FFFFFFFFFFFFFFFLL;
              v43 = v57;
              v44 = v58;
LABEL_88:
              v56 = sub_1AC485234(v43, v44, v42, __s1);
              sub_1AC4513F8(v21, v20);
              sub_1AC4513F8(v41, v40);
              sub_1AC4513F8(v21, v20);
              sub_1AC4513F8(v21, v20);
              sub_1AC48532C(v21, v20, v165);
LABEL_89:
              v17 = v160;
              goto LABEL_90;
            }

            if (v27 == 1)
            {
              if (v38 < v21)
              {
                goto LABEL_293;
              }

              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              v52 = v16;
              v41 = v16;
              v40 = v164;
              sub_1AC4578F4(v52, v164);
              v42 = v20 & 0x3FFFFFFFFFFFFFFFLL;
              v43 = v21;
              v44 = v21 >> 32;
              goto LABEL_88;
            }

            v148 = v16;
            __s2 = v21;
            LOWORD(v169) = v20;
            BYTE2(v169) = BYTE2(v20);
            HIBYTE(v169) = BYTE3(v20);
            LOBYTE(v170) = BYTE4(v20);
            HIBYTE(v170) = BYTE5(v20);
            v61 = memcmp(__s1, &__s2, BYTE6(v20));
            sub_1AC48532C(v21, v20, v165);
            v56 = v61 == 0;
            v40 = v164;
LABEL_86:
            v41 = v148;
LABEL_90:
            sub_1AC4513F8(v41, v40);

            sub_1AC48532C(v41, v40, v17);
            v16 = v41;
            if ((v56 & 1) == 0)
            {
              goto LABEL_260;
            }

            break;
          default:
            *__s1 = v16;
            __s1[2] = BYTE2(v16);
            __s1[3] = BYTE3(v16);
            __s1[4] = BYTE4(v16);
            __s1[5] = BYTE5(v16);
            v148 = v16;
            v39 = HIBYTE(v16);
            __s1[6] = BYTE6(v16);
            v40 = v164;
            __s1[7] = v39;
            *&__s1[8] = v164;
            *&__s1[12] = WORD2(v164);
            if (!v27)
            {
              __s2 = v21;
              LOWORD(v169) = v20;
              BYTE2(v169) = BYTE2(v20);
              HIBYTE(v169) = BYTE3(v20);
              LOBYTE(v170) = BYTE4(v20);
              HIBYTE(v170) = BYTE5(v20);
              v60 = memcmp(__s1, &__s2, BYTE6(v20));
              sub_1AC48532C(v21, v20, v165);
              v56 = v60 == 0;
              goto LABEL_86;
            }

            if (v27 == 1)
            {
              if (v38 < v21)
              {
                goto LABEL_294;
              }

              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              v41 = v148;
              v40 = v164;
              sub_1AC4578F4(v148, v164);
              v42 = v20 & 0x3FFFFFFFFFFFFFFFLL;
              v43 = v21;
              v44 = v21 >> 32;
            }

            else
            {
              v62 = *(v21 + 24);
              v147 = *(v21 + 16);
              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              sub_1AC4578F4(v21, v20);
              v41 = v148;
              sub_1AC4578F4(v148, v164);
              v42 = v20 & 0x3FFFFFFFFFFFFFFFLL;
              v43 = v147;
              v44 = v62;
            }

            goto LABEL_88;
        }

        break;
      case 2uLL:
        v37 = *(v21 + 16);
        v36 = *(v21 + 24);
        v34 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (!v34)
        {
          goto LABEL_65;
        }

        goto LABEL_273;
      case 3uLL:
        if (v31)
        {
          goto LABEL_259;
        }

        goto LABEL_72;
      default:
        v35 = BYTE6(v20);
        goto LABEL_65;
    }

LABEL_91:
    v63 = v166 >> 62;
    v64 = v19 >> 62;
    if (v45)
    {
      v68 = 0;
      v15 = v164;
      if (!v167 && v166 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v68 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {

          sub_1AC4513F8(0, 0xC000000000000000);
          sub_1AC48532C(v21, v20, v165);

          v66 = 0;
          v67 = 0xC000000000000000;
LABEL_124:
          sub_1AC4513F8(v66, v67);
          sub_1AC48532C(v16, v15, v17);
          goto LABEL_165;
        }
      }
    }

    else
    {
      v15 = v164;
      v68 = 0;
      switch(v63)
      {
        case 0uLL:
          v68 = BYTE6(v166);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v167), v167))
          {
            goto LABEL_276;
          }

          v68 = HIDWORD(v167) - v167;
          break;
        case 2uLL:
          v70 = *(v167 + 16);
          v69 = *(v167 + 24);
          v34 = __OFSUB__(v69, v70);
          v68 = v69 - v70;
          if (!v34)
          {
            break;
          }

          goto LABEL_275;
        case 3uLL:
          break;
        default:
          goto LABEL_313;
      }
    }

    switch(v64)
    {
      case 1uLL:
        LODWORD(v71) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_271;
        }

        v71 = v71;
LABEL_116:
        if (v68 != v71)
        {
LABEL_261:

          sub_1AC4513F8(v18, v19);
          sub_1AC48532C(v21, v20, v165);

          v143 = v167;
          v144 = v166;
          goto LABEL_265;
        }

        if (v68 < 1)
        {
LABEL_123:

          sub_1AC4513F8(v18, v19);
          sub_1AC48532C(v21, v20, v165);

          v66 = v167;
          v67 = v166;
          goto LABEL_124;
        }

        v161 = v17;
        v74 = v18 >> 32;
        switch(v63)
        {
          case 1:
            if (v167 >> 32 < v167)
            {
              goto LABEL_277;
            }

            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v167, v166);
            v81 = sub_1AC51EB78();
            if (!v81)
            {
              goto LABEL_141;
            }

            v86 = sub_1AC51EBA8();
            if (__OFSUB__(v167, v86))
            {
              goto LABEL_283;
            }

            v81 += v167 - v86;
LABEL_141:
            v75 = v166;
LABEL_142:
            sub_1AC51EB98();
            sub_1AC484FFC(__s1, v81, v18, v19);
            sub_1AC4513F8(v18, v19);
            sub_1AC4513F8(v18, v19);
            v76 = v167;
            sub_1AC4513F8(v167, v75);
            v87 = __s1[0];
            sub_1AC4513F8(v18, v19);
            sub_1AC4513F8(v18, v19);

            sub_1AC4513F8(v18, v19);
            sub_1AC48532C(v21, v163, v165);
            v88 = v161;
            goto LABEL_164;
          case 2:
            v80 = *(v167 + 16);
            v149 = *(v167 + 24);
            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v18, v19);
            sub_1AC4578F4(v18, v19);
            v75 = v166;
            sub_1AC4578F4(v167, v166);
            v81 = sub_1AC51EB78();
            if (!v81)
            {
              goto LABEL_128;
            }

            v82 = sub_1AC51EBA8();
            if (__OFSUB__(v80, v82))
            {
              goto LABEL_282;
            }

            v81 += v80 - v82;
            v75 = v166;
LABEL_128:
            if (!__OFSUB__(v149, v80))
            {
              goto LABEL_142;
            }

            goto LABEL_278;
          case 3:
            *&__s1[6] = 0;
            *__s1 = 0;
            if (v64 == 2)
            {
              v89 = *(v18 + 16);
              v90 = *(v18 + 24);
              sub_1AC4578F4(v18, v19);
              sub_1AC4578F4(v167, v166);
              v91 = sub_1AC51EB78();
              if (v91)
              {
                v92 = sub_1AC51EBA8();
                if (__OFSUB__(v89, v92))
                {
                  goto LABEL_295;
                }

                v91 += v89 - v92;
              }

              v34 = __OFSUB__(v90, v89);
              v93 = v90 - v89;
              if (v34)
              {
                goto LABEL_290;
              }

              v94 = sub_1AC51EB98();
              if (!v91)
              {
                goto LABEL_308;
              }

              if (v94 >= v93)
              {
                v95 = v93;
              }

              else
              {
                v95 = v94;
              }

              v96 = memcmp(__s1, v91, v95);
              sub_1AC4513F8(v167, v166);
              sub_1AC4513F8(v18, v19);

              sub_1AC4513F8(v18, v19);
              v97 = v21;
              v98 = v163;
            }

            else
            {
              if (v64 == 1)
              {
                if (v74 < v18)
                {
                  goto LABEL_288;
                }

                sub_1AC4578F4(v18, v19);
                sub_1AC4578F4(v167, v166);
                v83 = sub_1AC51EB78();
                if (v83)
                {
                  v84 = v83;
                  v85 = sub_1AC51EBA8();
                  if (__OFSUB__(v18, v85))
                  {
                    goto LABEL_296;
                  }

                  v150 = (v18 - v85 + v84);
                  v20 = v163;
                }

                else
                {
                  v150 = 0;
                }

                v101 = sub_1AC51EB98();
                if (!v150)
                {
                  __break(1u);
LABEL_308:
                  __break(1u);
LABEL_309:
                  __break(1u);
LABEL_310:
                  __break(1u);
LABEL_311:
                  __break(1u);
LABEL_312:
                  __break(1u);
                  sub_1AC4513F8(v18, v19);
                  MEMORY[0x1AC5B4BA0](0);
                  __break(1u);
LABEL_313:
                  JUMPOUT(0);
                }

                if (v101 >= v74 - v18)
                {
                  v102 = v74 - v18;
                }

                else
                {
                  v102 = v101;
                }

                v96 = memcmp(__s1, v150, v102);
                sub_1AC4513F8(v167, v166);
                sub_1AC4513F8(v18, v19);
              }

              else
              {
                __s2 = v18;
                LOWORD(v169) = v19;
                BYTE2(v169) = BYTE2(v19);
                HIBYTE(v169) = BYTE3(v19);
                LOBYTE(v170) = BYTE4(v19);
                HIBYTE(v170) = BYTE5(v19);
                v96 = memcmp(__s1, &__s2, BYTE6(v19));
              }

              sub_1AC4513F8(v18, v19);
              v97 = v21;
              v98 = v20;
            }

            sub_1AC48532C(v97, v98, v165);
            v88 = v161;
            v87 = v96 == 0;
            v75 = v166;
            v76 = v167;
LABEL_164:

            sub_1AC4513F8(v76, v75);
            sub_1AC48532C(v16, v164, v88);
            if ((v87 & 1) == 0)
            {
              goto LABEL_267;
            }

            break;
          default:
            v75 = v166;
            *__s1 = v167;
            *&__s1[8] = v166;
            *&__s1[12] = WORD2(v166);
            if (v64)
            {
              if (v64 == 1)
              {
                if (v74 < v18)
                {
                  goto LABEL_289;
                }

                sub_1AC4578F4(v18, v19);
                sub_1AC4578F4(v18, v19);
                sub_1AC4578F4(v18, v19);
                v75 = v166;
                v76 = v167;
                sub_1AC4578F4(v167, v166);
                v77 = v19 & 0x3FFFFFFFFFFFFFFFLL;
                v78 = v18;
                v79 = v18 >> 32;
              }

              else
              {
                v100 = *(v18 + 16);
                v151 = *(v18 + 24);
                sub_1AC4578F4(v18, v19);
                sub_1AC4578F4(v18, v19);
                sub_1AC4578F4(v18, v19);
                v76 = v167;
                sub_1AC4578F4(v167, v166);
                v77 = v19 & 0x3FFFFFFFFFFFFFFFLL;
                v78 = v100;
                v79 = v151;
              }

              v152 = sub_1AC485234(v78, v79, v77, __s1);
              sub_1AC4513F8(v18, v19);
              sub_1AC4513F8(v76, v75);
              sub_1AC4513F8(v18, v19);
              sub_1AC4513F8(v18, v19);

              sub_1AC4513F8(v18, v19);
              sub_1AC48532C(v21, v20, v165);
              v88 = v161;
              v87 = v152;
            }

            else
            {
              __s2 = v18;
              LOWORD(v169) = v19;
              BYTE2(v169) = BYTE2(v19);
              HIBYTE(v169) = BYTE3(v19);
              LOBYTE(v170) = BYTE4(v19);
              HIBYTE(v170) = BYTE5(v19);
              v99 = memcmp(__s1, &__s2, BYTE6(v19));

              sub_1AC4513F8(v18, v19);
              sub_1AC48532C(v21, v20, v165);
              v87 = v99 == 0;
              v88 = v161;
              v76 = v167;
            }

            goto LABEL_164;
        }

        break;
      case 2uLL:
        v73 = *(v18 + 16);
        v72 = *(v18 + 24);
        v34 = __OFSUB__(v72, v73);
        v71 = v72 - v73;
        if (!v34)
        {
          goto LABEL_116;
        }

        goto LABEL_272;
      case 3uLL:
        if (v68)
        {
          goto LABEL_261;
        }

        goto LABEL_123;
      default:
        v71 = BYTE6(v19);
        goto LABEL_116;
    }

LABEL_165:
    v12 = v162 + 1;
    v13 += 7;
    v14 += 7;
    v10 = v158;
    v9 = v159;
    if (v157 == v162 + 1)
    {
      goto LABEL_168;
    }
  }

  sub_1AC4578F4(v167, v166);
  sub_1AC4852EC(v16, v15, 0);

  sub_1AC4578F4(v18, v19);
  v23 = v165;
  if (!v165)
  {
    sub_1AC4852EC(v21, v20, 0);
    sub_1AC4852EC(v16, v15, 0);
    sub_1AC4852EC(v21, v20, 0);
    v25 = 0;
LABEL_74:
    sub_1AC48532C(v16, v15, v25);
    goto LABEL_91;
  }

  sub_1AC4852EC(v21, v20, v165);
  sub_1AC4852EC(v16, v15, 0);
  sub_1AC4852EC(v21, v20, v165);
  v145 = v20;
  v146 = v167;
LABEL_264:
  sub_1AC48532C(v16, v15, v17);
  sub_1AC48532C(v21, v145, v23);

  sub_1AC4513F8(v18, v19);
  sub_1AC48532C(v21, v145, v23);

  v143 = v146;
  v144 = v166;
LABEL_265:
  sub_1AC4513F8(v143, v144);
  v141 = v16;
  v142 = v15;
LABEL_266:
  sub_1AC48532C(v141, v142, v17);
LABEL_267:
  sub_1AC486084(v173);
  sub_1AC486084(__dst);
  return 0;
}

uint64_t sub_1AC47B418(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *(v3 - 1);
      v51 = *v3;
      v9 = v4[1];
      v8 = v4[2];
      v11 = v4[3];
      v10 = v4[4];
      if (*(v3 - 5) != *(v4 - 1) || *(v3 - 4) != *v4)
      {
        v50 = v4;
        v13 = *(v3 - 2);
        v14 = v8;
        v15 = sub_1AC51F3D8();
        v8 = v14;
        v5 = v13;
        v4 = v50;
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      v16 = v6 == v9 && v5 == v8;
      if (!v16 && (sub_1AC51F3D8() & 1) == 0)
      {
        return 0;
      }

      v17 = v51 >> 62;
      v18 = v10 >> 62;
      if (v16)
      {
        v20 = 0;
        if (!v7 && v51 == 0xC000000000000000 && v10 >> 62 == 3)
        {
          v20 = 0;
          if (!v11 && v10 == 0xC000000000000000)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v20 = 0;
        switch(v17)
        {
          case 0uLL:
            v20 = BYTE6(v51);
            break;
          case 1uLL:
            if (__OFSUB__(HIDWORD(v7), v7))
            {
              goto LABEL_95;
            }

            v20 = HIDWORD(v7) - v7;
            break;
          case 2uLL:
            v22 = *(v7 + 16);
            v21 = *(v7 + 24);
            v23 = __OFSUB__(v21, v22);
            v20 = v21 - v22;
            if (!v23)
            {
              break;
            }

            goto LABEL_96;
          case 3uLL:
            break;
          default:
            goto LABEL_112;
        }
      }

      switch(v18)
      {
        case 1uLL:
          LODWORD(v24) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
          }

          v24 = v24;
LABEL_40:
          if (v20 != v24)
          {
            return 0;
          }

          if (v20 >= 1)
          {
            v27 = v11 >> 32;
            switch(v17)
            {
              case 1:
                if (v7 >> 32 < v7)
                {
                  goto LABEL_97;
                }

                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v11, v10);

                sub_1AC4578F4(v7, v51);
                sub_1AC4578F4(v11, v10);

                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v7, v51);
                v33 = sub_1AC51EB78();
                if (!v33)
                {
                  goto LABEL_71;
                }

                v37 = sub_1AC51EBA8();
                if (__OFSUB__(v7, v37))
                {
                  goto LABEL_100;
                }

                v33 += v7 - v37;
LABEL_71:
                sub_1AC51EB98();
                sub_1AC484FFC(__s1, v33, v11, v10);
                sub_1AC4513F8(v11, v10);
                sub_1AC4513F8(v11, v10);
                sub_1AC4513F8(v7, v51);
                v38 = __s1[0];
                sub_1AC4513F8(v11, v10);
                sub_1AC4513F8(v11, v10);

                sub_1AC4513F8(v11, v10);
                goto LABEL_89;
              case 2:
                v31 = *(v7 + 16);
                v32 = *(v7 + 24);
                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v11, v10);

                sub_1AC4578F4(v7, v51);
                sub_1AC4578F4(v11, v10);

                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v7, v51);
                v33 = sub_1AC51EB78();
                if (!v33)
                {
                  goto LABEL_54;
                }

                v34 = sub_1AC51EBA8();
                if (__OFSUB__(v31, v34))
                {
                  goto LABEL_99;
                }

                v33 += v31 - v34;
LABEL_54:
                if (!__OFSUB__(v32, v31))
                {
                  goto LABEL_71;
                }

                goto LABEL_98;
              case 3:
                memset(__s1, 0, 14);
                if (v18 == 2)
                {
                  v39 = *(v11 + 16);
                  v40 = *(v11 + 24);
                  sub_1AC4578F4(v11, v10);

                  sub_1AC4578F4(v7, v51);

                  sub_1AC4578F4(v11, v10);
                  sub_1AC4578F4(v7, v51);
                  v28 = sub_1AC51EB78();
                  if (v28)
                  {
                    v41 = sub_1AC51EBA8();
                    if (__OFSUB__(v39, v41))
                    {
                      goto LABEL_106;
                    }

                    v28 += v39 - v41;
                  }

                  v23 = __OFSUB__(v40, v39);
                  v42 = v40 - v39;
                  if (v23)
                  {
                    goto LABEL_104;
                  }

                  v43 = sub_1AC51EB98();
                  if (!v28)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_84;
                }

                if (v18 != 1)
                {
LABEL_78:
                  __s2 = v11;
                  v53 = v10;
                  v54 = BYTE2(v10);
                  v55 = BYTE3(v10);
                  v56 = BYTE4(v10);
                  v57 = BYTE5(v10);

                  sub_1AC4578F4(v7, v51);

                  sub_1AC4578F4(v11, v10);
                  v44 = memcmp(__s1, &__s2, BYTE6(v10));

                  sub_1AC4513F8(v11, v10);
                  goto LABEL_88;
                }

                v49 = v11;
                if (v27 < v11)
                {
                  goto LABEL_102;
                }

                sub_1AC4578F4(v11, v10);

                sub_1AC4578F4(v7, v51);

                sub_1AC4578F4(v11, v10);
                sub_1AC4578F4(v7, v51);
                v28 = sub_1AC51EB78();
                if (v28)
                {
                  v35 = sub_1AC51EBA8();
                  if (__OFSUB__(v11, v35))
                  {
                    goto LABEL_107;
                  }

                  v28 += v11 - v35;
                }

                v30 = sub_1AC51EB98();
                if (!v28)
                {
                  goto LABEL_109;
                }

                goto LABEL_64;
              default:
                __s1[0] = v7;
                LODWORD(__s1[1]) = v51;
                WORD2(__s1[1]) = WORD2(v51);
                if (!v18)
                {
                  goto LABEL_78;
                }

                if (v18 == 1)
                {
                  v49 = v11;
                  if (v27 < v11)
                  {
                    goto LABEL_101;
                  }

                  sub_1AC4578F4(v11, v10);

                  sub_1AC4578F4(v7, v51);

                  sub_1AC4578F4(v11, v10);
                  sub_1AC4578F4(v7, v51);
                  v28 = sub_1AC51EB78();
                  if (v28)
                  {
                    v29 = sub_1AC51EBA8();
                    if (__OFSUB__(v11, v29))
                    {
                      goto LABEL_108;
                    }

                    v28 += v11 - v29;
                  }

                  v30 = sub_1AC51EB98();
                  if (!v28)
                  {
                    __break(1u);
LABEL_109:
                    __break(1u);
LABEL_110:
                    __break(1u);
LABEL_111:
                    __break(1u);
                    sub_1AC4513F8(v11, v10);
                    MEMORY[0x1AC5B4BA0](0);
                    __break(1u);
LABEL_112:
                    JUMPOUT(0);
                  }

LABEL_64:
                  if (v30 >= v27 - v49)
                  {
                    v36 = v27 - v49;
                  }

                  else
                  {
                    v36 = v30;
                  }
                }

                else
                {
                  v45 = *(v11 + 16);
                  v46 = *(v11 + 24);
                  sub_1AC4578F4(v11, v10);

                  sub_1AC4578F4(v7, v51);

                  sub_1AC4578F4(v11, v10);
                  sub_1AC4578F4(v7, v51);
                  v28 = sub_1AC51EB78();
                  if (v28)
                  {
                    v47 = sub_1AC51EBA8();
                    if (__OFSUB__(v45, v47))
                    {
                      goto LABEL_105;
                    }

                    v28 += v45 - v47;
                  }

                  v23 = __OFSUB__(v46, v45);
                  v42 = v46 - v45;
                  if (v23)
                  {
                    goto LABEL_103;
                  }

                  v43 = sub_1AC51EB98();
                  if (!v28)
                  {
                    goto LABEL_111;
                  }

LABEL_84:
                  if (v43 >= v42)
                  {
                    v36 = v42;
                  }

                  else
                  {
                    v36 = v43;
                  }
                }

                v44 = memcmp(__s1, v28, v36);
                sub_1AC4513F8(v7, v51);
                sub_1AC4513F8(v11, v10);

                sub_1AC4513F8(v11, v10);
LABEL_88:
                v38 = v44 == 0;
LABEL_89:

                sub_1AC4513F8(v7, v51);
                if ((v38 & 1) == 0)
                {
                  return 0;
                }

                break;
            }
          }

          break;
        case 2uLL:
          v26 = *(v11 + 16);
          v25 = *(v11 + 24);
          v23 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (!v23)
          {
            goto LABEL_40;
          }

          goto LABEL_94;
        case 3uLL:
          if (v20)
          {
            return 0;
          }

          break;
        default:
          v24 = BYTE6(v10);
          goto LABEL_40;
      }

LABEL_90:
      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AC47BE28()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, sizeof(__dst));
      memcpy(v11, v0, sizeof(v11));
      memcpy(v13, v1, sizeof(v13));
      memcpy(__src, v1, sizeof(__src));
      sub_1AC485754(__dst, v9);
      sub_1AC485754(v13, v9);
      static Google_Protobuf_MethodDescriptorProto.== infix(_:_:)(v11, __src);
      v7 = v6;
      memcpy(v14, __src, sizeof(v14));
      sub_1AC4857B0(v14);
      memcpy(v15, v11, sizeof(v15));
      sub_1AC4857B0(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v0 += 136;
      v1 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47C690(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC47C6EC(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v175 = 0;
  v3 = (a1 + 48);
  v4 = (a2 + 48);
  while (2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v9 = *(v4 - 2);
    v8 = *(v4 - 1);
    v10 = *v4;
    v11 = OUTLINED_FUNCTION_92();
    sub_1AC4578F4(v11, v12);

    v13 = OUTLINED_FUNCTION_12_0();
    sub_1AC4578F4(v13, v14);

    if (v7 != v10)
    {

      sub_1AC4A718C(v7, v10);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
LABEL_94:
        v158 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v158, v159);

        v160 = OUTLINED_FUNCTION_92();
        sub_1AC4513F8(v160, v161);

        return 0;
      }
    }

    OUTLINED_FUNCTION_74();
    if (v21)
    {
      v27 = 0;
      if (!v5 && v6 == 0xC000000000000000 && v18 >= 3)
      {
        v27 = 0;
        if (!v9 && v8 == 0xC000000000000000)
        {
          v23 = OUTLINED_FUNCTION_15_1();
          sub_1AC4513F8(v23, v24);

          v25 = OUTLINED_FUNCTION_15_1();
LABEL_42:
          sub_1AC4513F8(v25, v26);

          goto LABEL_92;
        }
      }
    }

    else
    {
      v27 = 0;
      switch(v20)
      {
        case 1:
          if (__OFSUB__(v19, v5))
          {
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
          }

          v27 = v19 - v5;
          break;
        case 2:
          v29 = *(v5 + 16);
          v28 = *(v5 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (!v30)
          {
            break;
          }

          goto LABEL_98;
        case 3:
          break;
        default:
          v27 = BYTE6(v6);
          break;
      }
    }

    v31 = BYTE6(v8);
    switch(v18)
    {
      case 1uLL:
        LODWORD(v32) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_96;
        }

        v32 = v32;
LABEL_32:
        if (v27 != v32)
        {
          goto LABEL_94;
        }

        if (v27 < 1)
        {
LABEL_41:
          v46 = OUTLINED_FUNCTION_12_0();
          sub_1AC4513F8(v46, v47);

          v25 = OUTLINED_FUNCTION_92();
          goto LABEL_42;
        }

        break;
      case 2uLL:
        OUTLINED_FUNCTION_82();
        if (!v30)
        {
          goto LABEL_32;
        }

        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      case 3uLL:
        if (v27)
        {
          goto LABEL_94;
        }

        goto LABEL_41;
      default:
        v32 = BYTE6(v8);
        goto LABEL_32;
    }

    v178 = v7;
    v33 = v9 >> 32;
    switch(v20)
    {
      case 1:
        v165 = v5 >> 32;
        if (v5 >> 32 < v5)
        {
          goto LABEL_99;
        }

        v162 = v5;
        v71 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v71, v72);
        v73 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v73, v74);
        v75 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v75, v76);
        v77 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v77, v78);
        sub_1AC4578F4(v5, v6);
        v56 = sub_1AC51EB78();
        v172 = v10;
        if (!v56)
        {
          goto LABEL_60;
        }

        v79 = sub_1AC51EBA8();
        if (__OFSUB__(v5, v79))
        {
          goto LABEL_102;
        }

        v56 += v5 - v79;
        goto LABEL_60;
      case 2:
        v162 = *(v5 + 24);
        v165 = *(v5 + 16);
        v48 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v48, v49);
        v50 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v50, v51);
        v52 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v52, v53);
        v54 = OUTLINED_FUNCTION_12_0();
        sub_1AC4578F4(v54, v55);
        sub_1AC4578F4(v5, v6);
        v56 = sub_1AC51EB78();
        if (v56)
        {
          v57 = sub_1AC51EBA8();
          v58 = v165;
          if (__OFSUB__(v165, v57))
          {
            goto LABEL_101;
          }

          v56 += v165 - v57;
        }

        else
        {
          v58 = v165;
        }

        v172 = v10;
        if (__OFSUB__(v162, v58))
        {
          goto LABEL_100;
        }

LABEL_60:
        sub_1AC51EB98();
        OUTLINED_FUNCTION_45();
        sub_1AC484FFC(__s1, v56, v9, v8);
        v80 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v80, v81);
        v82 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v82, v83);
        v84 = OUTLINED_FUNCTION_19();
        sub_1AC4513F8(v84, v85);
        v86 = __s1[0];
        v87 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v87, v88);
        v89 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v89, v90);
        v91 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v91, v92);

        goto LABEL_91;
      case 3:
        memset(__s1, 0, 14);
        if (v18 == 2)
        {
          v93 = *(v9 + 16);
          v170 = *(v9 + 24);
          v94 = OUTLINED_FUNCTION_12_0();
          v96 = sub_1AC4578F4(v94, v95);
          OUTLINED_FUNCTION_108_0(v96, v97, v98, v99, v100, v101, v102, v103, v162, v170, v172, v175, v178, v6);
          v104 = sub_1AC51EB78();
          if (v104)
          {
            v105 = sub_1AC51EBA8();
            if (__OFSUB__(v93, v105))
            {
              goto LABEL_107;
            }

            v104 += v93 - v105;
          }

          v30 = __OFSUB__(v169, v93);
          v106 = v169 - v93;
          if (v30)
          {
            goto LABEL_105;
          }

          v107 = v8;
          result = sub_1AC51EB98();
          if (!v104)
          {
            goto LABEL_113;
          }

          if (result >= v106)
          {
            v109 = v106;
          }

          else
          {
            v109 = result;
          }

          v110 = v104;
        }

        else
        {
          if (v18 != 1)
          {
            v107 = OUTLINED_FUNCTION_42(SHIBYTE(v9), SBYTE6(v9), v31, SBYTE5(v9), SBYTE3(v9), SBYTE2(v9), SBYTE1(v9), v17, v162, v165, v172, v175, v178, v6, v183, SBYTE2(v183), SBYTE3(v183), SBYTE4(v183), SBYTE5(v183), SBYTE6(v183), SHIBYTE(v183), v184, SBYTE1(v184), SBYTE2(v184), SBYTE3(v184), SBYTE4(v184), SBYTE5(v184), SBYTE6(v184), SHIBYTE(v184), __s1[0]);
            v114 = OUTLINED_FUNCTION_12_0();
            sub_1AC4513F8(v114, v115);

            goto LABEL_85;
          }

          if (v33 < v9)
          {
            goto LABEL_103;
          }

          v59 = OUTLINED_FUNCTION_12_0();
          v61 = sub_1AC4578F4(v59, v60);
          OUTLINED_FUNCTION_108_0(v61, v62, v63, v64, v65, v66, v67, v68, v162, v165, v172, v175, v178, v6);
          v69 = sub_1AC51EB78();
          if (v69)
          {
            v168 = v69;
            v70 = sub_1AC51EBA8();
            if (__OFSUB__(v9, v70))
            {
              goto LABEL_110;
            }

            v169 = v9 - v70 + v168;
          }

          else
          {
            v169 = 0;
          }

          v107 = v8;
          result = sub_1AC51EB98();
          if (!v169)
          {
            goto LABEL_114;
          }

          OUTLINED_FUNCTION_40();
        }

        v132 = memcmp(__s1, v110, v109);
        OUTLINED_FUNCTION_106(v132, v133, v134, v135, v136, v137, v138, v139, v164, v169, v174, v177, v180, v182);
        v140 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v140, v141);
        v142 = OUTLINED_FUNCTION_12_0();
        sub_1AC4513F8(v142, v143);

LABEL_85:
        v86 = v107 == 0;
        goto LABEL_91;
      default:
        LOWORD(__s1[0]) = v5;
        BYTE2(__s1[0]) = BYTE2(v5);
        BYTE3(__s1[0]) = BYTE3(v5);
        BYTE4(__s1[0]) = v19;
        BYTE5(__s1[0]) = BYTE5(v5);
        BYTE6(__s1[0]) = BYTE6(v5);
        HIBYTE(__s1[0]) = HIBYTE(v5);
        LODWORD(__s1[1]) = v6;
        WORD2(__s1[1]) = WORD2(v6);
        if (!v18)
        {
          v111 = OUTLINED_FUNCTION_42(SHIBYTE(v9), SBYTE6(v9), v31, SBYTE5(v9), SBYTE3(v9), SBYTE2(v9), SBYTE1(v9), v6, v162, v165, v172, v175, v178, v6, v183, SBYTE2(v183), SBYTE3(v183), SBYTE4(v183), SBYTE5(v183), SBYTE6(v183), SHIBYTE(v183), v184, SBYTE1(v184), SBYTE2(v184), SBYTE3(v184), SBYTE4(v184), SBYTE5(v184), SBYTE6(v184), SHIBYTE(v184), __s1[0]);
          v112 = OUTLINED_FUNCTION_12_0();
          sub_1AC4513F8(v112, v113);

          goto LABEL_90;
        }

        if (v18 != 1)
        {
          v116 = *(v9 + 16);
          v171 = *(v9 + 24);
          v117 = OUTLINED_FUNCTION_12_0();
          v119 = sub_1AC4578F4(v117, v118);
          OUTLINED_FUNCTION_108_0(v119, v120, v121, v122, v123, v124, v125, v126, v162, v171, v172, v175, v178, v6);
          v127 = sub_1AC51EB78();
          if (v127)
          {
            v128 = sub_1AC51EBA8();
            if (__OFSUB__(v116, v128))
            {
              goto LABEL_108;
            }

            v127 += v116 - v128;
          }

          v30 = __OFSUB__(v167, v116);
          v129 = v167 - v116;
          if (v30)
          {
            goto LABEL_106;
          }

          v111 = v8;
          result = sub_1AC51EB98();
          if (!v127)
          {
            goto LABEL_112;
          }

          if (result >= v129)
          {
            v130 = v129;
          }

          else
          {
            v130 = result;
          }

          v131 = v127;
          goto LABEL_89;
        }

        if (v33 < v9)
        {
          goto LABEL_104;
        }

        v34 = OUTLINED_FUNCTION_12_0();
        v36 = sub_1AC4578F4(v34, v35);
        OUTLINED_FUNCTION_108_0(v36, v37, v38, v39, v40, v41, v42, v43, v162, v165, v172, v175, v178, v6);
        v44 = sub_1AC51EB78();
        if (v44)
        {
          v166 = v44;
          v45 = sub_1AC51EBA8();
          if (__OFSUB__(v9, v45))
          {
            goto LABEL_109;
          }

          v167 = v9 - v45 + v166;
        }

        else
        {
          v167 = 0;
        }

        v111 = v8;
        result = sub_1AC51EB98();
        if (v167)
        {
          OUTLINED_FUNCTION_40();
LABEL_89:
          v144 = memcmp(__s1, v131, v130);
          OUTLINED_FUNCTION_106(v144, v145, v146, v147, v148, v149, v150, v151, v163, v167, v173, v176, v179, v181);
          v152 = OUTLINED_FUNCTION_12_0();
          sub_1AC4513F8(v152, v153);
          v154 = OUTLINED_FUNCTION_12_0();
          sub_1AC4513F8(v154, v155);

LABEL_90:
          v86 = v111 == 0;
LABEL_91:
          v156 = OUTLINED_FUNCTION_92();
          sub_1AC4513F8(v156, v157);

          if ((v86 & 1) == 0)
          {
            return 0;
          }

LABEL_92:
          v3 += 3;
          v4 += 3;
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_1AC47CE48()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, 0x7EuLL);
      memcpy(v11, v0, 0x7EuLL);
      memcpy(v13, v1, 0x7EuLL);
      memcpy(__src, v1, 0x7EuLL);
      sub_1AC485EEC(__dst, v9);
      sub_1AC485EEC(v13, v9);
      static Google_Protobuf_EnumDescriptorProto.== infix(_:_:)(v11, __src);
      v7 = v6;
      memcpy(v14, __src, 0x7EuLL);
      sub_1AC485F48(v14);
      memcpy(v15, v11, 0x7EuLL);
      sub_1AC485F48(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v0 += 128;
      v1 += 128;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47CF4C()
{
  OUTLINED_FUNCTION_10_2();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      OUTLINED_FUNCTION_111(v20);
      OUTLINED_FUNCTION_111(__src);
      OUTLINED_FUNCTION_114(v21);
      OUTLINED_FUNCTION_114(v18);
      sub_1AC485E3C(v20, v17);
      sub_1AC485E3C(v21, v17);
      static Google_Protobuf_ServiceDescriptorProto.== infix(_:_:)(__src, v18);
      OUTLINED_FUNCTION_105(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12]);
      sub_1AC485E98(v22);
      memcpy(__dst, __src, 0x67uLL);
      sub_1AC485E98(__dst);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v1 += 104;
      v0 += 104;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47D020()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, 0x91uLL);
      memcpy(v10, v0, 0x91uLL);
      memcpy(v12, v1, 0x91uLL);
      memcpy(__src, v1, 0x91uLL);
      sub_1AC485D8C(__dst, v8);
      sub_1AC485D8C(v12, v8);
      v6 = static Google_Protobuf_FieldDescriptorProto.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, 0x91uLL);
      sub_1AC485DE8(v13);
      memcpy(v14, v10, 0x91uLL);
      sub_1AC485DE8(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v1 += 152;
      v0 += 152;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47D124()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, 0x99uLL);
      memcpy(v11, v0, 0x99uLL);
      memcpy(v13, v1, 0x99uLL);
      memcpy(__src, v1, 0x99uLL);
      sub_1AC485910(__dst, v9);
      sub_1AC485910(v13, v9);
      static Google_Protobuf_EnumValueDescriptorProto.== infix(_:_:)(v11, __src);
      v7 = v6;
      memcpy(v14, __src, 0x99uLL);
      sub_1AC48596C(v14);
      memcpy(v15, v11, 0x99uLL);
      sub_1AC48596C(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v1 += 160;
      v0 += 160;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47D834()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, 0x56uLL);
      memcpy(v10, v0, 0x56uLL);
      memcpy(v12, v1, 0x56uLL);
      memcpy(__src, v1, 0x56uLL);
      sub_1AC485664(__dst, v8);
      sub_1AC485664(v12, v8);
      v6 = static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, 0x56uLL);
      sub_1AC4856C0(v13);
      memcpy(v14, v10, 0x56uLL);
      sub_1AC4856C0(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v1 += 88;
      v0 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47D938(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = (a2 + 32); ; i = (i + 56))
    {
      v5 = *(v3 + 16);
      v21[0] = *v3;
      v21[1] = v5;
      v22[0] = *(v3 + 32);
      v6 = v22[0];
      *(v22 + 14) = *(v3 + 46);
      v18 = v21[0];
      v19 = v5;
      v20[0] = v6;
      *(v20 + 14) = *(v22 + 14);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      *(v24 + 14) = *(i + 46);
      v10 = *(v24 + 14);
      v23[1] = v8;
      v24[0] = v9;
      v23[0] = v7;
      v15 = v7;
      v16 = v8;
      v17[0] = v9;
      *(v17 + 14) = v10;
      sub_1AC4855B4(v21, v14);
      sub_1AC4855B4(v23, v14);
      static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)(&v18);
      v12 = v11;
      v25[0] = v15;
      v25[1] = v16;
      v26[0] = v17[0];
      *(v26 + 14) = *(v17 + 14);
      sub_1AC485610(v25);
      v27[0] = v18;
      v27[1] = v19;
      *v28 = v20[0];
      *&v28[14] = *(v20 + 14);
      sub_1AC485610(v27);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47DA64()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, 0xB1uLL);
      memcpy(v10, v0, 0xB1uLL);
      memcpy(v12, v1, 0xB1uLL);
      memcpy(__src, v1, 0xB1uLL);
      sub_1AC485F9C(__dst, v8);
      sub_1AC485F9C(v12, v8);
      v6 = static Google_Protobuf_FileDescriptorProto.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, 0xB1uLL);
      sub_1AC485FF8(v13);
      memcpy(v14, v10, 0xB1uLL);
      sub_1AC485FF8(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v1 += 184;
      v0 += 184;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47DB68()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, sizeof(__dst));
      memcpy(v10, v0, sizeof(v10));
      memcpy(v12, v1, sizeof(v12));
      memcpy(__src, v1, sizeof(__src));
      sub_1AC485ACC(__dst, v8);
      sub_1AC485ACC(v12, v8);
      v6 = static Google_Protobuf_UninterpretedOption.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, sizeof(v13));
      sub_1AC485B28(v13);
      memcpy(v14, v10, sizeof(v14));
      sub_1AC485B28(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v0 += 120;
      v1 += 120;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47DC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 4)
    {
      v5 = v3[1];
      v21[0] = *v3;
      v21[1] = v5;
      v22[0] = v3[2];
      v6 = v22[0];
      *(v22 + 10) = *(v3 + 42);
      v18 = v21[0];
      v19 = v5;
      v20[0] = v6;
      *(v20 + 10) = *(v22 + 10);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      *(v24 + 10) = *(i + 42);
      v10 = *(v24 + 10);
      v23[1] = v8;
      v24[0] = v9;
      v23[0] = v7;
      v15 = v7;
      v16 = v8;
      v17[0] = v9;
      *(v17 + 10) = v10;
      sub_1AC485A1C(v21, v14);
      sub_1AC485A1C(v23, v14);
      static Google_Protobuf_ExtensionRangeOptions.Declaration.== infix(_:_:)(&v18, &v15);
      v12 = v11;
      v25[0] = v15;
      v25[1] = v16;
      v26[0] = v17[0];
      *(v26 + 10) = *(v17 + 10);
      sub_1AC485A78(v25);
      v27[0] = v18;
      v27[1] = v19;
      v28[0] = v20[0];
      *(v28 + 10) = *(v20 + 10);
      sub_1AC485A78(v27);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47DD98(uint64_t a1, uint64_t a2)
{
  v349[9] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v290 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    memcpy(__dst, (v4 + 72 * v3), sizeof(__dst));
    memcpy(v349, (v5 + 72 * v3), 0x48uLL);
    v6 = *(__dst[0] + 16);
    if (v6 != *(v349[0] + 16))
    {
      return 0;
    }

    if (v6)
    {
      v7 = __dst[0] == v349[0];
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (__dst[0] + 32);
      v9 = (v349[0] + 32);
      while (v6)
      {
        if (*v8 != *v9)
        {
          return 0;
        }

        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
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
    }

LABEL_14:
    v10 = *(__dst[1] + 16);
    if (v10 != *(v349[1] + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = __dst[1] == v349[1];
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (__dst[1] + 32);
      v13 = (v349[1] + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_134;
    }

LABEL_23:
    if (__dst[6])
    {
      if (!v349[6])
      {
        return 0;
      }

      v14 = __dst[5] == v349[5] && __dst[6] == v349[6];
      if (!v14 && (sub_1AC51F3D8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v349[6])
    {
      return 0;
    }

    if (__dst[8])
    {
      if (!v349[8])
      {
        return 0;
      }

      v15 = __dst[7] == v349[7] && __dst[8] == v349[8];
      if (!v15 && (sub_1AC51F3D8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v349[8])
    {
      return 0;
    }

    v16 = *(__dst[2] + 16);
    v17 = *(v349[2] + 16);
    v18 = v16 == v17;
    if (v16 != v17)
    {
      return 0;
    }

    if (v16)
    {
      v18 = __dst[2] == v349[2];
      if (__dst[2] != v349[2])
      {
        break;
      }
    }

LABEL_51:
    v301 = v5;
    v22 = __dst[4] >> 62;
    v24 = v349[3];
    v23 = v349[4];
    v25 = v349[4] >> 62;
    if (v18)
    {
      v27 = 0;
      if (!__dst[3] && __dst[4] == 0xC000000000000000 && v349[4] >> 62 == 3)
      {
        v27 = 0;
        if (!v349[3] && v349[4] == 0xC000000000000000)
        {
LABEL_87:
          v5 = v301;
          goto LABEL_129;
        }
      }
    }

    else
    {
      v27 = 0;
      switch(v22)
      {
        case 0:
          v27 = BYTE6(__dst[4]);
          break;
        case 1:
          if (__OFSUB__(HIDWORD(__dst[3]), __dst[3]))
          {
            goto LABEL_137;
          }

          v27 = HIDWORD(__dst[3]) - LODWORD(__dst[3]);
          break;
        case 2:
          v29 = *(__dst[3] + 16);
          v28 = *(__dst[3] + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (!v30)
          {
            break;
          }

          goto LABEL_138;
        case 3:
          break;
        default:
          goto LABEL_155;
      }
    }

    switch(v25)
    {
      case 1:
        LODWORD(v31) = HIDWORD(v349[3]) - LODWORD(v349[3]);
        if (__OFSUB__(HIDWORD(v349[3]), v349[3]))
        {
          goto LABEL_136;
        }

        v31 = v31;
LABEL_76:
        if (v27 != v31)
        {
          return 0;
        }

        if (v27 < 1)
        {
          goto LABEL_87;
        }

        break;
      case 2:
        v33 = *(v349[3] + 16);
        v32 = *(v349[3] + 24);
        v30 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (!v30)
        {
          goto LABEL_76;
        }

        goto LABEL_135;
      case 3:
        v5 = v301;
        if (v27)
        {
          return 0;
        }

        goto LABEL_129;
      default:
        v31 = BYTE6(v349[4]);
        goto LABEL_76;
    }

    v34 = v349[3] >> 32;
    switch(v22)
    {
      case 1:
        if (__dst[3] >> 32 < SLODWORD(__dst[3]))
        {
          goto LABEL_139;
        }

        v269 = SLODWORD(__dst[3]);
        v110 = OUTLINED_FUNCTION_33();
        sub_1AC4578F4(v110, v111);
        v112 = OUTLINED_FUNCTION_33();
        sub_1AC4578F4(v112, v113);
        v114 = OUTLINED_FUNCTION_33();
        sub_1AC4578F4(v114, v115);
        v116 = OUTLINED_FUNCTION_33();
        v118 = sub_1AC4578F4(v116, v117);
        v126 = OUTLINED_FUNCTION_81(v118, v119, v120, v121, v122, v123, v124, v125, v269, v4, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
        OUTLINED_FUNCTION_78(v126, v127, v128, v129, v130, v131, v132, v133, v270, v283, v294, v307, v318, v329, __s1, v337, v338);
        v134 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v134, v135);
        if (!sub_1AC51EB78() || !__OFSUB__(v262, sub_1AC51EBA8()))
        {
          goto LABEL_104;
        }

        goto LABEL_142;
      case 2:
        v58 = *(__dst[3] + 16);
        v265 = *(__dst[3] + 24);
        v59 = OUTLINED_FUNCTION_33();
        sub_1AC4578F4(v59, v60);
        v61 = OUTLINED_FUNCTION_33();
        sub_1AC4578F4(v61, v62);
        v63 = OUTLINED_FUNCTION_33();
        sub_1AC4578F4(v63, v64);
        v65 = OUTLINED_FUNCTION_33();
        v67 = sub_1AC4578F4(v65, v66);
        v75 = OUTLINED_FUNCTION_81(v67, v68, v69, v70, v71, v72, v73, v74, v265, v4, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
        OUTLINED_FUNCTION_78(v75, v76, v77, v78, v79, v80, v81, v82, v266, v281, v292, v304, v316, v327, __s1, v337, v338);
        v83 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v83, v84);
        if (sub_1AC51EB78() && __OFSUB__(v58, sub_1AC51EBA8()))
        {
          goto LABEL_141;
        }

        OUTLINED_FUNCTION_72();
        if (v30)
        {
          goto LABEL_140;
        }

LABEL_104:
        sub_1AC51EB98();
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_101();
        sub_1AC484FFC(v139, v136, v137, v138);
        v140 = OUTLINED_FUNCTION_33();
        sub_1AC4513F8(v140, v141);
        v142 = OUTLINED_FUNCTION_33();
        sub_1AC4513F8(v142, v143);
        v144 = OUTLINED_FUNCTION_12();
        sub_1AC4513F8(v144, v145);
        v146 = v339;
        v147 = OUTLINED_FUNCTION_33();
        sub_1AC4513F8(v147, v148);
        v149 = OUTLINED_FUNCTION_33();
        sub_1AC4513F8(v149, v150);
        sub_1AC485D38(v349);
        v4 = v279;
        goto LABEL_127;
      case 3:
        OUTLINED_FUNCTION_35();
        if (v7)
        {
          v151 = *(v24 + 16);
          v271 = *(v24 + 24);
          v152 = OUTLINED_FUNCTION_33();
          v154 = sub_1AC4578F4(v152, v153);
          v162 = OUTLINED_FUNCTION_81(v154, v155, v156, v157, v158, v159, v160, v161, v271, v4, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
          OUTLINED_FUNCTION_78(v162, v163, v164, v165, v166, v167, v168, v169, v272, v284, v295, v308, v319, v330, __s1, v337, v338);
          v170 = OUTLINED_FUNCTION_12();
          sub_1AC4578F4(v170, v171);
          v107 = sub_1AC51EB78();
          if (v107)
          {
            v172 = sub_1AC51EBA8();
            if (__OFSUB__(v151, v172))
            {
              goto LABEL_148;
            }

            v107 += v151 - v172;
          }

          OUTLINED_FUNCTION_72();
          if (v30)
          {
            goto LABEL_145;
          }

          v173 = sub_1AC51EB98();
          if (!v107)
          {
            goto LABEL_152;
          }

          if (v173 >= v151)
          {
            v109 = v151;
          }

          else
          {
            v109 = v173;
          }

          goto LABEL_113;
        }

        if (v86 == 1)
        {
          v267 = v85;
          if (v34 < v24)
          {
            goto LABEL_144;
          }

          v87 = OUTLINED_FUNCTION_33();
          v89 = sub_1AC4578F4(v87, v88);
          v97 = OUTLINED_FUNCTION_81(v89, v90, v91, v92, v93, v94, v95, v96, v267, v4, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
          OUTLINED_FUNCTION_78(v97, v98, v99, v100, v101, v102, v103, v104, v268, v282, v293, v305, v317, v328, __s1, v337, v338);
          v105 = OUTLINED_FUNCTION_12();
          sub_1AC4578F4(v105, v106);
          v107 = sub_1AC51EB78();
          if (v107)
          {
            sub_1AC51EBA8();
            OUTLINED_FUNCTION_93();
            if (v30)
            {
              goto LABEL_150;
            }

            v107 += v108;
          }

          sub_1AC51EB98();
          if (!v107)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            JUMPOUT(0);
          }

          OUTLINED_FUNCTION_22_1();
LABEL_113:
          v174 = memcmp(&__s1, v107, v109);
          v175 = OUTLINED_FUNCTION_12();
          sub_1AC4513F8(v175, v176);
          v177 = OUTLINED_FUNCTION_33();
          sub_1AC4513F8(v177, v178);
          sub_1AC485D38(v349);
          v4 = v279;
          goto LABEL_116;
        }

        BYTE2(v314) = v24;
        OUTLINED_FUNCTION_1_2();
        BYTE2(v325) = v23;
        OUTLINED_FUNCTION_3_2();
        v215 = OUTLINED_FUNCTION_81(v207, v208, v209, v210, v211, v212, v213, v214, v262, v279, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
        v223 = OUTLINED_FUNCTION_78(v215, v216, v217, v218, v219, v220, v221, v222, v275, v287, v298, v311, v322, v333, __s1, v337, v338);
        v231 = OUTLINED_FUNCTION_13(v223, v224, v225, v226, v227, v228, v229, v230, v276, v288, v299, v312, v323, v334, __s1);
        v174 = memcmp(v231, v232, v233);
        sub_1AC485D38(v349);
LABEL_116:
        v5 = v306;
        v146 = v174 == 0;
LABEL_128:
        sub_1AC485D38(__dst);
        if ((v146 & 1) == 0)
        {
          return 0;
        }

        break;
      default:
        __s1 = __dst[3];
        LODWORD(v337) = __dst[4];
        WORD2(v337) = WORD2(__dst[4]);
        if (v25)
        {
          if (v25 == 1)
          {
            v263 = SLODWORD(v349[3]);
            if (v34 < SLODWORD(v349[3]))
            {
              goto LABEL_143;
            }

            v35 = OUTLINED_FUNCTION_33();
            v37 = sub_1AC4578F4(v35, v36);
            v45 = OUTLINED_FUNCTION_81(v37, v38, v39, v40, v41, v42, v43, v44, v263, v4, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
            OUTLINED_FUNCTION_78(v45, v46, v47, v48, v49, v50, v51, v52, v264, v280, v291, v302, v315, v326, __s1, v337, v338);
            v53 = OUTLINED_FUNCTION_12();
            sub_1AC4578F4(v53, v54);
            v55 = sub_1AC51EB78();
            if (v55)
            {
              sub_1AC51EBA8();
              OUTLINED_FUNCTION_93();
              if (v30)
              {
                goto LABEL_149;
              }

              v55 += v56;
            }

            sub_1AC51EB98();
            if (!v55)
            {
              goto LABEL_154;
            }

            OUTLINED_FUNCTION_22_1();
          }

          else
          {
            v234 = *(v349[3] + 16);
            v277 = *(v349[3] + 24);
            v235 = OUTLINED_FUNCTION_33();
            v237 = sub_1AC4578F4(v235, v236);
            v245 = OUTLINED_FUNCTION_81(v237, v238, v239, v240, v241, v242, v243, v244, v277, v4, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
            OUTLINED_FUNCTION_78(v245, v246, v247, v248, v249, v250, v251, v252, v278, v289, v300, v313, v324, v335, __s1, v337, v338);
            v253 = OUTLINED_FUNCTION_12();
            sub_1AC4578F4(v253, v254);
            v55 = sub_1AC51EB78();
            if (v55)
            {
              v255 = sub_1AC51EBA8();
              if (__OFSUB__(v234, v255))
              {
                goto LABEL_147;
              }

              v55 += v234 - v255;
            }

            OUTLINED_FUNCTION_72();
            if (v30)
            {
              goto LABEL_146;
            }

            v256 = sub_1AC51EB98();
            if (!v55)
            {
              goto LABEL_153;
            }

            if (v256 >= v234)
            {
              v57 = v234;
            }

            else
            {
              v57 = v256;
            }
          }

          v206 = memcmp(&__s1, v55, v57);
          v257 = OUTLINED_FUNCTION_12();
          sub_1AC4513F8(v257, v258);
          v259 = OUTLINED_FUNCTION_33();
          sub_1AC4513F8(v259, v260);
          sub_1AC485D38(v349);
          v4 = v279;
        }

        else
        {
          BYTE2(v314) = v349[3];
          OUTLINED_FUNCTION_1_2();
          BYTE2(v325) = v23;
          OUTLINED_FUNCTION_3_2();
          v187 = OUTLINED_FUNCTION_81(v179, v180, v181, v182, v183, v184, v185, v186, v262, v279, v290, v301, v314, v325, __s1, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
          v195 = OUTLINED_FUNCTION_78(v187, v188, v189, v190, v191, v192, v193, v194, v273, v285, v296, v309, v320, v331, __s1, v337, v338);
          v203 = OUTLINED_FUNCTION_13(v195, v196, v197, v198, v199, v200, v201, v202, v274, v286, v297, v310, v321, v332, __s1);
          v206 = memcmp(v203, v204, v205);
          sub_1AC485D38(v349);
        }

        v146 = v206 == 0;
LABEL_127:
        v5 = v303;
        goto LABEL_128;
    }

LABEL_129:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v19 = (__dst[2] + 40);
  v20 = (v349[2] + 40);
  while (1)
  {
    v21 = *(v19 - 1) == *(v20 - 1) && *v19 == *v20;
    if (!v21 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }

    v19 += 2;
    v20 += 2;
    v18 = --v16 == 0;
    if (!v16)
    {
      goto LABEL_51;
    }
  }
}

uint64_t sub_1AC47E5E0(uint64_t a1, uint64_t a2)
{
  v484 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v328 = 0;
  v3 = (a2 + 72);
  v428 = (a1 + 72);
  while (1)
  {
    if (!v2)
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
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
    }

    v4 = *(v428 - 5);
    v5 = *(v428 - 4);
    v6 = *(v428 - 16);
    v465 = *v428;
    v472 = *(v428 - 3);
    v7 = *(v3 - 5);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v10 = *(v3 - 16);
    v11 = *v3;
    v475 = *(v3 - 1);
    v405 = v4;
    v417 = v7;
    v439 = *(v428 - 1);
    v383 = v8;
    v394 = v9;
    HIDWORD(v451) = v10;
    v361 = v2;
    HIDWORD(v372) = v6;
    if ((~v472 & 0x3000000000000000) == 0 && v6 == 255)
    {
      break;
    }

    *&__s1 = *(v428 - 5);
    *(&__s1 + 1) = v5;
    v482 = v472;
    v483 = v6;
    if ((~v9 & 0x3000000000000000) == 0 && v10 == 255)
    {
      v269 = v8;
      v270 = v472;
      sub_1AC48541C(v4, v5, v472, v6);
      v26 = v465;
      sub_1AC4578F4(v439, v465);
      v271 = OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_113(v271, v272);
      v281 = OUTLINED_FUNCTION_66(v273, v274, v275, v276, v277, v278, v279, v280, v328, v339, v350, v361, v372, v383, v394, v405, v417, v428, v439, v451, v465, v472, v475);
      sub_1AC4578F4(v281, v282);
      v283 = OUTLINED_FUNCTION_48();
      sub_1AC48541C(v283, v284, v270, v6);
      OUTLINED_FUNCTION_113(v418, v269);
      v285 = OUTLINED_FUNCTION_48();
      sub_1AC48541C(v285, v286, v270, v6);
      v287 = OUTLINED_FUNCTION_48();
      sub_1AC48550C(v287, v288, v270, v289);
      goto LABEL_103;
    }

    v27 = v7;
    *__s2 = v7;
    v478 = v8;
    v479 = v9;
    v480 = v10 & 1;
    v28 = v9;
    v29 = v4;
    sub_1AC48541C(v4, v5, v472, v6);
    v30 = v472;
    v26 = v465;
    sub_1AC4578F4(v439, v465);
    sub_1AC48541C(v27, v8, v28, v10);
    v39 = OUTLINED_FUNCTION_66(v31, v32, v33, v34, v35, v36, v37, v38, v328, v339, v350, v361, v372, v8, v394, v405, v417, v428, v439, v451, v465, v472, v475);
    sub_1AC4578F4(v39, v40);
    v22 = v5;
    sub_1AC48541C(v29, v5, v30, SBYTE4(v372));
    sub_1AC48541C(v27, v8, v28, SBYTE4(v451));
    v41 = OUTLINED_FUNCTION_97();
    sub_1AC48541C(v41, v42, v43, v44);
    v25 = v440;
    LOBYTE(v28) = static Google_Protobuf_Value.OneOf_Kind.== infix(_:_:)(&__s1, __s2);
    sub_1AC48550C(*__s2, v478, v479, v480);
    sub_1AC48550C(__s1, *(&__s1 + 1), v482, v483);
    v45 = OUTLINED_FUNCTION_97();
    sub_1AC4854E8(v45, v46, v47, v48);
    if ((v28 & 1) == 0)
    {
      LOBYTE(v6) = BYTE4(v372);
      goto LABEL_105;
    }

LABEL_14:
    v49 = v26 >> 62;
    v50 = HIDWORD(v25);
    v51 = v11 >> 62;
    v52 = v25;
    if (v23)
    {
      v66 = 0;
      v67 = v22;
      if (v25)
      {
        v68 = v418;
      }

      else
      {
        v53 = v26 == 0xC000000000000000 && v11 >> 62 == 3;
        v68 = v418;
        if (v53)
        {
          v66 = 0;
          if (!v475 && v11 == 0xC000000000000000)
          {
            sub_1AC4854E8(v418, v384, v395, SBYTE4(v451));
            v54 = OUTLINED_FUNCTION_15_1();
            sub_1AC4513F8(v54, v55);
            OUTLINED_FUNCTION_104(v56, v57, v58, v59, v60, v61, v62, v63, v329, v340, v351, v362, v372, SBYTE4(v372), v384, v395, v406, v418, v429, v440, v451, v466, v472);
            v64 = OUTLINED_FUNCTION_15_1();
LABEL_54:
            sub_1AC4513F8(v64, v65);
            goto LABEL_98;
          }
        }
      }
    }

    else
    {
      v66 = 0;
      v67 = v22;
      v68 = v418;
      switch(v49)
      {
        case 0uLL:
          v66 = BYTE6(v26);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_110;
          }

          v66 = HIDWORD(v25) - v25;
          break;
        case 2uLL:
          v70 = *(v25 + 16);
          v69 = *(v25 + 24);
          v71 = __OFSUB__(v69, v70);
          v66 = v69 - v70;
          if (!v71)
          {
            break;
          }

          goto LABEL_111;
        case 3uLL:
          break;
        default:
          goto LABEL_128;
      }
    }

    switch(v51)
    {
      case 1uLL:
        LODWORD(v72) = HIDWORD(v475) - v475;
        if (__OFSUB__(HIDWORD(v475), v475))
        {
          goto LABEL_109;
        }

        v72 = v72;
LABEL_42:
        if (v66 != v72)
        {
LABEL_100:
          LOBYTE(v6) = BYTE4(v372);
          goto LABEL_105;
        }

        if (v66 < 1)
        {
LABEL_53:
          sub_1AC4854E8(v68, v384, v395, SBYTE4(v451));
          v106 = OUTLINED_FUNCTION_66(v98, v99, v100, v101, v102, v103, v104, v105, v329, v340, v351, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475);
          sub_1AC4513F8(v106, v107);
          OUTLINED_FUNCTION_104(v108, v109, v110, v111, v112, v113, v114, v115, v332, v343, v354, v365, v375, v382, v387, v398, v409, v421, v432, v443, v454, v469, v473);
          v64 = v25;
          v65 = v26;
          goto LABEL_54;
        }

        v339 = v67;
        v350 = v3;
        v75 = v475;
        v76 = v475 >> 32;
        v77 = v475 >> 8;
        v78 = v475 >> 16;
        v79 = v475 >> 24;
        v80 = v475 >> 40;
        v81 = HIWORD(v475);
        v82 = HIBYTE(v475);
        switch(v49)
        {
          case 1:
            if (v52 >> 32 < v52)
            {
              goto LABEL_112;
            }

            v156 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v156, v157);
            v158 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v158, v159);
            v160 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v160, v161);
            v162 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v162, v163);
            sub_1AC4578F4(v52, v466);
            if (sub_1AC51EB78() && __OFSUB__(v52, sub_1AC51EBA8()))
            {
              goto LABEL_115;
            }

            v127 = v466;
            sub_1AC51EB98();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64(v164, v165, v166, v167, v168, v169, v170, v171, v329);
            v328 = (v52 >> 32) - v52;
            v172 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v172, v173);
            v174 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v174, v175);
            v140 = v440;
            goto LABEL_71;
          case 2:
            v117 = *(v52 + 16);
            v116 = *(v52 + 24);
            v118 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v118, v119);
            v120 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v120, v121);
            v122 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v122, v123);
            v124 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v124, v125);
            sub_1AC4578F4(v52, v466);
            if (sub_1AC51EB78() && __OFSUB__(v117, sub_1AC51EBA8()))
            {
              goto LABEL_114;
            }

            v126 = v116 - v117;
            if (__OFSUB__(v116, v117))
            {
              goto LABEL_113;
            }

            v127 = v466;
            sub_1AC51EB98();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64(v128, v129, v130, v131, v132, v133, v134, v135, v329);
            v328 = v126;
            v136 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v136, v137);
            v138 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v138, v139);
            v140 = v52;
LABEL_71:
            sub_1AC4513F8(v140, v127);
            v176 = __s1;
            v177 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v177, v178);
            v179 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v179, v180);
            sub_1AC4854E8(v418, v384, v395, SBYTE4(v451));
            v181 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v181, v182);
            v183 = v67;
            v184 = v406;
            v185 = BYTE4(v372);
            goto LABEL_97;
          case 3:
            *(&__s1 + 6) = 0;
            *&__s1 = 0;
            if (v51 == 2)
            {
              v186 = *(v475 + 16);
              v187 = *(v475 + 24);
              v188 = sub_1AC4578F4(v475, v11);
              OUTLINED_FUNCTION_91(v188, v189, v190, v191, v192, v193, v194, v195, v329, v339, v350, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466);
              v196 = sub_1AC51EB78();
              if (v196)
              {
                v197 = sub_1AC51EBA8();
                if (__OFSUB__(v186, v197))
                {
                  goto LABEL_121;
                }

                v196 += v186 - v197;
              }

              v71 = __OFSUB__(v187, v186);
              v198 = v187 - v186;
              if (v71)
              {
                goto LABEL_119;
              }

              v153 = v11;
              v199 = sub_1AC51EB98();
              if (!v196)
              {
                goto LABEL_126;
              }

              if (v199 >= v198)
              {
                v154 = v198;
              }

              else
              {
                v154 = v199;
              }

              v155 = v196;
              goto LABEL_81;
            }

            if (v51 == 1)
            {
              if (v76 < v475)
              {
                goto LABEL_116;
              }

              v141 = OUTLINED_FUNCTION_66(v82, v81, BYTE6(v11), v80, v79, v78, v77, v24, v329, v67, v350, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475);
              v143 = sub_1AC4578F4(v141, v142);
              OUTLINED_FUNCTION_91(v143, v144, v145, v146, v147, v148, v149, v150, v333, v344, v355, v366, v376, v388, v399, v410, v422, v433, v444, v455, v470);
              v151 = sub_1AC51EB78();
              if (v151)
              {
                v152 = sub_1AC51EBA8();
                if (__OFSUB__(v75, v152))
                {
                  goto LABEL_123;
                }

                v151 += v75 - v152;
              }

              v153 = v11;
              sub_1AC51EB98();
              if (!v151)
              {
                goto LABEL_127;
              }

              OUTLINED_FUNCTION_40();
              v155 = v151;
LABEL_81:
              v200 = memcmp(&__s1, v155, v154);
              OUTLINED_FUNCTION_107(v200, v201, v202, v203, v204, v205, v206, v207, v334, v345, v356, v367, v377, v389, v400, v411, v423, v434, v445, v456, v471);
              v208 = OUTLINED_FUNCTION_54();
              sub_1AC4513F8(v208, v209);
              OUTLINED_FUNCTION_38(v210, v211, v212, v213, v214, v215, v216, v217, v335, v346, v357, v368, v378, v390, v401, v412, v424, v435, v446, v457, v461);
              v183 = v339;
              goto LABEL_84;
            }

            v226 = OUTLINED_FUNCTION_39(SHIBYTE(v475), SBYTE6(v475), BYTE6(v11), SBYTE5(v475), SBYTE3(v475), SBYTE2(v475), SBYTE1(v475), v24, v329, v67, v350, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475, v476, __s2[0], __s2[1], __s2[2], __s2[3], __s2[4], __s2[5], __s2[6], __s2[7], v478, SBYTE1(v478), SBYTE2(v478), SBYTE3(v478), SBYTE4(v478), SBYTE5(v478));
            v153 = v226;
            OUTLINED_FUNCTION_38(v226, v227, v228, v229, v230, v231, v232, v233, v337, v348, v359, v370, v380, v392, v403, v415, v426, v437, v448, v459, v463);
            v183 = v339;
LABEL_84:
            v176 = v153 == 0;
LABEL_96:
            v185 = BYTE4(v372);
            v184 = v413;
LABEL_97:
            sub_1AC4854E8(v184, v183, v472, v185);
            v266 = OUTLINED_FUNCTION_10_1();
            sub_1AC4513F8(v266, v267);
            v3 = v350;
            if (!v176)
            {
              return 0;
            }

            break;
          default:
            LOWORD(__s1) = v52;
            BYTE2(__s1) = BYTE2(v52);
            BYTE3(__s1) = BYTE3(v52);
            BYTE4(__s1) = v50;
            BYTE5(__s1) = BYTE5(v52);
            BYTE6(__s1) = BYTE6(v52);
            BYTE7(__s1) = HIBYTE(v52);
            DWORD2(__s1) = v466;
            WORD6(__s1) = WORD2(v466);
            if (v51)
            {
              if (v51 == 1)
              {
                if (v76 < v475)
                {
                  goto LABEL_117;
                }

                v83 = OUTLINED_FUNCTION_66(v82, v81, BYTE6(v11), v80, v79, v78, v77, v466, v329, v67, v350, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475);
                v85 = sub_1AC4578F4(v83, v84);
                OUTLINED_FUNCTION_91(v85, v86, v87, v88, v89, v90, v91, v92, v330, v341, v352, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467);
                v93 = sub_1AC51EB78();
                if (v93)
                {
                  v94 = sub_1AC51EBA8();
                  if (__OFSUB__(v75, v94))
                  {
                    goto LABEL_122;
                  }

                  v93 += v75 - v94;
                }

                v95 = v11;
                sub_1AC51EB98();
                if (!v93)
                {
                  __break(1u);
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
LABEL_127:
                  __break(1u);
LABEL_128:
                  JUMPOUT(0);
                }

                OUTLINED_FUNCTION_40();
                v97 = v93;
              }

              else
              {
                v234 = *(v475 + 16);
                v235 = *(v475 + 24);
                v236 = sub_1AC4578F4(v475, v11);
                OUTLINED_FUNCTION_91(v236, v237, v238, v239, v240, v241, v242, v243, v329, v339, v350, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466);
                v244 = sub_1AC51EB78();
                if (v244)
                {
                  v245 = sub_1AC51EBA8();
                  if (__OFSUB__(v234, v245))
                  {
                    goto LABEL_120;
                  }

                  v244 += v234 - v245;
                }

                v71 = __OFSUB__(v235, v234);
                v246 = v235 - v234;
                if (v71)
                {
                  goto LABEL_118;
                }

                v95 = v11;
                v247 = sub_1AC51EB98();
                if (!v244)
                {
                  goto LABEL_125;
                }

                if (v247 >= v246)
                {
                  v96 = v246;
                }

                else
                {
                  v96 = v247;
                }

                v97 = v244;
              }

              v248 = memcmp(&__s1, v97, v96);
              OUTLINED_FUNCTION_107(v248, v249, v250, v251, v252, v253, v254, v255, v331, v342, v353, v364, v374, v386, v397, v408, v420, v431, v442, v453, v468);
              v256 = OUTLINED_FUNCTION_54();
              sub_1AC4513F8(v256, v257);
              OUTLINED_FUNCTION_38(v258, v259, v260, v261, v262, v263, v264, v265, v338, v349, v360, v371, v381, v393, v404, v416, v427, v438, v449, v460, v464);
            }

            else
            {
              v218 = OUTLINED_FUNCTION_39(SHIBYTE(v475), SBYTE6(v475), BYTE6(v11), SBYTE5(v475), SBYTE3(v475), SBYTE2(v475), SBYTE1(v475), v466, v329, v67, v350, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475, v476, __s2[0], __s2[1], __s2[2], __s2[3], __s2[4], __s2[5], __s2[6], __s2[7], v478, SBYTE1(v478), SBYTE2(v478), SBYTE3(v478), SBYTE4(v478), SBYTE5(v478));
              v95 = v218;
              OUTLINED_FUNCTION_38(v218, v219, v220, v221, v222, v223, v224, v225, v336, v347, v358, v369, v379, v391, v402, v414, v425, v436, v447, v458, v462);
            }

            v176 = v95 == 0;
            v183 = v339;
            goto LABEL_96;
        }

        break;
      case 2uLL:
        v74 = *(v475 + 16);
        v73 = *(v475 + 24);
        v71 = __OFSUB__(v73, v74);
        v72 = v73 - v74;
        if (!v71)
        {
          goto LABEL_42;
        }

        goto LABEL_108;
      case 3uLL:
        if (v66)
        {
          goto LABEL_100;
        }

        goto LABEL_53;
      default:
        v72 = BYTE6(v11);
        goto LABEL_42;
    }

LABEL_98:
    v428 = (v429 + 48);
    v3 += 6;
    v2 = v362 - 1;
    if (v362 == 1)
    {
      return 1;
    }
  }

  v12 = ~v9 & 0x3000000000000000;
  v13 = *(v428 - 3);
  sub_1AC48541C(v4, v5, v472, 255);
  OUTLINED_FUNCTION_91(v14, v15, v16, v17, v18, v19, v20, v21, v328, v339, v3, v361, v372, v8, v394, v405, v417, v428, v439, v451, v465);
  if (!v12 && HIDWORD(v451) == 255)
  {
    OUTLINED_FUNCTION_113(v418, v384);
    sub_1AC4578F4(v475, v11);
    sub_1AC48541C(v406, v5, v472, 255);
    OUTLINED_FUNCTION_113(v418, v384);
    v22 = v5;
    sub_1AC4854E8(v406, v5, v472, 255);
    v25 = v440;
    v3 = v351;
    v26 = v466;
    goto LABEL_14;
  }

  sub_1AC48541C(v418, v384, v395, SBYTE4(v451));
  v298 = OUTLINED_FUNCTION_66(v290, v291, v292, v293, v294, v295, v296, v297, v329, v340, v351, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475);
  sub_1AC4578F4(v298, v299);
  LOBYTE(v6) = -1;
  v300 = OUTLINED_FUNCTION_48();
  sub_1AC48541C(v300, v301, v13, 255);
  v302 = OUTLINED_FUNCTION_58();
  sub_1AC48541C(v302, v303, v304, v305);
  v26 = v466;
LABEL_103:
  v306 = OUTLINED_FUNCTION_48();
  sub_1AC4854E8(v306, v307, v472, v6);
  v308 = OUTLINED_FUNCTION_58();
  sub_1AC4854E8(v308, v309, v310, v311);
LABEL_105:
  v312 = OUTLINED_FUNCTION_58();
  sub_1AC4854E8(v312, v313, v314, v315);
  v324 = OUTLINED_FUNCTION_66(v316, v317, v318, v319, v320, v321, v322, v323, v329, v340, v351, v362, v372, v384, v395, v406, v418, v429, v440, v451, v466, v472, v475);
  sub_1AC4513F8(v324, v325);
  v326 = OUTLINED_FUNCTION_48();
  sub_1AC4854E8(v326, v327, v474, v6);
  sub_1AC4513F8(v450, v26);
  return 0;
}

uint64_t sub_1AC47F024()
{
  OUTLINED_FUNCTION_10_2();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      OUTLINED_FUNCTION_111(v20);
      OUTLINED_FUNCTION_111(__src);
      OUTLINED_FUNCTION_114(v21);
      OUTLINED_FUNCTION_114(v18);
      sub_1AC485C2C(v20, v17);
      sub_1AC485C2C(v21, v17);
      static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)(__src, v18);
      OUTLINED_FUNCTION_105(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12]);
      sub_1AC485C88(v22);
      memcpy(__dst, __src, 0x67uLL);
      sub_1AC485C88(__dst);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v1 += 104;
      v0 += 104;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47F0F8()
{
  OUTLINED_FUNCTION_10_2();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v0, 0x5EuLL);
      memcpy(v11, v0, 0x5EuLL);
      memcpy(v13, v1, 0x5EuLL);
      memcpy(__src, v1, 0x5EuLL);
      sub_1AC485B7C(__dst, v9);
      sub_1AC485B7C(v13, v9);
      static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)(v11, __src);
      v7 = v6;
      memcpy(v14, __src, 0x5EuLL);
      sub_1AC485BD8(v14);
      memcpy(v15, v11, 0x5EuLL);
      sub_1AC485BD8(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v1 += 96;
      v0 += 96;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}