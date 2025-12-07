__n128 initializeWithTake for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1AF3C025C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 136);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C02B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithTake for Navigation(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1AF3C03DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithTake for MeshPart(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1AF3C04D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 176))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 160);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithTake for ShaderCache.Library(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SDFRuntimeData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFRuntimeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScriptCompilerSystem.CompilationHandle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptCompilerSystem.CompilationHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 initializeWithCopy for GazeTrackingParams(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

__n128 sub_1AF3C0778(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1AF3C079C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1AF3C081C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

__n128 initializeWithCopy for AABB(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeWithCopy for Orientation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for EntityManager.EntityEntry(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PointCacheSpawner(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PointCacheSpawner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityManager.EntityEntry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EntityManager.EntityEntry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1AF3C0A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshBatch(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshBatch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C0B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 180);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 180) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithCopy for _StructContextDescriptor(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PerspectiveCamera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PerspectiveCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C0E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 400))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 388);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C0EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 388) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF3C0FB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1AF3C0FEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 208))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3C100C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 208) = v3;
  return result;
}

__n128 initializeWithCopy for TesselationDescriptor(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AF3C11A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 624))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 612);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C11F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 624) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 624) = 0;
    }

    if (a2)
    {
      *(result + 612) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C13CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 128))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C1420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF3C1510(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugDrawSystemState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugDrawSystemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AF3C1668(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3C1688(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 1144) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 1152) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RelationPair(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AF3C1804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C1858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C1998@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1AFDFCEC8();

  *a2 = v3;
  return result;
}

uint64_t sub_1AF3C19E0(uint64_t a1)
{
  v2 = sub_1AF0D4E2C(&qword_1EB637E60, type metadata accessor for DeviceType, byte_1AFE4B034);
  v3 = sub_1AF0D4E2C(&qword_1EB637E68, type metadata accessor for DeviceType, byte_1AFE4AFD4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF3C1B2C()
{
  v0 = sub_1AFDFCEF8();
  v1 = MEMORY[0x1B2718BB0](v0);

  return v1;
}

uint64_t sub_1AF3C1B68(uint64_t a1)
{
  sub_1AFDFCEF8();
  sub_1AFDFD038();
}

uint64_t sub_1AF3C1BBC(uint64_t a1)
{
  sub_1AFDFCEF8();
  sub_1AFDFF288();
  sub_1AFDFD038();
  v1 = sub_1AFDFF2F8();

  return v1;
}

uint64_t sub_1AF3C1C30(void *a1, uint64_t *a2)
{
  v2 = sub_1AFDFCEF8();
  v4 = v3;
  if (v2 == sub_1AFDFCEF8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1AFDFEE28();
  }

  return v7 & 1;
}

unint64_t sub_1AF3C22B8()
{
  result = qword_1EB637DB0;
  if (!qword_1EB637DB0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6858], MEMORY[0x1E69E6810], v0, v1);
    atomic_store(result, &qword_1EB637DB0);
  }

  return result;
}

__n128 sub_1AF3C262C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for Clock(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Clock(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C2764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 288))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 276);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AF3C27B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 276) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF3C2870(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AF3C288C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF3C28AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

__n128 initializeWithTake for ParticleComponentSystemParameter(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendingStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendingStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF3C2C04()
{

  v0 = sub_1AF9A8804();

  if (v0 == 4)
  {
    return 1;
  }

  else
  {
    return v0;
  }
}

double sub_1AF3C2C58@<D0>(uint64_t **a1@<X0>, CFX::RG::TextureDescriptorReference *a2@<X1>, void *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, _OWORD *a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, CFX::RG::TextureDescriptorReference *a14, CFX::RG::Pass **a15, CFX::RG::RenderGraphBuilder *a16)
{

  v49 = sub_1AF9A8814();
  v51 = v18;
  v50 = v19;

  if (a4)
  {
    v53 = [a4 nodeRef];
  }

  else
  {
    v53 = 0;
  }

  v20 = sub_1AF9A1504(1, 0);

  v48 = [v20 materialRef];
  v21 = v20;

  v47 = sub_1AF9A178C(1, 0);
  v46 = v22;

  type metadata accessor for ConstantNode(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    sub_1AF0D5A54(v23 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, &v67);
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);

  v24 = swift_dynamicCast();
  v25 = 0;
  if (v24)
  {
    v60 = 0;
    v25 = v59;
  }

  v45 = v25;

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    sub_1AF0D5A54(v26 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, &v67);
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  if (swift_dynamicCast())
  {
    v60 = 0;
    v28 = v59;
  }

  else
  {
    v28 = 0;
  }

  v30 = sub_1AF9A11A0(1, 0);

  v31 = sub_1AF9A11A0(1, 0);

  if (a11)
  {
    a10 = RGNullResource();
  }

  if (a13)
  {
    a12 = RGNullResource();
  }

  v32.i64[0] = v49;
  v32.i64[1] = v51;
  if (v50)
  {
    v33 = -1;
  }

  else
  {
    v33 = 0;
  }

  LOWORD(v59) = 257;
  v34 = vbicq_s8(v32, vdupq_n_s32(v33));
  if (v46)
  {
    v35 = 0xFFFFFFFFLL;
  }

  else
  {
    v35 = v47;
  }

  BYTE2(v59) = v30 & 1;
  BYTE3(v59) = v31 & 1;
  BYTE4(v59) = a5 & 1;
  BYTE5(v59) = a6 & 1;
  if (v46)
  {
    v36 = 0;
  }

  else
  {
    v36 = HIDWORD(v47);
  }

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35 == -1;
  }

  BYTE6(v59) = a7 & 1;
  HIBYTE(v59) = a8 & 1;
  v61 = v34;
  v38 = v35 | (v36 << 32);
  if (v37)
  {
    v39 = -1;
  }

  else
  {
    v39 = v38;
  }

  v62 = v53;
  v63 = v48;
  v64 = v39;
  v65 = v45;
  v66 = v28;
  sub_1AF24EF24(a16, a1, a2, &v59, a10, a12, a14, &v67, a15);

  v40 = v72;
  a9[4] = v71;
  a9[5] = v40;
  v41 = v74;
  a9[6] = v73;
  a9[7] = v41;
  v42 = v68;
  *a9 = v67;
  a9[1] = v42;
  result = *&v69;
  v44 = v70;
  a9[2] = v69;
  a9[3] = v44;
  return result;
}

id sub_1AF3C3044()
{
  type metadata accessor for AuthoringGraph(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = sub_1AF42B820(v1, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
  sub_1AFDFC308();
  v2 = sub_1AF912398(1, sub_1AF3C3120);

  return v2;
}

uint64_t sub_1AF3C3120()
{
  v0 = sub_1AFDFC318();
  v59 = *(v0 - 8);
  v60 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v55 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  type metadata accessor for PresentNode(0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v8;
  v56 = v7;
  sub_1AFDFC308();
  sub_1AF449B08(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v61 = xmmword_1AFE431C0;
  *(inited + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC0000000000000D0;
  v11 = v10 | 0x8000000000000000;
  *(inited + 32) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000008;
  sub_1AF4410A8(v11);
  sub_1AF9C5694(v11, v12 | 0x8000000000000000);

  sub_1AF441114(v11);

  *(swift_allocObject() + 16) = 0xC0000000000000D0;

  v64 = sub_1AF41FF24(0, 1, 0, v8, sub_1AF4444A4, &qword_1EB6323D0, &type metadata for AuthoringNode.Port);
  sub_1AF48F8E8(v8);
  type metadata accessor for RenderWorldNode(0);
  v13 = swift_allocObject();
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *(v13 + 2) = v8;
  v54 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  sub_1AFDFC308();
  sub_1AF4444A4(0);
  v53 = swift_initStackObject();
  *(v53 + 16) = v61;
  v14 = *(v59 + 56);
  v57 = v6;
  v14(v6, 1, 1, v60);
  type metadata accessor for AuthoringNode(0);
  v15 = swift_allocObject();
  v16 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v19 = 0;
  v19[1] = 0;
  *(v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v13;

  sub_1AF9A8E94(v65);
  v20 = v65[0];
  v70 = v65[1];
  v71 = v65[0];
  v21 = MEMORY[0x1E69E62F8];
  sub_1AF444058(&v70, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
  v69 = v65[2];
  sub_1AF444058(&v69, &qword_1EB638968, &type metadata for TypeConstraint, v21, sub_1AF449B08);
  v68 = v65[3];
  sub_1AF44943C(&v68, sub_1AF445C2C);
  v67 = v65[4];
  sub_1AF44943C(&v67, sub_1AF445C2C);
  v66 = v65[5];
  sub_1AF444058(&v66, &qword_1EB638978, &type metadata for AnyValue, v21, sub_1AF449B08);
  v22 = *(v20 + 16);
  sub_1AF444058(&v71, &qword_1EB638968, &type metadata for TypeConstraint, v21, sub_1AF449B08);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v22, 0);
    v23 = v63;
    v24 = *(v63 + 16);
    v25 = 16 * v24 + 32;
    v26 = v55;
    v27 = v57;
    v28 = v58;
    do
    {
      v63 = v23;
      v29 = *(v23 + 24);
      v30 = v24 + 1;
      if (v24 >= v29 >> 1)
      {
        sub_1AFC05D04(v29 > 1, v24 + 1, 1);
        v27 = v57;
        v28 = v58;
        v23 = v63;
      }

      *(v23 + 16) = v30;
      v31 = (v23 + v25);
      *v31 = 0;
      v31[1] = 0;
      v25 += 16;
      v24 = v30;
      --v22;
    }

    while (v22);
  }

  else
  {
    v26 = v55;
    v27 = v57;
    v28 = v58;
  }

  *(v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v23;
  sub_1AF449A04(v27, v28, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
  v33 = v59;
  v32 = v60;
  v34 = *(v59 + 48);
  if (v34(v28, 1, v60) == 1)
  {
    sub_1AFDFC308();
    sub_1AF44832C(v27, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    if (v34(v28, 1, v32) != 1)
    {
      sub_1AF44832C(v28, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    sub_1AF44832C(v27, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    (*(v33 + 32))(v26, v28, v32);
  }

  (*(v33 + 32))(v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v26, v32);
  (*(v33 + 24))(&v13[v54], v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v32);
  v35 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = 1;
  v36 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  v37 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = (v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v38 = 0;
  v38[1] = 0;

  v39 = v53;
  *(v53 + 32) = v15;
  *(v39 + 40) = 0;
  v40 = v39;

  v62 = v40;
  v41 = *(v40 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v43 = *(MEMORY[0x1E69E7CC0] + 16);
  v44 = v43 + v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v44 > v42[3] >> 1)
  {
    if (v43 <= v44)
    {
      v46 = v43 + v41;
    }

    else
    {
      v46 = v43;
    }

    v42 = sub_1AF41FF24(isUniquelyReferenced_nonNull_native, v46, 1, MEMORY[0x1E69E7CC0], sub_1AF4444A4, &qword_1EB6323D0, &type metadata for AuthoringNode.Port);
  }

  if (*(v40 + 16))
  {
    sub_1AF449B08(0, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();

    if (v41)
    {
      v42[2] += v41;
    }
  }

  else
  {
  }

  sub_1AF44943C(&v62, sub_1AF44949C);
  sub_1AF48F8E8(v42);
  v47 = sub_1AF3DA924(v64);

  sub_1AF449B08(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1AFE4C3E0;
  *(v48 + 32) = v47;
  sub_1AF449890(0, &qword_1EB638D88, sub_1AF449518, MEMORY[0x1E69E6F90]);
  v49 = swift_initStackObject();
  *(v49 + 16) = v61;
  v50 = sub_1AF3C3BCC(v48);

  *(v49 + 32) = v50;
  v51 = sub_1AF912628(v49);
  swift_setDeallocating();
  sub_1AF44943C(v49 + 32, sub_1AF449518);
  return v51;
}

uint64_t sub_1AF3C3AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1AFC05DE8(0, v1, 0);
    v2 = v10;
    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC05DE8(v6 > 1, v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C3BCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AFDFE108();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        MEMORY[0x1B2719C70]();
        type metadata accessor for AuthoringNode(0);
        sub_1AF44479C(0);
        swift_dynamicCast();
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = a1 + 32;
      type metadata accessor for AuthoringNode(0);
      sub_1AF44479C(0);
      do
      {
        v6 += 8;

        swift_dynamicCast();
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        --v2;
      }

      while (v2);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1AF3C3D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC05F94(0, v1, 0);
    v2 = v12;
    sub_1AF43A11C(0);
    sub_1AF43A1C0(0);
    v4 = a1 + 48;
    do
    {
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC05F94(v6 > 1, v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 32 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C3E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v12;
    sub_1AF43A260(0);
    sub_1AF0D8108(0, &qword_1ED7232A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8);
    v4 = a1 + 72;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC06EC8(v5 > 1, v6 + 1, 1);
      }

      v4 += 48;
      *(v12 + 16) = v6 + 1;
      v7 = (v12 + 48 * v6);
      v7[3] = v10;
      v7[4] = v11;
      v7[2] = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4008(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFC070C4(0, v1, 0);
    v2 = v13;
    sub_1AF4485F8(0, &qword_1ED72F980, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], "pre  ");
    sub_1AF446420(0);
    v4 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC070C4(v5 > 1, v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = v13 + 32 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      *(v7 + 48) = v11;
      *(v7 + 56) = v12;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4160(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1AFDFE108();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AFC070E4(0, v6 & ~(v6 >> 63), 0);
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1B2719C70](i, a1);
        sub_1AF0D4478(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1AFC070E4(v9 > 1, v10 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v10 + 1;
        sub_1AF0DB6BC(v16, (v7 + 32 * v10 + 32));
      }
    }

    else
    {
      v11 = (a1 + 32);
      sub_1AF0D4478(0, a2, a3);
      do
      {
        v12 = *v11;
        swift_dynamicCast();
        v17 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AFC070E4(v13 > 1, v14 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v14 + 1;
        sub_1AF0DB6BC(v16, (v7 + 32 * v14 + 32));
        ++v11;
        --v6;
      }

      while (v6);
    }
  }

  return v7;
}

uint64_t sub_1AF3C4360(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1AFC073C4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    sub_1AF449B08(0, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    do
    {

      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC073C4(v5 > 1, v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4480(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1AFC070E4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC070E4(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1AF0DB6BC(&v8, (v2 + 32 * v6 + 32));
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4598(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AFC06FC8(0, v4, 0);
    v5 = v16;
    v10 = a1 + 32;
    sub_1AF43A3CC(0, a2, a3, a4, 1);
    sub_1AF43A3CC(0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component, 1);
    do
    {
      swift_dynamicCast();
      v11 = v15;
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AFC06FC8(v12 > 1, v13 + 1, 1);
        v11 = v15;
      }

      *(v16 + 16) = v13 + 1;
      *(v16 + 16 * v13 + 32) = v11;
      v10 += 16;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1AF3C46D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC07688(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_1AF4455CC(v4, v13);
      sub_1AF449B08(0, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720]);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC07688(v5 > 1, v6 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 88 * v6;
      v8 = v15;
      *(v7 + 32) = v14;
      *(v7 + 48) = v8;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      *(v7 + 112) = v19;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      *(v7 + 64) = v9;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4820(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFC0791C(0, v1, 0);
    v4 = a1 + 48;
    v5 = MEMORY[0x1E69E6158];
    v2 = v13;
    do
    {
      sub_1AF442064(*(v4 - 16));
      sub_1AF0D8108(0, &qword_1EB638398, &type metadata for AnyType, v5);
      sub_1AF4485F8(0, &qword_1EB6383A0, &type metadata for AnyType, v5, "type name ");

      swift_dynamicCast();
      v6 = v11;
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1AFC0791C(v7 > 1, v8 + 1, 1);
        v6 = v11;
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 24 * v8;
      *(v9 + 32) = v6;
      *(v9 + 48) = v12;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4990(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1AFC079BC(0, v1, 0);
    v4 = a1 + 80;
    v2 = v18;
    do
    {
      v11 = *(v4 - 32);
      sub_1AF443EE0(*(v4 - 48));
      sub_1AF444224(v11);
      v5 = MEMORY[0x1E69E6158];
      sub_1AF0D8108(0, &qword_1EB638730, &type metadata for ScriptParameter, MEMORY[0x1E69E6158]);
      sub_1AF4485F8(0, &qword_1EB638738, &type metadata for ScriptParameter, v5, " name ");

      swift_dynamicCast();
      v6 = v14;
      v8 = *(v18 + 16);
      v7 = *(v18 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1AFC079BC(v7 > 1, v8 + 1, 1);
        v6 = v14;
      }

      *(v18 + 16) = v8 + 1;
      v9 = v18 + 56 * v8;
      *(v9 + 32) = v12;
      *(v9 + 40) = v13;
      *(v9 + 48) = v6;
      *(v9 + 64) = v15;
      *(v9 + 72) = v16;
      *(v9 + 80) = v17;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF3C4B50(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + OBJC_IVAR___VFXBidirectionalRemapTable_remapTable) + 24);
  type metadata accessor for RemapContext();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);

  v5 = sub_1AF43B324(v4, sub_1AF4492B8);
  *(v3 + 24) = v2;
  *(v3 + 32) = v5;

  *(v3 + 16) = 1;
  type metadata accessor for AuthoringGraph(0);
  swift_unknownObjectRetain();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v12[2] = v3;
    v12[3] = &off_1F2532090;

    v8 = sub_1AF3FB9C8(sub_1AF42B5A8, v12, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v10 = sub_1AF42A36C(v8, v9, sub_1AF42ADF4);

    *(v7 + 24) = v10;
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id sub_1AF3C4D38(uint64_t a1, uint64_t a2)
{
  v4[16] = 0;
  swift_unknownObjectRetain();
  v2 = sub_1AF3DA770(0, 0x1000000000000000uLL, 0, sub_1AF42B5C4, v4);
  sub_1AF9114A4();
  swift_unknownObjectRelease();

  return v2;
}

char *sub_1AF3C4DC4(uint64_t a1, uint64_t a2)
{
  v7[16] = 1;
  swift_unknownObjectRetain();
  v3 = sub_1AF3DA770(0, 0x1000000000000000uLL, 0, sub_1AF449D00, v7);
  sub_1AF9114A4();
  v4 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v5 = sub_1AFDFC318();
  (*(*(v5 - 8) + 24))(&v3[v4], a1 + v4, v5);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t CFXRGAuthoringGraphCompile(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  swift_unknownObjectRetain();
  LOBYTE(a4) = CFXRGAuthoringGraphCompile(_:_:_:_:)(v7, a2, a3, a4);

  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t CFXRGAuthoringGraphCompile(_:_:_:_:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v36 = a3;
  v42 = a1;
  sub_1AF0D4E74(0);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1AFDFC298();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(type metadata accessor for RenderGraphDiagnostics(0));
  *&v9[OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_rendererInfo] = 0;
  v10 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;
  swift_unknownObjectRetain();
  v11 = MEMORY[0x1E69E7CC0];
  *&v9[v10] = sub_1AF42B620(MEMORY[0x1E69E7CC0], sub_1AF448F00, sub_1AF448F94, sub_1AF449064);
  v12 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v13 = sub_1AFDFC318();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(&v9[v12], 1, 1, v13);
  v16 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;
  *&v9[v16] = sub_1AF42B820(v11, sub_1AF448DE8, sub_1AF448E1C, sub_1AF448EE8);
  *&v9[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics] = v11;
  sub_1AF44832C(&v9[v12], &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  (*(v14 + 16))(&v9[v12], a2 + OBJC_IVAR____TtC3VFX14AuthoringGraph_id, v13);
  v15(&v9[v12], 0, 1, v13);
  v17 = type metadata accessor for GraphDiagnostics(0);
  v43.receiver = v9;
  v43.super_class = v17;
  v18 = objc_msgSendSuper2(&v43, sel_init);
  swift_unknownObjectRelease();
  if (a4)
  {
    v19 = v18;
    *a4 = v18;
    v20 = v18;
  }

  v21 = [v42 scene];
  v22 = *&v21[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v23 = *(v22 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v23 && (, , *(v23 + 24)))
  {
    swift_unknownObjectRetain();

    v24 = sub_1AF6C98C4();
    v25 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v25);
    v35[-2] = v24;
    v35[-1] = &off_1F2532090;

    v26 = sub_1AF3FB9C8(sub_1AF449DA8, &v35[-4], 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v28 = sub_1AF42A36C(v26, v27, sub_1AF42ADF4);

    *(a2 + 24) = v28;

    v29 = v18;
    v30 = sub_1AF9211E0(0, v29);
    v35[1] = 0;
    v32 = v30;

    v33 = v36;
    if (v36)
    {
      v34 = v32;
      *v33 = v32;
    }

    else
    {
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF3C567C(uint64_t a1)
{
  type metadata accessor for RenderGraphNode(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(*v1 + 152);

    v5(&v14, v6);
    v7 = v15;
    v25 = v15;
    v24 = v14;
    v8 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v24, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v23 = v16;
    sub_1AF444058(&v23, &unk_1EB638968, &type metadata for TypeConstraint, v8, sub_1AF449B08);
    v22 = v17;
    sub_1AF44943C(&v22, sub_1AF445C2C);
    v21 = v18;
    sub_1AF44943C(&v21, sub_1AF445C2C);
    v20 = v19;
    sub_1AF444058(&v20, &unk_1EB638978, &type metadata for AnyValue, v8, sub_1AF449B08);
    v9 = *(v7 + 8 * a1 + 32);
    sub_1AF4410A8(v9);
    v10 = sub_1AF444058(&v25, &unk_1EB638968, &type metadata for TypeConstraint, v8, sub_1AF449B08);
    v11 = (*(*v4 + 248))(v10);
    if (a1 < 0 || *(v11 + 16) <= a1)
    {
      sub_1AF441114(v9);

      return 3;
    }

    else
    {
      v12 = *(v11 + a1 + 32);
      sub_1AF441114(v9);

      return v12;
    }
  }

  else
  {
    sub_1AFDFE218();
    sub_1AF9703D8();

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF27960);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF3C592C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_1AF3C5988(v3, a2);
}

void sub_1AF3C5988(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1AF93E128();
  }

  else
  {
    v5 = 0;
  }

  if (sub_1AF3D8564(&unk_1EB6440D0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v4 = swift_conformsToProtocol2();
      if (v4)
      {
        (*(v4 + 24))(v5, ObjectType, v4);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AF3C5A5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v30[0] = a4;
  v9 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 20);
  v14 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v15 = sub_1AFDFC318();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v11[v13], a1 + v14, v15);
  (*(v16 + 56))(&v11[v13], 0, 1, v15);
  v11[v9[8]] = 0;
  *v11 = 0;
  v17 = &v11[v9[6]];
  *v17 = a2;
  v17[8] = a3 & 1 | 0x80;
  v18 = &v11[v9[7]];
  *v18 = v30[0];
  *(v18 + 1) = a5;
  v19 = *(v30[1] + 24);
  sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
  v20 = swift_allocError();
  sub_1AF4495B8(v11, v21, type metadata accessor for GraphError);
  v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v23 = *(v19 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + v22) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1AF420408(0, v23[2] + 1, 1, v23);
    *(v19 + v22) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_1AF420408(v25 > 1, v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  v23[v26 + 4] = v20;
  *(v19 + v22) = v23;
  v27 = swift_allocError();
  sub_1AF445CBC(v11, v28, type metadata accessor for GraphError);
  return v27;
}

BOOL sub_1AF3C5CF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = sub_1AF0D3F10(a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = v8 - 1;
  v10 = (v7 + 40);
  do
  {
    v11 = *v10;
    v10 += 3;
    result = v11 == a1;
  }

  while (v11 != a1 && v9-- != 0);
  return result;
}

__n128 sub_1AF3C5D60(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v7 = [swift_unknownObjectRetain() contents];
  v8 = a1;
  result = a4;
  *&v7[v5 + a3] = a4;
  return result;
}

id sub_1AF3C5DE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v11 = [swift_unknownObjectRetain() storageMode];
  result = swift_unknownObjectRelease();
  if (v11 == 2)
  {
    v13 = 0;
  }

  else
  {
    v14 = [swift_unknownObjectRetain() contents];
    result = a1;
    v13 = &v14[v9];
  }

  v15 = &v13[a3];
  if (a5 <= 4)
  {
    if (a5 <= 1)
    {
      if (a5)
      {
        if (a5 != 1)
        {
          return result;
        }

        result = [a6 inverseViewTransform_];
      }

      else
      {
        result = [a6 viewTransform_];
      }
    }

    else if (a5 == 2)
    {
      result = [a6 projectionTransform_];
    }

    else if (a5 == 3)
    {
      result = [a6 inverseProjectionTransform_];
    }

    else
    {
      result = [a6 viewProjectionTransform_];
    }

    goto LABEL_27;
  }

  if (a5 <= 7)
  {
    if (a5 == 5)
    {
      result = [a6 inverseViewProjectionTransform_];
    }

    else if (a5 == 6)
    {
      result = [a6 cubeFromViewTransform_];
    }

    else
    {
      result = [a6 lastFrameViewProjectionTransform_];
    }

    goto LABEL_27;
  }

  switch(a5)
  {
    case 8:
      result = [a6 inverseTransposeViewTransform_];
LABEL_27:
      *v15 = v16;
      *(v15 + 1) = v17;
      *(v15 + 2) = v18;
      *(v15 + 3) = v19;
      return result;
    case 9:
      result = [a6 nearFar_];
      *v15 = v21;
      break;
    case 10:
      result = [a6 viewportSize_];
      *v15 = v20;
      break;
  }

  return result;
}

id sub_1AF3C5F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v11 = [swift_unknownObjectRetain() storageMode];
  result = swift_unknownObjectRelease();
  if (v11 == 2)
  {
    v13 = 0;
    if (a5 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [swift_unknownObjectRetain() contents];
    result = a1;
    v13 = &v15[v9];
    if (a5 > 1)
    {
LABEL_3:
      if (a5 == 2)
      {
        result = [a6 timeFract];
      }

      else
      {
        if (a5 != 3)
        {
          return result;
        }

        result = [a6 deltaTime];
      }

LABEL_11:
      *&v13[a3] = v14;
      return result;
    }
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    result = [a6 time];
    goto LABEL_11;
  }

  result = [a6 frameIndex];
  *&v13[a3] = result;
  return result;
}

unint64_t sub_1AF3C6090(void *a1, unsigned int a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, size_t a7)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v56 = a2;
  v57 = a6;
  v58 = a7;
  v15 = result + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v16 = *(v15 + *(type metadata accessor for ScriptingConfiguration(0) + 36));
  v18 = a4[5];
  if ((~*(a4 + 10) & 0xFCLL) != 0)
  {
    v20 = a4[2];
    v19 = a4[3];
    v21 = a4[4];
    v22 = v18 & 0x3F;
    if (v18 >> 6 != 1)
    {
      v22 = a4[4];
    }

    v23 = v18 >> 6 ? v22 : a4[5];
    if (v23 && (v23 == 1 || a4[6] >= v16))
    {
      sub_1AF448910(a4[2], a4[3], a4[4], a4[5]);
      v35 = v18 >> 6;
      if (v18 >> 6)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  v24 = *a5;
  v25 = thread_worker_index(v17);
  v26 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v25 != -1)
  {
    v26 += *v25 + 1;
  }

  v27 = *v26;
  sub_1AF443EE0(v24);
  v28 = sub_1AFAE0478(v24, 1, 0, 1, 0, 1, v27, 0, 0);
  if (v31 >= 0xFCu)
  {
    if (*(v14 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) == 1)
    {

      return sub_1AF443F24(v24);
    }

    else
    {
      v36 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
      v59[1] = 0xE000000000000000;

      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
      sub_1AFDFE458();
      v37 = sub_1AFDFDA08();
      v59[0] = 0;
      (*(*v36 + 88))(v37, v59, 0, 0xE000000000000000);

      sub_1AF443F24(v24);
    }
  }

  v20 = v28;
  v19 = v29;
  v21 = v30;
  LOBYTE(v18) = v31;
  sub_1AF443F24(v24);
  if (!(v18 >> 6))
  {
    v34 = v18;
    if (v18)
    {
      goto LABEL_29;
    }

    LOBYTE(v18) = 0;
LABEL_37:
    v42 = sub_1AF0FBD8C(v19, v21);
    v43 = v20;
    v44 = v19;
    v45 = v21;
    if (v20)
    {
      goto LABEL_38;
    }

LABEL_43:
    if (!v44)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v18 >> 6 != 1 && v21 != 0)
  {
    v34 = v21;
LABEL_29:
    if (v34)
    {
      if (v34 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v16;
      }
    }

    else
    {
      v38 = -1;
    }

    v55 = v38;
    v39 = a4[2];
    v40 = a4[3];
    v41 = a4[4];
    v54 = a4[5];
    sub_1AF448910(v20, v19, v21, v18);
    sub_1AF44893C(v39, v40, v41, v54);
    a4[2] = v20;
    a4[3] = v19;
    a4[4] = v21;
    a4[5] = v18;
    a4[6] = v55;
  }

  v35 = v18 >> 6;
  if (!(v18 >> 6))
  {
    goto LABEL_37;
  }

LABEL_36:
  if (v35 == 1)
  {
    goto LABEL_37;
  }

  v48 = thread_worker_index(v32);
  v49 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v48 != -1)
  {
    v49 += *v48 + 1;
  }

  v42 = v20(*v49);
  v43 = v42;
  v44 = v50;
  v45 = v51;
  if (!v42)
  {
    goto LABEL_43;
  }

LABEL_38:
  v46 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v46 == 2)
  {
    v47 = 0;
  }

  else
  {
    v52 = [swift_unknownObjectRetain() contents];
    v53 = a1;
    v47 = &v52[v56];
  }

  v42 = memmove(&v47[v57], v43, v58);
  if (!v44)
  {
    goto LABEL_48;
  }

LABEL_47:
  v44(v42);
  sub_1AF0FB8EC(v44, v45);
LABEL_48:
  sub_1AF4488E4(v20, v19, v21, v18);
}

uint64_t sub_1AF3C654C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1[5];
  v9[4] = v1[4];
  v9[5] = v2;
  v3 = v1[7];
  v9[6] = v1[6];
  v9[7] = v3;
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  v6 = &v9[a1];
  v7 = *v6;
  if (!RGResourceIsNull(v6[1]) && !RGPassIsNull(v7))
  {
    return v7;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF3C6678(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v6 = *(a5 + 16);
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v25 = a5 + 32;
      v23 = *(a5 + 16);
      do
      {
        v10 = (v25 + 16 * v9);
        v11 = *v10;
        v12 = v10[1];
        GPUResourceManager = RGContextGetGPUResourceManager(v8);
        v26 = 0;
        v29 = 0;
        v30[0] = 0;
        RGGPUResourceManagerGetBuffer(GPUResourceManager, v12, &v29, &v26, v30);
        if (*(a6 + 16))
        {
          v14 = v29;
          v15 = v30[0];
          v16 = v26;
          v17 = sub_1AF0D3F10(v11);
          if (v18)
          {
            v19 = *(*(a6 + 56) + 8 * v17);
            v20 = *(v19 + 16);
            if (v20)
            {

              v21 = v19 + 40;
              do
              {
                v22 = *(v21 - 8);
                v26 = v14;
                v27 = v15;
                v28 = v16;

                v22(&v26);

                v21 += 16;
                --v20;
              }

              while (v20);

              v6 = v23;
              v8 = a2;
            }
          }
        }

        ++v9;
      }

      while (v9 != v6);
    }
  }
}

char *sub_1AF3C67D8()
{
  v1 = v0;
  type metadata accessor for _ArrayNode(0);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v2 = *(*(v0 + 16) + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = v2 + 1;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v6 = 16 * v3 + 32;
  while (v4 != ++v3)
  {
    v7 = v6 + 16;

    v8 = sub_1AF9A178C(1, 0);
    v10 = v9;

    v6 = v7;
    if ((v10 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AF4217DC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1AF4217DC(v11 > 1, v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v8;
      goto LABEL_4;
    }
  }

  if (*(v5 + 2) != *(*(v1 + 16) + 16))
  {

    return 0;
  }

  return v5;
}

void *sub_1AF3C694C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6[0] = a1;
      v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = v6;
      return RGResourceIdentifierMake(v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return RGResourceIdentifierMake(v4);
    }
  }

  result = sub_1AFDFE1E8();
  if (!v3)
  {
    return v6[3];
  }

  return result;
}

uint64_t sub_1AF3C69DC(uint64_t a1, CFX::RG::Resource *a2, char a3, uint64_t a4, unint64_t a5)
{
  GPUResourceManager = RGContextGetGPUResourceManager(a1);
  v10 = RGGPUResourceManagerGetTexture(GPUResourceManager, a2);
  v11 = 0;
  if (a3)
  {
    v12 = RGContextGetGPUResourceManager(a1);
    v11 = RGGPUResourceManagerGetPreviousFrameTexture(v12, a2);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v21[2] = v10;
    v21[3] = v11;
    if (a5 == 0xFFFFFFFF || (a5 & 0x80000000) != 0 || a5 >= *(v14 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v15 = (*(v14 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a5), HIDWORD(a5) != 0xFFFFFFFF) && v15[2] != HIDWORD(a5) || (v16 = *(v15 + 2), v17 = *(*(v14 + 144) + 8 * *v15 + 32), *(v17 + 232) > v16) || *(v17 + 240) <= v16)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = **(v14 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v19 = *(v17 + 344);

      os_unfair_lock_lock(v19);
      ecs_stack_allocator_push_snapshot(*(v18 + 32));

      sub_1AFCC71F8(v18, v17, v16, v14, a5, sub_1AF448504, v21);

      ecs_stack_allocator_pop_snapshot(*(v18 + 32));
      os_unfair_lock_unlock(*(v17 + 344));
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1AF3C6C38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  a1[1] = a3;
  return result;
}

uint64_t sub_1AF3C6CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1AF3C6D00(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = v2;
  v6 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  if (sub_1AF3C567C(v11))
  {
    v42 = v10;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1AFDFE218();

    v43 = 0x207475706E49;
    v44 = 0xE600000000000000;
    a2(v45, v12);
    v54 = v46;
    v13 = sub_1AF970A64(0, v46);
    v15 = v14;
    v53 = v45[0];
    v41 = a1;
    v16 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v53, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v52 = v45[1];
    sub_1AF444058(&v52, &unk_1EB638968, &type metadata for TypeConstraint, v16, sub_1AF449B08);
    v51 = v45[2];
    sub_1AF444058(&v51, &unk_1EB638968, &type metadata for TypeConstraint, v16, sub_1AF449B08);
    sub_1AF44943C(&v54, sub_1AF445C2C);
    v50 = v47;
    sub_1AF44943C(&v50, sub_1AF445C2C);
    v49 = v48;
    sub_1AF444058(&v49, &unk_1EB638978, &type metadata for AnyValue, v16, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v13, v15);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v18 = v43;
    v17 = v44;
    v19 = v6[5];
    v20 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v21 = sub_1AFDFC318();
    v22 = *(v21 - 8);
    (*(v22 + 16))(&v8[v19], v4 + v20, v21);
    (*(v22 + 56))(&v8[v19], 0, 1, v21);
    v8[v6[8]] = 0;
    *v8 = 0;
    v23 = &v8[v6[6]];
    *v23 = 0;
    v23[8] = 0x80;
    v24 = &v8[v6[7]];
    *v24 = v18;
    v24[1] = v17;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v25 = swift_allocError();
    sub_1AF4495B8(v8, v26, type metadata accessor for GraphError);
    v27 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v28 = v41;
    v29 = *(v41 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v28;
    *(v28 + v27) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1AF420408(0, v29[2] + 1, 1, v29);
      v31 = v28;
      v29 = v36;
      *(v28 + v27) = v36;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v37 = v29;
      v38 = v31;
      v39 = sub_1AF420408(v32 > 1, v33 + 1, 1, v37);
      v31 = v38;
      v29 = v39;
    }

    v29[2] = v33 + 1;
    v29[v33 + 4] = v25;
    *(v31 + v27) = v29;
    swift_allocError();
    sub_1AF445CBC(v8, v34, type metadata accessor for GraphError);

    swift_willThrow();
  }
}

uint64_t sub_1AF3C7160(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v129 = a1;
  v4 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v127 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v127 - v17;
  v130 = v2;
  v19 = *(v2 + 16);
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  v131 = v20;
  if (sub_1AF3C567C(v21))
  {
    v132 = 0;
    v133 = 0xE000000000000000;
    sub_1AFDFE218();

    v132 = 0x207475706E49;
    v133 = 0xE600000000000000;
    a2(v134, v22);
    v143 = v135;
    v23 = sub_1AF970A64(0, v135);
    v25 = v24;
    v142 = v134[0];
    v26 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v142, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v141 = v134[1];
    sub_1AF444058(&v141, &unk_1EB638968, &type metadata for TypeConstraint, v26, sub_1AF449B08);
    v140 = v134[2];
    sub_1AF444058(&v140, &unk_1EB638968, &type metadata for TypeConstraint, v26, sub_1AF449B08);
    sub_1AF44943C(&v143, sub_1AF445C2C);
    v139 = v136;
    sub_1AF44943C(&v139, sub_1AF445C2C);
    v138 = v137;
    sub_1AF444058(&v138, &unk_1EB638978, &type metadata for AnyValue, v26, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v23, v25);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v27 = v132;
    v28 = v133;
    v29 = v4[5];
    v30 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v31 = sub_1AFDFC318();
    v32 = *(v31 - 8);
    (*(v32 + 16))(&v18[v29], v130 + v30, v31);
    (*(v32 + 56))(&v18[v29], 0, 1, v31);
    v18[v4[8]] = 0;
    *v18 = 0;
    v33 = &v18[v4[6]];
    *v33 = 0;
    v33[8] = 0x80;
    v34 = &v18[v4[7]];
    *v34 = v27;
    v34[1] = v28;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v128 = swift_allocError();
    sub_1AF4495B8(v18, v35, type metadata accessor for GraphError);
    v36 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v37 = v129;
    v38 = *(v129 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v130 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + v36) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420408(0, v38[2] + 1, 1, v38);
      *(v37 + v36) = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_1AF420408(v40 > 1, v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    v38[v41 + 4] = v128;
    *(v37 + v36) = v38;
    swift_allocError();
    sub_1AF445CBC(v18, v42, type metadata accessor for GraphError);

    goto LABEL_30;
  }

  v127 = v9;
  v128 = v6;
  v43 = v4;
  v44 = v130;

  v45 = sub_1AF9A2230(1, 0);

  if ((v45 & 0x100000000) != 0 || v45 < 1)
  {
    v68 = v4;
    v69 = v4[5];
    v70 = v44;
    v71 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v72 = sub_1AFDFC318();
    v73 = *(v72 - 8);
    (*(v73 + 16))(&v15[v69], v70 + v71, v72);
    (*(v73 + 56))(&v15[v69], 0, 1, v72);
    v15[v68[8]] = 0;
    *v15 = 0;
    v74 = &v15[v68[6]];
    *v74 = 1;
    v74[8] = 0x80;
    v75 = &v15[v68[7]];
    *v75 = 0xD000000000000023;
    *(v75 + 1) = 0x80000001AFF28040;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v76 = swift_allocError();
    sub_1AF4495B8(v15, v77, type metadata accessor for GraphError);
    v78 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v79 = v129;
    v80 = *(v129 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    *(v79 + v78) = v80;
    if (v81)
    {
      v82 = v79;
    }

    else
    {
      v119 = sub_1AF420408(0, v80[2] + 1, 1, v80);
      v82 = v129;
      v80 = v119;
      *(v129 + v78) = v119;
    }

    v84 = v80[2];
    v83 = v80[3];
    if (v84 >= v83 >> 1)
    {
      v120 = sub_1AF420408(v83 > 1, v84 + 1, 1, v80);
      v82 = v129;
      v80 = v120;
    }

    v80[2] = v84 + 1;
    v80[v84 + 4] = v76;
    *(v82 + v78) = v80;
    goto LABEL_23;
  }

  v46 = sub_1AF9A2230(1, 0);

  if ((v46 & 0x100000001) != 1)
  {
    v85 = v4[5];
    v86 = v44;
    v87 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v88 = sub_1AFDFC318();
    v89 = *(v88 - 8);
    v90 = v12;
    (*(v89 + 16))(v12 + v85, v86 + v87, v88);
    (*(v89 + 56))(v12 + v85, 0, 1, v88);
    *(v12 + v4[8]) = 0;
    *v12 = 0;
    v91 = v12 + v4[6];
    *v91 = 1;
    v91[8] = 0x80;
    v92 = (v12 + v4[7]);
    *v92 = 0xD000000000000018;
    v92[1] = 0x80000001AFF280C0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v93 = swift_allocError();
    sub_1AF4495B8(v12, v94, type metadata accessor for GraphError);
    v95 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v96 = v129;
    v97 = *(v129 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    *(v96 + v95) = v97;
    if (v98)
    {
      v99 = v96;
    }

    else
    {
      v121 = sub_1AF420408(0, v97[2] + 1, 1, v97);
      v99 = v129;
      v97 = v121;
      *(v129 + v95) = v121;
    }

    v101 = v97[2];
    v100 = v97[3];
    if (v101 >= v100 >> 1)
    {
      v122 = sub_1AF420408(v100 > 1, v101 + 1, 1, v97);
      v99 = v129;
      v97 = v122;
    }

    v97[2] = v101 + 1;
    v97[v101 + 4] = v93;
    *(v99 + v95) = v97;
    swift_allocError();
    v67 = v90;
    goto LABEL_29;
  }

  v47 = sub_1AF9A2230(1, 0);

  if ((v47 & 0x100000000) != 0 || v47 < 1)
  {
    v128 = 0x80000001AFF28070;
    v103 = v43[5];
    v104 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v105 = sub_1AFDFC318();
    v106 = *(v105 - 8);
    v15 = v127;
    (*(v106 + 16))(&v127[v103], v44 + v104, v105);
    (*(v106 + 56))(&v15[v103], 0, 1, v105);
    v15[v43[8]] = 0;
    *v15 = 0;
    v107 = &v15[v43[6]];
    *v107 = 2;
    v107[8] = 0x80;
    v108 = &v15[v43[7]];
    v109 = v128;
    *v108 = 0xD000000000000024;
    *(v108 + 1) = v109;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v110 = swift_allocError();
    sub_1AF4495B8(v15, v111, type metadata accessor for GraphError);
    v112 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v113 = v129;
    v114 = *(v129 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    *(v113 + v112) = v114;
    if (v115)
    {
      v116 = v113;
    }

    else
    {
      v123 = sub_1AF420408(0, v114[2] + 1, 1, v114);
      v116 = v129;
      v114 = v123;
      *(v129 + v112) = v123;
    }

    v118 = v114[2];
    v117 = v114[3];
    if (v118 >= v117 >> 1)
    {
      v124 = sub_1AF420408(v117 > 1, v118 + 1, 1, v114);
      v116 = v129;
      v114 = v124;
    }

    v114[2] = v118 + 1;
    v114[v118 + 4] = v110;
    *(v116 + v112) = v114;
LABEL_23:
    swift_allocError();
    v67 = v15;
LABEL_29:
    sub_1AF445CBC(v67, v66, type metadata accessor for GraphError);
LABEL_30:
    swift_willThrow();
  }

  v48 = sub_1AF9A2230(1, 0);

  if ((v48 & 0x100000001) != 1)
  {
    v49 = v43;
    v50 = v43[5];
    v51 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v52 = sub_1AFDFC318();
    v53 = *(v52 - 8);
    v54 = v128;
    (*(v53 + 16))(v128 + v50, v44 + v51, v52);
    (*(v53 + 56))(&v54[v50], 0, 1, v52);
    v54[v49[8]] = 0;
    *v54 = 0;
    v55 = &v54[v49[6]];
    *v55 = 2;
    v55[8] = 0x80;
    v56 = &v54[v49[7]];
    *v56 = 0xD000000000000019;
    *(v56 + 1) = 0x80000001AFF280A0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v57 = swift_allocError();
    sub_1AF4495B8(v54, v58, type metadata accessor for GraphError);
    v59 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v60 = v129;
    v61 = *(v129 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(v60 + v59) = v61;
    if (v62)
    {
      v63 = v60;
    }

    else
    {
      v125 = sub_1AF420408(0, v61[2] + 1, 1, v61);
      v63 = v129;
      v61 = v125;
      *(v129 + v59) = v125;
    }

    v65 = v61[2];
    v64 = v61[3];
    if (v65 >= v64 >> 1)
    {
      v126 = sub_1AF420408(v64 > 1, v65 + 1, 1, v61);
      v63 = v129;
      v61 = v126;
    }

    v61[2] = v65 + 1;
    v61[v65 + 4] = v57;
    *(v63 + v59) = v61;
    swift_allocError();
    v67 = v128;
    goto LABEL_29;
  }
}

uint64_t sub_1AF3C7F8C(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v144 = a1;
  v4 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v140 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v140 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v140 - v17;
  v145 = v2;
  v19 = *(v2 + 16);
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  v146 = v20;
  if (sub_1AF3C567C(v21))
  {
    v147 = 0;
    v148 = 0xE000000000000000;
    sub_1AFDFE218();

    v147 = 0x207475706E49;
    v148 = 0xE600000000000000;
    a2(v149, v22);
    v158 = v150;
    v23 = sub_1AF970A64(0, v150);
    v25 = v24;
    v157 = v149[0];
    v26 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v157, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v156 = v149[1];
    sub_1AF444058(&v156, &unk_1EB638968, &type metadata for TypeConstraint, v26, sub_1AF449B08);
    v155 = v149[2];
    sub_1AF444058(&v155, &unk_1EB638968, &type metadata for TypeConstraint, v26, sub_1AF449B08);
    sub_1AF44943C(&v158, sub_1AF445C2C);
    v154 = v151;
    sub_1AF44943C(&v154, sub_1AF445C2C);
    v153 = v152;
    sub_1AF444058(&v153, &unk_1EB638978, &type metadata for AnyValue, v26, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v23, v25);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v27 = v147;
    v28 = v148;
    v29 = v4[5];
    v30 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v31 = sub_1AFDFC318();
    v32 = *(v31 - 8);
    (*(v32 + 16))(&v18[v29], v145 + v30, v31);
    (*(v32 + 56))(&v18[v29], 0, 1, v31);
    v18[v4[8]] = 0;
    *v18 = 0;
    v33 = &v18[v4[6]];
    *v33 = 0;
    v33[8] = 0x80;
    v34 = &v18[v4[7]];
    *v34 = v27;
    v34[1] = v28;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v143 = swift_allocError();
    sub_1AF4495B8(v18, v35, type metadata accessor for GraphError);
    v36 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v37 = v144;
    v38 = *(v144 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v145 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + v36) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AF420408(0, v38[2] + 1, 1, v38);
      *(v37 + v36) = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_1AF420408(v40 > 1, v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    v38[v41 + 4] = v143;
    *(v37 + v36) = v38;
    swift_allocError();
    sub_1AF445CBC(v18, v42, type metadata accessor for GraphError);

    goto LABEL_22;
  }

  v142 = v9;
  v143 = v12;
  v141 = v6;
  v43 = v4;
  v44 = v145;

  v45 = sub_1AF9A8AD0();
  v47 = v46;

  if (!v47 || (, v45 <= 0))
  {
    v71 = v43;
    v72 = v43[5];
    v73 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v74 = sub_1AFDFC318();
    v75 = v44;
    v76 = v74;
    v77 = *(v74 - 8);
    (*(v77 + 16))(&v15[v72], v75 + v73, v74);
    (*(v77 + 56))(&v15[v72], 0, 1, v76);
    v15[v71[8]] = 0;
    *v15 = 0;
    v78 = &v15[v71[6]];
    *v78 = 1;
    v78[8] = 0x80;
    v79 = &v15[v71[7]];
    *v79 = 0xD000000000000023;
    *(v79 + 1) = 0x80000001AFF28040;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v80 = swift_allocError();
    sub_1AF4495B8(v15, v81, type metadata accessor for GraphError);
    v82 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v83 = v144;
    v84 = *(v144 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *(v83 + v82) = v84;
    if (v85)
    {
      v86 = v83;
    }

    else
    {
      v132 = sub_1AF420408(0, v84[2] + 1, 1, v84);
      v86 = v144;
      v84 = v132;
      *(v144 + v82) = v132;
    }

    v88 = v84[2];
    v87 = v84[3];
    if (v88 >= v87 >> 1)
    {
      v133 = sub_1AF420408(v87 > 1, v88 + 1, 1, v84);
      v86 = v144;
      v84 = v133;
    }

    v84[2] = v88 + 1;
    v84[v88 + 4] = v80;
    *(v86 + v82) = v84;
    swift_allocError();
    v70 = v15;
    goto LABEL_21;
  }

  v48 = sub_1AF9A8AD0();
  v50 = v49;

  if (!v50 || (, (v48 & 1) == 0))
  {
    v51 = v44;
    v52 = v43;
    v53 = v43[5];
    v54 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v55 = sub_1AFDFC318();
    v56 = *(v55 - 8);
    v57 = v143;
    (*(v56 + 16))(v143 + v53, v51 + v54, v55);
    (*(v56 + 56))(&v57[v53], 0, 1, v55);
    v57[v52[8]] = 0;
    *v57 = 0;
    v58 = &v57[v52[6]];
    *v58 = 1;
    v58[8] = 0x80;
    v59 = &v57[v52[7]];
    *v59 = 0xD000000000000018;
    *(v59 + 1) = 0x80000001AFF280C0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v60 = swift_allocError();
    sub_1AF4495B8(v57, v61, type metadata accessor for GraphError);
    v62 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v63 = v144;
    v64 = *(v144 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + v62) = v64;
    if (v65)
    {
      v66 = v63;
    }

    else
    {
      v134 = sub_1AF420408(0, v64[2] + 1, 1, v64);
      v66 = v144;
      v64 = v134;
      *(v144 + v62) = v134;
    }

    v68 = v64[2];
    v67 = v64[3];
    if (v68 >= v67 >> 1)
    {
      v135 = sub_1AF420408(v67 > 1, v68 + 1, 1, v64);
      v66 = v144;
      v64 = v135;
    }

    v64[2] = v68 + 1;
    v64[v68 + 4] = v60;
    *(v66 + v62) = v64;
    swift_allocError();
    v70 = v57;
LABEL_21:
    sub_1AF445CBC(v70, v69, type metadata accessor for GraphError);
LABEL_22:
    swift_willThrow();
  }

  v90 = v44;

  sub_1AF9A8AD0();
  v92 = v91;
  v94 = v93;

  if (!v94 || (, v92 <= 0))
  {
    v115 = v43[5];
    v116 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v117 = sub_1AFDFC318();
    v118 = *(v117 - 8);
    v119 = v90 + v116;
    v120 = v142;
    (*(v118 + 16))(&v142[v115], v119, v117);
    (*(v118 + 56))(&v120[v115], 0, 1, v117);
    v120[v43[8]] = 0;
    *v120 = 0;
    v121 = &v120[v43[6]];
    *v121 = 1;
    v121[8] = 0x80;
    v122 = &v120[v43[7]];
    *v122 = 0xD000000000000024;
    *(v122 + 1) = 0x80000001AFF28070;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v123 = swift_allocError();
    sub_1AF4495B8(v120, v124, type metadata accessor for GraphError);
    v125 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v126 = v144;
    v127 = *(v144 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    *(v126 + v125) = v127;
    if (v128)
    {
      v129 = v126;
    }

    else
    {
      v136 = sub_1AF420408(0, v127[2] + 1, 1, v127);
      v129 = v144;
      v127 = v136;
      *(v144 + v125) = v136;
    }

    v131 = v127[2];
    v130 = v127[3];
    if (v131 >= v130 >> 1)
    {
      v137 = sub_1AF420408(v130 > 1, v131 + 1, 1, v127);
      v129 = v144;
      v127 = v137;
    }

    v127[2] = v131 + 1;
    v127[v131 + 4] = v123;
    *(v129 + v125) = v127;
    swift_allocError();
    v70 = v120;
    goto LABEL_21;
  }

  sub_1AF9A8AD0();
  v96 = v95;
  v98 = v97;

  if (!v98 || (, (v96 & 1) == 0))
  {
    v99 = v43[5];
    v100 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v101 = sub_1AFDFC318();
    v102 = *(v101 - 8);
    v103 = v141;
    (*(v102 + 16))(&v141[v99], v90 + v100, v101);
    (*(v102 + 56))(&v103[v99], 0, 1, v101);
    v103[v43[8]] = 0;
    *v103 = 0;
    v104 = &v103[v43[6]];
    *v104 = 1;
    v104[8] = 0x80;
    v105 = &v103[v43[7]];
    *v105 = 0xD000000000000019;
    *(v105 + 1) = 0x80000001AFF280A0;
    sub_1AF43A5EC(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v106 = swift_allocError();
    sub_1AF4495B8(v103, v107, type metadata accessor for GraphError);
    v108 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v109 = v144;
    v110 = *(v144 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    *(v109 + v108) = v110;
    if (v111)
    {
      v112 = v109;
    }

    else
    {
      v138 = sub_1AF420408(0, v110[2] + 1, 1, v110);
      v112 = v144;
      v110 = v138;
      *(v144 + v108) = v138;
    }

    v114 = v110[2];
    v113 = v110[3];
    if (v114 >= v113 >> 1)
    {
      v139 = sub_1AF420408(v113 > 1, v114 + 1, 1, v110);
      v112 = v144;
      v110 = v139;
    }

    v110[2] = v114 + 1;
    v110[v114 + 4] = v106;
    *(v112 + v108) = v110;
    swift_allocError();
    v70 = v141;
    goto LABEL_21;
  }
}

void sub_1AF3C8DE4(uint64_t a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = *(a2 + 80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *(*(a4 + 16) + 40);
  v10 = a3[5];
  v36 = a3[4];
  v37 = v10;
  v11 = a3[7];
  v38 = a3[6];
  v39 = v11;
  v12 = a3[1];
  v32 = *a3;
  v33 = v12;
  v13 = a3[3];
  v34 = a3[2];
  v35 = v13;
  v14 = (&v32 + v9);
  v15 = *v14;
  v16 = v14[1];
  if (RGResourceIsNull(v16) || RGPassIsNull(v15))
  {
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {

    v17 = sub_1AF9A8AD0();
    v19 = v18;

    if (v19)
    {
    }

    else
    {
      v17 = 0;
    }

    sub_1AF9A8AD0();
    v21 = v20;
    v23 = v22;

    if (v23)
    {
    }

    else
    {
      v21 = 0;
    }

    sub_1AF24F318(v28, Strong, "Erode", v16, 3, v17, v21, v30, a1);

    sub_1AF448404(v30);
    v38 = v30[6];
    v39 = v30[7];
    v40 = v31;
    v34 = v30[2];
    v35 = v30[3];
    v36 = v30[4];
    v37 = v30[5];
    v32 = v30[0];
    v33 = v30[1];
    nullsub_106();
    v24 = v39;
    *(a5 + 96) = v38;
    *(a5 + 112) = v24;
    *(a5 + 128) = v40;
    v25 = v35;
    *(a5 + 32) = v34;
    *(a5 + 48) = v25;
    v26 = v37;
    *(a5 + 64) = v36;
    *(a5 + 80) = v26;
    v27 = v33;
    *a5 = v32;
    *(a5 + 16) = v27;
  }
}

uint64_t sub_1AF3C9078(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Name)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3C9170(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Parent)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3C9244@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for WorldTransform)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

unint64_t sub_1AF3C9330@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for InverseWorldTransform)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1AF3C941C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x2000000;
  }

  result = 0x2000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for TextureLoadPolicy)
        {
          v13 = (*(v11 - 2) + 4 * v6 + *(v7 + 128));
          v14 = *(v13 + 3);
          v15 = *v13 | (*(v13 + 2) << 16);
          if (v14)
          {
            v16 = 0x1000000;
          }

          else
          {
            v16 = 0;
          }

          return v15 | v16;
        }
      }

      return 0x2000000;
    }
  }

  return result;
}

unint64_t sub_1AF3C94FC@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for TextureCPURuntime)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v12 = v11[3];
          v14 = *v11;
          v13 = v11[1];
          v18[2] = v11[2];
          v18[3] = v12;
          v18[0] = v14;
          v18[1] = v13;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          v16 = v11[3];
          a2[2] = v11[2];
          a2[3] = v16;
          return sub_1AF44222C(v18, &v17);
        }
      }
    }
  }

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_1AF3C9600(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Seed)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

uint64_t sub_1AF3C96D8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for MetalScriptReflection)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3C97D8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) != 0xFFFFFFFF && v4[2] != HIDWORD(a1))
    {
      return 1;
    }

    v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    result = 1;
    while (--v7)
    {
      v8 = *v6;
      v6 += 5;
      if (v8 == &type metadata for TextureGPURuntime)
      {
        swift_unknownObjectRetain();
        return swift_unknownObjectRetain();
      }
    }
  }

  return result;
}

uint64_t sub_1AF3C98DC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 512;
  }

  result = 512;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for RenderGraphTextureTarget)
        {
          v13 = *(v11 - 2) + 2 * v6 + *(v7 + 128);
          v14 = *v13;
          if (v13[1])
          {
            v15 = 256;
          }

          else
          {
            v15 = 0;
          }

          return v15 | v14;
        }
      }

      return 512;
    }
  }

  return result;
}

unint64_t sub_1AF3C99B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_3;
  }

  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for LocalAABB)
        {
          v7 = 0;
          v16 = (&(*(v14 - 2))[2 * v9].Kind + *(v10 + 128));
          v3 = *v16;
          v4 = v16[1];
          v5 = v16[2];
          v6 = v16[3];
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1AF3C9AB8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for ProjectionMatrix)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1AF3C9BA4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for Children)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3C9C7C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Opacity)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1AF3C9D58(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Scale3)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3C9E44(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Scale1)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1AF3C9F20(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Scale2)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3C9FF4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Position)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CA0E0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Orientation)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CA1CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for EmitterDescription)
        {
          v11 = *(v9 - 2) + 104 * v4 + *(v5 + 128);
          v13 = *(v11 + 16);
          v12 = *(v11 + 32);
          v23[0] = *v11;
          v23[1] = v13;
          v23[2] = v12;
          v15 = *(v11 + 64);
          v14 = *(v11 + 80);
          v16 = *(v11 + 48);
          v24 = *(v11 + 96);
          v23[4] = v15;
          v23[5] = v14;
          v23[3] = v16;
          v17 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v17;
          v18 = *(v11 + 32);
          v19 = *(v11 + 48);
          v20 = *(v11 + 64);
          v21 = *(v11 + 80);
          *(a2 + 96) = *(v11 + 96);
          *(a2 + 64) = v20;
          *(a2 + 80) = v21;
          *(a2 + 32) = v18;
          *(a2 + 48) = v19;
          return sub_1AF445DA0(v23, v22);
        }
      }
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_1AF3CA308(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for IBLGenerator)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1AF3CA3E4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for MeshModel)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CA4E8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ModelRenderer)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CA5D4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for IBLRuntime)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

void sub_1AF3CA6C0(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v11 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v12 = *(v11 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v11[2] == HIDWORD(a1))
    {
      v13 = *(*(v2 + 144) + 8 * *v11 + 32);
      v14 = *(v13 + 48);
      v15 = (v14 + 32);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 5;
        v18 = *v15;
        v15 += 5;
        if (v18 == &type metadata for MaterialRuntime)
        {
          v19 = (&(*(v17 - 2))[15 * v12].Kind + *(v13 + 128));
          v21 = v19[1];
          v20 = v19[2];
          v39[0] = *v19;
          v39[1] = v21;
          v39[2] = v20;
          v22 = v19[6];
          v24 = v19[3];
          v23 = v19[4];
          v39[5] = v19[5];
          v39[6] = v22;
          v39[3] = v24;
          v39[4] = v23;
          v25 = v19[10];
          v27 = v19[7];
          v26 = v19[8];
          v39[9] = v19[9];
          v39[10] = v25;
          v39[7] = v27;
          v39[8] = v26;
          v28 = v19[14];
          v30 = v19[11];
          v29 = v19[12];
          v39[13] = v19[13];
          v39[14] = v28;
          v39[11] = v30;
          v39[12] = v29;
          memmove(&__dst, v19, 0xF0uLL);
          nullsub_106();
          v31 = v53;
          a2[12] = v52;
          a2[13] = v31;
          a2[14] = v54;
          v32 = v49;
          a2[8] = v48;
          a2[9] = v32;
          v33 = v51;
          a2[10] = v50;
          a2[11] = v33;
          v34 = v45;
          a2[4] = v44;
          a2[5] = v34;
          v35 = v47;
          a2[6] = v46;
          a2[7] = v35;
          v36 = v41;
          *a2 = __dst;
          a2[1] = v36;
          v37 = v43;
          a2[2] = v42;
          a2[3] = v37;
          sub_1AF442498(v39, &v38);
          return;
        }
      }
    }
  }

  sub_1AF442470(&__dst);
  v4 = v53;
  a2[12] = v52;
  a2[13] = v4;
  a2[14] = v54;
  v5 = v49;
  a2[8] = v48;
  a2[9] = v5;
  v6 = v51;
  a2[10] = v50;
  a2[11] = v6;
  v7 = v45;
  a2[4] = v44;
  a2[5] = v7;
  v8 = v47;
  a2[6] = v46;
  a2[7] = v8;
  v9 = v41;
  *a2 = __dst;
  a2[1] = v9;
  v10 = v43;
  a2[2] = v42;
  a2[3] = v10;
}

__n128 sub_1AF3CA934@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for CameraBloom)
        {
          v12 = &(*(v10 - 2))[4 * v5] + *(v6 + 128);
          v13 = *(v12 + 1);
          *a2 = *v12;
          *(a2 + 16) = v13;
          *(a2 + 32) = *(v12 + 2);
          result = *(v12 + 41);
          *(a2 + 41) = result;
          return result;
        }
      }
    }
  }

  *(a2 + 48) = 0;
  result.n128_u64[0] = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 2;
  return result;
}

uint64_t sub_1AF3CAA18(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for ScriptsHolder)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CAB74(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for CameraDepthOfField)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CAC48(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x300000000;
  }

  result = 0x300000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for CameraLensBlur)
        {
          v13 = (&(*(v11 - 2))[v6] + *(v7 + 128));
          return *v13 | (*(v13 + 4) << 32);
        }
      }

      return 0x300000000;
    }
  }

  return result;
}

uint64_t sub_1AF3CAD28(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for CameraVignetting)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3CAE14@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for CameraColorGrading)
        {
          v12 = &(*(v10 - 2))[7 * v5] + *(v6 + 128);
          v13 = *(v12 + 80);
          *(a2 + 64) = *(v12 + 64);
          *(a2 + 80) = v13;
          *(a2 + 92) = *(v12 + 92);
          v14 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v14;
          result = *(v12 + 48);
          *(a2 + 32) = *(v12 + 32);
          *(a2 + 48) = result;
          *(a2 + 108) = 0;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 108) = 1;
  return result;
}

uint64_t sub_1AF3CAF2C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 4;
  }

  result = 4;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for CameraToneMapping)
        {
          return *(&(*(v11 - 2))->Kind + *(v7 + 128) + v6);
        }
      }

      return 4;
    }
  }

  return result;
}

unint64_t sub_1AF3CAFEC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if (result != 0xFFFFFFFF)
  {
    v4 = 1;
    if ((result & 0x80000000) != 0 || result >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      goto LABEL_3;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v7 = *(v6 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v6[2] == HIDWORD(result))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for RenderSettings)
        {
          v4 = 0;
          v14 = (&(*(v12 - 2))[2 * v7].Kind + *(v8 + 128));
          v3 = *v14;
          v5 = v14[1];
          goto LABEL_4;
        }
      }
    }
  }

  v4 = 1;
LABEL_3:
  v5 = 0uLL;
LABEL_4:
  *a2 = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return result;
}

void sub_1AF3CB0C0(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for EmitterRuntime)
        {
          sub_1AF442324(&(*(v9 - 2))[53 * v4] + *(v5 + 128), a2);
          return;
        }
      }
    }
  }

  bzero(a2, 0x348uLL);
}

unint64_t sub_1AF3CB184@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Material)
        {
          v11 = *(v9 - 2) + 104 * v4 + *(v5 + 128);
          v13 = *(v11 + 16);
          v12 = *(v11 + 32);
          v23[0] = *v11;
          v23[1] = v13;
          v23[2] = v12;
          v15 = *(v11 + 64);
          v14 = *(v11 + 80);
          v16 = *(v11 + 48);
          v24 = *(v11 + 96);
          v23[4] = v15;
          v23[5] = v14;
          v23[3] = v16;
          v17 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v17;
          v18 = *(v11 + 32);
          v19 = *(v11 + 48);
          v20 = *(v11 + 64);
          v21 = *(v11 + 80);
          *(a2 + 96) = *(v11 + 96);
          *(a2 + 64) = v20;
          *(a2 + 80) = v21;
          *(a2 + 32) = v18;
          *(a2 + 48) = v19;
          return sub_1AF4424F4(v23, v22);
        }
      }
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1AF3CB338(unint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v7 = a1;
    if (a1 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v8 = HIDWORD(a1);
      v9 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7);
      v10 = *(v9 + 2);
      if (v8 == 0xFFFFFFFF || v9[2] == v8)
      {
        v11 = *(*(v4 + 144) + 8 * *v9 + 32);
        v12 = *(v11 + 48);
        sub_1AF446CC4(0, a2, a3, a4, type metadata accessor for ScriptStateRestoration);
        v14 = (v12 + 32);
        v15 = *(v12 + 16) + 1;
        while (--v15)
        {
          v16 = v14 + 5;
          v17 = *v14;
          v14 += 5;
          if (v17 == v13)
          {
            v18 = *(*(v11 + 128) + *(v16 - 2) + 16 * v10);

            return v18;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1AF3CB570@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for GraphScriptingConfig)
        {
          v11 = (&(*(v9 - 2))[2 * v4] + *(v5 + 128));
          v12 = *(v11 + 1);
          v13 = *(v11 + 2);
          v14 = *(v11 + 24);
          v15 = *(v11 + 25);
          v16 = *(v11 + 26);
          v17 = *v11;
          if (v15)
          {
            v18 = 256;
          }

          else
          {
            v18 = 0;
          }

          *a2 = v17;
          *(a2 + 8) = v12;
          *(a2 + 16) = v13;
          *(a2 + 26) = v16 != 0;
          *(a2 + 24) = v18 | v14;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 23) = 0;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_1AF3CB6AC@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for GraphEntityComponentPropertyReferences)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v13 = v11[1];
          v12 = v11[2];
          v14 = *v11;
          *&v18[9] = *(v11 + 41);
          v17[1] = v13;
          *v18 = v12;
          v17[0] = v14;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          a2[2] = v11[2];
          *(a2 + 41) = *(v11 + 41);
          return sub_1AF43D794(v17, &v16);
        }
      }
    }
  }

  *(a2 + 41) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1AF3CB7C4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for VFXTag)
        {
          v13 = *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CB8BC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for GraphComponent)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CB9BC@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for Skeleton)
      {
        v17 = (&(*(v15 - 2))->Kind + 40 * v9 + *(v11 + 128));
        v3 = *v17;
        v4 = v17[1];
        v5 = v17[2];
        v6 = v17[3];
        v7 = v17[4];

        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t sub_1AF3CBB44(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for TextureRequireMipmap)
        {
          return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CBC2C@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for SceneFileAsset)
        {
          v11 = (&(*(v9 - 2))[4 * v4].Kind + *(v5 + 128));
          v12 = v11[3];
          v14 = *v11;
          v13 = v11[1];
          v18[2] = v11[2];
          v18[3] = v12;
          v18[0] = v14;
          v18[1] = v13;
          v15 = v11[1];
          *a2 = *v11;
          a2[1] = v15;
          v16 = v11[3];
          a2[2] = v11[2];
          a2[3] = v16;
          return sub_1AF4402F0(v18, &v17);
        }
      }
    }
  }

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

unint64_t sub_1AF3CBD30(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 5;
  }

  result = 5;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 5;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    result = 5;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for TextureRequireMask)
      {
        v13 = &(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128);
        return *v13 | (*(v13 + 1) << 32);
      }
    }
  }

  return result;
}

unint64_t sub_1AF3CBE00@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for LastFrameWorldTransform)
        {
          v3 = 0;
          v16 = (&(*(v14 - 2))[4 * v9].Kind + *(v10 + 128));
          v4 = *v16;
          v5 = v16[1];
          v6 = v16[2];
          v7 = v16[3];
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 1;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_3:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

double sub_1AF3CBEEC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v11 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v12 = *(v11 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v11[2] == HIDWORD(a1))
    {
      v13 = *(*(v2 + 144) + 8 * *v11 + 32);
      v14 = *(v13 + 48);
      v15 = (v14 + 32);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 5;
        v18 = *v15;
        v15 += 5;
        if (v18 == &type metadata for EmitterShape)
        {
          memmove(v19, &(*(v17 - 2))[14 * v12] + *(v13 + 128), 0xD1uLL);
          nullsub_106();
          goto LABEL_3;
        }
      }
    }
  }

  sub_1AF442288(v19);
LABEL_3:
  v4 = v19[11];
  *(a2 + 160) = v19[10];
  *(a2 + 176) = v4;
  *(a2 + 192) = v19[12];
  *(a2 + 208) = v20;
  v5 = v19[7];
  *(a2 + 96) = v19[6];
  *(a2 + 112) = v5;
  v6 = v19[9];
  *(a2 + 128) = v19[8];
  *(a2 + 144) = v6;
  v7 = v19[3];
  *(a2 + 32) = v19[2];
  *(a2 + 48) = v7;
  v8 = v19[5];
  *(a2 + 64) = v19[4];
  *(a2 + 80) = v8;
  result = *v19;
  v10 = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1AF3CC024(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleAngleInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC0F8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleAngleVelocityInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC1CC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleAngularVelocityInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CC2D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorInit)
        {
          v11 = &(*(v9 - 2))[5 * v4] + *(v5 + 128);
          v20[0] = *v11;
          v13 = *(v11 + 32);
          v12 = *(v11 + 48);
          v14 = *(v11 + 16);
          v21 = *(v11 + 64);
          v20[2] = v13;
          v20[3] = v12;
          v20[1] = v14;
          v15 = *v11;
          v16 = *(v11 + 16);
          v17 = *(v11 + 32);
          v18 = *(v11 + 48);
          *(a2 + 64) = *(v11 + 64);
          *(a2 + 32) = v17;
          *(a2 + 48) = v18;
          *a2 = v15;
          *(a2 + 16) = v16;
          return sub_1AF4422C8(v20, &v19);
        }
      }
    }
  }

  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_1AF3CC3F4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleGrowEmitter)
        {
          v12 = &(*(v10 - 2))[4 * v5] + *(v6 + 128);
          v13 = *(v12 + 1);
          v14 = *(v12 + 10);
          v15 = *(v12 + 6);
          v16 = *(v12 + 14);
          *a2 = *v12;
          *(a2 + 16) = v13;
          result = *(v12 + 4);
          *(a2 + 32) = result;
          *(a2 + 40) = v14;
          *(a2 + 48) = v15;
          *(a2 + 56) = v16;
          return result;
        }
      }
    }
  }

  *a2 = 3;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1AF3CC4F4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleLifeInit)
      {
        return *(&(*(v11 - 2))->Kind + 12 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC5D0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleMassInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC6A4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleOrientationInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CC7A8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticlePivotInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3CC8AC@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleSizeInit)
        {
          v11 = *(v9 - 2) + 28 * v4 + *(v5 + 128);
          v12 = *(v11 + 6);
          *a2 = *v11 | (*(v11 + 1) << 32);
          result = *(v11 + 8);
          *(a2 + 8) = result;
          *(a2 + 24) = v12;
          return result;
        }
      }
    }
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 3;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1AF3CC994(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleTargetFromPositionInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CCA98(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleTextureFrameInit)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CCB6C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleVelocityInit)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CCC68(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for TextureRequireAnimationRepresentation)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CCD70@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_3;
  }

  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for WorldAABB)
        {
          v7 = 0;
          v16 = (&(*(v14 - 2))[2 * v9].Kind + *(v10 + 128));
          v3 = *v16;
          v4 = v16[1];
          v5 = v16[2];
          v6 = v16[3];
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void sub_1AF3CCE74(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v10 = *(v9 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v9[2] == HIDWORD(a1))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 5;
        v16 = *v13;
        v13 += 5;
        if (v16 == &type metadata for PrimitiveGenerator)
        {
          v17 = (&(*(v15 - 2))[11 * v10].Kind + *(v11 + 128));
          v19 = v17[1];
          v18 = v17[2];
          v32[0] = *v17;
          v32[1] = v19;
          v32[2] = v18;
          v20 = v17[6];
          v22 = v17[3];
          v21 = v17[4];
          v32[5] = v17[5];
          v32[6] = v20;
          v32[3] = v22;
          v32[4] = v21;
          v24 = v17[8];
          v23 = v17[9];
          v25 = v17[7];
          *(v33 + 9) = *(v17 + 153);
          v32[8] = v24;
          v33[0] = v23;
          v32[7] = v25;
          memmove(&__dst, v17, 0xA9uLL);
          nullsub_106();
          v26 = v43[0];
          a2[8] = v42;
          a2[9] = v26;
          *(a2 + 153) = *(v43 + 9);
          v27 = v39;
          a2[4] = v38;
          a2[5] = v27;
          v28 = v41;
          a2[6] = v40;
          a2[7] = v28;
          v29 = v35;
          *a2 = __dst;
          a2[1] = v29;
          v30 = v37;
          a2[2] = v36;
          a2[3] = v30;
          sub_1AF445D44(v32, &v31);
          return;
        }
      }
    }
  }

  sub_1AF445D24(&__dst);
  v4 = v43[0];
  a2[8] = v42;
  a2[9] = v4;
  *(a2 + 153) = *(v43 + 9);
  v5 = v39;
  a2[4] = v38;
  a2[5] = v5;
  v6 = v41;
  a2[6] = v40;
  a2[7] = v6;
  v7 = v35;
  *a2 = __dst;
  a2[1] = v7;
  v8 = v37;
  a2[2] = v36;
  a2[3] = v8;
}

uint64_t sub_1AF3CD020(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(v1 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for MaterialRuntimeTable)
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CD0F8(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleSpawnID)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CD1CC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for RenderingOrder)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3CD2A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v8 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v9[2] == HIDWORD(result))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v4 = *(v12 + 16) + 1;
      while (--v4)
      {
        v14 = v13 + 5;
        v15 = *v13;
        v13 += 5;
        if (v15 == &type metadata for ParticleLocalBoxCollider)
        {
          v16 = &(*(v14 - 2))[3 * v10] + *(v11 + 128);
          v3 = *v16;
          v4 = *(v16 + 8);
          v5 = *(v16 + 16);
          v6 = *(v16 + 24);
          v7 = *(v16 + 32);
          v8 = *(v16 + 40);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

unint64_t sub_1AF3CD3CC@<X0>(unint64_t result@<X0>, uint64_t a3@<X8>)
{
  v4 = 0uLL;
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v5 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0 || result >= *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = 0;
    goto LABEL_13;
  }

  v8 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
  v9 = *(v8 + 2);
  if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
  {
    v10 = a3;
    v11 = *(*(v3 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    v7 = 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for SDFRuntimeData)
      {
        v17 = *(v15 - 2) + 40 * v9 + *(v11 + 128);
        v18 = *v17;
        v5 = *(v17 + 16);
        v7 = *(v17 + 24);
        v6 = *(v17 + 32);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRetain();
        v4 = v18;
        a3 = v10;
        goto LABEL_13;
      }
    }

    v5 = 0;
    v6 = 0;
    a3 = v10;
  }

  else
  {
LABEL_2:
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

LABEL_13:
  *a3 = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  *(a3 + 32) = v6;
  return result;
}

uint64_t sub_1AF3CD518(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleCollide)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CD61C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for Attach)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

unint64_t sub_1AF3CD6F4(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for DistanceConstraint)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3CD7D0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  result = 2;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 2;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    result = 2;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for OrientationConstraint)
      {
        v13 = &(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128);
        return *v13 | (*(v13 + 1) << 32);
      }
    }
  }

  return result;
}

uint64_t sub_1AF3CD8A0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for OrientationOverVelocity)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

unint64_t sub_1AF3CD978@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v6 = 0;
  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    v7 = 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for ParticleAngleEvolution)
      {
        v17 = (*(v15 - 2) + 40 * v9 + *(v11 + 128));
        v3 = *v17;
        v7 = *(v17 + 1);
        v4 = *(v17 + 2);
        v5 = *(v17 + 3);
        v6 = *(v17 + 32);
        result = sub_1AF442550(v7, v4, v5);
        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1AF3CDAE8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorOverLife)
        {
          v11 = *(v9 - 2) + 40 * v4 + *(v5 + 128);
          v12 = *(v11 + 32);
          v13 = *(v11 + 16);
          v15[0] = *v11;
          v15[1] = v13;
          v16 = v12;
          *a2 = v15[0];
          *(a2 + 16) = v13;
          *(a2 + 32) = v12;
          return sub_1AF4425A0(v15, v14);
        }
      }
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_1AF3CDBEC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorOverPosition)
        {
          v11 = (*(v9 - 2) + 40 * v4 + *(v5 + 128));
          v12 = *(v11 + 2);
          v13 = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = *(v11 + 32);
          *a2 = *v11 | (*(v11 + 4) << 32);
          *(a2 + 8) = v12;
          *(a2 + 16) = v13;
          *(a2 + 24) = v14;
          *(a2 + 32) = v15;
        }
      }
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

__n128 sub_1AF3CDD0C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleColorOverTexture)
        {
          v12 = &(*(v10 - 2))[3 * v5] + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          return result;
        }
      }
    }
  }

  *a2 = 4;
  result.n128_u64[0] = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

unint64_t sub_1AF3CDDF4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleColorOverVelocity)
        {
          v11 = *(v9 - 2) + 40 * v4 + *(v5 + 128);
          v13 = *(v11 + 1);
          v12 = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = v11[32];
          *a2 = *v11 | (*(v11 + 1) << 32);
          *(a2 + 8) = v13;
          *(a2 + 16) = v12;
          *(a2 + 24) = v14;
          *(a2 + 32) = v15;
        }
      }
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1AF3CDF14(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleCopyData)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CE018(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleDrag)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4) == 0;
          v16 = 0x100000000;
          if (v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

uint64_t sub_1AF3CE0F0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleForce)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CE1DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v8 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v9[2] == HIDWORD(result))
    {
      v11 = *(*(v2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v4 = *(v12 + 16) + 1;
      while (--v4)
      {
        v14 = v13 + 5;
        v15 = *v13;
        v13 += 5;
        if (v15 == &type metadata for ParticleNoise)
        {
          v16 = (&(*(v14 - 2))[4 * v10] + *(v11 + 128));
          v3 = *v16;
          v4 = *(v16 + 2);
          v5 = *(v16 + 3);
          v17 = v16[8];
          v18 = *(v16 + 36);
          v7 = *(v16 + 5);
          v8 = *(v16 + 48);
          v6 = v17 | (v18 << 32);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

unint64_t sub_1AF3CE308@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v8 = 0;
  v3 = 0;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v10 = *(v9 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v9[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_3;
    }

    v11 = a2;
    v12 = *(*(v2 + 144) + 8 * *v9 + 32);
    v13 = *(v12 + 48);
    v14 = (v13 + 32);
    v15 = *(v13 + 16) + 1;
    while (--v15)
    {
      v16 = v14 + 5;
      v17 = *v14;
      v14 += 5;
      if (v17 == &type metadata for ParticleOpacityEvolution)
      {
        v18 = &(*(v16 - 2))[3 * v10] + *(v12 + 128);
        v3 = *v18;
        v4 = *(v18 + 8);
        v5 = *(v18 + 16);
        v6 = *(v18 + 24);
        v7 = *(v18 + 32);
        v8 = *(v18 + 40);

        a2 = v11;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    a2 = v11;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_1AF3CE498(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleOpacityOverLife)
        {
          v13 = *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CE5D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v7 = 0;
  v3 = 0;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for ParticleOpacityOverVelocity)
      {
        v17 = *(v15 - 2) + 40 * v9 + *(v11 + 128);
        v3 = *v17;
        v4 = *(v17 + 8);
        v5 = *(v17 + 16);
        v7 = *(v17 + 32);
        v6 = *(v17 + 24) | (*(v17 + 28) << 32);

        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_1AF3CE74C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticlePositionOverTexture)
        {
          v12 = &(*(v10 - 2))[3 * v5] + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = xmmword_1AFE4C3F0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  return result;
}

unint64_t sub_1AF3CE834@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleSizeOverLife)
        {
          v11 = (&(*(v9 - 2))[7 * v4].Kind + *(v5 + 128));
          v13 = v11[1];
          v12 = v11[2];
          v22[0] = *v11;
          v22[1] = v13;
          v22[2] = v12;
          v15 = v11[4];
          v14 = v11[5];
          v16 = v11[3];
          *&v23[9] = *(v11 + 89);
          v22[4] = v15;
          *v23 = v14;
          v22[3] = v16;
          v17 = v11[1];
          *a2 = *v11;
          a2[1] = v17;
          v18 = v11[2];
          v19 = v11[3];
          *(a2 + 89) = *(v11 + 89);
          v20 = v11[5];
          a2[4] = v11[4];
          a2[5] = v20;
          a2[2] = v18;
          a2[3] = v19;
          return sub_1AF4425FC(v22, &v21);
        }
      }
    }
  }

  *(a2 + 89) = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

__n128 sub_1AF3CE96C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleSizeOverTexture)
        {
          v12 = *(v10 - 2) + 72 * v5 + *(v6 + 128);
          v13 = *(v12 + 48);
          *(a2 + 32) = *(v12 + 32);
          *(a2 + 48) = v13;
          *(a2 + 64) = *(v12 + 64);
          result = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = result;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0x300000000;
  result.n128_u64[0] = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 52) = 0u;
  return result;
}

__n128 sub_1AF3CEA58@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleSizeOverVelocity)
        {
          v12 = *(v10 - 2) + 44 * v5 + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = xmmword_1AFE4C400;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1AF3CEB40(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleSPHSimulation)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3CEC2C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v6 = 0;
  v3 = 0;
  v7 = 1;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) != 0xFFFFFFFF && v8[2] != HIDWORD(result))
    {
LABEL_2:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_3;
    }

    v10 = a2;
    v11 = *(*(v2 + 144) + 8 * *v8 + 32);
    v12 = *(v11 + 48);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    v7 = 1;
    while (--v14)
    {
      v15 = v13 + 5;
      v16 = *v13;
      v13 += 5;
      if (v16 == &type metadata for ParticleTextureFrameEvolution)
      {
        v17 = (*(v15 - 2) + 40 * v9 + *(v11 + 128));
        v3 = *v17;
        v7 = *(v17 + 1);
        v4 = *(v17 + 2);
        v5 = *(v17 + 3);
        v6 = *(v17 + 32);
        result = sub_1AF442550(v7, v4, v5);
        a2 = v10;
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    a2 = v10;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

__n128 sub_1AF3CED9C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ProjectorParameters)
        {
          v12 = *(v10 - 2) + 36 * v5 + *(v6 + 128);
          v13 = *(v12 + 32);
          result = *v12;
          v14 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v14;
          *(a2 + 32) = v13;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = xmmword_1AFE4C410;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

__n128 sub_1AF3CEE78@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for PerspectiveCamera)
        {
          v12 = &(*(v10 - 2))[3 * v5] + *(v6 + 128);
          v14 = *(v12 + 32);
          v13 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v14;
          *(a2 + 40) = v13;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1AF3CEF50(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for OrthographicCamera)
        {
          v13 = (*(v11 - 2) + 20 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4);
          v16 = 0x100000000;
          if (!v15)
          {
            v16 = 0;
          }

          return v16 | v14;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

unint64_t sub_1AF3CF050@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v5 = *(v4 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v4[2] == HIDWORD(result))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for WrapAroundCamera)
        {
          v12 = *(v10 - 2) + 40 * v5 + *(v6 + 128);
          v3 = *(v12 + 32) | (*(v12 + 36) << 32);
          v13 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v13;
          goto LABEL_3;
        }
      }
    }
  }

  v3 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 36) = BYTE4(v3);
  return result;
}

uint64_t sub_1AF3CF188@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v11 = HIDWORD(a1);
  sub_1AF446CC4(0, a2, a3, a4, type metadata accessor for ScriptRuntime);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = v14[8];
  if (v15)
  {
    v15 = v14[9];
  }

  if ((v11 || v9 != -1) && (v9 & 0x80000000) == 0 && v9 < *(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v20 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9);
    v21 = *(v20 + 2);
    if (v11 == 0xFFFFFFFF || v20[2] == v11)
    {
      v28 = *(v12 - 8);
      v22 = *(*(v5 + 144) + 8 * *v20 + 32);
      v23 = *(v22 + 48);
      v24 = (v23 + 32);
      v25 = *(v23 + 16) + 1;
      while (--v25)
      {
        v26 = v24 + 5;
        v27 = *v24;
        v24 += 5;
        if (v27 == v12)
        {
          sub_1AF43D9FC(*(v22 + 128) + *(v26 - 2) + v15 * v21, a5, a2, a3, a4);
          v16 = *(v28 + 56);
          v17 = a5;
          v18 = 0;
          goto LABEL_6;
        }
      }
    }
  }

  v16 = v14[7];
  v17 = a5;
  v18 = 1;
LABEL_6:

  return v16(v17, v18, 1, v13);
}

unint64_t sub_1AF3CF3A4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v3 = 0;
  v7 = 2;
  if ((result & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v9 = *(v8 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v8[2] == HIDWORD(result))
    {
      v10 = *(*(v2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v4 = *(v11 + 16) + 1;
      while (--v4)
      {
        v13 = v12 + 5;
        v14 = *v12;
        v12 += 5;
        if (v14 == &type metadata for NeighborGrid)
        {
          v15 = (&(*(v13 - 2))[3 * v9] + *(v10 + 128));
          v3 = *v15;
          v4 = *(v15 + 1);
          v5 = *(v15 + 2);
          v6 = *(v15 + 3);
          v7 = *(v15 + 32);
          goto LABEL_4;
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 2;
  }

LABEL_4:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_1AF3CF4B8@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(v2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for ParticleForceField)
        {
          v12 = *(v10 - 2) + 44 * v5 + *(v6 + 128);
          v13 = *(v12 + 32);
          v14 = *(v12 + 40);
          result = *v12;
          v15 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          *(a2 + 44) = 0;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *(a2 + 28) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 44) = 1;
  return result;
}

unint64_t sub_1AF3CF5A0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = xmmword_1AFE4C410;
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  v4 = 0;
  if ((result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v6 = *(v5 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v5[2] == HIDWORD(result))
    {
      v7 = *(*(v2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSubSpawn)
        {
          v13 = *(v11 - 2) + 24 * v6 + *(v7 + 128);
          v3 = *v13;
          v4 = *(v13 + 16) | (*(v13 + 20) << 32);
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 20) = BYTE4(v4);
  return result;
}

uint64_t sub_1AF3CF688(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Scheduling)
      {
        return *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CF75C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for PointCacheRuntime)
        {
          v13 = *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3CF88C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for PointCacheEmitter)
        {
          v11 = *(v9 - 2) + 36 * v4 + *(v5 + 128);
          v12 = *(v11 + 32);
          result = *v11;
          v14 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v14;
          *(a2 + 32) = v12;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1AF3CF964(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for PointCacheSpawner)
      {
        v13 = *(v11 - 2) + 12 * v6 + *(v7 + 128);
        return *v13;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CFA7C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for Vortex)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CFB94@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  v9 = a2(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = v11[8];
  if (v12)
  {
    v12 = v11[9];
  }

  if ((v8 || v6 != -1) && (v6 & 0x80000000) == 0 && v6 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v17 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
    v18 = *(v17 + 2);
    if (v8 == 0xFFFFFFFF || v17[2] == v8)
    {
      v25 = *(v9 - 8);
      v19 = *(*(v4 + 144) + 8 * *v17 + 32);
      v20 = *(v19 + 48);
      v21 = (v20 + 32);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = v21 + 5;
        v24 = *v21;
        v21 += 5;
        if (v24 == v9)
        {
          a3(*(v19 + 128) + *(v23 - 2) + v12 * v18, a4);
          v13 = *(v25 + 56);
          v14 = a4;
          v15 = 0;
          goto LABEL_6;
        }
      }
    }
  }

  v13 = v11[7];
  v14 = a4;
  v15 = 1;
LABEL_6:

  return v13(v14, v15, 1, v10);
}

uint64_t sub_1AF3CFD5C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleBurstSpawn)
      {
        return *(&(*(v11 - 2))[v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3CFE48(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0x200000000;
  }

  result = 0x200000000;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSpawnOverDistance)
        {
          v13 = (&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
          v14 = *v13;
          v15 = *(v13 + 4);
          v16 = *(v13 + 5);
          v17 = v15 == 0;
          v18 = 0x100000000;
          if (v17)
          {
            v18 = 0;
          }

          v19 = v18 | v14;
          v17 = v16 == 0;
          v20 = 0x10000000000;
          if (v17)
          {
            v20 = 0;
          }

          return v19 | v20;
        }
      }

      return 0x200000000;
    }
  }

  return result;
}

__n128 sub_1AF3CFF34@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleRibbonTrails)
        {
          v11 = &(*(v9 - 2))[2 * v4] + *(v5 + 128);
          result = *v11;
          v13 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v13;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  return result;
}

uint64_t sub_1AF3CFFFC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleVariableSpawn)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3D0100(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(v1 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleContinuousSpawn)
        {
          v3 = 0;
          v2 = *(&(*(v11 - 2))->Kind + 4 * v6 + *(v7 + 128));
          return v2 | (v3 << 32);
        }
      }
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF3D01DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFlockingSolver)
        {
          v11 = &(*(v9 - 2))[7 * v4] + *(v5 + 128);
          v13 = *(v11 + 16);
          v12 = *(v11 + 32);
          v23[0] = *v11;
          v23[1] = v13;
          v23[2] = v12;
          v15 = *(v11 + 64);
          v14 = *(v11 + 80);
          v16 = *(v11 + 48);
          *&v24[15] = *(v11 + 95);
          v23[4] = v15;
          *v24 = v14;
          v23[3] = v16;
          v17 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v17;
          v18 = *(v11 + 32);
          v19 = *(v11 + 48);
          v20 = *(v11 + 64);
          v21 = *(v11 + 80);
          *(a2 + 95) = *(v11 + 95);
          *(a2 + 64) = v20;
          *(a2 + 80) = v21;
          *(a2 + 32) = v18;
          *(a2 + 48) = v19;
          return sub_1AF443184(v23, &v22);
        }
      }
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 83) = 0u;
  return result;
}

uint64_t sub_1AF3D0324(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticlePeriodicBurstSpawn)
      {
        return *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AF3D0428@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v4 = *(v3 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFluidSolver2DSolver)
        {
          v11 = &(*(v9 - 2))[6 * v4] + *(v5 + 128);
          v12 = *(v11 + 16);
          v21[0] = *v11;
          v21[1] = v12;
          v14 = *(v11 + 48);
          v13 = *(v11 + 64);
          v15 = *(v11 + 32);
          v22 = *(v11 + 80);
          v21[3] = v14;
          v21[4] = v13;
          v21[2] = v15;
          v16 = *(v11 + 16);
          *a2 = *v11;
          *(a2 + 16) = v16;
          v17 = *(v11 + 32);
          v18 = *(v11 + 48);
          v19 = *(v11 + 64);
          *(a2 + 80) = *(v11 + 80);
          *(a2 + 48) = v18;
          *(a2 + 64) = v19;
          *(a2 + 32) = v17;
          return sub_1AF4431E0(v21, &v20);
        }
      }
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 65) = 0u;
  return result;
}

uint64_t sub_1AF3D0564(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for ParticleFlockingSpeedControl)
      {
        return *(&(*(v11 - 2))[2 * v6].Kind + *(v7 + 128));
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1AF3D0664@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFluidSolver2DEmitter)
        {
          v11 = (*(v9 - 2) + 28 * v4 + *(v5 + 128));
          v12 = v11[1].n128_u64[0];
          v13 = v11[1].n128_u16[4];
          result = *v11;
          *a2 = *v11;
          a2[1].n128_u64[0] = v12;
          a2[1].n128_u16[4] = v13;
          return result;
        }
      }
    }
  }

  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 2;
  a2[1].n128_u16[4] = 0;
  return result;
}

__n128 sub_1AF3D0744@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ParticleFlockingFlyTowardsArea)
        {
          v11 = (*(v9 - 2) + 28 * v4 + *(v5 + 128));
          v12 = v11[1].n128_u64[0];
          v13 = v11[1].n128_u8[8];
          result = *v11;
          *a2 = *v11;
          a2[1].n128_u64[0] = v12;
          a2[1].n128_u8[8] = v13;
          return result;
        }
      }
    }
  }

  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = 2;
  return result;
}