_BYTE *sub_1DCE5E06C(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    v10 = *a2;
    v11 = *a2;
    *__dst = v10;
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCE5E1CC(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v19 = *__src;
    v20 = v19;
    *__dst = v19;
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

_BYTE *sub_1DCE5E3F8(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *__dst = *a2;
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCE5E544(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    *__dst = *__src;
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

uint64_t sub_1DCE5E768(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCE5E8B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE5EA98(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCE5EB3C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCE5EC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a3 + 40) = a4;
  *(a3 + 48) = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a3 + 16));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  *(a3 + 80) = a5;
  *(a3 + 88) = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1Tm((a3 + 56));
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  *(a3 + 112) = nullsub_1;
  *(a3 + 120) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = -256;
  return a3;
}

uint64_t static PromptFlowProviderType.selection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_85(a1, a2, a3, a4, a5);
  *v5 = result | 0xC000000000000000;
  return result;
}

uint64_t static PromptFlowProviderType.continuation<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  result = sub_1DD0C5628(a1);
  *a2 = result | 0x4000000000000000;
  return result;
}

BOOL static PromptFlowProviderType.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  switch(*a1 >> 62)
  {
    case 1:
      return v2 >> 62 == 1;
    case 2:
      return v2 >> 62 == 2;
    case 3:
      return v2 >> 62 == 3;
    default:
      return !(v2 >> 62);
  }
}

uint64_t static PromptFlowProviderType.action<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_85(a1, a2, a3, a4, a5);
  *v5 = result;
  return result;
}

uint64_t static PromptFlowProviderType.menu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_85(a1, a2, a3, a4, a5);
  *v5 = result | 0x8000000000000000;
  return result;
}

uint64_t sub_1DCE5EE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
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

uint64_t sub_1DCE5EE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = swift_allocObject();
  PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  return v5;
}

__n128 sub_1DCE5EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  *(v21 + 80) = a9;
  *(v21 + 96) = a10;
  result = a12;
  *(v21 + 112) = a12;
  *(v21 + 128) = a13;
  *(v21 + 136) = a14;
  return result;
}

void PromptForConfirmationFlow.__allocating_init(itemToConfirm:strategy:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_11();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = OUTLINED_FUNCTION_95_4();
  v8(v7);
  sub_1DCB17D04(v1, &v11);
  v9 = type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v10 = swift_allocObject();
  sub_1DCAFF9E8(&v11, v10 + 16);
  v12 = v9;
  v13 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v11 = v10;
  sub_1DCE601A0();
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  (*(v4 + 8))(v0, AssociatedTypeWitness);
  OUTLINED_FUNCTION_49();
}

uint64_t ConfirmationResponse.description.getter()
{
  if (*v0)
  {
    return 0x657463656A65722ELL;
  }

  else
  {
    return 0x6D7269666E6F632ELL;
  }
}

uint64_t ConfirmationResponse.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

void ServerProvidedSiriKitConfirmationResponseParser.parseConfirmationResponse(input:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_13_49();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_48_18();
  sub_1DCB2479C(a1 + v7, v2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
    sub_1DD0DC76C();
    OUTLINED_FUNCTION_2();
    (*(v10 + 8))(v2);
    switch(*(v9 + 24))
    {
      case 1:
      case 3:

        v11 = 1;
        break;
      case 2:

        v11 = 0;
        break;
      default:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v16 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
        v13 = sub_1DD0DD8EC();
        v17 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_75(v17))
        {
          *OUTLINED_FUNCTION_50_0() = 0;
          OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v18, v19, "Could not parse confirmation response from input: Input has missing confirmation state");
          OUTLINED_FUNCTION_80();
        }

        goto LABEL_13;
    }
  }

  else
  {
    sub_1DCB28690(v2, type metadata accessor for Parse);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v12 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v14))
    {
      v15 = OUTLINED_FUNCTION_50_0();
      *v15 = 0;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "Could not parse confirmation response from input: Input is not a NLv3 Intent with a server conversion", v15, 2u);
      OUTLINED_FUNCTION_80();
    }

LABEL_13:

    v11 = 2;
  }

  *a2 = v11;
}

void PromptForConfirmationFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD0FCF30;
  v9[5] = 0;
  v9[6] = a2;
  v9[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t PromptForConfirmationFlowStrategy.makeConfirmationRejectedResponse(_:)(void (*a1)(void *))
{
  v3[3] = type metadata accessor for EmptyOutput();
  v3[4] = &protocol witness table for EmptyOutput;
  v3[0] = swift_allocObject();
  v4 = 0;
  a1(v3);
  return sub_1DCCD16C4(v3);
}

void PromptForConfirmationFlowStrategy.makeFlowCancelledResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v7);
  OUTLINED_FUNCTION_41_4();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_1DD0FCF38;
  v8[5] = 0;
  v8[6] = a1;
  v8[7] = a2;
  sub_1DD0DCF8C();
}

void PromptForConfirmationFlowStrategy.makeErrorResponse(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD0FCF48;
  v9[5] = 0;
  v9[6] = a2;
  v9[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE5F840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDCA70();
}

uint64_t sub_1DCE5F8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DCE5FA88(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)();
}

uint64_t PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE5FBA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1);
}

uint64_t sub_1DCE5FC50()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EmptyOutput();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &protocol witness table for EmptyOutput;
  *v1 = v3;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE5FCD0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCE5FDEC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)();
}

uint64_t PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t PromptForConfirmationFlowStrategyAsync.actionForInputWrapper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE5FF24()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 32))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t PromptForConfirmationFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_96();
  v7 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v6, v4, *(v5 + 96));
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37[-v12 - 8];
  OUTLINED_FUNCTION_96();
  v15 = *(v14 + 128);
  OUTLINED_FUNCTION_156(v1 + v15, v37);
  (*(v9 + 16))(v13, v1 + v15, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v28 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v28, v29, v30, v31);
      OUTLINED_FUNCTION_28();
      return swift_storeEnumTagMultiPayload();
    case 6:
      v23 = v13[8];
      *a1 = *v13;
      *(a1 + 8) = v23;
      v24 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v24, v25, v26, v27);
      OUTLINED_FUNCTION_28();
      return swift_storeEnumTagMultiPayload();
    case 5:
      v17 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v17, v18, v19, v20);
      OUTLINED_FUNCTION_2();
      return (*(v21 + 32))(a1, v13);
    default:
      *a1 = sub_1DCE62188();
      *(a1 + 8) = 0;
      v32 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v32, v33, v34, v35);
      OUTLINED_FUNCTION_28();
      swift_storeEnumTagMultiPayload();
      return (*(v9 + 8))(v13, v7);
  }
}

uint64_t sub_1DCE601A0()
{
  OUTLINED_FUNCTION_58_1();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  sub_1DCE601E4();
  return v0;
}

void sub_1DCE601E4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v21[1] = v2;
  v22 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_13();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v21 - v11;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for PromptForConfirmationFlowAsync(v15, v16, v13, AssociatedConformanceWitness);
  (*(v8 + 16))(v12, v5, AssociatedTypeWitness);
  v17 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for AnyPromptForConfirmationFlowStrategy(v17, v18, v13, AssociatedConformanceWitness);
  swift_unknownObjectRetain();
  sub_1DCE603C8();
  v19 = v22;
  sub_1DCB17D04(v22, &v23);
  v20 = sub_1DCE60404();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  (*(v8 + 8))(v5, AssociatedTypeWitness);
  *(v1 + 16) = v20;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE603C8()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_56();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  sub_1DCE657B8();
  return v0;
}

uint64_t sub_1DCE60404()
{
  OUTLINED_FUNCTION_58_1();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  sub_1DCE629A8();
  return v0;
}

void PromptForConfirmationFlowAsync.on(input:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v65 = v2;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_92_8();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_92_8();
  OUTLINED_FUNCTION_92_8();
  v11 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v8, v10, *(v9 + 96));
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v64 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v64 - v19;
  v21 = *(v8 - 8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v64 - v24;
  OUTLINED_FUNCTION_92_8();
  v27 = *(v26 + 128);
  OUTLINED_FUNCTION_156(v0 + v27, v66 + 1);
  (*(v13 + 16))(v20, v0 + v27, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v21 + 32))(v25, v20, v8);
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_48_18();
    v29 = v28;
    v30 = v65;
    sub_1DCB2479C(v65 + v31, v6, v28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCB28690(v6, v29);
    v33 = v25;
    v34 = v8;
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v37))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_233(&dword_1DCAFC000, v38, v39, "PromptForConfirmationFlow received empty parse. Will handle and reprompt.");
        OUTLINED_FUNCTION_80();
      }

LABEL_7:

      v40 = OUTLINED_FUNCTION_71_10();
      v41(v40);
      OUTLINED_FUNCTION_68();
LABEL_31:
      swift_storeEnumTagMultiPayload();
      sub_1DCE62678(v36);
      (*(v21 + 8))(v33, v34);
      goto LABEL_32;
    }

    if ((sub_1DCE967E0(v30) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v50 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v51))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_233(&dword_1DCAFC000, v52, v53, "PromptForConfirmationFlow received low confidence input. Treating as misunderstood and will reprompt.");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_7;
    }

    (*(*(v1 + 56) + 16))(v66, v30);
    if (!LOBYTE(v66[0]))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v54 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v56))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_233(&dword_1DCAFC000, v57, v58, "PromptForConfirmationFlow received cancel action from delegate. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      v36 = v64;
      OUTLINED_FUNCTION_68();
      goto LABEL_31;
    }

    if (LOBYTE(v66[0]) == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v46 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v48))
      {
        v49 = OUTLINED_FUNCTION_50_0();
        *v49 = 0;
        _os_log_impl(&dword_1DCAFC000, v47, v48, "PromptForConfirmationFlow received handle action from delegate. Transitioning to responseReceived state.", v49, 2u);
        OUTLINED_FUNCTION_80();
      }

      v36 = v64;
      sub_1DCB2479C(v30, v64, type metadata accessor for Input);
      OUTLINED_FUNCTION_68();
      goto LABEL_31;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v59 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v59, qword_1EDE57E00);
    v60 = sub_1DD0DD8EC();
    v61 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v61))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v62, v63, "PromptForConfirmationFlow received ignore action from delegate. Ignoring.");
      OUTLINED_FUNCTION_80();
    }

    (*(v21 + 8))(v33, v8);
  }

  else
  {
    (*(v13 + 8))(v20, v11);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v42 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
    v43 = sub_1DD0DD8EC();
    v44 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v45);
      _os_log_impl(&dword_1DCAFC000, v43, v44, "PromptForConfirmationFlow received input but is not in the promptSent state. Ignoring.", v11, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_49();
}

uint64_t PromptForConfirmationFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE60AF8()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_31_1(v1);

  return PromptForConfirmationFlowAsync.execute()();
}

uint64_t PromptForConfirmationFlowAsync.execute()()
{
  OUTLINED_FUNCTION_39();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_20_0(v4);
  v1[7] = OUTLINED_FUNCTION_38();
  v5 = *(v3 + 80);
  v1[8] = v5;
  v1[9] = *(v5 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_104();
  v6 = OUTLINED_FUNCTION_80_8();
  v10 = type metadata accessor for PromptForConfirmationFlowAsync.State(v6, v7, v8, v9);
  v1[13] = v10;
  v1[14] = *(v10 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCE60D18()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[6];
  v5 = *(*v4 + 128);
  OUTLINED_FUNCTION_156(v4 + v5, (v0 + 2));
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 5u:
    case 6u:
      (*(v0[14] + 8))(v0[16], v0[13]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v6 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      sub_1DCC333DC(v0[16], v0[7]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v7 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v9))
      {
        v10 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v10);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[21] = v16;
      *v16 = v17;
      v16[1] = sub_1DCE6175C;
      OUTLINED_FUNCTION_76();

      result = sub_1DCE63204();
      break;
    case 3u:
      (*(v0[9] + 32))(v0[11], v0[16], v0[8]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v44 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v46))
      {
        v47 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v47);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v48, v49, v50, v51, v52, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[23] = v53;
      *v53 = v54;
      v53[1] = sub_1DCE618E0;
      OUTLINED_FUNCTION_97_6();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE63E00();
      break;
    case 4u:
      (*(v0[9] + 32))(v0[10], v0[16], v0[8]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v56 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v56, qword_1EDE57E00);
      v57 = sub_1DD0DD8EC();
      v58 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v58))
      {
        v59 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v59);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[25] = v65;
      *v65 = v66;
      v65[1] = sub_1DCE61A74;
      OUTLINED_FUNCTION_97_6();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE64060();
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v34))
      {
        v35 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v35);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v36, v37, v38, v39, v40, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[19] = v41;
      *v41 = v42;
      v41[1] = sub_1DCE615DC;
      OUTLINED_FUNCTION_97_6();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE62EE8();
      break;
    default:
      (*(v0[9] + 32))(v0[12], v0[16], v0[8]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v22))
      {
        v23 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v23);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v24, v25, v26, v27, v28, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[17] = v29;
      *v29 = v30;
      v29[1] = sub_1DCE61448;
      OUTLINED_FUNCTION_97_6();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE62BCC();
      break;
  }

  return result;
}

uint64_t sub_1DCE61448()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE61544()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_93_5();
  v0();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE615DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE616D8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE6175C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE61858()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_52_21();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE618E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE619DC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_93_5();
  v0();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE61A74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE61B70()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE61C0C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_93_5();
  v2();
  v3 = *(v1 + 144);
  OUTLINED_FUNCTION_17_36();
  v4 = v3;
  sub_1DCE62678(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCE61CCC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 160);
  OUTLINED_FUNCTION_17_36();
  v3 = v2;
  sub_1DCE62678(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCE61D78()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_52_21();
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_17_36();
  v3 = v2;
  sub_1DCE62678(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCE61E28()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_93_5();
  v2();
  v3 = *(v1 + 192);
  OUTLINED_FUNCTION_17_36();
  v4 = v3;
  sub_1DCE62678(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCE61EE8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  (*(v1[9] + 8))(v1[10], v1[8]);
  v2 = v1[26];
  OUTLINED_FUNCTION_17_36();
  v3 = v2;
  sub_1DCE62678(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_22_32();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t PromptForConfirmationFlow.__deallocating_deinit()
{
  PromptForConfirmationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE620C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return PromptForConfirmationFlow.execute()(a1);
}

uint64_t sub_1DCE62188()
{
  v1 = v0;
  v2 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1DD0DEC1C();
  v16 = v14;
  v17 = v15;
  MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD113180);
  v7 = *(*v0 + 128);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  swift_getWitnessTable();
  sub_1DD0DF08C();
  (*(v3 + 8))(v6, v2);
  v8 = v16;
  v9 = v17;
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v10 = CommandFailure.init(errorCode:reason:)(-1, v8, v9);
  sub_1DCC7AE30();
  result = swift_allocError();
  *v12 = v10;
  return result;
}

void sub_1DCE62394()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  v5 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v3, v4, *(v2 + 96));
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - v10;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
  swift_retain_n();
  v31 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v31, v13))
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v14 = 136315394;
    v15 = *(v0 + 8);
    v16 = *(v1 + 9);
    v17 = *(v1 + 10);
    v18 = *(v1 + 11);

    v19 = MEMORY[0x1E12A66E0](v15, v16, v17, v18);
    v21 = v20;

    v22 = sub_1DCB10E9C(v19, v21, &v33);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2080;
    v23 = *(*v1 + 128);
    OUTLINED_FUNCTION_156(&v1[v23], &v32);
    (*(v7 + 16))(v11, &v1[v23], v5);

    v24 = sub_1DCE645B4(v5);
    v26 = v25;

    (*(v7 + 8))(v11, v5);
    v27 = sub_1DCB10E9C(v24, v26, &v33);

    *(v14 + 14) = v27;
    _os_log_impl(&dword_1DCAFC000, v31, v13, "PromptForConfirmationFlow [%s] transitioned to state %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    OUTLINED_FUNCTION_49();
  }

  else
  {

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCE62678(uint64_t a1)
{
  v3 = *v1;
  v4 = (*v1)[16];
  swift_beginAccess();
  v5 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v3[10], v3[11], v3[12]);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  sub_1DCE62394();
  return (*(v6 + 8))(a1, v5);
}

void PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v29 = v2;
  v4 = v3;
  v5 = *v0;
  v6 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_13_49();
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v8 + 8))(v0, v6);
  v11 = sub_1DCB598EC(8);
  OUTLINED_FUNCTION_90_8(v11, v12, v13, v14);
  v16 = *(v15 + 128);
  v17 = *(v5 + 80);
  OUTLINED_FUNCTION_112();
  v19 = v18;
  (*(v18 + 16))(v0 + v16, v4, v17);
  v20 = OUTLINED_FUNCTION_98_7();
  type metadata accessor for PromptForConfirmationFlowAsync.State(v20, v21, v22, v23);
  swift_storeEnumTagMultiPayload();
  v24 = OUTLINED_FUNCTION_98_7();
  type metadata accessor for AnyPromptForConfirmationFlowStrategy(v24, v25, v26, v27);
  v28 = sub_1DCE6296C();
  (*(v19 + 8))(v4, v17);
  v1[7] = v28;
  sub_1DCAFF9E8(v29, (v1 + 2));
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE6296C()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_56();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  sub_1DCE64A3C();
  return v0;
}

void sub_1DCE629A8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_13_49();
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v11 + 8))(v0, v9);
  v14 = sub_1DCB598EC(8);
  OUTLINED_FUNCTION_90_8(v14, v15, v16, v17);
  v19 = *(v18 + 128);
  v20 = v8[10];
  OUTLINED_FUNCTION_112();
  (*(v21 + 32))(&v1[v19], v7, v20);
  type metadata accessor for PromptForConfirmationFlowAsync.State(0, v20, v8[11], v8[12]);
  swift_storeEnumTagMultiPayload();
  *(v1 + 7) = v5;
  sub_1DCAFF9E8(v3, (v1 + 16));
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE62BCC()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_13();
  v1[10] = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  v8 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v6, v7, *(v5 + 96));
  v1[11] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v1[12] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE62C84()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_57_11();
  OUTLINED_FUNCTION_78_13(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE62D30;
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE62D30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_88_8();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE62E2C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_112();
  (*(v3 + 16))(v1);
  swift_storeEnumTagMultiPayload();
  sub_1DCE62678(v1);
  static ExecuteResponse.ongoing(requireInput:)(1, v2);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE62EE8()
{
  OUTLINED_FUNCTION_42();
  v1[7] = v2;
  v1[8] = v0;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  v1[9] = *(v3 + 88);
  OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v5, v6, *(v4 + 96));
  v1[10] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v1[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE62F9C()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_1DCE63060;
  OUTLINED_FUNCTION_21_2();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE63060()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE63160()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 88);
  type metadata accessor for PromptResult(0, *(v0 + 72), v2, v3);
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCE62678(v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE63204()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v1[19] = v5;
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 96);
  v1[20] = v7;
  v9 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v8, v5, v7);
  v1[21] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v1[22] = OUTLINED_FUNCTION_38();
  v1[23] = *(v5 - 8);
  v1[24] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE6330C()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[25] = v1;
  *v1 = v2;
  v1[1] = sub_1DCE633A4;
  v3 = v0[24];
  v4 = v0[17];

  return sub_1DCE66CBC(v3, v4);
}

uint64_t sub_1DCE633A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE634A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  (*(*(v11 + 160) + 8))(*(v11 + 152));
  v15 = *(v11 + 264);
  if (v15 == 2)
  {
    OUTLINED_FUNCTION_102_2();
    v16 = OUTLINED_FUNCTION_25_0();
    type metadata accessor for PromptResult(v16, v17, v18, v19);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCE62678(v13);
    (*(v14 + 8))(v10, v12);
    static ExecuteResponse.complete()();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_121();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }

  if ((v15 & 1) == 0)
  {
    OUTLINED_FUNCTION_102_2();
    (*(v14 + 16))(v13, v10, v12);
    v29 = OUTLINED_FUNCTION_25_0();
    type metadata accessor for PromptResult(v29, v30, v31, v32);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1((*(v11 + 144) + 16), *(*(v11 + 144) + 40));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v11 + 216) = v20;
  *v20 = v21;
  v20[1] = sub_1DCE6366C;
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_121();

  return sub_1DCB63BBC(v22, v23, v24, v25, v26);
}

uint64_t sub_1DCE6366C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE6376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = v10[23];
  v11 = v10[24];
  v13 = v10[22];
  v14 = v10[19];
  v15 = OUTLINED_FUNCTION_95_4();
  v16(v15);
  type metadata accessor for PromptResult(0, v14, v17, v18);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCE62678(v13);
  (*(v12 + 8))(v11, v14);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1DCE63854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE63960()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[19];
  *v2 = v1;
  *(v2 + 8) = 1;
  type metadata accessor for PromptResult(0, v3, v4, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DCE62678(v2);

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCE63A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v22 = v18[26];
  v18[29] = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    a9 = v19;
    OUTLINED_FUNCTION_119_0(4.8149e-34);
    v28 = sub_1DD0DF18C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v27 + 4) = v30;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v31, v32, "PromptForConfirmationFlow encountered an error while trying to parse user input: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v33 = OUTLINED_FUNCTION_87_2();
  v18[30] = v33;
  *(v33 + 16) = v19;
  *(v33 + 24) = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v18[31] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_47_18(v34);
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_121();

  return sub_1DCB63BBC(v36, v37, v38, v39, v40);
}

uint64_t sub_1DCE63BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  (*(v18[23] + 8))(v18[24], v18[19]);
  v22 = v18[28];
  v18[29] = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    a9 = v19;
    OUTLINED_FUNCTION_119_0(4.8149e-34);
    v28 = sub_1DD0DF18C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v27 + 4) = v30;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v31, v32, "PromptForConfirmationFlow encountered an error while trying to parse user input: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v33 = OUTLINED_FUNCTION_87_2();
  v18[30] = v33;
  *(v33 + 16) = v19;
  *(v33 + 24) = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v18[31] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_47_18(v34);
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_121();

  return sub_1DCB63BBC(v36, v37, v38, v39, v40);
}

uint64_t sub_1DCE63D6C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 232);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE63E00()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_13();
  v1[10] = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  v8 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v6, v7, *(v5 + 96));
  v1[11] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v1[12] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE63EB8()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_57_11();
  OUTLINED_FUNCTION_78_13(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE63F64;
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE63F64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_88_8();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE64060()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_13();
  v1[10] = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  v8 = type metadata accessor for PromptForConfirmationFlowAsync.State(0, v6, v7, *(v5 + 96));
  v1[11] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v1[12] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE64118()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_57_11();
  OUTLINED_FUNCTION_78_13(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE63F64;
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE641C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE641E8, 0, 0);
}

uint64_t sub_1DCE641E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_5(v1);

  return sub_1DCE66CD4(v3, v4);
}

uint64_t sub_1DCE6426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE64290, 0, 0);
}

uint64_t sub_1DCE64290()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_5(v1);

  return sub_1DCE66D9C(v3, v4);
}

uint64_t sub_1DCE64314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE64338, 0, 0);
}

uint64_t sub_1DCE64338()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_5(v1);

  return sub_1DCE66E64(v3, v4);
}

uint64_t sub_1DCE643BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE643DC, 0, 0);
}

uint64_t sub_1DCE643DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE66FF8(v3);
}

uint64_t sub_1DCE64464(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE64484, 0, 0);
}

uint64_t sub_1DCE64484()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE66F2C(v3);
}

uint64_t sub_1DCE6450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE64530, 0, 0);
}

uint64_t sub_1DCE64530()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_5(v1);

  return sub_1DCE670C4(v3, v4);
}

unint64_t sub_1DCE645B4(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6C6C65636E61632ELL;
  v8 = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = 0x5374706D6F72702ELL;
      goto LABEL_8;
    case 2:
      v8 = 0xD000000000000011;
      goto LABEL_8;
    case 3:
      v8 = 0x65646E7573696D2ELL;
      goto LABEL_8;
    case 4:
      v8 = 0x61507974706D652ELL;
      goto LABEL_8;
    case 5:
      v8 = 0x74656C706D6F632ELL;
      goto LABEL_8;
    case 6:
      v8 = 0x726F7272652ELL;
      goto LABEL_8;
    case 7:
      return result;
    default:
LABEL_8:
      (*(v3 + 8))(v5, a1);
      return v8;
  }
}

char *PromptForConfirmationFlowAsync.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = *(*v0 + 128);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_104();
  type metadata accessor for PromptForConfirmationFlowAsync.State(0, v3, v4, *(v2 + 96));
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(&v0[v1]);
  return v0;
}

uint64_t PromptForConfirmationFlowAsync.__deallocating_deinit()
{
  PromptForConfirmationFlowAsync.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE6497C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForConfirmationFlowAsync.execute()();
}

void *sub_1DCE64A3C()
{
  OUTLINED_FUNCTION_79_11();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_11_8();
  v0[2] = sub_1DCE64B00(v1, v2, v3, v4, v5);
  v0[3] = v6;
  v7 = OUTLINED_FUNCTION_9_62();
  v0[4] = sub_1DCE64B88(v7, v8, v9, v10, v11);
  v0[5] = v12;
  v13 = OUTLINED_FUNCTION_9_62();
  v0[6] = sub_1DCE64D48(v13, v14, v15, v16, v17);
  v0[7] = v18;
  v19 = OUTLINED_FUNCTION_9_62();
  v0[8] = sub_1DCE64F08(v19, v20, v21, v22, v23);
  v0[9] = v24;
  v25 = OUTLINED_FUNCTION_9_62();
  v0[10] = sub_1DCE650C8(v25, v26, v27, v28, v29);
  v0[11] = v30;
  v31 = OUTLINED_FUNCTION_9_62();
  v0[12] = sub_1DCE65288(v31, v32, v33, v34, v35);
  v0[13] = v36;
  v37 = OUTLINED_FUNCTION_9_62();
  v0[14] = sub_1DCE65440(v37, v38, v39, v40, v41);
  v0[15] = v42;
  v43 = OUTLINED_FUNCTION_9_62();
  v48 = sub_1DCE655F8(v43, v44, v45, v46, v47);
  v50 = v49;
  swift_unknownObjectRelease();
  v0[16] = v48;
  v0[17] = v50;
  return v0;
}

uint64_t (*sub_1DCE64B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE701D8;
}

void *sub_1DCE64B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD640;
}

uint64_t sub_1DCE64C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 40) + **(a7 + 40));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a6, a7);
}

void *sub_1DCE64D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD630;
}

uint64_t sub_1DCE64DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 48) + **(a7 + 48));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a6, a7);
}

void *sub_1DCE64F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD620;
}

uint64_t sub_1DCE64F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 56) + **(a7 + 56));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a6, a7);
}

void *sub_1DCE650C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD610;
}

uint64_t sub_1DCE65150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 64) + **(a7 + 64));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a6, a7);
}

void *sub_1DCE65288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD600;
}

uint64_t sub_1DCE65310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 72) + **(a6 + 72));
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1DCB4AE1C;

  return v12(a1, a5, a6);
}

void *sub_1DCE65440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD5F0;
}

uint64_t sub_1DCE654C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 80) + **(a6 + 80));
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1DCB4AE1C;

  return v12(a1, a5, a6);
}

void *sub_1DCE655F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FD5E0;
}

uint64_t sub_1DCE65680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 88) + **(a7 + 88));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a6, a7);
}

void *sub_1DCE657B8()
{
  OUTLINED_FUNCTION_79_11();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_11_8();
  v0[2] = sub_1DCE6593C(v1, v2, v3, v4, v5);
  v0[3] = v6;
  OUTLINED_FUNCTION_1_1();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_26_27(v7);
  v0[4] = &unk_1DD0FD558;
  v0[5] = v8;
  OUTLINED_FUNCTION_1_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_26_27(v9);
  v0[6] = &unk_1DD0FD568;
  v0[7] = v10;
  OUTLINED_FUNCTION_1_1();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_26_27(v11);
  v0[8] = &unk_1DD0FD578;
  v0[9] = v12;
  OUTLINED_FUNCTION_1_1();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_26_27(v13);
  v0[10] = &unk_1DD0FD588;
  v0[11] = v14;
  OUTLINED_FUNCTION_1_1();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_26_27(v15);
  v0[12] = &unk_1DD0FD598;
  v0[13] = v16;
  OUTLINED_FUNCTION_1_1();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_26_27(v17);
  v0[14] = &unk_1DD0FD5A8;
  v0[15] = v18;
  OUTLINED_FUNCTION_1_1();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_26_27(v19);
  v0[16] = &unk_1DD0FD5B8;
  v0[17] = v20;
  swift_unknownObjectRetain_n();
  return v0;
}

uint64_t (*sub_1DCE6593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE6FDD0;
}

uint64_t sub_1DCE659C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE659F0, 0, 0);
}

uint64_t sub_1DCE659F0()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_55(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 80) = v2;
  *v2 = v3;
  v2[1] = sub_1DCDE23F0;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE65AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a3;
  v20[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DE47C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v20 - v15;
  (*(v13 + 16))(v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  *(v18 + 5) = a7;
  (*(v13 + 32))(&v18[v17], v16, v12);
  (*(a7 + 40))(v20[0], sub_1DCE6FD18, v18, a6, a7);
}

uint64_t sub_1DCE65C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v5);
}

uint64_t sub_1DCE65CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE65CF4, 0, 0);
}

uint64_t sub_1DCE65CF4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_55(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE65DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 48))(a3, sub_1DCE706A4, v17, a6, a7);
}

uint64_t sub_1DCE65F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE65F50, 0, 0);
}

uint64_t sub_1DCE65F50()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_55(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE66008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 56))(a3, sub_1DCE706A4, v17, a6, a7);
}

uint64_t sub_1DCE66180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE661AC, 0, 0);
}

uint64_t sub_1DCE661AC()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_55(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE66264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 64))(a3, sub_1DCE706A4, v17, a6, a7);
}

uint64_t sub_1DCE663DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE66404, 0, 0);
}

uint64_t sub_1DCE66404()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_82_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE664C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a6 + 72))(sub_1DCE706A4, v15, a5, a6);
}

uint64_t sub_1DCE66634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE6665C, 0, 0);
}

uint64_t sub_1DCE6665C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_82_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE6671C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE66838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a6 + 80))(sub_1DCE706A4, v15, a5, a6);
}

uint64_t sub_1DCE669A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE669D4, 0, 0);
}

uint64_t sub_1DCE669D4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_55(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE66A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 88))(a3, sub_1DCE6FBE8, v17, a6, a7);
}

uint64_t sub_1DCE66C04(uint64_t a1)
{
  sub_1DCE1B738(a1, v3);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCE66CBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE66CD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE66CEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCE66D9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE66DB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCE66E64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE66E7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCE66F2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE66F40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return v6(v4);
}

uint64_t sub_1DCE66FF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE6700C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return v6(v4);
}

uint64_t sub_1DCE670C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE670DC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

void *sub_1DCE671B8()
{

  return v0;
}

uint64_t sub_1DCE67210()
{
  sub_1DCE671B8();
  OUTLINED_FUNCTION_56();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE67240(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66CBC(a1, a2);
}

uint64_t sub_1DCE672E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66CD4(a1, a2);
}

uint64_t sub_1DCE67390(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66D9C(a1, a2);
}

uint64_t sub_1DCE67438(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66E64(a1, a2);
}

uint64_t sub_1DCE674E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE66F2C(a1);
}

uint64_t sub_1DCE67578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE66FF8(a1);
}

uint64_t sub_1DCE67610(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE670C4(a1, a2);
}

uint64_t sub_1DCE676B8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCC24464(v1);
}

uint64_t sub_1DCE67768()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_40(v1);

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(v3);
}

uint64_t sub_1DCE677EC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t sub_1DCE67870()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)();
}

unint64_t sub_1DCE67928()
{
  result = qword_1ECCA8360[0];
  if (!qword_1ECCA8360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA8360);
  }

  return result;
}

uint64_t sub_1DCE679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SimpleConfirmationResponseProvider(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SimpleConfirmationResponseProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ServerProvidedSiriKitConfirmationResponseParser(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DCE683E4(uint64_t *a1)
{
  result = type metadata accessor for PromptForConfirmationFlowAsync.State(319, a1[10], a1[11], a1[12]);
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

uint64_t sub_1DCE68538(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Input(319);
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for PromptResult(319, *(a1 + 24), v4, v5);
      if (v7 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

char *sub_1DCE6864C(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v152 = *(*(a3 + 16) - 8);
  v146 = *(v152 + 64);
  v148 = *(sub_1DD0DB04C() - 8);
  v157 = *(v148 + 64);
  v3 = sub_1DD0DC76C();
  v142 = *(v3 - 8);
  v128 = v142;
  v129 = v3;
  v4 = *(v142 + 80);
  v127 = sub_1DD0DB1EC();
  v144 = *(v127 - 8);
  v126 = v144;
  v134 = *(v144 + 80) | v4;
  v131 = sub_1DD0DB4BC();
  v140 = *(v131 - 8);
  v156 = v140;
  v132 = *(v140 + 80);
  v130 = sub_1DD0DB3EC();
  v136 = *(v130 - 8);
  v5 = *(v136 + 80);
  v6 = v5;
  v7 = v132 & 0xF8 | v5 | 7u;
  v8 = sub_1DD0DD12C();
  v138 = *(v8 - 8);
  v124 = v138;
  v125 = v8;
  v9 = *(v138 + 80);
  v10 = sub_1DD0DD08C();
  v11 = *(v10 - 8);
  v12 = v9 | *(v11 + 80);
  v13 = (v134 | (v9 | *(v11 + 80))) & 0xF8 | v7;
  v14 = (v157 + v13) & ~v13;
  v15 = *(v142 + 64);
  v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 <= v15)
  {
    v16 = *(v142 + 64);
  }

  if (v16 <= *(v144 + 64))
  {
    v16 = *(v144 + 64);
  }

  v17 = v5;
  v18 = *(v140 + 64) + v5;
  v145 = v6;
  v19 = v18 & ~v6;
  v123 = v136;
  v20 = *(v136 + 84);
  v21 = *(v136 + 64);
  if (v20)
  {
    v22 = *(v136 + 64);
  }

  else
  {
    v22 = v21 + 1;
  }

  v23 = (v22 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v16 <= v24)
  {
    v16 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v25 = v23 + 31;
  if (v16 <= (((((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v16 = (((((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v137 = *(v138 + 64);
  v139 = v7 + 16;
  v143 = v132 & 0xF8 | v6 | 7;
  v26 = *(v140 + 84);
  if (v20)
  {
    v27 = v20 - 1;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v26)
  {
    v28 = *(v140 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  v141 = v28;
  v29 = ((v25 + ((v7 + 16 + ((v137 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 <= v29)
  {
    v16 = v29;
  }

  v30 = *(*(v10 - 8) + 64);
  if (v16 > v30)
  {
    v30 = v16;
  }

  if (v30 <= 0x18)
  {
    v31 = 24;
  }

  else
  {
    v31 = v30;
  }

  if (((((v31 + v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41 <= v146)
  {
    v32 = v146;
  }

  else
  {
    v32 = ((((v31 + v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v33 = *(*(a3 + 24) - 8);
  if (*(v33 + 64) <= 9uLL)
  {
    v34 = 9;
  }

  else
  {
    v34 = *(v33 + 64);
  }

  if (v34 + 1 > v32)
  {
    v32 = v34 + 1;
  }

  if (v32 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v32;
  }

  v36 = *(v152 + 80);
  v37 = *(v148 + 80);
  v38 = *(v33 + 80);
  if ((((v37 | v36) | v38) & 0xF8 | v13) != 7 || ((v134 | v132 | v17 | v12 | v36 | v37 | v38) & 0x100000) != 0 || (v39 = v35 + 1, (v35 + 1) > 0x18))
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v147 = *(v10 - 8);
  v40 = a2[v35];
  v41 = v40 - 7;
  v151 = v35;
  if (v40 >= 7)
  {
    if (v35 <= 3)
    {
      v35 = v35;
    }

    else
    {
      v35 = 4;
    }

    switch(v35)
    {
      case 1:
        v42 = *a2;
        goto LABEL_51;
      case 2:
        v42 = *a2;
        goto LABEL_51;
      case 3:
        v42 = *a2 | (a2[2] << 16);
        goto LABEL_51;
      case 4:
        v42 = *a2;
LABEL_51:
        if (v151 < 4)
        {
          v40 = (v42 | (v41 << (8 * v151))) + 7;
        }

        else
        {
          v40 = v42 + 7;
        }

        break;
      default:
        break;
    }
  }

  switch(v40)
  {
    case 0u:
      v43 = a1;
      (*(v152 + 16))(a1);
      a1[v151] = 0;
      return v43;
    case 1u:
      v43 = a1;
      (*(v152 + 16))(a1);
      v44 = 1;
      goto LABEL_112;
    case 2u:
      v133 = v18;
      v135 = v10;
      v121 = v22 + 7;
      v122 = v19;
      v120 = v20;
      v119 = v21;
      (*(v148 + 16))(a1);
      v153 = &a1[v157 + 7];
      v45 = (v153 & 0xFFFFFFFFFFFFFFF8);
      v158 = &a2[v157 + 7];
      v46 = (v158 & 0xFFFFFFFFFFFFFFF8);
      v47 = *((v158 & 0xFFFFFFFFFFFFFFF8) + v31);
      v48 = v47 - 10;
      if (v47 < 0xA)
      {
        v50 = v135;
        v51 = v147;
      }

      else
      {
        if (v31 <= 3)
        {
          v49 = v31;
        }

        else
        {
          v49 = 4;
        }

        v50 = v135;
        v51 = v147;
        switch(v49)
        {
          case 1:
            v52 = *v46;
            goto LABEL_80;
          case 2:
            v52 = *v46;
            goto LABEL_80;
          case 3:
            v52 = *v46 | (v46[2] << 16);
            goto LABEL_80;
          case 4:
            v52 = *v46;
LABEL_80:
            if (v31 < 4)
            {
              v47 = (v52 | (v48 << (8 * v31))) + 10;
            }

            else
            {
              v47 = v52 + 10;
            }

            break;
          default:
            goto LABEL_83;
        }
      }

      break;
    case 3u:
      v43 = a1;
      (*(v152 + 16))(a1);
      v44 = 3;
      goto LABEL_112;
    case 4u:
      v43 = a1;
      (*(v152 + 16))(a1);
      v44 = 4;
      goto LABEL_112;
    case 5u:
      v54 = a2[v34];
      v55 = v54 - 2;
      if (v54 < 2)
      {
        v43 = a1;
      }

      else
      {
        if (v34 <= 3)
        {
          v56 = v34;
        }

        else
        {
          v56 = 4;
        }

        v43 = a1;
        switch(v56)
        {
          case 1:
            v57 = *a2;
            goto LABEL_88;
          case 2:
            v57 = *a2;
            goto LABEL_88;
          case 3:
            v57 = *a2 | (a2[2] << 16);
            goto LABEL_88;
          case 4:
            v57 = *a2;
LABEL_88:
            if (v34 < 4)
            {
              v54 = (v57 | (v55 << (8 * v34))) + 2;
            }

            else
            {
              v54 = v57 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v54 == 1)
      {
        v61 = *a2;
        v62 = *a2;
        *v43 = v61;
        v43[8] = a2[8];
        v43[v34] = 1;
      }

      else if (v54)
      {
        memcpy(v43, a2, v34 + 1);
      }

      else
      {
        (*(v33 + 16))(v43);
        v43[v34] = 0;
      }

      v44 = 5;
      goto LABEL_112;
    case 6u:
      v58 = *a2;
      v59 = *a2;
      v43 = a1;
      *a1 = v58;
      a1[8] = a2[8];
      v44 = 6;
      goto LABEL_112;
    default:

      return memcpy(a1, a2, v39);
  }

LABEL_83:
  v155 = v31 + 1;
  v60 = ~v145;
  switch(v47)
  {
    case 0u:
      (*(v128 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v129);
      *((v153 & 0xFFFFFFFFFFFFFFF8) + v31) = 0;
      goto LABEL_106;
    case 1u:
      (*(v128 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v129);
      *(((v153 | 7) + v15) & 0xFFFFFFFFFFFFFFF8) = *(((v158 | 7) + v15) & 0xFFFFFFFFFFFFFFF8);
      *((v153 & 0xFFFFFFFFFFFFFFF8) + v31) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v45 = *v46;
      v45[1] = *(v46 + 1);
      v45[2] = *(v46 + 2);
      *(v45 + v31) = 2;

      goto LABEL_106;
    case 3u:
      *v45 = *v46;
      *(v45 + v31) = 3;
      swift_unknownObjectRetain();
      goto LABEL_106;
    case 4u:
      v63 = v153 & 0xFFFFFFFFFFFFFFF8;
      (*(v126 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v127);
      v64 = 4;
      goto LABEL_99;
    case 5u:
      v68 = *v46;
      *v45 = *v46;
      *(v45 + v31) = 5;
      v69 = v68;
      goto LABEL_106;
    case 6u:
      v80 = v31;
      (*(v156 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v131);
      v81 = ((v18 + (v153 & 0xFFFFFFFFFFFFFFF8)) & v60);
      v82 = (&v46[v133] & v60);
      if (__swift_getEnumTagSinglePayload(v82, 1, v130))
      {
        memcpy(v81, v82, v22);
      }

      else
      {
        (*(v123 + 16))(v81, v82, v130);
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v130);
      }

      v72 = v155;
      v102 = ((v81 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v103 = ((v82 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v102 = *v103;
      v102[1] = v103[1];
      v104 = (v102 + 19) & 0xFFFFFFFFFFFFFFF8;
      v105 = (v103 + 19) & 0xFFFFFFFFFFFFFFF8;
      v106 = *v105;
      *(v104 + 4) = *(v105 + 4);
      *v104 = v106;
      *((v153 & 0xFFFFFFFFFFFFFFF8) + v80) = 6;

      v71 = v158;
      v43 = a1;
      v70 = v153;
      goto LABEL_108;
    case 7u:
      v65 = v31;
      (*(v156 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v131);
      v66 = ((v18 + (v153 & 0xFFFFFFFFFFFFFFF8)) & v60);
      v67 = (&v46[v133] & v60);
      if (__swift_getEnumTagSinglePayload(v67, 1, v130))
      {
        memcpy(v66, v67, v22);
      }

      else
      {
        (*(v123 + 16))(v66, v67, v130);
        __swift_storeEnumTagSinglePayload(v66, 0, 1, v130);
      }

      v70 = v153;
      v72 = v155;
      v91 = ((v66 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v92 = ((v67 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v91 = *v92;
      v91[1] = v92[1];
      v93 = (v91 + 19) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v92 + 19) & 0xFFFFFFFFFFFFFFF8;
      v95 = *v94;
      *(v93 + 4) = *(v94 + 4);
      *v93 = v95;
      v96 = (((v153 | 7) + v24) & 0xFFFFFFFFFFFFFFF8);
      v71 = v158;
      v97 = (((v158 | 7) + v24) & 0xFFFFFFFFFFFFFFF8);
      *v96 = *v97;
      v96[1] = v97[1];
      v98 = ((v96 + 23) & 0xFFFFFFFFFFFFFFF8);
      v99 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v98 = *v99;
      v98[1] = v99[1];
      v100 = ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
      v101 = ((v99 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v100 = *v101;
      v100[1] = v101[1];
      *((v153 & 0xFFFFFFFFFFFFFFF8) + v65) = 7;

      goto LABEL_107;
    case 8u:
      v149 = v31;
      (*(v124 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v125);
      v83 = (((v153 | 7) + v137) & 0xFFFFFFFFFFFFFFF8);
      v71 = v158;
      v84 = (((v158 | 7) + v137) & 0xFFFFFFFFFFFFFFF8);
      *v83 = *v84;
      v83[1] = v84[1];
      v85 = ((v83 + v139) & ~v7);
      v86 = ((v84 + v139) & ~v143);

      if (v26 == v141)
      {
        v72 = v155;
        if (!__swift_getEnumTagSinglePayload(v86, v26, v131))
        {
          v87 = v18;
          v88 = ((v86 + v18) & v60);
          v89 = v130;
          goto LABEL_133;
        }

LABEL_123:
        memcpy(v85, v86, v24);
        v70 = v153;
LABEL_137:
        v114 = v22;
        goto LABEL_138;
      }

      v90 = ((v86 + v18) & v60);
      if (v27 == v141)
      {
        v89 = v130;
        v72 = v155;
        if (v120 < 2)
        {
          goto LABEL_132;
        }

        if (__swift_getEnumTagSinglePayload((v86 + v133) & v60, v120, v130) >= 2)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v107 = *(((v90 + v121) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v107 >= 0xFFFFFFFF)
        {
          LODWORD(v107) = -1;
        }

        v72 = v155;
        if ((v107 + 1) >= 2)
        {
          goto LABEL_123;
        }
      }

      v89 = v130;
LABEL_132:
      v87 = v133;
      v88 = v90;
LABEL_133:
      (*(v156 + 16))(v85, v86, v131);
      v108 = (v85 + v87) & v60;
      if (__swift_getEnumTagSinglePayload(v88, 1, v89))
      {
        memcpy(((v85 + v87) & v60), v88, v22);
      }

      else
      {
        (*(v123 + 16))((v85 + v87) & v60, v88, v89);
        __swift_storeEnumTagSinglePayload((v85 + v87) & v60, 0, 1, v89);
      }

      v70 = v153;
      v109 = ((v121 + v108) & 0xFFFFFFFFFFFFFFF8);
      v110 = ((v88 + v121) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v109[1] = v110[1];
      v111 = (v109 + 19) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v110 + 19) & 0xFFFFFFFFFFFFFFF8;
      v113 = *v112;
      *(v111 + 4) = *(v112 + 4);
      *v111 = v113;

      v114 = v119;
      if (!v120)
      {
        goto LABEL_137;
      }

LABEL_138:
      v115 = (((v122 + v114 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v116 = ((v85 + v115 + 7) & 0xFFFFFFFFFFFFFFF8);
      v117 = *((v86 + v115 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v116 = v117;
      *((v153 & 0xFFFFFFFFFFFFFFF8) + v149) = 8;
      v118 = v117;
LABEL_107:
      v43 = a1;
LABEL_108:
      v73 = (((v71 | 7) + v72) & 0xFFFFFFFFFFFFFFF8);
      v74 = (((v70 | 7) + v72) & 0xFFFFFFFFFFFFFFF8);
      *v74 = *v73;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
      v77 = *(v76 + 24);

      if (v77 < 0xFFFFFFFF)
      {
        v78 = *v76;
        v79 = *(v76 + 16);
        *(v75 + 32) = *(v76 + 32);
        *v75 = v78;
        *(v75 + 16) = v79;
      }

      else
      {
        *(v75 + 24) = v77;
        *(v75 + 32) = *(v76 + 32);
        (**(v77 - 8))(v75, v76, v77);
      }

      *(v75 + 40) = *(v76 + 40);
      v44 = 2;
LABEL_112:
      v43[v151] = v44;
      return v43;
    case 9u:
      v63 = v153 & 0xFFFFFFFFFFFFFFF8;
      (*(v51 + 16))(v153 & 0xFFFFFFFFFFFFFFF8, v158 & 0xFFFFFFFFFFFFFFF8, v50);
      v64 = 9;
LABEL_99:
      *(v63 + v31) = v64;
LABEL_106:
      v70 = v153;
      v71 = v158;
      v72 = v31 + 1;
      goto LABEL_107;
    default:
      v72 = v31 + 1;
      memcpy((v153 & 0xFFFFFFFFFFFFFFF8), (v158 & 0xFFFFFFFFFFFFFFF8), v155);
      v70 = v153;
      v71 = v158;
      goto LABEL_107;
  }
}

void sub_1DCE69644(unsigned __int8 *a1, uint64_t a2)
{
  v75 = *(a2 + 16);
  v74 = *(v75 - 8);
  v88 = *(v74 + 64);
  v2 = sub_1DD0DB04C();
  v72 = *(v2 - 8);
  v73 = v2;
  v85 = *(v72 + 64);
  v69 = sub_1DD0DC76C();
  v81 = *(v69 - 8);
  v68 = v81;
  v3 = *(v81 + 80);
  v67 = sub_1DD0DB1EC();
  v83 = *(v67 - 8);
  v66 = v83;
  v77 = *(v83 + 80) | v3;
  v71 = sub_1DD0DB4BC();
  v80 = *(v71 - 8);
  v4 = *(v80 + 80) & 0xF8;
  v70 = sub_1DD0DB3EC();
  v76 = *(v70 - 8);
  v5 = *(v76 + 80);
  v6 = v4 | v5 | 7;
  v7 = sub_1DD0DD12C();
  v78 = *(v7 - 8);
  v64 = v78;
  v65 = v7;
  v8 = *(v78 + 80);
  v9 = sub_1DD0DD08C();
  v10 = (v77 | (v8 | *(*(v9 - 8) + 80))) & 0xF8 | v6;
  v86 = v85 + v10;
  v11 = *(v81 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v83 + 64))
  {
    v11 = *(v83 + 64);
  }

  v12 = *(v80 + 64);
  v13 = v12 + v5;
  v84 = v5;
  v14 = *(v76 + 84);
  if (v14)
  {
    v15 = *(v76 + 64);
  }

  else
  {
    v15 = *(v76 + 64) + 1;
  }

  v16 = (v15 + 7 + ((v12 + v5) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= v17)
  {
    v11 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v16 + 31;
  if (v11 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v19 = v6 + 16;
  v82 = v6;
  v20 = (v6 + 16 + ((*(v78 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6;
  v21 = *(v80 + 84);
  if (v14)
  {
    v22 = v14 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= v21)
  {
    v23 = *(v80 + 84);
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  v24 = ((v18 + v20) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v24)
  {
    v11 = v24;
  }

  v25 = *(*(v9 - 8) + 64);
  if (v11 > v25)
  {
    v25 = v11;
  }

  if (v25 <= 0x18)
  {
    v26 = 24;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((((v26 + (v86 & ~v10) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v27 <= v88)
  {
    v27 = v88;
  }

  v28 = *(*(a2 + 24) - 8);
  v29 = *(v28 + 64);
  if (v29 <= 9)
  {
    v29 = 9;
  }

  if (v29 + 1 > v27)
  {
    v27 = v29 + 1;
  }

  if (v27 <= 9)
  {
    v27 = 9;
  }

  v30 = a1[v27];
  v31 = v30 - 7;
  if (v30 >= 7)
  {
    if (v27 <= 3)
    {
      v32 = v27;
    }

    else
    {
      v32 = 4;
    }

    switch(v32)
    {
      case 1:
        v33 = *a1;
        goto LABEL_44;
      case 2:
        v33 = *a1;
        goto LABEL_44;
      case 3:
        v33 = *a1 | (a1[2] << 16);
        goto LABEL_44;
      case 4:
        v33 = *a1;
LABEL_44:
        if (v27 < 4)
        {
          v30 = (v33 | (v31 << (8 * v27))) + 7;
        }

        else
        {
          v30 = v33 + 7;
        }

        break;
      default:
        break;
    }
  }

  switch(v30)
  {
    case 0u:
    case 1u:
    case 3u:
    case 4u:
      v34 = *(v74 + 8);

      v34(a1, v75);
      return;
    case 2u:
      v91 = *(v78 + 64);
      v62 = v23;
      v63 = v19;
      v35 = *(v9 - 8);
      v36 = v9;
      v89 = v13;
      v79 = v15 + 7;
      v37 = ~v10;
      (*(v72 + 8))(a1, v73, v28);
      v38 = (&a1[v86] & v37);
      v39 = v38[v26];
      v40 = v39 - 10;
      if (v39 < 0xA)
      {
        v42 = v35;
        v43 = v91;
      }

      else
      {
        if (v26 <= 3)
        {
          v41 = v26;
        }

        else
        {
          v41 = 4;
        }

        v42 = v35;
        v43 = v91;
        switch(v41)
        {
          case 1:
            v44 = *v38;
            goto LABEL_67;
          case 2:
            v44 = *v38;
            goto LABEL_67;
          case 3:
            v44 = *(&a1[v86] & v37) | (*((&a1[v86] & v37) + 2) << 16);
            goto LABEL_67;
          case 4:
            v44 = *v38;
LABEL_67:
            if (v26 < 4)
            {
              v39 = (v44 | (v40 << (8 * v26))) + 10;
            }

            else
            {
              v39 = v44 + 10;
            }

            break;
          default:
            goto LABEL_70;
        }
      }

      break;
    case 5u:
      v45 = a1[v29];
      v46 = v45 - 2;
      if (v45 >= 2)
      {
        if (v29 <= 3)
        {
          v47 = v29;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *a1;
            goto LABEL_75;
          case 2:
            v48 = *a1;
            goto LABEL_75;
          case 3:
            v48 = *a1 | (a1[2] << 16);
            goto LABEL_75;
          case 4:
            v48 = *a1;
LABEL_75:
            if (v29 < 4)
            {
              v45 = (v48 | (v46 << (8 * v29))) + 2;
            }

            else
            {
              v45 = v48 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v45 == 1)
      {
        goto LABEL_83;
      }

      if (!v45)
      {
        v53 = *(v28 + 8);

        v53(a1);
      }

      return;
    case 6u:
LABEL_83:
      v54 = *a1;

      return;
    default:
      return;
  }

LABEL_70:
  v49 = v26 + 1;
  v50 = ~v84;
  switch(v39)
  {
    case 0u:
      v52 = v68;
      v51 = v69;
      goto LABEL_87;
    case 1u:
      (*(v68 + 8))(v38, v69);

      goto LABEL_115;
    case 2u:

      goto LABEL_98;
    case 3u:
      swift_unknownObjectRelease();
      goto LABEL_115;
    case 4u:
      v52 = v66;
      v51 = v67;
LABEL_87:
      (*(v52 + 8))(v38, v51);
      goto LABEL_115;
    case 5u:
      v55 = *v38;
      goto LABEL_114;
    case 6u:
      (*(v80 + 8))(v38, v71);
      if (!__swift_getEnumTagSinglePayload(&v38[v89] & v50, 1, v70))
      {
        (*(v76 + 8))(&v38[v89] & v50, v70);
      }

      goto LABEL_98;
    case 7u:
      (*(v80 + 8))(v38, v71);
      if (!__swift_getEnumTagSinglePayload(&v38[v89] & v50, 1, v70))
      {
        (*(v76 + 8))(&v38[v89] & v50, v70);
      }

LABEL_98:

      goto LABEL_115;
    case 8u:
      (*(v64 + 8))(v38, v65);

      v56 = (v63 + (&v38[v43 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v82;
      if (v21 == v62)
      {
        if (__swift_getEnumTagSinglePayload(v56, v21, v71))
        {
          goto LABEL_113;
        }

        v57 = (v89 + v56) & v50;
        goto LABEL_109;
      }

      v57 = (v89 + v56) & v50;
      if (v22 == v62)
      {
        v58 = v70;
        v59 = v80;
        if (v14 < 2)
        {
LABEL_110:
          (*(v59 + 8))(v56, v71);
          if (!__swift_getEnumTagSinglePayload(v57, 1, v58))
          {
            (*(v76 + 8))(v57, v58);
          }

          goto LABEL_113;
        }

        if (__swift_getEnumTagSinglePayload((v89 + v56) & v50, v14, v70) >= 2)
        {
          goto LABEL_113;
        }

LABEL_109:
        v58 = v70;
        v59 = v80;
        goto LABEL_110;
      }

      v60 = *(((v79 + v57) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v60 >= 0xFFFFFFFF)
      {
        LODWORD(v60) = -1;
      }

      if ((v60 + 1) < 2)
      {
        goto LABEL_109;
      }

LABEL_113:
      v55 = *((v17 + v56 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_114:

LABEL_115:

      v61 = (((&v38[v49 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v61[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
      }

      return;
    case 9u:
      (*(v42 + 8))(v38, v36);
      goto LABEL_115;
    default:
      goto LABEL_115;
  }
}

_BYTE *sub_1DCE6A104(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v133 = *(a3 + 16);
  v132 = *(v133 - 8);
  v150 = *(v132 + 64);
  v3 = sub_1DD0DB04C();
  v130 = *(v3 - 8);
  v131 = v3;
  v145 = *(v130 + 64);
  v127 = sub_1DD0DC76C();
  v141 = *(v127 - 8);
  v126 = v141;
  v4 = *(v141 + 80);
  v125 = sub_1DD0DB1EC();
  v143 = *(v125 - 8);
  v124 = v143;
  __na = *(v143 + 80) | v4;
  v129 = sub_1DD0DB4BC();
  v139 = *(v129 - 8);
  v154 = v139;
  v5 = *(v139 + 80) & 0xF8;
  v128 = sub_1DD0DB3EC();
  v6 = *(v128 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v5 | v8 | 7;
  v10 = sub_1DD0DD12C();
  v137 = *(v10 - 8);
  v122 = v137;
  v123 = v10;
  v11 = *(v137 + 80);
  v12 = sub_1DD0DD08C();
  v121 = *(v12 - 8);
  v13 = (__na | (v11 | *(v121 + 80))) & 0xF8 | v9;
  v146 = v145 + v13;
  v15 = *(v141 + 64);
  v16 = v15 + 7;
  if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
  {
    v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v15 <= *(v143 + 64))
  {
    v15 = *(v143 + 64);
  }

  v17 = *(v139 + 64);
  v18 = v17 + v8;
  v144 = v8;
  v19 = (v17 + v8) & ~v8;
  v140 = v6;
  v20 = *(v6 + 84);
  v21 = *(v6 + 64);
  if (v20)
  {
    v22 = *(v6 + 64);
  }

  else
  {
    v22 = v21 + 1;
  }

  v23 = (v22 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v15 <= v24)
  {
    v15 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v25 = v23 + 31;
  if (v15 <= (((((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = (((((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v26 = *(v137 + 64);
  v27 = v9 + 16;
  v142 = v5 | v8 | 7;
  v28 = *(v154 + 84);
  if (v20)
  {
    v29 = v20 - 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= v28)
  {
    v30 = *(v154 + 84);
  }

  else
  {
    v30 = v29;
  }

  if (v30 <= 0x7FFFFFFE)
  {
    v30 = 2147483646;
  }

  v31 = ((v25 + ((v9 + 16 + ((v26 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 <= v31)
  {
    v15 = v31;
  }

  v32 = *(*(v12 - 8) + 64);
  if (v15 > v32)
  {
    v32 = v15;
  }

  if (v32 <= 0x18)
  {
    v33 = 24;
  }

  else
  {
    v33 = v32;
  }

  v14 = v146 & ~v13;
  v34 = v150;
  if (((((v33 + v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41 > v150)
  {
    v34 = ((((v33 + v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v35 = 9;
  }

  else
  {
    v35 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (v35 + 1 > v34)
  {
    v34 = v35 + 1;
  }

  if (v34 <= 9)
  {
    v36 = 9;
  }

  else
  {
    v36 = v34;
  }

  v37 = a2[v36];
  v38 = v37 - 7;
  if (v37 < 7)
  {
    v40 = a1;
  }

  else
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    v40 = a1;
    switch(v39)
    {
      case 1:
        v41 = *a2;
        goto LABEL_47;
      case 2:
        v41 = *a2;
        goto LABEL_47;
      case 3:
        v41 = *a2 | (a2[2] << 16);
        goto LABEL_47;
      case 4:
        v41 = *a2;
LABEL_47:
        if (v36 < 4)
        {
          v37 = (v41 | (v38 << (8 * v36))) + 7;
        }

        else
        {
          v37 = v41 + 7;
        }

        break;
      default:
        break;
    }
  }

  switch(v37)
  {
    case 0u:
      (*(v132 + 16))(v40, a2, v133);
      v40[v36] = 0;
      return v40;
    case 1u:
      (*(v132 + 16))(v40, a2, v133);
      v42 = 1;
      goto LABEL_134;
    case 2u:
      v119 = v27;
      v120 = v30;
      v43 = v12;
      v151 = v18;
      v118 = *(v7 + 84);
      v117 = v21;
      v134 = v19;
      __n = v22;
      v138 = v22 + 7;
      v44 = ~v13;
      (*(v130 + 16))(v40, a2, v131);
      v45 = (&v40[v146] & v44);
      v46 = (&a2[v146] & v44);
      v47 = v46[v33];
      v48 = v47 - 10;
      if (v47 < 0xA)
      {
        v50 = v43;
        v51 = v45;
      }

      else
      {
        if (v33 <= 3)
        {
          v49 = v33;
        }

        else
        {
          v49 = 4;
        }

        v50 = v43;
        v51 = v45;
        switch(v49)
        {
          case 1:
            v52 = *v46;
            goto LABEL_75;
          case 2:
            v52 = *v46;
            goto LABEL_75;
          case 3:
            v52 = *v46 | (v46[2] << 16);
            goto LABEL_75;
          case 4:
            v52 = *v46;
LABEL_75:
            if (v33 < 4)
            {
              v47 = (v52 | (v48 << (8 * v33))) + 10;
            }

            else
            {
              v47 = v52 + 10;
            }

            break;
          default:
            goto LABEL_78;
        }
      }

      break;
    case 3u:
      (*(v132 + 16))(v40, a2, v133);
      v42 = 3;
      goto LABEL_134;
    case 4u:
      (*(v132 + 16))(v40, a2, v133);
      v42 = 4;
      goto LABEL_134;
    case 5u:
      v54 = a2[v35];
      v55 = v54 - 2;
      if (v54 >= 2)
      {
        if (v35 <= 3)
        {
          v56 = v35;
        }

        else
        {
          v56 = 4;
        }

        switch(v56)
        {
          case 1:
            v57 = *a2;
            goto LABEL_83;
          case 2:
            v57 = *a2;
            goto LABEL_83;
          case 3:
            v57 = *a2 | (a2[2] << 16);
            goto LABEL_83;
          case 4:
            v57 = *a2;
LABEL_83:
            if (v35 < 4)
            {
              v54 = (v57 | (v55 << (8 * v35))) + 2;
            }

            else
            {
              v54 = v57 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v54 == 1)
      {
        v62 = *a2;
        v63 = *a2;
        *v40 = v62;
        v40[8] = a2[8];
        v40[v35] = 1;
      }

      else if (v54)
      {
        memcpy(v40, a2, v35 + 1);
      }

      else
      {
        (*(*(*(a3 + 24) - 8) + 16))(v40, a2);
        v40[v35] = 0;
      }

      v42 = 5;
      goto LABEL_134;
    case 6u:
      v58 = *a2;
      v59 = *a2;
      *v40 = v58;
      v40[8] = a2[8];
      v42 = 6;
      goto LABEL_134;
    default:

      return memcpy(v40, a2, v36 + 1);
  }

LABEL_78:
  v153 = v33 + 1;
  v60 = v33;
  v61 = ~v144;
  switch(v47)
  {
    case 0u:
      (*(v126 + 16))(v51, v46, v127);
      *(v51 + v60) = 0;
      goto LABEL_129;
    case 1u:
      (*(v126 + 16))(v51, v46, v127);
      *((v51 + v16) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v16] & 0xFFFFFFFFFFFFFFF8);
      *(v51 + v60) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v51 = *v46;
      v51[1] = *(v46 + 1);
      v51[2] = *(v46 + 2);
      *(v51 + v60) = 2;

      goto LABEL_129;
    case 3u:
      *v51 = *v46;
      *(v51 + v60) = 3;
      swift_unknownObjectRetain();
      goto LABEL_129;
    case 4u:
      (*(v124 + 16))(v51, v46, v125);
      v64 = 4;
      goto LABEL_94;
    case 5u:
      v67 = *v46;
      *v51 = *v46;
      v68 = 5;
      goto LABEL_128;
    case 6u:
      (*(v154 + 16))(v51, v46, v129);
      v69 = ((v51 + v151) & v61);
      v70 = (&v46[v151] & v61);
      if (__swift_getEnumTagSinglePayload(v70, 1, v128))
      {
        memcpy(v69, v70, __n);
      }

      else
      {
        (*(v140 + 16))(v69, v70, v128);
        __swift_storeEnumTagSinglePayload(v69, 0, 1, v128);
      }

      v93 = ((v69 + v138) & 0xFFFFFFFFFFFFFFF8);
      v94 = ((v70 + v138) & 0xFFFFFFFFFFFFFFF8);
      *v93 = *v94;
      v93[1] = v94[1];
      v95 = (v93 + 19) & 0xFFFFFFFFFFFFFFF8;
      v96 = (v94 + 19) & 0xFFFFFFFFFFFFFFF8;
      v97 = *v96;
      *(v95 + 4) = *(v96 + 4);
      *v95 = v97;
      *(v51 + v60) = 6;
      goto LABEL_114;
    case 7u:
      (*(v154 + 16))(v51, v46, v129);
      v65 = ((v51 + v151) & v61);
      v66 = (&v46[v151] & v61);
      if (__swift_getEnumTagSinglePayload(v66, 1, v128))
      {
        memcpy(v65, v66, __n);
      }

      else
      {
        (*(v140 + 16))(v65, v66, v128);
        __swift_storeEnumTagSinglePayload(v65, 0, 1, v128);
      }

      v82 = ((v65 + v138) & 0xFFFFFFFFFFFFFFF8);
      v83 = ((v66 + v138) & 0xFFFFFFFFFFFFFFF8);
      *v82 = *v83;
      v82[1] = v83[1];
      v84 = (v82 + 19) & 0xFFFFFFFFFFFFFFF8;
      v85 = (v83 + 19) & 0xFFFFFFFFFFFFFFF8;
      v86 = *v85;
      *(v84 + 4) = *(v85 + 4);
      *v84 = v86;
      v87 = ((v51 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      v88 = (&v46[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v87 = *v88;
      v87[1] = v88[1];
      v89 = ((v87 + 23) & 0xFFFFFFFFFFFFFFF8);
      v90 = ((v88 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v89 = *v90;
      v89[1] = v90[1];
      v91 = ((v89 + 23) & 0xFFFFFFFFFFFFFFF8);
      v92 = ((v90 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v91 = *v92;
      v91[1] = v92[1];
      *(v51 + v60) = 7;

LABEL_114:

      v40 = a1;
      goto LABEL_129;
    case 8u:
      (*(v122 + 16))(v51, v46, v123);
      v71 = ((v51 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      v72 = (&v46[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v71 = *v72;
      v71[1] = v72[1];
      v73 = ((v71 + v119) & ~v142);
      v74 = (v72 + v119) & ~v142;

      v149 = v74;
      if (v28 == v120)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, v28, v129);
        v76 = v74;
        v40 = a1;
        if (!EnumTagSinglePayload)
        {
          v147 = v73;
          v77 = v151;
          v78 = ((v76 + v151) & v61);
          v79 = v128;
          v80 = v154;
          goto LABEL_121;
        }

LABEL_123:
        memcpy(v73, v76, v24);
LABEL_126:
        v106 = __n;
        goto LABEL_127;
      }

      v81 = v151 + v74;
      v78 = ((v151 + v74) & v61);
      if (v29 == v120)
      {
        v147 = v73;
        v40 = a1;
        v79 = v128;
        if (v118 < 2)
        {
          v80 = v154;
          v76 = v149;
          v77 = v151;
          goto LABEL_121;
        }

        v99 = __swift_getEnumTagSinglePayload(v81 & v61, v118, v128);
        v73 = v147;
        v76 = v149;
        if (v99 >= 2)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v98 = *(((v78 + v138) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v98 >= 0xFFFFFFFF)
        {
          LODWORD(v98) = -1;
        }

        v40 = a1;
        v76 = v149;
        if ((v98 + 1) >= 2)
        {
          goto LABEL_123;
        }

        v147 = v73;
      }

      v79 = v128;
      v80 = v154;
      v77 = v151;
LABEL_121:
      (*(v80 + 16))(v147, v76, v129);
      v100 = ((v147 + v77) & v61);
      if (__swift_getEnumTagSinglePayload(v78, 1, v79))
      {
        memcpy(v100, v78, __n);
      }

      else
      {
        (*(v140 + 16))(v100, v78, v79);
        __swift_storeEnumTagSinglePayload(v100, 0, 1, v79);
      }

      v101 = ((v100 + v138) & 0xFFFFFFFFFFFFFFF8);
      v102 = ((v78 + v138) & 0xFFFFFFFFFFFFFFF8);
      *v101 = *v102;
      v101[1] = v102[1];
      v103 = (v101 + 19) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v102 + 19) & 0xFFFFFFFFFFFFFFF8;
      v105 = *v104;
      *(v103 + 4) = *(v104 + 4);
      *v103 = v105;

      v40 = a1;
      v106 = v117;
      v73 = v147;
      if (!v118)
      {
        goto LABEL_126;
      }

LABEL_127:
      v107 = (((v134 + v106 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v108 = ((v73 + v107 + 7) & 0xFFFFFFFFFFFFFFF8);
      v67 = *((v149 + v107 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v108 = v67;
      v68 = 8;
LABEL_128:
      *(v51 + v60) = v68;
      v109 = v67;
LABEL_129:
      v60 = v153;
LABEL_130:
      v110 = (&v46[v60 + 7] & 0xFFFFFFFFFFFFFFF8);
      v111 = ((v51 + v60 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v111 = *v110;
      v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v113 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v114 = *(v113 + 24);

      if (v114 < 0xFFFFFFFF)
      {
        v115 = *v113;
        v116 = *(v113 + 16);
        *(v112 + 32) = *(v113 + 32);
        *v112 = v115;
        *(v112 + 16) = v116;
      }

      else
      {
        *(v112 + 24) = v114;
        *(v112 + 32) = *(v113 + 32);
        (**(v114 - 8))(v112, v113, v114);
      }

      *(v112 + 40) = *(v113 + 40);
      v42 = 2;
LABEL_134:
      v40[v36] = v42;
      return v40;
    case 9u:
      (*(v121 + 16))(v51, v46, v50);
      v64 = 9;
LABEL_94:
      *(v51 + v60) = v64;
      goto LABEL_129;
    default:
      memcpy(v51, v46, v60);
      goto LABEL_130;
  }
}

unsigned __int8 *sub_1DCE6AFD4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v180 = *(a3 + 16);
  v179 = *(v180 - 8);
  v177 = *(v179 + 64);
  v4 = sub_1DD0DB04C();
  v162 = *(v4 - 8);
  v163 = v4;
  v173 = *(v162 + 64);
  v159 = sub_1DD0DC76C();
  v169 = *(v159 - 8);
  v158 = v169;
  v5 = *(v169 + 80);
  v154 = sub_1DD0DB1EC();
  v171 = *(v154 - 8);
  v153 = v171;
  v164 = *(v171 + 80) | v5;
  v181 = v3;
  v160 = sub_1DD0DB4BC();
  v167 = *(v160 - 8);
  v182 = v167;
  v6 = *(v167 + 80) & 0xF8;
  v161 = sub_1DD0DB3EC();
  v7 = *(v161 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v152 = sub_1DD0DD12C();
  v165 = *(v152 - 8);
  v151 = v165;
  v10 = *(v165 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v150 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v149 = v15;
  v16 = (v164 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v174 = v173 + v16;
  v17 = *(v169 + 64);
  v148 = v17 + 7;
  if (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v17)
  {
    v17 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v17 <= *(v171 + 64))
  {
    v17 = *(v171 + 64);
  }

  v170 = *(v167 + 64) + v8;
  v143 = v7;
  v18 = *(v7 + 84);
  v19 = *(v7 + 64);
  v142 = v19;
  if (!v18)
  {
    ++v19;
  }

  v156 = v170 & ~v8;
  __n = v19;
  v20 = v19 + 7;
  v21 = (v19 + 7 + v156) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v17 <= v22)
  {
    v17 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  if (v17 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v17 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v145 = *(v165 + 64);
  v146 = v9 + 16;
  v24 = *(v167 + 84);
  v155 = *(v7 + 84);
  v25 = v18 != 0;
  v26 = v18 - 1;
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v24)
  {
    v28 = *(v167 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  v147 = v28;
  v29 = ((v23 + ((v9 + 16 + ((v145 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 <= v29)
  {
    v17 = v29;
  }

  v30 = *(v15 + 64);
  if (v17 > v30)
  {
    v30 = v17;
  }

  if (v30 <= 0x18)
  {
    v31 = 24;
  }

  else
  {
    v31 = v30;
  }

  v32 = ((((v31 + (v174 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v176 = *(a3 + 24);
  if (v32 <= v177)
  {
    v32 = v177;
  }

  v172 = *(v176 - 8);
  if (*(v172 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(*(v176 - 8) + 64);
  }

  if (v33 + 1 > v32)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = v32;
  }

  if (v34 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v34;
  }

  v36 = v3[v35];
  v37 = v36 - 7;
  if (v36 < 7)
  {
    v39 = a2;
  }

  else
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    v39 = a2;
    switch(v38)
    {
      case 1:
        v40 = *v3;
        goto LABEL_48;
      case 2:
        v40 = *v3;
        goto LABEL_48;
      case 3:
        v40 = *v3 | (v3[2] << 16);
        goto LABEL_48;
      case 4:
        v40 = *v3;
LABEL_48:
        if (v35 < 4)
        {
          v40 |= v37 << (8 * v35);
        }

        v36 = v40 + 7;
        break;
      default:
        break;
    }
  }

  v178 = v31 + 1;
  v41 = ~v16;
  v168 = ~v14;
  v144 = ~v12;
  v166 = 8 * v33;
  switch(v36)
  {
    case 0u:
    case 1u:
    case 3u:
    case 4u:
      (*(v179 + 8))(v3, v180);
      goto LABEL_114;
    case 2u:
      (*(v162 + 8))(v3, v163);
      v42 = (&v3[v174] & v41);
      v43 = v42[v31];
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v31 <= 3)
        {
          v45 = v31;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_68;
          case 2:
            v46 = *v42;
            goto LABEL_68;
          case 3:
            v46 = *v42 | (*((&v3[v174] & v41) + 2) << 16);
            goto LABEL_68;
          case 4:
            v46 = *v42;
LABEL_68:
            if (v31 < 4)
            {
              v43 = (v46 | (v44 << (8 * v31))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            goto LABEL_71;
        }
      }

      break;
    case 5u:
      v47 = v3[v33];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v33 <= 3)
        {
          v49 = v33;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v3;
            goto LABEL_76;
          case 2:
            v50 = *v3;
            goto LABEL_76;
          case 3:
            v50 = *v3 | (v3[2] << 16);
            goto LABEL_76;
          case 4:
            v50 = *v3;
LABEL_76:
            if (v33 < 4)
            {
              v47 = (v50 | (v48 << v166)) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_82;
      }

      if (!v47)
      {
        (*(v172 + 8))(v3, v176);
      }

      goto LABEL_114;
    case 6u:
LABEL_82:

      goto LABEL_114;
    default:
      goto LABEL_114;
  }

LABEL_71:
  switch(v43)
  {
    case 0u:
      v52 = v158;
      v51 = v159;
      goto LABEL_85;
    case 1u:
      (*(v158 + 8))(&v3[v174] & v41, v159);

      goto LABEL_112;
    case 2u:

      goto LABEL_95;
    case 3u:
      swift_unknownObjectRelease();
      goto LABEL_112;
    case 4u:
      v52 = v153;
      v51 = v154;
      goto LABEL_85;
    case 5u:
      v53 = *v42;
      goto LABEL_111;
    case 6u:
      (*(v182 + 8))(&v3[v174] & v41, v160);
      if (!__swift_getEnumTagSinglePayload(&v42[v170] & v168, 1, v161))
      {
        (*(v143 + 8))(&v42[v170] & v168, v161);
      }

LABEL_95:

      goto LABEL_112;
    case 7u:
      (*(v182 + 8))(&v3[v174] & v41, v160);
      if (!__swift_getEnumTagSinglePayload(&v42[v170] & v168, 1, v161))
      {
        (*(v143 + 8))(&v42[v170] & v168, v161);
      }

      goto LABEL_112;
    case 8u:
      v140 = v20;
      (*(v151 + 8))(&v3[v174] & v41, v152);
      v54 = &v42[v145 + 7] & 0xFFFFFFFFFFFFFFF8;

      v55 = (v146 + v54) & v144;
      if (v24 == v147)
      {
        v56 = (v146 + v54) & v144;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, v24, v160);
        v55 = v56;
        v20 = v140;
        if (EnumTagSinglePayload)
        {
          goto LABEL_110;
        }

        v139 = (v170 + v55) & v168;
        goto LABEL_107;
      }

      v58 = (v170 + v55) & v168;
      v20 = v140;
      if (v27 == v147)
      {
        v139 = (v170 + v55) & v168;
        if (v155 >= 2)
        {
          v137 = v55;
          v59 = __swift_getEnumTagSinglePayload(v58, v155, v161);
          v55 = v137;
          if (v59 >= 2)
          {
            goto LABEL_110;
          }
        }

        goto LABEL_107;
      }

      v60 = *(((v140 + v58) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v60 >= 0xFFFFFFFF)
      {
        LODWORD(v60) = -1;
      }

      if ((v60 + 1) < 2)
      {
        v139 = (v170 + v55) & v168;
LABEL_107:
        v138 = v55;
        (*(v182 + 8))(v55, v160);
        if (!__swift_getEnumTagSinglePayload(v139, 1, v161))
        {
          (*(v143 + 8))(v139, v161);
        }

        v55 = v138;
      }

LABEL_110:
      v53 = *((v22 + v55 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_111:

LABEL_112:
      v61 = &v42[v178 + 7];
      v62 = v20;
      v63 = (v61 & 0xFFFFFFFFFFFFFFF8) + 15;

      v64 = (v63 & 0xFFFFFFFFFFFFFFF8);
      v20 = v62;
      v39 = a2;
      if (v64[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
      }

LABEL_114:
      v65 = v39[v35];
      v66 = v65 - 7;
      if (v65 >= 7)
      {
        if (v35 <= 3)
        {
          v67 = v35;
        }

        else
        {
          v67 = 4;
        }

        switch(v67)
        {
          case 1:
            v68 = *v39;
            goto LABEL_123;
          case 2:
            v68 = *v39;
            goto LABEL_123;
          case 3:
            v68 = *v39 | (v39[2] << 16);
            goto LABEL_123;
          case 4:
            v68 = *v39;
LABEL_123:
            if (v35 < 4)
            {
              v65 = (v68 | (v66 << (8 * v35))) + 7;
            }

            else
            {
              v65 = v68 + 7;
            }

            break;
          default:
            break;
        }
      }

      switch(v65)
      {
        case 0u:
          (*(v179 + 16))(v3, v39, v180);
          v3[v35] = 0;
          return v3;
        case 1u:
          (*(v179 + 16))(v3, v39, v180);
          v69 = 1;
          goto LABEL_207;
        case 2u:
          (*(v162 + 16))(v3, v39, v163);
          v70 = (&v3[v174] & v41);
          v71 = (&v39[v174] & v41);
          v72 = v71[v31];
          v73 = v72 - 10;
          if (v72 >= 0xA)
          {
            if (v31 <= 3)
            {
              v74 = v31;
            }

            else
            {
              v74 = 4;
            }

            switch(v74)
            {
              case 1:
                v75 = *v71;
                goto LABEL_150;
              case 2:
                v75 = *v71;
                goto LABEL_150;
              case 3:
                v75 = *v71 | (v71[2] << 16);
                goto LABEL_150;
              case 4:
                v75 = *v71;
LABEL_150:
                if (v31 < 4)
                {
                  v72 = (v75 | (v73 << (8 * v31))) + 10;
                }

                else
                {
                  v72 = v75 + 10;
                }

                break;
              default:
                goto LABEL_153;
            }
          }

          break;
        case 3u:
          (*(v179 + 16))(v3, v39, v180);
          v69 = 3;
          goto LABEL_207;
        case 4u:
          (*(v179 + 16))(v3, v39, v180);
          v69 = 4;
          goto LABEL_207;
        case 5u:
          v77 = v39[v33];
          v78 = v77 - 2;
          if (v77 >= 2)
          {
            if (v33 <= 3)
            {
              v79 = v33;
            }

            else
            {
              v79 = 4;
            }

            switch(v79)
            {
              case 1:
                v80 = *v39;
                goto LABEL_158;
              case 2:
                v80 = *v39;
                goto LABEL_158;
              case 3:
                v80 = *v39 | (v39[2] << 16);
                goto LABEL_158;
              case 4:
                v80 = *v39;
LABEL_158:
                if (v33 < 4)
                {
                  v77 = (v80 | (v78 << v166)) + 2;
                }

                else
                {
                  v77 = v80 + 2;
                }

                break;
              default:
                break;
            }
          }

          if (v77 == 1)
          {
            v84 = v39;
            v85 = *v39;
            v86 = v85;
            *v3 = v85;
            v3[8] = v84[8];
            v3[v33] = 1;
          }

          else if (v77)
          {
            memcpy(v3, v39, v33 + 1);
          }

          else
          {
            (*(v172 + 16))(v3, v39, v176);
            v3[v33] = 0;
          }

          v69 = 5;
          goto LABEL_207;
        case 6u:
          v81 = v39;
          v82 = *v39;
          v83 = v82;
          *v3 = v82;
          v3[8] = v81[8];
          v69 = 6;
          goto LABEL_207;
        default:

          return memcpy(v3, v39, v35 + 1);
      }

      break;
    case 9u:
      v52 = v149;
      v51 = v150;
LABEL_85:
      (*(v52 + 8))(&v3[v174] & v41, v51);
      goto LABEL_112;
    default:
      goto LABEL_112;
  }

LABEL_153:
  switch(v72)
  {
    case 0u:
      (*(v158 + 16))(&v3[v174] & v41, v71, v159);
      *(v70 + v31) = 0;
      goto LABEL_203;
    case 1u:
      (*(v158 + 16))(&v3[v174] & v41, v71, v159);
      *((v70 + v148) & 0xFFFFFFFFFFFFFFF8) = *(&v71[v148] & 0xFFFFFFFFFFFFFFF8);
      *(v70 + v31) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v70 = *v71;
      *((&v3[v174] & v41) + 8) = *(v71 + 1);
      *((&v3[v174] & v41) + 0x10) = *(v71 + 2);
      *(v70 + v31) = 2;

      goto LABEL_203;
    case 3u:
      *v70 = *v71;
      *(v70 + v31) = 3;
      swift_unknownObjectRetain();
      goto LABEL_203;
    case 4u:
      (*(v153 + 16))(&v3[v174] & v41, v71, v154);
      v87 = 4;
      goto LABEL_169;
    case 5u:
      v90 = *v71;
      *v70 = *v71;
      *(v70 + v31) = 5;
      v91 = v90;
      goto LABEL_203;
    case 6u:
      (*(v182 + 16))(&v3[v174] & v41, v71, v160);
      v92 = ((v70 + v170) & v168);
      v93 = (&v71[v170] & v168);
      if (__swift_getEnumTagSinglePayload(v93, 1, v161))
      {
        memcpy(v92, v93, __n);
      }

      else
      {
        (*(v143 + 16))(v92, v93, v161);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v161);
      }

      v113 = ((v92 + v20) & 0xFFFFFFFFFFFFFFF8);
      v114 = ((v93 + v20) & 0xFFFFFFFFFFFFFFF8);
      *v113 = *v114;
      v113[1] = v114[1];
      v115 = (v113 + 19) & 0xFFFFFFFFFFFFFFF8;
      v116 = (v114 + 19) & 0xFFFFFFFFFFFFFFF8;
      v117 = *v116;
      *(v115 + 4) = *(v116 + 4);
      *v115 = v117;
      *(v70 + v31) = 6;
      goto LABEL_190;
    case 7u:
      (*(v182 + 16))(&v3[v174] & v41, v71, v160);
      v88 = ((v70 + v170) & v168);
      v89 = (&v71[v170] & v168);
      if (__swift_getEnumTagSinglePayload(v89, 1, v161))
      {
        memcpy(v88, v89, __n);
      }

      else
      {
        (*(v143 + 16))(v88, v89, v161);
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v161);
      }

      v102 = ((v88 + v20) & 0xFFFFFFFFFFFFFFF8);
      v103 = ((v89 + v20) & 0xFFFFFFFFFFFFFFF8);
      *v102 = *v103;
      v102[1] = v103[1];
      v104 = (v102 + 19) & 0xFFFFFFFFFFFFFFF8;
      v105 = (v103 + 19) & 0xFFFFFFFFFFFFFFF8;
      v106 = *v105;
      *(v104 + 4) = *(v105 + 4);
      *v104 = v106;
      v107 = ((v70 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v108 = (&v71[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v107 = *v108;
      v107[1] = v108[1];
      v109 = ((v107 + 23) & 0xFFFFFFFFFFFFFFF8);
      v110 = ((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v109[1] = v110[1];
      v111 = ((v109 + 23) & 0xFFFFFFFFFFFFFFF8);
      v112 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v111 = *v112;
      v111[1] = v112[1];
      *(v70 + v31) = 7;

LABEL_190:

      goto LABEL_202;
    case 8u:
      v141 = v20;
      (*(v151 + 16))(&v3[v174] & v41, v71, v152);
      v94 = ((v70 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
      v95 = (&v71[v145 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v94 = *v95;
      v94[1] = v95[1];
      v184 = ((v94 + v146) & v144);
      v96 = ((v95 + v146) & v144);

      if (v24 != v147)
      {
        if (v27 == v147)
        {
          v100 = v161;
          if (v155 < 2)
          {
LABEL_195:
            v98 = v168;
            v97 = v170;
            v99 = ((v96 + v170) & v168);
            goto LABEL_196;
          }

          if (__swift_getEnumTagSinglePayload((v96 + v170) & v168, v155, v161) >= 2)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v118 = *(((v20 + ((v96 + v170) & v168)) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v118 >= 0xFFFFFFFF)
          {
            LODWORD(v118) = -1;
          }

          if ((v118 + 1) >= 2)
          {
            goto LABEL_185;
          }
        }

        v100 = v161;
        goto LABEL_195;
      }

      if (__swift_getEnumTagSinglePayload(v96, v24, v160))
      {
LABEL_185:
        v101 = v184;
        memcpy(v184, v96, v22);
LABEL_200:
        v125 = __n;
        goto LABEL_201;
      }

      v98 = v168;
      v97 = v170;
      v99 = ((v96 + v170) & v168);
      v100 = v161;
LABEL_196:
      (*(v182 + 16))(v184, v96, v160);
      v119 = ((v184 + v97) & v98);
      if (__swift_getEnumTagSinglePayload(v99, 1, v100))
      {
        memcpy(v119, v99, __n);
      }

      else
      {
        (*(v143 + 16))(v119, v99, v100);
        __swift_storeEnumTagSinglePayload(v119, 0, 1, v100);
      }

      v120 = ((v119 + v141) & 0xFFFFFFFFFFFFFFF8);
      v121 = ((v99 + v141) & 0xFFFFFFFFFFFFFFF8);
      *v120 = *v121;
      v120[1] = v121[1];
      v122 = (v120 + 19) & 0xFFFFFFFFFFFFFFF8;
      v123 = (v121 + 19) & 0xFFFFFFFFFFFFFFF8;
      v124 = *v123;
      *(v122 + 4) = *(v123 + 4);
      *v122 = v124;

      v125 = v142;
      v101 = v184;
      if (!v155)
      {
        goto LABEL_200;
      }

LABEL_201:
      v126 = (((v156 + v125 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v127 = ((v101 + v126 + 7) & 0xFFFFFFFFFFFFFFF8);
      v128 = *((v96 + v126 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v127 = v128;
      *(v70 + v31) = 8;
      v129 = v128;
LABEL_202:
      v3 = v181;
LABEL_203:
      v130 = (&v71[v178 + 7] & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v70 + v178 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v131 = *v130;
      v132 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
      v133 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
      v134 = *(v133 + 24);

      if (v134 < 0xFFFFFFFF)
      {
        v135 = *v133;
        v136 = *(v133 + 16);
        *(v132 + 32) = *(v133 + 32);
        *v132 = v135;
        *(v132 + 16) = v136;
      }

      else
      {
        *(v132 + 24) = v134;
        *(v132 + 32) = *(v133 + 32);
        (**(v134 - 8))(v132, v133, v134);
      }

      *(v132 + 40) = *(v133 + 40);
      v69 = 2;
LABEL_207:
      v3[v35] = v69;
      return v3;
    case 9u:
      (*(v149 + 16))(&v3[v174] & v41, v71, v150);
      v87 = 9;
LABEL_169:
      *(v70 + v31) = v87;
      goto LABEL_203;
    default:
      memcpy((&v3[v174] & v41), v71, v178);
      goto LABEL_203;
  }
}

_BYTE *sub_1DCE6C43C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v133 = *(*(a3 + 16) - 8);
  v150 = *(v133 + 64);
  v132 = *(sub_1DD0DB04C() - 8);
  v146 = *(v132 + 64);
  v129 = sub_1DD0DC76C();
  v142 = *(v129 - 8);
  v128 = v142;
  v3 = *(v142 + 80);
  v127 = sub_1DD0DB1EC();
  v144 = *(v127 - 8);
  v126 = v144;
  v136 = *(v144 + 80) | v3;
  v131 = sub_1DD0DB4BC();
  v140 = *(v131 - 8);
  v154 = v140;
  v4 = *(v140 + 80) & 0xF8;
  v130 = sub_1DD0DB3EC();
  v5 = *(v130 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v125 = sub_1DD0DD12C();
  v138 = *(v125 - 8);
  v124 = v138;
  v8 = *(v138 + 80);
  v123 = sub_1DD0DD08C();
  v9 = *(v123 - 8);
  v122 = v9;
  v10 = (v136 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v147 = v146 + v10;
  v12 = *(v142 + 64);
  v137 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v144 + 64))
  {
    v12 = *(v144 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v140 + 64);
  v15 = v14 + v6;
  v145 = v6;
  v16 = (v14 + v6) & ~v6;
  v121 = v5;
  v17 = *(v5 + 84);
  v18 = *(v5 + 64);
  if (v17)
  {
    v19 = *(v5 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = v19 + 7;
  v21 = (v19 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v22 <= v13)
  {
    v23 = v13;
  }

  else
  {
    v23 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v24 = v21 + 31;
  v25 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = v25 + 16;
  if (v25 + 16 > v23)
  {
    v23 = v25 + 16;
  }

  v27 = *(v138 + 64);
  v141 = v7 + 16;
  v143 = v4 | v6 | 7;
  v28 = (v7 + 16 + ((v27 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v29 = *(v154 + 84);
  if (v17)
  {
    v30 = v17 - 1;
  }

  else
  {
    v30 = 0;
  }

  if (v30 <= v29)
  {
    v31 = *(v154 + 84);
  }

  else
  {
    v31 = v30;
  }

  if (v31 <= 0x7FFFFFFE)
  {
    v32 = 2147483646;
  }

  else
  {
    v32 = v31;
  }

  v33 = (v24 + v28) & 0xFFFFFFFFFFFFFFF8;
  v34 = v33 + 8;
  if (v33 + 8 <= v23)
  {
    v35 = v23;
  }

  else
  {
    v35 = v33 + 8;
  }

  if (*(v9 + 64) <= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = *(v9 + 64);
  }

  v11 = v147 & ~v10;
  v37 = v150;
  if (((((v36 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41 > v150)
  {
    v37 = ((((v36 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v38 = 9;
  }

  else
  {
    v38 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (v38 + 1 > v37)
  {
    v37 = v38 + 1;
  }

  if (v37 <= 9)
  {
    v39 = 9;
  }

  else
  {
    v39 = v37;
  }

  v40 = a2[v39];
  v41 = v40 - 7;
  if (v40 < 7)
  {
    v43 = a1;
  }

  else
  {
    if (v39 <= 3)
    {
      v42 = v39;
    }

    else
    {
      v42 = 4;
    }

    v43 = a1;
    switch(v42)
    {
      case 1:
        v44 = *a2;
        goto LABEL_51;
      case 2:
        v44 = *a2;
        goto LABEL_51;
      case 3:
        v44 = *a2 | (a2[2] << 16);
        goto LABEL_51;
      case 4:
        v44 = *a2;
LABEL_51:
        if (v39 < 4)
        {
          v40 = (v44 | (v41 << (8 * v39))) + 7;
        }

        else
        {
          v40 = v44 + 7;
        }

        break;
      default:
        break;
    }
  }

  switch(v40)
  {
    case 0u:
      (*(v133 + 32))(v43);
      v43[v39] = 0;
      return v43;
    case 1u:
      (*(v133 + 32))(v43);
      v45 = 1;
      goto LABEL_142;
    case 2u:
      v134 = v32;
      v135 = *(v9 + 64);
      v117 = v34;
      v118 = v16;
      v116 = v17;
      v115 = v18;
      v119 = v26;
      v120 = v13;
      v139 = v19;
      v46 = ~v10;
      v152 = v36;
      (*(v132 + 32))(v43);
      v47 = (&v43[v147] & v46);
      v48 = (&a2[v147] & v46);
      v49 = v48[v152];
      v50 = v49 - 10;
      if (v49 >= 0xA)
      {
        if (v152 <= 3)
        {
          v51 = v152;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *v48;
            goto LABEL_78;
          case 2:
            v52 = *v48;
            goto LABEL_78;
          case 3:
            v52 = *(&a2[v147] & v46) | (*((&a2[v147] & v46) + 2) << 16);
            goto LABEL_78;
          case 4:
            v52 = *v48;
LABEL_78:
            if (v152 < 4)
            {
              v49 = (v52 | (v50 << (8 * v152))) + 10;
            }

            else
            {
              v49 = v52 + 10;
            }

            break;
          default:
            goto LABEL_81;
        }
      }

      break;
    case 3u:
      (*(v133 + 32))(v43);
      v45 = 3;
      goto LABEL_142;
    case 4u:
      (*(v133 + 32))(v43);
      v45 = 4;
      goto LABEL_142;
    case 5u:
      v54 = a2[v38];
      v55 = v54 - 2;
      if (v54 >= 2)
      {
        if (v38 <= 3)
        {
          v56 = v38;
        }

        else
        {
          v56 = 4;
        }

        switch(v56)
        {
          case 1:
            v57 = *a2;
            goto LABEL_86;
          case 2:
            v57 = *a2;
            goto LABEL_86;
          case 3:
            v57 = *a2 | (a2[2] << 16);
            goto LABEL_86;
          case 4:
            v57 = *a2;
LABEL_86:
            if (v38 < 4)
            {
              v54 = (v57 | (v55 << (8 * v38))) + 2;
            }

            else
            {
              v54 = v57 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v54 == 1)
      {
        *v43 = *a2;
        v43[8] = a2[8];
        v43[v38] = 1;
      }

      else if (v54)
      {
        memcpy(v43, a2, v38 + 1);
      }

      else
      {
        (*(*(*(a3 + 24) - 8) + 32))(v43);
        v43[v38] = 0;
      }

      v45 = 5;
      goto LABEL_142;
    case 6u:
      *v43 = *a2;
      v43[8] = a2[8];
      v45 = 6;
      goto LABEL_142;
    default:

      return memcpy(v43, a2, v39 + 1);
  }

LABEL_81:
  v58 = v152 + 1;
  v149 = v20;
  v59 = ~v145;
  switch(v49)
  {
    case 0u:
      (*(v128 + 32))(v47, v48, v129);
      v47[v152] = 0;
      goto LABEL_141;
    case 1u:
      v60 = v152;
      (*(v128 + 32))(v47, v48, v129);
      *(&v47[v137] & 0xFFFFFFFFFFFFFFF8) = *(&v48[v137] & 0xFFFFFFFFFFFFFFF8);
      v61 = 1;
      goto LABEL_102;
    case 2u:
      v62 = *v48;
      *(v47 + 2) = *(v48 + 2);
      *v47 = v62;
      v63 = 2;
      goto LABEL_104;
    case 3u:
      *v47 = *v48;
      v63 = 3;
      goto LABEL_104;
    case 4u:
      v60 = v152;
      (*(v126 + 32))(v47, v48, v127);
      v61 = 4;
      goto LABEL_102;
    case 5u:
      *v47 = *v48;
      v63 = 5;
LABEL_104:
      v47[v152] = v63;
      goto LABEL_141;
    case 6u:
      v64 = v152 + 1;
      (*(v154 + 32))(v47, v48, v131);
      v67 = (&v47[v15] & v59);
      v68 = (&v48[v15] & v59);
      if (__swift_getEnumTagSinglePayload(v68, 1, v130))
      {
        memcpy(v67, v68, v139);
      }

      else
      {
        (*(v121 + 32))(v67, v68, v130);
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v130);
      }

      v88 = ((v67 + v149) & 0xFFFFFFFFFFFFFFF8);
      v89 = ((v68 + v149) & 0xFFFFFFFFFFFFFFF8);
      *v88 = *v89;
      v90 = (v88 + 19) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v89 + 19) & 0xFFFFFFFFFFFFFFF8;
      v92 = *v91;
      *(v90 + 4) = *(v91 + 4);
      *v90 = v92;
      v87 = 6;
      goto LABEL_118;
    case 7u:
      v64 = v152 + 1;
      (*(v154 + 32))(v47, v48, v131);
      v65 = (&v47[v15] & v59);
      v66 = (&v48[v15] & v59);
      if (__swift_getEnumTagSinglePayload(v66, 1, v130))
      {
        memcpy(v65, v66, v139);
      }

      else
      {
        (*(v121 + 32))(v65, v66, v130);
        __swift_storeEnumTagSinglePayload(v65, 0, 1, v130);
      }

      v78 = ((v65 + v149) & 0xFFFFFFFFFFFFFFF8);
      v79 = ((v66 + v149) & 0xFFFFFFFFFFFFFFF8);
      *v78 = *v79;
      v80 = (v78 + 19) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v79 + 19) & 0xFFFFFFFFFFFFFFF8;
      v82 = *v81;
      *(v80 + 4) = *(v81 + 4);
      *v80 = v82;
      v83 = (&v47[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      v84 = (&v48[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v83 = *v84;
      v85 = ((v83 + 23) & 0xFFFFFFFFFFFFFFF8);
      v86 = ((v84 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v85 = *v86;
      *((v85 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v86 + 23) & 0xFFFFFFFFFFFFFFF8);
      v87 = 7;
LABEL_118:
      v47[v152] = v87;
      v43 = a1;
      v58 = v64;
      goto LABEL_141;
    case 8u:
      v153 = v152 + 1;
      (*(v124 + 32))(v47, v48, v125);
      v69 = (&v47[v27 + 7] & 0xFFFFFFFFFFFFFFF8);
      v70 = (&v48[v27 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v69 = *v70;
      v71 = ((v69 + v141) & ~v143);
      v72 = ((v70 + v141) & ~v143);
      if (v29 == v134)
      {
        if (!__swift_getEnumTagSinglePayload(v72, v29, v131))
        {
          v73 = v71;
          v74 = v47;
          v75 = ((v72 + v15) & v59);
          v76 = v130;
          v77 = v154;
          goto LABEL_124;
        }

LABEL_130:
        memcpy(v71, v72, v22);
        v95 = v139;
        v103 = v119;
        v102 = v120;
        v105 = v117;
        v104 = v118;
LABEL_131:
        v106 = v95;
        goto LABEL_132;
      }

      v75 = ((v72 + v15) & v59);
      if (v30 == v134)
      {
        v76 = v130;
        if (v116 < 2)
        {
          v73 = ((v69 + v141) & ~v143);
          v74 = v47;
          goto LABEL_123;
        }

        if (__swift_getEnumTagSinglePayload((v72 + v15) & v59, v116, v130) >= 2)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v93 = *(((v75 + v149) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v93 >= 0xFFFFFFFF)
        {
          LODWORD(v93) = -1;
        }

        if ((v93 + 1) >= 2)
        {
          goto LABEL_130;
        }
      }

      v73 = v71;
      v74 = v47;
      v76 = v130;
LABEL_123:
      v77 = v154;
LABEL_124:
      (*(v77 + 32))(v73, v72, v131);
      v71 = v73;
      v94 = ((v73 + v15) & v59);
      if (__swift_getEnumTagSinglePayload(v75, 1, v76))
      {
        v95 = v139;
        memcpy(v94, v75, v139);
        v96 = v149;
      }

      else
      {
        (*(v121 + 32))(v94, v75, v76);
        __swift_storeEnumTagSinglePayload(v94, 0, 1, v76);
        v96 = v149;
        v95 = v139;
      }

      v97 = ((v94 + v96) & 0xFFFFFFFFFFFFFFF8);
      v98 = ((v75 + v96) & 0xFFFFFFFFFFFFFFF8);
      *v97 = *v98;
      v99 = (v98 + 19) & 0xFFFFFFFFFFFFFFF8;
      v100 = *v99;
      v101 = (v97 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v101 + 4) = *(v99 + 4);
      *v101 = v100;
      v103 = v119;
      v102 = v120;
      v47 = v74;
      v105 = v117;
      v104 = v118;
      v106 = v115;
      if (!v116)
      {
        goto LABEL_131;
      }

LABEL_132:
      v107 = v104 + 7;
      *((v71 + ((((v107 + v106) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v72 + ((((v107 + v106) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
      v108 = (((v107 + v95) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v108 <= v102)
      {
        v108 = v102;
      }

      if (v103 > v108)
      {
        v108 = v103;
      }

      if (v105 > v108)
      {
        v108 = v105;
      }

      if (v135 > v108)
      {
        v108 = v135;
      }

      v47[v108] = 8;
      v43 = a1;
      v58 = v153;
LABEL_141:
      v109 = (&v47[v58 + 7] & 0xFFFFFFFFFFFFFFF8);
      v110 = (&v48[v58 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v113 = *v112;
      v114 = *(v112 + 16);
      *(v111 + 32) = *(v112 + 32);
      *v111 = v113;
      *(v111 + 16) = v114;
      *(v111 + 40) = *(v112 + 40);
      v45 = 2;
LABEL_142:
      v43[v39] = v45;
      return v43;
    case 9u:
      v60 = v152;
      (*(v122 + 32))(v47, v48, v123);
      v61 = 9;
LABEL_102:
      v47[v60] = v61;
      goto LABEL_141;
    default:
      memcpy(v47, v48, v152 + 1);
      goto LABEL_141;
  }
}

unsigned __int8 *sub_1DCE6D22C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v181 = *(a3 + 16);
  v180 = *(v181 - 8);
  v178 = *(v180 + 64);
  v4 = sub_1DD0DB04C();
  v162 = *(v4 - 8);
  v163 = v4;
  v174 = *(v162 + 64);
  v159 = sub_1DD0DC76C();
  v170 = *(v159 - 8);
  v158 = v170;
  v5 = *(v170 + 80);
  v155 = sub_1DD0DB1EC();
  v172 = *(v155 - 8);
  v154 = v172;
  v164 = *(v172 + 80) | v5;
  v160 = sub_1DD0DB4BC();
  v168 = *(v160 - 8);
  v182 = v168;
  v6 = *(v168 + 80) & 0xF8;
  v161 = sub_1DD0DB3EC();
  v7 = *(v161 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v153 = sub_1DD0DD12C();
  v166 = *(v153 - 8);
  v152 = v166;
  v10 = *(v166 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v151 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v150 = v15;
  v16 = (v164 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v175 = v174 + v16;
  v17 = *(v170 + 64);
  v149 = v17 + 7;
  if (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v17)
  {
    v17 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v17 <= *(v172 + 64))
  {
    v17 = *(v172 + 64);
  }

  if (v17 <= 0x18)
  {
    v18 = 24;
  }

  else
  {
    v18 = v17;
  }

  v171 = *(v168 + 64) + v8;
  v144 = v7;
  v19 = *(v7 + 84);
  v20 = *(v7 + 64);
  v143 = v20;
  if (!v19)
  {
    ++v20;
  }

  v165 = v20;
  v21 = v20 + 7;
  v157 = v171 & ~v8;
  v22 = (v20 + 7 + v157) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v142 = v18;
  if (v23 <= v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v25 = v22 + 31;
  v141 = (((((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v141 > v24)
  {
    v24 = (((((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v146 = *(v166 + 64);
  v148 = v9 + 16;
  v26 = *(v168 + 84);
  v156 = *(v7 + 84);
  v27 = v19 != 0;
  v28 = v19 - 1;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= v26)
  {
    v30 = *(v168 + 84);
  }

  else
  {
    v30 = v29;
  }

  if (v30 <= 0x7FFFFFFE)
  {
    v30 = 2147483646;
  }

  v147 = v30;
  v31 = ((v25 + ((v9 + 16 + ((v146 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v140 = v31;
  if (v31 <= v24)
  {
    v31 = v24;
  }

  v32 = *(v15 + 64);
  if (v32 <= v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = *(v15 + 64);
  }

  v34 = ((((v33 + (v175 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v177 = *(a3 + 24);
  if (v34 <= v178)
  {
    v34 = v178;
  }

  v173 = *(v177 - 8);
  if (*(v173 + 64) <= 9uLL)
  {
    v35 = 9;
  }

  else
  {
    v35 = *(*(v177 - 8) + 64);
  }

  if (v35 + 1 > v34)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = v34;
  }

  if (v36 <= 9)
  {
    v37 = 9;
  }

  else
  {
    v37 = v36;
  }

  v38 = a1[v37];
  v39 = v38 - 7;
  if (v38 < 7)
  {
    v41 = a2;
  }

  else
  {
    if (v37 <= 3)
    {
      v40 = v37;
    }

    else
    {
      v40 = 4;
    }

    v41 = a2;
    switch(v40)
    {
      case 1:
        v42 = *a1;
        goto LABEL_50;
      case 2:
        v42 = *a1;
        goto LABEL_50;
      case 3:
        v42 = *a1 | (a1[2] << 16);
        goto LABEL_50;
      case 4:
        v42 = *a1;
LABEL_50:
        if (v37 < 4)
        {
          v42 |= v39 << (8 * v37);
        }

        v38 = v42 + 7;
        break;
      default:
        break;
    }
  }

  v139 = v32;
  v179 = v33 + 1;
  v43 = ~v16;
  v169 = ~v14;
  v145 = ~v12;
  v167 = 8 * v35;
  switch(v38)
  {
    case 0u:
    case 1u:
    case 3u:
    case 4u:
      (*(v180 + 8))(a1, v181);
      goto LABEL_116;
    case 2u:
      (*(v162 + 8))(a1, v163);
      v44 = (&a1[v175] & v43);
      v45 = v44[v33];
      v46 = v45 - 10;
      if (v45 >= 0xA)
      {
        if (v33 <= 3)
        {
          v47 = v33;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v44;
            goto LABEL_70;
          case 2:
            v48 = *v44;
            goto LABEL_70;
          case 3:
            v48 = *v44 | (*((&a1[v175] & v43) + 2) << 16);
            goto LABEL_70;
          case 4:
            v48 = *v44;
LABEL_70:
            if (v33 < 4)
            {
              v45 = (v48 | (v46 << (8 * v33))) + 10;
            }

            else
            {
              v45 = v48 + 10;
            }

            break;
          default:
            goto LABEL_73;
        }
      }

      break;
    case 5u:
      v49 = a1[v35];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v35 <= 3)
        {
          v51 = v35;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a1;
            goto LABEL_78;
          case 2:
            v52 = *a1;
            goto LABEL_78;
          case 3:
            v52 = *a1 | (a1[2] << 16);
            goto LABEL_78;
          case 4:
            v52 = *a1;
LABEL_78:
            if (v35 < 4)
            {
              v49 = (v52 | (v50 << v167)) + 2;
            }

            else
            {
              v49 = v52 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v49 == 1)
      {
        goto LABEL_84;
      }

      if (!v49)
      {
        (*(v173 + 8))(a1, v177);
      }

      goto LABEL_116;
    case 6u:
LABEL_84:

      goto LABEL_116;
    default:
      goto LABEL_116;
  }

LABEL_73:
  switch(v45)
  {
    case 0u:
      v54 = v158;
      v53 = v159;
      goto LABEL_87;
    case 1u:
      (*(v158 + 8))(&a1[v175] & v43, v159);

      goto LABEL_114;
    case 2u:

      goto LABEL_97;
    case 3u:
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 4u:
      v54 = v154;
      v53 = v155;
      goto LABEL_87;
    case 5u:
      v55 = *v44;
      goto LABEL_113;
    case 6u:
      (*(v182 + 8))(&a1[v175] & v43, v160);
      if (!__swift_getEnumTagSinglePayload(&v44[v171] & v169, 1, v161))
      {
        (*(v144 + 8))(&v44[v171] & v169, v161);
      }

LABEL_97:

      goto LABEL_114;
    case 7u:
      (*(v182 + 8))(&a1[v175] & v43, v160);
      if (!__swift_getEnumTagSinglePayload(&v44[v171] & v169, 1, v161))
      {
        (*(v144 + 8))(&v44[v171] & v169, v161);
      }

      goto LABEL_114;
    case 8u:
      v137 = v21;
      (*(v152 + 8))(&a1[v175] & v43, v153);
      v56 = &v44[v146 + 7] & 0xFFFFFFFFFFFFFFF8;

      v57 = (v148 + v56) & v145;
      if (v26 == v147)
      {
        v58 = (v148 + v56) & v145;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, v26, v160);
        v57 = v58;
        v21 = v137;
        if (EnumTagSinglePayload)
        {
          goto LABEL_112;
        }

        v136 = (v171 + v57) & v169;
        goto LABEL_109;
      }

      v60 = (v171 + v57) & v169;
      v21 = v137;
      if (v29 == v147)
      {
        v136 = (v171 + v57) & v169;
        if (v156 >= 2)
        {
          v134 = v57;
          v61 = __swift_getEnumTagSinglePayload(v60, v156, v161);
          v57 = v134;
          if (v61 >= 2)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_109;
      }

      v62 = *(((v137 + v60) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v62 >= 0xFFFFFFFF)
      {
        LODWORD(v62) = -1;
      }

      if ((v62 + 1) < 2)
      {
        v136 = (v171 + v57) & v169;
LABEL_109:
        v135 = v57;
        (*(v182 + 8))(v57, v160);
        if (!__swift_getEnumTagSinglePayload(v136, 1, v161))
        {
          (*(v144 + 8))(v136, v161);
        }

        v57 = v135;
      }

LABEL_112:
      v55 = *((v23 + v57 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_113:

LABEL_114:
      v63 = &v44[v179 + 7];
      v64 = v21;
      v65 = (v63 & 0xFFFFFFFFFFFFFFF8) + 15;

      v66 = (v65 & 0xFFFFFFFFFFFFFFF8);
      v21 = v64;
      v41 = a2;
      if (v66[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
      }

LABEL_116:
      v67 = v41[v37];
      v68 = v67 - 7;
      if (v67 >= 7)
      {
        if (v37 <= 3)
        {
          v69 = v37;
        }

        else
        {
          v69 = 4;
        }

        switch(v69)
        {
          case 1:
            v70 = *v41;
            goto LABEL_125;
          case 2:
            v70 = *v41;
            goto LABEL_125;
          case 3:
            v70 = *v41 | (v41[2] << 16);
            goto LABEL_125;
          case 4:
            v70 = *v41;
LABEL_125:
            if (v37 < 4)
            {
              v67 = (v70 | (v68 << (8 * v37))) + 7;
            }

            else
            {
              v67 = v70 + 7;
            }

            break;
          default:
            break;
        }
      }

      switch(v67)
      {
        case 0u:
          (*(v180 + 32))(a1, v41, v181);
          a1[v37] = 0;
          return a1;
        case 1u:
          (*(v180 + 32))(a1, v41, v181);
          v71 = 1;
          goto LABEL_192;
        case 2u:
          (*(v162 + 32))(a1, v41, v163);
          v72 = (&a1[v175] & v43);
          v73 = (&v41[v175] & v43);
          v74 = v73[v33];
          v75 = v74 - 10;
          if (v74 >= 0xA)
          {
            if (v33 <= 3)
            {
              v76 = v33;
            }

            else
            {
              v76 = 4;
            }

            switch(v76)
            {
              case 1:
                v77 = *v73;
                goto LABEL_152;
              case 2:
                v77 = *v73;
                goto LABEL_152;
              case 3:
                v77 = *v73 | (v73[2] << 16);
                goto LABEL_152;
              case 4:
                v77 = *v73;
LABEL_152:
                if (v33 < 4)
                {
                  v74 = (v77 | (v75 << (8 * v33))) + 10;
                }

                else
                {
                  v74 = v77 + 10;
                }

                break;
              default:
                goto LABEL_155;
            }
          }

          break;
        case 3u:
          (*(v180 + 32))(a1, v41, v181);
          v71 = 3;
          goto LABEL_192;
        case 4u:
          (*(v180 + 32))(a1, v41, v181);
          v71 = 4;
          goto LABEL_192;
        case 5u:
          v79 = v41[v35];
          v80 = v79 - 2;
          if (v79 >= 2)
          {
            if (v35 <= 3)
            {
              v81 = v35;
            }

            else
            {
              v81 = 4;
            }

            switch(v81)
            {
              case 1:
                v82 = *v41;
                goto LABEL_160;
              case 2:
                v82 = *v41;
                goto LABEL_160;
              case 3:
                v82 = *v41 | (v41[2] << 16);
                goto LABEL_160;
              case 4:
                v82 = *v41;
LABEL_160:
                if (v35 < 4)
                {
                  v79 = (v82 | (v80 << v167)) + 2;
                }

                else
                {
                  v79 = v82 + 2;
                }

                break;
              default:
                break;
            }
          }

          if (v79 == 1)
          {
            *a1 = *v41;
            a1[8] = v41[8];
            a1[v35] = 1;
          }

          else if (v79)
          {
            memcpy(a1, v41, v35 + 1);
          }

          else
          {
            (*(v173 + 32))(a1, v41, v177);
            a1[v35] = 0;
          }

          v71 = 5;
          goto LABEL_192;
        case 6u:
          *a1 = *v41;
          a1[8] = v41[8];
          v71 = 6;
          goto LABEL_192;
        default:

          return memcpy(a1, v41, v37 + 1);
      }

      break;
    case 9u:
      v54 = v150;
      v53 = v151;
LABEL_87:
      (*(v54 + 8))(&a1[v175] & v43, v53);
      goto LABEL_114;
    default:
      goto LABEL_114;
  }

LABEL_155:
  switch(v74)
  {
    case 0u:
      (*(v158 + 32))(&a1[v175] & v43, v73, v159);
      *(v72 + v33) = 0;
      goto LABEL_190;
    case 1u:
      (*(v158 + 32))(&a1[v175] & v43, v73, v159);
      *((v72 + v149) & 0xFFFFFFFFFFFFFFF8) = *(&v73[v149] & 0xFFFFFFFFFFFFFFF8);
      v83 = 1;
      goto LABEL_189;
    case 2u:
      v84 = *v73;
      *((&a1[v175] & v43) + 0x10) = *(v73 + 2);
      *v72 = v84;
      v83 = 2;
      goto LABEL_189;
    case 3u:
      *v72 = *v73;
      v83 = 3;
      goto LABEL_189;
    case 4u:
      (*(v154 + 32))(&a1[v175] & v43, v73, v155);
      v83 = 4;
      goto LABEL_189;
    case 5u:
      *v72 = *v73;
      v83 = 5;
      goto LABEL_189;
    case 6u:
      v87 = v21;
      v88 = v33 + 1;
      (*(v182 + 32))(&a1[v175] & v43, v73, v160);
      v89 = ((v72 + v171) & v169);
      v90 = (&v73[v171] & v169);
      if (__swift_getEnumTagSinglePayload(v90, 1, v161))
      {
        memcpy(v89, v90, v165);
      }

      else
      {
        (*(v144 + 32))(v89, v90, v161);
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v161);
      }

      v119 = ((v89 + v87) & 0xFFFFFFFFFFFFFFF8);
      v120 = ((v90 + v87) & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v121 = (v119 + 19) & 0xFFFFFFFFFFFFFFF8;
      v122 = (v120 + 19) & 0xFFFFFFFFFFFFFFF8;
      v123 = *v122;
      *(v121 + 4) = *(v122 + 4);
      *v121 = v123;
      *(v72 + v33) = 6;
      goto LABEL_191;
    case 7u:
      (*(v182 + 32))(&a1[v175] & v43, v73, v160);
      v85 = ((v72 + v171) & v169);
      v86 = (&v73[v171] & v169);
      if (__swift_getEnumTagSinglePayload(v86, 1, v161))
      {
        memcpy(v85, v86, v165);
      }

      else
      {
        (*(v144 + 32))(v85, v86, v161);
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v161);
      }

      v104 = ((v85 + v21) & 0xFFFFFFFFFFFFFFF8);
      v105 = ((v86 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v104 = *v105;
      v106 = (v104 + 19) & 0xFFFFFFFFFFFFFFF8;
      v107 = (v105 + 19) & 0xFFFFFFFFFFFFFFF8;
      v108 = *v107;
      *(v106 + 4) = *(v107 + 4);
      *v106 = v108;
      v109 = ((v72 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
      v110 = (&v73[v23 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v110;
      v111 = ((v109 + 23) & 0xFFFFFFFFFFFFFFF8);
      v112 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v111 = *v112;
      *((v111 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v112 + 23) & 0xFFFFFFFFFFFFFFF8);
      v83 = 7;
      goto LABEL_189;
    case 8u:
      v138 = v21;
      (*(v152 + 32))(&a1[v175] & v43, v73, v153);
      v91 = ((v72 + v146 + 7) & 0xFFFFFFFFFFFFFFF8);
      v92 = (&v73[v146 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v91 = *v92;
      v184 = ((v91 + v148) & v145);
      v93 = ((v92 + v148) & v145);
      if (v26 != v147)
      {
        v97 = ((v93 + v171) & v169);
        if (v29 == v147)
        {
          v98 = v161;
          v94 = v165;
          if (v156 < 2)
          {
LABEL_200:
            v95 = v169;
            v96 = v171;
            goto LABEL_201;
          }

          if (__swift_getEnumTagSinglePayload((v93 + v171) & v169, v156, v161) >= 2)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v124 = *(((v97 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v124 >= 0xFFFFFFFF)
          {
            LODWORD(v124) = -1;
          }

          v94 = v165;
          if ((v124 + 1) >= 2)
          {
            goto LABEL_186;
          }
        }

        v98 = v161;
        goto LABEL_200;
      }

      v94 = v165;
      if (__swift_getEnumTagSinglePayload(v93, v26, v160))
      {
LABEL_186:
        v99 = v184;
        memcpy(v184, v93, v23);
        v101 = v141;
        v100 = v142;
        v103 = v139;
        v102 = v140;
LABEL_205:
        v131 = v94;
        goto LABEL_206;
      }

      v95 = v169;
      v96 = v171;
      v97 = ((v93 + v171) & v169);
      v98 = v161;
LABEL_201:
      (*(v182 + 32))(v184, v93, v160);
      v125 = ((v184 + v96) & v95);
      if (__swift_getEnumTagSinglePayload(v97, 1, v98))
      {
        v94 = v165;
        memcpy(v125, v97, v165);
      }

      else
      {
        (*(v144 + 32))(v125, v97, v98);
        __swift_storeEnumTagSinglePayload(v125, 0, 1, v98);
        v94 = v165;
      }

      v103 = v139;
      v126 = ((v125 + v138) & 0xFFFFFFFFFFFFFFF8);
      v127 = ((v97 + v138) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      v128 = (v127 + 19) & 0xFFFFFFFFFFFFFFF8;
      v129 = *v128;
      v130 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v130 + 4) = *(v128 + 4);
      *v130 = v129;
      v101 = v141;
      v100 = v142;
      v131 = v143;
      v102 = v140;
      v99 = v184;
      if (!v156)
      {
        goto LABEL_205;
      }

LABEL_206:
      v132 = (((v157 + 7 + v131) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      *((v99 + v132 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v93 + v132 + 7) & 0xFFFFFFFFFFFFFFF8);
      v133 = (((v157 + 7 + v94) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v133 <= v100)
      {
        v133 = v100;
      }

      if (v101 > v133)
      {
        v133 = v101;
      }

      if (v102 > v133)
      {
        v133 = v102;
      }

      if (v103 > v133)
      {
        v133 = v103;
      }

      *(v72 + v133) = 8;
LABEL_190:
      v88 = v179;
LABEL_191:
      v113 = ((v72 + v88 + 7) & 0xFFFFFFFFFFFFFFF8);
      v114 = (&v73[v88 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v113 = *v114;
      v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
      v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
      v117 = *v116;
      v118 = *(v116 + 16);
      *(v115 + 32) = *(v116 + 32);
      *v115 = v117;
      *(v115 + 16) = v118;
      *(v115 + 40) = *(v116 + 40);
      v71 = 2;
LABEL_192:
      a1[v37] = v71;
      return a1;
    case 9u:
      (*(v150 + 32))(&a1[v175] & v43, v73, v151);
      v83 = 9;
LABEL_189:
      *(v72 + v33) = v83;
      goto LABEL_190;
    default:
      v88 = v33 + 1;
      memcpy((&a1[v175] & v43), v73, v179);
      goto LABEL_191;
  }
}

uint64_t sub_1DCE6E5D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(*(*(a3 + 16) - 8) + 64);
  v34 = *(*(sub_1DD0DB04C() - 8) + 64);
  v32 = *(sub_1DD0DC76C() - 8);
  v3 = *(v32 + 80);
  v33 = *(sub_1DD0DB1EC() - 8);
  v29 = *(v33 + 80) | v3;
  v31 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v31 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v30 = *(sub_1DD0DD12C() - 8);
  v8 = *(v30 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v29 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v34 + v10) & ~v10;
  v12 = *(v32 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v33 + 64))
  {
    v12 = *(v33 + 64);
  }

  v13 = *(v5 + 64) + ((*(v31 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v30 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v30 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v18 <= v36)
  {
    v18 = v36;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v18)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 9)
  {
    v20 = 9;
  }

  else
  {
    v20 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_45;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 248) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v25 < 2)
    {
LABEL_45:
      v27 = *(a1 + v20);
      if (v27 >= 8)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_45;
  }

LABEL_37:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    switch(v21)
    {
      case 2:
        LODWORD(v21) = *a1;
        break;
      case 3:
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v21) = *a1;
        break;
      default:
        LODWORD(v21) = *a1;
        break;
    }
  }

  return (v21 | v26) + 249;
}

void sub_1DCE6EA70(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(*(*(a4 + 16) - 8) + 64);
  v36 = *(*(sub_1DD0DB04C() - 8) + 64);
  v34 = *(sub_1DD0DC76C() - 8);
  v4 = *(v34 + 80);
  v35 = *(sub_1DD0DB1EC() - 8);
  v31 = *(v35 + 80) | v4;
  v33 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v33 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v32 = *(sub_1DD0DD12C() - 8);
  v9 = *(v32 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v31 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v36 + v11) & ~v11;
  v13 = *(v34 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v35 + 64))
  {
    v13 = *(v35 + 64);
  }

  v14 = *(v6 + 64) + ((*(v33 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v19 <= v38)
  {
    v19 = v38;
  }

  v20 = *(*(*(a4 + 24) - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v19)
  {
    v19 = v20 + 1;
  }

  if (v19 <= 9)
  {
    v19 = 9;
  }

  v21 = v19 + 1;
  v22 = 8 * (v19 + 1);
  if (a3 < 0xF9)
  {
    v25 = 0;
    v23 = a1;
    v24 = a2;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v21 <= 3)
    {
      v28 = ((a3 + ~(-1 << v22) - 248) >> v22) + 1;
      if (HIWORD(v28))
      {
        v25 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v25 = v29;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  if (v24 > 0xF8)
  {
    v26 = v24 - 249;
    if (v21 < 4)
    {
      v27 = (v26 >> v22) + 1;
      if (v19 != -1)
      {
        v30 = v26 & ~(-1 << v22);
        bzero(v23, v21);
        if (v21 == 3)
        {
          *v23 = v30;
          v23[2] = BYTE2(v30);
        }

        else if (v21 == 2)
        {
          *v23 = v30;
        }

        else
        {
          *v23 = v26;
        }
      }
    }

    else
    {
      bzero(v23, v19 + 1);
      *v23 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        v23[v21] = v27;
        break;
      case 2:
        *&v23[v21] = v27;
        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&v23[v21] = v27;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v25)
    {
      case 1:
        v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_48;
      case 2:
        *&v23[v21] = 0;
        goto LABEL_47;
      case 3:
        goto LABEL_59;
      case 4:
        *&v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_48;
      default:
LABEL_47:
        if (v24)
        {
LABEL_48:
          v23[v19] = -v24;
        }

        break;
    }
  }
}

uint64_t sub_1DCE6EF94(unsigned __int8 *a1, uint64_t a2)
{
  v28 = *(*(*(a2 + 16) - 8) + 64);
  v27 = *(*(sub_1DD0DB04C() - 8) + 64);
  v25 = *(sub_1DD0DC76C() - 8);
  v2 = *(v25 + 80);
  v26 = *(sub_1DD0DB1EC() - 8);
  v22 = *(v26 + 80) | v2;
  v24 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v24 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v23 = *(sub_1DD0DD12C() - 8);
  v7 = *(v23 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v22 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v27 + v9) & ~v9;
  v11 = *(v25 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v26 + 64))
  {
    v11 = *(v26 + 64);
  }

  v12 = *(v4 + 64) + ((*(v24 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v17 <= v28)
  {
    v17 = v28;
  }

  v18 = *(*(*(a2 + 24) - 8) + 64);
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v18 + 1 > v17)
  {
    v17 = v18 + 1;
  }

  if (v17 <= 9)
  {
    v17 = 9;
  }

  result = a1[v17];
  if (result >= 7)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *a1;
        goto LABEL_34;
      case 2:
        v21 = *a1;
        goto LABEL_34;
      case 3:
        v21 = *a1 | (a1[2] << 16);
        goto LABEL_34;
      case 4:
        v21 = *a1;
LABEL_34:
        if (v17 < 4)
        {
          result = (v21 | ((result - 7) << (8 * v17))) + 7;
        }

        else
        {
          result = (v21 + 7);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCE6F3A8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(*(*(a3 + 16) - 8) + 64);
  v28 = *(*(sub_1DD0DB04C() - 8) + 64);
  v26 = *(sub_1DD0DC76C() - 8);
  v3 = *(v26 + 80);
  v27 = *(sub_1DD0DB1EC() - 8);
  v23 = *(v27 + 80) | v3;
  v25 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v25 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v24 = *(sub_1DD0DD12C() - 8);
  v8 = *(v24 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v23 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v28 + v10) & ~v10;
  v12 = *(v26 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v27 + 64))
  {
    v12 = *(v27 + 64);
  }

  v13 = *(v5 + 64) + ((*(v25 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v18 <= v29)
  {
    v18 = v29;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v18)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 9)
  {
    v20 = 9;
  }

  else
  {
    v20 = v18;
  }

  if (a2 <= 6)
  {
    a1[v20] = a2;
    return;
  }

  v21 = a2 - 7;
  if (v20 < 4)
  {
    a1[v20] = (v21 >> (8 * v20)) + 7;
    if (!v20)
    {
      return;
    }

    v21 &= ~(-1 << (8 * v20));
  }

  else
  {
    a1[v20] = 7;
  }

  if (v20 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v20;
  }

  bzero(a1, v20);
  switch(v22)
  {
    case 2:
      *a1 = v21;
      break;
    case 3:
      *a1 = v21;
      a1[2] = BYTE2(v21);
      break;
    case 4:
      *a1 = v21;
      break;
    default:
      *a1 = v21;
      break;
  }
}

uint64_t sub_1DCE6F7FC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE659C4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6F888()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65CC8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6F914()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65F24(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6F9A0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE66180(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6FA2C()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_56(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCE663DC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE6FABC()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_56(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCE66634(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE6FB4C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE669A8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6FC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v2);
  return sub_1DCE66C04(a1);
}

uint64_t sub_1DCE6FD18(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v5);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_1DCE65C60(a1, v7, v3, v4);
}

uint64_t sub_1DCE6FDFC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65680(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6FE88()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_56(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCE654C8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE6FF18()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_56(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCE65310(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE6FFA8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65150(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE70034()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE64F90(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE700C0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE64DD0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE7014C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE64C10(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE70204()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE641C4(v4, v5, v0);
}

uint64_t sub_1DCE70294()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE643BC(v3, v4);
}

uint64_t sub_1DCE70318()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE6450C(v4, v5, v0);
}

uint64_t sub_1DCE703A8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE64464(v3, v4);
}

uint64_t sub_1DCE7042C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE64314(v4, v5, v0);
}

uint64_t sub_1DCE704BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE6426C(v4, v5, v0);
}

void sub_1DCE7054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[3] = a3;
  v7[4] = a4;
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_112();
  (*(v4 + 32))();
  sub_1DCB17D04(v7, v6);
  type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v6, v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41B8, &qword_1DD0EAD58);
  swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41C0, &unk_1DD0EAD60);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t PromptForConfirmationFlowReturning.__allocating_init(acceptedTransition:rejectedTransition:cancelledTransition:)(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  PromptForConfirmationFlowReturning.init(acceptedTransition:rejectedTransition:cancelledTransition:)(a1, a2, a3);
  return v6;
}

_OWORD *PromptForConfirmationFlowReturning.init(acceptedTransition:rejectedTransition:cancelledTransition:)(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *a3;
  v3[2] = *a2;
  v3[3] = v4;
  v3[1] = v5;
  return v3;
}

void sub_1DCE7071C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v14 = type metadata accessor for PromptResult(255, AssociatedTypeWitness, v12, v13);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  (*(v19 + 16))(&v29 - v17, a1);
  if (__swift_getEnumTagSinglePayload(v18, 1, v14) == 1)
  {
LABEL_2:
    *a2 = xmmword_1DD0E2F10;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v23 = *v18;
        if (v18[8] == 1)
        {

          goto LABEL_2;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA7A20, &qword_1DD0FA240);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DD0E07C0;
        type metadata accessor for ErrorAction();
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v23;
        v26 = sub_1DCE70AD8(qword_1ECCA8568, type metadata accessor for ErrorAction, &protocol conformance descriptor for ErrorAction);
        *(inited + 32) = v25;
        *(inited + 40) = v26;
        v29 = xmmword_1DD0E2F10;
        type metadata accessor for StaticActionGroup();
        swift_allocObject();
        v27 = StaticActionGroup.init(actions:transition:debugDescription:)(inited, &v29, 0xD000000000000011, 0x80000001DD11F1D0);
        v28 = sub_1DCE70AD8(&qword_1ECCA1FD8, type metadata accessor for StaticActionGroup, &protocol conformance descriptor for StaticActionGroup);
        *a2 = v27;
        *(a2 + 8) = v28;
        break;
      case 2u:
        v21 = v2[2];
        v22 = v2[3];
        goto LABEL_10;
      case 3u:
        goto LABEL_2;
      default:
        (*(v7 + 32))(v11, v18, AssociatedTypeWitness);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 8))(&v29, AssociatedTypeWitness, AssociatedConformanceWitness);
        (*(v7 + 8))(v11, AssociatedTypeWitness);
        if (v29 == 2)
        {
          goto LABEL_2;
        }

        if (v29)
        {
          v21 = v2[4];
          v22 = v2[5];
        }

        else
        {
          v21 = v2[6];
          v22 = v2[7];
        }

LABEL_10:
        *a2 = v21;
        *(a2 + 8) = v22;
        sub_1DCBFAAA8(v21, v22);
        return;
    }
  }
}

uint64_t sub_1DCE70AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PromptForConfirmationFlowReturning.deinit()
{
  sub_1DCB07180(*(v0 + 16), *(v0 + 24));
  sub_1DCB07180(*(v0 + 32), *(v0 + 40));
  sub_1DCB07180(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t PromptForConfirmationFlowReturning.__deallocating_deinit()
{
  PromptForConfirmationFlowReturning.deinit();

  return swift_deallocClassInstance();
}

uint64_t PromptForDisambiguationFlowAsync.__allocating_init<A>(items:strategy:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = swift_allocObject();
  PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
  return v5;
}

uint64_t static DisambiguationResult.chosenItem(_:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  type metadata accessor for DisambiguationResult.DisambiguationResultType(0, v4, v4, v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  OUTLINED_FUNCTION_112();
  (*(v10 + 16))(v9, v1, v0);
  OUTLINED_FUNCTION_90_0();
  swift_storeEnumTagMultiPayload();
  return sub_1DCE70EBC(v9, v0, v3, v11);
}

uint64_t DisambiguationResult.chosenItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *(a1 + 16);
  v7 = OUTLINED_FUNCTION_99_5();
  v11 = type metadata accessor for DisambiguationResult.DisambiguationResultType(v7, v8, v9, v10);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  (*(v13 + 16))(v3, v4, v11);
  OUTLINED_FUNCTION_19();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = OUTLINED_FUNCTION_19();
    v17(v16);
    v18 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_112();
    (*(v19 + 32))(a2, v3, v6);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v18, 1, v6);
}

uint64_t sub_1DCE70EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for DisambiguationResult.DisambiguationResultType(0, a2, a2, a4);
  v7 = *(*(v6 - 8) + 32);

  return v7(a3, a1, v6);
}

uint64_t static DisambiguationResult.paginate(_:)()
{
  OUTLINED_FUNCTION_21();
  type metadata accessor for DisambiguationResult.DisambiguationResultType(0, v2, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  v6 = *(v0 + 8);
  *v1 = *v0;
  *(v1 + 8) = v6;
  swift_storeEnumTagMultiPayload();
  v7 = OUTLINED_FUNCTION_17_1();
  return sub_1DCE70EBC(v7, v8, v10, v9);
}

uint64_t DisambiguationResult.paginationRequest.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = v3;
  v7 = type metadata accessor for DisambiguationResult.DisambiguationResultType(0, *(a1 + 16), *(a1 + 16), a3);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_46_17();
  (*(v9 + 16))(v4, v5, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v13 = *v4;
    v14 = *(v4 + 8);
  }

  else
  {
    result = (*(v9 + 8))(v4, v7);
    v13 = 0;
    v14 = -1;
  }

  *a2 = v13;
  *(a2 + 8) = v14;
  return result;
}

void static DisambiguationResult<A>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50();
  v40 = v1;
  v3 = v2;
  v44 = v4;
  v45 = v5;
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_44_0();
  v39 = v6;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_71_0();
  v42 = v9;
  v10 = OUTLINED_FUNCTION_12();
  v13 = type metadata accessor for DisambiguationResult.DisambiguationResultType(v10, v11, v11, v12);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_10_2();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - v23;
  OUTLINED_FUNCTION_99_5();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v41 = v25;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_46_17();
  v29 = &v0[*(v28 + 48)];
  v30 = *(v15 + 16);
  v30(v0, v44, v13);
  v30(v29, v45, v13);
  OUTLINED_FUNCTION_86();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30(v24, v0, v13);
    OUTLINED_FUNCTION_17_1();
    swift_getEnumCaseMultiPayload();
  }

  else
  {
    v30(v20, v0, v13);
    OUTLINED_FUNCTION_17_1();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v43 + 8))(v20, v3);
    }

    else
    {
      v31 = v43;
      v32 = *(v43 + 32);
      v32(v42, v20, v3);
      v33 = v39;
      v32(v39, v29, v3);
      v34 = v42;
      sub_1DD0DDF7C();
      v35 = *(v31 + 8);
      v35(v33, v3);
      v35(v34, v3);
    }
  }

  v36 = OUTLINED_FUNCTION_86();
  v37(v36);
  OUTLINED_FUNCTION_49();
}

uint64_t PromptForDisambiguationFlowStrategy.makeRepromptOnEmptyParse(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return (*(a5 + 48))(&v9, a2, a3, a4);
}

void PromptForDisambiguationFlowStrategy.makeRepromptOnLowConfidence(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_46_17();
  v8 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_11_6(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD0FD738;
  v9[5] = 0;
  v9[6] = a2;
  v9[7] = a3;
  sub_1DD0DCF8C();
}

void PromptForDisambiguationFlowStrategy.makeFlowCancelledResponse(_:)()
{
  OUTLINED_FUNCTION_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_46_17();
  v5 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_11_6(v5);
  OUTLINED_FUNCTION_41_4();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = &unk_1DD0FD748;
  v6[5] = 0;
  v6[6] = v1;
  v6[7] = v0;
  sub_1DD0DCF8C();
}

void PromptForDisambiguationFlowStrategy.makeErrorResponse(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_46_17();
  v8 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_11_6(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD0FD758;
  v9[5] = 0;
  v9[6] = a2;
  v9[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE71780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v0 + 16) = *v7;
  v10 = *(v7 + 40);
  *(v0 + 24) = *(v7 + 8);
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  OUTLINED_FUNCTION_8();
  v15 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 64) = v12;
  *v12 = v13;
  v12[1] = sub_1DCE7198C;

  return v15(v6, v0 + 16, v4, v2);
}

uint64_t sub_1DCE7198C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}