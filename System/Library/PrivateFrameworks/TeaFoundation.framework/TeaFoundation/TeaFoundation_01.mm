uint64_t sub_1BEFFBBF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ObservableProperty.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ObservableProperty.init(wrappedValue:)(a1);
  return v2;
}

uint64_t sub_1BEFFBCD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  sub_1BEFE6ADC();
  v13 = sub_1BEFEEDF0();

  if (!v13)
  {
    sub_1BF17B49C();
    __break(1u);
    JUMPOUT(0x1BEFFC974);
  }

  v14 = sub_1BEFF3AB8(v13, a4);
  v88 = a4;
  v15 = a5;
  switch(*(a2 + 40))
  {
    case 1:
      v96 = a5;
      v97 = a6;
      v98 = a8;
      v57 = sub_1BEFF3BF4(&v96, 0);
      if (v57)
      {
        v29 = (*(*v57 + 80))(v57);

        if (v29)
        {
          goto LABEL_27;
        }
      }

      v86 = a3;
      v58 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v90 = a1;
      v59 = *(a1 + v58);

      v18 = sub_1BEFF8D98(v59, v14);

      v60 = qword_1ED8F52F8;
      swift_beginAccess();
      v61 = *(a2 + v60);
      v62 = *(v61 + 16);
      if (v62)
      {
        v80 = v14;
        v84 = a7;
        v63 = *(v90 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v64 = v61 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v65 = MEMORY[0x1E69E7C98];
        do
        {
          sub_1BEFE6A78(v64, &v96);
          v66 = v99;
          v67 = v100;
          __swift_project_boxed_opaque_existential_1(&v96, v99);
          *&v94 = v18;
          (*(v67 + 8))(v63, &v94, v65 + 8, v66, v67);
          __swift_destroy_boxed_opaque_existential_1(&v96);
          v64 += 40;
          --v62;
        }

        while (v62);

        a7 = v84;
        v14 = v80;
      }

      v40 = a5;
      v96 = a5;
      v97 = a6;
      v41 = a8;
      v98 = a8;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      v68 = swift_allocObject();
      *(v68 + 16) = v18;
      swift_unknownObjectRetain();
      sub_1BEFF1B04(&v96, 0, v68);

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v94, sub_1BEFECBDC);
      if (!v95)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    case 2:
      v96 = a5;
      v97 = a6;
      v98 = a8;
      v28 = sub_1BEFF3BF4(&v96, 1);
      if (v28)
      {
        v29 = (*(*v28 + 80))(v28);

        if (v29)
        {
          goto LABEL_27;
        }
      }

      v86 = a3;
      v30 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v90 = a1;
      v31 = *(a1 + v30);

      v18 = sub_1BEFF8D98(v31, v14);

      v32 = qword_1ED8F52F8;
      swift_beginAccess();
      v33 = *(a2 + v32);
      v34 = *(v33 + 16);
      if (v34)
      {
        v78 = v14;
        v82 = a7;
        v35 = *(v90 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v36 = v33 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v37 = MEMORY[0x1E69E7C98];
        do
        {
          sub_1BEFE6A78(v36, &v96);
          v38 = v99;
          v39 = v100;
          __swift_project_boxed_opaque_existential_1(&v96, v99);
          *&v94 = v18;
          (*(v39 + 8))(v35, &v94, v37 + 8, v38, v39);
          __swift_destroy_boxed_opaque_existential_1(&v96);
          v36 += 40;
          --v34;
        }

        while (v34);

        a7 = v82;
        v14 = v78;
      }

      v40 = a5;
      v96 = a5;
      v97 = a6;
      v41 = a8;
      v98 = a8;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      v42 = swift_allocObject();
      *(v42 + 16) = v18;
      swift_unknownObjectRetain();
      sub_1BEFF1B04(&v96, 1, v42);

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v94, sub_1BEFECBDC);
      if (v95)
      {
LABEL_33:
        sub_1BEFE87B0(&v94, &v96);
        sub_1BEFE6A78(&v96, &v94);
        v27 = swift_allocObject();
        sub_1BEFE87B0(&v94, (v27 + 2));
        v27[7] = v18;
        v27[8] = v14;
        v27[9] = v90;
        v27[10] = v40;
        v27[11] = a6;
        v27[12] = v41;
        v27[13] = v86;
        v27[14] = v88;

        swift_unknownObjectRetain();

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        goto LABEL_34;
      }

LABEL_35:
      sub_1BEFF4B24(&v94, sub_1BEFECBDC);
      v70 = v18;
      v71 = v90;
      v72 = v40;
      v73 = a6;
      v74 = v41;
      v75 = v86;
      goto LABEL_37;
    case 3:
      v96 = a5;
      v97 = a6;
      v98 = a8;
      v43 = sub_1BEFF3BF4(&v96, 2);
      if (v43)
      {
        v29 = (*(*v43 + 80))(v43);

        if (v29)
        {
LABEL_27:

          v18 = *(v29 + 16);
          swift_unknownObjectRetain();
          goto LABEL_38;
        }
      }

      v87 = a3;
      v44 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v91 = a1;
      v45 = *(a1 + v44);

      v18 = sub_1BEFF8D98(v45, v14);

      v46 = qword_1ED8F52F8;
      swift_beginAccess();
      v47 = *(a2 + v46);
      v48 = *(v47 + 16);
      v49 = MEMORY[0x1E69E7C98];
      v83 = a7;
      if (v48)
      {
        v79 = v14;
        v50 = *(v91 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v51 = v47 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        do
        {
          sub_1BEFE6A78(v51, &v96);
          v52 = v99;
          v53 = v100;
          __swift_project_boxed_opaque_existential_1(&v96, v99);
          *&v94 = v18;
          (*(v53 + 8))(v50, &v94, v49 + 8, v52, v53);
          __swift_destroy_boxed_opaque_existential_1(&v96);
          v51 += 40;
          --v48;
        }

        while (v48);

        v14 = v79;
      }

      v96 = a5;
      v97 = a6;
      v98 = a8;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, v49 + 8, type metadata accessor for PoolObject);
      v54 = swift_allocObject();
      *(v54 + 16) = v18;
      swift_unknownObjectRetain();
      sub_1BEFF1B04(&v96, 2, v54);

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v94, sub_1BEFECBDC);
      if (v95)
      {
        sub_1BEFE87B0(&v94, &v96);
        sub_1BEFE6A78(&v96, &v94);
        v55 = swift_allocObject();
        sub_1BEFE87B0(&v94, (v55 + 2));
        v55[7] = v18;
        v55[8] = v14;
        v55[9] = v91;
        v55[10] = a5;
        v55[11] = a6;
        v55[12] = a8;
        v55[13] = v87;
        v55[14] = v88;

        swift_unknownObjectRetain();

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        sub_1BEFF9DB8(sub_1BF0242A0, v55);

        result = __swift_destroy_boxed_opaque_existential_1(&v96);
      }

      else
      {
        sub_1BEFF4B24(&v94, sub_1BEFECBDC);
        sub_1BEFF9578(v18, v91, a5, a6, a8, v87, v88, v76);
      }

      a7 = v83;
      break;
    default:
      v16 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v89 = a1;
      v17 = *(a1 + v16);

      v18 = sub_1BEFF8D98(v17, v14);

      v19 = qword_1ED8F52F8;
      swift_beginAccess();
      v20 = *(a2 + v19);
      v21 = *(v20 + 16);
      if (v21)
      {
        v77 = v14;
        v81 = a7;
        v85 = a3;
        v22 = *(v89 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v23 = v20 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v24 = MEMORY[0x1E69E7C98];
        do
        {
          sub_1BEFE6A78(v23, &v96);
          v26 = v99;
          v25 = v100;
          __swift_project_boxed_opaque_existential_1(&v96, v99);
          *&v94 = v18;
          (*(v25 + 8))(v22, &v94, v24 + 8, v26, v25);
          __swift_destroy_boxed_opaque_existential_1(&v96);
          v23 += 40;
          --v21;
        }

        while (v21);

        a7 = v81;
        v14 = v77;
        a3 = v85;
        v15 = a5;
      }

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v94, sub_1BEFECBDC);
      if (v95)
      {
        sub_1BEFE87B0(&v94, &v96);
        sub_1BEFE6A78(&v96, &v94);
        v27 = swift_allocObject();
        sub_1BEFE87B0(&v94, (v27 + 2));
        v27[7] = v18;
        v27[8] = v14;
        v27[9] = v89;
        v27[10] = v15;
        v27[11] = a6;
        v27[12] = a8;
        v27[13] = a3;
        v27[14] = v88;

        swift_unknownObjectRetain();

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_34:
        sub_1BEFF9DB8(sub_1BF0242A4, v27);

        result = __swift_destroy_boxed_opaque_existential_1(&v96);
      }

      else
      {
        sub_1BEFF4B24(&v94, sub_1BEFECBDC);
        v70 = v18;
        v71 = v89;
        v72 = v15;
        v73 = a6;
        v74 = a8;
        v75 = a3;
LABEL_37:
        sub_1BEFF9578(v70, v71, v72, v73, v74, v75, v88, v69);

LABEL_38:
      }

      break;
  }

  *a7 = v18;
  return result;
}

uint64_t sub_1BEFFC994(void *a1, void (*a2)(void *__return_ptr))
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 72))(v3, v4);
  a2(v7);
  swift_unknownObjectRelease();
  sub_1BEFE9CD4(0, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = sub_1BF17AE5C();
  sub_1BEFFD168(v7);
  return v5;
}

uint64_t sub_1BEFFCA60@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

double sub_1BEFFCA90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if ((*(a2 + 16))(a2, a1))
  {
    sub_1BF17B01C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BEFFCB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BEFFCB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BEFFCB90(uint64_t a1)
{
  result = sub_1BF17907C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ISO8601Duration(uint64_t a1)
{
  result = qword_1EBDCABE8;
  if (!qword_1EBDCABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DiagnosticFileCollectionCoordinator(uint64_t a1)
{
  result = qword_1EBDCAA60;
  if (!qword_1EBDCAA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEFFCCE0(uint64_t a1)
{
  result = sub_1BF1797FC();
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

uint64_t type metadata accessor for DiagnosticFileCollector(uint64_t a1)
{
  result = qword_1ED8EDA28;
  if (!qword_1ED8EDA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEFFCE64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  type metadata accessor for ObservableProperty(0, v11, v12, v13);
  (*(v5 + 16))(v10, a1, a2);
  v14 = ObservableProperty.__allocating_init(wrappedValue:)(v10);
  (*(v5 + 8))(a1, a2);
  return v14;
}

uint64_t ObservableProperty.init(wrappedValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  *(v1 + 16) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  (*(*(v4 - 8) + 32))(v1 + *(v5 + 96), a1, v4);
  return v1;
}

uint64_t sub_1BEFFD08C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  sub_1BEFE8DAC();
  v4 = objc_allocWithZone(TFKey);
  v5 = a1;
  v13 = OUTLINED_FUNCTION_1_17(v5, v6, v7, v8, v9, v10, v11, v12, a1);
  v16 = sub_1BEFE82CC(v13, v14, v15);
  v17 = [v16 address];

  v26 = OUTLINED_FUNCTION_1_17(v18, v19, v20, v21, v22, v23, v24, v25, v17);
  v29 = sub_1BEFF7D88(v26, v27, v28);
  OUTLINED_FUNCTION_8_21(v29, v30, v31, v32, v33, v34, v35, v36, v39, 0, 0);
  if (v3)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BEFFD168(uint64_t a1)
{
  sub_1BEFFD1C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BEFFD1C4()
{
  if (!qword_1ED8EFBA0)
  {
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EFBA0);
    }
  }
}

uint64_t sub_1BEFFD218()
{
  v1 = *v0;
  v2 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v9, v0 + qword_1ED8F52F0, v2, v7);
  v11 = v0[2];
  v10 = v0[3];
  v12 = swift_allocObject();
  v12[2] = *(v1 + 112);
  v12[3] = v11;
  v12[4] = v10;
  sub_1BEFF3454(0, v13, v14, v15);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + qword_1ED8F52F0, v9, v2);
  *(v16 + 16) = sub_1BEFFD780;
  *(v16 + 24) = v12;

  return v16;
}

uint64_t sub_1BEFFD380()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEFFD3B8(unint64_t a1)
{
  v3 = sub_1BEFE90AC(a1);
  v4 = sub_1BEFE90AC(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1BEFFD464(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1BEFFD508(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1BEFFD468(uint64_t a1, char a2)
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

  sub_1BF17B50C();
LABEL_9:
  result = sub_1BF17B25C();
  *v2 = result;
  return result;
}

uint64_t sub_1BEFFD508(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1BF17B50C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BEFE90AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1BEFF51F8(0, qword_1ED8EE0E0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for CallbackDefinition);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1BF0CAF64(0);
        sub_1BF0CAFE4();
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1BF1579F4(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFFD67C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *v11;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  a3(v10, a2);
  return (*(v8 + 8))(v10, a5);
}

uint64_t sub_1BEFFD78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a3;
  v36 = a7;
  v37 = a11;
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  v35 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFF1CA4(a1 + 72, &v38, sub_1BEFECBDC);
  if (v39)
  {
    sub_1BEFE87B0(&v38, v40);
    sub_1BEFE6A78(v40, &v38);
    (*(v17 + 16))(&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a12);
    v20 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = a10;
    v33 = a4;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = a8;
    v31 = a6;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = a12;
    sub_1BEFE87B0(&v38, v25 + 24);
    (*(v17 + 32))(v25 + v20, v19, a12);
    *(v25 + v21) = v34;
    *(v25 + v22) = v31;
    v26 = (v25 + v23);
    v27 = v35;
    v28 = v30;
    *v26 = v36;
    v26[1] = v28;
    v26[2] = v27;
    *(v25 + v24) = v32;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BEFF9DB8(sub_1BF005FA4, v25);

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1BEFF4B24(&v38, sub_1BEFECBDC);
    return sub_1BEFF6618(a2, a6, v36, a8, v35, a10, v37, a12);
  }
}

uint64_t sub_1BEFFDA28()
{
  OUTLINED_FUNCTION_1_37();
  v0 = sub_1BF17B84C();
  sub_1BEFFDAA8(0, &qword_1ED8EDCF0, type metadata accessor for PoolObject);
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

void sub_1BEFFDAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7C98] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BEFFDB00()
{
  result = qword_1ED8ED8F0;
  if (!qword_1ED8ED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED8F0);
  }

  return result;
}

uint64_t sub_1BEFFDB54(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1BF002E44(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17E820;
  swift_beginAccess();
  *(inited + 32) = *(v1 + 16);
  v41 = inited + 32;
  LOBYTE(v52) = v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  *(inited + 40) = sub_1BEFFE098(&v52);
  v57 = MEMORY[0x1E69E7CC0];
  sub_1BF002F7C(0, 2, 0);
  v4 = 0;
  v5 = 0;
  v44 = v57;
  while (2)
  {
    v42 = v4;
    v6 = *(v41 + 8 * v5);
    v7 = MEMORY[0x1E69E7CC8];
    v56 = MEMORY[0x1E69E7CC8];
    v8 = (v6 + 64);
    v9 = 1 << *(v6 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v6 + 64);
    v12 = (v9 + 63) >> 6;
    v48 = v6;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v43 = v7;
    v46 = v8;
    v47 = v12;
    while (2)
    {
      v14 = v13;
      if (!v11)
      {
        goto LABEL_8;
      }

LABEL_7:
      v13 = v14;
LABEL_11:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = (*(v48 + 48) + 16 * v15);
      v45 = *v16;
      v17 = *(*(v48 + 56) + 8 * v15);
      v18 = *(v17 + 16);
      v19 = v17 + 32;
      v49 = v16[1];
      v50 = (v11 - 1) & v11;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v20 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      while (v18 != v20)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        sub_1BEFE6A78(v19, &v52);
        v22 = v53;
        v23 = v54;
        __swift_project_boxed_opaque_existential_1(&v52, v53);
        (*(v23 + 16))(v51, v22, v23);
        if (LOBYTE(v51[0]))
        {
          if (LOBYTE(v51[0]) == 1)
          {
            v24 = 0xD000000000000012;
          }

          else
          {
            v24 = 0x75614C7265746661;
          }

          if (LOBYTE(v51[0]) == 1)
          {
            v25 = 0x80000001BF18C430;
          }

          else
          {
            v25 = 0xEE00676E6968636ELL;
          }

          if (!v2)
          {
LABEL_25:
            v26 = 0xD000000000000013;
            v27 = 0x80000001BF18C410;
            goto LABEL_26;
          }
        }

        else
        {
          v24 = 0xD000000000000013;
          v25 = 0x80000001BF18C410;
          if (!v2)
          {
            goto LABEL_25;
          }
        }

        v26 = 0x75614C7265746661;
        v27 = 0xEE00676E6968636ELL;
        if (v2 == 1)
        {
          v26 = 0xD000000000000012;
          v27 = 0x80000001BF18C430;
        }

LABEL_26:
        if (v24 == v26 && v25 == v27)
        {
        }

        else
        {
          v29 = sub_1BF17B86C();

          if ((v29 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(&v52);
            goto LABEL_38;
          }
        }

        sub_1BEFE87B0(&v52, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF003034(0, *(v21 + 16) + 1, 1);
          v21 = v55;
        }

        v32 = *(v21 + 16);
        v31 = *(v21 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1BF003034(v31 > 1, v32 + 1, 1);
          v21 = v55;
        }

        *(v21 + 16) = v32 + 1;
        sub_1BEFE87B0(v51, v21 + 40 * v32 + 32);
LABEL_38:
        v19 += 40;
        ++v20;
      }

      if (*(v21 + 16))
      {
        v33 = v43[2];
        v8 = v46;
        if (v43[3] <= v33)
        {
          sub_1BF0030EC(v33 + 1, 1);
        }

        v43 = v56;
        sub_1BF003384(v45, v49, v21, v56);

        v12 = v47;
        v11 = v50;
        continue;
      }

      break;
    }

    v14 = v13;
    v8 = v46;
    v12 = v47;
    v11 = v50;
    if (v50)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_8:
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);

        __break(1u);
        return result;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = *(v8 + v13);
      ++v14;
      if (v11)
      {
        goto LABEL_11;
      }
    }

    v34 = v44;
    v57 = v44;
    v36 = *(v44 + 16);
    v35 = *(v44 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1BF002F7C(v35 > 1, v36 + 1, 1);
      v34 = v57;
    }

    *(v34 + 16) = v36 + 1;
    v44 = v34;
    *(v34 + 8 * v36 + 32) = v43;
    v4 = 1;
    v5 = 1;
    if ((v42 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_50:
  swift_setDeallocating();
  sub_1BF00349C();
  v37 = 0;
  v8 = 0;
  *&v52 = MEMORY[0x1E69E7CC8];
  v38 = v44;
  v39 = *(v44 + 16);
  while (v39 != v37)
  {
    if (v37 >= *(v38 + 16))
    {
      goto LABEL_56;
    }

    *&v51[0] = *(v38 + 8 * v37 + 32);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BEFFE8FC(&v52, v51);

    ++v37;
    v38 = v44;
  }

  return v52;
}

uint64_t sub_1BEFFE098(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v37 = v2;
  v35 = v3 + 64;
  v36 = v3;
  v34 = v8;
LABEL_4:
  v11 = v10;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(v3 + 48) + 24 * v12;
    if (*(v13 + 16))
    {
      v14 = 0x75614C7265746661;
      v15 = 0xEE00676E6968636ELL;
      if (*(v13 + 16) == 1)
      {
        v14 = 0xD000000000000012;
        v15 = 0x80000001BF18C430;
      }

      if (!v2)
      {
LABEL_16:
        v16 = 0xD000000000000013;
        v17 = 0x80000001BF18C410;
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0xD000000000000013;
      v15 = 0x80000001BF18C410;
      if (!v2)
      {
        goto LABEL_16;
      }
    }

    v16 = 0x75614C7265746661;
    v17 = 0xEE00676E6968636ELL;
    if (v2 == 1)
    {
      v16 = 0xD000000000000012;
      v17 = 0x80000001BF18C430;
    }

LABEL_17:
    v7 &= v7 - 1;
    v18 = *(v13 + 8);
    v33 = *v13;
    v19 = *(*(v3 + 56) + 8 * v12);
    if (v14 == v16 && v15 == v17)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_25:
      v22 = *(v19 + 16);
      if (v22)
      {
        v39 = MEMORY[0x1E69E7CC0];
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF003034(0, v22, 0);
        v23 = v39;
        v24 = v19 + 40;
        do
        {
          v25 = *(v24 - 8);

          v25(v38, v26);

          v39 = v23;
          v28 = *(v23 + 16);
          v27 = *(v23 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1BF003034(v27 > 1, v28 + 1, 1);
            v23 = v39;
          }

          *(v23 + 16) = v28 + 1;
          sub_1BEFE87B0(v38, v23 + 40 * v28 + 32);
          v24 += 16;
          --v22;
        }

        while (v22);
      }

      else
      {

        v23 = MEMORY[0x1E69E7CC0];
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v3 = v36;
      v8 = v34;
      if ((result & 1) == 0)
      {
        result = sub_1BF05CA7C(0, v32[2] + 1, 1, v32);
        v32 = result;
      }

      v30 = v32[2];
      v29 = v32[3];
      if (v30 >= v29 >> 1)
      {
        result = sub_1BF05CA7C((v29 > 1), v30 + 1, 1, v32);
        v32 = result;
      }

      v32[2] = v30 + 1;
      v31 = &v32[3 * v30];
      v31[4] = v33;
      v31[5] = v18;
      v31[6] = v23;
      v2 = v37;
      v4 = v35;
      goto LABEL_4;
    }

    v21 = sub_1BF17B86C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v21)
    {
      goto LABEL_25;
    }

    v11 = v10;
    v2 = v37;
    v4 = v35;
    v3 = v36;
    v8 = v34;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return sub_1BF002EB8(v32);
    }

    v7 = *(v4 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1BEFFE48C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1BF17BAAC();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_1BEFF4AB0(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1BF002DB8(0, &unk_1ED8ED738);
      sub_1BF17B44C();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    *(v18[7] + 8 * v11) = v6;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_1BF0030EC(v14, a2 & 1);
  v16 = sub_1BEFF4AB0(v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_1BEFF3A00(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280], 1);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0xD00000000000001BLL, 0x80000001BF18CDA0);
  sub_1BF17B40C();
  MEMORY[0x1BFB52000](39, 0xE100000000000000);
  sub_1BF17B49C();
  __break(1u);
}

uint64_t sub_1BEFFE78C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BF070F14(0, &qword_1ED8ED708, sub_1BF002F9C);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1BEFFB240((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BF002F9C(0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1BEFFE8A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BF17AE6C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BEFFE8FC(void *a1, void *a2)
{
  v3 = *a2 + 64;
  v4 = 1 << *(*a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a2 + 64);
  v7 = (v4 + 63) >> 6;
  v35 = *a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = 0;
  v32 = v7;
  v33 = v3;
  v34 = a1;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(v35 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(v35 + 56) + 8 * v10);
      v15 = *a1;
      v16 = *(*a1 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v16 && (v17 = sub_1BEFF4AB0(v13), (v18 & 1) != 0))
      {
        v37 = *(*(v15 + 56) + 8 * v17);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF0034B4(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v19 = *a1;
      v36 = *a1;
      v20 = v13;
      v21 = sub_1BEFF4AB0(v13);
      if (__OFADD__(*(v19 + 16), (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      sub_1BF002DB8(0, &unk_1ED8ED738);
      if (sub_1BF17B43C())
      {
        v25 = sub_1BEFF4AB0(v20);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_26;
        }

        v23 = v25;
      }

      if (v24)
      {
        *(v36[7] + 8 * v23) = v37;
      }

      else
      {
        v36[(v23 >> 6) + 8] |= 1 << v23;
        v27 = (v36[6] + 16 * v23);
        *v27 = v20;
        v27[1] = v12;
        *(v36[7] + 8 * v23) = v37;
        v28 = v36[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_25;
        }

        v36[2] = v30;
      }

      v6 &= v6 - 1;
      v3 = v33;
      a1 = v34;
      *v34 = v36;
      v7 = v32;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BEFFEC08()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  *v7 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3 = UnfairLock.init(options:)(v7);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BEFEC638(0, &qword_1ED8ED8C0, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for Promise);
  v4 = swift_allocObject();
  swift_unownedRetain();
  v5 = sub_1BEFFED10(v3, v4, v1);
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  *v2 = v5;

  return v1;
}

unint64_t OUTLINED_FUNCTION_42_0()
{
  sub_1BF01716C(v1);

  return sub_1BF01716C(v0);
}

void OUTLINED_FUNCTION_42_2(uint64_t a1, uint64_t a2)
{

  sub_1BEFFF95C(0, a2);
}

uint64_t sub_1BEFFEDCC()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v2, v3);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v5 = OUTLINED_FUNCTION_19_4();
  sub_1BF0038C0(v5);
  v7 = OUTLINED_FUNCTION_10_7(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_22_2(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF6D1C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t NSProcessInfo.launchArguments<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 arguments];

  v11 = sub_1BF17A4DC();
  v12 = sub_1BEFFEF54(v11, v4, a1, a2, a3, a4);

  return v12;
}

uint64_t sub_1BEFFEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a3;
  v41 = a4;
  v38 = sub_1BF17AE6C();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v9);
  v11 = &v31 - v10;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v36 = &v31 - v18;
  v42 = sub_1BF17A56C();
  v34 = (v12 + 16);
  v35 = (v12 + 32);
  v19 = *(a1 + 16);
  v32 = (v8 + 8);
  v33 = (v12 + 8);
  v20 = (a1 + 56);
  for (i = 1; i - v19 != 1; ++i)
  {
    v22 = *(v20 - 3);
    v23 = *(v20 - 2);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v22 == sub_1BEFFF260() && v23 == v24)
    {

      if (i >= v19)
      {
        goto LABEL_14;
      }

LABEL_11:
      v27 = *(v20 - 1);
      v28 = *v20;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF0D4630(v27, v28, a5, v39, v11);

      if (__swift_getEnumTagSinglePayload(v11, 1, a5) == 1)
      {
        (*v32)(v11, v38);
      }

      else
      {
        v29 = v36;
        (*v35)(v36, v11, a5);
        (*v34)(v37, v29, a5);
        sub_1BF17A65C();
        sub_1BF17A5DC();
        (*v33)(v29, a5);
      }

      goto LABEL_14;
    }

    v26 = sub_1BF17B86C();

    if (i < v19 && (v26 & 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v20 += 2;
  }

  return v42;
}

void Promise.init(value:)()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Seal(0, v6, v11, v12);
  v15 = 0;
  v13 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87(v13);
  UnfairLock.init(options:)(&v15);
  (*(v8 + 16))(v1, v4, v6);
  v14 = sub_1BEFFF560();
  (*(v8 + 8))(v4, v6);
  *(v2 + 16) = v14;
  OUTLINED_FUNCTION_55();
}

void sub_1BEFFF3C0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v8 = type metadata accessor for Seal.Resolution(255, v6, v6, v7);
  OUTLINED_FUNCTION_54();
  v9 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  type metadata accessor for Seal.Handler(0, v6, v16, v17);
  *(v0 + 32) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  __swift_storeEnumTagSinglePayload(v0 + *(v18 + 112), 1, 1, v8);
  *(v0 + 16) = v4;
  *(v0 + 24) = 1;
  OUTLINED_FUNCTION_20();
  (*(v19 + 32))(v15, v2, v6);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
  OUTLINED_FUNCTION_29();
  v21 = *(v20 + 112);
  OUTLINED_FUNCTION_7_2(v0 + v21, &v23);
  (*(v11 + 40))(v0 + v21, v15, v9);
  swift_endAccess();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BEFFF560()
{
  v0 = OUTLINED_FUNCTION_8_24();
  sub_1BEFFF3C0();
  return v0;
}

uint64_t sub_1BEFFF5A4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CA8];
  sub_1BEFFF95C(0, &unk_1ED8EDC58);
  swift_allocObject();
  sub_1BEFFF9F8(&unk_1ED8ED8C8, &unk_1ED8ED758, v3 + 8, sub_1BEFFFCA4, v4, v5, v6, v7, v18, v19, v20, a1, v23, *v25, *&v25[2], *&v25[4], v26, v27, v28, v29, v30, v31);
  v9 = v8;
  v24 = sub_1BEFE90AC(a2);
  if (v24)
  {
    *v25 = 1;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v10 = UnfairLock.init(options:)(v25);
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x1E69E7CC8];
    result = swift_allocObject();
    v13 = result;
    v14 = 0;
    *(result + 16) = 0;
    while (v24 != v14)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1BFB53020](v14, a2);
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v13;
      v15[4] = v11;
      v15[5] = v14;
      v15[6] = a2;
      v15[7] = v9;

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      sub_1BEFFFDC4(v22, sub_1BF000678, v15);

      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = v13;
      v16[4] = v9;

      sub_1BEFF77FC(v22, sub_1BF02E410, v16);

      ++v14;
    }

    result = swift_beginAccess();
    v17 = *(v9 + 16);
    if (v17)
    {

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1BF000C1C();
  result = swift_beginAccess();
  v17 = *(v9 + 16);
  if (!v17)
  {
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_14:

  return v17;
}

uint64_t sub_1BEFFF914()
{

  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BEFFF95C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v6 = v5;
    v7 = v2;
    sub_1BEFEC638(255, v3, v4, MEMORY[0x1E69E62F8]);
    v8 = OUTLINED_FUNCTION_75();
    v9 = v6(v8);
    if (!v10)
    {
      atomic_store(v9, v7);
    }
  }
}

void sub_1BEFFF9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_101();
  v29 = OUTLINED_FUNCTION_87(v28);
  UnfairLock.init(options:)(&a10);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v30 = OUTLINED_FUNCTION_64_1();
  sub_1BEFFF95C(v30, v31);
  OUTLINED_FUNCTION_27();
  v32 = swift_allocObject();
  swift_unownedRetain();
  v27(v29, v32, v22);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125(v23, &a10);
  *v23 = v29;

  OUTLINED_FUNCTION_56_2();
}

uint64_t OUTLINED_FUNCTION_101()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;

  return type metadata accessor for UnfairLock();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1)
{

  return sub_1BF03917C(a1, sub_1BF003954);
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1)
{
}

uint64_t sub_1BEFFFBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  OUTLINED_FUNCTION_17_3();
  v11 = OUTLINED_FUNCTION_104();
  sub_1BEFFFCCC(v11, v12, a5, v14, v13);
  OUTLINED_FUNCTION_50_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v15, MEMORY[0x1E69E7CC0]);
  sub_1BEFFFCCC(0, a7, a5, a6, type metadata accessor for PromiseWeakResolver);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v7;
}

void sub_1BEFFFCCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BF0035CC(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void OUTLINED_FUNCTION_56_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_113()
{
}

void OUTLINED_FUNCTION_113_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{

  sub_1BEFEC638(0, a2, v4 + 8, a4);
}

uint64_t sub_1BEFFFF04()
{
  OUTLINED_FUNCTION_86_1();
  swift_unownedRetain();
  swift_unownedRetain();

  v3 = OUTLINED_FUNCTION_130();
  sub_1BEFEC638(v3, v4, v5, v6);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  swift_unownedRetain();
  v7 = OUTLINED_FUNCTION_80_1();
  v2(v7);
  OUTLINED_FUNCTION_95();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125(v0, v9);
  *v0 = v2;

  return v1;
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return sub_1BF17B8DC();
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  *(v24 - 144) = *(v20 + v23);

  return sub_1BF082980(va, v22, v21, a1);
}

id OUTLINED_FUNCTION_35_2(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v7;
  a1[5] = v5;
  a1[6] = v4;
  a1[7] = v6;
  a1[8] = v3;

  return v2;
}

void OUTLINED_FUNCTION_35_5()
{

  UnfairLock.lock()();
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
}

void OUTLINED_FUNCTION_114_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 16);

  os_unfair_lock_unlock(v13);
}

void sub_1BF0001B8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v9 = qword_1ED8F0210;

    if (v9 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v10 = swift_allocObject();
          v10[2] = a3;
          v10[3] = sub_1BF000440;
          v10[4] = v8;
          v11 = a3;
        }
      }
    }
  }
}

void sub_1BF00042C(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

void sub_1BF000444(void (*a1)(void))
{
  UnfairLock.lock()();
  a1();
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1BF0006A8(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    sub_1BF0007B8(a3, isUniquelyReferenced_nonNull_native);
    *a2 = v11;
    swift_endAccess();
    v10 = *(v11 + 16);
    result = sub_1BEFE90AC(a4);
    if (v10 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF0009D0(0, v10, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

uint64_t sub_1BF0007B8(uint64_t a1, char a2)
{
  sub_1BF00088C(a1);
  OUTLINED_FUNCTION_1_5();
  if (v4)
  {
    __break(1u);
LABEL_9:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v5 = v3;
  sub_1BF000930();
  result = sub_1BF17B43C();
  if (result)
  {
    result = sub_1BF00088C(a1);
    if ((v5 & 1) != (v7 & 1))
    {
      goto LABEL_9;
    }
  }

  if ((v5 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_31_3();

    return sub_1BF000994(v8, v9, v10);
  }

  return result;
}

unint64_t sub_1BF00088C(uint64_t a1)
{
  v2 = sub_1BF17BB5C();

  return sub_1BF0008D0(a1, v2);
}

unint64_t sub_1BF0008D0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1BF000930()
{
  if (!qword_1ED8ED730)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED730);
    }
  }
}

uint64_t sub_1BF000994(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_3_14(a1, a3 + 8 * (a1 >> 6));
  *(*(v4 + 48) + 8 * result) = v5;
  v6 = *(v4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v8;
  }

  return result;
}

uint64_t sub_1BF0009D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = result;
LABEL_2:
  for (i = v7; ; ++i)
  {
    if (a2 == i)
    {
      return v6;
    }

    if (a2 < v5)
    {
      break;
    }

    if (v7 < v5)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    if (*(*a3 + 16))
    {
      sub_1BF00088C(i);
      if (v9)
      {
        swift_endAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1BF000B0C(0, *(v6 + 16) + 1, 1, v6);
          v6 = result;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          result = sub_1BF000B0C((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        v7 = i + 1;
        *(v6 + 16) = v12;
        goto LABEL_2;
      }
    }

    result = swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BF000B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BEFEC638(0, &qword_1ED8ED700, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BF000C1C()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    v4 = v3;
    OUTLINED_FUNCTION_39_1();

    v4(v2);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF000CB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_57_4(result);

    (a3)(a1, a2);
    OUTLINED_FUNCTION_26_8();

    a3(v7);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF000D34(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_32_8();
    v5 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    a2(v5, 0);
    OUTLINED_FUNCTION_31_9();
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_6_5();
}

void sub_1BF000E50(void *result, uint64_t a2)
{
  if (a2 != 0xFF)
  {
    sub_1BF000FDC(result, a2, MEMORY[0x1E69E7CF8]);
  }
}

id sub_1BF000E90(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_109(uint64_t a1)
{

  return sub_1BF17A65C();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
}

uint64_t sub_1BF000EFC(uint64_t a1)
{
  OUTLINED_FUNCTION_111(a1);
  result = v2(v1);
  if (result)
  {
    if (result >= 1)
    {
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = OUTLINED_FUNCTION_129();
          MEMORY[0x1BFB53020](v5);
        }

        else
        {
          OUTLINED_FUNCTION_113();
        }

        OUTLINED_FUNCTION_112();
        v3(&v6);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BF000FDC(void *a1, char a2, void (*a3)(void *))
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    a3(a1);
  }
}

void sub_1BF000FFC(void *a1, char a2, void (*a3)(void *))
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    a3(a1);
  }
}

uint64_t sub_1BF00108C()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_95();

    v2(v3);
  }

  *(v0 + 24) = 0;
}

void (*sub_1BF0010F0())(uint64_t)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_57_4(result);

    sub_1BF003954();
    OUTLINED_FUNCTION_26_8();

    v1(v2);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF001150(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFEC638(0, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BEFFFF04();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF00174C(a1, sub_1BF0A90F0, v6, sub_1BF02E2A4, v6, sub_1BF001C0C, v7);

  (v8)(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeferredPromise.__deallocating_deinit()
{
  DeferredPromise.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t objectdestroyTm(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_62();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_0_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4()
{
  sub_1BEFF79E8();
  v1 = sub_1BF17A6DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_92Tm()
{

  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF0016F4()
{
  sub_1BF003B38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1BF00174C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20(sub_1BF051954, v15, &unk_1ED8ED8E0, &unk_1ED8ED758, MEMORY[0x1E69E7CA8] + 8, sub_1BF005F5C, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0019D0(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0019A0(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BF001964(v20, v22);
  return v25;
}

void sub_1BF001964(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BF000FFC(a1, a2, MEMORY[0x1E69E7CF8]);
  }
}

id sub_1BF0019A0(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1BF000E90(result, a2);
  }

  return result;
}

void (*sub_1BF0019D0(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void *sub_1BF001C10(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), void *a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB970, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

BOOL sub_1BF001E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_13();
  v11 = *v7;
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_14_27();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    v16 = (1 << (v12 & v14)) & *(v11 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      break;
    }

    v17 = (*(v11 + 48) + 16 * v15);
    v18 = *v17 == v10 && v17[1] == v8;
    if (v18 || (sub_1BF17B86C() & 1) != 0)
    {

      v19 = (*(v11 + 48) + 16 * v15);
      v20 = v19[1];
      *v6 = *v19;
      v6[1] = v20;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return v16 == 0;
    }

    v12 = v15 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v9;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF001FE0(v10, v8, v15, isUniquelyReferenced_nonNull_native, a4, a5, a6);
  *v9 = v26;
  *v6 = v10;
  v6[1] = v8;
  return v16 == 0;
}

uint64_t sub_1BF002148(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1BF17BB6C();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF179F3C();
        v20 = sub_1BF17BB9C();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1BF17B86C() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v26 = *(v5 + 32);
            v45 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v45;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v46 = &v44;
              MEMORY[0x1EEE9AC00](v24, v25);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v49 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v50;
              while (1)
              {
                v47 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                sub_1BF17BB6C();
                _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
                sub_1BF179F3C();
                v35 = sub_1BF17BB9C();
                v36 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v35 & v36;
                  v7 = (v35 & v36) >> 6;
                  v8 = 1 << (v35 & v36);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v30 = v50;
                    goto LABEL_24;
                  }

                  v37 = (*(v5 + 48) + 16 * v4);
                  if (*v37 == v2 && v37[1] == v34)
                  {
                    break;
                  }

                  v39 = sub_1BF17B86C();
                  v35 = v4 + 1;
                }

                while ((v39 & 1) == 0);

                v40 = v49[v7];
                v49[v7] = v40 & ~v8;
                v3 = v51;
                v12 = v52;
                v30 = v50;
                if ((v40 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1BF004110(v49, v45, v47, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_1BF0A79CC(v42, v45, (v5 + 56), v45, v5, v7, v53);

            MEMORY[0x1BFB547B0](v42, -1, -1);
            v12 = v53[0];
            v48 = v54;
            v5 = v43;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1BF003FE8(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

Swift::Void __swiftcall StartupTaskManager.startAllTasks(launchOptions:phase:)(Swift::OpaquePointer_optional launchOptions, TeaFoundation::StartupTaskExecutionPhase phase)
{
  v3 = v2;
  v4 = **&launchOptions.is_nil;
  if (launchOptions.value._rawValue)
  {
    rawValue = launchOptions.value._rawValue;
  }

  else
  {
    sub_1BEFFDB00();
    rawValue = sub_1BF179DAC();
  }

  if (v2[v4 + 56])
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v2[57] = 1;
      }

      else
      {
        v2[58] = 1;
      }
    }

    else
    {
      v2[56] = 1;
    }

    v6 = MEMORY[0x1E69E7CC0];
    v68 = MEMORY[0x1E69E7CC0];
    LOBYTE(v63) = v4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v7 = sub_1BEFFDB54(&v63);
    v8 = 0;
    v10 = v7 + 64;
    v9 = *(v7 + 64);
    v58 = v2;
    v59 = v7;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v56 = v14;
    v57 = v7 + 64;
    v60 = v4;
    if ((v12 & v9) != 0)
    {
      while (1)
      {
LABEL_20:
        v16 = __clz(__rbit64(v13)) | (v8 << 6);
        v17 = (*(v59 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v59 + 56) + 8 * v16);
        LOBYTE(v63) = v4;
        v21 = sub_1BEFFEBA4(&v63);
        v22 = *(v21 + 16);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v61 = v18;
        if (v22 && (v23 = sub_1BEFF4AB0(v19), (v24 & 1) != 0))
        {
          v25 = *(*(v21 + 56) + 8 * v23);
        }

        else
        {

          OUTLINED_FUNCTION_0_14();
          v26 = OUTLINED_FUNCTION_131();
          sub_1BEFEC638(v26, &qword_1ED8EDC50, v27, v28);
          OUTLINED_FUNCTION_58();
          swift_allocObject();
          v25 = sub_1BEFFEC08();
        }

        v63 = v19;
        v64 = v61;
        LOBYTE(v67) = v4;
        sub_1BF00377C(v25, &v63, &v67);
        v29 = *(v20 + 16);
        if (v29)
        {
          v67 = MEMORY[0x1E69E7CC0];
          sub_1BF17B35C();
          v30 = v20 + 32;
          do
          {
            sub_1BEFE6A78(v30, &v63);
            v32 = v65;
            v31 = v66;
            __swift_project_boxed_opaque_existential_1(&v63, v65);
            (*(v31 + 32))(rawValue, v32, v31);
            __swift_destroy_boxed_opaque_existential_1(&v63);
            sub_1BF17B32C();
            sub_1BF17B36C();
            sub_1BF17B37C();
            sub_1BF17B33C();
            v30 += 40;
            --v29;
          }

          while (v29);
        }

        if (qword_1ED8F0210 != -1)
        {
          OUTLINED_FUNCTION_1_10();
          swift_once();
        }

        v33 = off_1ED8F0218;
        v34 = OUTLINED_FUNCTION_132_0();
        sub_1BEFFF5A4(v34, v35);

        sub_1BF001150(v33, sub_1BF003E4C, v25);
        OUTLINED_FUNCTION_147();

        sub_1BEFF77FC(v33, sub_1BF02E288, v25);

        OUTLINED_FUNCTION_3_5(v25 + 16, v62);
        if (!*(v25 + 16))
        {
          break;
        }

        MEMORY[0x1BFB52290](v36);
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BF17A53C();
        }

        v13 &= v13 - 1;
        sub_1BF17A59C();

        v6 = v68;
        v10 = v57;
        v3 = v58;
        LOBYTE(v4) = v60;
        v14 = v56;
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      while (1)
      {
LABEL_16:
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        if (v15 >= v14)
        {
          break;
        }

        v13 = *(v10 + 8 * v15);
        ++v8;
        if (v13)
        {
          v8 = v15;
          goto LABEL_20;
        }
      }

      v61 = v6;

      LOBYTE(v63) = v4;
      v37 = sub_1BEFFEBA4(&v63);
      v38 = sub_1BF003EA0(v37);
      LOBYTE(v63) = v4;
      v39 = sub_1BEFFDB54(&v63);
      sub_1BF002148(v39, v38);
      OUTLINED_FUNCTION_95();

      v40 = 0;
      v4 = rawValue + 56;
      v41 = 1 << *(rawValue + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(rawValue + 56);
      v44 = (v41 + 63) >> 6;
      while (v43)
      {
        v45 = v40;
LABEL_42:
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v3 = *(*(rawValue + 48) + ((v45 << 10) | (16 * v46)));
        LOBYTE(v63) = v60;
        if (*(sub_1BEFFEBA4(&v63) + 16) && (_s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0(), v47 = OUTLINED_FUNCTION_17_2(), v3 = sub_1BEFF4AB0(v47), v49 = v48, , (v49 & 1) != 0))
        {

          OUTLINED_FUNCTION_43_1();
          sub_1BF00108C();

          v40 = v45;
        }

        else
        {

          v40 = v45;
        }
      }

      while (1)
      {
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v45 >= v44)
        {
          v3 = 7105633;

          LOBYTE(v4) = v60;
          LOBYTE(v63) = v60;
          v50 = sub_1BEFFEBA4(&v63);
          rawValue = sub_1BF003FF0(7105633, 0xE300000000000000, v50);

          if (!rawValue)
          {
            OUTLINED_FUNCTION_0_14();
            v51 = OUTLINED_FUNCTION_131();
            sub_1BEFEC638(v51, v52, v53, v54);
            OUTLINED_FUNCTION_58();
            swift_allocObject();
            rawValue = sub_1BEFFEC08();
          }

          if (qword_1ED8F0210 != -1)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        }

        v43 = *(v4 + 8 * v45);
        ++v40;
        if (v43)
        {
          goto LABEL_42;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_1_10();
      swift_once();
LABEL_49:
      v55 = off_1ED8F0218;
      sub_1BEFFF5A4(off_1ED8F0218, v61);

      sub_1BF001150(v55, sub_1BF00403C, rawValue);
      OUTLINED_FUNCTION_39_1();

      sub_1BEFF77FC(v55, sub_1BF02E2A4, rawValue);

      v63 = v3;
      v64 = 0xE300000000000000;
      LOBYTE(v67) = v4;
      sub_1BF00377C(rawValue, &v63, &v67);
    }
  }
}

unint64_t sub_1BF002D64()
{
  result = qword_1ED8ED8E8;
  if (!qword_1ED8ED8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED8E8);
  }

  return result;
}

void sub_1BF002DB8(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v5 = v4;
    v6 = v3;
    OUTLINED_FUNCTION_47_2();
    sub_1BEFF40D4(255, v7);
    v9 = v8;
    v10 = sub_1BEFF4378();
    v11 = v5(v2, &type metadata for StartupTaskGroup, v9, v10);
    if (!v12)
    {
      atomic_store(v11, v6);
    }
  }
}

void sub_1BF002E44(uint64_t a1)
{
  if (!qword_1ED8ED708)
  {
    sub_1BF002DB8(255, &qword_1ED8ED780);
    v1 = sub_1BF17B70C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ED708);
    }
  }
}

uint64_t sub_1BF002EB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BF002DB8(0, &qword_1ED8ED720);
    v1 = sub_1BF17B52C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;
  v2 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BEFFE48C(v2, 1, &v4);

  return v4;
}

uint64_t sub_1BF002F7C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1BEFFE78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BF002F9C(uint64_t a1)
{
  if (!qword_1ED8ED780)
  {
    sub_1BF070FC8(255, &qword_1ED8ED770, &unk_1ED8EDC40, &protocol descriptor for StartupTaskType, MEMORY[0x1E69E62F8]);
    sub_1BEFF4378();
    v1 = sub_1BF179E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ED780);
    }
  }
}

void sub_1BF003080(uint64_t a1)
{
  if (!qword_1ED8ED720)
  {
    sub_1BEFF4A40(255);
    sub_1BEFF4378();
    v1 = sub_1BF17B53C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ED720);
    }
  }
}

uint64_t sub_1BF0030EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BF003080(0);
  v34 = v4;
  result = sub_1BF17B51C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  v14 = result + 64;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1BF1470D8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
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
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    sub_1BF17BB6C();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1BF003384(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  result = sub_1BF17B0EC();
  *(a4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  v9 = (a4[6] + 16 * result);
  *v9 = a1;
  v9[1] = a2;
  *(a4[7] + 8 * result) = a3;
  ++a4[2];
  return result;
}

uint64_t sub_1BF003448(uint64_t (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BF0034F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF0035CC(0, v9, v10, type metadata accessor for Seal);
  OUTLINED_FUNCTION_50_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v11, MEMORY[0x1E69E7CC0]);
  sub_1BF0035CC(0, a6, a5, type metadata accessor for PromiseWeakResolver);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v6;
}

void sub_1BF0035CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BF00361C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{

  return sub_1BF179F7C();
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v4;
}

uint64_t sub_1BF00377C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    if (*a3 == 1)
    {
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v5 = v3[5];
      sub_1BEFFEDCC();
      v3[5] = v5;
    }

    else
    {
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v7 = v3[6];
      sub_1BEFFEDCC();
      v3[6] = v7;
    }
  }

  else
  {
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v6 = v3[4];
    sub_1BEFFEDCC();
    v3[4] = v6;
  }

  return swift_endAccess();
}

void sub_1BF0038C0(uint64_t a1)
{
  if (!qword_1ED8ED748)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
    sub_1BEFF4378();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ED748);
    }
  }
}

uint64_t sub_1BF003954()
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_3_34();
  if (v3)
  {
    v1 = v2;
  }

  else
  {
    *(v1 + 24) = 1;
    sub_1BF00038C(0, 0);
    OUTLINED_FUNCTION_49_4();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v1;
}

void sub_1BF0039C4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;

    v10 = sub_1BF006210(a3, sub_1BF0004A8, v9);

    (v10)(v11);
  }
}

uint64_t sub_1BF003A70()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t DeferredPromise.deinit()
{

  return v0;
}

uint64_t Promise.__deallocating_deinit()
{
  Promise.deinit();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1BF003B38()
{
  v1 = *v0;

  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 112);
  type metadata accessor for Seal.Resolution(255, *(v1 + 80), *(v1 + 80), v4);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_20();
  (*(v5 + 8))(&v0[v3]);
  return v0;
}

uint64_t objectdestroy_95Tm()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BF003C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  v25 = v24;
  OUTLINED_FUNCTION_61_1();
  v27 = v26;
  os_unfair_lock_assert_owner(*(*(v22 + 16) + 16));
  if ((*(v22 + 24) & 1) == 0)
  {
    v31 = OUTLINED_FUNCTION_64_1();
    sub_1BEFFF95C(v31, v32);
    OUTLINED_FUNCTION_58();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v23;
    OUTLINED_FUNCTION_38(v22 + 32, v34);

    MEMORY[0x1BFB52290](v35);
    v25(*((*(v22 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4(v22 + 40, v28);
  if (*(v22 + 48) != 255)
  {
    v29 = OUTLINED_FUNCTION_36();
    sub_1BF000E90(v29, v30);
LABEL_5:
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1BF003D20(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t OUTLINED_FUNCTION_147()
{
}

uint64_t sub_1BF003EA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BEFF4378();
  result = MEMORY[0x1BFB526E0](v2, &type metadata for StartupTaskGroup, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF003FC0(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF003FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1BEFF4AB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v3);
}

_OWORD *OUTLINED_FUNCTION_64()
{
  v4 = (*(v0 + 56) + 32 * v2);

  return sub_1BEFF9A40(v4, v1);
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t result)
{
  *(result + 48) = -1;
  *(result + 16) = v1;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF0040A8()
{
  OUTLINED_FUNCTION_45_1();
  v2 = v1();
  v2();

  return v0;
}

uint64_t sub_1BF004110(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  v8 = OUTLINED_FUNCTION_65_1();
  sub_1BF0A9028(v8, v9);
  result = sub_1BF17B18C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v31 = v4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = (*(v4 + 48) + 16 * (v15 | (v13 << 6)));
    v19 = *v18;
    v20 = v18[1];
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v11 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    ++*(v11 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t sub_1BF004324(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), unint64_t *a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(*v4 + 16);
  result = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v11 = *v4;
  if (!*(a1 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1BEFE6EA8(0, a3, a4);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_8:
    *v4 = v11;
    return result;
  }

  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, v6);
  v14 = v12 + v6;
  if (!v13)
  {
    *(v11 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{
}

uint64_t OUTLINED_FUNCTION_96_0()
{
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2)
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1)
{

  return sub_1BF17B43C();
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = result;
  v6[5] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t result, uint64_t a2)
{
  *(v3 - 184) = v2;
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_10()
{
}

uint64_t OUTLINED_FUNCTION_31_11@<X0>(uint64_t a1@<X8>)
{

  return sub_1BF0F86D0(v1, v2 + a1);
}

uint64_t sub_1BF004594()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_1BF17A62C();
}

uint64_t OUTLINED_FUNCTION_43_3(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11, __n128 a13, uint64_t a15, uint64_t arg28, uint64_t a16)
{
  a13 = a1;
  arg28 = 0;
  a16 = 0;
  a15 = 0;

  return sub_1BF0FDBF4(&a13);
}

uint64_t sub_1BF00464C(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BF0046C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 11);
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v30 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_3();
  v19 = v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v29 - v23;
  (*(v25 + 16))(v17, a1, a3, v22);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
    (*(v19 + 32))(v24, v13, v7);
    (v3)[2](v24, a2);
    return (*(v19 + 8))(v24, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v7);
    (*(v30 + 8))(v13, v8);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1BF17B1EC();
    MEMORY[0x1BFB52000](0xD000000000000029, 0x80000001BF18FFE0);
    v27 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v27);

    MEMORY[0x1BFB52000](0x795474736163202CLL, 0xEB000000003D6570);
    v28 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v28);

    result = sub_1BF17B49C();
    __break(1u);
  }

  return result;
}

id sub_1BF0049F4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_1BF004A40()
{

  return v0;
}

unint64_t sub_1BF004A68()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_1BF009264(v0);
  v3 = 0x80000001BF18E140;
  v4 = 0xD000000000000017;
  if (v2)
  {
    v4 = result;
    v3 = v2;
  }

  qword_1ED8EFC08 = v4;
  unk_1ED8EFC10 = v3;
  return result;
}

uint64_t (*sub_1BF004C34(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E1A8;
}

uint64_t (*sub_1BF004CA4(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0122B0;
}

uint64_t sub_1BF004D14()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_19();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_41_0();
  sub_1BF004D5C(v1, v2);
  return v0;
}

uint64_t sub_1BF004D5C(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  type metadata accessor for Seal(0, v5, v6, v7);

  *(v2 + 16) = sub_1BF004E88(v8);
  type metadata accessor for PromiseWeakResolver(0, v5, v9, v10);
  OUTLINED_FUNCTION_66();

  sub_1BF004EBC();
  a2();

  return v2;
}

uint64_t sub_1BF004E04(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  v5 = OUTLINED_FUNCTION_54();
  type metadata accessor for Seal.Handler(v5, v6, v7, v8);
  *(v1 + 32) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  v10 = *(v9 + 112);
  v11 = OUTLINED_FUNCTION_54();
  v14 = type metadata accessor for Seal.Resolution(v11, v12, v4, v13);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v14);
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_1BF004E88(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8_24();
  sub_1BF004E04(a1);
  return v2;
}

uint64_t sub_1BF004EBC()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  sub_1BEFF7020();
  return v0;
}

uint64_t sub_1BF004F10(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  *(a2 + 24) = a1;
}

void sub_1BF004F64(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_41();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_39();
  v9 = *(v1 + *(v8 + 112));
  UnfairLock.lock()();
  sub_1BF005128(v2);
  OUTLINED_FUNCTION_32_10(v2);
  if (!v10)
  {
    OUTLINED_FUNCTION_20();
    (*(v15 + 32))(a1, v2, v5);
LABEL_7:
    os_unfair_lock_unlock(*(v9 + 16));
    goto LABEL_8;
  }

  v11 = OUTLINED_FUNCTION_59_0();
  v12(v11);
  OUTLINED_FUNCTION_4_0();
  v14 = *(v1 + *(v13 + 120));
  if ((v14 & 1) == 0 && (v14 & 2) != 0 && ![objc_opt_self() isMainThread])
  {
    sub_1BEFF6E88();
    v16 = sub_1BF17AD5C();
    OUTLINED_FUNCTION_19_15();

    goto LABEL_7;
  }

  sub_1BF0051BC(1, v1, a1);
LABEL_8:
  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF005128@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24_13();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_3_5(v1 + v4, v7);
  OUTLINED_FUNCTION_24_13();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1BF0051BC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 80);
  v7 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_1BF0070F0();
  v11();

  (*(*(v6 - 8) + 16))(v10, a3, v6);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  sub_1BF007120(v10);
  v12 = sub_1BF0071BC();
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  sub_1BF17A63C();
  swift_endAccess();
  if (a1)
  {
    os_unfair_lock_unlock(*(*(a2 + *(*a2 + 112)) + 16));
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v13 = sub_1BF17A4EC();

  v19 = v13;
  if (v13 == sub_1BF17A5AC())
  {
  }

  while (1)
  {
    v14 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(v12 + 32 + 16 * v13);

    sub_1BF17A62C();
    v15(a3);

    v16 = sub_1BF17A5AC();
    v13 = v19;
    if (v19 == v16)
    {
    }
  }

  result = sub_1BF17B23C();
  __break(1u);
  return result;
}

void *DeferredPromise.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v4[3] = 0;
  v4[2] = 0;
  v7 = v4 + 2;
  type metadata accessor for Promise(0, *(v6 + 80), a3, a4);
  v22[0] = 0;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  UnfairLock.init(options:)(v22);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_69(v9, v10, v11, v12, v13, v14, v15, v16, v21);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  v17 = swift_unownedRelease();
  OUTLINED_FUNCTION_1_68(v17, v18, v19);
  *v7 = v8;

  return v5;
}

void sub_1BF005508()
{
  OUTLINED_FUNCTION_32();
  sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_13_16();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_2_0();
  v5 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_18_8();
  sub_1BF179B8C();
  OUTLINED_FUNCTION_3_30();
  sub_1BEFF74A0(v7, v0, MEMORY[0x1E69E8040]);
  v8 = OUTLINED_FUNCTION_14_16();
  sub_1BEFF74E8(v8, v9, v0);
  v10 = sub_1BEFF753C(&qword_1ED8F0BE8, qword_1ED8F0BF0, v0);
  OUTLINED_FUNCTION_8_23(v10);
  v11 = OUTLINED_FUNCTION_16_13();
  v12(v11);
  qword_1ED8EFC18 = OUTLINED_FUNCTION_7_24(29, 0x80000001BF18E620);
  OUTLINED_FUNCTION_26_2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BF0057E8()
{
  OUTLINED_FUNCTION_0_1();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_66();
  sub_1BF00581C(v1, v2, v3, v4);
  return v0;
}

uint64_t *sub_1BF00581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v5[3] = 0;
  v5[2] = 0;
  type metadata accessor for Promise(0, *(v7 + 80), a3, a4);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_69(v8, v9, v10, v11, v12, v13, v14, v15, v20);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  v16 = swift_unownedRelease();
  OUTLINED_FUNCTION_1_68(v16, v17, v18);
  v5[2] = a1;

  return v5;
}

uint64_t sub_1BF0058CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1BF005910()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v49 = v4;
  v50 = v3;
  v46 = v5;
  v47 = v6;
  v48 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 80);
  v13 = type metadata accessor for Seal.Resolution(255, v11, v11, v12);
  OUTLINED_FUNCTION_54();
  v14 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v44 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_4_1();
  v45 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v41 - v22;
  v24 = *(v0 + 16);
  UnfairLock.lock()();
  v25 = swift_allocObject();
  v42 = v11;
  v25[2] = v11;
  v25[3] = v9;
  v26 = v44;
  v27 = v9;
  v28 = v50;
  v25[4] = v49;
  v25[5] = v2;
  v30 = v46;
  v29 = v47;
  v25[6] = v28;
  v25[7] = v29;
  v25[8] = v48;
  v25[9] = v30;
  v43 = v27;
  v41 = v2;

  sub_1BF005C4C(sub_1BF02F0F0, v25, v31, v23);

  v32 = *(v24 + 16);
  v33 = v45;
  os_unfair_lock_unlock(v32);
  (*(v26 + 16))(v33, v23, v14);
  if (__swift_getEnumTagSinglePayload(v33, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_20();
      (*(v35 + 8))(v33, v13);
      sub_1BF0EF2EC(v23, v43, v50, v47, v42);
    }

    else
    {
      sub_1BF006210(v43, v48, v30);
    }

LABEL_7:
    v39 = OUTLINED_FUNCTION_6_29();
    v40(v39);
    goto LABEL_8;
  }

  sub_1BF00BD64(v23, v43, v49, v41, v42);
  v36 = OUTLINED_FUNCTION_6_29();
  v37(v36);
  OUTLINED_FUNCTION_20();
  (*(v38 + 8))(v33, v13);
LABEL_8:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF005BFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF005C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(*v5 + 80);
  v10 = type metadata accessor for Seal.Resolution(255, v9, v9, a3);
  v11 = sub_1BF17AE6C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  os_unfair_lock_assert_owner(*(*(v5 + 16) + 16));
  if ((*(v5 + 24) & 1) == 0)
  {
    type metadata accessor for Seal.Handler(0, v9, v16, v17);
    v21 = sub_1BEFEFDD8(a1, a2);
    swift_beginAccess();
    sub_1BF17A65C();

    sub_1BF17A5DC();
    swift_endAccess();
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(a4, v20, 1, v10);
  }

  v18 = *(*v5 + 112);
  swift_beginAccess();
  (*(v12 + 16))(v15, v5 + v18, v11);
  result = __swift_getEnumTagSinglePayload(v15, 1, v10);
  if (result != 1)
  {
    (*(*(v10 - 8) + 32))(a4, v15, v10);
    v20 = 0;
    return __swift_storeEnumTagSinglePayload(a4, v20, 1, v10);
  }

  __break(1u);
  return result;
}

uint64_t Lock.sync<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

uint64_t sub_1BF005FA8()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BF006070((v0 + 24), v0 + v1, *(v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 16));
}

uint64_t sub_1BF006070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v21[3] = type metadata accessor for ProxyResolver();
  v21[4] = &protocol witness table for ProxyResolver;
  v21[0] = a3;
  v15 = *(v13 + 8);

  v15(a2, v21, a10, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1BEFF6618(a2, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_112()
{
}

void (*sub_1BF006210(void *a1, void (*a2)(), uint64_t a3))()
{
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  if (off_1ED8F0218 != a1)
  {
    if (qword_1ED8EFB98 != -1)
    {
      OUTLINED_FUNCTION_6_27();
      swift_once();
    }

    if (qword_1ED8EFC18 != a1 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        OUTLINED_FUNCTION_5_23();
        swift_once();
      }

      if (qword_1ED8EF928 != a1 || [objc_opt_self() isMainThread])
      {
        v6 = swift_allocObject();
        v6[2] = a1;
        v6[3] = a2;
        v6[4] = a3;
        v7 = a1;
        a2 = sub_1BF0077B8;
      }
    }
  }

  return a2;
}

uint64_t sub_1BF006364()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BF0063A4()
{
  OUTLINED_FUNCTION_32();
  sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_13_16();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_2_0();
  v5 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_18_8();
  sub_1BF179B8C();
  OUTLINED_FUNCTION_3_30();
  sub_1BEFF74A0(v7, v0, MEMORY[0x1E69E8040]);
  v8 = OUTLINED_FUNCTION_14_16();
  sub_1BEFF74E8(v8, v9, v0);
  v10 = sub_1BEFF753C(&qword_1ED8F0BE8, qword_1ED8F0BF0, v0);
  OUTLINED_FUNCTION_8_23(v10);
  v11 = OUTLINED_FUNCTION_16_13();
  v12(v11);
  qword_1ED8EF928 = OUTLINED_FUNCTION_7_24(45, 0x80000001BF18E5F0);
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF006544()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = sub_1BF179B6C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_1();
  v47 = v14;
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  if (qword_1ED8EFB98 != -1)
  {
    OUTLINED_FUNCTION_6_27();
    swift_once();
  }

  if (qword_1ED8EFC18 == v2)
  {
    sub_1BEFF6E88();
    v26 = sub_1BF17AD5C();
    OUTLINED_FUNCTION_1_45();
    v50[1] = 1107296256;
    v51 = sub_1BF0058CC;
    v52 = &block_descriptor_6;
    v27 = _Block_copy(v50);
    v28 = v53;

    sub_1BF179B8C();
    v50[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_24();
    sub_1BEFF74A0(v29, v28, MEMORY[0x1E69E7F70]);
    v30 = OUTLINED_FUNCTION_14_16();
    sub_1BEFF74E8(v30, v31, v28);
    v32 = sub_1BEFF753C(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v28);
    OUTLINED_FUNCTION_12_18(v50, v33, v32);
    OUTLINED_FUNCTION_11_15();
    _Block_release(v27);

    v34 = OUTLINED_FUNCTION_20_12();
    v35(v34);
    (*(v47 + 8))(v18, v48);
  }

  else
  {
    if (qword_1ED8EF920 != -1)
    {
      OUTLINED_FUNCTION_5_23();
      swift_once();
    }

    if (qword_1ED8EF928 == v2)
    {
      v36 = sub_1BEFF6E88();
      (*(v5 + 104))(v10, *MEMORY[0x1E69E7F88], v3);
      v37 = sub_1BF17ADAC();
      (*(v5 + 8))(v10, v3);
      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_9_23(COERCE_DOUBLE(1107296256));
      v51 = v38;
      v52 = &block_descriptor_3_0;
      v39 = _Block_copy(v50);

      sub_1BF179B8C();
      v49 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_24();
      sub_1BEFF74A0(v40, v36, MEMORY[0x1E69E7F70]);
      v41 = OUTLINED_FUNCTION_14_16();
      sub_1BEFF74E8(v41, v42, v36);
      v43 = sub_1BEFF753C(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v36);
      OUTLINED_FUNCTION_12_18(&v49, v44, v43);
      OUTLINED_FUNCTION_11_15();
      _Block_release(v39);
    }

    else
    {
      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_9_23(COERCE_DOUBLE(1107296256));
      v51 = v19;
      v52 = &block_descriptor_10;
      v20 = _Block_copy(v50);

      sub_1BF179B8C();
      v49 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_24();
      sub_1BEFF74A0(v21, v0, MEMORY[0x1E69E7F70]);
      v22 = OUTLINED_FUNCTION_14_16();
      sub_1BEFF74E8(v22, v23, v0);
      v24 = sub_1BEFF753C(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v0);
      OUTLINED_FUNCTION_12_18(&v49, v25, v24);
      OUTLINED_FUNCTION_11_15();
      _Block_release(v20);
    }

    v45 = OUTLINED_FUNCTION_20_12();
    v46(v45);
    (*(v47 + 8))(v18, v48);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t KeyedDecodingContainer.decodeSafeArrayIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Safe(255, a4, a5, a4);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_2_16();
  v9[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v5 = sub_1BF17B5FC();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_1_18(v9);
  swift_getWitnessTable();
  v7 = sub_1BF17A38C();

  return v7;
}

uint64_t sub_1BF006B50(uint64_t a1)
{
  result = sub_1BF17AE6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BF006BE0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v31 = v1;
  OUTLINED_FUNCTION_29();
  v32 = *(v3 + 80);
  v5 = type metadata accessor for Seal.Resolution(0, v32, v32, v4);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v34 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v33 = &v29 - v11;
  OUTLINED_FUNCTION_54();
  v12 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v19 = *(v0 + 16);
  os_unfair_lock_assert_owner(*(v19 + 16));
  v30 = *(v7 + 16);
  v30(v18, v2, v5);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  OUTLINED_FUNCTION_29();
  v21 = *(v20 + 112);
  OUTLINED_FUNCTION_7_2(v0 + v21, &v36);
  (*(v14 + 40))(v0 + v21, v18, v12);
  swift_endAccess();
  swift_beginAccess();
  v22 = *(v0 + 32);
  OUTLINED_FUNCTION_7_2(v0 + 32, &v35);
  v23 = v32;
  type metadata accessor for Seal.Handler(0, v32, v24, v25);
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17A63C();
  swift_endAccess();
  v26 = v33;
  v30(v33, v31, v5);
  v27 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v23;
  *(v28 + 3) = v19;
  *(v28 + 4) = v22;
  (*(v7 + 32))(&v28[v27], v26, v5);

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF006E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(OUTLINED_FUNCTION_14_17(a1, a2, a3, a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_20();
    (*(v11 + 8))(v5 + v8, v4);
  }

  return MEMORY[0x1EEE6BDD0](v5, v8 + v9, v7 | 7);
}

void *OnlyOnceDeferredPromise.init()()
{
  v1 = v0;
  v2 = *v0;
  v0[3] = 0;
  v0[2] = 0;
  v3 = v0 + 2;
  *v20 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[4] = UnfairLock.init(options:)(v20);
  type metadata accessor for Promise(0, *(v2 + 80), v4, v5);
  *v20 = 0;
  v6 = swift_allocObject();
  UnfairLock.init(options:)(v20);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_69(v7, v8, v9, v10, v11, v12, v13, v14, v19);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  v15 = swift_unownedRelease();
  OUTLINED_FUNCTION_1_68(v15, v16, v17);
  *v3 = v6;

  return v1;
}

uint64_t sub_1BF0070F0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BF007120(uint64_t a1)
{
  OUTLINED_FUNCTION_24_13();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_7_2(v1 + v4, v7);
  OUTLINED_FUNCTION_24_13();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1BF0071BC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_5(v0 + *(v1 + 104), v3);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void sub_1BF007204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_95_0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v48 = v38;
  v39 = *v29;
  type metadata accessor for DeferredPromise(0, v40, v38, v36);

  v41 = sub_1BF0057E8();
  v42 = *(v39 + 80);
  v33(v41, v42, v35);
  v43 = OUTLINED_FUNCTION_36();
  v44 = v31(v43);
  OUTLINED_FUNCTION_27();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  v46[2] = v42;
  v46[3] = v35;
  v46[4] = v45;
  v46[5] = v41;
  v46[6] = v48;
  v46[7] = v37;

  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v44(v47);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v41 + 16))
  {

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF0073A8()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void (*sub_1BF007448(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t sub_1BF0074BC()
{

  v0 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t (*sub_1BF0074F0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

id sub_1BF007568()
{
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  v1 = off_1ED8F0218;

  return v1;
}

uint64_t sub_1BF0075BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t firstly<A, B>(on:disposeOn:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DeferredPromise(0, a5, a3, a4);
  v10 = DeferredPromise.__allocating_init()();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = v11;
  v12[4] = v10;
  v12[5] = a3;
  v12[6] = a4;

  v13 = sub_1BF006210(a1, sub_1BF0077C4, v12);

  v15 = (v13)(v14);
  result = OUTLINED_FUNCTION_10_3(v15);
  v17 = *(v10 + 16);
  if (v17)
  {

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF00774C()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t DeferredPromise.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  v0 = swift_allocObject();
  DeferredPromise.init()(v0, v1, v2, v3);
  return v0;
}

uint64_t sub_1BF007800()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1BF007840(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    a3();
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a2;

    v16 = MEMORY[0x1E69E7CA8];
    v17 = sub_1BF014EDC();
    Promise.then<A>(on:closure:)(v17, a7, v15, v16 + 8);

    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a2;
    v19 = qword_1ED8F0210;

    if (v19 != -1)
    {
      swift_once();
    }

    sub_1BEFF77FC(off_1ED8F0218, a9, v18);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v13 = swift_allocError();
    *v14 = xmmword_1BF17FB20;
    *(v14 + 16) = 2;
    DeferredPromise.reject(_:)(v13);
  }
}

uint64_t Safe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v25 = v8;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v27 = type metadata accessor for Safe(0, a2, a3, v12);
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23 - v17;
  OUTLINED_FUNCTION_11_7();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v24;
  sub_1BF17BBBC();
  if (v19)
  {
    sub_1BF0B472C(a2, v19, a2);

    (*(v25 + 8))(v18, v26);
    OUTLINED_FUNCTION_11_7();
  }

  else
  {
    v24 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v23 = v11;
    sub_1BF17B8DC();
    v22 = v23;
    __swift_storeEnumTagSinglePayload(v23, 0, 1, a2);
    (*(v25 + 40))(v18, v22, v26);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v20 = v27;
  (*(v14 + 16))(v29, v18, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v14 + 8))(v18, v20);
}

uint64_t sub_1BF007D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1BF007F08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1BF008128);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t sub_1BF008170@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  return (*(v5 + 16))(a3, a1);
}

uint64_t sub_1BF0081DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t ShortDescribable.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6, a1);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BF00829C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::String __swiftcall ShortDescription.describe(withIndentation:)(Swift::Int withIndentation)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (!*(v4 + 16))
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_20;
  }

  *&v34 = *v1;
  *(&v34 + 1) = v3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](2600, 0xE200000000000000);
  v6 = *(v4 + 64);
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  v36 = v34;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v11 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v13 = 0;
  if (!v9)
  {
LABEL_6:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        v9 = 0;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        goto LABEL_11;
      }

      v9 = *(v4 + 64 + 8 * v14);
      ++v13;
      if (v9)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  while (1)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1BF0075BC(*(v4 + 56) + 32 * v16, v30);
    *&v31 = v19;
    *(&v31 + 1) = v18;
    sub_1BEFF9A40(v30, &v32);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_11:
    v34 = v31;
    v35[0] = v32;
    v35[1] = v33;
    v20 = *(&v31 + 1);
    if (!*(&v31 + 1))
    {
      break;
    }

    v21 = v34;
    v11 = sub_1BEFF9A40(v35, &v31);
    if (withIndentation + 0x4000000000000000 < 0)
    {
      goto LABEL_22;
    }

    *&v30[0] = sub_1BF17A2DC();
    *(&v30[0] + 1) = v22;
    MEMORY[0x1BFB52000](v21, v20);

    MEMORY[0x1BFB52000](61, 0xE100000000000000);
    v23 = sub_1BF008590(&v31, withIndentation + 1);
    MEMORY[0x1BFB52000](v23);

    MEMORY[0x1BFB52000](2604, 0xE200000000000000);
    MEMORY[0x1BFB52000](*&v30[0], *(&v30[0] + 1));

    v11 = __swift_destroy_boxed_opaque_existential_1(&v31);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  if (__OFSUB__(withIndentation, 1))
  {
    goto LABEL_23;
  }

  if (withIndentation + 0x3FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = *(&v36 + 1);
  v25 = v36;
  *&v34 = sub_1BF17A2DC();
  *(&v34 + 1) = v26;
  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  v28 = *(&v34 + 1);
  v27 = v34;
  v34 = __PAIR128__(v24, v25);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](v27, v28);

  v3 = *(&v34 + 1);
  v2 = v34;
LABEL_20:
  v11 = v2;
  v12 = v3;
LABEL_25:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1BF008590(uint64_t a1, uint64_t a2)
{
  sub_1BF0075BC(a1, __dst);
  sub_1BF008CC4(0, &qword_1ED8EE528, MEMORY[0x1E69E62F8]);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *v44;
    v6 = *(*v44 + 16);
    if (v6)
    {
      *v44 = 2651;
      *&v44[8] = 0xE200000000000000;
      if (a2 + 0x4000000000000000 >= 0)
      {
        v7 = v5 + 32;
        do
        {
          sub_1BF0075BC(v7, __dst);
          *&v48 = sub_1BF17A2DC();
          *(&v48 + 1) = v8;
          v9 = sub_1BF008590(__dst, a2 + 1);
          v11 = v10;
          __swift_destroy_boxed_opaque_existential_1(__dst);
          MEMORY[0x1BFB52000](v9, v11);

          MEMORY[0x1BFB52000](2604, 0xE200000000000000);
          MEMORY[0x1BFB52000](v48, *(&v48 + 1));

          v7 += 32;
          --v6;
        }

        while (v6);

        if (!__OFSUB__(a2, 1))
        {
          if (a2 + 0x3FFFFFFFFFFFFFFFLL >= 0)
          {
            v12 = *&v44[8];
            v13 = *v44;
            *__dst = sub_1BF17A2DC();
            *&__dst[8] = v14;
            v15 = 93;
LABEL_33:
            MEMORY[0x1BFB52000](v15, 0xE100000000000000);
            v35 = *__dst;
            *__dst = v13;
            *&__dst[8] = v12;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            MEMORY[0x1BFB52000](v35, *(&v35 + 1));

            return *__dst;
          }

          goto LABEL_49;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    return 23899;
  }

  sub_1BF0075BC(a1, __dst);
  sub_1BF008D6C();
  result = swift_dynamicCast();
  if (!result)
  {
    sub_1BF0075BC(a1, &v48);
    sub_1BEFE6EA8(0, &qword_1ED8EE738, &protocol descriptor for ShortDescribable);
    if (swift_dynamicCast())
    {
      sub_1BEFE87B0(v44, __dst);
      v29 = *&__dst[24];
      v30 = *&__dst[32];
      __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
      (*(v30 + 16))(v44, v29, v30);
      v31 = *&v44[24];
      v32 = *&v44[32];
      __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
      v33 = (*(v32 + 8))(a2, v31, v32);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v44);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v33;
    }

    memset(v44, 0, 40);
    sub_1BF008DD0(v44, &qword_1ED8EE730, &qword_1ED8EE738, &protocol descriptor for ShortDescribable);
    sub_1BF0075BC(a1, &v48);
    sub_1BEFE6EA8(0, qword_1ED8EE748, &protocol descriptor for OptionalProtocol);
    if (swift_dynamicCast())
    {
      sub_1BEFE87B0(v44, __dst);
      v36 = *&__dst[24];
      v37 = *&__dst[32];
      __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
      if ((*(v37 + 16))(v36, v37))
      {
        v38 = *&__dst[24];
        v39 = *&__dst[32];
        __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
        (*(v39 + 24))(v51, v38, v39);
        if (swift_dynamicCast())
        {
          sub_1BEFE87B0(&v48, v44);
          v40 = *&v44[24];
          v41 = *&v44[32];
          __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
          (*(v41 + 16))(&v48, v40, v41);
          v42 = *(&v49 + 1);
          v43 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          v33 = (*(v43 + 8))(a2, v42, v43);
          __swift_destroy_boxed_opaque_existential_1(&v48);
          goto LABEL_28;
        }

        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_1BF008DD0(&v48, &qword_1ED8EE730, &qword_1ED8EE738, &protocol descriptor for ShortDescribable);
      }

      __swift_destroy_boxed_opaque_existential_1(__dst);
    }

    else
    {
      memset(v44, 0, 40);
      sub_1BF008DD0(v44, &qword_1ED8EE740, qword_1ED8EE748, &protocol descriptor for OptionalProtocol);
    }

    *__dst = 0;
    *&__dst[8] = 0xE000000000000000;
    sub_1BF17B40C();
    return *__dst;
  }

  v16 = *v44;
  if (!*(*v44 + 16))
  {

    return 32123;
  }

  v17 = 0;
  v18 = *(*v44 + 64);
  v19 = 1 << *(*v44 + 32);
  v46 = 2683;
  v47 = 0xE200000000000000;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  if ((v20 & v18) == 0)
  {
LABEL_16:
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v21 = 0;
        memset(v44, 0, sizeof(v44));
        goto LABEL_21;
      }

      v21 = *(v16 + 64 + 8 * v23);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v23 = v17;
LABEL_20:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = v24 | (v23 << 6);
    sub_1BF083BD8(*(v16 + 48) + 40 * v25, &v48);
    sub_1BF0075BC(*(v16 + 56) + 32 * v25, v51);
    *v44 = v48;
    *&v44[16] = v49;
    *&v44[32] = v50;
    sub_1BEFF9A40(v51, &v44[40]);
LABEL_21:
    memcpy(__dst, v44, sizeof(__dst));
    if (!*&__dst[24])
    {
      break;
    }

    *v44 = *__dst;
    *&v44[16] = *&__dst[16];
    *&v44[32] = *&__dst[32];
    result = sub_1BEFF9A40(&__dst[40], &v48);
    if (a2 + 0x4000000000000000 < 0)
    {
      goto LABEL_46;
    }

    *&v51[0] = sub_1BF17A2DC();
    *(&v51[0] + 1) = v26;
    v27 = sub_1BF17B11C();
    MEMORY[0x1BFB52000](v27);

    MEMORY[0x1BFB52000](8250, 0xE200000000000000);
    v28 = sub_1BF008590(&v48, a2 + 1);
    MEMORY[0x1BFB52000](v28);

    MEMORY[0x1BFB52000](2604, 0xE200000000000000);
    MEMORY[0x1BFB52000](*&v51[0], *(&v51[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v48);
    result = sub_1BF083C34(v44);
    if (!v21)
    {
      goto LABEL_16;
    }
  }

  if (__OFSUB__(a2, 1))
  {
    goto LABEL_50;
  }

  if (a2 + 0x3FFFFFFFFFFFFFFFLL >= 0)
  {
    v13 = v46;
    v12 = v47;
    *__dst = sub_1BF17A2DC();
    *&__dst[8] = v34;
    v15 = 125;
    goto LABEL_33;
  }

LABEL_51:
  __break(1u);
  return result;
}

void sub_1BF008CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF008D1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BF008D6C()
{
  if (!qword_1ED8EE530[0])
  {
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8EE530);
    }
  }
}

uint64_t sub_1BF008DD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1BF008E2C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1BF008E2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1BEFE6EA8(255, a3, a4);
    v5 = sub_1BF17AE6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void (*Atomic.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *(*v1 + 80);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  Atomic.wrappedValue.getter(v7);
  return sub_1BF008F64;
}

void sub_1BF008F64(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    Atomic.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Atomic.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OS_dispatch_queue.syncValue<A>(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v10 = sub_1BF17AD5C();
  v11 = sub_1BF17ADEC();

  if ((v11 & 1) != 0 && [objc_opt_self() isMainThread])
  {
    return a1();
  }

  __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  OUTLINED_FUNCTION_85();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BF146300;
  *(v14 + 24) = v13;
  v18[4] = sub_1BF006170;
  v18[5] = v14;
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_0_72();
  v18[2] = v15;
  v18[3] = &block_descriptor_15;
  v16 = _Block_copy(v18);

  dispatch_sync(v5, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0091F8()
{

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2)
{

  return sub_1BF01A7AC(a1, a2, (v2 - 160));
}

uint64_t sub_1BF009264(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BF17A0AC();

  return v3;
}

void Promise.then<A>(on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF00AA9C();
}

{
  sub_1BF00AA9C();
}

uint64_t (*sub_1BF00931C(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E184;
}

void sub_1BF0093DC()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_7_2(v0 + 32, v15);
  OUTLINED_FUNCTION_3_42();
  sub_1BF00951C();
  swift_endAccess();

  type metadata accessor for PoolObject(0, v2, v12, v13);
  (*(v6 + 16))(v11, v4, v2);
  sub_1BEFF1AC4(v11);
  OUTLINED_FUNCTION_7_2(v0 + 24, v15);
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_10_29();
  *(v0 + 24) = v14;
  swift_endAccess();
  OUTLINED_FUNCTION_26_2();
}

uint64_t asyncMain(block:)(uint64_t a1, uint64_t a2)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    v8 = sub_1BF17A75C();
    MEMORY[0x1EEE9AC00](v8, v9);
    *&v15[-16] = a1;
    *&v15[-8] = a2;
    return sub_1BF0097A4(sub_1BF009934, &v15[-32], "TeaFoundation/DispatchQueue+Tea.swift", 37, 2u, 45);
  }

  else
  {
    v11 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
    sub_1BF17A75C();

    v12 = sub_1BF17A74C();
    OUTLINED_FUNCTION_85();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = a1;
    v13[5] = a2;
    sub_1BF089AC0();
  }
}

uint64_t sub_1BF009710()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BF00974C(uint64_t a1)
{
  if (!qword_1ED8EF890)
  {
    sub_1BF17A77C();
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EF890);
    }
  }
}

uint64_t sub_1BF0097A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1BF17A74C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1BF00995C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1BF17B1EC();
    MEMORY[0x1BFB52000](0xD00000000000003FLL, 0x80000001BF18F550);
    v12 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v12);

    MEMORY[0x1BFB52000](46, 0xE100000000000000);
    result = sub_1BF17B49C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF009984(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BF009A50@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t objectdestroy_41Tm()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v3 + 8))(v0 + v4, v1);

  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t SceneStateManager.add(monitor:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = _s13TeaFoundation17DisposableMonitorCMa_0();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1BF009D14(v8, a2);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v10);
  sub_1BF005F5C(*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  result = swift_endAccess();
  a3[3] = v7;
  a3[4] = &off_1F3DC2820;
  *a3 = v9;
  return result;
}

uint64_t sub_1BF009D14(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1BF009D84(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1BF17A53C();
  }

  return result;
}

void *sub_1BF009DD4(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC8];
  v2[3] = MEMORY[0x1E69E7CC8];
  v2[4] = v4;
  swift_weakInit();
  v2[2] = a1;
  swift_weakAssign();

  return v2;
}

uint64_t sub_1BF009E34(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    OUTLINED_FUNCTION_7_2(v1 + 24, v6);

    v2 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF039054(v2, sub_1BF03912C, 0, (v1 + 24));
    swift_endAccess();
    swift_beginAccess();
    OUTLINED_FUNCTION_7_2(v1 + 32, &v5);
    v3 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF039054(v3, sub_1BF03912C, 0, (v1 + 32));
    swift_endAccess();
  }

  else
  {
  }

  return v1;
}

void sub_1BF009F38()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v42 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v42 - v11;
  OUTLINED_FUNCTION_2_3();
  v43 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v42 - v20;
  v22 = *v5;
  v23 = v5[1];
  v24 = v5[2];
  OUTLINED_FUNCTION_10_9(v1 + 24, v45);
  if (*(*(v1 + 24) + 16))
  {
    sub_1BEFE81F8(v22, v23, v24);
    if (v25)
    {
      swift_endAccess();
      type metadata accessor for PoolObject(0, v3, v26, v27);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v31 = v44;
        (*(v43 + 16))(v44, v28 + *(*v28 + 112), v3);
        v32 = v31;
LABEL_5:
        v33 = 0;
LABEL_12:
        __swift_storeEnumTagSinglePayload(v32, v33, 1, v3);
        goto LABEL_13;
      }

      type metadata accessor for WeakPoolObject(0, v3, v29, v30);
      if (swift_dynamicCastClass())
      {

        sub_1BF02E910();

        OUTLINED_FUNCTION_13_22(v12);
        if (!v39)
        {
          v40 = *(v43 + 32);
          v40(v21, v12, v3);
          v41 = v44;
          v40(v44, v21, v3);
          v32 = v41;
          goto LABEL_5;
        }

        (*(v42 + 8))(v12, v7);
      }

LABEL_11:
      v32 = v44;
      v33 = 1;
      goto LABEL_12;
    }
  }

  swift_endAccess();
  OUTLINED_FUNCTION_10_9(v1 + 32, v45);
  if (!sub_1BEFEEDE8(v22, v23, v24, *(v1 + 32)))
  {
    swift_endAccess();
    goto LABEL_11;
  }

  v34 = swift_endAccess();
  OUTLINED_FUNCTION_2_57(v34, &qword_1ED8EDCF0);
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = *(v35 + 16);
    swift_unknownObjectRetain();
  }

  else
  {
    OUTLINED_FUNCTION_6_37(0, &qword_1EBDCBDF0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_11;
    }

    v36 = sub_1BF1469C0();

    if (!v36)
    {
      goto LABEL_11;
    }
  }

  v45[0] = v36;
  swift_dynamicCast();
  v38 = v43;
  v37 = v44;
  (*(v43 + 16))(v44, v17, v3);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v3);
  (*(v38 + 8))(v17, v3);
LABEL_13:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF00A30C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BF00A384();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BF00A384()
{
  if (!qword_1ED8EF468)
  {
    v0 = sub_1BEFF79E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF468);
    }
  }
}

uint64_t sub_1BF00A3CC()
{
  sub_1BF00A434();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF00A400()
{
  sub_1BF004A40();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1BF00A434()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1BF00A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(OUTLINED_FUNCTION_14_17(a1, a2, a3, a4) - 8);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = v5 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1BF014B7C(v7, v8, v9, v4);
}

char *AuthTokenManager.init(service:store:tokenType:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v30 = *v4;
  v29 = sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_1BF17AD1C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v16 = sub_1BF179BBC();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  OUTLINED_FUNCTION_2_0();
  v28 = *(v6 + 112);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  sub_1BF179B9C();
  sub_1BF00AF3C(&qword_1ED8F0BE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BF00B014(0);
  sub_1BF00AF3C(&qword_1ED8F0BE8, sub_1BF00B014, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  (*(v8 + 104))(v13, *MEMORY[0x1E69E8090], v29);
  *&v4[v28] = sub_1BF17AD9C();
  OUTLINED_FUNCTION_4_0();
  v19 = *(v18 + 128);
  sub_1BF027A28(0);
  swift_allocObject();
  *&v4[v19] = sub_1BF027C60(0);
  OUTLINED_FUNCTION_4_0();
  v21 = &v4[*(v20 + 136)];
  v22 = type metadata accessor for DateProvider();
  v23 = swift_allocObject();
  v21[3] = v22;
  v21[4] = &protocol witness table for DateProvider;
  *v21 = v23;
  sub_1BEFE87B0(a1, (v5 + 16));
  OUTLINED_FUNCTION_4_0();
  (*(*(*(v30 + 80) - 8) + 32))(&v5[*(v24 + 104)], a2);
  OUTLINED_FUNCTION_4_0();
  v26 = &v5[*(v25 + 120)];
  *v26 = a3;
  *(v26 + 1) = a4;
  return v5;
}

uint64_t ProxyResolver.resolve<A>(_:with:)()
{
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_2_49();
  v0 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_3_36(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v10, v11, v12);
  v10 = v13;
  OUTLINED_FUNCTION_1_52(v9, &v14);

  return v14;
}

{
  OUTLINED_FUNCTION_25_3();
  v1 = v0;
  OUTLINED_FUNCTION_2_49();
  v7 = toKey<A>(type:name:)(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_3_36(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v17, v18, v19);
  v17 = v20;
  OUTLINED_FUNCTION_1_52(v16, v1);
}

void sub_1BF00A8F8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void (*sub_1BF00A950(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t sub_1BF00A9BC()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t (*sub_1BF00A9F4(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E1A8;
}

void sub_1BF00AA9C()
{
  OUTLINED_FUNCTION_97_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = OUTLINED_FUNCTION_104();
  type metadata accessor for DeferredPromise(v10, v11, v12, v13);

  v14 = sub_1BF0057E8();
  v15 = *(v9 + 80);
  v4(v14, v15);
  v16 = OUTLINED_FUNCTION_36();
  v2(v16);
  OUTLINED_FUNCTION_85();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v8;
  v17[4] = v6;
  v17[5] = v14;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v8(v18);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v14 + 16))
  {

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF00ABE8(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

void Promise.error(on:closure:)()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_0();
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = *(v2 + 80);
  OUTLINED_FUNCTION_45_1();
  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v1(v3);

  OUTLINED_FUNCTION_55();
}

void OUTLINED_FUNCTION_111(uint64_t a1)
{
  v2 = *(a1 + 16);

  os_unfair_lock_assert_not_owner(v2);
}

void sub_1BF00AD5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BF17A07C();

  [a3 setName_];
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

uint64_t Cache.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  v0 = swift_allocObject();
  Cache.init()(v0, v1, v2, v3);
  return v0;
}

uint64_t sub_1BF00AEAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF00AEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF00AF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF00AF84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF00AFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF00B048(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF00B0A0(uint64_t result, unsigned int a2)
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

uint64_t sub_1BF00B0C8(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v2 <= 0x3F)
  {
    result = sub_1BF17923C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF00B164(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF00B22C()
{
  sub_1BF00B2D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF00B284()
{
  type metadata accessor for TaskScheduler();
  v0 = swift_allocObject();
  result = sub_1BF00B334(0x746C7561666564, 0xE700000000000000);
  off_1ED8EF150 = v0;
  return result;
}

uint64_t sub_1BF00B2D4()
{

  v1 = qword_1ED8F52F0;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1BF00B334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_1BF17AD1C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  OUTLINED_FUNCTION_2_0();
  v15 = sub_1BF179BBC();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  OUTLINED_FUNCTION_2_0();
  sub_1BEFF6E88();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](0xD00000000000001BLL, 0x80000001BF18F3F0);
  sub_1BF179B8C();
  sub_1BF17AD0C();
  (*(v7 + 104))(v12, *MEMORY[0x1E69E8098], v5);
  *(v2 + 16) = sub_1BF17AD9C();
  v17 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v3 + 24) = v17;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v18 = v17;
  MEMORY[0x1BFB52000](0xD00000000000001BLL, 0x80000001BF18F410);
  sub_1BF00AD5C(a1, a2, v18);

  [*(v3 + 24) setMaxConcurrentOperationCount_];
  [*(v3 + 24) setUnderlyingQueue_];
  v19 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v3 + 32) = v19;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v20 = v19;
  MEMORY[0x1BFB52000](0xD000000000000017, 0x80000001BF18F430);

  sub_1BF00AD5C(a1, a2, v20);

  [*(v3 + 32) setMaxConcurrentOperationCount_];
  return v3;
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 32))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

uint64_t sub_1BF00B614(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_4_34(a1, a2);
  toKey<A>(type:name:)(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_0_73();
  sub_1BF0093DC();
}

uint64_t dispatch thunk of ContextType.use<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

void sub_1BF00B6B0()
{
  OUTLINED_FUNCTION_32();
  v30 = v1;
  v31 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v11 = OUTLINED_FUNCTION_13_17(v7, v8, v9, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  OUTLINED_FUNCTION_15_15();
  v23 = swift_allocObject();
  v23[2] = v6;
  v24 = v30;
  v25 = v31;
  v23[3] = v30;
  v23[4] = v4;
  v29 = v4;
  v23[5] = v25;
  v26 = v24;

  sub_1BF005C4C(sub_1BF0547EC, v23, v27, v22);

  os_unfair_lock_unlock(*(v0 + 16));
  (*(v13 + 16))(v18, v22, v11);
  if (__swift_getEnumTagSinglePayload(v18, 1, v32) == 1)
  {
    (*(v13 + 8))(v22, v11);
  }

  else
  {
    sub_1BF006210(v26, v29, v25);
    v28 = *(v13 + 8);
    v28(v22, v11);
    v28(v18, v11);
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_1BF00B8B8(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), void *a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v17 = swift_allocObject();
            v17[2] = a3;
            v17[3] = a8;
            v17[4] = a9;
            v18 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v19);
    }
  }

  else
  {

    sub_1BF0039C4(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF00BB60(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v7 = qword_1ED8F0210;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_1BF00C048(a4, a5);
  sub_1BF004C34(a4, a5);
  sub_1BF004CA4(a4, a5);
  sub_1BF005910();
  v9 = v8;

  v9(v10);
}

void (*sub_1BF00BD64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v7 = type metadata accessor for Seal.Resolution(255, a5, a5, a4);
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v30 - v21;
  (*(v9 + 16))(v12, a1, v8, v20);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    result = (*(v9 + 8))(v12, v8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v23 = *(v13 + 32);
      v23(v22, v12, a5);
      (*(v13 + 16))(v17, v22, a5);
      v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v25 = swift_allocObject();
      v26 = v31;
      v27 = v32;
      *(v25 + 2) = a5;
      *(v25 + 3) = v26;
      *(v25 + 4) = v27;
      v23(&v25[v24], v17, a5);

      v28 = sub_1BF006210(v33, sub_1BF004C30, v25);

      (*(v13 + 8))(v22, a5);
      return v28;
    }

    result = (*(*(v7 - 8) + 8))(v12, v7);
  }

  __break(1u);
  return result;
}

void (*sub_1BF00C048(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0978F8;
}

char *sub_1BF00C128(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

uint64_t sub_1BF00C150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a2;
  v8 = type metadata accessor for Seal.Resolution(0, a5, a5, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v30 - v21;
  (*(v9 + 16))(v12, a1, v8, v20);
  if (swift_getEnumCaseMultiPayload())
  {
    result = (*(v9 + 8))(v12, v8);
    __break(1u);
  }

  else
  {
    v23 = *(v13 + 32);
    v23(v22, v12, a5);
    (*(v13 + 16))(v17, v22, a5);
    v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v25 = swift_allocObject();
    v26 = v30;
    *(v25 + 2) = a5;
    *(v25 + 3) = v26;
    *(v25 + 4) = a4;
    v23(&v25[v24], v17, a5);

    v27 = sub_1BF006210(v31, sub_1BF00CA9C, v25);

    (v27)(v28);

    return (*(v13 + 8))(v22, a5);
  }

  return result;
}

uint64_t sub_1BF00C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  v9(v6);
  DeferredPromise.resolve(_:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF00C610@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for DisposableMonitor();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1BF009D14(v8, a2);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v10);
  sub_1BF005F5C(*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  result = swift_endAccess();
  a3[3] = v7;
  a3[4] = &off_1F3DBCDB0;
  *a3 = v9;
  return result;
}

void sub_1BF00C724()
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_2_20(v2, v0);
  v4 = *(v3 + 16);
  v5 = sub_1BEFE90AC(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB53020](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 24))(v1, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v11 = *(v3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v12 = sub_1BEFE90AC(v11);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      *(v3 + 16) = v14;

      OUTLINED_FUNCTION_76_0();
      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](j, v11);
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t objectdestroy_19Tm()
{

  v0 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_17Tm()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF00CAB0(uint64_t a1)
{
  sub_1BF00974C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF00CB0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v28 - v16;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v28 - v21;
  v23(v20);
  if (!v8)
  {
    v28[1] = a4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v25 = sub_1BF17A98C();

    if (v25)
    {
      (*(v11 + 8))(v22, a6);
    }

    else
    {
      (*(v11 + 16))(v13, v22, a6);
      sub_1BF17A9AC();
      sub_1BF17A94C();
      v26 = *(v11 + 8);
      v26(v17, a6);
      v26(v22, a6);
    }

    v24 = v25 ^ 1;
  }

  return v24 & 1;
}

void sub_1BF00CCEC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    sub_1BF041640();
  }

  else
  {

    sub_1BF17B70C();
  }
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

uint64_t objectdestroy_3Tm()
{

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BF00CE34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8, uint64_t a9)
{
  v24 = a5;
  v25 = a6;
  v15 = type metadata accessor for Seal.Resolution(0, a9, a9, a4);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v24 - v19;
  (*(v16 + 16))(&v24 - v19, a1, v15, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 8))(v20, v15);
      sub_1BF02DFEC(a1, a2, v24, v25, a9);
    }

    else
    {
      v22 = sub_1BF006210(a2, a7, a8);
      (v22)(v22, v23);
    }
  }

  else
  {
    sub_1BF00C150(a1, a2, a3, a4, a9);
    (*(v16 + 8))(v20, v15);
  }
}

uint64_t sub_1BF00CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1BF00E380(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1BF074078(a2, a4);
}

uint64_t sub_1BF00D0BC(void (*a1)(void))
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  result = sub_1BEFE90AC(v3);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB53020](i, v3);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          a1();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v7 = *(v1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v8 = sub_1BEFE90AC(v7);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v8 == j)
    {

      *(v1 + 16) = v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v7);
    }

    else
    {
      if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF00D358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF00D3E0(unsigned int a1)
{
  v2 = v1;
  v53 = sub_1BF179C0C();
  v57 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v3);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v50 - v7;
  v54 = sub_1BF179B6C();
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF00D358(0, &unk_1ED8EAEB8, MEMORY[0x1E6977AF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v50 - v14;
  v16 = sub_1BF1798EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50 - v23;
  v25 = dispatch_semaphore_create(0);
  v26 = *(v2 + 56);
  *(v2 + 56) = v25;

  sub_1BF1798CC();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1BF16C238(v15);
    sub_1BF16C4B4();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v52 = v11;
    v29 = v17;
    (*(v17 + 32))(v24, v15, v16);
    if (*(v2 + 16))
    {
      MockServer.stop()();
    }

    sub_1BF179A3C();
    sub_1BF179AAC();
    swift_allocObject();
    v30 = sub_1BF179A9C();
    MEMORY[0x1BFB51800](0, v30);
    (*(v17 + 16))(v20, v24, v16);
    sub_1BF17997C();
    swift_allocObject();
    v31 = v58;
    v32 = sub_1BF17995C();
    if (v31)
    {
      swift_getErrorValue();
      v33 = sub_1BF17BB0C();
      v35 = v34;
      sub_1BF16C4B4();
      swift_allocError();
      *v36 = v33;
      v36[1] = v35;
      swift_willThrow();

      return (*(v17 + 8))(v24, v16);
    }

    else
    {
      v37 = v32;

      sub_1BF009984(sub_1BF01EB54, v2);
      sub_1BF17990C();

      sub_1BF009984(sub_1BF01A1AC, v2);
      sub_1BF1798FC();

      sub_1BEFF6E88();
      v38 = *MEMORY[0x1E69E7F98];
      v39 = *(v8 + 104);
      v58 = v24;
      v40 = v37;
      v41 = v52;
      v42 = v54;
      v39(v52, v38, v54);
      v43 = sub_1BF17ADAC();
      v51 = v29;
      v44 = v43;
      (*(v8 + 8))(v41, v42);
      sub_1BF17994C();

      *(v2 + 16) = v40;

      v45 = *(v2 + 56);
      v46 = v55;
      sub_1BF179BFC();
      v47 = v56;
      sub_1BF179C6C();
      v48 = *(v57 + 8);
      v49 = v53;
      v48(v46, v53);
      sub_1BF17ADBC();

      v48(v47, v49);
      return (*(v51 + 8))(v58, v16);
    }
  }
}

void sub_1BF00D994(uint64_t a1)
{
  v3 = sub_1BF17993C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E6977B20], v3, v6);
  LOBYTE(a1) = MEMORY[0x1BFB51700](a1, v8);
  (*(v4 + 8))(v8, v3);
  if (a1)
  {
    v9 = *(v1 + 56);
    sub_1BF17ADDC();
  }
}

uint64_t sub_1BF00DAA8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = sub_1BF012714(a2, a3);
  v9 = v8;
  sub_1BF018D68(v7, v8);
  sub_1BF018D68(v7, v9);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v6 + 16);
  sub_1BF01C248();
  *(v6 + 16) = v11;
  swift_endAccess();
}

uint64_t sub_1BF00DC20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    OUTLINED_FUNCTION_0_23();
    v7 = sub_1BF17AEDC();
    v9 = v8;
    OUTLINED_FUNCTION_0_23();
    v6 = sub_1BF17AE7C();
    v10 = sub_1BF17A23C();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_1BF17B86C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1BF17A23C();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

void sub_1BF00DD60()
{
  OUTLINED_FUNCTION_7_3();
  sub_1BF011664();
  *v0 = v1;
}

void sub_1BF00DD94()
{
  OUTLINED_FUNCTION_1_21();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF179F3C();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1BF00DDFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v40[0] = 61;
  v39[2] = v40;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v10 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BF012F08, v39, v6, v7, v8, v9);
  v11 = v10;
  v12 = v3;
  if (v10[2] < 2uLL)
  {
  }

  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  v16 = v10[7];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v17 = MEMORY[0x1BFB51F50](v13, v14, v15, v16);
  v19 = v18;

  if (v11[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v40[3] = v12;
    v21 = v11[8];
    v22 = v11[9];
    v23 = v17;
    v25 = v11[10];
    v24 = v11[11];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v26 = MEMORY[0x1BFB51F50](v21, v22, v25, v24);
    v28 = v27;

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1BF01C3EC();
    v29 = *(*a2 + 16);
    sub_1BF012FC4(v29);
    v30 = *a2;
    *(v30 + 16) = v29 + 1;
    v31 = (v30 + 32 * v29);
    v31[4] = v23;
    v31[5] = v19;
    v31[6] = v26;
    v31[7] = v28;
    if (sub_1BF17A2AC())
    {
      v32 = sub_1BF17A2BC();

      if (v32)
      {

        sub_1BF01C3EC();
        v33 = *(*a3 + 16);
        result = sub_1BF012FC4(v33);
        v34 = *a3;
        *(v34 + 16) = v33 + 1;
        v35 = (v34 + 32 * v33);
        v35[4] = v23;
        v35[5] = v19;
        v35[6] = 8202875;
        v35[7] = 0xE300000000000000;
        return result;
      }
    }

    else
    {
    }

    sub_1BF01C3EC();
    v36 = *(*a3 + 16);
    result = sub_1BF012FC4(v36);
    v37 = *a3;
    *(v37 + 16) = v36 + 1;
    v38 = (v37 + 32 * v36);
    v38[4] = v23;
    v38[5] = v19;
    v38[6] = v26;
    v38[7] = v28;
  }

  return result;
}

void sub_1BF00E068()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_33_2(v10);
    OUTLINED_FUNCTION_24_6(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v13[32 * v2] <= v12)
    {
      memmove(v12, v13, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF00E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v16 = v15;
  OUTLINED_FUNCTION_76();
  sub_1BF00088C(v17);
  OUTLINED_FUNCTION_1_5();
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF00E21C();
  if (OUTLINED_FUNCTION_10_7(v19))
  {
    sub_1BF00088C(v16);
    OUTLINED_FUNCTION_8_2();
    if (!v21)
    {
      goto LABEL_14;
    }

    v14 = v20;
  }

  if (v13)
  {
    v22 = (*(*v12 + 56) + 16 * v14);
    *v22 = v11;
    v22[1] = v10;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_55();

    sub_1BF00E27C(v24, v25, v26, v27, v28);
  }
}

void sub_1BF00E21C()
{
  if (!qword_1ED8EADB8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADB8);
    }
  }
}

void sub_1BF00E27C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_3_14(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v6, v13);
  }
}

uint64_t sub_1BF00E2C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BF17BB6C();
  sub_1BF011978(v5, v2, v3);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF00E380(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1BF17B86C() & 1) == 0)
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

uint64_t ScenePhaseManager.addObserver(_:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = _s13TeaFoundation18DisposableObserverCMa_0();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1BF009D14(v8, a2);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v10);
  sub_1BF005F5C(*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  result = swift_endAccess();
  a3[3] = v7;
  a3[4] = &off_1F3DBE6D8;
  *a3 = v9;
  return result;
}

void Cache.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = v5;
  v46 = a1;
  v44 = a4;
  v45 = *(*v5 + 88);
  v8 = type metadata accessor for CacheEntry(0, v45, a2, a3);
  OUTLINED_FUNCTION_1();
  v43 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - v12;
  v14 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_4_1();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v42 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v42 - v28;
  __swift_storeEnumTagSinglePayload(&v42 - v28, 1, 1, v8);
  v30 = v5[3];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_10_9((v6 + 2), v47);
  sub_1BF179EAC();
  swift_endAccess();
  v31 = *(v16 + 8);
  v31(v29, v14);
  (*(v16 + 32))(v29, v25, v14);
  os_unfair_lock_unlock(*(v30 + 16));
  if (a5 >= 0.0)
  {
    OUTLINED_FUNCTION_17_11();
    v32();
    if (__swift_getEnumTagSinglePayload(v21, 1, v8) == 1)
    {
      v31(v29, v14);
      v31(v21, v14);
      v33 = 1;
      v34 = v45;
    }

    else
    {
      (*(v43 + 32))(v13, v21, v8);
      v35 = sub_1BF0183E0(v8);
      v31(v29, v14);
      v36 = v35 < -a5 || v35 > a5;
      v34 = v45;
      if (!v36)
      {
        v39 = v44;
        (*(*(v45 - 8) + 16))(v44, v13, v45);
        v40 = OUTLINED_FUNCTION_17_2();
        v41(v40);
        v33 = 0;
LABEL_11:
        __swift_storeEnumTagSinglePayload(v39, v33, 1, v34);
        return;
      }

      v37 = OUTLINED_FUNCTION_17_2();
      v38(v37);
      v33 = 1;
    }

    v39 = v44;
    goto LABEL_11;
  }

  __break(1u);
}

void Date.addHours(_:calendar:)()
{
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v5);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_7_17();
  v9(v8);
  OUTLINED_FUNCTION_15_9();
  v10 = OUTLINED_FUNCTION_10_8();
  v11(v10);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v0);
  if (!v12)
  {
    OUTLINED_FUNCTION_6_19();
    v15 = OUTLINED_FUNCTION_19_7();
    v16(v15);
    return;
  }

  OUTLINED_FUNCTION_23_4();
  if (!v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_22_5();
  if (!v12)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_4_16(v0);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_40();
    sub_1BF05AC80(v0, v13, v14);
  }
}

void sub_1BF00EAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF00EB80(uint64_t a1)
{
  v1 = sub_1BF014A1C(a1);
  v1();
}

uint64_t sub_1BF00EBDC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BF00ED3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *(*a3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    DeferredPromise.resolve(_:)(v9);
    swift_unknownObjectRelease();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_1BF095D40();
    v11 = swift_allocError();
    *v12 = xmmword_1BF17FB20;
    *(v12 + 16) = 2;
    DeferredPromise.reject(_:)(v11);
  }
}

uint64_t sub_1BF00EF7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF17981C();
  *a1 = result;
  return result;
}

unint64_t sub_1BF00EFCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BF01A86C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1BF17B2FC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BF00F10C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 40))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      *(a1 + 16) = v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF00F314()
{
  OUTLINED_FUNCTION_77();
  v5 = v4;
  OUTLINED_FUNCTION_2_20(v4, v6);
  v7 = *(v5 + 16);
  v8 = sub_1BEFE90AC(v7);
  if (v8)
  {
    v0 = v8;
    if (v8 < 1)
    {
      goto LABEL_26;
    }

    v2 = v7 & 0xC000000000000001;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v0; ++i)
    {
      if (v2)
      {
        OUTLINED_FUNCTION_8_14();
        v1 = v10;
      }

      else
      {
        OUTLINED_FUNCTION_3_15();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 8))(ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1BEFE90AC(*(v5 + 16));
  OUTLINED_FUNCTION_7_14();
  for (j = 0; ; ++j)
  {
    if (v0 == j)
    {

      *(v5 + 16) = v14;

      OUTLINED_FUNCTION_76_0();
      return;
    }

    if (v2)
    {
      OUTLINED_FUNCTION_8_14();
    }

    else
    {
      if (j >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_3_15();
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B36C();
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1BF00F4E4(uint64_t a1, uint64_t a2)
{
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF00F578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF01A748(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF00F5E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF014DC0(result, a2);
  }

  return result;
}

uint64_t sub_1BF00F5F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF014E18(result, a2);
  }

  return result;
}

uint64_t sub_1BF00F608(uint64_t a1, uint64_t a2)
{
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF00F69C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;

    sub_1BF01C888(a1, a2, a3, a4 & 1, a5, v16, a6, a7);
  }

  return result;
}

uint64_t sub_1BF00F750@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A10C();
  v12 = sub_1BF17A0CC();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    goto LABEL_3;
  }

  v77 = v11;
  v74 = a3;
  if (qword_1ED8EE9F0 != -1)
  {
    goto LABEL_66;
  }

  while (2)
  {
    v27 = sub_1BF1797FC();
    v72 = __swift_project_value_buffer(v27, qword_1ED8F5298);
    v28 = sub_1BF1797DC();
    v29 = sub_1BF17ACDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BEFE0000, v28, v29, "HttpParser: try to recover data", v30, 2u);
      MEMORY[0x1BFB547B0](v30, -1, -1);
    }

    v73 = v4;

    v31 = MEMORY[0x1BFB51150](a1, a2);
    if (v31 <= 1000)
    {
      if (v31 < 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v31 = 1000;
    }

    v78 = a1;
    v75 = a2 >> 62;
    v76 = BYTE6(a2);
    v32 = a2 >> 62;
LABEL_14:
    v33 = v31 - 100;
    v34 = 0;
    v35 = a1 >> 32;
    v36 = v78;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    switch(v32)
    {
      case 1uLL:
        goto LABEL_17;
      case 2uLL:
        v36 = *(a1 + 16);
        v35 = *(a1 + 24);
LABEL_17:
        if (v35 < v36)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          swift_once();
          continue;
        }

        if (v75 == 2)
        {
          v39 = *(a1 + 16);
          v38 = *(a1 + 24);
          v34 = v35;
          v37 = v36;
        }

        else
        {
          v34 = v35;
          v37 = v36;
          v38 = a1 >> 32;
          v39 = v78;
        }

LABEL_21:
        if (v38 < v34 || v34 < v39)
        {
          goto LABEL_61;
        }

        v41 = __OFSUB__(v34, v37);
        v42 = v34 - v37;
        if (v41)
        {
          goto LABEL_62;
        }

        if ((v42 & 0x8000000000000000) == 0 && v42 < v31)
        {
          v43 = a1 >> 32;
          switch(v32)
          {
            case 1uLL:
              goto LABEL_40;
            case 2uLL:
              v43 = *(a1 + 24);
              goto LABEL_41;
            default:
              goto LABEL_43;
          }
        }

        v41 = __OFADD__(v37, v31);
        v43 = v37 + v31;
        if (v41)
        {
          goto LABEL_64;
        }

        v44 = 0;
        v45 = 0;
        switch(v32)
        {
          case 1uLL:
            v44 = a1 >> 32;
            v45 = v78;
            break;
          case 2uLL:
            v45 = *(a1 + 16);
            v44 = *(a1 + 24);
            break;
          case 3uLL:
            break;
          default:
            v45 = 0;
            v44 = v76;
            break;
        }

        if (v44 < v43 || v43 < v45)
        {
          goto LABEL_65;
        }

        v47 = 0;
        switch(v32)
        {
          case 1uLL:
LABEL_40:
            v47 = v78;
            break;
          case 2uLL:
LABEL_41:
            v47 = *(a1 + 16);
            break;
          default:
            break;
        }

        if (v43 < v47)
        {
          goto LABEL_63;
        }

LABEL_43:
        v48 = a2;
        v4 = sub_1BF17930C();
        v50 = v49;
        sub_1BF17A10C();
        v14 = sub_1BF17A0CC();
        v15 = v51;
        sub_1BF014E18(v4, v50);
        if (!v15)
        {
          v31 = v33;
          a2 = v48;
          if (v33 == 0 || v33 >= 0xFFFFFFFFFFFFFF9CLL)
          {
            goto LABEL_45;
          }

          goto LABEL_14;
        }

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v62 = sub_1BF1797DC();
        v63 = sub_1BF17ACDC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v79 = v65;
          *v64 = 136446210;
          v66 = sub_1BF01A7AC(v14, v15, &v79);

          *(v64 + 4) = v66;
          _os_log_impl(&dword_1BEFE0000, v62, v63, "HttpParser: recovered data: [%{public}s]", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x1BFB547B0](v65, -1, -1);
          MEMORY[0x1BFB547B0](v64, -1, -1);
        }

        else
        {
        }

        v4 = v73;
        a3 = v74;
LABEL_3:
        v16 = sub_1BF00FE28(0x7FFFFFFFFFFFFFFFLL, 1u, v14, v15);
        v17 = v16;
        if (!v16[2])
        {

LABEL_45:
          sub_1BF0B62E0();
          swift_allocError();
          *v52 = 0;
          v52[1] = 0;
          return swift_willThrow();
        }

        v18 = v4;
        v20 = v16[4];
        v19 = v16[5];
        v21 = v16[6];
        v22 = v16[7];
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v23 = MEMORY[0x1BFB51F50](v20, v19, v21, v22);
        v25 = v24;

        sub_1BF010444(v23, v25, &v79);
        if (v18)
        {
        }

        v53 = sub_1BF01DD60(1, v17);
        v55 = v54;
        v57 = v56;
        v59 = v58;
        if ((v58 & 1) == 0)
        {
LABEL_47:
          sub_1BF01F948(v53, v55, v57, v59);
          v61 = v60;
          goto LABEL_56;
        }

        sub_1BF17B97C();
        swift_unknownObjectRetain_n();
        v67 = swift_dynamicCastClass();
        if (!v67)
        {
          swift_unknownObjectRelease();
          v67 = MEMORY[0x1E69E7CC0];
        }

        v68 = *(v67 + 16);

        if (__OFSUB__(v59 >> 1, v57))
        {
          __break(1u);
          goto LABEL_68;
        }

        if (v68 != (v59 >> 1) - v57)
        {
LABEL_68:
          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        v61 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v61)
        {
          v61 = MEMORY[0x1E69E7CC0];
LABEL_56:
          swift_unknownObjectRelease();
        }

        v83 = MEMORY[0x1E69E7CC8];
        sub_1BF01FA5C(v61, &v83);

        v69 = v83;

        v70 = v81;
        v71 = v82;
        *a3 = v79;
        *(a3 + 8) = v80;
        *(a3 + 24) = v70;
        *(a3 + 32) = v69;
        *(a3 + 40) = v71;
        return result;
      case 3uLL:
        goto LABEL_21;
      default:
        v37 = 0;
        v39 = 0;
        v38 = v76;
        v34 = v76;
        goto LABEL_21;
    }
  }
}

unint64_t sub_1BF00FE28(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v7 = a4;
  v8 = a3;
  v11 = HIBYTE(a4) & 0xF;
  if (a1)
  {
    v12 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = 4 * v12;
      v47 = MEMORY[0x1E69E7CC0];
      v14 = 15;
      v6 = 4294959064;
LABEL_8:
      for (i = v14; ; i = sub_1BF17A1CC())
      {
        v10 = i >> 14;
        if (i >> 14 == v13)
        {
          break;
        }

        v16 = sub_1BF17A2EC();
        v9 = v17;
        result = sub_1BF0101F0(v16, v17);
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
          return result;
        }

        v19 = result;

        v20 = (v19 - 14) <= 0xFFFFFFFB && (v19 - 8232) >= 2;
        if (!v20 || v19 == 133)
        {
          v5 = (v14 >> 14 == v10) & a2;
          if (v5 != 1)
          {
            if (v10 < v14 >> 14)
            {
              goto LABEL_45;
            }

            v21 = sub_1BF17A31C();
            v43 = v23;
            v44 = v22;
            v45 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BF0147C8();
              v47 = v26;
            }

            v9 = *(v47 + 16);
            v10 = v9 + 1;
            if (v9 >= *(v47 + 24) >> 1)
            {
              sub_1BF0147C8();
              v47 = v27;
            }

            *(v47 + 16) = v10;
            v25 = (v47 + 32 * v9);
            v25[4] = v21;
            v25[5] = v45;
            v25[6] = v44;
            v25[7] = v43;
          }

          v14 = sub_1BF17A1CC();
          if ((v5 & 1) != 0 || *(v47 + 16) != a1)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      if (v14 >> 14 == v13 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v13 < v14 >> 14)
      {
        __break(1u);
      }

      else
      {
        v8 = sub_1BF17A31C();
        v9 = v34;
        v10 = v35;
        v13 = v36;

        v28 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_40:
          v37 = *(v28 + 16);
          if (v37 >= *(v28 + 24) >> 1)
          {
            sub_1BF0147C8();
            v28 = v41;
          }

          *(v28 + 16) = v37 + 1;
          v38 = (v28 + 32 * v37);
          v38[4] = v8;
          v38[5] = v9;
          v38[6] = v10;
          v38[7] = v13;
          return v28;
        }
      }

      sub_1BF0147C8();
      v28 = v40;
      goto LABEL_40;
    }
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 || (a2 & 1) == 0)
  {
    v5 = sub_1BF17A31C();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    sub_1BF0147C8();
    v28 = v32;
    v6 = *(v32 + 16);
    v7 = v6 + 1;
    if (v6 < *(v32 + 24) >> 1)
    {
LABEL_37:
      *(v28 + 16) = v7;
      v33 = (v28 + 32 * v6);
      v33[4] = v5;
      v33[5] = v8;
      v33[6] = v9;
      v33[7] = v10;
      return v28;
    }

LABEL_46:
    sub_1BF0147C8();
    v28 = v39;
    goto LABEL_37;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1BF0101F0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BF0103A4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1BF17B1DC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1BF17B2FC();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}