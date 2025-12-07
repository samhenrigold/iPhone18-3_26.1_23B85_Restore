uint64_t getEnumTagSinglePayload for Contact(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 68))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Contact(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 68) = v3;
  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CollisionEvents.Began(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CollisionEvents.Began(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10RealityKit21SynchronizationPeerID_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SynchronizationEvents.OwnershipResponse(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for SynchronizationEvents.OwnershipResponse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynchronizationEvents.OwnershipChanged(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for SynchronizationEvents.OwnershipChanged(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t destroy for ManipulationEvents.WillBegin(uint64_t a1)
{
}

uint64_t initializeWithCopy for ManipulationEvents.WillBegin(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for ManipulationEvents.WillBegin(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

uint64_t assignWithTake for ManipulationEvents.WillBegin(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

__n128 __swift_memcpy65_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

double destroy for ManipulationEvents.DidUpdateTransform(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for ManipulationEvents.DidUpdateTransform(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithCopy for ManipulationEvents.DidUpdateTransform(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  return a1;
}

uint64_t assignWithTake for ManipulationEvents.DidUpdateTransform(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for ManipulationEvents.DidReachMovementThreshold(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for ManipulationEvents.DidReachMovementThreshold(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlayerEvents.ViewingModeDidChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for VideoPlayerEvents.ImmersiveViewingModeDidChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for VideoPlayerEvents.ImmersiveViewingModeDidChange(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for VideoPlayerEvents.ContentTypeDidChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for VideoPlayerEvents.ContentTypeDidChange(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePresentationEvents.TransitionStarted(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ImagePresentationEvents.TransitionStarted(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata instantiation function for Scene.Publisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Scene.CorePublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Scene.CorePublisher.Inner(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Scene.CorePublisher.Inner(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for Scene.CorePublisher.Inner(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

char *specialized static Scene.copyContacts(from:swapContacts:sceneFromPhysics:)(uint64_t a1, char a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v7 = REContactSetCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (v7)
    {
      v60.columns[0] = a3;
      v60.columns[0].i32[3] = 0;
      v10 = vmulq_f32(a3, a3);
      v11 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
      v60.columns[2] = a5;
      v60.columns[2].i32[3] = 0;
      v60.columns[1] = a4;
      v60.columns[1].i32[3] = 0;
      v61 = __invert_f3(v60);
      v12 = 0;
      v13 = vzip1q_s32(v61.columns[0], v61.columns[1]);
      v13.i32[2] = v61.columns[2].i32[0];
      v50 = v13;
      v14 = vtrn2q_s32(v61.columns[0], v61.columns[1]);
      v14.i32[2] = v61.columns[2].i32[1];
      v61.columns[0] = vzip2q_s32(v61.columns[0], v61.columns[1]);
      v61.columns[0].i32[2] = v61.columns[2].i32[2];
      v48 = v61.columns[0];
      v49 = v14;
      do
      {
        if (a2)
        {
          REContactSetGetPositionBWorld();
          v16 = v15;
          HIDWORD(v16) = v44;
          v59 = v16;
          REContactSetGetNormal();
          *v18.f32 = vsub_f32(0, v17);
          v18.f32[2] = 0.0 - v19;
          v18.i32[3] = 0;
          v58 = v18;
          REContactSetGetImpulse();
          *v21.f32 = vsub_f32(0, v20);
          v21.f32[2] = 0.0 - v22;
          v21.i32[3] = 0;
          v52 = v21;
          v44 = HIDWORD(v59);
        }

        else
        {
          REContactSetGetPositionAWorld();
          v24 = v23;
          HIDWORD(v24) = v45;
          v59 = v24;
          REContactSetGetNormal();
          v26 = v25;
          v26.i32[3] = v46;
          v58 = v26;
          REContactSetGetImpulse();
          v28 = v27;
          v28.i32[3] = v47;
          v52 = v28;
          v46 = v58.i32[3];
          v45 = HIDWORD(v59);
        }

        REContactSetGetPenetrationDepth();
        v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, v52.f32[0]), a4, *v52.f32, 1), a5, v52, 2);
        v32 = vmulq_f32(v31, v31);
        v33 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
        if (v33 > 0.00000011921)
        {
          *v30.i32 = v33;
        }

        else
        {
          *v30.i32 = 0.00000011921;
        }

        v35 = *(v9 + 16);
        v34 = *(v9 + 24);
        if (v35 >= v34 >> 1)
        {
          v41 = v29;
          v53 = v31;
          v43 = v30;
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
          v30 = v43;
          v31 = v53;
          v29 = v41;
          v9 = v42;
        }

        v36 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a3, *&v59 + (v29 * v58.f32[0])), a4, *(&v59 + 1) + vmuls_lane_f32(v29, *v58.f32, 1)), a5, *(&v59 + 2) + vmuls_lane_f32(v29, v58, 2)), a6);
        *&v37 = vdivq_f32(v36, vdupq_laneq_s32(v36, 3)).u64[0];
        *(&v37 + 2) = v36.f32[2] / v36.f32[3];
        HIDWORD(v37) = 0;
        v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, v58.f32[0]), v49, *v58.f32, 1), v48, v58, 2);
        v38.i32[3] = v54;
        ++v12;
        *&v39 = vdiv_f32(*v31.f32, vdup_lane_s32(v30, 0));
        *(&v39 + 2) = v31.f32[2] / *v30.i32;
        HIDWORD(v39) = 0;
        *(v9 + 16) = v35 + 1;
        v40 = v9 + 80 * v35;
        *(v40 + 32) = v37;
        *(v40 + 48) = v38;
        *(v40 + 64) = v30.i32[0];
        *(v40 + 80) = v39;
        *(v40 + 96) = v11 * v29;
      }

      while (v7 != v12);
    }

    return v9;
  }

  return result;
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentType10rootEntity8matchingAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgAA0K0CSgSSSgtAA0N0RzlFAA0C6EventsO6RenderVSgSo010REEngineDorN0VcfU1_TA_0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for Scene.CorePublisher<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static Scene.getPublicComponentType(_:)(uint64_t a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 80, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  swift_beginAccess();
  v3 = *(v15 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 80 * v5;
    v8 = *(v7 + 16);
    v9 = *(v7 + 48);

    if (v9 == 2)
    {
      return v8;
    }
  }

  else
  {
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v12 & 1) != 0))
    {
      v8 = *(*(v10 + 56) + 16 * v11);
      swift_endAccess();

      if (swift_conformsToProtocol2())
      {
        v13 = v8 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return v8;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  return 0;
}

uint64_t objectdestroy_502Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for AnchorStateEvents.DidAnchor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for AnchorStateEvents.DidAnchor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static __REAssetBundle.__init(url:assetService:materialDefinition:with:)@<X0>(char *a2@<X1>, char *a4@<X3>, uint64_t *x8_0@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v29 = 1;
  v30 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v23[0] = v8;
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 32))(v9, v10);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 32))(v12, v13);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = RERealityFileMountFileAtURL();

  if (v17)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v17, a2, ServiceLocatorForLegacyAPIWorkaround, v23, x8_0);
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
    __swift_project_boxed_opaque_existential_1(a2, v18);
    (*(v19 + 32))(v18, v19);
    RERealityFileUnmount();
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (!v5)
    {
      _StringGuts.grow(_:)(34);

      v20 = URL.path.getter();
      MEMORY[0x1C68F3410](v20);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v21 = 0xD00000000000001FLL;
      *(v21 + 8) = 0x80000001C18E1F00;
      *(v21 + 16) = 4;
      swift_willThrow();
    }
  }

  return outlined destroy of __REAssetBundle.LoadOptions(v23);
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = MEMORY[0x1E69E7CC0];
      while (a4 != v7)
      {
        v13 = v7;
        result = v8(&v12, &v13, a2);
        if (v4)
        {

          return v5;
        }

        v9 = v12;
        if (v12)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
            v5 = result;
          }

          v11 = *(v5 + 16);
          v10 = *(v5 + 24);
          if (v11 >= v10 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
            v5 = result;
          }

          *(v5 + 16) = v11 + 1;
          *(v5 + 8 * v11 + 32) = v9;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C68F41F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x1C68F3650](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

{
  return sub_1C136AB94(a1, a2, a3);
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = *v6;
    a1(&v16, &v18, a2);
    if (v3)
    {
      break;
    }

    if (v16)
    {
      v15 = v16;
      v11 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v13 = v7[2];
      v12 = v7[3];
      v9 = v15;
      if (v13 >= v12 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
        v9 = v15;
        v7 = v8;
      }

      v7[2] = v13 + 1;
      v10 = &v7[3 * v13];
      *(v10 + 2) = v9;
      v10[6] = v11;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void __REAssetBundle.sceneAsset(for:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v10;
  v13 = v5;
  v14 = v10;
  if (v5)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + v16);

    if (v17)
    {
      do
      {
        v19 = MEMORY[0x1C68FDE40](*(v18 + 16), *(a1 + 16));

        if (v19)
        {
          break;
        }

        v10 = v14;
        v5 = v15;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaDictionary.Iterator.next()())
        {
          break;
        }

        type metadata accessor for __REAsset();
        swift_dynamicCast();
        type metadata accessor for RESceneDescriptor();
        swift_dynamicCast();
        v18 = v21;
        v14 = v10;
        v15 = v5;
      }

      while (v21);
    }

LABEL_19:
    outlined consume of [String : AnimationResource].Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void __REAssetBundle.mainSceneAsset.getter()
{
  v1 = *(v0 + 8);
  if (v1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68F41F0](0, v1);
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  else
  {
    __break(1u);
  }
}

double __REAssetBundle.LoadOptions.init(queueOptions:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 81) = 0u;
  *(a2 + 97) = 1;
  *(a2 + 99) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *a2 = v2;
  return result;
}

uint64_t __REAssetBundle.init(bundle:entryName:serviceLocator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v46 = a2;
  v44 = a6;
  v54 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  outlined init with copy of __REAssetService(a4 + 120, v51);
  v14 = v52;
  v15 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v50[0] = *a5;
  __REAssetService.dispatchPredicate(for:)(v50, v14, v15, v13);
  __swift_destroy_boxed_opaque_existential_1(v51);
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a4 + 120, v51);
  swift_beginAccess();
  v16 = *(a4 + 16);
  v49 = 0;
  v17 = [a1 bundleIdentifier];
  if (!v17)
  {

    v30 = [a1 bundlePath];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    *(v34 + 16) = 3;
    swift_willThrow();
LABEL_8:

    goto LABEL_16;
  }

  v43 = a5;
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v52;
  v23 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v23 + 32))(v22, v23);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v24 = RERealityFileMountFileInBundle();

  if (v24)
  {

    a5 = v43;
    v25 = *(v43 + 15);
    if (v25)
    {
      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v27 = v25 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v27 = MajorVersionNumber;
      *(v27 + 8) = 1;
    }

    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v24, v51, v16, a5, v44);
    v28 = v52;
    v29 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v29 + 32))(v28, v29);
    RERealityFileUnmount();
    goto LABEL_8;
  }

  v35 = v45;
  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v49);
  if (v35)
  {
  }

  else
  {
    v36 = v49;
    if (v49)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v37 = v36;
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v47 = 0xD00000000000001FLL;
      v48 = 0x80000001C18E1F00;
      MEMORY[0x1C68F3410](v46, a3);

      MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
      MEMORY[0x1C68F3410](v19, v21);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v38 = v47;
      v39 = v48;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v40 = v38;
      *(v40 + 8) = v39;
      *(v40 + 16) = 4;
    }

    swift_willThrow();
  }

  a5 = v43;
LABEL_16:
  outlined destroy of __REAssetBundle.LoadOptions(a5);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t one-time initialization function for __sdkBundleVersion()
{
  result = specialized static __REAssetBundle.frameworkVersion(key:)(0x656C646E75424643, 0xEF6E6F6973726556);
  static __REAssetBundle.__sdkBundleVersion = result;
  unk_1EBEA6938 = v1;
  return result;
}

uint64_t static __REAssetBundle.__sdkBundleVersion.getter()
{
  if (one-time initialization token for __sdkBundleVersion != -1)
  {
    swift_once();
  }

  v0 = static __REAssetBundle.__sdkBundleVersion;

  return v0;
}

uint64_t one-time initialization function for minimumWritingFormatVersion()
{
  result = RERealityFileWriterGetDefaultVersion();
  static __REAssetBundle.minimumWritingFormatVersion = result;
  return result;
}

uint64_t one-time initialization function for maximumReadingFormatVersion()
{
  result = RERealityFileWriterGetMaxVersion();
  static __REAssetBundle.maximumReadingFormatVersion = result;
  return result;
}

uint64_t one-time initialization function for defaultRealityFileVersionForWritePublicAPI()
{
  result = RERealityFileWriterGetDefaultVersionForWritePublicAPI();
  static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI = result;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.Header.VersionInfo.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C506E696769726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.Header.VersionInfo.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __REAssetBundle.Header.VersionInfo.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.Header.VersionInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.Header.VersionInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.Header.VersionInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  v9 = v11[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void __REAssetBundle.Header.VersionInfo.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v21 = v9;
    v23 = 1;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v12;
    v22 = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v16 = v13;
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v21;
    a2[1] = v11;
    a2[2] = v19;
    a2[3] = v17;
    a2[4] = v16;
    a2[5] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

double __REAssetBundle.Header.versionInfo.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;

  return result;
}

__n128 __REAssetBundle.Header.versionInfo.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);

  result = v5;
  *v1 = v6;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.Header.CodingKeys()
{
  if (*v0)
  {
    return 0x69737265566E696DLL;
  }

  else
  {
    return 0x496E6F6973726576;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.Header.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973726576 && a2 == 0xEB000000006F666ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x69737265566E696DLL && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.Header.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.Header.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.Header.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v15 = v1[2];
  v16 = v6;
  v9 = v1[4];
  v10 = v1[5];
  v13 = v1[6];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v16;
  v20 = v7;
  v21 = v15;
  v22 = v8;
  v23 = v14;
  v24 = v10;
  v25 = 0;
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo();
  v11 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v11)
  {
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v18 + 8))(v5, v3);
}

void __REAssetBundle.Header.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  if (one-time initialization token for minimumWritingFormatVersion != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v18;
    v17 = v19;
    v9 = v21;
    v10 = v23;
    v14 = v22;
    v15 = v20;
    LOBYTE(v18) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    *a2 = v16;
    a2[1] = v12;
    v13 = v14;
    a2[2] = v15;
    a2[3] = v9;
    a2[4] = v13;
    a2[5] = v10;
    a2[6] = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

RealityKit::__REAssetIdentifier_optional __swiftcall __REAssetBundle.mainSceneIdentifier()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

BOOL static __REAssetBundle.QueueOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance __REAssetBundle.QueueOptions(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t __REAssetBundle.ExportOptions.AssetRemapping.rawAssetPath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t __REAssetBundle.ExportOptions.AssetRemapping.replacementName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

RealityKit::__REAssetBundle::ExportOptions::AssetRemapping __swiftcall __REAssetBundle.ExportOptions.AssetRemapping.init(rawAssetPath:replacement:)(Swift::String rawAssetPath, Swift::String replacement)
{
  *v2 = rawAssetPath;
  v2[1] = replacement;
  result.replacementName = replacement;
  result.rawAssetPath = rawAssetPath;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.compressionLevel.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void *__REAssetBundle.ExportOptions.progress.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void __REAssetBundle.ExportOptions.__envelopeVersion.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 35);
  *a1 = *(v1 + 34);
  a1[1] = v2;
}

_BYTE *__REAssetBundle.ExportOptions.__envelopeVersion.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 34) = *result;
  *(v1 + 35) = v2;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.deploymentTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 68);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 28) = v5;
  *(a1 + 24) = v6;
  return outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v2, v3);
}

__n128 __REAssetBundle.ExportOptions.deploymentTarget.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = v1 + 64;
  v5 = a1[1].n128_u8[12];
  outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v4 - 24), *(v4 - 16));
  result = v7;
  *(v4 - 24) = v7;
  *(v4 - 8) = v2;
  *(v4 + 4) = v5;
  *v4 = v3;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.versionOverride.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

double __REAssetBundle.ExportOptions.init(queueOptions:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 16777217;
  *(a2 + 40) = xmmword_1C18B7B50;
  *(a2 + 56) = 0;
  *(a2 + 68) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 81) = 0;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 1;
  *(a2 + 122) = 3;
  *a2 = v2;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.getVersioningDetails()(__n128 a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v2 == 5)
  {
    VersionFromDeploymentTarget = 0;
    if (*(v1 + 80))
    {
      return VersionFromDeploymentTarget;
    }

LABEL_19:
    VersionFromDeploymentTarget = v3;
    if (!v3)
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0;
      v11 = 1;
LABEL_22:
      *(v10 + 16) = v11;
      swift_willThrow();
      return VersionFromDeploymentTarget;
    }

    return VersionFromDeploymentTarget;
  }

  v6 = *(v1 + 40);
  v7 = *(v1 + 64) | (*(v1 + 68) << 32);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v8 = *(v1 + 40);
      v9 = 2;
    }

    else
    {
      if (v2 != 3)
      {
        if (v2 == 4)
        {
          outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v6, 4uLL);
        }

        goto LABEL_16;
      }

      v8 = *(v1 + 40);
      v9 = 3;
    }

    outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v8, v9);
    goto LABEL_16;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v6, 1uLL);
    }
  }

  else
  {
    outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v6, 0);
  }

LABEL_16:
  String.utf8CString.getter();
  outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v6, v2);
  outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v6, v2);

  VersionFromDeploymentTarget = RERealityFileWriterGetVersionFromDeploymentTarget();

  if ((v7 & 0x100000000) != 0 && v2 >= 5)
  {
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v10 = v6;
    *(v10 + 8) = v2;
    v11 = 2;
    goto LABEL_22;
  }

  outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v6, v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

  return VersionFromDeploymentTarget;
}

double __REAssetBundle.LoadOptions.materialDefinition.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);

  return result;
}

__n128 __REAssetBundle.LoadOptions.materialDefinition.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

uint64_t __REAssetBundle.LoadOptions.aliasName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void __REAssetBundle.LoadOptions.aliasName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

double __REAssetBundle.LoadOptions.contentRequest.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of __REAssetBundle.LoadOptions.ContentRequest(v2, v3);
}

void __REAssetBundle.LoadOptions.contentRequest.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  outlined consume of __REAssetBundle.LoadOptions.ContentRequest(*(v1 + 104), *(v1 + 112));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
}

uint64_t __REAssetBundle.__MaterialDefinitionOverride.init(materialDefinition:serviceLocator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys()
{
  if (*v0)
  {
    return 0x656D614E656C6966;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys()
{
  v1 = 0x656D614E656C6966;
  v2 = 0x656449656E656373;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x6D614E656E656373;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.AssetMap.SceneDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
    v13 = 2;
    type metadata accessor for UUID();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v10 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __REAssetBundle.AssetMap.SceneDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v12 + 24);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v29 = v13;
  v15(v11 + v13, 1, 1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();
  v27 = v8;
  v16 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(v11 + v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v28 = v9;
    v17 = v25;
    v18 = v26;
    v34 = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[1] = v19;
    v23[2] = v19;
    v33 = 1;
    v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v11[3] = v20;
    v32 = 2;
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v23[1] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of Any?(v5, v11 + v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    v31 = 3;
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = *(v28 + 28);
    (*(v17 + 8))(v27, v18);
    *(v11 + v21) = v30;
    outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(v11, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(v11);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x656D614E656C6966;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656C6966 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E8FF0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.AssetMap.AssetDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void __REAssetBundle.AssetMap.AssetDescriptor.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v12 = 0;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v12 = 1;
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.CodingKeys()
{
  v1 = 0x737465737361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656E656373;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized __REAssetBundle.AssetMap.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.AssetMap.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  v10[3] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR);
  lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A], &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor and conformance __REAssetBundle.AssetMap.SceneDescriptor, protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMR);
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void __REAssetBundle.AssetMap.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR);
    v13 = 0;
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A], &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor and conformance __REAssetBundle.AssetMap.SceneDescriptor, protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMR);
    v13 = 1;
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v14;
    LOBYTE(v14) = 2;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t static __REAssetBundle.__init(sceneAssets:assetService:)@<X0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  outlined init with copy of __REAssetService(a2, v7);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v5, v7, v4, 0, x8_0);
}

uint64_t __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, Swift::Int a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a2;
  if (!a4)
  {
    v5 = a2;
    if (one-time initialization token for __sdkBundleVersion != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_4;
  }

  v10 = a4;
  while (2)
  {
    type metadata accessor for RERealityFileHeader();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *a5 = v11;
    a5[1] = a1;
    outlined init with copy of __REAssetService(v7, (a5 + 2));
    if ((a3 & 0xC000000000000001) == 0)
    {
      v12 = *(a3 + 16);

      if (!(a1 >> 62))
      {
        goto LABEL_13;
      }

LABEL_51:
      if (v12 != __CocoaSet.count.getter())
      {
        v13 = __CocoaSet.count.getter();
        if (v13)
        {
          goto LABEL_15;
        }
      }

LABEL_53:

LABEL_55:
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      a5[7] = a3;
      return result;
    }

    v12 = __CocoaSet.count.getter();

    if (a1 >> 62)
    {
      goto LABEL_51;
    }

LABEL_13:
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 == v13 || !v13)
    {
      goto LABEL_53;
    }

LABEL_15:
    v36 = v7;
    v37 = a5;
    v14 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    while (v39)
    {
      v5 = MEMORY[0x1C68F41F0](v14, a1);
      a5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_56;
      }

LABEL_25:
      if ((a3 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaDictionary.lookup(_:)();

        if (v15)
        {
          type metadata accessor for RESceneDescriptor();
          swift_dynamicCast();
          if (v40)
          {
            goto LABEL_32;
          }
        }
      }

      else if (*(a3 + 16))
      {
        v16 = specialized __RawDictionaryStorage.find<A>(_:)();
        if (v17)
        {
          v18 = *(*(a3 + 56) + 8 * v16);

          if (v18)
          {
LABEL_32:

            goto LABEL_18;
          }
        }
      }

      v19 = RESceneDescriptorCreateFromParams();
      type metadata accessor for RESceneDescriptor();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      if ((a3 & 0xC000000000000001) != 0)
      {
        if (a3 < 0)
        {
          v21 = a3;
        }

        else
        {
          v21 = a3 & 0xFFFFFFFFFFFFFF8;
        }

        v22 = __CocoaSet.count.getter();
        if (__OFADD__(v22, 1))
        {
          goto LABEL_58;
        }

        a3 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v21, v22 + 1);
      }

      v23 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = a3;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)();
      v27 = *(a3 + 16);
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_57;
      }

      a1 = v25;
      if (*(a3 + 24) >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          a3 = v40;
          if ((v25 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          a3 = v40;
          if ((a1 & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
        v30 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((a1 & 1) != (v31 & 1))
        {
          goto LABEL_64;
        }

        v26 = v30;
        a3 = v40;
        if ((a1 & 1) == 0)
        {
LABEL_46:
          *(a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
          *(*(a3 + 48) + 8 * v26) = v5;
          *(*(a3 + 56) + 8 * v26) = v20;
          v32 = *(a3 + 16);
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_60;
          }

          *(a3 + 16) = v34;
          goto LABEL_17;
        }
      }

      *(*(a3 + 56) + 8 * v26) = v20;

LABEL_17:
      a1 = v23;
LABEL_18:
      ++v14;
      if (a5 == v13)
      {

        v7 = v36;
        a5 = v37;
        goto LABEL_55;
      }
    }

    if (v14 >= *(v38 + 16))
    {
      goto LABEL_59;
    }

    v5 = *(a1 + 8 * v14 + 32);

    a5 = (v14 + 1);
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_25;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_4:
    __REAssetBundle.ExportOptions.PlatformOS.init(rawValue:)(5459817, 0xE300000000000000, &v40);
    if (v41 >= 6)
    {
      outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v40, v41);
    }

    if (one-time initialization token for minimumWritingFormatVersion != -1)
    {
      swift_once();
    }

    if (static __REAssetBundle.minimumWritingFormatVersion < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (static __REAssetBundle.minimumWritingFormatVersion <= 0x7FFFFFFF)
    {
      String.utf8CString.getter();
      String.utf8CString.getter();
      v10 = RERealityFileHeaderCreateFromVersionInfo();

      v7 = v5;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:
  type metadata accessor for __REAsset();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static __REAssetBundle.__init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v61 = a2;
  v62 = a4;
  v63 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v61 - v6;
  v75 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  v66 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v61 - v16);
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v19 = *(a3 + 64);
  v70 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v64 = (v20 + 63) >> 6;
  v67 = a3;

  v23 = 0;
  v68 = v14;
  v69 = v7;
  v71 = v17;
  v72 = v9;
  while (v22)
  {
    v24 = v23;
LABEL_16:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v27 | (v24 << 6);
    v29 = *(*(v67 + 48) + 8 * v28);
    v30 = v65;
    outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(*(v67 + 56) + *(v66 + 72) * v28, v65);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMR);
    v32 = *(v31 + 48);
    *v14 = v29;
    outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(v30, v14 + v32);
    (*(*(v31 - 8) + 56))(v14, 0, 1, v31);

    v17 = v71;
    v9 = v72;
LABEL_17:
    outlined init with take of (key: __REAsset, value: __REAssetBundle.AssetMap.SceneDescriptor)?(v14, v17);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMR);
    if ((*(*(v33 - 8) + 48))(v17, 1, v33) == 1)
    {

      outlined init with copy of __REAssetService(v61, v77);

      return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v59, v77, v18, 0, v62);
    }

    v76 = *v17;
    outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(v17 + *(v33 + 48), v9);
    v34 = *(v9 + 2);
    v73 = *(v9 + 3);
    v74 = v34;
    v35 = v69;
    outlined init with copy of [String : String](&v9[*(v75 + 24)], v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      UUID.uuidString.getter();
      (*(v37 + 8))(v35, v36);
    }

    String.utf8CString.getter();
    String.utf8CString.getter();
    String.utf8CString.getter();

    v38 = RESceneDescriptorCreateFromParams();

    v9 = v72;
    v39 = *&v72[*(v75 + 28)];
    v14 = v68;
    if (v39)
    {
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = v39 + 48;
        while (1)
        {
          v42 = *(v41 - 16);
          if (v42 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v42 > 0x7FFFFFFF)
          {
            goto LABEL_46;
          }

          String.utf8CString.getter();
          RESceneDescriptorAddSceneCompatibilityVariant();

          v41 += 24;
          if (!--v40)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

LABEL_27:
    type metadata accessor for RESceneDescriptor();
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v44 = v18;
      }

      else
      {
        v44 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v45 = __CocoaSet.count.getter();
      if (__OFADD__(v45, 1))
      {
        goto LABEL_49;
      }

      v18 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v44, v45 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v18;
    v47 = specialized __RawDictionaryStorage.find<A>(_:)();
    v49 = *(v18 + 16);
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_48;
    }

    v53 = v48;
    if (*(v18 + 24) < v52)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
      v47 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      v18 = v77[0];
      if (v53)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    v58 = v47;
    specialized _NativeDictionary.copy()();
    v47 = v58;
    v18 = v77[0];
    if (v53)
    {
LABEL_4:
      *(*(v18 + 56) + 8 * v47) = v43;

      goto LABEL_5;
    }

LABEL_39:
    *(v18 + 8 * (v47 >> 6) + 64) |= 1 << v47;
    *(*(v18 + 48) + 8 * v47) = v76;
    *(*(v18 + 56) + 8 * v47) = v43;
    v55 = *(v18 + 16);
    v51 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v51)
    {
      goto LABEL_50;
    }

    *(v18 + 16) = v56;
LABEL_5:
    outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(v9);
    v17 = v71;
  }

  if (v64 <= v23 + 1)
  {
    v25 = v23 + 1;
  }

  else
  {
    v25 = v64;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v64)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMR);
      (*(*(v57 - 8) + 56))(v14, 1, 1, v57);
      v22 = 0;
      v23 = v26;
      goto LABEL_17;
    }

    v22 = *(v70 + 8 * v24);
    ++v23;
    if (v22)
    {
      v23 = v24;
      goto LABEL_16;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  type metadata accessor for __REAsset();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __REAssetBundle.init(url:assetService:with:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v30 = 1;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v24[0] = v8;
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 32))(v9, v10);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 32))(v12, v13);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = RERealityFileMountFileAtURL();

  if (v17)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v17, a2, ServiceLocatorForLegacyAPIWorkaround, v24, a4);
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
    __swift_project_boxed_opaque_existential_1(a2, v18);
    (*(v19 + 32))(v18, v19);
    RERealityFileUnmount();
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (!v4)
    {
      _StringGuts.grow(_:)(34);

      v20 = URL.path.getter();
      MEMORY[0x1C68F3410](v20);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v21 = 0xD00000000000001FLL;
      *(v21 + 8) = 0x80000001C18E1F00;
      *(v21 + 16) = 4;
      swift_willThrow();
    }
  }

  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 8))(a1, v22);
  outlined destroy of __REAssetBundle.LoadOptions(v24);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

void static __REAssetBundle.__init(url:assetService:_:)(char *a2@<X1>, void *a3@<X2>, uint64_t *x8_0@<X8>)
{
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 32))(v7, v8);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v10 = ServiceLocatorForLegacyAPIWorkaround;
  if (!a3[11])
  {
    v17 = *(a2 + 3);
    v18 = *(a2 + 4);
    __swift_project_boxed_opaque_existential_1(a2, v17);
    (*(v18 + 32))(v17, v18);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v16 = RERealityFileMountFileAtURL();

    if (v16)
    {
      goto LABEL_5;
    }

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v4)
    {
      return;
    }

LABEL_12:
    _StringGuts.grow(_:)(34);

    v27 = URL.path.getter();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    *(v28 + 8) = 0x80000001C18E1F00;
    *(v28 + 16) = 4;
    swift_willThrow();
    return;
  }

  v29 = ServiceLocatorForLegacyAPIWorkaround;
  v11 = *(a2 + 3);
  v12 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 32))(v11, v12);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  String.utf8CString.getter();
  v16 = RERealityFileMountFileAtURLWithAliasName();

  if (!v16)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v4)
    {
      return;
    }

    goto LABEL_12;
  }

  v10 = v29;
LABEL_5:
  v22 = a3[15];
  if (v22)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v24 = v22 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v24 = MajorVersionNumber;
    *(v24 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v16, a2, v10, a3, x8_0);
  v25 = *(a2 + 3);
  v26 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v26 + 32))(v25, v26);
  RERealityFileUnmount();
}

uint64_t static __REAssetBundle.__init(url:serviceLocator:_:)@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t *x8_0@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v29);
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!a3[11])
  {
    v15 = v30;
    v16 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v16 + 32))(v15, v16);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v14 = RERealityFileMountFileAtURL();

    if (v14)
    {
      goto LABEL_5;
    }

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v4)
    {
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }

LABEL_12:
    _StringGuts.grow(_:)(34);

    v25 = URL.path.getter();
    MEMORY[0x1C68F3410](v25);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v26 = 0xD00000000000001FLL;
    *(v26 + 8) = 0x80000001C18E1F00;
    *(v26 + 16) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v28 = *(a2 + 16);
  v10 = v30;
  v9 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v9 + 32))(v10, v9);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  String.utf8CString.getter();
  v14 = RERealityFileMountFileAtURLWithAliasName();

  if (!v14)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v4)
    {
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }

    goto LABEL_12;
  }

  v8 = v28;
LABEL_5:
  v20 = a3[15];
  if (v20)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v22 = v20 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v22 = MajorVersionNumber;
    *(v22 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v14, v29, v8, a3, x8_0);
  v23 = v30;
  v24 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v24 + 32))(v23, v24);
  RERealityFileUnmount();
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void static __REAssetBundle.__init(bundle:entryName:assetService:_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 3);
  v13 = *(a4 + 4);
  __swift_project_boxed_opaque_existential_1(a4, v12);
  (*(v13 + 32))(v12, v13);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v15 = [a1 bundleIdentifier];
  if (!v15)
  {
    v28 = [a1 bundlePath];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    v33 = 3;
    goto LABEL_7;
  }

  v34 = ServiceLocatorForLegacyAPIWorkaround;
  v35 = a5;
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v21 = *(a4 + 3);
  v20 = *(a4 + 4);
  __swift_project_boxed_opaque_existential_1(a4, v21);
  (*(v20 + 32))(v21, v20);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v22 = RERealityFileMountFileInBundle();

  if (!v22)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v6)
    {

      return;
    }

    _StringGuts.grow(_:)(48);

    MEMORY[0x1C68F3410](a2, a3);
    MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
    MEMORY[0x1C68F3410](v17, v19);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v32 = 0xD00000000000001FLL;
    *(v32 + 8) = 0x80000001C18E1F00;
    v33 = 4;
LABEL_7:
    *(v32 + 16) = v33;
    swift_willThrow();
    return;
  }

  v23 = *(v35 + 120);
  if (v23)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v25 = v23 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v25 = MajorVersionNumber;
    *(v25 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v22, a4, v34, v35, a6);
  v26 = *(a4 + 3);
  v27 = *(a4 + 4);
  __swift_project_boxed_opaque_existential_1(a4, v26);
  (*(v27 + 32))(v26, v27);
  RERealityFileUnmount();
}

uint64_t static __REAssetBundle.__init(bundle:entryName:serviceLocator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  outlined init with copy of __REAssetService(a4 + 120, v36);
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = [a1 bundleIdentifier];
  if (!v14)
  {
    v27 = [a1 bundlePath];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 3;
LABEL_7:
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v34 = v13;
  v35 = a6;
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v37;
  v20 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v20 + 32))(v19, v20);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v21 = RERealityFileMountFileInBundle();

  if (!v21)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v6)
    {

      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    _StringGuts.grow(_:)(48);

    MEMORY[0x1C68F3410](a2, a3);
    MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
    MEMORY[0x1C68F3410](v16, v18);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    *(v33 + 8) = 0x80000001C18E1F00;
    *(v33 + 16) = 4;
    goto LABEL_7;
  }

  v22 = *(a5 + 120);
  if (v22)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v24 = v22 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v24 = MajorVersionNumber;
    *(v24 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v21, v36, v34, a5, v35);
  v25 = v37;
  v26 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v26 + 32))(v25, v26);
  RERealityFileUnmount();
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t __REAssetBundle.init(url:assetService:downsamplingStrategy:with:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, _OWORD *a5@<X8>)
{
  v45 = a5;
  v59 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a4;
  v14 = *(a2 + 3);
  v15 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v51[0] = v13;
  __REAssetService.dispatchPredicate(for:)(v51, v14, v15, v12);
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
  }

  memset(v53, 0, sizeof(v53));
  v52 = 0u;
  v54 = 1;
  v55 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v51[0] = v13;
  outlined assign with copy of __DownsamplingStrategy?(a3, &v53[8]);
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 32))(v16, v17);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v49 = 0;
  v19 = *(a2 + 3);
  v20 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v19);
  (*(v20 + 32))(v19, v20);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = RERealityFileMountFileAtURL();

  v25 = a3;
  if (!v24)
  {
    v29 = v46;
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v49);
    if (!v29)
    {
      v36 = v49;
      if (v49)
      {
        type metadata accessor for CFErrorRef(0);
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
        swift_allocError();
        *v37 = v36;
      }

      else
      {
        v47 = 0;
        v48 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v47 = 0xD00000000000001FLL;
        v48 = 0x80000001C18E1F00;
        v38 = URL.path.getter();
        MEMORY[0x1C68F3410](v38);

        MEMORY[0x1C68F3410](46, 0xE100000000000000);
        v39 = v47;
        v40 = v48;
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        swift_allocError();
        *v41 = v39;
        *(v41 + 8) = v40;
        *(v41 + 16) = 4;
      }

      swift_willThrow();
      v25 = a3;
    }

    goto LABEL_12;
  }

  v26 = v46;
  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v24, a2, ServiceLocatorForLegacyAPIWorkaround, v51, v50);
  if (v26)
  {
    v27 = *(a2 + 3);
    v28 = *(a2 + 4);
    __swift_project_boxed_opaque_existential_1(a2, v27);
    (*(v28 + 32))(v27, v28);
    RERealityFileUnmount();
LABEL_12:
    outlined destroy of BodyTrackingComponent?(v25, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v42 = type metadata accessor for URL();
    (*(*(v42 - 8) + 8))(a1, v42);
    goto LABEL_13;
  }

  v30 = *(a2 + 3);
  v31 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v30);
  (*(v31 + 32))(v30, v31);
  RERealityFileUnmount();
  outlined destroy of BodyTrackingComponent?(a3, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  v32 = type metadata accessor for URL();
  (*(*(v32 - 8) + 8))(a1, v32);
  v33 = v50[1];
  v34 = v45;
  *v45 = v50[0];
  v34[1] = v33;
  v35 = v50[3];
  v34[2] = v50[2];
  v34[3] = v35;
LABEL_13:
  outlined destroy of __REAssetBundle.LoadOptions(v51);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t __REAssetService.dispatchPredicate(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  __REAssetService.asManager.getter(a2, a3);
  v6 = REAssetManagerGetEngineQueue();

  *a4 = v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(*(v7 - 8) + 104);
  v9 = MEMORY[0x1E69E8020];
  if (v5 != 2)
  {
    v9 = MEMORY[0x1E69E8018];
  }

  v10 = *v9;

  return v8(a4, v10, v7);
}

uint64_t static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v25 = a2;
  v26 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v14 + 104))(v16, *MEMORY[0x1E69E7F98], v13);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  outlined init with copy of __REAssetService(v25, v36);
  (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v10);
  v17 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v18 = swift_allocObject();
  outlined init with take of ForceEffectBase(v36, v18 + 16);
  (*(v11 + 32))(v18 + v17, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = (v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v27;
  MEMORY[0x1C68F3CA0](0, v9, v6, v21);
  _Block_release(v21);

  (*(v33 + 8))(v6, v22);
  (*(v31 + 8))(v9, v32);
}

uint64_t closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)(char *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v36 = *MEMORY[0x1E69E9840];
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v31 = 1;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  LOBYTE(v25) = 1;
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 32))(v5, v6);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v23 = 0;
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 32))(v8, v9);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = RERealityFileMountFileAtURL();

  if (v13)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v13, a1, ServiceLocatorForLegacyAPIWorkaround, &v25, v24);
    v14 = *(a1 + 3);
    v15 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    RERealityFileUnmount();
    outlined init with copy of __REAssetBundle(v24, &v21);
    v22 = 0;
    a3(&v21);
    outlined destroy of BodyTrackingComponent?(&v21, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
    outlined destroy of __REAssetBundle(v24);
    return outlined destroy of __REAssetBundle.LoadOptions(&v25);
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v23);
    _StringGuts.grow(_:)(34);

    v17 = URL.path.getter();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v18 = swift_allocError();
    *v19 = 0xD00000000000001FLL;
    *(v19 + 8) = 0x80000001C18E1F00;
    *(v19 + 16) = 4;
    swift_willThrow();
    outlined destroy of __REAssetBundle.LoadOptions(&v25);
    v25 = v18;
    BYTE8(v29) = 1;
    v20 = v18;
    a3(&v25);

    return outlined destroy of BodyTrackingComponent?(&v25, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
  }
}

uint64_t static __REAssetBundle.load(url:serviceLocator:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v26 = a1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v13 + 104))(v15, *MEMORY[0x1E69E7F98], v12);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v19 = v29;
  *(v18 + v17) = v28;
  v20 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v19;
  v20[1] = v21;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_16;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  MEMORY[0x1C68F3CA0](0, v8, v5, v22);
  _Block_release(v22);

  (*(v34 + 8))(v5, v23);
  (*(v32 + 8))(v8, v33);
}

uint64_t closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4)
{
  v44[1] = a4;
  v45 = a3;
  v71 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v66 = 1;
  v67 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  LOBYTE(v60) = 1;
  v14 = *(v11 + 16);
  v44[0] = v15;
  v14(v13, a1);
  outlined init with copy of __REAssetBundle.LoadOptions(&v60, v56);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v52);
  v16 = *(&v53 + 1);
  v17 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  LOBYTE(v49[0]) = v56[0];
  __REAssetService.dispatchPredicate(for:)(v49, v16, v17, v9);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v16 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a2 + 120, v49);
  swift_beginAccess();
  v18 = *(a2 + 16);
  v48 = 0;
  if (v57)
  {
    v20 = v50;
    v19 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v19 + 32))(v20, v19);
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    String.utf8CString.getter();
    v24 = RERealityFileMountFileAtURLWithAliasName();

    if (v24)
    {
LABEL_4:
      v25 = v58;
      if (v58)
      {
        MajorVersionNumber = RERealityFileGetMajorVersionNumber();
        v27 = v25 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
        *v27 = MajorVersionNumber;
        *(v27 + 8) = 1;
      }

      static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v24, v49, v18, v56, &v52);
      v33 = v50;
      v34 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      (*(v34 + 32))(v33, v34);
      RERealityFileUnmount();
      __swift_destroy_boxed_opaque_existential_1(v49);
      outlined destroy of __REAssetBundle.LoadOptions(v56);
      (*(v11 + 8))(v13, v44[0]);
      v59[0] = v52;
      v59[1] = v53;
      v59[2] = v54;
      v59[3] = v55;
      outlined init with copy of __REAssetBundle(v59, v56);
      v56[64] = 0;
      v45(v56);
      outlined destroy of BodyTrackingComponent?(v56, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
      outlined destroy of __REAssetBundle(v59);
      return outlined destroy of __REAssetBundle.LoadOptions(&v60);
    }
  }

  else
  {
    v28 = v50;
    v29 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v29 + 32))(v28, v29);
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v24 = RERealityFileMountFileAtURL();

    if (v24)
    {
      goto LABEL_4;
    }
  }

  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v48);
  v36 = v48;
  if (v48)
  {
    type metadata accessor for CFErrorRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
    v37 = swift_allocError();
    *v38 = v36;
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v46 = 0xD00000000000001FLL;
    v47 = 0x80000001C18E1F00;
    v39 = URL.path.getter();
    MEMORY[0x1C68F3410](v39);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    v40 = v46;
    v41 = v47;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v37 = swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 4;
  }

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v49);
  outlined destroy of __REAssetBundle.LoadOptions(v56);
  (*(v11 + 8))(v13, v44[0]);
  outlined destroy of __REAssetBundle.LoadOptions(&v60);
  v60 = v37;
  BYTE8(v64) = 1;
  v43 = v37;
  v45(&v60);

  return outlined destroy of BodyTrackingComponent?(&v60, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
}

uint64_t static __REAssetBundle.load(bundle:entryName:assetService:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v25 = a4;
  v26 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E7F98], v14);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v17, v14);
  outlined init with copy of __REAssetService(v25, v34);
  v19 = swift_allocObject();
  outlined init with take of ForceEffectBase(v34, (v19 + 2));
  v21 = v26;
  v20 = v27;
  v19[7] = a1;
  v19[8] = v21;
  v19[9] = a3;
  v19[10] = v20;
  v19[11] = v28;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(bundle:entryName:assetService:completionHandler:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_22;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v10, v22);
  _Block_release(v22);

  (*(v31 + 8))(v10, v8);
  (*(v29 + 8))(v13, v30);
}

uint64_t closure #1 in static __REAssetBundle.load(bundle:entryName:assetService:completionHandler:)(char *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v48 = *MEMORY[0x1E69E9840];
  memset(v42, 0, sizeof(v42));
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v43 = 1;
  v44 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  LOBYTE(v37) = 1;
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(v10, v11);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v35 = 0;
  v13 = [a2 bundleIdentifier];
  if (v13)
  {
    v32 = a5;
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = *(a1 + 3);
    v19 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 32))(v18, v19);
    String.utf8CString.getter();
    String.utf8CString.getter();
    v20 = RERealityFileMountFileInBundle();

    if (v20)
    {

      static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v20, a1, ServiceLocatorForLegacyAPIWorkaround, &v37, v36);
      v28 = *(a1 + 3);
      v29 = *(a1 + 4);
      __swift_project_boxed_opaque_existential_1(a1, v28);
      (*(v29 + 32))(v28, v29);
      RERealityFileUnmount();
      outlined init with copy of __REAssetBundle(v36, &v33);
      v34 = 0;
      v32(&v33);
      outlined destroy of BodyTrackingComponent?(&v33, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
      outlined destroy of __REAssetBundle(v36);
      return outlined destroy of __REAssetBundle.LoadOptions(&v37);
    }

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v35);
    _StringGuts.grow(_:)(48);

    MEMORY[0x1C68F3410](a3, a4);
    MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
    MEMORY[0x1C68F3410](v15, v17);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v25 = swift_allocError();
    *v31 = 0xD00000000000001FLL;
    *(v31 + 8) = 0x80000001C18E1F00;
    *(v31 + 16) = 4;
    a5 = v32;
    swift_willThrow();
  }

  else
  {
    v21 = [a2 bundlePath];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    *(v26 + 16) = 3;
    swift_willThrow();
  }

  outlined destroy of __REAssetBundle.LoadOptions(&v37);
  v37 = v25;
  BYTE8(v41) = 1;
  v27 = v25;
  a5(&v37);

  return outlined destroy of BodyTrackingComponent?(&v37, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
}

uint64_t static __REAssetBundle.load(bundle:entryName:serviceLocator:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a2;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E7F98], v14);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v17, v14);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a1;
  v19[3] = v20;
  v19[4] = a3;
  v19[5] = v21;
  v22 = v29;
  v19[6] = v28;
  v19[7] = v22;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(bundle:entryName:serviceLocator:completionHandler:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_28_0;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v10, v23);
  _Block_release(v23);

  (*(v32 + 8))(v10, v8);
  (*(v30 + 8))(v13, v31);
}

uint64_t closure #1 in static __REAssetBundle.load(bundle:entryName:serviceLocator:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *))
{
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v20 = 1;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  LOBYTE(v14) = 1;
  outlined init with copy of __REAssetBundle.LoadOptions(&v14, v12);
  v10 = a1;

  __REAssetBundle.init(bundle:entryName:serviceLocator:_:)(v10, a2, a3, a4, v12, v13);
  outlined init with copy of __REAssetBundle(v13, v12);
  v12[64] = 0;
  a5(v12);
  outlined destroy of BodyTrackingComponent?(v12, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
  outlined destroy of __REAssetBundle(v13);
  return outlined destroy of __REAssetBundle.LoadOptions(&v14);
}

void *__REAssetBundle.sceneDescriptors.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v47 = v45 - v2;
  v3 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  object = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = *(v0 + 8);
  v59 = v0;
  v10 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in __REAssetBundle.getSceneDescriptors(), v58, v9);
  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v13 = 0;
    v51 = v11 & 0xC000000000000001;
    v45[1] = v11 + 32;
    v46 = v11 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x1E69E7CC0];
    v49 = v11;
    v50 = object;
    v48 = i;
    while (v51)
    {
      v15 = MEMORY[0x1C68F41F0](v13, v11);
      v16 = __OFADD__(v13, 1);
      v17 = v13 + 1;
      if (v16)
      {
        goto LABEL_35;
      }

LABEL_10:
      v56 = v17;
      v54 = v15;
      RERealityFileAssetDescriptorGetFilename();
      object = String.init(cString:)();
      v11 = v18;
      v19 = v53;
      v20 = *(v53 + 24);
      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 56))(&v8[v20], 1, 1, v21);
      *v8 = object;
      *(v8 + 1) = v11;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0xE000000000000000;
      v22 = *(v19 + 28);
      *&v8[v22] = 0;
      if (RESceneDescriptorGetSceneName())
      {
        *(v8 + 2) = String.init(cString:)();
        *(v8 + 3) = v23;
      }

      RESceneDescriptorGetSceneIdentifier();
      v24 = String.init(cString:)();
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v55 = v14;
      if (v26)
      {
        object = String.init(cString:)(*&v24)._object;
        v11 = v47;
        UUID.init(uuidString:)();

        outlined assign with take of Any?(v11, &v8[v20], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
      }

      SceneCompatibilityVariantCount = RESceneDescriptorGetSceneCompatibilityVariantCount();
      if (SceneCompatibilityVariantCount < 0)
      {
        goto LABEL_36;
      }

      v28 = SceneCompatibilityVariantCount;
      if (SceneCompatibilityVariantCount)
      {
        v29 = 0;
        v57 = SceneCompatibilityVariantCount;
        do
        {
          if (RESceneDescriptorGetSceneCompatibilityVariantAtIndex())
          {
            Version = RESceneCompatibilityVariantGetVersion();
            RESceneCompatibilityVariantGetFileName();
            v31 = String.init(cString:)();
            v33 = v32;
            v34 = *&v8[v22];
            if (v34)
            {
              v35 = v31;
              v36 = v8;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
              }

              v38 = *(v34 + 2);
              v37 = *(v34 + 3);
              if (v38 >= v37 >> 1)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v34);
              }

              *(v34 + 2) = v38 + 1;
              v39 = &v34[24 * v38];
              *(v39 + 4) = Version;
              *(v39 + 5) = v35;
              *(v39 + 6) = v33;
              v8 = v36;
              *&v36[v22] = v34;
              v28 = v57;
            }

            else
            {
            }
          }

          ++v29;
        }

        while (v28 != v29);
      }

      v40 = v50;
      outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(v8, v50);
      v14 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      }

      v41 = v48;
      v43 = v14[2];
      v42 = v14[3];
      object = (v43 + 1);
      if (v43 >= v42 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v14);
      }

      v14[2] = object;
      outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(v40, v14 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v43);
      outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(v8);
      v13 = v56;
      v11 = v49;
      if (v56 == v41)
      {
        goto LABEL_40;
      }
    }

    if (v13 >= *(v46 + 16))
    {
      goto LABEL_37;
    }

    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (!v16)
    {
      goto LABEL_10;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_40:

  return v14;
}

Swift::String __swiftcall String.init(cString:)(Swift::String cString)
{
  if ((cString._object & 0x1000000000000000) == 0 && ((cString._object & 0x2000000000000000) != 0 || (cString._countAndFlagsBits & 0x1000000000000000) != 0))
  {
    v1 = String.init(cString:)();
    v3 = v2;
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();

    v1 = v7;
    v3 = v8;
  }

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void closure #1 in __REAssetBundle.getSceneDescriptors()(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  specialized Dictionary.subscript.getter(*a1, *(a2 + 56));
  v5 = v4;
  if (!v4)
  {
    v6 = static os_log_type_t.debug.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v7 = static OS_os_log.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1887600;
    type metadata accessor for __REAsset();
    _print_unlocked<A, B>(_:_:)();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    os_log(_:dso:log:_:_:)(v6, &dword_1C1358000, v7, "%s does not match any descriptor", v9);
  }

  *a3 = v5;
}

uint64_t __REAssetBundle.sceneAsset(for:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = a1[2];
  v18[1] = a1[3];
  v18[2] = v5;
  v6 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  outlined init with copy of [String : String](a1 + *(v6 + 24), v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v8 + 8))(v4, v7);
  }

  String.utf8CString.getter();
  String.utf8CString.getter();
  String.utf8CString.getter();

  v9 = RESceneDescriptorCreateFromParams();

  v11 = *(a1 + *(v6 + 28));
  if (v11 && (v12 = *(v11 + 16)) != 0)
  {
    v13 = v11 + 48;
    while (1)
    {
      v14 = *(v13 - 16);
      if (v14 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v14 > 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

      String.utf8CString.getter();
      RESceneDescriptorAddSceneCompatibilityVariant();

      v13 += 24;
      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:
    type metadata accessor for RESceneDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = v9;
    __REAssetBundle.sceneAsset(for:)(inited);
    v17 = v16;
    swift_setDeallocating();
    RERelease();
    return v17;
  }

  return result;
}

double one-time initialization function for temporaryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static __REAssetBundle.temporaryURL);
  v1 = __swift_project_value_buffer(v0, static __REAssetBundle.temporaryURL);
  return closure #1 in variable initialization expression of static __REAssetBundle.temporaryURL(v1);
}

double closure #1 in variable initialization expression of static __REAssetBundle.temporaryURL@<D0>(char *a1@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v33._countAndFlagsBits = 0;
  v14 = [v13 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v33];

  countAndFlagsBits = v33._countAndFlagsBits;
  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = countAndFlagsBits;

    v17 = *(v6 + 32);
    v17(v11, v8, v5);
    (*(v6 + 56))(v11, 0, 1, v5);
    v17(a1, v11, v5);
  }

  else
  {
    v18 = v33._countAndFlagsBits;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v6 + 56))(v11, 1, 1, v5);
    v20 = [v12 defaultManager];
    v21 = [v20 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    if ((*(v6 + 48))(v11, 1, v5) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    URL.appendPathComponent(_:)(v27);
  }

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v33._countAndFlagsBits = 0xD00000000000001CLL;
  v33._object = 0x80000001C18E9120;
  UUID.init()();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v28 = v32;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v29);

  (*(v31 + 8))(v4, v28);
  URL.appendPathComponent(_:)(v33);

  return result;
}

uint64_t static __REAssetBundle.temporaryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for temporaryURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static __REAssetBundle.temporaryURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __REAssetBundle.__write(to:fromEngineQueue:)(uint64_t a1, char a2)
{
  v16 = 0;
  v15 = 1;
  v14 = 1;
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  LOBYTE(v6) = v2;
  *(&v6 + 1) = 1;
  LOBYTE(v7) = 0;
  v8 = 0;
  *v9 = 16777217;
  *&v9[8] = xmmword_1C18B7B50;
  v10 = 0;
  BYTE4(v11) = 0;
  LODWORD(v11) = 0;
  v12 = 0;
  v13[0] = 1;
  *&v13[1] = 0;
  memset(&v13[8], 0, 32);
  *&v13[40] = 1;
  v13[42] = 3;
  v4[4] = v11;
  v4[5] = *v13;
  v5[0] = *&v13[16];
  *(v5 + 11) = *&v13[27];
  v4[0] = v6;
  v4[1] = v7;
  v4[2] = *v9;
  v4[3] = 5uLL;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a1, v4);
  return outlined destroy of __REAssetBundle.ExportOptions(&v6);
}

uint64_t __REAssetBundle.write(to:with:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[5];
  v6[4] = a2[4];
  v6[5] = v2;
  v7[0] = a2[6];
  *(v7 + 11) = *(a2 + 107);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = a2[3];
  v6[2] = a2[2];
  v6[3] = v4;
  return __REAssetBundle.writeWithCPlusPlus(to:with:)(a1, v6);
}

uint64_t __REAssetBundle.__write(to:with:compressionLevel:progress:)(uint64_t a1, char *a2, uint64_t a3, char a4, void *a5)
{
  v6 = *a2;
  v12 = 1;
  v11 = 1;
  LOBYTE(v13) = v6;
  *(&v13 + 1) = a3;
  LOBYTE(v14) = a4 & 1;
  *(&v14 + 1) = a5;
  *v15 = 16777217;
  *&v15[8] = xmmword_1C18B7B50;
  v16 = 0;
  BYTE4(v17) = 0;
  LODWORD(v17) = 0;
  v18 = 0;
  v19[0] = 1;
  *&v19[1] = 0;
  memset(&v19[8], 0, 32);
  *&v19[40] = 1;
  v19[42] = 3;
  v9[4] = v17;
  v9[5] = *v19;
  v10[0] = *&v19[16];
  *(v10 + 11) = *&v19[27];
  v9[2] = *v15;
  v9[3] = 5uLL;
  v9[0] = v13;
  v9[1] = v14;
  v7 = a5;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a1, v9);
  return outlined destroy of __REAssetBundle.ExportOptions(&v13);
}

uint64_t __REAssetBundle.__write(to:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F98], v11);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  outlined init with copy of __REAssetBundle(v25[1], v36);
  (*(v9 + 16))(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v8);
  v15 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = v36[1];
  *(v16 + 1) = v36[0];
  *(v16 + 2) = v17;
  v18 = v36[3];
  *(v16 + 3) = v36[2];
  *(v16 + 4) = v18;
  (*(v9 + 32))(&v16[v15], v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v19 = &v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  aBlock[4] = partial apply for closure #1 in __REAssetBundle.__write(to:completionHandler:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34_0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v27;
  MEMORY[0x1C68F3CA0](0, v7, v4, v21);
  _Block_release(v21);

  (*(v33 + 8))(v4, v22);
  (*(v31 + 8))(v7, v32);
}

uint64_t closure #1 in __REAssetBundle.__write(to:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v8 = 1;
  v7 = 1;
  LOBYTE(v9) = 1;
  *(&v9 + 1) = 1;
  LOBYTE(v10) = 0;
  v11 = 0;
  *v12 = 16777217;
  *&v12[8] = xmmword_1C18B7B50;
  v13 = 0;
  BYTE4(v14) = 0;
  LODWORD(v14) = 0;
  v15 = 0;
  v16[0] = 1;
  *&v16[1] = 0;
  memset(&v16[8], 0, 32);
  *&v16[40] = 1;
  v16[42] = 3;
  v5[4] = v14;
  v5[5] = *v16;
  v6[0] = *&v16[16];
  *(v6 + 11) = *&v16[27];
  v5[2] = *v12;
  v5[3] = 5uLL;
  v5[0] = v9;
  v5[1] = v10;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a2, v5);
  a3(0);
  return outlined destroy of __REAssetBundle.ExportOptions(&v9);
}

unint64_t __RealityFileError.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      _StringGuts.grow(_:)(42);

      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v8);

      MEMORY[0x1C68F3410](0xD000000000000013, 0x80000001C18E8F40);
      _StringGuts.grow(_:)(33);

      if (one-time initialization token for maximumReadingFormatVersion != -1)
      {
        swift_once();
      }

      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v9);

      MEMORY[0x1C68F3410](10542, 0xE200000000000000);
      v14 = 0xD000000000000015;

      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E8F60);

      return v14;
    }

    if (v3 == 1)
    {
      _StringGuts.grow(_:)(36);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();

      v14 = v4;
      MEMORY[0x1C68F3410](0xD00000000000001FLL, 0x80000001C18E8E30);
      type metadata accessor for RERealityFileMajorVersion(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25RERealityFileMajorVersionVmMd, &_sSo25RERealityFileMajorVersionVmMR);
      v5 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v5);

      v6 = 46;
      v7 = 0xE100000000000000;
LABEL_14:
      MEMORY[0x1C68F3410](v6, v7);
      return v14;
    }

    v14 = 0;
    _StringGuts.grow(_:)(36);
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    v10 = "ve a bundleIdentifier.";
    v6 = 0xD000000000000021;
LABEL_13:
    v7 = v10 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v14 = 0;
    _StringGuts.grow(_:)(96);
    MEMORY[0x1C68F3410](0xD000000000000028, 0x80000001C18E8D90);
    MEMORY[0x1C68F3410](v1, v2);
    v10 = "ality file from bundle '";
    v6 = 0xD000000000000036;
    goto LABEL_13;
  }

  if (v3 == 4)
  {
  }

  else if (v1 > 2)
  {
    if (v1 ^ 4 | v2)
    {
      v13 = 0xD000000000000019;
    }

    else
    {
      v13 = 0xD000000000000012;
    }

    if (v1 ^ 3 | v2)
    {
      return v13;
    }

    else
    {
      return 0xD000000000000023;
    }
  }

  else
  {
    if (v1 ^ 1 | v2)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v12 = 0xD000000000000011;
    }

    if (v1 | v2)
    {
      return v12;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  return v1;
}

uint64_t LocalizedRealityFileError.errorDescription.getter()
{
  _StringGuts.grow(_:)(84);
  MEMORY[0x1C68F3410](0xD000000000000051, 0x80000001C18E91B0);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  return 0;
}

unint64_t SerializationError.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(39);

    v6 = 0xD000000000000011;
    MEMORY[0x1C68F3410](a1, a2);
    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E90D0);
    return v6;
  }

  if (a3 == 1)
  {
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    MEMORY[0x1C68F3410](a1, a2);
    v6 = 0xD000000000000068;

    MEMORY[0x1C68F3410](8250, 0xE200000000000000);

    return v6;
  }

  return 0xD00000000000002FLL;
}

uint64_t __Archiving.Operation.__deallocating_deinit()
{
  MEMORY[0x1C6901D90](*(v0 + 16));

  return swift_deallocClassInstance();
}

void __Archiving.Operation.archive(to:)()
{
  URL._bridgeToObjectiveC()(*MEMORY[0x1E69E9840]);
  v1 = v0;
  v2 = _REArchiveOperationArchiveToURL();

  if ((v2 & 1) == 0)
  {
    lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }
}

void __Archiving.Operation.unarchive(to:withReport:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  if (a2)
  {
    v5 = *(v2 + 16);
    URL._bridgeToObjectiveC()(v3);
    v7 = v6;
    v8 = MEMORY[0x1C6901DF0](v5, v6, a2, v14);
  }

  else
  {
    URL._bridgeToObjectiveC()(v3);
    v7 = v9;
    v8 = _REArchiveOperationUnarchiveToURL();
  }

  v10 = v8;

  if ((v10 & 1) == 0)
  {
    v11 = v14[0];
    if (v14[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v12 = v11;
    }

    else
    {
      lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError();
      swift_allocError();
      *v13 = 0;
    }

    swift_willThrow();
  }
}

uint64_t static __Archiving.archivePackage(source:destination:envelopeVersion:compressionLevel:progress:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23[0] = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[1];
  (*(v10 + 16))(v13, a1, v9, v11);
  type metadata accessor for __Archiving.Operation();
  inited = swift_initStackObject();
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = _REArchiveOperationCreateWithURL();

  (*(v10 + 8))(v13, v9);
  *(inited + 16) = v19;
  _REArchiveOperationSetArchiveCompressionLevel();
  _REArchiveOperationSetStreamCompression();
  if (v14)
  {
    REArchiveGetDefaultEnvelopeVersion();
    if ((_REArchiveOperationSetEnvelopeVersion() & 1) == 0)
    {
LABEL_3:
      lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
    }
  }

  else if ((_REArchiveOperationSetEnvelopeVersion() & 1) == 0)
  {
    goto LABEL_3;
  }

  if (a6)
  {
    objc_storeStrong(v19, a6);
  }

  v21 = v23[5];
  __Archiving.Operation.archive(to:)();
  if (!v21)
  {
    swift_setDeallocating();
    return MEMORY[0x1C6901D90](v19);
  }
}

uint64_t static __Archiving.unarchivePackage(source:destination:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  type metadata accessor for __Archiving.Operation();
  inited = swift_initStackObject();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = _REArchiveOperationCreateWithURL();

  (*(v5 + 8))(v8, v4);
  *(inited + 16) = v13;
  _REArchiveOperationSetStreamCompression();
  __Archiving.Operation.unarchive(to:withReport:)(a2, 0);
  swift_setDeallocating();
  return MEMORY[0x1C6901D90](v13);
}

uint64_t static __Archiving.unarchivePackage(source:destination:withReport:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  type metadata accessor for __Archiving.Operation();
  inited = swift_initStackObject();
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = _REArchiveOperationCreateWithURL();

  (*(v7 + 8))(v10, v6);
  *(inited + 16) = v15;
  _REArchiveOperationSetStreamCompression();
  __Archiving.Operation.unarchive(to:withReport:)(a2, a3);
  swift_setDeallocating();
  return MEMORY[0x1C6901D90](v15);
}

Swift::Int __Archiving.ArchivingError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t __REAssetManager.waitForLoadRequest(_:with:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a2;
  if (v8 == 2)
  {
    if (!REAssetLoadRequestGetState())
    {
      REAssetLoadRequestWaitForCompletion();
    }
  }

  else if (v8)
  {
    v9 = v5;
    *v7 = REAssetManagerGetEngineQueue();
    (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v9);
    v10 = _dispatchPreconditionTest(_:)();
    result = (*(v4 + 8))(v7, v9);
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (!REAssetLoadRequestGetState())
    {
      REAssetLoadRequestWaitForCompletionFromOtherQueue();
    }
  }

  else if (REAssetLoadRequestGetState() != 1)
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    *(v15 + 8) = 0x80000001C18E9170;
    v16 = 1;
    goto LABEL_14;
  }

  result = REAssetLoadRequestGetState();
  if (result == 1)
  {
    return result;
  }

  RequestCopyError = REAssetLoadRequestCopyError();
  if (!RequestCopyError)
  {
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v15 = 0xD00000000000001BLL;
    *(v15 + 8) = 0x80000001C18E9190;
    v16 = 4;
LABEL_14:
    *(v15 + 16) = v16;
    return swift_willThrow();
  }

  v13 = RequestCopyError;
  type metadata accessor for CFErrorRef(0);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
  swift_allocError();
  *v14 = v13;
  return swift_willThrow();
}

double __REAssetService.asManager.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  type metadata accessor for __REAssetManager();
  v3 = swift_allocObject();
  result = 0.0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 2;
  *(v3 + 96) = 514;
  *(v3 + 88) = v2;
  return result;
}

void __REAssetService.performOnEngineQueue<A>(with:_:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a5;
  v27[2] = a3;
  v28 = a2;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  if (v15 == 2)
  {
    __REAssetService.asManager.getter(a4, a6);
    v16 = REAssetManagerGetEngineQueue();

    *v14 = v16;
    (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
    v17 = _dispatchPreconditionTest(_:)();
    v18 = (*(v12 + 8))(v14, v11);
    if (v17)
    {
      v28(v18);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v15)
  {
    v27[0] = v7;
    __REAssetService.asManager.getter(a4, a6);
    v19 = REAssetManagerGetEngineQueue();

    *v14 = v19;
    (*(v12 + 104))(v14, *MEMORY[0x1E69E8018], v11);
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    (*(v12 + 8))(v14, v11);
    if (v19)
    {
      __REAssetService.asManager.getter(a4, a6);
      v20 = REAssetManagerGetEngineQueue();

      OS_dispatch_queue.sync<A>(execute:)();

      return;
    }

    goto LABEL_10;
  }

  v21 = [objc_opt_self() callStackSymbols];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
  swift_allocError();
  *v26 = v23;
  *(v26 + 8) = v25;
  *(v26 + 16) = 1;
  swift_willThrow();
}

uint64_t implicit closure #1 in String.init(cString:)@<X0>(uint64_t *a2@<X8>)
{
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for __REAsset();
      do
      {
        swift_dynamicCast();
        type metadata accessor for RESceneDescriptor();
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9 + 1, 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v15 + 16));
        result = Hasher._finalize()();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

BOOL specialized static __REAssetBundle.AssetMap.SceneDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v25 = v7;
  v26 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of [String : String](a1 + v14, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of [String : String](a2 + v14, &v13[v15], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_14;
    }

LABEL_11:
    outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  outlined init with copy of [String : String](v13, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  v18 = &v13[v15];
  v19 = v25;
  (*(v5 + 32))(v25, v18, v4);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v5 + 8);
  v21(v19, v4);
  v21(v10, v4);
  outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v22 = *(v26 + 28);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23)
  {
    return v24 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0H20CompatibilityVariantV_Tt1g5(v23, v24) & 1) != 0;
  }

  return !v24;
}

uint64_t specialized __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t specialized __REAssetBundle.Header.VersionInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18E8FB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C506E696769726FLL && a2 == 0xEE006D726F667461)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized __REAssetBundle.AssetMap.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656E656373 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001C18E9010 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E656E656373 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656449656E656373 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C18E8FD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized static __REAssetBundle.frameworkVersion(key:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for realityFoundation != -1)
  {
    swift_once();
  }

  v4 = [static NSBundle.realityFoundation infoDictionary];
  if (!v4)
  {
    return 12589;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16))
  {
    goto LABEL_10;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 12589;
  }

  result = v11;
  v10 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v10 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_10:

    return 12589;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.VersionInfo.CodingKeys, &unk_1F410C050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.VersionInfo.CodingKeys, &unk_1F410C050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.VersionInfo.CodingKeys, &unk_1F410C050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.VersionInfo.CodingKeys, &unk_1F410C050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.CodingKeys, &unk_1F410BFC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.CodingKeys, &unk_1F410BFC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.CodingKeys, &unk_1F410BFC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.CodingKeys, &unk_1F410BFC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.VersionInfo, &type metadata for __REAssetBundle.Header.VersionInfo, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.Header.VersionInfo, &type metadata for __REAssetBundle.Header.VersionInfo, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo);
  }

  return result;
}

uint64_t outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  }

  return a1;
}

double outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return outlined consume of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  }

  return result;
}

double outlined consume of __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

double outlined copy of __REAssetBundle.LoadOptions.ContentRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys, &unk_1F410BF30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys, &unk_1F410BF30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys, &unk_1F410BF30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys, &unk_1F410BF30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1)
{
  result = type metadata singleton initialization cache for __REAssetBundle.AssetMap.SceneDescriptor;
  if (!type metadata singleton initialization cache for __REAssetBundle.AssetMap.SceneDescriptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant, &type metadata for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant, &type metadata for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1)
{
  v2 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys, &unk_1F410BE20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys, &unk_1F410BE20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys, &unk_1F410BE20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys, &unk_1F410BE20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.CodingKeys, &unk_1F410BD90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.CodingKeys, &unk_1F410BD90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.CodingKeys, &unk_1F410BD90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.CodingKeys, &unk_1F410BD90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A](unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR);
    v10 = _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(a2, type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.AssetDescriptor, &type metadata for __REAssetBundle.AssetMap.AssetDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.AssetDescriptor, &type metadata for __REAssetBundle.AssetMap.AssetDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: __REAsset, value: __REAssetBundle.AssetMap.SceneDescriptor)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of __DownsamplingStrategy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)((v0 + 16), v0 + v2, v3);
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:)(v0 + v2, v4, v6, v7);
}

uint64_t partial apply for closure #1 in __REAssetBundle.__write(to:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in __REAssetBundle.__write(to:completionHandler:)(v0 + 16, v0 + v2, v3);
}

unint64_t lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError()
{
  result = lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError;
  if (!lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __Archiving.ArchivingError, &type metadata for __Archiving.ArchivingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError;
  if (!lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __Archiving.ArchivingError, &type metadata for __Archiving.ArchivingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.Header(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.QueueOptions(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.QueueOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 5;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.ExportOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 123))
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.ExportOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 123) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 123) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit22__DownsamplingStrategy_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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

uint64_t getEnumTagSinglePayload for __REAssetBundle.LoadOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.LoadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.LoadOptions.ContentRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.LoadOptions.ContentRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

void *destructiveInjectEnumTag for __REAssetBundle.LoadOptions.ContentRequest(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void type metadata completion function for __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata accessor for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10RealityKit02__A9FileErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for __AssetBundleEnvelopeVersion(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for __AssetBundleEnvelopeVersion(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for __AssetBundleEnvelopeVersion(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for __AssetBundleEnvelopeVersion(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation18SerializationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys, &unk_1F410C170, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys, &unk_1F410C170, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys, &unk_1F410C170, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys, &unk_1F410C170, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

uint64_t specialized static __REAssetBundle.getSceneNamesFromRealityFile(realityFile:)(uint64_t a1, __n128 a2)
{
  result = RERealityFileGetAssetDescriptorCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      if (RERealityFileGetAssetDescriptorAtIndex() && RERealityFileAssetDescriptorAsSceneDescriptor())
      {
        if (RESceneDescriptorGetSceneName())
        {
          v7 = String.init(cString:)();
          v9 = v8;
        }

        else
        {
          v7 = 0;
          v9 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v11 = *(v5 + 2);
        v10 = *(v5 + 3);
        if (v11 >= v10 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
        }

        *(v5 + 2) = v11 + 1;
        v6 = &v5[16 * v11];
        *(v6 + 4) = v7;
        *(v6 + 5) = v9;
      }

      ++v4;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

uint64_t specialized static __REAssetBundle.getSceneDescriptorsFromRealityFile(realityFile:)(uint64_t a1, __n128 a2)
{
  result = RERealityFileGetAssetDescriptorCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      if (RERealityFileGetAssetDescriptorAtIndex())
      {
        v6 = RERealityFileAssetDescriptorAsSceneDescriptor();
        if (v6)
        {
          v7 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          }

          v9 = *(v5 + 2);
          v8 = *(v5 + 3);
          if (v9 >= v8 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v5);
          }

          *(v5 + 2) = v9 + 1;
          *&v5[8 * v9 + 32] = v7;
        }
      }

      ++v4;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SerializationError and conformance SerializationError()
{
  result = lazy protocol witness table cache variable for type SerializationError and conformance SerializationError;
  if (!lazy protocol witness table cache variable for type SerializationError and conformance SerializationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SerializationError, &type metadata for SerializationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SerializationError and conformance SerializationError);
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalizedRealityFileError and conformance LocalizedRealityFileError()
{
  result = lazy protocol witness table cache variable for type LocalizedRealityFileError and conformance LocalizedRealityFileError;
  if (!lazy protocol witness table cache variable for type LocalizedRealityFileError and conformance LocalizedRealityFileError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocalizedRealityFileError, &type metadata for LocalizedRealityFileError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedRealityFileError and conformance LocalizedRealityFileError);
  }

  return result;
}

__n128 SpatialMediaComponent.init()@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897FC0;
  RESpatialMediaComponentGetDefaultImmersiveFrameSize();
  *(inited + 32) = v3;
  RESpatialMediaComponentGetDefaultImmersiveFrameSize();
  *(inited + 36) = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  RESpatialMediaComponentGetDefaultMediaPlaneOffset();
  v9 = v7;
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  SMCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 27) = 1;
  *(a1 + 28) = 1065353216;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = v9;
  *(a1 + 48) = v9;
  return result;
}

float SpatialMediaComponent.spatialMediaPlaneXYOffset.setter(__n128 a1)
{
  a1.n128_u64[1] = v1[3].n128_u32[2];
  v1[3] = a1;
  return a1.n128_f32[0];
}

float (*SpatialMediaComponent.spatialMediaPlaneXYOffset.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  v4 = *(v1 + 48);
  *v3 = v4;
  *(v3 + 16) = v4;
  return SpatialMediaComponent.spatialMediaPlaneXYOffset.modify;
}

float SpatialMediaComponent.spatialMediaPlaneXYOffset.modify(uint64_t *a1)
{
  v1 = *a1;
  *&v2 = *(v1 + 16);
  *(&v2 + 1) = *(v1 + 8);
  *(*(v1 + 24) + 48) = v2;
  free(v1);
  return result;
}

void (*SpatialMediaComponent.spatialMediaPlaneOffset.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 48);
  return SpatialMediaComponent.spatialMediaPlaneOffset.modify;
}

void SpatialMediaComponent.spatialMediaPlaneOffset.modify(void **a1)
{
  v1 = *a1;
  *(v1[2] + 48) = *v1;
  free(v1);
}

void one-time initialization function for networkSystemObserver()
{
  type metadata accessor for SMCNetworkSystemObserver();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  SMCNetworkSystemObserver.setupRENetworkCallbacks()();
  static SpatialMediaComponent.networkSystemObserver = v0;
}

{
  type metadata accessor for ImagePresentationComponent.NetworkSystemObserver();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  static ImagePresentationComponent.networkSystemObserver = v0;
}

__n128 static SpatialMediaComponent.__fromCore(_:)@<Q0>(uint64_t a2@<X8>)
{
  REComponentGetEntity();
  SpatialMediaComponent.init()(&v16);
  RESpatialMediaStatusComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    CurrentImmersiveAnimationMode = RESpatialMediaStatusComponentGetCurrentImmersiveAnimationMode();
    if (CurrentImmersiveAnimationMode >= 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = CurrentImmersiveAnimationMode;
    }

    LOBYTE(v16) = v4;
    RESpatialMediaStatusComponentGetImmersiveFrameSize();
    *(&v16 + 1) = v5;
  }

  RESpatialMediaComponentGetSpillTextureBlend();
  DWORD1(v16) = v6;
  RESpatialMediaComponentGetLegibilityGradientStrength();
  DWORD1(v17) = v7;
  BYTE9(v17) = RESpatialMediaComponentGetIsMediaBillboardingEnabled();
  MediaBillboardingMode = RESpatialMediaComponentGetMediaBillboardingMode();
  v9 = MediaBillboardingMode == 1;
  if (MediaBillboardingMode == 2)
  {
    v9 = 2;
  }

  BYTE10(v17) = v9;
  RESpatialMediaComponentGetMediaPlaneOffset();
  v19 = v10;
  BYTE8(v17) = RESpatialMediaComponentGetIsFlatGeometry();
  BYTE11(v17) = RESpatialMediaComponentGetShouldAnimateImmersiveTransition();
  RESpatialMediaComponentGetImmersiveReducedExtent();
  DWORD1(v18) = v11;
  RESpatialMediaComponentGetMagnificationExtent();
  HIDWORD(v17) = v12;
  RESpatialMediaComponentGetMagnificationVelocity();
  LODWORD(v18) = v13;
  BYTE8(v18) = RESpatialMediaComponentGetShouldUsePortalWidthForMediaScaling();
  v14 = v17;
  *a2 = v16;
  *(a2 + 16) = v14;
  result = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = result;
  return result;
}

uint64_t SpatialMediaComponent.__toCore(_:)(void *a1)
{
  REComponentGetEntity();
  RESpatialMediaStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaComponentSetIsFlatGeometry();
  RESpatialMediaComponentSetSpillTextureBlend();
  RESpatialMediaComponentSetLegibilityGradientStrength();
  RESpatialMediaComponentSetIsMediaBillboardingEnabled();
  RESpatialMediaComponentSetMediaBillboardingMode();
  RESpatialMediaComponentSetMediaPlaneOffset();
  RESpatialMediaComponentSetShouldAnimateImmersiveTransition();
  RESpatialMediaComponentSetImmersiveReducedExtent();
  RESpatialMediaComponentSetMagnificationExtent();
  RESpatialMediaComponentSetMagnificationVelocity();
  RESpatialMediaComponentSetShouldUsePortalWidthForMediaScaling();

  return RENetworkMarkComponentDirty();
}

uint64_t SMCNetworkSystemObserver.__deallocating_deinit()
{
  if (*(v0 + 16) && *(v0 + 24))
  {
    RENetworkSystemRemoveObserver();
    *(v0 + 16) = 0;
  }

  if (*(v0 + 24))
  {
    RERelease();
  }

  return swift_deallocClassInstance();
}

void SMCNetworkSystemObserver.setupRENetworkCallbacks()()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v3 = v2;
    swift_beginAccess();
    v4 = *(v3 + 24);
    swift_unownedRetainStrong();

    swift_beginAccess();
    v5 = *(v4 + 40);

    if (!v5)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    outlined init with copy of __REAssetService(v5 + 80, v18);

    v6 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v7 + 32))(v17, v6, v7);
    if (REECSManagerSceneCount() < 1)
    {
      if (one-time initialization token for SpatialMediaLogger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, SpatialMediaLogger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_16;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "App SpatialMedia+Component: setupRENetworkCallbacks failed - scene count is zero";
    }

    else
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      *(v1 + 16) = MEMORY[0x1C68FE270](ServiceLocator);
      v9 = RENetworkSystemObserverCreateEx();
      *(v1 + 24) = v9;
      if (*(v1 + 16) && v9)
      {
        v17[4] = partial apply for implicit closure #2 in implicit closure #1 in SMCNetworkSystemObserver.setupRENetworkCallbacks();
        v17[5] = v1;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 1107296256;
        v17[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v17[3] = &block_descriptor_25;
        v10 = _Block_copy(v17);

        RENetworkSystemObserverOnComponentDidUpdate();
        _Block_release(v10);
        RENetworkSystemAddObserver();
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v18);
        return;
      }

      if (one-time initialization token for SpatialMediaLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, SpatialMediaLogger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
LABEL_16:

        goto LABEL_17;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "App SpatialMedia+Component: setupRENetworkCallbacks failed - no network system or observer";
    }

    _os_log_impl(&dword_1C1358000, v12, v13, v15, v14, 2u);
    MEMORY[0x1C6902A30](v14, -1, -1);
    goto LABEL_16;
  }
}

unint64_t lazy protocol witness table accessor for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode()
{
  result = lazy protocol witness table cache variable for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode;
  if (!lazy protocol witness table cache variable for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaComponent.MediaBillboardingMode, &type metadata for SpatialMediaComponent.MediaBillboardingMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode()
{
  result = lazy protocol witness table cache variable for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode;
  if (!lazy protocol witness table cache variable for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImmersiveAnimationMode, &type metadata for ImmersiveAnimationMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialMediaComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialMediaComponent(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void specialized SMCNetworkSystemObserver.onComponentDidUpdate(componentRef:)(uint64_t a1)
{
  REComponentGetEntity();
  RESpatialMediaComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass && ComponentByClass == a1 || (RESpatialMediaStatusComponentGetComponentType(), (v3 = REEntityGetComponentByClass()) != 0) && v3 == a1)
  {
    RESpatialMediaStatusComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {

      MEMORY[0x1EEDFE8F8]();
    }

    else
    {
      if (one-time initialization token for SpatialMediaLogger != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, SpatialMediaLogger);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1C1358000, oslog, v5, "App SpatialMedia+Component SMCNetworkSystemObserver onComponentDidUpdate failed - there is no Spatial Media Status Component", v6, 2u);
        MEMORY[0x1C6902A30](v6, -1, -1);
      }
    }
  }
}

uint64_t specialized Material.syncMaterialRenderStateFromCore(coreComponent:index:)(uint64_t a1, uint64_t a2)
{
  if (REMaterialRenderStateArrayComponentGetTriangleFillModeAtIndex())
  {
    *(v2 + 56) = 0;
  }

  if (REMaterialRenderStateArrayComponentGetWritesDepthAtIndex())
  {
    *(v2 + 64) = 1;
  }

  if (REMaterialRenderStateArrayComponentGetReadsDepthAtIndex())
  {
    *(v2 + 65) = 1;
  }

  result = REMaterialRenderStateArrayComponentGetCullModeAtIndex();
  v4 = 2;
  if (!result)
  {
    v4 = 0;
  }

  *(v2 + 72) = v4;
  *(v2 + 80) = result ^ 1;
  return result;
}

uint64_t ModelComponent.init(mesh:materials:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(a3 + 24) = result;
  return result;
}

uint64_t ModelComponent.mesh.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

float (*ModelComponent.boundsMargin.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return PointLightComponent.attenuationFalloffExponent.modify;
}

double ModelComponent.deformation.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t ModelComponent.deformation.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t ModelComponent.init(mesh:materials:deformation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 16) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 24) = v4;
  return result;
}

void ModelComponent.init(mesh:materials:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = a3();
  v9 = specialized _Proto_MeshDeformation_v1.Resource.__allocating_init(definition:)(v8);
  if (v4)
  {
  }

  else
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    *(a4 + 24) = v9;
  }
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ModelComponent(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 3);
  v8 = *v2;
  v9 = v4;
  v10 = v5;
  v7 = v3;
  return ModelComponent.__toCore(_:returnStrongReference:)(&v7, 0);
}

uint64_t ModelComponent.__toCore(_:)(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 3);
  v8 = *v2;
  v9 = v4;
  v10 = v5;
  v7 = v3;
  return ModelComponent.__toCore(_:returnStrongReference:)(&v7, 0);
}

_BYTE *closure #1 in static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)(_BYTE *result, unint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      if (a2 <= 0xE)
      {
        v6 = specialized Data.InlineData.init(_:)(result, &result[a2]);
        v7 = v8 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v5 = __DataStorage.init(bytes:length:)();
        if (a2 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v6 = swift_allocObject();
          *(v6 + 16) = 0;
          *(v6 + 24) = a2;
          v7 = v5 | 0x8000000000000000;
        }

        else
        {
          v6 = a2 << 32;
          v7 = v5 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = 0xC000000000000000;
    }

    v10 = *a3;
    v9 = a3[1];
    *a3 = v6;
    a3[1] = v7;

    return outlined consume of Data?(v10, v9);
  }

  return result;
}

void static ModelComponent.__fromCore(_:borrowStrongReference:)(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v124 = a2;
  v117 = a3;
  v4 = *a1;
  Mesh = REMeshComponentGetMesh();
  if (Mesh)
  {
    v6 = Mesh;
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v118 = swift_dynamicCastClass();
      if (v118)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    RERetain();
    v118 = v7;
    REAssetSetSwiftObject();
  }

  else
  {
    type metadata accessor for MeshResource();
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
  }

LABEL_7:
  MaterialCount = REMeshComponentGetMaterialCount();
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, MaterialCount & ~(MaterialCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  Entity = REComponentGetEntity();
  REMaterialParameterBlockArrayComponentGetComponentType();
  v11 = REEntityGetOrAddComponentByClass();
  REMaterialRenderStateArrayComponentGetComponentType();
  v129._rawValue = REEntityGetOrAddComponentByClass();
  v127 = v11;
  if (REMaterialParameterBlockArrayComponentSize() != MaterialCount)
  {
    REMaterialParameterBlockArrayComponentResize();
  }

  if (REMaterialRenderStateArrayComponentSize() != MaterialCount)
  {
    REMaterialRenderStateArrayComponentResize();
  }

  REDirectMaterialParametersArrayComponentGetComponentType();
  v121 = REEntityGetOrAddComponentByClass();
  v116[1] = Entity;
  Component = REEntityGetComponent();
  if (Component)
  {
    Entity = Component;
    VideoAsset = REVideoComponentGetVideoAsset();
    MaterialAsset = REVideoComponentGetMaterialAsset();
    if ((MaterialCount & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  MaterialAsset = 0;
  VideoAsset = 0;
  if (MaterialCount < 0)
  {
    goto LABEL_126;
  }

LABEL_13:
  if (!MaterialCount)
  {
LABEL_122:
    type metadata accessor for _Proto_MeshDeformation_v1.Resource();
    Entity = swift_allocObject();
    *(Entity + 16) = 0;
    *(Entity + 24) = 0;

    REMeshComponentGetBoundsMargin();
    v3 = v111;
    REMeshDeformationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      MeshDeformationDefinition = REMeshDeformationComponentGetMeshDeformationDefinition();

      v113 = v118;
      if (MeshDeformationDefinition)
      {
        v114 = swift_allocObject();
        *(v114 + 16) = MeshDeformationDefinition;
        *(v114 + 24) = 0;
        RERetain();
        REAssetSetSwiftObject();

        Entity = v114;
      }

      goto LABEL_128;
    }

LABEL_127:

    v113 = v118;
LABEL_128:
    v115 = v117;
    *v117 = v113;
    v115[1] = v9;
    *(v115 + 4) = v3;
    v115[3] = Entity;
    return;
  }

  v13 = 0;
  v120 = "eiver.rematerial";
  v14 = &static ComponentInfo.Platform.macOS;
  v130 = v4;
  v133 = MaterialCount;
  while (1)
  {
    MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
    if (!MaterialAtIndex)
    {
      goto LABEL_16;
    }

    v16 = MaterialAtIndex;
    MaterialParametersIDAtIndex = REMeshComponentGetMaterialParametersIDAtIndex();
    v134 = v13;
    if (!MaterialParametersIDAtIndex)
    {
      break;
    }

    type metadata accessor for __ServiceLocator();
    Shared = REEngineGetShared();
    if (Shared)
    {
      v19 = Shared;
      if (one-time initialization token for lock != -1)
      {
        swift_once();
      }

      v20 = static __ServiceLocator.lock;
      os_unfair_lock_lock((static __ServiceLocator.lock + 16));
      v21 = v14[291];
      if (!v21 || *(v21 + 24) != v19)
      {
        type metadata accessor for __Engine();
        swift_allocObject();
        v14[291] = __Engine.init(coreEngine:)(v19);

        specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
        specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
      }

      os_unfair_lock_unlock(v20 + 4);
      v13 = v134;
      v22 = v14[291];
      if (!v22)
      {
LABEL_48:
        Default = REEngineConfigurationCreateDefault();
        type metadata accessor for EngineConfiguration();
        v36 = swift_allocObject();
        *(v36 + 16) = Default;
        if (REGetRetainCount() >= 2)
        {

          v37 = REEngineConfigurationClone();
          v38 = swift_allocObject();
          *(v38 + 16) = v37;

          v36 = v38;
        }

        REEngineConfigurationSetClockMode();
        if (one-time initialization token for defaultServices != -1)
        {
          swift_once();
        }

        v39 = v9;
        if (REGetRetainCount() >= 2)
        {

          v40 = REEngineConfigurationClone();
          v41 = swift_allocObject();
          *(v41 + 16) = v40;

          v36 = v41;
        }

        REEngineConfigurationSetServicesToCreate();
        if (REGetRetainCount() >= 2)
        {

          v42 = REEngineConfigurationClone();
          v43 = swift_allocObject();
          *(v43 + 16) = v42;

          v36 = v43;
        }

        v9 = v39;
        REEngineConfigurationSetServicesToUpdate();
        v14 = &static ComponentInfo.Platform.macOS;
        if (REGetRetainCount() >= 2)
        {

          v44 = REEngineConfigurationClone();
          v45 = swift_allocObject();
          *(v45 + 16) = v44;

          v36 = v45;
        }

        REEngineConfigurationSetStartupOptions();
        if (one-time initialization token for defaultRenderFlags != -1)
        {
          swift_once();
        }

        if (REGetRetainCount() >= 2)
        {

          v46 = REEngineConfigurationClone();
          v47 = swift_allocObject();
          *(v47 + 16) = v46;

          v36 = v47;
        }

        v48 = REEngineConfigurationSetRenderFlags();
        static __ServiceLocator.__sharedEngine.getter(v48);
        if (v49)
        {
        }

        else
        {
          *&v150 = v36;
          v61 = specialized static __Engine.makeSharedEngine(_:)(&v150);
          REEngineSetShared();
          static __ServiceLocator.sharedEngine = v61;

          static __ServiceLocator.createdSharedEngine = 1;
        }

        v13 = v134;

        specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
        specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
        v22 = static __ServiceLocator.sharedEngine;
        if (!static __ServiceLocator.sharedEngine)
        {
          goto LABEL_132;
        }
      }
    }

    else
    {
      v14[291] = 0;

      v22 = v14[291];
      if (!v22)
      {
        goto LABEL_48;
      }
    }

    swift_beginAccess();
    v62 = v22[5];
    if (!v62)
    {
      goto LABEL_131;
    }

    swift_beginAccess();
    if (MEMORY[0x1C68FE260](*(v62 + 16)))
    {
      ParametersTypeForID = REMaterialParametersServiceGetParametersTypeForID();
      if (ParametersTypeForID == 2)
      {
        v64 = type metadata accessor for PhysicallyBasedMaterialResource();
        v65 = swift_allocObject();
        if (one-time initialization token for materialParametersService != -1)
        {
          swift_once();
        }

        PbrParametersByID = REMaterialParametersServiceFindPbrParametersByID();
        if (!PbrParametersByID)
        {
          goto LABEL_133;
        }

        *(v65 + 16) = PbrParametersByID;
        RERetain();
        v68 = v9[2];
        v67 = v9[3];
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v9);
        }

        v70 = &protocol witness table for PhysicallyBasedMaterialResource;
      }

      else
      {
        if (ParametersTypeForID != 1)
        {
          goto LABEL_136;
        }

        v64 = type metadata accessor for UnlitMaterialResource();
        v65 = swift_allocObject();
        if (one-time initialization token for materialParametersService != -1)
        {
          swift_once();
        }

        UnlitParametersByID = REMaterialParametersServiceFindUnlitParametersByID();
        if (!UnlitParametersByID)
        {
          goto LABEL_133;
        }

        *(v65 + 16) = UnlitParametersByID;
        RERetain();
        v68 = v9[2];
        v72 = v9[3];
        v69 = v68 + 1;
        if (v68 >= v72 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v68 + 1, 1, v9);
        }

        v70 = &protocol witness table for UnlitMaterialResource;
      }

      *(&v151 + 1) = v64;
      *&v152 = v70;
      *&v150 = v65;
      v9[2] = v69;
      outlined init with take of ForceEffectBase(&v150, &v9[5 * v68 + 4]);
LABEL_110:
      MaterialCount = v133;
      v13 = v134;
      goto LABEL_16;
    }

    MaterialCount = v133;
LABEL_16:
    if (++v13 == MaterialCount)
    {
      goto LABEL_122;
    }
  }

  if (!VideoAsset || v16 != MaterialAsset)
  {
    if (v124)
    {
      v50 = REMaterialParameterBlockArrayComponentBorrowBlockValueAtIndex();
      v51 = v121;
      if (!v50)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v50 = REMaterialParameterBlockArrayComponentGetBlockValueAtIndex();
      v51 = v121;
      if (!v50)
      {
        goto LABEL_136;
      }
    }

    v52 = v50;
    v53 = MEMORY[0x1C68F8A40](v51, v13);
    v54 = REDirectMaterialParametersArrayComponentGetBuffer();
    v55 = REDirectMaterialParametersArrayComponentGetBuffer();
    if (v54 | v55)
    {
      v59 = v55;
      if (v53)
      {
        v132 = specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)(v51, 2, v134);
        v126 = v60;
        v56 = REDirectMaterialParametersArrayComponentGetResources();
        if (!v56)
        {
          v56 = REDirectParameterResourcesCreate();
        }

        v125 = 0;
        v58 = 0;
        v57 = 0;
      }

      else
      {
        v73 = v9;
        v74 = v134;
        v132 = specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)(v51, 1, v134);
        v126 = v75;
        v76 = v51;
        v56 = REDirectMaterialParametersArrayComponentGetResources();
        if (!v56)
        {
          v56 = REDirectParameterResourcesCreate();
        }

        v125 = specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)(v76, 2, v74);
        v78 = v77;
        v57 = REDirectMaterialParametersArrayComponentGetResources();
        if (!v57)
        {
          v57 = REDirectParameterResourcesCreate();
        }

        v58 = v78 | 0x1000000000000000;
        v9 = v73;
        v14 = &static ComponentInfo.Platform.macOS;
      }
    }

    else
    {
      v132 = 0;
      v125 = 0;
      v126 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0x2000000000000000;
    }

    Type = REMaterialAssetGetType();
    if (one-time initialization token for mapping != -1)
    {
      v99 = Type;
      swift_once();
      Type = v99;
    }

    v80 = static __MaterialResource.mapping + 32;
    v81 = *(static __MaterialResource.mapping + 2) + 1;
    while (--v81)
    {
      v82 = v80 + 24;
      v83 = *v80;
      v80 += 24;
      if (v83 == Type)
      {
        v84 = v9;
        v85 = *(v82 - 2);
        *&v135 = MEMORY[0x1E69E7CC0];
        BYTE8(v135) = 0;
        *&v136 = 0;
        *(&v136 + 1) = v52;
        *&v150 = v132;
        *(&v150 + 1) = v126;
        *&v151 = v56;
        *(&v151 + 1) = v125;
        *&v152 = v58;
        *(&v152 + 1) = v57;
        v156 = v16;

        v85(&v141, &v156, &v135, &v150);

        goto LABEL_107;
      }
    }

    v84 = v9;
    *(&v142 + 1) = &type metadata for AnyMaterial;
    *&v143 = &protocol witness table for AnyMaterial;
    v86 = swift_allocObject();
    *&v141 = v86;
    v87 = MEMORY[0x1E69E7CC0];

    v88 = v52;
    v89 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v16);
    if (!v89)
    {
      goto LABEL_136;
    }

    *(v86 + 16) = v89;
    *(v86 + 24) = v87;
    *(v86 + 32) = 0;
    *(v86 + 40) = 0;
    *(v86 + 48) = v88;
    v14 = &static ComponentInfo.Platform.macOS;
LABEL_107:
    __swift_mutable_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
    Material.syncMaterialRenderStateFromCore(coreComponent:index:)(v129, v134);
    outlined init with copy of __REAssetService(&v141, &v150);
    v9 = v84;
    v157[0] = v84;
    v91 = v84[2];
    v90 = v84[3];
    if (v91 >= v90 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v84);
      outlined consume of DirectUniformsState?(v132, v126, v56, v125, v58, v57);

      v157[0] = v9;
    }

    else
    {
      outlined consume of DirectUniformsState?(v132, v126, v56, v125, v58, v57);
    }

    v92 = *(&v151 + 1);
    v93 = v152;
    v94 = __swift_mutable_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
    v95 = MEMORY[0x1EEE9AC00](v94);
    v97 = v116 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v97, v95);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v91, v97, v157, v92, v93);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    __swift_destroy_boxed_opaque_existential_1(&v141);
    goto LABEL_110;
  }

  type metadata accessor for __VideoResource();
  *&v150 = VideoAsset;
  v23 = static __VideoResource.__fromCore(_:)(&v150);
  *(&v142 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  *&v141 = MaterialAsset;
  outlined init with copy of Any(&v141, &v135);
  swift_dynamicCast();
  v122 = v156;
  __swift_destroy_boxed_opaque_existential_1(&v141);
  v125 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD00000000000001FLL, v120 | 0x8000000000000000, v24);
  v126 = REMaterialParameterBlockValueCreate();
  v147 = 1;
  type metadata accessor for VideoPlaybackController();
  v25 = swift_allocObject();
  *(v25 + 24) = 1;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 16) = v23;
  swift_retain_n();
  AudioInputMode = REVideoAssetGetAudioInputMode();
  MaterialCount = v133;
  if (AudioInputMode >= 3)
  {
    goto LABEL_136;
  }

  v27 = 0x20001u >> (8 * (AudioInputMode & 0x1F));
  swift_beginAccess();
  *(v25 + 24) = v27;
  REVideoAssetGetReverbSendLevelDecibels();
  *(v25 + 32) = v28;
  __VideoResource.removeNilEntries()();
  swift_beginAccess();
  v132 = v23;
  v29 = v23[3];
  v123 = v9;
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
LABEL_113:

LABEL_114:
    v100 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v122);
    v9 = v123;
    v101 = MEMORY[0x1E69E7CC0];
    v102 = v134;
    if (!v100)
    {
      goto LABEL_136;
    }

    v103 = v100;

    *(&v151 + 1) = v156;
    DWORD1(v151) = *(&v156 + 3);
    *(&v154 + 2) = v148;
    WORD3(v154) = v149;
    *&v150 = v103;
    *(&v150 + 1) = v101;
    LOBYTE(v151) = 0;
    *(&v151 + 1) = 0;
    *&v152 = v126;
    *(&v152 + 1) = v132;
    v153 = v25;
    LOWORD(v154) = 257;
    *(&v154 + 1) = 0;
    v155 = v147;
    specialized Material.syncMaterialRenderStateFromCore(coreComponent:index:)(v129._rawValue, v102);
    if (v124)
    {
      v104 = REMaterialParameterBlockArrayComponentBorrowBlockValueAtIndex();
      if (!v104)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v104 = REMaterialParameterBlockArrayComponentGetBlockValueAtIndex();
      if (!v104)
      {
        goto LABEL_136;
      }
    }

    v105 = v104;

    *(&v150 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v151) = 0;
    *(&v151 + 1) = 0;
    *&v152 = v105;
    v143 = v152;
    v144 = v153;
    v145 = v154;
    v146 = v155;
    v141 = v150;
    v142 = v151;
    outlined init with copy of VideoMaterial(&v141, &v135);
    v107 = v9[2];
    v106 = v9[3];
    if (v107 >= v106 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v9);
    }

    v13 = v134;

    *(&v136 + 1) = &type metadata for VideoMaterial;
    *&v137 = &protocol witness table for VideoMaterial;
    v108 = swift_allocObject();
    *&v135 = v108;
    v109 = v144;
    *(v108 + 48) = v143;
    *(v108 + 64) = v109;
    *(v108 + 80) = v145;
    *(v108 + 96) = v146;
    v110 = v142;
    *(v108 + 16) = v141;
    *(v108 + 32) = v110;
    v9[2] = v107 + 1;
    outlined init with take of ForceEffectBase(&v135, &v9[5 * v107 + 4]);
    v137 = v152;
    v138 = v153;
    v139 = v154;
    v140 = v155;
    v135 = v150;
    v136 = v151;
    outlined destroy of VideoMaterial(&v135);
    goto LABEL_16;
  }

LABEL_32:
  v119 = v25;

  v31 = 0;
  while (2)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v31, v29);
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_129;
      }

LABEL_42:
      if (swift_weakLoadStrong())
      {
        REVideoComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          DesiredViewingMode = REVideoComponentGetDesiredViewingMode();

          v34 = DesiredViewingMode == 1;
          v14 = &static ComponentInfo.Platform.macOS;
          if (v34)
          {

            v25 = v119;
            *(v119 + 40) = 0;
            MaterialCount = v133;
            goto LABEL_114;
          }

LABEL_35:
          ++v31;
          if (v32 == v30)
          {

            MaterialCount = v133;
            v25 = v119;
            goto LABEL_114;
          }

          continue;
        }

        v14 = &static ComponentInfo.Platform.macOS;
      }

      goto LABEL_35;
    }

    break;
  }

  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_130;
  }

  v32 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_42;
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  swift_deallocPartialClassInstance();
LABEL_136:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ModelComponent.__toCore(_:returnStrongReference:)(uint64_t *a1, int a2)
{
  LODWORD(v181) = a2;
  v4 = type metadata accessor for Logger();
  v158 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v159 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = *a1;
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = v2[4];
  v161 = *(v2 + 3);
  Entity = REComponentGetEntity();
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v10 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    specialized static Entity.entityInfoType(_:)(Entity);
    if (v12)
    {
      v13 = (*(v12 + 232))();
      v14 = *(v13 + 16);

      MEMORY[0x1C68F9740](v14, 0);
      *(v13 + 16) = Entity;
      MEMORY[0x1C68F9740](Entity, v13);

      v10 = v13;
    }

    else
    {
      v10 = makeEntity(for:)(Entity);
    }
  }

  *&v182 = v6;
  v162 = v10;
  v157 = v4;
  v15 = *(v7 + 16);
  v167 = Entity;
  v175 = v7;
  v183 = v15;
  if (!v15)
  {
    v173 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_25;
    }

LABEL_28:
    *&v200 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    v40 = v162;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation05VideoD0V_TtB5(&v197, 0, v40);
    outlined destroy of BodyTrackingComponent?(&v197, &_s17RealityFoundation14VideoComponentVSgMd, &_s17RealityFoundation14VideoComponentVSgMR);
    v41 = *(v40 + 16);

    if (v41 != *(v40 + 16))
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    goto LABEL_29;
  }

  v16 = 0;
  v173 = MEMORY[0x1E69E7CC0];
  v17 = v7 + 32;
  do
  {
    outlined init with copy of __REAssetService(v17, v203);
    if (v16)
    {
      v16 = 1;
    }

    else
    {
      v19 = v204;
      v18 = v205;
      __swift_project_boxed_opaque_existential_1(v203, v204);
      v16 = (v18[18])(v19, v18);
    }

    outlined init with copy of __REAssetService(v203, &v196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v197 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_1(v203);
    if (v197)
    {
      v192 = v199;
      v193 = v200;
      v194 = v201;
      v195 = v202;
      v190 = v197;
      v191 = v198;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v173 + 2) + 1, 1, v173);
      }

      v21 = *(v173 + 2);
      v20 = *(v173 + 3);
      if (v21 >= v20 >> 1)
      {
        v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v173);
      }

      v186 = v192;
      v187 = v193;
      v188 = v194;
      v189 = v195;
      v22 = v190;
      v184 = v190;
      v185 = v191;
      v23 = v173;
      *(v173 + 2) = v21 + 1;
      v24 = &v23[88 * v21];
      *(v24 + 3) = v185;
      v25 = v186;
      v26 = v187;
      v27 = v188;
      v24[112] = v189;
      *(v24 + 5) = v26;
      *(v24 + 6) = v27;
      *(v24 + 4) = v25;
      *(v24 + 2) = v22;
    }

    else
    {
      v192 = v199;
      v193 = v200;
      v194 = v201;
      v195 = v202;
      v190 = v197;
      v191 = v198;
      outlined destroy of BodyTrackingComponent?(&v190, &_s10RealityKit13VideoMaterialVSgMd, &_s10RealityKit13VideoMaterialVSgMR);
    }

    v17 += 40;
    --v15;
  }

  while (v15);
  if (!*(v173 + 2))
  {
    v7 = v175;
    if (v16)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = v175;
LABEL_25:
  v28 = v173;
  v29 = *(v173 + 5);
  v199 = *(v173 + 4);
  v200 = v29;
  v201 = *(v173 + 6);
  v202 = v173[112];
  v30 = *(v173 + 3);
  v197 = *(v173 + 2);
  v198 = v30;
  v31 = *(&v199 + 1);
  v32 = v29;
  v204 = &type metadata for VideoMaterial;
  v205 = &protocol witness table for VideoMaterial;
  v203[0] = swift_allocObject();
  memmove((v203[0] + 16), v28 + 32, 0x51uLL);
  *&v184 = v31;
  outlined init with copy of __REAssetService(v203, &v184 + 8);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of ModelComponent.__toCore(_:returnStrongReference:));
  v34 = v33;
  outlined init with copy of VideoMaterial(&v197, &v190);
  outlined init with copy of VideoMaterial(&v197, &v190);

  __swift_destroy_boxed_opaque_existential_1(v203);
  *&v187 = v34;
  v35 = v162;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation05VideoD0V_TtB5(&v184, 0, v35);
  outlined destroy of BodyTrackingComponent?(&v184, &_s17RealityFoundation14VideoComponentVSgMd, &_s17RealityFoundation14VideoComponentVSgMR);
  v36 = *(v35 + 16);

  if (v36 != *(v35 + 16))
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  __VideoResource.addEntity(_:)(v35);
  LOBYTE(v190) = *(v32 + 40);
  __VideoResource.preferredViewingMode.setter(&v190);
  v37 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v37 + 120, &v190);
  v38 = *(&v191 + 1);
  v39 = v192;
  __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
  (*(v39 + 32))(v38, v39);
  REAssetManagerPreloadVideoAssetOnce();
  outlined destroy of VideoMaterial(&v197);
  __swift_destroy_boxed_opaque_existential_1(&v190);
LABEL_29:
  Mesh = REMeshComponentGetMesh();
  v43 = *(v182 + 16);
  if (v43)
  {
    REMeshComponentSetMesh();
    v44 = Mesh != v43;
    if (REMeshAssetGetTotalSkeletonCount() >= 1)
    {
      REMeshDeformationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RESkeletalPoseComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RERigComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
    }

    REMeshDeformationComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      result = REMeshAssetGetModelCount();
      if (result < 0)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v45 = result;
      v46 = 0;
      while (v45 != v46)
      {
        if (__OFADD__(v46, 1))
        {
          goto LABEL_169;
        }

        result = REMeshAssetGetBlendShapeGroupCount();
        ++v46;
        if (result >= 1)
        {
          REMeshDeformationComponentGetComponentType();
          REEntityGetOrAddComponentByClass();
          break;
        }
      }
    }
  }

  else
  {
    REMeshComponentSetMesh();
    v44 = Mesh != 0;
  }

  REMeshComponentGetBoundsMargin();
  v48 = v47;
  REMeshComponentSetBoundsMargin();
  v49 = v48 != v8 || v44;
  REMaterialParameterBlockArrayComponentGetComponentType();
  v170 = REEntityGetOrAddComponentByClass();
  v50 = REMaterialParameterBlockArrayComponentSize();
  v51 = *(v7 + 16);
  if (v50 != v51)
  {
    REMaterialParameterBlockArrayComponentResize();
  }

  MaterialCount = REMeshComponentGetMaterialCount();
  v53 = v183;
  v54 = v49;
  if (v51 < MaterialCount)
  {
    REMeshComponentRemoveAllMaterials();
    v54 = 1;
  }

  v55 = REMeshComponentGetMaterialCount();
  REMaterialRenderStateArrayComponentGetComponentType();
  v56 = REEntityGetComponentByClass() == 0;
  REMaterialRenderStateArrayComponentGetComponentType();
  v169._rawValue = REEntityGetOrAddComponentByClass();
  result = specialized static __ServiceLocator.shared.getter();
  v57 = 0;
  v176 = v175 + 32;
  v180 = v55;
  while (1)
  {
    v58 = 0uLL;
    v59 = v53;
    v60 = 0uLL;
    v61 = 0uLL;
    if (v57 == v53)
    {
      goto LABEL_55;
    }

    if (v57 >= *(v175 + 16))
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v59 = v57 + 1;
    *&v190 = v57;
    result = outlined init with copy of __REAssetService(v176 + 40 * v57, &v190 + 8);
    v58 = v190;
    v60 = v191;
    v61 = v192;
LABEL_55:
    v197 = v58;
    v198 = v60;
    v62 = v61;
    v199 = v61;
    if (!v61)
    {
      break;
    }

    v57 = v59;
    v182 = v58;
    outlined init with take of ForceEffectBase((&v197 + 8), &v190);
    v63 = v182;
    if (v182 < v55)
    {
      v168 = v54;
      MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
      v65 = *(&v191 + 1);
      v66 = v192;
      __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      v67 = (*(v66 + 136))(v65, v66);
      v68 = *(&v191 + 1);
      v69 = v192;
      __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      (*(v69 + 8))(v68, v69);
      if (v67)
      {
        swift_beginAccess();

        REMeshComponentSetMaterialWithParametersAtIndex();
        goto LABEL_62;
      }

      swift_beginAccess();

      REMeshComponentSetMaterialAtIndex();
      if (v168)
      {
LABEL_62:
        v54 = 1;
      }

      else
      {
        v75 = *(&v191 + 1);
        v76 = v192;
        __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
        v77 = (*(v76 + 8))(v75, v76);
        swift_beginAccess();
        v78 = *(v77 + 16);

        if (MaterialAtIndex)
        {
          v79 = MaterialAtIndex == v78;
        }

        else
        {
          v79 = 0;
        }

        v54 = !v79;
      }

      v53 = v183;
      v55 = v180;
      goto LABEL_51;
    }

    v70 = *(&v191 + 1);
    v71 = v192;
    __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
    v72 = (*(v71 + 136))(v70, v71);
    v73 = *(&v191 + 1);
    v74 = v192;
    __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
    (*(v74 + 8))(v73, v74);
    swift_beginAccess();

    if (v72)
    {
      REMeshComponentAddMaterialWithParameters();
    }

    else
    {
      REMeshComponentAddMaterial();
    }

    v54 = 1;
    v53 = v183;
LABEL_51:
    __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
    v56 |= Material.syncMaterialRenderStateToCore(_:index:)(v169, v63);
    result = __swift_destroy_boxed_opaque_existential_1(&v190);
  }

  v168 = v54;
  v160 = v56;
  while (1)
  {
    v81 = 0uLL;
    v82 = v183;
    v83 = 0uLL;
    v84 = 0uLL;
    if (v62 != v183)
    {
      if (v62 >= *(v175 + 16))
      {
        goto LABEL_166;
      }

      v82 = v62 + 1;
      *&v190 = v62;
      outlined init with copy of __REAssetService(v176 + 40 * v62, &v190 + 8);
      v81 = v190;
      v83 = v191;
      v84 = v192;
    }

    v197 = v81;
    v198 = v83;
    v199 = v84;
    if (!v84)
    {
      break;
    }

    v182 = v81;
    outlined init with take of ForceEffectBase((&v197 + 8), &v190);
    v85 = *(&v191 + 1);
    v86 = v192;
    if (v181)
    {
      __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      (*(v86 + 16))(&v184, v85, v86);
      v87 = *(&v185 + 1);
      REMaterialParameterBlockArrayComponentReturnBlockValueAtIndex();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      v80 = (*(v86 + 32))(&v184, v85, v86);
      REMaterialParameterBlockArrayComponentSetBlockValueAtIndex();
      v80(&v184, 0);
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v190);
    v62 = v82;
  }

  REDirectMaterialParametersArrayComponentGetComponentType();
  result = REEntityGetOrAddComponentByClass();
  v88 = result;
  v89 = 0;
  v166 = &v185;
  v90 = v175;
  v91 = v183;
  v165 = result;
  while (2)
  {
    v92 = 0uLL;
    v93 = v91;
    v94 = 0uLL;
    v95 = 0uLL;
    if (v89 != v91)
    {
      if (v89 >= *(v90 + 16))
      {
        goto LABEL_167;
      }

      v93 = v89 + 1;
      *&v190 = v89;
      outlined init with copy of __REAssetService(v176 + 40 * v89, &v190 + 8);
      v92 = v190;
      v94 = v191;
      v95 = v192;
    }

    v197 = v92;
    v198 = v94;
    v199 = v95;
    if (v95)
    {
      v89 = v93;
      v181 = v92;
      outlined init with take of ForceEffectBase((&v197 + 8), v203);
      v96 = v204;
      v97 = v205;
      __swift_project_boxed_opaque_existential_1(v203, v204);
      (v97[19])(&v190, v96, v97);
      *&v182 = *(&v190 + 1);
      v179 = v191;
      v180 = v190;
      v177 = *(&v192 + 1);
      v98 = v192;
      v178 = *(&v191 + 1);
      v99 = v204;
      v100 = v205;
      __swift_project_boxed_opaque_existential_1(v203, v204);
      (v100[1])(v99, v100);
      swift_beginAccess();

      v101 = (v98 >> 60) & 3;
      if (v101)
      {
        if (v101 == 1)
        {
          HasGeometryModifierCustomParamsName = REMaterialAssetHasGeometryModifierCustomParamsName();
          v172 = v93;
          if (HasGeometryModifierCustomParamsName)
          {
            v174 = v98;
            specialized static __ServiceLocator.shared.getter();
            result = swift_beginAccess();
            v103 = v182 >> 62;
            if ((v182 >> 62) > 1)
            {
              v98 = v174;
              v104 = v181;
              if (v103 == 2 && __OFSUB__(*(v180 + 24), *(v180 + 16)))
              {
                goto LABEL_175;
              }
            }

            else
            {
              v98 = v174;
              v104 = v181;
              if (v103 && __OFSUB__(HIDWORD(v180), v180))
              {
                goto LABEL_174;
              }
            }

            v121 = v104;
            REDirectMaterialParametersArrayComponentEnsureBufferSize();
            v122 = REDirectMaterialParametersArrayComponentGetBuffer();
            if (v122)
            {
              v164 = v121;
              v123 = swift_allocObject();
              v124 = v179;
              v125 = v182;
              v123[2] = v180;
              v123[3] = v125;
              v123[4] = v124;
              v126 = swift_allocObject();
              v127 = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
              *(v126 + 16) = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
              *(v126 + 24) = v123;
              *&v186 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
              *(&v186 + 1) = v126;
              *&v184 = MEMORY[0x1E69E9820];
              *(&v184 + 1) = 1107296256;
              *&v185 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
              *(&v185 + 1) = &block_descriptor_21;
              v128 = _Block_copy(&v184);
              v129 = v122;
              outlined copy of Data._Representation(v180, v125);
              v130 = v179;

              DRBufferReplace();

              _Block_release(v128);
              LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

              if (v128)
              {
                goto LABEL_170;
              }

              v98 = v174;
              v90 = v175;
              v88 = v165;
            }

            else
            {
              v127 = 0;
              v123 = 0;
            }

            REDirectMaterialParametersArrayComponentSetResources();

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v127, v123);
            v91 = v183;
            v89 = v172;
          }

          else
          {
            MEMORY[0x1C68F89F0](v88, 1, v181);
          }

          if (REMaterialAssetHasSurfaceShaderCustomParamsName())
          {
            specialized static __ServiceLocator.shared.getter();
            result = swift_beginAccess();
            v131 = v98 >> 62;
            if ((v98 >> 62) > 1)
            {
              v132 = v181;
              if (v131 == 2 && __OFSUB__(*(v178 + 24), *(v178 + 16)))
              {
                goto LABEL_176;
              }
            }

            else
            {
              v132 = v181;
              if (v131 && __OFSUB__(HIDWORD(v178), v178))
              {
                goto LABEL_177;
              }
            }

            v133 = v132;
            REDirectMaterialParametersArrayComponentEnsureBufferSize();
            v134 = REDirectMaterialParametersArrayComponentGetBuffer();
            if (v134)
            {
              v164 = v133;
              v174 = v98;
              v135 = v98 & 0xCFFFFFFFFFFFFFFFLL;
              *&v181 = v135;
              v136 = swift_allocObject();
              v137 = v178;
              v136[2] = v178;
              v136[3] = v135;
              v138 = v177;
              v136[4] = v177;
              v139 = swift_allocObject();
              v140 = partial apply for closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:);
              *(v139 + 16) = partial apply for closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:);
              *(v139 + 24) = v136;
              *&v186 = _sSvSuIgyy_SvSuIegyy_TRTA_0;
              *(&v186 + 1) = v139;
              *&v184 = MEMORY[0x1E69E9820];
              *(&v184 + 1) = 1107296256;
              *&v185 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
              *(&v185 + 1) = &block_descriptor_26;
              v141 = _Block_copy(&v184);
              v142 = v134;
              outlined copy of Data._Representation(v137, v181);
              v143 = v138;

              DRBufferReplace();

              _Block_release(v141);
              LOBYTE(v138) = swift_isEscapingClosureAtFileLocation();

              if (v138)
              {
                goto LABEL_171;
              }

              v98 = v174;
              v90 = v175;
              v91 = v183;
              v88 = v165;
            }

            else
            {
              v140 = 0;
              v136 = 0;
            }

            v144 = v177;
            REDirectMaterialParametersArrayComponentSetResources();

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v140, v136);
            outlined consume of DirectUniformsState(v180, v182, v179, v178, v98, v144);
            goto LABEL_138;
          }

          MEMORY[0x1C68F89F0](v88, 2, v181);
          outlined consume of DirectUniformsState(v180, v182, v179, v178, v98, v177);
        }

        else
        {
          MEMORY[0x1C68F89F0](v88, 3, v181);
        }
      }

      else
      {
        Type = REMaterialAssetGetType();
        v174 = v98;
        if (Type == 6)
        {
          v106 = REMaterialAssetHasGeometryModifierCustomParamsName();
          if (REMaterialAssetHasSurfaceShaderCustomParamsName())
          {
            v107 = v106 | 2;
          }

          else
          {
            v107 = v106;
          }
        }

        else if (Type == 7)
        {
          v107 = 3;
        }

        else
        {
          v107 = 0;
        }

        specialized static __ServiceLocator.shared.getter();
        result = swift_beginAccess();
        v108 = v182 >> 62;
        if ((v182 >> 62) > 1)
        {
          v109 = v181;
          if (v108 == 2 && __OFSUB__(*(v180 + 24), *(v180 + 16)))
          {
            goto LABEL_173;
          }
        }

        else
        {
          v109 = v181;
          if (v108 && __OFSUB__(HIDWORD(v180), v180))
          {
            goto LABEL_172;
          }
        }

        v172 = v89;
        v110 = v109;
        REDirectMaterialParametersArrayComponentEnsureBufferSize();
        v111 = REDirectMaterialParametersArrayComponentGetBuffer();
        if (v111)
        {
          v163 = v110;
          v164 = v107;
          v112 = swift_allocObject();
          v113 = v179;
          v114 = v180;
          v115 = v182;
          v112[2] = v180;
          v112[3] = v115;
          v112[4] = v113;
          v116 = swift_allocObject();
          v117 = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
          *(v116 + 16) = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
          *(v116 + 24) = v112;
          *&v186 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
          *(&v186 + 1) = v116;
          *&v184 = MEMORY[0x1E69E9820];
          *(&v184 + 1) = 1107296256;
          *&v185 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
          *(&v185 + 1) = &block_descriptor_32;
          v118 = _Block_copy(&v184);
          *&v181 = *(&v186 + 1);
          v119 = v111;
          outlined copy of DirectUniformsState(v114, v115, v113, v178, v174, v177);

          DRBufferReplace();

          _Block_release(v118);
          LOBYTE(v114) = swift_isEscapingClosureAtFileLocation();

          if (v114)
          {
            goto LABEL_168;
          }

          v90 = v175;
          v88 = v165;
        }

        else
        {
          v117 = 0;
          v112 = 0;
        }

        v120 = v179;
        REDirectMaterialParametersArrayComponentSetResources();

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v117, v112);
        outlined consume of DirectUniformsState(v180, v182, v120, v178, v174, v177);
        v91 = v183;
LABEL_138:
        v89 = v172;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v203);
      continue;
    }

    break;
  }

  REMeshDeformationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v146 = v161;
  if (!*(v161 + 16))
  {
    v147 = specialized _Proto_MeshDeformation_v1.Resource.definition.getter();
    v146 = v161;
    if (!*(v147 + 16))
    {
      v148 = v160;
      if (v168)
      {
        goto LABEL_152;
      }

      goto LABEL_155;
    }
  }

  v148 = v160;
  v149 = v168;
  if (!ComponentByClass)
  {
    REMeshDeformationComponentGetComponentType();
    result = REEntityAddComponentByClass();
    if (!result)
    {
LABEL_182:
      __break(1u);
      return result;
    }
  }

  MeshDeformationDefinition = REMeshDeformationComponentGetMeshDeformationDefinition();
  v151 = *(v146 + 16);
  if (MeshDeformationDefinition)
  {
    if (MeshDeformationDefinition != v151)
    {
      goto LABEL_145;
    }

LABEL_151:
    if (v149)
    {
LABEL_152:
      v152 = v171;
      RENetworkMarkComponentDirty();
      if ((v148 & 1) == 0)
      {
LABEL_157:

        goto LABEL_158;
      }

LABEL_156:
      RENetworkMarkComponentDirty();
      goto LABEL_157;
    }

LABEL_155:
    v152 = v171;
    if ((v148 & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  if (!v151)
  {
    goto LABEL_151;
  }

LABEL_145:
  REMeshDeformationComponentSetMeshDeformationDefinition();
  if (v149)
  {
    RENetworkMarkComponentDirty();
  }

  if (v148)
  {
    RENetworkMarkComponentDirty();
  }

  RENetworkMarkComponentDirty();
  v152 = v171;
LABEL_158:
  RENetworkMarkComponentDirty();
  RENetworkMarkComponentDirty();
  REMeshPartInstancesComponentGetComponentType();
  v153 = REEntityGetComponentByClass();
  if (!v153 || (specialized static MeshInstancesComponent.isAboveLimits(meshComponent:meshInstancesComponent:)(v152, v153) & 1) == 0)
  {
  }

  Logger.init()();
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    *v156 = 67109120;
    *(v156 + 4) = REMeshPartInstancesComponentGetVertexLimit();
    _os_log_impl(&dword_1C1358000, v154, v155, "Error: MeshInstancesComponent attempted to render beyond the per component vertex/index limit of %u. Reduce instance count of MeshInstancesComponent, or vertex/index count of the mesh part being instanced.", v156, 8u);
    MEMORY[0x1C6902A30](v156, -1, -1);
  }

  else
  {
  }

  return (*(v158 + 8))(v159, v157);
}