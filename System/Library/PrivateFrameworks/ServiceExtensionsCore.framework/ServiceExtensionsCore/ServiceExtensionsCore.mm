uint64_t se_memory_inline_jit_restrict_rwx_to_rx_with_witness_impl()
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

  if (v0 != StatusReg)
  {
    __break(0xC471u);
    JUMPOUT(0x26575814CLL);
  }

  __isb(0xFu);
  return 0;
}

uint64_t se_memory_inline_jit_restrict_rwx_to_rw_with_witness_impl(uint64_t a1, uint64_t a2)
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
  result = 4868436;
  if (a2 == 4868436 && v2 == a1)
  {
    return 0;
  }

  __break(0xC471u);
  return result;
}

BOOL _SECheckEntitlmentForAuditToken(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return [_SESwiftCBridge checkEntitlement:a1 forAuditToken:v4];
}

ServiceExtensionsCore::_BrowserEngineEntitlement_optional __swiftcall _BrowserEngineEntitlement.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0xD00000000000002BLL && 0x80000002657595A0 == rawValue._object;
  if (v5 || (sub_2657591D0() & 1) != 0)
  {
    v6 = 0;
LABEL_7:

    goto LABEL_8;
  }

  if (countAndFlagsBits == 0xD000000000000031 && 0x80000002657595D0 == object || (sub_2657591D0() & 1) != 0)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (countAndFlagsBits == 0xD000000000000031 && 0x8000000265759610 == object || (sub_2657591D0() & 1) != 0)
  {
    v6 = 2;
    goto LABEL_7;
  }

  v6 = 3;
  if (countAndFlagsBits == 0xD000000000000030 && 0x8000000265759650 == object)
  {
    goto LABEL_7;
  }

  v8 = sub_2657591D0();

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

unint64_t _BrowserEngineEntitlement.description.getter()
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

unint64_t sub_2657584B0()
{
  result = qword_28001D198;
  if (!qword_28001D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D198);
  }

  return result;
}

uint64_t sub_265758504(unsigned __int8 a1, unsigned __int8 a2)
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
    v7 = sub_2657591D0();
  }

  return v7 & 1;
}

uint64_t sub_265758628()
{
  sub_2657591E0();
  sub_2657591B0();

  return sub_2657591F0();
}

uint64_t sub_2657586DC(uint64_t a1)
{
  sub_2657591B0();
}

uint64_t sub_26575877C(uint64_t a1)
{
  sub_2657591E0();
  sub_2657591B0();

  return sub_2657591F0();
}

void sub_265758838(unint64_t *a1@<X8>)
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

unint64_t sub_2657588AC()
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

uint64_t getEnumTagSinglePayload for _BrowserEngineEntitlement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _BrowserEngineEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_265758A9C(uint64_t a1, int a2)
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

uint64_t sub_265758ABC(uint64_t result, int a2, int a3)
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
  if (!qword_28001D1A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28001D1A0);
    }
  }
}

__int128 *sub_265758B3C()
{
  result = [objc_opt_self() auditTokenForCurrentProcess];
  if (result)
  {
    v1 = result[1];
    xmmword_28001D1A8 = *result;
    *&qword_28001D1B8 = v1;
  }

  else
  {
    result = sub_2657591C0();
    __break(1u);
  }

  return result;
}

void __swiftcall AuditToken.init(_:)(ServiceExtensionsCore::AuditToken *__return_ptr retstr, audit_token_t *a2)
{
  *retstr->inner.val = a2;
  *&retstr->inner.val[2] = v2;
  *&retstr->inner.val[4] = v3;
  *&retstr->inner.val[6] = v4;
}

double static AuditToken.current.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_28001D190 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_28001D1A8;
  v2 = *&qword_28001D1B8;
  *a1 = xmmword_28001D1A8;
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

uint64_t sub_265758C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2657591A0();
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

Swift::Bool __swiftcall AuditToken.has(browserEngineEntitlement:)(ServiceExtensionsCore::_BrowserEngineEntitlement browserEngineEntitlement)
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

  v13 = sub_265758C7C(v11, v12 | 0x8000000000000000, v4, v5, v6, v7);

  return v13 & 1;
}

id sub_265758EE8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SwiftCBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_265758F40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0xD000000000000031;

  v13._countAndFlagsBits = a1;
  v13._object = a2;
  _BrowserEngineEntitlement.init(rawValue:)(v13);
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

  v15 = sub_265758C7C(v12, v14 | 0x8000000000000000, a3, a4, a5, a6);

  if (v15 == 2)
  {
    goto LABEL_10;
  }

  return v15 & 1;
}

uint64_t sub_265759058(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  _BrowserEngineEntitlement.init(rawValue:)(v4);
  if (v13 == 4)
  {
    goto LABEL_17;
  }

  if (qword_28001D190 != -1)
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
  v11 = sub_265758C7C(v9, v10 | 0x8000000000000000, xmmword_28001D1A8, *(&xmmword_28001D1A8 + 1), qword_28001D1B8, unk_28001D1C0);

  if (v11 == 2)
  {
LABEL_17:
    v11 = 0;
  }

  return v11 & 1;
}