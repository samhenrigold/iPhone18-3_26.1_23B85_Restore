id MAGMakeServiceInterface()()
{
  v0 = sub_257BA9ADC();
  v1 = [objc_opt_self() interfaceWithIdentifier_];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [v1 setServer_];

  v4 = [v2 protocolForProtocol_];
  [v1 setClient_];

  [v1 setClientMessagingExpectation_];
  return v1;
}

uint64_t sub_257BA6474(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *sub_257BA64C8(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_257BA6568()
{
  result = *MEMORY[0x277CE6828];
  if (*MEMORY[0x277CE6828])
  {
    result = sub_257BA9B0C();
    qword_27F8F3210 = result;
    *algn_27F8F3218 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257BA65A0()
{
  v0 = sub_257BA9AAC();
  __swift_allocate_value_buffer(v0, qword_27F8F3220);
  __swift_project_value_buffer(v0, qword_27F8F3220);
  if (qword_27F8F30D0 != -1)
  {
    swift_once();
  }

  return sub_257BA9A9C();
}

uint64_t sub_257BA6670()
{
  v1 = *v0;
  sub_257BA9C7C();
  MEMORY[0x259C6E990](v1);
  return sub_257BA9C9C();
}

uint64_t sub_257BA66E4(uint64_t a1)
{
  v2 = *v1;
  sub_257BA9C7C();
  MEMORY[0x259C6E990](v2);
  return sub_257BA9C9C();
}

id MAGService.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC17MagnifierServices10MAGService__connection;
  v3 = *&v0[OBJC_IVAR____TtC17MagnifierServices10MAGService__connection];
  if (v3)
  {
    [v3 invalidate];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_257BA6828()
{
  v1 = OBJC_IVAR____TtC17MagnifierServices10MAGService__connection;
  v2 = *&v0[OBJC_IVAR____TtC17MagnifierServices10MAGService__connection];
  if (v2)
  {
    return v2;
  }

  v4 = sub_257BA9ADC();
  v5 = sub_257BA9ADC();
  v6 = [objc_opt_self() endpointForMachName:v4 service:v5 instance:0];

  if (v6)
  {
    v7 = [objc_opt_self() connectionWithEndpoint_];
    if (v7)
    {
      v5 = v7;
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_257BA7E68;
      *(v9 + 24) = v8;
      v19[4] = sub_257BA7E80;
      v19[5] = v9;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 1107296256;
      v19[2] = sub_257BA7204;
      v19[3] = &block_descriptor;
      v10 = _Block_copy(v19);
      v11 = v0;

      [v5 configureConnection_];
      _Block_release(v10);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
        v12 = *&v0[v1];
        *&v0[v1] = v5;
        v5 = v5;

        if (qword_27F8F30D8 == -1)
        {
LABEL_7:
          v13 = sub_257BA9AAC();
          __swift_project_value_buffer(v13, qword_27F8F3220);
          v14 = sub_257BA9A8C();
          v15 = sub_257BA9B2C();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_257BA5000, v14, v15, "WIll activate connection", v16, 2u);
            MEMORY[0x259C6EC90](v16, -1, -1);
          }

          [v5 activate];

          return v5;
        }
      }

      swift_once();
      goto LABEL_7;
    }

    sub_257BA7DDC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    sub_257BA7DDC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  return v5;
}

id sub_257BA6B9C(void *a1, uint64_t a2)
{
  v4 = sub_257BA9ADC();
  [a1 setName_];

  v5 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v6 = MAGMakeServiceInterface()();
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v17 = sub_257BA6E5C;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257BA6F44;
  v16 = &block_descriptor_8;
  v7 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_257BA7F94;
  v18 = v8;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257BA6F44;
  v16 = &block_descriptor_14;
  v9 = _Block_copy(&v13);

  [a1 setInterruptionHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_257BA7F9C;
  v18 = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257BA6F44;
  v16 = &block_descriptor_18;
  v11 = _Block_copy(&v13);

  [a1 setInvalidationHandler_];
  _Block_release(v11);
  return [a1 setTargetQueue_];
}

void sub_257BA6E5C()
{
  if (qword_27F8F30D8 != -1)
  {
    swift_once();
  }

  v0 = sub_257BA9AAC();
  __swift_project_value_buffer(v0, qword_27F8F3220);
  oslog = sub_257BA9A8C();
  v1 = sub_257BA9B2C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_257BA5000, oslog, v1, "Activation handler called", v2, 2u);
    MEMORY[0x259C6EC90](v2, -1, -1);
  }
}

void sub_257BA6F44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_257BA6FAC(uint64_t a1, uint64_t a2)
{
  if (qword_27F8F30D8 != -1)
  {
    swift_once();
  }

  v2 = sub_257BA9AAC();
  __swift_project_value_buffer(v2, qword_27F8F3220);
  v3 = sub_257BA9A8C();
  v4 = sub_257BA9B2C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_257BA5000, v3, v4, "Interruption handler called", v5, 2u);
    MEMORY[0x259C6EC90](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC17MagnifierServices10MAGService__connection);
    if (v8)
    {
      v9 = v8;

      [v9 activate];
      v7 = v9;
    }
  }
}

void sub_257BA70E8(uint64_t a1, uint64_t a2)
{
  if (qword_27F8F30D8 != -1)
  {
    swift_once();
  }

  v2 = sub_257BA9AAC();
  __swift_project_value_buffer(v2, qword_27F8F3220);
  v3 = sub_257BA9A8C();
  v4 = sub_257BA9B2C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_257BA5000, v3, v4, "Invalidation handler called", v5, 2u);
    MEMORY[0x259C6EC90](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC17MagnifierServices10MAGService__connection];
    *&Strong[OBJC_IVAR____TtC17MagnifierServices10MAGService__connection] = 0;
  }
}

uint64_t sub_257BA7204(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_257BA7258()
{
  v1 = sub_257BA6828();
  if (!v0)
  {
    v2 = v1;
    v3 = sub_257BA9ADC();
    v4 = sub_257BA9ADC();
    v5 = [objc_opt_self() attributeWithDomain:v3 name:v4];

    v16 = &unk_2868FFC50;
    v6 = swift_dynamicCastObjCProtocolUnconditional();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F32D8, &qword_257BAA380);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_257BAA340;
    *(v7 + 32) = v5;
    sub_257BA7D2C(0, &qword_27F8F32E0, 0x277D46DD8);
    v8 = v2;
    v9 = v5;
    v10 = sub_257BA9B1C();

    v11 = [v6 remoteTargetWithLaunchingAssertionAttributes_];

    if (v11)
    {
      sub_257BA9B6C();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F32F8, &unk_257BAA398);
      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
      sub_257BA7D74(v15);
    }

    sub_257BA7DDC();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAGService.buildConnection()()
{
  sub_257BA7258();
  if (!v0)
  {
    swift_unknownObjectRelease();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAGService.currentState()()
{
  sub_257BA7258();
  if (!v0)
  {
    v3 = [v1 currentState];
    swift_unknownObjectRelease();
    v4 = sub_257BA9AEC();
    v6 = v5;

    v1 = v4;
    v2 = v6;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAGService.stopSpeech()()
{
  if (*(v0 + OBJC_IVAR____TtC17MagnifierServices10MAGService__connection))
  {
    sub_257BA7258();
    if (!v1)
    {
      [v2 stopSpeech];
      swift_unknownObjectRelease();
    }
  }
}

void sub_257BA7728(const char **a1)
{
  sub_257BA7258();
  if (!v1)
  {
    [v3 *a1];
    swift_unknownObjectRelease();
  }
}

id MAGService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGService.init()()
{
  ObjectType = swift_getObjectType();
  v6 = sub_257BA9B4C();
  v1 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BA9B3C();
  MEMORY[0x28223BE20]();
  sub_257BA9ACC();
  MEMORY[0x28223BE20]();
  v5 = OBJC_IVAR____TtC17MagnifierServices10MAGService_queue;
  sub_257BA7D2C(0, &qword_27F8F3248, 0x277D85C78);
  sub_257BA9ABC();
  v9 = MEMORY[0x277D84F90];
  sub_257BA79F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F3258, &unk_257BAA350);
  sub_257BA7A98();
  sub_257BA9B7C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v6);
  *&v0[v5] = sub_257BA9B5C();
  *&v0[OBJC_IVAR____TtC17MagnifierServices10MAGService__connection] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_257BA79F8()
{
  result = qword_27F8F3250;
  if (!qword_27F8F3250)
  {
    sub_257BA9B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3250);
  }

  return result;
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

unint64_t sub_257BA7A98()
{
  result = qword_27F8F3260;
  if (!qword_27F8F3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F3258, &unk_257BAA350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3260);
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

uint64_t MAGService.simulateEvent(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_27F8F30E0 != -1)
  {
    swift_once();
  }

  v12 = v3;
  sub_257BA7C60();
  result = sub_257BA9A6C();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    sub_257BA7258();
    v10 = v9;
    v11 = sub_257BA9A7C();
    [v10 simulateEvent_];
    swift_unknownObjectRelease();

    return sub_257BA7CB4(v7, v8);
  }

  return result;
}

unint64_t sub_257BA7C60()
{
  result = qword_27F8F3268;
  if (!qword_27F8F3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3268);
  }

  return result;
}

uint64_t sub_257BA7CB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_257BA7D2C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_257BA7D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F32E8, &unk_257BAA388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257BA7DDC()
{
  result = qword_27F8F32F0;
  if (!qword_27F8F32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F32F0);
  }

  return result;
}

uint64_t sub_257BA7E30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_257BA7F5C()
{
  MEMORY[0x259C6ECC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for MAGServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAGServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257BA8114()
{
  result = qword_27F8F3360;
  if (!qword_27F8F3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3360);
  }

  return result;
}

uint64_t static MAGSimulatedEvent.encode(_:)(uint64_t *a1)
{
  if (qword_27F8F30E0 != -1)
  {
    swift_once();
  }

  sub_257BA7C60();
  return sub_257BA9A6C();
}

uint64_t static MAGSimulatedEvent.EventType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257BA9C2C();
  }
}

uint64_t sub_257BA8274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_257BA9C2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_257BA8308(uint64_t a1)
{
  v2 = sub_257BA8C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257BA8344(uint64_t a1)
{
  v2 = sub_257BA8C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257BA83D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E756F6E6E61 && a2 == 0xEC000000746E656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_257BA9C2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_257BA8468(uint64_t a1)
{
  v2 = sub_257BA8BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257BA84A4(uint64_t a1)
{
  v2 = sub_257BA8BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MAGSimulatedEvent.EventType.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F33E0, &qword_257BAA470);
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20]();
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F33E8, &qword_257BAA478);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BA8BD0();
  sub_257BA9CBC();
  sub_257BA8C24();
  sub_257BA9BFC();
  v11 = v14;
  sub_257BA9C0C();
  (*(v3 + 8))(v5, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t MAGSimulatedEvent.EventType.hash(into:)(uint64_t a1)
{
  MEMORY[0x259C6E990](0);

  return sub_257BA9AFC();
}

uint64_t MAGSimulatedEvent.EventType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F3400, &qword_257BAA480);
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F3408, &qword_257BAA488);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BA8BD0();
  sub_257BA9CAC();
  if (v2)
  {
    goto LABEL_7;
  }

  v23 = a1;
  if (*(sub_257BA9BEC() + 16) != 1)
  {
    v12 = sub_257BA9B9C();
    swift_allocError();
    v13 = v7;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F3410, &qword_257BAA490);
    *v15 = &type metadata for MAGSimulatedEvent.EventType;
    sub_257BA9BBC();
    sub_257BA9B8C();
    (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    (*(v26 + 8))(v9, v13);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_7:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_257BA8C24();
  v10 = v6;
  sub_257BA9BAC();
  v11 = v26;
  v17 = sub_257BA9BCC();
  v19 = v18;
  (*(v25 + 8))(v10, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v20 = v23;
  v21 = v24;
  *v24 = v17;
  v21[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_257BA8AAC(uint64_t a1)
{
  MEMORY[0x259C6E990](0);

  return sub_257BA9AFC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_257BA8BD0()
{
  result = qword_27F8F33F0;
  if (!qword_27F8F33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F33F0);
  }

  return result;
}

unint64_t sub_257BA8C24()
{
  result = qword_27F8F33F8;
  if (!qword_27F8F33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F33F8);
  }

  return result;
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

uint64_t sub_257BA8CF8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t static MAGSimulatedEvent.decode(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_27F8F30E8 != -1)
  {
    swift_once();
  }

  sub_257BA8DE8();
  return sub_257BA9A5C();
}

unint64_t sub_257BA8DE8()
{
  result = qword_27F8F3418;
  if (!qword_27F8F3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3418);
  }

  return result;
}

uint64_t MAGSimulatedEvent.eventType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *MAGSimulatedEvent.init(eventType:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static MAGSimulatedEvent.announcement(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static MAGSimulatedEvent.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_257BA9C2C();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_257BA8ECC()
{
  sub_257BA9C7C();
  MEMORY[0x259C6E990](0);
  return sub_257BA9C9C();
}

uint64_t sub_257BA8F10(uint64_t a1)
{
  sub_257BA9C7C();
  MEMORY[0x259C6E990](0);
  return sub_257BA9C9C();
}

uint64_t sub_257BA8F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_257BA9C2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_257BA8FFC(uint64_t a1)
{
  v2 = sub_257BA91D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257BA9038(uint64_t a1)
{
  v2 = sub_257BA91D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MAGSimulatedEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F3420, &qword_257BAA498);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BA91D8();

  sub_257BA9CBC();
  v10[0] = v7;
  v10[1] = v8;
  sub_257BA922C();
  sub_257BA9C1C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_257BA91D8()
{
  result = qword_27F8F3428;
  if (!qword_27F8F3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3428);
  }

  return result;
}

unint64_t sub_257BA922C()
{
  result = qword_27F8F3430;
  if (!qword_27F8F3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3430);
  }

  return result;
}

uint64_t _s17MagnifierServices17MAGSimulatedEventV0D4TypeO9hashValueSivg_0()
{
  sub_257BA9C7C();
  MEMORY[0x259C6E990](0);
  sub_257BA9AFC();
  return sub_257BA9C9C();
}

uint64_t MAGSimulatedEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F3438, &qword_257BAA4A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BA91D8();
  sub_257BA9CAC();
  if (!v2)
  {
    sub_257BA94AC();
    sub_257BA9BDC();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_257BA9450(uint64_t a1)
{
  sub_257BA9C7C();
  MEMORY[0x259C6E990](0);
  sub_257BA9AFC();
  return sub_257BA9C9C();
}

unint64_t sub_257BA94AC()
{
  result = qword_27F8F3440;
  if (!qword_27F8F3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3440);
  }

  return result;
}

unint64_t sub_257BA9504()
{
  result = qword_27F8F3448;
  if (!qword_27F8F3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3448);
  }

  return result;
}

unint64_t sub_257BA955C()
{
  result = qword_27F8F3450;
  if (!qword_27F8F3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3450);
  }

  return result;
}

uint64_t sub_257BA95FC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257BA9C2C();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_257BA964C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257BA9698(uint64_t result, int a2, int a3)
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

unint64_t sub_257BA9718()
{
  result = qword_27F8F3458;
  if (!qword_27F8F3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3458);
  }

  return result;
}

unint64_t sub_257BA9770()
{
  result = qword_27F8F3460;
  if (!qword_27F8F3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3460);
  }

  return result;
}

unint64_t sub_257BA97C8()
{
  result = qword_27F8F3468;
  if (!qword_27F8F3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3468);
  }

  return result;
}

unint64_t sub_257BA9820()
{
  result = qword_27F8F3470;
  if (!qword_27F8F3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3470);
  }

  return result;
}

unint64_t sub_257BA9878()
{
  result = qword_27F8F3478;
  if (!qword_27F8F3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3478);
  }

  return result;
}

unint64_t sub_257BA98D0()
{
  result = qword_27F8F3480;
  if (!qword_27F8F3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3480);
  }

  return result;
}

unint64_t sub_257BA9928()
{
  result = qword_27F8F3488;
  if (!qword_27F8F3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3488);
  }

  return result;
}

unint64_t sub_257BA9980()
{
  result = qword_27F8F3490;
  if (!qword_27F8F3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3490);
  }

  return result;
}

unint64_t sub_257BA99D8()
{
  result = qword_27F8F3498;
  if (!qword_27F8F3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F3498);
  }

  return result;
}