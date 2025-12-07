double sub_25BA91CB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v81 = a4;
  v94 = sub_25BCB5EBC();
  *&v90 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v14 = sub_25BCB5EEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = &v70 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;

  v75 = a1;
  v76 = a2;
  sub_25BAD9D50(a1, a2, a3);
  v72 = v4;
  v73 = sub_25BADA120(v22);

  v23 = sub_25BADBDEC();
  v80 = sub_25BADC6B8(v23);
  v89 = v24;

  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_28154BEB8);
  v26 = *(v15 + 16);
  v86 = v25;
  v87 = v15 + 16;
  v85 = v26;
  (v26)(v21);
  sub_25BCB5EAC();
  v27 = swift_slowAlloc();
  *v27 = 0;
  v28 = sub_25BCB5EDC();
  v29 = sub_25BCB6D5C();
  v30 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v28, v29, v30, "Run Espresso Network", "", v27, 2u);
  [*(a3 + 80) plan];
  v31 = espresso_plan_execute_sync();
  v32 = sub_25BCB6D4C();
  v71 = a3;
  v33 = v32;
  v34 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v28, v33, v34, "Run Espresso Network", "", v27, 2u);

  MEMORY[0x25F8797F0](v27, -1, -1);
  v35 = *(v90 + 8);
  *&v90 = v90 + 8;
  v84 = v35;
  v35(v13, v94);
  v36 = *(v15 + 8);
  v37 = v14;
  v88 = v15 + 8;
  v83 = v36;
  v36(v21, v14);
  if (v31)
  {
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_25BCB70FC();

    *&v91 = 0xD00000000000001ALL;
    *(&v91 + 1) = 0x800000025BCDCE40;
    v68 = ComputeDevice.description.getter();
    MEMORY[0x25F876C90](v68);

    v92 = v91;
    v93 = 4;
    sub_25BCB617C();
    sub_25BA97890("execute(input:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoV1Executor.swift", 118, 2, 338, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  }

  v38 = v74;
  v82 = v37;
  v85(v74, v86, v37);
  v39 = v77;
  sub_25BCB5EAC();
  v40 = swift_slowAlloc();
  *v40 = 0;
  v41 = sub_25BCB5EDC();
  v42 = sub_25BCB6D5C();
  v43 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v41, v42, v43, "Unbind Inputs", "", v40, 2u);
  v44 = v72;
  sub_25BA92528(v73, v75, v76);
  v76 = v44;
  v45 = sub_25BCB6D4C();
  v46 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v41, v45, v46, "Unbind Inputs", "", v40, 2u);

  MEMORY[0x25F8797F0](v40, -1, -1);

  v84(v39, v94);
  v47 = v82;
  v83(v38, v82);
  v48 = v78;
  v85(v78, v86, v47);
  v49 = v79;
  sub_25BCB5EAC();
  v50 = swift_slowAlloc();
  *v50 = 0;
  v51 = sub_25BCB5EDC();
  LOBYTE(v47) = sub_25BCB6D5C();
  v52 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v51, v47, v52, "Unbind Outputs", "", v50, 2u);
  v53 = v80;
  v54 = v76;
  sub_25BA932DC(v80);
  v87 = v54;
  v55 = sub_25BCB6D4C();
  v56 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v51, v55, v56, "Unbind Outputs", "", v50, 2u);

  MEMORY[0x25F8797F0](v50, -1, -1);
  v84(v49, v94);
  v57 = v53;
  v83(v48, v82);
  v58 = *(v53 + 16);
  v59 = MEMORY[0x277D84F90];
  if (v58)
  {
    *&v92 = MEMORY[0x277D84F90];
    sub_25BA93380(0, v58, 0);
    v59 = v92;
    v60 = (v57 + 48);
    do
    {
      v62 = *(v60 - 2);
      v61 = *(v60 - 1);
      v90 = *v60;
      *&v92 = v59;
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      sub_25BCB617C();
      swift_unknownObjectRetain();
      if (v64 >= v63 >> 1)
      {
        sub_25BA93380(v63 > 1, v64 + 1, 1);
        v59 = v92;
      }

      *(v59 + 16) = v64 + 1;
      v65 = v59 + 32 * v64;
      *(v65 + 32) = v62;
      *(v65 + 40) = v61;
      *(v65 + 48) = v90;
      v60 = (v60 + 40);
      --v58;
    }

    while (v58);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v92 + 1) = sub_25BCB614C();
  v66 = sub_25BA93BF8(v59);

  *&v92 = v66;
  sub_25BA957C4();

  v90 = v92;

  result = *&v90;
  *v81 = v90;
  return result;
}

unint64_t sub_25BA92528(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F8779B0](v7, v5);
        }

        else
        {
          v8 = *(v5 + 8 * v7 + 32);
        }

        if (!*(a3 + 16))
        {
          goto LABEL_14;
        }

        v9 = sub_25BA9266C(*(v8 + 16), *(v8 + 24));
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        v11 = *(*(a3 + 56) + 8 * v9);
        if (!*(v11 + 16))
        {
          goto LABEL_14;
        }

        v12 = *(v11 + 32);
        if ((v12 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v12 >= *(a2 + 16))
        {
          goto LABEL_17;
        }

        sub_25BA92804(v8);

LABEL_14:

        if (v6 == ++v7)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_25BCB749C();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_25BA92684(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_25BCB79CC();
  OUTLINED_FUNCTION_109();
  sub_25BCB625C();
  v5 = sub_25BCB7A3C();

  return a3(a1, a2, v5);
}

uint64_t OUTLINED_FUNCTION_163()
{

  return sub_25BAFC990();
}

__n128 OUTLINED_FUNCTION_163_0()
{
  v2 = *(v0 + 192);
  *v1 = *(v0 + 176);
  *(v1 + 16) = v2;
  result = *(v0 + 208);
  *(v1 + 32) = result;
  *(v0 + 448) = *(v0 + 224);
  return result;
}

unint64_t sub_25BA92750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_25BCB789C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_25BA92804(uint64_t a1)
{

  v3 = sub_25BA928B4();
  [v3 lock];

  sub_25BA92920(v1, 0, 0, v7);
  [*(v1 + 224) unlock];

  v4 = v7[1];
  ObjectType = swift_getObjectType();
  sub_25BA932A4(a1, ObjectType, v4);

  return swift_unknownObjectRelease();
}

id sub_25BA928B4()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 224);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    v4 = *(v0 + 224);
    *(v0 + 224) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_25BA92920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(a1 + 40, &v22);
  if (v26)
  {
    if (v26 == 1)
    {
      v8 = v22;
      v10 = v23;
      v9 = v24;
      sub_25BA9BE3C(&v25, v21);
      Strong = swift_weakLoadStrong();
      sub_25BA977E0(v21);
      if (Strong)
      {
      }

      else
      {
        v17 = v8;
        v18 = v10;
        v19 = v9;
        v20 = 2;
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_25BCB617C();
        sub_25BA97834(&v17, a1 + 40);
        swift_endAccess();
      }

      *a4 = v8;
    }

    else
    {
      v16 = v22;

      *a4 = v16;
    }
  }

  else
  {
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBB6D0;
    *(v12 + 32) = a1;
    *&v17 = a2;
    *(&v17 + 1) = a3;

    sub_25BC74428(v12, &v17);

    v13 = sub_25BA9BEA8();
    if (v13)
    {
      *a4 = v13;
      *(a4 + 8) = v14;
      return sub_25BA9778C(&v22);
    }

    else
    {
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000012, 0x800000025BCDF4B0);
      v21[0] = a1;
      type metadata accessor for TensorRepresentation();
      sub_25BCB73CC();
      result = sub_25BCB74CC("Fatal error", 11, 2, v17, *(&v17 + 1), "NeuralNetworks/TensorRepresentation.swift", 41, 2, 572);
      __break(1u);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_2()
{
}

double OUTLINED_FUNCTION_17_5()
{
  result = 0.0;
  *(v0 + 412) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 428) = 22;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return type metadata accessor for TensorHandle();
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_25BCB779C();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_25BB1AB60(0);
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_14(__n128 *a1, __n128 a2)
{
  *(v3 - 384) = a2;
  a1[1] = a2;
  v5 = v2[9];
  *(v3 - 312) = v2[8];
  *(v3 - 320) = v5;
  v6 = v2[11];
  *(v3 - 344) = v2[10];
  *(v3 - 352) = v6;
  v7 = v2[13];
  *(v3 - 328) = v2[12];
  *(v3 - 336) = v7;
  *(v3 - 288) = v2[14];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_17_16(uint64_t result, __n128 a2)
{
  *(result + 16) = a2;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

__n128 *OUTLINED_FUNCTION_17_19(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 120;
  result[2].n128_u64[1] = 0xE100000000000000;
  return result;
}

void OUTLINED_FUNCTION_17_21()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_27(uint64_t a1)
{

  return sub_25BCB76AC();
}

__n128 OUTLINED_FUNCTION_17_29(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26)
{
  result = a26;
  a1[1] = a26;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_30()
{

  return sub_25BABA62C(v0, v1, v2, v3);
}

void OUTLINED_FUNCTION_17_33(uint64_t a1)
{

  sub_25BAA21EC(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_17_36@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 152);
  v4 = *(*(v1 + 16) + 152);

  return sub_25BAB5C48(v3, v4);
}

uint64_t OUTLINED_FUNCTION_17_40()
{
}

uint64_t OUTLINED_FUNCTION_17_41()
{

  return sub_25BCB7A0C();
}

uint64_t OUTLINED_FUNCTION_17_43()
{

  return sub_25BCB54EC();
}

uint64_t OUTLINED_FUNCTION_17_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_25BAA51C8(a3, va);
}

__n128 *OUTLINED_FUNCTION_17_45(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_17_46()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_17_50(uint64_t a1)
{

  return sub_25BCB790C();
}

uint64_t OUTLINED_FUNCTION_17_51(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_25BC7D098(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_17_53()
{
  *v0 = *(v1 + 152);

  return sub_25BCB617C();
}

uint64_t sub_25BA932A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 216) == 1)
  {
    return sub_25BA932B8(result, a2, a3);
  }

  return result;
}

uint64_t sub_25BA932B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == 1)
  {
    return sub_25BB72DBC(v3, result, a2, a3);
  }

  return result;
}

uint64_t sub_25BA932DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 64;
    do
    {
      v3 = *(v2 - 8);
      ObjectType = swift_getObjectType();
      sub_25BCB617C();
      swift_unknownObjectRetain();

      sub_25BA932A4(v5, ObjectType, v3);

      swift_unknownObjectRelease();

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_25BA93380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB039BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 416);
  *(v3 + 32) = *(v1 - 272);
  *(v3 + 40) = a1;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_73_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_25BAA48D4(a1, va, v5, v6);
}

uint64_t OUTLINED_FUNCTION_73_7()
{
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51(unint64_t *a1)
{
  v2 = MEMORY[0x277D84AD0];

  return sub_25BB39A38(a1, v2);
}

void OUTLINED_FUNCTION_9_9()
{

  JUMPOUT(0x25F876C90);
}

id OUTLINED_FUNCTION_9_10(void *a1)
{

  return [a1 lock];
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_25BCB67AC();
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_25BAB2B20(v8, 0, v10, v11, v12, v9, v13, a8);
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_9_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_14(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;
  *(v1 - 136) = 122;
  *(v1 - 128) = 2;
}

uint64_t OUTLINED_FUNCTION_9_34(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_9_35()
{
  v1 = *(v0 - 256);
  __swift_project_boxed_opaque_existential_1((v0 - 280), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return sub_25BCB70FC();
}

void OUTLINED_FUNCTION_9_37()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_24_0(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;
  *(v2 - 144) = v1;
  *(v2 - 136) = 2;
}

uint64_t OUTLINED_FUNCTION_9_38()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_9_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_25BADDD28(a1, 57, 2, a4, 102, 2, 133);
}

uint64_t OUTLINED_FUNCTION_9_45@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_9_46@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 32) = a2;
  *(result + 36) = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_47()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_9_53()
{
  sub_25BC7204C(v0, 0);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_9_58(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0x4000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_59()
{

  return swift_getAssociatedTypeWitness();
}

unint64_t OUTLINED_FUNCTION_9_61()
{

  return sub_25BAB4D78(v0, (v1 & 0xC000000000000001) == 0, v1);
}

uint64_t sub_25BA93BF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_18_3();
    sub_25BA9515C(v5, v6, v7);
    v8 = (a1 + 48);
    v3 = v26;
    do
    {
      v24 = *v8;
      sub_25BCB617C();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3880, &qword_25BCBB840);
      v9 = OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_56_1(v25, v10, v11, v9, v12, v13, v14);
      v15 = v25[0];
      v16 = v25[3];
      v26 = v3;
      OUTLINED_FUNCTION_24_2();
      if (v18)
      {
        OUTLINED_FUNCTION_19_2();
        sub_25BA9515C(v20, v21, v22);
        v17 = v24;
        v3 = v26;
      }

      *(v3 + 16) = v1;
      v19 = v3 + 32 * a1;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      *(v19 + 56) = v16;
      v8 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5)
{

  _os_signpost_emit_with_name_impl(a1, v5, a3, a4, a5, v6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_61_4()
{
  *(v1 - 160) = v0;

  return sub_25BAFC990();
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return sub_25BCB749C();
}

uint64_t OUTLINED_FUNCTION_61_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_61_8(unint64_t a1@<X8>)
{

  sub_25BAA21EC(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_61_9()
{
  *(v2 - 152) = v0;

  sub_25BAA21EC(0, v1, 0);
}

ValueMetadata *OUTLINED_FUNCTION_61_12(uint64_t a1)
{

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_61_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, a2, a3, 0xD00000000000008ALL, a5, a6, 99, 2, a9);
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1)
{

  return sub_25BCB745C();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_25BCB7B6C();
}

uint64_t OUTLINED_FUNCTION_60_2()
{
}

__n128 OUTLINED_FUNCTION_60_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  a1[1] = a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAA4A5C(va);
}

uint64_t OUTLINED_FUNCTION_60_7()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_60_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
}

uint64_t OUTLINED_FUNCTION_60_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return sub_25BAB6FD4();
}

uint64_t OUTLINED_FUNCTION_60_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  va_arg(va1, void);
  v26 = va_arg(va1, void);
  v25 = v14;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_60_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB7B2C();
}

__n128 OUTLINED_FUNCTION_142(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, a2, a3, a4, a5, a6, 108, 2, a9);
}

uint64_t OUTLINED_FUNCTION_69_6()
{
}

uint64_t OUTLINED_FUNCTION_69_8()
{
}

void *OUTLINED_FUNCTION_12_3(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v10 = (a1 + 16);

  return memcpy(v10, __srca, 0x55uLL);
}

__n128 *OUTLINED_FUNCTION_12_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  v3 = *(v0 + 16) + 168;

  return sub_25BAA51C8(v3, v1 - 200);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_12_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_12_13(uint64_t a1@<X8>)
{
  v5 = *(v4 - 424);
  *(a1 - 128) = *(v4 - 416);
  *(a1 - 120) = v5;
  v6 = *(v4 - 384);
  *(a1 - 112) = *(v4 - 328);
  *(a1 - 104) = v6;
  v7 = *(v4 - 400);
  *(a1 - 96) = *(v4 - 392);
  *(a1 - 88) = v7;
  v8 = *(v4 - 336);
  *(a1 - 80) = *(v4 - 408);
  *(a1 - 72) = v8;
  v9 = *(v4 - 368);
  *(a1 - 64) = *(v4 - 272);
  *(a1 - 56) = v9;
  *(a1 - 48) = v3;
  *(a1 - 40) = *(v4 - 376);
  *(a1 - 32) = v2;
  *(a1 - 24) = v4 - 200;
  *(a1 - 16) = v1;
  *(a1 - 8) = *(v4 - 464);
}

void OUTLINED_FUNCTION_12_14(uint64_t a1@<X8>)
{
  *(a1 - 48) = v3;
  *(a1 - 40) = v1;
  *(a1 - 32) = v5;
  *(a1 - 24) = v2;
  *(a1 - 16) = v4;
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB7B2C();
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_12_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_12_20(uint64_t a1, uint64_t a2)
{

  return sub_25BBA0884(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_12_22(uint64_t a1@<X8>)
{

  sub_25BAD8238(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{

  return sub_25BCB617C();
}

__n128 OUTLINED_FUNCTION_12_31@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, __n128 a25)
{
  *a1 = a23;
  a1[1] = a24;
  result = a25;
  a1[2] = a25;
  return result;
}

void OUTLINED_FUNCTION_12_32(__n128 a1)
{
  v1[4] = a1;
  v1[5].n128_u8[0] = 0;
  v1[5].n128_u64[1] = v2;
  v1[6].n128_u8[0] = 1;
  v1[9].n128_u8[12] = 3;
}

uint64_t OUTLINED_FUNCTION_12_33@<X0>(__int16 a1@<W8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 88;
  *(v2 - 96) = a1;

  return type metadata accessor for ReductionOperation();
}

uint64_t *OUTLINED_FUNCTION_12_35(NSUInteger a1)
{
  *(v5 - 192) = v1;
  *(v5 - 184) = v3;
  *(v5 - 72) = v2;
  *(v5 - 176) = v4;

  return sub_25BBC9A4C(a1, 0);
}

__n128 OUTLINED_FUNCTION_12_41(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_43(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_25BCB54FC();
}

uint64_t OUTLINED_FUNCTION_12_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_12_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_25BC757DC(a7, v9, v10, va, a1);
}

void OUTLINED_FUNCTION_12_50(unint64_t a1@<X8>)
{

  sub_25BB00DE4(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_12_53()
{
}

void *OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va1, a48);
  va_start(__srca, a48);
  __src = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);
  v60 = va_arg(va1, void);
  v61 = va_arg(va1, void);
  v62 = va_arg(va1, void);
  v63 = va_arg(va1, void);
  v64 = va_arg(va1, void);
  v65 = va_arg(va1, void);
  *(a1 + 48) = a2;
  v49 = (a1 + 56);

  return memcpy(v49, __srca, 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  sub_25BB00D14(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_25BCB680C();
}

void OUTLINED_FUNCTION_10_15()
{
  *(v1 + 16) = v2;
  v7 = v1 + 32 * v0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  *(v7 + 56) = v3;
}

uint64_t OUTLINED_FUNCTION_10_18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_10_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1;
  *(v2 - 152) = a1;
  *(v2 - 184) = v3;
  __swift_project_boxed_opaque_existential_1((v2 - 184), v1);

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_10_22()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{

  return sub_25BABE090(a1, a2, a3, a4, v6, a6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_10_28(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_10_30(unint64_t result, __n128 a2)
{
  v2[2] = a2;
  v2[3].n128_u8[0] = 0;
  v2[3].n128_u64[1] = result;
  v2[4].n128_u8[0] = 2;
  v2[7].n128_u8[12] = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_28@<X0>(__int16 a1@<W8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return sub_25BC0A13C(sub_25BAB9E04);
}

uint64_t OUTLINED_FUNCTION_10_33(uint64_t a1)
{

  return sub_25BCB745C();
}

void *OUTLINED_FUNCTION_10_35()
{

  return sub_25BC29748(v0, 0, 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_10_36(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_10_41()
{
  v2 = *v0;

  return MEMORY[0x2821FD028](v2);
}

uint64_t OUTLINED_FUNCTION_10_44()
{

  return sub_25BCB680C();
}

uint64_t OUTLINED_FUNCTION_10_45@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_10_48()
{
  *(v5 - 144) = v2;
  *(v5 - 200) = v3;

  return sub_25BA9FCEC((v5 - 144), (v5 - 200), v4, v1, v0);
}

double OUTLINED_FUNCTION_10_50()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_53(uint64_t a1, uint64_t a2)
{

  return sub_25BCB762C();
}

uint64_t OUTLINED_FUNCTION_10_56(uint64_t a1)
{
  v2 = *v1;
  *(a1 + 8) = *v1;
  return *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  a33 = 1;

  return sub_25BC0C634(a1, 0, &a17, 0x100000000, v34, v33, v35);
}

BOOL OUTLINED_FUNCTION_35_2@<W0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 152) + 16);

  return sub_25BAB74D0(v2, 3, 0, 0);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t *a1)
{
}

void OUTLINED_FUNCTION_35_4(uint64_t a1@<X8>)
{
  v4 = *(v3 - 280);
  *(a1 - 64) = *(v3 - 256);
  *(a1 - 56) = v4;
  v5 = *(v3 - 296);
  *(a1 - 48) = v1;
  *(a1 - 40) = v5;
  *(a1 - 32) = *(v3 - 304);
  *(a1 - 24) = v2;
}

void OUTLINED_FUNCTION_35_15()
{

  JUMPOUT(0x25F876C90);
}

void *OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2, ...)
{

  return sub_25BCB79CC();
}

uint64_t OUTLINED_FUNCTION_35_21@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 152) + 16) - 1;

  return TensorShape.subscript.getter(v2);
}

BOOL OUTLINED_FUNCTION_35_24()
{

  return sub_25BAB74D0(v0, 1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_35_25(uint64_t a1)
{

  return sub_25BCB681C();
}

uint64_t sub_25BA9515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB038AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void OUTLINED_FUNCTION_15_0(__n128 a1)
{
  *(v1 + 16) = v3;
  v6 = v1 + v2 * v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = a1;
}

void OUTLINED_FUNCTION_15_1()
{

  JUMPOUT(0x25F876E40);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_25BBF5F44(v0, 0);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0x4000;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_15_15@<Q0>(__n128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  result = a8;
  a1[2] = a8;
  a1[3].n128_u64[0] = v9;
  a1[3].n128_u8[8] = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_15_17()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_15_20()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_25BCB5B5C();
}

uint64_t OUTLINED_FUNCTION_15_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_15_27@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2;
  result = *(v4 + 48);
  *(v3 + 48) = result;
  *(v3 + 56) = 0;
  *(v3 + 64) = 5;
  return result;
}

void OUTLINED_FUNCTION_15_31(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;

  sub_25BAA21EC(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_15_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_15_40()
{

  sub_25BAC944C();
}

void *OUTLINED_FUNCTION_15_41()
{
  v4 = *(v2 - 240);
  v6 = *(v2 - 232);
  v5 = *(v2 - 224);
  v7 = *(v2 - 216);
  *(v0 + 168) = *(v2 - 248);
  *(v0 + 176) = v4;
  *(v0 + 184) = v6;
  *(v0 + 192) = v5;
  *(v0 + 200) = v7;

  return memcpy((v0 + 8), v1, 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_15_43@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_15_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  *v18 = va_arg(va3, void);

  return Tensor.init(shape:coercingScalars:scalarType:on:)(va2, a2, va, va1, va3);
}

void OUTLINED_FUNCTION_15_47()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_15_51(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u16[0] = 24576;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_15_53(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAB6D38(va, 0x100000000);
}

uint64_t OUTLINED_FUNCTION_15_54(uint64_t a1)
{

  return sub_25BCB7B6C();
}

uint64_t OUTLINED_FUNCTION_37_3()
{
  *(v0 + 112) = *(v1 + 64);

  return swift_getObjectType();
}

__int16 OUTLINED_FUNCTION_37_5@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, int a10, __int16 a11, __int16 a12)
{
  result = a12;
  *(v13 + 2 * v12) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_8@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_arg(va1, void);
  v14 = v3;
  HIBYTE(v13) = a1;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_37_10(uint64_t a1)
{
  v3 = *(a1 + 40);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 56) = v3;

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_37_12()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_37_13()
{
  v2 = *(v0 - 192);
  *(v0 - 200) = *(v0 - 200);
  *(v0 - 192) = v2;

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_37_15@<X0>(uint64_t a1@<X8>)
{

  return sub_25BA92920(v1, 0, 0, a1);
}

uint64_t OUTLINED_FUNCTION_37_20()
{

  return sub_25BCB65BC();
}

uint64_t OUTLINED_FUNCTION_37_24()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_37_25@<X0>(char a1@<W8>, uint64_t a2, ...)
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
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  HIBYTE(v11) = a1;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_37_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BC675C0(a2, a3, a5, v5 - 40);
}

void OUTLINED_FUNCTION_37_28()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{

  return sub_25BCB617C();
}

double OUTLINED_FUNCTION_19_1()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_59_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24)
{
  result = a24;
  a1[1] = a24;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_25BAA4A5C(v0 + 16);
}

void OUTLINED_FUNCTION_59_7(uint64_t a1)
{

  sub_25BAA21EC(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_25BABCD30(v32, 0, va, a4, v31, v30);
}

uint64_t OUTLINED_FUNCTION_59_12(uint64_t a1, uint64_t a2)
{

  return sub_25BAB6EC8(v2, a2);
}

uint64_t OUTLINED_FUNCTION_59_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_25BAA51C8(v16 - 224, va);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_44_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB7B2C();
}

uint64_t OUTLINED_FUNCTION_39_1()
{
}

uint64_t OUTLINED_FUNCTION_44_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_13(uint64_t a1)
{

  return sub_25BCB745C();
}

void OUTLINED_FUNCTION_44_15()
{
  *(v1 - 168) = v0;

  JUMPOUT(0x25F876DC0);
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return sub_25BCB643C();
}

BOOL OUTLINED_FUNCTION_44_17()
{

  return sub_25BAB74D0(v0, 3, 0, 0);
}

uint64_t OUTLINED_FUNCTION_44_19@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 344) = a1;

  return sub_25BCB783C();
}

uint64_t sub_25BA95FB0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_13_32();
  result = sub_25BA979FC(v3, v4);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = *(*v1 + 24) >> 1;
  if (v8 != v7)
  {
    if (v8 > v7)
    {
      *(v6 + 8 * v7 + 32) = a1;
      *(v6 + 16) = v7 + 1;
      *v1 = v6;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_136_0()
{

  return sub_25BAC27B0(v0, v1 - 240);
}

unint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2)
{

  return sub_25BAB4D78(0, a2, v2);
}

void OUTLINED_FUNCTION_13_3(void *a1@<X8>)
{
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v3;
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  *v32 = a9;

  return sub_25BB6B668(va);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{

  return sub_25BC78738(a1, a2, a3, a4, v11, v14, v12, v13, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_56_0(unint64_t *a1)
{
  v2 = MEMORY[0x277D84AD8];

  return sub_25BB39A38(a1, v2);
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, a2, a3, a4, a5, a6, 102, 2, a9);
}

uint64_t OUTLINED_FUNCTION_13_9@<X0>(uint64_t a1@<X1>, __int16 a2@<W8>)
{
  *(a1 + 16) = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 24576;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_25BADDD28(a1, 57, 2, a4, 102, 2, 133);
}

uint64_t OUTLINED_FUNCTION_11_2(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u16[0] = 0x4000;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_25BAADFB0();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_13_15(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v6, a4, a5, a6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_17@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 208) = v1;
  *(v3 - 160) = v2;
  *(v3 - 224) = a1 + 16;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return sub_25BAC27B0(v0 - 184, v0 - 224);
}

unint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_25BC1E9E0(v1, v0, v2);
}

void OUTLINED_FUNCTION_13_21()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_13_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v10;
  *(v14 - 49) = v13;

  return sub_25BA9FCEC(&a9, (v14 - 49), v11, v12, v9);
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{

  return sub_25BBA18D8(a1, a2, v11, a10, v13, v14, v10, v12, a9);
}

__n128 OUTLINED_FUNCTION_13_33(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_36(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB789C();
}

void OUTLINED_FUNCTION_13_42()
{

  sub_25BAC944C();
}

__n128 OUTLINED_FUNCTION_13_47(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u32[0] = v10;
  return result;
}

double OUTLINED_FUNCTION_13_50@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 - 152) = a1;
  result = 0.0;
  *(v2 - 144) = 0u;
  *(v2 - 128) = 0u;
  *(v2 - 112) = 0u;
  *(v2 - 96) = 0;
  *(v2 - 92) = 7;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_51@<X0>(__int16 a1@<W8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = 73;
  *(v2 - 88) = a1;

  return type metadata accessor for BinaryLogicalOperation();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_2_9(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BC87800(v9, a1 & 1, a3, 11, 2, a6, 95, 2, a9);
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_25BADDD28(a1, 57, 2, a4, 102, 2, 133);
}

unint64_t OUTLINED_FUNCTION_2_27(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_25BAB4D78(0, (v2 & 0xC000000000000001) == 0, v2);
}

uint64_t OUTLINED_FUNCTION_2_29@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  return MEMORY[0x2821FEA98](0, 65540, v2 - 112, v1, 0);
}

void OUTLINED_FUNCTION_2_30(uint64_t a1)
{
  *(v2 - 144) = *v1;

  sub_25BC19C08();
}

uint64_t OUTLINED_FUNCTION_2_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

_OWORD *OUTLINED_FUNCTION_2_34()
{
  v2 = v1[1];
  v0[7] = *v1;
  v0[8] = v2;
  v0[9] = v1[2];
  *(v0 + 154) = *(v1 + 42);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_25BCB779C();
}

uint64_t OUTLINED_FUNCTION_2_36()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_2_37(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, __int128 a9, __int128 a10, uint64_t a11, char a12, char a13)
{
  a8 = 0u;
  a9 = 0u;
  a10 = 0u;
  *(&a10 + 9) = 0u;
  a13 = a1;

  sub_25BBA10A8(&a5, v14, v13, &a8);
}

uint64_t OUTLINED_FUNCTION_2_40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = v4 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
  if (a3)
  {
    v5 |= 0x100uLL;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = v5;
  return result;
}

void OUTLINED_FUNCTION_2_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_25BADDD28(a1, 69, 2, a4, 108, 2, 91);
}

uint64_t OUTLINED_FUNCTION_2_48()
{
  sub_25BA97060((v0 - 352), v0 - 288);
  v1 = *(v0 - 264);
  __swift_project_boxed_opaque_existential_1((v0 - 288), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_47()
{
  v2 = *(v1 + 16);
  *(v0 + 168) = *v1;
  *(v0 + 184) = v2;
  *(v0 + 200) = *(v1 + 32);
  *(v0 + 216) = *(v1 + 48);
  return v0;
}

void OUTLINED_FUNCTION_2_53()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

uint64_t OUTLINED_FUNCTION_2_56(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_58()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_2_60()
{
  v2 = *(*(v0 + 24) + 16);

  return sub_25BAC48A0(v2);
}

uint64_t OUTLINED_FUNCTION_2_61()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_2_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_64()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_68(double a1, __n128 a2)
{
  *(v3 + 120) = v5;
  *(v3 + 128) = v4;
  *(v3 + 72) = a2;
  *(v3 + 88) = *(v2 + 32);
  *(v3 + 98) = *(v2 + 42);
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_77(uint64_t a1, uint64_t a2)
{

  return sub_25BCB762C();
}

uint64_t OUTLINED_FUNCTION_2_79()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v0 + 184), v1, (v0 + 143), v0 + 208, (v2 - 240));
}

void OUTLINED_FUNCTION_2_80()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_2_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_2_84()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_85()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v0 + 600), v1, (v0 + 599), v0 + 544, (v0 + 464));
}

void *OUTLINED_FUNCTION_2_86(uint64_t a1, ...)
{

  return sub_25BCB79CC();
}

uint64_t sub_25BA97060(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

uint64_t OUTLINED_FUNCTION_31_2@<X0>(uint64_t (*a2)(uint64_t)@<X1>, void *x8_0@<X8>)
{

  return OptimizerStateDictionary.subscript.getter(a2, v3, x8_0);
}

void OUTLINED_FUNCTION_31_6(uint64_t a1@<X8>)
{
  v4 = *(v3 - 280);
  *(a1 - 64) = *(v3 - 296);
  *(a1 - 56) = v4;
  v5 = *(v3 - 312);
  *(a1 - 48) = v2;
  *(a1 - 40) = v5;
  *(a1 - 32) = *(v3 - 320);
  *(a1 - 24) = v1;
}

id OUTLINED_FUNCTION_31_11(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *v2;

  return objc_allocWithZone(v4);
}

uint64_t OUTLINED_FUNCTION_31_15(uint64_t a1)
{
  *(a1 + 16) = v1;
}

__n128 *OUTLINED_FUNCTION_31_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1936291937;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_31_19()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  sub_25BA97890(a1, 29, 2, a4, 103, 2, 160, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t OUTLINED_FUNCTION_31_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;
  *(v1 - 96) = a1;
  return *(v1 - 168);
}

uint64_t OUTLINED_FUNCTION_31_25()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_31_26@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(*(a1 + 16) + 152) + 16) - 1;

  return TensorShape.subscript.getter(v2);
}

uint64_t OUTLINED_FUNCTION_31_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_31_35()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_71_2(__n128 a1, __n128 a2)
{
  v3 = (v2 - 160);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_71_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_161(uint64_t a1, uint64_t a2)
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_161_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_25BA974B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BA9B780(a2);
  v4 = *(a1 + 152);
  sub_25BCB617C();
  sub_25BCB737C();

  for (i = 0; ; ++i)
  {
    sub_25BCB75DC();
    v6 = v15[0];
    if (!v15[0])
    {
    }

    v7 = v15[1];
    if (v4 >> 62)
    {
      result = sub_25BCB749C();
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i == result)
    {

      return swift_unknownObjectRelease();
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8779B0](i, v4);
      v9 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v9 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = sub_25BA928B4();
    [v10 lock];

    swift_beginAccess();
    sub_25BA9323C(v9 + 40, v15);
    if (v17)
    {
      if (v17 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v16);
      }

      else
      {
        sub_25BA9778C(v15);
      }

      v11 = 1;
    }

    else
    {
      sub_25BA9778C(v15);
      v11 = 0;
    }

    [*(v9 + 224) unlock];

    if (v11)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRetain();
      v12 = sub_25BA928B4();
      [v12 lock];

      sub_25BA9323C(v9 + 40, v15);
      if (!v17)
      {
        sub_25BA9323C(v9 + 40, v13);
        sub_25BA9BD18(v6, v7, v14);
        sub_25BA9778C(v13);
        swift_beginAccess();
        sub_25BA97834(v14, v9 + 40);
        swift_endAccess();
      }

      sub_25BA9778C(v15);
      [*(v9 + 224) unlock];
      swift_unknownObjectRelease_n();
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_25BA9776C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB03BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BA97978()
{

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{

  return sub_25BBA291C(a1, a2, a3, v10, v12, v11, v9, a8, a9);
}

uint64_t OUTLINED_FUNCTION_167_1()
{

  return sub_25BAAF54C(v0);
}

uint64_t sub_25BA97A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_25BA97A8C()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_12();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
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

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_21_1@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v2[2] = v4;

  return sub_25BB06478(v3, v5);
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1)
{

  return sub_25BCB745C();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 152) = &a9 - v9;

  return sub_25BCB52EC();
}

void OUTLINED_FUNCTION_21_12()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_21_13@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[2] = a2;
  v3[3].n128_u64[0] = a1;
  v3[3].n128_u8[8] = v2;

  return __swift_destroy_boxed_opaque_existential_1((v4 - 152));
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_15()
{
  *v0 = *(v1 - 144);
}

uint64_t OUTLINED_FUNCTION_21_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
}

uint64_t OUTLINED_FUNCTION_21_19()
{

  return type metadata accessor for Sequential(0, v0 - 120);
}

__n128 OUTLINED_FUNCTION_21_22(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_21_26()
{
  sub_25BAAF550(v0);
}

void *OUTLINED_FUNCTION_21_34()
{

  return memcpy((v0 + 216), (v0 + 8), 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return swift_beginAccess();
}

size_t OUTLINED_FUNCTION_1_5(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 16);
  return result;
}

unint64_t OUTLINED_FUNCTION_1_6()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_25BAB4D78(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a30, v30, &a24, &a15, &a14);
}

void OUTLINED_FUNCTION_28_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return sub_25BCB73CC();
}

void OUTLINED_FUNCTION_1_15(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;
  *(v2 - 128) = 2;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return sub_25BCB67AC();
}

uint64_t OUTLINED_FUNCTION_1_23@<X0>(char a2@<W8>)
{
  *(v3 + 72) = a2;
  v5 = v2[1];
  *(v3 + 80) = *v2;
  *(v3 + 96) = v5;
  *(v3 + 112) = v2[2];
  *(v3 + 122) = *(v2 + 42);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_1_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, int a5)
{

  return sub_25BCB74CC(a1, 11, 2, 0xD00000000000001ELL, a3 | 0x8000000000000000, a2, 107, 2, a4);
}

uint64_t OUTLINED_FUNCTION_1_28()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_1_29()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_1_34()
{

  return sub_25BCB76AC();
}

unint64_t OUTLINED_FUNCTION_1_35()
{

  return sub_25BAB4D78(1uLL, v1 == 0, v0);
}

BOOL OUTLINED_FUNCTION_1_38@<W0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 152) + 16);

  return sub_25BAB74D0(v2, 2, 0, 2);
}

uint64_t OUTLINED_FUNCTION_1_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  return sub_25BBAC034(&a9);
}

uint64_t OUTLINED_FUNCTION_1_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_25BABE62C(v27, 0, va, 0x100000000, v28, v26, a1);
}

uint64_t OUTLINED_FUNCTION_1_41()
{
}

uint64_t OUTLINED_FUNCTION_1_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v32 - 144) = v31;

  return sub_25BC03F70();
}

uint64_t OUTLINED_FUNCTION_1_45(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 120;
  a1[2].n128_u64[1] = 0xE100000000000000;
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, uint64_t a2)
{
  *(v2 - 352) = a1;
  *(v2 - 344) = a2;
  return 0x363174616F6C46;
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, 11, 2, a4, a5, a6, 35, 2, a9);
}

__n128 OUTLINED_FUNCTION_1_55(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  a1[2].n128_u64[0] = v17;
  a1[2].n128_u8[8] = v14;
  a1[3].n128_u64[0] = v15;
  *v12 = v16;
  *(v12 + 4) = 0;
  *(v12 + 8) = v13;
  *(v12 + 16) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v9 = *(v6 + 24);
  *(v9 + 16) = v7 + 1;

  return sub_25BAC48B8(va, v9 + 8 * v7 + 32);
}

uint64_t OUTLINED_FUNCTION_1_59(uint64_t result, uint64_t a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2;
  return result;
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_1_71()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_1_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_25BCB617C();
}

void *OUTLINED_FUNCTION_1_85(uint64_t a1, ...)
{

  return sub_25BCB79CC();
}

uint64_t OUTLINED_FUNCTION_20_1@<X0>(char a1@<W8>)
{
  *(v1 - 67) = a1;

  return sub_25BCB777C();
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 72) = &a9 - v9;

  return sub_25BCB54EC();
}

void OUTLINED_FUNCTION_20_11(char *a1@<X8>)
{
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{

  return sub_25BB654CC((v14 - 152), a14);
}

unint64_t OUTLINED_FUNCTION_20_17()
{

  return sub_25BC1E9E0(v1, v0, v2);
}

void OUTLINED_FUNCTION_20_22()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1)
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 40) = *(v4 - 72);
  *(a1 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_20_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
  *(v1 - 96) = a1;
  return *(v1 - 232);
}

uint64_t OUTLINED_FUNCTION_20_30(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_39(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v3;
}

uint64_t OUTLINED_FUNCTION_20_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  return sub_25BB0EE34(v13, v12, v14 - 40, va1, a5, 0, a7, va, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_20_41(uint64_t a1)
{

  return OptimizerStateDictionary.subscript.getter(v1, a1);
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  *(v0 + 48) = *(v0 + 32);
  *(v0 + 56) = v1;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_0_4(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 48) = v3;
  v7 = v6[1];
  *(v4 + 56) = *v6;
  *(v4 + 72) = v7;
  *(v4 + 88) = v6[2];
  *(v4 + 98) = *(v6 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, int a5)
{

  return sub_25BCB74CC(a1, 11, 2, 0xD000000000000026, a3 | 0x8000000000000000, a2, 94, 2, a4);
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_0_9(int a1, uint64_t a2, uint64_t a3)
{
  v9 = v3[1];
  *(v4 + 72) = *v3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 88) = v9;
  *(v4 + 104) = v3[2];
  *(v4 + 114) = *(v3 + 42);
  return v4;
}

double OUTLINED_FUNCTION_0_10@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 56) = a1;
  *(v1 - 64) = 0;
  result = 0.0;
  *(v1 - 96) = 0u;
  *(v1 - 80) = 0u;
  *(v1 - 112) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_0_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a20)
{
  v20[3] = a17;
  v20[4] = a18;
  result = a20;
  v20[5] = a20;
  return result;
}

double OUTLINED_FUNCTION_0_14()
{
  *(v0 + 368) = 0;
  result = 0.0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 320) = 0u;
  return result;
}

void OUTLINED_FUNCTION_0_25()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = -1;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 168) = 0;
  *(v0 - 144) = -1;
  *(v0 - 92) = 4;
}

uint64_t OUTLINED_FUNCTION_0_27(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return sub_25BB5F86C(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_29(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v4;
  *(v3 + 48) = v6;
  *(v3 + 56) = v5 & 1;
  return *(v4 + 152);
}

unint64_t OUTLINED_FUNCTION_0_34()
{

  return sub_25BAB4D78(1uLL, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_0_36(uint64_t a1@<X8>)
{
  v4 = *v1;
  *(a1 - 48) = 0x206874615079656BLL;
  *(a1 - 40) = v4;
  strcpy((a1 - 23), "c bitmask ");
  *(a1 - 31) = *(v1 + 9);
  *(v3 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

void OUTLINED_FUNCTION_0_42()
{

  sub_25BB9ACC4();
}

unint64_t OUTLINED_FUNCTION_0_43()
{

  return sub_25BAB4D78(1uLL, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 16) = v21;
  *(v14 + 24) = v20;
  *(v14 + 32) = v19;
  *(v14 + 40) = a10;
  *(v14 + 48) = a12;
  *(v14 + 56) = a13;
  *(v14 + 64) = a14;
  *(v14 + 72) = v18;
  *(v14 + 80) = v16;
  *(v14 + 88) = v17;
  *(v14 + 96) = v15;
  *(v14 + 104) = a9;
  *(v14 + 112) = a11;
  *(v14 + 120) = 0;
  v24 = *v22;
  v25 = v22[1];
  v26 = v22[2];
  *(v14 + 170) = *(v22 + 42);
  *(v14 + 144) = v25;
  *(v14 + 160) = v26;
  *(v14 + 128) = v24;
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_48(int a1, uint64_t a2, uint64_t a3)
{
  v11 = v7[1];
  *(v4 + 88) = *v7;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  *(v4 + 104) = v11;
  *(v4 + 120) = v7[2];
  *(v4 + 130) = *(v7 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_58(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 120;
  a1[2].n128_u64[1] = 0xE100000000000000;
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_0_60(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;
  return 0x363174616F6C46;
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return sub_25BCB749C();
}

uint64_t OUTLINED_FUNCTION_0_63(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BADCA30(v4, v3, v2, v5, va);
}

uint64_t OUTLINED_FUNCTION_0_67(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_69(uint64_t a1)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_0_78()
{

  return sub_25BAB4D78(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_0_86(int a1, uint64_t a2, uint64_t a3)
{
  v9 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 48) = v3 & 1;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 88) = v9;
  *(v4 + 104) = v6[2];
  *(v4 + 114) = *(v6 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_87(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, int a13, __int128 a14, __int128 a15, __int128 a16, int a17)
{
  a14 = a10;
  a15 = a11;
  a16 = a12;
  a17 = a13;

  return sub_25BAC27B0(&a14, &a10);
}

uint64_t OUTLINED_FUNCTION_0_89()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_0_90(int a1, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;
  *(v6 + 56) = v9;
  *(v6 + 64) = v10;
  *(v6 + 88) = a5;
  *(v6 + 104) = *(v5 + 32);
  *(v6 + 114) = *(v5 + 42);
  return v6;
}

double OUTLINED_FUNCTION_0_94()
{
  *(v0 - 128) = 0;
  result = 0.0;
  v2 = (v0 - 176);
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  return result;
}

void OUTLINED_FUNCTION_0_95()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_0_96()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_0_98(int a1, uint64_t a2, uint64_t a3)
{
  v11 = v8[1];
  *(v4 + 88) = *v8;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v7;
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;
  *(v4 + 64) = v3;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  *(v4 + 104) = v11;
  *(v4 + 120) = v8[2];
  *(v4 + 130) = *(v8 + 42);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_101()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_0_103(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_19_3(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
  *(v1 - 152) = 110;
  *(v1 - 144) = 2;
}

void OUTLINED_FUNCTION_19_10()
{

  sub_25BBC0130((v1 - 72), v0 + 167, 0, 0);
}

void OUTLINED_FUNCTION_19_14()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB7B2C();
}

uint64_t OUTLINED_FUNCTION_19_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = a13;
  a25 = v27;

  return sub_25BAA0E58(&a22, v28 + 40);
}

double OUTLINED_FUNCTION_19_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_25BBA9DB8((v11 - 72));
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 - 224) = v8;
  *(v12 - 256) = a8;

  return sub_25BAB5DD8(v11, v9, v10, v11, v9, v8, a7);
}

uint64_t OUTLINED_FUNCTION_19_28@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_19_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, char a30)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a28, v29, &a26, &a30, &a19);
}

uint64_t OUTLINED_FUNCTION_19_30(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83640];

  return sub_25BC5B360(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_19_31()
{

  return sub_25BAC4018();
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1)
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_19_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  static ShapeInference.broadcasting(_:_:)(&a9, (v9 - 144), (v9 - 152));
}

uint64_t OUTLINED_FUNCTION_19_39@<X0>(char *a1@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  result = *(a1 + 2);
  v5 = a1[24];
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = result;
  *(v1 + 24) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t result)
{
  *(v3 - 288) = result;
  *(v3 - 432) = v1;
  *(v3 - 360) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BAB5F30(a1, a2, v5, v5, a5, v5, a1);
}

void OUTLINED_FUNCTION_50_11(__n128 a1)
{
  *(v1 + 56) = a1;
  *(v1 + 72) = 6;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_50_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_25BAA51C8(v30 - 216, va);
}

void OUTLINED_FUNCTION_50_15()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_50_18()
{
  *(v2 - 144) = v0;
  *(v2 - 200) = v1;

  return type metadata accessor for MPSGraphTensorStorage();
}

uint64_t OUTLINED_FUNCTION_148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_25BB2BAEC(a1, a2 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_148_1@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v3 + 24) = v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_14_3@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v3 - 136) = a2;
  *(v3 - 120) = v2;
  *(v3 - 112) = 47;
  *(v3 - 104) = a1;
  *(v3 - 103) = 0;

  return type metadata accessor for RandomOperation();
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{

  return sub_25BCB76FC();
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return sub_25BAAF074(v0, v1);
}

void OUTLINED_FUNCTION_62_6()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_62_7()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_3_5(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_3_9(uint64_t a1@<X8>)
{
  v3 = *(v2 - 304);
  *(a1 - 40) = *(v2 - 288);
  *(a1 - 32) = v3;
  *(a1 - 24) = *(v2 - 308);
  *(a1 - 16) = v1;
}

void OUTLINED_FUNCTION_3_10(char a1@<W8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = 1;
  *(v2 + 108) = 3;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BCB76AC();
}

double OUTLINED_FUNCTION_3_12()
{
  *(v0 + 416) = 0;
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 368) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_3_13()
{
  *(v2 - 72) = v0;

  return sub_25BB00AF4(0, v1, 0);
}

void OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_25BADDD28(a1, 57, 2, a4, 102, 2, 133);
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return swift_once();
}

_OWORD *OUTLINED_FUNCTION_3_22()
{
  v2 = v1[1];
  v0[7] = *v1;
  v0[8] = v2;
  v0[9] = v1[2];
  *(v0 + 154) = *(v1 + 42);
  return v0;
}

void OUTLINED_FUNCTION_3_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 16) = v17;
  *(v16 + 24) = v20;
  *(v16 + 32) = v19;
  *(v16 + 40) = a12;
  *(v16 + 48) = a13;
  *(v16 + 56) = a14;
  *(v16 + 64) = a15;
  *(v16 + 72) = a16;
  *(v16 + 80) = v18;
}

__n128 *OUTLINED_FUNCTION_3_27(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v5 = *(v3 - 120);
  v4 = *(v3 - 112);
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = v4;
  v6 = *(v3 - 144);
  result[3].n128_u64[0] = v5;
  result[3].n128_u64[1] = v6;
  return result;
}

void OUTLINED_FUNCTION_3_28(__n128 a1)
{
  v1[7] = a1;
  v1[8].n128_u8[0] = v2;
  v1[11].n128_u8[12] = 7;
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
  a2[2] = 0;
  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_3_31(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;
  *(v1 - 104) = 120;
  *(v1 - 96) = 2;
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BAA4A5C(&a9);
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;
  return 0x74616F6C46;
}

__n128 OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a20)
{
  v20[3] = a17;
  v20[4] = a18;
  result = a20;
  v20[5] = a20;
  return result;
}

void OUTLINED_FUNCTION_3_43(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 144) = 114;
  *(v1 - 136) = 2;
}

uint64_t OUTLINED_FUNCTION_3_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BCB76AC();
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_3_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  sub_25BA97890(a1, 66, 2, a4, 121, 2, 124, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t OUTLINED_FUNCTION_3_48(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_3_50()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_51()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

double OUTLINED_FUNCTION_3_54()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_62(uint64_t a1, uint64_t a2)
{

  return sub_25BCB770C();
}

uint64_t OUTLINED_FUNCTION_3_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_3_68@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 224);
  v7 = *(*(v4 + 296) + 24);

  return type metadata accessor for OptimizerStateDictionary(0, v6, v7, a4);
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  *(v2 + 8 * v1 + 32) = v0;
  *(v3 - 104) = v2;

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_56_3@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  return sub_25BAB524C(a1, a2, a3, a4, a5, a6, 9, 2u, a7);
}

uint64_t OUTLINED_FUNCTION_56_4@<X0>(uint64_t a1@<X8>)
{

  return sub_25BB2BAEC(0xD000000000000015, (a1 - 32) | 0x8000000000000000);
}

void OUTLINED_FUNCTION_56_6()
{
  v2 = *(v0 + 16) + 1;

  sub_25BAAE04C(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_56_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  static Tensor.- infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_56_13()
{
}

uint64_t OUTLINED_FUNCTION_147()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_147_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return type metadata accessor for ContextManager();
}

uint64_t OUTLINED_FUNCTION_67_0@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = v7;
  a1[1] = v9;
  *(*(v8 + 56) + 8 * v10) = v6;
  return a6;
}

void OUTLINED_FUNCTION_67_4()
{
  *(v3 + 24) = v1;
  *(v3 + 152) = v2;
  *(v3 + 160) = v0;
}

void OUTLINED_FUNCTION_67_6()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_67_7()
{
}

uint64_t OUTLINED_FUNCTION_67_8(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = v2;
  return result;
}

__n128 *OUTLINED_FUNCTION_67_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_25BA9ABCC(uint64_t result, int a2, int a3)
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

uint64_t sub_25BA9AC08(uint64_t *a1, int a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25BA9AC54(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_25BCB749C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks13ComputeDeviceV4KindO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BA9ACF0(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v46 = a1;
  v45 = sub_25BCB5EBC();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25BCB5EEC();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v54) = (a4 == 0) | a3 & 1;
  v55 = v11;
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BACF298(a2, &v54);
  if (v12)
  {
    sub_25BAD6344();
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v40 = v14[2];
  if (!v40)
  {
LABEL_15:
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_25BCB70FC();

    v52 = 0xD00000000000002DLL;
    v53 = 0x800000025BCE5C90;
    v33 = type metadata accessor for TensorRepresentation();
    v34 = MEMORY[0x25F876F80](a2, v33);
    MEMORY[0x25F876C90](v34);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    v54 = v52;
    v55 = v53;
    v56 = 9;
    sub_25BCB617C();
    sub_25BA97890("resolve(_:descriptor:)", 22, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/ExecutionContext.swift", 106, 2, 118, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  }

  v15 = 0;
  v16 = (v14 + 4);
  v38 = (v7 + 8);
  v39 = (v9 + 16);
  v37 = (v9 + 8);
  v41 = v14;
  v17 = v44;
  v18 = v42;
  do
  {
    if (v15 >= v14[2])
    {
      __break(1u);
      objc_autoreleasePoolPop(v14);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_25BCB70FC();

      v52 = 0xD00000000000001CLL;
      v53 = 0x800000025BCE5C70;
      swift_getErrorValue();
      v31 = sub_25BCB796C();
      a2 = v32;
      MEMORY[0x25F876C90](v31);

      sub_25BCB74CC("Fatal error", 11, 2, v52, v53, "NeuralNetworks/ExecutionContext.swift", 37, 2, 131);
      __break(1u);
      goto LABEL_15;
    }

    v47 = v16;
    sub_25BAD6FB0(v16, &v54);
    if (qword_28154BE88 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v17, qword_28154BE90);
    v20 = v43;
    (*v39)(v43, v19, v17);
    sub_25BCB5EAC();
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_25BCB5EDC();
    v23 = sub_25BCB6D5C();
    v24 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v22, v23, v24, "Aquire Backend", "", v21, 2u);
    sub_25BAD714C(&v54, &v52);
    v25 = sub_25BCB6D4C();
    v26 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v22, v25, v26, "Aquire Backend", "", v21, 2u);

    v27 = v53;
    MEMORY[0x25F8797F0](v21, -1, -1);
    (*v38)(v18, v45);
    (*v37)(v20, v17);
    v28 = objc_autoreleasePoolPush();
    ObjectType = swift_getObjectType();
    (*(v27 + 24))(&v54, ObjectType, v27);
    ++v15;
    objc_autoreleasePoolPop(v28);
    swift_unknownObjectRelease();
    sub_25BA9AC78(&v54);
    v16 = v47 + 240;
    v14 = v41;
  }

  while (v40 != v15);
}

void *sub_25BA9B248()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return v0;
}

uint64_t sub_25BA9B288()
{
  sub_25BA9778C(v0 + 40);

  sub_25BA9C2C8(v0 + 168);

  return v0;
}

uint64_t sub_25BA9B2C8()
{
  sub_25BA9B288();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9B2FC()
{
  MEMORY[0x25F8797F0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25BA9B388()
{
  sub_25BA9B3BC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9B3BC()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 120), *(v0 + 128));
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, 11, 2, a4, a5, v12, v11, v10, a9);
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1, uint64_t a2)
{

  return sub_25BAA48D4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_102_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 40);
  a1[2].n128_u64[0] = *(v2 + 16);
  a1[2].n128_u64[1] = v4;
}

uint64_t (*sub_25BA9B48C(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  result = (*(a3 + 32))(v5, a2);
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v4;
    return result(v5, 0);
  }

  return result;
}

uint64_t sub_25BA9B4FC()
{
  sub_25BA9B528();
  OUTLINED_FUNCTION_22();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9B528()
{

  sub_25BAA3168();

  return v0;
}

uint64_t sub_25BA9B56C(uint64_t a1)
{
  sub_25BAD6FB0(a1, v14);
  sub_25BAD7934(v14);
  if (!v1)
  {
    v5 = sub_25BAD8478(v14, v2, v3);
    v7 = v6;

    sub_25BA974B0(v14, v5, v7);

    v8 = v15;
    result = sub_25BA9BEA0(v15);
    v9 = result;
    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25F8779B0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return result;
      }

      v11 = sub_25BA9BEA8();

      if (!v11)
      {
        sub_25BBB3BEC();
        swift_allocError();
        v13 = v12;
        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD000000000000012, 0x800000025BCDF4B0);
        sub_25BCB73CC();
        *v13 = 0;
        *(v13 + 8) = 0xE000000000000000;
        *(v13 + 84) = 5;
        swift_willThrow();
        return sub_25BA9AC78(v14);
      }

      result = swift_unknownObjectRelease();
    }
  }

  return sub_25BA9AC78(v14);
}

uint64_t sub_25BA9B780(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_18_3();
    sub_25BA9776C(v4, v5, v6);
    v2 = v12;
    v7 = (a1 + 48);
    do
    {
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);
      v11 = *v7;
      swift_unknownObjectRetain();
      if (v8 >= v9 >> 1)
      {
        sub_25BA9776C((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      *(v12 + 16 * v8 + 32) = v11;
      v7 += 2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3930, &qword_25BCBB8D0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

double OUTLINED_FUNCTION_14_5()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{
}

void OUTLINED_FUNCTION_14_11()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 95);
  *(v0 - 120) = *(v0 - 104);
  *(v0 - 112) = v1;
  *(v0 - 111) = v2;
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0x8000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_18()
{

  return sub_25BAA6F5C(v2 - 152, v0, v1);
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_14_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28)
{
  result = a28;
  a1[1] = a28;
  return result;
}

uint64_t OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, char a4@<W8>, uint64_t a5)
{

  return sub_25BC87800(a1, a4 & 1, a2, 11, 2, a3, 95, 2, a5);
}

uint64_t OUTLINED_FUNCTION_14_34()
{

  return sub_25BAC4018();
}

uint64_t OUTLINED_FUNCTION_14_39()
{
}

uint64_t OUTLINED_FUNCTION_14_43()
{
  v1 = *(v0 - 64);
  __swift_project_boxed_opaque_existential_1((v0 - 88), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_49()
{
  *(v2 - 144) = *(v1 + 152);

  return sub_25BCB617C();
}

uint64_t sub_25BA9BD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_25BA9323C(v4, v21);
  if (v22)
  {
    BYTE4(v20) = 9;
    sub_25BA97890("resolved(with:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorRepresentation.swift", 109, 2, 426, v8, v14, 0xD00000000000002BLL, 0x800000025BCDAAA0, v15[2], v15[3], v15[4], v15[5], v16, v17, v18, v19, v20, v21[0], v21[1], v21[2], v21[3]);
  }

  sub_25BA9BE3C(v21, v15);
  v10 = v16;
  v9 = v17;
  Strong = swift_weakLoadStrong();
  sub_25BCB617C();
  swift_unknownObjectRetain();
  if (Strong)
  {

    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v10;
    *(a3 + 24) = v9;
    result = sub_25BA9BE3C(v15, a3 + 32);
    v13 = 1;
  }

  else
  {
    result = sub_25BA977E0(v15);
    *a3 = a1;
    *(a3 + 8) = a2;
    v13 = 2;
    *(a3 + 16) = v10;
    *(a3 + 24) = v9;
  }

  *(a3 + 105) = v13;
  return result;
}

uint64_t sub_25BA9BEA8()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(v0 + 40, &v3);
  if (v5)
  {
    v1 = v3;
    if (v5 == 1)
    {

      sub_25BA977E0(&v4);
    }

    else
    {
    }
  }

  else
  {
    sub_25BA9778C(&v3);
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks13ComputeDeviceVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BA9BF54()
{
  sub_25BA9B248();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9BF88()
{
  sub_25BA9BFE0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9BFE0()
{
  v1 = v0;
  v2 = sub_25BCB59BC();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14NeuralNetworks19NativeTensorStorage_deallocator;
  (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC14NeuralNetworks19NativeTensorStorage_deallocator, v2, v6);
  result = (*(v4 + 88))(v8, v2);
  if (result != *MEMORY[0x277CC92B8])
  {
    if (result == *MEMORY[0x277CC9298])
    {
      v11 = *(v1 + 40);
      if (v11)
      {
        MEMORY[0x25F879A80](*MEMORY[0x277D85F48], v11, *(v1 + 48) - v11);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (result == *MEMORY[0x277CC92B0])
    {
      v12 = *(v1 + 40);
      if (v12)
      {
        v13 = *(v1 + 48) - v12;
LABEL_16:
        munmap(v12, v13);
        goto LABEL_17;
      }
    }

    else
    {
      if (result == *MEMORY[0x277CC92A0])
      {
        v14 = *(v1 + 40);
        if (v14)
        {
          MEMORY[0x25F8797F0](v14, -1, -1);
        }

        goto LABEL_17;
      }

      if (result == *MEMORY[0x277CC92A8])
      {
LABEL_17:

        (*(v4 + 8))(v1 + v9, v2);
        return v1;
      }

      v16 = 0;
      v17 = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000018, 0x800000025BCDFCB0);
      v15[1] = v1;
      sub_25BCB73CC();
      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v12 = sub_25BCB74CC("Fatal error", 11, 2, v16, v17, "NeuralNetworks/NativeTensorStorage.swift", 40, 2, 66);
      __break(1u);
    }

    v13 = 0;
    goto LABEL_16;
  }

  (*(v4 + 96))(v8, v2);
  result = *(v1 + 40);
  if (result)
  {
    (*v8)(result, *(v1 + 48) - result);

    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25BA9C2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BA9C330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_25BA9C370()
{
  sub_25BA9C3A4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9C3A4()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 72), *(v0 + 80));
}

uint64_t sub_25BA9C3E0()
{
  sub_25BA9C420(MEMORY[0x277D84FB8]);
  OUTLINED_FUNCTION_7_47();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9C420(void (*a1)(void))
{

  a1(v1[5]);

  return OUTLINED_FUNCTION_8_47(v1[10], v1[11]);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_8_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 16) = v13;
  v15 = (v10 + 24 * v14);
  v15[4] = v11;
  v15[5] = a10;
  v15[6] = v12;
}

void OUTLINED_FUNCTION_8_11()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_8_13()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 184) = a7;

  return sub_25BCB598C();
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0xE000000000000000;

  return sub_25BCB70FC();
}

double OUTLINED_FUNCTION_8_31()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 192) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 - 68) = a6;

  return sub_25BCB783C();
}

uint64_t OUTLINED_FUNCTION_8_43()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return sub_25BCB624C();
}

void OUTLINED_FUNCTION_8_46(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a3 = a1;
  a4 = v4;

  Tensor.reshaped(to:)(&a3, &a2);
}

uint64_t OUTLINED_FUNCTION_8_48()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_52(uint64_t a1, uint64_t a2)
{

  return sub_25BCB67AC();
}

void OUTLINED_FUNCTION_8_53(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *(v5 - 136) = v4;
  *(v5 - 128) = a1;
  *(v5 - 112) = a4;
  *(v5 - 104) = a3;
  *(v5 - 120) = a2;
}

uint64_t OUTLINED_FUNCTION_8_54(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_55()
{
  v2 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 200);
  *(v0 - 128) = v2;
  *(v0 - 112) = *(v0 - 168);
  *(v0 - 96) = *(v0 - 152);

  return sub_25BAC27B0(v0 - 144, v0 - 200);
}

void OUTLINED_FUNCTION_8_58()
{

  sub_25BADDD28(v6, v5, v4, v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_8_60()
{

  return OUTLINED_FUNCTION_53_0();
}

BOOL OUTLINED_FUNCTION_8_61@<W0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_25BAB74D0(v2, 4, 0, 0);
}

uint64_t OUTLINED_FUNCTION_8_64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, int a5)
{

  return sub_25BCB74CC(a1, 11, 2, 0xD00000000000008ALL, a3 | 0x8000000000000000, a2, 99, 2, a4);
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_25BC323E4(0, 0, 0, v32, &a17, va, (v33 - 160));
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_25BCB77FC();
}

uint64_t OUTLINED_FUNCTION_7_22()
{
  v3 = *(v0 + 16);
  *(v1 - 144) = *(v3 + 152);
  *(v1 - 68) = *(v3 + 160);

  return type metadata accessor for DataSourceTensorStorage(0);
}

uint64_t OUTLINED_FUNCTION_7_24(uint64_t a1)
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_7_38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, int a5)
{

  return sub_25BCB74CC(a1, 11, 2, 0xD00000000000002ELL, a3 | 0x8000000000000000, a2, 102, 2, a4);
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_7_41()
{
  v4 = *v0;
  *(v1 + 24) = *v2;
  *(v1 + 32) = v4;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return sub_25BCB624C();
}

void OUTLINED_FUNCTION_7_46(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  a2 = a1;
  a3 = v3;

  Tensor.reshaped(to:)(&a2, va);
}

double OUTLINED_FUNCTION_7_51()
{
  *(v1 - 128) = 0;
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_7_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
}

uint64_t OUTLINED_FUNCTION_7_56()
{

  return sub_25BCB617C();
}

__n128 OUTLINED_FUNCTION_7_61@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 208);
  *(a1 - 40) = *(v1 - 224);
  *(a1 - 56) = result;
  v3 = *(v1 - 240);
  *(a1 - 24) = *(v1 - 232);
  *(a1 - 16) = v3;
  *(a1 - 8) = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_25BB0EE34(v14, v12, v13, a4, a5, va, a7, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_7_66(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 256;
  *(v1 + 10) = v2 != 0;
  return result;
}

uint64_t sub_25BA9D148(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BA9D158()
{
  sub_25BA9D18C();

  return swift_deallocClassInstance();
}

void *sub_25BA9D18C()
{

  sub_25BA9D148(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_25BA9D1D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BA9D204(a2, a3);
  *a1 = result & 1;
  return result;
}

__n128 OUTLINED_FUNCTION_22_2()
{
  v2 = *(v1 + 48);
  *(v0 + 112) = *(v1 + 32);
  *(v0 + 128) = v2;
  result = *(v1 + 64);
  *(v0 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t a1)
{
  *(v2 - 144) = *(*(v1 + 56) + 8 * a1);
}

__n128 OUTLINED_FUNCTION_22_15()
{
  v2 = *(v1 - 128);
  *v0 = *(v1 - 112);
  *(v0 + 16) = v2;
  result = *(v1 - 144);
  *(v0 + 32) = result;
  return result;
}

ValueMetadata *OUTLINED_FUNCTION_22_20(uint64_t a1)
{

  return sub_25BC8FACC();
}

__n128 *OUTLINED_FUNCTION_22_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + 2;
  v5.val[0] = *(v3 + 80);
  v5.val[1] = v5.val[0];
  vst2q_f64(v4->n128_f64, v5);
  *(v2 + 128) = result;
  *(v2 + 136) = 0;
  return result;
}

void OUTLINED_FUNCTION_22_23()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_22_24()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

void OUTLINED_FUNCTION_22_26()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t a1)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_22_30()
{
  result = v0;
  *(v2 - 200) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  return _s9IOMappingVMa(255, v5, v6, a4);
}

void *sub_25BA9D5DC()
{
  sub_25BA9D63C();

  sub_25BA9D148(*(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t sub_25BA9D608()
{
  sub_25BA9D5DC();

  return swift_deallocClassInstance();
}

void *sub_25BA9D63C()
{

  return v0;
}

uint64_t sub_25BA9D66C(uint64_t a1)
{
  sub_25BA9D6BC();
  sub_25BA9D148(*(v1 + 136), *(v1 + 144));

  return swift_deallocClassInstance();
}

void *sub_25BA9D6BC()
{

  return v0;
}

uint64_t sub_25BA9D6F4()
{
  v0 = sub_25BA9D740();
  sub_25BA9D148(*(v0 + 112), *(v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9D740()
{

  return v0;
}

void *sub_25BA9D768()
{
  sub_25BA9D7E0();

  return v0;
}

uint64_t sub_25BA9D7AC()
{
  sub_25BA9D768();

  return swift_deallocClassInstance();
}

void *sub_25BA9D7E0()
{

  return v0;
}

uint64_t sub_25BA9D810()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v1 + 16);
    sub_25BA9D8C4(v2, *(v1 + 48));
    v5 = v4;
    v2();
    sub_25BA9D148(v2, v3);
  }

  sub_25BA9D148(*(v1 + 40), *(v1 + 48));
  return v1;
}

uint64_t sub_25BA9D890()
{
  sub_25BA9D810();

  return swift_deallocClassInstance();
}

uint64_t sub_25BA9D8C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*Adam.update(_:with:)(uint64_t a1, void *a2, uint64_t a3))(_BYTE *, void)
{
  v296 = a1;
  v276 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v303 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_4();
  v275 = v9;
  OUTLINED_FUNCTION_7();
  sub_25BCB5EFC();
  OUTLINED_FUNCTION_2();
  v273 = v11;
  v274 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  v272 = v12;
  OUTLINED_FUNCTION_7();
  v13 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_50();
  v281 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_109_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_72_0();
  WitnessTable = swift_getWitnessTable();
  v300 = v3;
  nullsub_1();
  v292 = a3;
  v295 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v298 = a2;
  sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BACC03C();
  v302 = v20;
  if (qword_28154BE88 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v21 = sub_25BCB5EEC();
    v22 = __swift_project_value_buffer(v21, qword_28154BE90);
    sub_25BCB5EAC();
    v279 = v22;
    v23 = sub_25BCB5EDC();
    sub_25BCB6D5C();
    if (sub_25BCB6E1C())
    {
      v24 = OUTLINED_FUNCTION_90();
      v25 = OUTLINED_FUNCTION_88_1(v24);
      OUTLINED_FUNCTION_111_0(&dword_25BA90000, v26, v27, v25, "Optimizing", "");
      OUTLINED_FUNCTION_89();
    }

    v28 = OUTLINED_FUNCTION_103_0();
    v29(v28);
    sub_25BCB5F2C();
    swift_allocObject();
    v282 = sub_25BCB5F1C();
    v31 = *(v15 + 8);
    v30 = v15 + 8;
    v280 = v31;
    v31(v4, v13);
    OUTLINED_FUNCTION_0_14();
    v32 = OUTLINED_FUNCTION_29_1();
    sub_25BAA51C8(v32, v33);
    v34 = MEMORY[0x277D84F90];
    sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D42C38, v312, v306);
    sub_25BA9C2C8(v304);
    v313 = v306[0];
    v35 = v300;
    OUTLINED_FUNCTION_67_1();
    if (!v39 & v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37 == 0x200000000;
    }

    if (v39)
    {
      v40 = *(v35 + 16);
      if ((v40 & 0x100000000) != 0)
      {
        v304[0] = v298;
        MEMORY[0x28223BE20](v36);
        OUTLINED_FUNCTION_71_0();
        v46 = WitnessTable;
        *(v47 - 16) = v292;
        *(v47 - 8) = v46;
        v48 = sub_25BCB68CC();
        OUTLINED_FUNCTION_1_1();
        v49 = swift_getWitnessTable();
        v51 = sub_25BAB2B20(sub_25BB28258, v40, v48, &type metadata for Tensor, MEMORY[0x277D84A98], v49, MEMORY[0x277D84AC0], v50);
        v299 = 0;
        OUTLINED_FUNCTION_75_0(v51);
        v304[0] = v312[0];
        v310[0] = &unk_286D42C60;
        Tensor.reshaped(to:)(v310, v306);

        v310[0] = v306[0];
        Tensor.sum(squeezingAxes:)(v304, &unk_286D42C88);

        v52 = v304[0];
        OUTLINED_FUNCTION_0_14();
        v53 = *(v52[2] + 160);
        v54 = OUTLINED_FUNCTION_29_1();
        sub_25BAA51C8(v54, v55);
        v305[0] = v34;
        LOBYTE(v311) = v53;
        v56 = OUTLINED_FUNCTION_54_1();
        sub_25BAA51C8(v56, v57);
        Tensor.init(shape:coercingScalars:scalarType:on:)(v305, &unk_286D42CB0, &v311, v306, v310);
        sub_25BA9C2C8(v312);
        sub_25BA9C2C8(v304);
        v304[0] = v52;
        v312[0] = v310[0];
        OUTLINED_FUNCTION_29_1();
        static Tensor.* infix(_:_:)();
        sqrt(_:)(v304, v306);

        v45 = v304[0];
      }

      else
      {
        OUTLINED_FUNCTION_0_14();
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v42 = OUTLINED_FUNCTION_56(v41);
        *(v42 + 16) = xmmword_25BCBAE50;
        *(v42 + 32) = v40;
        v43 = OUTLINED_FUNCTION_29_1();
        sub_25BAA51C8(v43, v44);
        sub_25BACC1B0(MEMORY[0x277D84F90], v42, v312, v306);
        sub_25BA9C2C8(v304);
        v45 = v306[0];

        v299 = 0;
      }

      v313 = v45;
    }

    else
    {
      v299 = 0;
    }

    v58 = sub_25BCB681C();
    OUTLINED_FUNCTION_63_0();
    sub_25BAA1B64();
    v311 = v59;
    if (v58 < 0)
    {
      __break(1u);
LABEL_82:

      __break(1u);
LABEL_83:
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_7_0();
      goto LABEL_85;
    }

    v277 = v30;
    v278 = v13;
    v294 = v58;
    if (!v58)
    {
      break;
    }

    v60 = 0;
    v270 = (v303 + 8);
    v271 = (v303 + 104);
    HIDWORD(v269) = *MEMORY[0x277D84660];
    v293 = xmmword_25BCBAE50;
    v283 = xmmword_25BCBAE70;
    v61 = v292;
    v62 = WitnessTable;
    v63 = v294;
    while (1)
    {
      v301 = v60;
      sub_25BCB690C();
      v13 = v304[0];
      v64 = v304[1];

      MEMORY[0x28223BE20](v65);
      v66 = &v269 - 10;
      *(&v269 - 8) = v61;
      *(&v269 - 7) = v62;
      v303 = v64;
      v67 = v300;
      *(&v269 - 6) = v64;
      *(&v269 - 5) = v67;
      *(&v269 - 4) = &v313;
      *(&v269 - 3) = v13;
      *(&v269 - 2) = &v311;

      v68 = sub_25BCB6FCC();
      if ((v69 & 1) == 0)
      {
        MEMORY[0x28223BE20](v68);
        OUTLINED_FUNCTION_70_1();
        v78 = *(v61 + 24);
        *(v79 - 48) = v295;
        *(v79 - 40) = v78;
        *(v79 - 32) = v80;
        *(v79 - 24) = sub_25BACC670;
        *(v79 - 16) = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v66 = v299;
        sub_25BAB2F30();
        if (v66)
        {
          goto LABEL_82;
        }

        v299 = 0;

        v63 = v294;
        goto LABEL_68;
      }

      v70 = swift_modifyAtWritableKeyPath();
      v72 = v70;
      if ((*(v71 + 8) & 1) == 0)
      {
        break;
      }

LABEL_67:
      v72(v310, 0);

LABEL_68:
      v233 = sub_25BAC4018();
      v234 = *(v302 + 16);
      OUTLINED_FUNCTION_95_0();
      if (v38)
      {
        OUTLINED_FUNCTION_13_5(v235);
        sub_25BACC03C();
        v302 = v238;
      }

      v236 = v301 + 1;

      v237 = v302;
      *(v302 + 16) = v66;
      *(v237 + 8 * v234 + 32) = v233;
      v60 = v236;
      if (v63 == v236)
      {
        goto LABEL_73;
      }
    }

    v73 = v71;
    v290 = v70;
    v291 = &v269;
    v74 = v300;
    v75 = *(v300 + 40);
    if (v75 == 1.0)
    {
      v76 = v303;

      v77 = MEMORY[0x277D84F90];
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      v81 = v303;
      v82 = *(*(v303 + 2) + 160);
      v83 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v83, v84);
      v77 = MEMORY[0x277D84F90];
      v308 = MEMORY[0x277D84F90];
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v86 = OUTLINED_FUNCTION_56(v85);
      OUTLINED_FUNCTION_23_4(v86);
      *(v87 + 32) = v75;
      v307 = v82;
      v88 = OUTLINED_FUNCTION_54_1();
      sub_25BAA51C8(v88, v89);
      v90 = OUTLINED_FUNCTION_6_14();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v90, v91, v92, v93, v94);
      sub_25BA9C2C8(v312);
      sub_25BA9C2C8(v304);
      v312[0] = v81;
      v306[0] = v309;

      OUTLINED_FUNCTION_46_1();
      static Tensor.* infix(_:_:)();

      v76 = v304[0];
    }

    OUTLINED_FUNCTION_64_1();
    if (!v39 & v38)
    {
      v304[0] = v76;
    }

    else
    {
      v96 = v73;
      v97 = *(v74 + 16);
      v98 = *(v74 + 24) | (v95 << 32);
      if (HIDWORD(v98))
      {
        v99 = v313;
        OUTLINED_FUNCTION_0_14();
        if (HIDWORD(v98) == 1)
        {
          v100 = *(v76[2] + 160);
          v101 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v101, v102);
          v308 = v77;
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v104 = OUTLINED_FUNCTION_56(v103);
          OUTLINED_FUNCTION_23_4(v104);
          *(v105 + 32) = v97;
          v307 = v100;
          v106 = OUTLINED_FUNCTION_54_1();
          sub_25BAA51C8(v106, v107);

          v108 = OUTLINED_FUNCTION_6_14();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v108, v109, v110, v111, v112);
          sub_25BA9C2C8(v312);
          sub_25BA9C2C8(v304);
          v113 = v309;
          v312[0] = v76;
          OUTLINED_FUNCTION_96_0();
          Tensor.squared()();
          v306[0] = v304[0];
          v309 = &unk_286D42CD8;
          v114 = OUTLINED_FUNCTION_98_1();
          Tensor.reshaped(to:)(v114, v115);

          v306[0] = v312[0];
          Tensor.sum(squeezingAxes:)(&v309, &unk_286D42D00);

          v77 = MEMORY[0x277D84F90];

          v116 = OUTLINED_FUNCTION_97_0();
          sqrt(_:)(v117, v116);

          v118 = v304[0];
          v312[0] = v76;
          v304[0] = v113;
          v306[0] = v118;
          v309 = v113;
          max(_:_:)();
          static Tensor./ infix(_:_:)();

          OUTLINED_FUNCTION_46_1();
          static Tensor.* infix(_:_:)();
        }

        else
        {
          v122 = *(v76[2] + 160);
          v123 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v123, v124);
          v308 = v77;
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v126 = OUTLINED_FUNCTION_56(v125);
          OUTLINED_FUNCTION_23_4(v126);
          *(v127 + 32) = v98;
          v307 = v122;
          v128 = OUTLINED_FUNCTION_54_1();
          sub_25BAA51C8(v128, v129);

          v130 = OUTLINED_FUNCTION_6_14();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v130, v131, v132, v133, v134);
          sub_25BA9C2C8(v312);
          sub_25BA9C2C8(v304);
          v304[0] = v76;
          v312[0] = v309;
          OUTLINED_FUNCTION_29_1();
          static Tensor.* infix(_:_:)();
          v304[0] = v99;
          LOBYTE(v309) = *(v76[2] + 160);
          v135 = v275;
          v136 = v276;
          (*v271)(v275, HIDWORD(v269), v276);
          OUTLINED_FUNCTION_98_1();
          Tensor.cast(to:roundingRule:)();
          (*v270)(v135, v136);
          v309 = v312[0];
          static Tensor./ infix(_:_:)();
        }
      }

      else
      {
        v312[0] = v76;
        OUTLINED_FUNCTION_96_0();
        Tensor.clamped(to:)(v119, v120, v121);
      }

      v74 = v300;
      v73 = v96;
    }

    v137 = *(*v73 + 32);
    if ((~v137 & 0xF000000000000007) == 0)
    {
      OUTLINED_FUNCTION_21();
      v269 = 329;
      OUTLINED_FUNCTION_7_0();
      v259 = 0xD00000000000002ELL;
LABEL_85:
      sub_25BCB74CC(v256, v257, v258, v259, v260, v261, 102, 2, v269);
      __break(1u);
LABEL_86:
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_52_1();
      v268 = 241;
LABEL_88:
      sub_25BADDD28(v262, v263, v264, v265, v266, v267, v268);
    }

    if ((v137 & 0x8000000000000000) == 0)
    {
      goto LABEL_83;
    }

    v289 = v73;
    v138 = v304[0];
    sub_25BAB3020(v137);
    v139 = qword_28154E1E0;

    if (v139 != -1)
    {
      swift_once();
    }

    v4 = v137 & 0x7FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v287 = v138;
    v288 = v137;
    if (byte_27FBB3838 == 1)
    {
      OUTLINED_FUNCTION_64_1();
      if (!v39 & v38)
      {

        v144 = v138;
      }

      else
      {
        OUTLINED_FUNCTION_47_3(v140);
        v312[0] = v138;
        v306[0] = v137 & 0x7FFFFFFFFFFFFFFFLL;
        v142 = OUTLINED_FUNCTION_46_1();
        sub_25BB08FF0(v142, v143);
        v144 = v304[0];
      }

      v145 = *v74;
      v146 = *(*((v137 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
      OUTLINED_FUNCTION_0_14();
      v309 = v77;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v148 = OUTLINED_FUNCTION_56(v147);
      OUTLINED_FUNCTION_23_4(v148);
      *(v149 + 32) = v145;
      LOBYTE(v308) = v146;
      v150 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v150, v151);
      v152 = OUTLINED_FUNCTION_77_0();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v152, v153, v154, v155, v156);
      sub_25BA9C2C8(v304);
      v157 = *(v74 + 48);
      v15 = v157 + 1;
      if (__OFADD__(v157, 1))
      {
        goto LABEL_79;
      }

      v284 = v306[0];
      v285 = v144;
      v158 = *(*((v137 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
      OUTLINED_FUNCTION_0_14();
      v309 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v159 = swift_allocObject();
      OUTLINED_FUNCTION_23_4(v159);
      *(v160 + 32) = v15;
      LOBYTE(v308) = v158;
      v161 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v161, v162);
      v163 = OUTLINED_FUNCTION_77_0();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v163, v164, v165, v166, v167);
      sub_25BA9C2C8(v304);
      v168 = v306[0];
      if (*(v74 + 48))
      {
        v169 = OUTLINED_FUNCTION_49_3();
        v171 = type metadata accessor for OptimizerStateDictionary(v169, v295, v77, v170);
        v172 = OUTLINED_FUNCTION_80_0(v171);
        v175 = v304[0];
        if (!v304[0])
        {
          OUTLINED_FUNCTION_17_5();
          OUTLINED_FUNCTION_52_1();
          v268 = 288;
          goto LABEL_88;
        }

        v176 = v295;
      }

      else
      {
        v304[0] = *(v74 + 56);
        v208 = OUTLINED_FUNCTION_49_3();
        v209 = v295;
        type metadata accessor for OptimizerStateDictionary(v208, v295, v77, v210);
        v172 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v312);
        v176 = v209;
        v175 = v312[0];
      }

      OUTLINED_FUNCTION_113_1(v172, v176, v173, v174);
      v211 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v312);
      v212 = v74;
      v213 = v312[0];
      v214 = *(v212 + 72);
      if (v214)
      {
        v304[0] = v214;
        v211 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v312);
        v215 = v312[0];
      }

      else
      {
        v215 = 0;
      }

      MEMORY[0x28223BE20](v211);
      *(&v269 - 10) = v77;
      *(&v269 - 9) = v4;
      v224 = v284;
      *(&v269 - 8) = v285;
      *(&v269 - 7) = v175;
      *(&v269 - 6) = v213;
      *(&v269 - 5) = v215;
      *(&v269 - 4) = v224;
      *(&v269 - 3) = v168;
      v225 = v299;
      *(&v269 - 2) = v300;
      *(&v269 - 1) = v13;
      sub_25BACDABC(sub_25BB279EC);
      v299 = v225;

      goto LABEL_62;
    }

    OUTLINED_FUNCTION_64_1();
    if (!v39 & v38)
    {

      v179 = v138;
    }

    else
    {
      OUTLINED_FUNCTION_47_3(v141);
      v312[0] = v138;
      v306[0] = v137 & 0x7FFFFFFFFFFFFFFFLL;
      v177 = OUTLINED_FUNCTION_46_1();
      sub_25BB08FF0(v177, v178);
      v179 = v304[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v180 = swift_allocObject();
    *(v180 + 16) = v283;
    *(v180 + 32) = v4;
    *(v180 + 40) = v179;
    sub_25BAB3020(v137);

    sub_25BAB7DE8(v180, v312);
    swift_setDeallocating();
    sub_25BAB3FD0();
    v181 = *v74;
    v182 = *(*((v137 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
    OUTLINED_FUNCTION_0_14();
    v308 = v77;
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v184 = OUTLINED_FUNCTION_56(v183);
    OUTLINED_FUNCTION_23_4(v184);
    *(v185 + 32) = v181;
    v307 = v182;
    sub_25BAA51C8(v304, v306);
    v186 = OUTLINED_FUNCTION_6_14();
    Tensor.init(shape:coercingScalars:scalarType:on:)(v186, v187, v188, v189, v190);
    sub_25BA9C2C8(v304);
    v191 = *(v74 + 48);
    v15 = v191 + 1;
    if (!__OFADD__(v191, 1))
    {
      v284 = v309;
      v285 = v179;
      OUTLINED_FUNCTION_0_14();
      v308 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v192 = swift_allocObject();
      OUTLINED_FUNCTION_23_4(v192);
      *(v193 + 32) = v15;
      v307 = 2;
      sub_25BAA51C8(v304, v306);
      v194 = OUTLINED_FUNCTION_6_14();
      Tensor.init(shape:coercingScalars:scalarType:on:)(v194, v195, v196, v197, v198);
      sub_25BA9C2C8(v304);
      v199 = v309;
      if (*(v74 + 48))
      {
        v200 = OUTLINED_FUNCTION_49_3();
        v202 = type metadata accessor for OptimizerStateDictionary(v200, v295, v77, v201);
        v203 = OUTLINED_FUNCTION_80_0(v202);
        v206 = v304[0];
        if (!v304[0])
        {
          goto LABEL_86;
        }

        v207 = v295;
      }

      else
      {
        v304[0] = *(v74 + 56);
        v216 = OUTLINED_FUNCTION_49_3();
        v217 = v295;
        type metadata accessor for OptimizerStateDictionary(v216, v295, v77, v218);
        v203 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v306);
        v207 = v217;
        v206 = v306[0];
      }

      OUTLINED_FUNCTION_113_1(v203, v207, v204, v205);
      v219 = OUTLINED_FUNCTION_31_2(sub_25BB279D0, v306);
      v220 = v74;
      v221 = v306[0];
      v222 = *(v220 + 72);
      if (v222)
      {
        v304[0] = v222;
        v219 = OUTLINED_FUNCTION_31_2(sub_25BB28290, v306);
        v223 = v306[0];
      }

      else
      {
        v223 = 0;
      }

      MEMORY[0x28223BE20](v219);
      *(&v269 - 12) = v77;
      *(&v269 - 11) = v4;
      v226 = v284;
      *(&v269 - 10) = v285;
      *(&v269 - 9) = v206;
      *(&v269 - 8) = v221;
      *(&v269 - 7) = v223;
      *(&v269 - 6) = v226;
      *(&v269 - 5) = v199;
      v227 = v299;
      *(&v269 - 4) = v300;
      *(&v269 - 3) = v312;
      *(&v269 - 2) = v13;
      sub_25BACDABC(sub_25BACE338);
      v299 = v227;

      sub_25BA9C2C8(v312);
LABEL_62:

      v228 = v304[0];
      v229 = v311;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v292;
      v63 = v294;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_45_3();
        v229 = v239;
      }

      v232 = *(v229 + 16);
      v231 = *(v229 + 24);
      v66 = (v232 + 1);
      if (v232 >= v231 >> 1)
      {
        OUTLINED_FUNCTION_13_5(v231);
        sub_25BAA1B64();
        v229 = v240;
      }

      *(v229 + 16) = v66;
      *(v229 + 8 * v232 + 32) = v228;
      v311 = v229;
      v304[0] = v228;

      Parameter.wrappedValue.setter(v304);

      sub_25BAB310C(v288);

      v62 = WitnessTable;
      v72 = v290;
      goto LABEL_67;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  v62 = WitnessTable;
LABEL_73:
  v241 = sub_25BCB5EDC();
  v242 = v281;
  sub_25BCB5F0C();
  v243 = sub_25BCB6D4C();
  v244 = sub_25BCB6E1C();
  v245 = v278;
  v246 = v300;
  if (v244)
  {

    sub_25BCB5F3C();

    v247 = OUTLINED_FUNCTION_48_2();
    if (v248(v247) != *MEMORY[0x277D85B00])
    {
      v249 = OUTLINED_FUNCTION_74_0();
      v250(v249);
    }

    *OUTLINED_FUNCTION_90() = 0;
    v251 = sub_25BCB5E9C();
    OUTLINED_FUNCTION_61_0(&dword_25BA90000, v252, v243, v251, "Optimizing");
    OUTLINED_FUNCTION_89();
    v246 = v300;
    v62 = WitnessTable;
  }

  v280(v242, v245);

  v253 = sub_25BACED8C();
  OUTLINED_FUNCTION_114_0(v253);

  v254 = v292;
  OUTLINED_FUNCTION_102_0();
  nullsub_1();
  return sub_25BA9B48C(v246, v254, v62);
}

void OUTLINED_FUNCTION_122_1()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_6()
{
  *(v0 + 40) = v1;
  *(v0 + 16) = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_24_8(uint64_t a1)
{

  return sub_25BAA6F5C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_25BAAF074(v0, 0);
}

uint64_t OUTLINED_FUNCTION_24_14@<X0>(__int16 a1@<W8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = 73;
  *(v2 - 88) = a1;

  return type metadata accessor for BinaryComparisonOperation();
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BAA48D4(v2, va, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24_20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = v6;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_24_22()
{

  sub_25BAB2794();
}

uint64_t OUTLINED_FUNCTION_24_23(uint64_t a1, ...)
{

  return sub_25BCB625C();
}

void OUTLINED_FUNCTION_24_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v29 - 176) = v28;

  static Tensor.* infix(_:_:)();
}

void *OUTLINED_FUNCTION_24_25(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v4;
  result[5] = v3;
  return result;
}

double OUTLINED_FUNCTION_24_26()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *v14 = a13;
  v14[1] = a14;
  v14[2] = v16;
  return v15;
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_25BAA4A5C(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_16_9@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, char a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  return sub_25BC87800(va, a3 & 1, a1, 11, 2, a2, 95, 2, a4);
}

void OUTLINED_FUNCTION_89()
{

  JUMPOUT(0x25F8797F0);
}

uint64_t OUTLINED_FUNCTION_16_11@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_25BCB680C();
}

void OUTLINED_FUNCTION_16_16(uint64_t a1@<X8>)
{
  v2 = *(v1 - 352);
  *(a1 - 72) = *(v1 - 344);
  *(a1 - 64) = v2;
  v3 = *(v1 - 312);
  *(a1 - 56) = *(v1 - 288);
  *(a1 - 48) = v3;
  v4 = *(v1 - 328);
  *(a1 - 40) = *(v1 - 320);
  *(a1 - 32) = v4;
  v5 = *(v1 - 432);
  *(a1 - 24) = *(v1 - 336);
  *(a1 - 16) = v5;
}

void *OUTLINED_FUNCTION_16_21()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 304), v0);
}

uint64_t OUTLINED_FUNCTION_16_23(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v3 + 32) = result;
  *(v3 + 40) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_24()
{

  return sub_25BCB5B3C();
}

uint64_t OUTLINED_FUNCTION_16_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_16_26@<X0>(char a1@<W8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_arg(va1, void);
  v14 = va_arg(va1, void);
  v13 = v2;
  HIBYTE(v12) = a1;

  return sub_25BAA51C8(va1, va);
}

uint64_t OUTLINED_FUNCTION_16_27()
{

  return sub_25BB0EA20(v0);
}

BOOL OUTLINED_FUNCTION_16_30()
{

  return sub_25BAC863C(0);
}

uint64_t OUTLINED_FUNCTION_16_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, _OWORD *a7)
{

  return sub_25BC323E4(0, 0, 0, v7, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_16_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_25BA92920(v16, 0, 0, va);
}

double OUTLINED_FUNCTION_16_40()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

void OUTLINED_FUNCTION_16_43(uint64_t a1, ...)
{

  static Tensor.+ infix(_:_:)();
}

void OUTLINED_FUNCTION_16_45()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_16_47()
{
  *(v2 - 264) = v0;
  *(v2 - 272) = v1;
  *(v2 - 273) = *(v2 - 348);
  v4 = *(v2 - 344);

  return basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)(v2 - 264, (v2 - 272), v4, (v2 - 273), (v2 - 104));
}

uint64_t OUTLINED_FUNCTION_16_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 - 68) = a6;

  return sub_25BCB783C();
}

uint64_t OUTLINED_FUNCTION_16_53(uint64_t a1)
{

  return sub_25BCB788C();
}

uint64_t sub_25BA9F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = (a2 - a1) / 4;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D83A90], a4, a5);
}

uint64_t sub_25BA9F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v11 = sub_25BCB6E8C();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - v12;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v25 - v18;
  v31 = a4;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a2;
  v27 = a2;
  v37 = a3;
  v20 = v32;
  sub_25BCB658C();
  if (v39 != 1)
  {
    return v38;
  }

  (*(v13 + 16))(v16, v20, a5);
  v21 = sub_25BCB656C();
  swift_getAssociatedConformanceWitness();
  v22 = v28;
  sub_25BCB6EDC();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v31);
  (*(v29 + 8))(v22, v30);
  if (EnumTagSinglePayload != 1)
  {
    __break(1u);
    return v38;
  }

  return v21;
}

uint64_t sub_25BA9F8C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a4 = v5;
    return result;
  }

  if (a3 >= a2)
  {
    result = sub_25BCB6E4C();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BA9F928(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v8;
  *(v6 + 32) = a5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  v9 = OBJC_IVAR____TtC14NeuralNetworks19NativeTensorStorage_deallocator;
  v10 = sub_25BCB59BC();
  (*(*(v10 - 8) + 32))(v6 + v9, a6, v10);
  return v6;
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, a2, a3, a4, a5, a6, 107, 2, a9);
}

uint64_t OUTLINED_FUNCTION_55_2@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[4] = a2;
  v3[5].n128_u64[0] = a1;
  v3[5].n128_u8[8] = v2;

  return __swift_destroy_boxed_opaque_existential_1((v4 - 152));
}

uint64_t *OUTLINED_FUNCTION_55_3()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v5 = *(v3 + 80);
  *(v2 + 48) = *(v3 + 72);
  *(v2 + 56) = v5;

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_55_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = v15;

  Tensor.reshaped(to:)(&a14, v14);
}

uint64_t OUTLINED_FUNCTION_55_9()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  return sub_25BB654CC(va, a12);
}

void OUTLINED_FUNCTION_54_6()
{

  nullsub_1();
}

uint64_t OUTLINED_FUNCTION_54_8()
{

  return sub_25BCB617C();
}

__n128 OUTLINED_FUNCTION_54_9()
{
  v2 = *(v0 + 112);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 64) = v2;
  result = *(v0 + 128);
  *(v1 + 80) = result;
  *(v0 + 272) = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_10@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 152);
  *(v1 + 48) = result;
  return result;
}

void *OUTLINED_FUNCTION_54_12()
{

  return sub_25BC20C38(v2, v1, v3, v0);
}

void OUTLINED_FUNCTION_54_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(v58 + 48) = a1 / v57;
  a37 = v58;

  Tensor.reshaped(to:)(&a37, &a57);
}

uint64_t type metadata accessor for NativeTensorStorage(uint64_t a1)
{
  result = qword_28154E5B0;
  if (!qword_28154E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BA9FCEC(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BCB59BC();
  OUTLINED_FUNCTION_2();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v19 = *a1;
  HIBYTE(v18) = v14;
  (*(v15 + 104))(v13, *MEMORY[0x277CC92A0], v11);
  v16 = swift_allocObject();
  sub_25BA9F928(&v19, &v18 + 7, a3, a4, a5, v13);
  return v16;
}

void sub_25BA9FE14()
{
  OUTLINED_FUNCTION_9_18();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v54 = v12;
  v14 = *v13;
  v15 = *(*v13 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    v17 = 1;
    while (1)
    {
      v18 = *v16++;
      v19 = v17 * v18;
      if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
      {
        break;
      }

      v17 = v19;
      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_13:
    v55[0] = v14;
    LOBYTE(v56) = v5;
    sub_25BAA4B48(v55, &v56, v60, v0, v7);
    v23 = v22;

    sub_25BAA48D4(v60, v55, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v24 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v56) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v26, v55, v27, v24, ObjectType, v23);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v28);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_78_6(v54);
    OUTLINED_FUNCTION_78_6(v60);
    OUTLINED_FUNCTION_78_6(v62);
    v29 = v52;
    *v53 = v28;
    (*(*(v11 - 8) + 8))(v29, v11);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v19 = 1;
LABEL_7:
  v0 = v2;
  v53 = v3;
  v20 = v1;
  if (v19 == sub_25BCB6ABC())
  {
    v21 = sub_25BAA48D4(v54, v62, &qword_27FBB6730, &qword_25BCBC4B0);
    v51 = &v50;
    MEMORY[0x28223BE20](v21);
    v7 = v49;
    v49[2] = v11;
    v49[3] = v9;
    v52 = v20;
    v49[4] = v20;
    sub_25BAA48D4(v62, &v56, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v57 + 1))
    {
      v60[0] = v56;
      v60[1] = v57;
      v60[2] = v58;
      v61 = v59;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v55);

      sub_25BAA48D4(v55, v60, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v55);
      if (*(&v57 + 1))
      {
        sub_25BAA6FBC(&v56, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v14 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v30)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v31, v32, v33);
    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v34, v35, v36);

    __break(1u);
  }

LABEL_21:
  v37 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v37);

  v38 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v38);
  sub_25BCB6ABC();
  v39 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v39);

  v40 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v40);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_25_0(v41, v42, v43, v44, v45, v46, v47, v48, v7, v51);
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{

  return OptimizerStateDictionary.subscript.getter(v1, a1);
}

uint64_t OUTLINED_FUNCTION_80_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t sub_25BAA0600(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BAA0648()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 144);
  *(v1 + 32) = *(v0 + 136);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BAA06AC(uint64_t (*a1)(void))
{
  v1 = a1();
  if (v1 >> 62)
  {
    v2 = sub_25BCB749C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_25BAAF074(v0, v1);
}

uint64_t sub_25BAA07E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBB6D0;
  *(v1 + 32) = *(v0 + 40);

  return v1;
}

void OUTLINED_FUNCTION_83_1()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_83_2()
{
  v2 = *(v0 - 200);

  return sub_25BB556A0(v2);
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB60DC();
}

void OUTLINED_FUNCTION_83_9(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

unint64_t sub_25BAA0930(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25BAA0954()
{
  OUTLINED_FUNCTION_17_10();
  v0 = swift_beginAccess();
  v8 = OUTLINED_FUNCTION_6_54(v0, v1, v2, v3, v4, v5, v6, v7, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  if (v30)
  {
    if (v30 == 1)
    {
      OUTLINED_FUNCTION_7_54(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28[0], v28[1], v28[2], v28[3]);
      swift_unknownObjectRelease();
      sub_25BA977E0(&v29);
    }

    else
    {
      sub_25BA9778C(v28);
    }

    return 0;
  }

  else
  {
    sub_25BA9BE3C(v28, &v18);
    v16 = v21;
    sub_25BA977E0(&v18);
  }

  return v16;
}

void OUTLINED_FUNCTION_75_0(uint64_t a1)
{
  *(v1 + 320) = 13;

  Tensor.init(stacking:alongAxis:scalarType:)();
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1, uint64_t a2)
{

  return sub_25BCB789C();
}

void *OUTLINED_FUNCTION_75_5()
{

  return sub_25BAA4A5C(v0 + 224);
}

uint64_t OUTLINED_FUNCTION_75_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_75_7()
{

  return sub_25BCB783C();
}

__n128 *OUTLINED_FUNCTION_74_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_6()
{
}

void OUTLINED_FUNCTION_74_7()
{
  *(v2 - 216) = v1;

  Tensor.reshaped(to:)((v2 - 216), v0);
}

uint64_t OUTLINED_FUNCTION_85()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return sub_25BCB54FC();
}

uint64_t OUTLINED_FUNCTION_85_5@<X0>(__int16 a1@<W8>)
{
  *(v2 - 160) = v1;
  *(v2 - 152) = 70;
  *(v2 - 144) = a1;

  return type metadata accessor for SplitOperation();
}

BOOL OUTLINED_FUNCTION_68_9(void *a1)
{

  return sub_25BAA2CDC(a1, v1);
}

__n128 *OUTLINED_FUNCTION_68_11@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = a3;
  result[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_2(uint64_t a1)
{

  return sub_25BAC4018();
}

uint64_t OUTLINED_FUNCTION_89_5(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_89_6()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_8()
{

  return MultiheadAttention.initializeParameters(for:)((v0 + 168));
}

uint64_t OUTLINED_FUNCTION_89_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_25BAB6D38(va, v4 << 32);
}

_BYTE *sub_25BAA0EB4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x25BAA0F80);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

void Tensor.init(concatenating:alongAxis:scalarType:)()
{
  OUTLINED_FUNCTION_9_18();
  v11 = v10;
  v12 = v7[2];
  if (v12)
  {
    v0 = v8;
    v1 = v7;
    v3 = *v9;
    v6 = *(*(*(v7[4] + 16) + 152) + 16);
    v13 = 4;
    do
    {
      if (!v12)
      {
        goto LABEL_9;
      }

      v14 = *(*(*(v7[v13++] + 16) + 152) + 16);
      --v12;
    }

    while (v14 == v6);
    OUTLINED_FUNCTION_122_0();
    v83 = 916;
LABEL_6:
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_122_0();
    v83 = 914;
    OUTLINED_FUNCTION_7_0();
    v18 = 0xD00000000000002ELL;
  }

  for (i = 114; ; i = 42)
  {
    sub_25BCB74CC(v15, v16, v17, v18, v19, v20, i, 2, v83);
    __break(1u);
LABEL_9:
    if (!v6)
    {
      OUTLINED_FUNCTION_122_0();
      v83 = 917;
      goto LABEL_6;
    }

    v22 = sub_25BAAE8D8(0, 0, 255, v3, "init(concatenating:alongAxis:scalarType:)", 41, 2u, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorTransformations.swift", 114, 2u, 921, v1);
    if (!*(v22 + 16))
    {
      __break(1u);
LABEL_43:
      LOBYTE(v102) = v2;
      v90 = sub_25BC8FACC();
      v91 = v72;
      v92 = v5;
      v93 = v3;
      LOBYTE(v94) = v4;
      v95 = v1;
      LOBYTE(v96) = 1;
      v98 = 3;

      OUTLINED_FUNCTION_3_40();
      v79 = 927;
LABEL_44:
      sub_25BADDD28(v73, v74, v75, v76, v77, v78, v79);
    }

    v87 = v1;
    v89 = v22;
    v24 = v22 + 32;
    v23 = *(v22 + 32);
    LODWORD(v2) = *(*(v23 + 16) + 160);
    if (v3 == 13)
    {
      v25 = v23;
      v5 = swift_allocObject();
      v23 = v25;
      v3 = 0;
      *(v5 + 16) = xmmword_25BCCB4C0;
      *(v5 + 32) = 0;
      LOBYTE(v4) = 5;
    }

    else
    {
      LOBYTE(v4) = 0;
      v3 = 0xE700000000000000;
      v5 = 0x73726F736E6574;
    }

    v26 = 0;
    v1 = &unk_286D424D8;
    do
    {
      if (v26 == 6)
      {
        goto LABEL_43;
      }

      v27 = &unk_286D424D8 + v26++;
    }

    while (v27[32] != v2);
    v88 = v23;

    sub_25BAA200C(v5, v3, v4);
    v4 = *(v89 + 16);
    if (v4 == 1)
    {

      v30 = v88;
      goto LABEL_41;
    }

    if (-v6 > v0 || v6 <= v0)
    {
      v91 = 0;
      v92 = 0;
      v90 = v0;
      LOBYTE(v93) = -1;
      v95 = 0;
      v96 = 0;
      v94 = v6;
      v97 = -1;
      v98 = 4;
      OUTLINED_FUNCTION_17_4();
      goto LABEL_44;
    }

    v2 = (v6 & (v0 >> 63)) + v0;
    v32 = MEMORY[0x277D84F90];
    v85 = v11;
    v86 = v2;
    if (v4)
    {
      v102 = MEMORY[0x277D84F90];
      sub_25BAAEF84();
      v33 = v102;
      v34 = v24;
      v3 = v4;
      do
      {
        v5 = *(*(*v34 + 16) + 152);
        v102 = v33;
        v35 = *(v33 + 16);
        v11 = *(v33 + 24);
        sub_25BCB617C();
        if (v35 >= v11 >> 1)
        {
          OUTLINED_FUNCTION_52_8();
          sub_25BAAEF84();
          v33 = v102;
        }

        *(v33 + 16) = v35 + 1;
        *(v33 + 8 * v35 + 32) = v5;
        v34 += 8;
        --v3;
      }

      while (v3);
      v2 = v86;
      v32 = MEMORY[0x277D84F90];
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    sub_25BAB4ED8(v33, v2, v28, v29, &v90);

    v6 = v90;
    if (v90)
    {
      break;
    }

    v90 = 0;
    v91 = 0xE000000000000000;
    sub_25BCB70FC();

    OUTLINED_FUNCTION_86();
    v90 = 0xD00000000000002ELL;
    v91 = v80;
    v102 = v2;
    v81 = sub_25BCB77FC();
    v1 = v82;
    v0 = &v90;
    MEMORY[0x25F876C90](v81);

    OUTLINED_FUNCTION_122_0();
    v83 = 943;
    OUTLINED_FUNCTION_10_5();
  }

  v37 = *(*(*v24 + 16) + 160);
  MEMORY[0x28223BE20](v36);
  swift_getKeyPath();
  if (v4)
  {
    v84 = v37;
    v90 = v32;
    sub_25BAA21EC(0, v4, 0);
    v38 = 0;
    v39 = v90;
    do
    {
      v100[0] = *(v24 + 8 * v38);
      swift_retain_n();
      swift_getAtKeyPath();

      v40 = v102;
      v90 = v39;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_81(v41);
        OUTLINED_FUNCTION_52_8();
        sub_25BAA21EC(v43, v44, v45);
        v39 = v90;
      }

      ++v38;
      *(v39 + 16) = v42 + 1;
      *(v39 + 8 * v42 + 32) = v40;
    }

    while (v4 != v38);

    v90 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    do
    {
      v24 += 8;

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v4;
    }

    while (v4);
    v46 = v90;
    v2 = v86;
    v37 = v84;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
  }

  v90 = v6;
  LOBYTE(v91) = v37;
  v47 = v87[2];

  OUTLINED_FUNCTION_1_2();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v39;
  v48[4] = v2;
  v49 = sub_25BAAF074(sub_25BC02C14, v48);
  v51 = v50;

  v101 = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v103 = xmmword_25BCCB4D0;
  OUTLINED_FUNCTION_28(v52);
  v53 = type metadata accessor for ConcatOperation();
  OUTLINED_FUNCTION_63_3(v53);
  v54 = OUTLINED_FUNCTION_3();
  sub_25BAA2604(v54, v55, v56, v46, v2, 0, v57, v58, v49, v51);

  v59 = OUTLINED_FUNCTION_8_35();
  sub_25BAAF130(v59, v60, v61, v62, 962, v63, 41, 2);

  sub_25BAA51C8(v100, &v99);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(&v90);

  sub_25BAA4AF4(&v90);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v90);

  sub_25BAA4AF4(&v90);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v90) = v64;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_22();
  sub_25BAAF134(v65, v66, v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v30);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v100);
  v11 = v85;
LABEL_41:
  *v11 = v30;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAA17AC()
{
  sub_25BAA200C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25BAA1834()
{

  OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_25BAA1868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, void *a11)
{
  v11 = a11[2];
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = a3;
  sub_25BAB8500(a11, v35);
  if (LOBYTE(v35[0]) == 13)
  {
    v28 = v17;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v32 = a8;
    v35[0] = MEMORY[0x277D84F90];
    sub_25BB006D4(0, v11, 0);
    v19 = v35[0];
    v20 = a11 + 4;
    v21 = MEMORY[0x277D84900];
    v22 = MEMORY[0x277D839B0];
    while (1)
    {
      v23 = &protocol witness table for Int8;
      v24 = v21;
      switch(*(*(*v20 + 16) + 160))
      {
        case 1:
          v24 = MEMORY[0x277D84958];
          v23 = &protocol witness table for Int16;
          break;
        case 2:
          v24 = MEMORY[0x277D849A8];
          v23 = &protocol witness table for Int32;
          break;
        case 3:
          v24 = MEMORY[0x277D83B88];
          v23 = &protocol witness table for Int;
          break;
        case 4:
          v24 = MEMORY[0x277D84B78];
          v23 = &protocol witness table for UInt8;
          break;
        case 5:
          v24 = MEMORY[0x277D84C58];
          v23 = &protocol witness table for UInt16;
          break;
        case 6:
          v24 = MEMORY[0x277D84CC0];
          v23 = &protocol witness table for UInt32;
          break;
        case 7:
          v24 = MEMORY[0x277D84D38];
          v23 = &protocol witness table for UInt64;
          break;
        case 8:
          v24 = MEMORY[0x277D84DC8];
          v23 = &protocol witness table for Float16;
          break;
        case 9:
          v23 = sub_25BB18AFC();
          v24 = &type metadata for BFloat16;
          break;
        case 0xA:
          v24 = MEMORY[0x277D83A90];
          v23 = &protocol witness table for Float;
          break;
        case 0xB:
          v24 = MEMORY[0x277D839F8];
          v23 = &protocol witness table for Double;
          break;
        case 0xC:
          v24 = v22;
          v23 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      v35[0] = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_25BB006D4(v25 > 1, v26 + 1, 1);
        v19 = v35[0];
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      ++v20;
      if (!--v11)
      {
        v35[0] = v19;
        v35[1] = a1;
        v35[2] = a2;
        v36 = v28;
        v37 = 2;
        sub_25BC02C38(a1, a2, v28);
        sub_25BADDD28(v29, v30, v31, a7, v32, a9, a10);
      }
    }
  }

  return sub_25BAAE8D8(a1, a2, v17, v35[0], "coercingTensorScalarTypeToMaximum(locator:function:file:line:)", 62, 2u, a7, a8, a9, a10, a11);
}

void sub_25BAA1B64()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      v9 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v9);
      OUTLINED_FUNCTION_9_1(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BAB254C(v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for Tensor);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

__n128 OUTLINED_FUNCTION_48_5@<Q0>(__n128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result = a6;
  a1[2] = a6;
  a1[3].n128_u64[0] = v6;
  a1[3].n128_u8[8] = v7;
  return result;
}

void OUTLINED_FUNCTION_48_10()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_48_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  *v32 = a9;

  return sub_25BB6B668(va);
}

uint64_t OUTLINED_FUNCTION_48_17(uint64_t a1)
{

  return sub_25BAC4018();
}

BOOL OUTLINED_FUNCTION_48_18()
{
  result = sub_25BC6240C(v1 - 248);
  *(v0 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_25BBF5A38(v0, 0);
}

uint64_t OUTLINED_FUNCTION_46_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1, uint64_t a2, char a3)
{
  sub_25BBFA138(a1, a2, a3);
}

void OUTLINED_FUNCTION_46_12(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = v1;
  *(v2 - 112) = 2;
}

uint64_t OUTLINED_FUNCTION_46_13(uint64_t a1, uint64_t a2)
{

  return sub_25BAA48D4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_46_14(uint64_t a1, int a2)
{
  *(v2 + 12) = a2;
  *v2 = *(v4 + 104);
  return v3;
}

uint64_t OUTLINED_FUNCTION_46_15(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_46_17(NSUInteger a1)
{
  *(v2 - 72) = v1;

  return sub_25BBC9A4C(a1, 0);
}

void OUTLINED_FUNCTION_46_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v7 - 248);

  sub_25BAB1090(v5, v3, a3, v4, v9, v6);
}

uint64_t OUTLINED_FUNCTION_46_21()
{
}

uint64_t sub_25BAA200C(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      break;
    case 3:
    case 4:
    case 5:

      break;
    default:
      return v3;
  }

  return v3;
}

void sub_25BAA2064()
{
  OUTLINED_FUNCTION_75();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_52();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_12();
      v14[2] = v3;
      v14[3] = v15;
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
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAA2138()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_12();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
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

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAA21EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_82_0();
  sub_25BAA2138();
  *v3 = v4;
}

void *sub_25BAA2220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = Tensor.shape.getter(v4);
  *a2 = v4[0];
  return result;
}

uint64_t sub_25BAA2264@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = TensorShape.subscript.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v0 + 360), v1, (v0 + 352), v0 + 488, (v2 - 240));
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_25BCB70FC();
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
}

void OUTLINED_FUNCTION_25_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  Tensor.init(coercing:scalarType:on:)();
}

void OUTLINED_FUNCTION_25_19()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_25_23()
{

  return sub_25BCB590C();
}

uint64_t OUTLINED_FUNCTION_25_26(uint64_t a1)
{

  return sub_25BCB793C();
}

void *OUTLINED_FUNCTION_25_29()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

__n128 OUTLINED_FUNCTION_25_31@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_35()
{

  return sub_25BAA6F5C(v2 - 120, v0, v1);
}

uint64_t sub_25BAA2604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  v15 = *a7;
  v16 = *(a7 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7461636E6F63, 0xE600000000000000);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6 & 1;
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

double sub_25BAA26AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v10 = *(a1 + 16);
  if (v10 <= 1)
  {
    if (v10)
    {
      v17 = *(*(a1 + 32) + 16) + 168;

      sub_25BAA51C8(v17, a9);
    }

    else
    {
      *(a9 + 48) = 0;
      result = 0.0;
      *(a9 + 16) = 0u;
      *(a9 + 32) = 0u;
      *a9 = 0u;
    }
  }

  else
  {
    v11 = a1 + 32;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    do
    {
      sub_25BAA51C8(*(*v11 + 16) + 168, &v29);
      if (*(&v30 + 1))
      {
        v34 = v29;
        v35 = v30;
        v36 = v31;
        v37 = v32;
        if (*(&v39 + 1))
        {
          sub_25BABEF40(&v38, &v29);
          v12 = *(&v30 + 1);
          v13 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
          v14 = *(v13 + 24);

          LOBYTE(v12) = v14(&v34, v12, v13);
          sub_25BABF0A8(&v29);
          if ((v12 & 1) == 0)
          {
            sub_25BAA51C8(&v38, &v25);
            if (!*(&v26 + 1))
            {
              __break(1u);
            }

            v29 = v25;
            v30 = v26;
            v31 = v27;
            v32 = v28;
            sub_25BABEF40(&v34, v33);
            v33[52] = 18;
            sub_25BADDD28(a6, a7, a8, a2, a3, a4, a5);
          }
        }

        sub_25BA9C2C8(&v38);
        v38 = v34;
        v39 = v35;
        v40 = v36;
        v41 = v37;
      }

      else
      {
        sub_25BA9C2C8(&v29);
      }

      v11 += 8;
      --v10;
    }

    while (v10);
    v15 = v39;
    *a9 = v38;
    *(a9 + 16) = v15;
    result = *&v40;
    *(a9 + 32) = v40;
    *(a9 + 48) = v41;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dynamic_cast_existential_1_conditional(v3, v3, a3);
}

uint64_t OUTLINED_FUNCTION_70_5()
{
}

void sub_25BAA29C8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  v46 = *a1;
  v4 = *(a2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v47 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_29_0();
    sub_25BAA21EC(v8, v9, v10);
    v5 = v47;
    v11 = *(v46 + 16);
    v12 = (a2 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < -v11 || v13 >= v11)
      {
        goto LABEL_36;
      }

      v17 = *(v47 + 16);
      v16 = *(v47 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = OUTLINED_FUNCTION_81(v16);
        sub_25BAA21EC(v18, v17 + 1, 1);
      }

      *(v47 + 16) = v17 + 1;
      *(v47 + 8 * v17 + 32) = (v11 & (v13 >> 63)) + v13;
      --v4;
    }

    while (v4);
    v3 = a3;
  }

  v19 = sub_25BCB617C();
  v20 = *(sub_25BAAF594(v19) + 16);

  if (v20 == *(v46 + 16))
  {
    v21 = *(v5 + 16);
    v22 = 32;
    while (v21)
    {
      v23 = *(v5 + v22);
      v22 += 8;
      --v21;
      if (v23 >= v20)
      {
        goto LABEL_16;
      }
    }

    if (!v20)
    {

      v24 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v45 = v3;
    v48 = MEMORY[0x277D84F90];
    v25 = OUTLINED_FUNCTION_29_0();
    sub_25BAA21EC(v25, v26, v27);
    v28 = v46;
    v29 = 0;
    v24 = v48;
    v30 = *(v46 + 16);
    while (v29 < *(v5 + 16))
    {
      v31 = *(v5 + 8 * v29 + 32);
      if (v31 < -v30 || v31 >= v30)
      {
        OUTLINED_FUNCTION_27_37();
        goto LABEL_36;
      }

      v33 = (v30 & (v31 >> 63)) + v31;
      if (v33 < 0)
      {
        goto LABEL_34;
      }

      if (v33 >= *(v28 + 16))
      {
        goto LABEL_35;
      }

      v34 = *(v46 + 32 + 8 * v33);
      v36 = *(v48 + 16);
      v35 = *(v48 + 24);
      if (v36 >= v35 >> 1)
      {
        v37 = OUTLINED_FUNCTION_81(v35);
        sub_25BAA21EC(v37, v36 + 1, 1);
        v28 = v46;
      }

      ++v29;
      *(v48 + 16) = v36 + 1;
      *(v48 + 8 * v36 + 32) = v34;
      if (v20 == v29)
      {

        v3 = v45;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v38, v39, v40, v41, v42, v43, v44);
  }

LABEL_16:

  v24 = 0;
LABEL_17:
  *v3 = v24;
  OUTLINED_FUNCTION_27_34();
}

uint64_t sub_25BAA2C4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v6 = OUTLINED_FUNCTION_48_1(a1);
  v7 = MEMORY[0x25F877220](v6);
  v13 = v7;
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      a4(&v12, *(v4 + v9));
      v9 += 8;
      --v8;
    }

    while (v8);

    return v13;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

BOOL sub_25BAA2CDC(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_25BCB79BC();
  OUTLINED_FUNCTION_10_40();
  while (1)
  {
    OUTLINED_FUNCTION_26_28();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_49_17();
  sub_25BAA2D84(a2, v3, v9);
  OUTLINED_FUNCTION_48_16(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

void sub_25BAA2D84(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BAB2570(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25BAB2360(v6 + 1);
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

    sub_25BC4AD08();
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

void sub_25BAA3168()
{
  sub_25BAA31C0();
  sub_25BAA3234();
  v1 = *(v0 + 32);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
    sub_25BAA3258();
  }
}

uint64_t sub_25BAA31C0()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v2 = v0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v1 = sub_25BAA6F2C();
    *(v2 + 232) = v1;
  }

  return v1;
}

uint64_t sub_25BAA3278()
{
  sub_25BAA32B8();

  return swift_deallocClassInstance();
}

void *sub_25BAA32B8()
{

  return v0;
}

uint64_t sub_25BAA32F8()
{
  sub_25BA9D740();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA3340()
{
  sub_25BAA3374();

  return swift_deallocClassInstance();
}

void *sub_25BAA3374()
{

  return v0;
}

uint64_t sub_25BAA33BC()
{
  sub_25BAA33F0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA33F0()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 128), *(v0 + 136));
}

uint64_t objectdestroy_17Tm()
{

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_25BAA3468()
{
  sub_25BAA349C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA349C()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 120), *(v0 + 128));
}

uint64_t sub_25BAA34C8()
{
  sub_25BA9D6BC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA3500(uint64_t a1)
{
  v1 = sub_25BA9D740();
  sub_25BA9D148(*(v1 + 112), *(v1 + 120));

  return swift_deallocClassInstance();
}

void *sub_25BAA3558()
{
  sub_25BAA32B8();

  sub_25BA9D148(*(v0 + 208), *(v0 + 216));
  return v0;
}

uint64_t sub_25BAA3584()
{
  sub_25BAA3558();

  return swift_deallocClassInstance();
}

uint64_t Tensor.scalar<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *v3;
  if (*(*(*(*v3 + 16) + 152) + 16))
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v17)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    while (v15 != 1);
    if (v16 == 1)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_25BCB70FC();

    v35 = sub_25BCB617C();
    v36 = MEMORY[0x25F876F80](v35, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v36);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ALL, 0x800000025BCDB850, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 109);
    __break(1u);
  }

  else
  {
LABEL_6:
    v37 = v10;
    v18 = *(a3 + 32);
    v19 = OUTLINED_FUNCTION_23_0();
    v20 = v18(v19);
    v40 = v14;
    Tensor.scalarType.getter(v20);
    v22 = (*(v21 + 32))(&v39);
    v23 = *(v14 + 16);
    if (v38 == v39)
    {
      MEMORY[0x28223BE20](v22);
      OUTLINED_FUNCTION_20_6();
      *(v24 - 16) = a1;

      sub_25BAA4214(sub_25BAA46C0, v38, a2);
    }

    else
    {
      OUTLINED_FUNCTION_10();
      swift_retain_n();
      v26 = sub_25BA928B4();
      [v26 lock];

      OUTLINED_FUNCTION_6_19();
      sub_25BA92920(v27, v28, v29, v30);
      [*(v23 + 224) unlock];

      swift_unknownObjectRelease();
      v31 = OUTLINED_FUNCTION_23_0();
      v18(v31);
      (*(v8 + 104))(v13, *MEMORY[0x277D84660], v37);
      Tensor.cast(to:roundingRule:)();
      (*(v8 + 8))(v13, v37);
      OUTLINED_FUNCTION_21_7();
      Tensor.scalar<A>(as:)(v32, v33, v34);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_25BAA51C8(a4, v4 - 160);
}

__n128 OUTLINED_FUNCTION_23_4(__n128 *a1)
{
  result = v1[13];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_25BB29534(1986948963, 0xE400000000000000);
}

void OUTLINED_FUNCTION_23_7()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_25BB0EA20(v0);
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v3 = v0[9];
  *(v1 - 384) = v0[8];
  *(v1 - 392) = v3;
  v4 = v0[11];
  *(v1 - 416) = v0[10];
  *(v1 - 424) = v4;
  v5 = v0[13];
  *(v1 - 400) = v0[12];
  *(v1 - 408) = v5;
  *(v1 - 328) = v0[14];

  return sub_25BAB7EC0();
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return swift_getAtKeyPath();
}

void OUTLINED_FUNCTION_23_14(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 144) = 112;
  *(v1 - 136) = 2;
}

uint64_t OUTLINED_FUNCTION_23_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_23_23()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_23_26(uint64_t a1)
{

  return sub_25BCB745C();
}

uint64_t OUTLINED_FUNCTION_23_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1)
{

  return sub_25BCB68CC();
}

uint64_t OUTLINED_FUNCTION_23_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_23_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_40(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25BCB76AC();
}

void OUTLINED_FUNCTION_27_4()
{

  JUMPOUT(0x25F8779B0);
}

id OUTLINED_FUNCTION_27_6()
{
  v3 = *(v0 + 224);

  return [v3 (v1 + 376)];
}

uint64_t OUTLINED_FUNCTION_27_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v6 - 296) = v5;
  *(v6 - 472) = v2;
  result = v2;
  *(v6 - 480) = v3;
  *(v6 - 488) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_13@<X0>(__int16 a1@<W8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 103;
  *(v2 - 96) = a1;

  return type metadata accessor for Average2DPoolOperation();
}

ValueMetadata *OUTLINED_FUNCTION_27_15(uint64_t a1)
{
  *(v2 - 112) = v1;

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1, uint64_t a2)
{
  *(v2 - 304) = a1;
  *(v2 - 296) = a2;

  return sub_25BCB7C1C();
}

uint64_t OUTLINED_FUNCTION_27_21()
{

  return sub_25BCB77FC();
}

void OUTLINED_FUNCTION_27_23()
{
  *(v3 + 24) = v2;
  *(v3 + 152) = v1;
  *(v3 + 160) = v0;
}

uint64_t OUTLINED_FUNCTION_27_24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D83988];

  return sub_25BB30E7C(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_27_26(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  static Tensor.- infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_27_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
}

void OUTLINED_FUNCTION_27_32(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;
  *(v1 - 120) = 115;
  *(v1 - 112) = 2;
}

double OUTLINED_FUNCTION_27_36()
{
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_27_38()
{

  JUMPOUT(0x25F8779B0);
}

ValueMetadata *Tensor.scalarType.getter(uint64_t a1)
{
  v2 = MEMORY[0x277D84900];
  switch(*(*(*v1 + 16) + 160))
  {
    case 1:
      v2 = MEMORY[0x277D84958];
      break;
    case 2:
      v2 = MEMORY[0x277D849A8];
      break;
    case 3:
      v2 = MEMORY[0x277D83B88];
      break;
    case 4:
      v2 = MEMORY[0x277D84B78];
      break;
    case 5:
      v2 = MEMORY[0x277D84C58];
      break;
    case 6:
      v2 = MEMORY[0x277D84CC0];
      break;
    case 7:
      v2 = MEMORY[0x277D84D38];
      break;
    case 8:
      v2 = MEMORY[0x277D84DC8];
      break;
    case 9:
      v2 = &type metadata for BFloat16;
      sub_25BB18AFC();
      break;
    case 0xA:
      v2 = MEMORY[0x277D83A90];
      break;
    case 0xB:
      v2 = MEMORY[0x277D839F8];
      break;
    case 0xC:
      v2 = MEMORY[0x277D839B0];
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_25BAA4240(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{

  v7 = sub_25BA928B4();
  [v7 lock];

  sub_25BA92920(v4, 0, 0, &v9);
  [*(v4 + 224) unlock];

  if (v5)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    sub_25BAA4364(a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_25BAA4364(void (*a1)(void))
{
  v2 = v1;
  v4 = sub_25BA928B4();
  [v4 lock];

  a1();
  return [*(v2 + 224) unlock];
}

void sub_25BAA44C8()
{
  OUTLINED_FUNCTION_1_32();
  sub_25BAA4554(1);
  IOSurfaceGetBaseAddress(*(v0 + 16));
  sub_25BAA4640();
  v2 = OUTLINED_FUNCTION_2_33();
  v1(v2);
  sub_25BAA46FC(1);
}

uint64_t sub_25BAA4554(char a1)
{
  v3 = *(v1 + 16);
  IOSurfaceIncrementUseCount(v3);
  result = IOSurfaceLock(v3, a1 & 1, 0);
  if (result)
  {
    sub_25BCB6CBC();
    if (qword_28154BD68 != -1)
    {
      OUTLINED_FUNCTION_0_40();
      swift_once();
    }

    sub_25BCB5E8C();
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002DLL, 0x800000025BCDDF00, "NeuralNetworks/IOSurfaceTensorStorage.swift", 43, 2, 142);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAA4640()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = 1;
LABEL_7:
  if (*(v0 + 32) - 1 > 0xA)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_25BCBF6F0[(*(v0 + 32) - 1)];
  }

  result = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_25BAA46FC(char a1)
{
  v2 = *(v1 + 16);
  if (IOSurfaceUnlock(v2, a1 & 1, 0))
  {
    sub_25BCB6CBC();
    if (qword_28154BD68 != -1)
    {
      OUTLINED_FUNCTION_0_40();
      swift_once();
    }

    sub_25BCB5E8C();
    sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002FLL, 0x800000025BCDDEB0, "NeuralNetworks/IOSurfaceTensorStorage.swift", 43, 2, 151);
    __break(1u);
  }

  else
  {

    IOSurfaceDecrementUseCount(v2);
  }
}

uint64_t sub_25BAA47F4(uint64_t result, int a2, int a3)
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
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void Tensor.init<A>(shape:scalars:on:)()
{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

uint64_t sub_25BAA486C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BAA48D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9_3();
  v5 = OUTLINED_FUNCTION_24_1();
  v6(v5);
  return a2;
}

uint64_t sub_25BAA4930(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_24_1();
  v6(v5);
  return a2;
}

const void *sub_25BAA49B8()
{
  if (qword_28154F8A8 != -1)
  {
    swift_once();
  }

  v0 = qword_28154F8B0;
  v1 = pthread_getspecific(qword_28154F8B0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    swift_allocObject();
    v2 = sub_25BC33440();

    pthread_setspecific(v0, v2);
  }

  return v2;
}

uint64_t sub_25BAA4A5C@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    return sub_25BAA4ABC(v4 + 144 * v5 - 112, a1);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return sub_25BAA51C8(v0, v1 + 32);
}

__n128 OUTLINED_FUNCTION_18_6(__n128 *a1)
{
  result = v1[19];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25BCB74CC(a1, 11, 2, a4, a5, v10, v11, v12, a9);
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_25BAA4A5C(va);
}

uint64_t OUTLINED_FUNCTION_18_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = (a2 + 24 * result);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_unknownObjectRelease_n();
}

__n128 *OUTLINED_FUNCTION_18_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = *(v3 - 400);
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = v4;
  return result;
}

void OUTLINED_FUNCTION_18_17()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_18_21()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_18_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return type metadata accessor for Sequential(0, v2 - 120);
}

uint64_t OUTLINED_FUNCTION_18_24(uint64_t a1)
{

  return Tensor.init<A>(_:scalarType:on:)(v2, v3 - 192, v1, (v3 - 88));
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_18_30(unint64_t a1@<X8>)
{

  sub_25BAA21EC(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_18_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  sub_25BABC3B0();
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_18_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_38(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83668];

  return sub_25BC5B360(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_18_39(uint64_t a1, uint64_t a2)
{

  return sub_25BCB67AC();
}

uint64_t OUTLINED_FUNCTION_18_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a20, a2, &a19, &a10, &a21);
}

uint64_t OUTLINED_FUNCTION_18_46()
{
  v3 = *(v0 + 48);
  *(v1 - 224) = *(v0 + 64);
  *(v1 - 208) = v3;
  v4 = *(v0 + 80);
  *(v1 - 240) = *(v0 + 88);
  *(v1 - 232) = v4;

  return type metadata accessor for NativeTensorStorage(0);
}

uint64_t OUTLINED_FUNCTION_18_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

time_t OUTLINED_FUNCTION_18_48(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;

  return time(0);
}

uint64_t OUTLINED_FUNCTION_18_49(uint64_t a1)
{
  *(a1 + 16) = v1;
}

void OUTLINED_FUNCTION_18_51(char a1@<W8>)
{
  *(v4 - 80) = a1;
  *(v4 - 72) = v1;
  *(v4 - 64) = v2;
  *(v4 - 56) = v3;
}

uint64_t sub_25BAA51C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_4_8(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_10@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0x2000;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_29_2()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_4_15@<X0>(__int16 a1@<W8>)
{
  *(v3 - 104) = v1;
  *(v3 - 96) = v2;
  *(v3 - 88) = a1;
  return 0;
}

void *OUTLINED_FUNCTION_4_16@<X0>(unint64_t a1@<X8>)
{

  return sub_25BB00AF4((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_4_20(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FB008](v5, v4 + 352, v4 + 528, v4 + 704, a1, a2, a3, a4);
}

__n128 OUTLINED_FUNCTION_4_25()
{
  v1 = *(v0 + 48);
  *(v0 + 96) = *(v0 + 32);
  *(v0 + 112) = v1;
  result = *(v0 + 64);
  *(v0 + 128) = result;
  *(v0 + 144) = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28(uint64_t a1)
{
  *(v2 - 68) = 1;

  return sub_25BBF1C1C(a1, v2 - 144, 0x100000000, v1);
}

void OUTLINED_FUNCTION_4_29()
{
  v1 = *(v0 - 256);
  *(v0 - 264) = *(v0 - 264);
  *(v0 - 256) = v1;
}

void OUTLINED_FUNCTION_4_38()
{
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = -1;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 184) = 0;
  *(v0 - 160) = -1;
  *(v0 - 108) = 4;
}

uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;
  return 0x656C62756F44;
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return swift_deallocPartialClassInstance();
}

void OUTLINED_FUNCTION_4_47()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

uint64_t OUTLINED_FUNCTION_4_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_25BAB6D38(va, 0x100000000);
}

void OUTLINED_FUNCTION_4_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  sub_25BA97890(a1, 66, 2, a4, 121, 2, 124, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

BOOL OUTLINED_FUNCTION_4_53()
{

  return sub_25BAD9FE0(v0, v2 - 128, v1);
}

uint64_t OUTLINED_FUNCTION_4_54()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;

  return sub_25BBAC034(v0);
}

void OUTLINED_FUNCTION_4_55()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = -1;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 192) = 0;
  *(v0 - 168) = -1;
  *(v0 - 116) = 4;
}

uint64_t OUTLINED_FUNCTION_4_56(unint64_t a1, char a2)
{

  return sub_25BC36048(v2, a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_4_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a19, a2, &a18, &a9, &a20);
}

void OUTLINED_FUNCTION_4_59()
{

  sub_25BAB22A0();
}

uint64_t OUTLINED_FUNCTION_4_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23)
{
  a14 = 0;
  a12 = 0;
  a23 = 0;

  return sub_25BAA6E30(&a9, v23 + 40);
}

uint64_t OUTLINED_FUNCTION_4_63@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_25BC757DC(a4, v5, v6, va, a1);
}

uint64_t OUTLINED_FUNCTION_4_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, int a24)
{
  a24 = 0;
  a22 = 0u;
  a23 = 0u;
  a21 = 0u;
  a19 = v24;

  return sub_25BAA51C8(&a21, &a12);
}

__n128 OUTLINED_FUNCTION_4_70@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 336);
  result = *(v1 - 320);
  *(a1 - 64) = result;
  *(a1 - 48) = v2;
  v4 = *(v1 - 352);
  *(a1 - 32) = *(v1 - 344);
  *(a1 - 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 40) = v4;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);

  return _s9IOMappingVMa(255, v8, v9, a4);
}

__n128 OUTLINED_FUNCTION_4_76(__n128 *a1)
{
  result = v1[11];
  a1[1] = result;
  return result;
}

void sub_25BAA59B8()
{
  OUTLINED_FUNCTION_16_28();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_7_29();
  if (!v8 & v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_25BCC7770[v6];
  }

  if (v9 > v4)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v14, v15, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  if (*(*v5 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v9);
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  v2();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_25BA9FCEC(v10, v11, v12, v13, v4);
  }

  OUTLINED_FUNCTION_15_24();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  result = 255;
  *(v2 - 200) = *(a2 + 16);
  *(v2 - 192) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_93_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a5 = a1;

  return Parameter.wrappedValue.setter(&a5);
}

uint64_t OUTLINED_FUNCTION_93_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_25BCB625C();
}

uint64_t OUTLINED_FUNCTION_93_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_93_7()
{
}

uint64_t sub_25BAA5BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  v29 = *(a6 + 16);
  v29(v33, a5, a6);
  v11 = *(a6 + 8);
  v11(v30, a5, a6);
  v39 = 0;
  v33[14] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/InputOps.swift";
  v33[15] = 110;
  v34 = 2;
  v35 = xmmword_25BCC8F60;
  v36 = "init(id:shape:scalarType:creationSite:)";
  v37 = 39;
  v38 = 2;
  type metadata accessor for InputOperation();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_3();
  v18 = sub_25BAA5FD0(v12, v13, v14, v15, v16, v17);
  v19 = v18;
  if ((a3 & 0x100000000) != 0)
  {
    LODWORD(a3) = *(v18 + 16);
  }

  *(a4 + 24) = a3;
  v29(v33, a5, a6);
  *(a4 + 152) = v33[0];
  v11(v33, a5, a6);
  *(a4 + 160) = v33[0];
  OUTLINED_FUNCTION_0_84();
  v22 = sub_25BAA6C78(v20, 255, v21, &unk_25BCC42EC);
  OUTLINED_FUNCTION_5_57();
  swift_weakInit();
  v30[0] = v19;
  v30[1] = v22;
  swift_retain_n();
  v30[6] = sub_25BAA6CC0(0);
  v30[7] = v23;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    v25 = *(result + 32);
    sub_25BCB617C();

    v30[8] = v25;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      v26 = *(result + 40);

      v31 = v26;
      v30[2] = 0;
      OUTLINED_FUNCTION_5_57();
      swift_weakAssign();
      v30[5] = 0;
      v30[3] = 0;
      v32 = 0;
      sub_25BA9BD18(a1, a6, v33);

      swift_unknownObjectRelease();
      sub_25BA9778C(v30);
      sub_25BAA6E30(v33, a4 + 40);
      v27 = *(a2 + 16);
      *(a4 + 168) = *a2;
      *(a4 + 184) = v27;
      *(a4 + 200) = *(a2 + 32);
      *(a4 + 216) = *(a2 + 48);
      return a4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_149_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = 0xD00000000000002ALL;
  *(v1 - 72) = (a1 - 32) | 0x8000000000000000;

  return sub_25BCB617C();
}

uint64_t sub_25BAA5EA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v10);

  v5 = v12;
  v4 = v13;
  sub_25BCB617C();
  sub_25BAA4AF4(&v10);
  type metadata accessor for TensorOperationIdentityGenerator();
  v6 = sub_25BAA6090();
  if (v4)
  {
    v10 = v5;
    v11 = v4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](a1, a2);

    OUTLINED_FUNCTION_11_4();
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);
  }

  else
  {
    v10 = a1;
    v11 = a2;
    OUTLINED_FUNCTION_11_4();
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  return v6;
}

uint64_t sub_25BAA5FD0(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, _OWORD *a6)
{
  v8 = *a4;
  v9 = *a5;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7475706E69, 0xE500000000000000);
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = a6[1];
  *(v6 + 56) = *a6;
  *(v6 + 72) = v10;
  *(v6 + 88) = a6[2];
  *(v6 + 98) = *(a6 + 42);
  return v6;
}

uint64_t sub_25BAA60B4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_25BAA610C();

  return v3;
}

uint64_t sub_25BAA610C()
{

  sub_25BAA3234();
  v1 = *(v0 + 24);
  *(v0 + 24) = v1 + 1;
  sub_25BAA3258();

  return v1;
}

void OUTLINED_FUNCTION_11_8()
{

  sub_25BAFE884();
}

__n128 OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}