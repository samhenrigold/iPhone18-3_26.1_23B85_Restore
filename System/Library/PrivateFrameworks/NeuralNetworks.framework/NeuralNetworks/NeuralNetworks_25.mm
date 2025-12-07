uint64_t sub_25BC76104(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v36 = a8;
  v34 = a7;
  v38 = a6;
  v37 = a5;
  v35 = a4;
  v40 = a3;
  v11 = a2;
  v12 = sub_25BCB639C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BCB58FC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  if (v11 == 1)
  {
    v32 = v13;
    v25 = sub_25BCB598C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    (*(v16 + 104))(v18, *MEMORY[0x277CC91D8], v15);
    v10 = v9;
    v13 = v32;
    sub_25BCB596C();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    goto LABEL_5;
  }

  v26 = sub_25BCB598C();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  if (v11 != 2)
  {
LABEL_5:
    sub_25BC74980(v34, v36, v24, v40, v35, v37, v38, sub_25BB947A4, sub_25BB947F0, sub_25BC4E1C8, v32, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4]);
    if (v10)
    {
      return sub_25BB0CDB0(v24);
    }

    goto LABEL_6;
  }

  sub_25BAD6FB0(v40 + 88, v39);
LABEL_6:
  sub_25BBE46A4();
  v27 = v33;
  sub_25BCB638C();
  v28 = sub_25BCB637C();
  v30 = v29;

  (*(v13 + 8))(v27, v12);
  if (v30 >> 60 != 15)
  {
    sub_25BCB5A5C();
    sub_25BBE4B68(v28, v30);
  }

  sub_25BA9AC78(v39);
  return sub_25BB0CDB0(v24);
}

uint64_t sub_25BC764F4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v53 = a3;
  v13 = a2;
  v14 = sub_25BCB639C();
  v42 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25BCB58FC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v39 - v24;
  if (v13 == 1)
  {
    v40 = v14;
    v26 = sub_25BCB598C();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v26);
    (*(v17 + 104))(v19, *MEMORY[0x277CC91D8], v16);
    v12 = v11;
    v14 = v40;
    sub_25BCB596C();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    goto LABEL_5;
  }

  v28 = sub_25BCB598C();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v28);
  if (v13 != 2)
  {
LABEL_5:
    v48 = v53;
    v49 = v43;
    v50 = v44;
    v51 = v45;
    v29 = type metadata accessor for Function(0, a10, a11, v27);
    sub_25BB09180(v46, v47, v25, v29, v30, v31, v32, v33, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    if (v12)
    {
      return sub_25BB0CDB0(v25);
    }

    goto LABEL_6;
  }

  sub_25BAD6FB0(v53 + 88, v52);
LABEL_6:
  sub_25BBE46A4();
  v34 = v41;
  sub_25BCB638C();
  v35 = sub_25BCB637C();
  v37 = v36;

  (*(v42 + 8))(v34, v14);
  if (v37 >> 60 != 15)
  {
    sub_25BCB5A5C();
    sub_25BBE4B68(v35, v37);
  }

  sub_25BA9AC78(v52);
  return sub_25BB0CDB0(v25);
}

unint64_t sub_25BC768B0()
{
  result = qword_27FBB7700;
  if (!qword_27FBB7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7700);
  }

  return result;
}

_BYTE *sub_25BC76914(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC76A30(uint64_t a1)
{
  v2 = type metadata accessor for MILBlobStorageWriter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BC76A94()
{

  v1 = sub_25BC76C08();
  [v1 lock];

  v10 = *(v0 + 40);
  if (v10 < 0)
  {
    v12 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
  }

  else
  {
    sub_25BC76F00(v2, v3, v4, v5, v6, v7, v8, v9);
    v12 = v11;
  }

  [*(v0 + 48) unlock];

  ObjectType = swift_getObjectType();
  v14 = MEMORY[0x28223BE20](ObjectType);
  (*(v12 + 64))(sub_25BC77514, v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC76BD8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 1718379891;
  }

  else
  {
    return 0x6F73736572707345;
  }
}

id sub_25BC76C08()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_25BC76C74(void *a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 16) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_25BC76CD4(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8 < 0)
  {
    ObjectType = swift_getObjectType();
    p_ObjectType = &ObjectType;
    MEMORY[0x28223BE20](ObjectType);
    v28 = a4;
    v29 = a2;
    v30 = a3;
    v23 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
    swift_unknownObjectRetain();
    v23(sub_25BC7755C, &v27, a4, ObjectType, v8 & 0x7FFFFFFFFFFFFFFFLL);
    return sub_25BB72F9C(v9, v8);
  }

  else
  {
    p_ObjectType = v4;
    v32[0] = *(a1 + 24);

    v10 = sub_25BB71DA0(v32);
    if (v10)
    {
      sub_25BC76F00(v10, v11, v12, v13, v14, v15, v16, v17);
      v19 = v18;
      v20 = swift_getObjectType();
      ObjectType = &ObjectType;
      v21 = MEMORY[0x28223BE20](v20);
      v28 = a4;
      v29 = a2;
      v30 = a3;
      (*(v19 + 56))(sub_25BC77584, v21);
      swift_unknownObjectRelease();
      return sub_25BB72F9C(v9, v8);
    }

    else
    {
      swift_beginAccess();
      v24 = *(v9 + 48);
      v25 = sub_25BB7135C();
      if (v24)
      {
        v26 = v25 + v24;
      }

      else
      {
        v26 = 0;
      }

      a2(v24, v26);
      return sub_25BB72F9C(v9, v8);
    }
  }
}

uint64_t sub_25BC76F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 40);
  if (v9 < 0)
  {
    BYTE4(v31) = 9;
    sub_25BA97890("detachFromEspresso()", 20, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoTensorStorage.swift", 121, 2, 105, a8, v20, v21, v22, v23, 0xD00000000000003CLL, 0x800000025BCE5DB0, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28, v29, v30, v31, v32);
  }

  v10 = *(v8 + 32);
  v11 = qword_28154F2C8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_281557400;
  v23 = *(v8 + 16);
  HIBYTE(v22) = *(v8 + 24);
  LODWORD(v27) = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  sub_25BB72F90(v10, v9);

  sub_25BCB617C();
  v14 = sub_25BC740CC(&v23, &v22 + 7, &v24, v12, v10, v8, v13);
  v16 = v15;
  sub_25BB72F9C(v10, v9);
  sub_25BA9C2C8(&v24);

  v17 = *(v8 + 32);
  v18 = *(v8 + 40);
  *(v8 + 32) = v14;
  *(v8 + 40) = v16 | 0x8000000000000000;
  swift_unknownObjectRetain();
  sub_25BB72F9C(v17, v18);
  return v14;
}

id sub_25BC7707C(void (*a1)(void))
{
  v2 = v1;
  v4 = sub_25BC76C08();
  [v4 lock];

  a1();
  return [*(v2 + 48) unlock];
}

uint64_t sub_25BC77100()
{

  sub_25BB72F9C(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_25BC77130()
{
  sub_25BC77100();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC77194(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 16))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_25BC771E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BC7729C()
{

  v1 = sub_25BC76C08();
  [v1 lock];

  sub_25BC77314(v0, &v3);
  [*(v0 + 48) unlock];

  return v3;
}

uint64_t sub_25BC77314@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_25BCB70FC();
  v4 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](0x7061687320200A28, 0xEB00000000203A65);
  v5 = MEMORY[0x25F876F80](a1[2], MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE5E90);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCE5EB0);
  v7 = a1[4];
  v6 = a1[5];
  if (v6 < 0)
  {
    v8 = 1718379891;
  }

  else
  {
    v8 = 0x6F73736572707345;
  }

  if (v6 < 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  sub_25BB72F90(v7, v6);
  MEMORY[0x25F876C90](v8, v9);

  sub_25BB72F9C(v7, v6);
  result = MEMORY[0x25F876C90](10506, 0xE200000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t Embedding.weight.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(v2);
}

uint64_t sub_25BC7763C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 32);
  v7[1] = *a1;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 16);
  v11 = v5;
  result = Embedding.weight.getter(v7);
  *a2 = v7[0];
  return result;
}

uint64_t sub_25BC776A0(uint64_t *a1)
{
  v2 = *a1;

  return Embedding.weight.setter(&v2);
}

uint64_t (*Embedding.weight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BB37E84;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

double Embedding.$weight.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;

  return result;
}

BOOL Embedding.isEveryParameterInitialized.getter()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(*v0 + 32);
  result = (~v3 & 0xF000000000000007) != 0 && v3 < 0;
  *(v1 + 16) = result;
  return result;
}

void *sub_25BC77828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7708, &qword_25BCD35E8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(a2 + 32) = v6;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  v7 = *(v3 + 32);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_8:
    OUTLINED_FUNCTION_67(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  result = *(*((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  v9 = result[2];
  if (!v9)
  {
LABEL_9:

LABEL_10:
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v18, v19, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  *(a2 + 24) = result[4];
  if (v9 == 1)
  {
    goto LABEL_10;
  }

  *(a2 + 16) = result[5];
  return result;
}

uint64_t Embedding.init(weight:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7708, &qword_25BCD35E8);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(a2 + 32) = v4;
  *(a2 + 8) = 256;
  v13 = v3;
  type metadata accessor for LayerVariableReference();
  swift_allocObject();

  v22 = 1;
  *a2 = sub_25BAB6D38(&v13, 0x100000000);
  v5 = *(v3 + 16);
  v6 = *(v5 + 152);
  if (!*(v6 + 16))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = -1;
    v21 = 4;
    sub_25BCB617C();
    goto LABEL_6;
  }

  *(a2 + 24) = *(v6 + 32);

  v7 = *(v5 + 152);
  sub_25BCB617C();

  v10 = *(v7 + 16);
  if (v10 <= 1)
  {
    v14 = 0;
    v15 = 0;
    v13 = 1;
    v16 = -1;
    v18 = 0;
    v19 = 0;
    v17 = v10;
    v20 = -1;
    v21 = 4;
LABEL_6:
    OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v8, v9, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  v11 = *(v7 + 40);

  *(a2 + 16) = v11;
  return result;
}

uint64_t Embedding.init(vocabularySize:dimension:weightInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7708, &qword_25BCD35E8);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a4 + 32) = v8;
  if (a2 < 1)
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v10, v11, v12, 0xD00000000000002DLL, v13, v14, 103, 2, 69);
    __break(1u);
  }

  else
  {
    *(a4 + 16) = a2;
    *(a4 + 24) = a1;
    type metadata accessor for LayerVariableReference();
    swift_allocObject();
    result = sub_25BB1AB04(a3);
    *a4 = result;
    *(a4 + 8) = 256;
  }

  return result;
}

uint64_t Embedding.initializeParameters(for:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE70;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  sub_25BB1ABC8();
}

uint64_t Embedding.forward(_:)(uint64_t a1)
{
  v2 = *v1;
  if (!sub_25BAA80BC(*(*(*a1 + 16) + 160), &unk_286D427E8))
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    sub_25BADDD28("forward(_:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/EmbeddingLayer.swift", 103, 2, 85);
  }

  v3 = *(v2 + 32);
  if ((~v3 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_10:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  sub_25BAB69FC(v3);
  Tensor.batchGathering(atIndices:alongAxis:batchDimensionCount:)();
}

BOOL sub_25BC77E1C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE29A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25BC77E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC58720();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_25BC77E7C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE29A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC77EA8(uint64_t a1)
{
  v2 = sub_25BC78284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC77EE4(uint64_t a1)
{
  v2 = sub_25BC78284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Embedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7710, &qword_25BCD35F0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC78284();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BB3993C();
    sub_25BCB76AC();
    v16 = v19;
    v17 = v20;
    v18 = v21;
    sub_25BC77828(&v16, &v19);
    (*(v7 + 8))(v10, v5);
    v11 = v20;
    v12 = v21;
    v13 = v23;
    *a2 = v19;
    *(a2 + 8) = v11;
    *(a2 + 9) = v12;
    *(a2 + 16) = v22;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Embedding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7720, &qword_25BCD35F8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v13 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC78284();
  sub_25BCB7B6C();
  v14 = v9;
  v15 = v10;
  v16 = v13;
  sub_25BB39990();

  sub_25BCB779C();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_25BC78284()
{
  result = qword_27FBB7718;
  if (!qword_27FBB7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7718);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Embedding.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BC78398()
{
  result = qword_27FBB7728;
  if (!qword_27FBB7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7728);
  }

  return result;
}

unint64_t sub_25BC783F0()
{
  result = qword_27FBB7730;
  if (!qword_27FBB7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7730);
  }

  return result;
}

unint64_t sub_25BC78448()
{
  result = qword_27FBB7738[0];
  if (!qword_27FBB7738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7738);
  }

  return result;
}

uint64_t sub_25BC7849C(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  result = sub_25BCB6E8C();
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

uint64_t sub_25BC78548()
{
  v1 = *(*v0 + 96);
  swift_getTupleTypeMetadata2();
  v2 = sub_25BCB6E8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25BC785F8()
{
  sub_25BC78548();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC78668(char a1)
{
  if (a1)
  {
    return 0x646F72706D7563;
  }

  else
  {
    return 0x6D75736D7563;
  }
}

uint64_t sub_25BC786A4()
{
  if (*(v0 + 40))
  {
    return 0x646F72706D7563;
  }

  else
  {
    return 0x6D75736D7563;
  }
}

uint64_t sub_25BC786DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBB6D0;
  *(v1 + 32) = *(v0 + 48);

  return v1;
}

uint64_t sub_25BC78738(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  v16 = a4 & 1;
  if (!a3)
  {
    a1 = sub_25BC3DA00(a4 & 1);
  }

  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = v16;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7 & 1;
  *(v11 + 65) = a8 & 1;
  v17 = *(a5 + 152);
  v18 = *(a5 + 160);
  v19 = a9[1];
  *(v11 + 104) = *a9;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  *(v11 + 88) = a10;
  *(v11 + 96) = a11;
  *(v11 + 120) = v19;
  *(v11 + 136) = a9[2];
  *(v11 + 146) = *(a9 + 42);
  sub_25BCB617C();
  return v11;
}

BOOL sub_25BC787F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25BAC4018();
  v6 = sub_25BAC4018();
  if (v5 == v6)
  {
    *(v3 + 48) = a2;
  }

  return v5 == v6;
}

uint64_t sub_25BC78868()
{

  sub_25BA9D148(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t sub_25BC788A8()
{
  sub_25BC78868();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for CumulativeOperation.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC789E0()
{
  result = qword_27FBB77C0;
  if (!qword_27FBB77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB77C0);
  }

  return result;
}

uint64_t sub_25BC78A3C()
{
  v1 = *(v0 + 88);
  sub_25BA9D8C4(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_25BC78A74(uint64_t a1)
{
  sub_25BCB625C();

  sub_25BCB79EC();
  return sub_25BCB79EC();
}

uint64_t sub_25BC78B18(uint64_t a1)
{
  result = sub_25BC78B5C(&qword_27FBB77C8, &unk_25BCD39A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC78B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CumulativeOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC78BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a2;
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      if (v7 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 1;
LABEL_7:
    if (v8 == *(a2 + 16))
    {
      v19 = a1;
      v10 = sub_25BAA51C8(a3, &v17);
      MEMORY[0x28223BE20](v10);
      v16[2] = &v21;
      Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(&v19, MEMORY[0x277D83A90], &protocol witness table for Float, &v17, sub_25BC7C34C, v16, &v20);
      sub_25BA9C2C8(a3);

      *a4 = v20;
      return result;
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  v12 = a1;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v12 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      if (v13 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

LABEL_13:
  v14 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v14);

  MEMORY[0x25F876C90](0x7372616C61637320, 0xED00002074756220);
  v15 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v15);

  MEMORY[0x25F876C90](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_25BCB74CC("Fatal error", 11, 2, v17, v18, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorDeprecatedInitializers.swift", 117, 2, 131);
  __break(1u);
  return result;
}

uint64_t sub_25BC78E08(uint64_t a1, float a2)
{
  v16 = a1;
  Tensor.scalarType.getter(a1);
  (*(v3 + 32))(&v11);
  v4 = v11;
  v5 = sub_25BAA80BC(0xAu, &unk_286D42270);
  if (v5 && (v5 = sub_25BAA80BC(v4, &unk_286D427E8)) || v4 == 12)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = a2;
    sub_25BAA51C8(&v11, v8);
    sub_25BC78BA0(MEMORY[0x277D84F90], inited, v8, &v15);
    sub_25BA9C2C8(&v11);
  }

  else
  {
    v9 = MEMORY[0x277D83A90];
    v10 = &protocol witness table for Float;
    *v8 = a2;
    Tensor.scalarType.getter(v5);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    Tensor.init(coercing:scalarType:on:)();
  }

  static Tensor..<= infix(_:_:)(&v16, &v15);
}

void *sub_25BC78FBC(void *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a3;
    while (1)
    {
      if (v7 >= a4 - 3)
      {
        goto LABEL_9;
      }

      v8 = *(a2 + 16);
      if (v6 == v8)
      {
        goto LABEL_9;
      }

      if (v6 >= v8)
      {
        break;
      }

      *v7 = *(a2 + 32 + 4 * v6);
      if (v6 == 0x1FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_14;
      }

      ++v7;
      ++v6;
      v5 += 4;
      if (a4 - a3 < v5)
      {
        __break(1u);
LABEL_9:
        *result = a2;
        result[1] = v6;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *result = a2;
  result[1] = 0;
LABEL_12:
  sub_25BCB617C();
  return a3;
}

uint64_t softplus(_:alpha:beta:)()
{
  OUTLINED_FUNCTION_21_36();
  v2 = *v1;
  v3 = *(*(*v1 + 16) + 160);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    LOBYTE(v196) = v3;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v205 = v0;
    *(&v205 + 1) = &v196;
    v206 = xmmword_25BCC6DC0;
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v99, v100, v101, v102, v103, v104, 135);
  }

  *&v4 = OUTLINED_FUNCTION_28_29();
  v206 = v4;
  v207 = v4;
  *(&v205 + 1) = *(&v4 + 1);
  v5 = MEMORY[0x277D84F90];
  HIBYTE(v202) = v6;
  v15 = OUTLINED_FUNCTION_20_36(v7, v8, v9, v10, v11, v12, v13, v14, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v197, v198, v199, v200, v201, v202, MEMORY[0x277D84F90], v204, v4);
  v17 = sub_25BAA51C8(v15, v16);
  v24 = OUTLINED_FUNCTION_3_60(v17, &unk_286D44A68, v18, v19, v20, v21, v22, v23, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v196, v197, v198, v199, v200, v201, v202, v203);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v24, v25, v26, v27, v28);
  sub_25BA9C2C8(&v205);
  v29 = v204;
  v30 = *(*(v2 + 16) + 160);
  *&v31 = OUTLINED_FUNCTION_28_29();
  v206 = v31;
  v207 = v31;
  v205 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  v33 = OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  HIBYTE(v202) = v30;
  v41 = OUTLINED_FUNCTION_20_36(v33, v34, v35, v36, v37, v38, v39, v40, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v196, v197, v198, v199, v200, v201, v202, v5, v204, v205);
  v43 = sub_25BAA51C8(v41, v42);
  v51 = OUTLINED_FUNCTION_3_60(v43, v44, v45, v46, v47, v48, v49, v50, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v196, v197, v198, v199, v200, v201, v202, v203);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v51, inited, v52, v53, v54);
  sub_25BA9C2C8(&v205);
  v55 = v204;
  v56 = *(*(v2 + 16) + 160);
  *&v57 = OUTLINED_FUNCTION_28_29();
  v206 = v57;
  v207 = v57;
  v205 = v57;
  v58 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  HIBYTE(v202) = v56;
  v76 = OUTLINED_FUNCTION_20_36(v68, v69, v70, v71, v72, v73, v74, v75, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v196, v197, v198, v199, v200, v201, v202, v5, v204, v205);
  v78 = sub_25BAA51C8(v76, v77);
  v86 = OUTLINED_FUNCTION_3_60(v78, v79, v80, v81, v82, v83, v84, v85, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v196, v197, v198, v199, v200, v201, v202, v203);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v86, v58, v87, v88, v89);
  sub_25BA9C2C8(&v205);
  *&v205 = v55;
  v196 = v2;
  static Tensor.* infix(_:_:)();
  exp(_:)(&v203);

  v204 = v29;
  static Tensor.+ infix(_:_:)();

  log(_:)(&v196, &v203);

  OUTLINED_FUNCTION_20_36(v90, v91, v92, v93, v94, v95, v96, v97, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205);
  static Tensor.* infix(_:_:)();
}

uint64_t scaledTanh(_:inputScale:outputScale:)()
{
  OUTLINED_FUNCTION_21_36();
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v3 + 160);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    LOBYTE(v70) = v4;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v84 = v0;
    *(&v84 + 1) = &v70;
    v85 = xmmword_25BCC6DC0;
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v48, v49, v50, v51, v52, v53, 156);
  }

  v5 = *(v3 + 160);
  *&v6 = OUTLINED_FUNCTION_28_29();
  v85 = v6;
  v86 = v6;
  v84 = v6;
  v7 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  HIBYTE(v76) = v5;
  v9 = sub_25BAA51C8(&v84, &v70);
  v17 = OUTLINED_FUNCTION_33(v9, v10, v11, v12, v13, v14, v15, v16, v54, v56, v58, v60, v62, v64, v66, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v17, inited, v18, v19, v20);
  sub_25BA9C2C8(&v84);
  v21 = v83;
  v22 = *(*(v2 + 16) + 160);
  *&v23 = OUTLINED_FUNCTION_28_29();
  v85 = v23;
  v86 = v23;
  v84 = v23;
  v82 = v7;
  v24 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  HIBYTE(v76) = v22;
  v34 = sub_25BAA51C8(&v84, &v70);
  v42 = OUTLINED_FUNCTION_33(v34, v35, v36, v37, v38, v39, v40, v41, v55, v57, v59, v61, v63, v65, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v42, v24, v43, v44, v45);
  sub_25BA9C2C8(&v84);
  v46 = v83;
  v83 = v21;
  *&v84 = v46;
  v70 = v2;
  static Tensor.* infix(_:_:)();
  tanh(_:)(&v70, &v82);

  static Tensor.* infix(_:_:)();
}

uint64_t sigmoid(_:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    v58 = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v38 = v0;
    v39 = &v58;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v28, v29, v30, v31, v32, v33, 81);
  }

  sub_25BAAF074(sub_25BC7BAAC, 0);
  OUTLINED_FUNCTION_27_32("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift");
  v59 = xmmword_25BCD3A20;
  OUTLINED_FUNCTION_41_25(v3);
  type metadata accessor for ActivationOperation();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_16_49();
  sub_25BBB2EA8(v4, v5, v6, 1, v1, v7, v8, v9, v34, v36);
  v10 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v10, v57);
  sub_25BAA51C8(v57, v56);
  v11 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v12 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v12, v13);

  sub_25BAA4AF4(&v38);
  v14 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v14, v15);

  sub_25BAA4AF4(&v38);
  v16 = type metadata accessor for TensorRepresentation();
  v17 = OUTLINED_FUNCTION_16_3(v16);
  OUTLINED_FUNCTION_32_27(v17, v18, v19, v20, v21, v22, v23, v24, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v25 = OUTLINED_FUNCTION_17_7();
  v26 = OUTLINED_FUNCTION_15_7(v25);
  OUTLINED_FUNCTION_13_22(v26);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v57);
  *v0 = v11;
  return result;
}

uint64_t logSigmoid(_:)(uint64_t *a1)
{
  v3[0] = *a1;
  static Tensor.- prefix(_:)(v3);
  v3[0] = v3[1];
  softplus(_:alpha:beta:)();

  static Tensor.- prefix(_:)(&v2);
}

uint64_t softsign(_:)()
{
  OUTLINED_FUNCTION_11_50();
  v3 = sub_25BAA80BC(v1, &unk_286D42270);
  if (!v3)
  {
    OUTLINED_FUNCTION_61_12(v3);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v29[0] = v0;
    v29[1] = v1;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v14, v15, v16, v17, v18, v19, 147);
  }

  OUTLINED_FUNCTION_8_28();
  v27 = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_37_25(v4, v20);
  OUTLINED_FUNCTION_18_43(v5, &unk_286D44DB0, v6, v7, v8, v9, v10, v11, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v23, v24, v25, v26, v27, v28);
  sub_25BA9C2C8(v29);
  v12 = v28;
  v29[0] = v2;
  v22[0] = v2;
  abs(_:)(&v28, v22);
  v22[0] = v12;
  static Tensor.+ infix(_:_:)();

  static Tensor./ infix(_:_:)();
}

uint64_t softmax(_:alongAxis:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = *(v6 + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    v64 = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v52 = a3;
    v53 = &v64;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_10_27();
    v51 = 166;
    goto LABEL_12;
  }

  v8 = *(*(v6 + 152) + 16);
  if (-v8 > a2 || v8 <= a2)
  {
    v53 = 0;
    v54 = 0;
    v52 = a2;
    v55 = -1;
    v57 = 0;
    v58 = 0;
    v56 = v8;
    v59 = -1;
    v61 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_12:
    sub_25BADDD28(v45, v46, v47, v48, v49, v50, v51);
  }

  v10 = (v8 & (a2 >> 63)) + a2;
  v11 = v8 < 2;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = OUTLINED_FUNCTION_15_7(&unk_286D55320);
  *(v13 + 16) = v10;

  v14 = sub_25BAAF074(sub_25BC7C328, v13);
  v16 = v15;

  OUTLINED_FUNCTION_27_32("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift");
  v65 = xmmword_25BCD3A30;
  OUTLINED_FUNCTION_41_25(v17);
  type metadata accessor for SoftmaxOperation();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_54_17();
  sub_25BBB3104(v18, v19, v20, v21, v12, v22, v14, v16);
  sub_25BAA51C8(*(v5 + 16) + 168, v63);
  sub_25BAA51C8(v63, v62);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v23 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v23, v24, v25, v26, v27, v28, v29, v30, v52);

  v31 = v60;

  sub_25BAA4AF4(&v52);
  v32 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v32, v33, v34, v35, v36, v37, v38, v39, v52);

  sub_25BAA4AF4(&v52);
  v40 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v40);
  v41 = OUTLINED_FUNCTION_19_35();
  sub_25BC0E87C(v41);
  v42 = OUTLINED_FUNCTION_17_7();
  v43 = OUTLINED_FUNCTION_15_7(v42);
  OUTLINED_FUNCTION_13_22(v43);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v63);
  *a3 = v31;
  return result;
}

uint64_t logSoftmax(_:alongAxis:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = *(v6 + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    LOBYTE(v18) = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v19 = a2;
    v20 = &v18;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    v17 = 344;
    goto LABEL_11;
  }

  v8 = *(*(v6 + 152) + 16);
  if (-v8 > a2 || v8 <= a2)
  {
    v20 = 0;
    v21 = 0;
    v19 = a2;
    v22 = -1;
    v24 = 0;
    v25 = 0;
    v23 = v8;
    v26 = -1;
    v27 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_11:
    sub_25BADDD28(v11, v12, v13, v14, v15, v16, v17);
  }

  v19 = v5;
  softmax(_:alongAxis:)(&v19, (v8 & (a2 >> 63)) + a2, &v18);
  log(_:)(a3, &v18);
}

uint64_t gelu(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    LOBYTE(v132) = v4;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v141 = a2;
    *(&v141 + 1) = &v132;
    OUTLINED_FUNCTION_35_23();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v103, v104, v105, v106, v107, v108, 250);
  }

  OUTLINED_FUNCTION_92_1();
  LOBYTE(v125) = v5;
  v14 = OUTLINED_FUNCTION_31_30(v6, v7, v8, v9, v10, v11, v12, v13, v109, v117, v125, v132, v133, v134, v135, v136, v137, v138, MEMORY[0x277D84F90], v140, v141);
  v16 = sub_25BAA51C8(v14, v15);
  OUTLINED_FUNCTION_15_46(v16, &unk_286D44C70, v17, v18, v19, v20);
  v21 = sub_25BA9C2C8(&v141);
  v22 = v140;
  v30 = OUTLINED_FUNCTION_4_66(v21, v23, v24, v25, v26, v27, v28, v29, v110, v118, v126, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_15_46(v30, &unk_286D44C98, v31, v32, v33, v34);
  v35 = sub_25BA9C2C8(&v141);
  v43 = OUTLINED_FUNCTION_4_66(v35, v36, v37, v38, v39, v40, v41, v42, v111, v119, v127, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_15_46(v43, &unk_286D44CC0, v44, v45, v46, v47);
  v48 = sub_25BA9C2C8(&v141);
  v49 = v140;
  v57 = OUTLINED_FUNCTION_4_66(v48, v50, v51, v52, v53, v54, v55, v56, v112, v120, v128, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_15_46(v57, &unk_286D44CE8, v58, v59, v60, v61);
  v62 = sub_25BA9C2C8(&v141);
  v63 = v140;
  v71 = OUTLINED_FUNCTION_4_66(v62, v64, v65, v66, v67, v68, v69, v70, v113, v121, v129, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_15_46(v71, &unk_286D44D10, v72, v73, v74, v75);
  sub_25BA9C2C8(&v141);
  *&v141 = v22;
  pow(_:_:)();
  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  static Tensor.* infix(_:_:)();

  v84 = OUTLINED_FUNCTION_53_14(v76, v77, v78, v79, v80, v81, v82, v83, v114, v122, v140, v3);
  tanh(_:)(v85, v84);

  v140 = v141;
  *&v141 = v63;
  static Tensor.+ infix(_:_:)();
  OUTLINED_FUNCTION_53_14(v86, v87, v88, v89, v90, v91, v92, v93, v115, v123, v130, v49);
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_31_30(v94, v95, v96, v97, v98, v99, v100, v101, v116, v124, v131, v141, v133, v134, v135, v136, v137, v138, v3, v140, v3);
  static Tensor.* infix(_:_:)();
}

uint64_t relu6(_:)(void *a1)
{
  v7[0] = *a1;
  relu(_:)();
  OUTLINED_FUNCTION_8_28();
  v6 = MEMORY[0x277D84F90];
  v5 = v1;
  sub_25BAA51C8(v7, v4);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v6, &unk_286D44D88, &v5, v4, &v3);
  sub_25BA9C2C8(v7);
  min(_:_:)();
}

uint64_t leakyReLU(_:alpha:)()
{
  OUTLINED_FUNCTION_11_50();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    LOBYTE(v21[0]) = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v29[0] = v0;
    v29[1] = v21;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v15, v16, v17, v18, v19, v20, 58);
  }

  v4 = *(v3 + 160);
  sub_25BAA51C8(v3 + 168, v29);
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  v25 = v4;
  v6 = sub_25BAA51C8(v29, v21);
  OUTLINED_FUNCTION_45_19(v6, v7, v8, v9, v10, v11, v12, v13, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v27, v28);
  sub_25BA9C2C8(v29);
  v29[0] = v2;
  v21[0] = v2;
  static Tensor.* infix(_:_:)();
  max(_:_:)();
}

uint64_t selu(_:)()
{
  OUTLINED_FUNCTION_11_50();
  v3 = sub_25BAA80BC(v1, &unk_286D42270);
  if (!v3)
  {
    OUTLINED_FUNCTION_61_12(v3);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v28[0] = v0;
    v28[1] = v1;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v13, v14, v15, v16, v17, v18, 207);
  }

  OUTLINED_FUNCTION_8_28();
  v26 = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_37_25(v4, v19);
  OUTLINED_FUNCTION_18_43(v5, &unk_286D44D38, v6, v7, v8, v9, v10, v11, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v22, v23, v24, v25, v26, v27);
  sub_25BA9C2C8(v28);
  v28[0] = v27;
  v21[0] = v2;
  elu(_:alpha:)(&v27, v21, 1.6733);
  static Tensor.* infix(_:_:)();
}

uint64_t celu(_:alpha:)()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_43_20();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    LOBYTE(v179) = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v188[0] = v0;
    v188[1] = &v179;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v118, v119, v120, v121, v122, v123, 279);
  }

  OUTLINED_FUNCTION_6_60();
  v3 = MEMORY[0x277D84F90];
  HIBYTE(v185) = v4;
  v13 = OUTLINED_FUNCTION_50_19(v5, v6, v7, v8, v9, v10, v11, v12, v124, v135, v146, v157, v168, v179, v180, v181, v182, v183, v184, v185, MEMORY[0x277D84F90], v187, v188[0]);
  v15 = sub_25BAA51C8(v13, v14);
  v22 = OUTLINED_FUNCTION_25_32(v15, &unk_286D44C20, v16, v17, v18, v19, v20, v21, v125, v136, v147, v158, v169, v179, v180, v181, v182, v183, v184, v185, v186);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v22, v23, v24, v25, v26);
  sub_25BA9C2C8(v188);
  v27 = v187;
  OUTLINED_FUNCTION_6_60();
  HIBYTE(v185) = v28;
  v37 = OUTLINED_FUNCTION_50_19(v29, v30, v31, v32, v33, v34, v35, v36, v126, v137, v148, v159, v170, v179, v180, v181, v182, v183, v184, v185, v3, v187, v188[0]);
  v39 = sub_25BAA51C8(v37, v38);
  v46 = OUTLINED_FUNCTION_25_32(v39, &unk_286D44C48, v40, v41, v42, v43, v44, v45, v127, v138, v149, v160, v171, v179, v180, v181, v182, v183, v184, v185, v186);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v46, v47, v48, v49, v50);
  sub_25BA9C2C8(v188);
  v51 = v187;
  v52 = *(*(v2 + 16) + 160);
  OUTLINED_FUNCTION_6_60();
  v186 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  v54 = OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  HIBYTE(v185) = v52;
  v62 = OUTLINED_FUNCTION_50_19(v54, v55, v56, v57, v58, v59, v60, v61, v128, v139, v150, v161, v172, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188[0]);
  v64 = sub_25BAA51C8(v62, v63);
  v72 = OUTLINED_FUNCTION_25_32(v64, v65, v66, v67, v68, v69, v70, v71, v129, v140, v151, v162, v173, v179, v180, v181, v182, v183, v184, v185, v186);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v72, inited, v73, v74, v75);
  v76 = sub_25BA9C2C8(v188);
  OUTLINED_FUNCTION_48_21(v76, v77, v78, v79, v80, v81, v82, v83, v130, v141, v152, v163, v174, v2);
  max(_:_:)();
  v84 = v188[0];
  v188[0] = v187;
  OUTLINED_FUNCTION_48_21(v85, v86, v87, v88, v89, v90, v91, v92, v131, v142, v153, v164, v175, v2);
  static Tensor./ infix(_:_:)();
  exp(_:)(&v186);

  v187 = v51;
  OUTLINED_FUNCTION_48_21(v93, v94, v95, v96, v97, v98, v99, v100, v132, v143, v154, v165, v176, v179);
  static Tensor.- infix(_:_:)();

  static Tensor.* infix(_:_:)();

  v187 = v27;
  OUTLINED_FUNCTION_48_21(v101, v102, v103, v104, v105, v106, v107, v108, v133, v144, v155, v166, v177, v179);
  min(_:_:)();

  OUTLINED_FUNCTION_50_19(v109, v110, v111, v112, v113, v114, v115, v116, v134, v145, v156, v167, v178, v188[0], v180, v181, v182, v183, v184, v185, v186, v187, v84);
  static Tensor.+ infix(_:_:)();
}

uint64_t tanhshrink(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 160);
  v6 = sub_25BAA80BC(*(v4 + 160), &unk_286D42270);
  if (!v6)
  {
    OUTLINED_FUNCTION_61_12(v6);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v16 = a2;
    v17 = v5;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v8, v9, v10, v11, v12, v13, 292);
  }

  v15 = v3;
  v16 = v3;
  tanh(_:)(&v14, &v15);
  static Tensor.- infix(_:_:)();
}

uint64_t prelu(_:weight:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16);
  v7 = *(v6 + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    LOBYTE(v69) = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v78 = v6;
    v79 = &v69;
    OUTLINED_FUNCTION_35_23();
    OUTLINED_FUNCTION_10_27();
    v59 = 68;
LABEL_14:
    sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
  }

  OUTLINED_FUNCTION_92_1();
  v8 = MEMORY[0x277D84F90];
  HIBYTE(v75) = v9;
  v18 = OUTLINED_FUNCTION_31_30(v10, v11, v12, v13, v14, v15, v16, v17, v60, v64, v68, v69, v70, v71, v72, v73, v74, v75, MEMORY[0x277D84F90], v77, v78);
  sub_25BAA51C8(v18, v19);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v76, &unk_286D44D60, &v75 + 7, &v69, &v77);
  v20 = sub_25BA9C2C8(&v78);
  v21 = v77;
  LOBYTE(v69) = v77;
  v77 = v4;
  OUTLINED_FUNCTION_53_14(v20, v22, v23, v24, v25, v26, v27, v28, v61, v65, v68, v69);
  max(_:_:)();
  v29 = v78;
  v30 = *(*(*(v4 + 16) + 152) + 16);
  if (v30)
  {
    v62 = v78;
    v66 = a3;
    v69 = v8;
    sub_25BAA21EC(0, v30, 0);
    v31 = 1;
    v8 = v69;
    while (1)
    {
      if (v31)
      {
        v32 = 1;
      }

      else
      {
        v33 = *(*(v5 + 16) + 152);
        if (!*(v33 + 16))
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = -1;
          v83 = 0;
          v84 = 0;
          v82 = 0;
          v85 = -1;
          v86 = 4;
          sub_25BCB617C();
          OUTLINED_FUNCTION_17_4();
          goto LABEL_14;
        }

        v32 = *(v33 + 32);
      }

      v69 = v8;
      v35 = *(v8 + 16);
      v34 = *(v8 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_25BAA21EC(v34 > 1, v35 + 1, 1);
        v8 = v69;
      }

      *(v8 + 16) = v35 + 1;
      *(v8 + 8 * v35 + 32) = v32;
      --v31;
      if (!--v30)
      {
        v29 = v62;
        break;
      }
    }
  }

  v78 = v5;
  v69 = v8;
  Tensor.reshaped(to:)(&v69, &v68);

  static Tensor.- prefix(_:)(&v68);

  v77 = v4;
  v78 = v21;
  static Tensor.- prefix(_:)(&v77);
  max(_:_:)();

  OUTLINED_FUNCTION_53_14(v36, v37, v38, v39, v40, v41, v42, v43, v62, v66, v68, v69);
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_31_30(v44, v45, v46, v47, v48, v49, v50, v51, v63, v67, v68, v78, v70, v71, v72, v73, v74, v75, v76, v77, v29);
  static Tensor.+ infix(_:_:)();
}

uint64_t hardtanh(_:bounds:)()
{
  OUTLINED_FUNCTION_38_0();
  v2 = *v1;
  v3 = *(*(*v1 + 16) + 160);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    LOBYTE(v29[0]) = v3;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v31[0] = v0;
    v31[1] = v29;
    v32 = xmmword_25BCC6DC0;
    v33 = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v35 = 2;
    v36 = 3;
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v23, v24, v25, v26, v27, v28, 117);
  }

  OUTLINED_FUNCTION_12_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  sub_25BAA51C8(v31, v29);
  v5 = MEMORY[0x277D84F90];
  v6 = OUTLINED_FUNCTION_9_23();
  sub_25BACC1B0(v6, v7, v8, v9);
  sub_25BA9C2C8(v31);
  v10 = v30;
  OUTLINED_FUNCTION_12_37();
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  sub_25BAA51C8(v31, v29);
  sub_25BACC1B0(v5, v11, v29, &v30);
  sub_25BA9C2C8(v31);
  v21 = v30;
  v31[0] = v2;
  v29[0] = v10;
  min(_:_:)();
  v31[0] = v21;
  max(_:_:)();
}

uint64_t softmin(_:axis:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v6, &unk_286D42270))
  {
    LOBYTE(v16) = v6;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v17[0] = a3;
    v17[1] = &v16;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, 315);
  }

  v17[0] = v5;
  static Tensor.- prefix(_:)(v17);
  exp(_:)(&v16);

  v7 = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = a2;
  v16 = v7;
  Tensor.sum(alongAxes:)(v17, xmmword_25BCBAE50);

  v16 = v17[0];
  v17[0] = v7;
  static Tensor./ infix(_:_:)();
}

uint64_t hardSigmoid(_:scale:bias:)()
{
  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_43_20();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    LOBYTE(v263) = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v272[0] = v0;
    v272[1] = &v263;
    v273 = xmmword_25BCC6DC0;
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v127, v128, v129, v130, v131, v132, 103);
  }

  OUTLINED_FUNCTION_10_50();
  v3 = MEMORY[0x277D84F90];
  HIBYTE(v269) = v4;
  v13 = OUTLINED_FUNCTION_20_36(v5, v6, v7, v8, v9, v10, v11, v12, v133, v143, v153, v163, v173, v183, v193, v203, v213, v223, v233, v243, v253, v263, v264, v265, v266, v267, v268, v269, MEMORY[0x277D84F90], v271, v272[0]);
  v15 = sub_25BAA51C8(v13, v14);
  v22 = OUTLINED_FUNCTION_3_60(v15, &unk_286D44A90, v16, v17, v18, v19, v20, v21, v134, v144, v154, v164, v174, v184, v194, v204, v214, v224, v234, v244, v254, v263, v264, v265, v266, v267, v268, v269, v270);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v22, v23, v24, v25, v26);
  sub_25BA9C2C8(v272);
  v27 = v271;
  OUTLINED_FUNCTION_10_50();
  HIBYTE(v269) = v28;
  v37 = OUTLINED_FUNCTION_20_36(v29, v30, v31, v32, v33, v34, v35, v36, v135, v145, v155, v165, v175, v185, v195, v205, v215, v225, v235, v245, v255, v263, v264, v265, v266, v267, v268, v269, v3, v271, v272[0]);
  v39 = sub_25BAA51C8(v37, v38);
  v46 = OUTLINED_FUNCTION_3_60(v39, &unk_286D44AB8, v40, v41, v42, v43, v44, v45, v136, v146, v156, v166, v176, v186, v196, v206, v216, v226, v236, v246, v256, v263, v264, v265, v266, v267, v268, v269, v270);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v46, v47, v48, v49, v50);
  sub_25BA9C2C8(v272);
  v51 = v271;
  v52 = *(*(v2 + 16) + 160);
  OUTLINED_FUNCTION_10_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  v54 = OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  HIBYTE(v269) = v52;
  v62 = OUTLINED_FUNCTION_20_36(v54, v55, v56, v57, v58, v59, v60, v61, v137, v147, v157, v167, v177, v187, v197, v207, v217, v227, v237, v247, v257, v263, v264, v265, v266, v267, v268, v269, v3, v271, v272[0]);
  v64 = sub_25BAA51C8(v62, v63);
  v72 = OUTLINED_FUNCTION_3_60(v64, v65, v66, v67, v68, v69, v70, v71, v138, v148, v158, v168, v178, v188, v198, v208, v218, v228, v238, v248, v258, v263, v264, v265, v266, v267, v268, v269, v270);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v72, inited, v73, v74, v75);
  sub_25BA9C2C8(v272);
  v76 = v271;
  v77 = *(*(v2 + 16) + 160);
  OUTLINED_FUNCTION_10_50();
  v78 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  HIBYTE(v269) = v77;
  v96 = OUTLINED_FUNCTION_20_36(v88, v89, v90, v91, v92, v93, v94, v95, v139, v149, v159, v169, v179, v189, v199, v209, v219, v229, v239, v249, v259, v263, v264, v265, v266, v267, v268, v269, v3, v271, v272[0]);
  v98 = sub_25BAA51C8(v96, v97);
  v106 = OUTLINED_FUNCTION_3_60(v98, v99, v100, v101, v102, v103, v104, v105, v140, v150, v160, v170, v180, v190, v200, v210, v220, v230, v240, v250, v260, v263, v264, v265, v266, v267, v268, v269, v270);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v106, v78, v107, v108, v109);
  v110 = sub_25BA9C2C8(v272);
  OUTLINED_FUNCTION_20_36(v110, v111, v112, v113, v114, v115, v116, v117, v141, v151, v161, v171, v181, v191, v201, v211, v221, v231, v241, v251, v261, v76, v264, v265, v266, v267, v268, v269, v270, v271, v2);
  static Tensor.* infix(_:_:)();
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_20_36(v118, v119, v120, v121, v122, v123, v124, v125, v142, v152, v162, v172, v182, v192, v202, v212, v222, v232, v242, v252, v262, v51, v264, v265, v266, v267, v268, v269, v270, v271, v272[0]);
  min(_:_:)();
  v272[0] = v27;
  max(_:_:)();
}

uint64_t threshold(_:threshold:replacement:)(double a1, float a2)
{
  OUTLINED_FUNCTION_38_0();
  v6 = *v5;
  v7 = *(*(*v5 + 16) + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    v17[0] = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v19[0] = v2;
    v19[1] = v17;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, 326);
  }

  v18 = v6;
  OUTLINED_FUNCTION_6_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  sub_25BAA51C8(v19, v17);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v17, &v16);
  sub_25BA9C2C8(v19);
  sub_25BC78E08(v6, v3);
  Tensor.replacing(with:where:)(&v16, v19, v2);
}

uint64_t hardswish(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 160);
  v6 = sub_25BAA80BC(*(v4 + 160), &unk_286D42270);
  if (!v6)
  {
    OUTLINED_FUNCTION_61_12(v6);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v56[0] = a2;
    v56[1] = v5;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v26, v27, v28, v29, v30, v31, 335);
  }

  OUTLINED_FUNCTION_8_28();
  v7 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v9 = OUTLINED_FUNCTION_37_25(v8, v32);
  OUTLINED_FUNCTION_18_43(v9, &unk_286D44DD8, v10, v11, v12, v13, v14, v15, v33, v36, v39, v41, v43, v45, v47, v49, SWORD2(v49), SBYTE6(v49), SHIBYTE(v49), v54, v55);
  sub_25BA9C2C8(v56);
  OUTLINED_FUNCTION_8_28();
  v17 = OUTLINED_FUNCTION_37_25(v16, v34);
  OUTLINED_FUNCTION_18_43(v17, &unk_286D44E00, v18, v19, v20, v21, v22, v23, v35, v37, v40, v42, v44, v46, v48, v50, v51, v52, v53, v7, v55);
  sub_25BA9C2C8(v56);
  v24 = v55;
  v56[0] = v3;
  static Tensor.+ infix(_:_:)();
  v55 = v38;
  relu6(_:)(&v55);

  static Tensor.* infix(_:_:)();

  v56[0] = v24;
  static Tensor./ infix(_:_:)();
}

uint64_t sub_25BC7BAAC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = MEMORY[0x277D84F90];
      LOBYTE(v9) = v4;
      sub_25BAA51C8(v13, v10);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, &unk_286D45E80, &v9, v10, &v12);
      sub_25BA9C2C8(v13);
      v5 = v12;
      v10[0] = v3;
      sigmoid(_:)();
      v6 = *&v13[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25BCBAE50;
      v10[0] = v2;
      v12 = v5;
      *&v13[0] = v6;
      v11 = v6;
      static Tensor.- infix(_:_:)();
      static Tensor.* infix(_:_:)();

      static Tensor.* infix(_:_:)();

      *(v7 + 32) = *&v13[0];

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

uint64_t sub_25BC7BC38(uint64_t result, uint64_t a2, _BOOL8 a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!*(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = *(result + 32);
  v5 = *(a2 + 32);
  v12 = v5;
  v6 = a3;
  if (!a3)
  {
    v6 = *(*(*(v5 + 16) + 152) + 16) < 2uLL;
  }

  softmax(_:alongAxis:)(&v12, v6, &v13);
  v7 = v13;
  v12 = v4;
  v13 = v4;
  static Tensor.* infix(_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = a3;
  Tensor.sum(alongAxes:)(&v12, xmmword_25BCBAE50);

  static Tensor.- infix(_:_:)();

  v12 = v7;
  static Tensor.* infix(_:_:)();

  v9 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = v9;

  *(v10 + 40) = sub_25BAC42B0();
  *(v10 + 48) = v11;

  return v10;
}

uint64_t silu(_:beta:)()
{
  OUTLINED_FUNCTION_11_50();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    LOBYTE(v21[0]) = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v29[0] = v0;
    v29[1] = v21;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v15, v16, v17, v18, v19, v20, 217);
  }

  v4 = *(v3 + 160);
  OUTLINED_FUNCTION_6_60();
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  v25 = v4;
  v6 = sub_25BAA51C8(v29, v21);
  OUTLINED_FUNCTION_45_19(v6, v7, v8, v9, v10, v11, v12, v13, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v27, v28);
  sub_25BA9C2C8(v29);
  v29[0] = v2;
  v27 = v2;
  static Tensor.* infix(_:_:)();
  v28 = v21[0];
  sigmoid(_:)();

  static Tensor.* infix(_:_:)();
}

uint64_t erf(_:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    v58 = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v38 = v0;
    v39 = &v58;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28(v28, v29, v30, v31, v32, v33, 226);
  }

  sub_25BAAF074(sub_25BC7C130, 0);
  OUTLINED_FUNCTION_27_32("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift");
  v59 = xmmword_25BCD3A20;
  OUTLINED_FUNCTION_41_25(v3);
  type metadata accessor for ActivationOperation();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_16_49();
  sub_25BBB2EA8(v4, v5, v6, 0, v1, v7, v8, v9, v34, v36);
  v10 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v10, v57);
  sub_25BAA51C8(v57, v56);
  v11 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v12 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v12, v13);

  sub_25BAA4AF4(&v38);
  v14 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v14, v15);

  sub_25BAA4AF4(&v38);
  v16 = type metadata accessor for TensorRepresentation();
  v17 = OUTLINED_FUNCTION_16_3(v16);
  OUTLINED_FUNCTION_32_27(v17, v18, v19, v20, v21, v22, v23, v24, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v25 = OUTLINED_FUNCTION_17_7();
  v26 = OUTLINED_FUNCTION_15_7(v25);
  OUTLINED_FUNCTION_13_22(v26);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v57);
  *v0 = v11;
  return result;
}

uint64_t sub_25BC7C130(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v5 = MEMORY[0x277D84F90];
      v13 = MEMORY[0x277D84F90];
      v12 = v4;
      sub_25BAA51C8(&v15, v11);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v13, &unk_286D45EA8, &v12, v11, &v14);
      sub_25BA9C2C8(&v15);
      v6 = v14;
      v7 = *(*(v3 + 16) + 160);
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v13 = v5;
      v12 = v7;
      sub_25BAA51C8(&v15, v11);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v13, &unk_286D45ED0, &v12, v11, &v14);
      sub_25BA9C2C8(&v15);
      v8 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_25BCBAE50;
      *&v15 = v2;
      v11[0] = v6;
      static Tensor.* infix(_:_:)();
      *&v15 = v3;
      v11[0] = v8;
      pow(_:_:)();
      static Tensor.- prefix(_:)(&v13);

      exp(_:)(&v15);

      static Tensor.* infix(_:_:)();

      *(v9 + 32) = v15;

      *(v9 + 40) = sub_25BAC42B0();
      *(v9 + 48) = v10;

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC7C36C(uint64_t a1)
{
  v2 = sub_25BC7C550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC7C3A8(uint64_t a1)
{
  v2 = sub_25BC7C550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Flatten.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB77D0, &qword_25BCD3A58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC7C550();
  sub_25BCB7B6C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_25BC7C550()
{
  result = qword_28154C0B0[0];
  if (!qword_28154C0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154C0B0);
  }

  return result;
}

unint64_t sub_25BC7C5C8()
{
  result = qword_28154C0A0;
  if (!qword_28154C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C0A0);
  }

  return result;
}

unint64_t sub_25BC7C620()
{
  result = qword_28154C0A8;
  if (!qword_28154C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C0A8);
  }

  return result;
}

uint64_t sub_25BC7C674()
{
  v1 = 29295;
  if (*(v0 + 130) != 1)
  {
    v1 = 7499640;
  }

  if (*(v0 + 130))
  {
    return v1;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_25BC7C6B4(char a1)
{
  type metadata accessor for ContextManager();
  v2 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v2, v3);

  v5 = v11;
  v4 = v12;
  sub_25BCB617C();
  sub_25BAA4AF4(&v9);
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xE700000000000000;
      v7 = 0x64696F6D676973;
    }

    else
    {
      v6 = 0xE900000000000055;
      v7 = 0x4C6552796B61656CLL;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v7 = 6713957;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v4)
  {
    v9 = v5;
    v10 = v4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v7, v6);

    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v9 = v7;
    v10 = v6;
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BC7C814(char a1)
{
  type metadata accessor for ContextManager();
  v2 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v2, v3);

  v5 = v10;
  v4 = v11;
  sub_25BCB617C();
  sub_25BAA4AF4(&v8);
  if (a1)
  {
    v6 = 0x6E696D677261;
  }

  else
  {
    v6 = 0x78616D677261;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v4)
  {
    v8 = v5;
    v9 = v4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v6, 0xE600000000000000);

    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v8 = v6;
    v9 = 0xE600000000000000;
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BC7C948(char a1)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v10);

  v3 = v12;
  v2 = v13;
  sub_25BCB617C();
  sub_25BAA4AF4(&v10);
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xE200000000000000;
      v5 = 29295;
    }

    else
    {
      v4 = 0xE300000000000000;
      v5 = 7499640;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6581857;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v6 = sub_25BAA6090();
  if (v2)
  {
    v10 = v3;
    v11 = v2;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v5, v4);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  return v6;
}

uint64_t sub_25BC7CAD0()
{
  type metadata accessor for ContextManager();
  v0 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v0, v1);

  v3 = v7;
  v2 = v8;
  sub_25BCB617C();
  sub_25BAA4AF4(&v5);
  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v2)
  {
    v5 = v3;
    v6 = v2;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](0x4E6C616369676F6CLL, 0xEA0000000000746FLL);
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v5 = 0x4E6C616369676F6CLL;
    v6 = 0xEB000000005F746FLL;
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

void sub_25BC7CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift", 122, 2, 21, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

BOOL sub_25BC7CC50(uint64_t a1, uint64_t a2)
{
  v5 = sub_25BAC4018();
  v6 = v5 == sub_25BAC4018();
  v7 = v6;
  if (v6)
  {
    *(v2 + 40) = a2;
  }

  v8 = *(a1 + 16);
  if (sub_25BAC4018() == v8)
  {
    *(v2 + 48) = a2;

    return 1;
  }

  return v7;
}

uint64_t sub_25BC7CCF4()
{
  sub_25BA9D6BC();

  return swift_deallocClassInstance();
}

unint64_t sub_25BC7CDC8()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BC7CE38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC7CDC8();
  *a1 = result;
  return result;
}

uint64_t sub_25BC7CE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BABEE4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25BC7CEA4()
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

unint64_t sub_25BC7CF14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC7CEA4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC7CF44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAC86EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25BC7CF80()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC7CFCC(char a1)
{
  if (!a1)
  {
    return 6581857;
  }

  if (a1 == 1)
  {
    return 29295;
  }

  return 7499640;
}

unint64_t sub_25BC7D02C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC7CF80();
  *a1 = result;
  return result;
}

uint64_t sub_25BC7D05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC7CFCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC7D098(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_11_51(a1, a2, a3, a4);
  if (!v8)
  {
    v6 = sub_25BC7C948(v9);
  }

  v10 = *v4;
  v11 = v4[1];
  *(v5 + 72) = *v4;
  return OUTLINED_FUNCTION_0_90(v6, v7, v8, v10.n128_f64[0], v11);
}

_BYTE *sub_25BC7D104(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BC7D1DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BC7D2B4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC7D3C0()
{
  result = qword_27FBB77E8;
  if (!qword_27FBB77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB77E8);
  }

  return result;
}

unint64_t sub_25BC7D448()
{
  result = qword_27FBB7800;
  if (!qword_27FBB7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7800);
  }

  return result;
}

unint64_t sub_25BC7D4D0()
{
  result = qword_27FBB7818;
  if (!qword_27FBB7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7818);
  }

  return result;
}

uint64_t sub_25BC7D55C(uint64_t a1)
{
  result = sub_25BC7D714(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D5B4(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154D158, type metadata accessor for BinaryComparisonOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D60C(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154D288, type metadata accessor for BinaryArithmeticOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D664(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154CB68, type metadata accessor for BinaryElementwiseOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D6BC(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154C8D8, type metadata accessor for BaseBinaryElementwiseOperation, &unk_25BCD4020);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D714(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC7D758(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v28 = MEMORY[0x277D84F90];
  sub_25BAA21EC(0, v6, 0);
  if (v6)
  {
    v7 = a1 + 32;
    sub_25BCB617C();
    sub_25BCB617C();
    v8 = 0;
    v9 = a1;
    v10 = a2;
    while (1)
    {
      if (v4 == v8 || v5 == v8)
      {
        goto LABEL_35;
      }

      v11 = *(v7 + 8 * v8);
      v12 = *(a2 + 32 + 8 * v8);
      v13 = v11 / v12;
      if (v12 == -1)
      {
        if (v11 == 0x8000000000000000)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_34:
          sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001CLL, 0x800000025BCE6770, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/NormalizationLayers.swift", 108, 2, 729);
          __break(1u);
LABEL_35:
          sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
        }
      }

      else if (v11 % v12)
      {
        goto LABEL_34;
      }

      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        v24 = v10;
        v26 = v9;
        sub_25BAA21EC(v14 > 1, v15 + 1, 1);
        v10 = v24;
        v9 = v26;
      }

      ++v8;
      *(v28 + 16) = v15 + 1;
      *(v28 + 8 * v15 + 32) = v13;
      if (v6 == v8)
      {
        goto LABEL_17;
      }
    }
  }

  sub_25BCB617C();
  sub_25BCB617C();
  v9 = a1;
  v10 = a2;
LABEL_17:
  v16 = v9 + 32;
  v17 = v10 + 32;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      goto LABEL_35;
    }

    if (v5 == v6)
    {
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_35;
    }

    v18 = *(v16 + 8 * v6);
    v19 = *(v17 + 8 * v6);
    v20 = v18 / v19;
    if (v19 == -1)
    {
      if (v18 == 0x8000000000000000)
      {
        goto LABEL_31;
      }
    }

    else if (v18 % v19)
    {
      goto LABEL_34;
    }

    v22 = *(v28 + 16);
    v21 = *(v28 + 24);
    if (v22 >= v21 >> 1)
    {
      v25 = v10;
      v27 = v9;
      sub_25BAA21EC(v21 > 1, v22 + 1, 1);
      v10 = v25;
      v9 = v27;
    }

    *(v28 + 16) = v22 + 1;
    *(v28 + 8 * v22 + 32) = v20;
    ++v6;
  }

  return v28;
}

uint64_t sub_25BC7DA80()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v2);

  v2[10] = 0;
  v0 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v0);
  return sub_25BAA4AF4(v2);
}

uint64_t sub_25BC7DB2C(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *v3;
  v6 = *(a1 + 16);
  v7 = 1.0;
  v8 = 32;
  if (v6)
  {
    while (1)
    {
      v9 = *(a1 + v8);
      v10 = *(*(v5 + 16) + 152);
      v11 = *(v10 + 16);
      if (v9 < -v11 || v9 >= v11)
      {
        goto LABEL_16;
      }

      v11 = (v11 & (v9 >> 63)) + v9;
      if (v11 < 0)
      {
        break;
      }

      v7 = v7 * *(v10 + 8 * v11 + 32);
      v8 += 8;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    *&v30 = 0;
    v29 = v9;
    BYTE8(v30) = -1;
    v32 = 0;
    v31 = v11;
    v33 = -1;
    v34 = 4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_9:
  if (*a2)
  {
    v13 = *a2;
  }

  else
  {
    v26[0] = *v3;
    Tensor.mean(alongAxes:)(&v29);
    v13 = v29;
  }

  if (a3)
  {
    v7 = v7 + -1.0;
  }

  *&v29 = v5;
  v26[0] = v13;

  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  Tensor.sum(alongAxes:)(&v29, v14);

  v28[1] = v29;
  v15 = *(*(v13 + 16) + 160);
  LODWORD(v32) = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v7;
  v27 = v15;
  sub_25BAA486C(&v29, v26, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v28, inited, &v27, v26, &v25);
  sub_25BAA6F5C(&v29, &qword_27FBB6730, &qword_25BCBC4B0);
  static Tensor./ infix(_:_:)();
}

uint64_t BatchNorm.scale.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC7DE2C@<X0>(void *a1@<X8>)
{
  result = BatchNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t BatchNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 8));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t BatchNorm.offset.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC7DFE0@<X0>(void *a1@<X8>)
{
  result = BatchNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t BatchNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 24));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t BatchNorm.featureCount.getter()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_59_14();
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_58_15(v3, v4, v5, v6, v7, v8, v9, v10, 31, v11);
  __break(1u);
  return result;
}

uint64_t BatchNorm.runningMean.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC7E238@<X0>(void *a1@<X8>)
{
  result = BatchNorm.runningMean.getter();
  *a1 = v3;
  return result;
}

uint64_t BatchNorm.runningMean.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  v6[0] = v2;
  v6[1] = v3;

  LayerState.wrappedValue.setter(v6, v4);
}

uint64_t BatchNorm.runningMean.modify(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_6(*(v1 + 40));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      *a1 = v1 & 0x7FFFFFFFFFFFFFFFLL;

      sub_25BAB3020(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t BatchNorm.runningVariance.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC7E418@<X0>(void *a1@<X8>)
{
  result = BatchNorm.runningVariance.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BC7E454()
{
  OUTLINED_FUNCTION_78_11();
  memcpy(v3, v4, 0x50uLL);
  v6 = v2;

  sub_25BB922E4(v7, __dst);
  v0(&v6);
  memcpy(__dst, v1, sizeof(__dst));
  return sub_25BB92340(__dst);
}

uint64_t BatchNorm.runningVariance.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);
  v6[0] = v2;
  v6[1] = v3;

  LayerState.wrappedValue.setter(v6, v4);
}

uint64_t BatchNorm.runningVariance.modify(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_6(*(v1 + 48));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      *a1 = v1 & 0x7FFFFFFFFFFFFFFFLL;

      sub_25BAB3020(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t sub_25BC7E5D0(uint64_t *a1, char a2, __n128 a3)
{
  v5 = *a1;
  if (a2)
  {

    LayerState.wrappedValue.setter(&v5, v3);
  }

  else
  {
    LayerState.wrappedValue.setter(&v5, a3);
  }
}

uint64_t BatchNorm.isEveryParameterInitialized.getter()
{
  if (*(*(v0 + 72) + 16))
  {
    v1 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_39_26();
    OUTLINED_FUNCTION_45_20();
  }

  return v1 & 1;
}

uint64_t BatchNorm.init(momentum:offset:scale:epsilon:runningMean:runningVariance:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7820, &qword_25BCD40A0);
  OUTLINED_FUNCTION_44_20();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(a5 + 56) = OUTLINED_FUNCTION_57_12(v14);
  *(a5 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7828, &qword_25BCD40A8);
  OUTLINED_FUNCTION_32_28();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a5 + 72) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  v17 = 0;
  *(inited + 16) = xmmword_25BCBAE90;
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  v18 = *(*(v13 + 16) + 152);
  v19 = *(v18 + 16);
LABEL_2:
  while (v17 != 3)
  {
    v20 = *(*(*(inited + 32 + 8 * v17) + 16) + 152);
    if (*(v20 + 16) != v19)
    {
      goto LABEL_14;
    }

    ++v17;
    if (v19 && v20 != v18)
    {
      v21 = (v20 + 32);
      v22 = (v18 + 32);
      v23 = *(v18 + 16);
      while (v23)
      {
        if (*v21 != *v22)
        {
          goto LABEL_14;
        }

        ++v21;
        ++v22;
        if (!--v23)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
LABEL_14:
      swift_setDeallocating();

      sub_25BAB3FD0();
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_69_1(v61, v62, v63, v64, v65, v66, v67, v68, 99, 0);
      __break(1u);
LABEL_15:
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v69, v70, v71, v72, v73, v74, v75);
    }
  }

  swift_setDeallocating();

  sub_25BAB3FD0();
  *a5 = a6;
  *(a5 + 32) = 256;
  v24 = type metadata accessor for LayerVariableReference();
  v25 = OUTLINED_FUNCTION_5(v24);
  *(a5 + 24) = OUTLINED_FUNCTION_38_25(v25, v26, v27, v28, v29, v30, v31, v32, v76, v80, v84, v10, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, *v140, v140[4]);
  *(a5 + 16) = 256;
  v33 = OUTLINED_FUNCTION_18_37();
  *(a5 + 8) = OUTLINED_FUNCTION_38_25(v33, v34, v35, v36, v37, v38, v39, v40, v77, v81, v85, v11, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v144);
  *(a5 + 36) = a7;
  OUTLINED_FUNCTION_18_37();

  *(a5 + 40) = OUTLINED_FUNCTION_38_25(v41, v42, v43, v44, v45, v46, v47, v48, v78, v82, v86, v12, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145);
  v49 = OUTLINED_FUNCTION_18_37();
  *(a5 + 48) = OUTLINED_FUNCTION_38_25(v49, v50, v51, v52, v53, v54, v55, v56, v79, v83, v87, v13, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146);
  v57 = *(v12 + 16);

  v58 = *(v57 + 152);
  sub_25BCB617C();

  if (!*(v58 + 16))
  {
    goto LABEL_15;
  }

  v59 = *(v58 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v14 + 16) = v59;
  *(v14 + 24) = 0;
  return result;
}

uint64_t BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7820, &qword_25BCD40A0);
  OUTLINED_FUNCTION_44_20();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7828, &qword_25BCD40A8);
  OUTLINED_FUNCTION_32_28();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(a1 + 72) = v7;
  *a1 = a2;
  *(a1 + 36) = a3;
  v8 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_17_26();

  *(a1 + 24) = sub_25BB1AB04(v9);
  *(a1 + 32) = 256;
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_54_18();

  *(a1 + 8) = sub_25BB1AB04(v10);
  *(a1 + 16) = 256;
  type metadata accessor for ParameterInitializer();
  sub_25BB17820(v11);
  OUTLINED_FUNCTION_18_37();
  *(a1 + 40) = OUTLINED_FUNCTION_76_8();
  v13 = sub_25BB17964(v12);
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_76_8();
  OUTLINED_FUNCTION_17_26();

  *(a1 + 48) = v13;
  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  return result;
}

uint64_t BatchNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_22_35(*a1);
  if (v3 <= 1)
  {
    OUTLINED_FUNCTION_59_1(v2);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v39, v40, v41, v42, v43, v44, v45);
  }

  v4 = *(v1 + 56);
  v5 = *(v2 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v7 = OUTLINED_FUNCTION_5(v6);
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v5;

  sub_25BB1ABC8();

  v8 = OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_40_25(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);

  sub_25BB1ABC8();

  v18 = OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_40_25(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);

  sub_25BB1ABC8();

  v28 = OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_40_25(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);

  sub_25BB1ABC8();

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  return result;
}

uint64_t BatchNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, v2, sizeof(__dst));
  v5 = *(v4 + 16);
  v6 = *(v5 + 160);
  if (!sub_25BAA80BC(v6, &unk_286D42270))
  {
    v24 = v6;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v18 = v4;
    *v19 = &v24;
    *&v19[8] = xmmword_25BCBCE20;
    LOBYTE(v20) = 0;
    *(&v20 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v21 = 2;
    v23 = 3;
    OUTLINED_FUNCTION_15_48();
    v17 = 157;
    goto LABEL_6;
  }

  v7 = *(*(v5 + 152) + 16);
  if (!sub_25BAB74D0(v7, 2, 5, 1))
  {
    v18 = v7;
    *v19 = xmmword_25BCBCE20;
    v19[16] = 0;
    v20 = xmmword_25BCBAE40;
    v21 = 1;
    v23 = 7;
    OUTLINED_FUNCTION_15_48();
    v17 = 158;
LABEL_6:
    sub_25BADDD28(v11, v12, v13, v14, v15, v16, v17);
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v18);

  type metadata accessor for ResolutionDependencies();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = 0;
  *(v8 + 24) = v9;

  v22 = v8;
  sub_25BAA49B8();
  sub_25BAB7060(&v18);

  sub_25BC7EF68(__dst, v4, a2);

  sub_25BAA49B8();
  sub_25BAB814C();

  return sub_25BAA4AF4(&v18);
}

uint64_t sub_25BC7EF68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for ResolutionDependencies();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = 0;
  *(v6 + 24) = v7;
  v63 = v6;
  v8 = *(a2 + 16);
  v9 = sub_25BC54B00(0, *(*(v8 + 152) + 16));
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v9, v10, v11, v12);
    v9 = v56;
  }

  v13 = *(v9 + 16);
  if (v13 < 2)
  {
    __break(1u);
    goto LABEL_48;
  }

  v14 = v13 - 1;
  sub_25BAB254C(v9 + 48);
  *(v9 + 16) = v14;

  v58 = *(a1 + 40);
  v15 = *(v58 + 32);
  if ((~v15 & 0xF000000000000007) != 0)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v57 = *(a1 + 48);
    v16 = *(v57 + 32);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      goto LABEL_48;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v17 = *(a1 + 8);
    v18 = *(v17 + 32);
    if ((~v18 & 0xF000000000000007) == 0)
    {
      goto LABEL_48;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v19 = *(a1 + 24);
    v20 = *(v19 + 32);
    if ((~v20 & 0xF000000000000007) == 0)
    {
      goto LABEL_48;
    }

    v62 = a2;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v21 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *(a1 + 64);
    v69 = v25;
    v60 = v17;
    v61 = v19;
    v59 = v22;
    if (v25)
    {
      if (v25 == 1)
      {

LABEL_17:
        v27 = 1;
LABEL_21:
        v71 = v27;
        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        sub_25BAA4A5C(__src);

        memcpy(v67, __src, 0x88uLL);
        if (*&v67[5])
        {
          v28 = *(*&v67[5] + 24) & 1;
        }

        else
        {
          v28 = 0;
        }

        v29 = *a1;
        v30 = *(a1 + 36);
        sub_25BAA4AF4(v67);
        if (v28)
        {
          v31 = swift_allocObject();
          *(v31 + 16) = v69;
          *(v31 + 24) = v63;
          *(v31 + 32) = v29;
          *(v31 + 40) = v9;
          *(v31 + 48) = v30;

          sub_25BCB617C();
          v32 = sub_25BC8774C;
        }

        else
        {
          v32 = 0;
          v31 = 0;
        }

        v70 = 0;
        *&v67[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift";
        *(&v67[0] + 1) = 118;
        LOBYTE(v67[1]) = 2;
        *(&v67[1] + 8) = xmmword_25BCD4070;
        *(&v67[2] + 1) = "init(id:input:runningMean:runningVariance:scale:offset:learningPhase:momentum:normalizedAxes:epsilon:creationSite:backward:)";
        *&v67[3] = 124;
        WORD4(v67[3]) = 2;
        type metadata accessor for BatchNormOperation();
        swift_allocObject();
        v33 = sub_25BC5E814(0, 0, 0, v8, v21, v59, v23, v24, v29, v30, &v71, v9, v67, v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_25BCBAE90;
        v35 = *(v60 + 32);
        if ((~v35 & 0xF000000000000007) == 0)
        {
          goto LABEL_48;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        *(v34 + 32) = v35 & 0x7FFFFFFFFFFFFFFFLL;
        v36 = *(v61 + 32);
        if ((~v36 & 0xF000000000000007) == 0)
        {
          goto LABEL_48;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        *(v34 + 40) = v36 & 0x7FFFFFFFFFFFFFFFLL;
        *(v34 + 48) = v62;
        sub_25BAB3020(v35);
        sub_25BAB3020(v36);

        sub_25BAB7DE8(v34, v66);
        swift_setDeallocating();
        sub_25BAB3FD0();
        sub_25BAA486C(v66, v65, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA486C(v65, v64, &qword_27FBB6730, &qword_25BCBC4B0);
        swift_retain_n();
        sub_25BAA49B8();
        sub_25BAA4A5C(__src);

        v37 = __src[10];

        sub_25BAA4AF4(__src);
        sub_25BAA49B8();
        sub_25BAA4A5C(__src);

        v38 = __src[9];

        sub_25BAA4AF4(__src);
        type metadata accessor for TensorRepresentation();
        v39 = swift_allocObject();
        LOBYTE(__src[0]) = 1;
        v40 = sub_25BC0F884(v33, 0, v64, 0x100000000, v37, v38, v39);
        type metadata accessor for TensorHandle();
        v41 = swift_allocObject();
        *(v41 + 16) = v40;

        sub_25BAA6EB0();

        v42 = sub_25BAA6F5C(v65, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v69)
        {
          if (v69 == 1)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_25BAA49B8();
          sub_25BAA4A5C(__src);

          if (!__src[10])
          {

            sub_25BAA4AF4(__src);
            goto LABEL_46;
          }

          v54 = *(__src[10] + 24);
          v42 = sub_25BAA4AF4(__src);
          if (v54)
          {
LABEL_33:
            MEMORY[0x28223BE20](v42);
            sub_25BC7DA80();
            v43 = swift_allocObject();
            *(v43 + 16) = xmmword_25BCBAE90;
            v44 = *(v58 + 32);
            if ((~v44 & 0xF000000000000007) == 0)
            {
              goto LABEL_48;
            }

            if (v44 < 0)
            {
              v45 = v43;
              *(v43 + 32) = v44 & 0x7FFFFFFFFFFFFFFFLL;
              v46 = *(v57 + 32);
              if ((~v46 & 0xF000000000000007) == 0)
              {
                goto LABEL_48;
              }

              if (v46 < 0)
              {
                *(v43 + 40) = v46 & 0x7FFFFFFFFFFFFFFFLL;
                *(v43 + 48) = v41;

                sub_25BAB3020(v44);
                sub_25BAB3020(v46);
                sub_25BACEA3C(v45, v47, v48);
                swift_setDeallocating();
                sub_25BAB3FD0();
                v49 = swift_allocObject();
                *(v49 + 16) = xmmword_25BCBAE70;
                v50 = *(v58 + 32);
                if ((~v50 & 0xF000000000000007) == 0)
                {
                  goto LABEL_48;
                }

                if (v50 < 0)
                {
                  *(v49 + 32) = v50 & 0x7FFFFFFFFFFFFFFFLL;
                  v51 = *(v57 + 32);
                  if ((~v51 & 0xF000000000000007) != 0)
                  {
                    if (v51 < 0)
                    {
                      *(v49 + 40) = v51 & 0x7FFFFFFFFFFFFFFFLL;
                      sub_25BAB3020(v50);
                      sub_25BAB3020(v51);
                      sub_25BACEA3C(v49, v52, v53);

                      swift_setDeallocating();
                      sub_25BAB3FD0();
LABEL_46:
                      *a3 = v41;
                      return sub_25BAA6F5C(v66, &qword_27FBB6730, &qword_25BCBC4B0);
                    }

                    goto LABEL_49;
                  }

                  goto LABEL_48;
                }
              }
            }

LABEL_49:
            result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
            goto LABEL_50;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      type metadata accessor for ContextManager();

      sub_25BAA49B8();
      sub_25BAA4A5C(__src);

      if (__src[10])
      {
        v26 = *(__src[10] + 24);
        sub_25BAA4AF4(__src);
        if (v26)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_25BAA4AF4(__src);
      }
    }

    v27 = 2;
    goto LABEL_21;
  }

LABEL_48:
  result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ELL, 0x800000025BCDA100, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 329);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_25BC7F7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BAA486C(a3, v24, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v24, v23, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v20);

  v5 = v22;

  sub_25BAA4AF4(v20);
  sub_25BAA49B8();
  sub_25BAA4A5C(v20);

  v6 = v21;

  sub_25BAA4AF4(v20);
  type metadata accessor for TensorRepresentation();
  v7 = swift_allocObject();
  LOBYTE(v20[0]) = 1;
  v8 = sub_25BC0F884(a2, 1, v23, 0x100000000, v5, v6, v7);
  type metadata accessor for TensorHandle();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  sub_25BAA6EB0();

  sub_25BAA6F5C(v24, &qword_27FBB6730, &qword_25BCBC4B0);
  v25 = *(a1 + 40);
  v20[0] = v25;
  v24[0] = v9;
  sub_25BC87764(&v25, v23);
  LayerState.wrappedValue.setter(v24, v10);

  sub_25BAA486C(a3, v24, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v24, v23, &qword_27FBB6730, &qword_25BCBC4B0);

  sub_25BAA49B8();
  sub_25BAA4A5C(v20);

  v11 = v22;

  sub_25BAA4AF4(v20);
  sub_25BAA49B8();
  sub_25BAA4A5C(v20);

  v12 = v21;

  sub_25BAA4AF4(v20);
  v13 = swift_allocObject();
  LOBYTE(v20[0]) = 1;
  v14 = sub_25BC0F884(a2, 2, v23, 0x100000000, v11, v12, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  sub_25BAA6EB0();

  sub_25BAA6F5C(v24, &qword_27FBB6730, &qword_25BCBC4B0);
  v20[0] = *(a1 + 48);
  v24[0] = v20[0];
  v23[0] = v15;
  sub_25BC87764(v20, v19);
  LayerState.wrappedValue.setter(v23, v16);
}

void sub_25BC7FADC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v75);

    if (!v78)
    {
      sub_25BAA4AF4(v75);
      goto LABEL_27;
    }

    v12 = *(v78 + 24);
    sub_25BAA4AF4(v75);
    if ((v12 & 1) == 0)
    {
LABEL_27:
      if (!*(a1 + 16))
      {
        goto LABEL_33;
      }

      v38 = a2[2];
      if (!v38)
      {
        goto LABEL_34;
      }

      if (v38 < 4)
      {
        goto LABEL_35;
      }

      if (v38 == 4)
      {
        goto LABEL_36;
      }

      v39 = *(a1 + 32);
      v40 = a2[8];
      v41 = *(v39 + 16);
      v42 = *(a2[4] + 16);
      v43 = *(a2[7] + 16);
      v44 = *(v40 + 16);
      v82[55] = 0;
      *&v69 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift";
      *(&v69 + 1) = 118;
      v70 = 2;
      v71 = xmmword_25BCCB490;
      v72 = "init(id:gradient:input:scale:offset:momentum:normalizedAxes:epsilon:creationSite:)";
      v73 = 82;
      v74 = 2;
      type metadata accessor for BatchNormGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      v45 = sub_25BC5EC94(0, 0, 0, v41, v42, v43, v44, a5, a6, a7, &v69);
      sub_25BAA486C(*(v39 + 16) + 168, v82, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v82, v81, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v81, v80, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v75);

      v46 = v78;

      sub_25BAA4AF4(v75);
      sub_25BAA49B8();
      sub_25BAA4A5C(v75);

      v47 = v77;

      sub_25BAA4AF4(v75);
      type metadata accessor for TensorRepresentation();
      v48 = swift_allocObject();
      v75[0] = 1;
      v49 = sub_25BC115BC(v45, 0, v80, 0x100000000, v46, v47, v48);
      type metadata accessor for TensorHandle();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v81, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v82, v81, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v81, v80, &qword_27FBB6730, &qword_25BCBC4B0);
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v75);

      v51 = v78;

      sub_25BAA4AF4(v75);
      sub_25BAA49B8();
      sub_25BAA4A5C(v75);

      v52 = v77;

      sub_25BAA4AF4(v75);
      v53 = swift_allocObject();
      v75[0] = 1;
      v54 = sub_25BC115BC(v45, 1, v80, 0x100000000, v51, v52, v53);
      v55 = swift_allocObject();
      *(v55 + 16) = v54;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v81, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v82, v81, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v81, v80, &qword_27FBB6730, &qword_25BCBC4B0);
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v75);

      v56 = v78;

      sub_25BAA4AF4(v75);
      sub_25BAA49B8();
      sub_25BAA4A5C(v75);

      v57 = v77;

      sub_25BAA4AF4(v75);
      v58 = swift_allocObject();
      v75[0] = 1;
      v59 = sub_25BC115BC(v45, 2, v80, 0x100000000, v56, v57, v58);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v81, &qword_27FBB6730, &qword_25BCBC4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_25BCBAE90;
      *(v61 + 32) = v50;

      *(v61 + 40) = sub_25BAC42B0();
      *(v61 + 48) = v62;
      *(v61 + 56) = v55;

      *(v61 + 64) = sub_25BAC42B0();
      *(v61 + 72) = v63;
      *(v61 + 80) = v60;

      *(v61 + 88) = sub_25BAC42B0();
      *(v61 + 96) = v64;

      sub_25BAA6F5C(v82, &qword_27FBB6730, &qword_25BCBC4B0);
      return;
    }
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v75);

  v13 = v77;

  sub_25BAA4AF4(v75);
  if (!v13)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v14 = *(a4 + 24);
  v15 = *(v14 + 16);
  if (!v15)
  {

    goto LABEL_27;
  }

  v65 = a2;
  v66 = a1;
  v16 = v14 + 32;
  sub_25BCB617C();
  v17 = &qword_27FBB3DB0;
  v18 = 1;
  v19 = &off_279972000;
  v20 = &off_279972000;
  v21 = v15;
  v22 = &qword_25BCCCD60;
  v67 = v15;
  while (v18 - 1 < v21)
  {
    sub_25BAA486C(v16, v82, v17, v22);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      sub_25BAA6F5C(v82, v17, v22);
      goto LABEL_22;
    }

    v24 = Strong;
    if (*(Strong + 32) > 0)
    {

      v25 = sub_25BA928B4();
      [v25 v19[150]];

      swift_beginAccess();
      sub_25BA9323C(v24 + 40, v75);
      if (!v79)
      {
        sub_25BA9BE3C(v75, &v69);
        v26 = v22;
        v27 = v14;
        v28 = v17;
        v29 = v20;
        v30 = v19;
        v31 = *(&v69 + 1);
        ObjectType = swift_getObjectType();
        v33 = *(v31 + 56);
        v34 = v31;
        v19 = v30;
        v20 = v29;
        v17 = v28;
        v14 = v27;
        v22 = v26;
        v15 = v67;
        v35 = v33(ObjectType, v34);
        sub_25BA977E0(&v69);
        [*(v24 + 224) v20 + 376];

        sub_25BAA6F5C(v82, v17, v22);
        if ((v35 & 1) == 0)
        {
          sub_25BC2BEDC(v24, v36, v37);
        }

        goto LABEL_21;
      }

      if (v79 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v76);
      }

      else
      {
        sub_25BA9778C(v75);
      }

      [*(v24 + 224) v20[151]];
    }

    sub_25BAA6F5C(v82, v17, v22);
LABEL_21:

LABEL_22:
    if (v18 >= v15)
    {

      a2 = v65;
      a1 = v66;
      goto LABEL_27;
    }

    v21 = *(v14 + 16);
    ++v18;
    v16 += 8;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

unint64_t sub_25BC80374()
{
  v0 = sub_25BCB761C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BC803F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC80374();
  *a1 = result;
  return result;
}

uint64_t sub_25BC80420()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2B14(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25BC80450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC803C0();
  *a1 = result;
  return result;
}

uint64_t sub_25BC80478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC803C4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC804A0(uint64_t a1)
{
  v2 = sub_25BC86988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC804DC(uint64_t a1)
{
  v2 = sub_25BC86988();

  return MEMORY[0x2821FE720](a1, v2);
}

void BatchNorm.init(from:)()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7830, &qword_25BCD40B0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  OUTLINED_FUNCTION_4_6();
  v11 = sub_25BC86988();
  OUTLINED_FUNCTION_60_13(&type metadata for BatchNorm.CodingKeys, v12, v11);
  if (!v0)
  {
    LOBYTE(v58) = 0;
    OUTLINED_FUNCTION_91_6();
    v14 = v13;
    OUTLINED_FUNCTION_71_9(1);
    sub_25BB3993C();
    OUTLINED_FUNCTION_19_36(&type metadata for Parameter);
    v15 = v72;
    v75 = v73;
    v76 = v74;
    OUTLINED_FUNCTION_71_9(2);
    OUTLINED_FUNCTION_19_36(&type metadata for Parameter);
    v55 = v15;
    v16 = v69;
    v53 = v70;
    v54 = v71;
    OUTLINED_FUNCTION_71_9(4);
    sub_25BC869DC();
    OUTLINED_FUNCTION_19_36(&type metadata for LayerState);
    v52 = v16;
    v17 = v68;
    OUTLINED_FUNCTION_71_9(5);
    OUTLINED_FUNCTION_19_36(&type metadata for LayerState);
    v18 = v17;
    v19 = v67;
    OUTLINED_FUNCTION_71_9(3);
    OUTLINED_FUNCTION_91_6();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7820, &qword_25BCD40A0);
    OUTLINED_FUNCTION_44_20();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v50 = v22;
    *(v22 + 24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7828, &qword_25BCD40A8);
    OUTLINED_FUNCTION_32_28();
    *(swift_allocObject() + 16) = 0;
    OUTLINED_FUNCTION_37_26();
    if (v25)
    {
      v47 = 329;
      OUTLINED_FUNCTION_1_3();
    }

    else
    {
      if (v24 < 0)
      {
        v49 = v23;
        v51 = v19;
        v26 = OUTLINED_FUNCTION_21_37(v24);
        if (*(v26 + 16))
        {
          v27 = *(v26 + 32);
          OUTLINED_FUNCTION_5_53();
          swift_beginAccess();
          v28 = v50;
          *(v50 + 16) = v27;
          v29 = v28;
          *(v28 + 24) = 0;
          v56 = 6;
          sub_25BBC68D8();
          sub_25BCB76AC();
          (*(v7 + 8))(v10, v5);
          v30 = v57;
          *v4 = v14;
          *(v4 + 8) = v52;
          *(v4 + 16) = v53;
          *(v4 + 17) = v54;
          *(v4 + 24) = v55;
          *(v4 + 32) = v75;
          *(v4 + 33) = v76;
          *(v4 + 36) = v21;
          v31 = v51;
          *(v4 + 40) = v18;
          *(v4 + 48) = v31;
          *(v4 + 56) = v29;
          *(v4 + 64) = v30;
          *(v4 + 72) = v49;
          goto LABEL_3;
        }

LABEL_11:
        v59 = 0;
        v60 = 0;
        v58 = 0;
        v61 = -1;
        v63 = 0;
        v64 = 0;
        v62 = 0;
        v65 = -1;
        v66 = 4;
        sub_25BCB617C();
        OUTLINED_FUNCTION_17_4();
        sub_25BADDD28(v40, v41, v42, v43, v44, v45, v46);
      }

      v47 = 325;
      OUTLINED_FUNCTION_5_3();
    }

    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC(v32, v33, v34, v35, v36, v37, v38, v39, v47);
    __break(1u);
    goto LABEL_11;
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_39();
}

void BatchNorm.encode(to:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7848, &qword_25BCD40B8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC86988();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_77_8();
  if (!v0)
  {
    sub_25BB39990();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    sub_25BC86A30();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    OUTLINED_FUNCTION_63_11();
    sub_25BCB777C();
    sub_25BBC6830();
    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_25BC80D78@<X0>(uint64_t *a1@<X8>)
{
  result = LayerNorm.NormalizedAxes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t LayerNorm.scale.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC80EE0@<X0>(void *a1@<X8>)
{
  result = LayerNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t LayerNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t LayerNorm.offset.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC81084@<X0>(void *a1@<X8>)
{
  result = LayerNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t LayerNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

BOOL LayerNorm.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 48);
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_39_26();
  result = *(v3 + 16) != 0;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_25BC81238()
{
  OUTLINED_FUNCTION_38_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 9);
  v11 = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7858, &qword_25BCD40C0);
  v12 = swift_allocObject();
  *(v0 + 32) = v12;
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7860, &qword_25BCD40C8);
  OUTLINED_FUNCTION_32_28();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v0 + 48) = v14;
  OUTLINED_FUNCTION_37_26();
  if (v16)
  {
    goto LABEL_9;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
LABEL_10:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_11;
  }

  v17 = *(v7 + 32);
  if ((~v17 & 0xF000000000000007) == 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_11:
    for (i = 102; ; i = 108)
    {
      sub_25BCB74CC(v23, v24, v25, v26, v27, v28, i, 2, v30);
      __break(1u);
LABEL_13:
      OUTLINED_FUNCTION_2_17();
      v30 = 393;
      OUTLINED_FUNCTION_7_0();
    }
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v18 = OUTLINED_FUNCTION_21_37(v15);
  if ((sub_25BAB5C48(v18, *(*((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
    goto LABEL_13;
  }

  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 25) = v5;
  *v0 = v7;
  *(v0 + 8) = v8;
  *(v0 + 9) = v9;
  *(v0 + 40) = v11;
  *(v0 + 44) = v1;
  OUTLINED_FUNCTION_37_26();
  if (v16)
  {
    goto LABEL_9;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v21 = *(*((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *v13 = v21;
  sub_25BCB617C();
}

uint64_t LayerNorm.init(offset:scale:epsilon:)()
{
  OUTLINED_FUNCTION_38_0();
  v3 = *v2;
  v5 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7858, &qword_25BCD40C0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7860, &qword_25BCD40C8);
  OUTLINED_FUNCTION_32_28();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = *(v3 + 16);
  if (sub_25BAB5C48(*(v8 + 152), *(*(v5 + 16) + 152)))
  {
    v9 = *(*(v8 + 152) + 16);
    v10 = v9 - 1;
    if ((v9 - 1) < 3)
    {
      v27[0] = v3;
      v11 = type metadata accessor for LayerVariableReference();
      OUTLINED_FUNCTION_5(v11);
      OUTLINED_FUNCTION_17_26();

      v28 = 1;
      v12 = sub_25BAB6D38(v27, 0x100000000);
      v27[0] = v5;
      OUTLINED_FUNCTION_18_37();
      v28 = 1;
      v13 = sub_25BAB6D38(v27, 0x100000000);
      v14 = *(v3 + 16);

      v15 = *(v14 + 152);
      sub_25BCB617C();

      OUTLINED_FUNCTION_5_53();
      swift_beginAccess();
      *(v6 + 16) = v15;

      *v0 = v13;
      *(v0 + 8) = 256;
      *(v0 + 16) = v12;
      *(v0 + 24) = 256;
      *(v0 + 32) = v6;
      *(v0 + 40) = v10;
      *(v0 + 44) = v1;
      *(v0 + 48) = v7;
      return result;
    }

    v26 = 0;
    v25 = 414;
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_18();
    v25 = 411;
    OUTLINED_FUNCTION_7_0();
    v24 = 0xD000000000000034;
  }

  result = OUTLINED_FUNCTION_69_1(v17, v18, v19, v24, v20, v21, v22, v23, v25, v26);
  __break(1u);
  return result;
}

uint64_t LayerNorm.init(normalizedAxes:offsetInitializer:scaleInitializer:epsilon:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7858, &qword_25BCD40C0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(a2 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7860, &qword_25BCD40C8);
  OUTLINED_FUNCTION_32_28();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a2 + 48) = v8;
  v9 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v9);
  OUTLINED_FUNCTION_54_18();

  *(a2 + 16) = sub_25BB1AB04(v10);
  *(a2 + 24) = 256;
  OUTLINED_FUNCTION_5(v9);
  v11 = OUTLINED_FUNCTION_17_26();
  sub_25BB1AB04(v11);
  OUTLINED_FUNCTION_54_18();

  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 44) = a3;
  *(a2 + 40) = v6;
  return result;
}

uint64_t LayerNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(*(v2 + 16) + 152);
  sub_25BCB617C();
  sub_25BC81820(&v7, v6);

  v4 = v6[0];

  sub_25BB1ABC8();

  v6[0] = v4;

  sub_25BB1ABC8();

  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v3 + 16) = v4;
}

uint64_t sub_25BC81820@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  if (v5)
  {
    v6 = swift_allocObject();
    if (v5 == 1)
    {
      *(v6 + 16) = xmmword_25BCBAE70;
      *(v6 + 32) = TensorShape.subscript.getter(*(v4 + 16) - 2);
      result = TensorShape.subscript.getter(*(v4 + 16) - 1);
      *(v6 + 40) = result;
    }

    else
    {
      *(v6 + 16) = xmmword_25BCBAE90;
      *(v6 + 32) = TensorShape.subscript.getter(*(v4 + 16) - 3);
      *(v6 + 40) = TensorShape.subscript.getter(*(v4 + 16) - 2);
      result = TensorShape.subscript.getter(*(v4 + 16) - 1);
      *(v6 + 48) = result;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25BCBAE50;
    result = TensorShape.subscript.getter(*(v4 + 16) - 1);
    *(v6 + 32) = result;
  }

  *a2 = v6;
  return result;
}

uint64_t LayerNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 40);
  v8 = *(v2 + 44);
  v9 = *(*a1 + 16);
  LOBYTE(v2) = *(v9 + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
LABEL_10:
    LOBYTE(v68) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v82 = v6;
    *(&v82 + 1) = &v68;
    v83 = xmmword_25BCBCE20;
    LOBYTE(v84) = 0;
    *(&v84 + 1) = v49;
    LOBYTE(v85) = 2;
    v86 = 3;
    OUTLINED_FUNCTION_15_48();
    sub_25BADDD28(v50, v51, v52, v53, v54, v55, 495);
  }

  LOBYTE(v68) = v7;
  *&v82 = *(v9 + 152);
  sub_25BC81CF0(&v82);
  sub_25BCB617C();

  Tensor.mean(alongAxes:)(&v82);
  v10 = v82;
  OUTLINED_FUNCTION_67_10(v11, v12, v13, v14, v15, v16, v17, v18, v56, v59, v62, v65, v82, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v4);
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  v2 = &v68;
  Tensor.mean(alongAxes:)(&v82);

  v19 = *(v5 + 32);
  if ((~v19 & 0xF000000000000007) == 0)
  {
    goto LABEL_7;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

  v2 = *(v6 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
LABEL_7:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_9:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC(v41, v42, v43, v44, v45, v46, v47, v48, v57);
    __break(1u);
    goto LABEL_10;
  }

  v66 = a2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v20 = v82;
  v21 = *(*(v4 + 16) + 160);
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  v80 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v8;
  HIBYTE(v74) = v21;
  sub_25BAA486C(&v82, &v68, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAB3020(v19);
  sub_25BAB3020(v2);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v80, inited, &v74 + 7, &v68, &v81);
  v23 = sub_25BAA6F5C(&v82, &qword_27FBB6730, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_67_10(v23, v24, v25, v26, v27, v28, v29, v30, v57, v60, v63, v66, v81, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v20);
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(&v82, &v81);

  v32 = v82;
  OUTLINED_FUNCTION_67_10(v31, v33, v34, v35, v36, v37, v38, v39, v58, v61, v64, v67, v10, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v4);
  static Tensor.- infix(_:_:)();
  *&v82 = v32;
  v68 = v19 & 0x7FFFFFFFFFFFFFFFLL;
  static Tensor.* infix(_:_:)();
  static Tensor.* infix(_:_:)();

  v68 = v82;
  v81 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  static Tensor.+ infix(_:_:)();

  sub_25BAB310C(v19);

  return sub_25BAB310C(v2);
}

double sub_25BC81CF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  if (v3)
  {
    v4 = swift_allocObject();
    if (v3 == 1)
    {
      v5 = (v2 + 16);
      v6 = vld1q_dup_f64(v5);
      v7 = vaddq_s64(v6, xmmword_25BCD4090);
      *(v4 + 16) = xmmword_25BCBAE70;
      *(v4 + 32) = v7;
    }

    else
    {
      v7.i64[0] = 3;
      v9 = *(v2 + 16);
      *(v4 + 16) = xmmword_25BCBAE90;
      *(v4 + 32) = vaddq_s64(vdupq_n_s64(v9), xmmword_25BCD4080);
      *(v4 + 48) = v9 - 1;
    }
  }

  else
  {
    v8 = swift_allocObject();
    v7.i64[0] = 1;
    *(v8 + 16) = xmmword_25BCBAE50;
    *(v8 + 32) = *(v2 + 16) - 1;
  }

  return *v7.i64;
}

unint64_t sub_25BC81DE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE2B98(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25BC81E14()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2BE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_25BC81E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE2B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC81E6C(uint64_t a1)
{
  v2 = sub_25BC86A84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC81EA8(uint64_t a1)
{
  v2 = sub_25BC86A84();

  return MEMORY[0x2821FE720](a1, v2);
}

void LayerNorm.init(from:)()
{
  OUTLINED_FUNCTION_38_22();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7868, &qword_25BCD40D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = sub_25BC86A84();
  OUTLINED_FUNCTION_60_13(&type metadata for LayerNorm.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    LOBYTE(v10) = 2;
    OUTLINED_FUNCTION_48_22();
    sub_25BCB768C();
    sub_25BC86AD8();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    sub_25BC81238();
    v8 = OUTLINED_FUNCTION_7_1();
    v9(v8);
    *v4 = v10;
    *(v4 + 16) = v11;
    *(v4 + 32) = v12;
    *(v4 + 48) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_22();
}

void LayerNorm.encode(to:)()
{
  OUTLINED_FUNCTION_38_22();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7880, &qword_25BCD40D8);
  OUTLINED_FUNCTION_2();
  v8 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  v7 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC86A84();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  sub_25BB39990();

  OUTLINED_FUNCTION_68_12();
  sub_25BCB779C();
  OUTLINED_FUNCTION_93_7();
  if (!v7)
  {

    sub_25BCB779C();
    OUTLINED_FUNCTION_93_7();
    sub_25BCB777C();
    sub_25BC86B2C();
    sub_25BCB779C();
  }

  (*(v8 + 8))(v1, v4);
  OUTLINED_FUNCTION_41_22();
}

uint64_t InstanceNorm.scale.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC82474@<X0>(void *a1@<X8>)
{
  result = InstanceNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t InstanceNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t InstanceNorm.offset.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC8261C@<X0>(void *a1@<X8>)
{
  result = InstanceNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t InstanceNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t sub_25BC82764(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

uint64_t InstanceNorm.featureCount.getter()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_59_14();
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_58_15(v3, v4, v5, v6, v7, v8, v9, v10, 572, v11);
  __break(1u);
  return result;
}

uint64_t InstanceNorm.isEveryParameterInitialized.getter()
{
  if (*(*(v0 + 88) + 16))
  {
    v1 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_39_26();
    OUTLINED_FUNCTION_45_20();
  }

  return v1 & 1;
}

void InstanceNorm.runningMean.getter(void *a1@<X8>)
{
  if (*(v1 + 64) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC(v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v5);
}

void *InstanceNorm.runningMean.setter(void *result)
{
  if (*result)
  {
    v2 = *(v1 + 56);
    v13[0] = *result;
    v13[1] = v2;
    swift_retain_n();
    LayerState.wrappedValue.setter(v13, v3);
  }

  else if (*(v1 + 64))
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_61_13(v4, v5, v6, v7, v8, v9, v10, v11, 356, v12);
    __break(1u);
  }

  return result;
}

uint64_t (*InstanceNorm.runningMean.modify(uint64_t a1))()
{
  v2 = *(v1 + 56);
  *(a1 + 8) = v2;
  v3 = *(v1 + 64);
  *(a1 + 16) = v3;
  if (v3 != 1)
  {
    *a1 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 32);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
LABEL_6:

      return sub_25BC82B40;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

void InstanceNorm.$runningMean.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

void InstanceNorm.runningVariance.getter(void *a1@<X8>)
{
  if (*(v1 + 80) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC(v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v5);
}

uint64_t sub_25BC82C6C()
{
  OUTLINED_FUNCTION_78_11();
  memcpy(v3, v4, 0x60uLL);
  v6 = v2;

  sub_25BB92184(v7, __dst);
  v0(&v6);
  memcpy(__dst, v1, sizeof(__dst));
  return sub_25BB921E0(__dst);
}

void *InstanceNorm.runningVariance.setter(void *result)
{
  if (*result)
  {
    v2 = *(v1 + 72);
    v13[0] = *result;
    v13[1] = v2;
    swift_retain_n();
    LayerState.wrappedValue.setter(v13, v3);
  }

  else if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_61_13(v4, v5, v6, v7, v8, v9, v10, v11, 356, v12);
    __break(1u);
  }

  return result;
}

uint64_t (*InstanceNorm.runningVariance.modify(uint64_t a1))()
{
  v2 = *(v1 + 72);
  *(a1 + 8) = v2;
  v3 = *(v1 + 80);
  *(a1 + 16) = v3;
  if (v3 != 1)
  {
    *a1 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 32);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
LABEL_6:

      return sub_25BC877EC;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t sub_25BC82E5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v15 = *a1;

      LayerState.wrappedValue.setter(&v15, v4);

      goto LABEL_10;
    }

    if (*(a1 + 16) != 1)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_61_13(v6, v7, v8, v9, v10, v11, v12, v13, 356, v14);
    __break(1u);
    return result;
  }

  if (!v2)
  {
    if ((a1[2] & 1) == 0)
    {

      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v15 = *a1;

  LayerState.wrappedValue.setter(&v15, v3);

LABEL_10:
}

void InstanceNorm.$runningVariance.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t sub_25BC82FA8(double a1, float a2)
{
  OUTLINED_FUNCTION_38_0();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 9);
  v60 = *v13;
  v15 = *v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7890, &qword_25BCD40E0);
  OUTLINED_FUNCTION_44_20();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v58 = v16;
  OUTLINED_FUNCTION_57_12(v16);
  v17 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v17);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_5(v17);
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7898, &qword_25BCD40E8);
  OUTLINED_FUNCTION_32_28();
  *(swift_allocObject() + 16) = 0;
  OUTLINED_FUNCTION_37_26();
  if (v20)
  {
    goto LABEL_26;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v21 = *(v10 + 32);
  if ((~v21 & 0xF000000000000007) == 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_28:
    v47 = 102;
LABEL_36:
    result = sub_25BCB74CC(v41, v42, v43, v44, v45, v46, v47, 2, v56);
    __break(1u);
    return result;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v22 = v18;
  v23 = OUTLINED_FUNCTION_21_37(v19);
  if ((sub_25BAB5C48(v23, *(*((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
    v48 = 615;
    goto LABEL_34;
  }

  v59 = v12;
  v57 = v22;
  if (v15)
  {
    if (v60)
    {
      OUTLINED_FUNCTION_37_26();
      if (v20)
      {
        goto LABEL_26;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v26 = *(v15 + 32);
      if ((~v26 & 0xF000000000000007) == 0)
      {
        goto LABEL_26;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v27 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      if (sub_25BAB5C48(*(v27 + 152), *(*((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)))
      {
        OUTLINED_FUNCTION_37_26();
        if (!v20)
        {
          if (v28 < 0)
          {
            v29 = OUTLINED_FUNCTION_21_37(v28);
            if (sub_25BAB5C48(v29, *(v27 + 152)))
            {

              goto LABEL_19;
            }

            v48 = 621;
            goto LABEL_34;
          }

LABEL_27:
          OUTLINED_FUNCTION_0_19();
          OUTLINED_FUNCTION_5_3();
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v48 = 620;
LABEL_34:
      v56 = v48;
      OUTLINED_FUNCTION_16_50();
      goto LABEL_35;
    }

LABEL_30:
    OUTLINED_FUNCTION_2_17();
    v56 = 616;
    OUTLINED_FUNCTION_7_0();
LABEL_35:
    v47 = 108;
    goto LABEL_36;
  }

  if (v60)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_5(v17);
  OUTLINED_FUNCTION_54_18();

  v60 = sub_25BB1AB60(0);
LABEL_19:
  v30 = v10;

  v31 = v11;
  if (v15)
  {
    v32 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_5(v17);
    v32 = OUTLINED_FUNCTION_66();
  }

  v33 = v8;

  OUTLINED_FUNCTION_37_26();
  if (v20)
  {
    goto LABEL_26;
  }

  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v35 = v7;
  v36 = v6;
  v37 = *(*((v34 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  sub_25BCB617C();

  if (!*(v37 + 16))
  {
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v49, v50, v51, v52, v53, v54, v55);
  }

  v38 = v15 != 0;
  v39 = *(v37 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v58 + 16) = v39;
  *(v58 + 24) = 0;
  *v2 = v30;
  *(v2 + 8) = v31;
  *(v2 + 9) = v59;
  *(v2 + 16) = v36;
  *(v2 + 24) = v35;
  *(v2 + 25) = v33;
  *(v2 + 26) = v38;
  *(v2 + 32) = v58;
  *(v2 + 40) = 0;
  *(v2 + 44) = a2;
  *(v2 + 48) = v3;
  *(v2 + 56) = v60;
  *(v2 + 64) = v38;
  *(v2 + 72) = v32;
  *(v2 + 80) = v38;
  *(v2 + 88) = v57;
  return result;
}

uint64_t InstanceNorm.init(offset:scale:runningMean:runningVariance:momentum:epsilon:)(double a1, float a2)
{
  OUTLINED_FUNCTION_38_0();
  v6 = *v5;
  v8 = *v7;
  v10 = *v9;
  v12 = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7890, &qword_25BCD40E0);
  OUTLINED_FUNCTION_44_20();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  OUTLINED_FUNCTION_57_12(v13);
  v14 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v14);
  v69 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_33_28();
  v15 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7898, &qword_25BCD40E8);
  OUTLINED_FUNCTION_32_28();
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  v16 = *(v6 + 16);
  if ((sub_25BAB5C48(*(v16 + 152), *(*(v8 + 16) + 152)) & 1) == 0)
  {
    LODWORD(v60) = 0;
    v18 = 651;
    goto LABEL_18;
  }

  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_15:
    OUTLINED_FUNCTION_18();
    v59 = 652;
    OUTLINED_FUNCTION_7_0();
    v49 = 0xD00000000000004ALL;
LABEL_19:
    result = OUTLINED_FUNCTION_69_1(v42, v43, v44, v49, v45, v46, v47, v48, v59, v60);
    __break(1u);
    return result;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v17 = *(v10 + 16);
  if ((sub_25BAB5C48(*(v17 + 152), *(*(v12 + 16) + 152)) & 1) == 0)
  {
    LODWORD(v60) = 0;
    v18 = 656;
    goto LABEL_18;
  }

  if ((sub_25BAB5C48(*(v16 + 152), *(v17 + 152)) & 1) == 0)
  {
    LODWORD(v60) = 0;
    v18 = 657;
LABEL_18:
    v59 = v18;
    OUTLINED_FUNCTION_16_50();
    goto LABEL_19;
  }

LABEL_8:
  v19 = OUTLINED_FUNCTION_33_28();
  v63 = OUTLINED_FUNCTION_90_6(v19, v20, v21, v22, v23, v24, v25, v26, v57, v60, v62, v65, v13 + 16, v69);
  v73 = v8;
  OUTLINED_FUNCTION_33_28();

  v35 = OUTLINED_FUNCTION_90_6(v27, v28, v29, v30, v31, v32, v33, v34, v58, v61, v63, v66, v68, v70);
  if (v10)
  {
    v72 = v10;
    v73 = v71;
    swift_retain_n();
    LayerState.wrappedValue.setter(&v72, v36);
  }

  if (v12)
  {
    v72 = v12;
    v73 = v15;
    swift_retain_n();
    LayerState.wrappedValue.setter(&v72, v37);
  }

  v38 = *(v8 + 16);

  v39 = *(v38 + 152);
  sub_25BCB617C();

  if (!*(v39 + 16))
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = -1;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    v80 = -1;
    v81 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v50, v51, v52, v53, v54, v55, v56);
  }

  v40 = *(v39 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v13 + 16) = v40;
  *(v13 + 24) = 0;
  *v2 = v35;
  *(v2 + 8) = 256;
  *(v2 + 16) = v64;
  *(v2 + 24) = 256;
  *(v2 + 26) = v10 != 0;
  *(v2 + 32) = v13;
  *(v2 + 40) = 0;
  *(v2 + 44) = a2;
  *(v2 + 48) = v3;
  *(v2 + 56) = v71;
  *(v2 + 64) = 0;
  *(v2 + 72) = v15;
  *(v2 + 80) = 0;
  *(v2 + 88) = v67;
  return result;
}

uint64_t InstanceNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:tracksRunningStatistics:)@<X0>(char a1@<W2>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7890, &qword_25BCD40E0);
  OUTLINED_FUNCTION_44_20();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  OUTLINED_FUNCTION_57_12(v8);
  v9 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v9);
  v10 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_33_28();
  v23 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7898, &qword_25BCD40E8);
  OUTLINED_FUNCTION_32_28();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  OUTLINED_FUNCTION_33_28();

  v22 = sub_25BB1AB04(v12);
  OUTLINED_FUNCTION_33_28();
  OUTLINED_FUNCTION_17_26();

  v21 = sub_25BB1AB04(v13);
  v24 = a1;
  if (a1)
  {
    type metadata accessor for ParameterInitializer();
    sub_25BB17820(v14);
    OUTLINED_FUNCTION_33_28();
    v15 = OUTLINED_FUNCTION_76_8();

    sub_25BB17964(v16);
    OUTLINED_FUNCTION_33_28();
    OUTLINED_FUNCTION_54_18();

    v18 = sub_25BB1AB04(v17);

    v19 = 1;
    v10 = v15;
  }

  else
  {
    v19 = 0;
    v18 = v23;
  }

  *a2 = v21;
  *(a2 + 8) = 256;
  *(a2 + 16) = v22;
  *(a2 + 24) = 256;
  *(a2 + 26) = v24 & 1;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 44) = a4;
  *(a2 + 48) = a3;
  *(a2 + 56) = v10;
  *(a2 + 64) = v19;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  *(a2 + 88) = v11;
  return result;
}

uint64_t InstanceNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_22_35(*a1);
  if (v3 <= 1)
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v14, v15, v16, v17, v18, v19, v20);
  }

  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v21 = *(v1 + 80);
  v6 = *(v1 + 26);
  v7 = *(v2 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v9 = OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_43_21(v9, xmmword_25BCBAE50);

  sub_25BB1ABC8();

  v10 = OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_43_21(v10, xmmword_25BCBAE50);

  sub_25BB1ABC8();

  if (v6 == 1)
  {
    if (v5)
    {
      v11 = OUTLINED_FUNCTION_5(v8);
      OUTLINED_FUNCTION_43_21(v11, xmmword_25BCBAE50);

      sub_25BB1ABC8();
    }

    if (v21)
    {
      v12 = OUTLINED_FUNCTION_5(v8);
      OUTLINED_FUNCTION_43_21(v12, xmmword_25BCBAE50);

      sub_25BB1ABC8();
    }
  }

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v4 + 16) = v7;
  *(v4 + 24) = 0;
  return result;
}

uint64_t InstanceNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v6, &unk_286D42270))
  {
    __dst[0] = v6;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v18[0] = a2;
    v18[1] = __dst;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_15_48();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, 742);
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v18);

  type metadata accessor for ResolutionDependencies();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = 0;
  *(v7 + 24) = v8;

  v18[9] = v7;
  sub_25BAA49B8();
  sub_25BAB7060(v18);

  memcpy(__dst, v3, sizeof(__dst));
  v16 = v5;
  sub_25BC83C1C(&v16, a2);

  sub_25BAA49B8();
  sub_25BAB814C();

  return sub_25BAA4AF4(v18);
}

uint64_t sub_25BC83C1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, v2, 0x60uLL);
  v5 = *(*(*(v4 + 16) + 152) + 16);
  if (v5 <= 1)
  {
    goto LABEL_46;
  }

  v6 = sub_25BAC0E14(1, v5);
  v7 = *(*(v4 + 16) + 152);
  v8 = *(v7 + 16);
  if (v8 <= 1)
  {
    *&v64[1] = 0;
    v64[0] = 1uLL;
    BYTE8(v64[1]) = -1;
    *&v64[3] = 0;
    v64[2] = v8;
    BYTE8(v64[3]) = -1;
    v65 = 4;
    sub_25BCB617C();
LABEL_50:
    v57 = "positiveAxis(fromAxis:from:rank:from:function:file:line:)";
    v58 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift";
    v59 = 57;
    v60 = 102;
    v61 = 133;
    goto LABEL_51;
  }

  v9 = *(v6 + 16);
  if (v9 <= 1)
  {
    *&v64[1] = 0;
    v64[0] = 1uLL;
    BYTE8(v64[1]) = -1;
    *&v64[3] = 0;
    v64[2] = v9;
    BYTE8(v64[3]) = -1;
    goto LABEL_49;
  }

  v10 = *(v7 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v6, v11, v12, v13);
    v6 = v56;
  }

  if (*(v6 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  *(v6 + 40) = v10;
  v14 = *(*(*(v4 + 16) + 152) + 16);
  if (v14 < 2)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v63 = a2;
  v15 = sub_25BC54B00(2, v14);
  v67[0] = v4;
  Tensor.mean(alongAxes:)(v64);
  v16 = *&v64[0];
  *&v64[0] = v4;
  v67[0] = v16;
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  Tensor.mean(alongAxes:)(v64);

  v17 = *&v64[0];
  v18 = &off_25BCBA000;
  v19 = MEMORY[0x277D84F90];
  if (!LOBYTE(__dst[5]))
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v64);

    if (!*&v64[5])
    {

      sub_25BAA4AF4(v64);
      goto LABEL_23;
    }

    v40 = *(*&v64[5] + 24);
    sub_25BAA4AF4(v64);
    if (v40)
    {
      goto LABEL_10;
    }

LABEL_20:

LABEL_23:
    memcpy(v64, __dst, sizeof(v64));
    InstanceNorm.runningMean.getter(v66);
    if (v66[0])
    {
      v71 = v6;
      v72 = v66[0];
      sub_25BCB617C();
      Tensor.reshaped(to:)(&v71, v67);

      v39 = v67[0];
    }

    else
    {

      v39 = v16;
    }

    memcpy(v64, __dst, sizeof(v64));
    InstanceNorm.runningVariance.getter(v66);
    if (v66[0])
    {
      v71 = v6;
      v72 = v66[0];
      sub_25BCB617C();
      Tensor.reshaped(to:)(&v71, v67);

      v38 = v67[0];
    }

    else
    {

      v38 = v17;
    }

    goto LABEL_29;
  }

  if (LOBYTE(__dst[5]) != 1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v67[0] = v4;
  v66[0] = v16;
  swift_retain_n();

  sub_25BC7DB2C(v15, v66, 1);

  v20 = *&v64[0];
  if (BYTE2(__dst[3]) != 1)
  {
    goto LABEL_21;
  }

  memcpy(v64, __dst, sizeof(v64));
  InstanceNorm.runningMean.getter(v67);
  v21 = v67[0];
  if (!v67[0])
  {
    goto LABEL_21;
  }

  memcpy(v64, __dst, sizeof(v64));
  InstanceNorm.runningVariance.getter(v67);
  v62 = v67[0];
  if (!v67[0])
  {

LABEL_21:

    v38 = v17;
    v39 = v16;
    goto LABEL_29;
  }

  v22 = *&__dst[6];
  v23 = *(*(v16 + 16) + 160);
  memset(v64, 0, 52);
  v72 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25BCBAE50;
  *(v24 + 32) = 1.0 - v22;
  LOBYTE(v71) = v23;
  sub_25BAA486C(v64, v67, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v72, v24, &v71, v67, v66);
  sub_25BAA6F5C(v64, &qword_27FBB6730, &qword_25BCBC4B0);
  v25 = v66[0];
  *&v64[0] = v21;
  v67[0] = v6;
  sub_25BCB617C();
  Tensor.reshaped(to:)(v67, v66);

  v26 = *(*(v16 + 16) + 152);
  v27 = *(v26 + 16);
  v28 = *(v6 + 16);
  if (v27 != v28)
  {
    goto LABEL_52;
  }

  swift_bridgeObjectRetain_n();
  sub_25BCB617C();
  v29 = sub_25BC7D758(v26, v6);

  swift_bridgeObjectRelease_n();
  Tensor.tiled(multiples:)(v29, v64);

  sub_25BC55E80(*&v64[0], v22);
  *&v64[0] = v16;
  v30 = v25;
  v66[0] = v25;

  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  v67[0] = *&v64[0];
  sub_25BB92184(__dst, v64);
  Tensor.mean(squeezingAxes:)(&unk_286D44AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25BCBAE50;
  v32 = __dst[4];
  swift_beginAccess();
  if (*(v32 + 24))
  {
LABEL_53:
    sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001DLL, 0x800000025BCE6550, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/NormalizationLayers.swift", 108, 2, 572);
    goto LABEL_45;
  }

  *(v31 + 32) = *(v32 + 16);
  v67[0] = v31;
  Tensor.reshaped(to:)(v67, &v72);

  *&v64[0] = __dst[7];
  swift_retain_n();
  LayerState.wrappedValue.setter(&v72, v33);

  sub_25BB921E0(__dst);
  *&v64[0] = v62;
  v67[0] = v6;
  sub_25BCB617C();
  Tensor.reshaped(to:)(v67, &v72);

  v34 = *(*(v20 + 16) + 152);
  v27 = *(v34 + 16);
  v28 = *(v6 + 16);
  if (v27 != v28)
  {
LABEL_52:
    *&v64[1] = 0;
    v64[0] = v27;
    BYTE8(v64[1]) = 6;
    *&v64[2] = v28;
    *(&v64[2] + 8) = xmmword_25BCC8F30;
    BYTE8(v64[3]) = 0;
    v65 = 6;
    sub_25BCB617C();
    v57 = "multiples(from:)";
    v58 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/NormalizationLayers.swift";
    v59 = 16;
    v60 = 108;
    v61 = 724;
LABEL_51:
    sub_25BADDD28(v57, v59, 2, v58, v60, 2, v61);
  }

  swift_bridgeObjectRetain_n();
  sub_25BCB617C();
  v35 = sub_25BC7D758(v34, v6);

  swift_bridgeObjectRelease_n();
  Tensor.tiled(multiples:)(v35, v64);

  sub_25BC55E80(*&v64[0], v22);
  *&v64[0] = v20;
  v72 = v30;
  static Tensor.* infix(_:_:)();
  static Tensor.+ infix(_:_:)();

  v67[0] = *&v64[0];
  sub_25BB92184(__dst, v64);
  Tensor.mean(squeezingAxes:)(&unk_286D44B08);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25BCBAE50;
  if (*(v32 + 24))
  {
    goto LABEL_53;
  }

  *(v36 + 32) = *(v32 + 16);
  v67[0] = v36;
  Tensor.reshaped(to:)(v67, &v72);

  *&v64[0] = __dst[9];
  swift_retain_n();
  LayerState.wrappedValue.setter(&v72, v37);

  sub_25BB921E0(__dst);
  v38 = v17;
  v39 = v16;
  v18 = &off_25BCBA000;
  v19 = MEMORY[0x277D84F90];
LABEL_29:
  v41 = *(__dst[0] + 32);
  if ((~v41 & 0xF000000000000007) == 0)
  {
    goto LABEL_43;
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
LABEL_44:
    sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
    goto LABEL_45;
  }

  *&v64[0] = v41 & 0x7FFFFFFFFFFFFFFFLL;
  v67[0] = v6;
  sub_25BCB617C();

  sub_25BAB3020(v41);
  Tensor.reshaped(to:)(v67, &v72);

  v42 = *(__dst[2] + 32);
  if ((~v42 & 0xF000000000000007) == 0)
  {
LABEL_43:
    sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ELL, 0x800000025BCDA100, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 329);
LABEL_45:
    __break(1u);
LABEL_46:
    *&v64[1] = 0;
    v64[0] = 1uLL;
    BYTE8(v64[1]) = -1;
    *&v64[3] = 0;
    v64[2] = v5;
    BYTE8(v64[3]) = -1;
LABEL_49:
    v65 = 4;
    goto LABEL_50;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    goto LABEL_44;
  }

  v43 = v72;
  *&v64[0] = v42 & 0x7FFFFFFFFFFFFFFFLL;
  v67[0] = v6;

  Tensor.reshaped(to:)(v67, &v71);

  v44 = v71;
  v45 = HIDWORD(__dst[5]);
  v46 = *(*(v4 + 16) + 160);
  memset(v64, 0, 52);
  v69 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v47 = swift_allocObject();
  *(v47 + 16) = *(v18 + 229);
  *(v47 + 32) = v45;
  v68 = v46;
  sub_25BAA486C(v64, v67, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v69, v47, &v68, v67, &v70);
  sub_25BAA6F5C(v64, &qword_27FBB6730, &qword_25BCBC4B0);
  *&v64[0] = v38;
  v67[0] = v70;
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(v64, &v70);

  v48 = *&v64[0];
  *&v64[0] = v4;
  v67[0] = v39;
  static Tensor.- infix(_:_:)();
  *&v64[0] = v48;
  v67[0] = v43;
  static Tensor.* infix(_:_:)();
  static Tensor.* infix(_:_:)();

  v69 = v44;
  v70 = v67[0];
  static Tensor.+ infix(_:_:)();

  v49 = *&v64[0];
  memcpy(v64, __dst, sizeof(v64));
  InstanceNorm.runningMean.getter(v67);
  v50 = v67[0];
  if (!v67[0])
  {

LABEL_38:

    goto LABEL_39;
  }

  memcpy(v64, __dst, sizeof(v64));
  InstanceNorm.runningVariance.getter(v67);
  v51 = v67[0];
  if (!v67[0])
  {

    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25BCBAE90;
  *(v52 + 32) = v50;
  *(v52 + 40) = v51;
  *(v52 + 48) = v49;

  sub_25BACEA3C(v52, v53, v54);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
LABEL_39:
  *v63 = v49;
  return result;
}

unint64_t sub_25BC84930()
{
  v0 = sub_25BCB761C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BC849A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC84930();
  *a1 = result;
  return result;
}

uint64_t sub_25BC849D4()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2C58(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25BC84A04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC8497C();
  *a1 = result;
  return result;
}

uint64_t sub_25BC84A2C(uint64_t a1)
{
  v2 = sub_25BC86B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC84A68(uint64_t a1)
{
  v2 = sub_25BC86B80();

  return MEMORY[0x2821FE720](a1, v2);
}

void InstanceNorm.init(from:)()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78A0, &qword_25BCD40F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BC86B80();
  sub_25BCB7B2C();
  if (!v0)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB76AC();
    v15 = v16;
    sub_25BC869DC();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB765C();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB765C();
    LOBYTE(v16) = 4;
    sub_25BCB768C();
    v7 = v6;
    v22 = 5;
    sub_25BCB768C();
    v9 = v8;

    LODWORD(v10) = v7;
    sub_25BC82FA8(v10, v9);
    v26 = v18;
    v23 = v19;
    v24 = v20;
    *v25 = *v21;
    *&v25[15] = *&v21[15];
    sub_25BBC68D8();
    sub_25BCB76AC();
    v11 = OUTLINED_FUNCTION_11_52();
    v12(v11);

    v13 = v17;
    *v4 = v16;
    *(v4 + 16) = v13;
    v14 = v24;
    *(v4 + 41) = v23;
    *(v4 + 32) = v26;
    *(v4 + 40) = v15;
    *(v4 + 57) = v14;
    *(v4 + 73) = *v25;
    *(v4 + 88) = *&v25[15];
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_39();
}

void InstanceNorm.encode(to:)()
{
  OUTLINED_FUNCTION_40();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B0, &qword_25BCD40F8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  v10 = *(v0 + 64);
  v9 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BC86B80();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_77_8();
  if (!v1)
  {
    sub_25BB39990();

    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB779C();

    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB779C();

    if (v10)
    {
    }

    sub_25BC86A30();
    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB773C();

    if (v9)
    {
    }

    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB773C();

    OUTLINED_FUNCTION_64_0();
    sub_25BCB777C();
    sub_25BBC6830();
    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB779C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_39();
}

uint64_t GroupNorm.featureCount.getter()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_59_14();
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_58_15(v3, v4, v5, v6, v7, v8, v9, v10, 860, v11);
  __break(1u);
  return result;
}

uint64_t GroupNorm.scale.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC85374@<X0>(void *a1@<X8>)
{
  result = GroupNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t GroupNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 8));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t sub_25BC85484(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

uint64_t GroupNorm.offset.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_25BC85590@<X0>(void *a1@<X8>)
{
  result = GroupNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t GroupNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 24));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t sub_25BC856D4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

uint64_t GroupNorm.isEveryParameterInitialized.getter()
{
  if (*(*(v0 + 56) + 16))
  {
    v1 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_39_26();
    OUTLINED_FUNCTION_45_20();
  }

  return v1 & 1;
}

uint64_t sub_25BC857A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B8, &qword_25BCD4100);
  OUTLINED_FUNCTION_44_20();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(a4 + 40) = OUTLINED_FUNCTION_57_12(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C0, &qword_25BCD4108);
  OUTLINED_FUNCTION_32_28();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a4 + 56) = v15;
  OUTLINED_FUNCTION_37_26();
  if (v17)
  {
    goto LABEL_12;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  v18 = OUTLINED_FUNCTION_21_37(v16);
  if (!*(v18 + 16))
  {
    goto LABEL_15;
  }

  if (*(v18 + 32) < a1)
  {
    v39 = 897;
LABEL_18:
    v40 = v39;
    OUTLINED_FUNCTION_16_50();
    v31 = 108;
    goto LABEL_19;
  }

  v20 = *(v11 + 32);
  if ((v19 & ~v20) == 0)
  {
    goto LABEL_12;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_14;
  }

  if ((sub_25BAB5C48(v18, *(*((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
    v39 = 898;
    goto LABEL_18;
  }

  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 33) = v10;
  *a4 = a1;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 17) = v13;
  *(a4 + 48) = a5;
  OUTLINED_FUNCTION_37_26();
  if (!v17)
  {
    if (v21 < 0)
    {
      v22 = OUTLINED_FUNCTION_21_37(v21);
      if (*(v22 + 16))
      {
        v23 = *(v22 + 32);
        OUTLINED_FUNCTION_5_53();
        result = swift_beginAccess();
        *(v14 + 16) = v23;
        *(v14 + 24) = 0;
        return result;
      }

LABEL_15:
      OUTLINED_FUNCTION_12_47();
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v32, v33, v34, v35, v36, v37, v38);
    }

    goto LABEL_13;
  }

LABEL_12:
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
LABEL_14:
  v31 = 102;
LABEL_19:
  result = sub_25BCB74CC(v25, v26, v27, v28, v29, v30, v31, 2, v40);
  __break(1u);
  return result;
}

uint64_t GroupNorm.init(groupCount:offset:scale:epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v8 = *a2;
  v9 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B8, &qword_25BCD4100);
  OUTLINED_FUNCTION_44_20();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + 40) = OUTLINED_FUNCTION_57_12(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C0, &qword_25BCD4108);
  OUTLINED_FUNCTION_32_28();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a4 + 56) = v11;
  v12 = *(*(v8 + 16) + 152);
  if (!*(v12 + 16))
  {
    OUTLINED_FUNCTION_12_47();
    sub_25BCB617C();
    goto LABEL_11;
  }

  if (*(v12 + 32) < a1)
  {
    v26 = 920;
LABEL_9:
    v42 = v26;
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_69_1(v27, v28, v29, v30, v31, v32, v33, v34, v42, 0);
    __break(1u);
    goto LABEL_10;
  }

  if ((sub_25BAB5C48(v12, *(*(v9 + 16) + 152)) & 1) == 0)
  {
    v26 = 921;
    goto LABEL_9;
  }

  *a4 = a1;
  *(a4 + 32) = 256;
  v13 = type metadata accessor for LayerVariableReference();
  v14 = OUTLINED_FUNCTION_5(v13);
  *(a4 + 24) = OUTLINED_FUNCTION_89_9(v14, v15, v16, v17);
  *(a4 + 16) = 256;
  OUTLINED_FUNCTION_5(v13);
  OUTLINED_FUNCTION_17_26();

  *(a4 + 8) = OUTLINED_FUNCTION_89_9(v18, v19, v20, v21);
  *(a4 + 48) = a5;
  v22 = *(v9 + 16);

  v23 = *(v22 + 152);
  sub_25BCB617C();

  if (!*(v23 + 16))
  {
LABEL_10:
    OUTLINED_FUNCTION_12_47();
LABEL_11:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v35, v36, v37, v38, v39, v40, v41);
  }

  v24 = *(v23 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v10 + 16) = v24;
  *(v10 + 24) = 0;
  return result;
}

uint64_t GroupNorm.init(groupCount:offsetInitializer:scaleInitializer:epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B8, &qword_25BCD4100);
  OUTLINED_FUNCTION_44_20();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(a2 + 40) = OUTLINED_FUNCTION_57_12(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C0, &qword_25BCD4108);
  OUTLINED_FUNCTION_32_28();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(a2 + 56) = v7;
  *a2 = a1;
  v8 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_54_18();

  *(a2 + 24) = sub_25BB1AB04(v9);
  *(a2 + 32) = 256;
  OUTLINED_FUNCTION_5(v8);
  v10 = OUTLINED_FUNCTION_17_26();
  sub_25BB1AB04(v10);
  OUTLINED_FUNCTION_54_18();

  *(a2 + 8) = a1;
  *(a2 + 16) = 256;
  *(a2 + 48) = a3;
  return result;
}

uint64_t GroupNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_22_35(*a1);
  if (v3 <= 1)
  {
    OUTLINED_FUNCTION_59_1(v2);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, v16);
  }

  v4 = *(v1 + 40);
  v5 = *(v2 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v7 = OUTLINED_FUNCTION_5(v6);
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v5;

  sub_25BB1ABC8();

  v8 = OUTLINED_FUNCTION_5(v6);
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = v5;

  sub_25BB1ABC8();

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  return result;
}

uint64_t GroupNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = *v2;
  v7 = v2[3];
  v8 = *(v2 + 12);
  v9 = *(*a1 + 16);
  LOBYTE(v2) = *(v9 + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    goto LABEL_45;
  }

  v10 = *(v9 + 152);
  v11 = *(v10 + 16);
  if (v11 <= 1)
  {
    goto LABEL_41;
  }

  swift_bridgeObjectRetain_n();
  v15 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v10, v12, v13, v14);
    v15 = v77;
  }

  v11 = v15[2];
  if (v11 < 2)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (!v6)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    sub_25BA96630(1, v11 + 1, 1, v15);
    v15 = v78;
    *&v120 = v78;
    goto LABEL_12;
  }

  v16 = v15[5];
  v17 = v16 == 0x8000000000000000 && v6 == -1;
  if (v17)
  {
    goto LABEL_39;
  }

  v15[5] = v16 / v6;
  *&v120 = v15;
  if (v11 >= v15[3] >> 1)
  {
    goto LABEL_32;
  }

LABEL_12:
  sub_25BCA5CE0(1, 1, 1, v6);

  v109 = v5;
  v119 = v15;
  v2 = &v109;
  Tensor.reshaped(to:)(&v119, &v120);

  v20 = v120;
  v21 = *(*(*(v120 + 16) + 152) + 16);
  if (v21)
  {
    v3 = sub_25BC54B00(1, v21);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25BAA2110(v3, v21, v18, v19);
  v3 = v79;
LABEL_14:
  v22 = *(v3 + 16);
  if (!v22)
  {
    __break(1u);
LABEL_36:
    sub_25BAA2110(a2, v21, v18, v19);
    a2 = v80;
    goto LABEL_17;
  }

  v23 = v22 - 1;
  sub_25BAB254C(v3 + 40);
  *(v3 + 16) = v23;
  v109 = v20;
  Tensor.mean(alongAxes:)(&v120);
  v15 = v120;
  OUTLINED_FUNCTION_73_10(v24, v25, v26, v27, v28, v29, v30, v31, v96, v100, a2, v120, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v20);
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  Tensor.mean(alongAxes:)(&v120);

  LOBYTE(v3) = v120;
  v2 = *(v5[2] + 152);
  v32 = v2[2];
  sub_25BCB617C();
  v33 = sub_25BAC0E14(1, v32 + 1);
  v11 = v33[2];
  if (v11 <= 1)
  {
LABEL_41:
    *&v121 = 0;
    *&v120 = 1;
LABEL_48:
    *(&v120 + 1) = 0;
    BYTE8(v121) = -1;
    v123 = 0;
    v122 = v11;
    v124 = -1;
    goto LABEL_49;
  }

  a2 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_17:
  v11 = a2[2];
  if (v11 < 2)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  a2[5] = v6;
  v34 = v2[2];
  if (v34 <= 1)
  {
    *&v121 = 0;
    v120 = 1uLL;
    BYTE8(v121) = -1;
    v123 = 0;
    v122 = v34;
    v124 = -1;
LABEL_49:
    v125 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_50:
    sub_25BADDD28(v89, v90, v91, v92, v93, v94, v95);
  }

  v9 = v2[5];
  if (v9 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_40;
  }

  if (v11 == 2)
  {
    *&v121 = 0;
    *&v120 = 2;
    goto LABEL_48;
  }

  v11 = a2[2];
  if (v11 < 3)
  {
    goto LABEL_38;
  }

  a2[6] = v9 / v6;
  OUTLINED_FUNCTION_37_26();
  if (v17)
  {
    goto LABEL_42;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
LABEL_43:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_44;
  }

  *&v120 = v36 & 0x7FFFFFFFFFFFFFFFLL;
  v109 = a2;

  v2 = &v120;
  Tensor.reshaped(to:)(&v109, &v119);

  v37 = v7[4];
  if ((~v37 & 0xF000000000000007) == 0)
  {
LABEL_42:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_44:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC(v81, v82, v83, v84, v85, v86, v87, v88, v96);
    __break(1u);
LABEL_45:
    LOBYTE(v109) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v120 = v9;
    *(&v120 + 1) = &v109;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_15_48();
    v95 = 973;
    goto LABEL_50;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

  v38 = v119;
  *&v120 = v37 & 0x7FFFFFFFFFFFFFFFLL;
  v109 = a2;
  sub_25BAB69FC(v37);
  Tensor.reshaped(to:)(&v109, &v118);

  v39 = v118;
  v40 = *(v5[2] + 160);
  LODWORD(v123) = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  v116 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_25BCBAE50;
  *(v41 + 32) = v8;
  HIBYTE(v115) = v40;
  v49 = OUTLINED_FUNCTION_73_10(v41, v42, v43, v44, v45, v46, v47, v48, v96, v100, v104, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  sub_25BAA486C(v49, v50, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v116, v41, &v115 + 7, &v109, &v117);
  v51 = sub_25BAA6F5C(&v120, &qword_27FBB6730, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_73_10(v51, v52, v53, v54, v55, v56, v57, v58, v97, v101, v105, v117, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v3);
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(&v120, &v117);

  v60 = v120;
  OUTLINED_FUNCTION_73_10(v59, v61, v62, v63, v64, v65, v66, v67, v98, v102, v106, v15, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v20);
  static Tensor.- infix(_:_:)();
  OUTLINED_FUNCTION_73_10(v68, v69, v70, v71, v72, v73, v74, v75, v99, v103, v107, v38, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v60);
  static Tensor.* infix(_:_:)();
  static Tensor.* infix(_:_:)();

  v116 = v39;
  v117 = v109;
  static Tensor.+ infix(_:_:)();

  v109 = *(v5[2] + 152);
  sub_25BCB617C();
  Tensor.reshaped(to:)(&v109, v108);
}

unint64_t sub_25BC86408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE2CEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25BC86438()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2D38(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_25BC86468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE2CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC86490(uint64_t a1)
{
  v2 = sub_25BC86BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC864CC(uint64_t a1)
{
  v2 = sub_25BC86BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupNorm.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C8, &qword_25BCD4110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = sub_25BC86BD4();
  OUTLINED_FUNCTION_60_13(&type metadata for GroupNorm.CodingKeys, v7, v6);
  if (!v2)
  {
    LOBYTE(v19[0]) = 0;
    OUTLINED_FUNCTION_48_22();
    v8 = sub_25BCB769C();
    sub_25BB3993C();
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    v20 = BYTE8(v19[0]);
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    v21 = 3;
    OUTLINED_FUNCTION_48_22();
    sub_25BCB768C();
    v17 = *&v19[0];
    v18 = WORD4(v19[0]);
    v15 = *&v19[0];
    v16 = WORD4(v19[0]);
    sub_25BC857A0(v8, &v17, &v15, v19, v10);
    v11 = OUTLINED_FUNCTION_41_26();
    v12(v11);
    v13 = v19[1];
    *a2 = v19[0];
    a2[1] = v13;
    v14 = v19[3];
    a2[2] = v19[2];
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void GroupNorm.encode(to:)()
{
  OUTLINED_FUNCTION_38_22();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78D8, &qword_25BCD4118);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC86BD4();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_15_25();
  sub_25BCB778C();
  if (!v0)
  {
    sub_25BB39990();

    OUTLINED_FUNCTION_68_12();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
    OUTLINED_FUNCTION_93_7();

    OUTLINED_FUNCTION_68_12();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB777C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_41_22();
}

unint64_t sub_25BC86988()
{
  result = qword_27FBB7838;
  if (!qword_27FBB7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7838);
  }

  return result;
}

unint64_t sub_25BC869DC()
{
  result = qword_27FBB7840;
  if (!qword_27FBB7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7840);
  }

  return result;
}

unint64_t sub_25BC86A30()
{
  result = qword_27FBB7850;
  if (!qword_27FBB7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7850);
  }

  return result;
}

unint64_t sub_25BC86A84()
{
  result = qword_27FBB7870;
  if (!qword_27FBB7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7870);
  }

  return result;
}

unint64_t sub_25BC86AD8()
{
  result = qword_27FBB7878;
  if (!qword_27FBB7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7878);
  }

  return result;
}

unint64_t sub_25BC86B2C()
{
  result = qword_27FBB7888;
  if (!qword_27FBB7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7888);
  }

  return result;
}

unint64_t sub_25BC86B80()
{
  result = qword_27FBB78A8;
  if (!qword_27FBB78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78A8);
  }

  return result;
}

unint64_t sub_25BC86BD4()
{
  result = qword_27FBB78D0;
  if (!qword_27FBB78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78D0);
  }

  return result;
}

unint64_t sub_25BC86C2C()
{
  result = qword_27FBB78E0;
  if (!qword_27FBB78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78E0);
  }

  return result;
}

uint64_t sub_25BC86C80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25BC86CC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for LayerNorm.NormalizedAxes(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC86E0C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25BC86E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC86EFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_42_6(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_42_6(v8);
}

_BYTE *sub_25BC86F80(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC8705C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC870AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25BC87100(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25BC87118(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25BC87148(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_42_6(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 7);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_42_6(v8);
}

_BYTE *sub_25BC871CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC872BC()
{
  result = qword_27FBB78E8;
  if (!qword_27FBB78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78E8);
  }

  return result;
}

unint64_t sub_25BC87314()
{
  result = qword_27FBB78F0;
  if (!qword_27FBB78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78F0);
  }

  return result;
}

unint64_t sub_25BC8736C()
{
  result = qword_27FBB78F8;
  if (!qword_27FBB78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78F8);
  }

  return result;
}

unint64_t sub_25BC873C4()
{
  result = qword_27FBB7900;
  if (!qword_27FBB7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7900);
  }

  return result;
}

unint64_t sub_25BC8741C()
{
  result = qword_27FBB7908;
  if (!qword_27FBB7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7908);
  }

  return result;
}

unint64_t sub_25BC87474()
{
  result = qword_27FBB7910;
  if (!qword_27FBB7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7910);
  }

  return result;
}

unint64_t sub_25BC874CC()
{
  result = qword_27FBB7918;
  if (!qword_27FBB7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7918);
  }

  return result;
}

unint64_t sub_25BC87524()
{
  result = qword_27FBB7920;
  if (!qword_27FBB7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7920);
  }

  return result;
}

unint64_t sub_25BC8757C()
{
  result = qword_27FBB7928;
  if (!qword_27FBB7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7928);
  }

  return result;
}

unint64_t sub_25BC875D4()
{
  result = qword_27FBB7930;
  if (!qword_27FBB7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7930);
  }

  return result;
}

unint64_t sub_25BC8762C()
{
  result = qword_27FBB7938;
  if (!qword_27FBB7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7938);
  }

  return result;
}

unint64_t sub_25BC87684()
{
  result = qword_27FBB7940;
  if (!qword_27FBB7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7940);
  }

  return result;
}

unint64_t sub_25BC876D8()
{
  result = qword_27FBB7948[0];
  if (!qword_27FBB7948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7948);
  }

  return result;
}

uint64_t sub_25BC87800(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 40) == 2 && (a2 & 1) != 0)
  {
    OUTLINED_FUNCTION_11_53();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    v15 = ComputeDevice.description.getter();
    MEMORY[0x25F876C90](v15);

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90](0xD000000000000013);
    MEMORY[0x25F876C90](0x656C676E6973, 0xE600000000000000);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    v16 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v16);

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    result = sub_25BCB74CC("Fatal error", 11, 2, v17, v18, v14, v12, v10, a9);
    __break(1u);
  }

  return result;
}

void requireRank(_:from:expectation:function:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned __int8 a39, uint64_t a40)
{
  OUTLINED_FUNCTION_29_32();
  v57 = v40;
  v58 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = *(v48 + 16);
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  if (!sub_25BAB74D0(v54, *v50, v52, v53))
  {
    v55 = OUTLINED_FUNCTION_17_48();
    sub_25BBFA14C(v55, v56, v49);
    sub_25BAB7654(v51, v52, v53);
    sub_25BADDD28(v47, v45, v43, v57, v58, a39, a40);
  }

  OUTLINED_FUNCTION_27_34();
}

void requireScalarType(_:from:_:function:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned __int8 a39, uint64_t a40)
{
  OUTLINED_FUNCTION_29_32();
  v46 = v44;
  v47 = v43;
  v48 = v42;
  v49 = v41;
  v51 = *v50;
  v52 = *(v40 + 16);
  v54 = *v53;
  v55 = *(v53 + 8);
  if (*(v53 + 8))
  {
    if (v55 == 1)
    {
      v56 = *(v54 + 16);
      v57 = (v54 + 32);
      while (v56)
      {
        v58 = *v57++;
        --v56;
        if (v58 == v51)
        {
          goto LABEL_8;
        }
      }

LABEL_10:
      v69 = v45;
      v66 = v52;
      sub_25BC8FACC();
      v67 = OUTLINED_FUNCTION_17_48();
      sub_25BBFA14C(v67, v68, v66);
      sub_25BC88530(v54, v55);
      sub_25BADDD28(v49, v48, v47, v46, v69, a39, a40);
    }

    v59 = v41;
    v60 = v42;
    v61 = v43;
    v62 = v44;
    v63 = v45;
    v64 = *(v40 + 16);
    v65 = sub_25BC8FACC();
    v52 = v64;
    v45 = v63;
    v46 = v62;
    v47 = v61;
    v48 = v60;
    v49 = v59;
    if (v65 != v54)
    {
      goto LABEL_10;
    }
  }

  else if (v51 != v54)
  {
    goto LABEL_10;
  }

LABEL_8:
  OUTLINED_FUNCTION_27_34();
}

void requireSameScalarTypes(_:from:_:from:expectation:function:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unsigned __int8 a45, uint64_t a46)
{
  OUTLINED_FUNCTION_28_31();
  v48 = *v47;
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v73 = v54;
  v72 = v55;
  v71 = v56;
  if (v48 != *v49)
  {
    sub_25BC8FACC();
    sub_25BC8FACC();
    v68 = OUTLINED_FUNCTION_16_51();
    sub_25BBFA14C(v68, v69, v70);
    goto LABEL_8;
  }

  v57 = *v46;
  v58 = *(v46 + 8);
  if (!*(v46 + 8))
  {
    if (v48 == v57)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v58 == 1)
  {
    Kind = v57[1].Kind;
    v60 = v57 + 2;
    v61 = Kind;
    v62 = v57 + 2;
    do
    {
      if (!v61)
      {
        goto LABEL_17;
      }

      Kind_low = LOBYTE(v62->Kind);
      v62 = (v62 + 1);
      --v61;
    }

    while (Kind_low != v48);
    while (Kind)
    {
      v64 = LOBYTE(v60->Kind);
      v60 = (v60 + 1);
      --Kind;
      if (v64 == v48)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_7;
  }

  if (v58 == 2)
  {
    if (sub_25BC8FACC() == v57)
    {
      if (sub_25BC8FACC() != v57)
      {
LABEL_7:
        sub_25BC8FACC();
        OUTLINED_FUNCTION_22_36();
        sub_25BC88544(v57, v58);
LABEL_8:
        sub_25BBFA14C(v51, v52, v53);
        goto LABEL_18;
      }

      goto LABEL_16;
    }

LABEL_17:
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_36();
    v65 = OUTLINED_FUNCTION_16_51();
    sub_25BBFA14C(v65, v66, v67);
    sub_25BC88544(v57, v58);
LABEL_18:
    sub_25BADDD28(v71, v72, v73, a43, a44, a45, a46);
  }

LABEL_16:
  OUTLINED_FUNCTION_30_29();
}

BOOL sub_25BC87DBC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12)
{
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  result = sub_25BAA80BC(*a1, a10);
  if (!result)
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
    sub_25BBFA14C(v15, v16, v17);
    v19 = OUTLINED_FUNCTION_16_51();
    sub_25BADDD28(v19, v20, v21, a6, a7, a8, a9);
  }

  return result;
}

uint64_t requireSameRank(_:from:_:from:function:file:line:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a3)
  {
    v5 = *a4;
    v4 = *(a4 + 8);
    v6 = *(a4 + 16);
    OUTLINED_FUNCTION_20_37();
    sub_25BBFA14C(v7, v8, v9);
    sub_25BBFA14C(v5, v4, v6);
    OUTLINED_FUNCTION_8_58();
  }

  return result;
}

uint64_t requireCompatibleNumericScalarTypes(_:from:_:from:function:file:line:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(a4 + 16);
  do
  {
    if (v4 == 4)
    {
      v5 = *(a2 + 16);
LABEL_9:
      sub_25BC8FACC();
      v9 = OUTLINED_FUNCTION_92();
      sub_25BBFA14C(v9, v10, v5);
      sub_25BADDD28("requireCompatibleNumericScalarTypes(_:from:_:from:function:file:line:)", 70, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Preconditions.swift", 103, 2, 466);
    }

    v6 = &unk_286D45528 + v4++;
  }

  while (v6[32] != *(*(*result + 16) + 160));
  v7 = 0;
  do
  {
    if (v7 == 4)
    {
      goto LABEL_9;
    }

    v8 = &unk_286D45528 + v7++;
  }

  while (v8[32] != *(*(*a3 + 16) + 160));
  return result;
}

uint64_t requireSameShape(_:from:_:from:function:file:line:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v13 = *(a2 + 16);
  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = *(a4 + 16);
  result = sub_25BAB5C48(*a1, *a3);
  if ((result & 1) == 0)
  {
    sub_25BCB617C();
    v18 = OUTLINED_FUNCTION_17_48();
    sub_25BBFA14C(v18, v19, v13);
    sub_25BCB617C();
    sub_25BBFA14C(v14, v15, v16);
    sub_25BADDD28(a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

double static ScalarTypeExpectation.oneOf(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  sub_25BCB617C();
  return result;
}

uint64_t ScalarTypeExpectation.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    OUTLINED_FUNCTION_0_91();
    v9 = OUTLINED_FUNCTION_4_68();
    MEMORY[0x25F876C90](v9);
    sub_25BCB73CC();
    v10 = OUTLINED_FUNCTION_3_61();
LABEL_11:
    MEMORY[0x25F876C90](v10, v11);
    return v14;
  }

  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_0_91();
    sub_25BCB70FC();

    v14 = 6299745;
    v12 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v12);

    v11 = 0x800000025BCE6870;
    v10 = 0xD000000000000011;
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v3 = v1 + 32;
    do
    {
      ++v3;
      OUTLINED_FUNCTION_0_91();
      v4 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v4);
      sub_25BCB73CC();
      v5 = OUTLINED_FUNCTION_3_61();
      MEMORY[0x25F876C90](v5);
      v6 = *(v16 + 16);
      if (v6 >= *(v16 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v16 + 16) = v6 + 1;
      v7 = v16 + 16 * v6;
      *(v7 + 32) = v14;
      *(v7 + 40) = v15;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  sub_25BCB627C();

  v14 = 0x20666F20656E6FLL;
  v8 = OUTLINED_FUNCTION_110();
  MEMORY[0x25F876C90](v8);

  return v14;
}

double sub_25BC88530(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    sub_25BCB617C();
  }

  return result;
}

double sub_25BC88544(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_25BC88530(a1, a2);
  }

  return result;
}

uint64_t sub_25BC88558(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  switch(a3)
  {
    case 1:
      v53 = 1612738153;
      v41 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v41, v42, 1);
      v43 = OUTLINED_FUNCTION_92();
      v51 = sub_25BB18984(v43, v44, v45, v46, v47, v48, v49, v50);
      MEMORY[0x25F876C90](v51);

      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_11_53();
      v37 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v37, v38, 2);
      v6 = OUTLINED_FUNCTION_25_33();
      v7 = 0xEA00000000006020;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_11_53();
      v39 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v39, v40, 3);
      v6 = OUTLINED_FUNCTION_24_28();
      v7 = 0xE900000000000060;
      goto LABEL_11;
    case 4:
      if (!*(result + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v8 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v8, v9, 4);
      v10 = OUTLINED_FUNCTION_14_46();
      sub_25BAB7654(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_14_46();
      v16 = sub_25BC88558(v13, v14, v15);
      v17 = OUTLINED_FUNCTION_14_46();
      result = sub_25BABAF8C(v17, v18, v19);
      v20 = *(v3 + 16);
      v21 = v20 - 1;
      if (v20 == 1)
      {
        goto LABEL_8;
      }

      if (!v20)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v22 = v3 + 72;
      do
      {
        MEMORY[0x25F876C90](544370464, 0xE400000000000000);
        v22 += 24;
        v23 = OUTLINED_FUNCTION_12_48();
        sub_25BAB7654(v23, v24, v25);
        v26 = OUTLINED_FUNCTION_12_48();
        v29 = sub_25BC88558(v26, v27, v28);
        v31 = v30;
        v32 = OUTLINED_FUNCTION_12_48();
        sub_25BABAF8C(v32, v33, v34);
        MEMORY[0x25F876C90](v29, v31);

        --v21;
      }

      while (v21);
LABEL_8:
      v35 = OUTLINED_FUNCTION_92();
      sub_25BABAF8C(v35, v36, 4);
      return v16;
    default:
      OUTLINED_FUNCTION_11_53();
      v4 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v4, v5, 0);
      v6 = OUTLINED_FUNCTION_4_68();
LABEL_11:
      MEMORY[0x25F876C90](v6, v7);
      sub_25BCB73CC();
LABEL_13:
      v52 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v52);
      return v53;
  }
}

uint64_t ComparableExpectation.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_15_49();
  sub_25BCB75CC();
  OUTLINED_FUNCTION_9();
  v61 = v4;
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v56 - v5;
  OUTLINED_FUNCTION_15_49();
  sub_25BCB73DC();
  OUTLINED_FUNCTION_9();
  v58 = v7;
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  OUTLINED_FUNCTION_15_49();
  v10 = sub_25BCB62FC();
  OUTLINED_FUNCTION_9();
  v57 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v56 - v27;
  (*(v21 + 16))(&v56 - v27, v63, a1, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = v57;
      (*(v57 + 32))(v14, v28, v10);
      OUTLINED_FUNCTION_11_6();
      MEMORY[0x25F876C90](1612738153, 0xE400000000000000);
      swift_getWitnessTable();
      sub_25BCB785C();
      v55 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v55);
      v31 = v64;
      v34 = *(v54 + 8);
      v32 = v14;
      v33 = v10;
      goto LABEL_11;
    case 2u:
      v46 = v58;
      v45 = v59;
      (*(v58 + 32))(v9, v28, v59);
      OUTLINED_FUNCTION_11_6();
      v47 = OUTLINED_FUNCTION_25_33();
      MEMORY[0x25F876C90](v47, 0xEA00000000006020);
      sub_25BCB784C();
      v48 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v48);
      v31 = v64;
      (*(v46 + 8))(v9, v45);
      return v31;
    case 3u:
      v50 = v60;
      v49 = v61;
      v51 = v62;
      (*(v61 + 32))(v60, v28, v62);
      OUTLINED_FUNCTION_11_6();
      v52 = OUTLINED_FUNCTION_24_28();
      MEMORY[0x25F876C90](v52, 0xE900000000000060);
      OUTLINED_FUNCTION_194();
      sub_25BCB784C();
      v53 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v53);
      v31 = v64;
      (*(v49 + 8))(v50, v51);
      return v31;
    case 4u:
      sub_25BCB690C();
      v31 = ComparableExpectation.description.getter(a1);
      v36 = v35;
      v37 = *(v21 + 8);
      v37(v24, a1);
      result = sub_25BCB681C();
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        if (result != 1)
        {
          v39 = result;
          v40 = 1;
          do
          {
            v41 = v40 + 1;
            v64 = v31;
            v65 = v36;
            MEMORY[0x25F876C90](544370464, 0xE400000000000000);
            OUTLINED_FUNCTION_194();
            sub_25BCB690C();
            v42 = ComparableExpectation.description.getter(a1);
            v44 = v43;
            v37(v24, a1);
            MEMORY[0x25F876C90](v42, v44);

            v31 = v64;
            v36 = v65;
            v40 = v41;
          }

          while (v39 != v41);
        }

        return v31;
      }

      return result;
    default:
      (*(v16 + 32))(v19, v28, v2);
      OUTLINED_FUNCTION_11_6();
      v29 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v29);
      OUTLINED_FUNCTION_194();
      sub_25BCB784C();
      v30 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v30);
      v31 = v64;
      v32 = OUTLINED_FUNCTION_194();
LABEL_11:
      v34(v32, v33);
      return v31;
  }
}

uint64_t DebugValueLocator.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_0_91();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_6_62();
      v8 = v12 + 1;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_0_91();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_6_62();
LABEL_16:
      v25 = v8;
      v13 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v13);

      return v25;
    case 3:
      if (*(v2 + 48) != 6 || *(v2 + 32) != 0)
      {
        OUTLINED_FUNCTION_0_91();
        sub_25BCB70FC();
        v10 = DebugValueLocator.description.getter();

        v26 = v10;
        MEMORY[0x25F876C90](0x65626D656D207327, 0xEB00000000222072);
        v11 = OUTLINED_FUNCTION_110();
        MEMORY[0x25F876C90](v11);
        MEMORY[0x25F876C90](34, 0xE100000000000000);
        return v26;
      }

      OUTLINED_FUNCTION_2_76();
      v3 = OUTLINED_FUNCTION_110();
LABEL_27:
      MEMORY[0x25F876C90](v3, v1);
      v18 = OUTLINED_FUNCTION_3_61();
      goto LABEL_28;
    case 4:
      v4 = *(v2 + 24);
      v5 = *(v2 + 40);
      if (v5 == 3)
      {
        v19 = *(v4 + 32);
        v20 = *(v4 + 48);
        if (v20 == 3)
        {
          if (*(v19 + 48) == 6 && *(v19 + 32) == 0)
          {
            v21 = *(v19 + 16);
            v22 = *(v19 + 24);
            OUTLINED_FUNCTION_0_91();
            sub_25BCB70FC();

            OUTLINED_FUNCTION_2_76();
            MEMORY[0x25F876C90](v21, v22);
            MEMORY[0x25F876C90](46, 0xE100000000000000);
            goto LABEL_38;
          }
        }

        else if (v20 == 6 && *(v4 + 32) == 0)
        {
          OUTLINED_FUNCTION_2_76();
LABEL_38:
          v23 = OUTLINED_FUNCTION_92();
          MEMORY[0x25F876C90](v23);
          MEMORY[0x25F876C90](91, 0xE100000000000000);
          goto LABEL_39;
        }

LABEL_8:
        OUTLINED_FUNCTION_0_91();
        sub_25BCB70FC();

        v26 = 0x7069726373627573;
        v7 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v7);

        MEMORY[0x25F876C90](0x20666F205DLL, 0xE500000000000000);
LABEL_18:
        v15 = DebugValueLocator.description.getter();
        MEMORY[0x25F876C90](v15);

        return v26;
      }

      if (v5 != 6 || *(v2 + 24) != 0)
      {
        goto LABEL_8;
      }

      v25 = 0x5B666C657360;
LABEL_39:
      v24 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v24);

      v18 = 24669;
LABEL_28:
      MEMORY[0x25F876C90](v18);
      return v25;
    case 5:
      OUTLINED_FUNCTION_0_91();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_6_62();
      v26 = v14 + 18;
      goto LABEL_18;
    case 6:
      if (v2 ^ 1 | v1)
      {
        v17 = 0x706F207468676972;
      }

      else
      {
        v17 = 0x65706F207466656CLL;
      }

      if (v2 | v1)
      {
        return v17;
      }

      else
      {
        return 0x60666C657360;
      }

    default:
      v25 = 0x746E656D75677261;
      v3 = *v0;
      goto LABEL_27;
  }
}