uint64_t sub_24DCAA144(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253035FF0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      while (1)
      {
        v7 = *v5++;
        v6 = v7;
        if (v7 != 3)
        {
          break;
        }

LABEL_3:
        result = sub_24DCB58C4();
        if (!--v3)
        {
          return result;
        }
      }

      sub_24DCB58C4();
      if (v6 != 2)
      {
        MEMORY[0x253035FF0](0);
        goto LABEL_3;
      }

      result = MEMORY[0x253035FF0](1);
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s16GRPCCoreInternal13ServiceConfigV013LoadBalancingD0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  else
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }
}

BOOL _s16GRPCCoreInternal13ServiceConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((sub_24DCA6EAC(*a1, *a2) & 1) == 0 || (sub_24DCA7090(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    return (v9 & 1) == 0 && v3 == v7 && v4 == v8;
  }

  return (v9 & 1) != 0;
}

unint64_t sub_24DCAA2D8()
{
  result = qword_27F1A7C60;
  if (!qword_27F1A7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C60);
  }

  return result;
}

unint64_t sub_24DCAA32C()
{
  result = qword_27F19F310;
  if (!qword_27F19F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F310);
  }

  return result;
}

uint64_t sub_24DCAA380(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F318, &qword_24DCBD960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DCAA3F8()
{
  result = qword_27F19F328;
  if (!qword_27F19F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F328);
  }

  return result;
}

unint64_t sub_24DCAA44C()
{
  result = qword_27F19F330;
  if (!qword_27F19F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F330);
  }

  return result;
}

uint64_t sub_24DCAA4A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F300, &qword_24DCBD958);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DCAA518()
{
  result = qword_27F19F348;
  if (!qword_27F19F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F348);
  }

  return result;
}

unint64_t sub_24DCAA56C()
{
  result = qword_27F19F358;
  if (!qword_27F19F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F358);
  }

  return result;
}

unint64_t sub_24DCAA5C0()
{
  result = qword_27F19F360;
  if (!qword_27F19F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F360);
  }

  return result;
}

unint64_t sub_24DCAA614()
{
  result = qword_27F1A7C68;
  if (!qword_27F1A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C68);
  }

  return result;
}

unint64_t sub_24DCAA668()
{
  result = qword_27F1A7C70;
  if (!qword_27F1A7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C70);
  }

  return result;
}

unint64_t sub_24DCAA6BC()
{
  result = qword_27F1A7C78;
  if (!qword_27F1A7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C78);
  }

  return result;
}

unint64_t sub_24DCAA710()
{
  result = qword_27F19F388;
  if (!qword_27F19F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F388);
  }

  return result;
}

unint64_t sub_24DCAA764()
{
  result = qword_27F19F390;
  if (!qword_27F19F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F390);
  }

  return result;
}

unint64_t sub_24DCAA7B8()
{
  result = qword_27F19F3A0;
  if (!qword_27F19F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3A0);
  }

  return result;
}

unint64_t sub_24DCAA80C()
{
  result = qword_27F19F3A8;
  if (!qword_27F19F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3A8);
  }

  return result;
}

unint64_t sub_24DCAA860()
{
  result = qword_27F1A7C80[0];
  if (!qword_27F1A7C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A7C80);
  }

  return result;
}

unint64_t sub_24DCAA8B8()
{
  result = qword_27F19F3C0;
  if (!qword_27F19F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3C0);
  }

  return result;
}

unint64_t sub_24DCAA910()
{
  result = qword_27F19F3C8;
  if (!qword_27F19F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3C8);
  }

  return result;
}

unint64_t sub_24DCAA968()
{
  result = qword_27F19F3D0;
  if (!qword_27F19F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3D0);
  }

  return result;
}

unint64_t sub_24DCAA9C0()
{
  result = qword_27F19F3D8;
  if (!qword_27F19F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3D8);
  }

  return result;
}

unint64_t sub_24DCAAA18()
{
  result = qword_27F19F3E0;
  if (!qword_27F19F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3E0);
  }

  return result;
}

uint64_t sub_24DCAAA6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DCAAAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
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
          goto LABEL_16;
        }

        return (*a1 | (v4 << 8)) - 3;
      }

      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 3;
      }
    }
  }

LABEL_16:
  v6 = *a1;
  if (*a1 >= 2u)
  {
    v7 = (v6 & 0xFE) + 2147483646;
    if ((v7 & 0x7FFFFFFE) != 0)
    {
      return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig.PickFirst(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig.Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24DCAAE0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24DCAAE28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t _s16GRPCCoreInternal13ServiceConfigV19LoadBalancingConfigV10RoundRobinVwet_0(unsigned int *a1, int a2)
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

_WORD *_s16GRPCCoreInternal13ServiceConfigV19LoadBalancingConfigV10RoundRobinVwst_0(_WORD *result, int a2, int a3)
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

unint64_t sub_24DCAAF78()
{
  result = qword_27F1A8810[0];
  if (!qword_27F1A8810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8810);
  }

  return result;
}

unint64_t sub_24DCAAFD0()
{
  result = qword_27F1A8A20[0];
  if (!qword_27F1A8A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8A20);
  }

  return result;
}

unint64_t sub_24DCAB028()
{
  result = qword_27F1A8DB0[0];
  if (!qword_27F1A8DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8DB0);
  }

  return result;
}

unint64_t sub_24DCAB080()
{
  result = qword_27F1A8FC0[0];
  if (!qword_27F1A8FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8FC0);
  }

  return result;
}

unint64_t sub_24DCAB0D8()
{
  result = qword_27F1A9150[0];
  if (!qword_27F1A9150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9150);
  }

  return result;
}

unint64_t sub_24DCAB130()
{
  result = qword_27F1A91E0;
  if (!qword_27F1A91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A91E0);
  }

  return result;
}

unint64_t sub_24DCAB188()
{
  result = qword_27F1A91E8[0];
  if (!qword_27F1A91E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A91E8);
  }

  return result;
}

unint64_t sub_24DCAB1E0()
{
  result = qword_27F1A9270;
  if (!qword_27F1A9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9270);
  }

  return result;
}

unint64_t sub_24DCAB238()
{
  result = qword_27F1A9278;
  if (!qword_27F1A9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9278);
  }

  return result;
}

unint64_t sub_24DCAB290()
{
  result = qword_27F1A9300;
  if (!qword_27F1A9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9300);
  }

  return result;
}

unint64_t sub_24DCAB2E8()
{
  result = qword_27F1A9308[0];
  if (!qword_27F1A9308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9308);
  }

  return result;
}

unint64_t sub_24DCAB340()
{
  result = qword_27F1A9390;
  if (!qword_27F1A9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9390);
  }

  return result;
}

unint64_t sub_24DCAB398()
{
  result = qword_27F1A9398[0];
  if (!qword_27F1A9398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9398);
  }

  return result;
}

unint64_t sub_24DCAB3F0()
{
  result = qword_27F1A9420;
  if (!qword_27F1A9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9420);
  }

  return result;
}

unint64_t sub_24DCAB448()
{
  result = qword_27F1A9428[0];
  if (!qword_27F1A9428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9428);
  }

  return result;
}

unint64_t sub_24DCAB49C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24DCB5634();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t ClientContext.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ClientContext.descriptor.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t ClientContext.remotePeer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ClientContext.remotePeer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ClientContext.localPeer.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ClientContext.localPeer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall ClientContext.init(descriptor:remotePeer:localPeer:)(GRPCCoreInternal::ClientContext *__return_ptr retstr, GRPCCoreInternal::MethodDescriptor descriptor, Swift::String remotePeer, Swift::String localPeer)
{
  v4 = *(descriptor.service.fullyQualifiedService._countAndFlagsBits + 16);
  v5 = *(descriptor.service.fullyQualifiedService._countAndFlagsBits + 24);
  retstr->descriptor.service = *descriptor.service.fullyQualifiedService._countAndFlagsBits;
  retstr->descriptor.method._countAndFlagsBits = v4;
  retstr->descriptor.method._object = v5;
  retstr->remotePeer._countAndFlagsBits = descriptor.service.fullyQualifiedService._object;
  retstr->remotePeer._object = descriptor.method._countAndFlagsBits;
  retstr->localPeer._countAndFlagsBits = descriptor.method._object;
  retstr->localPeer._object = remotePeer._countAndFlagsBits;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DCAB704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24DCAB74C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ClientInterceptor.intercept<A, B>(request:context:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_24DC2FD00;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ServerResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ServerResponse.Contents.trailingMetadata.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);

  *(v2 + v4) = v3;
  return result;
}

uint64_t ServerResponse.Contents.init(message:metadata:trailingMetadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a3;
  *a5 = *a2;
  v9 = type metadata accessor for ServerResponse.Contents(0, a4, a3, a4);
  result = (*(*(a4 - 8) + 32))(&a5[*(v9 + 28)], a1, a4);
  *&a5[*(v9 + 32)] = v8;
  return result;
}

uint64_t ServerResponse.accepted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ServerResponse.Contents(255, *(a1 + 16), a2, a3);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t ServerResponse.accepted.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ServerResponse.Contents(255, *(a2 + 16), a3, a4);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t ServerResponse.init(accepted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ServerResponse.Contents(255, a2, a3, a4);
  sub_24DC2E0D8();
  v7 = sub_24DCB5904();
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t StreamingServerResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_24DCABD54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24DCABD60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t StreamingServerResponse.Contents.producer.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StreamingServerResponse.Contents.producer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *StreamingServerResponse.Contents.init(metadata:producer:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t StreamingServerResponse.accepted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_24DC7CC28(v2, v3, v4, v5, v6, v7);
}

__n128 StreamingServerResponse.accepted.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_24DC7BD50(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 StreamingServerResponse.init(accepted:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return result;
}

uint64_t ServerResponse.init(message:metadata:trailingMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ServerResponse.Contents(0, a4, a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *a3;
  *(&v17 - v13) = *a2;
  (*(*(a4 - 8) + 32))(&v17 + *(v12 + 28) - v13, a1, a4);
  *&v14[*(v10 + 32)] = v15;
  (*(v11 + 32))(a5, v14, v10);
  sub_24DC2E0D8();
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ServerResponse.init(of:error:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v5;
  type metadata accessor for ServerResponse.Contents(255, a2, a2, a3);
  sub_24DC2E0D8();
  sub_24DCB5904();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ServerResponse.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for ServerResponse.Contents(0, *(a1 + 16), a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  sub_24DC2E0D8();
  v11 = sub_24DCB5904();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, v5, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v13 + 3);
    v16 = *(v13 + 4);

    result = MEMORY[0x2530363B0](v16);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v15 = *v10;
    v18 = *(v8 + 8);

    result = v18(v10, v7);
  }

  *a4 = v15;
  return result;
}

uint64_t sub_24DCAC2A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for ServerResponse(0, *(a1 + a2 - 8), a2, a4);
  result = ServerResponse.metadata.getter(v5, v6, v7, &v9);
  *a3 = v9;
  return result;
}

uint64_t sub_24DCAC2EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v9 = *a1;
  v5 = type metadata accessor for ServerResponse(0, v4, a3, a4);

  return ServerResponse.metadata.setter(&v9, v5, v6, v7);
}

uint64_t ServerResponse.metadata.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ServerResponse.Contents(0, *(a2 + 16), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - v8);
  sub_24DC2E0D8();
  v10 = sub_24DCB5904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = *a1;
  (*(v11 + 16))(&v20 - v12, v4, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v17 = *(v13 + 1);
    v16 = *(v13 + 2);
    v18 = *(v13 + 4);

    (*(v11 + 8))(v4, v10);
    *v4 = v15;
    *(v4 + 8) = v17;
    *(v4 + 16) = v16;
    *(v4 + 24) = v14;
    *(v4 + 32) = v18;
    swift_storeEnumTagMultiPayload();

    MEMORY[0x2530363C0](v18);

    return MEMORY[0x2530363B0](v18);
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);

    *v9 = v14;
    (*(v11 + 8))(v4, v10);
    (*(v7 + 16))(v4, v9, v6);
    swift_storeEnumTagMultiPayload();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t (*ServerResponse.metadata.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[1] = a2;
  a1[2] = v4;
  ServerResponse.metadata.getter(a2, a3, a4, a1);
  return sub_24DCAC618;
}

uint64_t sub_24DCAC618(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (a2)
  {
    v8 = *a1;

    ServerResponse.metadata.setter(&v8, v4, v5, v6);
  }

  else
  {
    v8 = *a1;
    return ServerResponse.metadata.setter(&v8, v4, a3, a4);
  }
}

double ServerResponse.message.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v17 = v4;
  type metadata accessor for ServerResponse.Contents(255, v4, v8, v9);
  v10 = sub_24DCB5904();
  sub_24DC64B5C(sub_24DCAC7F8, v10, v7);
  sub_24DC2F270(v5, v18, a2);
  if (v2)
  {
    v12 = v18[0];
    v13 = v19;
    v14 = v21;
    v16 = v20;
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v13;
    result = *&v16;
    *(v15 + 16) = v16;
    *(v15 + 32) = v14;
  }

  return result;
}

uint64_t sub_24DCAC7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = type metadata accessor for ServerResponse.Contents(0, v7, a2, a3);
  v9 = *(*(v7 - 8) + 16);
  v10 = a1 + *(v8 + 28);

  return v9(a4, v10, v7);
}

uint64_t ServerResponse.trailingMetadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for ServerResponse.Contents(0, *(a1 + 16), a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  sub_24DC2E0D8();
  v11 = sub_24DCB5904();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, v5, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v13 + 3);
    v16 = *(v13 + 4);

    result = MEMORY[0x2530363B0](v16);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v15 = *&v10[*(v7 + 32)];
    v18 = *(v8 + 8);

    result = v18(v10, v7);
  }

  *a4 = v15;
  return result;
}

void StreamingServerResponse.init(of:metadata:producer:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = a3;
  *(a4 + 40) = 0;
}

__n128 StreamingServerResponse.init(of:error:)@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[0];
  a2->n128_u64[0] = a1->n128_u8[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = v3;
  a2[2].n128_u8[8] = 1;
  return result;
}

uint64_t StreamingServerResponse.metadata.getter@<X0>(uint64_t *a1@<X8>)
{

  *a1 = result;
  return result;
}

uint64_t sub_24DCACAC8@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = v3;
  v11 = v4;
  result = StreamingServerResponse.metadata.getter(&v7);
  *a2 = v7;
  return result;
}

uint64_t sub_24DCACB1C(uint64_t *a1)
{
  v2 = *a1;

  return StreamingServerResponse.metadata.setter(&v2);
}

uint64_t StreamingServerResponse.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = v1[40];
  if (v5)
  {
    v17 = *v1;
    v6 = *(v1 + 4);

    MEMORY[0x2530363C0](v6);

    v7 = *v1;
    v8 = *(v1 + 1);
    v9 = *(v1 + 2);
    v10 = *(v1 + 3);
    v11 = *(v1 + 4);
    v16 = v1[40];

    MEMORY[0x2530363C0](v6);
    sub_24DC7BD50(v7, v8, v9, v10, v11, v16);
    *v1 = v17;
    *(v1 + 1) = v4;
    *(v1 + 2) = v3;
    *(v1 + 3) = v2;
    *(v1 + 4) = v6;
    v1[40] = 1;

    JUMPOUT(0x2530363B0);
  }

  v12 = *v1;
  v13 = *(v1 + 3);
  v14 = *(v1 + 4);

  swift_retain_n();
  sub_24DC7BD50(v12, v4, v3, v13, v14, v5);
  *v1 = v2;
  *(v1 + 1) = v4;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = v3;
  v1[40] = 0;
}

uint64_t (*StreamingServerResponse.metadata.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v3 = (v2 + 24);
  if (!*(v2 + 40))
  {
    v3 = v2;
  }

  *a1 = *v3;

  return sub_24DCACD40;
}

uint64_t sub_24DCACD40(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = *a1;

    StreamingServerResponse.metadata.setter(&v3);
  }

  else
  {
    v3 = *a1;
    return StreamingServerResponse.metadata.setter(&v3);
  }
}

uint64_t StreamingServerResponse.init(single:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for ServerResponse.Contents(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  sub_24DC2E0D8();
  v15 = sub_24DCB5904();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  (*(v18 + 32))(&v28 - v16, a1, v15);
  result = swift_getEnumCaseMultiPayload();
  v20 = result;
  if (result == 1)
  {
    v21 = *v17;
    v22 = *(v17 + 1);
    v23 = *(v17 + 2);
    v24 = *(v17 + 3);
    v25 = *(v17 + 4);
  }

  else
  {
    v29 = a2;
    v26 = *(v9 + 32);
    v26(v14, v17, v8);
    v21 = *v14;
    v26(v12, v14, v8);
    v27 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    v26((v23 + v27), v12, v8);

    v24 = 0;
    v25 = 0;
    v22 = &unk_24DCBE4A8;
  }

  *a5 = v21;
  *(a5 + 8) = v22;
  *(a5 + 16) = v23;
  *(a5 + 24) = v24;
  *(a5 + 32) = v25;
  *(a5 + 40) = v20 == 1;
  return result;
}

uint64_t sub_24DCAD020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v7 = type metadata accessor for ServerResponse.Contents(0, a4, a3, a4);
  v4[4] = v7;
  v8 = *(v7 + 28);
  v9 = swift_task_alloc();
  v4[5] = v9;
  type metadata accessor for RPCWriter(0, a4, v10, v11);
  *v9 = v4;
  v9[1] = sub_24DCAD100;

  return RPCWriter.write(_:)(a3 + v8);
}

uint64_t sub_24DCAD100()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24DCAD230, 0, 0);
  }
}

uint64_t sub_24DCAD230()
{
  **(v0 + 16) = *(*(v0 + 24) + *(*(v0 + 32) + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DCAD2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ServerResponse.Contents(0, v5, a3, a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 24) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);

  return swift_deallocObject();
}

uint64_t sub_24DCAD3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(type metadata accessor for ServerResponse.Contents(0, v8, a3, a4) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24DC2FD00;

  return sub_24DCAD020(a1, a2, v4 + v10, v8);
}

uint64_t sub_24DCAD4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ServerResponse.Contents(255, *(a1 + 16), a3, a4);
  sub_24DC2E0D8();
  result = sub_24DCB5904();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCAD560(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v3 <= 0x28)
  {
    v3 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v4 = v3 | 1;
  if ((v3 | 1) <= 3)
  {
    v5 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = a1[v3];
    if (v12 >= 2)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 255;
}

void sub_24DCAD688(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 | 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v5] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = a2 - 255;
  v11 = (a2 - 255) >> 8;
  bzero(a1, v5 | 1);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_21:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_24DCAD828(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCAD8A8(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24DCAD9F0(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_24DCADBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24DCADC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DCADC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24DCADCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DCADD24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
}

double sub_24DCADD48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_24DCADD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = 1;
}

double sub_24DCADD94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = result;
  *(a2 + 48) = v4;
  *(a2 + 56) = 1;
  return result;
}

double sub_24DCADDCC()
{
  v0 = sub_24DCB5954();
  sub_24DCB5954();
  return v1 / 1.0e18 + v0;
}

double sub_24DCADE24(uint64_t a1, uint64_t a2)
{
  v2 = sub_24DCB5954();
  sub_24DCB5954();
  return v3 / 1.0e18 + v2;
}

double sub_24DCADE78()
{
  v0 = sub_24DCB5954();
  sub_24DCB5954();
  return v1 / 1.0e18 + v0;
}

void sub_24DCADED0()
{
  v1 = *(v0 + 56);
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = pow(*(v0 + 40), (v1 - 1));
  v3 = sub_24DCB5954();
  sub_24DCB5954();
  v5 = v2 * (v4 / 1.0e18 + v3);
  v6 = sub_24DCB5954();
  sub_24DCB5954();
  if (v7 / 1.0e18 + v6 < v5)
  {
    v5 = v7 / 1.0e18 + v6;
  }

  if (v5 < 0.0)
  {
    goto LABEL_11;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_24DCAE0E4(0x20000000000001uLL);
  v9 = v5 * vcvtd_n_f64_u64(v8, 0x35uLL) + 0.0;
  if (v8 == 0x20000000000000)
  {
    v9 = v5;
  }

  sub_24DCAE6B8(v9);
  if (!__OFADD__(v1, 1))
  {
    *(v0 + 56) = v1 + 1;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_24DCADFF8(uint64_t a1@<X8>)
{
  sub_24DCADED0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
}

double sub_24DCAE024@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_24DCAE04C()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  v2 = sub_24DCAE170(v4);
  sub_24DCAE870(v4);
  return v2;
}

unint64_t sub_24DCAE0E4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x253036550](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x253036550](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DCAE170(void *a1)
{
  v1 = a1[1];
  v2 = *(a1 + 5);
  sub_24DCAE8A0(a1, v34);
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
  for (i = 1; ; v3 = i - 1)
  {
    v8 = pow(v2, v3);
    v9 = sub_24DCB5954();
    sub_24DCB5954();
    v11 = v8 * (v10 / 1.0e18 + v9);
    v12 = sub_24DCB5954();
    result = sub_24DCB5954();
    if (v14 / 1.0e18 + v12 < v11)
    {
      v11 = v14 / 1.0e18 + v12;
    }

    if (v11 < 0.0)
    {
      break;
    }

    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    do
    {
      v34[0] = 0;
      result = MEMORY[0x253036550](v34, 8);
    }

    while (0x20000000000001 * v34[0] < 0x1FFFFFFFFFF801);
    v15 = (v34[0] * 0x20000000000001uLL) >> 64;
    v16 = v11 * vcvtd_n_f64_u64(v15, 0x35uLL) + 0.0;
    if (v15 == 0x20000000000000)
    {
      v16 = v11;
    }

    if (v16 <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    if (v16 >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v17 = (v16 - v16) * 1.0e18;
    v18 = COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v18)
    {
      goto LABEL_35;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    result = sub_24DCB5964();
    v20 = __OFADD__(i++, 1);
    if (v20)
    {
      goto LABEL_38;
    }

    if (!v4)
    {
      v21 = v5[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v22 = v1;
      v23 = v19;
      v24 = result;
      v25 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F3F0, &unk_24DCBE768);
      v27 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v27);
      v29 = v28 - 32;
      if (v28 < 32)
      {
        v29 = v28 - 17;
      }

      v30 = v29 >> 4;
      v27[2] = v26;
      v27[3] = 2 * (v29 >> 4);
      v31 = (v27 + 4);
      v32 = v5[3] >> 1;
      if (v5[2])
      {
        v33 = v5 + 4;
        if (v27 != v5 || v31 >= v33 + 16 * v32)
        {
          memmove(v27 + 4, v33, 16 * v32);
        }

        v5[2] = 0;
      }

      v6 = (v31 + 16 * v32);
      v4 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

      v5 = v27;
      result = v24;
      v19 = v23;
      v1 = v22;
    }

    v20 = __OFSUB__(v4--, 1);
    if (v20)
    {
      goto LABEL_39;
    }

    *v6 = result;
    v6[1] = v19;
    v6 += 2;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

long double *sub_24DCAE450(long double *result, long double **a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v3 + 5);
  v10 = v3[6];
  if (!a2)
  {
    v11 = 0;
LABEL_22:
    v14 = 1;
LABEL_23:
    *result = v4;
    *(result + 1) = v5;
    *(result + 2) = v6;
    *(result + 3) = v7;
    *(result + 4) = v8;
    result[5] = v9;
    *(result + 6) = v10;
    *(result + 7) = v14;
    return v11;
  }

  v11 = a3;
  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = a2;
    v26 = v3[6];
    v27 = *v3;
    v28 = result;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = pow(v9, (v14 - 1));
      v16 = sub_24DCB5954();
      sub_24DCB5954();
      v18 = v15 * (v17 / 1.0e18 + v16);
      v19 = sub_24DCB5954();
      result = sub_24DCB5954();
      if (v20 / 1.0e18 + v19 < v18)
      {
        v18 = v20 / 1.0e18 + v19;
      }

      if (v18 < 0.0)
      {
        break;
      }

      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_25;
      }

      do
      {
        v29 = 0;
        result = MEMORY[0x253036550](&v29, 8);
      }

      while (0x20000000000001 * v29 < 0x1FFFFFFFFFF801);
      v21 = (v29 * 0x20000000000001uLL) >> 64;
      v22 = v18 * vcvtd_n_f64_u64(v21, 0x35uLL) + 0.0;
      if (v21 == 0x20000000000000)
      {
        v22 = v18;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v23 = (v22 - v22) * 1.0e18;
      v24 = COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL;
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v24)
      {
        goto LABEL_28;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v23 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      result = sub_24DCB5964();
      if (v13 == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_31;
      }

      ++v13;
      ++v14;
      *v12 = result;
      v12[1] = v25;
      v12 += 2;
      if (v13 == v11)
      {
        v4 = v27;
        result = v28;
        v10 = v26;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24DCAE6B8(double a1)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v1 = (a1 - a1) * 1.0e18;
  v2 = COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v2)
  {
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 < 9.22337204e18)
  {
    return sub_24DCB5964();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_24DCAE764()
{
  result = qword_27F19F3E8;
  if (!qword_27F19F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3E8);
  }

  return result;
}

uint64_t sub_24DCAE7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DCAE810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DCAE8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 84);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
}

uint64_t sub_24DCAE904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v30[0] = a8;
  v30[1] = a10;
  v30[2] = a11;
  v30[3] = a12;
  v30[4] = a13;
  v31 = a14;
  v32 = a15;
  v21 = _s13RetryExecutorVMa(0, v30);
  v22 = a9 + v21[21];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = v18;
  *(v22 + 40) = v19;
  *(v22 + 48) = v20;
  sub_24DC49B94(a3, a9 + v21[22]);
  *(a9 + v21[23]) = a4;
  (*(*(a12 - 8) + 32))(a9 + v21[24], a5, a12);
  result = (*(*(a13 - 8) + 32))(a9 + v21[25], a6, a13);
  *(a9 + v21[26]) = a7;
  return result;
}

uint64_t sub_24DCAEAAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 176) = a8;
  *(v9 + 184) = v8;
  *(v9 + 160) = a6;
  *(v9 + 168) = a7;
  *(v9 + 144) = a1;
  *(v9 + 152) = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v13 = sub_24DCB5904();
  *(v9 + 192) = v13;
  *(v9 + 200) = *(v13 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = *a2;
  v14 = *a3;
  *(v9 + 240) = *(a2 + 16);
  *(v9 + 248) = v14;
  *(v9 + 256) = *(a3 + 1);
  *(v9 + 272) = a3[3];
  v15 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v15;
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = *(a4 + 112);
  v16 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v16;
  v17 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v17;

  return MEMORY[0x2822009F8](sub_24DCAEC10, 0, 0);
}

uint64_t sub_24DCAEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 272);
  v16 = *(v4 + 240);
  v17 = *(v4 + 256);
  v6 = *(v4 + 176);
  v7 = *(v4 + 184);
  v8 = *(v4 + 168);
  v9 = type metadata accessor for _RetryExecutorTask(0, v6, a3, a4);
  v10 = swift_task_alloc();
  *(v4 + 280) = v10;
  v11 = *(v4 + 224);
  v12 = *(v4 + 152);
  *(v10 + 16) = *(v8 + 16);
  *(v10 + 24) = *(v8 + 24);
  *(v10 + 32) = *(v8 + 32);
  *(v10 + 48) = *(v8 + 48);
  *(v10 + 56) = v6;
  *(v10 + 64) = *(v8 + 56);
  *(v10 + 80) = *(v8 + 72);
  *(v10 + 88) = v7;
  *(v10 + 96) = v11;
  *(v10 + 112) = v16;
  *(v10 + 128) = v17;
  *(v10 + 144) = v5;
  *(v10 + 152) = v4 + 16;
  *(v10 + 160) = v12;
  v13 = swift_task_alloc();
  *(v4 + 288) = v13;
  *v13 = v4;
  v13[1] = sub_24DC49ED0;
  v14 = *(v4 + 216);

  return MEMORY[0x282200600](v14, v9);
}

uint64_t sub_24DCAED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v23;
  *(v8 + 568) = v22;
  *(v8 + 560) = v21;
  *(v8 + 552) = v20;
  *(v8 + 544) = v19;
  *(v8 + 512) = v17;
  *(v8 + 528) = v18;
  *(v8 + 480) = v15;
  *(v8 + 496) = v16;
  *(v8 + 464) = a7;
  *(v8 + 472) = a8;
  *(v8 + 448) = a5;
  *(v8 + 456) = a6;
  *(v8 + 432) = a3;
  *(v8 + 440) = a4;
  *(v8 + 416) = a1;
  *(v8 + 424) = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5904();
  *(v8 + 592) = v9;
  *(v8 + 600) = *(v9 - 8);
  *(v8 + 608) = swift_task_alloc();
  v10 = sub_24DCB5414();
  *(v8 + 616) = v10;
  *(v8 + 624) = *(v10 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  *(v8 + 656) = swift_task_alloc();
  v11 = sub_24DCB55B4();
  *(v8 + 664) = v11;
  v12 = *(v11 - 8);
  *(v8 + 672) = v12;
  *(v8 + 680) = *(v12 + 64);
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCAF010, 0, 0);
}

uint64_t sub_24DCAF010()
{
  v89 = v0;
  v1 = (v0 + 440);
  v2 = *(v0 + 536);
  *(v0 + 136) = *(v0 + 520);
  v81 = (v0 + 328);
  v82 = v0 + 200;
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 584);
  v7 = *(v0 + 552);
  v8 = *(v0 + 432);
  *(v0 + 152) = v2;
  *(v0 + 168) = v7;
  *(v0 + 176) = *(v0 + 568);
  *(v0 + 192) = v6;
  v79 = _s13RetryExecutorVMa(0, v0 + 136);
  sub_24DC4982C(v8 + v79[22], v5, &qword_27F19F000, &qword_24DCB9BC0);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    sub_24DC3DFD4(*(v0 + 656), &qword_27F19F000, &qword_24DCB9BC0);
  }

  else
  {
    v9 = *(v0 + 696);
    v10 = *(v0 + 688);
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    v13 = *(v0 + 648);
    v71 = *(v0 + 552);
    v14 = *(v11 + 32);
    v63 = *(v0 + 536);
    v65 = *(v0 + 520);
    v83 = *(v0 + 560);
    v68 = *(v0 + 576);
    v74 = v9;
    v14(v9, *(v0 + 656), v12);
    v15 = sub_24DCB51C4();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    (*(v11 + 16))(v10, v9, v12);
    v16 = (*(v11 + 80) + 104) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v65;
    *(v17 + 48) = v63;
    *(v17 + 64) = v71;
    *(v17 + 72) = v83;
    *(v17 + 88) = v68;
    v14(v17 + v16, v10, v12);
    type metadata accessor for _RetryExecutorTask(255, v83, v18, v19);
    v20 = sub_24DCB5174();
    sub_24DC4B67C(v13, &unk_24DCBE878, v17, v20);
    sub_24DC3DFD4(v13, &qword_27F19F050, &qword_24DCB9EB0);
    (*(v11 + 8))(v74, v12);
  }

  v21 = *(v0 + 648);
  v22 = *(v0 + 520);
  v23 = *(v0 + 456);
  v77 = *(v0 + 432);
  v24 = *(v77 + v79[26]);
  v66 = *(v0 + 528);
  v25 = *(v0 + 528);
  v69 = *(v0 + 560);
  v72 = *(v0 + 576);
  v75 = *(v0 + 544);
  v84 = *v1;
  nullsub_1();
  v28 = sub_24DC5CDE0(v26, v24, v25, v27);
  v30 = v29;
  *(v0 + 704) = v28;
  *(v0 + 712) = v29;
  v31 = sub_24DCB51C4();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v22;
  *(v32 + 40) = v66;
  *(v32 + 56) = v75;
  *(v32 + 72) = v69;
  *(v32 + 88) = v72;
  *(v32 + 104) = v84;
  *(v32 + 120) = v23;
  *(v32 + 128) = v28;
  *(v32 + 136) = v30;
  type metadata accessor for _RetryExecutorTask(255, v69, v33, v34);
  v35 = sub_24DCB5174();

  sub_24DC4B67C(v21, &unk_24DCBE858, v32, v35);
  sub_24DC3DFD4(v21, &qword_27F19F050, &qword_24DCB9EB0);
  v36 = v77 + v79[21];
  v37 = *v36;
  *(v0 + 720) = *v36;
  v38 = *(v36 + 40);
  v39 = *(v36 + 48);
  *&v87[0] = v37;
  *(v87 + 8) = *(v36 + 8);
  *(&v87[1] + 8) = *(v36 + 24);
  *(&v87[2] + 1) = v38;
  v88 = v39;

  sub_24DCADD48(v87, v81);
  v40 = *(v0 + 344);
  v87[0] = *v81;
  v87[1] = v40;
  v87[2] = *(v0 + 360);
  v88 = *(v0 + 376);
  result = sub_24DCADD6C(v82);
  if (v37 < 1)
  {
    __break(1u);
  }

  else
  {
    v85 = *(v0 + 584);
    v43 = *(v0 + 488);
    v42 = *(v0 + 496);
    v45 = *(v0 + 472);
    v44 = *(v0 + 480);
    v46 = *(v0 + 464);
    v47 = *(v0 + 424);
    v78 = *(v0 + 432);
    v80 = *(v0 + 456);
    v76 = *(v0 + 568);
    v48 = *(v76 + 48);
    *(v0 + 728) = v48;
    *(v0 + 736) = (v76 + 48) & 0xFFFFFFFFFFFFLL | 0xA05C000000000000;
    *(v0 + 744) = 1;
    *(v0 + 384) = v46;
    *(v0 + 392) = v45;
    *(v0 + 400) = v44;
    *(v0 + 408) = v43;
    v62 = *(v0 + 552);
    v64 = *(v0 + 536);
    v67 = *v1;
    v70 = *(v0 + 704);
    v61 = *(v0 + 520);
    v73 = *(v0 + 504);
    v49 = *v42;
    v50 = v42[1];
    v51 = v42[3];
    *(v0 + 48) = v42[2];
    *(v0 + 64) = v51;
    *(v0 + 16) = v49;
    *(v0 + 32) = v50;
    v52 = v42[4];
    v53 = v42[5];
    v54 = v42[6];
    *(v0 + 128) = *(v42 + 56);
    *(v0 + 96) = v53;
    *(v0 + 112) = v54;
    *(v0 + 80) = v52;
    v55 = swift_task_alloc();
    *(v0 + 752) = v55;
    *(v55 + 16) = v61;
    *(v55 + 32) = v64;
    *(v55 + 48) = v62;
    *(v55 + 64) = v76;
    *(v55 + 80) = v85;
    *(v55 + 88) = v47;
    *(v55 + 96) = v67;
    *(v55 + 112) = v80;
    *(v55 + 120) = v78;
    *(v55 + 128) = v70;
    *(v55 + 144) = v46;
    *(v55 + 152) = v45;
    *(v55 + 160) = v44;
    *(v55 + 168) = v43;
    *(v55 + 176) = 1;
    *(v55 + 184) = v73;
    *(v55 + 200) = v82;
    *(v55 + 208) = v81;
    v86 = (v48 + *v48);
    v56 = swift_task_alloc();
    *(v0 + 760) = v56;
    *v56 = v0;
    v56[1] = sub_24DCAF678;
    v57 = *(v0 + 640);
    v58 = *(v0 + 616);
    v59 = *(v0 + 568);
    v60 = *(v0 + 520);

    return v86(v57, v0 + 384, v0 + 16, &unk_24DCBE868, v55, v58, v60, v59);
  }

  return result;
}

uint64_t sub_24DCAF678()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_24DCAFBC4;
  }

  else
  {

    v2 = sub_24DCAF794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DCAF794()
{
  v1 = (v0 + 200);
  v2 = *(v0 + 632);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  (*(*(v0 + 624) + 32))(v2, *(v0 + 640), *(v0 + 616));
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 744);
    v6 = *(v0 + 720);
    result = (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    if (v5 == v6)
    {
      return sub_24DCB55E4();
    }

    else
    {
      v17 = *(v0 + 744);
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
      }

      else
      {
        *(v0 + 744) = v18;
        v46 = *(v0 + 584);
        v48 = *(v0 + 728);
        v20 = *(v0 + 488);
        v19 = *(v0 + 496);
        v21 = *(v0 + 472);
        v22 = *(v0 + 480);
        v23 = *(v0 + 464);
        v44 = *(v0 + 432);
        v45 = *(v0 + 456);
        v43 = *(v0 + 424);
        *(v0 + 384) = v23;
        *(v0 + 392) = v21;
        *(v0 + 400) = v22;
        *(v0 + 408) = v20;
        v38 = *(v0 + 552);
        v39 = *(v0 + 536);
        v40 = *(v0 + 440);
        v41 = *(v0 + 704);
        v36 = *(v0 + 520);
        v37 = *(v0 + 568);
        v42 = *(v0 + 504);
        v24 = *v19;
        v25 = v19[1];
        v26 = v19[3];
        *(v0 + 48) = v19[2];
        *(v0 + 64) = v26;
        *(v0 + 16) = v24;
        *(v0 + 32) = v25;
        v27 = v19[4];
        v28 = v19[5];
        v29 = v19[6];
        *(v0 + 128) = *(v19 + 56);
        *(v0 + 96) = v28;
        *(v0 + 112) = v29;
        *(v0 + 80) = v27;
        v30 = swift_task_alloc();
        *(v0 + 752) = v30;
        *(v30 + 16) = v36;
        *(v30 + 32) = v39;
        *(v30 + 48) = v38;
        *(v30 + 64) = v37;
        *(v30 + 80) = v46;
        *(v30 + 88) = v43;
        *(v30 + 96) = v40;
        *(v30 + 112) = v45;
        *(v30 + 120) = v44;
        *(v30 + 128) = v41;
        *(v30 + 144) = v23;
        *(v30 + 152) = v21;
        *(v30 + 160) = v22;
        *(v30 + 168) = v20;
        *(v30 + 176) = v18;
        *(v30 + 184) = v42;
        *(v30 + 200) = v1;
        *(v30 + 208) = v0 + 328;
        v47 = (v48 + *v48);
        v31 = swift_task_alloc();
        *(v0 + 760) = v31;
        *v31 = v0;
        v31[1] = sub_24DCAF678;
        v32 = *(v0 + 640);
        v33 = *(v0 + 616);
        v34 = *(v0 + 568);
        v35 = *(v0 + 520);

        return v47(v32, v0 + 384, v0 + 16, &unk_24DCBE868, v30, v33, v35, v34);
      }
    }
  }

  else
  {
    v8 = *(v0 + 632);
    v9 = *(v0 + 608);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = *(v0 + 416);

    sub_24DCAE870(v0 + 328);
    v13 = *(v10 + 32);
    v13(v9, v8, v11);
    v13(v12, v9, v11);
    v14 = *(v0 + 216);
    *(v0 + 264) = *v1;
    *(v0 + 280) = v14;
    v15 = *(v0 + 248);
    *(v0 + 296) = *(v0 + 232);
    *(v0 + 312) = v15;
    sub_24DCB4368(v0 + 264);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_24DCAFBC4()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 416);

  sub_24DCAE870(v0 + 328);

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 216);
  *(v0 + 264) = *(v0 + 200);
  *(v0 + 280) = v3;
  v4 = *(v0 + 248);
  *(v0 + 296) = *(v0 + 232);
  *(v0 + 312) = v4;
  sub_24DCB4368(v0 + 264);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24DCAFCF4(uint64_t a1, uint64_t a2)
{
  v10 = v2[12];
  v11 = v2[11];
  v8 = v2[14];
  v9 = v2[13];
  v7 = v2[15];
  v4 = v2[16];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DC334F4;

  return sub_24DCAED90(a1, a2, v11, v10, v9, v8, v7, v4);
}

uint64_t sub_24DCAFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = v6;
  v4[4] = a1;
  return MEMORY[0x2822009F8](sub_24DCAFE5C, 0, 0);
}

uint64_t sub_24DCAFE5C()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v3 = v0;
  v3[1] = sub_24DCAFF50;
  v5 = MEMORY[0x277D84950];
  v6 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4((v0 + 2), dword_24DCBE888, v2, v6, v4, v5);
}

uint64_t sub_24DCAFF50()
{

  return MEMORY[0x2822009F8](sub_24DCB0068, 0, 0);
}

uint64_t sub_24DCB0068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 32);
  v7 = *(v4 + 24);
  *v6 = *(v4 + 16);
  *(v6 + 8) = v7;
  type metadata accessor for _RetryExecutorTask(0, v5, a3, a4);
  swift_storeEnumTagMultiPayload();
  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_24DCB00F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_24DCB55C4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCB01B0, 0, 0);
}

uint64_t sub_24DCB01B0(uint64_t a1)
{
  *(v1 + 16) = sub_24DCB59A4();
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  sub_24DCB5854();
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  v4 = sub_24DC8C3A4();
  *v3 = v1;
  v3[1] = sub_24DC4B464;
  v5 = *(v1 + 72);
  v6 = *(v1 + 56);
  v7 = *(v1 + 40);

  return MEMORY[0x282200488](v7, v1 + 16, v5, v6, v4);
}

uint64_t sub_24DCB027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v14;
  *(v8 + 112) = v12;
  *(v8 + 128) = v13;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  return MEMORY[0x2822009F8](sub_24DCB02C0, 0, 0);
}

uint64_t sub_24DCB02C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = *(v0 + 96);
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 80) = v1;
  *(v3 + 88) = v7;
  *(v3 + 104) = v8;
  *(v3 + 120) = v2;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v9 = v0;
  v9[1] = sub_24DCB03E4;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4(v0 + 16, &unk_24DCBE8B8, v3, v12, v10, v11);
}

uint64_t sub_24DCB03E4()
{

  return MEMORY[0x2822009F8](sub_24DCB04FC, 0, 0);
}

uint64_t sub_24DCB04FC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_24DC5E100(v3, v4, *(v0 + 72), *(v0 + 88));
  *v2 = v3;
  *(v2 + 8) = v4;
  type metadata accessor for _RetryExecutorTask(0, v1, v5, v6);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24DCB05A4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 736) = v37;
  *(v8 + 728) = v36;
  *(v8 + 720) = v35;
  *(v8 + 712) = v34;
  *(v8 + 704) = v33;
  *(v8 + 696) = v32;
  *(v8 + 688) = v31;
  *(v8 + 680) = v30;
  *(v8 + 672) = v29;
  *(v8 + 664) = v28;
  *(v8 + 656) = v27;
  *(v8 + 624) = v25;
  *(v8 + 640) = v26;
  *(v8 + 592) = v23;
  *(v8 + 608) = v24;
  *(v8 + 584) = v22;
  *(v8 + 576) = a8;
  *(v8 + 568) = a7;
  *(v8 + 560) = a6;
  *(v8 + 552) = a5;
  *(v8 + 544) = a4;
  *(v8 + 536) = a2;
  *(v8 + 528) = a1;
  v10 = sub_24DCB55C4();
  *(v8 + 744) = v10;
  *(v8 + 752) = *(v10 - 8);
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  v11 = sub_24DCB55B4();
  *(v8 + 776) = v11;
  *(v8 + 784) = *(v11 - 8);
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v14 = type metadata accessor for _RetryExecutorTask(255, v34, v12, v13);
  *(v8 + 824) = v14;
  v15 = sub_24DCB5414();
  *(v8 + 832) = v15;
  *(v8 + 840) = *(v15 - 8);
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = *(v14 - 8);
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 192) = v29;
  *(v8 + 200) = v30;
  *(v8 + 208) = v31;
  *(v8 + 216) = v32;
  *(v8 + 224) = v33;
  *(v8 + 232) = v35;
  *(v8 + 240) = v36;
  *(v8 + 248) = v37;
  v16 = _s13RetryExecutorVMa(0, v8 + 192);
  *(v8 + 880) = v16;
  v17 = *(v16 - 8);
  *(v8 + 888) = v17;
  *(v8 + 896) = *(v17 + 64);
  *(v8 + 904) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 912) = swift_task_alloc();
  v18 = a3[1];
  *(v8 + 128) = *a3;
  *(v8 + 144) = v18;
  v19 = a3[3];
  *(v8 + 160) = a3[2];
  *(v8 + 176) = v19;

  return MEMORY[0x2822009F8](sub_24DCB0938, 0, 0);
}

uint64_t sub_24DCB0938()
{
  v1 = *(v0 + 912);
  v64 = v1;
  v2 = *(v0 + 904);
  v51 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v45 = v4;
  v46 = v2;
  v54 = *(v0 + 736);
  v62 = *(v0 + 640);
  v63 = *(v0 + 648);
  v60 = *(v0 + 624);
  v61 = *(v0 + 632);
  v58 = *(v0 + 608);
  v59 = *(v0 + 616);
  v56 = *(v0 + 592);
  v57 = *(v0 + 600);
  v55 = *(v0 + 584);
  v5 = *(v0 + 576);
  v53 = *(v0 + 568);
  v6 = *(v0 + 536);
  v7 = sub_24DCB51C4();
  v48 = *(v0 + 672);
  v49 = *(v0 + 704);
  v50 = *(v0 + 688);
  v47 = *(v0 + 720);
  v65 = *(v0 + 552);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for RPCResponsePart(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  *(v0 + 920) = v12;
  v13 = type metadata accessor for RPCAsyncSequence(255, v11, v12, MEMORY[0x277D84950]);
  v15 = type metadata accessor for RPCRequestPart(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v18 = type metadata accessor for RPCWriter.Closable(255, v15, v16, v17);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  *(v0 + 448) = v13;
  *(v0 + 456) = v18;
  *(v0 + 464) = WitnessTable;
  *(v0 + 472) = v20;
  v21 = type metadata accessor for RPCStream(0, v0 + 448);
  (*(*(v21 - 8) + 16))(v0 + 16, v6, v21);
  v22 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  v23 = (v51 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 71) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 119) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v26 + 39) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v48;
  *(v27 + 48) = v50;
  *(v27 + 64) = v49;
  *(v27 + 80) = v47;
  *(v27 + 96) = v54;
  *(v27 + 104) = v65;
  *(v27 + 120) = v53;
  (*(v3 + 32))(v27 + v22, v46, v45);
  v28 = (v27 + v23);
  v29 = *(v0 + 144);
  v30 = *(v0 + 160);
  v31 = *(v0 + 112);
  *v28 = *(v0 + 128);
  v28[1] = v29;
  v32 = *(v0 + 176);
  v28[2] = v30;
  v28[3] = v32;
  v33 = (v27 + v24);
  v34 = *(v0 + 32);
  *v33 = *(v0 + 16);
  v33[1] = v34;
  v35 = *(v0 + 80);
  v33[5] = *(v0 + 96);
  v33[6] = v31;
  v36 = *(v0 + 64);
  v33[2] = *(v0 + 48);
  v33[3] = v36;
  v33[4] = v35;
  v37 = (v27 + v25);
  *v37 = v55;
  v37[1] = v56;
  v38 = (v27 + v26);
  *v38 = v57;
  v38[1] = v58;
  v38[2] = v59;
  v38[3] = v60;
  *(v27 + v52) = v61;
  v39 = (v27 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v39 = v62;
  v39[1] = v63;

  sub_24DC56148(v0 + 128, v0 + 256);
  v40 = sub_24DCB5174();
  *(v0 + 928) = v40;

  sub_24DC4B67C(v64, &unk_24DCBE898, v27, v40);
  sub_24DC3DFD4(v64, &qword_27F19F050, &qword_24DCB9EB0);
  v41 = swift_task_alloc();
  *(v0 + 936) = v41;
  *v41 = v0;
  v41[1] = sub_24DCB0DF4;
  v42 = *(v0 + 928);
  v43 = *(v0 + 848);

  return MEMORY[0x2822002D0](v43, 0, 0, v42);
}

uint64_t sub_24DCB0DF4()
{

  return MEMORY[0x2822009F8](sub_24DCB0EF0, 0, 0);
}

uint64_t sub_24DCB0EF0()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 824);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    (*(*(v0 + 840) + 8))(v2, *(v0 + 832));
    v4 = sub_24DCB5904();
    v5 = *(v4 - 8);
    v6 = 1;
LABEL_3:
    (*(v5 + 56))(*(v0 + 528), v6, 1, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 872);
  v10 = *(v0 + 864);
  (*(v1 + 32))(v9, v2, v3);
  (*(v1 + 16))(v10, v9, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = *(v0 + 872);
      v29 = *(v0 + 864);
      v30 = *(v0 + 856);
      v31 = *(v0 + 824);
      v32 = *(v0 + 528);
      v4 = sub_24DCB5904();
      v5 = *(v4 - 8);
      (*(v5 + 32))(v32, v29, v4);
      sub_24DCB5164();
      (*(v30 + 8))(v28, v31);
      v6 = 0;
      goto LABEL_3;
    }

    v12 = *(v0 + 864);
    if (*(v12 + 8) == 1)
    {
      sub_24DC57738(*v12, 1);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v33 = *(v0 + 864);
    if (*(v33 + 8) != 1)
    {
      goto LABEL_18;
    }

    sub_24DC57738(*v33, 1);
LABEL_17:
    sub_24DCB5164();
LABEL_18:
    (*(*(v0 + 856) + 8))(*(v0 + 872), *(v0 + 824));
    v34 = swift_task_alloc();
    *(v0 + 936) = v34;
    *v34 = v0;
    v34[1] = sub_24DCB0DF4;
    v16 = *(v0 + 928);
    v13 = *(v0 + 848);
    v14 = 0;
    v15 = 0;

    return MEMORY[0x2822002D0](v13, v14, v15, v16);
  }

  if (*(*(v0 + 864) + 16) == 1)
  {
    sub_24DCB5584();
    sub_24DCADED0();
    if (v15)
    {
      __break(1u);
      return MEMORY[0x2822002D0](v13, v14, v15, v16);
    }

    v17 = *(v0 + 808);
    v18 = *(v0 + 784);
    v19 = *(v0 + 776);
    sub_24DCB5594();
    v20 = *(v18 + 8);
    *(v0 + 968) = v20;
    *(v0 + 976) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v17, v19);
    *(v0 + 480) = sub_24DCB59A4();
    *(v0 + 488) = v21;
    *(v0 + 496) = 0;
    sub_24DCB5854();
    v22 = swift_task_alloc();
    *(v0 + 984) = v22;
    v23 = sub_24DC8C3A4();
    *v22 = v0;
    v22[1] = sub_24DCB1800;
    v24 = *(v0 + 816);
    v25 = *(v0 + 760);
    v26 = *(v0 + 744);
    v27 = v0 + 480;
  }

  else
  {
    v35 = *(v0 + 792);
    v36 = *(v0 + 784);
    v37 = *(v0 + 776);
    v38 = *(v0 + 656);
    sub_24DCADD6C(v0 + 384);
    v39 = *v38;
    v40 = v38[1];
    v41 = v38[3];
    *(v0 + 352) = v38[2];
    *(v0 + 368) = v41;
    *(v0 + 320) = v39;
    *(v0 + 336) = v40;
    v42 = *(v0 + 384);
    v43 = *(v0 + 400);
    v44 = *(v0 + 432);
    v38[2] = *(v0 + 416);
    v38[3] = v44;
    *v38 = v42;
    v38[1] = v43;
    sub_24DCB4368(v0 + 320);
    sub_24DCB5584();
    sub_24DCB5594();
    v45 = *(v36 + 8);
    *(v0 + 944) = v45;
    *(v0 + 952) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v35, v37);
    *(v0 + 504) = sub_24DCB59A4();
    *(v0 + 512) = v46;
    *(v0 + 520) = 0;
    sub_24DCB5854();
    v47 = swift_task_alloc();
    *(v0 + 960) = v47;
    v23 = sub_24DC8C3A4();
    *v47 = v0;
    v47[1] = sub_24DCB14E8;
    v24 = *(v0 + 800);
    v25 = *(v0 + 768);
    v26 = *(v0 + 744);
    v27 = v0 + 504;
  }

  return MEMORY[0x282200488](v24, v27, v25, v26, v23);
}

uint64_t sub_24DCB14E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[118];
    v4 = v2[100];
    v5 = v2[97];
    v6 = v2[96];
    v7 = v2[94];
    v8 = v2[93];
    MEMORY[0x2530363B0](v0);
    (*(v7 + 8))(v6, v8);
    v3(v4, v5);
  }

  else
  {
    v9 = v2[118];
    v10 = v2[100];
    v11 = v2[97];
    (*(v2[94] + 8))(v2[96], v2[93]);
    v9(v10, v11);
  }

  return MEMORY[0x2822009F8](sub_24DCB1690, 0, 0);
}

uint64_t sub_24DCB1690()
{
  (*(v0[107] + 8))(v0[109], v0[103]);
  v1 = sub_24DCB5904();
  (*(*(v1 - 8) + 56))(v0[66], 1, 1, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DCB1800()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[121];
    v4 = v2[102];
    v5 = v2[97];
    v6 = v2[95];
    v7 = v2[94];
    v8 = v2[93];
    MEMORY[0x2530363B0](v0);
    (*(v7 + 8))(v6, v8);
    v3(v4, v5);
  }

  else
  {
    v9 = v2[121];
    v10 = v2[102];
    v11 = v2[97];
    (*(v2[94] + 8))(v2[95], v2[93]);
    v9(v10, v11);
  }

  return MEMORY[0x2822009F8](sub_24DCB1690, 0, 0);
}

uint64_t sub_24DCB19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v20;
  *(v8 + 360) = v21;
  *(v8 + 320) = v18;
  *(v8 + 336) = v19;
  *(v8 + 288) = v16;
  *(v8 + 304) = v17;
  *(v8 + 256) = v14;
  *(v8 + 272) = v15;
  *(v8 + 224) = v12;
  *(v8 + 240) = v13;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a1;
  *(v8 + 200) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  *(v8 + 368) = swift_task_alloc();
  v9 = sub_24DCB55B4();
  *(v8 + 376) = v9;
  *(v8 + 384) = *(v9 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCB1AEC, 0, 0);
}

uint64_t sub_24DCB1AEC()
{
  v1 = *(v0 + 312);
  *(v0 + 16) = *(v0 + 296);
  v2 = (v0 + 200);
  *(v0 + 176) = *(v0 + 200);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 328);
  v8 = *(v0 + 208);
  *(v0 + 32) = v1;
  *(v0 + 48) = v7;
  *(v0 + 56) = *(v0 + 344);
  *(v0 + 72) = v5;
  v9 = _s13RetryExecutorVMa(0, v0 + 16);
  sub_24DC4982C(v8 + *(v9 + 88), v6, &qword_27F19F000, &qword_24DCB9BC0);
  if ((*(v4 + 48))(v6, 1, v3) == 1)
  {
    v10 = *(v0 + 368);

    sub_24DC3DFD4(v10, &qword_27F19F000, &qword_24DCB9BC0);
  }

  else
  {
    v11 = *(v0 + 392);
    v12 = *(v0 + 400);
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    (*(v14 + 32))(v12, *(v0 + 368), v13);

    sub_24DCB5574();
    v15 = sub_24DCB55A4();
    v17 = v16;
    v18 = *(v14 + 8);
    v18(v11, v13);
    sub_24DC7F3A0(v15, v17, 0);
    v18(v12, v13);
    v2 = (v0 + 176);
  }

  v19 = *v2;
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);
  v22 = *(v0 + 240);
  v23 = *(v0 + 216);
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  *(v0 + 112) = v23[2];
  *(v0 + 128) = v24;
  *(v0 + 184) = v19;
  *(v0 + 80) = v26;
  *(v0 + 96) = v25;
  *(v0 + 144) = v22;
  *(v0 + 160) = v21;
  *(v0 + 168) = v20;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v27 = v0;
  v27[1] = sub_24DCB1D98;
  v29 = *(v0 + 280);
  v30 = *(v0 + 272);
  v31 = *(v0 + 224);
  v32 = *(v0 + 232);
  v33 = *(v0 + 192);

  return sub_24DCB1F24(v33, (v0 + 80), v31, (v0 + 184), v32, v28, v30, v29);
}

uint64_t sub_24DCB1D98()
{

  return MEMORY[0x2822009F8](sub_24DCB1EB0, 0, 0);
}

uint64_t sub_24DCB1EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DCB1F24(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = v15;
  *(v9 + 160) = v8;
  *(v9 + 136) = v14;
  *(v9 + 120) = v13;
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a3;
  *(v9 + 96) = a5;
  *(v9 + 80) = a1;
  v10 = a2[1];
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  v11 = a2[3];
  *(v9 + 48) = a2[2];
  *(v9 + 64) = v11;
  *(v9 + 168) = *a4;
  return MEMORY[0x2822009F8](sub_24DCB1F7C, 0, 0);
}

uint64_t sub_24DCB1F7C()
{
  v1 = *(v0 + 168);
  v17 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  v8 = *(v3 + 16);
  v16 = *(v0 + 136);
  type metadata accessor for _RetryExecutorTask(0, *(v0 + 136), v9, v10);
  v11 = *(v0 + 112);
  *(v7 + 16) = v8;
  *(v7 + 24) = *(v3 + 24);
  *(v7 + 32) = *(v3 + 32);
  *(v7 + 48) = *(v3 + 48);
  *(v7 + 56) = v16;
  *(v7 + 72) = *(v3 + 56);
  *(v7 + 88) = *(v3 + 72);
  *(v7 + 96) = v2;
  *(v7 + 104) = v1;
  *(v7 + 112) = v5;
  *(v7 + 120) = v0 + 16;
  *(v7 + 128) = v4;
  *(v7 + 136) = v17;
  *(v7 + 144) = v6;
  *(v7 + 152) = v11;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_24DCB210C;
  v13 = *(v0 + 80);
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v13, v14);
}

uint64_t sub_24DCB210C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DCB221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 440) = v19;
  *(v8 + 424) = v18;
  *(v8 + 408) = v17;
  *(v8 + 392) = v15;
  *(v8 + 400) = v16;
  *(v8 + 376) = v14;
  *(v8 + 360) = v13;
  *(v8 + 344) = v12;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  *(v8 + 280) = a1;
  *(v8 + 288) = a2;
  *(v8 + 448) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5904();
  *(v8 + 456) = v9;
  *(v8 + 464) = *(v9 - 8);
  *(v8 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCB2358, 0, 0);
}

uint64_t sub_24DCB2358()
{
  v37 = v0;
  v1 = *(v0 + 416);
  v30 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v33 = *(v0 + 328);
  v34 = *(v0 + 424);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v48 = *(v0 + 296);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  v32 = *(v0 + 392);
  *(v8 + 48) = v32;
  *(v8 + 64) = v30;
  *(v8 + 72) = v1;
  *(v8 + 80) = v34;
  v31 = *(v0 + 432);
  *(v8 + 88) = v31;
  *(v8 + 104) = v7;

  nullsub_1();
  StreamingClientRequest.init(of:metadata:producer:)(&v48, &unk_24DCBE830, v8, &v35);
  v9 = v36;
  *(v0 + 488) = v36;
  v10 = v35;
  *(v0 + 480) = v35;
  v11 = *v6;
  v12 = v6[1];
  v13 = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v13;
  *(v0 + 16) = v11;
  *(v0 + 32) = v12;
  *(v0 + 256) = v10;
  *(v0 + 272) = v9;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  *(v0 + 112) = v32;
  *(v0 + 120) = v1;
  *(v0 + 128) = v34;
  *(v0 + 136) = v31;
  v14 = _s13RetryExecutorVMa(0, v0 + 80);
  *(v0 + 496) = v14;
  v16 = v14[24];
  v15 = v14[25];
  v17 = *(v33 + v14[23]);
  v18 = swift_task_alloc();
  *(v0 + 504) = v18;
  *v18 = v0;
  v18[1] = sub_24DCB2584;
  v20 = *(v0 + 432);
  v19 = *(v0 + 440);
  v21 = *(v0 + 408);
  v23 = *(v0 + 384);
  v22 = *(v0 + 392);
  v25 = *(v0 + 368);
  v24 = *(v0 + 376);
  v26 = *(v0 + 336);
  v27 = *(v0 + 320);
  v28 = *(v0 + 288);
  v46 = *(v0 + 424);
  v47 = v20;
  v44 = v22;
  v45 = v19;
  v42 = v21;
  v43 = v23;
  v40 = v25;
  v41 = v24;
  v39 = v26;

  return sub_24DC81E14(v0 + 144, v28, v0 + 16, v0 + 256, v27, v33 + v16, v33 + v15, v17);
}

uint64_t sub_24DCB2584()
{

  return MEMORY[0x2822009F8](sub_24DCB2680, 0, 0);
}

uint64_t sub_24DCB2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = v4;
  type metadata accessor for StreamingClientResponse.Contents(255, *(v4 + 376), a3, a4);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4 + 200, v4 + 144, v5);
  if ((*(v4 + 248) & 1) == 0)
  {
    if ((*(*(v4 + 416) + 24))(*(v4 + 360)))
    {
      sub_24DC93230();
    }

    (*(v6 + 8))(v4 + 200, v5);
    goto LABEL_21;
  }

  v7 = *(v4 + 496);
  v8 = *(v4 + 416);
  v9 = *(v4 + 360);
  v10 = *(v4 + 328);
  v11 = *(v4 + 224);
  v12 = *(v4 + 232);
  v46 = *(v4 + 200);
  Status.Code.init(_:)(&v46);
  v13 = (v10 + *(v7 + 84));
  LOBYTE(v7) = sub_24DC529CC(v45, v13[6]);
  v14 = (*(v8 + 24))(v9, v8);
  if ((v7 & 1) == 0)
  {
    if (v14)
    {
      sub_24DC93230();

      MEMORY[0x2530363B0](v12);
    }

    else
    {

      MEMORY[0x2530363B0](v12);
    }

    goto LABEL_21;
  }

  if (v14)
  {
    v15 = sub_24DC93278();

    v16 = !v15;
  }

  else
  {
    v16 = 1;
  }

  v47 = v11;
  v17 = sub_24DC7F274();
  v19 = v18;
  v21 = v20;

  MEMORY[0x2530363B0](v12);
  if ((v21 & 0x100) != 0)
  {
    if (((*v13 > *(v4 + 320)) & v16) == 0)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v17 = 0;
  }

  else if ((v21 & 1) != 0 || ((*v13 > *(v4 + 320)) & v16) != 1)
  {
    goto LABEL_21;
  }

  sub_24DC5CFCC(*(v4 + 304), *(v4 + 368), v22, v23);
  if (sub_24DC5CF1C())
  {
    v24 = *(v4 + 400);
    v25 = *(v4 + 280);

    *v25 = v17;
    *(v25 + 8) = v19;
    *(v25 + 16) = HIBYTE(v21) & 1;
    type metadata accessor for _RetryExecutorTask(0, v24, v26, v27);
    swift_storeEnumTagMultiPayload();
    v30 = type metadata accessor for StreamingClientResponse(0, *(v4 + 376), v28, v29);
    (*(*(v30 - 8) + 8))(v4 + 144, v30);

    v31 = *(v4 + 8);

    return v31();
  }

LABEL_21:
  v33 = *(v4 + 440);
  v34 = swift_task_alloc();
  *(v4 + 512) = v34;
  v35 = *(v4 + 376);
  v36 = *(v4 + 392);
  v37 = *(v4 + 408);
  v38 = *(v4 + 424);
  v39 = *(v4 + 344);
  *(v34 + 16) = *(v4 + 360);
  *(v34 + 32) = v35;
  *(v34 + 48) = v36;
  *(v34 + 64) = v37;
  *(v34 + 80) = v38;
  *(v34 + 96) = v33;
  *(v34 + 104) = v39;
  *(v34 + 120) = v4 + 144;
  v40 = swift_task_alloc();
  *(v4 + 520) = v40;
  *v40 = v4;
  v40[1] = sub_24DCB2AA0;
  v41 = *(v4 + 472);
  v42 = *(v4 + 448);
  v43 = *(v4 + 400);
  v44 = MEMORY[0x277D84950];

  return sub_24DC8C5F4(v41, dword_24DCBE840, v34, v43, v42, v44);
}

uint64_t sub_24DCB2AA0()
{

  return MEMORY[0x2822009F8](sub_24DCB2BB8, 0, 0);
}

uint64_t sub_24DCB2BB8()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[50];
  v5 = v0[35];

  (*(v2 + 32))(v5, v1, v3);
  type metadata accessor for _RetryExecutorTask(0, v4, v6, v7);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for StreamingClientResponse(0, v0[47], v8, v9);
  (*(*(v10 - 8) + 8))(v0 + 18, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24DCB2CC0(uint64_t a1, uint64_t a2)
{
  v5 = v2[13];
  v6 = v2[14];
  v7 = v2[15];
  v8 = v2[16];
  v9 = v2[17];
  v10 = v2[18];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC2FD00;

  return sub_24DCB221C(a1, a2, v5, v6, v7, v8, v9, v10);
}

void sub_24DCB2DFC(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24DC8C078(319);
    if (v2 <= 0x3F)
    {
      sub_24DC547E8(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24DCB2EE4(_DWORD *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v6 = *(v53 - 8);
  v52 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_24DCB55B4() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = a3[6];
  v14 = *(a3[5] - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v13 - 8);
  if (v12 <= v16)
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v12;
  }

  v19 = *(v17 + 84);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v14 + 80);
  v24 = *(v14 + 64);
  v25 = *(v17 + 80);
  v26 = *(v17 + 64);
  if (v18 <= v19)
  {
    v27 = *(v17 + 84);
  }

  else
  {
    v27 = v18;
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  if (v10)
  {
    v29 = v22;
  }

  else
  {
    v29 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v30 = v29 + 7;
  v31 = v23 + 8;
  v32 = v24 + v25;
  if (v28 < a2)
  {
    v33 = ((v26 + ((v32 + ((v31 + ((v30 + ((v21 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v23)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v34 = a2 - v28;
    v35 = v33 & 0xFFFFFFF8;
    if ((v33 & 0xFFFFFFF8) != 0)
    {
      v36 = 2;
    }

    else
    {
      v36 = v34 + 1;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 < 2)
    {
      v37 = 0;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *(a1 + v33);
        if (v38)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v38 = *(a1 + v33);
        if (v38)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v37)
    {
      v38 = *(a1 + v33);
      if (v38)
      {
LABEL_34:
        v39 = v38 - 1;
        if (v35)
        {
          v39 = 0;
          v40 = *a1;
        }

        else
        {
          v40 = 0;
        }

        return v28 + (v40 | v39) + 1;
      }
    }
  }

  if (v7 == v28)
  {
    v41 = v53;
    v42 = *(v52 + 48);
    v43 = a1;
    v44 = v7;
LABEL_42:

    return v42(v43, v44, v41);
  }

  v46 = (a1 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v27 & 0x80000000) == 0)
  {
    v47 = *(v46 + 48);
    if (v47 >= 0xFFFFFFFF)
    {
      LODWORD(v47) = -1;
    }

    return (v47 + 1);
  }

  v48 = (v46 + v21 + 56) & ~v21;
  if (v11 == v28)
  {
    if (v10 >= 2)
    {
      v51 = (*(v9 + 48))(v48);
      if (v51 >= 2)
      {
        return v51 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v49 = (v31 + ((v30 + v48) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
  if (v16 != v28)
  {
    v42 = *(*(v13 - 8) + 48);
    v43 = ((v32 + v49) & ~v25);
    v44 = v19;
    v41 = v13;
    goto LABEL_42;
  }

  v50 = *(v15 + 48);

  return v50(v49, v16);
}

void sub_24DCB32BC(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v9 = *(v8 - 8);
  v47 = v9;
  v10 = *(v9 + 84);
  v11 = 0;
  v12 = *(sub_24DCB55B4() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = a4[5];
  v17 = *(v16 - 8);
  if (v10 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v10;
  }

  v19 = *(a4[5] - 8);
  v20 = *(v17 + 84);
  if (v18 <= v20)
  {
    v21 = *(v17 + 84);
  }

  else
  {
    v21 = v18;
  }

  v22 = a4[6];
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  v25 = *(v9 + 64);
  v26 = *(v12 + 80);
  v27 = *(v12 + 64);
  v28 = *(v17 + 80);
  v29 = *(v17 + 64);
  v30 = *(v23 + 80);
  if (v21 <= v24)
  {
    v31 = *(v23 + 84);
  }

  else
  {
    v31 = v21;
  }

  if (v31 <= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v32 = v31;
  }

  if (v14)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + 1;
  }

  v34 = v33 + 7;
  v35 = ((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32 < a3)
  {
    v36 = a3 - v32;
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 2;
    }

    if (v37 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v37 < 0x100)
    {
      v11 = 1;
    }

    if (v37 < 2)
    {
      v11 = 0;
    }
  }

  if (a2 > v32)
  {
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v38 = a2 - v32;
    }

    else
    {
      v38 = 1;
    }

    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v39 = ~v32 + a2;
      bzero(a1, v35);
      *a1 = v39;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v35) = v38;
      }

      else
      {
        *(a1 + v35) = v38;
      }
    }

    else if (v11)
    {
      *(a1 + v35) = v38;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v35) = 0;
  }

  else if (v11)
  {
    *(a1 + v35) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v10 == v32)
  {
    v40 = *(v47 + 56);
    v41 = a1;
    v42 = a2;
    v43 = v10;
    v16 = v8;
    goto LABEL_50;
  }

  v44 = (a1 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v31 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v44 + 40) = 0u;
      *(v44 + 24) = 0u;
      *(v44 + 8) = 0u;
      *v44 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v44 + 48) = (a2 - 1);
    }

    return;
  }

  v45 = (v44 + v26 + 56) & ~v26;
  if (v15 != v32)
  {
    v41 = ((v28 + 8 + ((v34 + v45) & 0xFFFFFFFFFFFFFFF8)) & ~v28);
    if (v20 != v32)
    {
      v40 = *(v23 + 56);
      v41 = ((v41 + v29 + v30) & ~v30);
      v42 = a2;
      v43 = v24;
      v16 = v22;

      goto LABEL_70;
    }

    v40 = *(v19 + 56);
    v42 = a2;
    v43 = v20;
LABEL_50:

LABEL_70:
    v40(v41, v42, v43, v16);
    return;
  }

  if (v14 >= 2)
  {
    v46 = *(v13 + 56);

    v46(v45, (a2 + 1));
  }
}

void sub_24DCB3708(uint64_t a1)
{
  sub_24DC55134(319);
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DCB5904();
    if (v2 <= 0x3F)
    {
      sub_24DCB3AB4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24DCB37C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 17;
  if (v3 + 1 > 0x11)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_24DCB38EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x11)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 17;
  }

  v7 = v6 + 1;
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 252) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_24DCB3AB4()
{
  if (!qword_27F19F3F8)
  {
    v0 = sub_24DCB5414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F3F8);
    }
  }
}

uint64_t sub_24DCB3B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a2;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  v9 = type metadata accessor for RPCWriter(0, a4, v7, v8);
  v12 = type metadata accessor for BroadcastAsyncSequence(0, a4, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  *v6 = v4;
  v6[1] = sub_24DC4C43C;

  return RPCWriterProtocol.write<A>(contentsOf:)(v4 + 16, v9, v12, WitnessTable, v14);
}

uint64_t sub_24DCB3C2C()
{

  return swift_deallocObject();
}

uint64_t sub_24DCB3C64(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC334F4;

  return sub_24DCB3B04(a1, v5, v7, v4);
}

uint64_t sub_24DCB3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = v6;
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCB3D44, 0, 0);
}

uint64_t sub_24DCB3D44()
{
  sub_24DCB5234();
  v5 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24DCB3E8C;
  v2 = v0[5];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_24DCB3E8C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DCB3FC0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DCB3FE4(uint64_t a1)
{
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC2FD00;

  return sub_24DCB3D14(a1, v4, v5, v6);
}

uint64_t sub_24DCB40AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DCB4104(uint64_t a1)
{
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v8 = v1[16];
  v7 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24DC334F4;

  return sub_24DCB027C(a1, v9, v10, v4, v5, v6, v8, v7);
}

uint64_t sub_24DCB420C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v10 = v3[12];
  v11 = v3[11];
  v8 = v3[14];
  v9 = v3[13];
  v7 = v3[15];
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24DC334F4;

  return sub_24DCB05A4(a1, a2, a3, v11, v10, v9, v8, v7);
}

uint64_t sub_24DCB43BC()
{
  v1 = sub_24DCB55B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DCB4480(uint64_t a1)
{
  v4 = *(sub_24DCB55B4() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DC334F4;

  return sub_24DCAFE30(a1, v6, v7, v1 + v5);
}

uint64_t sub_24DCB4568(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC334F4;

  return sub_24DCB00F0(v6, v5, a2);
}

uint64_t sub_24DCB4604()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 96);
  v16 = *(v0 + 32);
  v14 = v16;
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = *(v0 + 80);
  v21 = v4;
  v5 = _s13RetryExecutorVMa(0, &v16);
  v15 = *(*(v5 - 1) + 80);
  v6 = (v15 + 128) & ~v15;
  v7 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v6;
  (*(*(v14 - 8) + 8))(v0 + v6);

  v9 = v5[22];
  v10 = sub_24DCB55B4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  (*(*(v2 - 8) + 8))(v8 + v5[24], v2);
  (*(*(v3 - 8) + 8))(v8 + v5[25], v3);

  v12 = v0 + ((((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8);

  __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  __swift_destroy_boxed_opaque_existential_1((v12 + 72));

  return swift_deallocObject();
}

uint64_t sub_24DCB48E4(uint64_t a1)
{
  v3 = v1[6];
  v19 = v1[5];
  v4 = v1[8];
  v18 = v1[7];
  v5 = v1[11];
  v17 = v1[10];
  v6 = v1[12];
  v2[2] = v1[4];
  v2[3] = v19;
  v2[4] = v3;
  v2[5] = v18;
  v2[6] = v4;
  v2[7] = v17;
  v2[8] = v5;
  v2[9] = v6;
  v7 = *(_s13RetryExecutorVMa(0, (v2 + 2)) - 8);
  v8 = (*(v7 + 80) + 128) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v1[13];
  v14 = swift_task_alloc();
  v2[10] = v14;
  *v14 = v2;
  v14[1] = sub_24DC56054;

  return sub_24DCB19A8(a1, v10, v11, v16, v12, v13, v1 + v8, v1 + v9);
}

uint64_t sub_24DCB4B08()
{

  return swift_deallocObject();
}

uint64_t sub_24DCB4B40()
{
  v2 = v0[3];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[15];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DC334F4;

  return sub_24DC4BBC4(v6, v7, v3, v4, v8, v5, v9, v2);
}