void sub_25BACB3B4()
{
  v1 = *(v0 + 16);
  v35 = *(v1 + 16);
  if (v35)
  {
    v2 = v0;

    v3 = 0;
    v34 = v1;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 8 * v3 + 32);
      swift_retain_n();
      v5 = sub_25BAB3058();
      if (v5 && (Class = object_getClass(v5), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        v9 = sub_25BAC44E4();
        MEMORY[0x25F876C90](v9);

        MEMORY[0x25F876C90](95, 0xE100000000000000);
        v46[0] = sub_25BAC4018();
        sub_25BCB73CC();

        v8 = v39;
        v37 = v38;
      }

      else
      {
        v37 = sub_25BAC44E4();
        v8 = v7;
      }

      swift_beginAccess();
      if (*(*(v2 + 32) + 16) && (sub_25BA9266C(v37, v8), (v10 & 1) != 0))
      {
        swift_endAccess();
      }

      else
      {
        v36 = v8;
        swift_endAccess();
        v11 = *(v4 + 152);
        v12 = *(v4 + 160);
        v47 = 0;
        memset(v46, 0, sizeof(v46));
        sub_25BAA51C8(v46, &v40);
        if (*(&v41 + 1))
        {
          v44[0] = v40;
          v44[1] = v41;
          v44[2] = v42;
          v45 = v43;
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BAA49B8();
          sub_25BAA4A5C(&v38);

          sub_25BAA51C8(&v38, v44);
          sub_25BAA4AF4(&v38);
          if (*(&v41 + 1))
          {
            sub_25BA9C2C8(&v40);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v38 = v11;
        LOBYTE(v40) = v12;
        sub_25BC72C64(&v38, &v40, v44, qword_281557400, v13);
        v15 = v14;
        v16 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(v44, &v38);
        ObjectType = swift_getObjectType();
        v18 = swift_unknownObjectRetain();
        LOBYTE(v40) = 1;
        v19 = sub_25BC5FAD0(v18, &v38, 0x100000000uLL, v16, ObjectType, v15);
        type metadata accessor for TensorHandle();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;

        sub_25BAA6EB0();
        swift_unknownObjectRelease();

        sub_25BA9C2C8(v44);
        sub_25BA9C2C8(v46);
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v46[0] = *(v2 + 32);
        v21 = v46[0];
        *(v2 + 32) = 0x8000000000000000;
        v22 = sub_25BA9266C(v37, v36);
        if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
        {
          goto LABEL_31;
        }

        v24 = v22;
        v25 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6700, &qword_25BCCBEF0);
        if (sub_25BCB745C())
        {
          v26 = v36;
          v27 = sub_25BA9266C(v37, v36);
          if ((v25 & 1) != (v28 & 1))
          {
            goto LABEL_33;
          }

          v24 = v27;
        }

        else
        {
          v26 = v36;
        }

        v29 = v46[0];
        if (v25)
        {
          *(*(v46[0] + 56) + 8 * v24) = v20;
        }

        else
        {
          *(v46[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
          v30 = (v29[6] + 16 * v24);
          *v30 = v37;
          v30[1] = v26;
          *(v29[7] + 8 * v24) = v20;
          v31 = v29[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_32;
          }

          v29[2] = v33;
        }

        *(v2 + 32) = v29;
        swift_endAccess();

        v1 = v34;
      }

      if (v35 == ++v3)
      {

        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_25BCB795C();
    __break(1u);
  }
}

void sub_25BACB85C()
{
  OUTLINED_FUNCTION_13_40();
  if (v4 >= v2 && v2 + 8 * v3 > v4)
  {
    if (v1 != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
      v7 = OUTLINED_FUNCTION_9_26();

      MEMORY[0x2821FE820](v7);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
    v6 = OUTLINED_FUNCTION_9_26();

    MEMORY[0x2821FE828](v6);
  }
}

uint64_t sub_25BACB90C()
{
  sub_25BACB93C();
  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

uint64_t sub_25BACB93C()
{

  return v0;
}

uint64_t sub_25BACB974()
{
  sub_25BACB9A4();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BACB9A4()
{

  return v0;
}

uint64_t sub_25BACB9CC(uint64_t a1)
{
  v1 = sub_25BCB5EFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BCB5EBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v9 = sub_25BCB5EEC();
  __swift_project_value_buffer(v9, qword_28154BE90);
  v10 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v11 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v10, v11, v14, "Backpropagation (Gradient Pass)", v12, v13, 2u);
    MEMORY[0x25F8797F0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25BACBC64(uint64_t a1)
{
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v5 = sub_25BCB604C();
  v2 = *(a1 + 16);
  sub_25BCB68CC();
  sub_25BCB679C();
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      sub_25BCB690C();

      sub_25BCB687C();
    }
  }

  return v5;
}

uint64_t objectdestroy_44Tm()
{

  OUTLINED_FUNCTION_50_17();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_25BACBDA4()
{
  sub_25BACBDE0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BACBDE0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = sub_25BA9BEA0(v1);
  sub_25BCB617C();
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25F8779B0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      *&v14 = 0xD000000000000026;
      *(&v14 + 1) = 0x800000025BCDC350;
      v17 = 9;
      sub_25BA97890("detached()", 10, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorRepresentation.swift", 109, 2, 442, v3, v8, *(&v8 + 1), v9, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v12, v13[0], v13[1]);
    }

    v6 = sub_25BA928B4();
    [v6 lock];

    swift_beginAccess();
    sub_25BA9323C(v5 + 40, v19);
    if (v21 && v21 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA9323C(v5 + 40, v13);
      sub_25BA9323C(v13, &v8);
      if (BYTE1(v12) == 1)
      {
        v14 = v8;
        v15 = v9;
        v16 = v10;
        v18 = 2;
        sub_25BA977E0(v11);
      }

      else
      {
        if (BYTE1(v12) != 2)
        {
          goto LABEL_20;
        }

        sub_25BA9778C(&v8);
        sub_25BA9323C(v13, &v14);
      }

      sub_25BA9778C(v13);
      swift_beginAccess();
      sub_25BA97834(&v14, v5 + 40);
      swift_endAccess();
      sub_25BA977E0(&v20);
    }

    else
    {
      sub_25BA9778C(v19);
    }

    [*(v5 + 224) unlock];
  }
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_88_1(_WORD *a1)
{
  *a1 = 0;

  return sub_25BCB5E9C();
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return Tensor.init<A>(_:scalarType:on:)(v1, v2 - 144, v0, (v2 - 192));
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1)
{

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  *(v1 - 160) = v0;

  return sub_25BAFC990();
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return sub_25BABDA0C(v0 - 152);
}

uint64_t sub_25BACC1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a2;
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
    v26 = a1;
    LOBYTE(v28) = 10;
    sub_25BAA4B48(&v26, &v28, v32, sub_25BACC614, v4);
    v15 = v14;

    sub_25BAA51C8(v32, &v26);
    type metadata accessor for TensorRepresentation();
    v16 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v18 = swift_unknownObjectRetain();
    LOBYTE(v28) = 1;
    v19 = sub_25BAA5BB4(v18, &v26, 0x100000000, v16, ObjectType, v15);
    type metadata accessor for TensorHandle();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(a3);
    sub_25BA9C2C8(v32);
    sub_25BA9C2C8(v34);

    *a4 = v20;
    return result;
  }

  v10 = 1;
LABEL_7:
  if (v10 == *(a2 + 16))
  {
    v12 = sub_25BAA51C8(a3, v34);
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_71_0();
    *(v13 - 16) = &v35;
    sub_25BAA51C8(v34, &v28);
    if (*(&v29 + 1))
    {
      v32[0] = v28;
      v32[1] = v29;
      v32[2] = v30;
      v33 = v31;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v26);

      sub_25BAA51C8(&v26, v32);
      sub_25BAA4AF4(&v26);
      if (*(&v29 + 1))
      {
        sub_25BA9C2C8(&v28);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
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

    sub_25BA9C2C8(v32);
    sub_25BA9C2C8(v34);

    __break(1u);
  }

  v23 = 1;
LABEL_21:
  v34[0] = v23;
  OUTLINED_FUNCTION_102_0();
  v24 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v24);

  MEMORY[0x25F876C90](0x7372616C61637320, 0xED00002074756220);
  v34[0] = *(a2 + 16);
  OUTLINED_FUNCTION_102_0();
  v25 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v25);

  MEMORY[0x25F876C90](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_25BCB74CC("Fatal error", 11, 2, v26, v27, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorInitializers.swift", 107, 2, 178);
  __break(1u);
  return result;
}

void *sub_25BACC5B8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = (a2 - result) / 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    if (v3 < v4)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, (a3 + 32), 4 * v4);
    }
  }

  return result;
}

uint64_t sub_25BACC6A0(uint64_t a1, void *a2)
{
  result = (*(v2 + 56))(a1 + *(v2 + 48));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_25BACC6F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v78 = a4;
  v79 = a5;
  v90 = a3;
  v80 = a2;
  v13 = sub_25BCB783C();
  MEMORY[0x28223BE20](v13);
  v14 = *(a7 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v18);
  v24 = &v70 - v20;
  if ((*(a1 + 8) & 1) == 0)
  {
    v70 = v22;
    v71 = v21;
    v72 = v19;
    v73 = a6;
    v74 = a1;
    v75 = v8;
    v77 = *(v14 + 16);
    v77(&v70 - v20, v90, a7, v23);
    v25 = a8;
    v26 = *(a8 + 48);
    v27 = v26(a7, a8);
    v76 = *(v14 + 8);
    v76(v24, a7);
    if (v27 == 1.0)
    {
      v28 = v80;
    }

    else
    {
      (v77)(v24, v90, a7);
      v29 = v26(a7, a8);
      v76(v24, a7);
      OUTLINED_FUNCTION_0_94();
      v30 = v80;
      v31 = *(*(v80 + 16) + 160);
      v32 = OUTLINED_FUNCTION_6_6();
      sub_25BAA51C8(v32, v33);
      v87 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = v29;
      LOBYTE(v82) = v31;
      v35 = OUTLINED_FUNCTION_1_78();
      sub_25BAA51C8(v35, v36);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v87, inited, &v82, v86, &v83);
      sub_25BA9C2C8(v88);
      sub_25BA9C2C8(v89);
      v88[0] = v30;
      v86[0] = v83;

      OUTLINED_FUNCTION_1_78();
      static Tensor.* infix(_:_:)();

      v28 = v89[0];
    }

    (v77)(v17, v90, a7);
    v37 = *(v25 + 40);

    v37(&v83, a7, v25);
    v76(v17, a7);
    v38 = v28;
    v39 = v74;
    v40 = v25;
    if (v85 == 255)
    {

      v89[0] = v38;
    }

    else
    {
      v41 = v38;
      v42 = v83;
      v43 = v84;
      v44 = *v78;
      if (v85)
      {
        v78 = *v78;
        if (v85 == 1)
        {

          OUTLINED_FUNCTION_0_94();
          v45 = *(*(v41 + 16) + 160);
          v46 = OUTLINED_FUNCTION_6_6();
          sub_25BAA51C8(v46, v47);
          v82 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v48 = swift_initStackObject();
          *(v48 + 16) = xmmword_25BCBAE50;
          *(v48 + 32) = v42;
          v81 = v45;
          v49 = OUTLINED_FUNCTION_1_78();
          sub_25BAA51C8(v49, v50);
          OUTLINED_FUNCTION_2_79();
          sub_25BA9C2C8(v88);
          sub_25BA9C2C8(v89);
          v51 = v87;
          v88[0] = v41;
          Tensor.squared()();
          v86[0] = v89[0];
          v87 = &unk_286D423B0;
          Tensor.reshaped(to:)(&v87, v88);

          v86[0] = v88[0];
          Tensor.sum(squeezingAxes:)(&v87, &unk_286D423D8);

          sqrt(_:)(v89, &v87);

          v52 = v89[0];
          v87 = v51;
          v88[0] = v41;
          v89[0] = v51;
          v86[0] = v52;
          max(_:_:)();
          static Tensor./ infix(_:_:)();

          OUTLINED_FUNCTION_1_78();
          static Tensor.* infix(_:_:)();
        }

        else
        {
          OUTLINED_FUNCTION_0_94();
          v53 = *(*(v41 + 16) + 160);
          v54 = OUTLINED_FUNCTION_6_6();
          sub_25BAA51C8(v54, v55);
          v82 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v56 = swift_initStackObject();
          *(v56 + 16) = xmmword_25BCBAE50;
          *(v56 + 32) = v43;
          v81 = v53;
          v57 = OUTLINED_FUNCTION_1_78();
          sub_25BAA51C8(v57, v58);

          OUTLINED_FUNCTION_2_79();
          sub_25BA9C2C8(v88);
          sub_25BA9C2C8(v89);
          v80 = v41;
          v89[0] = v41;
          v88[0] = v87;
          OUTLINED_FUNCTION_6_6();
          static Tensor.* infix(_:_:)();
          v89[0] = v44;
          LOBYTE(v88[0]) = *(*(v41 + 16) + 160);
          v60 = v71;
          v59 = v72;
          v61 = a7;
          v62 = v70;
          (*(v71 + 104))(v70, *MEMORY[0x277D84660], v72);
          Tensor.cast(to:roundingRule:)();
          v63 = v62;
          a7 = v61;
          (*(v60 + 8))(v63, v59);
          static Tensor./ infix(_:_:)();
        }
      }

      else
      {

        v88[0] = v41;
        Tensor.clamped(to:)(v89, *&v42, *(&v42 + 1));
      }
    }

    v64 = *(*v39 + 32);
    if ((~v64 & 0xF000000000000007) != 0)
    {
      if (v64 < 0)
      {
        v88[0] = v64 & 0x7FFFFFFFFFFFFFFFLL;
        v86[0] = v89[0];
        v65 = *(v40 + 64);
        sub_25BAB3020(v64);

        v65(v89, v79, v88, v86, a7, v40);

        v66 = v89[0];

        v67 = v73;
        sub_25BAB3120();
        v68 = *(*v67 + 16);
        sub_25BAB6E4C(v68);
        v69 = *v67;
        *(v69 + 16) = v68 + 1;
        *(v69 + 8 * v68 + 32) = v66;
        v89[0] = v66;

        Parameter.wrappedValue.setter(v89);

        sub_25BAB310C(v64);

        return;
      }

      sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
    }

    else
    {
      sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ELL, 0x800000025BCDA100, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 329);
    }

    __break(1u);
  }
}

void sub_25BACCF44(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  *a1 = *(v1 + 16);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_25BACCF60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v10 = *a2;
  v11 = *a3;
  if (qword_28154E1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v63 = a5;
  if (byte_27FBB3838 == 1)
  {
    if (*(v5 + 36) == 255)
    {
    }

    else
    {
      v12 = *(v5 + 32) | (*(v5 + 36) << 32);
      LODWORD(v74) = *(v5 + 32);
      BYTE4(v74) = BYTE4(v12) & 1;
      v75[0] = v11;
      v71[0] = v10;
      sub_25BB08FF0(v75, v71);
    }

    v13 = *v5;
    v14 = *(*(v10 + 16) + 160);
    LODWORD(v67) = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v74 = sub_25BACD7D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v15 = swift_allocObject();
    sub_25BACD7C4(v15, 1);
    *v16 = v13;
    nullsub_1();
    v18 = v17;
    LOBYTE(v73) = v14;
    sub_25BAA51C8(&v64, v75);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v74, v18, &v73, v75, v71);
    sub_25BA9C2C8(&v64);
    v62 = v71[0];
    v19 = Adam.step.getter();
    v20 = *(*(v10 + 16) + 160);
    LODWORD(v67) = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v74 = sub_25BACD7D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v21 = swift_allocObject();
    sub_25BACD7C4(v21, 1);
    *v22 = v19;
    nullsub_1();
    v24 = v23;
    LOBYTE(v73) = v20;
    sub_25BAA51C8(&v64, v75);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v74, v24, &v73, v75, v71);
    sub_25BA9C2C8(&v64);
    v61 = v71[0];
    if (!*(v7 + 48))
    {
      *&v64 = *(v7 + 56);
      v26 = *(a4 + 16);
      v27 = *(a4 + 24);
      v28 = type metadata accessor for OptimizerStateDictionary(0, v26, v27, v25);
      OptimizerStateDictionary.subscript.getter(sub_25BB28290, v28, v75);
      v59 = v75[0];
      goto LABEL_17;
    }

    v60 = v10;
    v26 = *(a4 + 16);
    v27 = *(a4 + 24);
    v28 = type metadata accessor for OptimizerStateDictionary(0, v26, v27, v25);
    OptimizerStateDictionary.subscript.getter(a1, v28);
    if (v64)
    {
      v59 = v64;
LABEL_17:
      *&v64 = *(v7 + 64);
      type metadata accessor for OptimizerStateDictionary(0, v26, v27, v29);
      v52 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v28, v75);
      v60 = v7;
      if (*(v7 + 72))
      {
        *&v64 = *(v7 + 72);
        v52 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v28, v75);
      }

      MEMORY[0x28223BE20](v52);
      sub_25BACDABC(sub_25BB28274);
    }

    v68 = 0u;
    memset(v69, 0, sizeof(v69));
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v70 = 22;
    v55 = "updateUsingPrimitiveOps(_:parameter:gradient:)";
    v56 = 46;
    v57 = 288;
LABEL_26:
    sub_25BADDD28(v55, v56, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Optimizers/MomentumBased.swift", 106, 2, v57);
  }

  if (*(v5 + 36) == 255)
  {
  }

  else
  {
    v30 = *(v5 + 32) | (*(v5 + 36) << 32);
    LODWORD(v74) = *(v5 + 32);
    BYTE4(v74) = BYTE4(v30) & 1;
    v75[0] = v11;
    v71[0] = v10;
    sub_25BB08FF0(v75, v71);
    v11 = v64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  sub_25BACD7C4(inited, 2);
  *v32 = v10;
  v32[1] = v11;
  nullsub_1();
  v34 = v33;

  v62 = v11;

  sub_25BAB7DE8(v34, v75);

  v35 = *v7;
  v36 = *(*(v10 + 16) + 160);
  LODWORD(v67) = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v73 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v37 = swift_initStackObject();
  sub_25BACD7C4(v37, 1);
  *v38 = v35;
  nullsub_1();
  v40 = v39;
  v72[0] = v36;
  sub_25BAA51C8(&v64, v71);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v73, v40, v72, v71, &v74);
  sub_25BA9C2C8(&v64);
  v41 = v74;
  v42 = Adam.step.getter();
  LODWORD(v67) = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v73 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v43 = swift_allocObject();
  sub_25BACD7C4(v43, 1);
  *v44 = v42;
  nullsub_1();
  v46 = v45;
  v72[0] = 2;
  sub_25BAA51C8(&v64, v71);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v73, v46, v72, v71, &v74);
  sub_25BA9C2C8(&v64);
  v60 = v74;
  if (*(v7 + 48))
  {
    v48 = *(a4 + 16);
    v49 = *(a4 + 24);
    v50 = type metadata accessor for OptimizerStateDictionary(0, v48, v49, v47);
    OptimizerStateDictionary.subscript.getter(a1, v50);
    if (!v64)
    {
      v68 = 0u;
      memset(v69, 0, sizeof(v69));
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v70 = 22;
      v55 = "updateUsingCompositeOp(_:parameter:gradient:)";
      v56 = 45;
      v57 = 241;
      goto LABEL_26;
    }

    v59 = v64;
  }

  else
  {
    *&v64 = *(v7 + 56);
    v48 = *(a4 + 16);
    v49 = *(a4 + 24);
    v50 = type metadata accessor for OptimizerStateDictionary(0, v48, v49, v47);
    OptimizerStateDictionary.subscript.getter(sub_25BB28290, v50, v71);
    v59 = v71[0];
  }

  v61 = v41;
  *&v64 = *(v7 + 64);
  type metadata accessor for OptimizerStateDictionary(0, v48, v49, v51);
  v53 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v50, v71);
  if (*(v7 + 72))
  {
    *&v64 = *(v7 + 72);
    v53 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v50, v71);
  }

  v58[1] = v58;
  MEMORY[0x28223BE20](v53);
  sub_25BACDABC(sub_25BACE350);

  return sub_25BA9C2C8(v75);
}

uint64_t sub_25BACD7C8(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_25BACD7D8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_25BCB67DC();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t Adam.step.getter()
{
  v1 = *(v0 + 48);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t OptimizerStateDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{

  sub_25BCB6FEC();
  type metadata accessor for OptimizerStateDictionary.ParameterKey(0, *(a2 + 16), *(a2 + 24), v3);
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  sub_25BCB61BC();
}

uint64_t sub_25BACD904(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  sub_25BACD94C(v4, *v2, v2[1]);
  return sub_25BCB7A3C();
}

uint64_t sub_25BACD990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a1 == a3)
  {
    return 1;
  }

  sub_25BCB6FFC();
  return MEMORY[0x25F877800](a1, a3) & 1;
}

uint64_t OptimizerStateDictionary.subscript.getter@<X0>(uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{

  sub_25BCB6FEC();
  type metadata accessor for OptimizerStateDictionary.ParameterKey(0, *(a3 + 16), *(a3 + 24), v7);
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  sub_25BCB61BC();

  if (!v9)
  {
    return a2(result);
  }

  *a4 = v9;
  return result;
}

uint64_t sub_25BACDABC(void (*a1)(uint64_t))
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v5);

  type metadata accessor for ResolutionDependencies();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;

  v5[9] = v2;
  sub_25BAA49B8();
  sub_25BAB7060(v5);

  a1(v2);

  sub_25BAA49B8();
  sub_25BAB814C();

  return sub_25BAA4AF4(v5);
}

uint64_t sub_25BACDBCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v14 = *a11;
  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  if (a5)
  {
    v19 = *(a5 + 16);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a6 + 16);
  v21 = *(a7 + 16);
  v22 = *(a9 + 4);
  v23 = *(a9 + 8);
  v24 = *(a9 + 12);
  v56 = *(v14 + *MEMORY[0x277D84308]);
  v25 = *(a9 + 72) != 0;
  v64[55] = 0;
  v65 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
  v66 = 114;
  v67 = 2;
  v68 = xmmword_25BCBD7D0;
  v69 = "init(id:parameter:gradient:momentum:velocity:maximumVelocity:learningRate:step:beta1:beta2:epsilon:usesAMSGrad:creationSite:)";
  v70 = 125;
  v71 = 2;
  type metadata accessor for AdamOperation();
  swift_allocObject();

  v26 = sub_25BACE38C(0, 0, 0, v22, v23, v24, v15, v16, v17, v18, v19, v20, v21, v25);
  sub_25BAA51C8(a10, v64);
  sub_25BAA51C8(v64, v63);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v27 = v62;

  sub_25BAA4AF4(v60);
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v28 = v61;

  sub_25BAA4AF4(v60);
  type metadata accessor for TensorRepresentation();
  v29 = swift_allocObject();
  LOBYTE(v60[0]) = 1;
  v30 = sub_25BACE3F4(v26, 0, v63, 0x100000000, v27, v28, v29);
  type metadata accessor for TensorHandle();
  v58 = swift_allocObject();
  *(v58 + 16) = v30;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v64);
  sub_25BAA51C8(a10, v64);
  sub_25BAA51C8(v64, v63);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v31 = v62;

  sub_25BAA4AF4(v60);
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v32 = v61;

  sub_25BAA4AF4(v60);
  v33 = swift_allocObject();
  LOBYTE(v60[0]) = 1;
  v34 = sub_25BACE3F4(v26, 1, v63, 0x100000000, v31, v32, v33);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v64);
  v60[0] = v35;
  v37 = type metadata accessor for OptimizerStateDictionary(0, v56, a12, v36);

  v57 = v35;

  OptimizerStateDictionary.subscript.setter(v60, a11, v37);
  sub_25BAA51C8(a10, v64);
  sub_25BAA51C8(v64, v63);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v38 = v62;

  sub_25BAA4AF4(v60);
  sub_25BAA49B8();
  sub_25BAA4A5C(v60);

  v39 = v61;

  sub_25BAA4AF4(v60);
  v40 = swift_allocObject();
  LOBYTE(v60[0]) = 1;
  v41 = sub_25BACE3F4(v26, 2, v63, 0x100000000, v38, v39, v40);
  v42 = swift_allocObject();
  *(v42 + 16) = v41;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v64);
  v60[0] = v42;

  OptimizerStateDictionary.subscript.setter(v60, a11, v37);
  if (*(a9 + 72))
  {
    sub_25BAA51C8(a10, v64);
    sub_25BAA51C8(v64, v63);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v60);

    v45 = v62;

    sub_25BAA4AF4(v60);
    sub_25BAA49B8();
    sub_25BAA4A5C(v60);

    v46 = v61;

    sub_25BAA4AF4(v60);
    v47 = swift_allocObject();
    LOBYTE(v60[0]) = 1;
    v48 = sub_25BACE3F4(v26, 3, v63, 0x100000000, v45, v46, v47);
    v49 = swift_allocObject();
    *(v49 + 16) = v48;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v64);
    if (*(a9 + 72))
    {
      v60[0] = v49;

      OptimizerStateDictionary.subscript.setter(v60, a11, v37);
    }
  }

  else
  {
    v49 = 0;
  }

  v60[0] = v58;
  sub_25BAC481C(v60, v43, v44);
  v60[0] = v49;
  sub_25BACE994(v60, v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25BCBAE70;
  *(v52 + 32) = v42;
  *(v52 + 40) = v57;

  sub_25BACEA3C(v52, v53, v54);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
  *a8 = v58;
  return result;
}

uint64_t sub_25BACE38C(int a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 + 136) = a9;
  *(v14 + 144) = a10;
  *(v14 + 152) = a11;
  *(v14 + 160) = a12;
  *(v14 + 168) = a13;
  *(v14 + 116) = a4;
  *(v14 + 120) = a5;
  *(v14 + 124) = a6;
  *(v14 + 128) = a14;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(1835099233, 0xE400000000000000);
  }

  return OUTLINED_FUNCTION_0_4(a1, a2, a3);
}

uint64_t sub_25BACE690()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE90;

  sub_25BAC9400(v2, v1 + 32);

  sub_25BAC9400(v3, v1 + 48);

  sub_25BAC9400(v4, v1 + 64);
  v5 = *(v0 + 152);
  if (v5)
  {
    v6 = *(v5 + 160);
    v7 = sub_25BCB617C();
    sub_25BC03008(v7, v6);
  }

  return v1;
}

uint64_t sub_25BACE748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  v2 = v1;
  v7 = *(v0 + 136);
  *(v1 + 32) = *(v0 + 40);
  *(v1 + 48) = v7;
  *(v1 + 16) = xmmword_25BCBAE80;
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  *(v1 + 64) = *(v0 + 160);
  *(v1 + 72) = v3;
  if (v4)
  {
    v8 = v1;

    sub_25BACAF48(v5);
    return v8;
  }

  else
  {
  }

  return v2;
}

uint64_t OptimizerStateDictionary.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {

    sub_25BCB6FEC();
    type metadata accessor for OptimizerStateDictionary.ParameterKey(255, *(a3 + 16), *(a3 + 24), v4);
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_21_10();
    sub_25BCB61AC();
    sub_25BCB61CC();
  }

  else
  {

    sub_25BCB6FEC();
    type metadata accessor for OptimizerStateDictionary.ParameterKey(255, *(a3 + 16), *(a3 + 24), v5);
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_21_10();
    sub_25BCB61AC();
    sub_25BCB611C();
  }
}

void *sub_25BACE994(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    v4 = v3;
    OUTLINED_FUNCTION_3_48(result, a2, a3);
    swift_weakAssign();
    OUTLINED_FUNCTION_0_69(v3 + 24);

    sub_25BAC4888();
    v5 = *(*(v3 + 24) + 16);
    sub_25BAC48A0(v5);
    v6 = *(v3 + 24);
    *(v6 + 16) = v5 + 1;
    sub_25BAC48B8(v7, v6 + 8 * v5 + 32);
    *(v4 + 24) = v6;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_25BACEA3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result + 32;
    do
    {
      OUTLINED_FUNCTION_3_48(result, a2, a3);
      swift_weakAssign();
      OUTLINED_FUNCTION_0_69(v3 + 24);
      v6 = *(v3 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BACEB4C();
        v6 = v9;
        *(v3 + 24) = v9;
      }

      v8 = *(v6 + 16);
      if (v8 >= *(v6 + 24) >> 1)
      {
        sub_25BACEB4C();
        v6 = v10;
      }

      *(v6 + 16) = v8 + 1;
      sub_25BAC48B8(v11, v6 + 8 * v8 + 32);
      *(v3 + 24) = v6;
      swift_endAccess();

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_25BACEB4C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DA8, &qword_25BCBBD28);
      v6 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v6);
      OUTLINED_FUNCTION_9_1(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BACB85C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
    OUTLINED_FUNCTION_17(v8);
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

uint64_t sub_25BACEC0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      if ((v2 & 0xF000000000000007) != 0xF000000000000007 && v2 < 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v2 & 0xF000000000000007) != 0xF000000000000007)
    {
      goto LABEL_9;
    }

    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
    goto LABEL_13;
  }

  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_25BAB69FC(*a1);
    sub_25BAB310C(v3);
    sub_25BAB310C(v2);
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000048, 0x800000025BCDA1C0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 317);
LABEL_13:
    __break(1u);
    return result;
  }

LABEL_9:
  sub_25BAB3020(*a1);
  sub_25BAB3020(v3);
  sub_25BAB310C(v3);

  return sub_25BAB310C(v2);
}

uint64_t sub_25BACED40(uint64_t *a1)
{
  v5 = *a1;
  v2 = v5;
  sub_25BACEC0C(&v5);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;

  return sub_25BAB310C(v3);
}

uint64_t Array<A>.resolve(descriptor:)(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v10 = *a1;
  v11 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_0();
      swift_once();
      goto LABEL_15;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v6 = *(*(v5 + 8 * v3) + 16);
    swift_retain_n();

    v7 = sub_25BA928B4();
    [v7 lock];

    swift_beginAccess();
    sub_25BA9323C(v6 + 40, &v12);
    if (v14 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v13);
LABEL_9:
      [*(v6 + 224) unlock];

      ++v3;
    }

    else
    {
      if (v14 == 2)
      {
        sub_25BA9778C(&v12);
        goto LABEL_9;
      }

      sub_25BA9778C(&v12);
      [*(v6 + 224) unlock];

      MEMORY[0x25F876F40](v8);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      sub_25BCB680C();
      v11 = v15;
      ++v3;
    }
  }

  v2 = v11;
  if (!sub_25BA9AC54(v11))
  {
  }

  if (qword_28154F2C8 != -1)
  {
    goto LABEL_19;
  }

LABEL_15:
  v12 = v10;
  sub_25BACEFC8(v2, &v12);
}

uint64_t sub_25BACEFC8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = v5;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25BACF1E8;
  *(v9 + 24) = v8;
  v12[4] = sub_25BACF244;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25BACF24C;
  v12[3] = &block_descriptor_3;
  v10 = _Block_copy(v12);
  sub_25BCB617C();

  sub_25BCB617C();

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BACF140()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_25BACF298(uint64_t a1, char *a2)
{
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = MEMORY[0x277D84F90];
  v12[0] = MEMORY[0x277D84F90];
  v3 = sub_25BA9BEA0(a1);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25F8779B0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v6 = sub_25BA928B4();
    [v6 lock];

    OUTLINED_FUNCTION_17_10();
    swift_beginAccess();
    sub_25BA9323C(v5 + 40, v13);
    if (v16 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v14);
LABEL_11:
      [*(v5 + 224) unlock];
      OUTLINED_FUNCTION_51_0();

      ++v4;
    }

    else
    {
      if (v16 == 2)
      {
        sub_25BA9778C(v13);
        goto LABEL_11;
      }

      sub_25BA9778C(v13);
      [*(v5 + 224) unlock];

      MEMORY[0x25F876F40](v7);
      v8 = *((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_81(v8);
        sub_25BCB67AC();
      }

      sub_25BCB680C();
      v11 = v12[0];
      ++v4;
    }
  }

  if (sub_25BA9BEA0(v11))
  {
    v15 = 0;
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    LOBYTE(v12[0]) = v9;
    v12[1] = v10;
    swift_allocObject();
    sub_25BACF4E0(v11, v13, 0, v12);
  }

  else
  {
  }
}

uint64_t sub_25BACF4E0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v17 = *(a4 + 1);
  *(v4 + 16) = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_25BCB614C();
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  *(v4 + 56) = v9;
  v11 = sub_25BCB614C();
  *(v4 + 64) = v9;
  *(v4 + 72) = v11;
  sub_25BACF724();
  v12 = sub_25BCB614C();
  *(v4 + 80) = v9;
  *(v4 + 88) = v12;
  *(v4 + 96) = v9;
  v13 = sub_25BCB614C();
  *(v4 + 104) = v9;
  *(v4 + 112) = v13;
  *(v4 + 120) = v9;
  v14 = sub_25BCB614C();
  *(v4 + 144) = 0u;
  *(v4 + 128) = v9;
  *(v4 + 136) = v14;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = MEMORY[0x277D84FA0];
  if (qword_28154F9D0 != -1)
  {
    swift_once();
  }

  *(v4 + 208) = dword_281557408;
  *(v4 + 216) = v9;
  swift_beginAccess();
  sub_25BACF778(a2, v4 + 144);
  swift_endAccess();
  *(v4 + 24) = v8;
  *(v4 + 32) = v17;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    type metadata accessor for LazyTensorFunctionBuilder.TraceContext();
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69D0, &qword_25BCCEC30);
    *(v15 + 16) = sub_25BCB614C();
  }

  sub_25BACF80C(a1, v15);

  sub_25BAA6F5C(a2, &qword_27FBB6730, &qword_25BCBC4B0);
  return v4;
}

unint64_t sub_25BACF724()
{
  result = qword_28154ED90;
  if (!qword_28154ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154ED90);
  }

  return result;
}

uint64_t sub_25BACF778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BACF80C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v199 = a1;
  v200 = a2;
  v197 = *v2;
  ObjectType = sub_25BCB5EBC();
  v5 = *(ObjectType - 8);
  MEMORY[0x28223BE20](ObjectType);
  v7 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v192 - v9;
  if (qword_28154BE88 != -1)
  {
    goto LABEL_171;
  }

  while (1)
  {
    v11 = sub_25BCB5EEC();
    __swift_project_value_buffer(v11, qword_28154BE90);
    sub_25BCB5EAC();
    v12 = sub_25BCB5EDC();
    v13 = sub_25BCB6D5C();
    if (sub_25BCB6E1C())
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_25BCB5E9C();
      _os_signpost_emit_with_name_impl(&dword_25BA90000, v12, v13, v15, "Trace Tensor Function", "", v14, 2u);
      MEMORY[0x25F8797F0](v14, -1, -1);
    }

    (*(v5 + 16))(v7, v10, ObjectType);
    sub_25BCB5F2C();
    swift_allocObject();
    v193 = sub_25BCB5F1C();
    v16 = *(v5 + 8);
    v5 += 8;
    v16(v10, ObjectType);
    v17 = sub_25BCB617C();
    v18 = sub_25BAD15E4(v17);
    v215 = v18;
    v214[10] = MEMORY[0x277D84FA0];
    v19 = *(v18 + 16);
    v202 = v3;
    if (!v19)
    {
      break;
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v20 = *(v18 + 16);
    v195 = xmmword_25BCBB6D0;
    while (!v20)
    {
LABEL_117:
      v18 = v215;
      v20 = *(v215 + 16);
      if (!v20)
      {
        goto LABEL_126;
      }
    }

    v21 = sub_25BAB3058();
    if (!v21)
    {
      goto LABEL_178;
    }

    v5 = v22;
    v201 = v21;
    v23 = sub_25BAD1678(v21, v22);
    if (v24 == 2)
    {
      sub_25BAA4930(v3 + 144, &v204, &qword_27FBB6730, &qword_25BCBC4B0);
      if (*(&v205 + 1))
      {
        v208 = v204;
        v209 = v205;
        v210 = v206;
        v211 = v207;
        v7 = v201;
      }

      else
      {
        v7 = v201;
        sub_25BAD1778(v203, v5, v3, &v208);
        if (*(&v205 + 1))
        {
          sub_25BAA6F5C(&v204, &qword_27FBB6730, &qword_25BCBC4B0);
        }
      }

      swift_beginAccess();
      sub_25BAD1994(&v208, v3 + 144);
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v44 = v3;
      v10 = *(v5 + 64);
      if ((*(v3 + 208) & (v10)(ObjectType, v5)) == 0 || (sub_25BAD1D74(v3, v203 + 168, v7, v5) & 1) == 0 || (sub_25BAD2078(v3, v7, v5) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
        v58 = swift_allocObject();
        *(v58 + 16) = v195;
        v59 = v203;
        *(v58 + 32) = v203;
        v211 = 0;
        v209 = 0u;
        v210 = 0u;
        v208 = 0u;
        v60 = *(v3 + 32);
        LOBYTE(v204) = 0;
        *(&v204 + 1) = v60;
        swift_allocObject();

        v61 = v200;

        sub_25BCB617C();
        v62 = sub_25BACF4E0(v58, &v208, v61, &v204);
        v3 = v44;
        if (v62)
        {
          v63 = swift_beginAccess();
          MEMORY[0x25F876F40](v63);
          sub_25BAD5150(*((v44[27] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          swift_endAccess();
        }

        v7 = sub_25BAC44E4();
        ObjectType = v64;
        swift_beginAccess();
        v65 = v44[6];
        if (*(v65 + 16) && (v66 = sub_25BA9266C(v7, ObjectType), (v67 & 1) != 0))
        {
          v68 = *(*(v65 + 56) + 8 * v66);
          v69 = v44[5];
          if ((v69 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F8779B0](v68);
            swift_endAccess();

            swift_unknownObjectRelease();
            v10 = v201;
          }

          else
          {
            v10 = v201;
            if ((v68 & 0x8000000000000000) != 0)
            {
              goto LABEL_169;
            }

            if (v68 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_170;
            }

            swift_endAccess();
          }
        }

        else
        {

          MEMORY[0x25F876F40](v70);
          sub_25BAD5150(*((v44[5] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          if (__OFSUB__(sub_25BAAF54C(v44[5]), 1))
          {
            goto LABEL_166;
          }

          swift_isUniquelyReferenced_nonNull_native();
          *&v204 = v44[6];
          sub_25BAD3E08();
          v44[6] = v204;
          swift_endAccess();

          v71 = *(v59 + 152);
          v72 = *(v59 + 160);
          swift_beginAccess();
          sub_25BCB617C();
          sub_25BAFD048();
          v73 = *(*(v202 + 56) + 16);
          sub_25BAFD1A8();
          v74 = *(v202 + 56);
          *(v74 + 16) = v73 + 1;
          v75 = v74 + 16 * v73;
          *(v75 + 32) = v71;
          *(v75 + 40) = v72;
          v3 = v202;
          *(v202 + 56) = v74;
          swift_endAccess();
          *&v208 = 0x5F7475706E69;
          *(&v208 + 1) = 0xE600000000000000;
          *&v204 = *(*(v3 + 64) + 16);
          v76 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v76);

          v7 = *(&v208 + 1);
          ObjectType = v208;
          v77 = sub_25BAC44E4();
          v78 = v18;
          v80 = v79;
          swift_beginAccess();
          sub_25BAD3BF4(ObjectType, v7, v77, v80, 1);
          swift_endAccess();
          v18 = v78;

          v81 = *(v59 + 160);
          v10 = v201;
          if ((v81 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v204, v81 == 10);
            swift_endAccess();
          }
        }

        if (!*(v18 + 16))
        {
          goto LABEL_164;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v215 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_25BC1B13C();
          v215 = v18;
        }

        v83 = *(v18 + 16);
        if (!v83)
        {
          goto LABEL_165;
        }

        v84 = v83 - 1;
        ObjectType = *(v18 + 8 * v84 + 32);
        *(v18 + 16) = v84;
        sub_25BCB725C();

        swift_unknownObjectRelease();

        goto LABEL_117;
      }

      *(v3 + 208) &= (v10)(ObjectType, v5);
      sub_25BAD21F4(v7, v5, v3, 0);
      v10 = &qword_25BCCCD60;
      if (*(v3 + 24) == 1)
      {
        v45 = sub_25BAD259C();
        if (v45)
        {
          ObjectType = v45;
          v46 = sub_25BAC4018();
          if (!sub_25BAC40D8(&v208, v46) || (swift_beginAccess(), v47 = *(ObjectType + 24), (v48 = *(v47 + 16)) == 0))
          {

            goto LABEL_121;
          }

          v194 = ObjectType;
          v7 = v47 + 32;
          sub_25BCB617C();
          v49 = 1;
          v50 = v48;
          *&v198 = v47;
          while (2)
          {
            if (v49 - 1 >= v50)
            {
              goto LABEL_167;
            }

            sub_25BAA4930(v7, v214, &qword_27FBB3DB0, &qword_25BCCCD60);
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              ObjectType = Strong;
              if (*(Strong + 32) <= 0)
              {
                sub_25BAA6F5C(v214, &qword_27FBB3DB0, &qword_25BCCCD60);

                goto LABEL_41;
              }

              v52 = sub_25BA928B4();
              [v52 lock];

              swift_beginAccess();
              sub_25BA9323C(ObjectType + 40, &v208);
              if (v213)
              {
                if (v213 == 1)
                {

                  swift_unknownObjectRelease();
                  sub_25BA977E0(&v210);
                }

                else
                {
                  sub_25BA9778C(&v208);
                }

                [*(ObjectType + 224) unlock];

                sub_25BAA6F5C(v214, &qword_27FBB3DB0, &qword_25BCCCD60);
LABEL_40:

                v10 = &qword_25BCCCD60;
LABEL_41:
                if (v49 >= v48)
                {
LABEL_120:

                  v7 = v201;
                  goto LABEL_121;
                }
              }

              else
              {
                sub_25BA9BE3C(&v208, &v204);
                v53 = *(&v204 + 1);
                v54 = swift_getObjectType();
                v55 = *(v53 + 56);
                v56 = v53;
                v47 = v198;
                v57 = v55(v54, v56);
                sub_25BA977E0(&v204);
                [*(ObjectType + 224) unlock];

                sub_25BAA6F5C(v214, &qword_27FBB3DB0, &qword_25BCCCD60);
                if (v57)
                {
                  goto LABEL_40;
                }

                sub_25BCB723C();
                sub_25BCB728C();
                v47 = v198;
                sub_25BCB729C();
                sub_25BCB725C();
                v10 = &qword_25BCCCD60;
                if (v49 >= v48)
                {
                  goto LABEL_120;
                }
              }

              v50 = *(v47 + 16);
              ++v49;
              v7 += 8;
              continue;
            }

            break;
          }

          sub_25BAA6F5C(v214, &qword_27FBB3DB0, &qword_25BCCCD60);
          goto LABEL_41;
        }
      }

LABEL_121:
      sub_25BAD285C(v7, v5, v200, v3, &v215);

      goto LABEL_116;
    }

    v25 = v23;
    v7 = v24;
    if (sub_25BAC4018() == v23)
    {
      if (v7)
      {
        v10 = 0;
        v85 = 0;
        ObjectType = 0;
      }

      else
      {
        v113 = swift_getObjectType();
        v7 = (*(v5 + 16))(v113, v5);
        swift_beginAccess();
        v114 = *(v3 + 88);
        if (*(v114 + 16) && (v115 = sub_25BAD23EC(), (v116 & 1) != 0))
        {
          v117 = *(*(v114 + 56) + 8 * v115);
          if ((v117 & 0x8000000000000000) != 0)
          {
            goto LABEL_176;
          }

          if (v117 >= *(*(v3 + 80) + 16))
          {
            goto LABEL_177;
          }

          swift_endAccess();

          v10 = 0;
          v85 = 0;
          ObjectType = 0;
          v118 = v201;
        }

        else
        {
          sub_25BAD46FC();
          v119 = v18;
          v120 = *(*(v3 + 80) + 16);
          sub_25BAD4820(v120);
          v121 = *(v3 + 80);
          *(v121 + 16) = v120 + 1;
          v122 = v121 + 16 * v120;
          v118 = v201;
          *(v122 + 32) = v201;
          *(v122 + 40) = v5;
          *(v3 + 80) = v121;
          swift_unknownObjectRetain();
          swift_isUniquelyReferenced_nonNull_native();
          *&v204 = *(v3 + 88);
          v18 = v119;
          sub_25BAD4714();
          *(v3 + 88) = v204;
          swift_endAccess();

          v123 = swift_unknownObjectRetain();
          v10 = sub_25BAD4888(v123, v5);
          v85 = v124;
          ObjectType = v125;
          swift_beginAccess();

          sub_25BAD4DE8();
          v7 = *(*(v3 + 96) + 16);
          sub_25BAD4E40();
          v126 = *(v3 + 96);
          *(v126 + 16) = v7 + 1;
          v127 = (v126 + 24 * v7);
          v127[4] = v10;
          v127[5] = v85;
          v127[6] = ObjectType;
          *(v3 + 96) = v126;
          swift_endAccess();
        }

        sub_25BAD21F4(v118, v5, v3, 1);
      }

      v128 = *(v3 + 32);
      v5 = v203;
      if (*(v128 + 16))
      {
        v129 = sub_25BAC4018();
        if (*(v128 + 16))
        {
          v130 = v129;
          v131 = sub_25BCB79BC();
          v132 = ~(-1 << *(v128 + 32));
          while (1)
          {
            v133 = v131 & v132;
            if (((*(v128 + 56 + (((v131 & v132) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v131 & v132)) & 1) == 0)
            {
              break;
            }

            v131 = v133 + 1;
            if (*(*(v128 + 48) + 8 * v133) == v130)
            {
              goto LABEL_103;
            }
          }
        }
      }

      if (*(v5 + 32) < 1)
      {
LABEL_103:

        v3 = v202;
      }

      else
      {
        *&v198 = v10;
        v7 = sub_25BAC44E4();
        v10 = v134;
        v3 = v202;
        swift_beginAccess();
        v135 = *(v3 + 112);
        if (*(v135 + 16) && (v136 = sub_25BA9266C(v7, v10), (v137 & 1) != 0))
        {
          v138 = *(*(v135 + 56) + 8 * v136);
          v139 = *(v3 + 104);
          if ((v139 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F8779B0](v138);
            swift_endAccess();

            swift_unknownObjectRelease();

LABEL_82:
            v5 = v203;
          }

          else
          {
            if ((v138 & 0x8000000000000000) != 0)
            {
              goto LABEL_174;
            }

            if (v138 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_175;
            }

            swift_endAccess();

            v5 = v203;
          }
        }

        else
        {
          v194 = v18;
          v5 = v203;

          MEMORY[0x25F876F40](v140);
          sub_25BAD5150(*((*(v3 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          if (__OFSUB__(sub_25BAAF54C(*(v3 + 104)), 1))
          {
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            *&v208 = 0;
            *(&v208 + 1) = 0xE000000000000000;
            sub_25BCB70FC();

            *&v204 = 0xD00000000000001DLL;
            *(&v204 + 1) = 0x800000025BCE48C0;
            *&v208 = v203;
            type metadata accessor for TensorRepresentation();

            v185 = sub_25BCB63AC();
            MEMORY[0x25F876C90](v185);

            v208 = v204;
            v212 = 9;
            sub_25BCB617C();
            v187 = "traceNextElement(in:visitedResolutionDependencies:context:)";
            v188 = 59;
            v189 = 1003;
LABEL_180:
            sub_25BA97890(v187, v188, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/TensorFunction.swift", 105, 2, v189, v186, v192, *(&v192 + 1), v193, v194, v195, *(&v195 + 1), v196, v197, v198, *(&v198 + 1), v199, v200, v201, v202, v203, *(&v203 + 1));
          }

          swift_isUniquelyReferenced_nonNull_native();
          *&v204 = *(v3 + 112);
          sub_25BAD3E08();
          *(v3 + 112) = v204;
          swift_endAccess();

          sub_25BAD5184(v141, v198, v85, ObjectType, &v208);
          v198 = v208;
          v192 = v209;
          v10 = *(&v210 + 1);
          v142 = v210;
          v143 = v211;
          swift_beginAccess();
          sub_25BAD562C();
          v144 = *(*(v202 + 120) + 16);
          sub_25BAD56F8(v144);
          v145 = *(v202 + 120);
          *(v145 + 16) = v144 + 1;
          v146 = v145 + 56 * v144;
          v147 = v192;
          *(v146 + 32) = v198;
          *(v146 + 48) = v147;
          *(v146 + 64) = v142;
          *(v146 + 72) = v10;
          v3 = v202;
          *(v146 + 80) = v143;
          *(v3 + 120) = v145;
          swift_endAccess();
          *&v208 = 0x5F74757074756FLL;
          *(&v208 + 1) = 0xE700000000000000;
          *&v204 = *(*(v3 + 128) + 16);
          v148 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v148);

          v7 = *(&v208 + 1);
          ObjectType = v208;
          v149 = sub_25BAC44E4();
          v151 = v150;
          swift_beginAccess();
          sub_25BAD3BF4(ObjectType, v7, v149, v151, 1);
          swift_endAccess();

          v152 = *(v5 + 160);
          v18 = v194;
          if ((v152 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v204, v152 == 10);
            swift_endAccess();
          }
        }
      }

LABEL_111:
      if (!*(v18 + 16))
      {
        goto LABEL_162;
      }

      v154 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v18;
      if ((v154 & 1) == 0)
      {
        v18 = sub_25BC1B13C();
        v215 = v18;
      }

      v155 = *(v18 + 16);
      if (!v155)
      {
        goto LABEL_163;
      }

      v156 = v155 - 1;
      ObjectType = *(v18 + 8 * v156 + 32);
      *(v18 + 16) = v156;
      sub_25BCB725C();

LABEL_116:
      swift_unknownObjectRelease();
      goto LABEL_117;
    }

    sub_25BC49EE4(v25);
    if (!v26)
    {
      *&v208 = 0;
      *(&v208 + 1) = 0xE000000000000000;
      sub_25BCB70FC();

      *&v204 = 0xD000000000000025;
      *(&v204 + 1) = 0x800000025BCE4920;
      *&v208 = sub_25BAB3058();
      *(&v208 + 1) = v190;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69D8, &qword_25BCCEC38);
      v191 = sub_25BCB63AC();
      MEMORY[0x25F876C90](v191);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v208 = v204;
      v212 = 9;
      sub_25BCB617C();
      v187 = "addInputFromDependencyIfNeeded(_:functionBuilderID:)";
      v188 = 52;
      v189 = 790;
      goto LABEL_180;
    }

    v10 = v26;
    v5 = v203;
    v7 = sub_25BAC44E4();
    ObjectType = v27;
    swift_beginAccess();
    v28 = sub_25BB3ED64(v7, ObjectType, *(v3 + 48));
    v194 = v18;
    if (v29)
    {

      MEMORY[0x25F876F40](v30);
      sub_25BAD5150(*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_25BCB680C();
      if (__OFSUB__(sub_25BAAF54C(*(v3 + 40)), 1))
      {
        goto LABEL_168;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v204 = *(v3 + 48);
      sub_25BAD3E08();
      *(v3 + 48) = v204;
      swift_endAccess();

      v31 = *(v5 + 152);
      v32 = v10;
      v33 = v3;
      v34 = *(v5 + 160);
      swift_beginAccess();
      sub_25BCB617C();
      sub_25BAFD048();
      v35 = *(*(v33 + 56) + 16);
      sub_25BAFD1A8();
      v36 = *(v33 + 56);
      *(v36 + 16) = v35 + 1;
      v37 = v36 + 16 * v35;
      *(v37 + 32) = v31;
      *(v37 + 40) = v34;
      *(v33 + 56) = v36;
      swift_endAccess();
      *&v208 = 0x5F7475706E69;
      *(&v208 + 1) = 0xE600000000000000;
      *&v204 = *(*(v33 + 64) + 16);
      v38 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v38);

      v39 = v208;
      v40 = sub_25BAC44E4();
      v42 = v41;
      swift_beginAccess();
      v10 = v32;
      sub_25BAD3BF4(v39, *(&v39 + 1), v40, v42, 1);
      swift_endAccess();

      v43 = *(v5 + 160);
      if ((v43 - 8) < 3)
      {
        swift_beginAccess();
        sub_25BAD3ECC(&v204, v43 == 10);
        swift_endAccess();
      }
    }

    else
    {
      v86 = v28;
      v87 = *(v3 + 40);
      sub_25BAB4D78(v28, (v87 & 0xC000000000000001) == 0, v87);
      if ((v87 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v86, v87);
        swift_endAccess();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }
    }

    swift_beginAccess();
    *&v198 = v10;
    ObjectType = *(v10 + 104);
    v7 = sub_25BA9BEA0(ObjectType);
    v10 = ObjectType & 0xC000000000000001;
    v3 = ObjectType & 0xFFFFFFFFFFFFFF8;
    sub_25BCB617C();
    v88 = 0;
    while (1)
    {
      if (v7 == v88)
      {

        v95 = sub_25BAC44E4();
        ObjectType = v96;
        v10 = v198;
        swift_beginAccess();
        v97 = sub_25BB3ED64(v95, ObjectType, *(v10 + 112));
        if (v98)
        {

          MEMORY[0x25F876F40](v99);
          sub_25BAD5150(*((*(v10 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          if (__OFSUB__(sub_25BAAF54C(*(v10 + 104)), 1))
          {
            goto LABEL_173;
          }

          swift_isUniquelyReferenced_nonNull_native();
          *&v204 = *(v10 + 112);
          sub_25BAD3E08();
          *(v10 + 112) = v204;
          swift_endAccess();

          sub_25BAD5184(v100, 0, 0, 0, &v208);
          v203 = v208;
          v192 = v209;
          v10 = *(&v210 + 1);
          v101 = v210;
          v102 = v211;
          swift_beginAccess();
          sub_25BAD562C();
          v103 = *(*(v198 + 120) + 16);
          sub_25BAD56F8(v103);
          v104 = *(v198 + 120);
          *(v104 + 16) = v103 + 1;
          v105 = v104 + 56 * v103;
          v106 = v192;
          *(v105 + 32) = v203;
          *(v105 + 48) = v106;
          *(v105 + 64) = v101;
          *(v105 + 72) = v10;
          v107 = v198;
          *(v105 + 80) = v102;
          *(v107 + 120) = v104;
          swift_endAccess();
          *&v208 = 0x5F74757074756FLL;
          *(&v208 + 1) = 0xE700000000000000;
          swift_beginAccess();
          *&v204 = *(*(v107 + 128) + 16);
          v108 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v108);

          v7 = *(&v208 + 1);
          ObjectType = v208;
          v109 = sub_25BAC44E4();
          v111 = v110;
          swift_beginAccess();
          sub_25BAD3BF4(ObjectType, v7, v109, v111, 1);
          swift_endAccess();

          v112 = *(v5 + 160);
          if ((v112 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v204, v112 == 10);
            swift_endAccess();
          }
        }

        else
        {
          v153 = v97;
          v7 = *(v10 + 104);
          sub_25BAB4D78(v97, (v7 & 0xC000000000000001) == 0, v7);
          if ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F8779B0](v153, v7);
            swift_endAccess();

            swift_unknownObjectRelease();
          }

          else
          {
            swift_endAccess();
LABEL_109:
          }
        }

        v3 = v202;
        v18 = v194;
        goto LABEL_111;
      }

      if (v10)
      {
        MEMORY[0x25F8779B0](v88, ObjectType);
      }

      else
      {
        if (v88 >= *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_156;
        }
      }

      if (__OFADD__(v88, 1))
      {
        break;
      }

      v89 = sub_25BAC44E4();
      v91 = v90;
      if (v89 == sub_25BAC44E4() && v91 == v92)
      {

        v3 = v202;
        v18 = v194;
        goto LABEL_82;
      }

      v94 = sub_25BCB789C();

      ++v88;
      v5 = v203;
      if (v94)
      {
        goto LABEL_109;
      }
    }

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
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    swift_once();
  }

LABEL_126:

  v157 = v199;
  *&v198 = sub_25BA9BEA0(v199);
  swift_beginAccess();
  v10 = 0;
  v197 = v157 & 0xC000000000000001;
  v194 = v18;
  *&v195 = v157 & 0xFFFFFFFFFFFFFF8;
  while (v198 != v10)
  {
    if (v197)
    {
      v5 = MEMORY[0x25F8779B0](v10, v199);
    }

    else
    {
      if (v10 >= *(v195 + 16))
      {
        goto LABEL_158;
      }

      v5 = *(v199 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_157;
    }

    v158 = sub_25BAC44E4();
    ObjectType = v159;
    swift_beginAccess();
    v160 = *(v3 + 112);
    if (*(v160 + 16) && (v161 = sub_25BA9266C(v158, ObjectType), (v162 & 1) != 0))
    {
      v163 = *(*(v160 + 56) + 8 * v161);
      v164 = *(v3 + 104);
      if ((v164 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v163);
        swift_endAccess();

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v163 & 0x8000000000000000) != 0)
        {
          goto LABEL_160;
        }

        if (v163 >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_161;
        }

        swift_endAccess();
      }
    }

    else
    {

      MEMORY[0x25F876F40](v165);
      if (*((*(v3 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      sub_25BCB680C();
      v166 = *(v3 + 104);
      if (v166 >> 62)
      {
        v167 = sub_25BCB749C();
      }

      else
      {
        v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v167, 1))
      {
        goto LABEL_159;
      }

      *&v203 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v214[0] = *(v3 + 112);
      sub_25BAD3E08();
      *(v3 + 112) = v214[0];
      swift_endAccess();

      sub_25BAD5184(v168, 0, 0, 0, &v208);
      v169 = *(&v208 + 1);
      v201 = v208;
      v170 = v209;
      v7 = *(&v210 + 1);
      v171 = v210;
      LODWORD(v200) = v211;
      swift_beginAccess();
      v172 = *(v3 + 120);
      v173 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 120) = v172;
      if ((v173 & 1) == 0)
      {
        sub_25BAD5644();
        v172 = v182;
        *(v3 + 120) = v182;
      }

      v174 = *(v172 + 16);
      if (v174 >= *(v172 + 24) >> 1)
      {
        sub_25BAD5644();
        v172 = v183;
      }

      *(v172 + 16) = v174 + 1;
      v175 = v172 + 56 * v174;
      v3 = v202;
      *(v175 + 32) = v201;
      *(v175 + 40) = v169;
      *(v175 + 48) = v170;
      *(v175 + 64) = v171;
      *(v175 + 72) = v7;
      *(v175 + 80) = v200;
      *(v3 + 120) = v172;
      swift_endAccess();
      *&v208 = 0x5F74757074756FLL;
      *(&v208 + 1) = 0xE700000000000000;
      v214[0] = *(*(v3 + 128) + 16);
      v176 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v176);

      v177 = *(&v208 + 1);
      ObjectType = v208;
      v178 = sub_25BAC44E4();
      v180 = v179;
      swift_beginAccess();
      sub_25BAD3BF4(ObjectType, v177, v178, v180, 1);
      swift_endAccess();

      v181 = *(v5 + 160);
      if ((v181 - 8) < 3)
      {
        swift_beginAccess();
        sub_25BAD3ECC(v214, v181 == 10);
        swift_endAccess();
      }

      v10 = v203;
    }

    ++v10;
  }

  sub_25BAD6080(v193);
}

unint64_t sub_25BAD15E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_25BCB749C();
    if (v4)
    {
      v5 = v4;
      v2 = sub_25BB72178(v4, 0);
      sub_25BAC1ED4(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_25BAD1678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  v8 = v7;
  v10 = v9;
  swift_beginAccess();
  v11 = sub_25BAD1720(v6, v8, v10, *(v3 + 16));
  swift_endAccess();

  return v11;
}

uint64_t sub_25BAD1720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_25BAD23EC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_15();
  return *v5;
}

double sub_25BAD1778@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_25BAA4930(a1 + 168, &v16, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v17 + 1))
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if ((v19 & ~*(a4 + 208)) != 0)
    {
LABEL_9:
      sub_25BABF0A8(&v20);
      result = 0.0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0;
      return result;
    }

    ObjectType = swift_getObjectType();
    v9 = *(a3 + 32);

    swift_unknownObjectRetain();
    v10 = v9(ObjectType, a3);
    if (sub_25BA9BEA0(v10))
    {
      sub_25BAB4D78(0, (v10 & 0xC000000000000001) == 0, v10);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x25F8779B0](0, v10);

        swift_unknownObjectRelease();
        v12 = *(v15 + 160);
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = *(v10 + 32);

        swift_unknownObjectRelease();
        v12 = *(v11 + 160);
      }

      if ((v12 - 8) >= 2 && v12 == 10 && *(&v22 + 1) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v14 = v21;
    *a5 = v20;
    *(a5 + 16) = v14;
    result = *&v22;
    *(a5 + 32) = v22;
    *(a5 + 48) = v23;
  }

  else
  {
    sub_25BAA6F5C(&v16, &qword_27FBB6730, &qword_25BCBC4B0);
    *(a5 + 48) = 0;
    result = 0.0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_25BAD1994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BAD1A20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, os_unfair_lock_s *))
{
  if (qword_28154C3A0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_87(&qword_28154C3A0);
  }

  v6 = qword_28154C3A8;
  MEMORY[0x28223BE20](a1);
  v10[2] = v3;
  v10[3] = a2;

  sub_25BAD1AEC(a3, v10, v6);
  v8 = v7;

  return v8;
}

void sub_25BAD1AEC(void (*a1)(uint64_t *__return_ptr, os_unfair_lock_s *), uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 6);
  a1(&v5, a3 + 4);
  os_unfair_lock_unlock(a3 + 6);
}

uint64_t sub_25BAD1B94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 24))(ObjectType, a3);
  v11 = sub_25BAD1D18(v9, v10, *a1);
  if ((v11 & 0x100000000) != 0)
  {
    v14 = swift_getObjectType();
    v15 = dynamic_cast_existential_1_conditional(a2, v14, &protocol descriptor for MPSGraphOperationEncodable) != 0;
    v16 = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2, v16, &protocol descriptor for MILOperationEncodable))
    {
      v12 = ((v15 & 1) << 10) | 7;
    }

    else
    {
      v12 = v15 << 10;
    }

    v17 = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2, v17, &protocol descriptor for BNNSOperationDispatchable))
    {
      v12 |= 0x100000u;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v18 = *a1;
    sub_25BC1AB44();

    *a1 = v18;
  }

  else
  {
    v12 = v11;
  }

  *a4 = v12;
  return result;
}

unint64_t sub_25BAD1D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_25BA9266C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_25BAD1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_25BAA4930(a1 + 144, &v22, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA4930(a2, &v26, &qword_27FBB6730, &qword_25BCBC4B0);
  if (!*(&v27 + 1))
  {
    if (!*(&v23 + 1))
    {
      sub_25BAA6F5C(&v22, qword_27FBB69E0, &unk_25BCCEC40);
      v9 = 1;
      return v9 & 1;
    }

    v18 = v22;
    v19 = v23;
    *v20 = v24;
    v21 = v25;
    ObjectType = swift_getObjectType();
    v9 = (*(a4 + 88))(&v18, ObjectType, a4);
    sub_25BABF0A8(&v18);
    v11 = &v26;
    goto LABEL_9;
  }

  if (!*(&v23 + 1))
  {
    v18 = v26;
    v19 = v27;
    *v20 = v28;
    v12 = v29;
    v21 = v29;
    v13 = *(a1 + 208);
    sub_25BABF0A8(&v18);
    v9 = (v12 & ~v13) == 0;
    v11 = &v22;
LABEL_9:
    sub_25BAA6F5C(v11, &qword_27FBB6730, &qword_25BCBC4B0);
    return v9 & 1;
  }

  v18 = v22;
  v19 = v23;
  *v20 = v24;
  v21 = v25;
  v15[0] = v26;
  v15[1] = v27;
  v16 = v28;
  v17 = v29;
  if ((v29 & ~*(a1 + 208)) != 0)
  {
    sub_25BABF0A8(v15);
    sub_25BABF0A8(&v18);
    v9 = 0;
  }

  else
  {
    if (sub_25BAD1FB0(v20[1], *(&v16 + 1)))
    {
      v7 = *(&v19 + 1);
      v8 = v20[0];
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      v9 = v8[3](v15, v7, v8);
    }

    else
    {
      v9 = 0;
    }

    sub_25BABF0A8(v15);
    sub_25BABF0A8(&v18);
  }

  return v9 & 1;
}

uint64_t sub_25BAD1FB0(id a1, char *a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if ((a2 - 1) < 2)
  {
    return 0;
  }

  if (a1)
  {
    v5 = [a1 registryID];
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = [a2 registryID];
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (a1)
  {
    return v8;
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t sub_25BAD2078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_25BAA4930(a1 + 144, &v12, &qword_27FBB6730, &qword_25BCBC4B0);
  if (!*(&v13 + 1))
  {
    sub_25BAA6F5C(&v12, &qword_27FBB6730, &qword_25BCBC4B0);
LABEL_10:
    v9 = 1;
    return v9 & 1;
  }

  v16[0] = v12;
  v16[1] = v13;
  v17 = v14;
  v18 = v15;
  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 32))(ObjectType, a3);
  if (!sub_25BA9BEA0(v6))
  {

LABEL_9:
    sub_25BABF0A8(v16);
    goto LABEL_10;
  }

  sub_25BAB4D78(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x25F8779B0](0, v6);

    v8 = *(v11 + 160);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v6 + 32);

    v8 = *(v7 + 160);
  }

  if ((v8 - 8) >= 3)
  {
    goto LABEL_9;
  }

  v9 = (*(&v17 + 1) != 2) | (3u >> (v8 & 7));
  sub_25BABF0A8(v16);
  return v9 & 1;
}

uint64_t sub_25BAD21F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(ObjectType, a2);
  sub_25BAC4018();
  OUTLINED_FUNCTION_20_30(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 16);
  sub_25BAD22CC();
  *(v4 + 16) = v8;

  return swift_endAccess();
}

void sub_25BAD22CC()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_25BAD23EC();
  OUTLINED_FUNCTION_1_56();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6728, &unk_25BCCBF18);
  if ((OUTLINED_FUNCTION_23_26(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_34();
  v17 = sub_25BAD23EC();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v0;
  if (v15)
  {
    v20 = v19[7] + 16 * v14;
    *v20 = v10;
    *(v20 + 8) = v8 & 1;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BAD2540(v14, v6, v4, v2, v10, v8 & 1, v19);
    OUTLINED_FUNCTION_10_16();

    sub_25BCB617C();
  }
}

unint64_t sub_25BAD23EC()
{
  sub_25BCB79CC();
  OUTLINED_FUNCTION_109();
  sub_25BCB625C();
  sub_25BCB7A3C();
  OUTLINED_FUNCTION_109();

  return sub_25BAD246C(v0, v1, v2, v3);
}

unint64_t sub_25BAD246C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      if (*v13 == a1)
      {
        v14 = *(v13 + 8) == a2 && *(v13 + 16) == a3;
        if (v14 || (sub_25BCB789C() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_25BAD2540(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 24 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  v8 = a7[7] + 16 * result;
  *v8 = a5;
  *(v8 + 8) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_25BAD259C()
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
    v16 = v23;

    sub_25BA977E0(&v18);
  }

  return v16;
}

uint64_t sub_25BAD2634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6970, &qword_25BCCE4A0);
  result = sub_25BCB70CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_25BCB79BC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_25BAD285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 32))(ObjectType, a2);
  v10 = sub_25BA9BEA0(v9);
  if (v10)
  {
    v11 = v10;
    v156 = v9 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v12 = 0;
    v151 = v9 + 32;
    v152 = v9 & 0xFFFFFFFFFFFFFF8;
    v148 = a3;
    v153 = v9;
    v155 = v11;
    while (1)
    {
      if (v156)
      {
        v13 = MEMORY[0x25F8779B0](v12, v9);
      }

      else
      {
        if (v12 >= *(v152 + 16))
        {
          goto LABEL_125;
        }

        v13 = *(v151 + 8 * v12);
      }

      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = sub_25BAB3058();
      if (!v15)
      {
        sub_25BAA4930((a4 + 18), &v158, &qword_27FBB6730, &qword_25BCBC4B0);
        if (*(&v159 + 1))
        {
          v162 = v158;
          v163 = v159;
          v164 = v160;
          v165 = v161;
        }

        else
        {
          sub_25BAA4930(v13 + 168, &v162, &qword_27FBB6730, &qword_25BCBC4B0);
          if (*(&v159 + 1))
          {
            sub_25BAA6F5C(&v158, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        swift_beginAccess();
        sub_25BAD1994(&v162, (a4 + 18));
        swift_endAccess();
        v45 = sub_25BAC44E4();
        v47 = v46;
        swift_beginAccess();
        v48 = a4[6];
        if (*(v48 + 16))
        {
          v49 = sub_25BA9266C(v45, v47);
          if (v50)
          {
            v51 = *(*(v48 + 56) + 8 * v49);
            v52 = a4[5];
            if ((v52 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F8779B0](v51);
              swift_endAccess();

              swift_unknownObjectRelease();
            }

            else
            {
              if ((v51 & 0x8000000000000000) != 0)
              {
                goto LABEL_132;
              }

              if (v51 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_133:
                __break(1u);
                goto LABEL_134;
              }

              swift_endAccess();
            }

            v9 = v153;
            goto LABEL_86;
          }
        }

        MEMORY[0x25F876F40](v53);
        if (*((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v54 = a4[5];
        if (v54 >> 62)
        {
          v55 = sub_25BCB749C();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v56 = v55 - 1;
        if (!__OFSUB__(v55, 1))
        {
          v154 = v12;
          swift_isUniquelyReferenced_nonNull_native();
          *&v158 = a4[6];
          v57 = v158;
          a4[6] = 0x8000000000000000;
          v58 = sub_25BA9266C(v45, v47);
          if (!__OFADD__(*(v57 + 16), (v59 & 1) == 0))
          {
            v60 = v58;
            v61 = v59;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
            if (sub_25BCB745C())
            {
              v62 = sub_25BA9266C(v45, v47);
              if ((v61 & 1) != (v63 & 1))
              {
                goto LABEL_138;
              }

              v60 = v62;
            }

            v64 = v158;
            if (v61)
            {
              *(*(v158 + 56) + 8 * v60) = v56;
            }

            else
            {
              *(v158 + 8 * (v60 >> 6) + 64) |= 1 << v60;
              v65 = (v64[6] + 16 * v60);
              *v65 = v45;
              v65[1] = v47;
              *(v64[7] + 8 * v60) = v56;
              v66 = v64[2];
              v14 = __OFADD__(v66, 1);
              v67 = v66 + 1;
              if (v14)
              {
                goto LABEL_131;
              }

              v64[2] = v67;
              sub_25BCB617C();
            }

            a4[6] = v64;
            swift_endAccess();

            v68 = *(v13 + 152);
            v69 = *(v13 + 160);
            swift_beginAccess();
            v70 = a4[7];
            sub_25BCB617C();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            a4[7] = v70;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25BAD3BC4();
              v70 = v136;
              a4[7] = v136;
            }

            v9 = v153;
            v72 = *(v70 + 16);
            if (v72 >= *(v70 + 24) >> 1)
            {
              sub_25BAD3BC4();
              v70 = v137;
            }

            *(v70 + 16) = v72 + 1;
            v73 = v70 + 16 * v72;
            *(v73 + 32) = v68;
            *(v73 + 40) = v69;
            a4[7] = v70;
            swift_endAccess();
            *&v162 = 0x5F7475706E69;
            *(&v162 + 1) = 0xE600000000000000;
            *&v158 = *(a4[8] + 16);
            v74 = sub_25BCB77FC();
            MEMORY[0x25F876C90](v74);

            v75 = v162;
            v76 = sub_25BAC44E4();
            v78 = v77;
            swift_beginAccess();
            sub_25BAD3BF4(v75, *(&v75 + 1), v76, v78, 1);
            swift_endAccess();

            v79 = *(v13 + 160);
            if ((v79 - 8) < 3)
            {
              swift_beginAccess();
              sub_25BAD3ECC(&v158, v79 == 10);
              swift_endAccess();
            }

LABEL_60:
            v12 = v154;
            v11 = v155;
            goto LABEL_86;
          }

LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v157 = v15;
      v17 = sub_25BAD1678(v15, v16);
      v19 = v18;

      v20 = sub_25BA928B4();
      [v20 lock];

      swift_beginAccess();
      sub_25BA9323C(v13 + 40, &v162);
      if (v167)
      {
        if (v167 == 1)
        {

          swift_unknownObjectRelease();
          sub_25BA977E0(&v164);
        }

        else
        {
          sub_25BA9778C(&v162);
        }

        v23 = 1;
      }

      else
      {
        sub_25BA9BE3C(&v162, &v158);
        v21 = *(&v158 + 1);
        v22 = swift_getObjectType();
        v23 = (*(v21 + 56))(v22, v21);
        sub_25BA977E0(&v158);
      }

      [*(v13 + 224) unlock];

      if (v19 == 2)
      {
        if ((v23 & 1) == 0)
        {
          sub_25BCB723C();
          sub_25BCB728C();
          sub_25BCB729C();
          sub_25BCB725C();
LABEL_73:
          swift_unknownObjectRelease();
          goto LABEL_86;
        }

LABEL_62:
        sub_25BAA4930((a4 + 18), &v158, &qword_27FBB6730, &qword_25BCBC4B0);
        if (*(&v159 + 1))
        {
          v162 = v158;
          v163 = v159;
          v164 = v160;
          v165 = v161;
        }

        else
        {
          sub_25BAA4930(v13 + 168, &v162, &qword_27FBB6730, &qword_25BCBC4B0);
          if (*(&v159 + 1))
          {
            sub_25BAA6F5C(&v158, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        swift_beginAccess();
        sub_25BAD1994(&v162, (a4 + 18));
        swift_endAccess();
        v80 = sub_25BAC44E4();
        v82 = v81;
        swift_beginAccess();
        v83 = a4[6];
        if (*(v83 + 16))
        {
          v84 = sub_25BA9266C(v80, v82);
          if (v85)
          {
            v86 = *(*(v83 + 56) + 8 * v84);
            v87 = a4[5];
            if ((v87 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F8779B0](v86);
              swift_endAccess();

              swift_unknownObjectRelease();
              goto LABEL_73;
            }

            if ((v86 & 0x8000000000000000) == 0)
            {
              if (v86 < *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                swift_endAccess();

                goto LABEL_72;
              }

LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              sub_25BCB795C();
              __break(1u);
LABEL_139:
              *&v162 = 0;
              *(&v162 + 1) = 0xE000000000000000;
              sub_25BCB70FC();

              *&v158 = 0xD000000000000025;
              *(&v158 + 1) = 0x800000025BCE4920;
              *&v162 = sub_25BAB3058();
              *(&v162 + 1) = v141;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69D8, &qword_25BCCEC38);
              v142 = sub_25BCB63AC();
              MEMORY[0x25F876C90](v142);

              MEMORY[0x25F876C90](46, 0xE100000000000000);
              v162 = v158;
              v166 = 9;
              sub_25BCB617C();
              sub_25BA97890("addInputFromDependencyIfNeeded(_:functionBuilderID:)", 52, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/TensorFunction.swift", 105, 2, 790, v143, v144, *(&v144 + 1), v145, v146, a5, v148, v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v156, v157);
            }

LABEL_134:
            __break(1u);
            goto LABEL_135;
          }
        }

        MEMORY[0x25F876F40](v88);
        if (*((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v89 = a4[5];
        if (v89 >> 62)
        {
          v90 = sub_25BCB749C();
        }

        else
        {
          v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!__OFSUB__(v90, 1))
        {
          swift_isUniquelyReferenced_nonNull_native();
          *&v158 = a4[6];
          sub_25BAD3E08();
          a4[6] = v158;
          swift_endAccess();

          v91 = *(v13 + 152);
          v92 = *(v13 + 160);
          swift_beginAccess();
          v93 = a4[7];
          sub_25BCB617C();
          v94 = swift_isUniquelyReferenced_nonNull_native();
          a4[7] = v93;
          v95 = v12;
          if ((v94 & 1) == 0)
          {
            sub_25BAD3BC4();
            v93 = v138;
            a4[7] = v138;
          }

          v96 = *(v93 + 16);
          if (v96 >= *(v93 + 24) >> 1)
          {
            sub_25BAD3BC4();
            v93 = v139;
          }

          *(v93 + 16) = v96 + 1;
          v97 = v93 + 16 * v96;
          *(v97 + 32) = v91;
          *(v97 + 40) = v92;
          a4[7] = v93;
          swift_endAccess();
          *&v162 = 0x5F7475706E69;
          *(&v162 + 1) = 0xE600000000000000;
          *&v158 = *(a4[8] + 16);
          v98 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v98);

          v99 = v162;
          v100 = sub_25BAC44E4();
          v102 = v101;
          swift_beginAccess();
          sub_25BAD3BF4(v99, *(&v99 + 1), v100, v102, 1);
          swift_endAccess();

          v103 = *(v13 + 160);
          if ((v103 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v158, v103 == 10);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          v11 = v155;
          v12 = v95;
          goto LABEL_86;
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      if ((v19 & 1) == 0)
      {
        if (v23)
        {
          goto LABEL_62;
        }

LABEL_72:

        goto LABEL_73;
      }

      v24 = sub_25BAC4018();
      if (!v17)
      {
        if ((v23 & 1) == 0)
        {
          swift_unknownObjectRelease();

          goto LABEL_86;
        }

        goto LABEL_62;
      }

      if (v23)
      {
        goto LABEL_62;
      }

      if (v24 == v17)
      {
        goto LABEL_72;
      }

      sub_25BC49EE4(v17);
      if (!v25)
      {
        goto LABEL_139;
      }

      v26 = v25;
      v27 = sub_25BAC44E4();
      v29 = v28;
      swift_beginAccess();
      v30 = sub_25BB3ED64(v27, v29, a4[6]);
      if (v31)
      {

        MEMORY[0x25F876F40](v32);
        sub_25BAD5150(*((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_25BCB680C();
        if (__OFSUB__(sub_25BAAF54C(a4[5]), 1))
        {
          goto LABEL_136;
        }

        swift_isUniquelyReferenced_nonNull_native();
        *&v158 = a4[6];
        sub_25BAD3E08();
        a4[6] = v158;
        swift_endAccess();

        v33 = *(v13 + 152);
        v34 = *(v13 + 160);
        swift_beginAccess();
        sub_25BCB617C();
        sub_25BAFD048();
        v35 = *(a4[7] + 16);
        sub_25BAFD1A8();
        v36 = a4[7];
        *(v36 + 16) = v35 + 1;
        v37 = v36 + 16 * v35;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
        a4[7] = v36;
        swift_endAccess();
        *&v162 = 0x5F7475706E69;
        *(&v162 + 1) = 0xE600000000000000;
        *&v158 = *(a4[8] + 16);
        v38 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v38);

        v39 = v162;
        v40 = sub_25BAC44E4();
        v41 = v12;
        v43 = v42;
        swift_beginAccess();
        sub_25BAD3BF4(v39, *(&v39 + 1), v40, v43, 1);
        swift_endAccess();
        v12 = v41;

        v44 = *(v13 + 160);
        if ((v44 - 8) < 3)
        {
          swift_beginAccess();
          sub_25BAD3ECC(&v158, v44 == 10);
          swift_endAccess();
        }
      }

      else
      {
        v104 = v30;
        v105 = a4[5];
        sub_25BAB4D78(v30, (v105 & 0xC000000000000001) == 0, v105);
        if ((v105 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](v104, v105);
          swift_endAccess();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_endAccess();
        }
      }

      swift_beginAccess();
      v146 = v26;
      v106 = v26[13];
      v107 = sub_25BA9BEA0(v106);
      v154 = v106 & 0xC000000000000001;
      *&v149 = v106 & 0xFFFFFFFFFFFFFF8;
      sub_25BCB617C();
      v108 = 0;
      while (1)
      {
        if (v107 == v108)
        {

          v116 = sub_25BAC44E4();
          v118 = v117;
          swift_beginAccess();
          v119 = sub_25BB3ED64(v116, v118, v146[14]);
          if ((v120 & 1) == 0)
          {
            v134 = v119;
            v135 = v146[13];
            sub_25BAB4D78(v119, (v135 & 0xC000000000000001) == 0, v135);
            v9 = v153;
            if ((v135 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F8779B0](v134, v135);
              swift_endAccess();

              swift_unknownObjectRelease();
            }

            else
            {
              swift_endAccess();
            }

            swift_unknownObjectRelease();
            goto LABEL_114;
          }

          v154 = v12;

          MEMORY[0x25F876F40](v121);
          sub_25BAD5150(*((v146[13] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          v9 = v153;
          if (__OFSUB__(sub_25BAAF54C(v146[13]), 1))
          {
            goto LABEL_137;
          }

          swift_isUniquelyReferenced_nonNull_native();
          *&v158 = v146[14];
          sub_25BAD3E08();
          v146[14] = v158;
          swift_endAccess();

          sub_25BAD5184(v122, 0, 0, 0, &v162);
          v149 = v162;
          v144 = v163;
          v123 = v164;
          v124 = v165;
          swift_beginAccess();
          sub_25BAD562C();
          v125 = *(v146[15] + 16);
          sub_25BAD56F8(v125);
          v126 = v146[15];
          *(v126 + 16) = v125 + 1;
          v127 = v126 + 56 * v125;
          *(v127 + 32) = v149;
          *(v127 + 48) = v144;
          *(v127 + 64) = v123;
          *(v127 + 80) = v124;
          v146[15] = v126;
          swift_endAccess();
          *&v162 = 0x5F74757074756FLL;
          *(&v162 + 1) = 0xE700000000000000;
          swift_beginAccess();
          *&v158 = *(v146[16] + 16);
          v128 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v128);

          v129 = v162;
          v130 = sub_25BAC44E4();
          v132 = v131;
          swift_beginAccess();
          sub_25BAD3BF4(v129, *(&v129 + 1), v130, v132, 1);
          swift_endAccess();

          v133 = *(v13 + 160);
          if ((v133 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v158, v133 == 10);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          goto LABEL_60;
        }

        if (v154)
        {
          MEMORY[0x25F8779B0](v108, v106);
        }

        else
        {
          if (v108 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }
        }

        if (__OFADD__(v108, 1))
        {
          goto LABEL_126;
        }

        v109 = v12;
        v110 = sub_25BAC44E4();
        v112 = v111;
        if (v110 == sub_25BAC44E4() && v112 == v113)
        {
          break;
        }

        v115 = sub_25BCB789C();

        ++v108;
        v12 = v109;
        if (v115)
        {

          swift_unknownObjectRelease();
          goto LABEL_110;
        }
      }

      swift_unknownObjectRelease();

      v12 = v109;
LABEL_110:

      v9 = v153;
LABEL_114:
      v11 = v155;
LABEL_86:
      if (v12 == v11)
      {
      }
    }

    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }
}

uint64_t sub_25BAD3BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = v5[1];
  if (*(v10 + 16))
  {
    v11 = sub_25BA9266C(a3, a4);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v14 = *v6;
        if (v13 < *(*v6 + 16))
        {
          v10 = *(v14 + 16 * v13 + 32);
          sub_25BCB617C();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_6:
            v15 = v14 + 16 * v13;
            *(v15 + 32) = a1;
            *(v15 + 40) = a2;
            sub_25BCB617C();

            *v6 = v14;
            return v10;
          }

LABEL_13:
          sub_25BBF143C();
          v14 = v20;
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  if ((a5 & 1) == 0)
  {
    return 0;
  }

  sub_25BCB617C();
  sub_25BAD3D60();
  v16 = *(*v6 + 16);
  sub_25BAD3DB8();
  v17 = *v6;
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *v6 = v17;
  swift_isUniquelyReferenced_nonNull_native();
  v21 = v6[1];
  sub_25BAD3E08();
  v10 = 0;
  v6[1] = v21;
  return v10;
}

void sub_25BAD3D60()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_62();
    sub_25BAB1E60();
    *v1 = v3;
  }
}

void sub_25BAD3DB8()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_35_0();
    sub_25BAB1E60();
    *v0 = v4;
  }
}

void sub_25BAD3E08()
{
  OUTLINED_FUNCTION_40_17();
  v6 = OUTLINED_FUNCTION_0_66(v4, v5);
  sub_25BA9266C(v6, v7);
  OUTLINED_FUNCTION_1_56();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
  if (OUTLINED_FUNCTION_10_33(v9))
  {
    v10 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v10, v11);
    OUTLINED_FUNCTION_4_50();
    if (!v13)
    {
      goto LABEL_12;
    }

    v3 = v12;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

BOOL sub_25BAD3ECC(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_25BCB79CC();
  v7 = a2 & 1;
  sub_25BCB7A0C();
  sub_25BCB7A3C();
  OUTLINED_FUNCTION_10_40();
  while (1)
  {
    v12 = v8 & v10;
    v13 = (v11 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      sub_25BAD41EC(v7, v12, isUniquelyReferenced_nonNull_native);
      *v3 = v17;
      goto LABEL_10;
    }

    v14 = *(*(v6 + 48) + v12) ? v11 + 1 : v11;
    if (v14 == v7 + 1)
    {
      break;
    }

    v8 = v12 + 1;
  }

  LOBYTE(v7) = *(*(v6 + 48) + v12);
LABEL_10:
  result = v13 == 0;
  *a1 = v7;
  return result;
}

uint64_t sub_25BAD3FC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  result = sub_25BCB70CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_25BCB79CC();
        sub_25BCB7A0C();
        result = sub_25BCB7A3C();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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

void sub_25BAD41EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BC42564(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25BAD3FC8(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_25BCB79CC();
      sub_25BCB7A0C();
      v13 = sub_25BCB7A3C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2))
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        if (v15 == (v5 & 1) + 1)
        {
          goto LABEL_18;
        }

        v13 = a2 + 1;
      }
    }

    sub_25BC4AA74();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_18:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25BAD43D0(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BAD4418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6970, &qword_25BCCE4A0);
  result = sub_25BCB70CC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
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

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_25BC42288(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_25BCB79BC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25BAD468C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C();
  }
}

void sub_25BAD4714()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_25BAD23EC();
  OUTLINED_FUNCTION_1_56();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F8, &unk_25BCCEC10);
  if ((OUTLINED_FUNCTION_44_13(v14) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_34();
  v15 = sub_25BAD23EC();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v0;
  if (v13)
  {
    *(*(v17 + 56) + 8 * v12) = v8;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BAD4838(v12, v6, v4, v2, v8, v17);
    OUTLINED_FUNCTION_10_16();

    sub_25BCB617C();
  }
}

uint64_t sub_25BAD4838(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_21_27(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v7[7] + 8 * result) = v12;
  v13 = v7[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v15;
  }

  return result;
}

uint64_t sub_25BAD4888(uint64_t a1, uint64_t a2)
{
  sub_25BCB7A4C();
  sub_25BAD4A64(a1, a2, v19);
  v16 = sub_25BCB7A2C();
  ObjectType = swift_getObjectType();
  sub_25BAD4CB8(ObjectType, a2);
  v5 = *(a2 + 32);
  v6 = v5(ObjectType, a2);
  sub_25BAAF54C(v6);

  v18 = MEMORY[0x277D84F90];
  sub_25BAD4D9C();
  v17 = v5(ObjectType, a2);
  result = sub_25BA9BEA0(v17);
  if (!result)
  {
LABEL_10:
    swift_unknownObjectRelease();

    return v16;
  }

  v8 = result;
  if (result >= 1)
  {
    v9 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25F8779B0](v9, v17);
      }

      else
      {
        v10 = *(v17 + 8 * v9 + 32);
      }

      v11 = *(v10 + 152);
      v12 = *(v10 + 160);
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      sub_25BCB617C();
      if (v14 >= v13 >> 1)
      {
        sub_25BAD4D9C();
      }

      ++v9;
      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
    }

    while (v8 != v9);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD4A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E40, &qword_25BCC88E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46F8, &qword_25BCBEA90);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_25BAA6F5C(&v20, &qword_27FBB4700, &qword_25BCBEA98);
    sub_25BCB70FC();

    *&v20 = 0xD00000000000002FLL;
    *(&v20 + 1) = 0x800000025BCE4850;
    swift_getObjectType();
    v7 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v7);

    MEMORY[0x25F876C90](96, 0xE100000000000000);
    v10 = v20;
    BYTE4(v19) = 9;
    sub_25BCB617C();
    sub_25BA97890("hashDescription(of:into:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/TensorFunction.swift", 105, 2, 1444, v8, v9, v10, *(&v10 + 1), v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1));
  }

  sub_25BA97060(&v20, &v10);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(&v10, v12);
  (*(v5 + 8))(a3, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(&v10);
}

void sub_25BAD4C2C(uint64_t a1)
{
  sub_25BCB625C();
  OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78();
}

void sub_25BAD4C78()
{
  OUTLINED_FUNCTION_5_59();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x25F878200](v3);
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_25BAD4CB8(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 40))(a1) + 16);

  return v2;
}

void sub_25BAD4CF4()
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
      OUTLINED_FUNCTION_2_2(v14);
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

void sub_25BAD4DE8()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_62();
    sub_25BAC5498();
    *v1 = v3;
  }
}

void sub_25BAD4E40()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_34_1();
    sub_25BAC5498();
    *v0 = v4;
  }
}

BOOL sub_25BAD4E90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, os_unfair_lock_s *))
{
  v7 = a1;
  if (qword_28154C3A0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_87(&qword_28154C3A0);
  }

  v8 = qword_28154C3A8;
  MEMORY[0x28223BE20](a1);
  v12[2] = v4;
  v12[3] = a3;

  sub_25BAD1AEC(a4, v12, v8);
  v10 = v9;

  return (*(v7 + 48) & ~v10) == 0;
}

uint64_t sub_25BAD500C(uint64_t a1)
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v1 + 48));
  sub_25BAC27B0(v1 + 56, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA0, &unk_25BCCD2A0);
  v10 = OUTLINED_FUNCTION_0_50(v2, v3, v4, v5, v6, v7, v8, v9, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0]);
  if (v10)
  {
    sub_25BA97060(&v35, v40);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_25BCB624C();
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    OUTLINED_FUNCTION_1_39(v10, v11, v12, v13, v14, v15, v16, v17, v35, v36, v37);
  }

  v18 = sub_25BAC27B0(v1 + 96, v39);
  v26 = OUTLINED_FUNCTION_0_50(v18, v19, v20, v21, v22, v23, v24, v25, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0]);
  if ((v26 & 1) == 0)
  {
    return OUTLINED_FUNCTION_1_39(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37);
  }

  sub_25BA97060(&v35, v40);
  __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_25BCB624C();
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_25BAD5158(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_25BCB67AC();
  }

  return result;
}

uint64_t sub_25BAD5184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!sub_25BAB3058())
  {
LABEL_16:
    v33 = 9;
    sub_25BA97890("init(_:operationKey:)", 21, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/TensorFunction.swift", 105, 2, 1355, v11, v28, v29, v30, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], 0x2064696C61766E49, 0xEE0074757074756FLL, __dst[2], __dst[3]);
  }

  v12 = v10;
  v13 = sub_25BAD5384();
  if (v14)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v29 = v13;
  if (a3)
  {
    v30 = a4;
  }

  else
  {
    v15 = swift_unknownObjectRetain();
    a2 = sub_25BAD4888(v15, v12);
    a3 = v16;
    v30 = v17;
  }

  sub_25BCB7A4C();
  ObjectType = swift_getObjectType();
  v19 = (*(v12 + 32))(ObjectType, v12);
  v20 = sub_25BA9BEA0(v19);
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25F8779B0](i, v19);
    }

    else
    {
      v23 = *(v19 + 8 * i + 32);
    }

    sub_25BAD5418(v23, __src, 0, 1);
  }

LABEL_13:

  memcpy(__dst, __src, sizeof(__dst));
  v24 = sub_25BCB7A2C();
  swift_unknownObjectRelease();
  v25 = *(a1 + 152);
  v26 = *(a1 + 160);
  sub_25BCB617C();

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v30;
  *(a5 + 24) = v24;
  *(a5 + 32) = v29;
  *(a5 + 40) = v25;
  *(a5 + 48) = v26;
  return result;
}

uint64_t sub_25BAD5384()
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
  v17 = v21;
  sub_25BA977E0(&v19);
  return v17;
}

void sub_25BAD5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < a4 && sub_25BAB3058())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 32))(ObjectType, v6);
    v9 = sub_25BA9BEA0(v8);
    v10 = 0;
    while (v10 != v9)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8779B0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v8 + 32 + 8 * v10);
      }

      if (__OFADD__(v10++, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      sub_25BCB7A4C();
      v13 = sub_25BAB3058();
      if (v13)
      {
        sub_25BAD4A64(v13, v14, __src);
        v15 = sub_25BAD5384();
        if (v16)
        {
          sub_25BCB79EC();
        }

        else
        {
          v17 = v15;
          sub_25BCB79EC();
          MEMORY[0x25F878200](v17);
        }

        swift_unknownObjectRelease();
      }

      v18 = *(v11 + 152);
      v19 = *(v11 + 160);
      MEMORY[0x25F878200](*(v18 + 16));
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (v18 + 32);
        do
        {
          v22 = *v21++;
          MEMORY[0x25F878200](v22);
          --v20;
        }

        while (v20);
      }

      MEMORY[0x25F878200](v19);
      memcpy(__dst, __src, sizeof(__dst));
      v23 = sub_25BCB7A2C();
      MEMORY[0x25F878200](v23);
      sub_25BAD5418(v11, a2, a3 + 1, a4);
    }

    swift_unknownObjectRelease();
  }
}

void sub_25BAD5644()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E58, &qword_25BCBBDB8);
      v10 = OUTLINED_FUNCTION_43_0(v9);
      v6 = OUTLINED_FUNCTION_3_5(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BAD5810(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for LazyTensorFunction.Key.OutputDescriptionKey);
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

uint64_t sub_25BAD5734(uint64_t a1)
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v1 + 48));
  return sub_25BCB79EC();
}

void sub_25BAD57BC(uint64_t a1)
{
  sub_25BCB625C();
  OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78();
}

char *sub_25BAD5810(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, 56 * a2);
  }

  return result;
}

uint64_t sub_25BAD5860(uint64_t a1)
{
  (*(*v1 + 160))();
  sub_25BCB625C();

  v2 = sub_25BAD593C();
  MEMORY[0x25F878200](v2);
  sub_25BAD593C();
  MEMORY[0x25F878200](v3);
  MEMORY[0x25F878200](v1[8]);
  MEMORY[0x25F878200](v1[9]);
  MEMORY[0x25F878200](v1[10]);
  MEMORY[0x25F878200](v1[11]);
  MEMORY[0x25F878200](v1[12]);
  MEMORY[0x25F878200](v1[13]);
  MEMORY[0x25F878200](v1[14]);
  return sub_25BCB79EC();
}

uint64_t sub_25BAD593C()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (v1 < 4)
  {
    OUTLINED_FUNCTION_7_24(v0);
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v3, v4, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  return *(v0 + 48);
}

uint64_t sub_25BAD5A00()
{
  result = 6579297;
  switch(*(v0 + 152))
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

uint64_t sub_25BAD5AC0()
{
  result = 0x6D756D6978616DLL;
  switch(*(v0 + 130))
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

uint64_t sub_25BAD5B28()
{
  result = 0x6C61757165;
  switch(*(v0 + 130))
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

uint64_t sub_25BAD5BD4()
{
  OUTLINED_FUNCTION_13_20();
  sub_25BCB625C();
  return sub_25BCB79EC();
}

void sub_25BAD5C34(uint64_t a1)
{
  sub_25BAD5AC0();
  sub_25BCB625C();

  sub_25BCB79EC();

  sub_25BAD4C78();
}

uint64_t sub_25BAD5CCC(uint64_t a1)
{
  sub_25BABE12C(*(v1 + 128));
  sub_25BCB625C();
}

uint64_t sub_25BAD5D58(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_25BCB625C();
}

void sub_25BAD5E88(uint64_t a1)
{
  sub_25BCB625C();
  OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78();
}

uint64_t sub_25BAD5F08()
{
  OUTLINED_FUNCTION_13_20();
  sub_25BCB625C();
  return sub_25BCB79EC();
}

uint64_t sub_25BAD5FD8(uint64_t a1)
{
  sub_25BCB625C();
  sub_25BCB7A0C();
  sub_25BCB7A0C();
  sub_25BCB7A0C();
  return sub_25BCB79EC();
}

uint64_t sub_25BAD6080(uint64_t a1)
{
  v1 = sub_25BCB5EFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BCB5EBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v9 = sub_25BCB5EEC();
  __swift_project_value_buffer(v9, qword_28154BE90);
  v10 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v11 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v10, v11, v14, "Trace Tensor Function", v12, v13, 2u);
    MEMORY[0x25F8797F0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25BAD630C()
{

  return swift_deallocClassInstance();
}

void sub_25BAD6344()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 120);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_14_36();
  sub_25BAA4930(v4, v5, v6, v7);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v8 = *(v0 + 200);
  v48[0] = v1;
  v48[1] = v2;
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  v48[2] = sub_25BAD680C(v3);
  v48[10] = v8;
  sub_25BAD6F54(v48, v39);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v34 = *(v0 + 40);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v35 = *(v0 + 64);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v36 = *(v0 + 80);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v37 = *(v0 + 128);
  OUTLINED_FUNCTION_14_36();
  sub_25BAA4930(v11, v12, v13, v14);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v41 = v35;
  v40 = v34;
  v44 = v10;
  v45 = v9;
  v43 = v37;
  v42 = v36;
  v46 = v15;
  v47 = v16;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  if (sub_25BA9BEA0(*(v0 + 216)))
  {
    v17 = *(v0 + 216);
    v18 = sub_25BA9BEA0(v17);
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 == v19)
      {

        sub_25BAD6FB0(v39, v38);
        OUTLINED_FUNCTION_14_36();
        sub_25BAA4930(v29, v30, v31, v32);
        sub_25BC03168();
        sub_25BAA6F5C(v38, &qword_27FBB6618, &qword_25BCCB668);
        sub_25BA9AC78(v39);
        sub_25BAD700C(v48);
        goto LABEL_22;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_25BAD6344();
      v22 = v21;

      v23 = *(v22 + 16);
      v24 = *(v20 + 16);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v20 + 24) >> 1)
      {
        sub_25BAFD704();
        v20 = v25;
      }

      if (*(v22 + 16))
      {
        if ((*(v20 + 24) >> 1) - *(v20 + 16) < v23)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v26 = *(v20 + 16);
          v27 = __OFADD__(v26, v23);
          v28 = v26 + v23;
          if (v27)
          {
            goto LABEL_28;
          }

          *(v20 + 16) = v28;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_26;
        }
      }

      ++v19;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3998, &unk_25BCC5B70);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_25BCBAE50;
    sub_25BAD6FB0(v39, v33 + 32);
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BA9AC78(v39);
    sub_25BAD700C(v48);
LABEL_22:
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BAD680C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25BAD68EC();
  result = MEMORY[0x25F877220](v2, &type metadata for LazyTensorFunction.Key.OutputDescriptionKey, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 56)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v11[0] = *(a1 + i);
    v11[1] = v8;
    v11[2] = *(a1 + i + 32);
    v12 = *(a1 + i + 48);
    ++v5;
    sub_25BAD6940(v11, &v9);
    sub_25BAD699C(&v9, v11);
  }

  __break(1u);
  return result;
}

unint64_t sub_25BAD68EC()
{
  result = qword_28154EB28[0];
  if (!qword_28154EB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154EB28);
  }

  return result;
}

uint64_t sub_25BAD699C(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  v5 = a2[3];
  v4 = a2[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *v2;
  sub_25BCB79CC();
  v10 = v3[5];
  v11 = *(v3 + 48);
  v48 = v7;
  v50 = v8;
  sub_25BAD6C2C(v52, v6, v7);
  MEMORY[0x25F878200](v5);
  v49 = v4;
  MEMORY[0x25F878200](v4);
  sub_25BAD4C78();
  MEMORY[0x25F878200](v11);
  v12 = sub_25BCB7A3C();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *v46;
    sub_25BAD6940(v3, v52);
    sub_25BAD6CC4(v3, v14, isUniquelyReferenced_nonNull_native);
    *v46 = v51;
    v39 = *(v3 + 1);
    *a1 = *v3;
    *(a1 + 16) = v39;
    *(a1 + 32) = *(v3 + 2);
    *(a1 + 48) = *(v3 + 48);
    return 1;
  }

  v15 = ~v13;
  v45 = v3;
  v16 = *(v9 + 48);
  v17 = (v10 + 32);
  v18 = v48;
  v19 = v49;
  while (1)
  {
    v20 = (v16 + 56 * v14);
    if (*(v20 + 48) != v11)
    {
      goto LABEL_27;
    }

    v21 = v20[5];
    v22 = *(v21 + 16);
    if (v22 != *(v10 + 16))
    {
      goto LABEL_27;
    }

    v24 = *v20;
    result = v20[1];
    v25 = v20[2];
    v26 = v20[3];
    v27 = !v22 || v21 == v10;
    v28 = v20[4];
    if (!v27)
    {
      break;
    }

LABEL_13:
    if (v28 == v19 && v26 == v5 && v24 == v6 && *(result + 16) == *(v18 + 16) && v25 == v50)
    {
      v34 = v5;
      v35 = v6;
      v36 = v17;
      v37 = sub_25BAD916C(result, v18);
      v17 = v36;
      v6 = v35;
      v5 = v34;
      v3 = v45;
      v18 = v48;
      v19 = v49;
      if (v37)
      {
        sub_25BC4352C(v45);
        v40 = *(v9 + 48) + 56 * v14;
        v41 = *(v40 + 8);
        v42 = *(v40 + 32);
        v43 = *(v40 + 40);
        v44 = *(v40 + 48);
        *a1 = *v40;
        *(a1 + 8) = v41;
        *(a1 + 16) = *(v40 + 16);
        *(a1 + 32) = v42;
        *(a1 + 40) = v43;
        *(a1 + 48) = v44;

        sub_25BCB617C();
        return 0;
      }
    }

LABEL_27:
    v14 = (v14 + 1) & v15;
    if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v29 = (v21 + 32);
  v30 = v17;
  while (v22)
  {
    if (*v29 != *v30)
    {
      goto LABEL_27;
    }

    ++v29;
    ++v30;
    if (!--v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD6C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x25F878200](a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a3 + 32;
    do
    {
      v8 = (v7 + 16 * v6);
      v9 = *v8;
      v10 = v8[8];
      MEMORY[0x25F878200](*(*v8 + 16));
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = (v9 + 32);
        do
        {
          v13 = *v12++;
          MEMORY[0x25F878200](v13);
          --v11;
        }

        while (v11);
      }

      ++v6;
      result = MEMORY[0x25F878200](v10);
    }

    while (v6 != v5);
  }

  return result;
}

void sub_25BAD6CC4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BC427BC(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_25BC4ABEC();
        goto LABEL_35;
      }

      sub_25BC42EFC(v7 + 1);
    }

    v10 = *(result + 24);
    v9 = *(result + 32);
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *v4;
    sub_25BCB79CC();
    v15 = *(result + 40);
    v16 = *(result + 48);
    v50 = v12;
    v51 = v11;
    v52 = v13;
    sub_25BAD6C2C(v53, v11, v12);
    MEMORY[0x25F878200](v10);
    MEMORY[0x25F878200](v9);
    sub_25BAD4C78();
    MEMORY[0x25F878200](v16);
    v17 = sub_25BCB7A3C();
    v18 = v14 + 56;
    v19 = -1 << *(v14 + 32);
    a2 = v17 & ~v19;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v21 = *(v14 + 48);
      v22 = (v15 + 32);
      v23 = v51;
      v24 = v9;
      v25 = v50;
      v49 = v4;
      do
      {
        v26 = (v21 + 56 * a2);
        if (*(v26 + 48) == v16)
        {
          v27 = v26[5];
          v28 = *(v27 + 16);
          if (v28 == *(v15 + 16))
          {
            v30 = *v26;
            v29 = v26[1];
            v31 = v26[2];
            v32 = v26[3];
            if (v28)
            {
              v33 = v27 == v15;
            }

            else
            {
              v33 = 1;
            }

            v34 = v26[4];
            if (!v33)
            {
              v35 = (v27 + 32);
              v36 = v22;
              while (v28)
              {
                if (*v35 != *v36)
                {
                  goto LABEL_34;
                }

                ++v35;
                ++v36;
                if (!--v28)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_38;
            }

LABEL_20:
            if (v34 == v24 && v32 == v10 && v30 == v23 && *(v29 + 16) == *(v25 + 16) && v31 == v52)
            {
              v40 = v10;
              v41 = v22;
              v42 = sub_25BAD916C(v29, v25);
              v22 = v41;
              v10 = v40;
              v4 = v49;
              v25 = v50;
              v23 = v51;
              v24 = v9;
              if (v42)
              {
                goto LABEL_39;
              }
            }
          }
        }

LABEL_34:
        a2 = (a2 + 1) & v20;
      }

      while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_35:
  v43 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v44 = *(v43 + 48) + 56 * a2;
  v45 = *(result + 16);
  *v44 = *result;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(result + 32);
  *(v44 + 48) = *(result + 48);
  v46 = *(v43 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v48;
  }
}

uint64_t sub_25BAD7060()
{
  sub_25BAD7094();

  return swift_deallocClassInstance();
}

void *sub_25BAD7094()
{

  sub_25BAA6F5C(v0 + 144, &qword_27FBB6730, &qword_25BCBC4B0);

  return v0;
}

uint64_t sub_25BAD714C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25BAA51C8(a1 + 168, &v33);
  if (*(&v34 + 1))
  {
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v36;
    goto LABEL_26;
  }

  v4 = sub_25BC46FA0();
  v5 = *(a1 + 232);
  static ComputeDevice.mpsGPU.getter(&v37);
  if (*(&v38 + 1))
  {
    v30 = v38;
    v31 = v39;
    v29 = v37;
    v32 = v40;
    v6 = *(&v39 + 1) != 2 || v4 == 2;
    if ((v6 || (v4 & 1) == 0) && (v32 & ~v5) == 0)
    {
      goto LABEL_23;
    }

    sub_25BABF0A8(&v29);
  }

  else
  {
    sub_25BA9C2C8(&v37);
  }

  *(&v30 + 1) = &unk_286D4F718;
  *&v31 = &off_286D4F7D8;
  *(&v31 + 1) = 1;
  v32 = 1;
  if ((v5 & 1) == 0)
  {
    sub_25BABF0A8(&v29);
    static ComputeDevice.classicEspressoGPU.getter(&v37);
    if (*(&v38 + 1))
    {
      v30 = v38;
      v31 = v39;
      v29 = v37;
      v32 = v40;
      v7 = *(&v39 + 1) != 2 || v4 == 2;
      if ((v7 || (v4 & 1) == 0) && (v32 & ~v5) == 0)
      {
        goto LABEL_23;
      }

      sub_25BABF0A8(&v29);
    }

    else
    {
      sub_25BA9C2C8(&v37);
    }

    *(&v30 + 1) = &unk_286D4F6F8;
    *&v31 = &off_286D4F798;
    *(&v31 + 1) = 1;
    v32 = sub_25BC177D8(1);
    if ((v32 & ~v5) != 0)
    {
      sub_25BABF0A8(&v29);
      if (v4 == 2)
      {
        if (qword_27FBB3390 != -1)
        {
          swift_once();
        }

        v12 = sub_25BCB5F6C();
        __swift_project_value_buffer(v12, qword_27FBDB4C0);
        v13 = sub_25BCB5F4C();
        v14 = sub_25BCB6CBC();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_43;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25BA90000, v13, v14, "Failed to find compatible compute device for network, fallbacking back to CPU.", v15, 2u);
      }

      else
      {
        if (qword_27FBB3390 != -1)
        {
          swift_once();
        }

        v16 = sub_25BCB5F6C();
        __swift_project_value_buffer(v16, qword_27FBDB4C0);
        v13 = sub_25BCB5F4C();
        v17 = sub_25BCB6CBC();
        if (!os_log_type_enabled(v13, v17))
        {
          goto LABEL_43;
        }

        v15 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v37 = v18;
        *v15 = 136315138;
        if (v4)
        {
          v19 = 0x656C676E6973;
        }

        else
        {
          v19 = 1718378856;
        }

        if (v4)
        {
          v20 = 0xE600000000000000;
        }

        else
        {
          v20 = 0xE400000000000000;
        }

        v21 = sub_25BB72474(v19, v20, &v37);

        *(v15 + 4) = v21;
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x25F8797F0](v18, -1, -1);
      }

      MEMORY[0x25F8797F0](v15, -1, -1);
LABEL_43:

      if (qword_28154E200 != -1)
      {
        swift_once();
      }

      v22 = qword_2815573E8;
      v23 = unk_2815573F0;
      v24 = __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
      v25 = MEMORY[0x28223BE20](v24);
      v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27, v25);
      sub_25BC16FAC(1, v27, v22, v23, &v37);
      goto LABEL_24;
    }
  }

LABEL_23:
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
LABEL_24:
  if (*(&v34 + 1))
  {
    sub_25BA9C2C8(&v33);
  }

LABEL_26:
  v8 = sub_25BAD761C(&v37);
  v10 = v9;
  result = sub_25BABF0A8(&v37);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_25BAD761C(uint64_t a1)
{
  v2 = v1;
  sub_25BAC27B0(a1, v24);
  v4 = v25;
  v5 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  swift_beginAccess();
  v9 = sub_25BAD7914(v6, v8, *(v2 + 16));

  if (v9)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_25BAC27B0(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if (swift_dynamicCast())
    {
      type metadata accessor for MPSGraphBackend();
      swift_allocObject();
      sub_25BBA7A28();
      v10 = OUTLINED_FUNCTION_14_43();
      v11(v10);
      OUTLINED_FUNCTION_23_34();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_48_20();
      v13 = &off_286D4D020;
    }

    else if (swift_dynamicCast())
    {
      type metadata accessor for MILEspressoBackend();
      swift_allocObject();
      sub_25BBB34A0();
      v14 = OUTLINED_FUNCTION_14_43();
      v15(v14);
      OUTLINED_FUNCTION_23_34();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_48_20();
      v13 = &off_286D4D7C8;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_25BABEF40(a1, v21);
        BYTE4(v22) = 2;
        sub_25BA97890("lazyTensorBackend(for:)", 23, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/ExecutionContext.swift", 106, 2, 72, v19, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v22, v23[0], v23[1], v23[2], v23[3]);
      }

      type metadata accessor for BNNSBackend();
      swift_allocObject();
      v16 = OUTLINED_FUNCTION_14_43();
      v17(v16);
      OUTLINED_FUNCTION_23_34();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_48_20();
      v13 = &off_286D485A0;
    }

    sub_25BC7475C(0, a1, v8, v12, &v20, v13);
    *(v2 + 16) = v20;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return OUTLINED_FUNCTION_15_29();
}

uint64_t sub_25BAD78C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25BA9266C(a1, a2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_15();
  return swift_unknownObjectRetain();
}

void sub_25BAD7934(uint64_t *a1)
{
  v2 = a1[11];
  v68 = v2;
  v69 = a1;
  v71 = sub_25BA9BEA0(v2);
  if (!v71)
  {
    v6 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
LABEL_33:
    v34 = sub_25BAAF54C(v2);
    if (v30 == v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      v75 = sub_25BCB614C();
      v35 = sub_25BAD8178(v6);

      v74 = v35;
      sub_25BAD8324(v36);
    }

    else
    {
      v37 = v6[2];
      v38 = MEMORY[0x277D84F90];
      if (v37)
      {
        v74 = MEMORY[0x277D84F90];
        sub_25BB004E4();
        v38 = v74;
        v39 = v6 + 5;
        do
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          v74 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          v34 = sub_25BCB617C();
          if (v43 >= v42 >> 1)
          {
            sub_25BB004E4();
            v38 = v74;
          }

          *(v38 + 16) = v43 + 1;
          v44 = v38 + 16 * v43;
          *(v44 + 32) = v41;
          *(v44 + 40) = v40;
          v39 += 3;
          --v37;
        }

        while (v37);
        v2 = v68;
      }

      MEMORY[0x28223BE20](v34);
      v63 = v69;
      v45 = sub_25BBFC394(sub_25BBB3C40, v62, v2);

      sub_25BBB3BEC();
      v64 = swift_allocError();
      v47 = v46;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_25BCB70FC();

      v74 = 0xD00000000000001FLL;
      v75 = 0x800000025BCDF510;
      v72 = 8236;
      v73 = 0xE200000000000000;
      MEMORY[0x28223BE20](v48);
      v63 = &v72;
      v49 = sub_25BBB38C4(0x7FFFFFFFFFFFFFFFLL, 1, sub_25BADA100, v62, v45);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
      v51 = MEMORY[0x25F876F80](v49, v50);
      v53 = v52;

      MEMORY[0x25F876C90](v51, v53);

      v54 = MEMORY[0x25F876C90](0x6365722074756220, 0xEE00206465766965);
      v72 = 8236;
      v73 = 0xE200000000000000;
      MEMORY[0x28223BE20](v54);
      v63 = &v72;
      sub_25BBB38C4(0x7FFFFFFFFFFFFFFFLL, 1, sub_25BBB3C80, v62, v38);
      v55 = MEMORY[0x25F876F80]();
      v57 = v56;

      MEMORY[0x25F876C90](v55, v57);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v58 = v75;
      *v47 = v74;
      *(v47 + 8) = v58;
      *(v47 + 84) = 5;
      swift_willThrow();
    }

    return;
  }

  v3 = 0;
  v4 = a1[13];
  v5 = a1[14];
  v70 = v2 & 0xC000000000000001;
  v67 = v2 & 0xFFFFFFFFFFFFFF8;
  v66 = v4;
  v65 = v4 + 32;
  v6 = MEMORY[0x277D84F90];
  v78 = v5;
  while (1)
  {
    if (v70)
    {
      v7 = MEMORY[0x25F8779B0](v3, v2);
    }

    else
    {
      if (v3 >= *(v67 + 16))
      {
        goto LABEL_44;
      }

      v7 = *(v2 + 8 * v3 + 32);
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v9 = sub_25BAC44E4();
    if (!*(v5 + 16))
    {

LABEL_14:
      v19 = v69[17];
      v18 = v69[18];
      v20 = sub_25BAC44E4();
      if (*(v18 + 16))
      {
        v22 = sub_25BA9266C(v20, v21);
        v24 = v23;

        if (v24)
        {
          v25 = *(*(v18 + 56) + 8 * v22);
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          if (v25 >= *(v19 + 16))
          {
            goto LABEL_48;
          }

          v26 = v19 + 16 * v25;
          v17 = *(v26 + 32);
          v16 = *(v26 + 40);
          sub_25BCB617C();
          goto LABEL_21;
        }
      }

      else
      {
      }

      v17 = sub_25BAC44E4();
      v16 = v27;
LABEL_21:
      v2 = v68;
      goto LABEL_22;
    }

    v11 = sub_25BA9266C(v9, v10);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

    v14 = *(*(v78 + 56) + 8 * v11);
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (v14 >= *(v66 + 16))
    {
      goto LABEL_46;
    }

    v15 = (v65 + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_25BCB617C();
LABEL_22:

    v28 = sub_25BA928B4();
    [v28 lock];

    swift_beginAccess();
    sub_25BA9323C(v7 + 40, &v74);
    if (v77 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v76);
    }

    else
    {
      if (v77 != 2)
      {
        sub_25BA9778C(&v74);
        [*(v7 + 224) unlock];

        sub_25BBB3BEC();
        swift_allocError();
        v60 = v59;
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_25BCB70FC();

        v74 = 0xD00000000000001FLL;
        v75 = 0x800000025BCDF4D0;
        MEMORY[0x25F876C90](v17, v16);

        MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCDF4F0);
        v61 = v75;
        *v60 = v74;
        *(v60 + 8) = v61;
        *(v60 + 84) = 5;
        swift_willThrow();

        return;
      }

      sub_25BA9778C(&v74);
    }

    [*(v7 + 224) unlock];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAD80BC();
      v6 = v32;
    }

    v29 = v6[2];
    v30 = v29 + 1;
    if (v29 >= v6[3] >> 1)
    {
      sub_25BAD80BC();
      v6 = v33;
    }

    v6[2] = v30;
    v31 = &v6[3 * v29];
    v31[4] = v17;
    v31[5] = v16;
    v31[6] = v7;
    ++v3;
    v5 = v78;
    if (v8 == v71)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_25BAD80BC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E0, &qword_25BCBB888);
    OUTLINED_FUNCTION_17(v8);
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

uint64_t OUTLINED_FUNCTION_181_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25BCB6F5C();
}

void OUTLINED_FUNCTION_181_1(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 6;
  *(v1 + 96) = v2;
}

uint64_t OUTLINED_FUNCTION_158(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{

  return sub_25BBA291C(a1, a2, a3, a4, a5, v10, v9, a8, a9);
}

__n128 OUTLINED_FUNCTION_158_0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  result = *(v1 + 184);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25BAD8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BAD85B0(a1);
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 24))(a2, a3, ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_25BAD8524(void (*a1)(uint64_t *__return_ptr), uint64_t a2)
{
  sub_25BAA3234();
  a1(&v6);
  if (!v2)
  {
    a2 = v6;
  }

  sub_25BAA3258();
  return a2;
}

uint64_t sub_25BAD85B0(uint64_t a1)
{
  v8[2] = *(v1 + 16);
  v8[3] = a1;
  v3 = sub_25BAD8524(sub_25BAD8508, v8);
  if (v3)
  {
    return v3;
  }

  type metadata accessor for EspressoV1Executor();
  sub_25BAD6FB0(a1, v9);
  sub_25BB6FC6C();
  v4 = v5;
  sub_25BAD6F54(a1, v9);

  sub_25BBC8BC4(v6, &off_286D4B000, v9);
  return v4;
}

uint64_t sub_25BAD8678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_25BAD885C(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, Strong != v9))
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v12 = v11;

        if (v9 == v12)
        {
          swift_weakLoadStrong();
          swift_weakAssign();
        }
      }

      if (swift_weakLoadStrong())
      {
        swift_weakLoadStrong();
        swift_weakAssign();
      }

      if (swift_weakLoadStrong())
      {
        swift_weakLoadStrong();
        swift_weakAssign();
      }

      swift_weakAssign();
      swift_weakLoadStrong();
      swift_weakAssign();

      if (swift_weakLoadStrong())
      {
        swift_weakAssign();
      }

      swift_weakAssign();
    }

    v14 = *(v9 + 104);
    swift_unknownObjectRetain();

    *a3 = v14;
  }

  else
  {
    result = swift_endAccess();
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

unint64_t sub_25BAD885C(uint64_t *a1)
{
  sub_25BCB79CC();
  sub_25BAD88C8(v4);
  v2 = sub_25BCB7A3C();

  return sub_25BAD8E54(a1, v2);
}

uint64_t sub_25BAD88C8(void *a1)
{
  v2 = v1;
  sub_25BAD89FC();
  sub_25BAD8A84();
  sub_25BAD8B30(a1, *(v2 + 16));
  sub_25BAA4930(v2 + 24, v7, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v8)
  {
    v4 = v9;
    if (!v9 || v9 == 2 || v9 == 1)
    {
      sub_25BCB625C();
    }

    else
    {
      v5 = [swift_unknownObjectRetain() registryID];
      MEMORY[0x25F878240](v5);
      sub_25BB7304C(v4);
    }

    sub_25BABF0A8(v7);
  }

  else
  {
    sub_25BAA6F5C(v7, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  return sub_25BAD8D2C(a1, *(v2 + 80));
}

void sub_25BAD89FC()
{
  OUTLINED_FUNCTION_5_59();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = (v3 + 16 * v2);
      v5 = *v4;
      v6 = v4[8];
      MEMORY[0x25F878200](*(*v4 + 16));
      v7 = *(v5 + 16);
      if (v7)
      {
        v8 = (v5 + 32);
        do
        {
          v9 = *v8++;
          MEMORY[0x25F878200](v9);
          --v7;
        }

        while (v7);
      }

      ++v2;
      MEMORY[0x25F878200](v6);
    }

    while (v2 != v0);
  }
}

void sub_25BAD8A84()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_59();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = (v3 + 24 * v2);
      v5 = v4[1];
      MEMORY[0x25F878200](*v4);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 32;
        do
        {
          v9 = (v8 + 16 * v7);
          v10 = *v9;
          v11 = v9[8];
          MEMORY[0x25F878200](*(*v9 + 16));
          v12 = *(v10 + 16);
          if (v12)
          {
            v13 = (v10 + 32);
            do
            {
              v14 = *v13++;
              MEMORY[0x25F878200](v14);
              --v12;
            }

            while (v12);
          }

          ++v7;
          MEMORY[0x25F878200](v11);
        }

        while (v7 != v6);
      }

      ++v2;
    }

    while (v2 != v0);
  }

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAD8B30(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_25BCB7A3C();
  v29 = a2;
  result = 0;
  v4 = 0;
  v7 = *(a2 + 56);
  v6 = a2 + 56;
  v5 = v7;
  v8 = 1 << *(v6 - 24);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v28 = v11;
  if ((v9 & v5) != 0)
  {
    do
    {
      v34 = result;
LABEL_9:
      v13 = *(v29 + 48) + 56 * (__clz(__rbit64(v10)) | (v4 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v30 = *(v13 + 24);
      v31 = *(v13 + 32);
      v32 = *(v13 + 40);
      v33 = *(v13 + 48);
      sub_25BCB79CC();
      MEMORY[0x25F878200](v15);
      v16 = *(v14 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = v14 + 32;
        do
        {
          v19 = (v18 + 16 * v17);
          v20 = *v19;
          v21 = v19[8];
          MEMORY[0x25F878200](*(*v19 + 16));
          v22 = *(v20 + 16);
          if (v22)
          {
            v23 = (v20 + 32);
            do
            {
              v24 = *v23++;
              MEMORY[0x25F878200](v24);
              --v22;
            }

            while (v22);
          }

          ++v17;
          MEMORY[0x25F878200](v21);
        }

        while (v17 != v16);
      }

      MEMORY[0x25F878200](v30);
      MEMORY[0x25F878200](v31);
      v25 = *(v32 + 16);
      MEMORY[0x25F878200](v25);
      if (v25)
      {
        v26 = (v32 + 32);
        do
        {
          v27 = *v26++;
          MEMORY[0x25F878200](v27);
          --v25;
        }

        while (v25);
      }

      v10 &= v10 - 1;
      MEMORY[0x25F878200](v33);
      result = sub_25BCB7A3C() ^ v34;
      v11 = v28;
    }

    while (v10);
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return MEMORY[0x25F878200](result);
    }

    v10 = *(v6 + 8 * v12);
    ++v4;
    if (v10)
    {
      v34 = result;
      v4 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD8D2C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_25BCB7A3C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return MEMORY[0x25F878200](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      do
      {
LABEL_9:
        v8 &= v8 - 1;
        sub_25BCB79CC();
        sub_25BCB7A0C();
        result = sub_25BCB7A3C();
        v4 ^= result;
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25BAD8E54(uint64_t *a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_25BAD6F54(*(v2 + 48) + 88 * i, v8);
    v6 = sub_25BAD8F18(v8, a1);
    sub_25BAD700C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

BOOL sub_25BAD8F18(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (*(v6 + 16) != *(v7 + 16))
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if (*(v8 + 16) != *(v9 + 16) || (sub_25BAD916C(v4, v5) & 1) == 0 || (sub_25BAD922C(v8, v9) & 1) == 0 || (sub_25BAD9550(v6, v7) & 1) == 0)
  {
    return 0;
  }

  sub_25BAA4930((a1 + 3), &v40, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v41 + 1))
  {
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v48 = v43;
    sub_25BAA4930((a2 + 3), &v36, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v37 + 1))
    {
      v40 = v36;
      v41 = v37;
      v42 = v38;
      LODWORD(v43) = v39;
      if (sub_25BAD1FB0(*(&v47 + 1), *(&v38 + 1)))
      {
        v10 = *(&v46 + 1);
        v11 = v47;
        __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
        v12 = (*(v11 + 24))(&v40, v10, v11);
        sub_25BABF0A8(&v40);
        sub_25BABF0A8(&v45);
        if ((v12 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        sub_25BCB617C();
        v30 = OUTLINED_FUNCTION_24_1();
        v32 = *(sub_25BAD95F0(v30, v31) + 16);

        return v32 == 0;
      }

      sub_25BABF0A8(&v40);
      sub_25BABF0A8(&v45);
      return 0;
    }

    sub_25BABF0A8(&v45);
    v13 = &v36;
  }

  else
  {
    v13 = &v40;
  }

  sub_25BAA6F5C(v13, &qword_27FBB6730, &qword_25BCBC4B0);
  v14 = sub_25BAA4930((a1 + 3), &v45, &qword_27FBB6730, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_47_18(v14, v15, v16, v17, v18, v19, v20, v21, v34, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44);
  if (!v8)
  {
    v22 = sub_25BAA4930((a2 + 3), &v45, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_47_18(v22, v23, v24, v25, v26, v27, v28, v29, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_25BAD916C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_6_8();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = (v4 + 16 * v3);
    v6 = *v5;
    v7 = (a2 + 32 + 16 * v3);
    v8 = *v7;
    v9 = *(*v5 + 16);
    if (v9 != *(*v7 + 16))
    {
      return OUTLINED_FUNCTION_6_8();
    }

    v10 = v5[8];
    v11 = v7[8];
    if (v9)
    {
      v12 = v6 == v8;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = (v6 + 32);
      v14 = (v8 + 32);
      while (v9)
      {
        result = *v14;
        if (*v13 != *v14)
        {
          return OUTLINED_FUNCTION_6_8();
        }

        ++v13;
        ++v14;
        if (!--v9)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (v10 != v11)
    {
      return OUTLINED_FUNCTION_6_8();
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD922C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v50 = v7;
  v51 = result + 56;
  if (v6)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v6));
      v48 = (v6 - 1) & v6;
LABEL_13:
      v49 = result;
      v12 = *(result + 48) + 56 * (v9 | (v2 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v52 = *(v12 + 24);
      v53 = a2;
      v16 = *(v12 + 32);
      v17 = *(v12 + 40);
      v18 = *(v12 + 48);
      sub_25BCB79CC();
      sub_25BAD6C2C(v54, v13, v14);
      MEMORY[0x25F878200](v52);
      MEMORY[0x25F878200](v16);
      sub_25BAD4C78();
      MEMORY[0x25F878200](v18);
      v19 = sub_25BCB7A3C();
      a2 = v53;
      v20 = -1 << *(v53 + 32);
      v21 = v19 & ~v20;
      if ((*(v8 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = *(v53 + 48) + 56 * v21;
          if (*(v23 + 48) == v18)
          {
            v24 = *(v23 + 40);
            v25 = *(v24 + 16);
            if (v25 == *(v17 + 16))
            {
              v27 = *v23;
              v26 = *(v23 + 8);
              v28 = *(v23 + 16);
              v29 = *(v23 + 24);
              if (v25)
              {
                v30 = v24 == v17;
              }

              else
              {
                v30 = 1;
              }

              result = *(v23 + 32);
              if (!v30)
              {
                v31 = (v24 + 32);
                v32 = (v17 + 32);
                while (v25)
                {
                  if (*v31 != *v32)
                  {
                    goto LABEL_37;
                  }

                  ++v31;
                  ++v32;
                  if (!--v25)
                  {
                    goto LABEL_25;
                  }
                }

                __break(1u);
LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_25:
              v33 = result == v16 && v29 == v52;
              if (v33 && v27 == v13)
              {
                v35 = *(v26 + 16);
                if (v35 == *(v14 + 16) && v28 == v15)
                {
                  break;
                }
              }
            }
          }

LABEL_37:
          v21 = (v21 + 1) & v22;
          if (((*(v8 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            return 0;
          }
        }

        if (v35 && v26 != v14)
        {
          v37 = 0;
          v38 = v26 + 32;
          while (v37 != v35)
          {
            v39 = (v38 + 16 * v37);
            v40 = *v39;
            v41 = (v14 + 32 + 16 * v37);
            v42 = *v41;
            v43 = *(*v39 + 16);
            if (v43 != *(*v41 + 16))
            {
              goto LABEL_37;
            }

            v44 = v39[8];
            result = v41[8];
            if (v43)
            {
              v45 = v40 == v42;
            }

            else
            {
              v45 = 1;
            }

            if (!v45)
            {
              v46 = (v40 + 32);
              v47 = (v42 + 32);
              while (v43)
              {
                if (*v46 != *v47)
                {
                  goto LABEL_37;
                }

                ++v46;
                ++v47;
                if (!--v43)
                {
                  goto LABEL_52;
                }
              }

              goto LABEL_59;
            }

LABEL_52:
            if (v44 != result)
            {
              goto LABEL_37;
            }

            if (++v37 == v35)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_61;
        }

LABEL_54:
        result = v49;
        v7 = v50;
        v3 = v51;
        v6 = v48;
        if (v48)
        {
          continue;
        }

        break;
      }

      return 0;
    }
  }

  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v48 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_25BAD9550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 2) == *(i - 2); i += 3)
    {
      v5 = *(v3 - 1);
      v6 = *(i - 1);
      v7 = *(v5 + 16) == *(v6 + 16) && *v3 == *i;
      if (!v7 || (sub_25BAD916C(v5, v6) & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_25BAD95F0(size_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_25BC4DA80(a1);
    return a2;
  }

  else
  {

    return sub_25BAD9644(a1, a2);
  }
}

uint64_t sub_25BAD9644(size_t a1, uint64_t a2)
{
  v3 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v39 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v43 = ~v8;
    v44 = a1;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v13 = 1;
    v45 = a1 + 56;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(a1 + 48) + (v16 | (v14 << 6)));
      sub_25BCB79CC();
      sub_25BCB7A0C();
      v17 = sub_25BCB7A3C();
      v18 = -1 << *(v3 + 32);
      v19 = ~v18;
      while (1)
      {
        v4 = (v17 & v19);
        v7 = (v17 & v19) >> 6;
        v6 = 1 << (v17 & v19);
        if ((v6 & *(v12 + 8 * v7)) == 0)
        {
          v4 = v14;
          a1 = v44;
          v6 = v45;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (v2 == *(v4 + *(v3 + 48)))
        {
          break;
        }

        v17 = v4 + 1;
      }

      v48 = v43;
      v49 = v14;
      v50 = v10;
      v47[0] = v44;
      v47[1] = v45;
      v13 = (63 - v18) >> 6;
      v2 = 8 * v13;
      v20 = sub_25BCB617C();
      if (v13 > 0x80)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v40 = v13;
        v41 = &v39;
        MEMORY[0x28223BE20](v20);
        v13 = &v39 - v21;
        memcpy(&v39 - v21, (v3 + 56), v2);
        v22 = *(v3 + 16);
        *(v13 + 8 * v7) &= ~v6;
        v23 = v22 - 1;
        v6 = 1;
        v2 = v44;
        v7 = v45;
        while (1)
        {
          v42 = v23;
LABEL_20:
          if (!v10)
          {
            break;
          }

LABEL_25:
          v25 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v26 = *(*(v2 + 48) + (v25 | (v14 << 6)));
          sub_25BCB79CC();
          v4 = v46;
          sub_25BCB7A0C();
          v27 = sub_25BCB7A3C();
          v28 = ~(-1 << *(v3 + 32));
          do
          {
            v29 = v27 & v28;
            v30 = (v27 & v28) >> 6;
            v31 = 1 << (v27 & v28);
            if ((v31 & *(v12 + 8 * v30)) == 0)
            {
              v7 = v45;
              goto LABEL_20;
            }

            v27 = v29 + 1;
          }

          while (v26 != *(*(v3 + 48) + v29));
          v32 = *(v13 + 8 * v30);
          *(v13 + 8 * v30) = v32 & ~v31;
          v7 = v45;
          if ((v32 & v31) == 0)
          {
            goto LABEL_20;
          }

          v23 = v42 - 1;
          if (__OFSUB__(v42, 1))
          {
            __break(1u);
          }

          if (v42 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_35;
          }
        }

        while (1)
        {
          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v24 >= v11)
          {
            v3 = sub_25BAD9A80(v13, v40, v42, v3);
            goto LABEL_35;
          }

          v10 = *(v7 + 8 * v24);
          ++v14;
          if (v10)
          {
            v14 = v24;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:

        v42 = v2;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v2 = v42;
      }

      v35 = swift_slowAlloc();
      v36 = v39;
      v37 = sub_25BC4DE10(v35, v13, (v3 + 56), v13, v3, v4, v47);
      if (v36)
      {

        result = MEMORY[0x25F8797F0](v35, -1, -1);
        __break(1u);
        return result;
      }

      v38 = v37;

      MEMORY[0x25F8797F0](v35, -1, -1);
      v2 = v47[0];
      v43 = v48;
      v3 = v38;
LABEL_35:
      v33 = v2;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_41;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        v15 = (v15 + 1);
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v33 = sub_25BCB617C();
    }

    sub_25BAD9A7C(v33);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v3;
}

uint64_t sub_25BAD9A80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  result = sub_25BCB70DC();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25BAD9C8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5050, &unk_25BCC7160);
  sub_25BCB6D0C();
  return v3;
}

void sub_25BAD9D50(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 48;
  v19 = result + 48;
  v20 = MEMORY[0x277D84F90];
  v22 = v4;
LABEL_2:
  for (i = (v5 + 24 * v3); ; i += 3)
  {
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      v17 = sub_25BCB614C();
      v24 = v20;
      v25 = v17;
      sub_25BAD8324(v17);

      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    v21 = v3 + 1;
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(i - 2);
    sub_25BCB617C();

    v10 = sub_25BAD9F58();
    v24 = v9;
    v25 = v7;
    MEMORY[0x28223BE20](v10);
    v18[2] = &v24;
    v11 = sub_25BAD9FE0(sub_25BADA100, v18, v10);

    if (v11)
    {
      v12 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_12_22(*(v12 + 16));
        v12 = v26;
      }

      v5 = v19;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25BAD8238(v14 > 1, v15 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v15 + 1;
      v20 = v12;
      v16 = (v12 + 24 * v15);
      v16[4] = v9;
      v16[5] = v7;
      v16[6] = v8;
      v3 = v21;
      v4 = v22;
      goto LABEL_2;
    }

    ++v3;
    v4 = v22;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_25BAD9F58()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = [*(v0 + 80) inputNames];
    v1 = sub_25BCB673C();

    *(v0 + 96) = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

BOOL sub_25BAD9FE0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_25BCB617C();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_25BADA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C() & 1;
  }
}

uint64_t sub_25BADA120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BCB5EBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v11 = sub_25BCB5EEC();
  __swift_project_value_buffer(v11, qword_28154BEB8);
  sub_25BCB5EAC();
  v12 = sub_25BCB5EDC();
  v13 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v12, v13, v15, "Bind Inputs", "", v14, 2u);
    MEMORY[0x25F8797F0](v14, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_25BCB5F2C();
  swift_allocObject();
  v16 = sub_25BCB5F1C();
  (*(v5 + 8))(v10, v4);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v36[0] = v16;
    v45 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v36[1] = *(v2 + 136);
    v37 = v2;
    v19 = (a1 + 48);
    v20 = &off_279972000;
    while (1)
    {
      v41 = v17;
      v22 = *(v19 - 2);
      v21 = *(v19 - 1);
      v23 = *v19;
      v24 = *(*v19 + 152);
      v38 = *(*v19 + 160);

      swift_retain_n();
      sub_25BCB617C();
      v39 = v24;
      sub_25BCB617C();
      v25 = sub_25BA928B4();
      [v25 lock];

      sub_25BA92920(v23, 0, 0, &v43);
      v40 = 0;
      [*(v23 + 224) v20[151]];

      LOBYTE(v25) = sub_25BADA5F4(v22, v21, v43, v44);
      swift_unknownObjectRelease();
      v26 = v25 ^ 1 | *(v2 + 88);
      v27 = sub_25BADA8B4(v22, v21);
      if (v27)
      {
        v28 = v27;

        v29 = *(v28 + 216);
        *(v28 + 216) = v26 & 1;
        *(v28 + 217) = (*(v28 + 217) | v26 ^ v29) & 1;
      }

      else
      {
        v43 = v39;
        v42[0] = v38;
        v30 = *(v2 + 80);
        type metadata accessor for EspressoBuffer();
        v28 = swift_allocObject();
        sub_25BCB617C();
        sub_25BCB617C();
        sub_25BB71410(v22, v21, &v43, v42, 0, v26 & 1, v30);
        sub_25BB7110C(v28);
      }

      sub_25BADA93C(0);

      v31 = sub_25BA928B4();
      [v31 lock];

      v32 = v40;
      sub_25BA92920(v23, 0, 0, &v43);
      if (v32)
      {
        break;
      }

      [*(v23 + 224) unlock];

      v33 = v44;
      ObjectType = swift_getObjectType();
      sub_25BADAA40(v28, ObjectType, v33);

      swift_unknownObjectRelease();
      sub_25BCB723C();
      sub_25BCB728C();
      v20 = &off_279972000;
      sub_25BCB729C();
      sub_25BCB725C();
      v19 += 3;
      v17 = v41 - 1;
      v2 = v37;
      if (v41 == 1)
      {
        v18 = v45;
        goto LABEL_13;
      }
    }

    [*(v23 + 224) unlock];

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_25BADBBAC();

    return v18;
  }

  return result;
}

uint64_t sub_25BADA5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25BADA7FC(a3, a4);
  if (*(v4 + 64) == 1)
  {
    v9 = 1;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v9 = sub_25BB711A0(ObjectType, a4);
  }

  sub_25BADA6E4(a1, a2, &v14 + 1);
  v11 = BYTE1(v14);
  v12 = swift_getObjectType();
  (*(a4 + 8))(&v14, v12, a4);
  if (v11 == 10)
  {
    return v8 & v9 & (v14 == 10);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BADA6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 144);
  if (*(v8 + 16) && (v9 = sub_25BA9266C(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    swift_endAccess();
    v12 = *(v4 + 80);
    v13 = sub_25BCB633C();
    v14 = [v12 dataTypeForBlobWithName_];

    sub_25BC9B304(v14, v17);
    v11 = v17[0];
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + 144);
    sub_25BC1A34C();
    *(v4 + 144) = v16;
  }

  result = swift_endAccess();
  *a3 = v11;
  return result;
}

BOOL sub_25BADA7FC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    return 1;
  }

  v6 = getpagesize();
  ObjectType = swift_getObjectType();
  v8 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for AlignableTensorStorage);
  if (v8)
  {
    return *(v8 + 32) == v6;
  }

  else
  {
    v10 = swift_getObjectType();
    v11 = sub_25BC5D7D0(v10, a2);
    if (v6 == -1)
    {
      return 1;
    }

    if (v6)
    {
      return v11 % v6 == 0;
    }

    else
    {
      return v11 == 0;
    }
  }
}

uint64_t sub_25BADA8B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_25BA9266C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_25BADA93C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  v3 = result;
  if (!a1)
  {

    goto LABEL_8;
  }

  if (v3 != a1)
  {
LABEL_8:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      v6 = sub_25BC76C08();
      [v6 lock];

      if ((*(v5 + 40) & 0x8000000000000000) != 0)
      {
        swift_unknownObjectRetain();
      }

      else
      {
        sub_25BC76F00(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      [*(v5 + 48) unlock];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10();
    }

    swift_weakAssign();
  }
}

uint64_t sub_25BADAA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 217) == 1)
  {
    sub_25BB71DE4(a1);
  }

  if (*(a1 + 216))
  {

    return sub_25BADB1D0(a1, a2, a3);
  }

  else
  {

    return sub_25BADAADC(a1, a2, a3);
  }
}

uint64_t sub_25BADAADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 64))(sub_25BADADB8, a1, MEMORY[0x277D84F78] + 8, a2, a3);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  sub_25BCB63CC();
  swift_beginAccess();
  LODWORD(Strong) = espresso_network_bind_buffer();
  swift_endAccess();

  if (Strong)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDCEA0);
    type metadata accessor for EspressoBuffer();
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0x74656E206F742060, 0xEC0000006B726F77);
    BYTE4(v22) = 3;
    sub_25BCB617C();
    sub_25BA97890("bindByReference(to:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoV1Executor.swift", 118, 2, 1054, v12, 0, 0xE000000000000000, v14, v15, v16, v17, v18, v19, v20, v21, v22, 0, 0xE000000000000000, v25, v26, v27);
  }

  result = sub_25BADAE6C(a1, a2, a3);
  if (v9 != 2 || result | v8)
  {
    v13 = sub_25BB6ED50(result, v8, v9);
    BYTE4(v22) = 3;
    sub_25BA97890("bindByReference(to:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoV1Executor.swift", 118, 2, 1060, v11, v13, v10, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  }

  return result;
}

void sub_25BADAD24()
{
  OUTLINED_FUNCTION_1_32();
  sub_25BAA4554(0);
  IOSurfaceGetBaseAddress(*(v0 + 16));
  sub_25BAA4640();
  v2 = OUTLINED_FUNCTION_2_33();
  v1(v2);
  sub_25BAA46FC(0);
}

uint64_t sub_25BADADD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    result = swift_beginAccess();
    *(a3 + 48) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BADAE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v5 = sub_25BCB67DC();
  *(v5 + 16) = 10;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 32) = 0u;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong network];

  v8 = sub_25BCB63CC();
  blob_shape = espresso_network_query_blob_shape();

  if (blob_shape)
  {

    return 1;
  }

  if (!*(v5 + 16))
  {
    sub_25BCB617C();
    v8 = v5;
    goto LABEL_14;
  }

  if (v26 < 0)
  {
    goto LABEL_30;
  }

  blob_shape = sub_25BABAF60(0, v26, v5);
  v8 = v11;
  Strong = v12;
  v7 = v13;
  if (v13)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
      v14 = MEMORY[0x277D84F90];
    }

    v15 = *(v14 + 16);

    if (__OFSUB__(v7 >> 1, Strong))
    {
      goto LABEL_31;
    }

    if (v15 != (v7 >> 1) - Strong)
    {
      goto LABEL_32;
    }

    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = MEMORY[0x277D84F90];
    }

    goto LABEL_14;
  }

  while (1)
  {
    v8 = sub_25BABA62C(blob_shape, v8, Strong, v7);
    swift_unknownObjectRelease();
LABEL_14:
    v16 = *(v8 + 16);
    if (v16)
    {
      v17 = (v8 + 32);
      v18 = 1;
      while (1)
      {
        v19 = *v17++;
        blob_shape = v18 * v19;
        if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
        {
          break;
        }

        v18 = blob_shape;
        if (!--v16)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    blob_shape = 1;
LABEL_20:
    Strong = (a3 + 16);
    v7 = *(a3 + 16);
    (v7)(&v25, a2, a3);
    v20 = *(v25 + 16);
    if (!v20)
    {
      break;
    }

    v21 = 1;
    v22 = 32;
    while (1)
    {
      v23 = *(v25 + v22);
      v24 = v21 * v23;
      if ((v21 * v23) >> 64 != (v21 * v23) >> 63)
      {
        break;
      }

      v22 += 8;
      v21 *= v23;
      if (!--v20)
      {

        if (blob_shape != v24)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_unknownObjectRelease();
  }

  if (blob_shape == 1)
  {
LABEL_25:

    return 0;
  }

  else
  {
LABEL_27:
    (v7)(&v25, a2, a3);

    return v25;
  }
}

uint64_t sub_25BADB1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  v8 = *(a1 + 32);
  sub_25BCB63CC();
  swift_beginAccess();
  LODWORD(Strong) = espresso_network_bind_buffer();
  swift_endAccess();

  if (Strong)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDCEA0);
    type metadata accessor for EspressoBuffer();
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0x74656E206F742060, 0xEC0000006B726F77);
    BYTE4(v25) = 3;
    sub_25BCB617C();
    sub_25BA97890("bindByCopy(to:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoV1Executor.swift", 118, 2, 1007, v14, v15, 0, 0xE000000000000000, v17, v18, v19, v20, v21, v22, v23, v24, v25, 0, 0xE000000000000000, v28, v29);
  }

  result = sub_25BADAE6C(a1, a2, a3);
  if (v11 != 2 || result | v10)
  {
    v16 = sub_25BB6ED50(result, v10, v11);
    BYTE4(v25) = 3;
    sub_25BA97890("bindByCopy(to:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoV1Executor.swift", 118, 2, 1013, v13, v15, v16, v12, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  if ((v8 & 1) == 0)
  {
    return sub_25BADB3F4(v3, a1, a2, a3);
  }

  return result;
}

uint64_t sub_25BADB3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BADB604(v18);
  v7 = LOBYTE(v18[0]);
  (*(a4 + 8))(v18, a3, a4);
  v8 = v18[0];
  LOBYTE(v18[0]) = v7;
  LOBYTE(v17) = v8;
  if (!sub_25BADB724(v18, &v17))
  {
    return (*(a4 + 56))(sub_25BB72FA8, a2, MEMORY[0x277D84F78] + 8, a3, a4);
  }

  swift_beginAccess();
  sub_25BADB778(&v17);
  result = v17;
  v10 = *(v17 + 16);
  if (v10)
  {
    v11 = (v17 + 32);
    v12 = 1;
    while (1)
    {
      v13 = *v11++;
      v14 = v12 * v13;
      if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
      {
        break;
      }

      v12 = v14;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 1;
LABEL_9:

    if ((v7 - 1) > 0xA)
    {
      v15 = 1;
    }

    else
    {
      v15 = qword_25BCC2B60[(v7 - 1)];
    }

    if ((v14 * v15) >> 64 == (v14 * v15) >> 63)
    {
      v16 = MEMORY[0x28223BE20](result);
      return (*(a4 + 56))(sub_25BADBB84, v16);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BADB604@<X0>(char *a1@<X8>)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v2 + 208);
  switch(v5)
  {
    case 65568:
      v6 = 10;
      break;
    case 131080:
      v6 = 0;
      break;
    case 262152:
      v6 = 4;
      break;
    case 131104:
      v6 = 2;
      break;
    default:
      sub_25BCB70FC();

      MEMORY[0x25F876C90](*(v2 + 16), *(v2 + 24));
      BYTE4(v22) = 3;
      sub_25BCB617C();
      OUTLINED_FUNCTION_2_26();
      sub_25BA97890(v7, v8, v9, v10, v11, v12, 713, v13, 0xD000000000000024, 0x800000025BCDCDF0, 0xD000000000000024, 0x800000025BCDCDF0, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  *a1 = v6;
  return result;
}

BOOL sub_25BADB724(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return 0;
  }

  if (v2 == 12)
  {
    return v3 != 4;
  }

  if (v2 == 10)
  {
    return v3 != 10;
  }

  return v2 != 4 || v3 != 12;
}

uint64_t sub_25BADB778@<X0>(uint64_t *a1@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB67DC();
  *(v2 + 16) = 10;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 32) = 0u;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  OUTLINED_FUNCTION_11_3();
  sub_25BCB63CC();
  blob_shape = espresso_network_query_blob_shape();

  if (blob_shape)
  {
    sub_25BCB70FC();

    v16 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x25F876C90](v16);
    BYTE4(v33) = 3;
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890(v17, v18, v19, v20, v21, v22, 729, v23, v24, 0xD000000000000021, 0x800000025BCDCD40, 0, 0xD000000000000021, 0x800000025BCDCD40, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  }

  v5 = sub_25BABAF60(0, 0, v2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_3;
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
    goto LABEL_13;
  }

  if (v14 != (v11 >> 1) - v9)
  {
LABEL_13:
    swift_unknownObjectRelease_n();
LABEL_3:
    v12 = sub_25BABA62C(v5, v7, v9, v11);
LABEL_10:
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v12 = swift_dynamicCastClass();
  OUTLINED_FUNCTION_10();
  result = swift_unknownObjectRelease_n();
  if (!v12)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  *a1 = v12;
  return result;
}

uint64_t sub_25BADB9D4(const float *a1, uint64_t a2, char a3, double *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v24 = a4;
  v13 = sub_25BCB783C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v27 = a6;
  ObjectType = swift_getObjectType();
  (*(a8 + 16))(&v26, ObjectType, a8);
  result = v26;
  v19 = *(v26 + 16);
  if (v19)
  {
    v20 = (v26 + 32);
    v21 = 1;
    while (1)
    {
      v22 = *v20++;
      v23 = v21 * v22;
      if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
      {
        break;
      }

      v21 = v23;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
LABEL_7:

    (*(v14 + 104))(v16, *MEMORY[0x277D84660], v13);
    sub_25BAA83F4(a1, a2, &v28, v24, v25, &v27, v23);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

void sub_25BADBBAC()
{
  OUTLINED_FUNCTION_9_18();
  v21 = v0;
  v1 = sub_25BCB5EFC();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  if (qword_28154BEB0 != -1)
  {
    OUTLINED_FUNCTION_3_18(&qword_28154BEB0);
  }

  v15 = sub_25BCB5EEC();
  __swift_project_value_buffer(v15, qword_28154BEB8);
  v16 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v17 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v3 + 88))(v7, v1) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v18 = "";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v16, v17, v20, v21, v18, v19, 2u);
    OUTLINED_FUNCTION_89();
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BADBDEC()
{
  sub_25BADBF48(*(v0 + 120));
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
  *(swift_initStackObject() + 16) = v2;

  sub_25BCB617C();

  return v2;
}

void sub_25BADBF48(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 48;
  v14 = MEMORY[0x277D84F90];
  v13 = result + 48;
LABEL_2:
  v4 = v3 + 32 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v16 = v1 + 1;
    v5 = *(v4 - 8);
    v6 = *(v4 - 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v7 = sub_25BADBE78(v15, v6, v5);

    if (v7)
    {
      v8 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB1E30();
        v8 = v11;
      }

      v3 = v13;
      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 24) >> 1)
      {
        sub_25BAB1E30();
        v8 = v12;
      }

      *(v8 + 16) = v9 + 1;
      v14 = v8;
      v10 = v8 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      v1 = v16;
      goto LABEL_2;
    }

    v4 += 32;
    ++v1;
  }
}

uint64_t sub_25BADC0C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6960, &unk_25BCCE490);
  result = sub_25BCB70CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_25BCB79CC();
        sub_25BCB617C();
        sub_25BCB625C();
        result = sub_25BCB7A3C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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

void sub_25BADC2F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25BADC45C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25BADC0C0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_25BCB79CC();
      sub_25BCB625C();
      v16 = sub_25BCB7A3C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_25BCB789C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_25BC4AB28();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_25BADC45C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6960, &unk_25BCCE490);
  result = sub_25BCB70CC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_25BC42288(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
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
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_25BCB79CC();
    sub_25BCB625C();
    result = sub_25BCB7A3C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25BADC6B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BCB5EBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v11 = sub_25BCB5EEC();
  __swift_project_value_buffer(v11, qword_28154BEB8);
  sub_25BCB5EAC();
  v12 = sub_25BCB5EDC();
  v13 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v12, v13, v15, "Bind Outputs", "", v14, 2u);
    MEMORY[0x25F8797F0](v14, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_25BCB5F2C();
  swift_allocObject();
  sub_25BCB5F1C();
  (*(v5 + 8))(v10, v4);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v35 = MEMORY[0x277D84F90];
    sub_25BADCA10(0, v16, 0);
    v17 = v35;
    v18 = (a1 + 40);
    do
    {
      v19 = *v18;
      v31[0] = *(v18 - 1);
      v31[1] = v19;
      sub_25BCB617C();
      sub_25BADCAD8(v31, v2, &v32);

      v20 = v32;
      v21 = v33;
      v22 = v34;
      v35 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v34;
        v30 = v33;
        sub_25BADCA10(v23 > 1, v24 + 1, 1);
        v22 = v29;
        v21 = v30;
        v17 = v35;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 40 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      *(v25 + 56) = v22;
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *&v33 = sub_25BCB614C();
  v26 = sub_25BADD720(v17);

  v32 = v26;
  sub_25BADD880();
  v27 = v32;
  sub_25BADBBAC();

  return v27;
}