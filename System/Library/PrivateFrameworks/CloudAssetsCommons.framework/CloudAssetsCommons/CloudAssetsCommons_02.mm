uint64_t XPCResult<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    return MEMORY[0x245D40160](1);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x245D40160](0);
  sub_2437EB6D4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t XPCResult<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2437EBA94();
  XPCResult<>.hash(into:)(v5, a1, a2);
  return sub_2437EBAD4();
}

uint64_t sub_2437DF5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2437EBA94();
  XPCResult<>.hash(into:)(v6, a2, v4);
  return sub_2437EBAD4();
}

uint64_t sub_2437DF690(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2437DF6EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_2437DF874(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
      JUMPOUT(0x2437DFA94);
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

_BYTE *sub_2437DFAC4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437DFB90);
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

_BYTE *sub_2437DFBB8(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437DFC54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1)
{

  return sub_2437EBA14();
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1)
{

  return sub_2437EB904();
}

uint64_t static UploadRequestMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  v5 = sub_2437DFF24(v4, v2);

  return v5 & 1;
}

uint64_t sub_2437DFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadRequest(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2437E1604(v13, v10);
        sub_2437E1604(v14, v7);
        sub_2437E1668(&qword_27ED86610, "Mۤ>dq");
        v16 = sub_2437EB6E4();
        sub_2437B83E0(v7);
        sub_2437B83E0(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2437E00D4()
{
  sub_2437E0774();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E010C()
{
  sub_2437E0774();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E0144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526863746162 && a2 == 0xED00007374736575;
  if (v4 || (sub_2437EBA14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65526D6165727473 && a2 == 0xEE00737473657571)
  {

    return 1;
  }

  else
  {
    v7 = sub_2437EBA14();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437E021C(char a1)
{
  if (a1)
  {
    return 0x65526D6165727473;
  }

  else
  {
    return 0x7165526863746162;
  }
}

uint64_t sub_2437E0274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E0144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E029C()
{
  sub_2437E06CC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E02D4()
{
  sub_2437E06CC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E030C()
{
  sub_2437E0720();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E0344()
{
  sub_2437E0720();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t UploadRequestMessage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C20, &qword_2437F0010);
  OUTLINED_FUNCTION_0();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C28, &qword_2437F0018);
  OUTLINED_FUNCTION_0();
  v29 = v9;
  v30 = v8;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C30, &qword_2437F0020);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v33 = *v1;
  v18 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E06CC();
  sub_2437EBB04();
  if (v18)
  {
    LOBYTE(v35) = 1;
    sub_2437E0720();
    OUTLINED_FUNCTION_17_1(&unk_28568D508);
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
    OUTLINED_FUNCTION_2_9();
    sub_2437E0F84(v19, v20, v21, MEMORY[0x277D83948]);
    v22 = v32;
    sub_2437EB9D4();
    (*(v31 + 8))(v7, v22);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_2437E0774();
    OUTLINED_FUNCTION_17_1(&unk_28568D478);
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
    OUTLINED_FUNCTION_2_9();
    sub_2437E0F84(v23, v24, v25, MEMORY[0x277D83948]);
    v26 = v30;
    sub_2437EB9D4();
    (*(v29 + 8))(v12, v26);
  }

  return (*(v14 + 8))(v17, v18);
}

unint64_t sub_2437E06CC()
{
  result = qword_27ED8F0F0;
  if (!qword_27ED8F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F0F0);
  }

  return result;
}

unint64_t sub_2437E0720()
{
  result = qword_27ED8F0F8;
  if (!qword_27ED8F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F0F8);
  }

  return result;
}

unint64_t sub_2437E0774()
{
  result = qword_27ED8F100[0];
  if (!qword_27ED8F100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F100);
  }

  return result;
}

uint64_t UploadRequestMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D40160](*(v1 + 8));

  return sub_2437E0E9C(a1, v3);
}

uint64_t UploadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  sub_2437E0E9C(v4, v1);
  return sub_2437EBAD4();
}

uint64_t UploadRequestMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C48, &qword_2437F0030);
  OUTLINED_FUNCTION_0();
  v50 = v3;
  v51 = v4;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C50, &qword_2437F0038);
  OUTLINED_FUNCTION_0();
  v49 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C58, &unk_2437F0040);
  OUTLINED_FUNCTION_0();
  v52 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E06CC();
  v16 = v54;
  sub_2437EBAF4();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48[2] = v6;
  v48[3] = v10;
  v54 = a1;
  v17 = v53;
  v18 = sub_2437EB974();
  result = sub_2437B5F3C(v18, 0);
  if (v21 == v22 >> 1)
  {
    v23 = v15;
LABEL_9:
    v33 = sub_2437EB8C4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v35 = &type metadata for UploadRequestMessage;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v11);
    a1 = v54;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v20 + v21);
    sub_2437B5F84(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v23 = v15;
      goto LABEL_9;
    }

    v29 = v24;
    if (v24)
    {
      LODWORD(v49) = v24;
      LOBYTE(v55) = 1;
      sub_2437E0720();
      OUTLINED_FUNCTION_13_8(&unk_28568D508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
      OUTLINED_FUNCTION_1_14();
      sub_2437E0F84(v30, v31, v32, MEMORY[0x277D83978]);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v39 = OUTLINED_FUNCTION_11_4();
      v40(v39);
      v41 = OUTLINED_FUNCTION_3_7();
      v42(v41);
      v43 = v55;
      v29 = v49;
    }

    else
    {
      LOBYTE(v55) = 0;
      sub_2437E0774();
      OUTLINED_FUNCTION_13_8(&unk_28568D478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
      OUTLINED_FUNCTION_1_14();
      sub_2437E0F84(v36, v37, v38, MEMORY[0x277D83978]);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v44 = OUTLINED_FUNCTION_10_8();
      v45(v44);
      v46 = OUTLINED_FUNCTION_3_7();
      v47(v46);
      v43 = v55;
      v17 = v53;
    }

    *v17 = v43;
    *(v17 + 8) = v29;
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  return result;
}

uint64_t sub_2437E0E0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v3);
  sub_2437E0E9C(v5, v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437E0E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AssetUploadRequest(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2437E1668(&qword_27ED86608, &protocol conformance descriptor for AssetUploadRequest);
    do
    {
      result = sub_2437EB6D4();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437E0F84(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86C38, &qword_2437F0028);
    sub_2437E1668(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437E1010()
{
  result = qword_27ED86C68;
  if (!qword_27ED86C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C68);
  }

  return result;
}

uint64_t sub_2437E1070(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2437E10B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *sub_2437E110C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437E11D8);
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

_BYTE *sub_2437E121C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437E12B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E12F0()
{
  result = qword_27ED8F410[0];
  if (!qword_27ED8F410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F410);
  }

  return result;
}

unint64_t sub_2437E1348()
{
  result = qword_27ED8F620[0];
  if (!qword_27ED8F620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F620);
  }

  return result;
}

unint64_t sub_2437E13A0()
{
  result = qword_27ED8F830[0];
  if (!qword_27ED8F830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F830);
  }

  return result;
}

unint64_t sub_2437E13F8()
{
  result = qword_27ED8F940;
  if (!qword_27ED8F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F940);
  }

  return result;
}

unint64_t sub_2437E1450()
{
  result = qword_27ED8F948[0];
  if (!qword_27ED8F948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F948);
  }

  return result;
}

unint64_t sub_2437E14A8()
{
  result = qword_27ED8F9D0;
  if (!qword_27ED8F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F9D0);
  }

  return result;
}

unint64_t sub_2437E1500()
{
  result = qword_27ED8F9D8[0];
  if (!qword_27ED8F9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F9D8);
  }

  return result;
}

unint64_t sub_2437E1558()
{
  result = qword_27ED8FA60;
  if (!qword_27ED8FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FA60);
  }

  return result;
}

unint64_t sub_2437E15B0()
{
  result = qword_27ED8FA68[0];
  if (!qword_27ED8FA68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8FA68);
  }

  return result;
}

uint64_t sub_2437E1604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E1668(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetUploadRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1)
{

  return sub_2437EB904();
}

uint64_t sub_2437E1738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C656979 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_5(0x646C656979, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5(0x6873696E6966, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5(0x726F727265, 0xE500000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2437E1818(char a1)
{
  if (!a1)
  {
    return 0x646C656979;
  }

  if (a1 == 1)
  {
    return 0x6873696E6966;
  }

  return 0x726F727265;
}

uint64_t sub_2437E186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E1738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E189C()
{
  sub_2437E1DEC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E18D4()
{
  sub_2437E1DEC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E1914()
{
  sub_2437E1E40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E194C()
{
  sub_2437E1E40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E1984()
{
  sub_2437E1E94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E19BC()
{
  sub_2437E1E94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E19F4()
{
  sub_2437E1EE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E1A2C()
{
  sub_2437E1EE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCAsyncSequenceResponse.Event.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C70, &qword_2437F0520);
  OUTLINED_FUNCTION_0();
  v32 = v5;
  v33 = v4;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v31 = &v26 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C78, &qword_2437F0528);
  OUTLINED_FUNCTION_0();
  v28 = v8;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C80, &qword_2437F0530);
  OUTLINED_FUNCTION_0();
  v27 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C88, &qword_2437F0538);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - v20;
  v22 = v2[1];
  v26 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E1DEC();
  sub_2437EBB04();
  if (v22 >> 60 == 11)
  {
    LOBYTE(v34) = 2;
    sub_2437E1E40();
    v23 = v31;
    OUTLINED_FUNCTION_9_7(&type metadata for XPCAsyncSequenceResponse.Event.ErrorCodingKeys);
    (*(v32 + 8))(v23, v33);
    return (*(v18 + 8))(v21, v16);
  }

  if (v22 >> 60 == 15)
  {
    LOBYTE(v34) = 1;
    sub_2437E1E94();
    OUTLINED_FUNCTION_9_7(&type metadata for XPCAsyncSequenceResponse.Event.FinishCodingKeys);
    (*(v28 + 8))(v11, v30);
    return (*(v18 + 8))(v21, v16);
  }

  LOBYTE(v34) = 0;
  sub_2437E1EE8();
  OUTLINED_FUNCTION_9_7(&type metadata for XPCAsyncSequenceResponse.Event.YieldCodingKeys);
  v34 = v26;
  v35 = v22;
  sub_2437BA058();
  v25 = v29;
  sub_2437EB9D4();
  (*(v27 + 8))(v15, v25);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_2437E1DEC()
{
  result = qword_27ED8FAF0;
  if (!qword_27ED8FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FAF0);
  }

  return result;
}

unint64_t sub_2437E1E40()
{
  result = qword_27ED8FAF8;
  if (!qword_27ED8FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FAF8);
  }

  return result;
}

unint64_t sub_2437E1E94()
{
  result = qword_27ED8FB00;
  if (!qword_27ED8FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FB00);
  }

  return result;
}

unint64_t sub_2437E1EE8()
{
  result = qword_27ED8FB08;
  if (!qword_27ED8FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FB08);
  }

  return result;
}

uint64_t XPCAsyncSequenceResponse.Event.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v56 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C90, &qword_2437F0540);
  OUTLINED_FUNCTION_0();
  v57 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  v59 = v50 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C98, &qword_2437F0548);
  OUTLINED_FUNCTION_0();
  v53 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v9 = v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CA0, &qword_2437F0550);
  OUTLINED_FUNCTION_0();
  v54 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  v14 = v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CA8, &unk_2437F0558);
  OUTLINED_FUNCTION_0();
  v58 = v16;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v17);
  v19 = v50 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E1DEC();
  v20 = v62;
  sub_2437EBAF4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v9;
  v52 = v14;
  v50[1] = v10;
  v22 = v59;
  v21 = v60;
  v62 = a1;
  v23 = sub_2437EB974();
  result = sub_2437B5F3C(v23, 0);
  if (v26 == v27 >> 1)
  {
    goto LABEL_8;
  }

  v50[0] = 0;
  if (v26 < (v27 >> 1))
  {
    v28 = *(v25 + v26);
    sub_2437B5F84(v26 + 1, v27 >> 1, result, v25, v26, v27);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v57;
    if (v30 == v32 >> 1)
    {
      if (!v28)
      {
        LOBYTE(v61) = 0;
        sub_2437E1EE8();
        OUTLINED_FUNCTION_17_7(&type metadata for XPCAsyncSequenceResponse.Event.YieldCodingKeys);
        sub_2437BAD3C();
        sub_2437EB954();
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_16_7();
        v47(v46);
        v48 = OUTLINED_FUNCTION_15_6();
        v49(v48);
        v44 = v61;
        v35 = v56;
        goto LABEL_14;
      }

      if (v28 == 1)
      {
        LOBYTE(v61) = 1;
        sub_2437E1E94();
        v34 = v51;
        OUTLINED_FUNCTION_17_7(&type metadata for XPCAsyncSequenceResponse.Event.FinishCodingKeys);
        v35 = v56;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v34, v55);
        OUTLINED_FUNCTION_6_5();
        v42 = OUTLINED_FUNCTION_15_6();
        v43(v42);
        v44 = xmmword_2437F0510;
LABEL_14:
        *v35 = v44;
        return __swift_destroy_boxed_opaque_existential_1(v62);
      }

      LOBYTE(v61) = 2;
      sub_2437E1E40();
      v40 = v50[0];
      sub_2437EB904();
      v35 = v56;
      if (!v40)
      {
        swift_unknownObjectRelease();
        (*(v33 + 8))(v22, v21);
        OUTLINED_FUNCTION_6_5();
        v45(v19, v15);
        v44 = xmmword_2437EF7C0;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_6_5();
      v41(v19, v15);
      swift_unknownObjectRelease();
      a1 = v62;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_8:
    v36 = sub_2437EB8C4();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v38 = &type metadata for XPCAsyncSequenceResponse.Event;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_6_5();
    v39(v19, v15);
    a1 = v62;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t XPCAsyncSequenceResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

void XPCAsyncSequenceResponse.event.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  sub_2437E2D58(v4, v5);
}

uint64_t XPCAsyncSequenceResponse.init(id:event:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for XPCAsyncSequenceResponse(0);
  v9 = (a3 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t sub_2437E26A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5(0x746E657665, 0xE500000000000000);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437E2748(char a1)
{
  if (a1)
  {
    return 0x746E657665;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2437E2778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E26A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E27A8()
{
  sub_2437E2D70();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E27E0()
{
  sub_2437E2D70();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCAsyncSequenceResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CB0, &qword_2437F0568);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E2D70();
  sub_2437EBB04();
  LOBYTE(v15) = 0;
  sub_2437EB3B4();
  sub_2437D16EC(&qword_27ED86590, MEMORY[0x277CC95F8]);
  sub_2437EB9D4();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_2437E2D58(v15, v12);
    sub_2437E2DC4();
    sub_2437EB9D4();
    sub_2437DC2E4(v15, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t XPCAsyncSequenceResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v26 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CC0, &qword_2437F0570);
  OUTLINED_FUNCTION_0();
  v27 = v8;
  v28 = v9;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for XPCAsyncSequenceResponse(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E2D70();
  sub_2437EBAF4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v11;
  v15 = v26;
  LOBYTE(v30) = 0;
  sub_2437D16EC(&qword_27ED865D8, MEMORY[0x277CC9618]);
  v16 = v29;
  sub_2437EB954();
  v17 = *(v15 + 32);
  v23 = v14;
  v17(v14, v7, v16);
  v31 = 1;
  sub_2437E2E18();
  sub_2437EB954();
  v18 = OUTLINED_FUNCTION_1_7();
  v19(v18);
  v20 = v23;
  *&v23[*(v24 + 20)] = v30;
  sub_2437E2E6C(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2437E2ED0(v20);
}

uint64_t type metadata accessor for XPCAsyncSequenceResponse(uint64_t a1)
{
  result = qword_27ED8FDA0;
  if (!qword_27ED8FDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437E2D58(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    sub_2437B6C6C(a1, a2);
  }
}

unint64_t sub_2437E2D70()
{
  result = qword_27ED8FB10[0];
  if (!qword_27ED8FB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8FB10);
  }

  return result;
}

unint64_t sub_2437E2DC4()
{
  result = qword_27ED86CB8;
  if (!qword_27ED86CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CB8);
  }

  return result;
}

unint64_t sub_2437E2E18()
{
  result = qword_27ED86CC8;
  if (!qword_27ED86CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CC8);
  }

  return result;
}

uint64_t sub_2437E2E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E2ED0(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2437EB3B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    v9 = (4 * v8) & 0xC | (v8 >> 2);
    v10 = __OFSUB__(13, v9);
    v11 = 13 - v9;
    if (v11 < 0 != v10)
    {
      v11 = -1;
    }

    if (((4 * v8) & 0xC) != 0)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2437E3018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2437EB3B4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((14 - a2) >> 2) & 3 | (4 * (14 - a2))) << 60;
  }

  return result;
}

uint64_t sub_2437E30D4(uint64_t a1)
{
  result = sub_2437EB3B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CloudAssetsCommons24XPCAsyncSequenceResponseV5EventO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437E3170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

void *sub_2437E31C8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_10_9(result, ((14 - a2) >> 2) | (4 * (14 - a2)));
    }
  }

  return result;
}

void *sub_2437E3214(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_10_9(result, ((-a2 >> 2) & 3) - 4 * a2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437E3314);
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
          result = OUTLINED_FUNCTION_13_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437E34A4);
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
          result = OUTLINED_FUNCTION_13_9(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.YieldCodingKeys(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_14(a1);
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.YieldCodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437E35C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E361C()
{
  result = qword_27ED900B0[0];
  if (!qword_27ED900B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED900B0);
  }

  return result;
}

unint64_t sub_2437E3674()
{
  result = qword_27ED902C0[0];
  if (!qword_27ED902C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED902C0);
  }

  return result;
}

unint64_t sub_2437E36CC()
{
  result = qword_27ED904D0[0];
  if (!qword_27ED904D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED904D0);
  }

  return result;
}

unint64_t sub_2437E3724()
{
  result = qword_27ED905E0;
  if (!qword_27ED905E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED905E0);
  }

  return result;
}

unint64_t sub_2437E377C()
{
  result = qword_27ED905E8[0];
  if (!qword_27ED905E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED905E8);
  }

  return result;
}

unint64_t sub_2437E37D4()
{
  result = qword_27ED90670;
  if (!qword_27ED90670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90670);
  }

  return result;
}

unint64_t sub_2437E382C()
{
  result = qword_27ED90678;
  if (!qword_27ED90678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90678);
  }

  return result;
}

unint64_t sub_2437E3884()
{
  result = qword_27ED90700;
  if (!qword_27ED90700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90700);
  }

  return result;
}

unint64_t sub_2437E38DC()
{
  result = qword_27ED90708[0];
  if (!qword_27ED90708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90708);
  }

  return result;
}

unint64_t sub_2437E3934()
{
  result = qword_27ED90790;
  if (!qword_27ED90790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90790);
  }

  return result;
}

unint64_t sub_2437E398C()
{
  result = qword_27ED90798[0];
  if (!qword_27ED90798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90798);
  }

  return result;
}

unint64_t sub_2437E39E4()
{
  result = qword_27ED90820;
  if (!qword_27ED90820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90820);
  }

  return result;
}

unint64_t sub_2437E3A3C()
{
  result = qword_27ED90828[0];
  if (!qword_27ED90828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90828);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1)
{

  return sub_2437EB994();
}

void *OUTLINED_FUNCTION_10_9@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = 0;
  result[1] = a2 << 60;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1)
{

  return sub_2437EB904();
}

uint64_t sub_2437E3B18(uint64_t a1)
{
  sub_2437E4010();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437E3B54(uint64_t a1)
{
  sub_2437E4010();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetSkeleton.storageReference.getter()
{
  type metadata accessor for AssetSkeleton(0);
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t type metadata accessor for AssetSkeleton(uint64_t a1)
{
  result = qword_27ED90D30;
  if (!qword_27ED90D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetSkeleton.storageReferenceSignature.getter()
{
  type metadata accessor for AssetSkeleton(0);
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t AssetSkeleton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_2437EB444();
  v5 = OUTLINED_FUNCTION_48(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v33 = v7 - v6;
  type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = type metadata accessor for AssetSkeleton(0);
  v13 = OUTLINED_FUNCTION_48(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CD0, &qword_2437F0BE0);
  OUTLINED_FUNCTION_0();
  v32 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  v22 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2437E4010();
  sub_2437EBAF4();
  if (!v2)
  {
    v23 = v32;
    v30 = v16;
    sub_2437BAD3C();
    sub_2437EB954();
    v29 = v17;
    v37 = v38;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_2437EB434();
    OUTLINED_FUNCTION_6_6();
    sub_2437E4C74(v24, v25, &protocol conformance descriptor for CloudAssets_SimultaneousDownloadableAssets);
    sub_2437EB514();
    v27 = v30;
    sub_2437E4064(v11, v30);
    (*(v23 + 8))(v21, v29);
    sub_2437E5098(v27, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

unint64_t sub_2437E4010()
{
  result = qword_27ED86CD8;
  if (!qword_27ED86CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CD8);
  }

  return result;
}

uint64_t sub_2437E4064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudAssets_Credential(0);
  v6 = OUTLINED_FUNCTION_48(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Asset(0);
  v11 = OUTLINED_FUNCTION_48(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
  v16 = OUTLINED_FUNCTION_48(v15);
  MEMORY[0x28223BE20](v16);
  v18 = v37 - v17;
  v19 = type metadata accessor for CloudAssets_Asset(0);
  OUTLINED_FUNCTION_1_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = v37 - v24;
  sub_2437E432C(*a1, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2437E5030(v18);
    sub_2437BF6BC();
    swift_allocError();
    *v26 = 0xD00000000000001ELL;
    v26[1] = 0x80000002437F34C0;
    swift_willThrow();
LABEL_5:
    OUTLINED_FUNCTION_0_12();
    return sub_2437E5148(a1, v27);
  }

  sub_2437E5098(v18, v25);
  sub_2437E50F0(v25, v23);
  Asset.init(protobufRepresentation:)(v23);
  if (v2)
  {
    OUTLINED_FUNCTION_8_6();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_7_7();
  sub_2437E5098(v14, a2);
  v29 = a1[1];
  v30 = a1[2];
  v31 = type metadata accessor for AssetSkeleton(0);
  v32 = (a2 + v31[5]);
  *v32 = v29;
  v32[1] = v30;
  sub_2437B6C6C(v29, v30);
  CloudAssets_SimultaneousDownloadableAssets.credential.getter(v9);
  Credential.init(protobufRepresentation:)(v9, (a2 + v31[7]));
  OUTLINED_FUNCTION_8_6();
  v33 = a1[3];
  v34 = a1[4];
  sub_2437B6C6C(v33, v34);
  OUTLINED_FUNCTION_0_12();
  result = sub_2437E5148(a1, v35);
  v36 = (a2 + v31[6]);
  *v36 = v33;
  v36[1] = v34;
  return result;
}

uint64_t sub_2437E432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CloudAssets_Asset(0);
  v6 = v5;
  if (v4)
  {
    sub_2437E50F0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t AssetSkeleton.init(asset:credential:storageReference:storageReferenceSignature:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_7_7();
  sub_2437E5098(v13, v14);
  v15 = type metadata accessor for AssetSkeleton(0);
  result = sub_2437E5098(a2, a7 + v15[7]);
  v17 = (a7 + v15[5]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v15[6]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t AssetSkeleton.encode(to:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_34();
  v3 = type metadata accessor for CloudAssets_Credential(v2);
  v4 = OUTLINED_FUNCTION_48(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v42[1] = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CE0, &qword_2437F0BE8);
  OUTLINED_FUNCTION_0();
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_2437E4010();
  sub_2437EBB04();
  CloudAssets_SimultaneousDownloadableAssets.init()(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CE8, &qword_2437F0BF0);
  v16 = OUTLINED_FUNCTION_34();
  type metadata accessor for CloudAssets_Asset(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2437ED960;
  Asset.protobufRepresentation()();

  *v11 = v17;
  v18 = type metadata accessor for AssetSkeleton(0);
  v19 = (v0 + *(v18 + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = v11[1];
  v23 = v11[2];
  sub_2437B6C6C(*v19, v21);
  sub_2437B7168(v22, v23);
  v11[1] = v20;
  v11[2] = v21;
  Credential.protobufRepresentation()(v7);
  CloudAssets_SimultaneousDownloadableAssets.credential.setter(v7);
  v24 = (v1 + *(v18 + 24));
  v25 = *v24;
  v26 = v24[1];
  v27 = v11[3];
  v28 = v11[4];
  v29 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v29, v30);
  sub_2437B7168(v27, v28);
  v11[3] = v25;
  v11[4] = v26;
  OUTLINED_FUNCTION_6_6();
  sub_2437E4C74(v31, v32, &protocol conformance descriptor for CloudAssets_SimultaneousDownloadableAssets);
  v33 = v42[2];
  v34 = sub_2437EB504();
  if (v33)
  {
    (*(v43 + 8))(v15, v46);
    OUTLINED_FUNCTION_0_12();
    return sub_2437E5148(v11, v36);
  }

  else
  {
    v38 = v34;
    v39 = v35;
    OUTLINED_FUNCTION_0_12();
    sub_2437E5148(v11, v40);
    v44 = v38;
    v45 = v39;
    sub_2437BA058();
    v41 = v46;
    sub_2437EB9D4();
    sub_2437B7168(v44, v45);
    return (*(v43 + 8))(v15, v41);
  }
}

uint64_t static AssetSkeleton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static Asset.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AssetSkeleton(0);
  OUTLINED_FUNCTION_17_8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_8();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v4 + 28);

  return static Credential.== infix(_:_:)((a1 + v7), (a2 + v7));
}

uint64_t AssetSkeleton.hash(into:)(uint64_t a1)
{
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_10();
  sub_2437E4C74(v1, v2, &protocol conformance descriptor for Asset);
  sub_2437EB6D4();
  type metadata accessor for AssetSkeleton(0);
  OUTLINED_FUNCTION_12_8();
  sub_2437EB354();
  OUTLINED_FUNCTION_12_8();
  sub_2437EB354();
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_15();
  sub_2437E4C74(v3, v4, &protocol conformance descriptor for Credential);
  return sub_2437EB6D4();
}

uint64_t AssetSkeleton.hashValue.getter()
{
  sub_2437EBA94();
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_10();
  v2 = sub_2437E4C74(v0, v1, &protocol conformance descriptor for Asset);
  OUTLINED_FUNCTION_43_0(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  sub_2437EB6D4();
  type metadata accessor for AssetSkeleton(0);
  OUTLINED_FUNCTION_12_8();
  sub_2437EB354();
  OUTLINED_FUNCTION_12_8();
  sub_2437EB354();
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_15();
  v12 = sub_2437E4C74(v10, v11, &protocol conformance descriptor for Credential);
  OUTLINED_FUNCTION_43_0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437E4A44(uint64_t a1)
{
  sub_2437EBA94();
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_10();
  v3 = sub_2437E4C74(v1, v2, &protocol conformance descriptor for Asset);
  OUTLINED_FUNCTION_43_0(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24);
  sub_2437EB6D4();
  OUTLINED_FUNCTION_12_8();
  sub_2437EB354();
  OUTLINED_FUNCTION_12_8();
  sub_2437EB354();
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_15();
  v13 = sub_2437E4C74(v11, v12, &protocol conformance descriptor for Credential);
  OUTLINED_FUNCTION_43_0(v13, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

unint64_t sub_2437E4B28()
{
  result = qword_27ED86CF0;
  if (!qword_27ED86CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CF0);
  }

  return result;
}

unint64_t sub_2437E4B80()
{
  result = qword_27ED86CF8;
  if (!qword_27ED86CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CF8);
  }

  return result;
}

unint64_t sub_2437E4BD8()
{
  result = qword_27ED86D00;
  if (!qword_27ED86D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86D00);
  }

  return result;
}

uint64_t sub_2437E4C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437E4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_34();
  v7 = type metadata accessor for Asset(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 12)
    {
      v10 = *(v3 + *(a3 + 20) + 8) >> 60;
      if (((4 * v10) & 0xC) != 0)
      {
        return 16 - ((4 * v10) & 0xC | (v10 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for Credential(0);
    v9 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2437E4DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_34();
  result = type metadata accessor for Asset(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 12)
    {
      v12 = (v4 + *(a4 + 20));
      *v12 = 0;
      v12[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = type metadata accessor for Credential(0);
    v11 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2437E4EC8(uint64_t a1)
{
  result = type metadata accessor for Asset(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSkeleton.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437E4FF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437E5030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E5098(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v4(v3);
  OUTLINED_FUNCTION_1_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_2437E50F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v4(v3);
  OUTLINED_FUNCTION_1_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_2437E5148(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_2437E5148(v0, type metadata accessor for CloudAssets_Asset);
}

void OUTLINED_FUNCTION_17_8()
{

  JUMPOUT(0x245D3FA00);
}

uint64_t sub_2437E526C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002437F34E0 == a2;
  if (v3 || (OUTLINED_FUNCTION_5(0xD000000000000011, 0x80000002437F34E0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746C75736572 && a2 == 0xEE00646576696563;
    if (v6 || (OUTLINED_FUNCTION_5(0x6552746C75736572, 0xEE00646576696563) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65526C616E676973 && a2 == 0xEE00646576696563)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5(0x65526C616E676973, 0xEE00646576696563);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2437E5370(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6552746C75736572;
  }

  return 0x65526C616E676973;
}

uint64_t sub_2437E53DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E526C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E5410()
{
  sub_2437E5B40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E5448()
{
  sub_2437E5B40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E5480()
{
  sub_2437E5C4C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E54B8()
{
  sub_2437E5C4C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E54F0()
{
  sub_2437E5BF8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E5528()
{
  sub_2437E5BF8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E5560()
{
  sub_2437E5D08();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E5598()
{
  sub_2437E5D08();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t AssetUploadEvent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D08, &qword_2437F0E00);
  OUTLINED_FUNCTION_0();
  v44 = v3;
  v45 = v2;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_2();
  v43 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D10, &unk_2437F0E08);
  OUTLINED_FUNCTION_0();
  v41 = v7;
  v42 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_2();
  v40 = v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D18, &qword_2437F0E18);
  OUTLINED_FUNCTION_0();
  v37 = v14;
  v38 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  type metadata accessor for AssetUploadEvent(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v18);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D20, &unk_2437F0E20);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v26 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2437E5B40();
  sub_2437EBB04();
  sub_2437E5B94(v46, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2437CE3C4(v20, v12);
      LOBYTE(v48) = 1;
      sub_2437E5C4C();
      v28 = v40;
      OUTLINED_FUNCTION_13_10(&type metadata for AssetUploadEvent.ResultReceivedCodingKeys);
      sub_2437D0150(&qword_27ED86A20, &protocol conformance descriptor for XPCResult<A>);
      v29 = v42;
      sub_2437EB9D4();
      (*(v41 + 8))(v28, v29);
      sub_2437E5CA0(v12);
      return (*(v22 + 8))(v25, v26);
    }

    v33 = *v20;
    LOBYTE(v48) = 2;
    sub_2437E5BF8();
    v34 = v43;
    v35 = v47;
    sub_2437EB994();
    v48 = v33;
    sub_2437CF208();
    v36 = v45;
    sub_2437EB9D4();
    (*(v44 + 8))(v34, v36);
    (*(v22 + 8))(v25, v35);
  }

  else
  {
    v31 = *v20;
    LOBYTE(v48) = 0;
    sub_2437E5D08();
    OUTLINED_FUNCTION_13_10(&type metadata for AssetUploadEvent.SkeletonsReceivedCodingKeys);
    v48 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
    sub_2437E6634(&qword_27ED86A30, &qword_27ED86A38, &protocol conformance descriptor for AssetSkeleton, MEMORY[0x277D83948]);
    v32 = v38;
    sub_2437EB9D4();
    (*(v37 + 8))(v17, v32);
    (*(v22 + 8))(v25, v26);
  }
}

uint64_t type metadata accessor for AssetUploadEvent(uint64_t a1)
{
  result = qword_27ED90E60;
  if (!qword_27ED90E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2437E5B40()
{
  result = qword_27ED90D40;
  if (!qword_27ED90D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90D40);
  }

  return result;
}

uint64_t sub_2437E5B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2437E5BF8()
{
  result = qword_27ED90D48;
  if (!qword_27ED90D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90D48);
  }

  return result;
}

unint64_t sub_2437E5C4C()
{
  result = qword_27ED90D50;
  if (!qword_27ED90D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90D50);
  }

  return result;
}

uint64_t sub_2437E5CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2437E5D08()
{
  result = qword_27ED90D58[0];
  if (!qword_27ED90D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90D58);
  }

  return result;
}

uint64_t AssetUploadEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D28, &qword_2437F0E30);
  OUTLINED_FUNCTION_0();
  v82 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_2();
  v80 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D30, &qword_2437F0E38);
  OUTLINED_FUNCTION_0();
  v76 = v7;
  v77 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_2();
  v79 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D38, &qword_2437F0E40);
  OUTLINED_FUNCTION_0();
  v74 = v11;
  v75 = v10;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_2();
  v78 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D40, &unk_2437F0E48);
  OUTLINED_FUNCTION_0();
  v83 = v15;
  v84 = v14;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = type metadata accessor for AssetUploadEvent(0);
  OUTLINED_FUNCTION_1_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v70 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v70 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v70 - v30;
  v32 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2437E5B40();
  v33 = v87;
  sub_2437EBAF4();
  if (v33)
  {
    goto LABEL_10;
  }

  v70 = v23;
  v71 = v29;
  v72 = v31;
  v73 = v26;
  v35 = v84;
  v34 = v85;
  v87 = v19;
  v36 = sub_2437EB974();
  result = sub_2437B5F3C(v36, 0);
  if (v39 == v40 >> 1)
  {
LABEL_9:
    v53 = sub_2437EB8C4();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v55 = v87;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v18, v35);
LABEL_10:
    v56 = v86;
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  if (v39 < (v40 >> 1))
  {
    v41 = v18;
    v42 = *(v38 + v39);
    sub_2437B5F84(v39 + 1, v40 >> 1, result, v38, v39, v40);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = v44 == v46 >> 1;
    v48 = v82;
    if (v47)
    {
      v49 = v35;
      v50 = v41;
      if (v42)
      {
        v51 = v81;
        if (v42 == 1)
        {
          LOBYTE(v88) = 1;
          sub_2437E5C4C();
          v52 = v79;
          OUTLINED_FUNCTION_12_9(&type metadata for AssetUploadEvent.ResultReceivedCodingKeys);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
          sub_2437D0150(&qword_27ED86A80, &protocol conformance descriptor for XPCResult<A>);
          v59 = v52;
          sub_2437EB954();
          swift_unknownObjectRelease();
          v62 = OUTLINED_FUNCTION_14_7();
          v63(v62);
          v64 = OUTLINED_FUNCTION_1_16();
          v65(v64);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_10_10();
          v66 = v86;
        }

        else
        {
          LOBYTE(v88) = 2;
          sub_2437E5BF8();
          v57 = v80;
          v58 = v49;
          sub_2437EB904();
          sub_2437D00FC();
          v59 = v57;
          sub_2437EB954();
          v61 = v83;
          swift_unknownObjectRelease();
          (*(v48 + 8))(v57, v34);
          (*(v61 + 8))(v50, v58);
          *v70 = v88;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_10_10();
          v66 = v86;
          v51 = v81;
        }
      }

      else
      {
        LOBYTE(v88) = 0;
        sub_2437E5D08();
        OUTLINED_FUNCTION_12_9(&type metadata for AssetUploadEvent.SkeletonsReceivedCodingKeys);
        v51 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
        sub_2437E6634(&qword_27ED86A88, &qword_27ED86A90, &protocol conformance descriptor for AssetSkeleton, MEMORY[0x277D83978]);
        sub_2437EB954();
        v60 = v83;
        swift_unknownObjectRelease();
        v67 = OUTLINED_FUNCTION_15_7();
        v68(v67);
        v69 = *(v60 + 8);
        v59 = v60 + 8;
        v69(v50, v48);
        *v71 = v88;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_10();
        v66 = v86;
      }

      sub_2437E65D0(v59, v51);
      v56 = v66;
      return __swift_destroy_boxed_opaque_existential_1(v56);
    }

    v18 = v41;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2437E65D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E6634(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86A28, &qword_2437EE7F8);
    sub_2437E674C(a2, type metadata accessor for AssetSkeleton, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2437E66D0(uint64_t a1)
{
  sub_2437D0310(319);
  if (v1 <= 0x3F)
  {
    sub_2437D0368(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_2437E674C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for AssetUploadEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437E6860);
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

_BYTE *_s18CloudAssetsCommons16AssetUploadEventO24ResultReceivedCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437E6958);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E6994()
{
  result = qword_27ED90F70[0];
  if (!qword_27ED90F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90F70);
  }

  return result;
}

unint64_t sub_2437E69EC()
{
  result = qword_27ED91180[0];
  if (!qword_27ED91180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91180);
  }

  return result;
}

unint64_t sub_2437E6A44()
{
  result = qword_27ED91390[0];
  if (!qword_27ED91390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91390);
  }

  return result;
}

unint64_t sub_2437E6A9C()
{
  result = qword_27ED915A0[0];
  if (!qword_27ED915A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED915A0);
  }

  return result;
}

unint64_t sub_2437E6AF4()
{
  result = qword_27ED916B0;
  if (!qword_27ED916B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED916B0);
  }

  return result;
}

unint64_t sub_2437E6B4C()
{
  result = qword_27ED916B8[0];
  if (!qword_27ED916B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED916B8);
  }

  return result;
}

unint64_t sub_2437E6BA4()
{
  result = qword_27ED91740;
  if (!qword_27ED91740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED91740);
  }

  return result;
}

unint64_t sub_2437E6BFC()
{
  result = qword_27ED91748[0];
  if (!qword_27ED91748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91748);
  }

  return result;
}

unint64_t sub_2437E6C54()
{
  result = qword_27ED917D0;
  if (!qword_27ED917D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED917D0);
  }

  return result;
}

unint64_t sub_2437E6CAC()
{
  result = qword_27ED917D8[0];
  if (!qword_27ED917D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED917D8);
  }

  return result;
}

unint64_t sub_2437E6D04()
{
  result = qword_27ED91860;
  if (!qword_27ED91860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED91860);
  }

  return result;
}

unint64_t sub_2437E6D5C()
{
  result = qword_27ED91868[0];
  if (!qword_27ED91868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  v3 = *(v1 - 208);

  return sub_2437E65D0(v0, v3);
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return sub_2437EB904();
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1)
{

  return sub_2437EB994();
}

_BYTE *storeEnumTagSinglePayload for LoggerSubsystem(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437E6F14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static DownloadRequestMessage.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (a2[1])
    {
      goto LABEL_6;
    }
  }

  else if ((a2[1] & 1) == 0)
  {
LABEL_6:
    j__swift_bridgeObjectRetain(*a2);
    j__swift_bridgeObjectRetain(v2);
    v4 = sub_2437E704C(v2, v3);
    goto LABEL_7;
  }

  j__swift_bridgeObjectRetain(*a2);
  j__swift_bridgeObjectRetain(v2);
  v4 = 0;
LABEL_7:
  j__swift_bridgeObjectRelease(v2);
  j__swift_bridgeObjectRelease(v3);
  return v4 & 1;
}

uint64_t sub_2437E704C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDownloadRequest(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2437E85EC(v13, v10);
        sub_2437E85EC(v14, v7);
        sub_2437E8650(&qword_27ED86688, &protocol conformance descriptor for AssetDownloadRequest);
        v16 = sub_2437EB6E4();
        sub_2437E8694(v7);
        sub_2437E8694(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2437E7200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2437E729C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2437E722C()
{
  sub_2437E77EC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E7264()
{
  sub_2437E77EC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E729C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437E7314()
{
  sub_2437E7744();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E734C()
{
  sub_2437E7744();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E7384()
{
  sub_2437E7798();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E73BC()
{
  sub_2437E7798();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t DownloadRequestMessage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D48, &qword_2437F1390);
  OUTLINED_FUNCTION_0();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D50, &qword_2437F1398);
  OUTLINED_FUNCTION_0();
  v29 = v9;
  v30 = v8;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D58, &qword_2437F13A0);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v33 = *v1;
  v18 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E7744();
  sub_2437EBB04();
  if (v18)
  {
    LOBYTE(v35) = 1;
    sub_2437E7798();
    OUTLINED_FUNCTION_17_1(&unk_28568DD28);
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
    OUTLINED_FUNCTION_1_17();
    sub_2437E7FFC(v19, v20, v21, MEMORY[0x277D83948]);
    v22 = v32;
    sub_2437EB9D4();
    (*(v31 + 8))(v7, v22);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_2437E77EC();
    OUTLINED_FUNCTION_17_1(&unk_28568DC98);
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
    OUTLINED_FUNCTION_1_17();
    sub_2437E7FFC(v23, v24, v25, MEMORY[0x277D83948]);
    v26 = v30;
    sub_2437EB9D4();
    (*(v29 + 8))(v12, v26);
  }

  return (*(v14 + 8))(v17, v18);
}

unint64_t sub_2437E7744()
{
  result = qword_27ED918F0;
  if (!qword_27ED918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED918F0);
  }

  return result;
}

unint64_t sub_2437E7798()
{
  result = qword_27ED918F8;
  if (!qword_27ED918F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED918F8);
  }

  return result;
}

unint64_t sub_2437E77EC()
{
  result = qword_27ED91900[0];
  if (!qword_27ED91900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91900);
  }

  return result;
}

uint64_t DownloadRequestMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D40160](*(v1 + 8));

  return sub_2437E7F14(a1, v3);
}

uint64_t DownloadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  sub_2437E7F14(v4, v1);
  return sub_2437EBAD4();
}

uint64_t DownloadRequestMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D70, &qword_2437F13B0);
  OUTLINED_FUNCTION_0();
  v50 = v3;
  v51 = v4;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D78, &qword_2437F13B8);
  OUTLINED_FUNCTION_0();
  v49 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D80, &unk_2437F13C0);
  OUTLINED_FUNCTION_0();
  v52 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E7744();
  v16 = v54;
  sub_2437EBAF4();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48[2] = v6;
  v48[3] = v10;
  v54 = a1;
  v17 = v53;
  v18 = sub_2437EB974();
  result = sub_2437B5F3C(v18, 0);
  if (v21 == v22 >> 1)
  {
    v23 = v15;
LABEL_9:
    v33 = sub_2437EB8C4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v35 = &type metadata for DownloadRequestMessage;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v11);
    a1 = v54;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v20 + v21);
    sub_2437B5F84(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v23 = v15;
      goto LABEL_9;
    }

    v29 = v24;
    if (v24)
    {
      LODWORD(v49) = v24;
      LOBYTE(v55) = 1;
      sub_2437E7798();
      OUTLINED_FUNCTION_13_8(&unk_28568DD28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
      OUTLINED_FUNCTION_2_11();
      sub_2437E7FFC(v30, v31, v32, MEMORY[0x277D83978]);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v39 = OUTLINED_FUNCTION_11_4();
      v40(v39);
      v41 = OUTLINED_FUNCTION_3_7();
      v42(v41);
      v43 = v55;
      v29 = v49;
    }

    else
    {
      LOBYTE(v55) = 0;
      sub_2437E77EC();
      OUTLINED_FUNCTION_13_8(&unk_28568DC98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
      OUTLINED_FUNCTION_2_11();
      sub_2437E7FFC(v36, v37, v38, MEMORY[0x277D83978]);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v44 = OUTLINED_FUNCTION_10_8();
      v45(v44);
      v46 = OUTLINED_FUNCTION_3_7();
      v47(v46);
      v43 = v55;
      v17 = v53;
    }

    *v17 = v43;
    *(v17 + 8) = v29;
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  return result;
}

uint64_t sub_2437E7E84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v3);
  sub_2437E7F14(v5, v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437E7F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AssetDownloadRequest(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2437E8650(&qword_27ED86680, &protocol conformance descriptor for AssetDownloadRequest);
    do
    {
      result = sub_2437EB6D4();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437E7FFC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86D60, &qword_2437F13A8);
    sub_2437E8650(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437E8088()
{
  result = qword_27ED86D90;
  if (!qword_27ED86D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86D90);
  }

  return result;
}

_BYTE *sub_2437E80F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437E81C0);
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

_BYTE *sub_2437E8204(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437E82A0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E82D8()
{
  result = qword_27ED91C10[0];
  if (!qword_27ED91C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91C10);
  }

  return result;
}

unint64_t sub_2437E8330()
{
  result = qword_27ED91E20[0];
  if (!qword_27ED91E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91E20);
  }

  return result;
}

unint64_t sub_2437E8388()
{
  result = qword_27ED92030[0];
  if (!qword_27ED92030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92030);
  }

  return result;
}

unint64_t sub_2437E83E0()
{
  result = qword_27ED92140;
  if (!qword_27ED92140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92140);
  }

  return result;
}

unint64_t sub_2437E8438()
{
  result = qword_27ED92148[0];
  if (!qword_27ED92148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92148);
  }

  return result;
}

unint64_t sub_2437E8490()
{
  result = qword_27ED921D0;
  if (!qword_27ED921D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED921D0);
  }

  return result;
}

unint64_t sub_2437E84E8()
{
  result = qword_27ED921D8[0];
  if (!qword_27ED921D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED921D8);
  }

  return result;
}

unint64_t sub_2437E8540()
{
  result = qword_27ED92260;
  if (!qword_27ED92260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92260);
  }

  return result;
}

unint64_t sub_2437E8598()
{
  result = qword_27ED92268[0];
  if (!qword_27ED92268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92268);
  }

  return result;
}

uint64_t sub_2437E85EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDownloadRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E8650(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetDownloadRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437E8694(uint64_t a1)
{
  v2 = type metadata accessor for AssetDownloadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E8754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2437E8794(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2437E87E0()
{
  v0 = sub_2437EB5F4();
  __swift_allocate_value_buffer(v0, qword_27ED924A8);
  __swift_project_value_buffer(v0, qword_27ED924A8);
  sub_2437E6E54();
  type metadata accessor for XPCSessionCacheImplementation(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DA8, &qword_2437F1A38);
  sub_2437EB704();
  return sub_2437EB5E4();
}

uint64_t sub_2437E888C()
{
  OUTLINED_FUNCTION_13_11();
  v0 = swift_allocObject();
  sub_2437E88E8();
  return v0;
}

uint64_t sub_2437E88E8()
{
  OUTLINED_FUNCTION_13_11();
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = 0;
  sub_2437E8960(v4, v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_serviceID);
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_dispatcher) = v3;
  v5 = (v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler);
  *v5 = v2;
  v5[1] = v0;
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = 0;
  return v1;
}

uint64_t sub_2437E8960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E89C4()
{
  v1 = v0;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v2 = sub_2437EB5F4();
  __swift_project_value_buffer(v2, qword_27ED924A8);
  v3 = sub_2437EB5D4();
  sub_2437EB854();
  v4 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_2437B3000, v6, v7, "evict xpc session");
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = 0;
}

uint64_t sub_2437E8A9C()
{
  if (*(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession))
  {
    v0 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession);
  }

  else
  {
    v3 = (*(*v1 + 168))();
    if (v2)
    {
      return v0;
    }

    v0 = v3;
  }

  return v0;
}

uint64_t sub_2437E8B0C()
{
  v1 = v0;
  v37 = sub_2437EB684();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_2437EB624();
  v11 = OUTLINED_FUNCTION_48(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = type metadata accessor for ServiceIdentifier(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v17 = sub_2437EB5F4();
  __swift_project_value_buffer(v17, qword_27ED924A8);
  v18 = sub_2437EB5D4();
  v19 = sub_2437EB854();
  v20 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v14;
    *v22 = 0;
    _os_log_impl(&dword_2437B3000, v18, v19, "establish xpc session", v22, 2u);
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  sub_2437D52A0(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_serviceID, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = *(v16 + 1);
    sub_2437EB674();

    sub_2437EB614();
    type metadata accessor for XPCAsyncSequenceResponse(0);
    OUTLINED_FUNCTION_3_8();
    sub_2437E9BF8(v29, v30, &protocol conformance descriptor for XPCAsyncSequenceResponse);
    v31 = v38;
    v32 = sub_2437EB604();
    if (v31)
    {
      return v24;
    }

    v24 = v32;
    goto LABEL_12;
  }

  v23 = v37;
  (*(v3 + 32))(v9, v16, v37);
  v35 = sub_2437EB674();
  (*(v3 + 16))(v7, v9, v23);
  v24 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler);

  sub_2437EB614();
  type metadata accessor for XPCAsyncSequenceResponse(0);
  OUTLINED_FUNCTION_3_8();
  sub_2437E9BF8(v25, v26, &protocol conformance descriptor for XPCAsyncSequenceResponse);
  v27 = v38;
  v28 = sub_2437EB664();
  if (!v27)
  {
    v24 = v28;
    (*(v3 + 8))(v9, v23);
LABEL_12:
    *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = v24;

    return v24;
  }

  (*(v3 + 8))(v9, v23);
  return v24;
}

uint64_t sub_2437E8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 176) & 0xFFFFFFFFFFFFLL | 0xD104000000000000;
  v5[4] = *(*a4 + 176);
  v5[5] = v6;
  return OUTLINED_FUNCTION_5_5(sub_2437EA0EC);
}

uint64_t sub_2437E8FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2437EB6A4();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  v14 = OUTLINED_FUNCTION_48(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  v17 = sub_2437EB7B4();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v9 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  (*(v9 + 32))(&v19[v18], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_2437D674C(0, 0, v16, a4, v19);
}

uint64_t sub_2437E9188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 176) & 0xFFFFFFFFFFFFLL | 0xD104000000000000;
  v5[4] = *(*a4 + 176);
  v5[5] = v6;
  return OUTLINED_FUNCTION_5_5(sub_2437D66F0);
}

uint64_t sub_2437E91C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  v5 = OUTLINED_FUNCTION_48(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_2437EB6A4();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v14 = sub_2437EB5F4();
  __swift_project_value_buffer(v14, qword_27ED924A8);
  v15 = *(v10 + 16);
  v15(v13, a1, v8);
  v16 = sub_2437EB5D4();
  v17 = sub_2437EB844();
  v18 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v20 = 138412290;
    sub_2437E9BF8(&qword_27ED86BA0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v30 = v7;
    v15(v21, v13, v8);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    (*(v10 + 8))(v13, v8);
    *(v20 + 4) = v22;
    v23 = v29;
    *v29 = v22;
    v7 = v30;
    _os_log_impl(&dword_2437B3000, v16, v17, "cached xpc connection disconnected due to error %@", v20, 0xCu);
    sub_2437E9D64(v23, &qword_27ED86B98, &qword_2437EF8D8);
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  else
  {

    v24 = (*(v10 + 8))(v13, v8);
  }

  (*(*v2 + 152))(v24);
  v25 = sub_2437EB7B4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v25);
  v26 = sub_2437E9BF8(&qword_27ED86DA0, type metadata accessor for XPCSessionCacheImplementation, &unk_2437F1970);
  v27 = swift_allocObject();
  v27[2] = v2;
  v27[3] = v26;
  v27[4] = v2;
  swift_retain_n();
  sub_2437D674C(0, 0, v7, &unk_2437F1960, v27);
}

uint64_t sub_2437E956C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_dispatcher);
  v0[3] = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x32A9000000000000;
  v0[4] = *(*v1 + 144);
  v0[5] = v2;
  return OUTLINED_FUNCTION_5_5(sub_2437E95B0);
}

uint64_t sub_2437E95B0()
{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 32))();
  OUTLINED_FUNCTION_12_4();

  return v1();
}

uint64_t sub_2437E960C()
{
  v1 = v0;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v2 = sub_2437EB5F4();
  __swift_project_value_buffer(v2, qword_27ED924A8);
  v3 = sub_2437EB5D4();
  sub_2437EB854();
  v4 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_2437B3000, v6, v7, "cancel xpc session");
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  if (*(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession))
  {

    sub_2437EB654();
  }

  v8 = *(*v1 + 152);

  return v8();
}

uint64_t sub_2437E9730()
{
  sub_2437E9C40(v0 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_serviceID);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2437E9794()
{
  sub_2437E9730();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2437E97DC()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_7_8();
  v2 = (*(v1 + 160))();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2437E9888()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_8();
  (*(v0 + 152))();
  OUTLINED_FUNCTION_12_4();

  return v1();
}

uint64_t sub_2437E9918()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_8();
  (*(v0 + 184))();
  OUTLINED_FUNCTION_12_4();

  return v1();
}

uint64_t type metadata accessor for XPCSessionCacheImplementation(uint64_t a1)
{
  result = qword_27ED92470;
  if (!qword_27ED92470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437E9A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v12, 40, 7, v13, v14, v15, v16, v17, a9, a10, a11, a12);
}

uint64_t sub_2437E9A84()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_10(v2);
  *v3 = v6;
  v3[1] = sub_2437EA0F4;

  return sub_2437E9550(v3, v4, v5, v1);
}

uint64_t sub_2437E9B10()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12_4();

  return v3();
}

uint64_t sub_2437E9BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437E9C40(uint64_t a1)
{
  v2 = type metadata accessor for ServiceIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E9CA4(uint64_t a1)
{
  result = type metadata accessor for ServiceIdentifier(319);
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

uint64_t sub_2437E9D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2437E9DC8()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_2437EB6A4();
  OUTLINED_FUNCTION_48(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_10(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15_8(v2);

  return sub_2437E8FA8(v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_18Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_2437EB6A4();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = (v16 + 40) & ~v16;
  v19 = *(v18 + 64);
  swift_unknownObjectRelease();

  (*(v15 + 8))(v12 + v17, v13);

  return MEMORY[0x2821FE8E8](v12, v17 + v19, v16 | 7, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2437E9F48()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_2437EB6A4();
  OUTLINED_FUNCTION_48(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_10(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15_8(v2);

  return sub_2437E9188(v4, v5, v6, v7, v8);
}

uint64_t sub_2437EA008()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12_4();

  return v3();
}

void OUTLINED_FUNCTION_16_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2437EA1AC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2437EBA14() & 1) == 0)
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

uint64_t sub_2437EA238(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746163696C707061 && a2 == 0xEE007344496E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437EA2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437EA238(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437EA308()
{
  sub_2437EA794();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437EA340()
{
  sub_2437EA794();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437EA378(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002437F3610 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437EA3F8()
{
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  return sub_2437EBAD4();
}

uint64_t sub_2437EA484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437EA378(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437EA4B0()
{
  sub_2437EA740();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437EA4E8()
{
  sub_2437EA740();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t SimultaneousTransferError.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DB0, &qword_2437F1A40);
  OUTLINED_FUNCTION_0();
  v18 = v3;
  v19 = v4;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DB8, &qword_2437F1A48);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437EA740();
  sub_2437EBB04();
  sub_2437EA794();
  sub_2437EB994();
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DC0, &qword_2437F1A50);
  sub_2437EADB4(&qword_27ED86DC8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v13 = v18;
  sub_2437EB9D4();
  v14 = OUTLINED_FUNCTION_2_12();
  v15(v14, v13);
  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_2437EA740()
{
  result = qword_27ED924C0;
  if (!qword_27ED924C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED924C0);
  }

  return result;
}

unint64_t sub_2437EA794()
{
  result = qword_27ED924C8[0];
  if (!qword_27ED924C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED924C8);
  }

  return result;
}

uint64_t SimultaneousTransferError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D40160](0);

  return sub_2437EAD3C(a1, v3);
}

uint64_t SimultaneousTransferError.hashValue.getter()
{
  v1 = *v0;
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  sub_2437EAD3C(v3, v1);
  return sub_2437EBAD4();
}

uint64_t SimultaneousTransferError.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DD0, &qword_2437F1A58);
  OUTLINED_FUNCTION_0();
  v39 = v5;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DD8, &unk_2437F1A60);
  OUTLINED_FUNCTION_0();
  v40 = v10;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437EA740();
  sub_2437EBAF4();
  if (v2)
  {
    goto LABEL_8;
  }

  v37 = v8;
  v38 = a1;
  v14 = v41;
  v15 = sub_2437EB974();
  result = sub_2437B5F3C(v15, 0);
  v20 = v9;
  if (v18 == v19 >> 1)
  {
LABEL_7:
    v29 = sub_2437EB8C4();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v31 = &type metadata for SimultaneousTransferError;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = OUTLINED_FUNCTION_2_12();
    v33(v32, v20);
    a1 = v38;
LABEL_8:
    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  if (v18 < (v19 >> 1))
  {
    sub_2437B5F84(v18 + 1, v19 >> 1, result, v17, v18, v19);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    v25 = v22 == v24 >> 1;
    v26 = v39;
    if (v25)
    {
      v27 = v14;
      sub_2437EA794();
      v28 = v37;
      sub_2437EB904();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DC0, &qword_2437F1A50);
      sub_2437EADB4(&qword_27ED86DE0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      sub_2437EB954();
      v34 = v40;
      swift_unknownObjectRelease();
      (*(v26 + 8))(v28, v4);
      (*(v34 + 8))(v13, v9);
      *v27 = v42;
      v35 = v38;
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    v20 = v9;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2437EACC0(uint64_t a1)
{
  v2 = *v1;
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  sub_2437EAD3C(v4, v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437EAD3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_2437EB724();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437EADB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86DC0, &qword_2437F1A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437EAE24()
{
  result = qword_27ED86DE8;
  if (!qword_27ED86DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86DE8);
  }

  return result;
}

unint64_t sub_2437EAE7C()
{
  result = qword_27ED86DF0;
  if (!qword_27ED86DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86DF0);
  }

  return result;
}

_BYTE *sub_2437EAEEC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437EAF88);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437EAFC0()
{
  result = qword_27ED928D0[0];
  if (!qword_27ED928D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED928D0);
  }

  return result;
}

unint64_t sub_2437EB018()
{
  result = qword_27ED92AE0[0];
  if (!qword_27ED92AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92AE0);
  }

  return result;
}

unint64_t sub_2437EB070()
{
  result = qword_27ED92BF0;
  if (!qword_27ED92BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92BF0);
  }

  return result;
}

unint64_t sub_2437EB0C8()
{
  result = qword_27ED92BF8[0];
  if (!qword_27ED92BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92BF8);
  }

  return result;
}

unint64_t sub_2437EB120()
{
  result = qword_27ED92C80;
  if (!qword_27ED92C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92C80);
  }

  return result;
}

unint64_t sub_2437EB178()
{
  result = qword_27ED92C88[0];
  if (!qword_27ED92C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92C88);
  }

  return result;
}