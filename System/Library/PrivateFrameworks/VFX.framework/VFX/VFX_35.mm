unint64_t sub_1AF3D0824@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
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
        if (v15 == &type metadata for ParticleFlockingConstrainToArea)
        {
          v16 = (&(*(v14 - 2))[4 * v10] + *(v11 + 128));
          v3 = *v16;
          v4 = *(v16 + 2);
          v5 = *(v16 + 3);
          v6 = *(v16 + 4);
          v7 = *(v16 + 5);
          v8 = *(v16 + 48);
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

unint64_t sub_1AF3D0944@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
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
      v7 = 2;
      goto LABEL_3;
    }

    v10 = *(*(v2 + 144) + 8 * *v8 + 32);
    v11 = *(v10 + 48);
    v12 = (v11 + 32);
    v5 = *(v11 + 16) + 1;
    v7 = 2;
    while (--v5)
    {
      v13 = v12 + 5;
      v14 = *v12;
      v12 += 5;
      if (v14 == &type metadata for ParticleFlockingAlignOrientation)
      {
        v15 = &(*(v13 - 2))[3 * v9] + *(v10 + 128);
        v4 = v15[8];
        v5 = *(v15 + 2);
        v6 = *(v15 + 3);
        v3 = *v15 | (*(v15 + 1) << 32);
        v7 = v15[32] | (*(v15 + 9) << 32);
        goto LABEL_3;
      }
    }

    v3 = 0;
    v4 = 0;
    v6 = 0;
  }

LABEL_3:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

unint64_t sub_1AF3D0A74@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
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
        if (v15 == &type metadata for ParticleFlockingConstrainToPlane)
        {
          v16 = (&(*(v14 - 2))[4 * v10] + *(v11 + 128));
          v3 = *v16;
          v4 = *(v16 + 2);
          v5 = *(v16 + 3);
          v6 = *(v16 + 4);
          v7 = *(v16 + 5);
          v8 = *(v16 + 48);
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

unint64_t sub_1AF3D0B94@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 0xFFFFFFFF)
  {
LABEL_2:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    goto LABEL_3;
  }

  v3 = 0;
  v6 = 1;
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
    v7 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v8 = *(v7 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v7[2] == HIDWORD(result))
    {
      v9 = *(*(v2 + 144) + 8 * *v7 + 32);
      v10 = *(v9 + 48);
      v11 = (v10 + 32);
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        v13 = v11 + 5;
        v14 = *v11;
        v11 += 5;
        if (v14 == &type metadata for ParticleFlockingAlignVelocityOnPlane)
        {
          v6 = 0;
          v15 = (&(*(v13 - 2))[2 * v8] + *(v9 + 128));
          v3 = *v15;
          v4 = *(v15 + 2);
          v5 = *(v15 + 3);
          goto LABEL_3;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1AF3D0C8C@<X0>(unint64_t result@<X0>, __int128 *a2@<X8>)
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
        if (v10 == &type metadata for ParticleSubSpawn.State)
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
          return sub_1AF44323C(v18, &v17);
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

__n128 sub_1AF3D0D90@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
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
        if (v11 == &type metadata for ParticleSpawnState)
        {
          v12 = &(*(v10 - 2))[8 * v5] + *(v6 + 128);
          v13 = *(v12 + 5);
          *(a2 + 64) = *(v12 + 4);
          *(a2 + 80) = v13;
          *(a2 + 96) = *(v12 + 6);
          *(a2 + 112) = v12[112];
          v14 = *(v12 + 1);
          *a2 = *v12;
          *(a2 + 16) = v14;
          result = *(v12 + 2);
          v15 = *(v12 + 3);
          *(a2 + 32) = result;
          *(a2 + 48) = v15;
          return result;
        }
      }
    }
  }

  result.n128_u64[0] = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 112) = 2;
  return result;
}

__n128 sub_1AF3D0E88@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
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
        if (v11 == &type metadata for ParticleRibbonRenderer)
        {
          v12 = &(*(v10 - 2))[7 * v5] + *(v6 + 128);
          v13 = *(v12 + 80);
          *(a2 + 64) = *(v12 + 64);
          *(a2 + 80) = v13;
          *(a2 + 89) = *(v12 + 89);
          v14 = *(v12 + 16);
          *a2 = *v12;
          *(a2 + 16) = v14;
          result = *(v12 + 48);
          *(a2 + 32) = *(v12 + 32);
          *(a2 + 48) = result;
          return result;
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x20000000000;
  result.n128_u64[0] = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 89) = 0u;
  return result;
}

unint64_t sub_1AF3D0F7C(unint64_t a1)
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
        if (v12 == &type metadata for ParticleSpawnDuration)
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

unint64_t sub_1AF3D1058(unint64_t a1)
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
        if (v12 == &type metadata for ParticleSpawnDelay)
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

unint64_t sub_1AF3D1134@<X0>(unint64_t result@<X0>, void *a2@<X8>)
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
        if (v10 == &type metadata for VFXParticleCollisionDataComponent)
        {
          v11 = (&(*(v9 - 2))[v4].Kind + *(v5 + 128));
          v12 = v11[1];
          *a2 = *v11;
          a2[1] = v12;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1AF3D11F4(unint64_t a1)
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
        if (v12 == &type metadata for Bindings)
        {
          v13 = *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3D131C(unint64_t a1)
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
        if (v12 == &type metadata for REMeshAssetPointCache)
        {
          v13 = *(&(*(v11 - 2))->Kind + 24 * v6 + *(v7 + 128));

          return v13;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF3D1440(unint64_t a1)
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
        if (v12 == &type metadata for TextureClient)
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

uint64_t sub_1AF3D1538(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 1;
    }

    v7 = *(*(v1 + 144) + 8 * *v5 + 32);
    v8 = *(v7 + 48);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    result = 1;
    while (--v10)
    {
      v11 = v9 + 5;
      v12 = *v9;
      v9 += 5;
      if (v12 == &type metadata for TextureCGImage)
      {
        v13 = *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
        v14 = v13;
        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_1AF3D161C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    v7 = sub_1AF9A178C(1, 0);
    v9 = v8;

    if (v9)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    sub_1AF67CCDC(v10, v6, a4 & 1);
    v12 = v11;

    return v12;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF3D1700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_1AF9A178C(1, 0);
    v7 = v6;

    if (v7)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = v5;
    }

    sub_1AF67CE70(v8, v4);
    v10 = v9;

    return v10;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF3D17D4(uint64_t a1, __int128 *a2)
{
  v126 = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RenderGraphNode(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v75 = v7;
    v9 = *(*result + 152);
    v10 = *result + 152;
    v11 = result;
    v12 = swift_retain_n();
    v83 = v9;
    v84 = v11;
    v82 = v10;
    v9(&v87, v12);
    v108 = v88;
    v13 = *(v88 + 16);

    v76 = v5;
    if (v13)
    {
      v73 = a2;
      v15 = 0;
      v77 = MEMORY[0x1E69E7CC0];
      v16 = v14 + 32;
      v74 = v4;
      v80 = v14 + 32;
      v81 = a1;
      v79 = v13;
      while (1)
      {
        v17 = v15;
        v18 = *(v16 + 8 * v15++);
        v19 = swift_allocObject();
        *(v19 + 16) = 0xC0000000000000D0;
        sub_1AF4410A8(v18);
        v20 = sub_1AF9C5694(v18, v19 | 0x8000000000000000);

        if (!v20)
        {
          goto LABEL_5;
        }

        v85 = v15;
        v21 = v84;

        v83(&v93, v22);
        v23 = v94;
        v106 = v93;
        v107 = v94;
        v24 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v106, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v105 = v95;
        sub_1AF444058(&v105, &unk_1EB638968, &type metadata for TypeConstraint, v24, sub_1AF449B08);
        v104 = v96;
        sub_1AF44943C(&v104, sub_1AF445C2C);
        v103 = v97;
        sub_1AF44943C(&v103, sub_1AF445C2C);
        v102 = v98;
        sub_1AF444058(&v102, &unk_1EB638978, &type metadata for AnyValue, v24, sub_1AF449B08);
        v25 = *(v23 + 8 * v17 + 32);
        sub_1AF4410A8(v25);
        v26 = sub_1AF444058(&v107, &unk_1EB638968, &type metadata for TypeConstraint, v24, sub_1AF449B08);
        v27 = (*(*v21 + 248))(v26);
        if (v17 < 0 || v17 >= *(v27 + 16))
        {
          break;
        }

        v28 = *(v27 + v17 + 32);
        sub_1AF441114(v25);

        v13 = v79;
        v16 = v80;
        v15 = v85;
        if (v28 == 3)
        {
          goto LABEL_5;
        }

        v29 = v78[12];
        if (!*(v29 + 16))
        {
          goto LABEL_5;
        }

        v30 = sub_1AF0D3F10(v84);
        if ((v31 & 1) == 0)
        {
          goto LABEL_5;
        }

        v32 = *(*(v29 + 56) + 8 * v30);
        v33 = *(v32 + 16);
        if (!v33)
        {
          goto LABEL_5;
        }

        v34 = (v32 + 40);
        while (1)
        {
          v35 = *v34;
          v34 += 3;
          if (v35 == v17)
          {
            break;
          }

          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        v36 = v73[5];
        v37 = v73[3];
        v122 = v73[4];
        v123 = v36;
        v38 = v73[5];
        v39 = v73[7];
        v124 = v73[6];
        v125 = v39;
        v40 = v73[1];
        v118 = *v73;
        v119 = v40;
        v41 = v73[3];
        v43 = *v73;
        v42 = v73[1];
        v120 = v73[2];
        v121 = v41;
        v114 = v122;
        v115 = v38;
        v44 = v73[7];
        v116 = v124;
        v117 = v44;
        v110 = v43;
        v111 = v42;
        v112 = v120;
        v113 = v37;
        v45 = (&v110 + v17);
        v47 = *v45;
        v46 = v45[1];
        v72 = v45;
        if (RGResourceIsNull(v46) || RGPassIsNull(v47))
        {
LABEL_38:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        if (RGResourceIsTexture(v46))
        {
          v48 = sub_1AF43943C(v46, v28);
          v49 = sub_1AF9711C0(v17, v91);
          v69 = v50;
          v70 = v49;
          v71 = v48;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_1AF4218E0(0, *(v77 + 2) + 1, 1, v77);
          }

          v52 = *(v77 + 2);
          v51 = *(v77 + 3);
          if (v52 >= v51 >> 1)
          {
            v77 = sub_1AF4218E0(v51 > 1, v52 + 1, 1, v77);
          }

          v53 = v77;
          *(v77 + 2) = v52 + 1;
          v54 = &v53[32 * v52];
          v55 = v69;
          *(v54 + 4) = v70;
          *(v54 + 5) = v55;
          v54[48] = v28;
          *(v54 + 7) = v71;
          v56 = v78[10];
          v114 = v122;
          v115 = v123;
          v116 = v124;
          v117 = v125;
          v110 = v118;
          v111 = v119;
          v112 = v120;
          v113 = v121;
          v58 = *v72;
          v57 = v72[1];
          if (RGResourceIsNull(v57))
          {
            goto LABEL_38;
          }

          if (RGPassIsNull(v58))
          {
            goto LABEL_38;
          }

          sub_1AF24F974(v56, v57, v71, v109, v58);
          v59 = *&v109[0];
          if (RGResourceIsNull(*(&v109[0] + 1)))
          {
            goto LABEL_38;
          }

          if (RGPassIsNull(v59))
          {
            goto LABEL_38;
          }

          v109[4] = v122;
          v109[5] = v123;
          v109[6] = v124;
          v109[7] = v125;
          v109[0] = v118;
          v109[1] = v119;
          v109[2] = v120;
          v109[3] = v121;
          v60 = &v109[v17];
          v61 = *v60;
          if (RGResourceIsNull(*(v60 + 1)) || RGPassIsNull(v61))
          {
            goto LABEL_38;
          }

          RGPassDependsOn(v59, v61);
          swift_unknownObjectRelease();
          sub_1AF441114(v18);
          v4 = v74;
          if (v15 == v13)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_5:
          sub_1AF441114(v18);
          if (v15 == v13)
          {
            v4 = v74;
            goto LABEL_34;
          }
        }
      }

      sub_1AF441114(v25);

      v13 = v79;
      v16 = v80;
      v15 = v85;
      goto LABEL_5;
    }

    v77 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v62 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v108, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    *&v110 = v87;
    sub_1AF444058(&v110, &unk_1EB638968, &type metadata for TypeConstraint, v62, sub_1AF449B08);
    sub_1AF444058(&v108, &unk_1EB638968, &type metadata for TypeConstraint, v62, sub_1AF449B08);
    *&v109[0] = v89;
    sub_1AF444058(v109, &unk_1EB638968, &type metadata for TypeConstraint, v62, sub_1AF449B08);
    v101 = v90;
    sub_1AF44943C(&v101, sub_1AF445C2C);
    v100 = v91;
    sub_1AF44943C(&v100, sub_1AF445C2C);
    v99 = v92;
    sub_1AF444058(&v99, &unk_1EB638978, &type metadata for AnyValue, v62, sub_1AF449B08);
    v63 = v77;
    if (*(v77 + 2))
    {
      v64 = v78[3];
      v66 = v75;
      v65 = v76;
      (*(v76 + 16))(v75, v84 + OBJC_IVAR____TtC3VFX4Node_authoringID, v4);

      v67 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(v64 + v67);
      *(v64 + v67) = 0x8000000000000000;
      sub_1AF852204(v63, v66, isUniquelyReferenced_nonNull_native);
      (*(v65 + 8))(v66, v4);
      *(v64 + v67) = v86;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF3D2090()
{
  v2 = v0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v65[0] = sub_1AF439808(MEMORY[0x1E69E7CC0]);
  *(&v65[0] + 1) = v4;
  sub_1AF413434(sub_1AF448110, v0, 1, 0x1000000000000000, 0, v3, v65);
  if (v1)
  {
  }

  else
  {
    v60 = sub_1AF429194(*&v65[0], *(&v65[0] + 1), sub_1AF42AEBC);

    v6 = *(v0 + 128);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      v77 = *(v0 + 128);

      for (i = 0; i != v7; ++i)
      {
        v10 = v8 + 16 * i;
        v11 = *(v10 + 8);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *v10;

          v14 = 32;
          do
          {
            v15 = *(v2 + 120);
            if (*(v15 + 16))
            {
              v16 = sub_1AF41A9B4(*(v11 + v14));
              if (v17)
              {
                v18 = *(v15 + 56) + 16 * v16;
                v19 = *v18;
                RGPassReadsFrom(v13, *(v18 + 8));
                RGPassDependsOn(v13, v19);
              }
            }

            v14 += 8;
            --v12;
          }

          while (v12);
        }
      }
    }

    v20 = *(*(v2 + 112) + 16);
    v61 = *(v2 + 112);

    if (v20)
    {
      v21 = 0;
      v22 = v61 + 32;
      while (1)
      {
        v23 = (v22 + 40 * v21);
        v24 = *v23;
        v25 = v23[2];
        v59 = v23[3];
        v26 = v23[4];
        v27 = *(v2 + 104);
        if (!*(v27 + 16))
        {
          break;
        }

        v28 = v23[1];
        sub_1AFDFF288();
        v77 = v26;

        v29 = v24;

        sub_1AFDFD038();
        v30 = sub_1AFDFF2F8();
        v31 = -1 << *(v27 + 32);
        v32 = v30 & ~v31;
        if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
LABEL_26:

          v24 = v29;
          v26 = v77;
          goto LABEL_27;
        }

        ++v21;
        v33 = ~v31;
        while (1)
        {
          v34 = (*(v27 + 48) + 16 * v32);
          v35 = *v34 == v28 && v34[1] == v25;
          if (v35 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v22 = v61 + 32;
        if (v21 == v20)
        {
          goto LABEL_29;
        }
      }

LABEL_27:

      if (v26)
      {
        *&v65[0] = 0;
        *(&v65[0] + 1) = 0xE000000000000000;

        sub_1AFDFE218();

        *&v65[0] = 0xD000000000000017;
        *(&v65[0] + 1) = 0x80000001AFF27AA0;
        MEMORY[0x1B2718AE0](v59, v26);

        MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF27AC0);
        sub_1AF3C5A5C(v24, 0, 1, *&v65[0], *(&v65[0] + 1));

        swift_willThrow();
      }

      else
      {
        sub_1AF3C5A5C(v24, 0, 1, 0xD000000000000028, 0x80000001AFF27A70);
        swift_willThrow();
      }
    }

    else
    {
LABEL_29:

      if (*(v2 + 88) == 1)
      {
        v36 = *(v60 + 2);
        if (v36)
        {
          v37 = v36 - 1;
          for (j = v60 + 40; ; j += 144)
          {
            v65[0] = *(j - 8);
            v39 = *(j + 8);
            v40 = *(j + 24);
            v41 = *(j + 56);
            v65[3] = *(j + 40);
            v65[4] = v41;
            v65[1] = v39;
            v65[2] = v40;
            v42 = *(j + 72);
            v43 = *(j + 88);
            v44 = *(j + 104);
            *(v66 + 9) = *(j + 113);
            v65[6] = v43;
            v66[0] = v44;
            v65[5] = v42;
            v45 = *&v65[0];
            v67 = *j;
            v46 = *(j + 4);
            v48 = *(j + 1);
            v47 = *(j + 2);
            v70 = *(j + 3);
            v71 = v46;
            v68 = v48;
            v69 = v47;
            v50 = *(j + 6);
            v49 = *(j + 7);
            v51 = *(j + 5);
            v75 = j[128];
            v73 = v50;
            v74 = v49;
            v72 = v51;
            if (sub_1AF44812C(&v67) != 1)
            {
              v63[6] = v73;
              v63[7] = v74;
              v64 = v75;
              v63[2] = v69;
              v63[3] = v70;
              v63[4] = v71;
              v63[5] = v72;
              v63[0] = v67;
              v63[1] = v68;
              if (sub_1AF448140(v63) == 1)
              {
                nullsub_106();
              }

              else
              {
                nullsub_106();
                v53 = v52[5];
                v76[4] = v52[4];
                v76[5] = v53;
                v54 = v52[7];
                v76[6] = v52[6];
                v76[7] = v54;
                v55 = v52[1];
                v76[0] = *v52;
                v76[1] = v55;
                v56 = v52[3];
                v76[2] = v52[2];
                v76[3] = v56;
                sub_1AF4495B8(v65, v62, sub_1AF448148);
                sub_1AF3D17D4(v45, v76);
                sub_1AF44943C(v65, sub_1AF448148);
              }
            }

            if (!v37)
            {
              break;
            }

            --v37;
          }
        }
      }

      else
      {

        v57 = *(v2 + 24);
        v58 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;

        *(v57 + v58) = MEMORY[0x1E69E7CC8];
      }
    }
  }

  return result;
}

void sub_1AF3D268C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[3];
  sub_1AF432C94(v4);
  if (!v2)
  {
    v79 = v70;
    v80 = v71;
    v81 = v72;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v73 = v64;
    v74 = v65;
    if (sub_1AF44812C(&v73) == 1)
    {
      goto LABEL_42;
    }

    v82[6] = v79;
    v82[7] = v80;
    v83 = v81;
    v82[2] = v75;
    v82[3] = v76;
    v82[4] = v77;
    v82[5] = v78;
    v82[0] = v73;
    v82[1] = v74;
    if (sub_1AF448140(v82) == 1)
    {
      nullsub_106();
      goto LABEL_42;
    }

    nullsub_106();
    v7 = *(v4 + 16);
    v27 = *(v7 + 16);
    if (v27)
    {
      v23 = v4;
      v24 = a2;
      v34 = *(v6 + 16);
      v35 = *v6;
      v40 = *(v6 + 24);
      v41 = *(v6 + 8);
      v33 = *(v6 + 32);
      v38 = *(v6 + 56);
      v39 = *(v6 + 40);
      v31 = *(v6 + 64);
      v32 = *(v6 + 48);
      v37 = *(v6 + 72);
      v36 = *(v6 + 88);
      v8 = *(v6 + 104);
      v29 = *(v6 + 96);
      v30 = *(v6 + 80);
      v26 = v7 + 32;
      v9 = *(v6 + 120);
      v28 = *(v6 + 112);

      v10 = 0;
      v25 = v5;
      while (1)
      {
        *&v43[0] = *(v26 + 16 * v10);

        v5(&v45, v43);

        v61 = v52;
        v62 = v53;
        v63 = v54;
        v57 = v48;
        v58 = v49;
        v59 = v50;
        v60 = v51;
        v55 = v46;
        v56 = v47;
        if (sub_1AF44812C(&v55) != 1)
        {
          v43[6] = v61;
          v43[7] = v62;
          v44 = v63;
          v43[2] = v57;
          v43[3] = v58;
          v43[4] = v59;
          v43[5] = v60;
          v43[0] = v55;
          v43[1] = v56;
          if (sub_1AF448140(v43) != 1)
          {
            nullsub_106();
            v12 = v11;
            for (i = 0; i != 8; ++i)
            {
              v14 = v12[5];
              v42[4] = v12[4];
              v42[5] = v14;
              v15 = v12[7];
              v42[6] = v12[6];
              v42[7] = v15;
              v16 = v12[1];
              v42[0] = *v12;
              v42[1] = v16;
              v17 = v12[3];
              v42[2] = v12[2];
              v42[3] = v17;
              v18 = *&v42[i];
              if (!RGResourceIsNull(*(&v42[i] + 1)) && !RGPassIsNull(v18))
              {
                if (!RGResourceIsNull(v41) && !RGPassIsNull(v35))
                {
                  RGPassDependsOn(v35, v18);
                }

                if (!RGResourceIsNull(v40) && !RGPassIsNull(v34))
                {
                  RGPassDependsOn(v34, v18);
                }

                if (!RGResourceIsNull(v39) && !RGPassIsNull(v33))
                {
                  RGPassDependsOn(v33, v18);
                }

                if (!RGResourceIsNull(v38) && !RGPassIsNull(v32))
                {
                  RGPassDependsOn(v32, v18);
                }

                if (!RGResourceIsNull(v37) && !RGPassIsNull(v31))
                {
                  RGPassDependsOn(v31, v18);
                }

                if (!RGResourceIsNull(v36) && !RGPassIsNull(v30))
                {
                  RGPassDependsOn(v30, v18);
                }

                if (!RGResourceIsNull(v8) && !RGPassIsNull(v29))
                {
                  RGPassDependsOn(v29, v18);
                }

                if (!RGResourceIsNull(v9) && !RGPassIsNull(v28))
                {
                  RGPassDependsOn(v28, v18);
                }
              }
            }

            v5 = v25;
            goto LABEL_9;
          }

          nullsub_106();
        }

LABEL_9:
        if (++v10 == v27)
        {

          v4 = v23;
          a2 = v24;
          break;
        }
      }
    }

LABEL_42:
    v19 = v68;
    *(a2 + 88) = v69;
    v20 = v71;
    *(a2 + 104) = v70;
    *(a2 + 120) = v20;
    v21 = v64;
    *(a2 + 24) = v65;
    v22 = v67;
    *(a2 + 40) = v66;
    *(a2 + 56) = v22;
    *(a2 + 72) = v19;
    *a2 = v4;
    *(a2 + 136) = v72;
    *(a2 + 8) = v21;
  }
}

uint64_t sub_1AF3D2AF0()
{

  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1AF3D2B70()
{
  sub_1AF3D2AF0();

  return swift_deallocClassInstance();
}

void sub_1AF3D2BB8(uint64_t a1, void *a2, void (*a3)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v6 = a2;
  a3(a1, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1AF3D2C28(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(a2, a2);
  sub_1AF130C80(a2, v4, v5);
  v7 = sub_1AF1CF878(v3, v6);

  v8 = *&v7[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  swift_unknownObjectRelease();
  v9 = MEMORY[0x1E69E7CC0];
  v49 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
  v50 = v10;
  sub_1AF41388C(sub_1AF42BA40, v8, 1, 0x1000000000000000uLL, 0, v9, &v49);
  v11 = sub_1AF429950(v49, v50, sub_1AF42AF58);

  v12 = v11[2];
  if (v12)
  {
    v13 = v11 + 5;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((*v13 & 1) == 0)
      {
        v15 = *(v13 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1AF4217DC(0, *(v14 + 2) + 1, 1, v14);
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_1AF4217DC(v16 > 1, v17 + 1, 1, v14);
        }

        *(v14 + 2) = v17 + 1;
        *&v14[8 * v17 + 32] = v15;
      }

      v13 += 12;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v14 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v21 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    do
    {
      v24 = &v14[8 * v19 + 32];
      v26 = *v24;
      v25 = *(v24 + 1);
      v27 = v26 == -1 && v25 == 0;
      if (!v27 && (v26 & 0x80000000) == 0 && v20[1] > v26)
      {
        v28 = (*v20 + 12 * v26);
        if (v25 == -1 || v28[2] == v25)
        {
          v30 = *(v28 + 2);
          v31 = *(*(v8 + 144) + 8 * *v28 + 32);
          v32 = *(v31 + 48);
          v33 = (v32 + 32);
          v34 = *(v32 + 16) + 1;
          while (--v34)
          {
            v35 = v33 + 5;
            v36 = *v33;
            v33 += 5;
            if (v36 == &type metadata for TextureLoadPolicy)
            {
              if (*(&(*(v35 - 2))->Kind + 4 * v30 + *(v31 + 128) + 1) == 1 && *(v31 + 232) <= v30 && *(v31 + 240) > v30)
              {
                v46 = v8;
                v47 = v21;
                v45 = *(v8 + v21);
                v38 = *v45;
                v39 = *(v31 + 344);

                os_unfair_lock_lock(v39);
                v48 = v38;
                ecs_stack_allocator_push_snapshot(*(v38 + 32));
                v40 = *(*(v31 + 40) + 16);
                v41 = *(v40 + 128);
                if (!*(v41 + 16) || (v42 = sub_1AF0D3F10(&type metadata for TextureLoadRequestGPU), (v43 & 1) == 0) || *(*(v40 + 24) + 16 * *(*(v41 + 56) + 8 * v42) + 32) != &type metadata for TextureLoadRequestGPU)
                {
                  v22 = *(v48 + 32);

                  v23 = ecs_stack_allocator_allocate(v22, 8, 8);
                  *v23 = v30;
                  sub_1AF648EC4(&type metadata for TextureLoadRequestGPU, &off_1F2544788, v23, 1, 1, *v45);
                }

                ecs_stack_allocator_pop_snapshot(*(v48 + 32));
                os_unfair_lock_unlock(*(v31 + 344));

                v8 = v46;
                v21 = v47;
              }

              break;
            }
          }
        }
      }

      ++v19;
    }

    while (v19 != v18);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1AF3D3038@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (**(result + 8) == _TtC3VFX22RenderGraphTextureNode)
  {

    v3 = 1;
    v4 = sub_1AF9A178C(1, 0);
    v6 = v5;

    if (v6)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1AF65A128(v7);
    if (result)
    {

      v8 = sub_1AF9A178C(1, 0);
      v10 = v9;

      v3 = 0;
      v11 = 0xFFFFFFFFLL;
      if ((v10 & 1) == 0)
      {
        v11 = v8;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v3 = 1;
  }

  *a2 = v11;
  *(a2 + 8) = v3;
  return result;
}

void sub_1AF3D3154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = a7;
  sub_1AF3D3224(a1, a2, a3, a4, v14, a6, v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_1AF3D3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v35 = a1;
  sub_1AF0D4E74(0);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v33 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v32);
  v31[7] = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RGGraphTranslator();
  inited = swift_initStackObject();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC8];
  *(inited + 104) = MEMORY[0x1E69E7CD0];
  *(inited + 112) = v17;
  *(inited + 120) = v18;
  *(inited + 128) = v17;
  *(inited + 136) = v17;
  *(inited + 16) = a3;
  *(inited + 24) = a4;
  swift_unknownObjectUnownedInit();
  *(inited + 40) = a6;
  *(inited + 72) = v35;
  *(inited + 80) = a2;
  v39 = sub_1AF439D90(v17);
  v37[2] = 0x1000000000000000;
  v37[3] = &v39;
  v36[2] = sub_1AF439E84;
  v36[3] = v37;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v38[0] = sub_1AF42B0F4(v17);
  v38[1] = v19;
  sub_1AF412D4C(sub_1AF439EA4, v36, 1, 0x1000000000000000uLL, 0, v17, v38);

  v20 = sub_1AF3D9B48(v39);

  *(inited + 96) = v20;
  v22 = sub_1AF12DDCC(a5, v21);
  v25 = sub_1AF130C80(a5, v23, v24);
  v27 = sub_1AF1CF878(v22, v26);

  v28 = *&v27[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  swift_unknownObjectRelease();
  *(inited + 48) = v28;
  *(inited + 56) = v25;
  *(inited + 64) = 4;
  *(inited + 88) = (sub_1AF12EE78(a5) >> 8) & 1;
  sub_1AF3D2090();

  sub_1AF3C4160(v29, &qword_1ED72F7F0, &off_1E7A77B60);

  v30 = sub_1AFDFD3F8();

  [a7 addObjectsFromArray_];
  swift_setDeallocating();
  sub_1AF3D2AF0();
  swift_deallocClassInstance();
}

uint64_t sub_1AF3D37F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a2;
  sub_1AF449890(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = sub_1AFDFE488();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v41 = &v37 - v14;
  v15 = *(a3 + 86);
  v50 = *(a3 + 87);
  v51 = v15;
  *(a3 + 86) = 0;
  v49 = thread_serialization_context;
  v16 = thread_serialization_context(v13);
  v17 = *v16;
  v47 = a3;
  v48 = v17;
  *v16 = a3;
  v42 = type metadata accessor for SerializationContext();
  swift_allocObject();
  LOBYTE(v52) = 1;
  v18 = sub_1AF69D428(0, 0, 1, 0x100000000);
  *(v18 + 80) = 16843008;
  if (qword_1ED727D50 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED73B620;
  v40 = type metadata accessor for BinaryDecoder();
  v20 = swift_allocObject();

  *(v20 + 48) = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
  *(v20 + 16) = v19;
  *(v20 + 24) = 0;
  *(v20 + 32) = sub_1AF69B6E0;
  *(v20 + 40) = 0;
  v39 = "count buffer bytesPerIndex ";
  sub_1AFDFE478();
  v38 = *(v10 + 48);
  v38(v8, 1, v9);
  v21 = *(v10 + 32);
  v22 = v41;
  v21(v41, v8, v9);
  v23 = v42;
  v53 = v42;
  v52 = v18;

  sub_1AF8247D4(&v52, v22);
  v55 = v40;
  v56 = &off_1F2533B98;

  v54[0] = v20;
  v24 = v44;
  sub_1AFDFE478();
  v38(v24, 1, v9);
  v25 = v43;
  v21(v43, v24, v9);
  v53 = v23;
  v26 = v47;
  v52 = v47;
  v27 = v55;
  v28 = v56;
  sub_1AF448018(v54, v55);
  v29 = v28[1];

  v29(v25, &v52, v27, v28);
  (*(v10 + 8))(v25, v9);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
  v30 = v55;
  v31 = v56;
  sub_1AF441150(v54, v55);
  v32 = v31[3];
  v33 = sub_1AF4480BC();
  v32(&v57, &type metadata for AuthoringGraphCoder, v45, v46, &type metadata for AuthoringGraphCoder, v33, v30, v31);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
  v34 = (v49)(&thread_serialization_context);
  *v34 = v48;
  v35 = v51;
  *(v26 + 87) = v50;
  *(v26 + 86) = v35;
  return v57;
}

uint64_t sub_1AF3D3DC4(uint64_t a1, uint64_t a2)
{
  sub_1AF449890(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_1AFDFE488();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a1;
  v22 = *(a2 + 86);
  v11 = *(a2 + 87);
  *(a2 + 86) = 0;
  sub_1AF69493C(2u, 0, 1, v24);
  sub_1AFDFE478();
  (*(v8 + 48))(v6, 1, v7);
  (*(v8 + 32))(v10, v6, v7);
  v23[3] = type metadata accessor for SerializationContext();
  v23[0] = a2;
  v12 = v25;
  v13 = v26;
  sub_1AF448018(v24, v25);
  v14 = *(v13 + 8);

  v14(v10, v23, v12, v13);
  (*(v8 + 8))(v10, v7);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v23);
  v15 = v25;
  v16 = v26;
  sub_1AF441150(v24, v25);
  v17 = *(v16 + 24);
  v18 = sub_1AF448068();
  v19 = v17(&v27, &type metadata for AuthoringGraphCoder, v18, v15, v16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  *(a2 + 87) = v11;
  *(a2 + 86) = v22;
  return v19;
}

id sub_1AF3D4120(void *a1, uint64_t a2)
{
  v3 = a1;
  swift_unknownObjectRetain();
  v4 = sub_1AFDFC1B8();
  v6 = v5;

  v7 = sub_1AF3D37F8(v4, v6, a2);
  swift_unknownObjectRelease();
  sub_1AF439ED8(v4, v6);

  return v7;
}

id sub_1AF3D41AC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v4 = sub_1AF3D3DC4(a1, a2);
  v6 = v5;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = sub_1AFDFC1A8();
  sub_1AF439ED8(v4, v6);

  return v7;
}

id sub_1AF3D4238(uint64_t a1, uint64_t a2)
{
  v2 = swift_unknownObjectRetain();
  sub_1AF3D429C(v2);
  swift_unknownObjectRelease();
  v3 = sub_1AFDFD3F8();

  return v3;
}

char *sub_1AF3D429C(uint64_t a1)
{
  type metadata accessor for Graph();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v1 = MEMORY[0x1E69E7CC0];
    v2 = sub_1AF3FBEE4(sub_1AF3D4444, 0, 0, 0x1000000000000000, 0, MEMORY[0x1E69E7CC0]);
    v4 = sub_1AF429C28(v2, v3, sub_1AF42AFCC);

    v5 = 0;
    v6 = *(v4 + 2) + 1;
LABEL_3:
    v7 = &v4[v5 + 2] + 1;
    while (v6 != ++v5)
    {
      v8 = v7 + 2;
      v9 = *v7;
      v7 += 2;
      if (v9)
      {
        v10 = *(v8 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1AF420554(0, *(v1 + 2) + 1, 1, v1);
        }

        v12 = *(v1 + 2);
        v11 = *(v1 + 3);
        if (v12 >= v11 >> 1)
        {
          v1 = sub_1AF420554(v11 > 1, v12 + 1, 1, v1);
        }

        *(v1 + 2) = v12 + 1;
        v13 = &v1[16 * v12];
        *(v13 + 4) = v10;
        *(v13 + 5) = v9;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1AF3D4444@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = **(result + 8);
  if (v3 == _TtC3VFX11PresentNode)
  {
    result = sub_1AF9A2EE0();
    *a2 = result;
    a2[1] = v4;
  }

  else if (v3 == _TtC3VFX18PublishTextureNode)
  {

    sub_1AF9A178C(1, 0);
    if (v5)
    {

      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = sub_1AF9A9F5C();
      v7 = v8;
    }

    *a2 = v6;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_1AF3D4518()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF3D45C4(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D472C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D486C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D49A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4ADC(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4C3C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4DA8(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D4F08(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D506C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D51B4(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D5324(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF3D547C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5584(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5690(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D57B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D58E8(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5A0C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5B34(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5C54(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5D88(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5EA4(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D5FF8(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D60F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D623C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6378(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D64F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D664C(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6748(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6874(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D69E0(uint64_t a1, unsigned __int8 a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF3D6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D04(0, v6, 0);
  v7 = v23;
  v10 = (a1 + 40);
  while (1)
  {
    v11 = *v10;

    v13 = a4(v12, v11, a2, a3);
    if (v5)
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    v5 = 0;

    v18 = *(v23 + 16);
    v17 = *(v23 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1AFC05D04(v17 > 1, v18 + 1, 1);
    }

    v10 += 2;
    *(v23 + 16) = v18 + 1;
    v19 = v23 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF3D6C48(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D98(0, v2, 0);
    v3 = v34;
    v5 = (a1 + 32);
    v27 = &v33 + 1;
    do
    {
      v6 = *v5;
      v31 = *v5;
      if (v31)
      {
        v7 = *(v31 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
        if (*v7 == _TtC3VFX16_PlaceholderNode)
        {
          v8 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v9 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v28 = v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v10 = sub_1AF441150((v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v8);
          v30 = &v25;
          v11 = *(v8 - 8);
          v12 = MEMORY[0x1EEE9AC00](v10);
          v14 = &v25 - v13;
          (*(v11 + 16))(&v25 - v13, v12);
          v29 = *(v9 + 24);
          swift_retain_n();

          v15 = v29(v8, v9);
          (*(v11 + 8))(v14, v8);
          v16 = *v26;
          if (*(*v26 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v19 = *(*(v16 + 56) + 8 * v17);

            v32[0] = v19;
            sub_1AF44479C(0);
          }

          else
          {

            sub_1AF441194(v28, v32);

            sub_1AF4498F4(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol, 1);
          }

          type metadata accessor for AuthoringNode(0);
          swift_dynamicCast();
          *(&v33 + 1) = *(&v31 + 1);
        }

        else
        {
          v33 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v33 = 0;
        *v27 = *(&v6 + 1);
      }

      v20 = v33;

      v34 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05D98(v21 > 1, v22 + 1, 1);
        v3 = v34;
      }

      *(v3 + 16) = v22 + 1;
      v23 = v3 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = *(&v31 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D6FA0(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D98(0, v2, 0);
    v3 = v34;
    v5 = (a1 + 32);
    v27 = &v33 + 1;
    do
    {
      v6 = *v5;
      v31 = *v5;
      if (v31)
      {
        v7 = *(v31 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
        if (*v7 == _TtC3VFX16_PlaceholderNode)
        {
          v8 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v9 = *(v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v28 = v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v10 = sub_1AF441150((v7 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v8);
          v30 = &v25;
          v11 = *(v8 - 8);
          v12 = MEMORY[0x1EEE9AC00](v10);
          v14 = &v25 - v13;
          (*(v11 + 16))(&v25 - v13, v12);
          v29 = *(v9 + 24);

          v15 = v29(v8, v9);
          (*(v11 + 8))(v14, v8);
          v16 = *v26;
          if (*(*v26 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v19 = *(*(v16 + 56) + 8 * v17);

            v32[0] = v19;
            type metadata accessor for AuthoringNode(0);
          }

          else
          {
            sub_1AF441194(v28, v32);

            sub_1AF4498F4(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol, 1);
            type metadata accessor for AuthoringNode(0);
          }

          swift_dynamicCast();
          *(&v33 + 1) = *(&v31 + 1);
        }

        else
        {
          v33 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v33 = 0;
        *v27 = *(&v6 + 1);
      }

      v20 = v33;

      v34 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05D98(v21 > 1, v22 + 1, 1);
        v3 = v34;
      }

      *(v3 + 16) = v22 + 1;
      v23 = v3 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = *(&v31 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_1AF3D72E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v2, 0);
    v5 = v20;
    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *a2;
      if (*(*a2 + 16))
      {
        v10 = sub_1AF0D3F10(*(v6 - 1));
        if ((v11 & 1) != 0 && (*(*(v9 + 56) + v10) & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for _PlaceholderNode(0);
      v12 = swift_allocObject();
      v19[3] = type metadata accessor for Node(0);
      v19[4] = &off_1EE8015B0;
      v19[0] = v7;
      sub_1AF441194(v19, v12 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
      v12[3] = 0;
      v12[4] = 0;
      v13 = v3;
      v12[2] = v3;
      swift_retain_n();
      sub_1AFDFC308();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);

      v20 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v5 = v20;
      }

      v6 += 2;
      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v8;
      --v2;
      v3 = v13;
      if (!v2)
      {
        return v5;
      }
    }

    result = sub_1AF0D3F10(v7);
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1AF3D7490(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v28;
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *a2;
      if (*(*a2 + 16) && (v11 = sub_1AF0D3F10(*(v7 - 1)), (v12 & 1) != 0) && (*(*(v10 + 56) + v11) & 1) == 0)
      {
        v17 = *a3;
        v18 = xmmword_1AFE21110;
        if (*(*a3 + 16))
        {
          v19 = sub_1AF0D3F10(v9);
          v18 = xmmword_1AFE21110;
          if (v20)
          {
            v22 = *(*(v17 + 56) + 16 * v19);

            v18 = v22;
          }
        }

        v25 = v18;
        sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        type metadata accessor for Node(0);

        swift_dynamicCast();
        v13 = v24;
      }

      else
      {
        type metadata accessor for _PlaceholderNode(0);
        v13 = swift_allocObject();
        v26 = type metadata accessor for Node(0);
        v27 = &off_1EE8015B0;
        *&v25 = v9;
        sub_1AF441194(&v25, v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
        v13[4] = 0;
        v13[2] = MEMORY[0x1E69E7CC0];
        v13[3] = 0;
        swift_retain_n();
        sub_1AFDFC308();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v25);
      }

      v28 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v4 = v28;
      }

      v7 += 2;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3D76CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v23;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *a2;
      if (*(*a2 + 16) && (v11 = sub_1AF0D3F10(*(v7 - 1)), (v12 & 1) != 0) && (*(*(v10 + 56) + v11) & 1) == 0)
      {
        v17 = *a3;
        if (*(*a3 + 16) && (v18 = sub_1AF0D3F10(v8), (v19 & 1) != 0))
        {
          v13 = *(*(v17 + 56) + 8 * v18);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        type metadata accessor for _PlaceholderNode(0);
        v13 = swift_allocObject();
        v22[3] = type metadata accessor for Node(0);
        v22[4] = &off_1EE8015B0;
        v22[0] = v8;
        sub_1AF441194(v22, v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
        v13[4] = 0;
        v13[2] = MEMORY[0x1E69E7CC0];
        v13[3] = 0;
        swift_retain_n();
        sub_1AFDFC308();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
      }

      v23 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v4 = v23;
      }

      v7 += 2;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v9;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3D7890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v25;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *a2;
      if (*(*a2 + 16) && (v11 = sub_1AF0D3F10(*(v7 - 1)), (v12 & 1) != 0) && (*(*(v10 + 56) + v11) & 1) == 0)
      {
        v17 = *a3;
        v18 = *(*a3 + 16);
        if (v18)
        {
          v19 = sub_1AF0D3F10(v8);
          if (v20)
          {
            v18 = *(*(v17 + 56) + 8 * v19);
          }

          else
          {
            v18 = 0;
          }
        }

        v24[0] = v18;
        type metadata accessor for Node(0);

        swift_dynamicCast();
        v13 = v23;
      }

      else
      {
        type metadata accessor for _PlaceholderNode(0);
        v13 = swift_allocObject();
        v24[3] = type metadata accessor for Node(0);
        v24[4] = &off_1EE8015B0;
        v24[0] = v8;
        sub_1AF441194(v24, v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
        v13[4] = 0;
        v13[2] = MEMORY[0x1E69E7CC0];
        v13[3] = 0;
        swift_retain_n();
        sub_1AFDFC308();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
      }

      v25 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05E7C(v14 > 1, v15 + 1, 1);
        v4 = v25;
      }

      v7 += 2;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v9;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF3D7A84(uint64_t a1, uint64_t *a2)
{
  v28 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E2C(0, v2, 0);
    v3 = v35;
    v5 = (a1 + 32);
    v29 = &v34 + 1;
    do
    {
      v6 = *v5;
      v32 = *v5;
      if (v32)
      {
        if (*v32 == _TtC3VFX16_PlaceholderNode)
        {
          v7 = *(v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v8 = *(v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v30 = v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v9 = sub_1AF441150((v32 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v7);
          v31 = &v27;
          v10 = *(v7 - 8);
          v11 = MEMORY[0x1EEE9AC00](v9);
          v13 = &v27 - v12;
          (*(v10 + 16))(&v27 - v12, v11);
          v14 = *(v8 + 24);
          swift_retain_n();
          v15 = v14(v7, v8);
          (*(v10 + 8))(v13, v7);
          v16 = *v28;
          if (*(*v28 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v19 = (*(v16 + 56) + 16 * v17);
            v20 = *v19;
            v21 = v19[1];

            v33[0] = v20;
            v33[1] = v21;
            sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          }

          else
          {
            sub_1AF441194(v30, v33);

            sub_1AF4498F4(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol, 1);
          }

          type metadata accessor for Node(0);
          swift_dynamicCast();
          *(&v34 + 1) = *(&v32 + 1);
        }

        else
        {
          v34 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v34 = 0;
        *v29 = *(&v6 + 1);
      }

      v22 = v34;

      v35 = v3;
      v24 = *(v3 + 16);
      v23 = *(v3 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AFC05E2C(v23 > 1, v24 + 1, 1);
        v3 = v35;
      }

      *(v3 + 16) = v24 + 1;
      v25 = v3 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = *(&v32 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D7DC0(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E2C(0, v2, 0);
    v3 = v33;
    v5 = (a1 + 32);
    v27 = &v32 + 1;
    do
    {
      v6 = *v5;
      v30 = *v5;
      v7 = v30;
      if (v30)
      {
        if (*v30 == _TtC3VFX16_PlaceholderNode)
        {
          v8 = *(v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v9 = *(v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v28 = v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v10 = sub_1AF441150((v30 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v8);
          v29 = &v25;
          v11 = *(v8 - 8);
          v12 = MEMORY[0x1EEE9AC00](v10);
          v14 = &v25 - v13;
          (*(v11 + 16))(&v25 - v13, v12);
          v15 = *(v9 + 24);
          swift_retain_n();
          v16 = v15(v8, v9);
          (*(v11 + 8))(v14, v8);
          v17 = *v26;
          if (*(*v26 + 16) && (v18 = sub_1AF0D3F10(v16), (v19 & 1) != 0))
          {
            v20 = *(*(v17 + 56) + 8 * v18);

            *&v32 = v20;
            *(&v32 + 1) = *(&v30 + 1);
            v7 = v20;
          }

          else
          {
            sub_1AF441194(v28, v31);

            sub_1AF4498F4(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol, 1);
            type metadata accessor for Node(0);
            swift_dynamicCast();
            *(&v32 + 1) = *(&v30 + 1);
            v7 = v32;
          }
        }

        else
        {
          v32 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v32 = 0;
        *v27 = *(&v6 + 1);
      }

      v33 = v3;
      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05E2C(v21 > 1, v22 + 1, 1);
        v3 = v33;
      }

      *(v3 + 16) = v22 + 1;
      v23 = v3 + 16 * v22;
      *(v23 + 32) = v7;
      *(v23 + 40) = *(&v30 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D80E8(uint64_t a1, uint64_t *a2)
{
  v25 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E2C(0, v2, 0);
    v3 = v32;
    v5 = (a1 + 32);
    v26 = &v31 + 1;
    do
    {
      v6 = *v5;
      v29 = *v5;
      if (v29)
      {
        if (*v29 == _TtC3VFX16_PlaceholderNode)
        {
          v7 = *(v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
          v8 = *(v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
          v27 = v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
          v9 = sub_1AF441150((v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v7);
          v28 = &v24;
          v10 = *(v7 - 8);
          v11 = MEMORY[0x1EEE9AC00](v9);
          v13 = &v24 - v12;
          (*(v10 + 16))(&v24 - v12, v11);
          v14 = *(v8 + 24);

          v15 = v14(v7, v8);
          (*(v10 + 8))(v13, v7);
          v16 = *v25;
          if (*(*v25 + 16) && (v17 = sub_1AF0D3F10(v15), (v18 & 1) != 0))
          {
            v30[0] = *(*(v16 + 56) + 8 * v17);
            type metadata accessor for Node(0);
          }

          else
          {
            sub_1AF441194(v27, v30);
            sub_1AF4498F4(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol, 1);
            type metadata accessor for Node(0);
          }

          swift_dynamicCast();
          *(&v31 + 1) = *(&v29 + 1);
        }

        else
        {
          v31 = v6;
          swift_retain_n();
        }
      }

      else
      {
        *&v31 = 0;
        *v26 = *(&v6 + 1);
      }

      v19 = v31;

      v32 = v3;
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC05E2C(v20 > 1, v21 + 1, 1);
        v3 = v32;
      }

      *(v3 + 16) = v21 + 1;
      v22 = v3 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = *(&v29 + 1);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF3D83F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E6158];
    do
    {
      if (*(a1 + 16) && (v10 = sub_1AF0D3F10(*v6), (v11 & 1) != 0))
      {
        v12 = (*(a1 + 56) + 16 * v10);
        v8 = *v12;
        v9 = v12[1];
      }

      else
      {
        v8 = 0;
        v9 = 1;
      }

      sub_1AF449B08(0, &qword_1ED726CC0, v7, MEMORY[0x1E69E6720]);
      type metadata accessor for Node(0);

      swift_dynamicCast();
      sub_1AF447EB0(v8, v9);
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      ++v6;
      --v3;
    }

    while (v3);
    return v13;
  }

  return result;
}

uint64_t sub_1AF3D8564(void *key)
{
  if (objc_getAssociatedObject(v1, key))
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
    sub_1AF0DB6BC(&v3, v4);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  _s13WeakReferenceCMa();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AF3D862C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AF0D3F10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    *&v14[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF845B40();
      v9 = *&v14[0];
    }

    memmove(a2, (*(v9 + 56) + 144 * v7), 0x89uLL);
    sub_1AF6B24F4(v7, v9);
    *v3 = v9;
    nullsub_106();
  }

  else
  {
    sub_1AF4481DC(v14);
    v11 = v15[0];
    a2[6] = v14[6];
    a2[7] = v11;
    *(a2 + 121) = *(v15 + 9);
    v12 = v14[3];
    a2[2] = v14[2];
    a2[3] = v12;
    v13 = v14[5];
    a2[4] = v14[4];
    a2[5] = v13;
    result = v14[1];
    *a2 = v14[0];
    a2[1] = result;
  }

  return result;
}

uint64_t sub_1AF3D86F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AF419940(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AF847128();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1AFDFC318();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1AF6B31F0(v5, v7);
  *v2 = v7;
  return v10;
}

double sub_1AF3D87D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AF0D3F10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF84CF84();
      v9 = v15;
    }

    v10 = *(v9 + 56) + 120 * v7;
    v11 = *(v10 + 80);
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(v10 + 96);
    *(a2 + 112) = *(v10 + 112);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    v13 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v13;
    sub_1AF6B4E24(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 1;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
  }

  return result;
}

void *sub_1AF3D88AC(uint64_t a1, void *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1AF4276E0(0, a2[2] + 1, 1, a2, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v10 = a2[2];
  v9 = a2[3];
  if (v10 >= v9 >> 1)
  {
    a2 = sub_1AF4276E0(v9 > 1, v10 + 1, 1, a2, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  a2[2] = v10 + 1;
  (*(v5 + 32))(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v8, v4);
  return a2;
}

uint64_t sub_1AF3D8A74(__int128 *a1, uint64_t a2)
{
  v5 = a1[5];
  v6 = a1[7];
  v55 = a1[6];
  v56[0] = v6;
  *(v56 + 9) = *(a1 + 121);
  v7 = a1[1];
  v8 = a1[3];
  v51 = a1[2];
  v52 = v8;
  v9 = a1[3];
  v10 = a1[5];
  v53 = a1[4];
  v54 = v10;
  v11 = a1[1];
  v49 = *a1;
  v50 = v11;
  v12 = a1[7];
  v47[6] = v55;
  v48[0] = v12;
  *(v48 + 9) = *(a1 + 121);
  v47[2] = v51;
  v47[3] = v9;
  v47[4] = v53;
  v47[5] = v5;
  v47[0] = v49;
  v47[1] = v7;
  if (sub_1AF448314(v47) == 1)
  {
    sub_1AF3D93EC(a2, v45);
    v13 = v45;
    return sub_1AF44832C(v13, &qword_1EB638CB0, sub_1AF448148);
  }

  *&v44[96] = v55;
  *&v44[112] = v56[0];
  *&v44[121] = *(v56 + 9);
  *&v44[32] = v51;
  *&v44[48] = v52;
  *&v44[64] = v53;
  *&v44[80] = v54;
  *v44 = v49;
  *&v44[16] = v50;
  sub_1AF4495B8(v44, &v28, sub_1AF448148);
  v18 = *v44;
  v19 = *&v44[8];
  v20 = *&v44[24];
  v21 = *&v44[40];
  v22 = *&v44[56];
  v23 = *&v44[72];
  v24 = *&v44[88];
  v25 = *&v44[104];
  v26 = *&v44[120];
  v27 = v44[136];
  sub_1AF633BB4(&v18, a2, &v36);
  v45[6] = v42;
  v46[0] = v43[0];
  *(v46 + 9) = *(v43 + 9);
  v45[2] = v38;
  v45[3] = v39;
  v45[4] = v40;
  v45[5] = v41;
  v45[0] = v36;
  v45[1] = v37;
  if (sub_1AF448314(v45) != 1)
  {
    sub_1AF44832C(a1, &qword_1EB638CB0, sub_1AF448148);
    v34 = v42;
    v35[0] = v43[0];
    *(v35 + 9) = *(v43 + 9);
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v28 = v36;
    v29 = v37;
    v13 = &v28;
    return sub_1AF44832C(v13, &qword_1EB638CB0, sub_1AF448148);
  }

  v34 = v42;
  v35[0] = v43[0];
  *(v35 + 9) = *(v43 + 9);
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v28 = v36;
  v29 = v37;
  sub_1AF44832C(&v28, &qword_1EB638CB0, sub_1AF448148);
  v14 = *(v2 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AF422330(0, *(v14 + 2) + 1, 1, v14, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1AF422330(v15 > 1, v16 + 1, 1, v14, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = sub_1AF44832C(a1, &qword_1EB638CB0, sub_1AF448148);
  *(v14 + 2) = v16 + 1;
  *&v14[8 * v16 + 32] = a2;
  *(v2 + 8) = v14;
  return result;
}

uint64_t sub_1AF3D8DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v5 = sub_1AF3D9548(a3);
LABEL_10:

    return sub_1AF447EB0(v5, v6);
  }

  v9 = sub_1AF633F0C(a1, a2, a3);
  if (v10 != 1)
  {
    v15 = v9;
    v16 = v10;
    sub_1AF447EB0(a1, a2);
    v5 = v15;
    v6 = v16;
    goto LABEL_10;
  }

  v11 = *(v3 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AF422330(0, *(v11 + 2) + 1, 1, v11, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AF422330(v12 > 1, v13 + 1, 1, v11, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = sub_1AF447EB0(a1, a2);
  *(v11 + 2) = v13 + 1;
  *&v11[8 * v13 + 32] = a3;
  *(v3 + 8) = v11;
  return result;
}

uint64_t sub_1AF3D8F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  if (!a1)
  {
    sub_1AF3D9620(a2, a4, a5);
    goto LABEL_5;
  }

  if (a3(v8, a2))
  {

LABEL_5:
  }

  v10 = *(v5 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AF422330(0, *(v10 + 2) + 1, 1, v10, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AF422330(v11 > 1, v12 + 1, 1, v10, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = a2;
  *(v5 + 8) = v10;
  return result;
}

uint64_t sub_1AF3D9030(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  if (a1 == 1)
  {
    v8 = sub_1AF3D96FC(a2, a5, a6);
LABEL_10:

    return a4(v8);
  }

  v12 = a3(v11, a2);
  if (v12 != 1)
  {
    v17 = v12;
    a4(a1);
    v8 = v17;
    goto LABEL_10;
  }

  v13 = *(v6 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AF422330(0, *(v13 + 2) + 1, 1, v13, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AF422330(v14 > 1, v15 + 1, 1, v13, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = a4(a1);
  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = a2;
  *(v6 + 8) = v13;
  return result;
}

uint64_t sub_1AF3D9194(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_1AF3D97D8(a2, v36);
    v4 = v36;
    return sub_1AF44943C(v4, sub_1AF443FDC);
  }

  v5 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v5;
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v6 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v6;
  v7 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v7;
  v37 = v35;
  v36[5] = v5;
  v36[6] = v34;
  v36[3] = v7;
  v36[4] = v32;
  v36[1] = v6;
  v36[2] = v30;
  v36[0] = v29[0];
  sub_1AF0D8094(v29, &v13, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
  sub_1AF634450(v36, a2, &v21);
  if (v21 != 1)
  {
    sub_1AF44943C(a1, sub_1AF443FDC);
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v13 = v21;
    v14 = v22;
    v20 = v28;
    v15 = v23;
    v16 = v24;
    v4 = &v13;
    return sub_1AF44943C(v4, sub_1AF443FDC);
  }

  v17 = v25;
  v18 = v26;
  v19 = v27;
  v13 = v21;
  v14 = v22;
  v20 = v28;
  v15 = v23;
  v16 = v24;
  sub_1AF44943C(&v13, sub_1AF443FDC);
  v9 = *(v2 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF422330(0, *(v9 + 2) + 1, 1, v9, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AF422330(v10 > 1, v11 + 1, 1, v9, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
  }

  result = sub_1AF44943C(a1, sub_1AF443FDC);
  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = a2;
  *(v2 + 8) = v9;
  return result;
}

void sub_1AF3D93EC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF3D862C(a1, &v19);
  v27[6] = v25;
  v28[0] = v26[0];
  *(v28 + 9) = *(v26 + 9);
  v27[2] = v21;
  v27[3] = v22;
  v27[4] = v23;
  v27[5] = v24;
  v27[0] = v19;
  v27[1] = v20;
  if (sub_1AF448314(v27) == 1)
  {
    v17[6] = v25;
    v18[0] = v26[0];
    *(v18 + 9) = *(v26 + 9);
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v17[5] = v24;
    v17[0] = v19;
    v17[1] = v20;
    sub_1AF44832C(v17, &qword_1EB638CB0, sub_1AF448148);
    v5 = v26[0];
    a2[6] = v25;
    a2[7] = v5;
    *(a2 + 121) = *(v26 + 9);
    v6 = v22;
    a2[2] = v21;
    a2[3] = v6;
    v7 = v24;
    a2[4] = v23;
    a2[5] = v7;
    v8 = v20;
    *a2 = v19;
    a2[1] = v8;
  }

  else
  {
    v9 = v22;
    a2[2] = v21;
    a2[3] = v9;
    *(a2 + 121) = *(v26 + 9);
    v10 = v26[0];
    a2[6] = v25;
    a2[7] = v10;
    v11 = v24;
    a2[4] = v23;
    a2[5] = v11;
    v12 = v20;
    *a2 = v19;
    a2[1] = v12;
    v13 = *(v2 + 8);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = v13 + 32;
      while (*(v16 + 8 * v15) != a1)
      {
        if (v14 == ++v15)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = 0;
    }

    sub_1AF620D10(v15);
    nullsub_106();
  }
}

uint64_t sub_1AF3D9548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AF0D3F10(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AF846294();
    v8 = v16;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 16 * v6);
  sub_1AF6B2920(v9, v8);
  *v2 = v8;
  v11 = v2[1];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 32;
    while (*(v14 + 8 * v13) != a1)
    {
      if (v12 == ++v13)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  sub_1AF620D10(v13);
  return v10;
}

uint64_t sub_1AF3D9620(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v8 = sub_1AF0D3F10(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v19 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v19;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a2(v10, v12);
  *v6 = v12;
  v14 = v6[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    while (*(v17 + 8 * v16) != a1)
    {
      if (v15 == ++v16)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  sub_1AF620D10(v16);
  return v13;
}

uint64_t sub_1AF3D96FC(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v8 = sub_1AF0D3F10(a1);
  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v19 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v19;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a2(v10, v12);
  *v6 = v12;
  v14 = v6[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    while (*(v17 + 8 * v16) != a1)
    {
      if (v15 == ++v16)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  sub_1AF620D10(v16);
  return v13;
}

uint64_t sub_1AF3D97D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF3D87D4(a1, v17);
  if (*v17 == 1)
  {
    v15[4] = *&v17[64];
    v15[5] = *&v17[80];
    v15[6] = *&v17[96];
    v15[0] = *v17;
    v15[1] = *&v17[16];
    v16 = *&v17[112];
    v15[2] = *&v17[32];
    v15[3] = *&v17[48];
    result = sub_1AF44943C(v15, sub_1AF443FDC);
    *a2 = 1;
    *(a2 + 56) = *&v17[56];
    *(a2 + 72) = *&v17[72];
    *(a2 + 88) = *&v17[88];
    *(a2 + 104) = *&v17[104];
    *(a2 + 8) = *&v17[8];
    *(a2 + 24) = *&v17[24];
    *(a2 + 40) = *&v17[40];
  }

  else
  {
    v6 = *&v17[80];
    v7 = *&v17[96];
    v8 = *&v17[48];
    *(a2 + 64) = *&v17[64];
    *(a2 + 80) = v6;
    *(a2 + 96) = v7;
    v9 = *&v17[16];
    v10 = *&v17[32];
    *a2 = *v17;
    *(a2 + 16) = v9;
    *(a2 + 112) = *&v17[112];
    *(a2 + 32) = v10;
    *(a2 + 48) = v8;
    v11 = *(v2 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      while (*(v14 + 8 * v13) != a1)
      {
        if (v12 == ++v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = 0;
    }

    return sub_1AF620D10(v13);
  }

  return result;
}

uint64_t sub_1AF3D9910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF449BDC(0, &unk_1EB630BB0, sub_1AF444318, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    sub_1AF44438C(0);
    sub_1AF444318(0);

    swift_dynamicCast();
    v12 = sub_1AFDFF278();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = (63 - v13) >> 6;
      do
      {
        if (v15 + 1 == v16)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        v17 = *(v7 + 8 * v15);
      }

      while (v17 == -1);
      v9 = __clz(__rbit64(~v17)) + (v15 << 6);
    }

    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v11;
    *(*(v2 + 56) + 8 * v9) = v19;
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

uint64_t sub_1AF3D9B48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF448C14(0, &qword_1EB638D28, &qword_1EB638D30, &unk_1EB638D38, sub_1AF448B40);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = MEMORY[0x1E69E62F8];
    sub_1AF448AC4(0, &unk_1EB638D40, &unk_1EB63F680, sub_1AF448BAC, MEMORY[0x1E69E62F8]);
    sub_1AF448AC4(0, &qword_1EB638D30, &unk_1EB638D38, sub_1AF448B40, v12);

    swift_dynamicCast();
    v13 = sub_1AFDFF278();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = (63 - v14) >> 6;
      do
      {
        if (v16 + 1 == v17)
        {
          v16 = 0;
        }

        else
        {
          ++v16;
        }

        v18 = *(v7 + 8 * v16);
      }

      while (v18 == -1);
      v9 = __clz(__rbit64(~v18)) + (v16 << 6);
    }

    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v11;
    *(*(v2 + 56) + 8 * v9) = v20;
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

uint64_t sub_1AF3D9DE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF43DB74(0);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v24;
    sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1AF0DB6BC((v25 + 8), v23);
    sub_1AF0DB6BC(v23, v25);
    sub_1AFDFCEF8();
    sub_1AFDFF288();
    sub_1AFDFD038();
    v16 = sub_1AFDFF2F8();

    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = (63 - v17) >> 6;
      do
      {
        if (v19 + 1 == v20)
        {
          v19 = 0;
        }

        else
        {
          ++v19;
        }

        v21 = *(v7 + 8 * v19);
      }

      while (v21 == -1);
      v9 = __clz(__rbit64(~v21)) + (v19 << 6);
    }

    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v9) = v14;
    sub_1AF0DB6BC(v25, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

uint64_t sub_1AF3DA05C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF4427B0();
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_1AF0D5A54(*(a1 + 56) + 32 * v12, v33 + 8);
    *&v33[0] = v13;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    *&v30[0] = v13;
    type metadata accessor for VFXHitTestOption(0);
    v14 = v13;
    swift_dynamicCast();
    sub_1AF0DB6BC((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1AF0DB6BC(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1AF0DB6BC(v29, v30);
    v15 = sub_1AFDFE158();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v19)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v20 = *(v7 + 8 * v18);
      }

      while (v20 == -1);
      v9 = __clz(__rbit64(~v20)) + (v18 << 6);
    }

    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_1AF0DB6BC(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v11;
      goto LABEL_14;
    }
  }

  return v2;
}

void *sub_1AF3DA2E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF449BDC(0, &unk_1EB6385B0, sub_1AF4436C4, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_9:
  while (1)
  {
    v11 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v7++ + 72);
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];
        sub_1AF4436C4();

        swift_dynamicCast();
        sub_1AF0DB6BC(&v20, v22);
        sub_1AF0DB6BC(v22, v23);
        sub_1AF0DB6BC(v23, &v21);
        v16 = sub_1AF41A54C(v15, v14, MEMORY[0x1E69E60C8], sub_1AF41B38C);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
          sub_1AF0DB6BC(&v21, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_9;
          }
        }

        else
        {
          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1AF0DB6BC(&v21, (v2[7] + 32 * v16));
          ++v2[2];
          v7 = v11;
          if (!v5)
          {
            goto LABEL_9;
          }
        }

LABEL_12:
        v11 = v7;
      }
    }
  }

  return v2;
}

BOOL sub_1AF3DA55C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6))
  {
    result = 0;
    if (*(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 14) == *(a2 + 14))
    {
      result = 0;
      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 22) == *(a2 + 22))
      {
        result = 0;
        if (*(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 30) == *(a2 + 30))
        {
          result = 0;
          if (*(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 38) == *(a2 + 38))
          {
            result = 0;
            if (*(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 46) == *(a2 + 46))
            {
              result = 0;
              if (*(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 54) == *(a2 + 54))
              {
                result = 0;
                if (*(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 62) == *(a2 + 62))
                {
                  result = 0;
                  if (*(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 70) == *(a2 + 70))
                  {
                    v4 = *(a1 + 72);
                    v5 = *(a1 + 76);
                    v6 = *(a1 + 78);
                    return v4 == *(a2 + 72) && v5 == *(a2 + 76) && v6 == *(a2 + 78);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AF3DA770(char a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF4410E4(a2, sub_1AF4410A8);
  v10 = sub_1AF3FB9C8(a4, a5, a1 & 1, a2, 1, MEMORY[0x1E69E7CC0]);
  if (v5)
  {
    return sub_1AF4410E4(a2, sub_1AF441114);
  }

  v13 = sub_1AF42A36C(v10, v11, sub_1AF42ADF4);

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[4] = 0;
  v14[5] = 0;
  v14[6] = sub_1AF42B820(MEMORY[0x1E69E7CC0], sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
  sub_1AFDFC308();
  sub_1AF4410E4(a2, sub_1AF441114);
  result = v14;
  v14[3] = v13;
  return result;
}

uint64_t sub_1AF3DA924(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = *(v4 + 56);
  v32 = v3;
  v12(&v30 - v10, 1, 1, v3, v9);
  type metadata accessor for AuthoringNode(0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v1;
  v14 = *(a1 + 16);
  *(swift_allocObject() + 16) = 0xC0000000000000D0;
  v33 = v1;

  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D04(0, v15, 0);
  v16 = 0;
  v17 = v35;
  do
  {
    v18 = 0uLL;
    if (v16 < v14)
    {
      v34 = *(a1 + 32 + 16 * v16);

      v18 = v34;
    }

    v35 = v17;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      v34 = v18;
      sub_1AFC05D04(v19 > 1, v20 + 1, 1);
      v18 = v34;
      v17 = v35;
    }

    ++v16;
    *(v17 + 16) = v20 + 1;
    *(v17 + 16 * v20 + 32) = v18;
  }

  while (v15 != v16);
  *(v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v17;
  v21 = v30;
  sub_1AF449A04(v11, v30, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
  v22 = *(v4 + 48);
  v23 = v32;
  if (v22(v21, 1, v32) == 1)
  {
    v24 = v31;
    sub_1AFDFC308();
    sub_1AF44832C(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    if (v22(v21, 1, v23) != 1)
    {
      sub_1AF44832C(v21, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    sub_1AF44832C(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v24 = v31;
    (*(v4 + 32))(v31, v21, v23);
  }

  (*(v4 + 32))(v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v24, v23);
  (*(v4 + 24))(v33 + OBJC_IVAR____TtC3VFX4Node_authoringID, v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v23);
  v25 = v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  v26 = v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *(v27 + 8) = 1;
  *v27 = 0;
  v28 = (v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v28 = 0;
  v28[1] = 0;
  return v13;
}

uint64_t sub_1AF3DADCC()
{
  type metadata accessor for ConstantNode(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_1AF0D5A54(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v3);
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1AF3DAE80(__objc2_class **a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, uint64_t *a10)
{
  v12 = v11;
  v102 = a6;
  v103 = a7;
  v104 = a4;
  LODWORD(v110) = a2;
  v100 = v10;
  v97 = *v10;
  v17 = sub_1AFDFC318();
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  v101 = a9;
  if (!*(*a9 + 16) || (result = sub_1AF0D3F10(a1), (v28 & 1) == 0))
  {
    if (!*(*a8 + 16) || (result = sub_1AF0D3F10(a1), (v29 & 1) == 0))
    {
      v96 = a10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = *a8;
      *a8 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a8 = v105;

      if (v110)
      {
        if (*a1 == _TtC3VFX21AuthoringSubGraphNode && (v31 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph), (v32 = swift_dynamicCastClass()) != 0))
        {
          v88 = v32;
          v99 = v11;
          v92 = a3;
          v33 = *(v98 + 16);
          v33(v26, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v17);
          v33(v23, v26, v17);

          v91 = v31;

          v34 = swift_isUniquelyReferenced_nonNull_native();
          v89 = a5;
          if ((v34 & 1) == 0)
          {
            a5 = sub_1AF4276E0(0, v89[2] + 1, 1, v89, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v36 = a5[2];
          v35 = a5[3];
          if (v36 >= v35 >> 1)
          {
            a5 = sub_1AF4276E0(v35 > 1, v36 + 1, 1, a5, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v37 = v98;
          (*(v98 + 8))(v26, v17);
          a5[2] = v36 + 1;
          (*(v37 + 32))(a5 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, v23, v17);
          *&v105 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v105 + 1) = v38;
          v39 = v102;
          v40 = v103;
          v41 = v92;
          v42 = v99;
          sub_1AF412AA8(v102, v103, 1, v92, v104 & 1, a5, &v105);
          v12 = v42;
          if (v42)
          {

LABEL_14:
          }

          a5 = v89;
          v57 = v40;
          a3 = v41;
          v56 = v39;
        }

        else
        {

          v56 = v102;
          v57 = v103;
        }

        v44 = v104;
        sub_1AF3E805C(1, a3, v104 & 1, a1, v100, a5, v56, v57, a8, v101, v96);
        if (v12)
        {
        }

        v43 = a5;
        type metadata accessor for Node(0);
        type metadata accessor for AuthoringNode(0);
        v58 = swift_dynamicCastMetatype();
        v93 = a8;
        v90 = v17;
        if (v58)
        {
          v59 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v61 = sub_1AF3D6B1C(v60, a8, v101, sub_1AF3FCC84);
          v99 = 0;

          *(a1 + v59) = v61;
          v44 = v104;
        }

        else
        {
          v99 = 0;
        }
      }

      else
      {
        v90 = v17;
        v93 = a8;
        v99 = v11;
        v43 = a5;

        v44 = v104;
      }

      v45 = v44 & 1;
      v46 = swift_allocObject();
      v47 = v102;
      v48 = v103;
      *(v46 + 16) = v102;
      *(v46 + 24) = v48;
      v49 = v100;

      sub_1AF4410E4(a3, sub_1AF4410A8);

      v50 = swift_allocObject();
      LODWORD(v91) = v110 & 1;
      *(v50 + 16) = v110 & 1;
      v92 = a3;
      *(v50 + 24) = a3;
      *(v50 + 32) = v45;
      v51 = v101;
      *(v50 + 40) = v101;
      *(v50 + 48) = v49;
      *(v50 + 56) = v43;
      *(v50 + 64) = v47;
      *(v50 + 72) = v48;
      v52 = v93;
      v53 = v96;
      *(v50 + 80) = v93;
      *(v50 + 88) = v53;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_1AF449D4C;
      *(v54 + 24) = v50;
      *&v105 = v49;
      *(&v105 + 1) = a1;
      v106 = v43;
      v107 = sub_1AF449D50;
      v108 = v54;
      v109 = v53;
      swift_bridgeObjectRetain_n();

      v55 = v99;
      sub_1AF449CCC(&v105);
      v99 = v55;
      if (v55)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();
      }

      v89 = v43;

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v62 = sub_1AF633A88(a1);
      v63 = v103;
      v64 = v51;
      v65 = v92;
      v66 = v99;
      v67 = v52;
      if (v62)
      {
        v68 = v64[1];
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v64[1] = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_1AF422330(0, *(v68 + 2) + 1, 1, v68, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v64[1] = v68;
        }

        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        if (v71 >= v70 >> 1)
        {
          v68 = sub_1AF422330(v70 > 1, v71 + 1, 1, v68, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        *(v68 + 2) = v71 + 1;
        *&v68[8 * v71 + 32] = a1;
        v64 = v101;
        v101[1] = v68;
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = *v52;
      *v52 = 0x8000000000000000;
      sub_1AF850FDC(0, a1, v72);
      *v52 = v105;

      if ((v110 & 1) == 0)
      {
        sub_1AF3E805C(v91, v65, v104 & 1, a1, v100, v89, v102, v63, v52, v64, v96);
        if (!v66)
        {
          if (*a1 == _TtC3VFX21AuthoringSubGraphNode && a1)
          {
            v73 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
            v74 = swift_dynamicCastClass();
            if (v74)
            {
              v100 = v74;
              v75 = *(v98 + 16);
              v110 = v73;
              v76 = v94;
              v77 = v90;
              v75(v94, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v90);
              v78 = v77;
              v75(v95, v76, v77);
              v79 = v89;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v79 = sub_1AF4276E0(0, v79[2] + 1, 1, v79, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
              }

              v81 = v79[2];
              v80 = v79[3];
              v82 = v79;
              if (v81 >= v80 >> 1)
              {
                v82 = sub_1AF4276E0(v80 > 1, v81 + 1, 1, v79, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
              }

              v83 = v98;
              (*(v98 + 8))(v94, v78);
              v82[2] = v81 + 1;
              (*(v83 + 32))(v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, v95, v78);
              *&v105 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
              *(&v105 + 1) = v84;
              sub_1AF412AA8(v102, v103, v91, v65, v104 & 1, v82, &v105);
            }

            v64 = v101;
          }

          type metadata accessor for Node(0);
          type metadata accessor for AuthoringNode(0);
          if (swift_dynamicCastMetatype())
          {
            v85 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

            v87 = sub_1AF3D6B1C(v86, v67, v64, sub_1AF3FCC84);

            *(a1 + v85) = v87;
            goto LABEL_14;
          }
        }
      }
    }
  }

  return result;
}

char *sub_1AF3DBA8C(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v133 = a3;
  v131 = a5;
  v132 = a6;
  v130 = v10;
  v16 = *v10;
  v17 = sub_1AFDFC318();
  v18 = *(v17 - 8);
  v124 = v17;
  v125 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v115[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v115[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v115[-v26];
  v129 = a9;
  v28 = *a9;
  if (*(*a9 + 16))
  {
    v29 = sub_1AF0D3F10(a1);
    if (v30)
    {
      v24 = *(*(v28 + 56) + 8 * v29);

      return v24;
    }
  }

  if (!*(*a8 + 16) || (sub_1AF0D3F10(a1), (v31 & 1) == 0))
  {
    v128 = a7;
    v120 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = *a8;
    *a8 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a8 = v135;

    if (a4)
    {
      v33 = (*(*a1 + 296))(1);
    }

    else
    {
    }

    v34 = a10;
    v126 = a2;
    v127 = v33;
    if (a2)
    {
      if (*v33 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v35 = v33;
        v36 = swift_dynamicCastClass();
        v37 = v134;
        if (v36)
        {
          v118 = v36;
          v119 = a1;
          v117 = a8;
          v38 = *(v125 + 16);
          v39 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v40 = v124;
          v38(v27, v39, v124);
          v38(v24, v27, v40);

          v41 = v131;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1AF4276E0(0, v131[2] + 1, 1, v131, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v43 = v41[2];
          v42 = v41[3];
          v123 = a10;
          if (v43 >= v42 >> 1)
          {
            v41 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v41, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v44 = v125;
          v45 = v27;
          v46 = v124;
          (*(v125 + 8))(v45, v124);
          v41[2] = v43 + 1;
          (*(v44 + 32))(v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v24, v46);
          v47 = v134;
          v48 = sub_1AF3FB9C8(v132, v128, 1, v133, a4 & 1, v41);
          v50 = v47;
          if (v47)
          {

            return v24;
          }

          v55 = v48;
          v56 = v49;

          v57 = *(v56 + 16);
          if (v57)
          {
            v134 = 0;
            *&v135 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v58 = 32;
            do
            {
              if (*(v55 + 16))
              {
                sub_1AF0D3F10(*(v56 + v58));
                if (v59)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v58 += 8;
              --v57;
            }

            while (v57);

            v50 = v134;
            v60 = v135;
          }

          else
          {

            v60 = MEMORY[0x1E69E7CC0];
          }

          v61 = swift_allocObject();
          v62 = MEMORY[0x1E69E7CC0];
          v61->cache = 0;
          v61->vtable = v62;
          v61->info = 0;
          v61[1].isa = 0;
          v63 = v127;

          v61[1].superclass = sub_1AF42B820(v62, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v61->vtable = v60;

          *(v63 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v61;

          a8 = v117;
          v24 = v129;
          v52 = v130;
          v53 = v131;
          v54 = v132;
          a1 = v119;
          v37 = v50;
          v34 = v123;
        }

        else
        {
          v24 = v129;
          v52 = v130;
          v53 = v131;
          v54 = v132;
        }
      }

      else
      {
        v24 = v129;
        v52 = v130;
        v53 = v131;
        v54 = v132;
        v37 = v134;
      }

      sub_1AF3EABD8(1, v133, a4 & 1, a1, v52, v53, v54, v128, a8, v24, v34);
      if (v37)
      {
LABEL_35:

        return v24;
      }

      v123 = v34;
      v119 = a1;
      v64 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
      v65 = v127;

      v51 = a8;
      v67 = sub_1AF3D6B1C(v66, a8, v24, sub_1AF3FD1BC);
      v134 = 0;

      *(v65 + v64) = v67;
    }

    else
    {
      v123 = a10;
      v119 = a1;
      v51 = a8;
    }

    v68 = a4 & 1;
    v69 = swift_allocObject();
    LODWORD(v118) = a4;
    v70 = v132;
    v71 = v128;
    *(v69 + 16) = v132;
    *(v69 + 24) = v71;
    v72 = v130;

    v73 = v133;
    sub_1AF4410E4(v133, sub_1AF4410A8);

    v74 = swift_allocObject();
    v75 = v73;
    v76 = v126 & 1;
    *(v74 + 16) = v126 & 1;
    *(v74 + 24) = v75;
    *(v74 + 32) = v68;
    v24 = v129;
    *(v74 + 40) = v129;
    *(v74 + 48) = v72;
    v77 = v71;
    v78 = v131;
    *(v74 + 56) = v131;
    *(v74 + 64) = v70;
    *(v74 + 72) = v77;
    *(v74 + 80) = v51;
    v79 = v123;
    *(v74 + 88) = v123;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_1AF449240;
    *(v80 + 24) = v74;
    *&v135 = v72;
    *(&v135 + 1) = v127;
    v136 = v78;
    v137 = sub_1AF44122C;
    v138 = v80;
    v139 = v79;
    swift_bridgeObjectRetain_n();

    v81 = v134;
    sub_1AF4411F8(&v135, &v140);
    if (v81)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return v24;
    }

    v116 = v76;

    v82 = v24;
    v24 = v140;
    v117 = v51;
    swift_isEscapingClosureAtFileLocation();

    v83 = v117;
    swift_isEscapingClosureAtFileLocation();

    v85 = v119;
    sub_1AF3D8F00(v84, v119, sub_1AF633A48, sub_1AF6B761C, sub_1AF843E0C);

    v86 = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = *v83;
    *v83 = 0x8000000000000000;
    sub_1AF850FDC(0, v85, v86);
    *v83 = v135;

    if ((v126 & 1) == 0)
    {
      v87 = v78;
      v88 = v118;
      v89 = v128;
      sub_1AF3EABD8(v116, v133, v118 & 1, v85, v130, v87, v132, v128, v83, v82, v123);
      v91 = *v24;
      v134 = 0;
      if (v91 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v92 = *(v24 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
        if (swift_dynamicCastClass())
        {
          v130 = v92;
          v93 = v124;
          v94 = *(v125 + 16);
          v95 = v121;
          v94(v121, v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v124);
          v94(v122, v95, v93);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_1AF4276E0(0, v131[2] + 1, 1, v131, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v97 = v131[2];
          v96 = v131[3];
          v98 = v125;
          if (v97 >= v96 >> 1)
          {
            v114 = sub_1AF4276E0(v96 > 1, v97 + 1, 1, v131, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            v98 = v125;
            v131 = v114;
          }

          (*(v98 + 8))(v121, v93);
          v99 = v131;
          v131[2] = v97 + 1;
          (*(v98 + 32))(v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v97, v122, v93);
          v100 = v134;
          v101 = sub_1AF3FB9C8(v132, v89, v116, v133, v88 & 1, v99);
          if (v100)
          {

            return v24;
          }

          v103 = v101;
          v104 = v102;
          v134 = 0;

          v105 = *(v104 + 16);
          v106 = MEMORY[0x1E69E7CC0];
          if (v105)
          {
            *&v135 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v107 = 32;
            do
            {
              if (*(v103 + 16))
              {
                sub_1AF0D3F10(*(v104 + v107));
                if (v108)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v107 += 8;
              --v105;
            }

            while (v105);

            v109 = v135;
          }

          else
          {

            v109 = MEMORY[0x1E69E7CC0];
          }

          v110 = swift_allocObject();
          v110[2] = 0;
          v110[3] = v106;
          v110[4] = 0;
          v110[5] = 0;

          v110[6] = sub_1AF42B820(v106, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v110[3] = v109;

          *(v24 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v110;
        }
      }

      v111 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v113 = sub_1AF3D6B1C(v112, v117, v129, sub_1AF3FD1BC);

      *(v24 + v111) = v113;

      return v24;
    }

    goto LABEL_35;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF3DC99C(char *a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, uint64_t a10)
{
  v12 = v10;
  v104 = a7;
  v105 = a6;
  v101 = a5;
  v103 = a4;
  LODWORD(v102) = a2;
  v16 = a9;
  v113 = *MEMORY[0x1E69E9840];
  v97 = *v10;
  v17 = sub_1AFDFC318();
  v99 = *(v17 - 8);
  v100 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v95 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = v89 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v89 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v89 - v25;
  if (!*(*a9 + 16) || (result = sub_1AF0D3F10(a1), (v28 & 1) == 0))
  {
    if (!*(*a8 + 16) || (result = sub_1AF0D3F10(a1), (v29 & 1) == 0))
    {
      v96 = a10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v108 = *a8;
      *a8 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a8 = v108;

      v93 = a9;
      if (v102)
      {
        if (*a1 == _TtC3VFX12SubGraphNode && (v31 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_graph]) != 0 && (v92 = swift_dynamicCastClass()) != 0)
        {
          v98 = a3;
          v89[1] = v31;
          v32 = *(v99 + 16);
          v33 = v100;
          v32(v26, &a1[OBJC_IVAR____TtC3VFX4Node_authoringID], v100);
          v32(v23, v26, v33);

          v34 = v101;

          v35 = swift_isUniquelyReferenced_nonNull_native();
          v36 = v34;
          if ((v35 & 1) == 0)
          {
            v36 = sub_1AF4276E0(0, v101[2] + 1, 1, v101, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v38 = v36[2];
          v37 = v36[3];
          if (v38 >= v37 >> 1)
          {
            v91 = sub_1AF4276E0(v37 > 1, v38 + 1, 1, v36, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          else
          {
            v91 = v36;
          }

          v39 = v99;
          v40 = v26;
          v41 = v100;
          (*(v99 + 8))(v40, v100);
          v42 = v91;
          v91[2] = v38 + 1;
          v43 = v39;
          v44 = v42;
          (*(v43 + 32))(v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, v23, v41);
          v45 = MEMORY[0x1E69E7CC0];
          *&v108 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v108 + 1) = v46;
          v47 = v92[2];
          v89[0] = v92 + 2;
          v48 = sub_1AF0D4098(v45, sub_1AF44034C, sub_1AF0D3F10);
          v106 = v45;
          v107 = v48;
          if (v47 >> 62)
          {
            v49 = sub_1AFDFE108();
          }

          else
          {
            v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v50 = v98;
          swift_bridgeObjectRetain_n();

          sub_1AF4410E4(v50, sub_1AF4410A8);

          v90 = v47;
          if (v49)
          {
            v51 = 0;
            v52 = v47 & 0xC000000000000001;
            while (1)
            {
              if (v52)
              {
                v53 = MEMORY[0x1B2719C70](v51, v47);
              }

              else
              {
                v53 = *(v47 + 8 * v51 + 32);
              }

              sub_1AF3DC99C(v53, 1, v98, v103 & 1, v44, v105, v104, &v107, &v108, &v106);
              if (v11)
              {
                break;
              }

              ++v51;
              v44 = v91;
              v47 = v90;
              if (v49 == v51)
              {
                goto LABEL_41;
              }
            }

            sub_1AF4410E4(v98, sub_1AF441114);

            goto LABEL_50;
          }

LABEL_41:
          v92 = a8;
          v83 = v12;

          a3 = v98;
          sub_1AF4410E4(v98, sub_1AF441114);

          if (v106 >> 62)
          {
            v84 = sub_1AFDFE108();
          }

          else
          {
            v84 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v93;
          v85 = v101;
          v56 = v104;
          v58 = v103;
          if (v84)
          {

            sub_1AF48F7F8(v86);
          }

          v70 = v85;
          v12 = v83;
          a8 = v92;
        }

        else
        {

          v70 = v101;
          v56 = v104;
          v58 = v103;
        }

        sub_1AF3EBFD4(1, a3, v58 & 1, a1, v12, v70, v105, v56, a8, v16, v96);
        if (v11)
        {
        }

        v92 = a8;
        v54 = v12;
        v55 = v70;
        type metadata accessor for Node(0);
        if (swift_dynamicCastMetatype())
        {

          v72 = sub_1AF3D72E8(v71, v92);
          v91 = 0;

          *(a1 + 2) = v72;
        }

        else
        {
          v91 = 0;
          type metadata accessor for AuthoringNode(0);
        }

        v57 = a1;
      }

      else
      {
        v92 = a8;
        v54 = v10;
        v91 = v11;

        v55 = v101;
        v56 = v104;
        v57 = a1;
        v58 = v103;
      }

      v59 = v58 & 1;
      v60 = swift_allocObject();
      v61 = v105;
      *(v60 + 16) = v105;
      *(v60 + 24) = v56;

      sub_1AF4410E4(a3, sub_1AF4410A8);

      v62 = swift_allocObject();
      v63 = a3;
      v64 = v62;
      v65 = v102 & 1;
      *(v62 + 16) = v65;
      v98 = v63;
      *(v62 + 24) = v63;
      *(v62 + 32) = v59;
      *(v62 + 40) = v93;
      *(v62 + 48) = v54;
      *(v62 + 56) = v55;
      *(v62 + 64) = v61;
      v66 = v92;
      *(v62 + 72) = v56;
      *(v62 + 80) = v66;
      v67 = v96;
      *(v62 + 88) = v96;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_1AF446E4C;
      *(v68 + 24) = v64;
      *&v108 = v54;
      *(&v108 + 1) = v57;
      v109 = v55;
      v110 = sub_1AF449D50;
      v111 = v68;
      v112 = v67;
      swift_bridgeObjectRetain_n();

      v69 = v91;
      sub_1AF449CCC(&v108);
      if (v69)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();
      }

      else
      {
        LODWORD(v91) = v65;

        v73 = v66;
        swift_isEscapingClosureAtFileLocation();

        v74 = v93;
        swift_isEscapingClosureAtFileLocation();

        v75 = sub_1AF633A88(v57);
        v76 = v104;
        v77 = v103;
        if (v75)
        {
          v78 = v74[1];
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v74[1] = v78;
          if ((v79 & 1) == 0)
          {
            v78 = sub_1AF422330(0, *(v78 + 2) + 1, 1, v78, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v74[1] = v78;
          }

          v81 = *(v78 + 2);
          v80 = *(v78 + 3);
          if (v81 >= v80 >> 1)
          {
            v78 = sub_1AF422330(v80 > 1, v81 + 1, 1, v78, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          *(v78 + 2) = v81 + 1;
          *&v78[8 * v81 + 32] = v57;
          v74 = v93;
          *(v93 + 8) = v78;
        }

        v82 = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = *v73;
        *v73 = 0x8000000000000000;
        sub_1AF850FDC(0, v57, v82);
        *v73 = v108;

        if ((v102 & 1) == 0)
        {
          sub_1AF3EBFD4(v91, v98, v77 & 1, v57, v54, v101, v105, v76, v73, v74, v96);
          type metadata accessor for Node(0);
          if (swift_dynamicCastMetatype())
          {

            v88 = sub_1AF3D72E8(v87, v73);

            *(v57 + 2) = v88;
LABEL_50:
          }

          type metadata accessor for AuthoringNode(0);
        }
      }
    }
  }

  return result;
}

char *sub_1AF3DDA58(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t *a9, uint64_t a10)
{
  v135 = a7;
  v138 = a6;
  v139 = a3;
  LODWORD(v141) = a2;
  v137 = v10;
  v129 = *v10;
  v130 = sub_1AFDFC318();
  v16 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v127 = &v121[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v121[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v121[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v121[-v24];
  v134 = a9;
  v26 = *a9;
  if (*(*a9 + 16))
  {
    v27 = sub_1AF0D3F10(a1);
    if (v28)
    {
      a8 = *(*(v26 + 56) + 8 * v27);

      return a8;
    }
  }

  v140 = a1;
  if (!*(*a8 + 16) || (sub_1AF0D3F10(v140), (v29 & 1) == 0))
  {
    v133 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v143 = *a8;
    *a8 = 0x8000000000000000;
    v31 = v140;
    sub_1AF850FDC(1, v140, isUniquelyReferenced_nonNull_native);
    *a8 = v143;

    sub_1AF44479C(0);
    v33 = v32;
    v34 = type metadata accessor for AuthoringNode(0);
    v149 = v31;
    v136 = v11;
    v131 = v34;
    v132 = v33;
    if ((a4 & 1) != 0 && v33 == v34)
    {
      v35 = *(*v31 + 296);

      v31 = v35(1);
      v149 = v31;
    }

    else
    {
    }

    v124 = v16;
    if (v141)
    {
      v36 = v136;
      if (*v31 == _TtC3VFX21AuthoringSubGraphNode && (v37 = *(v31 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph), (v38 = swift_dynamicCastClass()) != 0))
      {
        v125 = v38;
        v39 = *(v16 + 16);
        v40 = v31 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
        v41 = v130;
        v39(v25, v40, v130);
        v39(v22, v25, v41);

        v42 = v133;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1AF4276E0(0, v133[2] + 1, 1, v133, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v44 = v42[2];
        v43 = v42[3];
        v123 = v37;
        if (v44 >= v43 >> 1)
        {
          v42 = sub_1AF4276E0(v43 > 1, v44 + 1, 1, v42, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v45 = v124;
        v46 = v25;
        v47 = v130;
        (*(v124 + 8))(v46, v130);
        v42[2] = v44 + 1;
        (*(v45 + 32))(v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44, v22, v47);
        v49 = v135;
        v48 = v136;
        v50 = sub_1AF3FBC60(v138, v135, 1, v139, a4 & 1, v42);
        v36 = v48;
        if (v48)
        {

          goto LABEL_22;
        }

        v82 = v50;
        v125 = v51;

        if (v132 == v131)
        {
          v136 = 0;
          v98 = *(v125 + 16);
          if (v98)
          {
            *&v143 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v99 = 32;
            do
            {
              if (*(v82 + 16) && (sub_1AF0D3F10(*(v125 + v99)), (v101 & 1) != 0))
              {
              }

              else
              {
                v100 = 1;
              }

              v142 = v100;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v99 += 8;
              --v98;
            }

            while (v98);

            v102 = v143;
          }

          else
          {

            v102 = MEMORY[0x1E69E7CC0];
          }

          v68 = v134;
          v103 = v149;
          v104 = swift_allocObject();
          v105 = MEMORY[0x1E69E7CC0];
          v104->cache = 0;
          v104->vtable = v105;
          v104->info = 0;
          v104[1].isa = 0;

          v104[1].superclass = sub_1AF42B820(v105, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v104->vtable = v102;

          *(v103 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v104;

          v49 = v135;
          v36 = v136;
        }

        else
        {

          v68 = v134;
        }

        v67 = v133;
      }

      else
      {
        v67 = v133;
        v68 = v134;
        v49 = v135;
      }

      v69 = v138;
      sub_1AF3ED5A0(1, v139, a4 & 1, v140, v137, v67, v138, v49, a8, v68, a10);
      if (v36)
      {
        goto LABEL_25;
      }

      v125 = a10;
      v52 = v69;
      v136 = 0;
      type metadata accessor for Node(0);
      v77 = swift_dynamicCastMetatype();
      v31 = v149;
      v128 = a8;
      if (v77)
      {
        v78 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v80 = v136;
        v81 = sub_1AF3D6B1C(v79, a8, v68, sub_1AF3FD720);
        v136 = v80;

        *(v31 + v78) = v81;
      }
    }

    else
    {
      v125 = a10;
      v52 = v138;
      v128 = a8;
      v49 = v135;
    }

    LODWORD(v123) = a4;
    v53 = a4 & 1;
    v54 = swift_allocObject();
    v55 = v52;
    *(v54 + 16) = v52;
    *(v54 + 24) = v49;
    v56 = v49;
    v57 = v137;

    v58 = v139;
    sub_1AF4410E4(v139, sub_1AF4410A8);

    v59 = swift_allocObject();
    v122 = v141 & 1;
    *(v59 + 16) = v141 & 1;
    *(v59 + 24) = v58;
    *(v59 + 32) = v53;
    v60 = v133;
    v61 = v134;
    *(v59 + 40) = v134;
    *(v59 + 48) = v57;
    *(v59 + 56) = v60;
    *(v59 + 64) = v55;
    v62 = v128;
    *(v59 + 72) = v56;
    *(v59 + 80) = v62;
    v63 = v125;
    *(v59 + 88) = v125;
    v64 = v61;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1AF4447D0;
    *(v65 + 24) = v59;
    *&v143 = v57;
    *(&v143 + 1) = v31;
    v144 = v60;
    v145 = sub_1AF44122C;
    v146 = v65;
    v147 = v63;

    v66 = v136;
    sub_1AF4411F8(&v143, &v148);
    if (!v66)
    {

      a8 = v148;
      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v72 = v140;
      sub_1AF3D9030(v71, v140, sub_1AF633B74, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84466C);
      v73 = v64;
      if (v132 == v131)
      {
        *&v143 = a8;

        swift_dynamicCast();
      }

      v74 = v128;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v143 = *v74;
      *v74 = 0x8000000000000000;
      sub_1AF850FDC(0, v72, v75);
      *v74 = v143;

      v76 = v135;
      if (v141)
      {
        goto LABEL_25;
      }

      sub_1AF3ED5A0(v122, v139, v123 & 1, v72, v137, v133, v138, v135, v74, v64, v125);
      v83 = v149;
      if (*v149 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v84 = *(v149 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
        v85 = swift_dynamicCastClass();
        if (v85)
        {
          v140 = v85;
          v136 = 0;
          v86 = *(v124 + 16);
          v87 = v83 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v88 = v126;
          v89 = v130;
          v86(v126, v87, v130);
          v86(v127, v88, v89);

          v141 = v84;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1AF4276E0(0, v133[2] + 1, 1, v133, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v91 = v133[2];
          v90 = v133[3];
          if (v91 >= v90 >> 1)
          {
            v133 = sub_1AF4276E0(v90 > 1, v91 + 1, 1, v133, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v92 = v124;
          v93 = v130;
          (*(v124 + 8))(v126, v130);
          v94 = v133;
          v133[2] = v91 + 1;
          (*(v92 + 32))(v94 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v91, v127, v93);
          v95 = v136;
          v96 = sub_1AF3FBC60(v138, v76, v122, v139, v123 & 1, v94);
          if (v95)
          {

            goto LABEL_22;
          }

          v106 = v96;
          v107 = v97;

          if (v132 == v131)
          {
            v136 = 0;
            v108 = *(v107 + 16);
            if (v108)
            {
              v109 = MEMORY[0x1E69E7CC0];
              *&v143 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v110 = 32;
              do
              {
                if (*(v106 + 16) && (sub_1AF0D3F10(*(v107 + v110)), (v112 & 1) != 0))
                {
                }

                else
                {
                  v111 = 1;
                }

                v142 = v111;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v110 += 8;
                --v108;
              }

              while (v108);

              v113 = v143;
            }

            else
            {
              v109 = MEMORY[0x1E69E7CC0];

              v113 = MEMORY[0x1E69E7CC0];
            }

            v114 = v149;
            v115 = swift_allocObject();
            v115->cache = 0;
            v115->vtable = v109;
            v115->info = 0;
            v115[1].isa = 0;

            v115[1].superclass = sub_1AF42B820(v109, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v115->vtable = v113;

            *(v114 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v115;

            v73 = v134;
          }

          else
          {
          }

          v74 = v128;
        }
      }

      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v116 = v149;
        v117 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v119 = a8;
        v120 = sub_1AF3D6B1C(v118, v74, v73, sub_1AF3FD720);

        *(v116 + v117) = v120;
        a8 = v119;
      }

      goto LABEL_25;
    }

    a8 = "";
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
LABEL_22:

LABEL_25:

    return a8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3DEAB4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, __int128 *a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v13 = v12;
  v156 = a6;
  v157 = a7;
  v152 = a5;
  v155 = a4;
  v158 = a3;
  LODWORD(v154) = a2;
  v17 = a10;
  v203 = *MEMORY[0x1E69E9840];
  v148 = *v11;
  v18 = sub_1AFDFC318();
  v146 = *(v18 - 8);
  v147 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v144 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = v136 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v136 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v136 - v26;
  v28 = *a10;
  if (*(*a10 + 16))
  {
    v29 = sub_1AF0D3F10(a1);
    if (v30)
    {
      v31 = (*(v28 + 56) + 144 * v29);
      v185 = *v31;
      v32 = v31[3];
      v33 = v31[4];
      v34 = v31[2];
      v186 = v31[1];
      v187 = v34;
      v188 = v32;
      v189 = v33;
      v35 = v31[5];
      v36 = v31[6];
      v37 = v31[7];
      *(v192 + 9) = *(v31 + 121);
      v191 = v36;
      v192[0] = v37;
      v190 = v35;
      v38 = v31[7];
      a9[6] = v31[6];
      a9[7] = v38;
      *(a9 + 121) = *(v31 + 121);
      v39 = v31[3];
      a9[2] = v31[2];
      a9[3] = v39;
      v40 = v31[5];
      a9[4] = v31[4];
      a9[5] = v40;
      v41 = v31[1];
      *a9 = *v31;
      a9[1] = v41;
      return sub_1AF4495B8(&v185, &v177, sub_1AF448148);
    }
  }

  if (*(*a8 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v43)
    {
      LODWORD(v135) = 0;
      v134 = 156;
      sub_1AFDFE518();
      __break(1u);
      goto LABEL_87;
    }
  }

  v150 = a11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a8 = v185;

  sub_1AF448148(0);
  v151 = a10;
  if ((v154 & 1) == 0)
  {
    v139 = v45;
    v140 = a9;
    v149 = v12;
    v143 = a8;

    v67 = a1;
    v68 = v155;
    goto LABEL_18;
  }

  v46 = v45;
  if (*a1 != _TtC3VFX12SubGraphNode)
  {

    v88 = v152;
    v89 = v158;
LABEL_42:
    v68 = v155;
    sub_1AF3EEB38(1, v89, v155 & 1, a1, v153, v88, v156, v157, a8, v17, v150);
    if (v13)
    {
    }

    v149 = 0;
    v140 = a9;
    type metadata accessor for Node(0);
    v139 = v46;
    v98 = swift_dynamicCastMetatype();
    v143 = a8;
    if (v98)
    {

      v100 = v149;
      v101 = sub_1AF3D72E8(v99, a8);
      v149 = v100;

      a1[2] = v101;
    }

    else
    {
      type metadata accessor for AuthoringNode(0);
    }

    v67 = a1;
LABEL_18:
    v69 = v68 & 1;
    v70 = swift_allocObject();
    v71 = v156;
    v72 = v157;
    *(v70 + 16) = v156;
    *(v70 + 24) = v72;
    v73 = v153;

    v74 = v158;
    sub_1AF4410E4(v158, sub_1AF4410A8);

    v75 = swift_allocObject();
    LODWORD(v142) = v154 & 1;
    *(v75 + 16) = v154 & 1;
    *(v75 + 24) = v74;
    *(v75 + 32) = v69;
    v76 = v152;
    *(v75 + 40) = v151;
    *(v75 + 48) = v73;
    *(v75 + 56) = v76;
    *(v75 + 64) = v71;
    *(v75 + 72) = v72;
    v77 = v143;
    v78 = v150;
    *(v75 + 80) = v143;
    *(v75 + 88) = v78;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1AF448310;
    *(v79 + 24) = v75;
    *&v162 = v73;
    *(&v162 + 1) = v67;
    v163 = v76;
    v164 = sub_1AF441390;
    v165 = v79;
    v166 = v78;
    swift_bridgeObjectRetain_n();

    v80 = v149;
    sub_1AF441360(&v162);
    if (v80)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v183 = v199;
    v184[0] = v200[0];
    *(v184 + 9) = *(v200 + 9);
    v179 = v195;
    v180 = v196;
    v181 = v197;
    v182 = v198;
    v177 = v193;
    v178 = v194;
    v191 = v199;
    v192[0] = v200[0];
    *(v192 + 9) = *(v200 + 9);
    v187 = v195;
    v188 = v196;
    v189 = v197;
    v190 = v198;
    v185 = v193;
    v186 = v194;
    nullsub_106();
    v201[6] = v191;
    v202[0] = v192[0];
    *(v202 + 9) = *(v192 + 9);
    v201[2] = v187;
    v201[3] = v188;
    v201[4] = v189;
    v201[5] = v190;
    v201[0] = v185;
    v201[1] = v186;
    sub_1AF4495B8(&v177, v175, sub_1AF448148);
    v81 = v151;
    sub_1AF3D8A74(v201, v67);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v175[0] = *v77;
    *v77 = 0x8000000000000000;
    sub_1AF850FDC(0, v67, v82);
    *v77 = *&v175[0];

    if (v154)
    {
      goto LABEL_21;
    }

    sub_1AF3EEB38(v142, v158, v155 & 1, v67, v153, v76, v156, v157, v77, v81, v150);
    if (*v67 == _TtC3VFX12SubGraphNode)
    {
      v102 = v143;
      if (v67)
      {
        v103 = v67;
        v104 = *(v67 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        if (v104)
        {
          v154 = swift_dynamicCastClass();
          if (v154)
          {
            v149 = 0;
            v105 = v145;
            v106 = *(v146 + 16);
            v137 = v67;
            v107 = v147;
            v106(v145, v67 + OBJC_IVAR____TtC3VFX4Node_authoringID, v147);
            v108 = v144;
            v106(v144, v105, v107);
            v109 = v152;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v109 = sub_1AF4276E0(0, v109[2] + 1, 1, v109, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v111 = v109[2];
            v110 = v109[3];
            v112 = v109;
            v153 = v104;
            if (v111 >= v110 >> 1)
            {
              v112 = sub_1AF4276E0(v110 > 1, v111 + 1, 1, v109, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v113 = v146;
            v114 = v147;
            (*(v146 + 8))(v145, v147);
            v112[2] = v111 + 1;
            (*(v113 + 32))(v112 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v111, v108, v114);
            v115 = MEMORY[0x1E69E7CC0];
            v161[0] = sub_1AF439808(MEMORY[0x1E69E7CC0]);
            v161[1] = v116;
            v117 = (v154 + 16);
            v118 = *(v154 + 16);
            if ((v158 & 0x1000000000000000) != 0)
            {

              v124 = v149;
              goto LABEL_63;
            }

            *&v167 = v115;
            v119 = swift_allocObject();
            *(v119 + 16) = v118;
            MEMORY[0x1EEE9AC00](v119);
            MEMORY[0x1EEE9AC00](v120);
            v134 = sub_1AF449D54;
            v135 = v121;
            swift_bridgeObjectRetain_n();
            *&v175[0] = sub_1AF42B0F4(v115);
            *(&v175[0] + 1) = v122;
            v123 = v149;
            sub_1AF412D4C(sub_1AF449DD8, &v133, 1, 0x1000000000000000uLL, 0, v115, v175);
            if (!v123)
            {
              v124 = 0;

              v118 = v167;
LABEL_63:
              v125 = sub_1AF0D4098(v115, sub_1AF44034C, sub_1AF0D3F10);
              v159 = v115;
              v160 = v125;
              if (v118 >> 62)
              {
                v126 = sub_1AFDFE108();
              }

              else
              {
                v126 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v152 = v117;
              sub_1AF4410E4(v158, sub_1AF4410A8);

              if (v126)
              {
                v127 = 0;
                while (1)
                {
                  if ((v118 & 0xC000000000000001) != 0)
                  {
                    v128 = MEMORY[0x1B2719C70](v127, v118);
                  }

                  else
                  {
                    v128 = *(v118 + 8 * v127 + 32);
                  }

                  sub_1AF3DEAB4(v128, v142, v158, v155 & 1, v112, v156, v157, &v160, v175, v161, &v159);
                  if (v124)
                  {
                    break;
                  }

                  ++v127;
                  v173 = v175[6];
                  v174[0] = v176[0];
                  *(v174 + 9) = *(v176 + 9);
                  v169 = v175[2];
                  v170 = v175[3];
                  v171 = v175[4];
                  v172 = v175[5];
                  v167 = v175[0];
                  v168 = v175[1];
                  sub_1AF44943C(&v167, sub_1AF448148);

                  if (v126 == v127)
                  {
                    goto LABEL_73;
                  }
                }

                sub_1AF4410E4(v158, sub_1AF441114);

                v173 = v199;
                v174[0] = v200[0];
                *(v174 + 9) = *(v200 + 9);
                v169 = v195;
                v170 = v196;
                v171 = v197;
                v172 = v198;
                v167 = v193;
                v168 = v194;
                sub_1AF44943C(&v167, sub_1AF448148);
              }

LABEL_73:

              sub_1AF4410E4(v158, sub_1AF441114);

              if (v159 >> 62)
              {
                v129 = sub_1AFDFE108();
              }

              else
              {
                v129 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v103 = v137;
              if (v129)
              {

                sub_1AF48F7F8(v130);
              }

              v102 = v143;
              goto LABEL_78;
            }

LABEL_88:

            __break(1u);
            return result;
          }
        }
      }

      else
      {
        v103 = 0;
      }
    }

    else
    {
      v103 = v67;
      v102 = v143;
    }

LABEL_78:
    type metadata accessor for Node(0);
    if (swift_dynamicCastMetatype())
    {

      v132 = sub_1AF3D72E8(v131, v102);

      *(v103 + 2) = v132;

      goto LABEL_22;
    }

    type metadata accessor for AuthoringNode(0);
LABEL_21:

LABEL_22:
    v83 = v140;
    v84 = v200[0];
    v140[6] = v199;
    v83[7] = v84;
    *(v83 + 121) = *(v200 + 9);
    v85 = v196;
    v83[2] = v195;
    v83[3] = v85;
    v86 = v198;
    v83[4] = v197;
    v83[5] = v86;
    v87 = v194;
    *v83 = v193;
    v83[1] = v87;
    return result;
  }

  v47 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
  if (!v47 || (v141 = swift_dynamicCastClass()) == 0)
  {

    v17 = v151;
    v88 = v152;
    v89 = v158;
    goto LABEL_42;
  }

  v149 = v12;
  v139 = v46;
  v140 = a9;
  v48 = v147;
  v49 = a1;
  v50 = *(v146 + 16);
  v50(v27, &v49[OBJC_IVAR____TtC3VFX4Node_authoringID], v147);
  v50(v24, v27, v48);
  v137 = v49;

  v138 = v47;

  v51 = v152;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_1AF4276E0(0, v152[2] + 1, 1, v152, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v53 = v51[2];
  v52 = v51[3];
  v142 = v51;
  if (v53 >= v52 >> 1)
  {
    v142 = sub_1AF4276E0(v52 > 1, v53 + 1, 1, v142, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v17 = v151;
  v55 = v146;
  v54 = v147;
  (*(v146 + 8))(v27, v147);
  v56 = v142;
  v142[2] = v53 + 1;
  v57 = v56;
  (*(v55 + 32))(v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53, v24, v54);
  v58 = MEMORY[0x1E69E7CC0];
  *&v175[0] = sub_1AF439808(MEMORY[0x1E69E7CC0]);
  *(&v175[0] + 1) = v59;
  v60 = *(v141 + 16);
  v136[1] = v141 + 16;
  v61 = v158;
  if ((v158 & 0x1000000000000000) == 0)
  {
    *&v177 = v58;
    v62 = swift_allocObject();
    v136[0] = v136;
    *(v62 + 16) = v60;
    MEMORY[0x1EEE9AC00](v62);
    MEMORY[0x1EEE9AC00](v63);
    v134 = sub_1AF449D54;
    v135 = v64;
    swift_bridgeObjectRetain_n();
    *&v185 = sub_1AF42B0F4(v58);
    *(&v185 + 1) = v65;
    v66 = v149;
    sub_1AF412D4C(sub_1AF449DD8, &v133, 1, 0x1000000000000000uLL, 0, v58, &v185);
    if (!v66)
    {
      v13 = 0;

      v60 = v177;
      v57 = v142;
      goto LABEL_27;
    }

LABEL_87:

    __break(1u);
    goto LABEL_88;
  }

  v13 = v149;
LABEL_27:
  *&v167 = sub_1AF0D4098(v58, sub_1AF44034C, sub_1AF0D3F10);
  *&v162 = v58;
  if (v60 >> 62)
  {
    v90 = sub_1AFDFE108();
  }

  else
  {
    v90 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(v61, sub_1AF4410A8);

  v149 = v60;
  if (!v90)
  {
LABEL_37:

    v94 = v158;
    sub_1AF4410E4(v158, sub_1AF441114);

    if (v162 >> 62)
    {
      v95 = sub_1AFDFE108();
    }

    else
    {
      v95 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v137;
    a9 = v140;
    v96 = v152;
    if (v95)
    {

      sub_1AF48F7F8(v97);
    }

    v88 = v96;
    v89 = v94;
    v46 = v139;
    goto LABEL_42;
  }

  v91 = 0;
  v92 = v60 & 0xC000000000000001;
  while (1)
  {
    if (v92)
    {
      v93 = MEMORY[0x1B2719C70](v91, v149);
    }

    else
    {
      v93 = *(v149 + 8 * v91 + 32);
    }

    sub_1AF3DEAB4(v93, 1, v158, v155 & 1, v57, v156, v157, &v167, &v185, v175, &v162);
    if (v13)
    {
      break;
    }

    ++v91;
    v183 = v191;
    v184[0] = v192[0];
    *(v184 + 9) = *(v192 + 9);
    v179 = v187;
    v180 = v188;
    v181 = v189;
    v182 = v190;
    v177 = v185;
    v178 = v186;
    sub_1AF44943C(&v177, sub_1AF448148);

    v57 = v142;
    if (v90 == v91)
    {
      goto LABEL_37;
    }
  }

  sub_1AF4410E4(v158, sub_1AF441114);
}

uint64_t sub_1AF3DFFC4(void *a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t (*a10)())
{
  v12 = v11;
  v140 = a7;
  v135 = a5;
  v139 = a4;
  LODWORD(v138) = a2;
  v149 = *MEMORY[0x1E69E9840];
  v134 = v10;
  v131 = *v10;
  v130 = sub_1AFDFC318();
  v17 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v120 - v25;
  v136 = a9;
  v27 = *a9;
  if (*(*a9 + 16))
  {
    v28 = sub_1AF0D3F10(a1);
    if (v29)
    {
      return *(*(v27 + 56) + 12 * v28);
    }
  }

  if (*(*a8 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v30)
    {
      LODWORD(v119) = 0;
      v118 = 156;
      sub_1AFDFE518();
      __break(1u);
      goto LABEL_86;
    }
  }

  v133 = a10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v142 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a8 = v142;

  sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
  v137 = a3;
  if ((v138 & 1) == 0)
  {
    v124 = v17;
    v123 = v32;
    v52 = v139;
    v127 = v11;
    v126 = a8;

    v53 = v135;
    goto LABEL_18;
  }

  if (*a1 != _TtC3VFX12SubGraphNode)
  {
    v33 = v32;

    v53 = v135;
    v75 = v133;
LABEL_56:
    v118 = v75;
    v100 = v139;
    sub_1AF3F0558(1, a3, v139 & 1, a1, v134, v53, a6, v140, a8, v136, v118);
    if (v12)
    {
LABEL_57:

      return a6;
    }

    v124 = v17;
    v52 = v100;
    type metadata accessor for Node(0);
    v123 = v33;
    v102 = swift_dynamicCastMetatype();
    v126 = a8;
    if (v102)
    {

      v104 = sub_1AF3D72E8(v103, a8);
      v127 = 0;

      a1[2] = v104;
    }

    else
    {
      v127 = 0;
      type metadata accessor for AuthoringNode(0);
    }

LABEL_18:
    v54 = swift_allocObject();
    v55 = a6;
    v56 = v140;
    *(v54 + 16) = a6;
    *(v54 + 24) = v56;
    a6 = v134;

    v57 = v137;
    sub_1AF4410E4(v137, sub_1AF4410A8);

    v58 = swift_allocObject();
    LODWORD(v125) = v138 & 1;
    *(v58 + 16) = v138 & 1;
    *(v58 + 24) = v57;
    *(v58 + 32) = v52 & 1;
    *(v58 + 40) = v136;
    *(v58 + 48) = a6;
    *(v58 + 56) = v53;
    *(v58 + 64) = v55;
    v59 = v126;
    *(v58 + 72) = v56;
    *(v58 + 80) = v59;
    v60 = v133;
    *(v58 + 88) = v133;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1AF448D2C;
    *(v61 + 24) = v58;
    *&v142 = a6;
    *(&v142 + 1) = a1;
    v143 = v53;
    v144 = sub_1AF448D30;
    v145 = v61;
    v146 = v60;
    swift_bridgeObjectRetain_n();

    v62 = v127;
    sub_1AF448D10(&v142, &v147);
    if (v62)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      v132 = v55;

      a6 = v147;
      v127 = a1;
      v63 = v148;
      swift_isEscapingClosureAtFileLocation();

      v64 = v136;
      swift_isEscapingClosureAtFileLocation();

      LODWORD(v122) = v63;
      v65 = v63;
      v66 = v127;
      sub_1AF633DE0(a6, v65, v127);
      v67 = v139;
      if ((v68 & 0x100) != 0)
      {
        v69 = v64[1];
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v64[1] = v69;
        if ((v70 & 1) == 0)
        {
          v69 = sub_1AF422330(0, *(v69 + 2) + 1, 1, v69, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v64[1] = v69;
        }

        v72 = *(v69 + 2);
        v71 = *(v69 + 3);
        if (v72 >= v71 >> 1)
        {
          v69 = sub_1AF422330(v71 > 1, v72 + 1, 1, v69, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        *(v69 + 2) = v72 + 1;
        *&v69[8 * v72 + 32] = v66;
        v64[1] = v69;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      *&v142 = *v59;
      *v59 = 0x8000000000000000;
      sub_1AF850FDC(0, v66, v73);
      *v59 = v142;

      v74 = v137;
      if ((v138 & 1) == 0)
      {
        sub_1AF3F0558(v125, v137, v67 & 1, v66, v134, v135, v132, v140, v59, v64, v133);
        if (*v66 == _TtC3VFX12SubGraphNode)
        {
          if (v66)
          {
            v76 = *(v66 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
            if (v76)
            {
              v134 = swift_dynamicCastClass();
              if (v134)
              {
                v121 = a6;
                v133 = v76;
                v77 = *(v124 + 16);
                v78 = v128;
                v79 = v130;
                v77(v128, v66 + OBJC_IVAR____TtC3VFX4Node_authoringID, v130);
                v77(v129, v78, v79);
                v80 = v135;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v80 = sub_1AF4276E0(0, v80[2] + 1, 1, v80, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                }

                v82 = v80[2];
                v81 = v80[3];
                v138 = v82 + 1;
                if (v82 >= v81 >> 1)
                {
                  v80 = sub_1AF4276E0(v81 > 1, v82 + 1, 1, v80, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                }

                v83 = v124;
                v84 = v130;
                (*(v124 + 8))(v128, v130);
                v80[2] = v138;
                (*(v83 + 32))(v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v82, v129, v84);
                v85 = MEMORY[0x1E69E7CC0];
                *&v142 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
                *(&v142 + 1) = v86;
                v87 = v134[2];
                v130 = (v134 + 2);
                if ((v74 & 0x1000000000000000) != 0)
                {

                  v92 = v80;
                }

                else
                {
                  v141 = v85;
                  v88 = swift_allocObject();
                  *(v88 + 16) = v87;
                  MEMORY[0x1EEE9AC00](v88);
                  MEMORY[0x1EEE9AC00](v89);
                  v118 = sub_1AF449D54;
                  v119 = v90;
                  swift_bridgeObjectRetain_n();
                  v147 = sub_1AF42B0F4(v85);
                  v148 = v91;
                  sub_1AF412D4C(sub_1AF449DD8, &v117, 1, 0x1000000000000000uLL, 0, v85, &v147);

                  v87 = v141;
                  v92 = v80;
                  v74 = v137;
                  v67 = v139;
                }

                v147 = sub_1AF0D4098(v85, sub_1AF44034C, sub_1AF0D3F10);
                v141 = v85;
                v108 = v125;
                if (v87 >> 62)
                {
                  v109 = sub_1AFDFE108();
                }

                else
                {
                  v109 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                sub_1AF4410E4(v74, sub_1AF4410A8);

                v135 = v92;

                v138 = v87;
                if (v109)
                {
                  v110 = v87;
                  v111 = v67;
                  v112 = 0;
                  v113 = v110 & 0xC000000000000001;
                  do
                  {
                    if (v113)
                    {
                      v114 = MEMORY[0x1B2719C70](v112, v138);
                    }

                    else
                    {
                      v114 = *(v138 + 8 * v112 + 32);
                    }

                    sub_1AF3DFFC4(v114, v108, v137, v111 & 1, v135, v132, v140, &v147, &v142, &v141);

                    ++v112;
                    v108 = v125;
                  }

                  while (v109 != v112);
                }

                sub_1AF4410E4(v137, sub_1AF441114);

                if (v141 >> 62)
                {
                  v115 = sub_1AFDFE108();
                }

                else
                {
                  v115 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a6 = v121;
                if (v115)
                {

                  sub_1AF48F7F8(v116);
                }
              }
            }
          }
        }

        type metadata accessor for Node(0);
        if (swift_dynamicCastMetatype())
        {
          v105 = v127;

          v107 = sub_1AF3D72E8(v106, v59);

          v105[2] = v107;
        }

        else
        {
          type metadata accessor for AuthoringNode(0);
        }

        return a6;
      }
    }

    goto LABEL_57;
  }

  v132 = a6;
  v33 = v32;
  v34 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
  if (!v34 || (v125 = swift_dynamicCastClass()) == 0)
  {

    v53 = v135;
    a6 = v132;
    v75 = v133;
    goto LABEL_56;
  }

  v123 = v33;
  v124 = v17;
  v35 = *(v17 + 16);
  v36 = v130;
  v35(v26, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v130);
  v35(v23, v26, v36);

  v122 = v34;

  v37 = v135;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1AF4276E0(0, v135[2] + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v127 = v37;
  v39 = v37[2];
  v38 = v37[3];
  if (v39 >= v38 >> 1)
  {
    v127 = sub_1AF4276E0(v38 > 1, v39 + 1, 1, v127, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v40 = v124;
  v41 = v26;
  v42 = v130;
  (*(v124 + 8))(v41, v130);
  v43 = v127;
  v127[2] = v39 + 1;
  (*(v40 + 32))(v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v23, v42);
  v44 = MEMORY[0x1E69E7CC0];
  *&v142 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
  *(&v142 + 1) = v45;
  v46 = *(v125 + 16);
  v121 = v125 + 16;
  v47 = v137;
  if ((v137 & 0x1000000000000000) != 0)
  {

    goto LABEL_41;
  }

  v141 = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  v118 = sub_1AF449D54;
  v119 = v50;
  swift_bridgeObjectRetain_n();
  v147 = sub_1AF42B0F4(v44);
  v148 = v51;
  sub_1AF412D4C(sub_1AF449DD8, &v117, 1, 0x1000000000000000uLL, 0, v44, &v147);
  if (!v11)
  {
    v12 = 0;

    v46 = v141;
    v47 = v137;
LABEL_41:
    v147 = sub_1AF0D4098(v44, sub_1AF44034C, sub_1AF0D3F10);
    v141 = v44;
    if (v46 >> 62)
    {
      v93 = sub_1AFDFE108();
    }

    else
    {
      v93 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(v47, sub_1AF4410A8);
    v94 = v127;

    v95 = v46;
    if (v93)
    {
      a6 = 0;
      v96 = v46 & 0xC000000000000001;
      while (1)
      {
        if (v96)
        {
          v97 = MEMORY[0x1B2719C70](a6, v46);
        }

        else
        {
          v97 = *(v46 + 8 * a6 + 32);
        }

        sub_1AF3DFFC4(v97, 1, v137, v139 & 1, v94, v132, v140, &v147, &v142, &v141);
        if (v12)
        {
          break;
        }

        ++a6;
        v94 = v127;
        v46 = v95;
        if (v93 == a6)
        {
          goto LABEL_51;
        }
      }

      sub_1AF4410E4(v137, sub_1AF441114);

      return a6;
    }

LABEL_51:

    a3 = v137;
    sub_1AF4410E4(v137, sub_1AF441114);

    if (v141 >> 62)
    {
      v98 = sub_1AFDFE108();
    }

    else
    {
      v98 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v135;
    a6 = v132;
    v75 = v133;
    if (v98)
    {

      sub_1AF48F7F8(v99);
    }

    v33 = v123;
    v17 = v124;
    goto LABEL_56;
  }

LABEL_86:

  __break(1u);
  return result;
}

char *sub_1AF3E1430(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v12 = v11;
  v135 = a7;
  v136 = a3;
  *&v137 = a6;
  LODWORD(v138) = a2;
  v17 = a9;
  v130 = *v10;
  v126 = sub_1AFDFC318();
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v118 - v25;
  v27 = *a9;
  if (*(*a9 + 16))
  {
    v28 = sub_1AF0D3F10(a1);
    if (v29)
    {
      v23 = *(*(v27 + 56) + 16 * v28);

      return v23;
    }
  }

  *&v139 = a1;
  v30 = *(*a8 + 16);
  v131 = a5;
  if (!v30)
  {
    v31 = v138;
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a8;
    *a8 = 0x8000000000000000;
    v34 = v139;
    sub_1AF850FDC(1, v139, isUniquelyReferenced_nonNull_native);
    v35 = v34;
    *a8 = v140;

    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v133 = v36;
    v132 = type metadata accessor for Node(0);
    v146 = v34;

    if ((a4 & 1) != 0 && v133 == v132)
    {
      v37 = sub_1AF96FB80(1);
      v35 = v139;
      v34 = v37;
      v146 = v37;
    }

    v38 = a10;
    if (v31)
    {
      if (*v34 == _TtC3VFX12SubGraphNode && (v39 = *(v34 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph)) != 0)
      {
        v128 = a10;
        v40 = swift_dynamicCastClass();
        if (v40)
        {
          *&v122 = v40;
          v129 = v11;
          v119 = a9;
          v41 = *(v127 + 16);
          v42 = v34 + OBJC_IVAR____TtC3VFX4Node_authoringID;
          v43 = v126;
          v41(v26, v42, v126);
          v41(v23, v26, v43);
          v121 = v39;

          v44 = v131;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1AF4276E0(0, v131[2] + 1, 1, v131, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v46 = v44[2];
          v45 = v44[3];
          if (v46 >= v45 >> 1)
          {
            v44 = sub_1AF4276E0(v45 > 1, v46 + 1, 1, v44, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v47 = v127;
          v48 = v26;
          v49 = v126;
          (*(v127 + 8))(v48, v126);
          v44[2] = v46 + 1;
          (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v23, v49);
          v50 = v135;
          v51 = v136;
          v52 = v129;
          v53 = sub_1AF3FBEE4(v137, v135, 1, v136, a4 & 1, v44);
          v129 = v52;
          if (v52)
          {

LABEL_52:

            return v23;
          }

          v88 = v53;
          v89 = v54;

          if (v133 == v132)
          {
            v23 = *(v89 + 16);
            if (v23)
            {
              *&v145 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v90 = 32;
              v122 = xmmword_1AFE21110;
              do
              {
                v91 = v122;
                if (*(v88 + 16))
                {
                  v92 = sub_1AF0D3F10(*(v89 + v90));
                  v91 = v122;
                  if (v93)
                  {
                    v120 = *(*(v88 + 56) + 16 * v92);

                    v91 = v120;
                  }
                }

                v140 = v91;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v90 += 8;
                --v23;
              }

              while (v23);

              v94 = v145;
              v50 = v135;
            }

            else
            {

              v94 = MEMORY[0x1E69E7CC0];
            }

            v95 = v146;
            v96 = swift_allocObject();
            *(v96 + 16) = v94;
            *(v95 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v96;

            v17 = v119;
            v12 = v129;
            v67 = v131;
            v69 = v50;
            v68 = v136;
          }

          else
          {

            v17 = v119;
            v12 = v129;
            v67 = v131;
            v69 = v50;
            v68 = v51;
          }

          v35 = v139;
        }

        else
        {
          v67 = v131;
          v69 = v135;
          v68 = v136;
        }

        v38 = v128;
      }

      else
      {
        v67 = v131;
        v69 = v135;
        v68 = v136;
      }

      v97 = v35;
      v98 = v38;
      sub_1AF3F1D38(1, v68, a4 & 1, v97, v134, v67, v137, v69, a8, v17, v38);
      if (v12)
      {
        goto LABEL_52;
      }

      v128 = v98;
      v100 = swift_dynamicCastMetatype();
      v125 = a8;
      if (v100)
      {
        v34 = v146;

        v102 = sub_1AF3D7490(v101, a8, v17);
        v129 = 0;

        v34[2] = v102;
      }

      else
      {
        v129 = 0;
        type metadata accessor for AuthoringNode(0);
        v34 = v146;
      }
    }

    else
    {
      v128 = a10;
      v125 = a8;
      v129 = v11;
    }

    v55 = a4 & 1;
    v56 = swift_allocObject();
    LODWORD(v122) = a4;
    v57 = v137;
    v59 = v134;
    v58 = v135;
    *(v56 + 16) = v137;
    *(v56 + 24) = v58;

    v60 = v136;
    sub_1AF4410E4(v136, sub_1AF4410A8);

    v23 = swift_allocObject();
    LODWORD(v121) = v138 & 1;
    v23[16] = v138 & 1;
    *(v23 + 3) = v60;
    v23[32] = v55;
    *(v23 + 5) = v17;
    *(v23 + 6) = v59;
    v61 = v131;
    *(v23 + 7) = v131;
    *(v23 + 8) = v57;
    v62 = v125;
    *(v23 + 9) = v58;
    *(v23 + 10) = v62;
    v63 = v128;
    *(v23 + 11) = v128;
    v64 = v17;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1AF447F6C;
    *(v65 + 24) = v23;
    *&v140 = v59;
    *(&v140 + 1) = v34;
    v141 = v61;
    v142 = sub_1AF447F70;
    v143 = v65;
    v144 = v63;

    v66 = v129;
    sub_1AF447F50(&v140, &v145);
    if (v66)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {

      v70 = v145;
      swift_isEscapingClosureAtFileLocation();
      v23 = v70;

      swift_isEscapingClosureAtFileLocation();

      v71 = v139;
      sub_1AF3D8DAC(v70, *(&v70 + 1), v139);
      v72 = v64;
      if (v133 == v132)
      {
        v140 = v70;

        swift_dynamicCast();
      }

      v73 = v125;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v140 = *v73;
      *v73 = 0x8000000000000000;
      sub_1AF850FDC(0, v71, v74);
      *v73 = v140;

      if ((v138 & 1) == 0)
      {
        sub_1AF3F1D38(v121, v136, v122 & 1, v71, v134, v131, v137, v135, v73, v64, v128);
        v75 = v146;
        if (*v146 == _TtC3VFX12SubGraphNode)
        {
          v76 = *(v146 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
          if (v76)
          {
            v77 = swift_dynamicCastClass();
            if (v77)
            {
              *&v139 = v77;
              v134 = v70;
              v78 = *(v127 + 16);
              v79 = v75 + OBJC_IVAR____TtC3VFX4Node_authoringID;
              v80 = v123;
              v81 = v76;
              v82 = v126;
              v78(v123, v79, v126);
              v78(v124, v80, v82);
              v83 = v131;

              v138 = v81;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v83 = sub_1AF4276E0(0, v83[2] + 1, 1, v83, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
              }

              v85 = v83[2];
              v84 = v83[3];
              v86 = v127;
              if (v85 >= v84 >> 1)
              {
                v117 = sub_1AF4276E0(v84 > 1, v85 + 1, 1, v83, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                v86 = v127;
                v83 = v117;
              }

              v87 = v126;
              (*(v86 + 8))(v123, v126);
              v83[2] = v85 + 1;
              (*(v86 + 32))(v83 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v85, v124, v87);
              v103 = sub_1AF3FBEE4(v137, v135, v121, v136, v122 & 1, v83);
              v105 = v104;

              if (v133 == v132)
              {
                v129 = 0;
                v106 = *(v105 + 16);
                if (v106)
                {
                  *&v145 = MEMORY[0x1E69E7CC0];
                  sub_1AFDFE368();
                  v107 = 32;
                  v139 = xmmword_1AFE21110;
                  do
                  {
                    v108 = v139;
                    if (*(v103 + 16))
                    {
                      v109 = sub_1AF0D3F10(*(v105 + v107));
                      v108 = v139;
                      if (v110)
                      {
                        v137 = *(*(v103 + 56) + 16 * v109);

                        v108 = v137;
                      }
                    }

                    v140 = v108;
                    swift_dynamicCast();
                    sub_1AFDFE328();
                    sub_1AFDFE398();
                    sub_1AFDFE3A8();
                    sub_1AFDFE348();
                    v107 += 8;
                    --v106;
                  }

                  while (v106);

                  v111 = v145;
                }

                else
                {

                  v111 = MEMORY[0x1E69E7CC0];
                }

                v112 = v146;
                v113 = swift_allocObject();
                *(v113 + 16) = v111;
                *(v112 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v113;

                v72 = v64;
              }

              else
              {
              }

              v23 = v134;
            }
          }
        }

        if (swift_dynamicCastMetatype())
        {
          v114 = v146;

          v116 = sub_1AF3D7490(v115, v125, v72);

          v114[2] = v116;
        }

        else
        {
          type metadata accessor for AuthoringNode(0);
        }
      }
    }

    goto LABEL_52;
  }

  sub_1AF0D3F10(v139);
  v31 = v138;
  if ((v32 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E2468(__objc2_class **a1, int a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, uint64_t a10)
{
  v128 = a7;
  v129 = a8;
  v125 = a5;
  LODWORD(v126) = a2;
  v136[1] = *MEMORY[0x1E69E9840];
  v122 = v10;
  v117 = *v10;
  v16 = sub_1AFDFC318();
  v118 = *(v16 - 8);
  v119 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v110 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v110 - v25;
  v124 = a9;
  v27 = *a9;
  if (*(*a9 + 16))
  {
    v28 = sub_1AF0D3F10(a1);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);

      return v30;
    }
  }

  v113 = v18;
  if (!*(*v129 + 16))
  {
    v31 = v11;
    v33 = v129;
LABEL_8:
    v121 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v131 = *v33;
    *v33 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *v33 = v131;

    sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
    v127 = a3;
    v114 = v35;
    if (v126)
    {
      v36 = v31;
      if (*a1 == _TtC3VFX21AuthoringSubGraphNode && (v37 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph), (v38 = swift_dynamicCastClass()) != 0))
      {
        v39 = v38;
        v115 = a4;
        v123 = a6;
        v40 = v125;
        v41 = *(v118 + 16);
        v112 = v37;
        v42 = v119;
        v41(v26, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v119);
        v41(v23, v26, v42);
        v111 = a1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1AF4276E0(0, v125[2] + 1, 1, v125, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v44 = v40[2];
        v43 = v40[3];
        if (v44 >= v43 >> 1)
        {
          v120 = sub_1AF4276E0(v43 > 1, v44 + 1, 1, v40, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        else
        {
          v120 = v40;
        }

        v46 = v118;
        v45 = v119;
        (*(v118 + 8))(v26, v119);
        v47 = v120;
        v120[2] = v44 + 1;
        (*(v46 + 32))(v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, v23, v45);
        v48 = MEMORY[0x1E69E7CC0];
        *&v131 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
        *(&v131 + 1) = v49;
        v50 = *(v39 + 24);
        v110 = v39 + 24;

        a3 = v127;
        if ((v127 & 0x1000000000000000) == 0)
        {
          v51 = sub_1AF42B320(v50, 0);

          v50 = v51;
          a3 = v127;
        }

        v52 = v115;
        v136[0] = sub_1AF0D4098(v48, sub_1AF44034C, sub_1AF0D3F10);
        v130 = v48;
        if (v50 >> 62)
        {
          v53 = sub_1AFDFE108();
        }

        else
        {
          v53 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(a3, sub_1AF4410A8);
        v54 = v120;

        if (v53)
        {
          v30 = 0;
          while (1)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x1B2719C70](v30, v50);
              v54 = v120;
              v55 = v56;
            }

            else
            {
              v55 = *(v50 + 8 * v30 + 32);
            }

            sub_1AF3E2468(v55, 1, a3, v52 & 1, v54, v123, v128, v136, &v131, &v130);
            if (v36)
            {
              break;
            }

            ++v30;
            a3 = v127;
            v54 = v120;
            if (v53 == v30)
            {
              goto LABEL_33;
            }
          }

          sub_1AF4410E4(v127, sub_1AF441114);

          return v30;
        }

LABEL_33:

        sub_1AF4410E4(a3, sub_1AF441114);

        if (v130 >> 62)
        {
          v72 = sub_1AFDFE108();
        }

        else
        {
          v72 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v73 = v111;
        v74 = v122;
        a6 = v123;
        a4 = v52;
        if (v72)
        {

          sub_1AF48F6CC(v75);
        }

        a1 = v73;
        v67 = v74;
      }

      else
      {

        v67 = v122;
      }

      v30 = v124;
      sub_1AF3F32D0(1, a3, a4 & 1, a1, v67, v125, a6, v128, v129, v124, v121);
      if (v36)
      {
        goto LABEL_39;
      }

      v120 = 0;
      type metadata accessor for Node(0);
      type metadata accessor for AuthoringNode(0);
      if (swift_dynamicCastMetatype())
      {
        v77 = v30;
        v78 = a6;
        v79 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v81 = v77;
        v82 = v120;
        v83 = sub_1AF3D6B1C(v80, v129, v81, sub_1AF3FDCB4);
        v120 = v82;

        *(a1 + v79) = v83;
        a6 = v78;
      }
    }

    else
    {
      v120 = v31;
    }

    v115 = a4;
    v57 = a4 & 1;
    v58 = swift_allocObject();
    v30 = v128;
    *(v58 + 16) = a6;
    *(v58 + 24) = v30;
    v59 = v122;

    v60 = v127;
    sub_1AF4410E4(v127, sub_1AF4410A8);

    v61 = swift_allocObject();
    LODWORD(v112) = v126 & 1;
    *(v61 + 16) = v126 & 1;
    *(v61 + 24) = v60;
    *(v61 + 32) = v57;
    v62 = v125;
    *(v61 + 40) = v124;
    *(v61 + 48) = v59;
    *(v61 + 56) = v62;
    *(v61 + 64) = a6;
    v123 = a6;
    v63 = v129;
    *(v61 + 72) = v30;
    *(v61 + 80) = v63;
    v64 = v121;
    *(v61 + 88) = v121;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1AF449818;
    *(v65 + 24) = v61;
    *&v131 = v59;
    *(&v131 + 1) = a1;
    v132 = v62;
    v133 = sub_1AF449D48;
    v134 = v65;
    v135 = v64;
    swift_bridgeObjectRetain_n();

    v66 = v120;
    sub_1AF449DC0(&v131, v136);
    if (v66)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return v30;
    }

    v68 = v124;
    v30 = v136[0];
    swift_isEscapingClosureAtFileLocation();

    v69 = v129;
    swift_isEscapingClosureAtFileLocation();

    sub_1AF3D9030(v70, a1, sub_1AF634138, sub_1AF449DA4, sub_1AF6B761C, sub_1AF849C40);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v131 = *v69;
    *v69 = 0x8000000000000000;
    sub_1AF850FDC(0, a1, v71);
    *v69 = v131;

    if ((v126 & 1) == 0)
    {
      sub_1AF3F32D0(v112, v127, v115 & 1, a1, v122, v62, v123, v128, v69, v68, v121);
      if (*a1 == _TtC3VFX21AuthoringSubGraphNode)
      {
        if (a1)
        {
          v84 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
          v85 = swift_dynamicCastClass();
          if (v85)
          {
            v86 = v85;
            v122 = v30;
            v87 = v119;
            v88 = *(v118 + 16);
            v89 = v116;
            v88(v116, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v119);
            v88(v113, v89, v87);
            v90 = v125;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_1AF4276E0(0, v90[2] + 1, 1, v90, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v92 = v90[2];
            v91 = v90[3];
            v125 = v90;
            v126 = v84;
            if (v92 >= v91 >> 1)
            {
              v125 = sub_1AF4276E0(v91 > 1, v92 + 1, 1, v125, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v94 = v118;
            v93 = v119;
            (*(v118 + 8))(v89, v119);
            v95 = v125;
            v125[2] = v92 + 1;
            (*(v94 + 32))(v95 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v92, v113, v93);
            v96 = MEMORY[0x1E69E7CC0];
            *&v131 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
            *(&v131 + 1) = v97;
            v98 = *(v86 + 24);

            v121 = v86 + 24;
            if ((v127 & 0x1000000000000000) == 0)
            {
              v99 = sub_1AF42B320(v98, 0);

              v98 = v99;
            }

            v136[0] = sub_1AF0D4098(v96, sub_1AF44034C, sub_1AF0D3F10);
            v130 = v96;
            if (v98 >> 62)
            {
              v100 = sub_1AFDFE108();
            }

            else
            {
              v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v111 = a1;
            sub_1AF4410E4(v127, sub_1AF4410A8);

            if (v100)
            {
              for (i = 0; i != v100; ++i)
              {
                v102 = v127;
                if ((v98 & 0xC000000000000001) != 0)
                {
                  v103 = MEMORY[0x1B2719C70](i, v98);
                }

                else
                {
                  v103 = *(v98 + 8 * i + 32);
                }

                sub_1AF3E2468(v103, v112, v102, v115 & 1, v125, v123, v128, v136, &v131, &v130);
              }
            }

            sub_1AF4410E4(v127, sub_1AF441114);

            if (v130 >> 62)
            {
              v104 = sub_1AFDFE108();
            }

            else
            {
              v104 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            a1 = v111;
            v105 = v129;
            v30 = v122;
            if (v104)
            {

              sub_1AF48F6CC(v106);
            }

            v69 = v105;
          }
        }
      }

      type metadata accessor for Node(0);
      type metadata accessor for AuthoringNode(0);
      if (swift_dynamicCastMetatype())
      {
        v107 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v109 = sub_1AF3D6B1C(v108, v69, v124, sub_1AF3FDCB4);

        *(a1 + v107) = v109;

        return v30;
      }
    }

LABEL_39:

    return v30;
  }

  v31 = v11;
  sub_1AF0D3F10(a1);
  if ((v32 & 1) == 0)
  {
    v33 = v129;
    goto LABEL_8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

__objc2_class **sub_1AF3E3638(__objc2_class **a1, int a2, uint64_t a3, int a4, __objc2_class **a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v126 = a6;
  v123 = a3;
  v124 = a5;
  LODWORD(v129) = a2;
  v15 = a9;
  v16 = *v10;
  v17 = sub_1AFDFC318();
  v18 = *(v17 - 8);
  v120 = v17;
  v121 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v112 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v112 - v26;
  v28 = *a9;
  if (*(*a9 + 16))
  {
    v29 = sub_1AF0D3F10(a1);
    if (v30)
    {
      v24 = *(*(v28 + 56) + 8 * v29);

      return v24;
    }
  }

  v127 = a1;
  if (!*(*a8 + 16))
  {
    v31 = v129;
    goto LABEL_8;
  }

  sub_1AF0D3F10(v127);
  v31 = v129;
  if ((v32 & 1) == 0)
  {
LABEL_8:
    v122 = a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v131 = *a8;
    *a8 = 0x8000000000000000;
    v34 = v127;
    sub_1AF850FDC(1, v127, isUniquelyReferenced_nonNull_native);
    *a8 = v131;

    if (a4)
    {
      v128 = sub_1AF96FB80(1);
      v35 = a10;
      if ((v31 & 1) == 0)
      {
LABEL_10:
        v36 = a4;
        v119 = v35;
        v116 = a8;
        v37 = v123;
        v115 = v16;
        v24 = v124;
        goto LABEL_35;
      }
    }

    else
    {

      v128 = v34;
      v35 = a10;
      if ((v31 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v38 = v125;
    v39 = v126;
    if (*v128 == _TtC3VFX12SubGraphNode && (v40 = *(v128 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph)) != 0)
    {
      v119 = v35;
      v41 = v126;
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v116 = v42;
        v115 = v16;
        v112 = a9;
        v43 = v120;
        v44 = *(v121 + 16);
        v44(v27, v128 + OBJC_IVAR____TtC3VFX4Node_authoringID, v120);
        v44(v24, v27, v43);
        v113 = v40;

        v45 = v124;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1AF4276E0(0, &v124[2]->isa + 1, 1, v124, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_1AF4276E0(v46 > 1, v47 + 1, 1, v45, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v49 = v120;
        v48 = v121;
        (*(v121 + 8))(v27, v120);
        v45[2] = v47 + 1;
        (*(v48 + 32))(v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v24, v49);
        v50 = v130;
        v51 = sub_1AF3FC1C0(v126, v122, 1, v123, a4 & 1, v45);
        v53 = v50;
        if (v50)
        {

          goto LABEL_38;
        }

        v54 = v51;
        v55 = v52;

        v56 = *(v55 + 16);
        if (v56)
        {
          v116 = a8;
          v130 = 0;
          *&v131 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v57 = 32;
          v34 = v127;
          do
          {
            if (*(v54 + 16))
            {
              sub_1AF0D3F10(*(v55 + v57));
              if (v58)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v57 += 8;
            --v56;
          }

          while (v56);

          v53 = v130;
          v59 = v131;
          a8 = v116;
        }

        else
        {

          v59 = MEMORY[0x1E69E7CC0];
          v34 = v127;
        }

        v60 = v128;
        v61 = v115;
        v62 = swift_allocObject();
        *(v62 + 16) = v59;
        v16 = v61;
        *(v60 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v62;

        v15 = v112;
        v24 = v124;
        v39 = v126;
      }

      else
      {
        v24 = v124;
        v39 = v41;
        v53 = v130;
      }

      v38 = v125;
      v35 = v119;
    }

    else
    {
      v24 = v124;
      v53 = v130;
    }

    v63 = a4 & 1;
    v64 = a4;
    v37 = v123;
    sub_1AF3F4928(1, v123, v63, v34, v38, v24, v39, v122, a8, v15, v35);
    if (v53)
    {
      goto LABEL_38;
    }

    v36 = v64;
    v119 = v35;
    v115 = v16;
    v65 = v128;

    v116 = a8;
    v67 = sub_1AF3D76CC(v66, a8, v15);
    v130 = 0;

    v65[2] = v67;

LABEL_35:
    v114 = v36;
    v68 = v36 & 1;
    v69 = swift_allocObject();
    v71 = v125;
    v70 = v126;
    v72 = v122;
    *(v69 + 16) = v126;
    *(v69 + 24) = v72;

    sub_1AF4410E4(v37, sub_1AF4410A8);

    v73 = swift_allocObject();
    LODWORD(v113) = v129 & 1;
    *(v73 + 16) = v129 & 1;
    *(v73 + 24) = v37;
    *(v73 + 32) = v68;
    *(v73 + 40) = v15;
    *(v73 + 48) = v71;
    *(v73 + 56) = v24;
    *(v73 + 64) = v70;
    *(v73 + 72) = v72;
    v74 = v116;
    v75 = v119;
    *(v73 + 80) = v116;
    *(v73 + 88) = v75;
    v76 = v15;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1AF4471D0;
    *(v77 + 24) = v73;
    *&v131 = v71;
    *(&v131 + 1) = v128;
    v132 = v24;
    v133 = sub_1AF449D48;
    v134 = v77;
    v135 = v75;
    swift_bridgeObjectRetain_n();

    v78 = v130;
    sub_1AF449DC0(&v131, &v136);
    v130 = v78;
    if (v78)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return v24;
    }

    v24 = v136;
    v79 = v76;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v81 = v127;
    sub_1AF3D8F00(v80, v127, sub_1AF634178, sub_1AF6B761C, sub_1AF849498);

    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v131 = *v74;
    *v74 = 0x8000000000000000;
    sub_1AF850FDC(0, v81, v82);
    *v74 = v131;

    if (v129)
    {
LABEL_38:

      return v24;
    }

    v84 = v79;
    v85 = v74;
    v111 = v75;
    v86 = v113;
    v87 = v130;
    sub_1AF3F4928(v113, v123, v114 & 1, v81, v125, v124, v126, v122, v74, v84, v111);
    if (v87)
    {
LABEL_41:

      return v24;
    }

    if (*v24 == _TtC3VFX12SubGraphNode)
    {
      v88 = *(v24 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
      if (v88)
      {
        if (swift_dynamicCastClass())
        {
          v89 = v120;
          v90 = *(v121 + 16);
          v129 = v88;
          v91 = v117;
          v90(v117, v24 + OBJC_IVAR____TtC3VFX4Node_authoringID, v120);
          v90(v118, v91, v89);

          v92 = swift_isUniquelyReferenced_nonNull_native();
          v112 = v84;
          if ((v92 & 1) == 0)
          {
            v124 = sub_1AF4276E0(0, &v124[2]->isa + 1, 1, v124, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v94 = v124[2];
          v93 = v124[3];
          v130 = 0;
          v85 = v116;
          v95 = v121;
          if (v94 >= v93 >> 1)
          {
            v110 = sub_1AF4276E0(v93 > 1, v94 + 1, 1, v124, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            v95 = v121;
            v124 = v110;
          }

          v96 = v120;
          (*(v95 + 8))(v117, v120);
          v97 = v124;
          v124[2] = (v94 + 1);
          (*(v95 + 32))(v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v94, v118, v96);
          v98 = v130;
          v99 = sub_1AF3FC1C0(v126, v122, v86, v123, v114 & 1, v97);
          if (v98)
          {

            goto LABEL_41;
          }

          v101 = v99;
          v102 = v100;

          v103 = *(v102 + 16);
          if (v103)
          {
            v130 = 0;
            *&v131 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v104 = 32;
            do
            {
              if (*(v101 + 16))
              {
                sub_1AF0D3F10(*(v102 + v104));
                if (v105)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v104 += 8;
              --v103;
            }

            while (v103);

            v106 = v131;
          }

          else
          {

            v106 = MEMORY[0x1E69E7CC0];
          }

          v107 = swift_allocObject();
          *(v107 + 16) = v106;
          *(v24 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v107;

          v84 = v112;
        }
      }
    }

    v109 = sub_1AF3D76CC(v108, v85, v84);

    v24[2] = v109;

    return v24;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

char *sub_1AF3E4408(char *a1, int a2, unint64_t a3, int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, char *a10)
{
  v12 = v11;
  v106 = a3;
  v107 = a7;
  v104 = a5;
  LODWORD(v108) = a2;
  v17 = a9;
  v99 = *v10;
  v18 = sub_1AFDFC318();
  v100 = *(v18 - 8);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v28 = *a9;
  if (*(*a9 + 16))
  {
    v29 = sub_1AF0D3F10(a1);
    if (v30)
    {
      v24 = *(*(v28 + 56) + 8 * v29);

      return v24;
    }
  }

  if (!*(*a8 + 16) || (sub_1AF0D3F10(a1), (v31 & 1) == 0))
  {
    v103 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v109 = *a8;
    *a8 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a8 = v109;

    sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
    v95 = a4;
    if (v108)
    {
      v34 = v33;
      if (*a1 == _TtC3VFX12SubGraphNode)
      {
        v35 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_graph];
        if (v35 && (v36 = swift_dynamicCastClass()) != 0)
        {
          v90 = v36;
          v92 = v34;
          v96 = a8;
          v37 = a6;
          v38 = v104;
          v102 = v11;
          v94 = a9;
          v39 = v101;
          v40 = *(v100 + 16);
          v40(v27, &a1[OBJC_IVAR____TtC3VFX4Node_authoringID], v101);
          v40(v24, v27, v39);

          v91 = v35;

          v41 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1AF4276E0(0, v104[2] + 1, 1, v104, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v43 = v41[2];
          v42 = v41[3];
          LOBYTE(a4) = v95;
          v93 = v37;
          if (v43 >= v42 >> 1)
          {
            v41 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v41, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v44 = v100;
          v45 = v101;
          (*(v100 + 8))(v27, v101);
          v41[2] = v43 + 1;
          (*(v44 + 32))(v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v24, v45);
          *&v109 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
          *(&v109 + 1) = v46;
          v47 = v107;
          v48 = v93;
          v49 = v106;
          v50 = v102;
          sub_1AF414A20(v93, v107, 1, v106, a4 & 1, v41, &v109);
          v12 = v50;
          if (v50)
          {

LABEL_16:

            return v24;
          }

          v17 = v94;
          v24 = v104;
          v65 = v47;
          v64 = v49;
          a6 = v48;
          a8 = v96;
          v34 = v92;
        }

        else
        {

          v64 = v106;
          v65 = v107;
          v24 = v104;
          LOBYTE(a4) = v95;
        }
      }

      else
      {

        v64 = v106;
        v65 = v107;
        v24 = v104;
      }

      sub_1AF3F5CE4(1, v64, a4 & 1, a1, v105, v24, a6, v65, a8, v17, v103);
      if (v12)
      {
LABEL_29:

        return v24;
      }

      type metadata accessor for Node(0);
      v92 = v34;
      v69 = swift_dynamicCastMetatype();
      v96 = a8;
      if (v69)
      {

        v71 = sub_1AF3D72E8(v70, a8);
        v102 = 0;

        *(a1 + 2) = v71;
      }

      else
      {
        v102 = 0;
        type metadata accessor for AuthoringNode(0);
      }
    }

    else
    {
      v92 = v33;
      v96 = a8;
      v102 = v11;
    }

    v94 = v17;
    v51 = a4 & 1;
    v52 = swift_allocObject();
    v53 = v107;
    *(v52 + 16) = a6;
    *(v52 + 24) = v53;
    v54 = v105;

    v55 = v17;
    v56 = a6;
    v57 = v106;
    sub_1AF4410E4(v106, sub_1AF4410A8);

    v58 = swift_allocObject();
    LODWORD(v91) = v108 & 1;
    *(v58 + 16) = v108 & 1;
    *(v58 + 24) = v57;
    *(v58 + 32) = v51;
    *(v58 + 40) = v55;
    *(v58 + 48) = v54;
    v59 = v104;
    *(v58 + 56) = v104;
    *(v58 + 64) = v56;
    v93 = v56;
    v60 = v54;
    v61 = v96;
    *(v58 + 72) = v53;
    *(v58 + 80) = v61;
    v24 = v103;
    *(v58 + 88) = v103;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1AF449D74;
    *(v62 + 24) = v58;
    *&v109 = v60;
    *(&v109 + 1) = a1;
    v110 = v59;
    v111 = sub_1AF449D48;
    v112 = v62;
    v113 = v24;
    swift_bridgeObjectRetain_n();

    v63 = v102;
    sub_1AF449DC0(&v109, &v114);
    if (v63)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      v102 = 0;

      v24 = v114;
      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v67 = v94;
      sub_1AF3D9030(v66, a1, sub_1AF6342E4, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84CDCC);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      *&v109 = *v61;
      *v61 = 0x8000000000000000;
      sub_1AF850FDC(0, a1, v68);
      *v61 = v109;

      if ((v108 & 1) == 0)
      {
        v72 = v102;
        sub_1AF3F5CE4(v91, v106, v95 & 1, a1, v105, v59, v93, v107, v61, v67, v103);
        if (!v72)
        {
          if (*a1 == _TtC3VFX12SubGraphNode)
          {
            v74 = v92;
            if (a1)
            {
              if (*&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_graph])
              {
                v75 = swift_dynamicCastClass();
                if (v75)
                {
                  v105 = v75;
                  v92 = v74;
                  v102 = 0;
                  v76 = v101;
                  v77 = *(v100 + 16);
                  v108 = a1;
                  v78 = &a1[OBJC_IVAR____TtC3VFX4Node_authoringID];
                  v79 = v97;
                  v77(v97, v78, v101);
                  v77(v98, v79, v76);

                  v80 = v59;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v80 = sub_1AF4276E0(0, v59[2] + 1, 1, v59, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                  }

                  v82 = v80[2];
                  v81 = v80[3];
                  v83 = v100;
                  if (v82 >= v81 >> 1)
                  {
                    v80 = sub_1AF4276E0(v81 > 1, v82 + 1, 1, v80, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
                  }

                  v84 = v79;
                  v85 = v101;
                  (*(v83 + 8))(v84, v101);
                  v80[2] = v82 + 1;
                  (*(v83 + 32))(v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v82, v98, v85);
                  *&v109 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
                  *(&v109 + 1) = v86;
                  v87 = v102;
                  sub_1AF414A20(v93, v107, v91, v106, v95 & 1, v80, &v109);
                  if (v87)
                  {

                    goto LABEL_16;
                  }

                  a1 = v108;
                }
              }
            }
          }

          type metadata accessor for Node(0);
          if (swift_dynamicCastMetatype())
          {

            v89 = sub_1AF3D72E8(v88, v61);

            *(a1 + 2) = v89;
          }

          else
          {
            type metadata accessor for AuthoringNode(0);
          }

          return v24;
        }
      }
    }

    goto LABEL_29;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3E50BC@<X0>(__objc2_class **a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v121 = a7;
  v119 = a6;
  v115 = a3;
  v116 = a5;
  v118 = a4;
  LODWORD(v154) = a2;
  v117 = v11;
  v111 = *v11;
  v112 = sub_1AFDFC318();
  v16 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v120 = a10;
  v26 = *a10;
  if (*(*a10 + 16))
  {
    v27 = sub_1AF0D3F10(a1);
    if (v28)
    {
      v29 = *(v26 + 56) + 120 * v27;
      v31 = *(v29 + 32);
      v30 = *(v29 + 48);
      v32 = *(v29 + 16);
      v131 = *v29;
      v132 = v32;
      v133 = v31;
      v134 = v30;
      v33 = *(v29 + 64);
      v34 = *(v29 + 80);
      v35 = *(v29 + 96);
      v138 = *(v29 + 112);
      v136 = v34;
      v137 = v35;
      v135 = v33;
      v36 = *v29;
      v37 = *(v29 + 16);
      v38 = *(v29 + 48);
      *(a9 + 32) = *(v29 + 32);
      *(a9 + 48) = v38;
      *a9 = v36;
      *(a9 + 16) = v37;
      v39 = *(v29 + 64);
      v40 = *(v29 + 80);
      v41 = *(v29 + 96);
      *(a9 + 112) = *(v29 + 112);
      *(a9 + 80) = v40;
      *(a9 + 96) = v41;
      *(a9 + 64) = v39;
      return sub_1AF0D8094(&v131, &v123, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
    }
  }

  if (*(*a8 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v43)
    {
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }
  }

  v113 = a11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = *a8;
  *a8 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a8 = v131;

  sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
  v107 = v45;
  v106 = v16;
  if (v154)
  {
    if (*a1 == _TtC3VFX12SubGraphNode)
    {
      v46 = v121;
      if (*(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
      {
        v105 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        v47 = swift_dynamicCastClass();
        if (v47)
        {
          v104 = v47;
          v114 = v12;
          v48 = *(v16 + 16);
          v49 = v112;
          v48(v25, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v112);
          v48(v22, v25, v49);

          v50 = v116;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1AF4276E0(0, v116[2] + 1, 1, v116, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v52 = v50[2];
          v51 = v50[3];
          v103 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v53 = sub_1AF4276E0(v51 > 1, v52 + 1, 1, v50, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          else
          {
            v53 = v50;
          }

          v54 = v106;
          v55 = v25;
          v56 = v112;
          (*(v106 + 8))(v55, v112);
          v53[2] = v103;
          (*(v54 + 32))(v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, v22, v56);
          *&v131 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
          *(&v131 + 1) = v57;
          v58 = v121;
          v59 = v114;
          v60 = v115;
          sub_1AF416014(v119, v121, 1, v115, v118 & 1, v53, &v131);
          v114 = v59;
          if (v59)
          {
          }

          v46 = v58;
          v12 = v114;
          goto LABEL_24;
        }
      }
    }

    else
    {

      v46 = v121;
    }

    v60 = v115;
LABEL_24:
    v64 = v118;
    sub_1AF3F760C(1, v60, v118 & 1, a1, v117, v116, v119, v46, a8, v120, v113);
    if (v12)
    {
    }

    v61 = v60;
    v105 = a9;
    type metadata accessor for Node(0);
    v80 = swift_dynamicCastMetatype();
    v110 = a8;
    if (v80)
    {

      v62 = v120;
      v82 = sub_1AF3D72E8(v81, a8);
      v114 = 0;

      a1[2] = v82;
      v64 = v118;

      v63 = a1;
    }

    else
    {
      v114 = 0;
      type metadata accessor for AuthoringNode(0);
      v63 = a1;
      v62 = v120;
    }

    goto LABEL_17;
  }

  v61 = v115;
  v110 = a8;
  v105 = a9;
  v114 = v12;

  v62 = v120;
  v63 = a1;
  v64 = v118;
LABEL_17:
  LODWORD(v115) = v64 & 1;
  v65 = swift_allocObject();
  v66 = v62;
  v67 = v119;
  v68 = v121;
  *(v65 + 16) = v119;
  *(v65 + 24) = v68;
  v69 = v117;

  sub_1AF4410E4(v61, sub_1AF4410A8);

  v70 = swift_allocObject();
  LODWORD(v104) = v154 & 1;
  *(v70 + 16) = v154 & 1;
  *(v70 + 24) = v61;
  *(v70 + 32) = v115;
  *(v70 + 40) = v66;
  *(v70 + 48) = v69;
  v71 = v116;
  *(v70 + 56) = v116;
  *(v70 + 64) = v67;
  v72 = v110;
  *(v70 + 72) = v68;
  *(v70 + 80) = v72;
  v73 = v113;
  *(v70 + 88) = v113;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1AF449D70;
  *(v74 + 24) = v70;
  *&v139 = v69;
  *(&v139 + 1) = v63;
  v140 = v71;
  v141 = sub_1AF449D50;
  v142 = v74;
  v143 = v73;
  swift_bridgeObjectRetain_n();

  v75 = v114;
  sub_1AF449CCC(&v139);
  if (v75)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
  }

  v114 = 0;

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v135 = v148;
  v136 = v149;
  v137 = v150;
  v138 = v151;
  v131 = v144;
  v132 = v145;
  v133 = v146;
  v134 = v147;
  v152[0] = v144;
  v152[1] = v145;
  v152[2] = v146;
  v152[3] = v147;
  v152[4] = v148;
  v152[5] = v149;
  v152[6] = v150;
  v153 = v151;
  sub_1AF0D8094(&v131, &v123, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
  v76 = v120;
  sub_1AF3D9194(v152, v63);
  v77 = v110;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  *&v123 = *v77;
  *v77 = 0x8000000000000000;
  sub_1AF850FDC(0, v63, v78);
  *v77 = v123;

  if (v154)
  {

    v79 = v105;
  }

  else
  {
    v83 = v114;
    sub_1AF3F760C(v104, v61, v118 & 1, v63, v117, v71, v119, v121, v77, v76, v113);
    v79 = v105;
    if (v83)
    {
      v127 = v148;
      v128 = v149;
      v129 = v150;
      v130 = v151;
      v123 = v144;
      v124 = v145;
      v125 = v146;
      v126 = v147;
      sub_1AF444058(&v123, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
    }

    if (*v63 == _TtC3VFX12SubGraphNode)
    {
      if (v63)
      {
        v84 = *(v63 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
        if (v84)
        {
          v85 = swift_dynamicCastClass();
          if (v85)
          {
            v117 = v85;
            v114 = 0;
            v86 = *(v106 + 16);
            v87 = v108;
            v154 = v84;
            v88 = v112;
            v86(v108, v63 + OBJC_IVAR____TtC3VFX4Node_authoringID, v112);
            v86(v109, v87, v88);
            v89 = v116;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = sub_1AF4276E0(0, v89[2] + 1, 1, v89, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v91 = v89[2];
            v90 = v89[3];
            v92 = v89;
            v116 = (v91 + 1);
            if (v91 >= v90 >> 1)
            {
              v92 = sub_1AF4276E0(v90 > 1, v91 + 1, 1, v89, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v93 = v106;
            v94 = v112;
            (*(v106 + 8))(v108, v112);
            v92[2] = v116;
            (*(v93 + 32))(v92 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v91, v109, v94);
            v122[0] = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
            v122[1] = v95;
            v96 = v114;
            sub_1AF416014(v119, v121, v104, v61, v118 & 1, v92, v122);
            if (v96)
            {

              v127 = v148;
              v128 = v149;
              v129 = v150;
              v130 = v151;
              v123 = v144;
              v124 = v145;
              v125 = v146;
              v126 = v147;
              sub_1AF444058(&v123, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
            }
          }
        }
      }
    }

    type metadata accessor for Node(0);
    if (swift_dynamicCastMetatype())
    {

      v98 = sub_1AF3D72E8(v97, v77);

      v63[2] = v98;
    }

    else
    {
      type metadata accessor for AuthoringNode(0);
    }
  }

  v99 = v149;
  *(v79 + 64) = v148;
  *(v79 + 80) = v99;
  *(v79 + 96) = v150;
  *(v79 + 112) = v151;
  v100 = v145;
  *v79 = v144;
  *(v79 + 16) = v100;
  v101 = v147;
  *(v79 + 32) = v146;
  *(v79 + 48) = v101;
  return result;
}

__objc2_class **sub_1AF3E5F1C(__objc2_class **a1, int a2, uint64_t a3, int a4, __objc2_class **a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v150 = a3;
  v151 = a7;
  LODWORD(v152) = a2;
  v142 = *v10;
  v16 = sub_1AFDFC318();
  v143 = *(v16 - 8);
  v144 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v136 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v136 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v136 - v24;
  v26 = *a9;
  if (*(*a9 + 16))
  {
    v27 = sub_1AF0D3F10(a1);
    if (v28)
    {
      return *(*(v26 + 56) + 8 * v27);
    }
  }

  v153 = a1;
  if (!*(*a8 + 16) || (sub_1AF0D3F10(v153), (v30 & 1) == 0))
  {
    v146 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v156 = *a8;
    *a8 = 0x8000000000000000;
    v29 = v153;
    sub_1AF850FDC(1, v153, isUniquelyReferenced_nonNull_native);
    *a8 = v156;

    v32 = type metadata accessor for AuthoringNode(0);
    v162 = v29;
    v147 = a9;
    v140 = v32;
    if ((a4 & 1) != 0 && v32 == MEMORY[0x1E69E6530])
    {
      cache = (*v29)[7].cache;

      v29 = cache(1);
      v162 = v29;
    }

    else
    {
    }

    v34 = a10;
    v148 = a6;
    v145 = a10;
    if (v152)
    {
      v35 = v147;
      v36 = v154;
      if (*v29 == _TtC3VFX21AuthoringSubGraphNode)
      {
        v37 = *(v29 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
        v38 = swift_dynamicCastClass();
        if (v38)
        {
          v136 = v38;
          v39 = *(v143 + 16);
          v40 = v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v41 = v144;
          v39(v25, v40, v144);
          v39(v22, v25, v41);

          v29 = v146;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1AF4276E0(0, &v146[2]->isa + 1, 1, v146, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v43 = v29[2];
          v42 = v29[3];
          v137 = v37;
          if (v43 >= v42 >> 1)
          {
            v29 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v29, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v44 = v143;
          v45 = v25;
          v46 = v144;
          (*(v143 + 8))(v45, v144);
          v29[2] = (v43 + 1);
          (*(v44 + 32))(v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v22, v46);
          a6 = v148;
          v47 = v154;
          v48 = sub_1AF3FC510(v148, v151, 1, v150, a4 & 1, v29, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
          if (v47)
          {
            goto LABEL_18;
          }

          v97 = v48;
          v98 = v49;
          v99 = 0;
          v100 = MEMORY[0x1E69E6530];

          if (v140 == v100)
          {
            v104 = *(v98 + 16);
            if (v104)
            {
              *&v156 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v105 = 32;
              v154 = 0;
              do
              {
                v106 = v97[2];
                if (v106)
                {
                  v107 = sub_1AF0D3F10(*(v98 + v105));
                  if (v108)
                  {
                    v106 = *(v97[7] + 8 * v107);
                  }

                  else
                  {
                    v106 = 0;
                  }
                }

                v155 = v106;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v105 += 8;
                --v104;
                v99 = v154;
                a6 = v148;
              }

              while (v104);

              v109 = v156;
            }

            else
            {

              v109 = MEMORY[0x1E69E7CC0];
            }

            v110 = v162;
            v111 = swift_allocObject();
            v112 = MEMORY[0x1E69E7CC0];
            v111->cache = 0;
            v111->vtable = v112;
            v111->info = 0;
            v111[1].isa = 0;

            v111[1].superclass = sub_1AF42B820(v112, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v111->vtable = v109;

            v29 = *(v110 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
            *(v110 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v111;

            v101 = v146;
            v35 = v147;
            v102 = v149;
            v103 = v153;
          }

          else
          {

            v101 = v146;
            v35 = v147;
            v102 = v149;
            v103 = v153;
            v29 = v137;
          }

          v65 = v101;
          v66 = v151;
          v67 = v102;
          v68 = v103;
          v36 = v99;
        }

        else
        {
          v65 = v146;
          v66 = v151;
          v67 = v149;
          v68 = v153;
        }

        v34 = v145;
      }

      else
      {
        v65 = v146;
        v66 = v151;
        v67 = v149;
        v68 = v153;
      }

      v135 = v35;
      v113 = v150;
      sub_1AF3F90D4(1, v150, a4 & 1, v68, v67, v65, a6, v66, a8, v135, v34);
      if (v36)
      {
        goto LABEL_58;
      }

      v154 = 0;
      v50 = v113;
      type metadata accessor for Node(0);
      v115 = swift_dynamicCastMetatype();
      v29 = v162;
      v141 = a8;
      if (v115)
      {
        v116 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

        v118 = v154;
        v119 = sub_1AF3D6B1C(v117, a8, v147, sub_1AF3FE1F8);
        v154 = v118;

        *(v29 + v116) = v119;
      }
    }

    else
    {
      v50 = v150;
      v141 = a8;
    }

    v51 = a4 & 1;
    v52 = swift_allocObject();
    LODWORD(v137) = a4;
    v53 = v148;
    v54 = v149;
    v55 = v151;
    *(v52 + 16) = v148;
    *(v52 + 24) = v55;

    v56 = v50;
    sub_1AF4410E4(v50, sub_1AF4410A8);

    v57 = swift_allocObject();
    v58 = v152 & 1;
    *(v57 + 16) = v58;
    *(v57 + 24) = v56;
    *(v57 + 32) = v51;
    v60 = v146;
    v59 = v147;
    *(v57 + 40) = v147;
    *(v57 + 48) = v54;
    *(v57 + 56) = v60;
    *(v57 + 64) = v53;
    v61 = v141;
    *(v57 + 72) = v55;
    *(v57 + 80) = v61;
    v62 = v145;
    *(v57 + 88) = v145;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1AF441214;
    *(v63 + 24) = v57;
    *&v156 = v54;
    *(&v156 + 1) = v29;
    v157 = v60;
    v158 = sub_1AF44122C;
    v159 = v63;
    v160 = v62;

    v64 = v154;
    sub_1AF4411F8(&v156, &v161);
    if (v64)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_58;
    }

    LODWORD(v136) = v58;
    v154 = 0;

    v29 = v161;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    sub_1AF6345D0(v29, v153);
    v69 = v141;
    v70 = v150;
    v71 = v148;
    v72 = v137;
    v73 = v59;
    if (v74)
    {
      v75 = *(v59 + 8);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *(v59 + 8) = v75;
      if ((v76 & 1) == 0)
      {
        v75 = sub_1AF422330(0, *(v75 + 2) + 1, 1, v75, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        *(v59 + 8) = v75;
      }

      v78 = *(v75 + 2);
      v77 = *(v75 + 3);
      if (v78 >= v77 >> 1)
      {
        v75 = sub_1AF422330(v77 > 1, v78 + 1, 1, v75, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v75 + 2) = v78 + 1;
      *&v75[8 * v78 + 32] = v153;
      v73 = v147;
      v147[1] = v75;
    }

    v79 = v136;
    if (v140 == MEMORY[0x1E69E6530])
    {
      *&v156 = v29;

      swift_dynamicCast();
    }

    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v156 = *v69;
    *v69 = 0x8000000000000000;
    v81 = v153;
    sub_1AF850FDC(0, v153, v80);
    *v69 = v156;

    v82 = v154;
    if (v152)
    {
      goto LABEL_58;
    }

    sub_1AF3F90D4(v79, v70, v72 & 1, v81, v149, v146, v71, v151, v69, v73, v145);
    if (v82)
    {
      goto LABEL_58;
    }

    v83 = v162;
    if (*v162 == _TtC3VFX21AuthoringSubGraphNode)
    {
      v84 = *(v162 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
      if (swift_dynamicCastClass())
      {
        v154 = 0;
        v85 = v143;
        v153 = v84;
        v86 = *(v143 + 16);
        v87 = v83 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
        v88 = v138;
        v89 = v144;
        v86(v138, v87, v144);
        v86(v139, v88, v89);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AF4276E0(0, &v146[2]->isa + 1, 1, v146, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v91 = v146[2];
        v90 = v146[3];
        if (v91 >= v90 >> 1)
        {
          v146 = sub_1AF4276E0(v90 > 1, v91 + 1, 1, v146, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v92 = v144;
        (*(v85 + 8))(v138, v144);
        v93 = v146;
        v146[2] = (v91 + 1);
        (*(v85 + 32))(v93 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v91, v139, v92);
        v94 = v154;
        v95 = sub_1AF3FC510(v71, v151, v136, v150, v137 & 1, v93, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
        if (v94)
        {
LABEL_18:

LABEL_58:

          return v29;
        }

        v120 = v95;
        v121 = v96;

        if (v140 == MEMORY[0x1E69E6530])
        {
          v154 = 0;
          v122 = *(v121 + 16);
          if (v122)
          {
            v152 = v121;
            *&v156 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v123 = 32;
            do
            {
              v124 = v120[2];
              if (v124)
              {
                v125 = sub_1AF0D3F10(*(v152 + v123));
                if (v126)
                {
                  v124 = *(v120[7] + 8 * v125);
                }

                else
                {
                  v124 = 0;
                }
              }

              v155 = v124;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v123 += 8;
              --v122;
            }

            while (v122);

            v127 = v156;
          }

          else
          {

            v127 = MEMORY[0x1E69E7CC0];
          }

          v128 = v162;
          v129 = swift_allocObject();
          v129->cache = 0;
          v130 = MEMORY[0x1E69E7CC0];
          v129->vtable = MEMORY[0x1E69E7CC0];
          v129->info = 0;
          v129[1].isa = 0;

          v129[1].superclass = sub_1AF42B820(v130, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v129->vtable = v127;

          *(v128 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v129;
        }

        else
        {
        }

        v73 = v147;
      }
    }

    type metadata accessor for Node(0);
    if (swift_dynamicCastMetatype())
    {
      v131 = v162;
      v132 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v134 = sub_1AF3D6B1C(v133, v69, v73, sub_1AF3FE1F8);

      *(v131 + v132) = v134;
    }

    goto LABEL_58;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

__objc2_class **sub_1AF3E707C(__objc2_class **a1, int a2, uint64_t a3, int a4, __objc2_class **a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  v12 = v11;
  v135 = a3;
  v136 = a7;
  v134 = a6;
  v137 = a2;
  v138 = a4;
  v16 = a9;
  v17 = *v10;
  v18 = sub_1AFDFC318();
  v19 = *(v18 - 8);
  v127 = v18;
  v128 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v117 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v117 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v117 - v27;
  v29 = *a9;
  if (*(*a9 + 16))
  {
    v30 = sub_1AF0D3F10(a1);
    if (v31)
    {
      return *(*(v29 + 56) + 8 * v30);
    }
  }

  v33 = *(*a8 + 16);
  v132 = a5;
  if (!v33 || (sub_1AF0D3F10(a1), (v34 & 1) == 0))
  {
    v122 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a8;
    *a8 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a8 = v140;

    v131 = type metadata accessor for Node(0);
    v146 = a1;

    v32 = a1;
    v36 = v138;
    if (v138)
    {
      v32 = a1;
      if (v131 == MEMORY[0x1E69E6530])
      {
        v32 = sub_1AF96FB80(1);
        v146 = v32;

        v36 = v138;
      }
    }

    v37 = a10;
    v130 = a10;
    if ((v137 & 1) == 0)
    {
      v121 = a1;
      v129 = a8;
      v125 = v11;
      v126 = a9;
      v38 = v136;
      goto LABEL_30;
    }

    v38 = v136;
    if (*v32 == _TtC3VFX12SubGraphNode)
    {
      v39 = *(v32 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
      if (v39)
      {
        v40 = swift_dynamicCastClass();
        if (v40)
        {
          v120 = v40;
          v125 = v11;
          v41 = *(v128 + 16);
          v42 = v32 + OBJC_IVAR____TtC3VFX4Node_authoringID;
          v43 = v127;
          v41(v28, v42, v127);
          v41(v25, v28, v43);
          v119 = v39;

          v32 = v132;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1AF4276E0(0, &v132[2]->isa + 1, 1, v132, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v45 = v32[2];
          v44 = v32[3];
          v118 = (v45 + 1);
          if (v45 >= v44 >> 1)
          {
            v32 = sub_1AF4276E0(v44 > 1, v45 + 1, 1, v32, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v37 = v130;
          v46 = v128;
          v47 = v28;
          v48 = v127;
          (*(v128 + 8))(v47, v127);
          v32[2] = v118;
          (*(v46 + 32))(v32 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, v25, v48);
          v49 = v125;
          v50 = sub_1AF3FC510(v134, v136, 1, v135, v138 & 1, v32, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
          if (v49)
          {
            goto LABEL_18;
          }

          v94 = v50;
          v120 = v51;
          v129 = a8;
          v125 = 0;
          v126 = a9;
          v95 = MEMORY[0x1E69E6530];

          if (v131 == v95)
          {
            v32 = *(v120 + 16);
            if (v32)
            {
              *&v140 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v96 = 32;
              v97 = v94;
              do
              {
                v98 = v94[2];
                if (v98)
                {
                  v99 = sub_1AF0D3F10(*(v120 + v96));
                  if (v100)
                  {
                    v98 = *(v94[7] + 8 * v99);
                  }

                  else
                  {
                    v98 = 0;
                  }
                }

                v139 = v98;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v96 += 8;
                v32 = (v32 - 1);
                v94 = v97;
              }

              while (v32);

              v101 = v140;
            }

            else
            {

              v101 = MEMORY[0x1E69E7CC0];
            }

            v102 = v146;
            v103 = swift_allocObject();
            *(v103 + 16) = v101;
            *(v102 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v103;
          }

          else
          {
          }

          v12 = v125;
          v16 = v126;
          a8 = v129;
          v52 = v132;
          v53 = v135;
          v38 = v136;
          v54 = v134;
          v36 = v138;
          goto LABEL_21;
        }

        v52 = v132;
        v54 = v134;
        v53 = v135;
        v36 = v138;
      }

      else
      {
        v52 = v132;
        v54 = v134;
        v53 = v135;
      }

      v55 = v133;
      v37 = v130;
      goto LABEL_25;
    }

    v52 = v132;
    v54 = v134;
    v53 = v135;
LABEL_21:
    v55 = v133;
LABEL_25:
    sub_1AF3FA610(1, v53, v36 & 1, a1, v55, v52, v54, v38, a8, v16, v37);
    if (v12)
    {
LABEL_33:

      return v32;
    }

    v56 = swift_dynamicCastMetatype();
    v129 = a8;
    v126 = v16;
    v121 = a1;
    if (v56)
    {
      v32 = v146;

      v58 = sub_1AF3D7890(v57, a8, v16);
      v125 = 0;

      v32[2] = v58;

      v38 = v136;
    }

    else
    {
      v125 = 0;
      type metadata accessor for AuthoringNode(0);
      v32 = v146;
    }

    v36 = v138;
LABEL_30:
    v59 = v36 & 1;
    v60 = swift_allocObject();
    v62 = v133;
    v61 = v134;
    *(v60 + 16) = v134;
    *(v60 + 24) = v38;

    v63 = v135;
    sub_1AF4410E4(v135, sub_1AF4410A8);

    v64 = swift_allocObject();
    v65 = v137 & 1;
    *(v64 + 16) = v65;
    *(v64 + 24) = v63;
    *(v64 + 32) = v59;
    *(v64 + 40) = v126;
    *(v64 + 48) = v62;
    v66 = v132;
    *(v64 + 56) = v132;
    *(v64 + 64) = v61;
    v67 = v129;
    v68 = v130;
    *(v64 + 72) = v38;
    *(v64 + 80) = v67;
    *(v64 + 88) = v68;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1AF441F14;
    *(v69 + 24) = v64;
    *&v140 = v62;
    *(&v140 + 1) = v32;
    v141 = v66;
    v142 = sub_1AF449D48;
    v143 = v69;
    v144 = v68;

    v70 = v125;
    sub_1AF449DC0(&v140, &v145);
    if (v70)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      goto LABEL_32;
    }

    LODWORD(v120) = v65;

    v32 = v145;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v72 = v121;
    v73 = v126;
    sub_1AF6345D0(v32, v121);
    if (v74)
    {
      v75 = v73[1];
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v73[1] = v75;
      if ((v76 & 1) == 0)
      {
        v75 = sub_1AF422330(0, *(v75 + 2) + 1, 1, v75, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v73[1] = v75;
      }

      v78 = *(v75 + 2);
      v77 = *(v75 + 3);
      if (v78 >= v77 >> 1)
      {
        v75 = sub_1AF422330(v77 > 1, v78 + 1, 1, v75, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v75 + 2) = v78 + 1;
      *&v75[8 * v78 + 32] = v72;
      v73[1] = v75;
    }

    if (v131 == MEMORY[0x1E69E6530])
    {
      *&v140 = v32;

      swift_dynamicCast();
    }

    v79 = v129;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *v79;
    *v79 = 0x8000000000000000;
    sub_1AF850FDC(0, v72, v80);
    *v79 = v140;

    if (v137)
    {
      goto LABEL_33;
    }

    sub_1AF3FA610(v120, v135, v138 & 1, v72, v133, v132, v134, v136, v79, v73, v68);
    v81 = v146;
    if (*v146 == _TtC3VFX12SubGraphNode)
    {
      v82 = *(v146 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
      if (v82)
      {
        if (swift_dynamicCastClass())
        {
          v125 = 0;
          v83 = v127;
          v84 = *(v128 + 16);
          v85 = v81 + OBJC_IVAR____TtC3VFX4Node_authoringID;
          v86 = v123;
          v84(v123, v85, v127);
          v84(v124, v86, v83);

          v119 = v82;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_1AF4276E0(0, &v132[2]->isa + 1, 1, v132, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v88 = v132[2];
          v87 = v132[3];
          v89 = v128;
          if (v88 >= v87 >> 1)
          {
            v132 = sub_1AF4276E0(v87 > 1, v88 + 1, 1, v132, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          (*(v89 + 8))(v123, v83);
          v90 = v132;
          v132[2] = (v88 + 1);
          (*(v89 + 32))(v90 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88, v124, v83);
          v91 = v125;
          v92 = sub_1AF3FC510(v134, v136, v120, v135, v138 & 1, v90, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
          if (v91)
          {
LABEL_18:

LABEL_32:

            goto LABEL_33;
          }

          v104 = v92;
          v105 = v93;

          if (v131 == MEMORY[0x1E69E6530])
          {
            v125 = 0;
            v126 = v73;
            v106 = *(v105 + 16);
            if (v106)
            {
              *&v140 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v107 = 32;
              do
              {
                v108 = v104[2];
                if (v108)
                {
                  v109 = sub_1AF0D3F10(*(v105 + v107));
                  if (v110)
                  {
                    v108 = *(v104[7] + 8 * v109);
                  }

                  else
                  {
                    v108 = 0;
                  }
                }

                v139 = v108;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v107 += 8;
                --v106;
              }

              while (v106);

              v111 = v140;
            }

            else
            {

              v111 = MEMORY[0x1E69E7CC0];
            }

            v112 = v146;
            v113 = swift_allocObject();
            *(v113 + 16) = v111;
            *(v112 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v113;

            v73 = v126;
          }

          else
          {
          }
        }
      }
    }

    if (swift_dynamicCastMetatype())
    {
      v114 = v146;

      v116 = sub_1AF3D7890(v115, v129, v73);

      v114[2] = v116;
    }

    else
    {
      type metadata accessor for AuthoringNode(0);
    }

    goto LABEL_33;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}