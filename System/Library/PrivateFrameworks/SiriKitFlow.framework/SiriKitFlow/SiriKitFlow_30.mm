uint64_t sub_1DCE15BC0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v1 = _s11SiriKitFlow5StateOMa_0(319, AssociatedTypeWitness, v4, v5);
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t sub_1DCE15D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OfferBehaviorFlowFrameResult(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unsigned __int8 *sub_1DCE15E34(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || v10 + 1 > 0x18)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v16 = *(v6 + 64);
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v18 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v18 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v19 = 1;
        if (v18 >= 0xFF)
        {
          v19 = 2;
        }

        if (v18)
        {
          v17 = v19;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v16 = v17 + v8;
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  v20 = __src[v16];
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    v22 = *(v6 + 64);
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v24 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v24 > 0xFFFE)
        {
          v23 = 4;
        }

        else
        {
          v25 = 1;
          if (v24 >= 0xFF)
          {
            v25 = 2;
          }

          if (v24)
          {
            v23 = v25;
          }

          else
          {
            v23 = 0;
          }
        }
      }

      else
      {
        v23 = 1;
      }

      v22 = v23 + v8;
    }

    if (v22 <= 1)
    {
      LODWORD(v22) = 1;
    }

    if (v22 <= 3)
    {
      v26 = v22;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 1:
        v27 = *__src;
        goto LABEL_58;
      case 2:
        v27 = *__src;
        goto LABEL_58;
      case 3:
        v27 = *__src | (__src[2] << 16);
        goto LABEL_58;
      case 4:
        v27 = *__src;
LABEL_58:
        if (v22 < 4)
        {
          v20 = (v27 | (v21 << (8 * v22))) + 2;
        }

        else
        {
          v20 = v27 + 2;
        }

        break;
      default:
        break;
    }
  }

  if (v20 == 1)
  {
    if (__swift_getEnumTagSinglePayload(__src, 2, v5))
    {
      v29 = v8;
      if (v7 <= 1)
      {
        if (v8 <= 3)
        {
          v36 = (~(-1 << v9) - v7 + 2) >> v9;
          if (v36 > 0xFFFE)
          {
            v30 = 4;
          }

          else
          {
            v37 = 1;
            if (v36 >= 0xFF)
            {
              v37 = 2;
            }

            if (v36)
            {
              v30 = v37;
            }

            else
            {
              v30 = 0;
            }
          }
        }

        else
        {
          v30 = 1;
        }

        v29 = v30 + v8;
      }

      memcpy(__dst, __src, v29);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, v5);
    }

    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v42 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v42 > 0xFFFE)
        {
          v41 = 4;
        }

        else
        {
          v43 = 1;
          if (v42 >= 0xFF)
          {
            v43 = 2;
          }

          if (v42)
          {
            v41 = v43;
          }

          else
          {
            v41 = 0;
          }
        }
      }

      else
      {
        v41 = 1;
      }

      v8 += v41;
    }

    if (v8 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v8;
    }

    __dst[v44] = 1;
    return __dst;
  }

  if (!v20)
  {
    *__dst = *__src;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v32 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v32 > 0xFFFE)
        {
          v28 = 4;
        }

        else
        {
          v33 = 1;
          if (v32 >= 0xFF)
          {
            v33 = 2;
          }

          if (v32)
          {
            v28 = v33;
          }

          else
          {
            v28 = 0;
          }
        }
      }

      else
      {
        v28 = 1;
      }

      v8 += v28;
    }

    if (v8 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v8;
    }

    __dst[v38] = 0;
    return __dst;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v34 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v34 > 0xFFFE)
      {
        v31 = 4;
      }

      else
      {
        v35 = 1;
        if (v34 >= 0xFF)
        {
          v35 = 2;
        }

        if (v34)
        {
          v31 = v35;
        }

        else
        {
          v31 = 0;
        }
      }
    }

    else
    {
      v31 = 1;
    }

    v8 += v31;
  }

  if (v8 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v8;
  }

  return memcpy(__dst, __src, v39 + 1);
}

unsigned __int8 *sub_1DCE162EC(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = 8 * v6;
  v8 = v6;
  if (v5 <= 1)
  {
    if (v6 <= 3)
    {
      v10 = (~(-1 << v7) - v5 + 2) >> v7;
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
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

    v8 = v9 + v6;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v12 = result[v8];
  if (v12 >= 2)
  {
    if (v5 <= 1)
    {
      if (v6 <= 3)
      {
        v14 = (~(-1 << v7) - v5 + 2) >> v7;
        if (v14 > 0xFFFE)
        {
          v13 = 4;
        }

        else
        {
          v15 = 1;
          if (v14 >= 0xFF)
          {
            v15 = 2;
          }

          if (v14)
          {
            v13 = v15;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 1;
      }

      v6 += v13;
    }

    if (v6 <= 1)
    {
      LODWORD(v6) = 1;
    }

    if (v6 <= 3)
    {
      v16 = v6;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *result;
        goto LABEL_36;
      case 2:
        v17 = *result;
        goto LABEL_36;
      case 3:
        v17 = *result | (result[2] << 16);
        goto LABEL_36;
      case 4:
        v17 = *result;
LABEL_36:
        v18 = (v17 | ((v12 - 2) << (8 * v6))) + 2;
        v19 = v17 + 2;
        if (v6 >= 4)
        {
          v12 = v19;
        }

        else
        {
          v12 = v18;
        }

        break;
      default:
        return result;
    }
  }

  if (v12 == 1)
  {
    v21 = *(*(a2 + 16) - 8);
    result = __swift_getEnumTagSinglePayload(result, 2, v3);
    if (!result)
    {
      v20 = *(v21 + 8);

      return v20(v2, v3);
    }
  }

  return result;
}

unsigned __int8 *sub_1DCE16500(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = __src[v10];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    v16 = *(v6 + 64);
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v18 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v18 > 0xFFFE)
        {
          v17 = 4;
        }

        else
        {
          v19 = 1;
          if (v18 >= 0xFF)
          {
            v19 = 2;
          }

          if (v18)
          {
            v17 = v19;
          }

          else
          {
            v17 = 0;
          }
        }
      }

      else
      {
        v17 = 1;
      }

      v16 = v17 + v8;
    }

    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    if (v16 <= 3)
    {
      v20 = v16;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__src;
        goto LABEL_36;
      case 2:
        v21 = *__src;
        goto LABEL_36;
      case 3:
        v21 = *__src | (__src[2] << 16);
        goto LABEL_36;
      case 4:
        v21 = *__src;
LABEL_36:
        v22 = (v21 | (v15 << (8 * v16))) + 2;
        v14 = v21 + 2;
        if (v16 < 4)
        {
          v14 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    if (__swift_getEnumTagSinglePayload(__src, 2, v5))
    {
      v24 = v8;
      if (v7 <= 1)
      {
        if (v8 <= 3)
        {
          v31 = (~(-1 << v9) - v7 + 2) >> v9;
          if (v31 > 0xFFFE)
          {
            v25 = 4;
          }

          else
          {
            v32 = 1;
            if (v31 >= 0xFF)
            {
              v32 = 2;
            }

            if (v31)
            {
              v25 = v32;
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

        v24 = v25 + v8;
      }

      memcpy(__dst, __src, v24);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, v5);
    }

    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v37 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v37 > 0xFFFE)
        {
          v36 = 4;
        }

        else
        {
          v38 = 1;
          if (v37 >= 0xFF)
          {
            v38 = 2;
          }

          if (v37)
          {
            v36 = v38;
          }

          else
          {
            v36 = 0;
          }
        }
      }

      else
      {
        v36 = 1;
      }

      v8 += v36;
    }

    if (v8 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v8;
    }

    __dst[v39] = 1;
    return __dst;
  }

  if (!v14)
  {
    *__dst = *__src;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v27 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v27 > 0xFFFE)
        {
          v23 = 4;
        }

        else
        {
          v28 = 1;
          if (v27 >= 0xFF)
          {
            v28 = 2;
          }

          if (v27)
          {
            v23 = v28;
          }

          else
          {
            v23 = 0;
          }
        }
      }

      else
      {
        v23 = 1;
      }

      v8 += v23;
    }

    if (v8 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v8;
    }

    __dst[v33] = 0;
    return __dst;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v29 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v29 > 0xFFFE)
      {
        v26 = 4;
      }

      else
      {
        v30 = 1;
        if (v29 >= 0xFF)
        {
          v30 = 2;
        }

        if (v29)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }

    v8 += v26;
  }

  if (v8 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v8;
  }

  return memcpy(__dst, __src, v34 + 1);
}

unsigned __int8 *sub_1DCE16910(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = __dst[v10];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    v16 = *(v6 + 64);
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v18 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v18 > 0xFFFE)
        {
          v17 = 4;
        }

        else
        {
          v19 = 1;
          if (v18 >= 0xFF)
          {
            v19 = 2;
          }

          if (v18)
          {
            v17 = v19;
          }

          else
          {
            v17 = 0;
          }
        }
      }

      else
      {
        v17 = 1;
      }

      v16 = v17 + v8;
    }

    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    if (v16 <= 3)
    {
      v20 = v16;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__dst;
        goto LABEL_37;
      case 2:
        v21 = *__dst;
        goto LABEL_37;
      case 3:
        v21 = *__dst | (__dst[2] << 16);
        goto LABEL_37;
      case 4:
        v21 = *__dst;
LABEL_37:
        if (v16 < 4)
        {
          v14 = (v21 | (v15 << (8 * v16))) + 2;
        }

        else
        {
          v14 = v21 + 2;
        }

        break;
      default:
        goto LABEL_43;
    }
  }

  if (v14 == 1 && !__swift_getEnumTagSinglePayload(__dst, 2, v5))
  {
    (*(v6 + 8))(__dst, v5);
  }

LABEL_43:
  v22 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v24 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v24 > 0xFFFE)
      {
        v23 = 4;
      }

      else
      {
        v25 = 1;
        if (v24 >= 0xFF)
        {
          v25 = 2;
        }

        if (v24)
        {
          v23 = v25;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }

    v22 = v23 + v8;
  }

  if (v22 <= 1)
  {
    v22 = 1;
  }

  v26 = __src[v22];
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    v28 = v8;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v30 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v30 > 0xFFFE)
        {
          v29 = 4;
        }

        else
        {
          v31 = 1;
          if (v30 >= 0xFF)
          {
            v31 = 2;
          }

          if (v30)
          {
            v29 = v31;
          }

          else
          {
            v29 = 0;
          }
        }
      }

      else
      {
        v29 = 1;
      }

      v28 = v29 + v8;
    }

    if (v28 <= 1)
    {
      LODWORD(v28) = 1;
    }

    if (v28 <= 3)
    {
      v32 = v28;
    }

    else
    {
      v32 = 4;
    }

    switch(v32)
    {
      case 1:
        v33 = *__src;
        goto LABEL_78;
      case 2:
        v33 = *__src;
        goto LABEL_78;
      case 3:
        v33 = *__src | (__src[2] << 16);
        goto LABEL_78;
      case 4:
        v33 = *__src;
LABEL_78:
        if (v28 < 4)
        {
          v26 = (v33 | (v27 << (8 * v28))) + 2;
        }

        else
        {
          v26 = v33 + 2;
        }

        break;
      default:
        break;
    }
  }

  if (v26 == 1)
  {
    if (__swift_getEnumTagSinglePayload(__src, 2, v5))
    {
      v35 = v8;
      if (v7 <= 1)
      {
        if (v8 <= 3)
        {
          v42 = (~(-1 << v9) - v7 + 2) >> v9;
          if (v42 > 0xFFFE)
          {
            v36 = 4;
          }

          else
          {
            v43 = 1;
            if (v42 >= 0xFF)
            {
              v43 = 2;
            }

            if (v42)
            {
              v36 = v43;
            }

            else
            {
              v36 = 0;
            }
          }
        }

        else
        {
          v36 = 1;
        }

        v35 = v36 + v8;
      }

      memcpy(__dst, __src, v35);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, v5);
    }

    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v48 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v48 > 0xFFFE)
        {
          v47 = 4;
        }

        else
        {
          v49 = 1;
          if (v48 >= 0xFF)
          {
            v49 = 2;
          }

          if (v48)
          {
            v47 = v49;
          }

          else
          {
            v47 = 0;
          }
        }
      }

      else
      {
        v47 = 1;
      }

      v8 += v47;
    }

    if (v8 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v8;
    }

    __dst[v50] = 1;
    return __dst;
  }

  if (!v26)
  {
    *__dst = *__src;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v38 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v38 > 0xFFFE)
        {
          v34 = 4;
        }

        else
        {
          v39 = 1;
          if (v38 >= 0xFF)
          {
            v39 = 2;
          }

          if (v38)
          {
            v34 = v39;
          }

          else
          {
            v34 = 0;
          }
        }
      }

      else
      {
        v34 = 1;
      }

      v8 += v34;
    }

    if (v8 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v8;
    }

    __dst[v44] = 0;
    return __dst;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v40 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v40 > 0xFFFE)
      {
        v37 = 4;
      }

      else
      {
        v41 = 1;
        if (v40 >= 0xFF)
        {
          v41 = 2;
        }

        if (v40)
        {
          v37 = v41;
        }

        else
        {
          v37 = 0;
        }
      }
    }

    else
    {
      v37 = 1;
    }

    v8 += v37;
  }

  if (v8 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = v8;
  }

  return memcpy(__dst, __src, v45 + 1);
}

unsigned __int8 *sub_1DCE16EB0(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = __src[v10];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    v16 = *(v6 + 64);
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v18 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v18 > 0xFFFE)
        {
          v17 = 4;
        }

        else
        {
          v19 = 1;
          if (v18 >= 0xFF)
          {
            v19 = 2;
          }

          if (v18)
          {
            v17 = v19;
          }

          else
          {
            v17 = 0;
          }
        }
      }

      else
      {
        v17 = 1;
      }

      v16 = v17 + v8;
    }

    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    if (v16 <= 3)
    {
      v20 = v16;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__src;
        goto LABEL_36;
      case 2:
        v21 = *__src;
        goto LABEL_36;
      case 3:
        v21 = *__src | (__src[2] << 16);
        goto LABEL_36;
      case 4:
        v21 = *__src;
LABEL_36:
        v22 = (v21 | (v15 << (8 * v16))) + 2;
        v14 = v21 + 2;
        if (v16 < 4)
        {
          v14 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    if (__swift_getEnumTagSinglePayload(__src, 2, v5))
    {
      v24 = v8;
      if (v7 <= 1)
      {
        if (v8 <= 3)
        {
          v31 = (~(-1 << v9) - v7 + 2) >> v9;
          if (v31 > 0xFFFE)
          {
            v25 = 4;
          }

          else
          {
            v32 = 1;
            if (v31 >= 0xFF)
            {
              v32 = 2;
            }

            if (v31)
            {
              v25 = v32;
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

        v24 = v25 + v8;
      }

      memcpy(__dst, __src, v24);
    }

    else
    {
      (*(v6 + 32))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, v5);
    }

    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v37 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v37 > 0xFFFE)
        {
          v36 = 4;
        }

        else
        {
          v38 = 1;
          if (v37 >= 0xFF)
          {
            v38 = 2;
          }

          if (v37)
          {
            v36 = v38;
          }

          else
          {
            v36 = 0;
          }
        }
      }

      else
      {
        v36 = 1;
      }

      v8 += v36;
    }

    if (v8 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v8;
    }

    __dst[v39] = 1;
    return __dst;
  }

  if (!v14)
  {
    *__dst = *__src;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v27 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v27 > 0xFFFE)
        {
          v23 = 4;
        }

        else
        {
          v28 = 1;
          if (v27 >= 0xFF)
          {
            v28 = 2;
          }

          if (v27)
          {
            v23 = v28;
          }

          else
          {
            v23 = 0;
          }
        }
      }

      else
      {
        v23 = 1;
      }

      v8 += v23;
    }

    if (v8 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v8;
    }

    __dst[v33] = 0;
    return __dst;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v29 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v29 > 0xFFFE)
      {
        v26 = 4;
      }

      else
      {
        v30 = 1;
        if (v29 >= 0xFF)
        {
          v30 = 2;
        }

        if (v29)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }

    v8 += v26;
  }

  if (v8 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v8;
  }

  return memcpy(__dst, __src, v34 + 1);
}

unsigned __int8 *sub_1DCE172C0(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = __dst[v10];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    v16 = *(v6 + 64);
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v18 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v18 > 0xFFFE)
        {
          v17 = 4;
        }

        else
        {
          v19 = 1;
          if (v18 >= 0xFF)
          {
            v19 = 2;
          }

          if (v18)
          {
            v17 = v19;
          }

          else
          {
            v17 = 0;
          }
        }
      }

      else
      {
        v17 = 1;
      }

      v16 = v17 + v8;
    }

    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    if (v16 <= 3)
    {
      v20 = v16;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__dst;
        goto LABEL_37;
      case 2:
        v21 = *__dst;
        goto LABEL_37;
      case 3:
        v21 = *__dst | (__dst[2] << 16);
        goto LABEL_37;
      case 4:
        v21 = *__dst;
LABEL_37:
        if (v16 < 4)
        {
          v14 = (v21 | (v15 << (8 * v16))) + 2;
        }

        else
        {
          v14 = v21 + 2;
        }

        break;
      default:
        goto LABEL_43;
    }
  }

  if (v14 == 1 && !__swift_getEnumTagSinglePayload(__dst, 2, v5))
  {
    (*(v6 + 8))(__dst, v5);
  }

LABEL_43:
  v22 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v24 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v24 > 0xFFFE)
      {
        v23 = 4;
      }

      else
      {
        v25 = 1;
        if (v24 >= 0xFF)
        {
          v25 = 2;
        }

        if (v24)
        {
          v23 = v25;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }

    v22 = v23 + v8;
  }

  if (v22 <= 1)
  {
    v22 = 1;
  }

  v26 = __src[v22];
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    v28 = v8;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v30 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v30 > 0xFFFE)
        {
          v29 = 4;
        }

        else
        {
          v31 = 1;
          if (v30 >= 0xFF)
          {
            v31 = 2;
          }

          if (v30)
          {
            v29 = v31;
          }

          else
          {
            v29 = 0;
          }
        }
      }

      else
      {
        v29 = 1;
      }

      v28 = v29 + v8;
    }

    if (v28 <= 1)
    {
      LODWORD(v28) = 1;
    }

    if (v28 <= 3)
    {
      v32 = v28;
    }

    else
    {
      v32 = 4;
    }

    switch(v32)
    {
      case 1:
        v33 = *__src;
        goto LABEL_78;
      case 2:
        v33 = *__src;
        goto LABEL_78;
      case 3:
        v33 = *__src | (__src[2] << 16);
        goto LABEL_78;
      case 4:
        v33 = *__src;
LABEL_78:
        if (v28 < 4)
        {
          v26 = (v33 | (v27 << (8 * v28))) + 2;
        }

        else
        {
          v26 = v33 + 2;
        }

        break;
      default:
        break;
    }
  }

  if (v26 == 1)
  {
    if (__swift_getEnumTagSinglePayload(__src, 2, v5))
    {
      v35 = v8;
      if (v7 <= 1)
      {
        if (v8 <= 3)
        {
          v42 = (~(-1 << v9) - v7 + 2) >> v9;
          if (v42 > 0xFFFE)
          {
            v36 = 4;
          }

          else
          {
            v43 = 1;
            if (v42 >= 0xFF)
            {
              v43 = 2;
            }

            if (v42)
            {
              v36 = v43;
            }

            else
            {
              v36 = 0;
            }
          }
        }

        else
        {
          v36 = 1;
        }

        v35 = v36 + v8;
      }

      memcpy(__dst, __src, v35);
    }

    else
    {
      (*(v6 + 32))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, v5);
    }

    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v48 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v48 > 0xFFFE)
        {
          v47 = 4;
        }

        else
        {
          v49 = 1;
          if (v48 >= 0xFF)
          {
            v49 = 2;
          }

          if (v48)
          {
            v47 = v49;
          }

          else
          {
            v47 = 0;
          }
        }
      }

      else
      {
        v47 = 1;
      }

      v8 += v47;
    }

    if (v8 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v8;
    }

    __dst[v50] = 1;
    return __dst;
  }

  if (!v26)
  {
    *__dst = *__src;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v38 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v38 > 0xFFFE)
        {
          v34 = 4;
        }

        else
        {
          v39 = 1;
          if (v38 >= 0xFF)
          {
            v39 = 2;
          }

          if (v38)
          {
            v34 = v39;
          }

          else
          {
            v34 = 0;
          }
        }
      }

      else
      {
        v34 = 1;
      }

      v8 += v34;
    }

    if (v8 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v8;
    }

    __dst[v44] = 0;
    return __dst;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v40 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v40 > 0xFFFE)
      {
        v37 = 4;
      }

      else
      {
        v41 = 1;
        if (v40 >= 0xFF)
        {
          v41 = 2;
        }

        if (v40)
        {
          v37 = v41;
        }

        else
        {
          v37 = 0;
        }
      }
    }

    else
    {
      v37 = 1;
    }

    v8 += v37;
  }

  if (v8 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = v8;
  }

  return memcpy(__dst, __src, v45 + 1);
}

uint64_t sub_1DCE17860(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  v6 = 8 * v5;
  v7 = v5;
  if (v4 <= 1)
  {
    if (v5 <= 3)
    {
      v9 = (~(-1 << v6) - v4 + 2) >> v6;
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 = v8 + v5;
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_35;
  }

  v11 = v7 + 1;
  v12 = 8 * v11;
  if (v11 > 3)
  {
    goto LABEL_17;
  }

  v15 = ((a2 + ~(-1 << v12) - 253) >> v12) + 1;
  if (HIWORD(v15))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_35:
    if (v4 <= 1)
    {
      if (v5 <= 3)
      {
        v20 = (~(-1 << v6) - v4 + 2) >> v6;
        if (v20 > 0xFFFE)
        {
          v19 = 4;
        }

        else
        {
          v21 = 1;
          if (v20 >= 0xFF)
          {
            v21 = 2;
          }

          if (v20)
          {
            v19 = v21;
          }

          else
          {
            v19 = 0;
          }
        }
      }

      else
      {
        v19 = 1;
      }

      v5 += v19;
    }

    if (v5 <= 1)
    {
      v5 = 1;
    }

    v22 = *(a1 + v5);
    if (v22 >= 3)
    {
      return (v22 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (v15 > 0xFF)
  {
    v13 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (v15 < 2)
  {
    goto LABEL_35;
  }

LABEL_17:
  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_35;
  }

LABEL_25:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 <= 3)
    {
      v17 = v11;
    }

    else
    {
      v17 = 4;
    }

    switch(v17)
    {
      case 2:
        v18 = *a1;
        break;
      case 3:
        v18 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v18 = *a1;
        break;
      default:
        v18 = *a1;
        break;
    }
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v16) + 254;
}

void sub_1DCE17A80(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = 8 * v7;
  v9 = v7;
  if (v6 <= 1)
  {
    if (v7 <= 3)
    {
      v11 = (~(-1 << v8) - v6 + 2) >> v8;
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
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

    v9 = v10 + v7;
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  v13 = v9 + 1;
  v14 = 8 * (v9 + 1);
  if (a3 < 0xFE)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 + ~(-1 << v14) - 253) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFD)
  {
    v16 = a2 - 254;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v13)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      case 2:
        *&a1[v13] = 0;
        goto LABEL_36;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          if (v6 <= 1)
          {
            if (v7 <= 3)
            {
              v22 = (~(-1 << v8) - v6 + 2) >> v8;
              if (v22 > 0xFFFE)
              {
                v21 = 4;
              }

              else
              {
                v23 = 1;
                if (v22 >= 0xFF)
                {
                  v23 = 2;
                }

                if (v22)
                {
                  v21 = v23;
                }

                else
                {
                  v21 = 0;
                }
              }
            }

            else
            {
              v21 = 1;
            }

            v7 += v21;
          }

          if (v7 <= 1)
          {
            v7 = 1;
          }

          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCE17D38(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 84);
  v4 = *(v2 + 64);
  v5 = 8 * v4;
  v6 = v4;
  if (v3 <= 1)
  {
    if (v4 <= 3)
    {
      v8 = (~(-1 << v5) - v3 + 2) >> v5;
      if (v8 > 0xFFFE)
      {
        v7 = 4;
      }

      else
      {
        v9 = 1;
        if (v8 >= 0xFF)
        {
          v9 = 2;
        }

        if (v8)
        {
          v7 = v9;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }

    v6 = v7 + v4;
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v10 = a1[v6];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v3 <= 1)
    {
      if (v4 <= 3)
      {
        v13 = (~(-1 << v5) - v3 + 2) >> v5;
        if (v13 > 0xFFFE)
        {
          v12 = 4;
        }

        else
        {
          v14 = 1;
          if (v13 >= 0xFF)
          {
            v14 = 2;
          }

          if (v13)
          {
            v12 = v14;
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 1;
      }

      v4 += v12;
    }

    if (v4 <= 1)
    {
      LODWORD(v4) = 1;
    }

    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    switch(v15)
    {
      case 1:
        v16 = *a1;
        goto LABEL_36;
      case 2:
        v16 = *a1;
        goto LABEL_36;
      case 3:
        v16 = *a1 | (a1[2] << 16);
        goto LABEL_36;
      case 4:
        v16 = *a1;
LABEL_36:
        v17 = (v16 | (v11 << (8 * v4))) + 2;
        LODWORD(v10) = v16 + 2;
        if (v4 >= 4)
        {
          v10 = v10;
        }

        else
        {
          v10 = v17;
        }

        break;
      default:
        return v10;
    }
  }

  return v10;
}

void sub_1DCE17ED0(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = v6;
  if (a2 <= 1)
  {
    if (v5 <= 1)
    {
      if (v6 <= 3)
      {
        v11 = (~(-1 << (8 * v6)) - v5 + 2) >> (8 * v6);
        if (v11 > 0xFFFE)
        {
          v8 = 4;
        }

        else
        {
          v12 = 1;
          if (v11 >= 0xFF)
          {
            v12 = 2;
          }

          if (v11)
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

      v7 = v8 + v6;
    }

    if (v7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v7;
    }

    a1[v15] = a2;
    return;
  }

  v9 = 8 * v6;
  if (v5 <= 1)
  {
    if (v6 <= 3)
    {
      v13 = (~(-1 << v9) - v5 + 2) >> v9;
      if (v13 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v10 = v14;
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

    v7 = v10 + v6;
  }

  if (v7 <= 1)
  {
    LODWORD(v7) = 1;
  }

  v16 = v7 > 3;
  v17 = 8 * v7;
  v18 = (a2 - 2) & ~(-1 << v17);
  v19 = ((a2 - 2) >> v17) + 2;
  if (v16)
  {
    LOBYTE(v19) = 2;
    v20 = a2 - 2;
  }

  else
  {
    v20 = v18;
  }

  if (v5 > 1)
  {
    if (v6 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v6;
    }

    a1[v21] = v19;
    if (!v21)
    {
      return;
    }

    goto LABEL_53;
  }

  v22 = (~(-1 << v9) - v5 + 2) >> v9;
  v23 = 1;
  if (v22 >= 0xFF)
  {
    v23 = 2;
  }

  if (!v22)
  {
    v23 = 0;
  }

  v24 = v22 >= 0xFFFF;
  v25 = 4;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = v25 + v6;
  if (v6 > 3)
  {
    v26 = v6 + 1;
    v25 = 1;
  }

  if (v26 <= 1)
  {
    v26 = 1;
  }

  a1[v26] = v19;
  v27 = v25 + v6;
  if (v27 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v27;
  }

  if (v21)
  {
LABEL_53:
    if (v21 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v21;
    }

    bzero(a1, v21);
    switch(v28)
    {
      case 2:
        *a1 = v20;
        break;
      case 3:
        *a1 = v20;
        a1[2] = BYTE2(v20);
        break;
      case 4:
        *a1 = v20;
        break;
      default:
        *a1 = v20;
        break;
    }
  }
}

void __swiftcall OrdinalDisplayHintsBuilder.init(referenceNode:)(SiriKitFlow::OrdinalDisplayHintsBuilder *__return_ptr retstr, Swift::String referenceNode)
{
  retstr->numericOrdinalValues._rawValue = &unk_1F584EF70;
  retstr->last._countAndFlagsBits = 1953718636;
  retstr->last._object = 0xE400000000000000;
  strcpy(&retstr->secondToLast, "secondToLast");
  BYTE5(retstr->secondToLast._object) = 0;
  HIWORD(retstr->secondToLast._object) = -5120;
  retstr->thirdToLast._countAndFlagsBits = 0x4C6F546472696874;
  retstr->thirdToLast._object = 0xEB00000000747361;
  retstr->referenceNodeSemantic = referenceNode;
}

uint64_t OrdinalDisplayHintsBuilder.build(for:)(uint64_t a1)
{
  v5 = *v1;
  v107 = v1[2];
  string = v1[1];
  v102 = v1[3];
  v92 = v1[5];
  v97 = v1[4];
  v6 = v1[7];
  v87 = v1[6];
  v7 = v1[8];
  v122 = *(a1 + 16);
  if (*(v5 + 16) >= v122)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(v5 + 16);
  }

  v132 = v7;
  label = v6;
  if (v8)
  {
    v127 = 0x80000001DD113920;
    v9 = (v5 + 40);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = (a1 + 40);
    do
    {
      v12 = *v11;
      v13 = v11[2];
      v152 = v11[1];
      v157 = *(v11 - 1);
      v4 = v11[4];
      v14 = *v9;
      label_8 = *(v9 - 1);
      v147 = v11[3];
      v2 = v10;

      v162 = v14;

      v173 = v12;

      v169 = v13;

      v3 = v7;
      sub_1DD0DEC1C();

      v180 = 0xD000000000000012;
      v181 = 0x80000001DD113920;

      sub_1DCB598EC(1);
      v15 = sub_1DD0DE99C();
      v17 = v16;

      v178 = v15;
      v179 = v17;
      v177.string.value._countAndFlagsBits = sub_1DCB594B0(1uLL);
      v177.string.value._object = v18;
      v177.label.value._countAndFlagsBits = v19;
      v177.label.value._object = v20;
      sub_1DCB59970();

      sub_1DD0DE11C();

      MEMORY[0x1E12A6780](v15, v17);

      OUTLINED_FUNCTION_0_71();
      OUTLINED_FUNCTION_0_71();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v2;
      }

      else
      {
        OUTLINED_FUNCTION_29_23();
        v10 = v23;
      }

      v21 = *(v10 + 16);
      if (v21 >= *(v10 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v10 = v24;
      }

      v11 += 6;
      *(v10 + 16) = v21 + 1;
      v22 = (v10 + 96 * v21);
      v22[4] = v157;
      v22[5] = v173;
      v22[6] = v152;
      v22[7] = v169;
      v22[8] = v147;
      v22[9] = v4;
      v22[10] = label_8;
      v22[11] = v162;
      v7 = v132;
      v6 = label;
      v22[12] = label;
      v22[13] = v132;
      v9 += 2;
      v22[14] = 0xD000000000000012;
      v22[15] = 0x80000001DD113920;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v122)
  {
    OUTLINED_FUNCTION_31_21();
    v170 = *v25;
    v174 = *(v25 - 2);
    v26 = v25[1];
    v163 = v25[2];
    v27 = v25[3];
    v29 = v28;

    v30._countAndFlagsBits = string;
    v30._object = v107;
    v31._countAndFlagsBits = v6;
    v31._object = v7;
    SemanticValue.init(string:label:)(&v177, v30, v31);
    OUTLINED_FUNCTION_32_20();
    countAndFlagsBits = v177.nodeClass.value._countAndFlagsBits;
    object = v177.nodeClass.value._object;
    OUTLINED_FUNCTION_0_71();
    OUTLINED_FUNCTION_0_71();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v29;
    }

    else
    {
      OUTLINED_FUNCTION_29_23();
      v41 = isUniquelyReferenced_nonNull_native;
    }

    v42 = *(v41 + 16);
    if (v42 >= *(v41 + 24) >> 1)
    {
      sub_1DCE18ECC();
      v41 = isUniquelyReferenced_nonNull_native;
    }

    *(v41 + 16) = v42 + 1;
    OUTLINED_FUNCTION_26_24(isUniquelyReferenced_nonNull_native, v35, v36, v41, v37, v38, v39, v40, v82, v87, v92, v97, v102, v107, string, a1, v122, v127, v132, label, label_8, v147, v152, v157, v163, v170, v174);
    v43[6] = v44;
    v43[7] = v26;
    v43[8] = v164;
    v43[9] = v27;
    v43[10] = v2;
    v43[11] = v3;
    v43[12] = v4;
    v43[13] = v158;
    v43[14] = countAndFlagsBits;
    v43[15] = object;
    if (v123 != 1)
    {
      OUTLINED_FUNCTION_31_21();
      v171 = *(v45 - 48);
      v175 = *(v45 - 64);
      v165 = *(v45 - 32);
      v47 = v46;

      v48._countAndFlagsBits = v103;
      v48._object = v98;
      v49._countAndFlagsBits = labela;
      v49._object = v133;
      SemanticValue.init(string:label:)(&v177, v48, v49);
      OUTLINED_FUNCTION_32_20();
      v50 = v177.nodeClass.value._countAndFlagsBits;
      v51 = v177.nodeClass.value._object;
      OUTLINED_FUNCTION_0_71();
      OUTLINED_FUNCTION_0_71();
      v52 = swift_isUniquelyReferenced_nonNull_native();
      if (v52)
      {
        v59 = v47;
      }

      else
      {
        OUTLINED_FUNCTION_29_23();
        v59 = v52;
      }

      v60 = *(v59 + 16);
      if (v60 >= *(v59 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v59 = v52;
      }

      *(v59 + 16) = v60 + 1;
      OUTLINED_FUNCTION_26_24(v52, v53, v54, v59, v55, v56, v57, v58, v83, v88, v93, v98, v103, v108, stringa, string_8a, v123, v128, v133, labela, label_8a, v148, v153, v158, v165, v171, v175);
      OUTLINED_FUNCTION_34_27(v61, v84, v89, v94, v99, v104, v109, stringc, string_8c, v124, v129, v134, labelc, label_8c, v149, v154, v159, v166);
      *(v62 + 112) = v50;
      *(v62 + 120) = v51;
      if (v125 >= 3)
      {
        OUTLINED_FUNCTION_31_21();
        v172 = *(v63 - 96);
        v176 = *(v63 - 112);
        v167 = *(v63 - 80);
        v65 = v64;

        v66._countAndFlagsBits = v95;
        v66._object = v90;
        v67._countAndFlagsBits = labelb;
        v67._object = v135;
        SemanticValue.init(string:label:)(&v177, v66, v67);
        OUTLINED_FUNCTION_32_20();
        v68 = v177.nodeClass.value._countAndFlagsBits;
        v69 = v177.nodeClass.value._object;
        OUTLINED_FUNCTION_0_71();
        OUTLINED_FUNCTION_0_71();
        v70 = swift_isUniquelyReferenced_nonNull_native();
        if (v70)
        {
          v77 = v65;
        }

        else
        {
          OUTLINED_FUNCTION_29_23();
          v77 = v70;
        }

        v78 = *(v77 + 16);
        if (v78 >= *(v77 + 24) >> 1)
        {
          sub_1DCE18ECC();
          v77 = v70;
        }

        *(v77 + 16) = v78 + 1;
        OUTLINED_FUNCTION_26_24(v70, v71, v72, v77, v73, v74, v75, v76, v85, v90, v95, v100, v105, v110, stringb, string_8b, v125, v130, v135, labelb, label_8b, v150, v155, v160, v167, v172, v176);
        OUTLINED_FUNCTION_34_27(v79, v86, v91, v96, v101, v106, v111, stringd, string_8d, v126, v131, v136, labeld, label_8d, v151, v156, v161, v168);
        *(v80 + 112) = v68;
        *(v80 + 120) = v69;
      }
    }
  }

  return v10;
}

void sub_1DCE1871C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = sub_1DCB08B14(a2);
  v5 = sub_1DCE1A20C(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_17;
  }

  sub_1DCF41428();
  sub_1DCF41428();
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    goto LABEL_13;
  }

  if (v7 < v4)
  {
    sub_1DCE1A258();

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_1DD0DEC4C();
      v8 = v9;
    }

    while (v4 != v9);
LABEL_13:
    if (!(a2 >> 62))
    {
      if ((v4 & 0x8000000000000000) == 0)
      {

        return;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_18:

    sub_1DD0DEE4C();

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1DCE18870()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA7998, &unk_1DD0F98C0);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB83C();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F3D4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE18938()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v9);
      OUTLINED_FUNCTION_17_31(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F464(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_38(v6, v7, v8, &type metadata for IntentTopic);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE18A24()
{
  OUTLINED_FUNCTION_6_54();
  if (v2)
  {
    OUTLINED_FUNCTION_3_83();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_18_35();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_28_24();
  sub_1DCB597F0(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB3AC();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_4_80(v10);
    sub_1DCD3F498(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE18AE4()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_36_24(v2, v5, &qword_1ECCA24A0, &qword_1DD0F9890);
  OUTLINED_FUNCTION_37_25();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F484(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE18BB0()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2430, &unk_1DD0E51F0);
      v7 = OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_9_14(v7);
      OUTLINED_FUNCTION_17_31(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCB341E4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE18C68()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA2438, &qword_1DD0E5200);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB78C();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F4B0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE18D60()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7940, &qword_1DD0F9828);
      v10 = OUTLINED_FUNCTION_23_20(v9);
      v6 = OUTLINED_FUNCTION_7_46(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_2_24();
        sub_1DCB837AC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_38(v6, v7, v8, &type metadata for SiriKitDisambiguationItemPair);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE18E10()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2700, &unk_1DD0E6730);
      v7 = OUTLINED_FUNCTION_23_20(v6);
      OUTLINED_FUNCTION_7_46(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB8382C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27C0, &unk_1DD0E68E0);
    OUTLINED_FUNCTION_14_46(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE18ECC()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7978, &qword_1DD0F98A0);
      v9 = swift_allocObject();
      v6 = OUTLINED_FUNCTION_7_46(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F51C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_38(v6, v7, v8, &type metadata for DisplayHint);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t destroy for OrdinalDisplayHintsBuilder()
{
}

uint64_t *initializeWithCopy for OrdinalDisplayHintsBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  a1[8] = a2[8];

  return a1;
}

uint64_t *assignWithCopy for OrdinalDisplayHintsBuilder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];
  a1[6] = a2[6];

  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

void *assignWithTake for OrdinalDisplayHintsBuilder(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  v6 = a2[6];
  a1[5] = a2[5];
  a1[6] = v6;

  v7 = a2[8];
  a1[7] = a2[7];
  a1[8] = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for OrdinalDisplayHintsBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for OrdinalDisplayHintsBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DCE19270()
{
  OUTLINED_FUNCTION_13_48();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_27_25();
    if (v3)
    {
      OUTLINED_FUNCTION_38_21(v7, v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_39_20(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_25_19();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_24_25();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE1932C()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &unk_1ECCA1C70, &unk_1DD0F9830);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DAB1C();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F56C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE193F4()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA7930, &qword_1DD0F9810);
  v8 = OUTLINED_FUNCTION_21_26();
  type metadata accessor for AudioOutputContextHelper.DeviceInfo(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_80(v9);
    sub_1DCD3F584(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE194BC()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA7500, &unk_1DD0F8B70);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB44C();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F59C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE195E4()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7928, &unk_1DD0F9800);
      v6 = OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_9_14(v6);
      OUTLINED_FUNCTION_17_31(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F5B4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4268, &qword_1DD0EB4B8);
    OUTLINED_FUNCTION_14_46(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE196A4()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA2FE0, &qword_1DD0E8E38);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB5BC();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F5D4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE1976C()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D88, &qword_1DD0EFDA8);
      v7 = OUTLINED_FUNCTION_23_20(v6);
      OUTLINED_FUNCTION_7_46(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB8382C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
    OUTLINED_FUNCTION_14_46(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE19828()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA2478, &unk_1DD0F9870);
  v8 = OUTLINED_FUNCTION_21_26();
  type metadata accessor for FlowOutputAtom(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_80(v9);
    sub_1DCD3F4E0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE198F0()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7960, &unk_1DD0F9860);
      v6 = OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_9_14(v6);
      OUTLINED_FUNCTION_17_31(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB341E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5168, &qword_1DD0F0FD0);
    OUTLINED_FUNCTION_14_46(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE199B0()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7958, &qword_1DD0F9858);
      v9 = swift_allocObject();
      v6 = OUTLINED_FUNCTION_7_46(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F544(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_38(v6, v7, v8, &type metadata for If.ConditionBodyPair);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCE19A98()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_36_24(v2, v5, &qword_1ECCA7918, &qword_1DD0F97F0);
  OUTLINED_FUNCTION_37_25();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F5EC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE19B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_38_21(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCE19C64()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA7938, &qword_1DD0F9818);
  v8 = OUTLINED_FUNCTION_21_26();
  type metadata accessor for AceOutput(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_80(v9);
    sub_1DCD3F600(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE19D2C()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_36_24(v2, v5, &qword_1ECCA2458, &qword_1DD0E5220);
  OUTLINED_FUNCTION_37_25();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F630(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE19DF8()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA2450, &qword_1DD0E5218);
  v8 = OUTLINED_FUNCTION_21_26();
  type metadata accessor for SnippetManager.SnippetRecord(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_80(v9);
    sub_1DCD3F618(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void sub_1DCE19EC0()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &unk_1ECCA1800, &qword_1DD0F9820);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB6EC();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCD3F704(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void *sub_1DCE19F88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v4 = OUTLINED_FUNCTION_33_19();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_12_46();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1DCE19FF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 64);
  return v4;
}

void *sub_1DCE1A094(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v4 = OUTLINED_FUNCTION_33_19();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1DCE1A10C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCE1A20C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_1DCE1A258()
{
  result = qword_1EDE46118;
  if (!qword_1EDE46118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46118);
  }

  return result;
}

uint64_t static EmptyOutput.instance.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  a1[3] = v1;
  a1[4] = &protocol witness table for EmptyOutput;
  *a1 = result;
  return result;
}

double EmptyOutput.flowActivity.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

_BYTE *sub_1DCE1A324(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCE1A3F4()
{
  result = qword_1ECCA79A0;
  if (!qword_1ECCA79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA79A0);
  }

  return result;
}

uint64_t sub_1DCE1A61C(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  sub_1DCB17CA0(a3, v5);
  v5[40] = 0;
  a1(v5);
  return sub_1DCCD16C4(v5);
}

void sub_1DCE1A66C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_1DD0DCF8C();
}

void sub_1DCE1A70C(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4)
{
  sub_1DCE1B738(a1, v11);
  if (v12 != 1)
  {
    sub_1DCAFF9E8(v11, v10);
    __swift_project_boxed_opaque_existential_1(a4 + 6, a4[9]);
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    sub_1DD0DCF8C();
  }

  v7 = v11[0];
  v8 = v11[0];
  a2(v7);
}

uint64_t OutputAction.__deallocating_deinit()
{
  OutputAction.deinit();
  OUTLINED_FUNCTION_126();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE1A85C()
{
  type metadata accessor for OutputAction();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA79A8, &qword_1DD0F9A10);
  return sub_1DD0DE02C();
}

uint64_t sub_1DCE1A8A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

void *_s11SiriKitFlow12OutputActionC9publisher04nextE08producerAcA0D9Publisher_p_AA0E0_pSgyys6ResultOyAA0D0_ps5Error_pGcctcfC_0()
{
  OUTLINED_FUNCTION_9_55();
  v6 = v5;
  OUTLINED_FUNCTION_126();
  v7 = swift_allocObject();
  v8 = v6[3];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v8);
  OUTLINED_FUNCTION_5_72();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = OUTLINED_FUNCTION_0_72(v11, v16);
  v13(v12);
  v14 = sub_1DCE1B174(v4, v3, v2, v1, v0, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v14;
}

void *_s11SiriKitFlow12OutputActionC9publisher04nextE08producerAcA0D9Publisher_p_AA0E0_pSgyys6ResultOyAA0D0_ps5Error_pGcctcfc_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1[3];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
  OUTLINED_FUNCTION_5_72();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = OUTLINED_FUNCTION_0_72(v15, v20);
  v17(v16);
  v18 = sub_1DCE1B174(v6, a2, a3, a4, a5, v5, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t sub_1DCE1AC0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE1AC2C, 0, 0);
}

uint64_t sub_1DCE1AC2C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17CA0(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DCE1ACAC()
{
  v1 = *(v0 + 56);
  v3 = v1[9];
  v2 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  v4 = v1[4];
  v5 = v1[5];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1DCE1AD80;

  return sub_1DCB63BBC(v0 + 16, v4, v5, v3, v2);
}

uint64_t sub_1DCE1AD80()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {
    v4 = sub_1DCE1AE90;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = OUTLINED_FUNCTION_14_47;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t _s11SiriKitFlow12OutputActionCfd_0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  return v0;
}

uint64_t sub_1DCE1AED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1AF64;

  return sub_1DCE1AC8C();
}

uint64_t sub_1DCE1AF64()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void *sub_1DCE1B04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[9] = type metadata accessor for LegacySiriKitOutputPublisher();
  a6[10] = &off_1F58668F0;
  a6[2] = 0;
  a6[3] = 0;
  a6[4] = a4;
  a6[5] = a5;
  a6[6] = a1;
  swift_beginAccess();
  a6[2] = a2;
  a6[3] = a3;
  return a6;
}

void *sub_1DCE1B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[9] = &type metadata for OutputPublishers;
  a6[10] = &off_1F5866A08;
  a6[2] = 0;
  v9 = a6 + 2;
  a6[3] = 0;
  a6[4] = a4;
  a6[5] = a5;
  a6[6] = a1;
  swift_beginAccess();
  *v9 = a2;
  a6[3] = a3;
  return a6;
}

void *sub_1DCE1B174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  OUTLINED_FUNCTION_9_55();
  v14 = v13;
  v15[9] = v16;
  v15[10] = v17;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v15 + 6);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1Tm, v14, a7);
  a6[2] = 0;
  a6[3] = 0;
  a6[4] = v8;
  a6[5] = v7;
  swift_beginAccess();
  a6[2] = v10;
  a6[3] = v9;
  return a6;
}

uint64_t sub_1DCE1B250()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCE1B7E8;

  return sub_1DCE1AC0C(v3, v0 + 16);
}

uint64_t sub_1DCE1B2E8(uint64_t a1)
{
  result = sub_1DCE1B448(&qword_1ECCA79B0, type metadata accessor for OutputAction, &protocol conformance descriptor for OutputAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE1B340(uint64_t a1)
{
  result = sub_1DCE1B448(&qword_1ECCA79B8, type metadata accessor for OutputAction, &protocol conformance descriptor for OutputAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE1B398(uint64_t a1)
{
  result = sub_1DCE1B448(&qword_1ECCA79C0, type metadata accessor for OutputActionAsync, &protocol conformance descriptor for OutputActionAsync);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE1B3F0(uint64_t a1)
{
  result = sub_1DCE1B448(&qword_1ECCA79C8, type metadata accessor for OutputActionAsync, &protocol conformance descriptor for OutputActionAsync);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE1B448(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of OutputActionAsync.run()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCE1AF64;

  return v4();
}

uint64_t sub_1DCE1B738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F70, &qword_1DD0E2BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE1B7A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return (*(v2 + 16))(a1);
}

void *sub_1DCE1B7FC(void *a1, void *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v8 = a2[2];
  v7 = a2[3];
  a1[2] = v8;
  a1[3] = v7;
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = a2 + v9;
  a1[4] = a2[4];
  v12 = type metadata accessor for ResponseComponents(0);

  v13 = v8;

  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    *v10 = *v11;
    v15 = *(v11 + 4);

    if (v15)
    {
      v16 = *(v11 + 5);
      *(v10 + 4) = v15;
      *(v10 + 5) = v16;
      (**(v15 - 8))((v10 + 8), (v11 + 8), v15);
    }

    else
    {
      v17 = *(v11 + 24);
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 24) = v17;
      *(v10 + 5) = *(v11 + 5);
    }

    v18 = *(v11 + 9);
    if (v18)
    {
      v19 = *(v11 + 10);
      *(v10 + 9) = v18;
      *(v10 + 10) = v19;
      (**(v18 - 8))((v10 + 48), (v11 + 48));
    }

    else
    {
      v20 = *(v11 + 4);
      *(v10 + 3) = *(v11 + 3);
      *(v10 + 4) = v20;
      *(v10 + 10) = *(v11 + 10);
    }

    v21 = *(v11 + 12);
    *(v10 + 11) = *(v11 + 11);
    *(v10 + 12) = v21;
    v22 = *(v11 + 14);
    *(v10 + 13) = *(v11 + 13);
    *(v10 + 14) = v22;
    sub_1DD0DCC3C();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  memcpy(v10, v11, *(*(v14 - 8) + 64));
  v23 = a3[9];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23 + 8);
  if (v26)
  {
    *v24 = *v25;
    *(v24 + 1) = v26;
    v27 = *(v25 + 40);
    *(v24 + 40) = v27;
    v28 = v27;
    v29 = **(v27 - 8);

    v29(v24 + 16, v25 + 16, v28);
  }

  else
  {
    v30 = *(v25 + 1);
    *v24 = *v25;
    *(v24 + 1) = v30;
    *(v24 + 2) = *(v25 + 2);
    *(v24 + 6) = *(v25 + 6);
  }

  v31 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v31) = *(a2 + v31);
  v32 = a3[12];
  v33 = (a1 + v32);
  v34 = (a2 + v32);
  v35 = v34[1];
  if (v35)
  {
    *v33 = *v34;
    v33[1] = v35;
    v33[2] = v34[2];
  }

  else
  {
    *v33 = *v34;
    v33[2] = v34[2];
  }

  v36 = a3[13];
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  if (*v38)
  {
    v39 = v38[1];
    *v37 = *v38;
    v37[1] = v39;
    sub_1DD0DCF8C();
  }

  *v37 = *v38;
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t sub_1DCE1BBD0(uint64_t a1, int *a2)
{

  v4 = (a1 + a2[8]);
  v5 = type metadata accessor for ResponseComponents(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {

    if (v4[4])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v4 + 1);
    }

    if (v4[9])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v4 + 6);
    }

    sub_1DD0DCC3C();
  }

  v6 = a1 + a2[9];
  if (*(v6 + 8))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
  }

  result = *(a1 + a2[12] + 8);
  if (result)
  {
  }

  if (*(a1 + a2[13]))
  {
  }

  return result;
}

void *sub_1DCE1BD48(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v8 = a2[2];
  v7 = a2[3];
  a1[2] = v8;
  a1[3] = v7;
  a1[4] = a2[4];
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for ResponseComponents(0);

  v13 = v8;

  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    *v10 = *v11;
    v15 = *(v11 + 4);

    if (v15)
    {
      v16 = *(v11 + 5);
      *(v10 + 4) = v15;
      *(v10 + 5) = v16;
      (**(v15 - 8))((v10 + 8), (v11 + 8), v15);
    }

    else
    {
      v17 = *(v11 + 24);
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 24) = v17;
      *(v10 + 5) = *(v11 + 5);
    }

    v18 = *(v11 + 9);
    if (v18)
    {
      v19 = *(v11 + 10);
      *(v10 + 9) = v18;
      *(v10 + 10) = v19;
      (**(v18 - 8))((v10 + 48), (v11 + 48));
    }

    else
    {
      v20 = *(v11 + 4);
      *(v10 + 3) = *(v11 + 3);
      *(v10 + 4) = v20;
      *(v10 + 10) = *(v11 + 10);
    }

    v21 = *(v11 + 12);
    *(v10 + 11) = *(v11 + 11);
    *(v10 + 12) = v21;
    v22 = *(v11 + 14);
    *(v10 + 13) = *(v11 + 13);
    *(v10 + 14) = v22;
    sub_1DD0DCC3C();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  memcpy(v10, v11, *(*(v14 - 8) + 64));
  v23 = a3[9];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23 + 8);
  if (v26)
  {
    *v24 = *v25;
    *(v24 + 1) = v26;
    v27 = *(v25 + 40);
    *(v24 + 40) = v27;
    v28 = v27;
    v29 = **(v27 - 8);

    v29(v24 + 16, v25 + 16, v28);
  }

  else
  {
    v30 = *(v25 + 1);
    *v24 = *v25;
    *(v24 + 1) = v30;
    *(v24 + 2) = *(v25 + 2);
    *(v24 + 6) = *(v25 + 6);
  }

  v31 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v31) = *(a2 + v31);
  v32 = a3[12];
  v33 = (a1 + v32);
  v34 = (a2 + v32);
  v35 = v34[1];
  if (v35)
  {
    *v33 = *v34;
    v33[1] = v35;
    v33[2] = v34[2];
  }

  else
  {
    *v33 = *v34;
    v33[2] = v34[2];
  }

  v36 = a3[13];
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  if (*v38)
  {
    v39 = v38[1];
    *v37 = *v38;
    v37[1] = v39;
    sub_1DD0DCF8C();
  }

  *v37 = *v38;
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

void *sub_1DCE1C0D0(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = a1[2];
  v7 = a2[2];
  a1[2] = v7;
  v8 = v7;

  a1[3] = a2[3];

  a1[4] = a2[4];

  v9 = a3[8];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for ResponseComponents(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v12);
  v14 = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (!EnumTagSinglePayload)
  {
    if (v14)
    {
      sub_1DCE1C828(v10);
      goto LABEL_7;
    }

    *v10 = *v11;

    v17 = *(v11 + 4);
    if (*(v10 + 4))
    {
      v18 = v10 + 8;
      if (v17)
      {
        __swift_assign_boxed_opaque_existential_1(v18, v11 + 1);
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else if (v17)
    {
      *(v10 + 4) = v17;
      *(v10 + 5) = *(v11 + 5);
      (**(v17 - 8))((v10 + 8), (v11 + 8));
      goto LABEL_41;
    }

    v52 = *(v11 + 8);
    v53 = *(v11 + 24);
    *(v10 + 5) = *(v11 + 5);
    *(v10 + 24) = v53;
    *(v10 + 8) = v52;
LABEL_41:
    v54 = *(v11 + 9);
    if (*(v10 + 9))
    {
      v55 = v10 + 48;
      if (v54)
      {
        __swift_assign_boxed_opaque_existential_1(v55, v11 + 6);
        goto LABEL_48;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v55);
    }

    else if (v54)
    {
      *(v10 + 9) = v54;
      *(v10 + 10) = *(v11 + 10);
      (**(v54 - 8))((v10 + 48), (v11 + 48));
      goto LABEL_48;
    }

    v56 = *(v11 + 3);
    v57 = *(v11 + 4);
    *(v10 + 10) = *(v11 + 10);
    *(v10 + 3) = v56;
    *(v10 + 4) = v57;
LABEL_48:
    *(v10 + 11) = *(v11 + 11);
    *(v10 + 12) = *(v11 + 12);

    *(v10 + 13) = *(v11 + 13);
    *(v10 + 14) = *(v11 + 14);

    sub_1DD0DCC3C();
  }

  if (!v14)
  {
    *v10 = *v11;
    v15 = *(v11 + 4);

    if (v15)
    {
      *(v10 + 4) = v15;
      *(v10 + 5) = *(v11 + 5);
      (**(v15 - 8))((v10 + 8), (v11 + 8), v15);
    }

    else
    {
      v19 = *(v11 + 8);
      v20 = *(v11 + 24);
      *(v10 + 5) = *(v11 + 5);
      *(v10 + 8) = v19;
      *(v10 + 24) = v20;
    }

    v21 = *(v11 + 9);
    if (v21)
    {
      *(v10 + 9) = v21;
      *(v10 + 10) = *(v11 + 10);
      (**(v21 - 8))((v10 + 48), (v11 + 48));
    }

    else
    {
      v22 = *(v11 + 3);
      v23 = *(v11 + 4);
      *(v10 + 10) = *(v11 + 10);
      *(v10 + 3) = v22;
      *(v10 + 4) = v23;
    }

    *(v10 + 11) = *(v11 + 11);
    *(v10 + 12) = *(v11 + 12);
    *(v10 + 13) = *(v11 + 13);
    *(v10 + 14) = *(v11 + 14);
    sub_1DD0DCC3C();
  }

LABEL_7:
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88) - 8) + 64);
  memcpy(v10, v11, v16);
  v24 = a3[9];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a1 + v24 + 8);
  v28 = *(a2 + v24 + 8);
  if (v27)
  {
    if (v28)
    {
      *v25 = *v26;
      *(v25 + 1) = *(v26 + 1);

      __swift_assign_boxed_opaque_existential_1(v25 + 2, v26 + 2);
    }

    else
    {
      sub_1DCBB5C74(v25);
      v32 = *(v26 + 1);
      v31 = *(v26 + 2);
      v33 = *v26;
      *(v25 + 6) = *(v26 + 6);
      *(v25 + 1) = v32;
      *(v25 + 2) = v31;
      *v25 = v33;
    }
  }

  else if (v28)
  {
    *v25 = *v26;
    *(v25 + 1) = *(v26 + 1);
    v29 = *(v26 + 5);
    *(v25 + 5) = v29;
    *(v25 + 6) = *(v26 + 6);
    v30 = **(v29 - 8);

    v30(v25 + 16, v26 + 16, v29);
  }

  else
  {
    v34 = *v26;
    v35 = *(v26 + 1);
    v36 = *(v26 + 2);
    *(v25 + 6) = *(v26 + 6);
    *(v25 + 1) = v35;
    *(v25 + 2) = v36;
    *v25 = v34;
  }

  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v37 = a3[12];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = *(a1 + v37 + 8);
  v41 = *(a2 + v37 + 8);
  if (v40)
  {
    if (v41)
    {
      *v38 = *v39;
      v38[1] = v39[1];

      v38[2] = v39[2];
    }

    else
    {
      sub_1DCBB8090(v38);
      v42 = v39[2];
      *v38 = *v39;
      v38[2] = v42;
    }
  }

  else if (v41)
  {
    *v38 = *v39;
    v38[1] = v39[1];
    v38[2] = v39[2];
  }

  else
  {
    v43 = *v39;
    v38[2] = v39[2];
    *v38 = v43;
  }

  v44 = a3[13];
  v45 = (a1 + v44);
  v46 = a2 + v44;
  v47 = *(a1 + v44);
  v48 = *(a2 + v44);
  if (v47)
  {
    if (v48)
    {
      v49 = *(v46 + 1);
      *v45 = v48;
      v45[1] = v49;
      sub_1DD0DCF8C();
    }
  }

  else if (v48)
  {
    v50 = *(v46 + 1);
    *v45 = v48;
    v45[1] = v50;
    sub_1DD0DCF8C();
  }

  *v45 = *v46;
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t sub_1DCE1C828(uint64_t a1)
{
  v2 = type metadata accessor for ResponseComponents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE1C884(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[8];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for ResponseComponents(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
    *(v8 + 24) = *(v9 + 24);
    *(v8 + 5) = *(v9 + 5);
    v12 = *(v9 + 4);
    *(v8 + 3) = *(v9 + 3);
    *(v8 + 4) = v12;
    *(v8 + 10) = *(v9 + 10);
    *(v8 + 88) = *(v9 + 88);
    *(v8 + 104) = *(v9 + 104);
    sub_1DD0DCC3C();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  memcpy(v8, v9, *(*(v11 - 8) + 64));
  v13 = a3[9];
  v14 = a3[10];
  v15 = a1 + v13;
  v16 = a2 + v13;
  v17 = *(v16 + 16);
  *v15 = *v16;
  *(v15 + 16) = v17;
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(a1 + v14) = *(a2 + v14);
  v18 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v19 = a1 + v18;
  v20 = a2 + v18;
  *v19 = *v20;
  *(v19 + 16) = *(v20 + 16);
  v21 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v21) = *(a2 + v21);
  return a1;
}

void *sub_1DCE1CA98(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  v8 = a3[8];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for ResponseComponents(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  v13 = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload)
  {
    if (!v13)
    {
      *v9 = *v10;
      *(v9 + 8) = *(v10 + 8);
      *(v9 + 24) = *(v10 + 24);
      *(v9 + 5) = *(v10 + 5);
      v14 = *(v10 + 4);
      *(v9 + 3) = *(v10 + 3);
      *(v9 + 4) = v14;
      *(v9 + 10) = *(v10 + 10);
      *(v9 + 88) = *(v10 + 88);
      *(v9 + 104) = *(v10 + 104);
      sub_1DD0DCC3C();
    }
  }

  else
  {
    if (!v13)
    {
      *v9 = *v10;

      if (*(v9 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v9 + 1);
      }

      v16 = *(v10 + 24);
      *(v9 + 8) = *(v10 + 8);
      *(v9 + 24) = v16;
      *(v9 + 5) = *(v10 + 5);
      if (*(v9 + 9))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v9 + 6);
      }

      v17 = *(v10 + 4);
      *(v9 + 3) = *(v10 + 3);
      *(v9 + 4) = v17;
      v18 = *(v10 + 11);
      *(v9 + 10) = *(v10 + 10);
      *(v9 + 11) = v18;
      *(v9 + 12) = *(v10 + 12);

      v19 = *(v10 + 14);
      *(v9 + 13) = *(v10 + 13);
      *(v9 + 14) = v19;

      sub_1DD0DCC3C();
    }

    sub_1DCE1C828(v9);
  }

  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88) - 8) + 64);
  memcpy(v9, v10, v15);
  v20 = a3[9];
  v21 = a1 + v20;
  v22 = a2 + v20;
  if (*(a1 + v20 + 8))
  {
    v23 = *(v22 + 1);
    if (v23)
    {
      *v21 = *v22;
      *(v21 + 1) = v23;

      __swift_destroy_boxed_opaque_existential_1Tm(v21 + 2);
      v24 = *(v22 + 2);
      *(v21 + 1) = *(v22 + 1);
      *(v21 + 2) = v24;
      goto LABEL_17;
    }

    sub_1DCBB5C74(v21);
  }

  v25 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v25;
  *(v21 + 2) = *(v22 + 2);
LABEL_17:
  *(v21 + 6) = *(v22 + 6);
  v26 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[12];
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  if (*(a1 + v27 + 8))
  {
    v30 = v29[1];
    if (v30)
    {
      *v28 = *v29;
      v28[1] = v30;

      v28[2] = v29[2];

      goto LABEL_22;
    }

    sub_1DCBB8090(v28);
  }

  *v28 = *v29;
  v28[2] = v29[2];
LABEL_22:
  v31 = a3[13];
  v32 = (a1 + v31);
  v33 = a2 + v31;
  v34 = *(a1 + v31);
  v35 = *(a2 + v31);
  if (!v34)
  {
    if (v35)
    {
      v37 = *(v33 + 1);
      *v32 = v35;
      v32[1] = v37;
      goto LABEL_29;
    }

LABEL_28:
    *v32 = *v33;
    goto LABEL_29;
  }

  if (!v35)
  {

    goto LABEL_28;
  }

  v36 = *(v33 + 1);
  *v32 = v35;
  v32[1] = v36;

LABEL_29:
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t type metadata accessor for OutputElementContainer(uint64_t a1)
{
  result = qword_1ECCA79D0;
  if (!qword_1ECCA79D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCE1CFB8(uint64_t a1)
{
  sub_1DCE1D094(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCE1D094(uint64_t a1)
{
  if (!qword_1ECCA79E0)
  {
    type metadata accessor for ResponseComponents(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCA79E0);
    }
  }
}

void sub_1DCE1D0EC(uint64_t *a1@<X0>, void *a3@<X8>)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_13_49();
  v23 = a1[1];
  v24 = *a1;
  v7 = type metadata accessor for OutputGenerationManifest(0);
  *(a3 + v7[6]) = 0;
  *(a3 + v7[7]) = 0;
  *(a3 + v7[9]) = 256;
  *(a3 + v7[11]) = 0;
  v8 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = (a3 + v7[14]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a3 + v7[15]);
  *v13 = 0;
  v13[1] = 0;
  *(a3 + v7[16]) = 0;
  *(a3 + v7[18]) = 0;
  v14 = a3 + v7[19];
  *v14 = 0;
  *(v14 + 4) = 512;
  *(a3 + v7[20]) = 0;
  *(a3 + v7[21]) = 0;
  *(a3 + v7[22]) = 0;
  *(a3 + v7[23]) = 0;
  *(a3 + v7[24]) = 0;
  *(a3 + v7[25]) = 0;
  v15 = (a3 + v7[26]);
  *v15 = 0;
  v15[1] = 0;
  *(a3 + v7[27]) = 0;
  *(a3 + v7[28]) = MEMORY[0x1E69E7CC0];
  v16 = v7[29];
  v17 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v18 + 104))(a3 + v16, v17);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *(a3 + v7[31]) = 2;
  *a3 = v24;
  a3[1] = v23;
  sub_1DCB67914();
}

double OutputGenerationManifest.dialogPhase.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t OutputGenerationManifest.responseType.getter()
{
  result = OUTLINED_FUNCTION_14_48();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t OutputGenerationManifest.responseType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for OutputGenerationManifest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t OutputGenerationManifest.useFloatingConversationSpace.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.listenAfterSpeakingBehavior.getter()
{
  result = OUTLINED_FUNCTION_14_48();
  v3 = (v1 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = v3[1];
  *v0 = v4;
  v0[1] = v3;
  return result;
}

uint64_t OutputGenerationManifest.listenAfterSpeakingBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for OutputGenerationManifest(0);
  v5 = (v1 + *(result + 36));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t OutputGenerationManifest.disableDeviceRacing.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 44)) = v0;
  return result;
}

double OutputGenerationManifest.additionalCommands.getter()
{
  type metadata accessor for OutputGenerationManifest(0);

  return result;
}

uint64_t OutputGenerationManifest.additionalCommands.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_73() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t OutputGenerationManifest.applicationSessionID.getter()
{
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t OutputGenerationManifest.applicationSessionID.setter()
{
  OUTLINED_FUNCTION_11_50();
  result = OUTLINED_FUNCTION_18_36();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OutputGenerationManifest.responseViewId.getter()
{
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t OutputGenerationManifest.responseViewId.setter()
{
  OUTLINED_FUNCTION_11_50();
  result = OUTLINED_FUNCTION_18_36();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OutputGenerationManifest.resultViewId.getter()
{
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t OutputGenerationManifest.resultViewId.setter()
{
  OUTLINED_FUNCTION_11_50();
  result = OUTLINED_FUNCTION_18_36();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void *OutputGenerationManifest.delayDismissalMs.getter()
{
  v1 = *(v0 + *(type metadata accessor for OutputGenerationManifest(0) + 72));
  v2 = v1;
  return v1;
}

void OutputGenerationManifest.delayDismissalMs.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_73() + 72);

  *(v1 + v2) = v0;
}

uint64_t OutputGenerationManifest.dismissalSettings.getter()
{
  result = OUTLINED_FUNCTION_14_48();
  v3 = (v1 + *(result + 76));
  v4 = *v3;
  LOWORD(v3) = *(v3 + 4);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t OutputGenerationManifest.dismissalSettings.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for OutputGenerationManifest(0);
  v5 = v1 + *(result + 76);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t OutputGenerationManifest.immersiveExperience.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.supplemental.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.preserveResultSpaceIfPossible.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.useResultSnippetAsSmartDialogOverrideInSAE.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.useConverationSnippetAsSmartDialogOverrideInSAE.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 96)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.persistentAcrossInvocations.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 100)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.bundleIdForSash.getter()
{
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t OutputGenerationManifest.bundleIdForSash.setter()
{
  OUTLINED_FUNCTION_11_50();
  result = OUTLINED_FUNCTION_18_36();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void *OutputGenerationManifest.feedbackForm.getter()
{
  v1 = *(v0 + *(type metadata accessor for OutputGenerationManifest(0) + 108));
  v2 = v1;
  return v1;
}

void OutputGenerationManifest.feedbackForm.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_73() + 108);

  *(v1 + v2) = v0;
}

double OutputGenerationManifest.additionalAceViews.getter()
{
  type metadata accessor for OutputGenerationManifest(0);

  return result;
}

uint64_t OutputGenerationManifest.additionalAceViews.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_73() + 112);

  *(v1 + v2) = v0;
  return result;
}

uint64_t OutputGenerationManifest.executionSource.getter()
{
  v2 = *(OUTLINED_FUNCTION_14_48() + 116);
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t OutputGenerationManifest.executionSource.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_73() + 116);
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t OutputGenerationManifest.isTransient.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 124)) = v0;
  return result;
}

uint64_t DismissalSettings.minimumAutoDismissalTimeInMs.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DismissalSettings.init(_:)@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = 1;
  result = a1(&v6);
  v4 = v7;
  v5 = HIBYTE(v7);
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  return result;
}

uint64_t StartAlertSound.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCE1E590()
{
  result = qword_1ECCA79F0;
  if (!qword_1ECCA79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA79F0);
  }

  return result;
}

void initializeBufferWithCopyOfBuffer for OutputGenerationManifest(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) == 0)
  {
    v3 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v3;
    sub_1DD0DCC3C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void assignWithCopy for OutputGenerationManifest(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  sub_1DD0DCC3C();
}

void assignWithTake for OutputGenerationManifest(char *a1, char *a2, int *a3)
{
  v3 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v3;

  sub_1DD0DCC3C();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DismissalSettings(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DismissalSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListenAfterSpeakingBehavior(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for ListenAfterSpeakingBehavior(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartAlertSound(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCE209DC()
{
  v15 = v0;
  v1 = *(v0 + 264);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_83();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1DD0DF18C();
    v9 = sub_1DCB10E9C(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v10, v11, "Unable to produce output due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v12();
}

uint64_t sub_1DCE20B20()
{
  v16 = v0;
  v1 = *(v0 + 280);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_83();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1DD0DF18C();
    v9 = sub_1DCB10E9C(v7, v8, &v15);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v10, v11, "Unable to publish output due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v12 = *(v0 + 200);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCE20C70()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = v1;
  v2(v1, 1);

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCE20CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  sub_1DCE217D4(v9, a2, a3, v6, v7, v8);
}

uint64_t sub_1DCE20D60()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA79F8, &qword_1DD0FA160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE20E14()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "Output is rch-adapted empty. Nothing to do.");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE20EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCE20E00();
}

uint64_t BargeInError.errorDescription.getter()
{
  v1 = *v0;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000003DLL, 0x80000001DD11EFC0);
  if (v1)
  {
    swift_getErrorValue();
    v2 = sub_1DD0DF18C();
    v4 = v3;
  }

  else
  {
    v4 = 0xE600000000000000;
    v2 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x1E12A6780](v2, v4);

  return 0;
}

id BargeInError.rawError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1DCE21074(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCE2108C);
}

uint64_t sub_1DCE2108C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1DCE21178;

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_1DCE21178()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_1DCC90610;
  }

  else
  {

    v7 = sub_1DCC905EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCE21280(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 8))(a3, sub_1DCE2194C, v14, v11, v12);
}

uint64_t sub_1DCE2140C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCE214A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE21074(a1);
}

void **assignWithCopy for BargeInError(void **a1, id *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a2;
  *a1 = v4;

  return a1;
}

void **assignWithTake for BargeInError(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BargeInError(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BargeInError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of OutputPublisherAsyncAdapter.publish(output:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v7 = (*(*v0 + 96) + **(*v0 + 96));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;

  return v7(v2);
}

void sub_1DCE217D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v19 - v14;
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a5);
  v17 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v17);
  sub_1DCB17CA0(v20, v19);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a4;
  sub_1DCAFF9E8(v19, (v18 + 5));
  v18[10] = a2;
  v18[11] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE2194C(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);

  return sub_1DCE2140C(a1, a2 & 1);
}

_BYTE *storeEnumTagSinglePayload for OutputPublisherFactory(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCE21B5C()
{
  v18 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57DA0);
  sub_1DCB17CA0((v0 + 2), (v0 + 7));
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    swift_getDynamicType();
    v8 = sub_1DD0DF2AC();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v11 = sub_1DCB10E9C(v8, v10, v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "#OutputPublishers: OutputPublisher<%s> failed with error %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_29();

  return v15();
}

__n128 PaginatedItem.page.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  return result;
}

BOOL PaginatedItem.isLastItemInPage.getter(_BOOL8 result)
{
  v2 = *(v1 + *(result + 32) + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    return *(v1 + *(result + 28)) == v4;
  }

  __break(1u);
  return result;
}

uint64_t PaginatedItem.remainingItemsInPage.getter(uint64_t result)
{
  v2 = *(v1 + *(result + 32) + 16);
  v3 = *(v1 + *(result + 28));
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 PaginatedItem.init(item:itemIndex:page:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *a3;
  v8 = a3[1].n128_u64[0];
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v11 = type metadata accessor for PaginatedItem(0, a4, v9, v10);
  *(a5 + *(v11 + 28)) = a2;
  v12 = (a5 + *(v11 + 32));
  result = v14;
  *v12 = v14;
  v12[1].n128_u64[0] = v8;
  return result;
}

BOOL Page.isLastPage.getter()
{
  v1 = v0[1];
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (!v2)
  {
    return *v0 == v3;
  }

  __break(1u);
  return result;
}

uint64_t Page.remainingPages.getter()
{
  v1 = v0[1];
  v2 = v1 - *v0;
  if (__OFSUB__(v1, *v0))
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

SiriKitFlow::Page __swiftcall Page.init(pageIndex:pageCount:itemCount:)(Swift::Int pageIndex, Swift::Int pageCount, Swift::Int itemCount)
{
  *v3 = pageIndex;
  v3[1] = pageCount;
  v3[2] = itemCount;
  result.itemCount = itemCount;
  result.pageCount = pageCount;
  result.pageIndex = pageIndex;
  return result;
}

uint64_t PaginatedConversationFlowSource.__allocating_init<A>(items:delegate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PaginatedConversationFlowSource.init<A>(items:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PaginatedConversationFlowSource.init<A>(items:delegate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = (*(a4 + 32))(a1, a3, a4);
  v12 = v11;
  v13 = (*(a4 + 16))(a3, a4);
  v14 = *(a4 + 24);
  v61 = a2;
  v15 = v14(a3, a4);
  if (v13 < 1 || v15 >= v13)
  {
    __break(1u);
LABEL_21:
    __break(1u);

LABEL_23:
    type metadata accessor for PaginatedConversationFlowSource();
    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  v17 = v15;
  v58 = v10;
  v59 = v12;
  v60 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1DD0DE3BC();
  if (v19 % v13)
  {
    v21 = v19 % v13;
  }

  else
  {
    v21 = v13;
  }

  v70 = v21;
  *&v67 = 0;
  *(&v67 + 1) = v19;
  v68 = v13;
  MEMORY[0x1EEE9AC00](v19, v20);
  v57 = a3;
  v51 = a3;
  v52 = a4;
  v53 = a1;
  v54 = v13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7A08, &qword_1DD0FA230);
  v55 = AssociatedTypeWitness;
  v23 = sub_1DD0DE40C();
  v24 = sub_1DCE22DD8();
  v26 = sub_1DCE2276C(sub_1DCE22748, v50, v22, v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v56 = 0;

  v69 = v26;
  if (v17 >= v21 && sub_1DD0DE3BC() >= 2)
  {
    OUTLINED_FUNCTION_56_3();
    v27 = sub_1DD0DE40C();
    WitnessTable = swift_getWitnessTable();
    v29 = swift_getWitnessTable();
    MEMORY[0x1E12A6CE0](&v67, v27, WitnessTable, v29);
    if (v67)
    {
      MEMORY[0x1E12A6CE0](&v67, v27, WitnessTable, v29);
      if (v67)
      {
        if (__OFADD__(v21, v13))
        {
          goto LABEL_21;
        }

        v70 = v21 + v13;
        OUTLINED_FUNCTION_56_3();
        sub_1DD0DF04C();
        swift_allocObject();
        v30 = sub_1DD0DE31C();
        v32 = v31;
        v33 = sub_1DD0DE35C();

        *v32 = v33;
        sub_1DCE21D9C(v30, v23);
        *&v67 = v34;
        OUTLINED_FUNCTION_0_74();
        sub_1DD0DE3CC();
      }

      else
      {
      }
    }
  }

  v35 = v69;

  v36 = sub_1DD0DE3BC();
  v62 = v35;
  OUTLINED_FUNCTION_56_3();
  v37 = sub_1DD0DE40C();
  v38 = OUTLINED_FUNCTION_0_74();
  MEMORY[0x1E12A6870](&v67, v37, v38);

  v62 = v67;
  v39 = sub_1DD0DEE1C();
  v65 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E12A65B0](&v66, v39, v40);
  v63 = 0;
  v64 = v66;
  v62 = 0;
  MEMORY[0x1EEE9AC00](v41, v42);
  v50[0] = v57;
  v50[1] = a4;
  v51 = v36;
  v52 = v61;
  v53 = &v70;
  v54 = v13;
  OUTLINED_FUNCTION_56_3();
  sub_1DD0DEE2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7A18, &qword_1DD0FA238);
  swift_getWitnessTable();
  v43 = v56;
  sub_1DD0DE23C();
  if (v43)
  {

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v44 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA7A20, &qword_1DD0FA240);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_86(inited, xmmword_1DD0E07C0);
  if (v44)
  {
    v67 = v44;
  }

  else
  {
    v67 = xmmword_1DD0E2F10;
  }

  type metadata accessor for StaticActionGroup();
  swift_allocObject();
  v46 = StaticActionGroup.init(actions:transition:debugDescription:)(inited, &v67, 0xD000000000000011, 0x80000001DD11F1D0);
  swift_unknownObjectRelease();
  v47 = v60;
  v48 = sub_1DCBFC300();
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  return v47;
}

uint64_t *sub_1DCE2264C@<X0>(uint64_t *result@<X0>, uint64_t a3@<X2>, uint64_t **a6@<X8>)
{
  v6 = *result;
  v7 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    result = sub_1DD0DE3BC();
    if (result >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = result;
    }

    if (v9 >= v6)
    {
      sub_1DD0DE42C();
      sub_1DD0DEA8C();
      swift_getWitnessTable();
      result = sub_1DD0DE41C();
      *a6 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCE2276C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v9 = v8;
  v65 = a2;
  v66 = a4;
  v64 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v52 = a5;
  v53 = &v47 - v16;
  v50 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v62 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v60 = &v47 - v21;
  v22 = sub_1DD0DE97C();
  v48 = *(v22 - 8);
  v49 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v47 - v29;
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v61 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v58 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v57 = &v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a6;
  v67 = swift_getAssociatedTypeWitness();
  v54 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v38);
  v40 = &v47 - v39;
  v41 = sub_1DD0DE20C();
  v68 = sub_1DD0DED4C();
  v63 = sub_1DD0DED5C();
  sub_1DD0DECFC();
  (*(v58 + 16))(v57, v55, a3);
  v66 = v40;
  v58 = a3;
  result = sub_1DD0DE1FC();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v59 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1DD0DE9EC();
      result = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v64(v30, v60);
      if (v9)
      {
        (*(v54 + 8))(v66, v67);

        (*(v50 + 32))(v51, v60, v52);
        return (*v43)(v30, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v43)(v30, AssociatedTypeWitness);
      sub_1DD0DED3C();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v44 = (v59 + 32);
  v45 = (v59 + 8);
  v46 = v53;
  while (1)
  {
    sub_1DD0DE9EC();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v54 + 8))(v66, v67);
      (*(v48 + 8))(v26, v49);
      return v68;
    }

    (*v44)(v46, v26, AssociatedTypeWitness);
    v64(v46, v62);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v45)(v46, AssociatedTypeWitness);
    sub_1DD0DED3C();
  }

  (*v45)(v46, AssociatedTypeWitness);
  (*(v54 + 8))(v66, v67);

  return (*(v50 + 32))(v51, v62, v52);
}

unint64_t sub_1DCE22DD8()
{
  result = qword_1ECCA7A10;
  if (!qword_1ECCA7A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA7A08, &qword_1DD0FA230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7A10);
  }

  return result;
}

uint64_t sub_1DCE22E60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v32 = *(a1 + 8);
  v13 = *a2;
  v12 = a2[1];
  swift_getAssociatedTypeWitness();
  v14 = sub_1DD0DE3BC();
  v52 = v12;
  v15 = sub_1DD0DE40C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E12A6870](&v48, v15, WitnessTable);
  v52 = v48;
  v42 = a7;
  v43 = a8;
  v44 = v13;
  v45 = a3;
  v46 = v14;
  v47 = a4;
  v37 = a7;
  v38 = a8;
  v39 = sub_1DCE23BFC;
  v40 = &v41;
  v17 = sub_1DD0DEE1C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7AA8, &unk_1DD0FA340);
  v51 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v21 = sub_1DCCEFBC4(sub_1DCE23C0C, v36, v17, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

  if (!v35)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v25 = (*(a8 + 48))(v21, &v48, a7, a8);
    v27 = v26;

LABEL_9:
    *a9 = v25;
    a9[1] = v27;
    return result;
  }

  if (__OFSUB__(a3, 2))
  {
    __break(1u);
  }

  else
  {
    if (a3 - 2 == v13)
    {
      v23 = v13 + 1;
      v24 = *a5;
LABEL_8:
      *&v48 = v23;
      *(&v48 + 1) = a3;
      *&v49 = v24;
      *(&v49 + 1) = v35;
      v50 = v32;
      v28 = *(a8 + 48);
      swift_unknownObjectRetain_n();
      v25 = v28(v21, &v48, a7, a8);
      v27 = v29;
      swift_unknownObjectRelease();

      result = swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v23 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v24 = a6;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCE23158(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v31 = a6;
  v28 = a4;
  v29 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v27 - v15;
  v19 = type metadata accessor for PaginatedItem(0, AssociatedTypeWitness, v17, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v27 - v22;
  (*(v13 + 16))(v16, a2, AssociatedTypeWitness);
  v32.n128_u64[0] = a3;
  v32.n128_u64[1] = v28;
  v33 = v29;
  v24 = PaginatedItem.init(item:itemIndex:page:)(v16, v30, &v32, AssociatedTypeWitness, v23);
  v25 = (*(a8 + 40))(v23, a7, a8, v24);
  (*(v20 + 8))(v23, v19);
  return v25;
}

uint64_t sub_1DCE23344@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v8, &a1[*(TupleTypeMetadata2 + 48)]);
  *a5 = result;
  a5[1] = v11;
  return result;
}

uint64_t PaginatedConversationFlowSource.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE23444(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1DCE234EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) != 0 || ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) != 0 && ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  (*(v5 + 16))(a1, a2);
  v8 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 16) = *(v10 + 16);
  *v12 = v11;
  return a1;
}

uint64_t sub_1DCE23604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  return a1;
}

uint64_t sub_1DCE23698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  return a1;
}

uint64_t sub_1DCE23734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  return a1;
}

uint64_t sub_1DCE237C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  return a1;
}

_DWORD *sub_1DCE23864(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_1DCE23970(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for Page(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Page(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t PaginatedItemContainer.page.getter(uint64_t a1)
{
  result = *(v1 + 8);
  if (*(v1 + 16) < result)
  {
    __break(1u);
  }

  else
  {
    sub_1DD0DE42C();
    sub_1DD0DEA8C();
    swift_getWitnessTable();
    return sub_1DD0DE41C();
  }

  return result;
}

BOOL static PaginationStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL static PaginationRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  switch(v2)
  {
    case 1:
      if (v4 != 2 || v3 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (v4 != 2 || v3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v4 != 2 || v3 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t sub_1DCE23DF0(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1DD0DEC1C();

    v3 = 0x756F69766572702ELL;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = 0x6574497478656E2ELL;
LABEL_5:
    v7 = v3;
    v4 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v4);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v7;
  }

  result = 0x615074737269662ELL;
  switch(a1)
  {
    case 1:
      v6 = 1935764526;
      goto LABEL_11;
    case 2:
      result = 0x756F69766572702ELL;
      break;
    case 3:
      v6 = 2019913262;
LABEL_11:
      result = v6 | 0x6761507400000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PaginationOutOfBounds.description.getter()
{
  if (*v0)
  {
    return 0x68747275466F6E2ELL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t PaginationOutOfBounds.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t PaginatedItemContainer.pageSize.getter(uint64_t a1)
{
  if (*(v1 + 40) == 1)
  {
    return sub_1DD0DE3BC();
  }

  else
  {
    return *(v1 + 32);
  }
}

uint64_t PaginatedItemContainer.init(items:paginationStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a4 = a1;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;

  if (v6 == 1)
  {
    v5 = sub_1DD0DE3BC();
  }

  v7 = sub_1DD0DE3BC();

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v9 == v7 - 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    *(a4 + 8) = 0;
    *(a4 + 16) = v10;
    *(a4 + 24) = 2;
  }

  return result;
}

Swift::Int __swiftcall PaginatedItemContainer.getCurrentPageIndex()()
{
  v4 = *(v1 + 8);
  result = PaginatedItemContainer.pageSize.getter(v0);
  if (result)
  {
    if (v4 != 0x8000000000000000 || result != -1)
    {
      return v4 / result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DCE241A8()
{
  result = qword_1ECCA7AB0[0];
  if (!qword_1ECCA7AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA7AB0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PaginationStyle(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PaginationOutOfBounds(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCE24320(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t sub_1DCE24370(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  v4 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  return a1;
}

uint64_t sub_1DCE243E0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_1DCE24438(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DCE24478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCE244DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 16);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCE24528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void sub_1DCE2459C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v25 = *v2;
  v26 = *(v2 + 8);
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v23 = v4;
  v24 = v5;

  sub_1DCE24798(&v23, a2, v30);

  v9 = v30[0];
  v10 = v30[1];
  v11 = v31;
  *(v2 + 8) = v30[0];
  *(v2 + 16) = v10;
  *(v2 + 24) = v11;
  v25 = v9;
  *&v26 = v10;
  BYTE8(v26) = v11;
  type metadata accessor for PaginatedItemContainer.PageBounds(0, *(a2 + 16), v12, v13);
  v14 = sub_1DCE24A38();
  v16 = v15;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);

  oslog = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = sub_1DCB10E9C(v14, v16, &v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_1DCAFC000, oslog, v18, "Pagination boundaries adjusted: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A8390](v20, -1, -1);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  else
  {
  }
}

void *sub_1DCE24798@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (!*(result + 8))
  {
    if (!v8)
    {
      *a3 = 0;
      *(a3 + 8) = v9;
      *(a3 + 16) = 0;
      return result;
    }

    if (v8 >= v6)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v15 = (v8 - v6) & ~((v8 - v6) >> 63);
      v16 = __OFADD__(v15, v6);
      v17 = v15 + v6;
      if (v16)
      {
        goto LABEL_30;
      }

      result = sub_1DD0DE3BC();
      if (result >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = result;
      }

      *a3 = v15;
      *(a3 + 8) = v18;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = v8;
    }

LABEL_25:
    v14 = 2;
    goto LABEL_26;
  }

  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  if (*(result + 8) == 1)
  {
    result = sub_1DD0DE3BC();
    if (v9 >= result)
    {
      *a3 = v8;
      *(a3 + 8) = v9;
      v14 = 1;
LABEL_26:
      *(a3 + 16) = v14;
      return result;
    }

    v27 = v7;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    v31 = v11;
    v32 = v12;
    result = (v9 + v6);
    if (!__OFADD__(v9, v6))
    {
      result = sub_1DCE24C58(result, a2);
      *a3 = v9;
LABEL_24:
      *(a3 + 8) = result;
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_29;
  }

  switch(v6)
  {
    case 1:
      v19 = sub_1DCE24CA0(a2);
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v20 = PaginatedItemContainer.pageSize.getter(a2);
      v16 = __OFADD__(v19, v20);
      result = (v19 + v20);
      if (v16)
      {
        goto LABEL_31;
      }

      result = sub_1DCE24C58(result, a2);
      *a3 = v19;
      goto LABEL_24;
    case 2:
      v27 = *v3;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v21 = PaginatedItemContainer.pageSize.getter(a2);
      LOBYTE(v22) = 0;
      goto LABEL_21;
    case 3:
      v27 = *v3;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v21 = PaginatedItemContainer.pageSize.getter(a2);
      LOBYTE(v22) = 1;
LABEL_21:
      result = sub_1DCE24798(&v21, a2, a3);
      break;
    default:
      v27 = *v3;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v13 = PaginatedItemContainer.pageSize.getter(a2);
      result = sub_1DCE24C58(v13, a2);
      *a3 = 0;
      goto LABEL_24;
  }

  return result;
}

uint64_t sub_1DCE24A38()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    sub_1DD0DEC1C();

    strcpy(v9, "[startIndex=");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    v2 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v2);

    MEMORY[0x1E12A6780](0x646E49646E65202CLL, 0xEB000000003D7865);
    v3 = sub_1DD0DF03C();
  }

  else
  {
    sub_1DD0DEC1C();

    strcpy(v9, "[startIndex=");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    v5 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v5);

    MEMORY[0x1E12A6780](0x646E49646E65202CLL, 0xEB000000003D7865);
    v6 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v6);

    MEMORY[0x1E12A6780](0xD000000000000014, 0x80000001DD1131F0);
    if (v1)
    {
      v3 = 0x68747275466F6E2ELL;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v1)
    {
      v7 = 0xEF736D6574497265;
    }

    else
    {
      v7 = 0x80000001DD113210;
    }

    v4 = v7;
  }

  MEMORY[0x1E12A6780](v3, v4);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  return v9[0];
}

uint64_t sub_1DCE24C58(uint64_t a1, uint64_t a2)
{
  result = sub_1DD0DE3BC();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = result;
    }

    if (v4 != result - 1)
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_1DCE24CA0(uint64_t a1)
{
  v2 = sub_1DD0DE3BC();
  result = PaginatedItemContainer.pageSize.getter(a1);
  if (!result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v2 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_27;
  }

  if (v2 % result == 1)
  {
    goto LABEL_16;
  }

  if (v2 % result)
  {
    result = PaginatedItemContainer.pageSize.getter(a1);
    if (!result)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (v2 == 0x8000000000000000 && result == -1)
    {
      goto LABEL_35;
    }

    v6 = __OFSUB__(v2, v2 % result);
    result = v2 - v2 % result;
    if (v6)
    {
      goto LABEL_33;
    }

    return result;
  }

  result = PaginatedItemContainer.pageSize.getter(a1);
  if (!result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v2 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_34;
  }

  v6 = __OFSUB__(v2 / result, 1);
  v2 = v2 / result - 1;
  if (v6)
  {
    goto LABEL_32;
  }

  v7 = PaginatedItemContainer.pageSize.getter(a1);
  result = v2 * v7;
  if ((v2 * v7) >> 64 != (v2 * v7) >> 63)
  {
    __break(1u);
LABEL_16:
    result = PaginatedItemContainer.pageSize.getter(a1);
    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v6 = __OFSUB__(v2, v8);
      v9 = v2 - v8;
      if (!v6)
      {
        return v9 & ~(v9 >> 63);
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ParameterClause(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = sub_1DD0DC76C();
      (*(*(v8 - 8) + 16))(v5, v6, v8);
      goto LABEL_27;
    case 1u:
      v17 = sub_1DD0DC76C();
      (*(*(v17 - 8) + 16))(v5, v6, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v5[*(v18 + 48)] = *&v6[*(v18 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v11 = *(v6 + 1);
      *v5 = *v6;
      *(v5 + 1) = v11;
      *(v5 + 2) = *(v6 + 2);

      goto LABEL_27;
    case 3u:
      *v5 = *v6;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v9 = sub_1DD0DB1EC();
      (*(*(v9 - 8) + 16))(v5, v6, v9);
      goto LABEL_27;
    case 5u:
      v19 = *v6;
      *v5 = *v6;
      v20 = v19;
      goto LABEL_27;
    case 6u:
      v21 = sub_1DD0DB4BC();
      (*(*(v21 - 8) + 16))(v5, v6, v21);
      v22 = type metadata accessor for USOParse(0);
      v23 = v22[5];
      v24 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v6[v23], 1, v24))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v5[v23], &v6[v23], *(*(v25 - 8) + 64));
      }

      else
      {
        (*(*(v24 - 8) + 16))(&v5[v23], &v6[v23], v24);
        __swift_storeEnumTagSinglePayload(&v5[v23], 0, 1, v24);
      }

      v57 = v22[6];
      v58 = &v5[v57];
      v59 = &v6[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v22[7];
      v62 = &v5[v61];
      v63 = &v6[v61];
      v62[4] = v63[4];
      *v62 = *v63;

      goto LABEL_27;
    case 7u:
      v12 = sub_1DD0DB4BC();
      (*(*(v12 - 8) + 16))(v5, v6, v12);
      v13 = type metadata accessor for USOParse(0);
      v14 = v13[5];
      v15 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v6[v14], 1, v15))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v5[v14], &v6[v14], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(*(v15 - 8) + 16))(&v5[v14], &v6[v14], v15);
        __swift_storeEnumTagSinglePayload(&v5[v14], 0, 1, v15);
      }

      v37 = v13[6];
      v38 = &v5[v37];
      v39 = &v6[v37];
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 1) = v40;
      v41 = v13[7];
      v42 = &v5[v41];
      v43 = &v6[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse(0);
      v45 = v44[5];
      v46 = &v5[v45];
      v47 = &v6[v45];
      v48 = *(v47 + 1);
      *v46 = *v47;
      *(v46 + 1) = v48;
      v49 = v44[6];
      v50 = &v5[v49];
      v51 = &v6[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v44[7];
      v54 = &v5[v53];
      v55 = &v6[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;

      goto LABEL_27;
    case 8u:
      v26 = sub_1DD0DD12C();
      (*(*(v26 - 8) + 16))(v5, v6, v26);
      v27 = type metadata accessor for NLRouterParse(0);
      v28 = v27[5];
      v29 = &v5[v28];
      v30 = &v6[v28];
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      v32 = v27[6];
      v33 = &v5[v32];
      v34 = &v6[v32];
      v35 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v34, 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v33, v34, *(*(v36 - 8) + 64));
      }

      else
      {
        v64 = sub_1DD0DB4BC();
        (*(*(v64 - 8) + 16))(v33, v34, v64);
        v65 = v35[5];
        v66 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v34[v65], 1, v66))
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v33[v65], &v34[v65], *(*(v67 - 8) + 64));
        }

        else
        {
          (*(*(v66 - 8) + 16))(&v33[v65], &v34[v65], v66);
          __swift_storeEnumTagSinglePayload(&v33[v65], 0, 1, v66);
        }

        v68 = v35[6];
        v69 = &v33[v68];
        v70 = &v34[v68];
        v71 = *(v70 + 1);
        *v69 = *v70;
        *(v69 + 1) = v71;
        v72 = v35[7];
        v73 = &v33[v72];
        v74 = &v34[v72];
        v73[4] = v74[4];
        *v73 = *v74;

        __swift_storeEnumTagSinglePayload(v33, 0, 1, v35);
      }

      v75 = v27[7];
      v76 = *&v6[v75];
      *&v5[v75] = v76;
      v77 = v76;
      goto LABEL_27;
    case 9u:
      v10 = sub_1DD0DD08C();
      (*(*(v10 - 8) + 16))(v5, v6, v10);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v5, v6, *(*(v7 - 8) + 64));
      break;
  }

  return a1;
}

void destroy for ParameterClause(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + *(a2 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v8 = sub_1DD0DC76C();
      (*(*(v8 - 8) + 8))(v2, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      return;
    case 2u:

      goto LABEL_21;
    case 3u:

      swift_unknownObjectRelease();
      return;
    case 4u:
      v3 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v9 = *v2;
      goto LABEL_29;
    case 6u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 8))(v2, v10);
      v11 = *(type metadata accessor for USOParse(0) + 20);
      v12 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v2 + v11, 1, v12))
      {
        (*(*(v12 - 8) + 8))(v2 + v11, v12);
      }

      goto LABEL_21;
    case 7u:
      v5 = sub_1DD0DB4BC();
      (*(*(v5 - 8) + 8))(v2, v5);
      v6 = *(type metadata accessor for USOParse(0) + 20);
      v7 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v2 + v6, 1, v7))
      {
        (*(*(v7 - 8) + 8))(v2 + v6, v7);
      }

      type metadata accessor for LinkParse(0);

LABEL_21:

      break;
    case 8u:
      v13 = sub_1DD0DD12C();
      (*(*(v13 - 8) + 8))(v2, v13);
      v14 = type metadata accessor for NLRouterParse(0);

      v15 = v2 + *(v14 + 24);
      v16 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
      {
        v17 = sub_1DD0DB4BC();
        (*(*(v17 - 8) + 8))(v15, v17);
        v18 = *(v16 + 20);
        v19 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v15 + v18, 1, v19))
        {
          (*(*(v19 - 8) + 8))(v15 + v18, v19);
        }
      }

      v9 = *(v2 + *(v14 + 28));
LABEL_29:

      break;
    case 9u:
      v3 = sub_1DD0DD08C();
LABEL_5:
      v4 = *(*(v3 - 8) + 8);

      v4(v2, v3);
      break;
    default:
      return;
  }
}

void *initializeWithCopy for ParameterClause(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = sub_1DD0DC76C();
      (*(*(v8 - 8) + 16))(v5, v6, v8);
      goto LABEL_25;
    case 1u:
      v17 = sub_1DD0DC76C();
      (*(*(v17 - 8) + 16))(v5, v6, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v5[*(v18 + 48)] = *&v6[*(v18 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v11 = *(v6 + 1);
      *v5 = *v6;
      *(v5 + 1) = v11;
      *(v5 + 2) = *(v6 + 2);

      goto LABEL_25;
    case 3u:
      *v5 = *v6;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v9 = sub_1DD0DB1EC();
      (*(*(v9 - 8) + 16))(v5, v6, v9);
      goto LABEL_25;
    case 5u:
      v19 = *v6;
      *v5 = *v6;
      v20 = v19;
      goto LABEL_25;
    case 6u:
      v21 = sub_1DD0DB4BC();
      (*(*(v21 - 8) + 16))(v5, v6, v21);
      v22 = type metadata accessor for USOParse(0);
      v23 = v22[5];
      v24 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v6[v23], 1, v24))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v5[v23], &v6[v23], *(*(v25 - 8) + 64));
      }

      else
      {
        (*(*(v24 - 8) + 16))(&v5[v23], &v6[v23], v24);
        __swift_storeEnumTagSinglePayload(&v5[v23], 0, 1, v24);
      }

      v57 = v22[6];
      v58 = &v5[v57];
      v59 = &v6[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v22[7];
      v62 = &v5[v61];
      v63 = &v6[v61];
      v62[4] = v63[4];
      *v62 = *v63;

      goto LABEL_25;
    case 7u:
      v12 = sub_1DD0DB4BC();
      (*(*(v12 - 8) + 16))(v5, v6, v12);
      v13 = type metadata accessor for USOParse(0);
      v14 = v13[5];
      v15 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v6[v14], 1, v15))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v5[v14], &v6[v14], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(*(v15 - 8) + 16))(&v5[v14], &v6[v14], v15);
        __swift_storeEnumTagSinglePayload(&v5[v14], 0, 1, v15);
      }

      v37 = v13[6];
      v38 = &v5[v37];
      v39 = &v6[v37];
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 1) = v40;
      v41 = v13[7];
      v42 = &v5[v41];
      v43 = &v6[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse(0);
      v45 = v44[5];
      v46 = &v5[v45];
      v47 = &v6[v45];
      v48 = *(v47 + 1);
      *v46 = *v47;
      *(v46 + 1) = v48;
      v49 = v44[6];
      v50 = &v5[v49];
      v51 = &v6[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v44[7];
      v54 = &v5[v53];
      v55 = &v6[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;

      goto LABEL_25;
    case 8u:
      v26 = sub_1DD0DD12C();
      (*(*(v26 - 8) + 16))(v5, v6, v26);
      v27 = type metadata accessor for NLRouterParse(0);
      v28 = v27[5];
      v29 = &v5[v28];
      v30 = &v6[v28];
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      v32 = v27[6];
      v33 = &v5[v32];
      v34 = &v6[v32];
      v35 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v34, 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v33, v34, *(*(v36 - 8) + 64));
      }

      else
      {
        v64 = sub_1DD0DB4BC();
        (*(*(v64 - 8) + 16))(v33, v34, v64);
        v65 = v35[5];
        v66 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v34[v65], 1, v66))
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v33[v65], &v34[v65], *(*(v67 - 8) + 64));
        }

        else
        {
          (*(*(v66 - 8) + 16))(&v33[v65], &v34[v65], v66);
          __swift_storeEnumTagSinglePayload(&v33[v65], 0, 1, v66);
        }

        v68 = v35[6];
        v69 = &v33[v68];
        v70 = &v34[v68];
        v71 = *(v70 + 1);
        *v69 = *v70;
        *(v69 + 1) = v71;
        v72 = v35[7];
        v73 = &v33[v72];
        v74 = &v34[v72];
        v73[4] = v74[4];
        *v73 = *v74;

        __swift_storeEnumTagSinglePayload(v33, 0, 1, v35);
      }

      v75 = v27[7];
      v76 = *&v6[v75];
      *&v5[v75] = v76;
      v77 = v76;
      goto LABEL_25;
    case 9u:
      v10 = sub_1DD0DD08C();
      (*(*(v10 - 8) + 16))(v5, v6, v10);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v5, v6, *(*(v7 - 8) + 64));
      break;
  }

  return a1;
}

void *assignWithCopy for ParameterClause(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v4 = *(a3 + 20);
    v5 = a1 + v4;
    v6 = a2 + v4;
    sub_1DCB29EBC(a1 + v4);
    v7 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v8 = sub_1DD0DC76C();
        (*(*(v8 - 8) + 16))(v5, v6, v8);
        goto LABEL_26;
      case 1u:
        v16 = sub_1DD0DC76C();
        (*(*(v16 - 8) + 16))(v5, v6, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v5[*(v17 + 48)] = *&v6[*(v17 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v5 = *v6;
        *(v5 + 1) = *(v6 + 1);
        *(v5 + 2) = *(v6 + 2);

        goto LABEL_26;
      case 3u:
        *v5 = *v6;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v9 = sub_1DD0DB1EC();
        (*(*(v9 - 8) + 16))(v5, v6, v9);
        goto LABEL_26;
      case 5u:
        v18 = *v6;
        *v5 = *v6;
        v19 = v18;
        goto LABEL_26;
      case 6u:
        v20 = sub_1DD0DB4BC();
        (*(*(v20 - 8) + 16))(v5, v6, v20);
        v21 = type metadata accessor for USOParse(0);
        v22 = v21[5];
        v23 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v6[v22], 1, v23))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v5[v22], &v6[v22], *(*(v24 - 8) + 64));
        }

        else
        {
          (*(*(v23 - 8) + 16))(&v5[v22], &v6[v22], v23);
          __swift_storeEnumTagSinglePayload(&v5[v22], 0, 1, v23);
        }

        v52 = v21[6];
        v53 = &v5[v52];
        v54 = &v6[v52];
        *v53 = *v54;
        *(v53 + 1) = *(v54 + 1);
        v55 = v21[7];
        v56 = &v5[v55];
        v57 = &v6[v55];
        v58 = *v57;
        v56[4] = v57[4];
        *v56 = v58;

        goto LABEL_26;
      case 7u:
        v11 = sub_1DD0DB4BC();
        (*(*(v11 - 8) + 16))(v5, v6, v11);
        v12 = type metadata accessor for USOParse(0);
        v13 = v12[5];
        v14 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v6[v13], 1, v14))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v5[v13], &v6[v13], *(*(v15 - 8) + 64));
        }

        else
        {
          (*(*(v14 - 8) + 16))(&v5[v13], &v6[v13], v14);
          __swift_storeEnumTagSinglePayload(&v5[v13], 0, 1, v14);
        }

        v35 = v12[6];
        v36 = &v5[v35];
        v37 = &v6[v35];
        *v36 = *v37;
        *(v36 + 1) = *(v37 + 1);
        v38 = v12[7];
        v39 = &v5[v38];
        v40 = &v6[v38];
        v41 = *v40;
        v39[4] = v40[4];
        *v39 = v41;
        v42 = type metadata accessor for LinkParse(0);
        v43 = v42[5];
        v44 = &v5[v43];
        v45 = &v6[v43];
        *v44 = *v45;
        *(v44 + 1) = *(v45 + 1);
        v46 = v42[6];
        v47 = &v5[v46];
        v48 = &v6[v46];
        *v47 = *v48;
        *(v47 + 1) = *(v48 + 1);
        v49 = v42[7];
        v50 = &v5[v49];
        v51 = &v6[v49];
        *v50 = *v51;
        *(v50 + 1) = *(v51 + 1);

        goto LABEL_26;
      case 8u:
        v25 = sub_1DD0DD12C();
        (*(*(v25 - 8) + 16))(v5, v6, v25);
        v26 = type metadata accessor for NLRouterParse(0);
        v27 = v26[5];
        v28 = &v5[v27];
        v29 = &v6[v27];
        *v28 = *v29;
        *(v28 + 1) = *(v29 + 1);
        v30 = v26[6];
        v31 = &v5[v30];
        v32 = &v6[v30];
        v33 = type metadata accessor for USOParse(0);

        if (__swift_getEnumTagSinglePayload(v32, 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v31, v32, *(*(v34 - 8) + 64));
        }

        else
        {
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 16))(v31, v32, v59);
          v60 = v33[5];
          v61 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v60], 1, v61))
          {
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v60], &v32[v60], *(*(v62 - 8) + 64));
          }

          else
          {
            (*(*(v61 - 8) + 16))(&v31[v60], &v32[v60], v61);
            __swift_storeEnumTagSinglePayload(&v31[v60], 0, 1, v61);
          }

          v63 = v33[6];
          v64 = &v31[v63];
          v65 = &v32[v63];
          *v64 = *v65;
          *(v64 + 1) = *(v65 + 1);
          v66 = v33[7];
          v67 = &v31[v66];
          v68 = &v32[v66];
          v69 = *v68;
          v67[4] = v68[4];
          *v67 = v69;

          __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
        }

        v70 = v26[7];
        v71 = *&v6[v70];
        *&v5[v70] = v71;
        v72 = v71;
        goto LABEL_26;
      case 9u:
        v10 = sub_1DD0DD08C();
        (*(*(v10 - 8) + 16))(v5, v6, v10);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v5, v6, *(*(v7 - 8) + 64));
        break;
    }
  }

  return a1;
}