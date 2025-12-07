uint64_t sub_274E5D3D8()
{

  v0 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274E5D408()
{

  v0 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t _s5XOJIT5XOJITC11DylibHandleVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_30(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5XOJIT5XOJITC11DylibHandleVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_274E5D524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C0, &qword_2750C04F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274E5D5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C0, &qword_2750C04F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_274E61664@<X0>(char *a1@<X8>)
{
  result = XOJIT_Error_IsFailedToMaterialize(*(v1 + 16));
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = XOJIT_Error_IsUnsatisfiedSymbolDependencies(*(v1 + 16));
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t XOJITError.__deallocating_deinit()
{
  XOJITError.deinit();
  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t XOJITError.description.getter()
{
  v1 = XOJIT_Error_ToMessage(*(v0 + 16));
  if (!v1)
  {
    return 0x737365636375733CLL;
  }

  v2 = v1;
  v3 = sub_2750BF2A8();
  free(v2);
  return v3;
}

uint64_t sub_274E6179C(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t MemoryBuffer.__allocating_init(identifier:fromFile:)()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  MemoryBuffer.init(identifier:fromFile:)();
  return v0;
}

uint64_t MemoryBuffer.init(identifier:fromFile:)()
{
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = 0;
  v1 = sub_2750BF288();

  OUTLINED_FUNCTION_32();
  v2 = sub_2750BF288();

  swift_beginAccess();
  v3 = XOJIT_MemoryBuffer_CreateWithIdentifierFromPath((v1 + 32), (v2 + 32), (v0 + 16));
  swift_endAccess();

  if (v3)
  {
    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = v3;
    v4 = sub_274E61948();
    v5 = OUTLINED_FUNCTION_3(v4);
    OUTLINED_FUNCTION_28(v5, v6);
  }

  return v0;
}

unint64_t sub_274E61948()
{
  result = qword_2809A24A8;
  if (!qword_2809A24A8)
  {
    type metadata accessor for XOJITError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24A8);
  }

  return result;
}

uint64_t MemoryBuffer.__allocating_init(fromFile:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();

  OUTLINED_FUNCTION_32();
  MemoryBuffer.init(identifier:fromFile:)();
  return v2;
}

uint64_t MemoryBuffer.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    XOJIT_MemoryBuffer_Destroy(v1);
  }

  return v0;
}

uint64_t MemoryBuffer.__deallocating_deinit()
{
  MemoryBuffer.deinit();
  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E61A64()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E61AA4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;

  if (a2)
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = *(v3 + 40);
      type metadata accessor for XOJITError();
      v6 = swift_allocObject();
      *(v6 + 16) = a2;

      v4(v6);

      return sub_274E66B68(v4, v5);
    }

LABEL_11:
    __break(1u);
    return result;
  }
}

void XOJIT.__allocating_init(fromXPCConnection:oopJITLinkageType:opaqueOwner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_33();
  XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:)(v4, v5, a3);
}

void XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:)(void *a1, unint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v15[1] = *MEMORY[0x277D85DE8];
  v3[4] = 0;
  v3[2] = 0;
  v3[5] = 0;
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v8 = v3[4];
    v7 = v3[5];
  }

  v3[4] = 0;
  v3[5] = 0;
  sub_274E66B68(v8, v7);
  v3[3] = a3;
  OUTLINED_FUNCTION_1();
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v3;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    v13 = XOJIT_XOJIT_NoopMutatingCallback;
    v14 = unk_2809A2FC0;
    swift_unknownObjectRetain();
    XOJIT_XOJIT_CreateFromXPCWithOOPJITType(v11, v12, v13, v14, a1, a2, v15);
  }

  __break(1u);
}

void XOJIT.__allocating_init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(a1, a2, a3, a4, a5);
}

void XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  OUTLINED_FUNCTION_23();
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v12 = v5[4];
    v11 = v5[5];
  }

  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  swift_unknownObjectRetain();
  v13 = OUTLINED_FUNCTION_19();
  sub_274E66B78(v13, v14);
  sub_274E66B68(v12, v11);
  OUTLINED_FUNCTION_1();
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    XOJIT_XOJIT_CreateFromXPCWithOOPJITType(v17, v18, XOJIT_XOJIT_NoopMutatingCallback, unk_2809A2FC0, a1, a2, &v19);
  }

  __break(1u);
}

void XOJIT.__allocating_init(fromXPCConnection:opaqueOwner:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(a1, 1uLL, a2, 0, 0);
}

void XOJIT.__allocating_init()()
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  XOJIT.init()();
}

void XOJIT.init()()
{
  OUTLINED_FUNCTION_23();
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v1 = v0[4];
    v2 = v0[5];
  }

  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_274E66B68(v1, v2);
  OUTLINED_FUNCTION_1();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0;
  }

  XOJIT_XOJIT_CreateInProcess(v5, v6, XOJIT_XOJIT_NoopMutatingCallback, unk_2809A2FC0, &v7);
}

void XOJIT.__allocating_init(reportError:)()
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_32();
  XOJIT.init(reportError:)(v0, v1);
}

void XOJIT.init(reportError:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23();
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
  }

  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_274E66B78(a1, a2);
  v5 = OUTLINED_FUNCTION_19();
  sub_274E66B68(v5, v6);
  OUTLINED_FUNCTION_1();
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v2;
  }

  XOJIT_XOJIT_CreateInProcess(v9, v10, XOJIT_XOJIT_NoopMutatingCallback, unk_2809A2FC0, &v11);
}

void *XOJIT.deinit()
{
  v1 = sub_2750BF218();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25();
  v5 = v0[2];
  if (v5)
  {
    OUTLINED_FUNCTION_13();
    v6 = sub_2750BF1F8();
    v7 = sub_2750BF318();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_274E5C000, v6, v7, "Destroying XOJIT C++ instance...", v8, 2u);
      MEMORY[0x277C6A700](v8, -1, -1);
    }

    XOJIT_XOJIT_Destroy(v5);
    v9 = sub_2750BF1F8();
    v10 = sub_2750BF318();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_274E5C000, v9, v10, "Destroyed XOJIT C++ instance.", v11, 2u);
      MEMORY[0x277C6A700](v11, -1, -1);
    }

    (*(v3 + 8))(v0, v1);
  }

  swift_unknownObjectRelease();
  sub_274E66B68(v0[4], v0[5]);
  return v0;
}

uint64_t XOJIT.__deallocating_deinit()
{
  XOJIT.deinit();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE8D8](v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XOJIT.endSession()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (XOJIT_XOJIT_EndSession(v1))
    {
      type metadata accessor for XOJITError();
      OUTLINED_FUNCTION_5();
      v2 = swift_allocObject();
      v3 = OUTLINED_FUNCTION_40(v2);
      v4 = OUTLINED_FUNCTION_3(v3);
      OUTLINED_FUNCTION_15(v4, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::String __swiftcall XOJIT.getTargetTriple()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    XOJIT_XOJIT_GetTargetTriple(v1);

    v1 = sub_2750BF2A8();
  }

  else
  {
    __break(1u);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_274E6252C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = *(v2 + 16);
  if (result)
  {
    v6 = a1();
    type metadata accessor for XOJIT.JITDylib.JITDylibRef();
    OUTLINED_FUNCTION_5();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *a2 = v2;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XOJIT.objectLinkingLayer.getter@<X0>(void *a1@<X8>)
{
  result = *(v1 + 16);
  if (result)
  {
    ObjectLinkingLayer = XOJIT_XOJIT_GetObjectLinkingLayer(result);
    *a1 = v1;
    a1[1] = ObjectLinkingLayer;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E626A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unsigned int *))
{
  v7 = v6;
  v28 = *MEMORY[0x277D85DE8];
  v27 = -1;
  v8 = *(a5 + 16);
  if (v8)
  {
    v26 = MEMORY[0x277D84F90];
    sub_274E66D0C(0, v8, 0);
    v10 = v26;
    v11 = a5 + 40;
    do
    {
      v12 = sub_2750BF288();
      v13 = strdup((v12 + 32));

      v15 = *(v26 + 16);
      v14 = *(v26 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_274E66D0C((v14 > 1), v15 + 1, 1);
      }

      *(v26 + 16) = v16;
      *(v26 + 8 * v15 + 32) = v13;
      v11 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v16 = *(MEMORY[0x277D84F90] + 16);
  }

  v17 = *(v7 + 16);
  if (!v17)
  {
LABEL_15:
    __break(1u);
  }

  if (v16 >> 31)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = sub_2750BF288();
  v19 = sub_2750BF288();
  v20 = a6(v17, v18 + 32, v19 + 32, v16, v10 + 32, &v27);

  if (v20)
  {
    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = v20;
    v21 = sub_274E61948();
    v22 = OUTLINED_FUNCTION_3(v21);
    OUTLINED_FUNCTION_28(v22, v23);
  }

  else
  {
    v20 = v27;
  }

  sub_274E628AC(v10);

  return v20;
}

void sub_274E628AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      free(v3);
      --v1;
    }

    while (v1);
  }
}

llvm::orc::ExecutionSession *XOJIT.runNewInitializers(for:)(uint64_t a1)
{
  result = *(v1 + 16);
  if (result)
  {
    XOJIT_XOJIT_RunNewInitializers(result, *(*(a1 + 8) + 16));
  }

  __break(1u);
  return result;
}

uint64_t sub_274E62950()
{
  v1 = *v0;

  return v1;
}

uint64_t XOJIT.callOnAnyThread<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  sub_2750BF1B8();
  swift_allocObject();
  sub_2750BF1A8();
  v8 = sub_2750BF198();
  v10 = v9;

  if (!v6)
  {

    sub_274E62B2C(v8, v10, v5, v7);
  }

  return result;
}

void sub_274E62A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a2 - a1;
    if (!a1)
    {
      v6 = 0;
    }

    XOJIT_XOJIT_CallOnAnyThread(v5, a4, a1, v6);
  }

  __break(1u);
}

void sub_274E62B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;

  switch(v8)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
      }

      else
      {
        v13 = sub_2750BF1C8();
        if (!v13)
        {
LABEL_14:
          v16 = (a1 >> 32) - a1;
LABEL_15:
          v18 = sub_2750BF1D8();
          if (v18 >= v16)
          {
            v19 = v16;
          }

          else
          {
            v19 = v18;
          }

          v20 = (v19 + v13);
          if (v13)
          {
            v9 = v20;
          }

          else
          {
            v9 = 0;
          }

          v10 = v13;
LABEL_22:
          sub_274E62A50(v10, v9, a3, a4);
        }

        v17 = sub_2750BF1E8();
        if (!__OFSUB__(a1, v17))
        {
          v13 += a1 - v17;
          goto LABEL_14;
        }
      }

      __break(1u);
      return;
    case 2uLL:
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      v13 = sub_2750BF1C8();
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = sub_2750BF1E8();
      if (__OFSUB__(v11, v14))
      {
        goto LABEL_24;
      }

      v13 += v11 - v14;
LABEL_6:
      v15 = __OFSUB__(v12, v11);
      v16 = v12 - v11;
      if (v15)
      {
        __break(1u);
LABEL_9:

        sub_274E68484(0, 0, a3, a4);
      }

      goto LABEL_15;
    case 3uLL:
      goto LABEL_9;
    default:
      v21 = a1;
      v22 = a2;
      v23 = BYTE2(a2);
      v24 = BYTE3(a2);
      v25 = BYTE4(a2);
      v26 = BYTE5(a2);
      v9 = &v21 + BYTE6(a2);
      v10 = &v21;
      goto LABEL_22;
  }
}

void XOJIT.callOnAnyThread<A>(symbol:in:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v9 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24B0, &qword_2750C04C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2750C04A0;
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *(inited + 48) = 1;
  v14 = 1;
  v13 = 0;
  v12 = 5;

  XOJIT.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(inited, a1, a2, &v13, &v14, &v12);
}

void XOJIT.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(uint64_t a1, uint64_t a2, void x2_0, unsigned __int8 *x3_0, unsigned __int8 *a3, unsigned __int8 *a6)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v7 = *x3_0;
  v27 = *a3;
  v26 = *a6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v28[0] = MEMORY[0x277D84F90];
    sub_274E66DCC(0, v8, 0);
    v9 = v28[0];
    v11 = *(v28[0] + 16);
    v12 = 16 * v11;
    v13 = (a1 + 48);
    do
    {
      v14 = *v13;
      v15 = *(*(v13 - 1) + 16);
      v28[0] = v9;
      v16 = *(v9 + 3);
      v17 = v11 + 1;
      if (v11 >= v16 >> 1)
      {
        sub_274E66DCC((v16 > 1), v11 + 1, 1);
        v9 = v28[0];
      }

      *(v9 + 2) = v17;
      v18 = &v9[v12];
      *(v18 + 4) = v15;
      *(v18 + 10) = v14;
      v12 += 16;
      v13 += 24;
      v11 = v17;
      --v8;
    }

    while (v8);
    v6 = v25;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_274E66BAC(0, *(v9 + 2) + 1, 1, v9);
  }

  v20 = *(v9 + 2);
  v19 = *(v9 + 3);
  if (v20 >= v19 >> 1)
  {
    v9 = sub_274E66BAC((v19 > 1), v20 + 1, 1, v9);
  }

  *(v9 + 2) = v20 + 1;
  v21 = &v9[16 * v20 + 32];
  *v21 = 0;
  *(v21 + 8) = 1;
  v28[0] = 0;
  v28[1] = 0;
  v22 = *(v6 + 16);
  if (v22)
  {
    if (v26 >= 5)
    {
      v23 = 63;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_2750BF288();
    XOJIT_XOJIT_SymbolLookup(v22, v27, v9 + 4, (v24 + 32), v7, v23, v28);
  }

  __break(1u);
}

uint64_t XOJIT.loadDylib(_:)@<X0>(void *a2@<X8>)
{
  if (!*(v2 + 16))
  {
    __break(1u);
  }

  sub_2750BF288();
  v4 = OUTLINED_FUNCTION_39();
  Dylib = XOJIT_XOJIT_LoadDylib(v4, v5, v6);

  if (Dylib)
  {
    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = Dylib;
    v9 = sub_274E61948();
    v10 = OUTLINED_FUNCTION_3(v9);
    return OUTLINED_FUNCTION_20(v10, v11);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XOJIT.addNullableSymbolsFromPath(_:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2750BF288();
    v4 = XOJIT_AddNullableSymbolsFromPath(v2, (v3 + 32));

    if (v4)
    {
      type metadata accessor for XOJITError();
      OUTLINED_FUNCTION_5();
      v5 = swift_allocObject();
      v6 = OUTLINED_FUNCTION_40(v5);
      v7 = OUTLINED_FUNCTION_3(v6);
      OUTLINED_FUNCTION_15(v7, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t XOJIT.JITDylib.name.getter()
{
  XOJIT_JITDylib_GetName(*(*(v0 + 8) + 16));

  return sub_2750BF2A8();
}

uint64_t XOJIT.JITDylib.executionSession.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  result = *(*v1 + 16);
  if (result)
  {
    XOJIT_XOJIT_GetExecutionSession();
    *a1 = v2;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E632C0()
{
  XOJIT_JITDylib_Release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t XOJIT.loadLinkableFile(path:archives:identifier:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v22[0] = 0;
  v21 = 0;
  if (!a6)
  {
  }

  v9 = *(v6 + 16);
  if (!v9)
  {
    __break(1u);
  }

  v10 = sub_2750BF288();
  v11 = sub_2750BF288();

  v12 = XOJIT_XOJIT_LoadLinkableFile(v9, (v10 + 32), (v11 + 32), v8, v22, &v21);

  if (v12)
  {

    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = sub_274E61948();
    v16 = OUTLINED_FUNCTION_3(v15);
    OUTLINED_FUNCTION_20(v16, v17);
    return v14;
  }

  v18 = v22[0];
  if (v22[0])
  {
    v19 = v21;

    if (v19)
    {
      v20 = 2 * (v19 == 1);
    }

    else
    {
      v20 = 1;
    }

    type metadata accessor for MemoryBuffer();
    OUTLINED_FUNCTION_5();
    v14 = swift_allocObject();
    sub_274E6179C(v18);
    *a1 = v20;
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t XOJIT.ObjectLinkingLayer.add(object:name:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(v5 + 8);
  if (a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  type metadata accessor for LLVMMemoryBuffer();
  swift_initStackObject();

  v10 = OUTLINED_FUNCTION_33();
  sub_274E68B58(v10, v11, v8, v9);
  v12 = *(v6 + 16);
  v13 = sub_274E68B44();
  v14 = LLVMOrcObjectLayerAddObjectFile(v7, v12, v13);
  if (v14)
  {
    LLVMGetErrorMessage(v14);
  }
}

uint64_t XOJIT.ObjectLinkingLayer.add(object:to:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = *v2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E635E4()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_10(v3);
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_274E63698;

  return sub_274E637B8(sub_274E66E64, v0);
}

uint64_t sub_274E63698()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_274E68804, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_26();

    return v7();
  }
}

uint64_t sub_274E637B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E637CC()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_274E638B4;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_274E638B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_274E639DC;
  }

  else
  {

    v7 = sub_274E639B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_274E639DC()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_26();

  return v0();
}

void sub_274E63A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = *(*(a2 + 8) + 16);
    v7 = sub_274E61A64();
    v8 = a3(v4, v6, v7);
    if (v8)
    {
      LLVMGetErrorMessage(v8);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t XOJIT.ObjectLinkingLayer.linkArchive(archive:into:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = *v2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E63B28()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_10(v3);
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_274E63698;

  return sub_274E637B8(sub_274E66E7C, v0);
}

void sub_274E63BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  if (*(a3 + 16))
  {
    OUTLINED_FUNCTION_38();
    sub_274E61A64();
    v8 = OUTLINED_FUNCTION_22();

    a8(v8);
  }

  else
  {
    __break(1u);
  }
}

void XOJIT.ObjectLinkingLayer.linkArchive(archive:into:forceLoad:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v5 = *a3;
    v6 = *(*(a2 + 8) + 16);
    v7 = sub_274E61A64();
    v8 = XOJIT_XOJIT_LinkStaticArchiveWithForceLoad(v4, v6, v7, v5);
    if (v8)
    {
      LLVMGetErrorMessage(v8);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t XOJIT.ObjectLinkingLayer.linkArchive(archive:into:forceLoad:)(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = *a2;
  *(v4 + 80) = *a3;
  *(v4 + 40) = *v3;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E63D20()
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_10(v4);
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v1 + 64) = v6;
  *v6 = v1;
  v6[1] = sub_274E63DE8;

  return sub_274E637B8(sub_274E66EBC, v0);
}

uint64_t sub_274E63DE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_274E63F08, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_26();

    return v7();
  }
}

uint64_t sub_274E63F08()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_26();

  return v0();
}

uint64_t sub_274E63F64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    v11 = result;
    v12 = *(a6 + 16);
    v13 = sub_274E61A64();

    XOJIT_XOJIT_LinkStaticArchiveWithForceLoadAsync(v8, v12, v13, a8, v11, a2);
  }

  __break(1u);
  return result;
}

uint64_t _s5XOJIT10XOJITErrorC4KindO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_37();
  sub_2750BF398();
  OUTLINED_FUNCTION_31();
  return sub_2750BF3C8();
}

uint64_t sub_274E64110()
{
  OUTLINED_FUNCTION_37();
  sub_2750BF398();
  OUTLINED_FUNCTION_31();
  return sub_2750BF3C8();
}

void XOJIT.ExecutionSession.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(uint64_t a1, uint64_t a2, uint64_t x2_0, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a6)
{
  v7 = *a4;
  v8 = *a6;
  v11 = *a3;
  v10 = v7;
  v9 = v8;
  XOJIT.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(a1, a2, x2_0, &v11, &v10, &v9);
}

void XOJIT.ExecutionSession.createJITDylib(name:)()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 8);
  v5[0] = 0;
  v4 = sub_2750BF288();
  LLVMOrcExecutionSessionCreateJITDylib(v3, v5, (v4 + 32));
}

void XOJIT.ExecutionSession.createBareJITDylib(name:)()
{
  v3 = *(v2 + 8);
  v4 = sub_2750BF288();
  LLVMOrcExecutionSessionCreateBareJITDylib(v3, (v4 + 32));
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.name.setter()
{
  OUTLINED_FUNCTION_38();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.init(name:timestamp:currentVersion:compatibilityVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 28) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.init(name:timestamp:currentVersion:compatibilityVersion:loadKind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = a4;
  *(a7 + 24) = a5;
  *(a7 + 28) = v7;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.idDylib.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 28) = v3;
  *(a1 + 24) = v2;
}

__n128 XOJIT.MachOHeaderOptions.idDylib.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = a1[1].n128_u8[12];

  result = v6;
  *v1 = v6;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[12] = v4;
  v1[1].n128_u32[2] = v3;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.loadDylibs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.rpaths.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

__n128 XOJIT.MachOHeaderOptions.init(idDylib:loadDylibs:rpaths:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v11 = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u32[2];
  v9 = a1[1].n128_u8[12];

  result = v11;
  *a4 = v11;
  a4[1].n128_u64[0] = v7;
  a4[1].n128_u8[12] = v9;
  a4[1].n128_u32[2] = v8;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

uint64_t sub_274E6496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = *(a3 + 16);
      v9 = v13;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = *(a3 + 16);
      v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v11[0] = v9;
      v11[1] = a6;
      v12 = a7;
      XOJIT_MachOHeaderOptions_SetIDDylib(v8, v11);
LABEL_7:
    }
  }

  sub_2750BF328();
  if (!v7)
  {
    goto LABEL_7;
  }
}

void sub_274E64A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 16);
  v7[0] = a1;
  v7[1] = a5;
  v8 = a6;
  v9 = BYTE4(a6) & 1;
  XOJIT_MachOHeaderOptions_AddLoadDylib(v6, v7);
}

uint64_t sub_274E64ABC()
{
  XOJIT_MachOHeaderOptions_Destroy(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v1);
}

void XOJIT.createJITDylib(name:options:)(uint64_t result, void x1_0, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v17[0] = 0;
  if (v7)
  {
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = BYTE4(v6);
    v15 = v7;
    v16 = v8;
    type metadata accessor for XOJIT.MachOHeaderOptions.COptions();
    OUTLINED_FUNCTION_5();
    swift_allocObject();

    sub_274E6463C(&v11);
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_19();
    v10 = sub_2750BF288();
    XOJIT_XOJIT_CreateJITDylib(v9, (v10 + 32), 0, v17);
  }

  __break(1u);
  __break(1u);
}

void XOJIT.createBareJITDylib(name:)()
{
  v3 = *(v2 + 16);
  v4 = sub_2750BF288();
  LLVMOrcExecutionSessionCreateBareJITDylib(v3, (v4 + 32));
}

uint64_t XOJIT.setLoadableAtPathViaRegex(jd:regex:replacement:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(*(result + 8) + 16);
    v5 = sub_2750BF288();
    OUTLINED_FUNCTION_32();
    v6 = sub_2750BF288();
    XOJIT_XOJIT_SetLoadableAtPathViaRegex(v3, v4, (v5 + 32), (v6 + 32));
  }

  __break(1u);
  return result;
}

uint64_t XOJIT.ReplacementManager.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v2 = swift_allocObject();
  XOJIT.ReplacementManager.init(_:)(a1);
  return v2;
}

uint64_t XOJIT.ReplacementManager.init(_:)(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    XOJIT_CreateReplacementManager(result);
  }

  __break(1u);
  return result;
}

uint64_t XOJIT.ReplacementManager.deinit()
{
  XOJIT_DisposeReplacementManager(*(v0 + 24));

  return v0;
}

uint64_t XOJIT.ReplacementManager.__deallocating_deinit()
{
  XOJIT.ReplacementManager.deinit();
  v0 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t XOJIT.ReplacementManager.addWithReplacement(object:name:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  type metadata accessor for LLVMMemoryBuffer();
  swift_initStackObject();

  v6 = OUTLINED_FUNCTION_33();
  sub_274E68B58(v6, v7, v4, v5);
  sub_274E68B44();
  v8 = OUTLINED_FUNCTION_22();
  v11 = XOJIT_ReplacementManager_AddObjectFile(v8, v9, v10);
  if (v11)
  {
    LLVMGetErrorMessage(v11);
  }
}

uint64_t XOJIT.ReplacementManager.addWithReplacement(object:to:)()
{
  sub_274E61A64();
  v0 = OUTLINED_FUNCTION_22();
  result = XOJIT_ReplacementManager_AddObjectFile(v0, v1, v2);
  if (result)
  {
    LLVMGetErrorMessage(result);
  }

  return result;
}

uint64_t XOJIT.ReplacementManager.addWithReplacement(object:to:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E65088()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_274E65158;

  return sub_274E637B8(sub_274E66EF4, v3);
}

uint64_t sub_274E65158()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_274E65278, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_26();

    return v7();
  }
}

uint64_t sub_274E65278()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_26();

  return v0();
}

void sub_274E652D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v8 = *(a5 + 16);
  v9 = sub_274E61A64();

  XOJIT_ReplacementManager_AddObjectFileAsync(v7, v8, v9, a1, a2);
}

uint64_t XOJIT.ORCRuntimeBridge.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void XOJIT.ORCRuntimeBridge.jit_dlopen(name:)()
{
  if (*(*(v2 + 16) + 16))
  {
    sub_2750BF288();
    v3 = OUTLINED_FUNCTION_39();
    XOJIT_OrcRTJITDlopen(v3, v4, v5);
  }

  __break(1u);
}

uint64_t XOJIT.ORCRuntimeBridge.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t XOJIT.UVSymbolString.description.getter()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_21();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v8 = v1;
  OUTLINED_FUNCTION_21();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_274E66F00;
  *(v3 + 24) = v2;
  aBlock[4] = sub_274E66F08;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11();
  aBlock[2] = v4;
  aBlock[3] = &block_descriptor;
  v5 = _Block_copy(aBlock);
  swift_retain_n();

  XOJIT_SymbolString_WithStringRepresentationsDo(&v8, 1, v5);

  _Block_release(v5);
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    __break(1u);
  }

  v6 = *(v2 + 16);

  return v6;
}

uint64_t sub_274E65668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (!a1)
  {
    a2 = 0;
  }

  return sub_274E656A8(a1, a2, v3);
}

uint64_t sub_274E656A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_2750BF278();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2750BF268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2608, &qword_2750C0FD8);
  sub_274E68174(&qword_2809A2610, &qword_2809A2608, &qword_2750C0FD8, MEMORY[0x277D836F8]);
  result = sub_2750BF258();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    swift_beginAccess();
    *a3 = v7;
    a3[1] = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void XOJIT.UVSymbolString.withStringRepresentationDo(_:)()
{
  OUTLINED_FUNCTION_38();
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *v1;
  OUTLINED_FUNCTION_21();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v6[4] = sub_274E687C4;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  OUTLINED_FUNCTION_11();
  v6[2] = v4;
  v6[3] = &block_descriptor_20;
  v5 = _Block_copy(v6);

  XOJIT_SymbolString_WithStringRepresentationsDo(v7, 1, v5);
  _Block_release(v5);
}

uint64_t sub_274E658D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t XOJIT.UVSymbolString.hashValue.getter()
{
  sub_2750BF398();
  OUTLINED_FUNCTION_31();
  return sub_2750BF3C8();
}

uint64_t sub_274E659D0(uint64_t a1)
{
  v2 = *v1;
  sub_2750BF398();
  MEMORY[0x277C69990](v2);
  return sub_2750BF3C8();
}

void XOJIT.intern(_:)(size_t **a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = sub_2750BF288();
    v6 = XOJIT_XOJIT_Intern(v3, (v5 + 32));

    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t XOJIT.SymbolTableStream.Record.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XOJIT.SymbolTableStream.Record.name.setter()
{
  OUTLINED_FUNCTION_38();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

BOOL static XOJIT.SymbolTableStream.Record.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_2750BF338();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t XOJIT.SymbolTableStream.Record.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2750BF298();
  return MEMORY[0x277C699A0](v2);
}

uint64_t XOJIT.SymbolTableStream.Record.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2750BF398();
  sub_2750BF298();
  MEMORY[0x277C699A0](v1);
  return sub_2750BF3C8();
}

uint64_t sub_274E65C1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2750BF398();
  sub_2750BF298();
  MEMORY[0x277C699A0](v2);
  return sub_2750BF3C8();
}

uint64_t XOJIT.SymbolTableStream.makeAsyncIterator()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C0, &qword_2750C04F0);

  return MEMORY[0x2822003E0](v0);
}

uint64_t sub_274E65CC8()
{
  XOJIT.SymbolTableStream.makeAsyncIterator()();

  return sub_274E68110(v0);
}

uint64_t XOJIT.listenToSymbolTableStream()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24D0, &qword_2750C0500);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  (*(v11 + 104))(&v20 - v13, *MEMORY[0x277D85778], v9);
  v14 = *(type metadata accessor for XOJIT.SymbolTableStream(0) + 20);
  sub_2750BF2D8();
  v15 = OUTLINED_FUNCTION_33();
  v16(v15);
  (*(v5 + 16))(v8, a1 + v14, v3);
  type metadata accessor for XOJIT.Context(0);
  v17 = swift_allocObject();
  result = (*(v5 + 32))(v17 + OBJC_IVAR____TtCFC5XOJIT5XOJIT25listenToSymbolTableStreamFT_VS0_17SymbolTableStreamL_7Context_continuation, v8, v3);
  v19 = *(v1 + 16);
  if (v19)
  {

    XOJIT_XOJIT_GetObjectLinkingLayer(v19);
    XOJIT_SymbolTableCallbackPlugin_Create(sub_274E66308, sub_274E6636C, v17);
  }

  __break(1u);
  return result;
}

void sub_274E65F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v10[0] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_274E6816C;
  *(v7 + 24) = v6;
  v9[4] = sub_274E687C4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_274E658D8;
  v9[3] = &block_descriptor_202;
  v8 = _Block_copy(v9);

  XOJIT_SymbolString_WithStringRepresentationsDo(v10, 1, v8);

  _Block_release(v8);
}

uint64_t sub_274E66080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    a2 = 0;
  }

  return sub_274E660B4(a1, a2, a3, a4);
}

uint64_t sub_274E660B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2600, &qword_2750C0FD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = sub_2750BF278();
  MEMORY[0x28223BE20](v12 - 8);
  v24 = a1;
  v25 = a2;
  sub_2750BF268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2608, &qword_2750C0FD8);
  sub_274E68174(&qword_2809A2610, &qword_2809A2608, &qword_2750C0FD8, MEMORY[0x277D836F8]);
  result = sub_2750BF258();
  if (v14)
  {
    v22 = v8;
    v23 = v4;
    if (a3)
    {
      v15 = result;
      v16 = v14;
      v20[1] = OBJC_IVAR____TtCFC5XOJIT5XOJIT25listenToSymbolTableStreamFT_VS0_17SymbolTableStreamL_7Context_continuation;

      v24 = v15;
      v25 = v16;
      v17 = v27;
      v26 = v27;

      v21 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
      sub_2750BF2E8();
      v18 = *(v9 + 8);
      v19 = v22;
      v18(v11, v22);
      v24 = v21;
      v25 = v16;
      v26 = v17;
      sub_2750BF2E8();

      return (v18)(v11, v19);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_274E6630C(uint64_t result)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
    sub_2750BF2F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XOJIT.addSymbolTableCallback(_:)(uint64_t a1, uint64_t a2)
{
  _s5XOJIT5XOJITC7ContextCMa_0();
  OUTLINED_FUNCTION_21();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = result;

    XOJIT_XOJIT_GetObjectLinkingLayer(v6);
    XOJIT_SymbolTableCallbackPlugin_Create(sub_274E6649C, sub_274E664AC, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_274E66424(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(result + 16);

    v6 = a2;
    v5(&v6, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E664A0(uint64_t result)
{
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_274E664B4()
{
  v1 = sub_2750BF218();
  OUTLINED_FUNCTION_7();
  v16 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_25();
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24E0, &qword_2750C0508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2750C04A0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000002750DEF70;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = 0;
  sub_2750BF238();
  v7 = sub_2750BF228();

  [v5 registerDefaults_];

  v8 = [v4 standardUserDefaults];
  v9 = sub_2750BF248();
  v10 = [v8 integerForKey_];

  if (v10 <= 0)
  {
    v11 = sysconf(58);
    if (v11 < 0)
    {
      OUTLINED_FUNCTION_13();
      v12 = sub_2750BF1F8();
      v13 = sub_2750BF318();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = 8;
        _os_log_impl(&dword_274E5C000, v12, v13, "failed to determine cpu count; limiting to %ld threads", v14, 0xCu);
        MEMORY[0x277C6A700](v14, -1, -1);
      }

      (*(v16 + 8))(v0, v1);
      return 8;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

uint64_t sub_274E667B0()
{
  sub_274E66740();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E66808(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)()))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2618, &qword_2750C0FE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2620, &qword_2750C0FE8);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + *(*v8 + 88), v7, v4);

  a2(v9, sub_274E66A84);
}

uint64_t sub_274E66960(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      type metadata accessor for XOJITError();
      v3 = swift_allocObject();
      *(v3 + 16) = a2;
      sub_274E61948();
      swift_allocError();
      *v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2618, &qword_2750C0FE0);
      sub_2750BF2B8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2618, &qword_2750C0FE0);
      sub_2750BF2C8();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E66A88()
{
  v1 = OBJC_IVAR____TtCFC5XOJIT5XOJIT25listenToSymbolTableStreamFT_VS0_17SymbolTableStreamL_7Context_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E66B30()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E66B68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274E66B78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_274E66BAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2628, &qword_2750C0FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_274E66CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2630, &qword_2750C0FF8);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

char *sub_274E66D0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274E68284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_274E66D2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
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

char *sub_274E66DCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274E68384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_274E66E10()
{
  result = qword_2809A24B8;
  if (!qword_2809A24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24B8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274E66F90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274E66FF0()
{
  result = qword_2809A24E8;
  if (!qword_2809A24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24E8);
  }

  return result;
}

unint64_t sub_274E67048()
{
  result = qword_2809A24F0;
  if (!qword_2809A24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24F0);
  }

  return result;
}

unint64_t sub_274E670A0()
{
  result = qword_2809A24F8;
  if (!qword_2809A24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24F8);
  }

  return result;
}

unint64_t sub_274E670F8()
{
  result = qword_2809A2500;
  if (!qword_2809A2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2500);
  }

  return result;
}

unint64_t sub_274E67150()
{
  result = qword_2809A2508;
  if (!qword_2809A2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2508);
  }

  return result;
}

unint64_t sub_274E671A8()
{
  result = qword_2809A2510;
  if (!qword_2809A2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2510);
  }

  return result;
}

unint64_t sub_274E67200()
{
  result = qword_2809A2518;
  if (!qword_2809A2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2518);
  }

  return result;
}

unint64_t sub_274E67258()
{
  result = qword_2809A2520;
  if (!qword_2809A2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2520);
  }

  return result;
}

unint64_t sub_274E672B0()
{
  result = qword_2809A2528;
  if (!qword_2809A2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2528);
  }

  return result;
}

unint64_t sub_274E67308()
{
  result = qword_2809A2530;
  if (!qword_2809A2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2530);
  }

  return result;
}

unint64_t sub_274E67360()
{
  result = qword_2809A2538;
  if (!qword_2809A2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2538);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_274E67620(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_30(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_30(v8);
}

_BYTE *sub_274E676A4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_29(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XOJIT.SymbolState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for XOJIT.SymbolState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_274E67950(uint64_t *a1, int a2)
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

uint64_t sub_274E67990(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_274E679F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_274E67A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_274E67AA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_274E67AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274E67B38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_30(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_30(v8);
}

_BYTE *sub_274E67BBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_29(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XOJIT.UVSymbolString(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XOJIT.UVSymbolString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_274E67E34(uint64_t a1)
{
  sub_274E686F4(319, &qword_2809A2560, &type metadata for XOJIT.SymbolTableStream.Record, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_274E686F4(319, qword_2809A2568, &type metadata for XOJIT.SymbolTableStream.Record, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_274E67F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_274E67F54(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_274E67FA8(uint64_t a1)
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

void sub_274E6805C(uint64_t a1)
{
  sub_274E686F4(319, qword_2809A2568, &type metadata for XOJIT.SymbolTableStream.Record, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_274E68110(uint64_t a1)
{
  v2 = type metadata accessor for XOJIT.SymbolTableStream(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274E68174(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_274E681BC(uint64_t a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 52))
  {
    v2 = 0;
  }

  sub_274E64A68(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v2 | *(v1 + 48));
}

double sub_274E68224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(*(v3 + 16) + 16);
  v7[0] = a1;
  v7[1] = *(v3 + 40);
  v8 = v4;
  return XOJIT_MachOHeaderOptions_SetIDDylib(v5, v7);
}

char *sub_274E68284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2640, &qword_2750C1000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_274E68384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2628, &qword_2750C0FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_274E68484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  sub_274E62A50(&v4, &v4 + BYTE6(a2), a3, a4);
}

uint64_t orc_rt_CWrapperFunctionResultGetOutOfBandError(void *a1)
{
  if (a1[1])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

void orc_rt_DisposeCWrapperFunctionResult(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 9)
  {
    v2 = *a1;
LABEL_3:
    free(v2);
    return;
  }

  if (!v1)
  {
    v2 = *a1;
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

unint64_t sub_274E6854C()
{
  result = qword_2809A2638;
  if (!qword_2809A2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2638);
  }

  return result;
}

uint64_t sub_274E685D0(uint64_t a1, int a2)
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

uint64_t sub_274E68610(uint64_t result, int a2, int a3)
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

uint64_t sub_274E6865C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274E6867C(uint64_t result, int a2, int a3)
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

void sub_274E686F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return MEMORY[0x2821FEB58](a1, XOJIT_XOJIT_GetExecutionSession);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_10(uint64_t a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{

  return MEMORY[0x282200DE8](0x6C7070612E6D6F63, 0xEF54494A4F582E65, 0x54494A4F58, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return LLVMDisposeErrorMessage(v0);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_23()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[5] = 0;
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x277C69990);
}

void OUTLINED_FUNCTION_34()
{
  *(v4 - 128) = v1;
  *(v4 - 124) = v2;
  *(v4 - 120) = v3;
  *(v4 - 112) = v0;
}

unint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_274E61948();
}

uint64_t sub_274E68B44()
{
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E68B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2750BF288();

  v8 = LLVMCreateMemoryBufferWithMemoryRange(a1, v6, (v7 + 32));

  *(v4 + 16) = v8;
  return v4;
}

uint64_t sub_274E68BF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    LLVMDisposeMemoryBuffer(v1);
  }

  return v0;
}

uint64_t sub_274E68C14()
{
  sub_274E68BF0();

  return MEMORY[0x2821FE8D8](v0);
}

_DWORD *libcd_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x100uLL, 0x10F204024BF9B0EuLL);
  *v2 = a1;
  v2[18] = 0;
  v2[4] = 0;
  v2[34] = 0;
  *(v2 + 13) = 0;
  *(v2 + 14) = 0;
  v3 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  *(v2 + 20) = v3;
  *v3 = 2;
  v2[42] = 1;
  *(v2 + 22) = malloc_type_calloc(1uLL, 0x1CuLL, 0x1000040F1E6FBC0uLL);
  *(v2 + 224) = 0;
  return v2;
}

void libcd_free(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 96));
    for (i = *(a1 + 192); ; *(a1 + 104) = *i)
    {
      free(i);
      i = *(a1 + 104);
      if (!i)
      {
        break;
      }
    }

    while (1)
    {
      v3 = *(a1 + 112);
      if (!v3)
      {
        break;
      }

      *(a1 + 112) = *v3;
      free(v3);
    }

    free(*(a1 + 160));
    free(*(a1 + 176));
    libcd_reset_write_method(a1);
    libcd_reset_read_method(a1);

    free(a1);
  }
}

uint64_t libcd_reset_write_method(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (v1 == 1)
    {
      *(result + 24) = -1;
      goto LABEL_11;
    }

    if (v1 != 2)
    {
      goto LABEL_11;
    }
  }

  *(result + 32) = 0;
LABEL_9:
  *(result + 24) = 0;
LABEL_11:
  *(result + 16) = 0;
  *(result + 56) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t libcd_reset_read_method(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      *(result + 80) = -1;
      goto LABEL_9;
    }

    if (v1 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v1 == 3 || v1 == 4)
  {
LABEL_7:
    *(result + 80) = 0;
  }

LABEL_9:
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t libcd_set_hash_types(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    v8 = a2;
    while (1)
    {
      v9 = *v8++;
      if (!_libcd_get_hash_info(v9))
      {
        return 1;
      }

      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_7:
    v10 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    *(a1 + 160) = v10;
    memcpy(v10, a2, 4 * v6);
    *(a1 + 168) = a3;
    v11 = malloc_type_realloc(*(a1 + 176), 28 * v6, 0x1000040F1E6FBC0uLL);
    *(a1 + 176) = v11;
    bzero(v11, 28 * v6);
    return 0;
  }
}

void *_libcd_get_hash_info(int a1)
{
  if (a1 < 3)
  {
    result = (&_known_hash_types + 16 * a1);
    if (*result < 0x21uLL)
    {
      return result;
    }

    _libcd_err_log("%s: internal error, hash len (%d) is larger than max known hash len (%d)\n");
  }

  else
  {
    _libcd_err_log("%s: unknown hash type %d (>= %d)\n");
  }

  return 0;
}

uint64_t libcd_set_input_mem(uint64_t a1, uint64_t a2)
{
  result = libcd_reset_read_method(a1);
  *(a1 + 72) = 2;
  *(a1 + 64) = _libcd_read_page_mem;
  *(a1 + 80) = a2;
  *(a1 + 88) = 1;
  return result;
}

size_t _libcd_read_page_mem(void *a1, int a2, uint64_t a3, size_t a4, void *a5)
{
  v6 = a4;
  v9 = a1[10];
  bzero(a5, a4);
  if (v6 + a3 > *a1)
  {
    v6 = *a1 - a3;
  }

  memcpy(a5, (v9 + a3), v6);
  return v6;
}

uint64_t libcd_set_output_mem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = libcd_reset_write_method(a1);
  *(a1 + 16) = 2;
  *(a1 + 8) = _libcd_write_mem;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + a3;
  *(a1 + 56) = 1;
  return result;
}

size_t _libcd_write_mem(void *a1, uint64_t a2, void *__src, size_t __n)
{
  v4 = a1[3];
  v5 = a1[6] + a2;
  v6 = a1[4] - v4;
  if (v5 + __n <= v6)
  {
    v7 = __n;
    memcpy((v4 + v5), __src, __n);
    a1[5] += v7;
  }

  else
  {
    _libcd_err_log("%s: write beyond end: %zu > %zu\n", "_libcd_write_mem", v5 + __n, v6);
    return 0;
  }

  return v7;
}

uint64_t libcd_set_linkage(uint64_t a1, int a2, __int128 *a3)
{
  v4 = a2;
  if (_libcd_get_hash_info(a2))
  {
    result = 0;
    *(a1 + 224) = 1;
    *(a1 + 225) = v4;
    v7 = *a3;
    *(a1 + 242) = *(a3 + 4);
    *(a1 + 226) = v7;
  }

  else
  {
    _libcd_err_log("%s: unknown linkage hash type\n", "libcd_set_linkage");
    return 1;
  }

  return result;
}

void _libcd_err_log(char *a1, ...)
{
  va_start(va, a1);
  v1 = 0;
  vasprintf(&v1, a1, va);
  if (v1)
  {
    _configured_log_writer(v1);
    free(v1);
  }
}

size_t libcd_cd_size(uint64_t a1, int a2)
{
  hash_info = _libcd_get_hash_info(a2);
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = strlen(v4) + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = strlen(v6) + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 88;
  if (*(a1 + 224))
  {
    v8 = 108;
  }

  v9 = v5 + v7 + v8;
  if (*(a1 + 224))
  {
    v9 += 20;
  }

  return v9 + (*(a1 + 120) + ((*a1 + 4095) >> 12)) * *hash_info;
}

uint64_t libcd_superblob_size(uint64_t a1)
{
  if (*(a1 + 168))
  {
    v2 = 0;
    v3 = 12;
    do
    {
      v3 += libcd_cd_size(a1, *(*(a1 + 160) + 4 * v2++));
    }

    while (v2 < *(a1 + 168));
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 12;
  }

  for (i = *(a1 + 104); i; i = *i)
  {
    v3 += i[3];
    LODWORD(v2) = v2 + 1;
  }

  v5 = *(a1 + 128);
  v6 = v5 == 0;
  v7 = v5 + v3;
  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v2 + 1;
  }

  return v7 + 8 * v8;
}

uint64_t libcd_serialize_as_type(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64) || !*(a1 + 72))
  {
    _libcd_err_log("%s: No read page method set\n", "libcd_serialize_as_type");
    return 2;
  }

  if (!*(a1 + 8) || !*(a1 + 16))
  {
    _libcd_err_log("%s: No write method set\n", a2);
    return 1;
  }

  *(a1 + 40) = 0;
  v3 = (a1 + 104);
  v4 = *(a1 + 168) - 1;
  v5 = (a1 + 104);
  do
  {
    v5 = *v5;
    ++v4;
  }

  while (v5);
  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v4;
  }

  if (!v7)
  {
    _libcd_err_log("%s: nothing to serialize\n", "libcd_serialize_as_type");
    return 5;
  }

  v31[0] = bswap32(a2);
  v31[1] = bswap32(libcd_superblob_size(a1));
  v31[2] = bswap32(v7);
  if (!(*(a1 + 8))(a1, *(a1 + 40), v31, 12))
  {
    _libcd_err_log("%s: serialize superblob header failed\n", v8);
    return 1;
  }

  if (v6)
  {
    v9 = v4 + 1;
  }

  else
  {
    v9 = v4;
  }

  v10 = 8 * v9;
  v11 = 8 * v9 + 12;
  v12 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v13 = v12;
  if (*(a1 + 168))
  {
    v14 = 0;
    v15 = v12 + 1;
    do
    {
      v16 = v14 + 4095;
      if (!v14)
      {
        v16 = 0;
      }

      *(v15 - 1) = bswap32(v16);
      *v15 = bswap32(v11);
      v17 = *(*(a1 + 160) + 4 * v14++);
      v11 += libcd_cd_size(a1, v17);
      v15 += 2;
    }

    while (v14 < *(a1 + 168));
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v20 = *v3;
  if (*v3)
  {
    v21 = &v13[8 * v14 + 4];
    do
    {
      *(v21 - 1) = bswap32(*(v20 + 2));
      *v21 = bswap32(v11);
      v11 += *(v20 + 6);
      v20 = *v20;
      LODWORD(v14) = v14 + 1;
      v21 += 8;
    }

    while (v20);
  }

  if (*(a1 + 128))
  {
    v22 = &v13[8 * v14];
    *v22 = 256;
    *(v22 + 1) = bswap32(v11);
  }

  if (!(*(a1 + 8))(a1, *(a1 + 40), v13, v10))
  {
    _libcd_err_log("%s: serialize superblob indices failed\n");
    goto LABEL_50;
  }

  free(v13);
  if (!*(a1 + 168))
  {
    goto LABEL_40;
  }

  v23 = 0;
  do
  {
    v24 = _libcd_serialize_cd(a1, *(*(a1 + 160) + 4 * v23));
    if (v24)
    {
      v18 = v24;
      _libcd_err_log("%s: serialize code directory type %d failed, error %d\n", "libcd_serialize_as_type", *(*(a1 + 160) + 4 * v23), v24);
      return v18;
    }

    ++v23;
  }

  while (v23 < *(a1 + 168));
  do
  {
LABEL_40:
    v3 = *v3;
    if (!v3)
    {
      v26 = *(a1 + 128);
      if (!v26)
      {
        return 0;
      }

      v27 = malloc_type_calloc(1uLL, v26, 0xEFBE620uLL);
      if (!v27)
      {
        v29 = *(a1 + 128);
        v30 = __error();
        _libcd_err_log("%s: serialize signature space(%zu) failed allocating space (%d)\n", "libcd_serialize_as_type", v29, *v30);
        return 6;
      }

      v13 = v27;
      v28 = *(a1 + 136);
      if (v28 == 4)
      {
        if ((*(*(a1 + 144) + 16))())
        {
LABEL_46:
          if ((*(a1 + 8))(a1, *(a1 + 40), v13, *(a1 + 128)))
          {
            free(v13);
            return 0;
          }

          _libcd_err_log("%s: serialize signature space (%zu) failed\n");
LABEL_50:
          free(v13);
          return 1;
        }
      }

      else if (v28 != 3 || ((*(a1 + 144))(a1, *(a1 + 152), *(a1 + 128), v27) & 1) != 0)
      {
        goto LABEL_46;
      }

      _libcd_err_log("%s: Failed to generate signature\n", "libcd_serialize_as_type");
      free(v13);
      return 4;
    }
  }

  while ((*(a1 + 8))(a1, *(a1 + 40), v3[2], v3[3]));
  _libcd_err_log("%s: serialize raw blob data, slot %#x, failed\n", v25);
  return 1;
}

uint64_t _libcd_serialize_cd(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x277D85DE8];
  hash_info = _libcd_get_hash_info(a2);
  v5 = libcd_cd_size(a1, a2);
  v6 = malloc_type_calloc(1uLL, v5, 0x5D0887uLL);
  if (v6)
  {
    v7 = v6;
    v6->i32[0] = 34397946;
    v8 = libcd_cd_size(a1, a2);
    v9 = *(a1 + 224);
    if (*(a1 + 224))
    {
      v10 = 393728;
    }

    else
    {
      v10 = 262656;
    }

    v7->i32[1] = bswap32(v8);
    v7->i32[2] = v10;
    v7->i32[3] = bswap32(*(a1 + 92));
    if (v9)
    {
      v11 = 108;
    }

    else
    {
      v11 = 88;
    }

    v12 = *(a1 + 96);
    if (v12)
    {
      v7[1].i32[1] = v11 << 24;
      v11 += strlen(v12) + 1;
    }

    v13 = *(a1 + 120);
    v14 = *a1;
    v15 = bswap32((*a1 + 4095) >> 12);
    v7[1].i32[2] = bswap32(v13);
    v7[1].i32[3] = v15;
    v44 = v5;
    if (HIDWORD(v14))
    {
      v7[3].i64[1] = bswap64(v14);
    }

    else
    {
      v7[2].i32[0] = bswap32(v14);
    }

    v17 = *hash_info;
    v7[2].i8[4] = *hash_info;
    v7[2].i8[5] = a2;
    v7[2].i8[6] = *(a1 + 184);
    v7[2].i8[7] = 12;
    v18 = *(a1 + 192);
    if (v18)
    {
      v7[3].i32[0] = bswap32(v11);
      v11 += strlen(v18) + 1;
    }

    v7[4] = vrev64q_s8(*(a1 + 200));
    v7[5].i64[0] = bswap64(*(a1 + 216));
    if (v9)
    {
      v7[6].i8[0] = *(a1 + 225);
      if (*(a1 + 246) == 1)
      {
        v19 = *(a1 + 247);
        v20 = bswap32(*(a1 + 248)) >> 16;
      }

      else
      {
        LOWORD(v20) = 0;
        v19 = 1;
      }

      v7[6].i8[1] = v19;
      v7[6].i16[1] = v20;
      v7[6].i32[1] = bswap32(v11);
      v7[6].i32[2] = 335544320;
      v11 += 20;
      v21 = 27;
    }

    else
    {
      v21 = 22;
    }

    v7[1].i32[0] = bswap32(v11 + v13 * v17);
    v22 = &v7->i32[v21];
    if (v12)
    {
      v23 = strlen(v12) + 1;
      memcpy(v22, v12, v23);
      v22 = (v22 + v23);
      v18 = *(a1 + 192);
    }

    if (v18)
    {
      v24 = strlen(v18) + 1;
      memcpy(v22, v18, v24);
      v22 = (v22 + v24);
    }

    if (*(a1 + 224) == 1)
    {
      v25 = *(a1 + 226);
      v22[4] = *(a1 + 242);
      *v22 = v25;
      v22 += 5;
    }

    if (*(a1 + 120))
    {
      v26 = (hash_info[1])();
      MEMORY[0x28223BE20](v26);
      v28 = &v43 - v27;
      v29 = malloc_type_calloc(*(a1 + 120), *hash_info, 0x7426B6D8uLL);
      for (i = *(a1 + 112); i; i = *i)
      {
        ccdigest_init();
        ccdigest_update();
        (*(v26 + 56))(v26, v28, &v29[*hash_info * (*(a1 + 120) - *(i + 2))]);
      }

      memcpy(v22, v29, *hash_info * *(a1 + 120));
      free(v29);
    }

    v31 = *a1 + 4095;
    v45 = 0;
    v32 = (v31 >> 12);
    if ((v31 >> 12))
    {
      v33 = 0;
      do
      {
        v45 = _libcd_hash_page(a1);
        if (v45)
        {
          v34 = 1;
        }

        else
        {
          v34 = v32 - 1 == v33;
        }

        ++v33;
      }

      while (!v34);
    }

    if (v45)
    {
      _libcd_err_log("%s: serialize page hashes failed\n", "_libcd_serialize_cd");
      free(v7);
      return v45;
    }

    else if ((*(a1 + 8))(a1, *(a1 + 40), v7, v44))
    {
      v35 = (hash_info[1])();
      MEMORY[0x28223BE20](v35);
      v37 = &v43 - v36;
      v38 = malloc_type_calloc(1uLL, *hash_info, 0xC6665FD8uLL);
      if (v38)
      {
        v39 = v38;
        ccdigest_init();
        ccdigest_update();
        (*(v35 + 56))(v35, v37, v39);
        v40 = *(a1 + 168);
        if (v40)
        {
          v41 = *(a1 + 176);
          while (*(v41 + 24) == 1)
          {
            if (*v41 == a2)
            {
              goto LABEL_52;
            }

            v41 += 28;
            if (!--v40)
            {
              goto LABEL_53;
            }
          }

          *v41 = a2;
          *(v41 + 24) = 1;
LABEL_52:
          v42 = *v39;
          *(v41 + 20) = v39[4];
          *(v41 + 4) = v42;
        }

LABEL_53:
        free(v39);
        free(v7);
        return 0;
      }

      else
      {
        _libcd_err_log("%s: Failed to allocated memory for cdhash\n", "_libcd_serialize_cd");
        free(v7);
        return 6;
      }
    }

    else
    {
      _libcd_err_log("%s: failed to write directory\n", "_libcd_serialize_cd");
      free(v7);
      return 1;
    }
  }

  else
  {
    _libcd_err_log("%s: Failed to allocate temporary memory for code directory\n", "_libcd_serialize_cd");
    return 6;
  }
}

uint64_t _libcd_hash_page(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v17 = *MEMORY[0x277D85DE8];
  memset(__src, 0, sizeof(__src));
  v11 = (*(v4 + 8))();
  MEMORY[0x28223BE20](v11);
  v13 = &v15[-v12];
  bzero(v15, 0x1000uLL);
  if ((*(v10 + 64))(v10, v9, v9 << 12, 4096, v15))
  {
    ccdigest_init();
    ccdigest_update();
    (*(v11 + 56))(v11, v13, __src);
    memcpy(v3, __src, *v5);
    return 0;
  }

  else
  {
    _libcd_err_log("%s: read page %d at pos %zu failed (pages: %d)\n", "_libcd_hash_page", v9, v9 << 12, v7);
    return 2;
  }
}

void xojit::ReplacementManager::ReplacementManager(xojit::ReplacementManager *this, llvm::orc::ObjectLinkingLayer *a2, llvm::orc::ExecutorProcessControl *a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  operator new();
}

uint64_t llvm::orc::ObjectLinkingLayer::addPlugin(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 24));
  v5 = *(a1 + 176);
  v4 = *(a1 + 184);
  if (v5 >= v4)
  {
    v8 = *(a1 + 168);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v22[4] = a1 + 168;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1 + 168, v14);
    }

    v15 = v10;
    v16 = (8 * v10);
    v17 = *a2;
    *a2 = 0;
    v18 = &v16[-v15];
    *v16 = v17;
    v7 = v16 + 1;
    memcpy(v18, v8, v9);
    v19 = *(a1 + 168);
    *(a1 + 168) = v18;
    *(a1 + 176) = v7;
    v20 = *(a1 + 184);
    *(a1 + 184) = 0;
    v22[2] = v19;
    v22[3] = v20;
    v22[0] = v19;
    v22[1] = v19;
    std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  *(a1 + 176) = v7;
  std::mutex::unlock((a1 + 24));
  return a1;
}

uint64_t llvm::orc::ExecutionSession::dispatchTask(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 72) + 24);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (*(*v2 + 16))(v2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t xojit::ReplacementManager::addWithReplacement@<X0>(uint64_t *a1@<X0>, std::string::size_type a2@<X1>, std::string::size_type *a3@<X2>, int32x2_t *a4@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 8);
  v9 = *(*a3 + 8);
  v10 = *(*a3 + 16) - v9;
  v11 = (*(**a3 + 16))();
  *v80 = v9;
  *&v80[8] = v10;
  *&v80[16] = v11;
  *&v80[24] = v12;
  llvm::orc::getObjectFileInterface(v8, v80, &v83);
  if ((v87 & 1) == 0)
  {
    v14 = *(*a1 + 8);
    v15 = v86;
    v79 = v86;
    if (v86 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v86 + 8), 1uLL);
      v15 = v79;
    }

    if (v15)
    {
      v16 = *v15;
      *v80 = &v80[24];
      *&v80[8] = xmmword_2750C1200;
      llvm::SmallVectorImpl<char>::append<char const*,void>(v80, (v15 + 16), (v15 + 16 + v16));
      v17 = a1[10];
      a1[10] = v17 + 1;
      std::to_string(&v77, v17);
      v18 = std::string::insert(&v77, 0, "$", 1uLL);
      v19 = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v80, p_p, p_p + size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      llvm::orc::ExecutionSession::intern(v14, *v80, *&v80[8], &__p);
      v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v83, &v79)[4];
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v83, &__p)[4] = v22;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::erase(&v83, &v79);
      if (v86 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v86 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v86 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 1uLL);
        if (__p.__r_.__value_.__r.__words[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      if (*v80 != &v80[24])
      {
        free(*v80);
      }

      v23 = v79;
    }

    else
    {
      v23 = 0;
    }

    v66 = v14;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    std::mutex::lock((a1 + 2));
    v24 = (*(**a3 + 16))();
    v26 = v25;
    __p.__r_.__value_.__r.__words[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct(a1 + 11, &__p);
    v28 = v27;
    *&v29 = 0;
    v81 = 0u;
    memset(v82, 0, sizeof(v82));
    v67 = 0u;
    *v80 = v29;
    *&v80[16] = 0u;
    v68 = 0;
    v69 = 0uLL;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v30 = llvm::StringMapImpl::LookupBucketFor((v27 + 2), v24, v26);
    v31 = *(v28 + 1);
    v32 = v30;
    v33 = *(v31 + 8 * v30);
    if (v33 == -8)
    {
      --v28[6];
    }

    else if (v33)
    {
      goto LABEL_39;
    }

    v34 = operator new(v26 + 105, 8uLL);
    v37 = v34;
    v38 = v34 + 104;
    if (v26)
    {
      memcpy(v34 + 104, v24, v26);
    }

    *&v36 = 0;
    v38[v26] = 0;
    v39 = v67;
    *v37 = v26;
    *(v37 + 1) = v39;
    v40 = *(&v67 + 1);
    v67 = v36;
    *(v37 + 2) = v40;
    *(v37 + 6) = v68;
    v68 = 0;
    *(v37 + 4) = v69;
    v41 = *(&v69 + 1);
    v69 = v36;
    *(v37 + 5) = v41;
    *(v37 + 12) = v70;
    v70 = 0;
    *(v37 + 7) = v71;
    v71 = 0;
    *(v37 + 8) = v72;
    v72 = 0;
    *(v37 + 18) = v73;
    v73 = 0;
    *(v37 + 10) = v74;
    v74 = 0;
    *(v37 + 11) = v75;
    v75 = 0;
    *(v37 + 24) = v76;
    v76 = 0;
    *(v31 + 8 * v32) = v37;
    ++v28[5];
    for (i = (*(v28 + 1) + 8 * llvm::StringMapImpl::RehashTable((v28 + 2), v32, v35)); ; ++i)
    {
      v33 = *i;
      if (*i && v33 + 1 != 0)
      {
        break;
      }
    }

LABEL_39:
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v74);
    MEMORY[0x277C69E30](v74, 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v71);
    MEMORY[0x277C69E30](v71, 8);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v69);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v67);
    MEMORY[0x277C69E30](v67, 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v82[1] + 8);
    MEMORY[0x277C69E30](*(&v82[1] + 1), 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(v82);
    MEMORY[0x277C69E30](*&v82[0], 8);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v80[24]);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(v80);
    MEMORY[0x277C69E30](*v80, 8);
    if (v84)
    {
      if (v85)
      {
        v44 = 16 * v85;
        v45 = v83;
        while ((**&v45 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          *&v45 += 16;
          v44 -= 16;
          if (!v44)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v45 = v83;
      }

      v62 = *&v83 + 16 * v85;
LABEL_68:
      if (*&v45 != v62)
      {
        *v80 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33 + 1, *&v45, v80) & 1) != 0 || (*v80 = 0, (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33 + 4, *&v45, v80)) || (*v80 = 0, llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33 + 7, *&v45, v80)))
        {
          *(*&v45 + 9) |= 2u;
        }

        while (1)
        {
          *&v45 += 16;
          if (*&v45 == v62)
          {
            break;
          }

          if ((**&v45 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_68;
          }
        }
      }
    }

LABEL_44:
    v46 = a1[10];
    a1[10] = v46 + 1;
    std::to_string(&__p, v46);
    v47 = std::string::insert(&__p, 0, "__replacement_tag$", 0x12uLL);
    v48 = v47->__r_.__value_.__r.__words[2];
    *v80 = *&v47->__r_.__value_.__l.__data_;
    *&v80[16] = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (v80[23] >= 0)
    {
      v49 = v80;
    }

    else
    {
      v49 = *v80;
    }

    if (v80[23] >= 0)
    {
      v50 = v80[23];
    }

    else
    {
      v50 = *&v80[8];
    }

    llvm::orc::ExecutionSession::intern(v66, v49, v50, &v77);
    if ((v80[23] & 0x80000000) != 0)
    {
      operator delete(*v80);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct(a1 + 11, &__p);
    v52 = v51;
    v53 = v51[5];
    v54 = v51[6];
    if (v53 >= v54)
    {
      v57 = v51[4];
      v58 = (v53 - v57) >> 3;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v60 = v54 - v57;
      if (v60 >> 2 > v59)
      {
        v59 = v60 >> 2;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      *&v81 = v51 + 4;
      if (v61)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>((v51 + 4), v61);
      }

      v63 = (8 * v58);
      *v80 = 0;
      *&v80[8] = v63;
      *&v80[16] = 8 * v58;
      *&v80[24] = 0;
      v64 = v77.__r_.__value_.__r.__words[0];
      *v63 = v77.__r_.__value_.__r.__words[0];
      if (v64 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v64 + 8), 1uLL);
        v63 = *&v80[16];
      }

      *&v80[16] = v63 + 1;
      std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(v51 + 4, v80);
      v56 = v52[5];
      std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(v80);
    }

    else
    {
      v55 = v77.__r_.__value_.__r.__words[0];
      *v53 = v77.__r_.__value_.__r.__words[0];
      if (v55 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v55 + 8), 1uLL);
      }

      v56 = v53 + 1;
    }

    v52[5] = v56;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v83, &v77)[4] = 0x4000;
    operator new();
  }

  v13 = v83;
  v83 = 0;
  *a4 = v13;
  return llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v83);
}

void llvm::orc::ExecutionSession::intern(uint64_t a1@<X0>, uint64_t *a2@<X1>, size_t a3@<X2>, size_t **a4@<X8>)
{
  v7 = *(*(a1 + 72) + 8);
  std::mutex::lock(v7);
  v10 = 0;
  v8 = llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v7[1], a2, a3, &v10);
  v9 = *v8;
  *a4 = *v8;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v9 + 8), 1uLL);
  }

  std::mutex::unlock(v7);
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::erase(int32x2_t *a1, void *a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v5))
  {
    v4 = v5;
    if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v4 = -16;
    result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    a1[1] = result;
  }

  return result;
}

void llvm::orc::JITDylib::define<llvm::orc::BasicObjectLayerMaterializationUnit>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a2 + 16))
  {
    v5 = *(a1 + 32);
    v6[0] = a1;
    v6[1] = a2;
    v6[2] = a3;
    std::recursive_mutex::lock(v5);
    llvm::orc::JITDylib::define<llvm::orc::BasicObjectLayerMaterializationUnit>(std::unique_ptr<llvm::orc::BasicObjectLayerMaterializationUnit> &&,llvm::IntrusiveRefCntPtr<llvm::orc::ResourceTracker>)::{lambda(void)#1}::operator()(v6, a4);
    std::recursive_mutex::unlock(v5);
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t *llvm::orc::SymbolLookupSet::add(uint64_t *a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  *a2 = 0;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = (v6 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(a1, v11);
    }

    v12 = 16 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    *v12 = v4;
    *(v12 + 8) = a3;
    v14[2] = 16 * v8 + 16;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__swap_out_circular_buffer(a1, v14);
    v7 = a1[1];
    std::__split_buffer<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::~__split_buffer(v14);
  }

  else
  {
    *v6 = v4;
    *(v6 + 8) = a3;
    v7 = v6 + 16;
  }

  a1[1] = v7;
  return a1;
}

void *llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 8 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      ++result;
      v6 -= 8;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

size_t **llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(llvm::StringMapImpl *a1, uint64_t *a2, size_t a3, int *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v14 = v12;
  v15 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v15[a3] = 0;
  v16 = *a4;
  *v14 = a3;
  v14[1] = v16;
  *i = v14;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = 16 * v1;
    do
    {
      v4 = *v2;
      if ((*v2 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v5 = v2[1];
        if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
          v4 = *v2;
        }
      }

      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v2 += 2;
      v3 -= 16;
    }

    while (v3);
  }

  return result;
}

uint64_t *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(uint64_t *a1)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  if (v2)
  {
    v4 = 8 * v2;
    do
    {
      if ((*v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
    v3 = *a1;
  }

  MEMORY[0x277C69E30](v3, 8);
  return a1;
}

void *std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = 0;
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v3);
    do
    {
      if ((*v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = 0;
      *v6 = *v5;
      *v5 = 0;
      *(v6 + 8) = *(v5 + 8);
      v5 += 16;
      v6 += 16;
    }

    while (v5 != v3);
    do
    {
      if ((*v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v2 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 16);
    v3 -= 16;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t *std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__init_with_size[abi:nn200100]<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 16;
        v5 = v6;
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

void std::future<llvm::MSVCPError>::get(std::__assoc_sub_state **a1@<X0>, std::__assoc_sub_state_vtbl **a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<llvm::MSVCPError>::move(v2, a2);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    on_zero_shared = v2->__on_zero_shared;

    (on_zero_shared)(v2);
  }
}

void std::__assoc_state<llvm::MSVCPError>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__assoc_state<llvm::MSVCPError>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

void std::__assoc_sub_state::__attach_future[abi:nn200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:nn200100]();
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::ExecutorProcessControl::MemoryAccess::writeUInt64s(llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>)::{lambda(llvm::Error)#1}>(v3, v4);
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
    *(a1 + 136) = v2 | 2;

    std::mutex::unlock((a1 + 24));
  }
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::ExecutorProcessControl::MemoryAccess::writeUInt64s(llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>)::{lambda(llvm::Error)#1}>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *a1;
  v5 = v2;
  std::promise<llvm::MSVCPError>::set_value(v3, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void std::promise<llvm::MSVCPError>::set_value(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
  }

  else
  {
    std::__throw_future_error[abi:nn200100]();
  }

  std::__assoc_state<llvm::MSVCPError>::set_value<llvm::MSVCPError>(v3, a2);
}

void std::__assoc_state<llvm::MSVCPError>::set_value<llvm::MSVCPError>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    std::__throw_future_error[abi:nn200100]();
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 144) = *a2;
    *a2 = 0;
    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x277C69E30](*v1, v1[2]);
    }
  }

  return v1;
}

void std::__assoc_state<llvm::MSVCPError>::move(std::__assoc_sub_state *a1@<X0>, std::__assoc_sub_state_vtbl **a2@<X8>)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v8.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v8);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v7, &a1->__exception_);
    v5.__ptr_ = &v7;
    std::rethrow_exception(v5);
    std::promise<llvm::MSVCPError>::~promise(v6);
  }

  else
  {
    *a2 = a1[1].__vftable;
    a1[1].__vftable = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

uint64_t *std::promise<llvm::MSVCPError>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v7.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v7);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v5 = std::future_category();
        MEMORY[0x277C69B50](v6, 4, v5);
        abort();
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::ExecutorProcessControl::MemoryAccess::writeUInt32s(llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned int>>)::{lambda(llvm::Error)#1}>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *a1;
  v5 = v2;
  std::promise<llvm::MSVCPError>::set_value(v3, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void std::vector<xojit::ReplacementManager::DylibState::PendingDefinition>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 5;
        std::allocator_traits<std::allocator<xojit::ReplacementManager::DylibState::PendingDefinition>>::destroy[abi:nn200100]<xojit::ReplacementManager::DylibState::PendingDefinition,void,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<xojit::ReplacementManager::DylibState::PendingDefinition>>::destroy[abi:nn200100]<xojit::ReplacementManager::DylibState::PendingDefinition,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a2[2];
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = a2[1];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((*a2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*a2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

atomic_uint *llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (result && add == 1)
  {
    llvm::orc::ResourceTracker::~ResourceTracker(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(a1, v7, a2);
  }

  return v5;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  result[4] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -8;
      }

      if (v17.i8[4])
      {
        *v16 = -8;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        *(v15 + 8) = *(v4 + 4);
        ++*(v5 + 8);
        v14 = *v4;
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = result[1];
  v8 = v7 + a3 - __src;
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = v5[1];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + v7), __src, v6);
    v7 = v5[1];
  }

  v5[1] = v7 + v6;
  return result;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct(void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(*a1, *(a1 + 4), *a2, &v9);
  v6 = v9;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::grow(a1, v8);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(*a1, *(a1 + 4), *a2, &v9);
    v6 = v9;
  }

  ++*(a1 + 2);
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  *v6 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 28) = 104;
  result = 0.0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 104 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 104 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(104 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 104 * v10 - 104;
      v13 = vdupq_n_s64(v12 / 0x68);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[13] = -4096;
        }

        v11 += 2;
        result += 26;
      }

      while (((v12 / 0x68 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      do
      {
        v16 = *(v4 + v15);
        if ((v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(*a1, *(a1 + 16), v16, &v25);
          v17 = v25;
          v18 = v4 + v15;
          *v25 = *(v4 + v15);
          v17[1] = *(v4 + v15 + 8);
          *(v17 + 1) = *(v4 + v15 + 16);
          *(v18 + 16) = 0;
          *(v4 + v15 + 8) = 0;
          *(v18 + 24) = 0;
          v17[4] = 0;
          v17[5] = 0;
          v17[6] = 0;
          *(v17 + 2) = *(v4 + v15 + 32);
          v17[6] = *(v4 + v15 + 48);
          *(v4 + v15 + 32) = 0;
          *(v18 + 40) = 0;
          *(v18 + 48) = 0;
          v17[7] = 0;
          v17[8] = 0;
          v17[9] = 0;
          *(v17 + 7) = *(v4 + v15 + 56);
          v17[9] = *(v4 + v15 + 72);
          *(v4 + v15 + 56) = 0;
          *(v18 + 64) = 0;
          *(v18 + 72) = 0;
          v17[10] = 0;
          v17[11] = 0;
          v17[12] = 0;
          v19 = v4 + v15 + 80;
          *(v17 + 5) = *v19;
          v17[12] = *(v4 + v15 + 96);
          *v19 = 0;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          ++*(a1 + 8);
          v25 = v19;
          std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v25);
          v25 = (v4 + v15 + 56);
          std::vector<xojit::ReplacementManager::DylibState::PendingDefinition>::__destroy_vector::operator()[abi:nn200100](&v25);
          v25 = (v4 + v15 + 32);
          std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v25);
          llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::~StringMap(v4 + v15 + 8);
        }

        v15 += 104;
      }

      while (104 * v3 != v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 104 * v20 - 104;
    v23 = vdupq_n_s64(v22 / 0x68);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[13] = -4096;
      }

      v21 += 2;
      result += 26;
    }

    while (((v22 / 0x68 + 2) & 0x7FFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll((v5 + 10));
          MEMORY[0x277C69E30](v5[10], 8);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll((v5 + 7));
          MEMORY[0x277C69E30](v5[7], 8);
          llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v5 + 4);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll((v5 + 1));
          MEMORY[0x277C69E30](v5[1], 8);
          MEMORY[0x277C69E30](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::destroyAll(_DWORD *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 104 * v1;
    v3 = (*result + 56);
    do
    {
      if ((*(v3 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = v3 + 3;
        std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v4);
        v4 = v3;
        std::vector<xojit::ReplacementManager::DylibState::PendingDefinition>::__destroy_vector::operator()[abi:nn200100](&v4);
        v4 = v3 - 3;
        std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v4);
        result = llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::~StringMap((v3 - 6));
      }

      v3 += 13;
      v2 -= 104;
    }

    while (v2);
  }

  return result;
}

xojit::ReplacementManager::Plugin *xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager::Plugin *this, xojit::ReplacementManager *a2)
{
  *this = &unk_2883E99F8;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  if (*(*(a2 + 1) + 64) == 38)
  {
    xojit::ReplacementManager::Plugin::initializeMCDisassembler(this);
  }

  return this;
}

const void **llvm::handleAllErrors<xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager&)::{lambda(llvm::ErrorInfoBase &)#1}>(const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager&)::{lambda(llvm::ErrorInfoBase &)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 1))(v2);
  }

  return result;
}

void xojit::ReplacementManager::Plugin::initializeMCDisassembler(xojit::ReplacementManager::Plugin *this)
{
  v3 = *(*(this + 1) + 8);
  if (*(v3 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(v3 + 40), *(v3 + 48));
  }

  else
  {
    v47 = *(v3 + 40);
  }

  v48 = *(v3 + 64);
  v49 = *(v3 + 80);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v4 = llvm::TargetRegistry::lookupTarget(&v47, &v44);
  if (v4)
  {
    v5 = v4;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v47;
    }

    else
    {
      v6 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    MCSubtargetInfo = llvm::Target::createMCSubtargetInfo(v4, v6, size, "", 0, "", 0);
    v9 = *(this + 2);
    *(this + 2) = MCSubtargetInfo;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      MCSubtargetInfo = *(this + 2);
    }

    if (MCSubtargetInfo)
    {
      v10 = (v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v47 : v47.__r_.__value_.__r.__words[0];
      v11 = (v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(v47.__r_.__value_.__r.__words[2]) : v47.__r_.__value_.__l.__size_;
      MCRegInfo = llvm::Target::createMCRegInfo(v5, v10, v11);
      v13 = std::unique_ptr<llvm::MCRegisterInfo>::reset[abi:nn200100](this + 3, MCRegInfo);
      if (*(this + 3))
      {
        v14 = *(v5 + 64);
        if (v14)
        {
          v15 = v14(v13);
        }

        else
        {
          v15 = 0;
        }

        v22 = *(this + 4);
        *(this + 4) = v15;
        if (v22)
        {
          MEMORY[0x277C69E40](v22, 0x10F0C40CB53E019);
          v15 = *(this + 4);
        }

        if (v15)
        {
          v23 = *(v5 + 72);
          if (v23)
          {
            v24 = v23();
          }

          else
          {
            v24 = 0;
          }

          v25 = *(this + 5);
          *(this + 5) = v24;
          if (v25)
          {
            (*(*v25 + 8))(v25);
            v24 = *(this + 5);
          }

          if (v24)
          {
            LOWORD(__p[0]) = 2048;
            *(__p + 4) = 2;
            HIDWORD(__p[1]) = 2;
            v31 = 0u;
            *v32 = 0u;
            v33 = 0u;
            *v34 = 0u;
            *v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &v47;
            }

            else
            {
              v26 = v47.__r_.__value_.__r.__words[0];
            }

            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v27 = v47.__r_.__value_.__l.__size_;
            }

            MCAsmInfo = llvm::Target::createMCAsmInfo(v5, *(this + 3), v26, v27, __p);
            v29 = *(this + 6);
            *(this + 6) = MCAsmInfo;
            if (v29)
            {
              (*(*v29 + 8))(v29);
              MCAsmInfo = *(this + 6);
            }

            if (MCAsmInfo)
            {
              operator new();
            }

            std::operator+<char>();
            getErrorErrorCat();
            v42.__r_.__value_.__r.__words[0] = 3;
            v42.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
            llvm::make_error<llvm::StringError,std::string,std::error_code>();
          }
        }
      }
    }

    std::operator+<char>();
    getErrorErrorCat();
    v43.__r_.__value_.__r.__words[0] = 3;
    v43.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  std::operator+<char>();
  v16 = std::string::append(&v42, "': ", 3uLL);
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v18 = &v44;
  }

  else
  {
    v18 = v44;
  }

  if (v46 >= 0)
  {
    v19 = HIBYTE(v46);
  }

  else
  {
    v19 = v45;
  }

  v20 = std::string::append(&v43, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[2];
  *__p = *&v20->__r_.__value_.__l.__data_;
  *&v31 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  getErrorErrorCat();
  v40 = 3;
  v41 = &getErrorErrorCat(void)::ErrorErrorCat;
  llvm::make_error<llvm::StringError,std::string,std::error_code>();
}

void xojit::ReplacementManager::Plugin::~Plugin(xojit::ReplacementManager::Plugin *this)
{
  xojit::ReplacementManager::Plugin::~Plugin(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883E99F8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](this + 7, 0);
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    MEMORY[0x277C69E40](v5, 0x10F0C40CB53E019);
  }

  std::unique_ptr<llvm::MCRegisterInfo>::reset[abi:nn200100](this + 3, 0);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

void xojit::ReplacementManager::Plugin::modifyPassConfig(void *a1, void *a2, uint64_t a3, __int128 **a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  std::mutex::lock((v8 + 16));
  v9 = a1[1];
  *&v21 = *a2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct((v9 + 88), &v21);
  v11 = v10;
  v14 = *(a3 + 96);
  v13 = a3 + 96;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = *(v13 + 8);
  }

  Key = llvm::StringMapImpl::FindKey((v10 + 8), v16, v17);
  if (Key != -1 && Key != *(v11 + 16))
  {
    v19 = *a4;
    *&v21 = a1;
    *(&v21 + 1) = a2;
    v22 = off_2815A4200 + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4, v19, &v21);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v21);
    *&v21 = a1;
    *(&v21 + 1) = a2;
    v22 = &off_2815A4208 + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](a4 + 12, &v21);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v21);
    if (a1[8])
    {
      if (a1[5])
      {
        v20 = *a4;
        *&v21 = a1;
        v22 = &off_2815A4210 + 2;
        std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4, v20, &v21);
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v21);
      }
    }
  }

  std::mutex::unlock((v8 + 16));
}

const void ***llvm::handleErrors<xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager&)::{lambda(llvm::ErrorInfoBase &)#1}>@<X0>(const void ***result@<X0>, const void ***a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 6))(v3, &llvm::ErrorList::ID))
    {
      *a2 = 0;
      v4 = v3[1];
      v5 = v3[2];
      if (v4 != v5)
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          llvm::ErrorList::join(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 1))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
        *a2 = v6;
      }

      return (*(*v3 + 1))(v3);
    }

    else
    {
      result = (*(*v3 + 6))(v3, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 1);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

const void **llvm::ErrorList::join@<X0>(const void ***a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 6))(result, &llvm::ErrorList::ID))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 1))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 1))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

const void **std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t llvm::Target::createMCSubtargetInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 88);
  if (!v7)
  {
    return 0;
  }

  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  llvm::Triple::Triple(__p, v14);
  v12 = v7(__p, a4, a5, a6, a7);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

uint64_t *std::unique_ptr<llvm::MCRegisterInfo>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    MEMORY[0x277C69E30](*(v2 + 184), 4);
    MEMORY[0x277C69E30](*(v2 + 160), 4);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t (*llvm::Target::createMCRegInfo(uint64_t a1, uint64_t a2, uint64_t a3))(void **)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v6 = 261;
    v5[0] = a2;
    v5[1] = a3;
    llvm::Triple::Triple(__p, v5);
    v3 = v3(__p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

uint64_t llvm::Target::createMCAsmInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 0;
  }

  v11 = 261;
  v10[0] = a3;
  v10[1] = a4;
  llvm::Triple::Triple(__p, v10);
  v8 = v5(a2, __p, a5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

llvm::MCContext *std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](llvm::MCContext **a1, llvm::MCContext *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::MCContext::~MCContext(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__int128 *std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(__int128 **a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = ((v7 - *a1) >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = a2 - v9;
    v12 = v6 - v9;
    v13 = v12 >> 4;
    if (v12 >> 4 <= v10)
    {
      v13 = ((v7 - *a1) >> 5) + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = v11 >> 5;
    v17[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a1, v14);
    }

    v17[0] = 0;
    v17[1] = 32 * v15;
    v17[2] = 32 * v15;
    v17[3] = 0;
    std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::emplace_back<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>(v17, a3);
    v4 = std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__swap_out_circular_buffer(a1, v17, v4);
    std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(v17);
  }

  else if (a2 == v7)
  {
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1[1], a3);
    a1[1] = v7 + 2;
  }

  else
  {
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__move_range(a1, a2, a1[1], (a2 + 2));
    if (v4 != a3)
    {
      v8 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v4);
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v8, a3);
    }
  }

  return v4;
}

uint64_t std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](__int128 **a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a1, v11);
    }

    v12 = 32 * v8;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v12, a2);
    v7 = v12 + 32;
    v13 = a1[1];
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = (v12 + 32);
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(v17);
  }

  else
  {
    result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, a2);
    v7 = result + 32;
  }

  a1[1] = v7;
  return result;
}

__int128 *std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__move_range(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (v6 + a2 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (v6 + a2 - a4);
    v8 = v6;
    do
    {
      v11 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v8, v10);
      v10 += 2;
      v8 = v11 + 32;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(&v13, a2, v7, v6);
}

uint64_t std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::emplace_back<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 4;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(v9, v8);
    }

    v6 = (((v5 - *a1) >> 5) + 1 + ((((v5 - *a1) >> 5) + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(v11, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 32 * v6;
    a1[2] = v7;
  }

  result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, a2);
  a1[2] += 32;
  return result;
}

uint64_t std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__swap_out_circular_buffer(__int128 **a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

__int128 *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = v7;
      v9 = a4;
      v7 -= 2;
      a4 -= 2;
      if (v8 != v9)
      {
        v10 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a4);
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v10, v7);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        v7 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a4);
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v7, v5);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a4, v7);
      v7 += 2;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
      v6 += 2;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<xojit::ReplacementManager::Plugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1}>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v228 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v160 = *(*a1 + 8);
  std::mutex::lock((v160 + 16));
  v6 = *(v5 + 8);
  v166 = *(*(v6 + 8) + 32);
  v161 = v4;
  *&v214 = *v4;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct((v6 + 88), &v214);
  v8 = *(a2 + 119);
  if (v8 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 12);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 119);
  }

  else
  {
    v10 = *(a2 + 13);
  }

  __n = *llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::try_emplace<>((v7 + 8), v9, v10);
  v11 = *(v5 + 8);
  v12 = *(v11 + 80);
  *(v11 + 80) = v12 + 1;
  std::to_string(&v187, v12);
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v165 = a2;
  if (!a2[52])
  {
    goto LABEL_55;
  }

  v14 = a2[54];
  if (v14)
  {
    v15 = 24 * v14;
    v16 = *(a2 + 25);
    while (*v16 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v16 += 3;
      v15 -= 24;
      if (!v15)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v16 = *(a2 + 25);
  }

  v17 = *(a2 + 25) + 24 * v14;
  if (v16 == v17)
  {
LABEL_55:
    v176 = 0uLL;
    v177 = 0;
    v173 = 0;
    v174 = 0;
    v175 = 0;
    goto LABEL_56;
  }

  do
  {
    v18 = v16[2];
    v19 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v18 + 56);
    v21 = *(v18 + 56) + 8 * *(v18 + 72);
    if (v21 != v19)
    {
      v22 = v19;
      v23 = v20;
      while (1)
      {
        v24 = *v22;
        *&v214 = v24;
        v25 = *v24;
        if (!*v24)
        {
          goto LABEL_43;
        }

        v26 = v24[2];
        v27 = *v18;
        v28 = *(v18 + 8);
        if ((~v26 & 0xC00000000000000) == 0 && *v25 && *(v25 + 16) == 108)
        {
          goto LABEL_43;
        }

        if ((v26 & 0x2000000000000000) != 0)
        {
          break;
        }

        v31 = *v25;
        v29 = v25 + 16;
        v30 = v31;
        if (v31 >= 3)
        {
          v32 = *v29 == 9311 && *(v29 + 2) == 115;
          if (v32 && *(v29 + v30 - 2) == 30036)
          {
            v36 = &v181;
            goto LABEL_42;
          }
        }

        if (v28 == 23)
        {
          if (bswap64(*v27) == 0x5F5F444154412C5FLL && bswap64(v27[1]) == 0x5F6F626A635F696DLL && bswap64(*(v27 + 15)) == 0x6D616765696E666FLL)
          {
            goto LABEL_43;
          }

LABEL_41:
          v36 = &v178;
LABEL_42:
          std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](v36, &v214);
          goto LABEL_43;
        }

        if (v28 != 16)
        {
          goto LABEL_41;
        }

        v34 = *v27;
        v33 = v27[1];
        if (v34 != 0x5F2C545845545F5FLL || v33 != 0x676E69727473635FLL)
        {
          goto LABEL_41;
        }

        do
        {
LABEL_43:
          ++v22;
        }

        while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v22 == v21)
        {
          goto LABEL_48;
        }
      }

      v36 = &v184;
      goto LABEL_42;
    }

LABEL_48:
    v16 += 3;
    a2 = v165;
    if (v16 == v17)
    {
      break;
    }

    while (*v16 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v16 += 3;
      if (v16 == v17)
      {
        goto LABEL_53;
      }
    }
  }

  while (v16 != v17);
LABEL_53:
  v176 = 0uLL;
  v177 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  if (v184 != v185)
  {
    llvm::jitlink::LinkGraph::createSection(v165, "__TEXT,__stubs", 14, 5);
  }

LABEL_56:
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(a2, "__LD,__compact_unwind", 21, v13);
  if (SectionByName)
  {
    v39 = SectionByName;
    v40 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 32);
    v42 = *(v39 + 32) + 8 * *(v39 + 48);
    if (v42 != v40)
    {
      v43 = v40;
      v44 = v41;
      do
      {
        v45 = *(*v43 + 40);
        v46 = *(*v43 + 48);
        while (v45 != v46)
        {
          *&v201 = *v45;
          *&v214 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v173, &v201, &v214))
          {
            if (v214 != v173 + 16 * v175)
            {
              *v45 = *(v214 + 8);
            }
          }

          v45 += 4;
        }

        do
        {
          ++v43;
        }

        while (v43 != v44 && (*v43 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v43 != v42);
    }
  }

  v47 = v181;
  v48 = v182;
  v49 = __n;
  if (v181 != v182)
  {
    while (2)
    {
      v50 = *v47;
      v51 = **v47;
      v192[0] = v51;
      if ((v51 - 1) >= 0xFFFFFFFFFFFFFFE0)
      {
        *&v214 = v51;
      }

      else
      {
        atomic_fetch_add((v51 + 8), 1uLL);
        v51 = v192[0];
        *&v214 = v192[0];
        if ((v192[0] - 1) < 0xFFFFFFFFFFFFFFE0)
        {
          atomic_fetch_add((v192[0] + 8), 1uLL);
          *(&v214 + 1) = v192[0];
          if ((v192[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v192[0] + 8), 1uLL);
          }

LABEL_75:
          *&v201 = 0;
          v52 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v49 + 56), &v214, &v201);
          v53 = v52;
          v54 = v201;
          if (v52)
          {
            v55 = *(&v214 + 1);
          }

          else
          {
            v56 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(v49 + 56, &v214, &v214, v201);
            v54 = v56;
            if ((*v56 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*v56 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v55 = 0;
            *(&v38 + 1) = 0;
            *v56 = 0u;
            *v56 = v214;
            v214 = 0u;
          }

          if ((v55 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if ((v214 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v214 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (v50[3] <= 7)
          {
            v65 = *v192[0];
            v200 = 1283;
            v196 = "expected async function pointer ";
            v198 = (v192[0] + 16);
            v199 = v65;
            *&v201 = &v196;
            v202 = " to have size 8; got ";
            v203 = 770;
            std::to_string(&__p, v50[3]);
            v66 = v203;
            if (v203)
            {
              if (v203 == 1)
              {
                *&v214 = &__p;
                v67 = 1;
                v66 = 4;
              }

              else
              {
                if (HIBYTE(v203) != 1)
                {
                  v66 = 2;
                }

                v74 = &v201;
                if (HIBYTE(v203) == 1)
                {
                  v74 = v201;
                }

                *&v214 = v74;
                *(&v214 + 1) = *(&v201 + 1);
                p_p = &__p;
                v67 = 4;
              }
            }

            else
            {
              v67 = 1;
            }

            BYTE8(v216) = v66;
            BYTE9(v216) = v67;
            getErrorErrorCat();
            operator new();
          }

          v57 = v50[2] & 0xC00000000000000;
          if (v53)
          {
            if (v57 == 0xC00000000000000)
            {
              v58 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v49 + 80), v192)[1];
              if ((v58 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v58 + 8), 1uLL);
              }

              if ((*v50 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((*v50 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }

              *v50 = v58;
              if ((v58 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v58 + 8), 1uLL);
                atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }
            }

            v59 = *v192[0];
            v200 = 773;
            v196 = (v192[0] + 16);
            v197 = v59;
            v198 = "$";
            *&v201 = &v196;
            v202 = &v187;
            v203 = 1026;
            *&v214 = &v201;
            p_p = "$impl";
            WORD4(v216) = 770;
            llvm::Twine::str(&v214, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v60 = &__p;
            }

            else
            {
              v60 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            llvm::orc::ExecutionSession::intern(v166, v60, size, v190);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v62 = v54[1];
            if ((v62 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v62 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v63 = v190[0];
            v54[1] = v190[0];
            if (v63 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v63 + 1, 1uLL);
              v63 = v190[0];
            }

            v64 = *(llvm::jitlink::LinkGraph::addDefinedSymbol(v165, v50[1], v50[2] & 0x1FFFFFFFFFFFFFFLL, v63 + 2, *v63, v50[3], (v50[2] >> 57) & 1, 1, 0, 1) + 23) & 2;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v176, v190)[4] = v64 << 8;
            llvm::jitlink::LinkGraph::makeExternal(v165, v50);
            if (v190[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v190[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
            }

            v49 = __n;
          }

          else if (v57 == 0xC00000000000000)
          {
            v68 = *v192[0];
            v200 = 773;
            v196 = (v192[0] + 16);
            v197 = v68;
            v198 = "$";
            *&v201 = &v196;
            v202 = &v187;
            v203 = 1026;
            *&v214 = &v201;
            p_p = "$promoted";
            WORD4(v216) = 770;
            llvm::Twine::str(&v214, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v69 = &__p;
            }

            else
            {
              v69 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v70 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v70 = __p.__r_.__value_.__l.__size_;
            }

            llvm::orc::ExecutionSession::intern(v166, v69, v70, v190);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v71 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v49 + 80), v192);
            v72 = v71[1];
            if ((v72 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v72 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v73 = v190[0];
            v71[1] = v190[0];
            if (v73 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v73 + 1, 1uLL);
            }

            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v176, v190);
            llvm::jitlink::LinkGraph::addDefinedSymbol(v165, v50[1], v50[2] & 0x1FFFFFFFFFFFFFFLL, v190[0] + 2, *v190[0], v50[3], 0, 1, 0, 1);
            if (v190[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v190[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          if ((v192[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v192[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (++v47 == v48)
          {
            goto LABEL_136;
          }

          continue;
        }
      }

      break;
    }

    *(&v214 + 1) = v51;
    goto LABEL_75;
  }

LABEL_136:
  v75 = v178;
  v76 = v179;
  if (v178 != v179)
  {
    do
    {
      v77 = *v75;
      v78 = **v75;
      v192[0] = v78;
      if ((v78 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v78 + 8), 1uLL);
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v49 + 32, v192, &v214);
      v79 = v77[2] & 0xC00000000000000;
      if (p_p == 1)
      {
        if (v79 == 0xC00000000000000)
        {
          v80 = *v192[0];
          v200 = 773;
          v196 = (v192[0] + 16);
          v197 = v80;
          v198 = "$";
          *&v201 = &v196;
          v202 = &v187;
          v203 = 1026;
          *&v214 = &v201;
          p_p = "$promoted";
          WORD4(v216) = 770;
          llvm::Twine::str(&v214, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v81 = &__p;
          }

          else
          {
            v81 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v82 = __p.__r_.__value_.__l.__size_;
          }

          llvm::orc::ExecutionSession::intern(v166, v81, v82, v190);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v83 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v49 + 80), v192);
          v84 = v83[1];
          if ((v84 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v84 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v85 = v190[0];
          v83[1] = v190[0];
          if (v85 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v85 + 1, 1uLL);
          }

          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v176, v190)[4] = 0;
          llvm::jitlink::LinkGraph::addDefinedSymbol(v165, v77[1], v77[2] & 0x1FFFFFFFFFFFFFFLL, v190[0] + 2, *v190[0], v77[3], 0, 1, 0, 0);
          if (v190[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v190[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
          }
        }
      }

      else
      {
        if (v79 == 0xC00000000000000)
        {
          v86 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v49 + 80), v192)[1];
          if ((v86 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v86 + 8), 1uLL);
          }

          if ((*v77 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v77 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *v77 = v86;
          if ((v86 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v86 + 8), 1uLL);
            atomic_fetch_add((v86 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        llvm::jitlink::LinkGraph::makeExternal(v165, v77);
      }

      if ((v192[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v192[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      ++v75;
    }

    while (v75 != v76);
  }

  *&v38 = 0;
  v87 = v176;
  v176 = v38;
  v88 = v177;
  v177 = 0;
  v214 = v87;
  v171[0] = 0;
  v171[1] = 0;
  LODWORD(p_p) = v88;
  v172 = 0;
  llvm::orc::ExecutionSession::OL_defineMaterializing(v161, &v214, a3);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v214);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v171);
  if (*a3)
  {
    goto LABEL_264;
  }

  v156 = 0;
  v159 = 0;
  v157 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v165;
  v93 = v165[46];
  v214 = llvm::orc::MachOObjCCatListSectionName;
  v216 = llvm::orc::MachOObjCCatList2SectionName;
  p_p = v93;
  v217 = v93;
  v218 = llvm::orc::MachOObjCClassListSectionName;
  v220 = llvm::orc::MachOObjCNLCatListSectionName;
  v219 = v93;
  v221 = v93;
  v222 = llvm::orc::MachOSwift5ProtoSectionName;
  v224 = llvm::orc::MachOSwift5ProtosSectionName;
  v223 = 4;
  v225 = 4;
  v226 = llvm::orc::MachOSwift5TypesSectionName;
  v227 = 4;
  v209 = 0;
  v208 = 0;
  v210 = 0;
  v212 = 0;
  v211 = 0;
  v213 = 0;
  v206 = 0;
  v205 = 0;
  v207 = 0;
  while (2)
  {
    v94 = v92;
    v96 = *(&v214 + v91);
    v95 = *(&v214 + v91 + 8);
    __na = *(&v214 + v91 + 16);
    v97 = llvm::jitlink::LinkGraph::findSectionByName(v94, v96, v95, v89);
    if (!v97)
    {
      v92 = v165;
      goto LABEL_234;
    }

    v98 = v97;
    v167 = v95;
    v99 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v97 + 32);
    v101 = *(v98 + 32) + 8 * *(v98 + 48);
    if (v101 == v99)
    {
      goto LABEL_193;
    }

    v102 = v99;
    v103 = v100;
    v104 = v90;
    while (2)
    {
      v204 = *v102;
      v105 = v204[4];
      v107 = v204[5];
      v106 = v204[6];
      if (v105 != ((v106 - v107) >> 5) * __na)
      {
        v191 = 1283;
        v190[0] = "unexpected block size for section ";
        v190[2] = v96;
        v190[3] = v167;
        v192[0] = v190;
        v192[2] = ": ";
        v193 = 770;
        std::to_string(&v189, v105);
        __p.__r_.__value_.__r.__words[0] = v192;
        __p.__r_.__value_.__r.__words[2] = &v189;
        v195 = 1026;
        v196 = &__p;
        v198 = "; expected ";
        v200 = 770;
        std::to_string(&v188, ((v204[6] - v204[5]) >> 5) * __na);
        *&v201 = &v196;
        v202 = &v188;
        v203 = 1026;
        getErrorErrorCat();
        operator new();
      }

      if (v107 != v106)
      {
        v108 = 0;
        do
        {
          v109 = *v107;
          v107 += 32;
          if ((*(*(v109 + 8) + 8) & 3) == 0)
          {
            ++v108;
          }
        }

        while (v107 != v106);
        if (v108)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v211, &v204, &v201);
          v110 = v204;
          if (v108 != (v204[6] - v204[5]) >> 5)
          {
            *&v201 = 0;
            v111 = v210;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v104, v210, v204, &v201) & 1) == 0)
            {
              if (4 * v209 + 4 >= 3 * v111)
              {
                v113 = 2 * v111;
              }

              else
              {
                if (v111 + ~v209 - HIDWORD(v209) > v111 >> 3)
                {
                  goto LABEL_182;
                }

                v113 = v111;
              }

              llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::grow(&v208, v113);
              *&v201 = 0;
              v104 = v208;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v208, v210, v110, &v201);
LABEL_182:
              v112 = v201;
              LODWORD(v209) = v209 + 1;
              if (*v201 != -4096)
              {
                --HIDWORD(v209);
              }

              *v201 = v110;
              *(v112 + 8) = v108;
            }
          }
        }
      }

      do
      {
        ++v102;
      }

      while (v102 != v103 && (*v102 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v102 != v101)
      {
        continue;
      }

      break;
    }

    v159 = v208;
    v157 = v209;
    v156 = v210;
LABEL_193:
    v158 = v91;
    v92 = v165;
    if (v157)
    {
      v114 = v159;
      v115 = v159;
      v116 = v156;
      if (v156)
      {
        v115 = v159;
        v117 = 16 * v156;
        while ((*v115 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v115 += 2;
          v117 -= 16;
          if (!v117)
          {
            goto LABEL_226;
          }
        }

        v114 = v159;
        v116 = v156;
      }

      v162 = (v114 + 16 * v116);
      v163 = v98;
      while (v115 != v162)
      {
        v118 = *v115;
        v119 = (((*(*v115 + 48) - *(*v115 + 40)) >> 5) - v115[1]) * __na;
        v120 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v92, v119, 0);
        v121 = *v118;
        v122 = v118[1];
        *&v201 = v120;
        *(&v201 + 1) = v119;
        v196 = v121;
        __p.__r_.__value_.__r.__words[0] = 1 << (v122 >> 3);
        v192[0] = v122 >> 8;
        v123 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::MutableArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v92, v98, &v201, &v196, &__p, v192);
        v125 = v118[5];
        v124 = v118[6];
        if (v125 != v124)
        {
          v126 = v123;
          v127 = 0;
          v168 = v120;
          do
          {
            v128 = *v125;
            if ((*(*(*v125 + 8) + 8) & 3) != 0)
            {
              v201 = *(v125 + 12);
              LODWORD(v202) = *(v125 + 28);
              v129 = v126[6];
              v130 = v126[7];
              if (v129 >= v130)
              {
                v132 = v126[5];
                v133 = (v129 - v132) >> 5;
                v134 = v133 + 1;
                if ((v133 + 1) >> 59)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v135 = v130 - v132;
                if (v135 >> 4 > v134)
                {
                  v134 = v135 >> 4;
                }

                if (v135 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v136 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v136 = v134;
                }

                if (v136)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((v126 + 5), v136);
                }

                v137 = 32 * v133;
                *v137 = v128;
                *(v137 + 8) = v127;
                *(v137 + 12) = v201;
                *(v137 + 28) = v202;
                v131 = 32 * v133 + 32;
                v138 = v126[5];
                v139 = v126[6] - v138;
                v140 = v137 - v139;
                memcpy((v137 - v139), v138, v139);
                v141 = v126[5];
                v126[5] = v140;
                v126[6] = v131;
                v126[7] = 0;
                if (v141)
                {
                  operator delete(v141);
                }

                v120 = v168;
              }

              else
              {
                *v129 = v128;
                *(v129 + 8) = v127;
                *(v129 + 12) = v201;
                *(v129 + 28) = v202;
                v131 = v129 + 32;
              }

              v126[6] = v131;
              memcpy((v120 + v127), (v118[3] + *(v125 + 8)), __na);
              v127 += __na;
            }

            v125 += 32;
          }

          while (v125 != v124);
        }

        v115 += 2;
        if (v115 == v162)
        {
          v92 = v165;
          v98 = v163;
        }

        else
        {
          v92 = v165;
          v98 = v163;
          do
          {
            if ((*v115 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }

            v115 += 2;
          }

          while (v115 != v162);
        }
      }
    }

LABEL_226:
    v142 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v98 + 56);
    v144 = *(v98 + 56) + 8 * *(v98 + 72);
    if (v144 != v142)
    {
      v145 = v142;
      v146 = v143;
      do
      {
        __p.__r_.__value_.__r.__words[0] = *v145;
        *&v201 = *(__p.__r_.__value_.__r.__words[0] + 8);
        v196 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v211, &v201, &v196))
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v205, &__p, &v201);
        }

        do
        {
          ++v145;
        }

        while (v145 != v146 && (*v145 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v145 != v144);
    }

    v91 = v158;
    v90 = v159;
LABEL_234:
    v91 += 24;
    if (v91 != 168)
    {
      continue;
    }

    break;
  }

  if (v206)
  {
    if (v207)
    {
      v147 = 8 * v207;
      v148 = v205;
      while ((*v148 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v148;
        v147 -= 8;
        if (!v147)
        {
          goto LABEL_250;
        }
      }
    }

    else
    {
      v148 = v205;
    }

    v149 = &v205[v207];
    if (v148 != v149)
    {
      v150 = *v148;
LABEL_245:
      v151 = *(v150[1] + 16);
      *&v201 = v150;
      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v151 + 56, &v201);
      if ((*v150 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v150 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      while (++v148 != v149)
      {
        v150 = *v148;
        if ((*v148 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v148 != v149)
          {
            goto LABEL_245;
          }

          break;
        }
      }
    }
  }

LABEL_250:
  if (v212)
  {
    if (v213)
    {
      v152 = 8 * v213;
      v153 = v211;
      while ((*v153 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v153;
        v152 -= 8;
        if (!v152)
        {
          goto LABEL_263;
        }
      }
    }

    else
    {
      v153 = v211;
    }

    v154 = &v211[v213];
    if (v153 != v154)
    {
      v155 = *v153;
LABEL_259:
      llvm::jitlink::LinkGraph::removeBlock(v92, v155);
      while (++v153 != v154)
      {
        v155 = *v153;
        if ((*v153 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v153 != v154)
          {
            goto LABEL_259;
          }

          break;
        }
      }
    }
  }

LABEL_263:
  *a3 = 0;
  MEMORY[0x277C69E30](v205, 8);
  MEMORY[0x277C69E30](v211, 8);
  MEMORY[0x277C69E30](v208, 8);
LABEL_264:
  MEMORY[0x277C69E30](v173, 8);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v176);
  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((v160 + 16));
}

void std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *llvm::jitlink::LinkGraph::addDefinedSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, size_t a5, uint64_t a6, uint64_t a7, char a8, unsigned __int8 a9, char a10)
{
  v10 = a7;
  v17 = *(a1 + 120);
  std::mutex::lock(v17);
  v22 = 0;
  v18 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v17[1], a4, a5, &v22);
  v21 = v18;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v18 + 1, 1uLL);
  }

  std::mutex::unlock(v17);
  result = llvm::jitlink::LinkGraph::addDefinedSymbol(a1, a2, a3, &v21, a6, v10, a8, a9, a10);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v21 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void llvm::jitlink::Block::addEdge(void *a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[6];
  v8 = a1[7];
  if (v7 >= v8)
  {
    v10 = a1[5];
    v11 = (v7 - v10) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v13 = v8 - v10;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((a1 + 5), v14);
    }

    v15 = 32 * v11;
    *v15 = a4;
    *(v15 + 8) = a3;
    *(v15 + 16) = a5;
    *(v15 + 24) = a2;
    v9 = 32 * v11 + 32;
    v16 = a1[5];
    v17 = a1[6] - v16;
    v18 = (32 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[5];
    a1[5] = v18;
    a1[6] = v9;
    a1[7] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = a4;
    *(v7 + 8) = a3;
    *(v7 + 16) = a5;
    v9 = v7 + 32;
    *(v7 + 24) = a2;
  }

  a1[6] = v9;
}

void *llvm::jitlink::LinkGraph::transferDefinedSymbol(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *(a2[1] + 16);
  v9 = a2[2] & 0xFE00000000000000 | a4 & 0x1FFFFFFFFFFFFFFLL;
  a2[1] = a3;
  a2[2] = v9;
  if (a6)
  {
    a2[3] = a5;
  }

  else
  {
    v10 = *(a3 + 32) - a4;
    if (a2[3] > v10)
    {
      a2[3] = v10;
    }
  }

  if (*(a3 + 16) != v8)
  {
    v14[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v8 + 56, v14);
    v11 = *(a3 + 16);
    v13 = a2;
    return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v11 + 56, &v13, v14);
  }

  return result;
}

void *llvm::jitlink::LinkGraph::makeExternal(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if ((*(v4 + 8) & 2) != 0)
  {
    v13[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase((a1 + 62), v13);
    v9 = *(a2 + 8);
    v10 = v9[1] & 0xFFFFFFFFFFFFFFFDLL;
    *v9 = 0;
    v9[1] = v10;
  }

  else
  {
    v5 = *(v4 + 16);
    v13[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v5 + 56, v13);
    v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
    v7 = v6[1] & 0xFFFFFFFFFFFFFFFCLL;
    *v6 = 0;
    v6[1] = v7;
    v8 = *(a2 + 16) & 0xE200000000000000;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
  }

  v12 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 56), &v12, v13);
}

uint64_t llvm::jitlink::LinkGraph::findSectionByName(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v8 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 200), v7, &v8, a4);
  result = 0;
  if (v5)
  {
    if (v8 != *(a1 + 200) + 24 * *(a1 + 216))
    {
      return *(v8 + 16);
    }
  }

  return result;
}

uint64_t *llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, size_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v11 = operator new(a3 + 105, 8uLL);
  v13 = v11;
  v14 = v11 + 104;
  if (a3)
  {
    memcpy(v11 + 104, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(char *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__s2 == -2)
  {
    return a1 + 2 == 0;
  }

  if (__s2 == -1)
  {
    return a1 + 1 == 0;
  }

  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

llvm::jitlink::Section **std::unique_ptr<llvm::jitlink::Section>::~unique_ptr[abi:nn200100](llvm::jitlink::Section **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::jitlink::Section::~Section(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::try_emplace<std::unique_ptr<llvm::jitlink::Section>>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, unint64_t *a5@<X3>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14, a5);
  v10 = v14;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, a2, v14);
    v10 = result;
    *result = *a2;
    v12 = *a3;
    *a3 = 0;
    *(result + 16) = v12;
    v11 = 1;
  }

  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v10;
  *(a4 + 8) = v13;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 24 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 24 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::moveFromOldBuckets(a1, v4, &v4[3 * v3], v10);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 24 * v11;
    do
    {
      *result = xmmword_2750C1220;
      result = (result + 24);
      v12 -= 24;
    }

    while (v12);
  }

  return result;
}

llvm::jitlink::Section **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::moveFromOldBuckets(llvm::jitlink::Section **result, llvm::jitlink::Section **a2, llvm::jitlink::Section **a3, unint64_t *a4)
{
  v5 = result;
  result[1] = 0;
  v6 = *(result + 4);
  if (v6)
  {
    v7 = *result;
    v8 = 24 * v6;
    do
    {
      *v7 = xmmword_2750C1220;
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  if (a2 != a3)
  {
    v9 = a2 + 2;
    do
    {
      if (*(v9 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(v5, (v9 - 2), &v13, a4);
        v10 = v13;
        *v13 = *(v9 - 1);
        v11 = *v9;
        *v9 = 0;
        *(v10 + 2) = v11;
        ++*(v5 + 2);
        result = std::unique_ptr<llvm::jitlink::Section>::~unique_ptr[abi:nn200100](v9);
      }

      v12 = v9 + 1;
      v9 += 3;
    }

    while (v12 != a3);
  }

  return result;
}

void *llvm::jitlink::LinkGraph::addDefinedSymbol(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, char a7, int a8, char a9)
{
  v15 = *a4;
  *a4 = 0;
  v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  v17 = v16;
  *v16 = v15;
  v16[1] = a2;
  v18 = 0x1000000000000000;
  if (!a9)
  {
    v18 = 0;
  }

  v19 = 0x2000000000000000;
  if (!a8)
  {
    v19 = 0;
  }

  v16[2] = ((a6 & 1) << 57) | ((a7 & 3) << 58) | v19 & 0xFE00000000000000 | v18 & 0xFE00000000000000 | a3 & 0x1FFFFFFFFFFFFFFLL;
  v16[3] = a5;
  v20 = *(a2 + 16);
  v22 = v16;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v20 + 56, &v22, v23);
  return v17;
}