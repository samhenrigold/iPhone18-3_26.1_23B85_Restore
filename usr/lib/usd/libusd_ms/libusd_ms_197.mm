void *sub_29B147394(void *a1, void *a2)
{
  sub_29AEDDAE0(a1);
  sub_29B14735C(a1, a2);
  sub_29AEDDAE0(a2);
  return a1;
}

uint64_t sub_29B1473DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 472))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B147500(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 59;
  if (a2 > 0xFE)
  {
    result[55] = 0;
    result[54] = 0;
    result[53] = 0;
    result[52] = 0;
    result[51] = 0;
    result[50] = 0;
    result[49] = 0;
    result[48] = 0;
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[57] = 0;
    result[56] = 0;
    result[58] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxPickTaskContextParams(uint64_t a1)
{
  v5 = qword_2A14FC908;
  if (!qword_2A14FC908)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC908);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B147830(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 8))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B147978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxPickTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC910;
  if (!qword_2A14FC910)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC910);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B147BEC(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 65281) >> 16) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = *(a1 + 2);
    }

    else
    {
      v7 = v9 == 2 ? a1[1] : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 16)) + 254;
    }

    else
    {
LABEL_15:
      v4 = *a1;
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_29B147D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 65281) >> 16) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 2) = v4;
      }

      else
      {
        *(result + 2) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 2) = 0;
      }

      else
      {
        *(result + 2) = 0;
      }
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxOitResolveTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC918;
  if (!qword_2A14FC918)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC918);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B148164(uint64_t a1, uint64_t a2)
{
  sub_29AEBC5BC(a1);
  sub_29B14812C(a1, a2);
  sub_29AEBC5BC(a2);
  return a1;
}

uint64_t sub_29B1481A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 336))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 52) & 0xFE) != 0)
      {
        v3 = (*(a1 + 52) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B1482C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 336);
  if (a2 > 0xFE)
  {
    *(result + 248) = 0;
    *(result + 240) = 0;
    *(result + 232) = 0;
    *(result + 224) = 0;
    *(result + 216) = 0;
    *(result + 208) = 0;
    *(result + 200) = 0;
    *(result + 192) = 0;
    *(result + 184) = 0;
    *(result + 176) = 0;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 312) = 0;
    *(result + 304) = 0;
    *(result + 296) = 0;
    *(result + 288) = 0;
    *(result + 280) = 0;
    *(result + 272) = 0;
    *(result + 264) = 0;
    *(result + 256) = 0;
    *(result + 328) = 0;
    *(result + 320) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxRenderTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC920;
  if (!qword_2A14FC920)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC920);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1485B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B1486FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxDrawTargetTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC928;
  if (!qword_2A14FC928)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC928);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B148A04(uint64_t a1, uint64_t *a2)
{
  sub_29AECB604(a1);
  sub_29B1489CC(a1, a2);
  return a1;
}

uint64_t sub_29B148AB0(uint64_t a1, uint64_t a2)
{
  sub_29AECB604(a1);
  sub_29B148A78(a1, a2);
  sub_29AECB604(a2);
  return a1;
}

uint64_t sub_29B148AF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 120))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B148BD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3)
    {
      *(result + 120) = 1;
    }
  }

  else if (a3)
  {
    *(result + 120) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxColorCorrectionTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC930;
  if (!qword_2A14FC930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC930);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxColorChannelTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC938;
  if (!qword_2A14FC938)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC938);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B148F54(_DWORD *a1, const void *a2)
{
  sub_29AEFE3B8(a1);
  sub_29B148F1C(a1, a2);
  return a1;
}

_DWORD *sub_29B148FF8(_DWORD *a1, _DWORD *a2)
{
  sub_29AEFE3B8(a1);
  sub_29B148FC0(a1, a2);
  sub_29AEFE3B8(a2);
  return a1;
}

uint64_t sub_29B149038(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[68])
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*a1 & 0xFE) != 0)
      {
        v3 = (*a1 + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14915C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0xFE)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxColorizeSelectionTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC940;
  if (!qword_2A14FC940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC940);
      return v2;
    }
  }

  return v5;
}

__n128 *sub_29B14954C(__n128 *a1, __n128 *a2)
{
  sub_29B149408(a1);
  sub_29B149514(a1, a2);
  sub_29B149408(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxBoundingBoxTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC948;
  if (!qword_2A14FC948)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC948);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B14969C(_DWORD *a1, _DWORD *a2)
{
  sub_29AEC4154(a1);
  sub_29B149664(a1, a2);
  return a1;
}

_DWORD *sub_29B149740(_DWORD *a1, _DWORD *a2)
{
  sub_29AEC4154(a1);
  sub_29B149708(a1, a2);
  sub_29AEC4154(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxAovInputTaskParams(uint64_t a1)
{
  v5 = qword_2A14FC950;
  if (!qword_2A14FC950)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC950);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStComputeQueue(uint64_t a1)
{
  v5 = qword_2A14FC958;
  if (!qword_2A14FC958)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC958);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBinding.Location(uint64_t a1)
{
  v5 = qword_2A14FC960;
  if (!qword_2A14FC960)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC960);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBinding(uint64_t a1)
{
  v5 = qword_2A14FC968;
  if (!qword_2A14FC968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC968);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBinding.Type(uint64_t a1)
{
  v5 = qword_2A14FC970;
  if (!qword_2A14FC970)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC970);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGpGenerativeProcedural.AsyncState(uint64_t a1)
{
  v5 = qword_2A14FC978;
  if (!qword_2A14FC978)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC978);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGpGenerativeProcedural(uint64_t a1)
{
  v5 = qword_2A14FC980;
  if (!qword_2A14FC980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC980);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderBuffer.DirtyBits(uint64_t a1)
{
  v5 = qword_2A14FC988;
  if (!qword_2A14FC988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC988);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderBuffer(uint64_t a1)
{
  v5 = qword_2A14FC990;
  if (!qword_2A14FC990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC990);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B149FA4(_DWORD *a1, _DWORD *a2)
{
  sub_29AF851FC(a1);
  sub_29B149F6C(a1, a2);
  return a1;
}

_DWORD *sub_29B14A048(_DWORD *a1, _DWORD *a2)
{
  sub_29AF851FC(a1);
  sub_29B14A010(a1, a2);
  sub_29AF851FC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPrimOriginSchema.OriginPath(uint64_t a1)
{
  v5 = qword_2A14FC998;
  if (!qword_2A14FC998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC998);
      return v2;
    }
  }

  return v5;
}

void *sub_29B14A1C8(void *a1, void *a2)
{
  sub_29B14A138(a1);
  sub_29B14A190(a1, a2);
  return a1;
}

void *sub_29B14A26C(void *a1, void *a2)
{
  sub_29B14A138(a1);
  sub_29B14A234(a1, a2);
  sub_29B14A138(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPrimOriginSchema(uint64_t a1)
{
  v5 = qword_2A14FC9A0;
  if (!qword_2A14FC9A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9A0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdLight.DirtyBits(uint64_t a1)
{
  v5 = qword_2A14FC9A8;
  if (!qword_2A14FC9A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9A8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdLight(uint64_t a1)
{
  v5 = qword_2A14FC9B0;
  if (!qword_2A14FC9B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9B0);
      return v2;
    }
  }

  return v5;
}

void *sub_29B14A6C4(void *a1, void *a2)
{
  sub_29ABF2FA4(a1);
  sub_29B14A68C(a1, a2);
  sub_29ABF2FA4(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNode2(uint64_t a1)
{
  v5 = qword_2A14FC9B8;
  if (!qword_2A14FC9B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9B8);
      return v2;
    }
  }

  return v5;
}

void *sub_29B14A8C8(void *a1, void *a2)
{
  sub_29ABE8884(a1);
  sub_29B14A890(a1, a2);
  sub_29ABE8884(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNetworkMap(uint64_t a1)
{
  v5 = qword_2A14FC9C0;
  if (!qword_2A14FC9C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9C0);
      return v2;
    }
  }

  return v5;
}

void **sub_29B14AACC(void **a1, void **a2)
{
  sub_29AF00CFC(a1);
  sub_29B14AA94(a1, a2);
  sub_29AF00CFC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNetwork(uint64_t a1)
{
  v5 = qword_2A14FC9C8;
  if (!qword_2A14FC9C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9C8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdField.DirtyBits(uint64_t a1)
{
  v5 = qword_2A14FC9D0;
  if (!qword_2A14FC9D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9D0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdField(uint64_t a1)
{
  v5 = qword_2A14FC9D8;
  if (!qword_2A14FC9D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9D8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCoordSys.DirtyBits(uint64_t a1)
{
  v5 = qword_2A14FC9E0;
  if (!qword_2A14FC9E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9E0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCoordSys(uint64_t a1)
{
  v5 = qword_2A14FC9E8;
  if (!qword_2A14FC9E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9E8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCollectionExpressionEvaluator.MatchKind(uint64_t a1)
{
  v5 = qword_2A14FC9F0;
  if (!qword_2A14FC9F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9F0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCollectionExpressionEvaluator(uint64_t a1)
{
  v5 = qword_2A14FC9F8;
  if (!qword_2A14FC9F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9F8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCamera.Projection(uint64_t a1)
{
  v5 = qword_2A14FCA00;
  if (!qword_2A14FCA00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA00);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B14B4D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 320))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 208) & 0xFE) != 0)
      {
        v3 = (*(a1 + 208) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B14B5F8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 40;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 208) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCamera(uint64_t a1)
{
  v5 = qword_2A14FCA08;
  if (!qword_2A14FCA08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCamera.DirtyBits(uint64_t a1)
{
  v5 = qword_2A14FCA10;
  if (!qword_2A14FCA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA10);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B14B9F4(_DWORD *a1, uint64_t **a2)
{
  sub_29ABE62AC(a1);
  sub_29B14B9BC(a1, a2);
  return a1;
}

uint64_t sub_29B14BAA8(uint64_t a1, uint64_t a2)
{
  sub_29ABE62AC(a1);
  sub_29B14BA70(a1, a2);
  sub_29ABE62AC(a2);
  return a1;
}

uint64_t sub_29B14BAF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 456))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B14BBD0(void *result, int a2, int a3)
{
  v3 = result + 57;
  if (a2)
  {
    result[55] = 0;
    result[54] = 0;
    result[53] = 0;
    result[52] = 0;
    result[51] = 0;
    result[50] = 0;
    result[49] = 0;
    result[48] = 0;
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[56] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDataSourceLocatorSet(uint64_t a1)
{
  v5 = qword_2A14FCA18;
  if (!qword_2A14FCA18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA18);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *sub_29B14BF28(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a1);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *sub_29B14BFA4(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a1);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a2);
  return a1;
}

uint64_t sub_29B14BFEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 104))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 40) & 0xFE) != 0)
      {
        v3 = (*(a1 + 40) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14C110(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    if (a3 > 0xFE)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRprimCollection(uint64_t a1)
{
  v5 = qword_2A14FCA20;
  if (!qword_2A14FCA20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGeomSubset.Type(uint64_t a1)
{
  v5 = qword_2A14FCA28;
  if (!qword_2A14FCA28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGeomSubset(uint64_t a1)
{
  v5 = qword_2A14FCA30;
  if (!qword_2A14FCA30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdTopology(uint64_t a1)
{
  v5 = qword_2A14FCA38;
  if (!qword_2A14FCA38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA38);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *sub_29B14C870(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(a1);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *sub_29B14C8EC(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(a1);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a1, a2);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(a2);
  return a1;
}

uint64_t sub_29B14C934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 200))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B14CA14(void *result, int a2, int a3)
{
  v3 = result + 25;
  if (a2)
  {
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[24] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBasisCurvesTopology(uint64_t a1)
{
  v5 = qword_2A14FCA40;
  if (!qword_2A14FCA40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA40);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBufferArrayUsageHintBits(uint64_t a1)
{
  v5 = qword_2A14FCA48;
  if (!qword_2A14FCA48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA48);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDepthPriority(uint64_t a1)
{
  v5 = qword_2A14FCA50;
  if (!qword_2A14FCA50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdInterpolation(uint64_t a1)
{
  v5 = qword_2A14FCA58;
  if (!qword_2A14FCA58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA58);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPointsGeomStyle(uint64_t a1)
{
  v5 = qword_2A14FCA60;
  if (!qword_2A14FCA60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA60);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBasisCurvesGeomStyle(uint64_t a1)
{
  v5 = qword_2A14FCA68;
  if (!qword_2A14FCA68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA68);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMeshGeomStyle(uint64_t a1)
{
  v5 = qword_2A14FCA70;
  if (!qword_2A14FCA70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA70);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPolygonMode(uint64_t a1)
{
  v5 = qword_2A14FCA78;
  if (!qword_2A14FCA78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA78);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCullStyle(uint64_t a1)
{
  v5 = qword_2A14FCA80;
  if (!qword_2A14FCA80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA80);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBlendFactor(uint64_t a1)
{
  v5 = qword_2A14FCA88;
  if (!qword_2A14FCA88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA88);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBlendOp(uint64_t a1)
{
  v5 = qword_2A14FCA90;
  if (!qword_2A14FCA90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA90);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStencilOp(uint64_t a1)
{
  v5 = qword_2A14FCA98;
  if (!qword_2A14FCA98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCompareFunction(uint64_t a1)
{
  v5 = qword_2A14FCAA0;
  if (!qword_2A14FCAA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAA0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdFormat(uint64_t a1)
{
  v5 = qword_2A14FCAA8;
  if (!qword_2A14FCAA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAA8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBorderColor(uint64_t a1)
{
  v5 = qword_2A14FCAB0;
  if (!qword_2A14FCAB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAB0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMagFilter(uint64_t a1)
{
  v5 = qword_2A14FCAB8;
  if (!qword_2A14FCAB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMinFilter(uint64_t a1)
{
  v5 = qword_2A14FCAC0;
  if (!qword_2A14FCAC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdWrap(uint64_t a1)
{
  v5 = qword_2A14FCAC8;
  if (!qword_2A14FCAC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding(uint64_t a1)
{
  v5 = qword_2A14FCAD0;
  if (!qword_2A14FCAD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAD0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMetalArgumentOffset(uint64_t a1)
{
  v5 = qword_2A14FCAD8;
  if (!qword_2A14FCAD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMetalArgumentIndex(uint64_t a1)
{
  v5 = qword_2A14FCAE0;
  if (!qword_2A14FCAE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAE0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationState.TessFactorMode(uint64_t a1)
{
  v5 = qword_2A14FCAE8;
  if (!qword_2A14FCAE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAE8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationState(uint64_t a1)
{
  v5 = qword_2A14FCAF0;
  if (!qword_2A14FCAF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAF0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationState.PatchType(uint64_t a1)
{
  v5 = qword_2A14FCAF8;
  if (!qword_2A14FCAF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAF8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B14DCF4(uint64_t a1, uint64_t a2)
{
  sub_29AB905FC(a1);
  sub_29B14DCBC(a1, a2);
  sub_29AB905FC(a2);
  return a1;
}

uint64_t sub_29B14DD34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 184))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 60) & 0xFE) != 0)
      {
        v3 = (*(a1 + 60) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14DE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 184);
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 176) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 60) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiGraphicsCmdsDesc(uint64_t a1)
{
  v5 = qword_2A14FCB00;
  if (!qword_2A14FCB00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB00);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc.OutPrimitiveType(uint64_t a1)
{
  v5 = qword_2A14FCB08;
  if (!qword_2A14FCB08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB08);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B14E240(uint64_t a1, uint64_t a2)
{
  sub_29B14E1A8(a1);
  sub_29B14E208(a1, a2);
  return a1;
}

void *sub_29B14E2EC(void *a1, void *a2)
{
  sub_29B14E1A8(a1);
  sub_29B14E2B4(a1, a2);
  sub_29B14E1A8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc(uint64_t a1)
{
  v5 = qword_2A14FCB10;
  if (!qword_2A14FCB10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB10);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc.InPrimitiveType(uint64_t a1)
{
  v5 = qword_2A14FCB18;
  if (!qword_2A14FCB18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.Ordering(uint64_t a1)
{
  v5 = qword_2A14FCB20;
  if (!qword_2A14FCB20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB20);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B14E574(uint64_t a1, uint64_t a2)
{
  sub_29A4B291C(a1);
  sub_29B14E53C(a1, a2);
  return a1;
}

uint64_t sub_29B14E620(uint64_t a1, uint64_t a2)
{
  sub_29A4B291C(a1);
  sub_29B14E5E8(a1, a2);
  sub_29A4B291C(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc(uint64_t a1)
{
  v5 = qword_2A14FCB28;
  if (!qword_2A14FCB28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.Spacing(uint64_t a1)
{
  v5 = qword_2A14FCB30;
  if (!qword_2A14FCB30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.PatchType(uint64_t a1)
{
  v5 = qword_2A14FCB38;
  if (!qword_2A14FCB38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB38);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiFormat(uint64_t a1)
{
  v5 = qword_2A14FCB40;
  if (!qword_2A14FCB40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB40);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputeDispatch(uint64_t a1)
{
  v5 = qword_2A14FCB48;
  if (!qword_2A14FCB48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB48);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderTextureType(uint64_t a1)
{
  v5 = qword_2A14FCB50;
  if (!qword_2A14FCB50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiStorageType(uint64_t a1)
{
  v5 = qword_2A14FCB58;
  if (!qword_2A14FCB58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB58);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplingType(uint64_t a1)
{
  v5 = qword_2A14FCB60;
  if (!qword_2A14FCB60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB60);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiInterpolationType(uint64_t a1)
{
  v5 = qword_2A14FCB68;
  if (!qword_2A14FCB68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB68);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBindingType(uint64_t a1)
{
  v5 = qword_2A14FCB70;
  if (!qword_2A14FCB70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB70);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMemoryBarrierBits(uint64_t a1)
{
  v5 = qword_2A14FCB78;
  if (!qword_2A14FCB78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB78);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSubmitWaitType(uint64_t a1)
{
  v5 = qword_2A14FCB80;
  if (!qword_2A14FCB80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB80);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiVertexBufferStepFunction(uint64_t a1)
{
  v5 = qword_2A14FCB88;
  if (!qword_2A14FCB88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB88);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiPrimitiveType(uint64_t a1)
{
  v5 = qword_2A14FCB90;
  if (!qword_2A14FCB90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB90);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComponentSwizzle(uint64_t a1)
{
  v5 = qword_2A14FCB98;
  if (!qword_2A14FCB98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiStencilOp(uint64_t a1)
{
  v5 = qword_2A14FCBA0;
  if (!qword_2A14FCBA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBA0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiCompareFunction(uint64_t a1)
{
  v5 = qword_2A14FCBA8;
  if (!qword_2A14FCBA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBA8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiColorMaskBits(uint64_t a1)
{
  v5 = qword_2A14FCBB0;
  if (!qword_2A14FCBB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBB0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBlendFactor(uint64_t a1)
{
  v5 = qword_2A14FCBB8;
  if (!qword_2A14FCBB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBlendOp(uint64_t a1)
{
  v5 = qword_2A14FCBC0;
  if (!qword_2A14FCBC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiWinding(uint64_t a1)
{
  v5 = qword_2A14FCBC8;
  if (!qword_2A14FCBC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiCullMode(uint64_t a1)
{
  v5 = qword_2A14FCBD0;
  if (!qword_2A14FCBD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBD0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiPolygonMode(uint64_t a1)
{
  v5 = qword_2A14FCBD8;
  if (!qword_2A14FCBD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBindResourceType(uint64_t a1)
{
  v5 = qword_2A14FCBE0;
  if (!qword_2A14FCBE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBE0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderStageBits(uint64_t a1)
{
  v5 = qword_2A14FCBE8;
  if (!qword_2A14FCBE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBE8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBufferUsageBits(uint64_t a1)
{
  v5 = qword_2A14FCBF0;
  if (!qword_2A14FCBF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBF0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiAttachmentStoreOp(uint64_t a1)
{
  v5 = qword_2A14FCBF8;
  if (!qword_2A14FCBF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBF8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiAttachmentLoadOp(uint64_t a1)
{
  v5 = qword_2A14FCC00;
  if (!qword_2A14FCC00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC00);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSampleCount(uint64_t a1)
{
  v5 = qword_2A14FCC08;
  if (!qword_2A14FCC08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBorderColor(uint64_t a1)
{
  v5 = qword_2A14FCC10;
  if (!qword_2A14FCC10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC10);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMipFilter(uint64_t a1)
{
  v5 = qword_2A14FCC18;
  if (!qword_2A14FCC18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplerFilter(uint64_t a1)
{
  v5 = qword_2A14FCC20;
  if (!qword_2A14FCC20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplerAddressMode(uint64_t a1)
{
  v5 = qword_2A14FCC28;
  if (!qword_2A14FCC28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureUsageBits(uint64_t a1)
{
  v5 = qword_2A14FCC30;
  if (!qword_2A14FCC30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureType(uint64_t a1)
{
  v5 = qword_2A14FCC38;
  if (!qword_2A14FCC38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC38);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiDeviceCapabilitiesBits(uint64_t a1)
{
  v5 = qword_2A14FCC40;
  if (!qword_2A14FCC40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC40);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B14FBF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 80))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 36) & 0xFE) != 0)
      {
        v3 = (*(a1 + 36) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14FD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 36) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc(uint64_t a1)
{
  v5 = qword_2A14FCC48;
  if (!qword_2A14FCC48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC48);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1500E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 408))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 96) & 0xFE) != 0)
      {
        v3 = (*(a1 + 96) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B15020C(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 51;
  if (a2 > 0xFE)
  {
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[49] = 0;
    result[48] = 0;
    result[50] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GlfSimpleLight(uint64_t a1)
{
  v5 = qword_2A14FCC50;
  if (!qword_2A14FCC50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdMeshTopologyValidation.Code(uint64_t a1)
{
  v5 = qword_2A14FCC58;
  if (!qword_2A14FCC58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC58);
      return v2;
    }
  }

  return v5;
}

void ***sub_29B150664(void ***a1, void *a2)
{
  sub_29B1505CC(a1);
  sub_29B15062C(a1, a2);
  return a1;
}

void ***sub_29B150710(void ***a1, uint64_t *a2)
{
  sub_29B1505CC(a1);
  sub_29B1506D8(a1, a2);
  sub_29B1505CC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdMeshTopologyValidation(uint64_t a1)
{
  v5 = qword_2A14FCC60;
  if (!qword_2A14FCC60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC60);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B150994(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 232))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B150A74(void *result, int a2, int a3)
{
  v3 = result + 29;
  if (a2)
  {
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[28] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdSubdivTags(uint64_t a1)
{
  v5 = qword_2A14FCC68;
  if (!qword_2A14FCC68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC68);
      return v2;
    }
  }

  return v5;
}

void *sub_29B150D94(void *a1, uint64_t *a2)
{
  sub_29AD31450(a1);
  sub_29B150D5C(a1, a2);
  return a1;
}

uint64_t sub_29B150E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 376))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B150F70(void *result, int a2, int a3)
{
  v3 = result + 47;
  if (a2)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[46] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdMeshTopology(uint64_t a1)
{
  v5 = qword_2A14FCC70;
  if (!qword_2A14FCC70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC70);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy(uint64_t a1)
{
  v5 = qword_2A14FCC78;
  if (!qword_2A14FCC78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC78);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.TextureType(uint64_t a1)
{
  v5 = qword_2A14FCC80;
  if (!qword_2A14FCC80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC80);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *sub_29B1513E0(pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *a1)
{
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::~HioGlslfxResourceLayout(a1);
  sub_29B1513C8();
  return a1;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *sub_29B15144C(pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *a1, pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *a2)
{
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::~HioGlslfxResourceLayout(a1);
  sub_29B1513C8();
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::~HioGlslfxResourceLayout(a2);
  return a1;
}

uint64_t sub_29B15148C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = ((a2 + 255) >> 8) + 1;
    v7 = 1;
    if (v6 >= 0x100)
    {
      if (v6 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v7 = v2;
    }

    if (v7 == 1)
    {
      v5 = a1[1];
    }

    else if (v7 == 2)
    {
      v5 = *(a1 + 1);
    }

    else
    {
      v5 = *(a1 + 1);
    }

    if (v5)
    {
      v4 = *a1 | ((v5 - 1) << 8);
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_29B1515E4(_BYTE *result, int a2, int a3)
{
  v7 = 0;
  if (a3)
  {
    v5 = ((a3 + 255) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2)
  {
    v4 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      result[1] = 0;
    }

    else if (v7 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout(uint64_t a1)
{
  v5 = qword_2A14FCC88;
  if (!qword_2A14FCC88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC88);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.Kind(uint64_t a1)
{
  v5 = qword_2A14FCC90;
  if (!qword_2A14FCC90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC90);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.InOut(uint64_t a1)
{
  v5 = qword_2A14FCC98;
  if (!qword_2A14FCC98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxConfig.Role(uint64_t a1)
{
  v5 = qword_2A14FCCA0;
  if (!qword_2A14FCCA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCA0);
      return v2;
    }
  }

  return v5;
}

void *sub_29B151B88(void *a1, void *a2)
{
  sub_29B151A44(a1);
  sub_29B151B50(a1, a2);
  sub_29B151A44(a2);
  return a1;
}

uint64_t sub_29B151BC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 112))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B151CA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3)
    {
      *(result + 112) = 1;
    }
  }

  else if (a3)
  {
    *(result + 112) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxConfig(uint64_t a1)
{
  v5 = qword_2A14FCCA8;
  if (!qword_2A14FCCA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCA8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioType(uint64_t a1)
{
  v5 = qword_2A14FCCB0;
  if (!qword_2A14FCCB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCB0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioAddressMode(uint64_t a1)
{
  v5 = qword_2A14FCCB8;
  if (!qword_2A14FCCB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioAddressDimension(uint64_t a1)
{
  v5 = qword_2A14FCCC0;
  if (!qword_2A14FCCC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioFormat(uint64_t a1)
{
  v5 = qword_2A14FCCC8;
  if (!qword_2A14FCCC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchNSGLContextState.NullState(uint64_t a1)
{
  v5 = qword_2A14FCCD0;
  if (!qword_2A14FCCD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCD0);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15227C(void *a1, void *a2)
{
  sub_29B0C51A0(a1);
  sub_29B152244(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchNSGLContextState(uint64_t a1)
{
  v5 = qword_2A14FCCD8;
  if (!qword_2A14FCCD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow.ModifierKeys(uint64_t a1)
{
  v5 = qword_2A14FCCE0;
  if (!qword_2A14FCCE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCE0);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *sub_29B15246C(pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(a1);
  sub_29B152434(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *sub_29B1524E8(pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *a1, pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *a2)
{
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(a1);
  sub_29B152434(a1, a2);
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow(uint64_t a1)
{
  v5 = qword_2A14FCCE8;
  if (!qword_2A14FCCE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCE8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow.Buttons(uint64_t a1)
{
  v5 = qword_2A14FCCF0;
  if (!qword_2A14FCCF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCF0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsTimeCodeRange(uint64_t a1)
{
  v5 = qword_2A14FCCF8;
  if (!qword_2A14FCCF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCF8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsStitchValueStatus(uint64_t a1)
{
  v5 = qword_2A14FCD00;
  if (!qword_2A14FCD00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD00);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsRegisteredVariantSet.SelectionExportPolicy(uint64_t a1)
{
  v5 = qword_2A14FCD08;
  if (!qword_2A14FCD08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD08);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B1528A8(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B152870(a1, a2);
  return a1;
}

std::string *sub_29B152924(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B152870(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsRegisteredVariantSet(uint64_t a1)
{
  v5 = qword_2A14FCD10;
  if (!qword_2A14FCD10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD10);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelBakeSkinningParms.DeformationFlags(uint64_t a1)
{
  v5 = qword_2A14FCD18;
  if (!qword_2A14FCD18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD18);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B152C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 112))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 4) & 0xFE) != 0)
      {
        v3 = (*(a1 + 4) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B152D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0xFE)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelBakeSkinningParms(uint64_t a1)
{
  v5 = qword_2A14FCD20;
  if (!qword_2A14FCD20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxListAPI.ComputeMode(uint64_t a1)
{
  v5 = qword_2A14FCD28;
  if (!qword_2A14FCD28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxListAPI(uint64_t a1)
{
  v5 = qword_2A14FCD30;
  if (!qword_2A14FCD30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxLightListAPI.ComputeMode(uint64_t a1)
{
  v5 = qword_2A14FCD38;
  if (!qword_2A14FCD38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD38);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxLightListAPI(uint64_t a1)
{
  v5 = qword_2A14FCD40;
  if (!qword_2A14FCD40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD40);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPIBehavior.ConnectableNodeTypes(uint64_t a1)
{
  v5 = qword_2A14FCD48;
  if (!qword_2A14FCD48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD48);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *sub_29B1535D4(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior::~UsdShadeConnectableAPIBehavior(a1);
  sub_29B15359C(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *sub_29B153640(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *a1, pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior::~UsdShadeConnectableAPIBehavior(a1);
  sub_29B15359C(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior::~UsdShadeConnectableAPIBehavior(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPIBehavior(uint64_t a1)
{
  v5 = qword_2A14FCD50;
  if (!qword_2A14FCD50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectionModification(uint64_t a1)
{
  v5 = qword_2A14FCD58;
  if (!qword_2A14FCD58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD58);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeAttributeType(uint64_t a1)
{
  v5 = qword_2A14FCD60;
  if (!qword_2A14FCD60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD60);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI.OpFlags(uint64_t a1)
{
  v5 = qword_2A14FCD68;
  if (!qword_2A14FCD68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD68);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI(uint64_t a1)
{
  v5 = qword_2A14FCD70;
  if (!qword_2A14FCD70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD70);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI.RotationOrder(uint64_t a1)
{
  v5 = qword_2A14FCD78;
  if (!qword_2A14FCD78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD78);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer.MaskApplication(uint64_t a1)
{
  v5 = qword_2A14FCD80;
  if (!qword_2A14FCD80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD80);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *sub_29B153C6C(pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(a1);
  sub_29B153C34(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *sub_29B153CE8(pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a1, pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(a1);
  sub_29B153C34(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer(uint64_t a1)
{
  v5 = qword_2A14FCD88;
  if (!qword_2A14FCD88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD88);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer.ProtoXformInclusion(uint64_t a1)
{
  v5 = qword_2A14FCD90;
  if (!qword_2A14FCD90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD90);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp.Precision(uint64_t a1)
{
  v5 = qword_2A14FCD98;
  if (!qword_2A14FCD98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp.Type(uint64_t a1)
{
  v5 = qword_2A14FCDA0;
  if (!qword_2A14FCDA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDA0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageCacheContextBlockType(uint64_t a1)
{
  v5 = qword_2A14FCDA8;
  if (!qword_2A14FCDA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDA8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.HasSpecsFilter(uint64_t a1)
{
  v5 = qword_2A14FCDB0;
  if (!qword_2A14FCDB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDB0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B154234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 88))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B154314(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    if (a3)
    {
      *(result + 88) = 1;
    }
  }

  else if (a3)
  {
    *(result + 88) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery(uint64_t a1)
{
  v5 = qword_2A14FCDB8;
  if (!qword_2A14FCDB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.ArcIntroducedFilter(uint64_t a1)
{
  v5 = qword_2A14FCDC0;
  if (!qword_2A14FCDC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.DependencyTypeFilter(uint64_t a1)
{
  v5 = qword_2A14FCDC8;
  if (!qword_2A14FCDC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.ArcTypeFilter(uint64_t a1)
{
  v5 = qword_2A14FCDD0;
  if (!qword_2A14FCDD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDD0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdModelAPI.KindValidation(uint64_t a1)
{
  v5 = qword_2A14FCDD8;
  if (!qword_2A14FCDD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdModelAPI(uint64_t a1)
{
  v5 = qword_2A14FCDE0;
  if (!qword_2A14FCDE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDE0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdResolveInfoSource(uint64_t a1)
{
  v5 = qword_2A14FCDE8;
  if (!qword_2A14FCDE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDE8);
      return v2;
    }
  }

  return v5;
}

void **sub_29B154B40(void **a1, void **a2)
{
  sub_29A631A1C(a1);
  sub_29B1310A0(a1, a2);
  sub_29A631A1C(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStagePopulationMask(uint64_t a1)
{
  v5 = qword_2A14FCDF0;
  if (!qword_2A14FCDF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDF0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules.Rule(uint64_t a1)
{
  v5 = qword_2A14FCDF8;
  if (!qword_2A14FCDF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDF8);
      return v2;
    }
  }

  return v5;
}

void **sub_29B154DD4(void **a1, void **a2)
{
  sub_29B154CC8(a1);
  sub_29B1310A0(a1, a2);
  sub_29B154CC8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules(uint64_t a1)
{
  v5 = qword_2A14FCE00;
  if (!qword_2A14FCE00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE00);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdInterpolationType(uint64_t a1)
{
  v5 = qword_2A14FCE08;
  if (!qword_2A14FCE08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStage.InitialLoadSet(uint64_t a1)
{
  v5 = qword_2A14FCE10;
  if (!qword_2A14FCE10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE10);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdObjType(uint64_t a1)
{
  v5 = qword_2A14FCE18;
  if (!qword_2A14FCE18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSchemaKind(uint64_t a1)
{
  v5 = qword_2A14FCE20;
  if (!qword_2A14FCE20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLoadPolicy(uint64_t a1)
{
  v5 = qword_2A14FCE28;
  if (!qword_2A14FCE28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdListPosition(uint64_t a1)
{
  v5 = qword_2A14FCE30;
  if (!qword_2A14FCE30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.EditType(uint64_t a1)
{
  v5 = qword_2A14FCE38;
  if (!qword_2A14FCE38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE38);
      return v2;
    }
  }

  return v5;
}

void **sub_29B1553C8(void **a1, void **a2)
{
  sub_29A481124(a1);
  sub_29B14AA94(a1, a2);
  sub_29A481124(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits(uint64_t a1)
{
  v5 = qword_2A14FCE40;
  if (!qword_2A14FCE40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE40);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpCacheChanges.TargetType(uint64_t a1)
{
  v5 = qword_2A14FCE48;
  if (!qword_2A14FCE48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE48);
      return v2;
    }
  }

  return v5;
}

void **sub_29B155694(void **a1, void **a2)
{
  sub_29B155550(a1);
  sub_29B15565C(a1, a2);
  sub_29B155550(a2);
  return a1;
}

uint64_t sub_29B1556D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 280))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 120) & 0xFE) != 0)
      {
        v3 = (*(a1 + 120) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B1557F8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 35;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[33] = 0;
    result[32] = 0;
    result[34] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpCacheChanges(uint64_t a1)
{
  v5 = qword_2A14FCE50;
  if (!qword_2A14FCE50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpErrorInvalidConflictingRelocation.ConflictReason(uint64_t a1)
{
  v5 = qword_2A14FCE58;
  if (!qword_2A14FCE58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE58);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B155CA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 120)))
      {
        v4 = *(a1 + 120);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *sub_29B155DD4(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 24;
  if (a2 > 0x7FFFFFFE)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[15] = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpErrorInvalidConflictingRelocation(uint64_t a1)
{
  v5 = qword_2A14FCE60;
  if (!qword_2A14FCE60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE60);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpErrorType(uint64_t a1)
{
  v5 = qword_2A14FCE68;
  if (!qword_2A14FCE68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE68);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpDependencyType(uint64_t a1)
{
  v5 = qword_2A14FCE70;
  if (!qword_2A14FCE70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE70);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpRangeType(uint64_t a1)
{
  v5 = qword_2A14FCE78;
  if (!qword_2A14FCE78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE78);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpArcType(uint64_t a1)
{
  v5 = qword_2A14FCE80;
  if (!qword_2A14FCE80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE80);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.NdrVersionFilter(uint64_t a1)
{
  v5 = qword_2A14FCE88;
  if (!qword_2A14FCE88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE88);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateFunctionResult.Constancy(uint64_t a1)
{
  v5 = qword_2A14FCE90;
  if (!qword_2A14FCE90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE90);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B156414(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && a1[8])
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B15655C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateFunctionResult(uint64_t a1)
{
  v5 = qword_2A14FCE98;
  if (!qword_2A14FCE98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfNamespaceEditDetail.Result(uint64_t a1)
{
  v5 = qword_2A14FCEA0;
  if (!qword_2A14FCEA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEA0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1568DC(uint64_t a1, uint64_t a2)
{
  sub_29A386F34(a1);
  sub_29B1568A4(a1, a2);
  return a1;
}

_DWORD *sub_29B156988(_DWORD *a1, _DWORD *a2)
{
  sub_29A386F34(a1);
  sub_29B156950(a1, a2);
  sub_29A386F34(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfNamespaceEditDetail(uint64_t a1)
{
  v5 = qword_2A14FCEA8;
  if (!qword_2A14FCEA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEA8);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B156AD8(_DWORD *a1, _DWORD *a2)
{
  sub_29A38681C(a1);
  sub_29B156AA0(a1, a2);
  return a1;
}

_DWORD *sub_29B156B7C(_DWORD *a1, _DWORD *a2)
{
  sub_29A38681C(a1);
  sub_29B156B44(a1, a2);
  sub_29A38681C(a2);
  return a1;
}

uint64_t sub_29B156BBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 20))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B156C9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 20) = 1;
    }
  }

  else if (a3)
  {
    *(result + 20) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfNamespaceEdit(uint64_t a1)
{
  v5 = qword_2A14FCEB0;
  if (!qword_2A14FCEB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEB0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfMapEditProxy_pxrInternal__aapl__pxrReserved__.VtDictionary_ pxrInternal__aapl__pxrReserved__.SdfIdentityMapEditProxyValuePolicy_pxrInternal__aapl__pxrReserved__.VtDictionary__(uint64_t a1)
{
  v5 = qword_2A14FCEB8;
  if (!qword_2A14FCEB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueTypeName(uint64_t a1)
{
  v5 = qword_2A14FCEC0;
  if (!qword_2A14FCEC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.Op(uint64_t a1)
{
  v5 = qword_2A14FCEC8;
  if (!qword_2A14FCEC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall.Kind(uint64_t a1)
{
  v5 = qword_2A14FCED0;
  if (!qword_2A14FCED0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCED0);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B157274(_DWORD *a1, _DWORD *a2)
{
  sub_29A39639C(a1);
  sub_29B15723C(a1, a2);
  sub_29A39639C(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall(uint64_t a1)
{
  v5 = qword_2A14FCED8;
  if (!qword_2A14FCED8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCED8);
      return v2;
    }
  }

  return v5;
}

void *sub_29B157478(void *a1, uint64_t a2)
{
  sub_29A3963E8(a1);
  sub_29B157440(a1, a2);
  sub_29A3963E8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression(uint64_t a1)
{
  v5 = qword_2A14FCEE0;
  if (!qword_2A14FCEE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEE0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.Op(uint64_t a1)
{
  v5 = qword_2A14FCEE8;
  if (!qword_2A14FCEE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEE8);
      return v2;
    }
  }

  return v5;
}

void *sub_29B157714(void *a1, uint64_t a2)
{
  sub_29A2174F4(a1);
  sub_29B1576DC(a1, a2);
  sub_29A2174F4(a2);
  return a1;
}

uint64_t sub_29B157754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 96))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B157834(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3)
    {
      *(result + 96) = 1;
    }
  }

  else if (a3)
  {
    *(result + 96) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression(uint64_t a1)
{
  v5 = qword_2A14FCEF0;
  if (!qword_2A14FCEF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEF0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfOpaqueValue(uint64_t a1)
{
  v5 = qword_2A14FCEF8;
  if (!qword_2A14FCEF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEF8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfListOpType(uint64_t a1)
{
  v5 = qword_2A14FCF00;
  if (!qword_2A14FCF00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF00);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B157C08(std::string *a1, const std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B130E58(a1, a2);
  return a1;
}

std::string *sub_29B157CB4(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B157C7C(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue(uint64_t a1)
{
  v5 = qword_2A14FCF08;
  if (!qword_2A14FCF08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueBlock(uint64_t a1)
{
  v5 = qword_2A14FCF10;
  if (!qword_2A14FCF10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF10);
      return v2;
    }
  }

  return v5;
}

void *sub_29B157ED4(void *a1, void *a2)
{
  sub_29B157E3C(a1);
  sub_29B157E9C(a1, a2);
  return a1;
}

void *sub_29B157F80(void *a1, void *a2)
{
  sub_29B157E3C(a1);
  sub_29B157F48(a1, a2);
  sub_29B157E3C(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue(uint64_t a1)
{
  v5 = qword_2A14FCF18;
  if (!qword_2A14FCF18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAuthoringError(uint64_t a1)
{
  v5 = qword_2A14FCF20;
  if (!qword_2A14FCF20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariability(uint64_t a1)
{
  v5 = qword_2A14FCF28;
  if (!qword_2A14FCF28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPermission(uint64_t a1)
{
  v5 = qword_2A14FCF30;
  if (!qword_2A14FCF30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSpecifier(uint64_t a1)
{
  v5 = qword_2A14FCF38;
  if (!qword_2A14FCF38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF38);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSpecType(uint64_t a1)
{
  v5 = qword_2A14FCF40;
  if (!qword_2A14FCF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF40);
      return v2;
    }
  }

  return v5;
}

void *sub_29B158380(void *a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  sub_29B0C51A0(a1);
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a1, a2);
  return a1;
}

void *sub_29B1583FC(void *a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  sub_29B0C51A0(a1);
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TsSpline(uint64_t a1)
{
  v5 = qword_2A14FCF48;
  if (!qword_2A14FCF48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF48);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.JsValue.Type(uint64_t a1)
{
  v5 = qword_2A14FCF50;
  if (!qword_2A14FCF50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF50);
      return v2;
    }
  }

  return v5;
}

void *sub_29B1585A8(void *a1, void *a2)
{
  sub_29B0C51A0(a1);
  sub_29B152244(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.JsValue(uint64_t a1)
{
  v5 = qword_2A14FCF58;
  if (!qword_2A14FCF58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF58);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfNumericCastFailureType(uint64_t a1)
{
  v5 = qword_2A14FCF60;
  if (!qword_2A14FCF60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF60);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B158748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 136))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B158828(void *result, int a2, int a3)
{
  v3 = result + 17;
  if (a2)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[16] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfTransform(uint64_t a1)
{
  v5 = qword_2A14FCF68;
  if (!qword_2A14FCF68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF68);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfSize3(uint64_t a1)
{
  v5 = qword_2A14FCF70;
  if (!qword_2A14FCF70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF70);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfSize2(uint64_t a1)
{
  v5 = qword_2A14FCF78;
  if (!qword_2A14FCF78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF78);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLineSeg(uint64_t a1)
{
  v5 = qword_2A14FCF80;
  if (!qword_2A14FCF80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF80);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLine(uint64_t a1)
{
  v5 = qword_2A14FCF88;
  if (!qword_2A14FCF88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF88);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRotation(uint64_t a1)
{
  v5 = qword_2A14FCF90;
  if (!qword_2A14FCF90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF90);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRay(uint64_t a1)
{
  v5 = qword_2A14FCF98;
  if (!qword_2A14FCF98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfPlane(uint64_t a1)
{
  v5 = qword_2A14FCFA0;
  if (!qword_2A14FCFA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFA0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum.ProjectionType(uint64_t a1)
{
  v5 = qword_2A14FCFA8;
  if (!qword_2A14FCFA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFA8);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::GfFrustum *sub_29B1590D8(pxrInternal__aapl__pxrReserved__::GfFrustum *a1, __int128 *a2)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(a1);
  sub_29B1590A0(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::GfFrustum *sub_29B159184(pxrInternal__aapl__pxrReserved__::GfFrustum *a1, pxrInternal__aapl__pxrReserved__::GfFrustum *a2)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(a1);
  sub_29B15914C(a1, a2);
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfFrustum(uint64_t a1)
{
  v5 = qword_2A14FCFB0;
  if (!qword_2A14FCFB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFB0);
      return v2;
    }
  }

  return v5;
}

__n128 sub_29B15925C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuath(uint64_t a1)
{
  v5 = qword_2A14FCFB8;
  if (!qword_2A14FCFB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFB8);
      return v2;
    }
  }

  return v5;
}

__n128 sub_29B159300(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatf(uint64_t a1)
{
  v5 = qword_2A14FCFC0;
  if (!qword_2A14FCFC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfDualQuatd(uint64_t a1)
{
  v5 = qword_2A14FCFC8;
  if (!qword_2A14FCFC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfCamera.FOVDirection(uint64_t a1)
{
  v5 = qword_2A14FCFD0;
  if (!qword_2A14FCFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFD0);
      return v2;
    }
  }

  return v5;
}

void *sub_29B159668(void *a1, void *a2)
{
  sub_29B159524(a1);
  sub_29B159630(a1, a2);
  sub_29B159524(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfCamera(uint64_t a1)
{
  v5 = qword_2A14FCFD8;
  if (!qword_2A14FCFD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfCamera.Projection(uint64_t a1)
{
  v5 = qword_2A14FCFE0;
  if (!qword_2A14FCFE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFE0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B159808(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 312))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 304) & 0xFE) != 0)
      {
        v3 = (*(a1 + 304) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B15992C(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 39;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[38] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 304) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfBBox3d(uint64_t a1)
{
  v5 = qword_2A14FCFE8;
  if (!qword_2A14FCFE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFE8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfNotice.Key(uint64_t a1)
{
  v5 = qword_2A14FCFF0;
  if (!qword_2A14FCFF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFF0);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::TfNotice *sub_29B159EB8(pxrInternal__aapl__pxrReserved__::TfNotice *a1)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(a1);
  sub_29B159E80(a1);
  return a1;
}

pxrInternal__aapl__pxrReserved__::TfNotice *sub_29B159F24(pxrInternal__aapl__pxrReserved__::TfNotice *a1, pxrInternal__aapl__pxrReserved__::TfNotice *a2)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(a1);
  sub_29B159E80(a1);
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfNotice(uint64_t a1)
{
  v5 = qword_2A14FCFF8;
  if (!qword_2A14FCFF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCFF8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfStopwatch(uint64_t a1)
{
  v5 = qword_2A14FD000;
  if (!qword_2A14FD000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD000);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15A1B8(void *a1, void *a2)
{
  sub_29B15A0AC(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15A0AC(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.VtValue_ pxrInternal__aapl__pxrReserved__.TfDictionaryLessThan_ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.VtValue___(uint64_t a1)
{
  v5 = qword_2A14FD008;
  if (!qword_2A14FD008)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD008);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfDiagnosticType(uint64_t a1)
{
  v5 = qword_2A14FD010;
  if (!qword_2A14FD010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD010);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PrintSetting(uint64_t a1)
{
  v5 = qword_2A14FD018;
  if (!qword_2A14FD018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD018);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15A51C(void *a1, void *a2)
{
  sub_29B15A3D8(a1);
  sub_29B15A4E4(a1, a2);
  sub_29B15A3D8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree(uint64_t a1)
{
  v5 = qword_2A14FD020;
  if (!qword_2A14FD020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD020);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag(uint64_t a1)
{
  v5 = qword_2A14FD028;
  if (!qword_2A14FD028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD028);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfType.LegacyFlags(uint64_t a1)
{
  v5 = qword_2A14FD030;
  if (!qword_2A14FD030)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD030);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArchMemoryProtection(uint64_t a1)
{
  v5 = qword_2A14FD038;
  if (!qword_2A14FD038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD038);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArchFileAdvice(uint64_t a1)
{
  v5 = qword_2A14FD040;
  if (!qword_2A14FD040)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD040);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArchMemAdvice(uint64_t a1)
{
  v5 = qword_2A14FD048;
  if (!qword_2A14FD048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD048);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15A92C(void *a1, void *a2)
{
  sub_29B0882A0(a1);
  sub_29B0ECEDC(a1, a2);
  return a1;
}

void *sub_29B15A998(void *a1, void *a2)
{
  sub_29B0882A0(a1);
  sub_29B0ED0F8(a1, a2);
  sub_29B0882A0(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.shared_ptr_pxrInternal__aapl__pxrReserved__.HdxShadowMatrixComputation_(uint64_t a1)
{
  v5 = qword_2A14FD050;
  if (!qword_2A14FD050)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD050);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *sub_29B15AAEC(pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(a1);
  sub_29B15AAB0(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *sub_29B15AB58(pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(a1);
  sub_29B15AAB0(a1, a2);
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GlfSimpleMaterial(uint64_t a1)
{
  v5 = qword_2A14FD058;
  if (!qword_2A14FD058)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD058);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for std.__1.pair_CBool_ pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy_(uint64_t a1)
{
  v5 = qword_2A14FD060;
  if (!qword_2A14FD060)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD060);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15ADEC(void **a1, void **a2)
{
  sub_29B15ACE0(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15ACE0(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdxPickHit_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdxPickHit__(uint64_t a1)
{
  v5 = qword_2A14FD068;
  if (!qword_2A14FD068)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD068);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B15AF74(uint64_t a1, uint64_t a2)
{
  sub_29B15AEDC(a1);
  sub_29B15AF3C(a1, a2);
  return a1;
}

uint64_t sub_29B15B020(uint64_t a1, uint64_t a2)
{
  sub_29B15AEDC(a1);
  sub_29B15AFE8(a1, a2);
  sub_29B15AEDC(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.function_(() -_ Void)_(uint64_t a1)
{
  v5 = qword_2A14FD070;
  if (!qword_2A14FD070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD070);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15B1EC(void *a1, void *a2)
{
  sub_29AC94144(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29AC94144(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4d_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4d__(uint64_t a1)
{
  v5 = qword_2A14FD078;
  if (!qword_2A14FD078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD078);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for std.__1.optional_pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy_(uint64_t a1)
{
  v5 = qword_2A14FD080;
  if (!qword_2A14FD080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD080);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.CameraUtilFraming(uint64_t a1)
{
  v5 = qword_2A14FD088;
  if (!qword_2A14FD088)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD088);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15B4E8(void **a1, void **a2)
{
  sub_29AEDA138(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29AEDA138(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding__(uint64_t a1)
{
  v5 = qword_2A14FD090;
  if (!qword_2A14FD090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD090);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B15B6E4(uint64_t *a1, uint64_t *a2)
{
  sub_29B15B5D8(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15B5D8(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfBBox3d_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfBBox3d__(uint64_t a1)
{
  v5 = qword_2A14FD098;
  if (!qword_2A14FD098)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD098);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15B8E0(void *a1, void *a2)
{
  sub_29B15B7D4(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15B7D4(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2___ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_____(uint64_t a1)
{
  v5 = qword_2A14FD0A0;
  if (!qword_2A14FD0A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0A0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.VtValue___(uint64_t a1)
{
  v5 = qword_2A14FD0A8;
  if (!qword_2A14FD0A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0A8);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15BC1C(void *a1, void *a2)
{
  sub_29B15BB10(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15BB10(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.HdMaterialNetwork_ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.HdMaterialNetwork___(uint64_t a1)
{
  v5 = qword_2A14FD0B0;
  if (!qword_2A14FD0B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0B0);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15BE18(void **a1, void **a2)
{
  sub_29B15BD0C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15BD0C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialNode_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialNode__(uint64_t a1)
{
  v5 = qword_2A14FD0B8;
  if (!qword_2A14FD0B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0B8);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15C014(void **a1, void **a2)
{
  sub_29B15BF08(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15BF08(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HdMaterialRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HdMaterialRelationship__(uint64_t a1)
{
  v5 = qword_2A14FD0C0;
  if (!qword_2A14FD0C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0C0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfHashMap_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.VtValue_ pxrInternal__aapl__pxrReserved__.TfToken.HashFunctor_ std.__1.equal_to_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.VtValue___(uint64_t a1)
{
  v5 = qword_2A14FD0C8;
  if (!qword_2A14FD0C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0C8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationLevel(uint64_t a1)
{
  v5 = qword_2A14FD0D0;
  if (!qword_2A14FD0D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0D0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiTexture_(uint64_t a1)
{
  v5 = qword_2A14FD0D8;
  if (!qword_2A14FD0D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0D8);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B15C54C(uint64_t *a1, uint64_t *a2)
{
  sub_29B15C440(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15C440(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiTexture__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiTexture___(uint64_t a1)
{
  v5 = qword_2A14FD0E0;
  if (!qword_2A14FD0E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0E0);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B15C748(uint64_t *a1, uint64_t *a2)
{
  sub_29B15C63C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15C63C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc__(uint64_t a1)
{
  v5 = qword_2A14FD0E8;
  if (!qword_2A14FD0E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0E8);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15C944(void **a1, void **a2)
{
  sub_29B15C838(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15C838(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___(uint64_t a1)
{
  v5 = qword_2A14FD0F0;
  if (!qword_2A14FD0F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0F0);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15CB40(void **a1, void **a2)
{
  sub_29B15CA34(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15CA34(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdSkelBinding_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdSkelBinding__(uint64_t a1)
{
  v5 = qword_2A14FD0F8;
  if (!qword_2A14FD0F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD0F8);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15CD3C(void **a1, void **a2)
{
  sub_29B15CC30(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15CC30(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.LayerStackSite_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.LayerStackSite__(uint64_t a1)
{
  v5 = qword_2A14FD100;
  if (!qword_2A14FD100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD100);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15CF38(void **a1, void **a2)
{
  sub_29B15CE2C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15CE2C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.CacheSite_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.CacheSite__(uint64_t a1)
{
  v5 = qword_2A14FD108;
  if (!qword_2A14FD108)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD108);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15D134(void **a1, void **a2)
{
  sub_29B15D028(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15D028(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_std.__1.pair_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ pxrInternal__aapl__pxrReserved__.SdfChangeList__ std.__1.allocator_std.__1.pair_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ pxrInternal__aapl__pxrReserved__.SdfChangeList___(uint64_t a1)
{
  v5 = qword_2A14FD110;
  if (!qword_2A14FD110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD110);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15D368(void **a1, void **a2)
{
  sub_29B15D224(a1);
  sub_29B15D330(a1, a2);
  sub_29B15D224(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.unordered_set_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ pxrInternal__aapl__pxrReserved__.TfHash_ std.__1.equal_to_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___(uint64_t a1)
{
  v5 = qword_2A14FD118;
  if (!qword_2A14FD118)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD118);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15D564(void **a1, void **a2)
{
  sub_29B15D458(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15D458(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_std.__1.pair_pxrInternal__aapl__pxrReserved__.SdfPath_ pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_std.__1.pair_pxrInternal__aapl__pxrReserved__.SdfPath_ pxrInternal__aapl__pxrReserved__.SdfPath___(uint64_t a1)
{
  v5 = qword_2A14FD120;
  if (!qword_2A14FD120)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD120);
      return v2;
    }
  }

  return v5;
}

void *sub_29B15D760(void *a1, void *a2)
{
  sub_29B15D654(a1);
  sub_29B0B8190(a1, a2);
  sub_29B15D654(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.SdfPath_ CInt_ pxrInternal__aapl__pxrReserved__.SdfPath.FastLessThan_ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.SdfPath__ CInt___(uint64_t a1)
{
  v5 = qword_2A14FD128;
  if (!qword_2A14FD128)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD128);
      return v2;
    }
  }

  return v5;
}

void **sub_29B15D95C(void **a1, void **a2)
{
  sub_29B15D850(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15D850(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg__(uint64_t a1)
{
  v5 = qword_2A14FD130;
  if (!qword_2A14FD130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD130);
      return v2;
    }
  }

  return v5;
}

uint64_t *sub_29B15DB58(uint64_t *a1, uint64_t *a2)
{
  sub_29B15DA4C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15DA4C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallStackInfo_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallStackInfo__(uint64_t a1)
{
  v5 = qword_2A14FD138;
  if (!qword_2A14FD138)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD138);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B15DD5C(uint64_t a1, uint64_t a2)
{
  sub_29A1043FC(a1);
  sub_29B15DD24(a1, a2);
  sub_29A1043FC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PathNode(uint64_t a1)
{
  v5 = qword_2A14FD140;
  if (!qword_2A14FD140)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD140);
      return v2;
    }
  }

  return v5;
}

void ***sub_29B15DF58(void ***a1, void ***a2)
{
  sub_29B15DE4C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15DE4C(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.CallSite_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.CallSite__(uint64_t a1)
{
  v5 = qword_2A14FD148;
  if (!qword_2A14FD148)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD148);
      return v2;
    }
  }

  return v5;
}

void ***sub_29B15E154(void ***a1, void ***a2)
{
  sub_29B15E048(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B15E048(a2);
  return a1;
}

unint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PathNode_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PathNode__(uint64_t a1)
{
  v5 = qword_2A14FD150;
  if (!qword_2A14FD150)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD150);
      return v2;
    }
  }

  return v5;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(a1 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(a1, *(a1 + 32));
    }

    if (sub_29B0BB8EC(*(a1 + 24), 1, 3) == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(a1 + 24));
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(a1 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(a1, *(a1 + 32));
    }

    if (sub_29B0BB8EC(*(a1 + 24), 1, 3) == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(a1 + 24));
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(a1 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(a1, *(a1 + 32));
    }

    if (sub_29B0BB8EC(*(a1 + 24), 1, 3) == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(a1 + 24));
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_29B15E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A424A8C(a10[1].__r_.__value_.__r.__words);
  std::string::~string(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B15E6D0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  sub_29B0C046C((a1 + 40), (a2 + 40));
  return a1;
}

void *sub_29B15E73C(void *a1, uint64_t a2)
{
  sub_29B15E7A8(a1 + 1);
  result = a1;
  *a1 = &unk_2A20B0590;
  a1[3] = *(a2 + 24);
  return result;
}

uint64_t sub_29B15E84C(uint64_t a1)
{
  sub_29AE997DC((a1 + 48));
  sub_29A3C73E0((a1 + 24));
  sub_29AE997DC((a1 + 16));
  sub_29AE997DC((a1 + 8));
  sub_29AE997DC(a1);
  return a1;
}

void sub_29B15E8AC(void *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a1, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 1), (a2 + 1));
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 2), (a2 + 2));
  sub_29B0CCA88(a1 + 3, a2 + 3);
}

void sub_29B15E94C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29AE997DC(a12);
  _Unwind_Resume(*(v12 - 24));
}

uint64_t *sub_29B15E9C8(uint64_t *a1, uint64_t *a2)
{
  sub_29B0C0374(a1, a2);
  sub_29B0C0374(a1 + 1, a2 + 1);
  sub_29B0C0374(a1 + 2, a2 + 2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0C0374(a1 + 6, a2 + 6);
  return a1;
}

__n128 sub_29B15EA50(uint64_t a1, uint64_t a2)
{
  sub_29B0ECEDC(a1, a2);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 29) = *(a2 + 29);
  return result;
}

__n128 sub_29B15EA9C(uint64_t a1, uint64_t a2)
{
  sub_29B0ED0F8(a1, a2);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 29) = *(a2 + 29);
  return result;
}

uint64_t sub_29B15EBA8(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0CBDC8((a1 + 8), (a2 + 8));
  sub_29B0CBDC8((a1 + 32), (a2 + 32));
  memcpy((a1 + 56), (a2 + 56), 0x98uLL);
  return a1;
}

void *sub_29B15EC20(void *a1)
{
  sub_29A3D65BC((a1 + 1));
  sub_29A424A8C(a1);
  return a1;
}

__n128 sub_29B15ECE4(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C046C((a1 + 8), (a2 + 8));
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

_DWORD *sub_29B15ED44(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  sub_29B0B975C(a1 + 4, a2 + 4);
  sub_29B0B975C(a1 + 6, a2 + 6);
  sub_29B0B975C(a1 + 8, a2 + 8);
  sub_29B0B975C(a1 + 10, a2 + 10);
  memcpy(a1 + 12, a2 + 12, 0x50uLL);
  return a1;
}

_DWORD *sub_29B15EDF8(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  sub_29B0B82B8(a1 + 4, a2 + 4);
  sub_29B0B82B8(a1 + 6, a2 + 6);
  sub_29B0B82B8(a1 + 8, a2 + 8);
  sub_29B0B82B8(a1 + 10, a2 + 10);
  memcpy(a1 + 12, a2 + 12, 0x50uLL);
  return a1;
}

__n128 sub_29B15EEAC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C1C58((a1 + 16), (a2 + 16));
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  memcpy((a1 + 32), (a2 + 32), 0x108uLL);
  sub_29B0CBDC8((a1 + 296), (a2 + 296));
  sub_29B15AFE8(a1 + 320, a2 + 320);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 352), (a2 + 352));
  result = *(a2 + 456);
  *(a1 + 456) = result;
  return result;
}

void sub_29B15EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B15AEDC(a10 + 320);
  sub_29AC94144(a10 + 296);
  sub_29A424A8C((a10 + 24));
  sub_29A424A8C((a10 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_29B15F098(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x64uLL);
  sub_29B0CBDC8((a1 + 104), (a2 + 104));
  sub_29B0CBDC8((a1 + 128), (a2 + 128));
  memcpy((a1 + 152), (a2 + 152), 0x5CuLL);
  sub_29B0B82B8((a1 + 244), (a2 + 244));
  memcpy((a1 + 252), (a2 + 252), 0x4DuLL);
  return a1;
}

uint64_t sub_29B15F140(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C0434(a1 + 8, (a2 + 8));
  sub_29B0C0434(a1 + 32, (a2 + 32));
  sub_29B0C0434(a1 + 56, (a2 + 56));
  sub_29B0C0434(a1 + 80, (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  sub_29B0C1C58((a1 + 112), (a2 + 112));
  return a1;
}

void *sub_29B15F1E8(void *a1, const void *a2)
{
  memcpy(a1, a2, 0x2CuLL);
  sub_29B0B975C(a1 + 11, a2 + 11);
  sub_29B0B975C(a1 + 13, a2 + 13);
  sub_29B0B975C(a1 + 15, a2 + 15);
  return a1;
}

void *sub_29B15F260(void *a1, const void *a2)
{
  memcpy(a1, a2, 0x2CuLL);
  sub_29B0B82B8(a1 + 11, a2 + 11);
  sub_29B0B82B8(a1 + 13, a2 + 13);
  sub_29B0B82B8(a1 + 15, a2 + 15);
  return a1;
}

void *sub_29B15F2D8(void *a1)
{
  sub_29B15B5D8(a1 + 1);
  sub_29A424A8C(a1);
  return a1;
}

__n128 sub_29B15F39C(__n128 *a1, __n128 *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0CBDC8(&a1->n128_u64[1], &a2->n128_u64[1]);
  result = a2[2];
  a1[2] = result;
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  return result;
}

_DWORD *sub_29B15F3FC(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  return a1;
}

_DWORD *sub_29B15F448(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  return a1;
}

void *sub_29B15F494(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2085CE0;
  sub_29B0B975C(a1 + 2, (a2 + 8));
  return a1;
}

void *sub_29B15F4F4(void *a1, uint64_t a2)
{
  sub_29B15F54C(a1, a2);
  result = a1;
  *a1 = &unk_2A207DA80;
  return result;
}

void *sub_29B15F54C(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2075D28;
  sub_29B0B975C(a1 + 2, (a2 + 8));
  return a1;
}

void *sub_29B15F6B4(void *a1, uint64_t a2)
{
  sub_29B15F720(a1, a2);
  *a1 = &unk_2A207C268;
  sub_29B0B975C(a1 + 4, (a2 + 16));
  return a1;
}

void *sub_29B15F720(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2085400;
  sub_29B0B975C(a1 + 2, (a2 + 8));
  return a1;
}

void *sub_29B15F828(void *a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0B8190(a1 + 1, a2 + 1);
  sub_29B0B8190(a1 + 4, a2 + 4);
  return a1;
}

void *sub_29B15F930(void *a1, void *a2)
{
  sub_29B0B8190(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0C0374(a1 + 6, a2 + 6);
  return a1;
}

void *sub_29B15FA38(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  return a1;
}

void *sub_29B15FA98(void *a1, uint64_t a2)
{
  sub_29B15F54C(a1, a2);
  result = a1;
  *a1 = &unk_2A207B2D0;
  return result;
}

void sub_29B15FAF0(void *a1, uint64_t a2)
{
  sub_29B15F720(a1, a2);
  *a1 = &unk_2A20769D0;
  sub_29B0C1C90((a1 + 2), (a2 + 16));
}

uint64_t *sub_29B15FD30(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B15FD78(v3);
  return a1;
}

void sub_29B15FD78(uint64_t **result)
{
  if (**result)
  {
    sub_29B15FDFC(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B15FE80(*result);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B15FDFC(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B15FED0(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B15FED0(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B15FFB8(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B16007C(uint64_t **result)
{
  if (**result)
  {
    sub_29B160100(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DE1B0(*result);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B160100(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B16014C(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B16014C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1601FC(uint64_t **result)
{
  if (**result)
  {
    sub_29B160280(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B160304(*result);
    sub_29B1602CC(v3, v2, v1);
  }
}

void sub_29B160280(uint64_t *a1)
{
  sub_29B16032C(a1);
  sub_29B160354(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B160354(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B16043C(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

uint64_t *sub_29B1604D8(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B160520(v3);
  return a1;
}

void sub_29B160520(uint64_t **result)
{
  if (**result)
  {
    sub_29B1605A4(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B15FE80(*result);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B1605A4(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B1605F0(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1605F0(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B160868(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B160A34(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B160AE0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B160AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B160BA8(a1, v9, v8, v5);
  return sub_29B160BE4(a4, v6);
}

void *sub_29B160B64(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 4 * a3;
  return result;
}

uint64_t sub_29B160CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B160DB4(v17, v11);
  v8 = sub_29B160BE4(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B160DE4(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 4;
  sub_29B160E68(a3, a1, v5);
  v4 = &v6[4 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B160E68(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 4 * (a3 - 1) + 4);
  }

  return a1;
}

uint64_t sub_29B160F20(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B160520(a1);
  }

  return a1;
}

void sub_29B160F6C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1610AC(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B1611D0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DCDD0(&v6, a1, a4);
  v7 = sub_29B161288(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B161288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B16130C(a1, v9, v8, v5);
  return sub_29B161400(a4, v6);
}

uint64_t sub_29B16130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl,pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_PatternImpl&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B161478(v7);
  return v5;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A379A04(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B161714(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B161784(&v6, a1, a4);
  v7 = sub_29B1617C4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1617C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B161894(a1, v9, v8, v5);
  return sub_29B1618D0(a4, v6);
}

void *sub_29B161848(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 12 * a3;
  return result;
}

uint64_t sub_29B16199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B161A54(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B161AA0(v17, v11);
  v8 = sub_29B1618D0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B161AD0(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 12;
  sub_29B161B5C(a3, a1, v5);
  v4 = &v6[12 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B161B5C(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 12 * (a3 - 1) + 12);
  }

  return a1;
}

uint64_t sub_29B161C20(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1601FC(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B161DC0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment>::__construct_at_end<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Segment*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B161E18(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B161E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B161E9C(a1, v9, v8, v5);
  return sub_29B161ED8(a4, v6);
}

uint64_t sub_29B161FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B16205C(v17, v11);
  v8 = sub_29B161ED8(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B16208C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B16007C(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::ArchRegex*,pxrInternal__aapl__pxrReserved__::ArchRegex*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1C11FC(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__construct_at_end<pxrInternal__aapl__pxrReserved__::ArchRegex*,pxrInternal__aapl__pxrReserved__::ArchRegex*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16222C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__construct_at_end<pxrInternal__aapl__pxrReserved__::ArchRegex*,pxrInternal__aapl__pxrReserved__::ArchRegex*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B162284(&v6, a1, a4);
  v7 = sub_29B1622C4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1622C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AF4C3FC(a1, v9, v8, v5);
  return sub_29B162394(a4, v6);
}

void *sub_29B162348(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 48 * a3;
  return result;
}

uint64_t sub_29B1624D4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A58E5E0(a1);
  }

  return a1;
}

void sub_29B162520(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B162660(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B162784(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B162284(&v6, a1, a4);
  v7 = sub_29B16283C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1628C0(a1, v9, v8, v5);
  return sub_29B1629B4(a4, v6);
}

uint64_t sub_29B1628C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B162A2C(v7);
  return v5;
}

void sub_29B162BAC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B162CEC(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B162E08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&>::_Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B162EC0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B162EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B162F44(a1, v9, v8, v5);
  return sub_29B162F80(a4, v6);
}

uint64_t sub_29B16304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B163104(v17, v11);
  v8 = sub_29B162F80(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B163134(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B15FD78(a1);
  }

  return a1;
}

void sub_29B163180(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>,void,0>();
}

void std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>::__init_with_size[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1632C0(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B1633DC(v7);
}

void *std::vector<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>::__construct_at_end<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B163494(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B163494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B163518(a1, v9, v8, v5);
  return sub_29B16360C(a4, v6);
}

uint64_t sub_29B163518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::construct[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>,std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B163684(v7);
  return v5;
}

uint64_t sub_29B163790(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) == a2)
    {
      sub_29B088388();
      *(a1 + 24) = v2;
      (*(**(a2 + 24) + 24))(*(a2 + 24), *(a1 + 24));
    }

    else
    {
      *(a1 + 24) = (*(**(a2 + 24) + 16))(*(a2 + 24));
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29B163880(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B1638D4(a1);
  }

  return a1;
}

BOOL sub_29B1638D4(uint64_t *a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, *a1[2]);
  sub_29B0DF4A4(v4, *a1[1]);
  return sub_29B163940(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B163940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B1639B4(v7);
    std::allocator_traits<std::allocator<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>>>::destroy[abi:ne200100]<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim const&)>,0>();
  }

  return result;
}

uint64_t sub_29B163A88(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD5F04(a1);
  }

  return a1;
}

uint64_t sub_29B163AD4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD5F88(a1);
  }

  return a1;
}

uint64_t sub_29B163B20(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD62C4(a1);
  }

  return a1;
}

void *sub_29B163BF0(void *a1, void *a2)
{
  sub_29B137D0C(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  return a1;
}

void sub_29B163C3C(void *a1, uint64_t a2)
{
  sub_29B15F720(a1, a2);
  *a1 = &unk_2A2076078;
  memcpy(a1 + 2, (a2 + 16), 0xA0uLL);
  sub_29B15B140(a1 + 22, (a2 + 176));
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_IsLocal();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_IsLocal();
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetLocalStorage(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetLocalStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetLocalStorage();
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetRemoteStorage(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetRemoteStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetRemoteStorage();
}

void pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetLocalStorage()
{
  ;
}

{
  ;
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<56ul,8ul,8ul>::GetRemoteStorage(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::begin(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::end(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_GetStorage();
}

_DWORD *pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_UninitializedMove<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_29B164354(a1);
  v3 = sub_29B164354(a2);
  return sub_29ABDE7B4(v5, v3, a3);
}

_DWORD *sub_29B164384(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B0B975C(a1 + 1, a2 + 1);
  sub_29B0B975C(a1 + 3, a2 + 3);
  sub_29B0B7F5C((a1 + 6), (a2 + 6));
  return a1;
}

void sub_29B1643FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8((a10 + 12));
  sub_29A1DCEA8((a10 + 4));
  _Unwind_Resume(a1);
}

void sub_29B16442C(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B0B82B8(a1 + 1, a2 + 1);
  sub_29B0B82B8(a1 + 3, a2 + 3);
  sub_29B0B7D60(a1 + 6, (a2 + 6));
}

void sub_29B1644A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8((a10 + 12));
  sub_29A1DCEA8((a10 + 4));
  _Unwind_Resume(a1);
}

void sub_29B1645A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8(a10 + 4);
  sub_29A424A8C(a10);
  _Unwind_Resume(a1);
}

void sub_29B1645EC(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  sub_29B0C046C((a1 + 24), (a2 + 24));
  sub_29B15C164(a1 + 40, a2 + 40);
}

void sub_29B164670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A3D65BC((a10 + 3));
  sub_29A1DCEA8(a10 + 4);
  sub_29A424A8C(a10);
  _Unwind_Resume(a1);
}

__n128 sub_29B16477C(uint64_t a1, uint64_t a2)
{
  sub_29B0CBDC8(a1, a2);
  memcpy((a1 + 24), (a2 + 24), 0x50uLL);
  sub_29B0CBDC8((a1 + 104), (a2 + 104));
  sub_29B0CBDC8((a1 + 128), (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 168);
  *(a1 + 168) = result;
  return result;
}

uint64_t sub_29B16483C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

void *sub_29B164888(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29B0C0434((a1 + 1), a2 + 1);
  return a1;
}

uint64_t sub_29B1648D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  std::string::basic_string((a1 + 16), (a2 + 16));
  std::string::basic_string((a1 + 40), (a2 + 40));
  return a1;
}

uint64_t sub_29B164964(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C0434(a1 + 16, (a2 + 16));
  sub_29B0C0434(a1 + 40, (a2 + 40));
  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A79C588(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B164B20(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B164B8C(&v6, a1, a4);
  v7 = sub_29B164BCC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B164BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B164C94(a1, v9, v8, v5);
  return sub_29B164CD0(a4, v6);
}

void *sub_29B164C50(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + (a3 << 7);
  return result;
}

uint64_t sub_29B164D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B164E54(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B164EA0(v17, v11);
  v8 = sub_29B164CD0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B164ED0(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 128;
  sub_29B164F54(a3, a1, v5);
  v4 = &v6[128 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B164F54(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, ((a3 - 1) << 7) + 128);
  }

  return a1;
}

uint64_t sub_29B16500C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B08841C(a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void ***sub_29B165250(void ***a1, void *a2)
{
  sub_29B165330(a1);
  if (sub_29B165368(a2))
  {
    operator new();
  }

  return a1;
}

void sub_29B1653DC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B16551C(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B165638(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B1656F0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1656F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B165774(a1, v9, v8, v5);
  return sub_29B165868(a4, v6);
}

uint64_t sub_29B165774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation,pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::Invalidation&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B1658E0(v7);
  return v5;
}

uint64_t sub_29B16597C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B1659C8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A156170(a1);
  }

  return a1;
}

void sub_29B165ABC(uint64_t a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C1C58((a1 + 8), a2 + 1);
  sub_29B0C1C58((a1 + 16), a2 + 2);
  sub_29B0C1C58((a1 + 24), a2 + 3);
  sub_29B0B7D60((a1 + 32), (a2 + 4));
}

void sub_29B165BB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A424A8C(a12 + 3);
  sub_29A424A8C(a12 + 2);
  sub_29A424A8C(a12 + 1);
  sub_29A424A8C(a12);
  _Unwind_Resume(*(v12 - 24));
}

uint64_t sub_29B165CDC(unsigned __int8 *a1, int a2)
{
  if (a2 != 2 && a2 != 1)
  {
    if (a2 == 5)
    {
      v2 = atomic_load(a1);
      explicit = v2;
    }

    else
    {
      explicit = *a1;
    }
  }

  else
  {
    explicit = atomic_load_explicit(a1, memory_order_acquire);
  }

  return explicit & 1;
}

void sub_29B165E6C(uint64_t a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0C1C58((a1 + 8), a2 + 1);
  sub_29B0B7D60((a1 + 16), (a2 + 2));
}

void sub_29B165F3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A424A8C(a12 + 1);
  sub_29A424A8C(a12);
  _Unwind_Resume(*(v12 - 24));
}

_BYTE *sub_29B166018(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = sub_29B165C70(a2, 5);
  sub_29B165CA0(a1, v2);
  sub_29B166070(a2, 0);
  return a1;
}

unsigned __int8 *sub_29B1660EC(unsigned __int8 *result, char a2, int a3)
{
  v3 = a2 & 1;
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(v3, result);
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t sub_29B16616C(uint64_t a1)
{
  sub_29A49A240(a1 + 88);
  sub_29AE997DC((a1 + 80));
  sub_29B1661D8((a1 + 56));
  sub_29B166208((a1 + 32));
  sub_29B166238((a1 + 8));
  sub_29A424A8C(a1);
  return a1;
}

void **sub_29B1662BC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB645B8(v3);
  return a1;
}

void **sub_29B16635C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB645B8(v3);
  return a1;
}

void **sub_29B1663D4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB646A0(v3);
  return a1;
}

void sub_29B166530(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A424A8C(a12);
  _Unwind_Resume(*(v12 - 24));
}

void sub_29B1666A8(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10C514(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B166874(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1668EC(&v6, a1, a4);
  v7 = sub_29B16692C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB67F18(a1, v9, v8, v5);
  return sub_29B1669FC(a4, v6);
}

void *sub_29B1669B0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 72 * a3;
  return result;
}

uint64_t sub_29B166AE0(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C04A4((a1 + 24), (a2 + 24));
  std::string::basic_string((a1 + 40), (a2 + 40));
  result = a1;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t sub_29B166BF0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB646A0(a1);
  }

  return a1;
}

void sub_29B166C3C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B166E08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B166EA0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B166EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB68344(a1, v9, v8, v5);
  return sub_29B166F68(a4, v6);
}

void *sub_29B166F24(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + (a3 << 6);
  return result;
}