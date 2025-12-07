uint64_t be_memory_inline_jit_restrict_rwx_to_rx_with_witness_impl()
{
  __dmb(0xAu);
  if (MEMORY[0xFFFFFC10C] == 1)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC118]);
    v0 = MEMORY[0xFFFFFC118];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7));
  }

  else
  {
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC118]);
    v0 = MEMORY[0xFFFFFC118];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5));
  }

  if (StatusReg != v0)
  {
    __break(0xC471u);
    JUMPOUT(0x236E9B5D8);
  }

  __isb(0xFu);
  return 0;
}

uint64_t be_memory_inline_jit_restrict_rwx_to_rw_with_witness_impl(uint64_t result, uint64_t a2)
{
  __dmb(0xAu);
  if (MEMORY[0xFFFFFC10C] == 1)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC110]);
  }

  else
  {
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC110]);
  }

  __dmb(0xAu);
  __isb(0xFu);
  if (a2 == 4868436 && v2 == result)
  {
    return 0;
  }

  __break(0xC471u);
  return result;
}

BOOL _BECheckEntitlmentForAuditToken(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return [_BESwiftCBridge checkEntitlement:a1 forAuditToken:v4];
}

uint64_t be_kevent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a5;
  v8 = a3;
  v10 = malloc_type_malloc(72 * a3, 0x1000040FF89C88EuLL);
  v11 = v10;
  if (v8 < 1)
  {
LABEL_8:
    v17 = malloc_type_malloc(72 * v6, 0x1000040FF89C88EuLL);
    v18 = kevent_qos();
    v19 = v18;
    if (v18 >= 1)
    {
      v20 = 0;
      v21 = v17 + 16;
      do
      {
        v22 = a4 + v20;
        *v22 = *(v21 - 2);
        *(v22 + 8) = *(v21 - 2);
        v23 = *v21;
        *(v22 + 12) = *(v21 + 2);
        *(v22 + 16) = *(v21 + 2);
        *(v22 + 24) = v23;
        v20 += 32;
        v21 += 72;
      }

      while (32 * v18 != v20);
    }

    free(v11);
    free(v17);
  }

  else
  {
    v12 = 0;
    v13 = a2 + 12;
    while (1)
    {
      *&v10[v12] = *(v13 - 12);
      v14 = *(v13 - 4);
      if ((v14 - 65521) > 0xE || ((1 << (v14 + 15)) & 0x6FE9) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = &v10[v12];
      *(v16 + 4) = v14;
      *(v16 + 5) = *(v13 - 2);
      *(v16 + 3) = 0;
      *(v16 + 2) = *(v13 + 12);
      *(v16 + 6) = *v13;
      *(v16 + 7) = 0;
      *(v16 + 4) = *(v13 + 4);
      *(v16 + 40) = 0uLL;
      v12 += 72;
      v13 += 32;
      *(v16 + 56) = 0uLL;
      if (72 * v8 == v12)
      {
        goto LABEL_8;
      }
    }
  }

  return v19;
}

uint64_t be_kevent64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v8 = a3;
  v10 = malloc_type_malloc(72 * a3, 0x1000040FF89C88EuLL);
  v11 = v10;
  if (v8 < 1)
  {
LABEL_8:
    v20 = malloc_type_malloc(72 * v6, 0x1000040FF89C88EuLL);
    v21 = kevent_qos();
    v22 = v21;
    if (v21 >= 1)
    {
      v23 = 0;
      v24 = (a4 + 24);
      do
      {
        *(v24 - 3) = *&v20[v23];
        *(v24 - 4) = *&v20[v23 + 8];
        v25 = *&v20[v23 + 16];
        *(v24 - 3) = *&v20[v23 + 24];
        *(v24 - 1) = *&v20[v23 + 32];
        *v24 = v25;
        v24[1] = *&v20[v23 + 40];
        v24[2] = *&v20[v23 + 48];
        v23 += 72;
        v24 += 6;
      }

      while (72 * v21 != v23);
    }

    free(v11);
    free(v20);
  }

  else
  {
    v12 = 0;
    v13 = (a2 + 24);
    while (1)
    {
      *&v10[v12] = *(v13 - 3);
      v14 = *(v13 - 8);
      if ((v14 - 65521) > 0xE || ((1 << (v14 + 15)) & 0x6FE9) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = &v10[v12];
      *(v16 + 4) = v14;
      *(v16 + 5) = *(v13 - 7);
      v17 = *(v13 - 1);
      *(v16 + 2) = *v13;
      v18 = *(v13 - 3);
      *(v16 + 4) = v17;
      *(v16 + 5) = v13[1];
      v19 = v13[2];
      v13 += 6;
      *(v16 + 3) = 0;
      *(v16 + 3) = v18;
      *(v16 + 7) = 0;
      *(v16 + 8) = 0;
      *(v16 + 6) = v19;
      v12 += 72;
      if (72 * v8 == v12)
      {
        goto LABEL_8;
      }
    }
  }

  return v22;
}

BrowserEngineCore::BrowserEngineEntitlement_optional __swiftcall BrowserEngineEntitlement.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0xD00000000000002BLL && 0x8000000236E9D790 == rawValue._object;
  if (v5 || (sub_236E9D158() & 1) != 0)
  {
    v6 = 0;
LABEL_7:

    goto LABEL_8;
  }

  if (countAndFlagsBits == 0xD000000000000031 && 0x8000000236E9D7C0 == object || (sub_236E9D158() & 1) != 0)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (countAndFlagsBits == 0xD000000000000031 && 0x8000000236E9D800 == object || (sub_236E9D158() & 1) != 0)
  {
    v6 = 2;
    goto LABEL_7;
  }

  v6 = 3;
  if (countAndFlagsBits == 0xD000000000000030 && 0x8000000236E9D840 == object)
  {
    goto LABEL_7;
  }

  v8 = sub_236E9D158();

  if (v8)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

LABEL_8:
  *v4 = v6;
  return result;
}

unint64_t BrowserEngineEntitlement.description.getter()
{
  v1 = 0xD000000000000031;
  v2 = 0xD000000000000030;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000031;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_236E9BCB8()
{
  result = qword_27DE8B108;
  if (!qword_27DE8B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8B108);
  }

  return result;
}

uint64_t sub_236E9BD0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "engine.webcontent";
      v3 = 0xD000000000000031;
    }

    else
    {
      v4 = "engine.networking";
      v3 = 0xD000000000000030;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000031;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v2)
    {
      v4 = "per.web-browser-engine.host";
    }

    else
    {
      v4 = "per.web-browser-engine";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000031;
    }

    else
    {
      v5 = 0xD000000000000030;
    }

    if (a2 == 2)
    {
      v6 = "engine.webcontent";
    }

    else
    {
      v6 = "engine.networking";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000031;
    }

    else
    {
      v5 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v6 = "per.web-browser-engine.host";
    }

    else
    {
      v6 = "per.web-browser-engine";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_236E9D158();
  }

  return v7 & 1;
}

uint64_t sub_236E9BE30()
{
  sub_236E9D168();
  sub_236E9D118();

  return sub_236E9D178();
}

uint64_t sub_236E9BEE4(uint64_t a1)
{
  sub_236E9D118();
}

uint64_t sub_236E9BF84(uint64_t a1)
{
  sub_236E9D168();
  sub_236E9D118();

  return sub_236E9D178();
}

void sub_236E9C040(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000031;
  v3 = "engine.webcontent";
  v4 = 0xD000000000000030;
  if (*v1 == 2)
  {
    v4 = 0xD000000000000031;
  }

  else
  {
    v3 = "engine.networking";
  }

  if (*v1)
  {
    v5 = "per.web-browser-engine.host";
  }

  else
  {
    v2 = 0xD00000000000002BLL;
    v5 = "per.web-browser-engine";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_236E9C0B4()
{
  v1 = 0xD000000000000031;
  v2 = 0xD000000000000030;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000031;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for BrowserEngineEntitlement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowserEngineEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236E9C2A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236E9C2C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for audit_token_t()
{
  if (!qword_27DE8B110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DE8B110);
    }
  }
}

__int128 *sub_236E9C340()
{
  result = [objc_opt_self() auditTokenForCurrentProcess];
  if (result)
  {
    v1 = result[1];
    xmmword_27DE8B118 = *result;
    *&qword_27DE8B128 = v1;
  }

  else
  {
    result = sub_236E9D148();
    __break(1u);
  }

  return result;
}

void __swiftcall AuditToken.init(_:)(BrowserEngineCore::AuditToken *__return_ptr retstr, audit_token_t *a2)
{
  *retstr->inner.val = a2;
  *&retstr->inner.val[2] = v2;
  *&retstr->inner.val[4] = v3;
  *&retstr->inner.val[6] = v4;
}

double static AuditToken.current.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27DE8B100 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_27DE8B118;
  v2 = *&qword_27DE8B128;
  *a1 = xmmword_27DE8B118;
  a1[1] = v2;
  return result;
}

uint64_t AuditToken.pid.getter()
{
  v1 = v0[1];
  *v3.val = *v0;
  *&v3.val[4] = v1;
  return audit_token_to_pid(&v3);
}

uint64_t sub_236E9C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_236E9D108();
  v6 = xpc_copy_entitlement_for_token();

  if (!v6)
  {
    return 2;
  }

  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall AuditToken.has(browserEngineEntitlement:)(BrowserEngineCore::BrowserEngineEntitlement browserEngineEntitlement)
{
  v2 = 0xD000000000000031;
  v3 = *browserEngineEntitlement;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = "engine.webcontent";
  v9 = 0xD000000000000030;
  if (v3 == 2)
  {
    v9 = 0xD000000000000031;
  }

  else
  {
    v8 = "engine.networking";
  }

  if (*browserEngineEntitlement)
  {
    v10 = "per.web-browser-engine.host";
  }

  else
  {
    v2 = 0xD00000000000002BLL;
    v10 = "per.web-browser-engine";
  }

  if (*browserEngineEntitlement <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (v3 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = sub_236E9C480(v11, v12 | 0x8000000000000000, v4, v5, v6, v7);

  return v13 & 1;
}

id BEAudioSession.__allocating_init(audioSession:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___BEAudioSession__preferredOutput;
  *&v3[OBJC_IVAR___BEAudioSession__preferredOutput] = 0;
  *&v3[OBJC_IVAR___BEAudioSession_inner] = a1;
  *&v3[v4] = 0;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BEAudioSession.init(audioSession:)(uint64_t a1)
{
  v2 = OBJC_IVAR___BEAudioSession__preferredOutput;
  *&v1[OBJC_IVAR___BEAudioSession__preferredOutput] = 0;
  *&v1[OBJC_IVAR___BEAudioSession_inner] = a1;
  *&v1[v2] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BEAudioSession();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_236E9C804()
{
  v1 = [*(v0 + OBJC_IVAR___BEAudioSession_inner) availableOutputs];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_236E9C874();
  v3 = sub_236E9D138();

  return v3;
}

unint64_t sub_236E9C874()
{
  result = qword_280E25898;
  if (!qword_280E25898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E25898);
  }

  return result;
}

void sub_236E9C8C0(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR___BEAudioSession_inner);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8B148, &qword_236E9D700);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_236E9D6F0;
    v5 = [a1 UID];
    v6 = sub_236E9D0F8();
    v8 = v7;

    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_236E9D128();
  }

  else
  {
    v9 = 0;
  }

  v16[0] = 0;
  v10 = [v3 setPreferredPersistentInputUIDs:0 outputUIDs:v9 error:v16];

  v11 = v16[0];
  if (v10)
  {
    v12 = *(v1 + OBJC_IVAR___BEAudioSession__preferredOutput);
    *(v1 + OBJC_IVAR___BEAudioSession__preferredOutput) = a1;
    v13 = v11;
    v14 = a1;
  }

  else
  {
    v15 = v16[0];
    sub_236E9D0E8();

    swift_willThrow();
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

void *sub_236E9CB30()
{
  v1 = *(v0 + OBJC_IVAR___BEAudioSession__preferredOutput);
  v2 = v1;
  return v1;
}

id BEAudioSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BEAudioSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEAudioSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_236E9CE30(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SwiftCBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_236E9CE88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0xD000000000000031;

  v13._countAndFlagsBits = a1;
  v13._object = a2;
  BrowserEngineEntitlement.init(rawValue:)(v13);
  if (v17 <= 1u)
  {
    if (v17)
    {
      v14 = "per.web-browser-engine.host";
    }

    else
    {
      v12 = 0xD00000000000002BLL;
      v14 = "per.web-browser-engine";
    }
  }

  else if (v17 == 2)
  {
    v14 = "engine.webcontent";
  }

  else
  {
    if (v17 != 3)
    {
LABEL_10:
      v15 = 0;
      return v15 & 1;
    }

    v14 = "engine.networking";
    v12 = 0xD000000000000030;
  }

  v15 = sub_236E9C480(v12, v14 | 0x8000000000000000, a3, a4, a5, a6);

  if (v15 == 2)
  {
    goto LABEL_10;
  }

  return v15 & 1;
}

uint64_t sub_236E9CFA0(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  BrowserEngineEntitlement.init(rawValue:)(v4);
  if (v13 == 4)
  {
    goto LABEL_17;
  }

  if (qword_27DE8B100 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000031;
  v6 = "per.web-browser-engine";
  v7 = "engine.webcontent";
  v8 = 0xD000000000000030;
  if (v13 == 2)
  {
    v8 = 0xD000000000000031;
  }

  else
  {
    v7 = "engine.networking";
  }

  if (v13)
  {
    v6 = "per.web-browser-engine.host";
  }

  else
  {
    v5 = 0xD00000000000002BLL;
  }

  v9 = v13 <= 1u ? v5 : v8;
  v10 = v13 <= 1u ? v6 : v7;
  v11 = sub_236E9C480(v9, v10 | 0x8000000000000000, xmmword_27DE8B118, *(&xmmword_27DE8B118 + 1), qword_27DE8B128, unk_27DE8B130);

  if (v11 == 2)
  {
LABEL_17:
    v11 = 0;
  }

  return v11 & 1;
}