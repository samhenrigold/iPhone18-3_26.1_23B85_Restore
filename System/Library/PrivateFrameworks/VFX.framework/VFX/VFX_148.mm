uint64_t vfx_script_debug_log(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = sub_1AFDFD0E8();
  v9 = v8;
  v10 = sub_1AFDFD0E8();
  v12 = v11;
  sub_1AFADAE08(a1, v29);
  v13 = v30;
  v14 = v31;
  v15 = sub_1AF67CACC(&type metadata for GraphDebuggingComponent, &off_1F253B628, v31);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    *&v26[-48] = v29;
    *&v26[-40] = v7;
    *&v26[-32] = v9;
    *&v26[-24] = v10;
    *&v26[-16] = v12;
    sub_1AFC41560(v14, sub_1AFC4B35C);
  }

  else
  {
    if (*(v13 + 56))
    {
    }

    else
    {
      sub_1AF3CF34C(v14, v6);
      v16 = type metadata accessor for GraphScript(0);
      if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
      {
        sub_1AFC4AF60(v6, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
        v17 = 0;
      }

      else
      {
        v17 = v6[40];
        sub_1AFC4B264(v6, type metadata accessor for GraphScript);
      }

      LOBYTE(v27) = v17;
      v18 = sub_1AFDFCF88();
      v20 = v19;
      v27 = v7;
      v28 = v9;
      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v18, v20);

      v21 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v10, v12);

      v22 = v27;
      v23 = v28;
      v24 = sub_1AFDFDA28();
      v27 = 0;
      (*(*v21 + 88))(v24, &v27, v22, v23);
    }
  }

  return sub_1AFABB5D8(v29);
}

void sub_1AFC48860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36[-1] - v13;
  sub_1AF3CF34C(*(a2 + 24), &v36[-1] - v13);
  v15 = type metadata accessor for GraphScript(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1AFC4AF60(v14, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
    v16 = 0;
  }

  else
  {
    v16 = v14[40];
    sub_1AFC4B264(v14, type metadata accessor for GraphScript);
  }

  LOBYTE(v36[0]) = v16;
  v17 = sub_1AFDFCF88();
  LOBYTE(v41) = 1;
  v36[0] = a3;
  v36[1] = a4;
  v36[2] = v17;
  v36[3] = v18;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = 1;
  v19 = *(*(a1 + 8) + 16);

  if (!v19 || (sub_1AF419C3C(v36), (v20 & 1) == 0))
  {
    sub_1AFC4B214(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1AFE431C0;
    *(v29 + 32) = a5;
    *(v29 + 40) = a6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a1 + 8);
    sub_1AF859370(v29, v36, isUniquelyReferenced_nonNull_native);
    sub_1AF6B74FC(v36);
LABEL_11:
    *(a1 + 8) = v41;
    return;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(a1 + 8);
  v22 = v41;
  v24 = sub_1AF419C3C(v36);
  v25 = v23;
  v26 = *(v22 + 16) + ((v23 & 1) == 0);
  if (*(v22 + 24) >= v26)
  {
    if (v21)
    {
      if (v23)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1AF8502C0();
      if (v25)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v31 = 0;
    goto LABEL_17;
  }

  sub_1AF8421B0(v26, v21);
  v27 = sub_1AF419C3C(v36);
  if ((v25 & 1) == (v28 & 1))
  {
    v24 = v27;
    if ((v25 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v31 = *(*(v41 + 56) + 8 * v24);
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AF420554(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AF420554(v32 > 1, v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[16 * v33];
    *(v34 + 4) = a5;
    *(v34 + 5) = a6;
    if (v25)
    {

      sub_1AF6B74FC(v36);
      *(*(v41 + 56) + 8 * v24) = v31;
    }

    else
    {
      sub_1AF85B954();
    }

    goto LABEL_11;
  }

  sub_1AFDFF1A8();
  __break(1u);
}

uint64_t vfx_script_debug_log_value(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AFDFD0E8();
  v13 = v12;
  v14 = sub_1AFDFD0E8();
  v16 = v15;
  sub_1AFADAE08(a1, v38);
  if (a4 > 0x3A)
  {
  }

  else
  {
    v17 = v39;
    v18 = &unk_1F24F5668 + 40 * a4;
    v19 = *(v18 + 3);
    v41[0] = *(v18 + 2);
    v41[1] = v19;
    v42 = *(v18 + 8);
    sub_1AF444F60(v41, &v35);
    v20 = sub_1AF80CC24(v41);
    sub_1AF444FBC(v41);
    sub_1AF7FF23C(a5, v20, v37);
    sub_1AF449D40(v37, &v35);
    v21 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v21 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      *&v37[0] = 0;
      *(&v37[0] + 1) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](v14, v16);

      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    }

    else
    {

      *&v37[0] = 0;
      *(&v37[0] + 1) = 0xE000000000000000;
    }

    sub_1AF441150(&v35, v36);
    sub_1AFDFEDD8();
    v22 = v37[0];
    v23 = v40;
    v24 = sub_1AF67CACC(&type metadata for GraphDebuggingComponent, &off_1F253B628, v40);
    if (v24)
    {
      MEMORY[0x1EEE9AC00](v24);
      *(&v34 - 6) = v38;
      *(&v34 - 5) = v11;
      *(&v34 - 4) = v13;
      *(&v34 - 3) = v22;
      sub_1AFC41560(v23, sub_1AFC4B35C);
    }

    else
    {
      if (*(v17 + 56))
      {
      }

      else
      {
        sub_1AF3CF34C(v23, v10);
        v25 = type metadata accessor for GraphScript(0);
        if ((*(*(v25 - 8) + 48))(v10, 1, v25) == 1)
        {
          sub_1AFC4AF60(v10, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
          v26 = 0;
        }

        else
        {
          v26 = v10[40];
          sub_1AFC4B264(v10, type metadata accessor for GraphScript);
        }

        LOBYTE(v37[0]) = v26;
        v27 = sub_1AFDFCF88();
        v29 = v28;
        v30 = *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
        *&v37[0] = v11;
        *(&v37[0] + 1) = v13;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v27, v29);

        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v22, *(&v22 + 1));

        v31 = v37[0];
        v32 = sub_1AFDFDA28();
        *&v37[0] = 0;
        (*(*v30 + 88))(v32, v37, v31, *(&v31 + 1));
      }
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v35);
  }

  return sub_1AFABB5D8(v38);
}

uint64_t sub_1AFC4908C(uint64_t result, float a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Opacity)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 4 * result) = a2;
  return result;
}

uint64_t sub_1AFC490D4(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for WorldTransform)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC49124(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for InverseWorldTransform)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC49174(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Orientation)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

uint64_t sub_1AFC491BC(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Position)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

uint64_t sub_1AFC49204(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Children)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 8 * a1) = a2;
}

uint64_t sub_1AFC49284(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for MetalScriptReflection)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 8 * a1) = a2;
}

uint64_t sub_1AFC4973C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v13 = *(v6 + 48);
  sub_1AFC28358(0, a3, a4, a5, a6);
  v15 = (v13 + 32);
  v16 = *(v13 + 16) + 1;
  while (--v16)
  {
    v17 = v15 + 5;
    v18 = *v15;
    v15 += 5;
    if (v18 == v14)
    {
      v16 = *(v17 - 2);
      return sub_1AFC4B12C(a2, *(v6 + 128) + v16 + *(*(v14 - 8) + 72) * a1, a3, a4, a5, a6);
    }
  }

  return sub_1AFC4B12C(a2, *(v6 + 128) + v16 + *(*(v14 - 8) + 72) * a1, a3, a4, a5, a6);
}

uint64_t sub_1AFC49808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for VFXTag)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

uint64_t sub_1AFC4988C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for PropagateDirtiness)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 8 * result) = a2;
  return result;
}

double sub_1AFC498D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureGPURuntime)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1AFC49974(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleColorInit)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 80 * a1;
  *v8 = *a2;
  v10 = *(a2 + 32);
  v9 = *(a2 + 48);
  v11 = *(a2 + 16);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v9;
  sub_1AF4422C8(a2, &v13);
}

uint64_t sub_1AFC49A24(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for PointCacheSpawner)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = *(v3 + 128) + v6 + 12 * result;
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  *(v9 + 9) = BYTE1(a3) & 1;
  *(v9 + 10) = BYTE2(a3) & 1;
  *(v9 + 11) = HIBYTE(a3) & 1;
  return result;
}

uint64_t sub_1AFC49A98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleAngleEvolution)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 40 * a1;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v12;
  *(v8 + 32) = *(a2 + 32);
  v15[0] = *(a2 + 8);
  *(v15 + 9) = *(a2 + 17);
  sub_1AFC4B1A0(v15, &v14, &qword_1EB63AEF0, sub_1AF8C0110, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  return sub_1AF593EF4(v9, v10, v11);
}

uint64_t sub_1AFC49B9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleFlockingSolver)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 112 * a1;
  v9 = *v8;
  v10 = *(v8 + 32);
  v21[1] = *(v8 + 16);
  v21[2] = v10;
  v21[0] = v9;
  v11 = *(v8 + 48);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  *&v22[15] = *(v8 + 95);
  v21[4] = v12;
  *v22 = v13;
  v21[3] = v11;
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  *(v8 + 95) = *(a2 + 95);
  *(v8 + 64) = v15;
  *(v8 + 80) = v16;
  v18 = *(a2 + 16);
  v17 = *(a2 + 32);
  *v8 = *a2;
  *(v8 + 16) = v18;
  *(v8 + 32) = v17;
  *(v8 + 48) = v14;
  sub_1AF443184(a2, &v20);
  return sub_1AF597500(v21);
}

uint64_t sub_1AFC49C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for ParticleOpacityOverLife)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = *(v5 + 128) + v8 + 32 * a1;
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
}

uint64_t sub_1AFC49D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleOpacityEvolution)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = (*(v2 + 128) + v5 + 48 * a1);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v17 = *(a2 + 24);
  v18 = v9;
  v16 = v10;
  *(v8 + 25) = *(a2 + 25);
  v11 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v11;
  v12 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E62F8];
  sub_1AFC4B1A0(&v18, &v15, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8], sub_1AFC4B214);
  sub_1AFC4B1A0(&v17, &v15, &qword_1ED723210, v12, v13, sub_1AFC4B214);
  sub_1AFC4B1A0(&v16, &v15, &qword_1ED723260, &qword_1ED723278, &type metadata for CurveTangents, sub_1AFC4AE3C);
}

uint64_t sub_1AFC49E98(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleOpacityOverVelocity)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 40 * a1;
  v9 = *a2;
  v10 = a2[2];
  v17 = a2[1];
  v18 = v9;
  v16 = v10;
  *(v8 + 32) = *(a2 + 8);
  v11 = *(a2 + 1);
  *v8 = *a2;
  *(v8 + 16) = v11;
  v12 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E62F8];
  sub_1AFC4B1A0(&v18, &v15, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8], sub_1AFC4B214);
  sub_1AFC4B1A0(&v17, &v15, &qword_1ED723210, v12, v13, sub_1AFC4B214);
  sub_1AFC4B1A0(&v16, &v15, &qword_1ED723260, &qword_1ED723278, &type metadata for CurveTangents, sub_1AFC4AE3C);
}

uint64_t sub_1AFC4A004(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleTextureFrameEvolution)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 40 * a1;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v12;
  *(v8 + 32) = *(a2 + 32);
  v15[0] = *(a2 + 8);
  *(v15 + 9) = *(a2 + 17);
  sub_1AFC4B1A0(v15, &v14, &qword_1EB63AEF0, sub_1AF8C0110, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  return sub_1AF593EF4(v9, v10, v11);
}

__n128 sub_1AFC4A108(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for SkinnedMeshBinding)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 80 * a1;
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = result;
  return result;
}

uint64_t sub_1AFC4A16C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Skeleton)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *a2;
  v9 = *(v2 + 128) + v5 + 40 * a1;
  v10 = a2[2];
  v20 = a2[1];
  v21 = v8;
  v19 = v10;
  v11 = a2[3];
  v17 = a2[4];
  v12 = v17;
  v18 = v11;
  v13 = *(a2 + 1);
  *v9 = *a2;
  *(v9 + 16) = v13;
  *(v9 + 32) = v12;
  sub_1AFC4B1A0(&v21, &v16, &unk_1EB643380, type metadata accessor for SkeletonData, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  v14 = MEMORY[0x1E69E62F8];
  sub_1AFC4B1A0(&v20, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, MEMORY[0x1E69E62F8], sub_1AFC4AD78);
  sub_1AFC4B1A0(&v19, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, v14, sub_1AFC4AD78);
  sub_1AFC4B1A0(&v18, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, v14, sub_1AFC4AD78);
  sub_1AFC4B1A0(&v17, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, v14, sub_1AFC4AD78);
}

uint64_t sub_1AFC4A344(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Scale3)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

uint64_t sub_1AFC4A38C(uint64_t result, float a2, float a3, float a4, float a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for PointLight)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + 16 * result);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

__n128 sub_1AFC4A3DC(uint64_t a1, __n128 *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for SpotLight)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = (*(v2 + 128) + v5 + 24 * a1);
  result = *a2;
  *v8 = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1AFC4A438(uint64_t result, float a2, float a3, float a4, float a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for DirectionalLight)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + 16 * result);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC4A488(uint64_t result, float a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for AmbientLight)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 4 * result) = a2;
  return result;
}

uint64_t sub_1AFC4A4D0(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Color)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

__n128 sub_1AFC4A518(uint64_t a1, __n128 *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for OrthographicCamera)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = (*(v2 + 128) + v5 + 20 * a1);
  result = *a2;
  *v8 = *a2;
  v8[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

__n128 sub_1AFC4A574(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for PerspectiveCamera)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 48 * a1;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  result = *(a2 + 32);
  *(v8 + 32) = result;
  return result;
}

__n128 sub_1AFC4A5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ForceField)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 144 * a1;
  v9 = *(a2 + 112);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 112) = v9;
  *(v8 + 124) = *(a2 + 124);
  v10 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v10;
  v11 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v11;
  result = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = result;
  return result;
}

uint64_t sub_1AFC4A644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureClient)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

uint64_t sub_1AFC4A6C8(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for ProjectionMatrix)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC4A718(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
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
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = *(v5 + 128) + v8 + 32 * a1;
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5 & 1;
  *(v11 + 25) = BYTE1(a5) & 1;
  *(v11 + 26) = BYTE2(a5) & 1;
}

uint64_t sub_1AFC4A7DC(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for LastFrameWorldTransform)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC4A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for Name)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

uint64_t sub_1AFC4A8B0(uint64_t result, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for LocalAABB)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 32 * result);
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1AFC4A94C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v10 = *(v6 + 48);
  sub_1AFC28358(0, a4, a5, a6, type metadata accessor for ScriptStateRestoration);
  v12 = (v10 + 32);
  v13 = *(v10 + 16) + 1;
  while (--v13)
  {
    v14 = v12 + 5;
    v15 = *v12;
    v12 += 5;
    if (v15 == v11)
    {
      v13 = *(v14 - 2);
      break;
    }
  }

  v16 = (*(v6 + 128) + v13 + 16 * a1);
  *v16 = a2;
  v16[1] = a3;
}

uint64_t sub_1AFC4AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ScriptsHolder)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = (*(v4 + 128) + v7 + 24 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
}

uint64_t sub_1AFC4ABCC(uint64_t a1, __int128 *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for MaterialRuntime)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = (*(v2 + 128) + v5 + 240 * a1);
  v10 = v8[1];
  v9 = v8[2];
  v33[0] = *v8;
  v33[1] = v10;
  v33[2] = v9;
  v11 = v8[6];
  v13 = v8[3];
  v12 = v8[4];
  v33[5] = v8[5];
  v33[6] = v11;
  v33[3] = v13;
  v33[4] = v12;
  v14 = v8[10];
  v16 = v8[7];
  v15 = v8[8];
  v33[9] = v8[9];
  v33[10] = v14;
  v33[7] = v16;
  v33[8] = v15;
  v17 = v8[14];
  v19 = v8[11];
  v18 = v8[12];
  v33[13] = v8[13];
  v33[14] = v17;
  v33[11] = v19;
  v33[12] = v18;
  v20 = *a2;
  v21 = a2[2];
  v8[1] = a2[1];
  v8[2] = v21;
  *v8 = v20;
  v22 = a2[3];
  v23 = a2[4];
  v24 = a2[6];
  v8[5] = a2[5];
  v8[6] = v24;
  v8[3] = v22;
  v8[4] = v23;
  v25 = a2[7];
  v26 = a2[8];
  v27 = a2[10];
  v8[9] = a2[9];
  v8[10] = v27;
  v8[7] = v25;
  v8[8] = v26;
  v28 = a2[11];
  v29 = a2[12];
  v30 = a2[14];
  v8[13] = a2[13];
  v8[14] = v30;
  v8[11] = v28;
  v8[12] = v29;
  sub_1AF442498(a2, &v32);
  return sub_1AF644CB8(v33);
}

uint64_t sub_1AFC4ACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for VFXParticleCollisionDataComponent)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

void sub_1AFC4AD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AFC4ADDC()
{
  result = qword_1EB632E60;
  if (!qword_1EB632E60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB632E60);
  }

  return result;
}

void sub_1AFC4AE3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  if (!*a2)
  {
    sub_1AFC4B214(255, a3, a4, MEMORY[0x1E69E62F8]);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFC4AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFC4B0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFC4B12C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFC28358(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFC4B1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AFC4B214(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AFC4B264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFC4B2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFC4B378()
{
  sub_1AF378348();
  if (qword_1ED730450 != -1)
  {
    swift_once();
  }

  qword_1ED73B858 = &unk_1F2507948;

  sub_1AFCDB23C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = *v2;
      v2 += 2;
      sub_1AF6DBCAC(v4, v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t VFXInitialize()
{
  if (qword_1ED72FDA8 != -1)
  {
    return swift_once();
  }

  return result;
}

Swift::Void __swiftcall VFXInitialize()()
{
  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AFC4B954(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v5 = result;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v7 = Strong;

        sub_1AF66C3CC(v7, v7, v2, v3, v5, v14);
        sub_1AF44CBE4(v14, &v11);
        if (v12)
        {
          sub_1AF449D40(&v11, v13);
          v8 = sub_1AFC4BE64(v13, *(v2 + 96));
          *&v11 = sub_1AFC4E70C(v8);
          *(&v11 + 1) = v9;
          MEMORY[0x1EEE9AC00](v11);
          sub_1AFC4E068(sub_1AFC4EE68);

          sub_1AF44CB60(v14);
          v10 = v11;
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
          return v10;
        }

        sub_1AF44CB60(v14);

        sub_1AF44CB60(&v11);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFC4BB8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v4 = result;
    v16 = result;
    v17 = a2;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = v2;
      sub_1AF43C9F0(v4, a2);
      v8 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (result)
      {
        result = swift_conformsToProtocol2();
        if (result)
        {
          v9 = result;

          sub_1AFC4E3D4(&v16, v7, v15);
          sub_1AF44CBE4(v15, &v12);
          if (v13)
          {
            v10 = sub_1AF449D40(&v12, v14);
            MEMORY[0x1EEE9AC00](v10);
            v11[2] = v6;
            v11[3] = v14;
            v11[4] = v7;
            v11[5] = v8;
            v11[6] = v9;
            sub_1AFC7BD74(sub_1AFC4EDF8, v11);

            sub_1AF587E7C(v4, a2);
            sub_1AF44CB60(v15);
            sub_1AF439ED8(v16, v17);
            return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
          }

          else
          {

            sub_1AF587E7C(v4, a2);
            sub_1AF44CB60(v15);
            sub_1AF439ED8(v16, v17);
            return sub_1AF44CB60(&v12);
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    return sub_1AF439ED8(v4, a2);
  }

  return result;
}

uint64_t sub_1AFC4BDA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = *(a1 + 40);
  v8 = v7 & 0xFFFFFFFF00000000;
  v9 = *(*(a1 + 160) + 32);
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v11 = sub_1AF6824B0(a2, a3, v10 | v8);
  if (v11)
  {
    sub_1AF6794BC(v11, v9, a2);
  }

  else
  {

    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1AFC4BE64(uint64_t a1, void *a2)
{
  v4 = sub_1AFDFCF78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 1;
  switch(a2)
  {
    case 0uLL:
      sub_1AF0D5A54(a1, v21);
      swift_dynamicCast();
      sub_1AFDFCF58();
      v12 = sub_1AFDFCF08();
      v14 = v13;

      (*(v5 + 8))(v8, v4);
      if (v14 >> 60 == 15)
      {
        return 1;
      }

      v17 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v17 == 2)
        {
          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          sub_1AF587E7C(v12, v14);
          return (v18 - v19 + 1);
        }

        else
        {
          sub_1AF587E7C(v12, v14);
          return 1;
        }
      }

      else if (v17)
      {
        sub_1AF587E7C(v12, v14);
        return (((0xFFFFFFFF00000001 * v12) >> 32) + 1);
      }

      else
      {
        sub_1AF587E7C(v12, v14);
        return BYTE6(v14) + 1;
      }

    case 1uLL:
    case 2uLL:
    case 7uLL:
      return result;
    case 3uLL:
    case 8uLL:
      return 2;
    case 4uLL:
    case 9uLL:
    case 0xCuLL:
      return 4;
    case 5uLL:
    case 6uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xDuLL:
      return 8;
    case 0xEuLL:
    case 0xFuLL:
      return 16;
    case 0x10uLL:
      return 48;
    case 0x11uLL:
      return 64;
    case 0x17uLL:
      return 0;
    case 0x18uLL:
    case 0x19uLL:
      sub_1AF0D5A54(a1, v21);
      sub_1AFC4EE1C();
      if (swift_dynamicCast())
      {
        v10 = v20;
        v11 = [v20 serializedVFXBindingSize];

        return v11;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v15 = sub_1AFDFDA08();
        v21[0] = 1;
        sub_1AF75A4B4(v15, 0xD000000000000021, 0x80000001AFF4BD30, v21, v16);
        return 0;
      }

    default:
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0x206E776F6E6B6E55, 0xED00002065707974, v6);
      v20 = a2;
      sub_1AFDFE458();
      result = sub_1AFDFE518();
      __break(1u);
      return result;
  }
}

void sub_1AFC4C1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0uLL:
      sub_1AF0D5A54(a1, &v18);
      swift_dynamicCast();
      _s3VFX22VFXMemorySerializationC11writeString_2toySS_SvtFZ_0(v22[0], v22[1], a2);

      return;
    case 1uLL:
    case 2uLL:
    case 7uLL:
      sub_1AF0D5A54(a1, &v18);
      swift_dynamicCast();
      *a2 = v22[0];
      return;
    case 3uLL:
    case 8uLL:
      sub_1AF0D5A54(a1, &v18);
      swift_dynamicCast();
      *a2 = v22[0];
      return;
    case 4uLL:
    case 9uLL:
      sub_1AF0D5A54(a1, &v18);
      swift_dynamicCast();
      *a2 = v22[0];
      return;
    case 5uLL:
    case 6uLL:
    case 0xAuLL:
      sub_1AF0D5A54(a1, &v18);
      goto LABEL_8;
    case 0xBuLL:
      sub_1AF0D5A54(a1, &v18);
      goto LABEL_8;
    case 0xCuLL:
      sub_1AF0D5A54(a1, &v18);
      swift_dynamicCast();
      *a2 = v22[0];
      return;
    case 0xDuLL:
      sub_1AF0D5A54(a1, &v18);
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
LABEL_8:
      swift_dynamicCast();
      *a2 = v22[0];
      return;
    case 0xEuLL:
      sub_1AF0D5A54(a1, &v18);
      v9 = &qword_1ED72F740;
      v10 = MEMORY[0x1E69E7450];
      goto LABEL_21;
    case 0xFuLL:
      sub_1AF0D5A54(a1, &v18);
      v9 = &qword_1ED72F6E0;
      v10 = MEMORY[0x1E69E74A8];
LABEL_21:
      sub_1AF87B174(0, v9, v10);
      swift_dynamicCast();
      *a2 = *v22;
      break;
    case 0x10uLL:
      sub_1AF0D5A54(a1, v22);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v11 = v19;
      v12 = v20;
      *a2 = v18;
      *(a2 + 16) = v11;
      *(a2 + 32) = v12;
      break;
    case 0x11uLL:
      sub_1AF0D5A54(a1, v22);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v15 = v19;
      v16 = v20;
      v17 = v21;
      *a2 = v18;
      *(a2 + 16) = v15;
      *(a2 + 32) = v16;
      *(a2 + 48) = v17;
      break;
    case 0x17uLL:
      return;
    case 0x18uLL:
    case 0x19uLL:
      sub_1AF0D5A54(a1, &v18);
      sub_1AFC4EE1C();
      if (swift_dynamicCast())
      {
        v4 = v22[0];
        v5 = [v22[0] serializedVFXBindingData];
        v6 = sub_1AFDFC1B8();
        v8 = v7;

        sub_1AFDFC238();
        sub_1AF439ED8(v6, v8);
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v13 = sub_1AFDFDA08();
        *&v18 = 1;
        sub_1AF75A4B4(v13, 0xD00000000000001ELL, 0x80000001AFF4BD10, &v18, v14);
      }

      break;
    default:
      MEMORY[0x1B2718AE0](0x206E776F6E6B6E55, 0xED00002065707974);
      sub_1AFDFE458();
      sub_1AFDFE518();
      __break(1u);
      break;
  }
}

void sub_1AFC4C7A8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 0:
      v22 = sub_1AFDFCEB8();
      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = 0xE000000000000000;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      if (v23)
      {
        v25 = v23;
      }

      *a3 = v24;
      *(a3 + 8) = v25;
      return;
    case 1:
      v21 = *a1;
      *(a3 + 24) = MEMORY[0x1E69E6370];
      *a3 = v21 & 1;
      return;
    case 2:
      v9 = *a1;
      v10 = MEMORY[0x1E69E7508];
      goto LABEL_28;
    case 3:
      v17 = *a1;
      v18 = MEMORY[0x1E69E75F8];
      goto LABEL_17;
    case 4:
      v7 = *a1;
      v8 = MEMORY[0x1E69E7668];
      goto LABEL_15;
    case 5:
      v13 = *a1;
      v14 = MEMORY[0x1E69E76D8];
      goto LABEL_12;
    case 6:
      v13 = *a1;
      v14 = MEMORY[0x1E69E6530];
      goto LABEL_12;
    case 7:
      v9 = *a1;
      v10 = MEMORY[0x1E69E7230];
LABEL_28:
      *(a3 + 24) = v10;
      *a3 = v9;
      return;
    case 8:
      v17 = *a1;
      v18 = MEMORY[0x1E69E7290];
LABEL_17:
      *(a3 + 24) = v18;
      *a3 = v17;
      return;
    case 9:
      v7 = *a1;
      v8 = MEMORY[0x1E69E72F0];
LABEL_15:
      *(a3 + 24) = v8;
      *a3 = v7;
      return;
    case 10:
      v13 = *a1;
      v14 = MEMORY[0x1E69E7360];
LABEL_12:
      *(a3 + 24) = v14;
      *a3 = v13;
      return;
    case 11:
      v5 = *a1;
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *a3 = v5;
      return;
    case 12:
      v6 = *a1;
      *(a3 + 24) = MEMORY[0x1E69E6448];
      *a3 = v6;
      return;
    case 13:
      v15 = *a1;
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
      *(a3 + 24) = v16;
      *a3 = v15;
      return;
    case 14:
      v35 = *a1;
      v11 = &qword_1ED72F740;
      v12 = MEMORY[0x1E69E7450];
      goto LABEL_30;
    case 15:
      v35 = *a1;
      v11 = &qword_1ED72F6E0;
      v12 = MEMORY[0x1E69E74A8];
LABEL_30:
      sub_1AF87B174(0, v11, v12);
      *(a3 + 24) = v26;
      v27 = swift_allocObject();
      *a3 = v27;
      *(v27 + 16) = v35;
      break;
    case 16:
      v34 = *(a1 + 1);
      v37 = *a1;
      v32 = *(a1 + 2);
      type metadata accessor for simd_float3x3(0);
      *(a3 + 24) = v28;
      v29 = swift_allocObject();
      *a3 = v29;
      v29[1] = v37;
      v29[2] = v34;
      v29[3] = v32;
      break;
    case 17:
      v33 = *(a1 + 1);
      v36 = *a1;
      v30 = *(a1 + 3);
      v31 = *(a1 + 2);
      type metadata accessor for simd_float4x4(0);
      *(a3 + 24) = v19;
      v20 = swift_allocObject();
      *a3 = v20;
      v20[1] = v36;
      v20[2] = v33;
      v20[3] = v31;
      v20[4] = v30;
      break;
    case 23:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      break;
    case 24:
    case 25:
      v4 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];
      *(a3 + 24) = sub_1AFC4EE1C();
      *a3 = v4;
      break;
    default:
      MEMORY[0x1B2718AE0](0x206E776F6E6B6E55, 0xED00002065707974);
      sub_1AFDFE458();
      sub_1AFDFE518();
      __break(1u);
      break;
  }
}

uint64_t sub_1AFC4CB6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 40);
  v9 = v8 & 0xFFFFFFFF00000000;
  v10 = *(*(a3 + 160) + 32);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = sub_1AF6824B0(a4, a5, v11 | v9);
  if (!v12)
  {
  }

  v13 = sub_1AF67A4CC(a2, v12, v10, a4);
  if (v13)
  {
  }

  v15[1] = v15;
  MEMORY[0x1EEE9AC00](v13);
  sub_1AF682600(a4, a5, v11 | v9, sub_1AF702438);
}

void *sub_1AFC4CC98()
{
  swift_weakDestroy();

  return v0;
}

double sub_1AFC4CCF0()
{
  sub_1AFC4CC98();

  swift_deallocClassInstance();
  return result;
}

unint64_t sub_1AFC4CD44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFC4EBF8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static VFXMemorySerialization.readString(_:)()
{
  result = sub_1AFDFCEB8();
  if (!v1)
  {
    return 0;
  }

  return result;
}

id static VFXMemorySerialization.readKeyframeAnimation(_:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E6979390]);

  return [v2 initWithSerializedVFXBindingDataPointer_];
}

id VFXMemorySerialization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VFXMemorySerialization.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXMemorySerialization();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VFXMemorySerialization.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VFXMemorySerialization();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1AFC4D0D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFC4ECF4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

__n128 static VFXMemorySerialization.readSIMD3x3F(_:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

__n128 static VFXMemorySerialization.writeSIMD3x3F(_:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

__n128 *static VFXMemorySerialization.writeSIMD4x4F(_:to:)(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

uint64_t static VFXMemorySerialization.VFXSerializedBufferSize(_:type:)(id a1, uint64_t a2)
{
  result = 1;
  switch(a2)
  {
    case 0:
      result = [a1 lengthOfBytesUsingEncoding_];
      break;
    case 1:
    case 2:
    case 7:
      return result;
    case 3:
    case 8:
      result = 2;
      break;
    case 4:
    case 9:
    case 12:
      result = 4;
      break;
    case 5:
    case 6:
    case 10:
    case 11:
    case 13:
      result = 8;
      break;
    case 14:
    case 15:
      result = 16;
      break;
    case 16:
      result = 48;
      break;
    case 17:
      result = 64;
      break;
    case 23:
      result = 0;
      break;
    case 24:
    case 25:

      result = [a1 serializedVFXBindingSize];
      break;
    default:
      v4 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v4);

      result = sub_1AFDFE518();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1AFC4E068(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      return a1(&v25, &v25);
    }

    sub_1AF439ED8(v5, v4);
    *&v25 = v5;
    *(&v25 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v2 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    sub_1AFDFC138();
    v9 = a1;
    v10 = *(v25 + 16);
    v11 = *(v25 + 24);
    v12 = sub_1AFDFBDB8();
    v13 = sub_1AFDFBDE8();
    v14 = v11 - v10;
    v15 = sub_1AFDFBDD8();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    result = v9(v12 + v10 - v13, v12 + v10 - v13 + v16);
    v17 = *(&v25 + 1) | 0x8000000000000000;
    *v2 = v25;
  }

  else
  {
    if (!v6)
    {
      sub_1AF439ED8(v5, v4);
      *&v25 = v5;
      WORD4(v25) = v4;
      BYTE10(v25) = BYTE2(v4);
      BYTE11(v25) = BYTE3(v4);
      BYTE12(v25) = BYTE4(v4);
      BYTE13(v25) = BYTE5(v4);
      BYTE14(v25) = BYTE6(v4);
      result = a1(&v25, &v25 + BYTE6(v4));
      v8 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
      *v2 = v25;
      v2[1] = v8;
      return result;
    }

    sub_1AF439ED8(v5, v4);
    *v2 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = (v5 >> 32) - v5;
      v19 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {

      if (sub_1AFDFBDB8())
      {
        sub_1AFDFBDE8();
      }

      v18 = (v5 >> 32) - v5;
      sub_1AFDFBDF8();
      swift_allocObject();
      v19 = sub_1AFDFBD98();
    }

    v20 = sub_1AFDFBDB8();
    v21 = sub_1AFDFBDE8();
    v22 = sub_1AFDFBDD8();
    if (v22 >= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v22;
    }

    a1(v20 + v5 - v21, v20 + v5 - v21 + v23);

    v17 = v19 | 0x4000000000000000;
    *v2 = v5;
  }

  v2[1] = v17;
  return result;
}

uint64_t sub_1AFC4E3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {

      sub_1AF439ED8(v7, v6);
      *&v22 = v7;
      *(&v22 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AFE6A6C0;
      sub_1AF439ED8(0, 0xC000000000000000);
      sub_1AFDFC138();
      v12 = *(&v22 + 1);
      v13 = a2;
      v14 = *(v22 + 16);
      v15 = sub_1AFDFBDB8();
      v16 = v14 - sub_1AFDFBDE8();
      sub_1AFDFBDD8();
      sub_1AFC4C7A8((v15 + v16), *(v13 + 96), a3);

      *a1 = v22;
      a1[1] = v12 | 0x8000000000000000;
    }

    else
    {
      *(&v22 + 7) = 0;
      *&v22 = 0;
      sub_1AFC4C7A8(&v22, *(a2 + 96), a3);
    }
  }

  else if (v8)
  {
    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1AF439ED8(v7, v6);
    *a1 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (sub_1AFDFBDB8())
      {
        sub_1AFDFBDE8();
      }

      sub_1AFDFBDF8();
      swift_allocObject();
      v18 = sub_1AFDFBD98();

      v17 = v18;
    }

    v19 = sub_1AFDFBDB8();
    v20 = v7 - sub_1AFDFBDE8();
    sub_1AFDFBDD8();
    sub_1AFC4C7A8((v19 + v20), *(a2 + 96), a3);

    *a1 = v7;
    a1[1] = v17 | 0x4000000000000000;
  }

  else
  {
    sub_1AF439ED8(v7, v6);
    *&v22 = v7;
    WORD4(v22) = v6;
    BYTE10(v22) = BYTE2(v6);
    BYTE11(v22) = BYTE3(v6);
    BYTE12(v22) = BYTE4(v6);
    BYTE13(v22) = BYTE5(v6);
    BYTE14(v22) = BYTE6(v6);
    sub_1AFC4C7A8(&v22, *(a2 + 96), a3);
    v9 = v22;
    v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);

    *a1 = v9;
    a1[1] = v10;
  }

  return result;
}

uint64_t sub_1AFC4E70C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return 0;
    }

    else
    {
      sub_1AFDFBDF8();
      swift_allocObject();
      sub_1AFDFBDC8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AFDFC178();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1AFC4E7A8(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  type metadata accessor for simd_float3x3(0);
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  sub_1AF8C0110(0, v2, v3, v4);
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  else
  {
    return 23;
  }
}

uint64_t sub_1AFC4EA4C(uint64_t a1)
{
  if ((a1 - 2) > 0x1D)
  {
    return 0;
  }

  else
  {
    return qword_1AFEA6458[a1 - 2];
  }
}

uint64_t _s3VFX22VFXMemorySerializationC11writeString_2toySS_SvtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AFDFCF78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCF58();
  v8 = sub_1AFDFCF08();
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  if (v10 >> 60 != 15)
  {
    v12 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v12 == 2)
      {
        sub_1AFDFC238();
        v13 = *(v8 + 24) - *(v8 + 16);
      }

      else
      {
        sub_1AFDFC238();
        v13 = 0;
      }
    }

    else
    {
      if (v12)
      {
        v13 = (0xFFFFFFFF00000001 * v8) >> 32;
      }

      else
      {
        v13 = BYTE6(v10);
      }

      sub_1AFDFC238();
    }

    *(a3 + v13) = 0;
    return sub_1AF587E7C(v8, v10);
  }

  return result;
}

unint64_t sub_1AFC4EBF8(unint64_t result)
{
  if (result - 23 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 0x12)
  {
    return v1;
  }

  return result;
}

uint64_t _s3VFX22VFXMemorySerializationC22writeKeyframeAnimation_2toySo010CAKeyframeF0C_SvtFZ_0(void *a1, uint64_t a2)
{
  v2 = [a1 serializedVFXBindingData];
  v3 = sub_1AFDFC1B8();
  v5 = v4;

  sub_1AFDFC238();

  return sub_1AF439ED8(v3, v5);
}

unint64_t sub_1AFC4ECF4(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1AFC4ED08()
{
  result = qword_1EB6439F8;
  if (!qword_1EB6439F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXBindingType, &type metadata for VFXBindingType, v0, v1);
    atomic_store(result, &qword_1EB6439F8);
  }

  return result;
}

unint64_t sub_1AFC4ED60()
{
  result = qword_1EB643A00;
  if (!qword_1EB643A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXBindingSemantic, &type metadata for VFXBindingSemantic, v0, v1);
    atomic_store(result, &qword_1EB643A00);
  }

  return result;
}

unint64_t sub_1AFC4EE1C()
{
  result = qword_1EB6329A8;
  if (!qword_1EB6329A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6329A8);
  }

  return result;
}

unint64_t sub_1AFC4EE9C()
{
  result = qword_1EB643A08;
  if (!qword_1EB643A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXBindingType, &type metadata for VFXBindingType, v0, v1);
    atomic_store(result, &qword_1EB643A08);
  }

  return result;
}

uint64_t static VFXMemorySerialization.writeInt(_:to:)(uint64_t result, void *a2)
{

  return static VFXMemorySerialization.writeInt64(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeInt8(_:to:)(uint64_t result, _BYTE *a2)
{

  return static VFXMemorySerialization.writeUInt8(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeUInt16(_:to:)(uint64_t result, _WORD *a2)
{

  return static VFXMemorySerialization.writeInt16(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeUInt32(_:to:)(uint64_t result, _DWORD *a2)
{

  return static VFXMemorySerialization.writeInt32(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeUInt64(_:to:)(uint64_t result, void *a2)
{

  return static VFXMemorySerialization.writeInt64(_:to:)(result, a2);
}

__n128 *static VFXMemorySerialization.writeSIMD4F(_:to:)(__n128 *result, __n128 a2)
{

  return static VFXMemorySerialization.writeSIMD3F(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.readInt(_:)(uint64_t a1)
{

  return static VFXMemorySerialization.readUInt64(_:)(a1);
}

uint64_t static VFXMemorySerialization.readUInt8(_:)(unsigned __int8 *a1)
{

  return static VFXMemorySerialization.readInt8(_:)(a1);
}

uint64_t static VFXMemorySerialization.readInt16(_:)(unsigned __int16 *a1)
{

  return static VFXMemorySerialization.readUInt16(_:)(a1);
}

uint64_t static VFXMemorySerialization.readInt32(_:)(unsigned int *a1)
{

  return static VFXMemorySerialization.readUInt32(_:)(a1);
}

uint64_t static VFXMemorySerialization.readInt64(_:)(uint64_t a1)
{

  return static VFXMemorySerialization.readUInt64(_:)(a1);
}

double static VFXMemorySerialization.readSIMD4F(_:)(uint64_t a1)
{

  *&result = static VFXMemorySerialization.readSIMD3F(_:)(a1).n128_u64[0];
  return result;
}

uint64_t sub_1AFC4F684(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AF6270E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1AFC6EDC0(v6);
  return sub_1AFDFE348();
}

double sub_1AFC4F700()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong worldTransform];
    v4 = v2;

    return v4;
  }

  else
  {
    *&result = 1065353216;
  }

  return result;
}

uint64_t sub_1AFC4F780(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v1;
    v5 = sub_1AFC892CC();
    sub_1AFC86854(&v9, (v5 + 32), v2, a1);
    v6 = v9;

    sub_1AF0FBB14(v6);
    v1 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = v5;
  sub_1AFC4F684(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

uint64_t sub_1AFC4F854@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  sub_1AFC7246C(0, &unk_1EB643AD0, MEMORY[0x1E69E6448], type metadata accessor for EntityValueAccessors);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 48) = v6;
  *(v11 + 52) = v8;
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v6;
  *(v12 + 28) = v8;
  *(v12 + 32) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v6;
  *(v13 + 28) = v8;
  *(v13 + 32) = a2;
  *(v11 + 16) = sub_1AFC723C0;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AF599FCC;
  *(v11 + 40) = v13;
  a4[3] = v10;
  a4[4] = &off_1F2535390;
  *a4 = v11;
  return swift_retain_n();
}

uint64_t sub_1AFC4F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 32))(&v5, a2, a3);
  if ((v5 & 0x100000000) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v5;
  sub_1AFC7246C(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AFE431C0;
  *(result + 32) = v4;
  return result;
}

uint64_t sub_1AFC4FA10(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_1AF441194(a1, v5);
  sub_1AF648908();
  swift_dynamicCast();
  a2(&v4);
}

uint64_t sub_1AFC4FA7C(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_1AF441194(a1, v5);
  sub_1AF648908();
  type metadata accessor for EntityManager(0);
  swift_dynamicCast();
  a2(&v4);
}

uint64_t sub_1AFC4FAF8(uint64_t a1, uint64_t (*a2)(_BYTE *, __n128))
{
  sub_1AF441194(a1, v5);
  sub_1AF648908();
  swift_dynamicCast();
  return (a2)(v4);
}

uint64_t sub_1AFC4FB5C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFC4FBA8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFC4FBE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v8[1] = 0;
  swift_unknownObjectWeakInit();
  sub_1AF441150(a1, a1[3]);
  sub_1AF974940();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF0FBDE0(v8);
  }

  else
  {
    v8[2] = v6;
    v8[3] = v7;
    sub_1AFC73A9C(v8, a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF0F2990(v8);
  }
}

uint64_t sub_1AFC4FCBC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v4 = *(v1 + 24);
  v6[0] = *(v1 + 16);
  v6[1] = v4;
  return sub_1AF974C50(v6, v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6160]);
}

uint64_t sub_1AFC4FD2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

id sub_1AFC4FDBC()
{
  v0 = type metadata accessor for VFXReferencePlaceholder();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name;
  v3 = &v1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  *v3 = 0xD000000000000017;
  *(v3 + 1) = 0x80000001AFF4BEC0;
  *&v1[v2] = xmmword_1AFEA6550;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_1EB6C2AB0 = result;
  return result;
}

id sub_1AFC4FE68()
{
  v0 = type metadata accessor for VFXReferencePlaceholder();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name;
  v3 = &v1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  *v3 = 0xD000000000000013;
  *(v3 + 1) = 0x80000001AFF4BEA0;
  *&v1[v2] = xmmword_1AFEA6560;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_1EB6C2AB8 = result;
  return result;
}

id sub_1AFC4FF14()
{
  v0 = type metadata accessor for VFXReferencePlaceholder();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name;
  v3 = &v1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  *v3 = 0xD000000000000023;
  *(v3 + 1) = 0x80000001AFF4BEE0;
  *&v1[v2] = xmmword_1AFEA6570;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_1EB6C2AA8 = result;
  return result;
}

id sub_1AFC4FFC0(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id sub_1AFC50054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXReferencePlaceholder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AFC500DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name);

  return v1;
}

uint64_t sub_1AFC50118()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);

  return v1;
}

uint64_t sub_1AFC50154(void *a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for VFXBridgingRemapAndResolveContext();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v7)
  {
    v8 = *(v7 + 80);
    swift_unknownObjectWeakLoadStrong();
    v7 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectUnownedInit();
  v23[0] = v2;
  v23[2] = v7;
  swift_unknownObjectUnownedAssign();
  v9 = a1;

  swift_unownedRetain();
  swift_unknownObjectRelease();
  v24 = v8;
  v22 = v2;

  sub_1AFC5047C(&v22, v6);
  if ((v8 & 1) == 0)
  {

    sub_1AF579490(v23);
    if (!a1)
    {
    }

    goto LABEL_6;
  }

  swift_unownedRetainStrong();
  v17 = v5;
  v18 = &off_1F2535E88;
  aBlock[0] = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AFC723CC;
  *(v10 + 24) = v6;
  v19 = sub_1AFC723F4;
  v20 = v10;
  v21 = 14;

  sub_1AF6C67D0(aBlock);

  sub_1AF57955C(aBlock);
  sub_1AF579490(v23);
  sub_1AF6C5E30(0);
  if (a1)
  {
LABEL_6:
    v11 = [v9 assetRegistry];
    v12 = [v11 rootNode];

    v13 = swift_allocObject();
    *(v13 + 16) = sub_1AFC723D4;
    *(v13 + 24) = v6;
    v18 = sub_1AFBF7FC8;
    v19 = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AF92EF7C;
    v17 = &unk_1F24E62D0;
    v14 = _Block_copy(aBlock);

    [v12 enumerateHierarchyUsingBlock_];

    _Block_release(v14);
    swift_isEscapingClosureAtFileLocation();
  }
}

uint64_t sub_1AFC5047C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED73B840;
  v41 = 0;
  v42 = 2;
  v43 = 1;
  v44 = 2;
  v45 = 0;

  sub_1AF6B06C0(v3, &v40, 0x200000000, &v25);

  v21 = v25;
  if (v25)
  {
    v20 = v28;
    v22 = v29;
    v5 = v31;
    v33 = v26;
    v34 = v27;
    if (v32 >= 1 && v29)
    {
      v6 = 0;
      v24 = *(v31 + 32);
      i = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v19 = i;
      do
      {
        v8 = (v20 + 48 * v6);
        v9 = v8[1];
        v23 = *v8;
        v10 = *(v8 + 2);
        v11 = *(v8 + 4);
        v12 = *(v8 + 5);
        if (i)
        {
          v13 = *(v12 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v24);
        v14 = *(v5 + 64);
        v38[0] = *(v5 + 48);
        v38[1] = v14;
        v39 = *(v5 + 80);
        v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
        *(v5 + 56) = v15;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        if (v10)
        {
          for (i = v19; v11; --v11)
          {
            v16 = *v10++;
            sub_1AFC724BC(v12, v16, v3, a2);
          }
        }

        else
        {
          v17 = v23;
          i = v19;
          while (v9 != v17)
          {
            v18 = v17 + 1;
            sub_1AFC724BC(v12, v17, v3, a2);
            v17 = v18;
          }
        }

        v35 = v21;
        v36 = v33;
        v37 = v34;
        sub_1AF630994(v5, &v35, v38);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v24);
        if (i)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        ++v6;
      }

      while (v6 != v22);
    }

    return sub_1AFC723FC(&v25, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  return result;
}

double sub_1AFC50784(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 asset])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 authoringGraph];
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      type metadata accessor for AuthoringGraph(0);
      v7 = swift_dynamicCast();
      v8 = v10[5];
      MEMORY[0x1EEE9AC00](v7);
      v10[2] = a3;
      v10[3] = &off_1F2532000;
      sub_1AF3FB9C8(sub_1AF42B5A8, v10, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v9 = sub_1AF449CC8();

      *(v8 + 24) = v9;

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_1AFC50994()
{
  v1 = 0xEF72656C6C6F7274;
  sub_1AFC7246C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x80000001AFEA8760;
  *(v2 + 48) = 0xD000000000000018;
  *(v2 + 56) = 0x80000001AFEA8780;
  v3 = [v0 light];
  if (v3)
  {

    v2 = sub_1AF420554(1, 3, 1, v2);
    *(v2 + 16) = 3;
    *(v2 + 64) = 0x6E6F43746867694CLL;
    *(v2 + 72) = 0xEF72656C6C6F7274;
  }

  v4 = [v0 camera];
  if (v4)
  {

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1AF420554(v5 > 1, v6 + 1, 1, v2);
    }

    *(v2 + 16) = v6 + 1;
    v7 = v2 + 16 * v6;
    *(v7 + 32) = 0xD000000000000010;
    *(v7 + 40) = 0x80000001AFEA8800;
    v8 = [v0 camera];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 motionBlur];

      if (v10)
      {

        v12 = *(v2 + 16);
        v11 = *(v2 + 24);
        if (v12 >= v11 >> 1)
        {
          v2 = sub_1AF420554(v11 > 1, v12 + 1, 1, v2);
        }

        *(v2 + 16) = v12 + 1;
        v13 = v2 + 16 * v12;
        *(v13 + 32) = 0xD000000000000020;
        *(v13 + 40) = 0x80000001AFEA8850;
      }
    }

    v14 = [v0 camera];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 depthOfField];

      if (v16)
      {

        v18 = *(v2 + 16);
        v17 = *(v2 + 24);
        if (v18 >= v17 >> 1)
        {
          v2 = sub_1AF420554(v17 > 1, v18 + 1, 1, v2);
        }

        *(v2 + 16) = v18 + 1;
        v19 = v2 + 16 * v18;
        *(v19 + 32) = 0xD000000000000022;
        *(v19 + 40) = 0x80000001AFEA8960;
      }
    }

    v20 = [v0 camera];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 grain];

      if (v22)
      {

        v24 = *(v2 + 16);
        v23 = *(v2 + 24);
        if (v24 >= v23 >> 1)
        {
          v2 = sub_1AF420554(v23 > 1, v24 + 1, 1, v2);
        }

        *(v2 + 16) = v24 + 1;
        v25 = v2 + 16 * v24;
        *(v25 + 32) = 0xD00000000000001BLL;
        *(v25 + 40) = 0x80000001AFEA8940;
      }
    }

    v26 = [v0 camera];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 lensBlur];

      if (v28)
      {

        v30 = *(v2 + 16);
        v29 = *(v2 + 24);
        if (v30 >= v29 >> 1)
        {
          v2 = sub_1AF420554(v29 > 1, v30 + 1, 1, v2);
        }

        *(v2 + 16) = v30 + 1;
        v31 = v2 + 16 * v30;
        *(v31 + 32) = 0xD00000000000001ELL;
        *(v31 + 40) = 0x80000001AFEA8920;
      }
    }

    v32 = [v0 camera];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 bloom];

      if (v34)
      {

        v36 = *(v2 + 16);
        v35 = *(v2 + 24);
        if (v36 >= v35 >> 1)
        {
          v2 = sub_1AF420554(v35 > 1, v36 + 1, 1, v2);
        }

        *(v2 + 16) = v36 + 1;
        v37 = v2 + 16 * v36;
        *(v37 + 32) = 0xD00000000000001BLL;
        *(v37 + 40) = 0x80000001AFEA8900;
      }
    }

    v38 = [v0 camera];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 exposure];

      if (v40)
      {

        v42 = *(v2 + 16);
        v41 = *(v2 + 24);
        if (v42 >= v41 >> 1)
        {
          v2 = sub_1AF420554(v41 > 1, v42 + 1, 1, v2);
        }

        *(v2 + 16) = v42 + 1;
        v43 = v2 + 16 * v42;
        *(v43 + 32) = 0xD00000000000001ELL;
        *(v43 + 40) = 0x80000001AFEA88E0;
      }
    }

    v44 = [v0 camera];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 chromaticTransform];

      if (v46)
      {

        v48 = *(v2 + 16);
        v47 = *(v2 + 24);
        if (v48 >= v47 >> 1)
        {
          v2 = sub_1AF420554(v47 > 1, v48 + 1, 1, v2);
        }

        *(v2 + 16) = v48 + 1;
        v49 = v2 + 16 * v48;
        *(v49 + 32) = 0xD000000000000028;
        *(v49 + 40) = 0x80000001AFEA88B0;
      }
    }

    v50 = [v0 camera];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 doughnutBokeh];

      if (v52)
      {

        v54 = *(v2 + 16);
        v53 = *(v2 + 24);
        if (v54 >= v53 >> 1)
        {
          v2 = sub_1AF420554(v53 > 1, v54 + 1, 1, v2);
        }

        *(v2 + 16) = v54 + 1;
        v55 = v2 + 16 * v54;
        *(v55 + 32) = 0xD000000000000023;
        *(v55 + 40) = 0x80000001AFEA8880;
      }
    }

    v56 = [v0 camera];
    if (v56)
    {
      v57 = v56;
      v58 = [v56 motionBlur];

      if (v58)
      {

        v60 = *(v2 + 16);
        v59 = *(v2 + 24);
        if (v60 >= v59 >> 1)
        {
          v2 = sub_1AF420554(v59 > 1, v60 + 1, 1, v2);
        }

        *(v2 + 16) = v60 + 1;
        v61 = v2 + 16 * v60;
        *(v61 + 32) = 0xD000000000000020;
        *(v61 + 40) = 0x80000001AFEA8850;
      }
    }

    v62 = [v0 camera];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 toneMapping];

      if (v64)
      {

        v66 = *(v2 + 16);
        v65 = *(v2 + 24);
        if (v66 >= v65 >> 1)
        {
          v2 = sub_1AF420554(v65 > 1, v66 + 1, 1, v2);
        }

        *(v2 + 16) = v66 + 1;
        v67 = v2 + 16 * v66;
        *(v67 + 32) = 0xD000000000000021;
        *(v67 + 40) = 0x80000001AFEA8820;
      }
    }

    v68 = [v0 camera];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 vignetting];

      if (v70)
      {

        v72 = *(v2 + 16);
        v71 = *(v2 + 24);
        if (v72 >= v71 >> 1)
        {
          v2 = sub_1AF420554(v71 > 1, v72 + 1, 1, v2);
        }

        *(v2 + 16) = v72 + 1;
        v73 = v2 + 16 * v72;
        *(v73 + 32) = 0xD000000000000020;
        *(v73 + 40) = 0x80000001AFF4C100;
      }
    }

    v74 = [v0 camera];
    if (v74)
    {
      v75 = v74;
      v76 = [v74 colorFringe];

      if (v76)
      {

        v78 = *(v2 + 16);
        v77 = *(v2 + 24);
        if (v78 >= v77 >> 1)
        {
          v2 = sub_1AF420554(v77 > 1, v78 + 1, 1, v2);
        }

        *(v2 + 16) = v78 + 1;
        v79 = v2 + 16 * v78;
        *(v79 + 32) = 0xD000000000000021;
        *(v79 + 40) = 0x80000001AFF4C0D0;
      }
    }

    v80 = [v0 camera];
    if (v80)
    {
      v81 = v80;
      v82 = [v80 colorGrading];

      if (v82)
      {

        v84 = *(v2 + 16);
        v83 = *(v2 + 24);
        if (v84 >= v83 >> 1)
        {
          v2 = sub_1AF420554(v83 > 1, v84 + 1, 1, v2);
        }

        *(v2 + 16) = v84 + 1;
        v85 = v2 + 16 * v84;
        *(v85 + 32) = 0xD000000000000022;
        *(v85 + 40) = 0x80000001AFF4C0A0;
      }
    }
  }

  v86 = [v0 physicsBody];
  if (v86)
  {

    v88 = *(v2 + 16);
    v87 = *(v2 + 24);
    if (v88 >= v87 >> 1)
    {
      v2 = sub_1AF420554(v87 > 1, v88 + 1, 1, v2);
    }

    *(v2 + 16) = v88 + 1;
    v89 = v2 + 16 * v88;
    *(v89 + 32) = 0xD000000000000015;
    *(v89 + 40) = 0x80000001AFEA87E0;
  }

  v90 = [v0 forceField];
  if (v90)
  {

    v92 = *(v2 + 16);
    v91 = *(v2 + 24);
    if (v92 >= v91 >> 1)
    {
      v2 = sub_1AF420554(v91 > 1, v92 + 1, 1, v2);
    }

    *(v2 + 16) = v92 + 1;
    v93 = v2 + 16 * v92;
    *(v93 + 32) = 0xD000000000000015;
    *(v93 + 40) = 0x80000001AFEA87C0;
  }

  v94 = [v0 morpher];
  if (v94)
  {

    v96 = *(v2 + 16);
    v95 = *(v2 + 24);
    if (v96 >= v95 >> 1)
    {
      v2 = sub_1AF420554(v95 > 1, v96 + 1, 1, v2);
    }

    *(v2 + 16) = v96 + 1;
    v97 = v2 + 16 * v96;
    *(v97 + 32) = 0xD000000000000011;
    *(v97 + 40) = 0x80000001AFEA87A0;
  }

  v98 = [v0 model];
  if (v98)
  {

    v99 = [v0 model];
    if (v99 && (v100 = v99, objc_opt_self(), v101 = swift_dynamicCastObjCClass(), v100, v101))
    {
      v103 = *(v2 + 16);
      v102 = *(v2 + 24);
      v104 = v103 + 1;
      if (v103 >= v102 >> 1)
      {
        v2 = sub_1AF420554(v102 > 1, v103 + 1, 1, v2);
      }

      v1 = 0x80000001AFEA8740;
      v105 = 0xD000000000000019;
    }

    else
    {
      v105 = 0x6E6F436C65646F4DLL;
      v103 = *(v2 + 16);
      v106 = *(v2 + 24);
      v104 = v103 + 1;
      if (v103 >= v106 >> 1)
      {
        v2 = sub_1AF420554(v106 > 1, v103 + 1, 1, v2);
      }
    }

    *(v2 + 16) = v104;
    v107 = v2 + 16 * v103;
    *(v107 + 32) = v105;
    *(v107 + 40) = v1;
  }

  return v2;
}

uint64_t sub_1AFC514A4()
{
  v1 = [v0 name];
  v2 = sub_1AFDFCEF8();

  return v2;
}

double sub_1AFC514FC()
{
  if ([objc_opt_self() immediateMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0.0;
    }

LABEL_6:
    v3 = Strong;
    [Strong position];
    v6 = v4;

    return v6;
  }

  sub_1AFC73A9C(v0, v7);
  v2 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v7);
  if (v2)
  {
    objc_opt_self();
    Strong = swift_dynamicCastObjCClass();
    if (Strong)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

double sub_1AFC515B8()
{
  v0 = sub_1AFC52758();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  [v0 orientation];
  v4 = v2;

  return v4;
}

__n128 sub_1AFC5160C()
{
  v0 = sub_1AFC52758();
  if (v0)
  {
    v1 = v0;
    [v0 scale];
    v8 = v2;

    return v8;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

double sub_1AFC5165C()
{
  v0 = sub_1AFC52758();
  if (v0)
  {
    v1 = v0;
    [v0 transform];
    v4 = v2;

    return v4;
  }

  else
  {
    *&result = 1065353216;
  }

  return result;
}

double sub_1AFC516D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v1 = Strong;
  [Strong eulerAngles];
  v4 = v2;

  return v4;
}

uint64_t sub_1AFC5172C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v32 = 0;
  swift_unknownObjectWeakInit();
  v32 = 0;
  swift_unknownObjectWeakAssign();
  v33 = 0x3E6C6C756E3CLL;
  v34 = 0xE600000000000000;
  swift_unknownObjectWeakInit();
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF694FF8(2037, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v23, v26);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      sub_1AF9B3A74(&v27, v31);
LABEL_9:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v23);
LABEL_17:
      sub_1AF5A5D54(v31, a2);
    }
  }

  else
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    if (sub_1AF694FF8(2029, v12, v13))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v23, v26);
        v16 = sub_1AFDFEE38();
        v18 = v17;
        sub_1AF0F2990(v31);
        v32 = 0;
        swift_unknownObjectWeakInit();
        v32 = 0;
        swift_unknownObjectWeakAssign();
        v33 = v16;
        v34 = v18;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v27 = 0;
        v28 = 1;
        v29 = 0xD000000000000017;
        v30 = 0x80000001AFF4C150;
        v14 = sub_1AFDFE698();
        if (v15)
        {
          v19 = v14;
        }

        else
        {
          v19 = 0;
        }

        if (v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0xE000000000000000;
        }

        (*(v7 + 8))(v9, v6);
        v24 = 0;
        swift_unknownObjectWeakInit();
        v24 = 0;
        v21 = swift_unknownObjectWeakAssign();
        v25 = v19;
        v26 = v20;
        sub_1AF9B3A74(v21, v31);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AFC73A2C(v31);
}

uint64_t sub_1AFC51B14()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC7008C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC700B0;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v6 = v5;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x6E6F697469736F70;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v5;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  swift_retain_n();
  v9 = v6;
  if (v8)
  {
    v9 = (*(v7 + 8))(v8, v7);
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v4 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  *(v4 + 64) = sub_1AFC700BC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v11, v12);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v53 = v0;
  *(v0 + 32) = v4;
  v13 = swift_getKeyPath();
  sub_1AFC700D0(0, &unk_1ED725C88, type metadata accessor for simd_quatf);
  v14 = swift_allocObject();
  v14[4] = sub_1AFC7008C;
  v14[5] = v13;
  v14[2] = sub_1AFC700C4;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 104) = 0;
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 216) = 0;
  type metadata accessor for simd_quatf(0);
  v17 = v16;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x7461746E6569726FLL;
  *(v15 + 24) = 0xEB000000006E6F69;
  *(v15 + 32) = v13;
  *(v15 + 40) = v16;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 144) = xmmword_1AFE55150;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18 && v17)
  {
    v17 = (*(v18 + 8))(v17, v18);
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v17)
  {
    *(v15 + 160) = (*(v19 + 8))(v17, v19);
  }

  v20 = *(v15 + 64);
  v21 = *(v15 + 72);
  *(v15 + 64) = sub_1AFC70124;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v20, v21);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  v53[5] = v15;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AFC73B2C;
  v23[5] = v22;
  v23[2] = sub_1AFC73BD0;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x656C616373;
  *(v24 + 24) = 0xE500000000000000;
  *(v24 + 32) = v22;
  *(v24 + 40) = v6;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 1;
  *(v24 + 192) = 0;
  *(v24 + 196) = 1;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  swift_retain_n();
  v25 = v6;
  if (v8)
  {
    v25 = (*(v7 + 8))(v8);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v24 + 160) = (*(v26 + 8))(v25, v26);
  }

  v27 = *(v24 + 64);
  v28 = *(v24 + 72);
  *(v24 + 64) = sub_1AFC73B30;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(v27, v28);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;

  v53[6] = v24;
  v29 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v30 = swift_allocObject();
  v30[4] = sub_1AFC70188;
  v30[5] = v29;
  v30[2] = sub_1AFC701D4;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 104) = 0;
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v33 = v32;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x726F66736E617274;
  *(v31 + 24) = 0xE90000000000006DLL;
  *(v31 + 32) = v29;
  *(v31 + 40) = v32;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 2304;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 2304;
  v34 = swift_conformsToProtocol2();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  swift_retain_n();
  v36 = v33;
  if (v35)
  {
    v36 = (*(v34 + 8))(v35, v34);
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v31 + 160) = (*(v37 + 8))(v36, v37);
  }

  v38 = *(v31 + 64);
  v39 = *(v31 + 72);
  *(v31 + 64) = sub_1AFC701E4;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(v38, v39);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;

  v53[7] = v31;
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  v41[4] = sub_1AFC73C90;
  v41[5] = v40;
  v41[2] = sub_1AFC73C98;
  v41[3] = v40;
  v41[6] = v40;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  strcpy((v42 + 16), "worldTransform");
  *(v42 + 31) = -18;
  *(v42 + 32) = v40;
  *(v42 + 40) = v33;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 16;
  *(v42 + 184) = 0;
  *(v42 + 188) = 1;
  *(v42 + 192) = 0;
  *(v42 + 196) = 1;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 16;
  swift_retain_n();
  if (v35)
  {
    v33 = (*(v34 + 8))(v35, v34);
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v33)
  {
    *(v42 + 160) = (*(v43 + 8))(v33, v43);
  }

  v44 = *(v42 + 64);
  v45 = *(v42 + 72);
  *(v42 + 64) = sub_1AFC73B34;
  *(v42 + 72) = v40;
  sub_1AF0FB8EC(v44, v45);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;

  v53[8] = v42;
  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  v47[4] = sub_1AFC73B2C;
  v47[5] = v46;
  v47[2] = sub_1AFC73BD0;
  v47[3] = v46;
  v47[6] = v46;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 216) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 0x72656C7565;
  *(v48 + 24) = 0xE500000000000000;
  *(v48 + 32) = v46;
  *(v48 + 40) = v6;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 16;
  *(v48 + 184) = 0;
  *(v48 + 188) = 1;
  *(v48 + 192) = 0;
  *(v48 + 196) = 1;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 16;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8);
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v6)
  {
    *(v48 + 160) = (*(v49 + 8))(v6, v49);
  }

  v50 = *(v48 + 64);
  v51 = *(v48 + 72);
  *(v48 + 64) = sub_1AFC73B30;
  *(v48 + 72) = v46;
  sub_1AF0FB8EC(v50, v51);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = 0;

  v53[9] = v48;
  qword_1EB6C28E0 = v53;
  return result;
}

uint64_t sub_1AFC52758()
{
  if ([objc_opt_self() immediateMode])
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  sub_1AFC73A9C(v0, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v3);
  if (Strong)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1AFC527FC()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v4);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
      return;
    }

LABEL_6:
    v3 = v1;
    [v1 opacity];

    return;
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    goto LABEL_6;
  }
}

id sub_1AFC528C0()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v5);
    if (Strong)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
LABEL_6:
    v3 = result;
    v4 = [result renderingOrder];

    return v4;
  }

  return result;
}

uint64_t sub_1AFC52988(const char **a1)
{
  if ([objc_opt_self() immediateMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 1;
    }

LABEL_6:
    v5 = *a1;
    v6 = Strong;
    v7 = [Strong v5];

    return v7 ^ 1;
  }

  sub_1AFC73A9C(v1, v9);
  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v9);
  if (v4)
  {
    objc_opt_self();
    Strong = swift_dynamicCastObjCClass();
    if (Strong)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

double sub_1AFC52A44(char a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return result;
    }
  }

  else
  {
    sub_1AFC73A9C(v2, v10);
    v7 = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (!v7)
    {
      return result;
    }

    objc_opt_self();
    Strong = swift_dynamicCastObjCClass();
    if (!Strong)
    {
      swift_unknownObjectRelease();
      return result;
    }
  }

  v8 = (a1 & 1) == 0;
  v9 = Strong;
  [Strong *a2];

  return result;
}

uint64_t sub_1AFC52B08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v33 = 0;
  swift_unknownObjectWeakInit();
  v33 = 0;
  swift_unknownObjectWeakAssign();
  v34 = 0x3E6C6C756E3CLL;
  v35 = 0xE600000000000000;
  swift_unknownObjectWeakInit();
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF694FF8(2037, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v24, v27);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v12 = &v28;
LABEL_9:
      sub_1AF9B3A74(v12, v32);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v24);
LABEL_17:
      sub_1AF5A5F2C(v32, a2);
    }
  }

  else
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF694FF8(2029, v13, v14))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v24, v27);
        v17 = sub_1AFDFEE38();
        v19 = v18;
        v29 = 0;
        swift_unknownObjectWeakInit();
        v29 = 0;
        v12 = swift_unknownObjectWeakAssign();
        v30 = v17;
        v31 = v19;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v28 = 0;
        LOBYTE(v29) = 1;
        v30 = 0xD000000000000017;
        v31 = 0x80000001AFF4C150;
        v15 = sub_1AFDFE698();
        if (v16)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0;
        }

        if (v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        (*(v7 + 8))(v9, v6);
        v25 = 0;
        swift_unknownObjectWeakInit();
        v25 = 0;
        v22 = swift_unknownObjectWeakAssign();
        v26 = v20;
        v27 = v21;
        sub_1AF9B3A74(v22, v32);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AFC73A2C(v32);
}

void sub_1AFC52ED0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2, ObjectType, a2);
  sub_1AFC73A9C(v2, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = [v6 presentationNode];
  swift_unknownObjectRelease();
LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1AFC52FC4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AF9B3AD0();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFC53068@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  v1 = swift_unknownObjectWeakAssign();
  *(v1 + 16) = 0x3E6C6C756E3CLL;
  *(v1 + 24) = 0xE600000000000000;

  return swift_unknownObjectWeakInit();
}

BOOL sub_1AFC530C8()
{
  sub_1AFC73A9C(v0, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 model];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_1AFC53170()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70288;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC702BC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x656C6269736976;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AFC702C8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC702D0;
  v10[5] = v8;
  v10[2] = sub_1AFC70304;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x7974696361706FLL;
  *(v11 + 24) = 0xE700000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70310;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6530];
  sub_1AFC7246C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AFC70318;
  v17[5] = v14;
  v17[2] = sub_1AFC7034C;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  strcpy((v18 + 16), "renderingOrder");
  *(v18 + 31) = -18;
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 1;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x1000100000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = v15;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    v21 = (*(v20 + 8))(v16, v20);

    *(v18 + 160) = v21;
  }

  else
  {
  }

  *(v18 + 64) = sub_1AFC70358;
  *(v18 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AFC73C38;
  v24[5] = v22;
  v24[2] = sub_1AFC73BD4;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x6168537374736163;
  *(v25 + 24) = 0xEB00000000776F64;
  *(v25 + 32) = v22;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = v23;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();

  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v2)
  {
    v27 = (*(v26 + 8))(v2, v26);

    *(v25 + 160) = v27;
  }

  else
  {
  }

  *(v25 + 64) = sub_1AFC73B38;
  *(v25 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  qword_1EB6C2728 = v0;
  return result;
}

void sub_1AFC53A24(float *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    [v2 opacity];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  *a1 = v5;
}

void sub_1AFC53A7C(void *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 renderingOrder];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1AFC53AD4(SEL *a1@<X3>, char *a2@<X8>)
{
  v4 = sub_1AFC52758();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 *a1];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7;
}

uint64_t sub_1AFC53B70()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v5 = 0;
    }

    v1 = [v5 light];

    if (v1)
    {
      goto LABEL_3;
    }

    return 2;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 2;
  }

LABEL_3:
  v3 = [v1 type];

  return v3;
}

double sub_1AFC53C58()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      [v1 extendedLinearSRGBColor];
      v7 = v3;

      return v7;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

float sub_1AFC53D40()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }

    return 1.0;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 1.0;
  }

LABEL_3:
  [v1 intensity];
  v4 = v3;

  return v4;
}

id sub_1AFC53E80(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (Strong)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = [v9 *a2];

    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = v2[4];
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v7 = [v5 *a1];

  return v7;
}

float sub_1AFC53F84(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v5 = [v10 *a2];

    if (v5)
    {
      goto LABEL_3;
    }

    return 0.0;
  }

  v5 = v2[4];
  v6 = v5;
  if (!v5)
  {
    return 0.0;
  }

LABEL_3:
  [v5 *a1];
  v8 = v7;

  return v8;
}

uint64_t sub_1AFC54154()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFEA6580;
  KeyPath = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1EB63BA20, type metadata accessor for VFXLightType);
  v2 = swift_allocObject();
  v2[4] = sub_1AFC70360;
  v2[5] = KeyPath;
  v2[2] = sub_1AFC70394;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  type metadata accessor for VFXLightType(0);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1701869940;
  *(v3 + 24) = 0xE400000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  *(v3 + 64) = sub_1AFC703A0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v12 = swift_allocObject();
  v12[4] = sub_1AFC703A8;
  v12[5] = v10;
  v12[2] = sub_1AFC703C0;
  v12[3] = v10;
  v12[6] = v10;
  v13 = swift_allocObject();
  *(v13 + 104) = 0;
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 210) = 0;
  *(v13 + 216) = 0;
  v14 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v11);
  v16 = v15;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x726F6C6F63;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = v10;
  *(v13 + 40) = v15;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = 0;
  *(v13 + 144) = xmmword_1AFE55160;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17 && v16)
  {
    v16 = (*(v17 + 8))(v16, v17);
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v16)
  {
    *(v13 + 160) = (*(v18 + 8))(v16, v18);
  }

  v19 = *(v13 + 64);
  v20 = *(v13 + 72);
  *(v13 + 64) = sub_1AFC70440;
  *(v13 + 72) = v10;
  sub_1AF0FB8EC(v19, v20);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v21 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v14, type metadata accessor for EntityGetSet);
  v22 = swift_allocObject();
  v22[4] = sub_1AFC70448;
  v22[5] = v21;
  v22[2] = sub_1AFC7047C;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 210) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x7469736E65746E69;
  *(v23 + 24) = 0xE900000000000079;
  *(v23 + 32) = v21;
  *(v23 + 40) = v14;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  v24 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v24)
  {
    v25 = (*(v24 + 8))();
  }

  else
  {
    v25 = v14;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v23 + 160) = (*(v26 + 8))(v25, v26);
  }

  v27 = *(v23 + 64);
  v28 = *(v23 + 72);
  *(v23 + 64) = sub_1AFC70488;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(v27, v28);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;

  *(v0 + 48) = v23;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AFC73AE4;
  v30[5] = v29;
  v30[2] = sub_1AFC73BD8;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 210) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x74617265706D6574;
  *(v31 + 24) = 0xEB00000000657275;
  *(v31 + 32) = v29;
  *(v31 + 40) = v14;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  swift_retain_n();
  if (v24)
  {
    v14 = (*(v24 + 8))();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v14)
  {
    *(v31 + 160) = (*(v32 + 8))(v14, v32);
  }

  v33 = *(v31 + 64);
  v34 = *(v31 + 72);
  *(v31 + 64) = sub_1AFC73B3C;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(v33, v34);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;

  *(v0 + 56) = v31;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v37 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v38 = swift_allocObject();
  v38[4] = sub_1AFC703A8;
  v38[5] = v35;
  v38[2] = sub_1AFC70490;
  v38[3] = v35;
  v38[6] = v35;
  v39 = swift_allocObject();
  *(v39 + 104) = 0;
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 210) = 0;
  *(v39 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v37);
  v41 = v40;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 16) = 0x6574784561657261;
  *(v39 + 24) = 0xEB0000000073746ELL;
  *(v39 + 32) = v35;
  *(v39 + 40) = v40;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 256;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 96) = v36;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 256;
  v42 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v42 && v41)
  {
    v41 = (*(v42 + 8))(v41, v42);
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v41)
  {
    v44 = (*(v43 + 8))(v41, v43);

    *(v39 + 160) = v44;
  }

  else
  {
  }

  v45 = *(v39 + 64);
  v46 = *(v39 + 72);
  *(v39 + 64) = sub_1AFC7049C;
  *(v39 + 72) = v35;
  sub_1AF0FB8EC(v45, v46);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = 0;

  *(v0 + 64) = v39;
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  v49 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v50 = swift_allocObject();
  v50[4] = sub_1AFC704A4;
  v50[5] = v47;
  v50[2] = sub_1AFC704D0;
  v50[3] = v47;
  v50[6] = v47;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 210) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 0x6572417377617264;
  *(v51 + 24) = 0xE900000000000061;
  *(v51 + 32) = v47;
  *(v51 + 40) = v49;
  *(v51 + 48) = 0;
  *(v51 + 56) = 1;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = v48;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  v52 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v52)
  {
    v53 = (*(v52 + 8))();
  }

  else
  {
    v53 = v49;
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v53)
  {
    v55 = (*(v54 + 8))(v53, v54);

    *(v51 + 160) = v55;
  }

  else
  {
  }

  v56 = *(v51 + 64);
  v57 = *(v51 + 72);
  *(v51 + 64) = sub_1AFC704DC;
  *(v51 + 72) = v47;
  sub_1AF0FB8EC(v56, v57);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;

  *(v0 + 72) = v51;
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AFC73C3C;
  v60[5] = v58;
  v60[2] = sub_1AFC73BDC;
  v60[3] = v58;
  v60[6] = v58;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x6953656C62756F64;
  *(v61 + 24) = 0xEB00000000646564;
  *(v61 + 32) = v58;
  *(v61 + 40) = v49;
  *(v61 + 48) = 0;
  *(v61 + 56) = 1;
  *(v61 + 58) = 0;
  *(v61 + 184) = 0;
  *(v61 + 188) = 1;
  *(v61 + 192) = 0;
  *(v61 + 196) = 1;
  *(v61 + 200) = 0x1000100000000;
  *(v61 + 208) = 1;
  *(v61 + 64) = 0;
  *(v61 + 72) = 0;
  *(v61 + 96) = v59;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  swift_retain_n();

  if (v52)
  {
    v62 = (*(v52 + 8))();
  }

  else
  {
    v62 = v49;
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v62)
  {
    v64 = (*(v63 + 8))(v62, v63);

    *(v61 + 160) = v64;
  }

  else
  {
  }

  v65 = *(v61 + 64);
  v66 = *(v61 + 72);
  *(v61 + 64) = sub_1AFC73B40;
  *(v61 + 72) = v58;
  sub_1AF0FB8EC(v65, v66);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  *(v0 + 80) = v61;
  v67 = swift_getKeyPath();
  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  v69[4] = sub_1AFC73AE4;
  v69[5] = v67;
  v69[2] = sub_1AFC73BD8;
  v69[3] = v67;
  v69[6] = v67;
  v70 = swift_allocObject();
  *(v70 + 112) = 1;
  *(v70 + 128) = 0;
  *(v70 + 136) = 0;
  *(v70 + 120) = 0;
  *(v70 + 160) = MEMORY[0x1E69E7CC0];
  *(v70 + 168) = 0;
  *(v70 + 216) = 0;
  *(v70 + 176) = 0;
  strcpy((v70 + 16), "spotInnerAngle");
  *(v70 + 31) = -18;
  *(v70 + 32) = v67;
  v71 = MEMORY[0x1E69E6448];
  *(v70 + 40) = MEMORY[0x1E69E6448];
  *(v70 + 48) = 0;
  *(v70 + 56) = 1;
  *(v70 + 58) = 256;
  *(v70 + 184) = 0;
  *(v70 + 188) = 1;
  *(v70 + 192) = 0;
  *(v70 + 196) = 1;
  *(v70 + 200) = 0x1000100000000;
  *(v70 + 208) = 1;
  *(v70 + 64) = 0;
  *(v70 + 72) = 0;
  *(v70 + 96) = v68;
  *(v70 + 104) = 0;
  *(v70 + 144) = xmmword_1AFE22A20;
  *(v70 + 80) = v69;
  *(v70 + 88) = &off_1F2535378;
  *(v70 + 210) = 256;
  swift_retain_n();

  if (v24)
  {
    v72 = (*(v24 + 8))();
  }

  else
  {
    v72 = v71;
  }

  v73 = swift_conformsToProtocol2();
  if (v73 && v72)
  {
    v74 = (*(v73 + 8))(v72, v73);

    *(v70 + 160) = v74;
  }

  else
  {
  }

  *(v70 + 64) = sub_1AFC73B3C;
  *(v70 + 72) = v67;
  sub_1AF0FB8EC(0, 0);
  *(v70 + 168) = 0;
  *(v70 + 176) = 0;

  *(v70 + 216) = 0;
  *(v0 + 88) = v70;
  v75 = swift_getKeyPath();
  v76 = swift_getKeyPath();
  v77 = swift_allocObject();
  v77[4] = sub_1AFC73AE4;
  v77[5] = v75;
  v77[2] = sub_1AFC73BD8;
  v77[3] = v75;
  v77[6] = v75;
  v78 = swift_allocObject();
  *(v78 + 112) = 1;
  *(v78 + 128) = 0;
  *(v78 + 136) = 0;
  *(v78 + 120) = 0;
  *(v78 + 160) = MEMORY[0x1E69E7CC0];
  *(v78 + 168) = 0;
  *(v78 + 216) = 0;
  *(v78 + 176) = 0;
  strcpy((v78 + 16), "spotOuterAngle");
  *(v78 + 31) = -18;
  *(v78 + 32) = v75;
  v79 = MEMORY[0x1E69E6448];
  *(v78 + 40) = MEMORY[0x1E69E6448];
  *(v78 + 48) = 0;
  *(v78 + 56) = 1;
  *(v78 + 58) = 0;
  *(v78 + 184) = 0;
  *(v78 + 188) = 1;
  *(v78 + 192) = 0;
  *(v78 + 196) = 1;
  *(v78 + 200) = 0x1000100000000;
  *(v78 + 208) = 1;
  *(v78 + 64) = 0;
  *(v78 + 72) = 0;
  *(v78 + 96) = v76;
  *(v78 + 104) = 0;
  *(v78 + 144) = xmmword_1AFE22A20;
  *(v78 + 80) = v77;
  *(v78 + 88) = &off_1F2535378;
  *(v78 + 210) = 0;
  swift_retain_n();

  if (v24)
  {
    v80 = (*(v24 + 8))();
  }

  else
  {
    v80 = v79;
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v80)
  {
    v82 = (*(v81 + 8))(v80, v81);

    *(v78 + 160) = v82;
  }

  else
  {
  }

  *(v78 + 64) = sub_1AFC73B3C;
  *(v78 + 72) = v75;
  sub_1AF0FB8EC(0, 0);
  *(v78 + 168) = 0;
  *(v78 + 176) = 0;

  *(v78 + 216) = 0;
  v83 = v0;
  *(v0 + 96) = v78;
  v84 = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  v86[4] = sub_1AFC73AE4;
  v86[5] = v84;
  v86[2] = sub_1AFC73BD8;
  v86[3] = v84;
  v86[6] = v84;
  v87 = swift_allocObject();
  *(v87 + 112) = 1;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 120) = 0;
  *(v87 + 160) = MEMORY[0x1E69E7CC0];
  *(v87 + 168) = 0;
  *(v87 + 216) = 0;
  *(v87 + 176) = 0;
  *(v87 + 16) = 0xD000000000000013;
  *(v87 + 24) = 0x80000001AFF4BF10;
  *(v87 + 32) = v84;
  v88 = MEMORY[0x1E69E6448];
  *(v87 + 40) = MEMORY[0x1E69E6448];
  *(v87 + 48) = 0;
  *(v87 + 56) = 1;
  *(v87 + 58) = 0;
  *(v87 + 184) = 0;
  *(v87 + 188) = 1;
  *(v87 + 192) = 0;
  *(v87 + 196) = 1;
  *(v87 + 200) = 0x1000100000000;
  *(v87 + 208) = 1;
  *(v87 + 64) = 0;
  *(v87 + 72) = 0;
  *(v87 + 96) = v85;
  *(v87 + 104) = 0;
  *(v87 + 144) = xmmword_1AFE22A20;
  *(v87 + 80) = v86;
  *(v87 + 88) = &off_1F2535378;
  *(v87 + 210) = 0;
  swift_retain_n();

  if (v24)
  {
    v89 = (*(v24 + 8))();
  }

  else
  {
    v89 = v88;
  }

  v90 = swift_conformsToProtocol2();
  v91 = v83;
  if (v90 && v89)
  {
    v92 = (*(v90 + 8))(v89, v90);

    *(v87 + 160) = v92;
  }

  else
  {
  }

  *(v87 + 64) = sub_1AFC73B3C;
  *(v87 + 72) = v84;
  sub_1AF0FB8EC(0, 0);
  *(v87 + 168) = 0;
  *(v87 + 176) = 0;

  *(v87 + 216) = 0;
  v83[13] = v87;
  v93 = swift_getKeyPath();
  v94 = swift_getKeyPath();
  v95 = swift_allocObject();
  v95[4] = sub_1AFC73C3C;
  v95[5] = v93;
  v95[2] = sub_1AFC73BDC;
  v95[3] = v93;
  v95[6] = v93;
  v96 = swift_allocObject();
  *(v96 + 112) = 1;
  *(v96 + 128) = 0;
  *(v96 + 136) = 0;
  *(v96 + 120) = 0;
  *(v96 + 160) = MEMORY[0x1E69E7CC0];
  *(v96 + 168) = 0;
  *(v96 + 216) = 0;
  *(v96 + 176) = 0;
  *(v96 + 16) = 0x6168537374736163;
  *(v96 + 24) = 0xEB00000000776F64;
  *(v96 + 32) = v93;
  *(v96 + 40) = v49;
  *(v96 + 48) = 0;
  *(v96 + 56) = 1;
  *(v96 + 58) = 256;
  *(v96 + 184) = 0;
  *(v96 + 188) = 1;
  *(v96 + 192) = 0;
  *(v96 + 196) = 1;
  *(v96 + 200) = 0x1000100000000;
  *(v96 + 208) = 1;
  *(v96 + 64) = 0;
  *(v96 + 72) = 0;
  *(v96 + 96) = v94;
  *(v96 + 104) = 0;
  *(v96 + 144) = xmmword_1AFE22A20;
  *(v96 + 80) = v95;
  *(v96 + 88) = &off_1F2535378;
  *(v96 + 210) = 256;
  swift_retain_n();

  if (v52)
  {
    v49 = (*(v52 + 8))();
  }

  v97 = swift_conformsToProtocol2();
  if (v97 && v49)
  {
    v98 = (*(v97 + 8))(v49, v97);

    *(v96 + 160) = v98;
  }

  else
  {
  }

  *(v96 + 64) = sub_1AFC73B40;
  *(v96 + 72) = v93;
  sub_1AF0FB8EC(0, 0);
  *(v96 + 168) = 0;
  *(v96 + 176) = 0;

  *(v96 + 216) = 0;
  v83[14] = v96;
  v99 = swift_getKeyPath();
  v100 = swift_getKeyPath();
  v101 = swift_allocObject();
  v101[4] = sub_1AFC73AE4;
  v101[5] = v99;
  v101[2] = sub_1AFC73BD8;
  v101[3] = v99;
  v101[6] = v99;
  v102 = swift_allocObject();
  *(v102 + 112) = 1;
  *(v102 + 128) = 0;
  *(v102 + 136) = 0;
  *(v102 + 120) = 0;
  *(v102 + 160) = MEMORY[0x1E69E7CC0];
  *(v102 + 168) = 0;
  *(v102 + 216) = 0;
  *(v102 + 176) = 0;
  *(v102 + 16) = 0x6E49776F64616873;
  *(v102 + 24) = 0xEF797469736E6574;
  *(v102 + 32) = v99;
  v103 = MEMORY[0x1E69E6448];
  *(v102 + 40) = MEMORY[0x1E69E6448];
  *(v102 + 48) = 0;
  *(v102 + 56) = 1;
  *(v102 + 58) = 0;
  *(v102 + 184) = 0;
  *(v102 + 188) = 1;
  *(v102 + 192) = 0;
  *(v102 + 196) = 1;
  *(v102 + 200) = 0x1000100000000;
  *(v102 + 208) = 1;
  *(v102 + 64) = 0;
  *(v102 + 72) = 0;
  *(v102 + 96) = v100;
  *(v102 + 104) = 0;
  *(v102 + 144) = xmmword_1AFE22A20;
  *(v102 + 80) = v101;
  *(v102 + 88) = &off_1F2535378;
  *(v102 + 210) = 0;
  swift_retain_n();

  if (v24)
  {
    v104 = (*(v24 + 8))();
  }

  else
  {
    v104 = v103;
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v104)
  {
    v106 = (*(v105 + 8))(v104, v105);

    *(v102 + 160) = v106;
  }

  else
  {
  }

  *(v102 + 64) = sub_1AFC73B3C;
  *(v102 + 72) = v99;
  sub_1AF0FB8EC(0, 0);
  *(v102 + 168) = 0;
  *(v102 + 176) = 0;

  *(v102 + 216) = 0;
  v83[15] = v102;
  v107 = swift_getKeyPath();
  v108 = swift_getKeyPath();
  v109 = MEMORY[0x1E69E6530];
  sub_1AFC7246C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v110 = swift_allocObject();
  v110[4] = sub_1AFC704E4;
  v110[5] = v107;
  v110[2] = sub_1AFC70518;
  v110[3] = v107;
  v110[6] = v107;
  v111 = swift_allocObject();
  *(v111 + 112) = 1;
  *(v111 + 128) = 0;
  *(v111 + 136) = 0;
  *(v111 + 120) = 0;
  *(v111 + 160) = MEMORY[0x1E69E7CC0];
  *(v111 + 168) = 0;
  *(v111 + 216) = 0;
  *(v111 + 176) = 0;
  *(v111 + 16) = 0xD000000000000011;
  *(v111 + 24) = 0x80000001AFF4BF30;
  *(v111 + 32) = v107;
  *(v111 + 40) = v109;
  *(v111 + 48) = 0;
  *(v111 + 56) = 1;
  *(v111 + 58) = 0;
  *(v111 + 184) = 0;
  *(v111 + 188) = 1;
  *(v111 + 192) = 0;
  *(v111 + 196) = 1;
  *(v111 + 200) = 0x1000100000000;
  *(v111 + 208) = 1;
  *(v111 + 64) = 0;
  *(v111 + 72) = 0;
  *(v111 + 96) = v108;
  *(v111 + 104) = 0;
  *(v111 + 144) = xmmword_1AFE22A20;
  *(v111 + 80) = v110;
  *(v111 + 88) = &off_1F2535378;
  *(v111 + 210) = 0;
  v112 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v112)
  {
    v109 = (*(v112 + 8))();
  }

  v113 = swift_conformsToProtocol2();
  if (v113 && v109)
  {
    v114 = (*(v113 + 8))(v109, v113);

    *(v111 + 160) = v114;
  }

  else
  {
  }

  *(v111 + 64) = sub_1AFC70524;
  *(v111 + 72) = v107;
  sub_1AF0FB8EC(0, 0);
  *(v111 + 168) = 0;
  *(v111 + 176) = 0;

  *(v111 + 216) = 0;
  v83[16] = v111;
  v115 = swift_getKeyPath();
  v116 = swift_getKeyPath();
  v117 = swift_allocObject();
  v117[4] = sub_1AFC73AE4;
  v117[5] = v115;
  v117[2] = sub_1AFC73BD8;
  v117[3] = v115;
  v117[6] = v115;
  v118 = swift_allocObject();
  *(v118 + 112) = 1;
  *(v118 + 128) = 0;
  *(v118 + 136) = 0;
  *(v118 + 120) = 0;
  *(v118 + 160) = MEMORY[0x1E69E7CC0];
  *(v118 + 168) = 0;
  *(v118 + 216) = 0;
  *(v118 + 176) = 0;
  *(v118 + 16) = 0x6942776F64616873;
  *(v118 + 24) = 0xEA00000000007361;
  *(v118 + 32) = v115;
  v119 = MEMORY[0x1E69E6448];
  *(v118 + 40) = MEMORY[0x1E69E6448];
  *(v118 + 48) = 0;
  *(v118 + 56) = 1;
  *(v118 + 58) = 0;
  *(v118 + 184) = 0;
  *(v118 + 188) = 1;
  *(v118 + 192) = 0;
  *(v118 + 196) = 1;
  *(v118 + 200) = 0x1000100000000;
  *(v118 + 208) = 1;
  *(v118 + 64) = 0;
  *(v118 + 72) = 0;
  *(v118 + 96) = v116;
  *(v118 + 104) = 0;
  *(v118 + 144) = xmmword_1AFE22A20;
  *(v118 + 80) = v117;
  *(v118 + 88) = &off_1F2535378;
  *(v118 + 210) = 0;
  swift_retain_n();

  if (v24)
  {
    v119 = (*(v24 + 8))();
  }

  v120 = swift_conformsToProtocol2();
  if (v120 && v119)
  {
    v121 = (*(v120 + 8))(v119, v120);

    *(v118 + 160) = v121;
  }

  else
  {
  }

  *(v118 + 64) = sub_1AFC73B3C;
  *(v118 + 72) = v115;
  sub_1AF0FB8EC(0, 0);
  *(v118 + 168) = 0;
  *(v118 + 176) = 0;

  *(v118 + 216) = 0;
  *(v91 + 136) = v118;
  qword_1EB6C3618 = v91;
  return result;
}

void sub_1AFC55E20(uint64_t *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 type];
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
}

void sub_1AFC55E84(float *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    [v2 intensity];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  *a1 = v5;
}

BOOL sub_1AFC55EE8()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 type];

      return v3 == 5;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

BOOL sub_1AFC55FD4()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 type];

      return v3 == 3;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

BOOL sub_1AFC560C0()
{
  v0 = sub_1AFC628C8(&selRef_light);
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 type];

  return v2 != 0;
}

void sub_1AFC56114(BOOL *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 type];

    v5 = v4 != 0;
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
}

uint64_t sub_1AFC56180()
{
  v0 = sub_1AFC628C8(&selRef_light);
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 type];

  if (v2 == 2)
  {
    return 1;
  }

  v3 = sub_1AFC628C8(&selRef_light);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 type];

    if (v5 == 3)
    {
      return 1;
    }
  }

  result = sub_1AFC628C8(&selRef_light);
  if (result)
  {
    v7 = result;
    v8 = [result type];

    return v8 == 1;
  }

  return result;
}

float sub_1AFC56284(SEL *a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (Strong)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v8 = 0;
    }

    v3 = [v8 camera];

    if (v3)
    {
      goto LABEL_3;
    }

    return 1.0;
  }

  v3 = v1[4];
  v4 = v3;
  if (!v3)
  {
    return 1.0;
  }

LABEL_3:
  [v3 *a1];
  v6 = v5;

  return v6;
}

double sub_1AFC563CC()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      [v1 projectionTransform];
      v7 = v3;

      return v7;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 camera];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

double sub_1AFC564C8()
{
  v0 = sub_1AFC628C8(&selRef_camera);
  if (v0)
  {
    v1 = v0;
    [v0 projectionTransform];
    v11 = v2;
    v9 = v4;
    v10 = v3;
    v8 = v5;

    v6.columns[3] = v8;
    v6.columns[2] = v9;
    v6.columns[1] = v10;
    v6.columns[0] = v11;
  }

  else
  {
    v6.columns[0] = 0uLL;
    v6.columns[1] = 0uLL;
    v6.columns[2] = 0uLL;
    v6.columns[3] = 0uLL;
  }

  *&result = __invert_f4(v6);
  return result;
}

double sub_1AFC5654C()
{
  sub_1AFC73A9C(v0, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 worldTransform];
      v5 = v3;
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

double sub_1AFC565F0()
{
  sub_1AFC73A9C(v0, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v13);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7.columns[0] = 0uLL;
    v7.columns[1] = 0uLL;
    v7.columns[2] = 0uLL;
    v7.columns[3] = 0uLL;
    goto LABEL_6;
  }

  [v2 worldTransform];
  v11 = v4;
  v12 = v3;
  v9 = v6;
  v10 = v5;
  swift_unknownObjectRelease();
  v7.columns[3] = v9;
  v7.columns[2] = v10;
  v7.columns[1] = v11;
  v7.columns[0] = v12;
LABEL_6:
  *&result = __invert_f4(v7);
  return result;
}

double sub_1AFC56698()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 camera];

    if (v1)
    {
      goto LABEL_3;
    }

    return 0.0;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 0.0;
  }

LABEL_3:
  [v1 filmOffset];
  v4 = v3;

  return v4;
}

uint64_t sub_1AFC567E8()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFEA6590;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AFC7052C;
  v4[5] = KeyPath;
  v4[2] = sub_1AFC70560;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x656C616373;
  *(v5 + 24) = 0xE500000000000000;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = v2;
  *(v5 + 104) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v3;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = (*(v8 + 8))(v7, v8);

    *(v5 + 160) = v9;
  }

  else
  {
  }

  v10 = *(v5 + 64);
  v11 = *(v5 + 72);
  *(v5 + 64) = sub_1AFC7056C;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;

  *(v0 + 32) = v5;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AFC73AE8;
  v14[5] = v12;
  v14[2] = sub_1AFC73BE0;
  v14[3] = v12;
  v14[6] = v12;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 210) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x6E654C6C61636F66;
  *(v15 + 24) = 0xEB00000000687467;
  *(v15 + 32) = v12;
  *(v15 + 40) = v3;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = v13;
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();

  if (v6)
  {
    v16 = (*(v6 + 8))();
  }

  else
  {
    v16 = v3;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = (*(v17 + 8))(v16, v17);

    *(v15 + 160) = v18;
  }

  else
  {
  }

  v19 = *(v15 + 64);
  v20 = *(v15 + 72);
  *(v15 + 64) = sub_1AFC73B44;
  *(v15 + 72) = v12;
  sub_1AF0FB8EC(v19, v20);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 40) = v15;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AFC73AE8;
  v23[5] = v21;
  v23[2] = sub_1AFC73BE0;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 210) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x56664F646C656966;
  *(v24 + 24) = 0xEB00000000776569;
  *(v24 + 32) = v21;
  *(v24 + 40) = v3;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 1;
  *(v24 + 192) = 0;
  *(v24 + 196) = 1;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = v22;
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  swift_retain_n();

  if (v6)
  {
    v25 = (*(v6 + 8))();
  }

  else
  {
    v25 = v3;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    v27 = (*(v26 + 8))(v25, v26);

    *(v24 + 160) = v27;
  }

  else
  {
  }

  v28 = *(v24 + 64);
  v29 = *(v24 + 72);
  *(v24 + 64) = sub_1AFC73B44;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(v28, v29);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;

  *(v0 + 48) = v24;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AFC73AE8;
  v31[5] = v30;
  v31[2] = sub_1AFC73BE0;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 210) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  strcpy((v32 + 16), "sensorHeight");
  *(v32 + 29) = 0;
  *(v32 + 30) = -5120;
  *(v32 + 32) = v30;
  *(v32 + 40) = v3;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 1;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v33 = (*(v6 + 8))();
  }

  else
  {
    v33 = v3;
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v33)
  {
    *(v32 + 160) = (*(v34 + 8))(v33, v34);
  }

  v35 = *(v32 + 64);
  v36 = *(v32 + 72);
  *(v32 + 64) = sub_1AFC73B44;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v35, v36);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v0 + 56) = v32;
  v37 = swift_getKeyPath();
  v38 = swift_allocObject();
  v38[4] = sub_1AFC73AE8;
  v38[5] = v37;
  v38[2] = sub_1AFC73BE0;
  v38[3] = v37;
  v38[6] = v37;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 210) = 0;
  *(v39 + 216) = 0;
  *(v39 + 176) = 0;
  strcpy((v39 + 16), "focusDistance");
  *(v39 + 30) = -4864;
  *(v39 + 32) = v37;
  *(v39 + 40) = v3;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v40 = (*(v6 + 8))();
  }

  else
  {
    v40 = v3;
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v40)
  {
    *(v39 + 160) = (*(v41 + 8))(v40, v41);
  }

  v42 = *(v39 + 64);
  v43 = *(v39 + 72);
  *(v39 + 64) = sub_1AFC73B44;
  *(v39 + 72) = v37;
  sub_1AF0FB8EC(v42, v43);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = 0;

  *(v0 + 64) = v39;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AFC73AE8;
  v45[5] = v44;
  v45[2] = sub_1AFC73BE0;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x7261654E7ALL;
  *(v46 + 24) = 0xE500000000000000;
  *(v46 + 32) = v44;
  *(v46 + 40) = v3;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 256;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 256;
  swift_retain_n();
  if (v6)
  {
    v47 = (*(v6 + 8))();
  }

  else
  {
    v47 = v3;
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v47)
  {
    *(v46 + 160) = (*(v48 + 8))(v47, v48);
  }

  *(v46 + 64) = sub_1AFC73B44;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(0, 0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  *(v0 + 72) = v46;
  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  v50[4] = sub_1AFC73AE8;
  v50[5] = v49;
  v50[2] = sub_1AFC73BE0;
  v50[3] = v49;
  v50[6] = v49;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 1918977658;
  *(v51 + 24) = 0xE400000000000000;
  *(v51 + 32) = v49;
  *(v51 + 40) = v3;
  *(v51 + 48) = 0;
  *(v51 + 56) = 1;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = 0;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v3 = (*(v6 + 8))();
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v3)
  {
    *(v51 + 160) = (*(v52 + 8))(v3, v52);
  }

  *(v51 + 64) = sub_1AFC73B44;
  *(v51 + 72) = v49;
  sub_1AF0FB8EC(0, 0);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;
  *(v0 + 80) = v51;
  v53 = swift_getKeyPath();
  v54 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v55 = swift_allocObject();
  v55[4] = sub_1AFC70574;
  v55[5] = v53;
  v55[2] = sub_1AFC705A0;
  v55[3] = v53;
  v55[6] = v53;
  v56 = swift_allocObject();
  *(v56 + 112) = 1;
  *(v56 + 128) = 0;
  *(v56 + 136) = 0;
  *(v56 + 120) = 0;
  *(v56 + 160) = MEMORY[0x1E69E7CC0];
  *(v56 + 168) = 0;
  *(v56 + 216) = 0;
  *(v56 + 176) = 0;
  *(v56 + 16) = 0x52444873746E6177;
  *(v56 + 24) = 0xE800000000000000;
  *(v56 + 32) = v53;
  *(v56 + 40) = v54;
  *(v56 + 48) = 0;
  *(v56 + 56) = 1;
  *(v56 + 58) = 256;
  *(v56 + 184) = 0;
  *(v56 + 188) = 1;
  *(v56 + 192) = 0;
  *(v56 + 196) = 1;
  *(v56 + 200) = 0x1000100000000;
  *(v56 + 208) = 1;
  *(v56 + 64) = 0;
  *(v56 + 72) = 0;
  *(v56 + 96) = 0;
  *(v56 + 104) = 0;
  *(v56 + 144) = xmmword_1AFE22A20;
  *(v56 + 80) = v55;
  *(v56 + 88) = &off_1F2535378;
  *(v56 + 210) = 256;
  v57 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v57)
  {
    v54 = (*(v57 + 8))();
  }

  v58 = swift_conformsToProtocol2();
  if (v58 && v54)
  {
    *(v56 + 160) = (*(v58 + 8))(v54, v58);
  }

  *(v56 + 64) = sub_1AFC705AC;
  *(v56 + 72) = v53;
  sub_1AF0FB8EC(0, 0);
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;

  *(v56 + 216) = 0;
  *(v0 + 88) = v56;
  v59 = swift_getKeyPath();
  v60 = MEMORY[0x1E69E7428];
  sub_1AFC703CC(0, &qword_1ED725C78, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v61 = swift_allocObject();
  v61[4] = sub_1AFC705B4;
  v61[5] = v59;
  v61[2] = sub_1AFC705E8;
  v61[3] = v59;
  v61[6] = v59;
  v62 = swift_allocObject();
  *(v62 + 104) = 0;
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 160) = MEMORY[0x1E69E7CC0];
  *(v62 + 216) = 0;
  sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], v60);
  v64 = v63;
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 0x7366664F6D6C6966;
  *(v62 + 24) = 0xEA00000000007465;
  *(v62 + 32) = v59;
  *(v62 + 40) = v63;
  *(v62 + 48) = 0;
  *(v62 + 56) = 1;
  *(v62 + 58) = 0;
  *(v62 + 184) = 0;
  *(v62 + 188) = 1;
  *(v62 + 192) = 0;
  *(v62 + 196) = 1;
  *(v62 + 200) = 0x1000100000000;
  *(v62 + 208) = 1;
  *(v62 + 64) = 0;
  *(v62 + 72) = 0;
  *(v62 + 96) = 0;
  *(v62 + 144) = xmmword_1AFE22A20;
  *(v62 + 80) = v61;
  *(v62 + 88) = &off_1F2535378;
  *(v62 + 210) = 0;
  v65 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v65 && v64)
  {
    v64 = (*(v65 + 8))(v64, v65);
  }

  v66 = swift_conformsToProtocol2();
  if (v66 && v64)
  {
    *(v62 + 160) = (*(v66 + 8))(v64, v66);
  }

  v67 = *(v62 + 64);
  v68 = *(v62 + 72);
  *(v62 + 64) = sub_1AFC705F4;
  *(v62 + 72) = v59;
  sub_1AF0FB8EC(v67, v68);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;

  *(v0 + 96) = v62;
  v69 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v70 = swift_allocObject();
  v70[4] = sub_1AFC705FC;
  v70[5] = v69;
  v70[2] = sub_1AFC70648;
  v70[3] = v69;
  v70[6] = v69;
  v71 = swift_allocObject();
  *(v71 + 104) = 0;
  *(v71 + 112) = 1;
  *(v71 + 128) = 0;
  *(v71 + 136) = 0;
  *(v71 + 120) = 0;
  *(v71 + 160) = MEMORY[0x1E69E7CC0];
  *(v71 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v73 = v72;
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;
  *(v71 + 16) = 0xD000000000000013;
  *(v71 + 24) = 0x80000001AFF226C0;
  *(v71 + 32) = v69;
  *(v71 + 40) = v72;
  *(v71 + 48) = 0;
  *(v71 + 56) = 1;
  *(v71 + 58) = 2048;
  *(v71 + 184) = 0;
  *(v71 + 188) = 1;
  *(v71 + 192) = 0;
  *(v71 + 196) = 1;
  *(v71 + 200) = 0x1000100000000;
  *(v71 + 208) = 1;
  *(v71 + 64) = 0;
  *(v71 + 72) = 0;
  *(v71 + 96) = 0;
  *(v71 + 144) = xmmword_1AFE22A20;
  *(v71 + 80) = v70;
  *(v71 + 88) = &off_1F2535378;
  *(v71 + 210) = 2048;
  v74 = swift_conformsToProtocol2();
  if (v74)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  swift_retain_n();
  v76 = v73;
  if (v75)
  {
    v76 = (*(v74 + 8))(v75, v74);
  }

  v77 = swift_conformsToProtocol2();
  if (v77 && v76)
  {
    *(v71 + 160) = (*(v77 + 8))(v76, v77);
  }

  v78 = *(v71 + 64);
  v79 = *(v71 + 72);
  *(v71 + 64) = sub_1AFC70658;
  *(v71 + 72) = v69;
  sub_1AF0FB8EC(v78, v79);
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;

  *(v71 + 216) = 0;

  *(v0 + 104) = v71;
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  v81[4] = sub_1AFC73C94;
  v81[5] = v80;
  v81[2] = sub_1AFC73C9C;
  v81[3] = v80;
  v81[6] = v80;
  v82 = swift_allocObject();
  *(v82 + 112) = 1;
  *(v82 + 128) = 0;
  *(v82 + 136) = 0;
  *(v82 + 120) = 0;
  *(v82 + 160) = MEMORY[0x1E69E7CC0];
  *(v82 + 168) = 0;
  *(v82 + 216) = 0;
  *(v82 + 176) = 0;
  *(v82 + 16) = 0xD00000000000001ALL;
  *(v82 + 24) = 0x80000001AFF4BF50;
  *(v82 + 32) = v80;
  *(v82 + 40) = v73;
  *(v82 + 48) = 0;
  *(v82 + 56) = 1;
  *(v82 + 58) = 16;
  *(v82 + 184) = 0;
  *(v82 + 188) = 1;
  *(v82 + 192) = 0;
  *(v82 + 196) = 1;
  *(v82 + 200) = 0x1000100000000;
  *(v82 + 208) = 1;
  *(v82 + 64) = 0;
  *(v82 + 72) = 0;
  *(v82 + 96) = 0;
  *(v82 + 104) = 0;
  *(v82 + 144) = xmmword_1AFE22A20;
  *(v82 + 80) = v81;
  *(v82 + 88) = &off_1F2535378;
  *(v82 + 210) = 16;
  swift_retain_n();
  v83 = v73;
  if (v75)
  {
    v83 = (*(v74 + 8))(v75, v74);
  }

  v84 = swift_conformsToProtocol2();
  if (v84 && v83)
  {
    *(v82 + 160) = (*(v84 + 8))(v83, v84);
  }

  v85 = *(v82 + 64);
  v86 = *(v82 + 72);
  *(v82 + 64) = sub_1AFC73B48;
  *(v82 + 72) = v80;
  sub_1AF0FB8EC(v85, v86);
  *(v82 + 168) = 0;
  *(v82 + 176) = 0;

  *(v82 + 216) = 0;

  *(v0 + 112) = v82;
  v87 = swift_getKeyPath();
  v88 = swift_allocObject();
  v88[4] = sub_1AFC73C94;
  v88[5] = v87;
  v88[2] = sub_1AFC73C9C;
  v88[3] = v87;
  v88[6] = v87;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  strcpy((v89 + 16), "worldTransform");
  *(v89 + 31) = -18;
  *(v89 + 32) = v87;
  *(v89 + 40) = v73;
  *(v89 + 48) = 0;
  *(v89 + 56) = 1;
  *(v89 + 58) = 2048;
  *(v89 + 184) = 0;
  *(v89 + 188) = 1;
  *(v89 + 192) = 0;
  *(v89 + 196) = 1;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = 0;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 2048;
  swift_retain_n();
  v90 = v73;
  if (v75)
  {
    v90 = (*(v74 + 8))(v75, v74);
  }

  v91 = swift_conformsToProtocol2();
  if (v91 && v90)
  {
    *(v89 + 160) = (*(v91 + 8))(v90, v91);
  }

  v92 = *(v89 + 64);
  v93 = *(v89 + 72);
  *(v89 + 64) = sub_1AFC73B48;
  *(v89 + 72) = v87;
  sub_1AF0FB8EC(v92, v93);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;

  *(v0 + 120) = v89;
  v94 = swift_getKeyPath();
  v95 = swift_allocObject();
  v95[4] = sub_1AFC73C94;
  v95[5] = v94;
  v95[2] = sub_1AFC73C9C;
  v95[3] = v94;
  v95[6] = v94;
  v96 = swift_allocObject();
  *(v96 + 112) = 1;
  *(v96 + 128) = 0;
  *(v96 + 136) = 0;
  *(v96 + 120) = 0;
  *(v96 + 160) = MEMORY[0x1E69E7CC0];
  *(v96 + 168) = 0;
  *(v96 + 216) = 0;
  *(v96 + 176) = 0;
  *(v96 + 16) = 0xD000000000000015;
  *(v96 + 24) = 0x80000001AFF4BF70;
  *(v96 + 32) = v94;
  *(v96 + 40) = v73;
  *(v96 + 48) = 0;
  *(v96 + 56) = 1;
  *(v96 + 58) = 16;
  *(v96 + 184) = 0;
  *(v96 + 188) = 1;
  *(v96 + 192) = 0;
  *(v96 + 196) = 1;
  *(v96 + 200) = 0x1000100000000;
  *(v96 + 208) = 1;
  *(v96 + 64) = 0;
  *(v96 + 72) = 0;
  *(v96 + 96) = 0;
  *(v96 + 104) = 0;
  *(v96 + 144) = xmmword_1AFE22A20;
  *(v96 + 80) = v95;
  *(v96 + 88) = &off_1F2535378;
  *(v96 + 210) = 16;
  swift_retain_n();
  if (v75)
  {
    v73 = (*(v74 + 8))(v75, v74);
  }

  v97 = swift_conformsToProtocol2();
  if (v97 && v73)
  {
    *(v96 + 160) = (*(v97 + 8))(v73, v97);
  }

  v98 = *(v96 + 64);
  v99 = *(v96 + 72);
  *(v96 + 64) = sub_1AFC73B48;
  *(v96 + 72) = v94;
  sub_1AF0FB8EC(v98, v99);
  *(v96 + 168) = 0;
  *(v96 + 176) = 0;

  *(v96 + 216) = 0;

  *(v0 + 128) = v96;
  qword_1EB6C3620 = v0;
  return result;
}

id sub_1AFC580D4(SEL *a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v9);
    if (Strong)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v7 = 0;
    }

    v3 = [v7 camera];

    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = v1[4];
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v5 = [v3 *a1];

  return v5;
}

uint64_t sub_1AFC581C4()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 usesOrthographicProjection];

      return v3 ^ 1;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 camera];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

void sub_1AFC582AC(SEL *a1@<X3>, float *a2@<X8>)
{
  v4 = sub_1AFC628C8(&selRef_camera);
  if (v4)
  {
    v5 = v4;
    [v4 *a1];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  *a2 = v7;
}

void sub_1AFC58318(simd_float4x4 *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_camera);
  if (v2)
  {
    v3 = v2;
    [v2 projectionTransform];
    v12 = v4;
    v10 = v6;
    v11 = v5;
    v9 = v7;

    v8.columns[3] = v9;
    v8.columns[2] = v10;
    v8.columns[1] = v11;
    v8.columns[0] = v12;
  }

  else
  {
    v8.columns[0] = 0uLL;
    v8.columns[1] = 0uLL;
    v8.columns[2] = 0uLL;
    v8.columns[3] = 0uLL;
  }

  *a1 = j____invert_f4_1(v8);
}

void sub_1AFC583A4(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFC73A9C(a1, v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v17);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v11 = 0uLL;
    v12 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    goto LABEL_6;
  }

  [v4 worldTransform];
  v15 = v6;
  v16 = v5;
  v13 = v8;
  v14 = v7;
  swift_unknownObjectRelease();
  v10 = v13;
  v9 = v14;
  v12 = v15;
  v11 = v16;
LABEL_6:
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v9;
  a2[3] = v10;
}

void sub_1AFC58450(__int128 *a1, void *a2)
{
  v6 = a1[1];
  v7 = *a1;
  v4 = a1[3];
  v5 = a1[2];
  sub_1AFC73A9C(a2, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  [v3 setWorldTransform_];
}

void sub_1AFC584F8(void *a1@<X0>, simd_float4x4 *a2@<X8>)
{
  sub_1AFC73A9C(a1, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v14);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v9.columns[0] = 0uLL;
    v9.columns[1] = 0uLL;
    v9.columns[2] = 0uLL;
    v9.columns[3] = 0uLL;
    goto LABEL_6;
  }

  [v4 worldTransform];
  v12 = v6;
  v13 = v5;
  v10 = v8;
  v11 = v7;
  swift_unknownObjectRelease();
  v9.columns[3] = v10;
  v9.columns[2] = v11;
  v9.columns[1] = v12;
  v9.columns[0] = v13;
LABEL_6:
  *a2 = j____invert_f4_1(v9);
}

void sub_1AFC58608(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      return;
    }

    v9 = [v8 camera];
    swift_unknownObjectRelease();
    v5 = [v9 *a2];

    if (!v5)
    {
      return;
    }

LABEL_7:
    [v5 *a1];

    return;
  }

  v5 = v2[4];
  v6 = v5;
  if (v5)
  {
    goto LABEL_7;
  }
}

__n128 sub_1AFC58740()
{
  v0 = sub_1AFC59C10(&selRef_bloom);
  if (v0)
  {
    v1 = v0;
    [v0 colorFilter];
    v8 = v2;

    return v8;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

id sub_1AFC587C0()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (!v1)
    {
      return 0;
    }

LABEL_7:
    v6 = [v1 iterationCount];

    return v6;
  }

  sub_1AFC73A9C(v0, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 camera];
      swift_unknownObjectRelease();
      v1 = [v5 bloom];

      if (v1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1AFC588D4(SEL *a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = v2[4];
    v6 = v5;
    if (!v5)
    {
      return 0;
    }

LABEL_7:
    v10 = [v5 *a1];

    return v10;
  }

  sub_1AFC73A9C(v2, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v12);
  if (Strong)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 camera];
      swift_unknownObjectRelease();
      v5 = [v9 *a2];

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_1AFC58A3C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC7082C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70860;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  v8 = *(v4 + 64);
  v9 = *(v4 + 72);
  *(v4 + 64) = sub_1AFC7086C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AFC70874;
  v12[5] = v10;
  v12[2] = sub_1AFC708A8;
  v12[3] = v10;
  v12[6] = v10;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x7469736E65746E69;
  *(v13 + 24) = 0xE900000000000079;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v15 = (*(v14 + 8))();
  }

  else
  {
    v15 = v11;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v13 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v13 + 64) = sub_1AFC708B4;
  *(v13 + 72) = v10;
  sub_1AF0FB8EC(0, 0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;
  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AFC73AEC;
  v18[5] = v17;
  v18[2] = sub_1AFC73BE4;
  v18[3] = v17;
  v18[6] = v17;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x6C6F687365726874;
  *(v19 + 24) = 0xE900000000000064;
  *(v19 + 32) = v17;
  *(v19 + 40) = v11;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  swift_retain_n();
  if (v14)
  {
    v20 = (*(v14 + 8))();
  }

  else
  {
    v20 = v11;
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v19 + 160) = (*(v21 + 8))(v20, v21);
  }

  *(v19 + 64) = sub_1AFC73B4C;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 48) = v19;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AFC73AEC;
  v23[5] = v22;
  v23[2] = sub_1AFC73BE4;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0xD000000000000013;
  *(v24 + 24) = 0x80000001AFF22B30;
  *(v24 + 32) = v22;
  *(v24 + 40) = v11;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 1;
  *(v24 + 192) = 0;
  *(v24 + 196) = 1;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  swift_retain_n();
  if (v14)
  {
    v11 = (*(v14 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v11)
  {
    *(v24 + 160) = (*(v25 + 8))(v11, v25);
  }

  *(v24 + 64) = sub_1AFC73B4C;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AFC73C40;
  v27[5] = v26;
  v27[2] = sub_1AFC73BE8;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  strcpy((v28 + 16), "useHighQuality");
  *(v28 + 31) = -18;
  *(v28 + 32) = v26;
  *(v28 + 40) = v2;
  *(v28 + 48) = 0;
  *(v28 + 56) = 1;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v2)
  {
    *(v28 + 160) = (*(v29 + 8))(v2, v29);
  }

  *(v28 + 64) = sub_1AFC73B50;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 64) = v28;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v32 = swift_allocObject();
  v32[4] = sub_1AFC708BC;
  v32[5] = v30;
  v32[2] = sub_1AFC708D4;
  v32[3] = v30;
  v32[6] = v30;
  v33 = swift_allocObject();
  *(v33 + 104) = 0;
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 216) = 0;
  v34 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v31);
  v36 = v35;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x6C6946726F6C6F63;
  *(v33 + 24) = 0xEB00000000726574;
  *(v33 + 32) = v30;
  *(v33 + 40) = v35;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v37 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v37 && v36)
  {
    v36 = (*(v37 + 8))(v36, v37);
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v36)
  {
    *(v33 + 160) = (*(v38 + 8))(v36, v38);
  }

  v39 = *(v33 + 64);
  v40 = *(v33 + 72);
  *(v33 + 64) = sub_1AFC708E0;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(v39, v40);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v0 + 72) = v33;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  v42[4] = sub_1AFC73AEC;
  v42[5] = v41;
  v42[2] = sub_1AFC73BE4;
  v42[3] = v41;
  v42[6] = v41;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  v44 = MEMORY[0x1E69E7CC0];
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x74736172746E6F63;
  *(v43 + 24) = 0xE800000000000000;
  *(v43 + 32) = v41;
  *(v43 + 40) = v34;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  swift_retain_n();
  if (v14)
  {
    v45 = (*(v14 + 8))();
  }

  else
  {
    v45 = v34;
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v45)
  {
    *(v43 + 160) = (*(v46 + 8))(v45, v46);
  }

  *(v43 + 64) = sub_1AFC73B4C;
  *(v43 + 72) = v41;
  sub_1AF0FB8EC(0, 0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 80) = v43;
  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  v48[4] = sub_1AFC73AEC;
  v48[5] = v47;
  v48[2] = sub_1AFC73BE4;
  v48[3] = v47;
  v48[6] = v47;
  v49 = swift_allocObject();
  *(v49 + 112) = 1;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;
  *(v49 + 120) = 0;
  *(v49 + 160) = v44;
  *(v49 + 168) = 0;
  *(v49 + 216) = 0;
  *(v49 + 176) = 0;
  *(v49 + 16) = 0x6974617275746173;
  *(v49 + 24) = 0xEA00000000006E6FLL;
  *(v49 + 32) = v47;
  *(v49 + 40) = v34;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  *(v49 + 58) = 0;
  *(v49 + 184) = 0;
  *(v49 + 188) = 1;
  *(v49 + 192) = 0;
  *(v49 + 196) = 1;
  *(v49 + 200) = 0x1000100000000;
  *(v49 + 208) = 1;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 96) = 0;
  *(v49 + 104) = 0;
  *(v49 + 144) = xmmword_1AFE22A20;
  *(v49 + 80) = v48;
  *(v49 + 88) = &off_1F2535378;
  *(v49 + 210) = 0;
  swift_retain_n();
  if (v14)
  {
    v34 = (*(v14 + 8))();
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v34)
  {
    *(v49 + 160) = (*(v50 + 8))(v34, v50);
  }

  *(v49 + 64) = sub_1AFC73B4C;
  *(v49 + 72) = v47;
  sub_1AF0FB8EC(0, 0);
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;

  *(v49 + 216) = 0;
  *(v0 + 88) = v49;
  v51 = swift_getKeyPath();
  v52 = MEMORY[0x1E69E6530];
  sub_1AFC7246C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v53 = swift_allocObject();
  v53[4] = sub_1AFC708E8;
  v53[5] = v51;
  v53[2] = sub_1AFC7091C;
  v53[3] = v51;
  v53[6] = v51;
  v54 = swift_allocObject();
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = v44;
  *(v54 + 168) = 0;
  *(v54 + 216) = 0;
  *(v54 + 176) = 0;
  strcpy((v54 + 16), "iterationCount");
  *(v54 + 31) = -18;
  *(v54 + 32) = v51;
  *(v54 + 40) = v52;
  *(v54 + 48) = 0;
  *(v54 + 56) = 1;
  *(v54 + 58) = 0;
  *(v54 + 184) = 0;
  *(v54 + 188) = 1;
  *(v54 + 192) = 0;
  *(v54 + 196) = 1;
  *(v54 + 200) = 0x1000100000000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 96) = 0;
  *(v54 + 104) = 0;
  *(v54 + 144) = xmmword_1AFE22A20;
  *(v54 + 80) = v53;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 210) = 0;
  v55 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v55)
  {
    v52 = (*(v55 + 8))();
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v52)
  {
    *(v54 + 160) = (*(v56 + 8))(v52, v56);
  }

  *(v54 + 64) = sub_1AFC70928;
  *(v54 + 72) = v51;
  sub_1AF0FB8EC(0, 0);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;
  *(v0 + 96) = v54;
  qword_1EB6C2720 = v0;
  return result;
}

void sub_1AFC59B88(void *a1@<X8>)
{
  v2 = sub_1AFC59C10(&selRef_bloom);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 iterationCount];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

id sub_1AFC59C10(SEL *a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v9);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = [v6 camera];
        swift_unknownObjectRelease();
        v3 = [v7 *a1];

        return v3;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v3 = v1[4];
  v4 = v3;
  return v3;
}

double sub_1AFC59D0C(char a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = v2[4];
    v6 = v5;
    if (!v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  sub_1AFC73A9C(v2, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (Strong)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 camera];
      swift_unknownObjectRelease();
      if (v10)
      {
        v5 = [v10 *a2];

        if (v5)
        {
LABEL_3:
          [v5 setEnabled_];
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFC59E14()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (!v1)
    {
      return 1;
    }

LABEL_7:
    v6 = [v1 mode];

    return v6;
  }

  sub_1AFC73A9C(v0, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 camera];
      swift_unknownObjectRelease();
      v1 = [v5 toneMapping];

      if (v1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_1AFC59F8C@<X0>(void *a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X1>, uint64_t (*a3)(_BYTE *)@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  v13 = 0;
  swift_unknownObjectWeakAssign();
  v14 = 0x3E6C6C756E3CLL;
  v15 = 0xE600000000000000;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v4)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF9B3A20();
    sub_1AFDFEE88();
    sub_1AF9B3A74(&v10, v12);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
    a2(v12, a4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a3(v12);
}

void sub_1AFC5A0D4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v3, ObjectType, a2);
  sub_1AFC73A9C(v3, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v13);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v10 = [v9 presentationNode];
  swift_unknownObjectRelease();
  v11 = [v10 camera];

  v12 = [v11 *a3];
LABEL_6:

  v5[4] = v12;
}

uint64_t sub_1AFC5A254()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70B7C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70BB0;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AFC70BBC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1EB63BA88, type metadata accessor for VFXCameraToneMappingMode);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC70C28;
  v9[5] = v8;
  v9[2] = sub_1AFC70C5C;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v7;
  *(v10 + 216) = 0;
  type metadata accessor for VFXCameraToneMappingMode(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 1701080941;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13 && v12)
  {
    v12 = (*(v13 + 8))(v12, v13);
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v12)
  {
    *(v10 + 160) = (*(v14 + 8))(v12, v14);
  }

  v15 = *(v10 + 64);
  v16 = *(v10 + 72);
  *(v10 + 64) = sub_1AFC70C68;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15, v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AFC70C70;
  v19[5] = v17;
  v19[2] = sub_1AFC70CA4;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = v7;
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6E65727453656F74;
  *(v20 + 24) = 0xEB00000000687467;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 1;
  *(v20 + 192) = 0;
  *(v20 + 196) = 1;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v22 = (*(v21 + 8))();
  }

  else
  {
    v22 = v18;
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v20 + 160) = (*(v23 + 8))(v22, v23);
  }

  *(v20 + 64) = sub_1AFC70CB0;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 48) = v20;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AFC73AF0;
  v25[5] = v24;
  v25[2] = sub_1AFC73BEC;
  v25[3] = v24;
  v25[6] = v24;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 160) = v7;
  *(v26 + 168) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x74676E654C656F74;
  *(v26 + 24) = 0xE900000000000068;
  *(v26 + 32) = v24;
  *(v26 + 40) = v18;
  *(v26 + 48) = 0;
  *(v26 + 56) = 1;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 144) = xmmword_1AFE22A20;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  swift_retain_n();
  if (v21)
  {
    v27 = (*(v21 + 8))();
  }

  else
  {
    v27 = v18;
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v26 + 160) = (*(v28 + 8))(v27, v28);
  }

  *(v26 + 64) = sub_1AFC73B54;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;
  *(v0 + 56) = v26;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AFC73AF0;
  v30[5] = v29;
  v30[2] = sub_1AFC73BEC;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0xD000000000000010;
  *(v31 + 24) = 0x80000001AFF4BF90;
  *(v31 + 32) = v29;
  *(v31 + 40) = v18;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  swift_retain_n();
  if (v21)
  {
    v32 = (*(v21 + 8))();
  }

  else
  {
    v32 = v18;
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v32)
  {
    *(v31 + 160) = (*(v33 + 8))(v32, v33);
  }

  *(v31 + 64) = sub_1AFC73B54;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(0, 0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 64) = v31;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AFC73AF0;
  v35[5] = v34;
  v35[2] = sub_1AFC73BEC;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  v37 = MEMORY[0x1E69E7CC0];
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 168) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  strcpy((v36 + 16), "shoulderLength");
  *(v36 + 31) = -18;
  *(v36 + 32) = v34;
  *(v36 + 40) = v18;
  *(v36 + 48) = 0;
  *(v36 + 56) = 1;
  *(v36 + 58) = 0;
  *(v36 + 184) = 0;
  *(v36 + 188) = 1;
  *(v36 + 192) = 0;
  *(v36 + 196) = 1;
  *(v36 + 200) = 0x1000100000000;
  *(v36 + 208) = 1;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0;
  *(v36 + 144) = xmmword_1AFE22A20;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 0;
  swift_retain_n();
  if (v21)
  {
    v38 = (*(v21 + 8))();
  }

  else
  {
    v38 = v18;
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    *(v36 + 160) = (*(v39 + 8))(v38, v39);
  }

  *(v36 + 64) = sub_1AFC73B54;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(0, 0);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;
  *(v0 + 72) = v36;
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  v41[4] = sub_1AFC73AF0;
  v41[5] = v40;
  v41[2] = sub_1AFC73BEC;
  v41[3] = v40;
  v41[6] = v40;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = v37;
  *(v42 + 168) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  strcpy((v42 + 16), "shoulderAngle");
  *(v42 + 30) = -4864;
  *(v42 + 32) = v40;
  *(v42 + 40) = v18;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = 0;
  *(v42 + 188) = 1;
  *(v42 + 192) = 0;
  *(v42 + 196) = 1;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  swift_retain_n();
  if (v21)
  {
    v43 = (*(v21 + 8))();
  }

  else
  {
    v43 = v18;
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v43)
  {
    *(v42 + 160) = (*(v44 + 8))(v43, v44);
  }

  *(v42 + 64) = sub_1AFC73B54;
  *(v42 + 72) = v40;
  sub_1AF0FB8EC(0, 0);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;
  *(v0 + 80) = v42;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AFC73AF0;
  v46[5] = v45;
  v46[2] = sub_1AFC73BEC;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = v37;
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x616D6D6167;
  *(v47 + 24) = 0xE500000000000000;
  *(v47 + 32) = v45;
  *(v47 + 40) = v18;
  *(v47 + 48) = 0;
  *(v47 + 56) = 1;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  swift_retain_n();
  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v18)
  {
    *(v47 + 160) = (*(v48 + 8))(v18, v48);
  }

  *(v47 + 64) = sub_1AFC73B54;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0, 0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v0 + 88) = v47;
  qword_1EB6C3628 = v0;
  return result;
}

void sub_1AFC5B148(uint64_t *a1@<X8>)
{
  v2 = sub_1AFC59C10(&selRef_toneMapping);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mode];
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
}

uint64_t sub_1AFC5B258()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70CB8;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70CE4;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC70CF0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70CF8;
  v10[5] = v8;
  v10[2] = sub_1AFC70D2C;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x65756C6176;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70D38;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3630 = v0;
  return result;
}

uint64_t sub_1AFC5B798()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70D40;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70D6C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC70D78;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70D80;
  v10[5] = v8;
  v10[2] = sub_1AFC70DB4;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x737569646172;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70DC0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2710 = v0;
  return result;
}

uint64_t sub_1AFC5BCE8()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70DC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70DF4;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AFC70E00;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70E08;
  v10[5] = v8;
  v10[2] = sub_1AFC70E3C;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x7469736E65746E69;
  *(v11 + 24) = 0xE900000000000079;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = v9;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  *(v11 + 64) = sub_1AFC70E48;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AFC73AF4;
  v16[5] = v15;
  v16[2] = sub_1AFC73BF0;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x656C616373;
  *(v17 + 24) = 0xE500000000000000;
  *(v17 + 32) = v15;
  *(v17 + 40) = v9;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v9)
  {
    *(v17 + 160) = (*(v18 + 8))(v9, v18);
  }

  *(v17 + 64) = sub_1AFC73B58;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AFC73C44;
  v20[5] = v19;
  v20[2] = sub_1AFC73BF4;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x65726F6C6F437369;
  *(v21 + 24) = 0xE900000000000064;
  *(v21 + 32) = v19;
  *(v21 + 40) = v2;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 1;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v2)
  {
    *(v21 + 160) = (*(v22 + 8))(v2, v22);
  }

  *(v21 + 64) = sub_1AFC73B5C;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(0, 0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;
  *(v0 + 56) = v21;
  qword_1EB6C3638 = v0;
  return result;
}