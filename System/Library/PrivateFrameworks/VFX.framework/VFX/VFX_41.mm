void *sub_1AF441B18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E6158], &type metadata for ScriptParameter, MEMORY[0x1E69E6168]);
  v4 = sub_1AF420554(0, v2, 0, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    for (i = (a1 + 80); ; i += 56)
    {
      v9 = *(i - 6);
      v8 = *(i - 5);
      v10 = *(i - 4);
      v27 = *(i - 24);
      v11 = *(i - 2);
      v28 = *(i - 1);
      v29 = *i;
      swift_bridgeObjectRetain_n();
      sub_1AF443EE0(v10);
      sub_1AF444224(v11);
      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_1AF420554(v12 > 1, v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_1AF41A54C(v9, v8, MEMORY[0x1E69E60C8], sub_1AF41B38C);
      v18 = v17;
      v19 = v3[2] + ((v17 & 1) == 0);
      if (v3[3] < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v25 = v16;
      sub_1AF84F68C();
      v16 = v25;
      if (v18)
      {
LABEL_12:
        v21 = v16;

        v22 = v3[7] + 40 * v21;
        v23 = *v22;
        v24 = *(v22 + 16);
        *v22 = v10;
        *(v22 + 8) = v27;
        *(v22 + 16) = v11;
        *(v22 + 24) = v28;
        *(v22 + 32) = v29;
        sub_1AF443F24(v23);
        sub_1AF444AF4(v24);
        goto LABEL_4;
      }

LABEL_3:
      v3[(v16 >> 6) + 8] |= 1 << v16;
      v6 = (v3[6] + 16 * v16);
      *v6 = v9;
      v6[1] = v8;
      v7 = v3[7] + 40 * v16;
      *v7 = v10;
      *(v7 + 8) = v27;
      *(v7 + 16) = v11;
      *(v7 + 24) = v28;
      *(v7 + 32) = v29;
      ++v3[2];
LABEL_4:
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1AF840CBC(v19, isUniquelyReferenced_nonNull_native);
    v16 = sub_1AF41A54C(v9, v8, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    if ((v18 & 1) != (v20 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v18)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v3;
}

void sub_1AF441DD8(uint64_t a1)
{
  if (!qword_1ED722EF8)
  {
    sub_1AF449B08(255, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED722EF8);
    }
  }
}

void sub_1AF441E54(uint64_t a1)
{
  if (!qword_1EB630968)
  {
    sub_1AF449B08(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630968);
    }
  }
}

uint64_t sub_1AF441F2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  *a3 = result;
  return result;
}

void *sub_1AF441F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  result = v4(&v7, &v6);
  *a2 = v7;
  return result;
}

void sub_1AF441FD8(uint64_t result, uint64_t a2, char a3, void *a4)
{
  if ((a3 & 1) != 0 || !*(a2 + 16))
  {

    MEMORY[0x1B2718E00](v5);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
  }
}

unint64_t sub_1AF442064(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 2)
  {
    if (v1 > 2)
    {
      return result;
    }
  }

  if (v1 == 3 || v1 == 4 || v1 == 5)
  {
  }

  return result;
}

void sub_1AF4420DC(uint64_t a1)
{
  if (!qword_1EB6383B0)
  {
    sub_1AF445B28(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6383B0);
    }
  }
}

void sub_1AF44219C(uint64_t a1)
{
  if (!qword_1EB63F3E0)
  {
    sub_1AF445B28(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F3E0);
    }
  }
}

double sub_1AF442288(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x20000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 193) = 0u;
  return result;
}

void sub_1AF442380(uint64_t a1)
{
  if (!qword_1EB6383D0)
  {
    sub_1AF4485F8(255, &qword_1EB63FCD0, &type metadata for SamplerArgument, MEMORY[0x1E69E6530], "value index ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6383D0);
    }
  }
}

void sub_1AF4423F8(uint64_t a1)
{
  if (!qword_1EB6383E0)
  {
    sub_1AF4485F8(255, &qword_1EB63D160, &type metadata for TextureArgument, MEMORY[0x1E69E6530], "value index ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6383E0);
    }
  }
}

double sub_1AF442470(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1AF442550(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void sub_1AF442658()
{
  if (!qword_1ED723038)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723038);
    }
  }
}

void sub_1AF4426B8(uint64_t a1)
{
  if (!qword_1ED722F20)
  {
    sub_1AF449B08(255, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED722F20);
    }
  }
}

void sub_1AF44274C()
{
  if (!qword_1EB6383F8)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6383F8);
    }
  }
}

void sub_1AF4427B0()
{
  if (!qword_1EB638400)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638400);
    }
  }
}

uint64_t _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1AF442910(uint64_t a1)
{
  if (!qword_1ED723F30)
  {
    sub_1AF449B08(255, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    type metadata accessor for TriggerScript(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED723F30);
    }
  }
}

void sub_1AF4429B4(uint64_t a1)
{
  if (!qword_1EB638430)
  {
    type metadata accessor for VFXHitTestOption(255);
    sub_1AF43A5EC(&qword_1EB637E00, type metadata accessor for VFXHitTestOption, byte_1AFE4BE40);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638430);
    }
  }
}

void sub_1AF442A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1AF442AF4()
{
  result = qword_1EB638460;
  if (!qword_1EB638460)
  {
    result = swift_getWitnessTable(byte_1AFE99840, &type metadata for TriggerScriptRunnerSystem.CollisionNodePair, v0, v1);
    atomic_store(result, &qword_1EB638460);
  }

  return result;
}

void sub_1AF442B48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF43CC28(255, a3, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF442BB0(uint64_t a1)
{
  if (!qword_1EB6384B0)
  {
    sub_1AF449890(255, &qword_1EB6384B8, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, MEMORY[0x1E69E62F8]);
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6384B0);
    }
  }
}

void sub_1AF442C4C(uint64_t a1)
{
  if (!qword_1EB6384C0)
  {
    type metadata accessor for VFXTriggerType(255);
    sub_1AF442D14(255, &unk_1EB6384C8, MEMORY[0x1E69E5E28]);
    sub_1AF43A5EC(&qword_1EB630D10, type metadata accessor for VFXTriggerType, asc_1AFE49A2C);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6384C0);
    }
  }
}

void sub_1AF442D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(255);
    v7 = sub_1AF442AF4();
    v8 = a3(a1, &type metadata for TriggerScriptRunnerSystem.CollisionNodePair, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF442D88(uint64_t a1)
{
  if (!qword_1EB6384D8)
  {
    type metadata accessor for VFXTriggerType(255);
    sub_1AF442E34(255);
    sub_1AF43A5EC(&qword_1EB630D10, type metadata accessor for VFXTriggerType, asc_1AFE49A2C);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6384D8);
    }
  }
}

void sub_1AF442E34(uint64_t a1)
{
  if (!qword_1EB6384E0)
  {
    sub_1AF449890(255, &qword_1EB6384B8, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, MEMORY[0x1E69E62F8]);
    sub_1AF43B694();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6384E0);
    }
  }
}

void sub_1AF442ED0(uint64_t a1)
{
  if (!qword_1EB630930)
  {
    sub_1AF445B28(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630930);
    }
  }
}

void sub_1AF442F60(uint64_t a1)
{
  if (!qword_1EB6384F0)
  {
    sub_1AF445B28(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6384F0);
    }
  }
}

void sub_1AF442FF0(uint64_t a1)
{
  if (!qword_1ED721E68)
  {
    sub_1AF4485F8(255, &qword_1ED7223C0, &type metadata for ExternalConstantsCopyEncoder.TableLocation, &type metadata for ExternalConstantsCopyEncoder.PointerLocation, "from to ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED721E68);
    }
  }
}

void sub_1AF443068(uint64_t a1)
{
  if (!qword_1EB638500)
  {
    sub_1AF445B28(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638500);
    }
  }
}

void sub_1AF44310C(uint64_t a1)
{
  if (!qword_1EB6327D8)
  {
    sub_1AF4485F8(255, &qword_1EB632A80, MEMORY[0x1E69E6530], MEMORY[0x1E69E6448], "index nearestZ ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6327D8);
    }
  }
}

void sub_1AF443298(uint64_t a1)
{
  if (!qword_1EB638528)
  {
    sub_1AF449B08(255, &unk_1EB638530, &type metadata for Position, MEMORY[0x1E69E6738]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638528);
    }
  }
}

void sub_1AF443314()
{
  if (!qword_1EB638548)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638548);
    }
  }
}

void sub_1AF443374(uint64_t a1)
{
  if (!qword_1EB638550)
  {
    sub_1AF0D8108(255, &qword_1EB638558, &type metadata for PointCacheProperty, MEMORY[0x1E69E6530]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638550);
    }
  }
}

void sub_1AF4433E4(uint64_t a1)
{
  if (!qword_1EB638568)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AF4434E4(255);
    sub_1AF443560(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB638568);
    }
  }
}

void sub_1AF4434E4(uint64_t a1)
{
  if (!qword_1EB638570)
  {
    sub_1AF449B08(255, &qword_1EB638578, MEMORY[0x1E69E6448], MEMORY[0x1E69E6738]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638570);
    }
  }
}

void sub_1AF443560(uint64_t a1)
{
  if (!qword_1EB638580)
  {
    sub_1AF449B08(255, &qword_1EB638588, MEMORY[0x1E69E7508], MEMORY[0x1E69E6738]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638580);
    }
  }
}

void sub_1AF4435DC(uint64_t a1)
{
  if (!qword_1EB638590)
  {
    sub_1AF4485F8(255, &qword_1EB638598, MEMORY[0x1E69E7290], MEMORY[0x1E69E6448], "index weight ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638590);
    }
  }
}

void sub_1AF443654(uint64_t a1)
{
  if (!qword_1EB6385A0)
  {
    sub_1AF445424(255, &qword_1EB6385A8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6530]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6385A0);
    }
  }
}

unint64_t sub_1AF4436C4()
{
  result = qword_1EB6308C0;
  if (!qword_1EB6308C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB6308C0);
  }

  return result;
}

void sub_1AF44371C()
{
  if (!qword_1EB6385C0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6385C0);
    }
  }
}

void sub_1AF44377C()
{
  if (!qword_1EB6385D0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6385D0);
    }
  }
}

void sub_1AF4437DC()
{
  if (!qword_1EB633B50)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633B50);
    }
  }
}

void sub_1AF44383C()
{
  if (!qword_1EB6385E0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6385E0);
    }
  }
}

void sub_1AF44389C()
{
  if (!qword_1EB6331A0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6331A0);
    }
  }
}

void sub_1AF4438FC(uint64_t a1)
{
  if (!qword_1EB633B80)
  {
    sub_1AF449890(255, &qword_1EB633C20, type metadata accessor for DrawCall, MEMORY[0x1E69E62F8]);
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB633B80);
    }
  }
}

void sub_1AF443998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_1AFDFE5D8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF443A18()
{
  result = qword_1EB63F5D0;
  if (!qword_1EB63F5D0)
  {
    result = swift_getWitnessTable(byte_1AFEA4B74, &type metadata for PointCacheProperty, v0, v1);
    atomic_store(result, &qword_1EB63F5D0);
  }

  return result;
}

void sub_1AF443A6C(uint64_t a1)
{
  if (!qword_1EB638608)
  {
    sub_1AF43CC28(255, &qword_1ED723150, type metadata accessor for simd_float4x4, MEMORY[0x1E69E6370]);
    sub_1AF443AFC();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638608);
    }
  }
}

unint64_t sub_1AF443AFC()
{
  result = qword_1ED7255E0;
  if (!qword_1ED7255E0)
  {
    result = swift_getWitnessTable(byte_1AFEA5F70, &type metadata for VFXHandTracker.Joint, v0, v1);
    atomic_store(result, &qword_1ED7255E0);
  }

  return result;
}

void sub_1AF443B50(uint64_t a1)
{
  if (!qword_1EB638610)
  {
    sub_1AF447DFC(255, &qword_1EB630CB0, &protocolRef_MTLComputePipelineState);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638610);
    }
  }
}

void sub_1AF443BC8()
{
  if (!qword_1ED726AE0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726AE0);
    }
  }
}

void sub_1AF443C28()
{
  if (!qword_1ED726AF0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726AF0);
    }
  }
}

void sub_1AF443C88(uint64_t a1)
{
  if (!qword_1EB638680)
  {
    sub_1AFDFC128();
    sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638680);
    }
  }
}

void sub_1AF443D54()
{
  if (!qword_1EB63F410)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F410);
    }
  }
}

void sub_1AF443DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, &qword_1ED72F7F0, &off_1E7A77B60);
    a3();
    v6 = sub_1AFDFE5D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF443E40(uint64_t a1)
{
  if (!qword_1EB6330A0)
  {
    sub_1AF0D8108(255, &qword_1EB6333E8, &type metadata for Entity, MEMORY[0x1E69E6448]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6330A0);
    }
  }
}

unint64_t sub_1AF443EE0(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1AF443F24(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1AF443F68(uint64_t a1)
{
  if (!qword_1EB6386F8)
  {
    sub_1AF0D8108(255, &qword_1EB638700, &type metadata for ScriptParameter, &type metadata for GraphCodeGen.CodeGenParameter);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6386F8);
    }
  }
}

void sub_1AF443FDC(uint64_t a1)
{
  if (!qword_1EB638718)
  {
    sub_1AF449B08(255, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638718);
    }
  }
}

uint64_t sub_1AF444058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF4440B8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t sub_1AF444144(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

void sub_1AF444180(uint64_t a1)
{
  if (!qword_1EB638720)
  {
    sub_1AF449B08(255, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638720);
    }
  }
}

unint64_t sub_1AF444224(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1AF443EE0(result);
  }

  return result;
}

void sub_1AF444238(uint64_t a1)
{
  if (!qword_1EB638740)
  {
    sub_1AF0D8108(255, &qword_1EB638730, &type metadata for ScriptParameter, MEMORY[0x1E69E6158]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638740);
    }
  }
}

void sub_1AF4442A8(uint64_t a1)
{
  if (!qword_1EB638748)
  {
    sub_1AF0D8108(255, &qword_1EB638398, &type metadata for AnyType, MEMORY[0x1E69E6158]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638748);
    }
  }
}

void sub_1AF444318(uint64_t a1)
{
  if (!qword_1EB630DA8)
  {
    sub_1AF448B40(255, &unk_1EB6323C0, type metadata accessor for AuthoringNode);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630DA8);
    }
  }
}

void sub_1AF44438C(uint64_t a1)
{
  if (!qword_1EB630DA0)
  {
    sub_1AF448BAC(255, &unk_1EB632390, type metadata accessor for AuthoringNode);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630DA0);
    }
  }
}

void sub_1AF444400(uint64_t a1)
{
  if (!qword_1EB630A08)
  {
    sub_1AF448BAC(255, &unk_1EB632390, type metadata accessor for AuthoringNode);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630A08);
    }
  }
}

void sub_1AF4444A4(uint64_t a1)
{
  if (!qword_1EB630A28)
  {
    sub_1AF449B08(255, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630A28);
    }
  }
}

void sub_1AF444520(uint64_t a1)
{
  if (!qword_1EB63F470)
  {
    sub_1AF0D8108(255, &qword_1EB638750, MEMORY[0x1E69E6530], &type metadata for AnyType);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F470);
    }
  }
}

void sub_1AF4445A0()
{
  if (!qword_1EB638758)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638758);
    }
  }
}

void sub_1AF444600(uint64_t a1)
{
  if (!qword_1EB630C48)
  {
    sub_1AFDFC318();
    sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630C48);
    }
  }
}

void sub_1AF44469C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF444718(uint64_t a1)
{
  if (!qword_1EB630908)
  {
    type metadata accessor for Node(255);
    sub_1AF4498F4(255, &qword_1ED7268D0, MEMORY[0x1E69E7280], 1);
    v1 = sub_1AFDFF378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630908);
    }
  }
}

void sub_1AF4447E8(uint64_t a1)
{
  if (!qword_1EB638768)
  {
    sub_1AF449B08(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638768);
    }
  }
}

void sub_1AF444878(uint64_t a1)
{
  if (!qword_1ED7268B0)
  {
    sub_1AF449B08(255, &qword_1ED7268C0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    sub_1AFDFC128();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7268B0);
    }
  }
}

void sub_1AF44490C(uint64_t a1)
{
  if (!qword_1ED726AB0)
  {
    sub_1AF449B08(255, &qword_1ED7268C0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    sub_1AFDFC128();
    sub_1AF4449AC();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726AB0);
    }
  }
}

unint64_t sub_1AF4449AC()
{
  result = qword_1ED7268A0;
  if (!qword_1ED7268A0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF449B08(255, &qword_1ED7268C0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    v4[0] = MEMORY[0x1E69E7300];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v3, v4);
    atomic_store(result, &qword_1ED7268A0);
  }

  return result;
}

unint64_t sub_1AF444A40()
{
  result = qword_1EB63F490;
  if (!qword_1EB63F490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Target, &type metadata for Target, v0, v1);
    atomic_store(result, &qword_1EB63F490);
  }

  return result;
}

void sub_1AF444A94()
{
  if (!qword_1EB638790)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638790);
    }
  }
}

unint64_t sub_1AF444AF4(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1AF443F24(result);
  }

  return result;
}

void sub_1AF444B08(uint64_t a1)
{
  if (!qword_1EB6331D0)
  {
    sub_1AF444B6C();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6331D0);
    }
  }
}

unint64_t sub_1AF444B6C()
{
  result = qword_1EB6337A8;
  if (!qword_1EB6337A8)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for ScriptLocation, v0, v1);
    atomic_store(result, &qword_1EB6337A8);
  }

  return result;
}

void sub_1AF444BC0(uint64_t a1)
{
  if (!qword_1EB6331E0)
  {
    sub_1AF444B6C();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6331E0);
    }
  }
}

void sub_1AF444C24()
{
  if (!qword_1EB63F520)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F520);
    }
  }
}

void sub_1AF444CB4(uint64_t a1)
{
  if (!qword_1EB6387B0)
  {
    sub_1AF449890(255, &unk_1EB63F540, _s11MetadataSetCMa, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6387B0);
    }
  }
}

void sub_1AF445010()
{
  if (!qword_1EB63F4E0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F4E0);
    }
  }
}

void sub_1AF4450A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF445110(uint64_t a1)
{
  if (!qword_1EB638848)
  {
    sub_1AF449B08(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638848);
    }
  }
}

void sub_1AF44519C(uint64_t a1)
{
  if (!qword_1EB638850)
  {
    sub_1AF445200();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638850);
    }
  }
}

unint64_t sub_1AF445200()
{
  result = qword_1EB63F510;
  if (!qword_1EB63F510)
  {
    result = swift_getWitnessTable(byte_1AFE50440, &type metadata for Language, v0, v1);
    atomic_store(result, &qword_1EB63F510);
  }

  return result;
}

void sub_1AF445284(uint64_t a1)
{
  if (!qword_1EB638870)
  {
    sub_1AF4452E4();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638870);
    }
  }
}

unint64_t sub_1AF4452E4()
{
  result = qword_1EB638878;
  if (!qword_1EB638878)
  {
    result = swift_getWitnessTable(a9_23, &_s7ContextC14AssignmentInfoVN, v0, v1);
    atomic_store(result, &qword_1EB638878);
  }

  return result;
}

void sub_1AF445338(uint64_t a1)
{
  if (!qword_1EB638888)
  {
    sub_1AF4485F8(255, &qword_1EB638890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "oldUID newUID ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638888);
    }
  }
}

void sub_1AF4453AC(uint64_t a1)
{
  if (!qword_1EB638898)
  {
    sub_1AF445424(255, &qword_1EB6388A0, MEMORY[0x1E69E6158], &_s12MetadataTypeON, MEMORY[0x1E69E6370]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638898);
    }
  }
}

void sub_1AF445424(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1AF445480(uint64_t a1)
{
  if (!qword_1EB6388B0)
  {
    _s11ParameterInCMa();
    sub_1AF449890(255, &qword_1EB6388B8, _s12ParameterOutCMa, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6388B0);
    }
  }
}

void sub_1AF445550(uint64_t a1)
{
  if (!qword_1EB6388C8)
  {
    sub_1AF449B08(255, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6388C8);
    }
  }
}

void sub_1AF445628(uint64_t a1)
{
  if (!qword_1EB6388E0)
  {
    sub_1AF4485F8(255, &unk_1EB6388E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "name arg ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6388E0);
    }
  }
}

uint64_t sub_1AF4456D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1AF4456E0(uint64_t a1)
{
  if (!qword_1EB6328D0)
  {
    sub_1AF449890(255, &qword_1EB632A90, type metadata accessor for PropertyDescription, MEMORY[0x1E69E62F8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6328D0);
    }
  }
}

void sub_1AF445778(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AF43A3CC(255, a3, a4, a5, 1);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF4457D8(uint64_t a1)
{
  if (!qword_1ED721E80)
  {
    sub_1AF449B08(255, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED721E80);
    }
  }
}

unint64_t sub_1AF445888()
{
  result = qword_1ED726840;
  if (!qword_1ED726840)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED726840);
  }

  return result;
}

void sub_1AF445908(uint64_t a1)
{
  if (!qword_1EB633058)
  {
    sub_1AFDFC318();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633058);
    }
  }
}

void sub_1AF445A1C(uint64_t a1)
{
  if (!qword_1ED726978)
  {
    sub_1AF0D8108(255, &unk_1ED726BE0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726978);
    }
  }
}

void sub_1AF445A88(uint64_t a1)
{
  if (!qword_1EB638940)
  {
    sub_1AF445B28(255, &unk_1EB638948, sub_1AF445B90, &type metadata for StringCodingKeys, type metadata accessor for _KeyBox);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638940);
    }
  }
}

void sub_1AF445B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF445B90()
{
  result = qword_1ED72AEB0;
  if (!qword_1ED72AEB0)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for StringCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED72AEB0);
  }

  return result;
}

unint64_t sub_1AF445BE4(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 2)
  {
    if (v1 > 2)
    {
      return result;
    }
  }

  if (v1 == 3 || v1 == 4 || v1 == 5)
  {
  }

  return result;
}

void sub_1AF445C2C(uint64_t a1)
{
  if (!qword_1EB638970)
  {
    sub_1AF449B08(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638970);
    }
  }
}

uint64_t sub_1AF445CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1AF445D24(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 153) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1AF445DFC(uint64_t a1)
{
  if (!qword_1ED721F50)
  {
    sub_1AF0D4478(255, &qword_1ED721F90, 0x1E69E9608);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED721F50);
    }
  }
}

void sub_1AF445E74(uint64_t a1, double a2)
{
  if (!qword_1ED726AD0)
  {
    sub_1AFDFE488();
    v2 = sub_1AFDFE5D8();
    if (!v3)
    {
      atomic_store(v2, &qword_1ED726AD0);
    }
  }
}

unint64_t sub_1AF445EE0()
{
  result = qword_1ED726BF0;
  if (!qword_1ED726BF0)
  {
    sub_1AF445F28();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED726BF0);
  }

  return result;
}

unint64_t sub_1AF445F28()
{
  result = qword_1ED726C00;
  if (!qword_1ED726C00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED726C00);
  }

  return result;
}

void sub_1AF445F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A3CC(255, &qword_1ED72B648, qword_1ED72B650, &protocol descriptor for ComponentSystem, 0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF446040(uint64_t a1)
{
  if (!qword_1ED726AA0)
  {
    sub_1AF449B08(255, &unk_1ED726B58, MEMORY[0x1E69E6530], MEMORY[0x1E69E6BE8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726AA0);
    }
  }
}

void sub_1AF4460CC()
{
  if (!qword_1ED726B10)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726B10);
    }
  }
}

void sub_1AF44612C(uint64_t a1)
{
  if (!qword_1EB638998)
  {
    sub_1AF449890(255, &qword_1EB6389A0, sub_1AF4461C4, MEMORY[0x1E69E62F8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638998);
    }
  }
}

void sub_1AF4461C4(uint64_t a1)
{
  if (!qword_1EB6389A8)
  {
    sub_1AF4498F4(255, &qword_1EB6389B0, &protocol descriptor for QueryProtocol, 1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6389A8);
    }
  }
}

void sub_1AF446240(uint64_t a1)
{
  if (!qword_1ED726AE8)
  {
    sub_1AF445F94(255, &qword_1ED726C90, MEMORY[0x1E69E62F8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726AE8);
    }
  }
}

void sub_1AF4462C4()
{
  if (!qword_1EB6389B8)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6389B8);
    }
  }
}

void sub_1AF446324()
{
  if (!qword_1ED723000)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723000);
    }
  }
}

void sub_1AF446384(uint64_t a1)
{
  if (!qword_1EB6389C8)
  {
    sub_1AF449890(255, &qword_1EB632A90, type metadata accessor for PropertyDescription, MEMORY[0x1E69E62F8]);
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6389C8);
    }
  }
}

void sub_1AF446420(uint64_t a1)
{
  if (!qword_1ED72F968)
  {
    sub_1AF449B08(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED72F968);
    }
  }
}

void sub_1AF4464AC(uint64_t a1)
{
  if (!qword_1EB631BD0)
  {
    sub_1AF447DFC(255, &qword_1ED726BC0, &protocolRef_MTLTexture_0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB631BD0);
    }
  }
}

unint64_t sub_1AF446528()
{
  result = qword_1EB631F00;
  if (!qword_1EB631F00)
  {
    result = swift_getWitnessTable(byte_1AFE9494C, &type metadata for NoiseParameters, v0, v1);
    atomic_store(result, &qword_1EB631F00);
  }

  return result;
}

void sub_1AF44657C(uint64_t a1)
{
  if (!qword_1ED726B20)
  {
    sub_1AF447DFC(255, &qword_1ED726BC0, &protocolRef_MTLTexture_0);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726B20);
    }
  }
}

void sub_1AF4465F4(uint64_t a1)
{
  if (!qword_1ED723090)
  {
    type metadata accessor for TextureCache.TextureKey(255);
    sub_1AF43A5EC(&unk_1ED725A38, type metadata accessor for TextureCache.TextureKey, byte_1AFE75020);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED723090);
    }
  }
}

void sub_1AF4466EC()
{
  if (!qword_1ED723010)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723010);
    }
  }
}

void sub_1AF44674C(uint64_t a1)
{
  if (!qword_1ED7307D8)
  {
    sub_1AF449890(255, qword_1ED731070, type metadata accessor for TextureCache, type metadata accessor for WeakReference);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7307D8);
    }
  }
}

void sub_1AF4467E4(uint64_t a1)
{
  if (!qword_1EB638A48)
  {
    sub_1AF449890(255, qword_1ED731070, type metadata accessor for TextureCache, type metadata accessor for WeakReference);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638A48);
    }
  }
}

void sub_1AF4468AC()
{
  if (!qword_1EB638A58)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638A58);
    }
  }
}

void sub_1AF446910()
{
  if (!qword_1ED72F7E0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F7E0);
    }
  }
}

unint64_t sub_1AF446970()
{
  result = qword_1EB638A70;
  if (!qword_1EB638A70)
  {
    result = swift_getWitnessTable(aE_34, &_s12MetadataTypeON, v0, v1);
    atomic_store(result, &qword_1EB638A70);
  }

  return result;
}

void sub_1AF4469DC()
{
  if (!qword_1EB63F600)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F600);
    }
  }
}

void sub_1AF446A3C(uint64_t a1)
{
  if (!qword_1EB6331C0)
  {
    sub_1AF449890(255, &unk_1EB633210, MEMORY[0x1E69E6928], MEMORY[0x1E69E6720]);
    sub_1AF446AD8();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6331C0);
    }
  }
}

unint64_t sub_1AF446AD8()
{
  result = qword_1EB633640;
  if (!qword_1EB633640)
  {
    result = swift_getWitnessTable(asc_1AFE9A00C, &type metadata for ScriptKeyPathCache.ResolveRequest, v0, v1);
    atomic_store(result, &qword_1EB633640);
  }

  return result;
}

void sub_1AF446B2C(uint64_t a1)
{
  if (!qword_1EB638A88)
  {
    sub_1AF4498F4(255, &unk_1EB633A00, &protocol descriptor for Bridgeable, 0);
    type metadata accessor for AuthoringGraph(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638A88);
    }
  }
}

void sub_1AF446BB0(uint64_t a1)
{
  if (!qword_1EB63F620)
  {
    sub_1AF446C14();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F620);
    }
  }
}

unint64_t sub_1AF446C14()
{
  result = qword_1EB638AB0;
  if (!qword_1EB638AB0)
  {
    result = swift_getWitnessTable(byte_1AFE727A0, &type metadata for ScriptHandle, v0, v1);
    atomic_store(result, &qword_1EB638AB0);
  }

  return result;
}

void sub_1AF446C68(id result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {

    v4 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (!(a2 >> 62))
  {
  }
}

void sub_1AF446CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF446D30(uint64_t a1)
{
  if (!qword_1ED726B40)
  {
    sub_1AF446D94();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726B40);
    }
  }
}

unint64_t sub_1AF446D94()
{
  result = qword_1ED728DB0;
  if (!qword_1ED728DB0)
  {
    result = swift_getWitnessTable(asc_1AFE97510, &type metadata for ScriptCompilerSystem.CompilationHandle, v0, v1);
    atomic_store(result, &qword_1ED728DB0);
  }

  return result;
}

void sub_1AF446DE8(uint64_t a1)
{
  if (!qword_1EB63F610)
  {
    sub_1AF446D94();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F610);
    }
  }
}

void sub_1AF446EB4(uint64_t a1)
{
  if (!qword_1EB638AE0)
  {
    sub_1AF449B08(255, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638AE0);
    }
  }
}

void sub_1AF446F40(uint64_t a1)
{
  if (!qword_1EB638AF0)
  {
    type metadata accessor for GraphCodeGen.CFGNode();
    sub_1AF449B08(255, &qword_1EB63F430, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638AF0);
    }
  }
}

void sub_1AF446FD4()
{
  if (!qword_1EB63F450)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB63F450);
    }
  }
}

void sub_1AF447218(uint64_t a1)
{
  if (!qword_1EB638B30)
  {
    sub_1AF449890(255, &qword_1EB63B980, type metadata accessor for Node, MEMORY[0x1E69E62F8]);
    sub_1AF4472B4();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638B30);
    }
  }
}

unint64_t sub_1AF4472B4()
{
  result = qword_1EB638B40;
  if (!qword_1EB638B40)
  {
    result = swift_getWitnessTable(byte_1AFE8608C, &type metadata for GraphScheduling, v0, v1);
    atomic_store(result, &qword_1EB638B40);
  }

  return result;
}

void sub_1AF447308(uint64_t a1)
{
  if (!qword_1EB638B48)
  {
    sub_1AF449890(255, &qword_1EB63B980, type metadata accessor for Node, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638B48);
    }
  }
}

void sub_1AF4473FC()
{
  if (!qword_1EB638B50)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638B50);
    }
  }
}

void sub_1AF44745C()
{
  if (!qword_1EB63F480)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F480);
    }
  }
}

void sub_1AF4474BC(uint64_t a1)
{
  if (!qword_1EB638B60)
  {
    sub_1AF4472B4();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638B60);
    }
  }
}

void sub_1AF447520(uint64_t a1)
{
  if (!qword_1EB638B70)
  {
    sub_1AF4498F4(255, &unk_1EB633A00, &protocol descriptor for Bridgeable, 0);
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638B70);
    }
  }
}

void sub_1AF4475A0(uint64_t a1)
{
  if (!qword_1EB638B80)
  {
    sub_1AF0D4478(255, &unk_1ED726BA0, 0x1E696AC38);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638B80);
    }
  }
}

void sub_1AF447618(uint64_t a1)
{
  if (!qword_1EB638B90)
  {
    sub_1AF447DFC(255, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF447694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638B90);
    }
  }
}

unint64_t sub_1AF447694()
{
  result = qword_1EB638C00;
  if (!qword_1EB638C00)
  {
    result = swift_getWitnessTable(asc_1AFE7CC10, &type metadata for FunctionDescriptor, v0, v1);
    atomic_store(result, &qword_1EB638C00);
  }

  return result;
}

void sub_1AF4476E8()
{
  if (!qword_1EB63F580)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F580);
    }
  }
}

void sub_1AF447748()
{
  if (!qword_1EB638C20)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638C20);
    }
  }
}

void sub_1AF4477A8()
{
  if (!qword_1EB633188)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633188);
    }
  }
}

void sub_1AF447808(uint64_t a1)
{
  if (!qword_1ED723030)
  {
    sub_1AF449B08(255, qword_1ED725E10, &type metadata for ShaderCache.Function, type metadata accessor for ShaderCache.CacheEntry);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED723030);
    }
  }
}

uint64_t sub_1AF447894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

void sub_1AF447910(uint64_t a1)
{
  if (!qword_1EB6331B0)
  {
    sub_1AF449B08(255, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6331B0);
    }
  }
}

void sub_1AF44799C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF449B08(255, a3, a4, type metadata accessor for ShaderCache.Status);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF447A18(uint64_t a1)
{
  if (!qword_1ED723020)
  {
    sub_1AF449B08(255, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED723020);
    }
  }
}

uint64_t sub_1AF447AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AF447B18()
{
  if (!qword_1ED7307E0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7307E0);
    }
  }
}

void sub_1AF447B78(uint64_t a1)
{
  if (!qword_1EB633178)
  {
    sub_1AF447DFC(255, &qword_1ED726BC0, &protocolRef_MTLTexture_0);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB633178);
    }
  }
}

void sub_1AF447BF0()
{
  if (!qword_1EB633B40)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633B40);
    }
  }
}

void sub_1AF447C50(uint64_t a1)
{
  if (!qword_1EB638C60)
  {
    sub_1AF447DFC(255, &qword_1EB6329A0, &protocolRef_MTLDepthStencilState);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638C60);
    }
  }
}

void sub_1AF447CC8(uint64_t a1)
{
  if (!qword_1EB638C70)
  {
    sub_1AF447D28();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638C70);
    }
  }
}

unint64_t sub_1AF447D28()
{
  result = qword_1EB638C78;
  if (!qword_1EB638C78)
  {
    result = swift_getWitnessTable(byte_1AFE80690, &type metadata for MeshBuffer, v0, v1);
    atomic_store(result, &qword_1EB638C78);
  }

  return result;
}

void sub_1AF447D7C(uint64_t a1)
{
  if (!qword_1EB63F6A0)
  {
    sub_1AF447DFC(255, &qword_1ED721F70, &protocolRef_MTLBuffer_0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB63F6A0);
    }
  }
}

uint64_t sub_1AF447DFC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1AF447E5C()
{
  result = qword_1EB63F6B0;
  if (!qword_1EB63F6B0)
  {
    result = swift_getWitnessTable(aY_28, &type metadata for Renderer.StripDesc, v0, v1);
    atomic_store(result, &qword_1EB63F6B0);
  }

  return result;
}

uint64_t sub_1AF447EB0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1AF447EC4(uint64_t a1)
{
  if (!qword_1EB630BC0)
  {
    sub_1AF449B08(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630BC0);
    }
  }
}

uint64_t sub_1AF447F74@<X0>(__objc2_class ***a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF407598(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1AF447FCC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  v4(&v7, &v6);
  result = *&v7;
  *a2 = v7;
  return result;
}

uint64_t sub_1AF448018(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1AF448068()
{
  result = qword_1EB638C90;
  if (!qword_1EB638C90)
  {
    result = swift_getWitnessTable(aE3, &type metadata for AuthoringGraphCoder, v0, v1);
    atomic_store(result, &qword_1EB638C90);
  }

  return result;
}

unint64_t sub_1AF4480BC()
{
  result = qword_1EB631970;
  if (!qword_1EB631970)
  {
    result = swift_getWitnessTable(aM7, &type metadata for AuthoringGraphCoder, v0, v1);
    atomic_store(result, &qword_1EB631970);
  }

  return result;
}

uint64_t sub_1AF44812C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF448148(uint64_t a1)
{
  if (!qword_1EB631380)
  {
    type metadata accessor for Node(255);
    sub_1AF449B08(255, &qword_1EB631898, &type metadata for GraphTranslateResult, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB631380);
    }
  }
}

double sub_1AF4481DC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AF4481F8(uint64_t a1)
{
  sub_1AF4450A0(0, &unk_1EB638CA0, sub_1AF448148, MEMORY[0x1E69E5FE0], "key value ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF448280(uint64_t a1, uint64_t a2)
{
  sub_1AF4450A0(0, &unk_1EB638CA0, sub_1AF448148, MEMORY[0x1E69E5FE0], "key value ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF448314(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AF44832C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF449890(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF4483EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF448418(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1AF44844C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

void sub_1AF44846C(uint64_t a1)
{
  if (!qword_1EB638CC8)
  {
    type metadata accessor for RGPass(255);
    sub_1AF449B08(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638CC8);
    }
  }
}

uint64_t sub_1AF448520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

void sub_1AF448580(uint64_t a1)
{
  if (!qword_1EB638CD0)
  {
    sub_1AF4485F8(255, &unk_1EB638CD8, &type metadata for MetalFunctionReflection.Arg, &type metadata for MetalIOData.Access, "arg access ");
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638CD0);
    }
  }
}

void sub_1AF4485F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF448650(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AF4486E4()
{
  result = qword_1ED72F9C0;
  if (!qword_1ED72F9C0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A8], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1ED72F9C0);
  }

  return result;
}

uint64_t sub_1AF448738(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

double sub_1AF4487B0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  v6[0] = *(v2 + 32);
  v6[1] = v4;
  v6[2] = *(v2 + 64);
  *&result = sub_1AF42DBB0(a1, a2, v3, v6).n128_u64[0];
  return result;
}

void sub_1AF448864(uint64_t a1)
{
  if (!qword_1EB638CF0)
  {
    sub_1AF449B08(255, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for RGGraphTranslator.Reference(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB638CF0);
    }
  }
}

uint64_t sub_1AF4488E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) <= 1u)
  {
    return sub_1AF0FB8EC(a2, a3);
  }

  if (a4 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_1AF448910(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) <= 1u)
  {
    return sub_1AF0FBD8C(a2, a3);
  }

  if (a4 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_1AF44893C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((~a4 & 0xFC) != 0)
  {
    return sub_1AF4488E4(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1AF448950()
{

  sub_1AF443F24(*(v0 + 32));
  v1 = *(v0 + 48);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1AF443F24(v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1AF4489BC()
{
  result = qword_1EB63F660;
  if (!qword_1EB63F660)
  {
    type metadata accessor for BufferSlice(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB63F660);
  }

  return result;
}

void sub_1AF448A1C(uint64_t a1)
{
  if (!qword_1EB638D20)
  {
    type metadata accessor for Node(255);
    sub_1AF449B08(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB638D20);
    }
  }
}

void sub_1AF448AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1)), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(255, a3, type metadata accessor for Node);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AF448B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1AF448BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1AF448C14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1)))
{
  if (!*a2)
  {
    sub_1AF448AC4(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    v6 = sub_1AFDFE5D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF448C94(uint64_t a1)
{
  if (!qword_1EB638D58)
  {
    sub_1AF449B08(255, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638D58);
    }
  }
}

uint64_t sub_1AF448D34@<X0>(__objc2_class ***a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF405D48(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void *sub_1AF448D94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *a1;
  result = v4(&v8, &v7);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  return result;
}

void sub_1AF448E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1AFDFC318();
    a3(255);
    sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = sub_1AFDFE5D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF448F00(uint64_t a1)
{
  if (!qword_1EB632750)
  {
    sub_1AFDFC318();
    sub_1AF449B08(255, &qword_1EB630D98, &type metadata for TexturePreview, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632750);
    }
  }
}

void sub_1AF448F94(uint64_t a1)
{
  if (!qword_1EB638D60)
  {
    sub_1AFDFC318();
    sub_1AF449B08(255, &qword_1EB630D98, &type metadata for TexturePreview, MEMORY[0x1E69E62F8]);
    sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638D60);
    }
  }
}

void sub_1AF44907C(uint64_t a1)
{
  if (!qword_1EB638D68)
  {
    sub_1AFDFC318();
    sub_1AF449890(255, &qword_1EB638D70, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638D68);
    }
  }
}

void sub_1AF44911C(uint64_t a1)
{
  if (!qword_1EB638D78)
  {
    sub_1AFDFC318();
    sub_1AF449890(255, &qword_1EB638D70, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
    sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638D78);
    }
  }
}

uint64_t sub_1AF449258@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  *a3 = result;
  return result;
}

void sub_1AF4492B8(uint64_t a1, double a2)
{
  if (!qword_1EB6328F0)
  {
    sub_1AF44933C(255, &unk_1EB632B20, MEMORY[0x1E69E5E28]);
    v2 = sub_1AFDFE5D8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB6328F0);
    }
  }
}

void sub_1AF44933C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFDFC318();
    v7 = sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v8 = a3(a1, v6, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF4493DC(uint64_t a1)
{
  if (!qword_1ED726B38)
  {
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726B38);
    }
  }
}

uint64_t sub_1AF44943C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF44949C(uint64_t a1)
{
  if (!qword_1EB638D80)
  {
    sub_1AF449B08(255, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638D80);
    }
  }
}

uint64_t sub_1AF4495B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF449620(uint64_t a1)
{
  if (!qword_1EB638D98)
  {
    sub_1AF0D8108(255, &qword_1EB638DA0, &type metadata for Entity, &type metadata for Entity);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638D98);
    }
  }
}

__n128 initializeWithCopy for GraphTranslateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphTranslateResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 129))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 128);
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

uint64_t storeEnumTagSinglePayload for GraphTranslateResult(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

void sub_1AF44979C(uint64_t a1)
{
  if (!qword_1EB638DB0)
  {
    sub_1AF449B08(255, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638DB0);
    }
  }
}

uint64_t sub_1AF449830@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  *a3 = result;
  return result;
}

void sub_1AF449890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF4498F4(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AF449950()
{
  if (!qword_1EB638DC8)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638DC8);
    }
  }
}

unint64_t sub_1AF4499B0()
{
  result = qword_1EB634080;
  if (!qword_1EB634080)
  {
    result = swift_getWitnessTable(byte_1AFE77E9C, &type metadata for GraphScriptingConfig.EvaluationMode, v0, v1);
    atomic_store(result, &qword_1EB634080);
  }

  return result;
}

uint64_t sub_1AF449A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AF449A78(uint64_t a1)
{
  if (!qword_1EB638DE0)
  {
    sub_1AF449B08(255, &qword_1EB638DE8, &type metadata for GraphNodeLibrary.Entry, MEMORY[0x1E69E62F8]);
    sub_1AF449B58();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638DE0);
    }
  }
}

void sub_1AF449B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF449B58()
{
  result = qword_1EB638DF0;
  if (!qword_1EB638DF0)
  {
    result = swift_getWitnessTable(asc_1AFE868BC, &type metadata for GraphNodeLibrary.NodeCategory, v0, v1);
    atomic_store(result, &qword_1EB638DF0);
  }

  return result;
}

void sub_1AF449BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1AFDFE5D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF449C48()
{
  if (!qword_1EB638E00)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638E00);
    }
  }
}

uint64_t sub_1AF449E54()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C5E0;
  KeyPath = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = v2;
  *(v0 + 32) = 0x6E6F697469736F50;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v4 = swift_getKeyPath();
  *(v0 + 80) = 0x72656C7545;
  *(v0 + 88) = 0xE500000000000000;
  *(v0 + 96) = v4;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x656C616353;
  *(v0 + 136) = 0xE500000000000000;
  *(v0 + 144) = v5;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  type metadata accessor for simd_float4x4(0);
  v8 = v7;
  *(v0 + 176) = 0x726F66736E617254;
  *(v0 + 184) = 0xE90000000000006DLL;
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v9 = swift_getKeyPath();
  *(v0 + 224) = 0x725420646C726F57;
  *(v0 + 232) = 0xEF6D726F66736E61;
  *(v0 + 240) = v9;
  *(v0 + 248) = v8;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v10 = swift_getKeyPath();
  *(v0 + 272) = 0x705520646C726F57;
  *(v0 + 280) = 0xE800000000000000;
  *(v0 + 288) = v10;
  *(v0 + 296) = v3;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v11 = swift_getKeyPath();
  *(v0 + 320) = 0x724620646C726F57;
  *(v0 + 328) = 0xEB00000000746E6FLL;
  *(v0 + 336) = v11;
  *(v0 + 344) = v3;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v12 = swift_getKeyPath();
  type metadata accessor for simd_quatf(0);
  *(v0 + 368) = 0x7461746E6569724FLL;
  *(v0 + 376) = 0xEB000000006E6F69;
  *(v0 + 384) = v12;
  *(v0 + 392) = v13;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  result = swift_getKeyPath();
  *(v0 + 416) = 0x6E6564646948;
  *(v0 + 424) = 0xE600000000000000;
  v15 = MEMORY[0x1E69E6370];
  *(v0 + 432) = result;
  *(v0 + 440) = v15;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  qword_1EB6C29D0 = v0;
  return result;
}

id sub_1AF44A104@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [*a1 position];
  *a2 = v4;
  return result;
}

double sub_1AF44A17C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*a1 contents])
  {
    sub_1AFDFDFB8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1AF44A1EC(uint64_t a1, void **a2)
{
  sub_1AF44CBE4(a1, v12);
  v3 = *a2;
  v4 = v13;
  if (v13)
  {
    v5 = sub_1AF441150(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1AFDFEE08();
    (*(v6 + 8))(v9, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setContents_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AF44A394(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

id sub_1AF44A3D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 model];
  *a2 = result;
  return result;
}

id sub_1AF44A424@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v6 = result;
  if (result)
  {
    result = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AF44A474()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE431C0;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x7369766964627553;
  *(v0 + 40) = 0xEB000000006E6F69;
  v2 = MEMORY[0x1E69E6530];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  sub_1AF0D4478(0, &unk_1ED72E080, &off_1E7A77B68);
  if (swift_dynamicCastMetatype())
  {
    v3 = sub_1AF44E0D8();
LABEL_5:
    sub_1AF48FF94(v3);
    return v0;
  }

  sub_1AF0D4478(0, &unk_1ED72E060, &off_1E7A77C58);
  if (swift_dynamicCastMetatype())
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE4C5F0;
    v5 = swift_getKeyPath();
    *(inited + 32) = 0x676E69727453;
    *(inited + 40) = 0xE600000000000000;
    v6 = MEMORY[0x1E69E6158];
    *(inited + 48) = v5;
    *(inited + 56) = v6;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(inited + 74) = 0;
    v7 = swift_getKeyPath();
    v8 = MEMORY[0x1E69E6448];
    *(inited + 80) = 0x6874706544;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = v7;
    *(inited + 104) = v8;
    *(inited + 112) = 0;
    *(inited + 120) = 1;
    *(inited + 122) = 0;
    v9 = swift_getKeyPath();
    sub_1AF450F88(0, &qword_1EB63A490, &qword_1EB638E60, 0x1E69DB878);
    *(inited + 128) = 1953394502;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v9;
    *(inited + 152) = v10;
    *(inited + 160) = 0;
    *(inited + 168) = 1;
    *(inited + 170) = 0;
    v11 = swift_getKeyPath();
    *(inited + 176) = 0x7373656E74616C46;
    *(inited + 184) = 0xE800000000000000;
    *(inited + 192) = v11;
    *(inited + 200) = v8;
    *(inited + 208) = 0;
    *(inited + 216) = 1;
    *(inited + 218) = 0;
    v12 = swift_getKeyPath();
    strcpy((inited + 224), "Chamfer radius");
    *(inited + 239) = -18;
    *(inited + 240) = v12;
    *(inited + 248) = v8;
    *(inited + 256) = 0;
    *(inited + 264) = 1;
    *(inited + 266) = 0;
    v13 = swift_getKeyPath();
    v14 = MEMORY[0x1E69E6370];
    *(inited + 272) = 0xD000000000000012;
    *(inited + 280) = 0x80000001AFF28600;
    *(inited + 288) = v13;
    *(inited + 296) = v14;
    *(inited + 304) = 0;
    *(inited + 312) = 1;
    *(inited + 314) = 0;
    v15 = swift_getKeyPath();
    type metadata accessor for CGRect(0);
    *(inited + 320) = 0x656E6961746E6F43;
    *(inited + 328) = 0xE900000000000072;
    *(inited + 336) = v15;
    *(inited + 344) = v16;
    *(inited + 352) = 0;
    *(inited + 360) = 1;
    *(inited + 362) = 0;
    v17 = swift_getKeyPath();
    *(inited + 368) = 0x64657070617257;
    *(inited + 376) = 0xE700000000000000;
    *(inited + 384) = v17;
    *(inited + 392) = v14;
    *(inited + 400) = 0;
    *(inited + 408) = 1;
    *(inited + 410) = 0;
    v3 = inited;
    goto LABEL_5;
  }

  return v0;
}

uint64_t sub_1AF44A824()
{
  if ([v0 string])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1AF44CB60(v5);
  }

  return 0;
}

void sub_1AF44A8E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 swiftString];
  v4 = sub_1AFDFCEF8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1AF44A938()
{
  result = [v0 asset];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1AF44A99C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 asset];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      result = 0;
    }
  }

  *a2 = result;
  return result;
}

uint64_t sub_1AF44AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C600;
  swift_getKeyPath();
  v6 = MEMORY[0x1E69E74A8];
  sub_1AF451204(0, &qword_1EB638E30, &qword_1ED72F6E0, MEMORY[0x1E69E74A8], sub_1AF44CAFC);
  v7 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x726F6C6F43, 0xE500000000000000);
  v8 = sub_1AFDFDFE8();
  v10 = v9;

  sub_1AF44CAFC(0, &qword_1ED72F6E0, v6);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = v7;
  *(v5 + 56) = v11;
  *(v5 + 64) = v8;
  *(v5 + 72) = v10 & 1;
  *(v5 + 74) = 0;
  swift_getKeyPath();
  sub_1AF450B0C(0, &qword_1EB638E38, &qword_1ED72E0B0, &off_1E7A77B00, MEMORY[0x1E69E6448]);
  v12 = sub_1AFDFE5E8();
  v13 = a1;
  v52 = a1;

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x7469736E65746E49, 0xE900000000000079);
  v14 = a1;
  v15 = sub_1AFDFDFE8();
  LOBYTE(a1) = v16;

  *(v5 + 80) = v14;
  *(v5 + 88) = a2;
  *(v5 + 96) = v12;
  *(v5 + 104) = MEMORY[0x1E69E6448];
  *(v5 + 112) = v15;
  *(v5 + 120) = a1 & 1;
  *(v5 + 122) = 0;
  swift_getKeyPath();
  sub_1AF450A58(0, &qword_1EB638E40, &qword_1ED72E0B0, &off_1E7A77B00, type metadata accessor for VFXFilterMode);
  v17 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x746C6966206E694DLL, 0xEA00000000007265);
  v18 = v13;
  v19 = sub_1AFDFDFE8();
  LOBYTE(v13) = v20;

  type metadata accessor for VFXFilterMode(0);
  v22 = v21;
  *(v5 + 128) = v18;
  *(v5 + 136) = a2;
  *(v5 + 144) = v17;
  *(v5 + 152) = v21;
  v51 = v21;
  *(v5 + 160) = v19;
  *(v5 + 168) = v13 & 1;
  *(v5 + 170) = 0;
  swift_getKeyPath();
  v23 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x746C69662078614DLL, 0xEA00000000007265);
  v24 = sub_1AFDFDFE8();
  LOBYTE(v13) = v25;

  *(v5 + 176) = v52;
  *(v5 + 184) = a2;
  *(v5 + 192) = v23;
  *(v5 + 200) = v22;
  *(v5 + 208) = v24;
  *(v5 + 216) = v13 & 1;
  *(v5 + 218) = 0;
  swift_getKeyPath();
  v26 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x746C69662070694DLL, 0xEA00000000007265);
  v27 = sub_1AFDFDFE8();
  v29 = v28;

  *(v5 + 224) = v52;
  *(v5 + 232) = a2;
  *(v5 + 240) = v26;
  *(v5 + 248) = v51;
  *(v5 + 256) = v27;
  *(v5 + 264) = v29 & 1;
  *(v5 + 266) = 0;
  swift_getKeyPath();
  sub_1AF450A58(0, &qword_1EB638E48, &qword_1ED72E0B0, &off_1E7A77B00, type metadata accessor for VFXWrapMode);
  v30 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x532070617257, 0xE600000000000000);
  v31 = sub_1AFDFDFE8();
  LOBYTE(v22) = v32;

  type metadata accessor for VFXWrapMode(0);
  v34 = v33;
  *(v5 + 272) = v52;
  *(v5 + 280) = a2;
  *(v5 + 288) = v30;
  *(v5 + 296) = v33;
  *(v5 + 304) = v31;
  *(v5 + 312) = v22 & 1;
  *(v5 + 314) = 0;
  swift_getKeyPath();
  v35 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x542070617257, 0xE600000000000000);
  v36 = sub_1AFDFDFE8();
  v38 = v37;

  *(v5 + 320) = v52;
  *(v5 + 328) = a2;
  *(v5 + 336) = v35;
  *(v5 + 344) = v34;
  *(v5 + 352) = v36;
  *(v5 + 360) = v38 & 1;
  *(v5 + 362) = 0;
  swift_getKeyPath();
  sub_1AF450B0C(0, &qword_1EB638E50, &qword_1ED72E0B0, &off_1E7A77B00, MEMORY[0x1E69E6530]);
  v39 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x6E6E616863205655, 0xEA00000000006C65);
  v40 = sub_1AFDFDFE8();
  LOBYTE(v22) = v41;

  *(v5 + 368) = v52;
  *(v5 + 376) = a2;
  *(v5 + 384) = v39;
  *(v5 + 392) = MEMORY[0x1E69E6530];
  *(v5 + 400) = v40;
  *(v5 + 408) = v22 & 1;
  *(v5 + 410) = 0;
  swift_getKeyPath();
  v42 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF28480);
  v43 = sub_1AFDFDFE8();
  LOBYTE(v34) = v44;

  *(v5 + 416) = v52;
  *(v5 + 424) = a2;
  *(v5 + 432) = v42;
  *(v5 + 440) = MEMORY[0x1E69E6530];
  *(v5 + 448) = v43;
  *(v5 + 456) = v34 & 1;
  *(v5 + 458) = 0;
  swift_getKeyPath();
  sub_1AF450A58(0, &qword_1EB638E58, &qword_1ED72E0B0, &off_1E7A77B00, type metadata accessor for simd_float4x4);
  v45 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x726F66736E617254, 0xE90000000000006DLL);
  v46 = a2;
  v47 = sub_1AFDFDFE8();
  LOBYTE(a2) = v48;

  type metadata accessor for simd_float4x4(0);
  *(v5 + 464) = v52;
  *(v5 + 472) = v46;
  *(v5 + 480) = v45;
  *(v5 + 488) = v49;
  *(v5 + 496) = v47;
  *(v5 + 504) = a2 & 1;
  *(v5 + 506) = 0;
  return v5;
}

uint64_t sub_1AF44B234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C600;
  swift_getKeyPath();
  v6 = MEMORY[0x1E69E74A8];
  sub_1AF4509A8(0, &qword_1EB6308C8, &qword_1ED72F6E0, MEMORY[0x1E69E74A8], sub_1AF44CAFC);
  v7 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x726F6C6F43, 0xE500000000000000);
  v8 = sub_1AFDFDFE8();
  v10 = v9;

  sub_1AF44CAFC(0, &qword_1ED72F6E0, v6);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = v7;
  *(v5 + 56) = v11;
  *(v5 + 64) = v8;
  *(v5 + 72) = v10 & 1;
  *(v5 + 74) = 0;
  swift_getKeyPath();
  sub_1AF450B0C(0, &unk_1EB6308F8, &qword_1ED7307E8, &off_1E7A77C98, MEMORY[0x1E69E6448]);
  v12 = sub_1AFDFE5E8();
  v13 = a1;
  v52 = a1;

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x7469736E65746E49, 0xE900000000000079);
  v14 = a1;
  v15 = sub_1AFDFDFE8();
  LOBYTE(a1) = v16;

  *(v5 + 80) = v14;
  *(v5 + 88) = a2;
  *(v5 + 96) = v12;
  *(v5 + 104) = MEMORY[0x1E69E6448];
  *(v5 + 112) = v15;
  *(v5 + 120) = a1 & 1;
  *(v5 + 122) = 0;
  swift_getKeyPath();
  sub_1AF450A58(0, &qword_1EB6308E0, &qword_1ED7307E8, &off_1E7A77C98, type metadata accessor for VFXFilterMode);
  v17 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x746C6966206E694DLL, 0xEA00000000007265);
  v18 = v13;
  v19 = sub_1AFDFDFE8();
  LOBYTE(v13) = v20;

  type metadata accessor for VFXFilterMode(0);
  v22 = v21;
  *(v5 + 128) = v18;
  *(v5 + 136) = a2;
  *(v5 + 144) = v17;
  *(v5 + 152) = v21;
  v51 = v21;
  *(v5 + 160) = v19;
  *(v5 + 168) = v13 & 1;
  *(v5 + 170) = 0;
  swift_getKeyPath();
  v23 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x746C69662078614DLL, 0xEA00000000007265);
  v24 = sub_1AFDFDFE8();
  LOBYTE(v13) = v25;

  *(v5 + 176) = v52;
  *(v5 + 184) = a2;
  *(v5 + 192) = v23;
  *(v5 + 200) = v22;
  *(v5 + 208) = v24;
  *(v5 + 216) = v13 & 1;
  *(v5 + 218) = 0;
  swift_getKeyPath();
  v26 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x746C69662070694DLL, 0xEA00000000007265);
  v27 = sub_1AFDFDFE8();
  v29 = v28;

  *(v5 + 224) = v52;
  *(v5 + 232) = a2;
  *(v5 + 240) = v26;
  *(v5 + 248) = v51;
  *(v5 + 256) = v27;
  *(v5 + 264) = v29 & 1;
  *(v5 + 266) = 0;
  swift_getKeyPath();
  sub_1AF450A58(0, &qword_1EB6308E8, &qword_1ED7307E8, &off_1E7A77C98, type metadata accessor for VFXWrapMode);
  v30 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x532070617257, 0xE600000000000000);
  v31 = sub_1AFDFDFE8();
  LOBYTE(v22) = v32;

  type metadata accessor for VFXWrapMode(0);
  v34 = v33;
  *(v5 + 272) = v52;
  *(v5 + 280) = a2;
  *(v5 + 288) = v30;
  *(v5 + 296) = v33;
  *(v5 + 304) = v31;
  *(v5 + 312) = v22 & 1;
  *(v5 + 314) = 0;
  swift_getKeyPath();
  v35 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x542070617257, 0xE600000000000000);
  v36 = sub_1AFDFDFE8();
  v38 = v37;

  *(v5 + 320) = v52;
  *(v5 + 328) = a2;
  *(v5 + 336) = v35;
  *(v5 + 344) = v34;
  *(v5 + 352) = v36;
  *(v5 + 360) = v38 & 1;
  *(v5 + 362) = 0;
  swift_getKeyPath();
  sub_1AF450B0C(0, &qword_1EB6308F0, &qword_1ED7307E8, &off_1E7A77C98, MEMORY[0x1E69E6530]);
  v39 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x6E6E616863205655, 0xEA00000000006C65);
  v40 = sub_1AFDFDFE8();
  LOBYTE(v22) = v41;

  *(v5 + 368) = v52;
  *(v5 + 376) = a2;
  *(v5 + 384) = v39;
  *(v5 + 392) = MEMORY[0x1E69E6530];
  *(v5 + 400) = v40;
  *(v5 + 408) = v22 & 1;
  *(v5 + 410) = 0;
  swift_getKeyPath();
  v42 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF28480);
  v43 = sub_1AFDFDFE8();
  LOBYTE(v34) = v44;

  *(v5 + 416) = v52;
  *(v5 + 424) = a2;
  *(v5 + 432) = v42;
  *(v5 + 440) = MEMORY[0x1E69E6530];
  *(v5 + 448) = v43;
  *(v5 + 456) = v34 & 1;
  *(v5 + 458) = 0;
  swift_getKeyPath();
  sub_1AF450A58(0, &qword_1EB6308D8, &qword_1ED7307E8, &off_1E7A77C98, type metadata accessor for simd_float4x4);
  v45 = sub_1AFDFE5E8();

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x726F66736E617254, 0xE90000000000006DLL);
  v46 = a2;
  v47 = sub_1AFDFDFE8();
  LOBYTE(a2) = v48;

  type metadata accessor for simd_float4x4(0);
  *(v5 + 464) = v52;
  *(v5 + 472) = v46;
  *(v5 + 480) = v45;
  *(v5 + 488) = v49;
  *(v5 + 496) = v47;
  *(v5 + 504) = a2 & 1;
  *(v5 + 506) = 0;
  return v5;
}

void sub_1AF44BA60(uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AFDFCEC8();
  v7 = [v3 shaderModifiersArgumentWithName_];

  if (!v7)
  {
    *(a3 + 24) = MEMORY[0x1E69E6448];
    *a3 = 0;
    return;
  }

  v8 = sub_1AFDFCEC8();
  v9 = [v4 valueForKey_];

  if (v9)
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  v10 = [v7 type];
  if (v10 > 4)
  {
    if (v10 != 5)
    {
      if (v10 != 6)
      {
        if (v10 == 15)
        {
          sub_1AF44CBE4(v51, &v49);
          if (*(&v50 + 1))
          {
            sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
            if (swift_dynamicCast())
            {
              [v48 VFXMatrix4Value];
              v44 = v12;
              v45 = v11;
              v42 = v13;
              v43 = v14;

              v15 = 0;
LABEL_46:
              type metadata accessor for simd_float4x4(0);
              *(a3 + 24) = v31;
              v32 = swift_allocObject();
              *a3 = v32;

              if (v15)
              {
                v33 = 0;
                v34 = 0;
                v35 = 0;
                v36 = 0;
                v37 = 0x3F80000000000000;
                v38 = 1065353216;
                v39 = 1065353216;
                v40 = 0x3F80000000000000;
              }

              else
              {
                v33 = *(&v45 + 1);
                v38 = v45;
                v34 = *(&v42 + 1);
                v37 = v42;
                v39 = *(&v43 + 1);
                v35 = v43;
                v40 = *(&v44 + 1);
                v36 = v44;
              }

              v32[2] = v38;
              v32[3] = v33;
              v32[4] = v37;
              v32[5] = v34;
              v32[6] = v35;
              v32[7] = v39;
              v32[8] = v36;
              v32[9] = v40;
              goto LABEL_53;
            }
          }

          else
          {
            sub_1AF44CB60(&v49);
          }

          v44 = 0u;
          v45 = 0u;
          v15 = 1;
          v42 = 0u;
          v43 = 0u;
          goto LABEL_46;
        }

        goto LABEL_27;
      }

      sub_1AF44CBE4(v51, &v49);
      if (*(&v50 + 1))
      {
        sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
        if (swift_dynamicCast())
        {
          [v48 VFXFloat4Value];
          v47 = v22;

          v19 = 0;
          v21 = *(&v47 + 1);
          v20 = v47;
LABEL_33:
          v25 = &qword_1ED72F6E0;
          v26 = MEMORY[0x1E69E74A8];
          goto LABEL_34;
        }
      }

      else
      {
        sub_1AF44CB60(&v49);
      }

      v20 = 0;
      v21 = 0;
      v19 = 1;
      goto LABEL_33;
    }

    sub_1AF44CBE4(v51, &v49);
    if (*(&v50 + 1))
    {
      sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
      if (swift_dynamicCast())
      {
        [v48 VFXFloat3Value];
        v46 = v18;

        v19 = 0;
        v21 = *(&v46 + 1);
        v20 = v46;
LABEL_30:
        v25 = &qword_1ED72F740;
        v26 = MEMORY[0x1E69E7450];
LABEL_34:
        sub_1AF44CAFC(0, v25, v26);
        *(a3 + 24) = v27;
        v28 = swift_allocObject();
        *a3 = v28;

        if (v19)
        {
          v29 = 0;
        }

        else
        {
          v29 = v20;
        }

        if (v19)
        {
          v30 = 0;
        }

        else
        {
          v30 = v21;
        }

        *(v28 + 16) = v29;
        *(v28 + 24) = v30;
        goto LABEL_53;
      }
    }

    else
    {
      sub_1AF44CB60(&v49);
    }

    v20 = 0;
    v21 = 0;
    v19 = 1;
    goto LABEL_30;
  }

  if (v10 == 3)
  {
    sub_1AF44CBE4(v51, &v49);
    if (*(&v50 + 1))
    {
      sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        [v48 floatValue];
        v24 = v23;

LABEL_43:
        *(a3 + 24) = MEMORY[0x1E69E6448];

        *a3 = v24;
        goto LABEL_53;
      }
    }

    else
    {
      sub_1AF44CB60(&v49);
    }

    v24 = 0;
    goto LABEL_43;
  }

  if (v10 == 4)
  {
    sub_1AF44CBE4(v51, &v49);
    if (*(&v50 + 1))
    {
      sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
      if (swift_dynamicCast())
      {
        [v48 VFXFloat2Value];
        v17 = v16;

LABEL_52:
        sub_1AF44CAFC(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        *(a3 + 24) = v41;

        *a3 = v17;
        goto LABEL_53;
      }
    }

    else
    {
      sub_1AF44CB60(&v49);
    }

    v17 = 0;
    goto LABEL_52;
  }

LABEL_27:
  *(a3 + 24) = MEMORY[0x1E69E6448];

  *a3 = 0;
LABEL_53:
  sub_1AF44CB60(v51);
}

uint64_t sub_1AF44BFB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  sub_1AF0D5A54(a1, v6);

  return sub_1AF44C010(v6, v4, v3);
}

uint64_t sub_1AF44C010(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFDFCEC8();
  v6 = [v3 shaderModifiersArgumentWithName_];

  if (!v6)
  {
    sub_1AF441150(a1, a1[3]);
    v13 = sub_1AFDFEE08();
    v14 = sub_1AFDFCEC8();

    [v3 setValue:v13 forKey:v14];
    swift_unknownObjectRelease();

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v28 = 0u;
  v29 = 0u;
  sub_1AF0D5A54(a1, &v26);
  if (!swift_dynamicCast())
  {
    sub_1AF44CAFC(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
    if (swift_dynamicCast())
    {
      v7 = 0x1E696B098;
      v16 = [objc_opt_self() valueWithVFXFloat2_];
    }

    else
    {
      sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
      if (swift_dynamicCast())
      {
        v7 = 0x1E696B098;
        v16 = [objc_opt_self() valueWithVFXFloat3_];
      }

      else
      {
        sub_1AF44CAFC(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        if (swift_dynamicCast())
        {
          v7 = 0x1E696B098;
          v16 = [objc_opt_self() valueWithVFXFloat4_];
        }

        else
        {
          type metadata accessor for simd_float4x4(0);
          if (!swift_dynamicCast())
          {
            if (!swift_dynamicCast())
            {
              sub_1AF44CB60(&v28);

              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
              v20 = &v26;
              return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
            }

            v7 = 0x1E696AD98;
            v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
            goto LABEL_4;
          }

          v7 = 0x1E696B098;
          v16 = [objc_opt_self() valueWithVFXMatrix4_];
        }
      }
    }

    v11 = v16;
    v12 = &qword_1EB632950;
    goto LABEL_17;
  }

  v7 = 0x1E696AD98;
  v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v9) = v21;
  v10 = [v8 initWithFloat_];
LABEL_4:
  v11 = v10;
  v12 = &qword_1ED721F80;
LABEL_17:
  v17 = sub_1AF0D4478(0, v12, v7);
  sub_1AF44CB60(&v28);
  *&v28 = v11;
  *(&v29 + 1) = v17;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
  sub_1AF44CBE4(&v28, &v26);
  if (v27)
  {
    sub_1AF449D40(&v26, &v21);
    sub_1AF441150(&v21, v23);
    v18 = sub_1AFDFEE08();
    v19 = sub_1AFDFCEC8();

    [v3 setValue:v18 forKey:v19];
    swift_unknownObjectRelease();

    sub_1AF44CB60(&v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v20 = &v21;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  }

  sub_1AF44CB60(&v28);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF44CB60(&v26);
}

uint64_t sub_1AF44C4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = KeyPath;
  *(a4 + 24) = a3;
  *(a4 + 32) = 0;
  *(a4 + 40) = 67108865;
  return swift_bridgeObjectRetain_n();
}

id sub_1AF44C524@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 camera];
  *a2 = result;
  return result;
}

id sub_1AF44C574@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposure];
  *a2 = result;
  return result;
}

double sub_1AF44C5DC()
{
  sub_1AF450E5C(0, &qword_1EB638E10, &type metadata for ScriptKeyPathMigration, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *&result = 1;
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = xmmword_1AFE4C610;
  *(v1 + 48) = 0xED00007765697620;
  *(v1 + 56) = 0xD000000000000014;
  *(v1 + 64) = 0x80000001AFF28520;
  *(v1 + 72) = v0;
  *(v1 + 80) = &off_1F250EDF0;
  return result;
}

uint64_t sub_1AF44C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  KeyPath = swift_getKeyPath();
  *(v8 + 32) = 0x64656C62616E45;
  *(v8 + 40) = 0xE700000000000000;
  v10 = MEMORY[0x1E69E6370];
  *(v8 + 48) = KeyPath;
  *(v8 + 56) = v10;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 74) = 0;
  v11 = swift_getKeyPath();
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  v12 = MEMORY[0x1E69E6448];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 112) = 0;
  *(v8 + 120) = 1;
  *(v8 + 122) = 0;
  return v8;
}

id sub_1AF44C8C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 physicsWorld];
  *a2 = result;
  return result;
}

id sub_1AF44C904@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightingEnvironment];
  *a2 = result;
  return result;
}

id sub_1AF44C940@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 background];
  *a2 = result;
  return result;
}

uint64_t sub_1AF44C97C(id *a1)
{
  v2 = [*a1 fogColor];
  sub_1AFDFDFB8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF44C9D4(void *a1, void **a2)
{
  v2 = *a2;
  sub_1AF441150(a1, a1[3]);
  [v2 setFogColor_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF44CA48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return swift_getKeyPath();
  }

  return result;
}

void sub_1AF44CAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF44CB60(uint64_t a1)
{
  sub_1AF450E5C(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF44CBE4(uint64_t a1, uint64_t a2)
{
  sub_1AF450E5C(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF44CC70(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = v2;
  v4 = [v2 model];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_7:
    v7 = [v3 model];
    swift_unknownObjectRelease();
    if (v7)
    {
      objc_opt_self();
      swift_dynamicCastObjCClass();
    }

    return swift_getKeyPath();
  }

  swift_unknownObjectRelease();

  return swift_getKeyPath();
}

uint64_t sub_1AF44CD80()
{
  if (qword_1EB633230 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C29D0;
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  KeyPath = swift_getKeyPath();
  *(inited + 32) = 0x656C6269736956;
  *(inited + 40) = 0xE700000000000000;
  v3 = MEMORY[0x1E69E6370];
  *(inited + 48) = KeyPath;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = 1;
  *(inited + 74) = 0;
  v4 = swift_getKeyPath();
  v5 = MEMORY[0x1E69E6448];
  *(inited + 80) = 0x7974696361704FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = 0;
  *(inited + 120) = 1;
  *(inited + 122) = 0;
  v6 = swift_getKeyPath();
  v7 = MEMORY[0x1E69E6530];
  *(inited + 128) = 0x726564724FLL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  *(inited + 160) = 0;
  *(inited + 168) = 1;
  *(inited + 170) = 0;
  v8 = swift_getKeyPath();
  strcpy((inited + 176), "Casts Shadow");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = v8;
  *(inited + 200) = v3;
  *(inited + 208) = 0;
  *(inited + 216) = 1;
  *(inited + 218) = 0;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E76D8];
  *(inited + 224) = 0x70756F7247;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v9;
  *(inited + 248) = v10;
  *(inited + 256) = 0;
  *(inited + 264) = 1;
  *(inited + 266) = 0;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E6720];
  sub_1AF44D0B8(0, &qword_1EB6332D8, sub_1AF44D084, MEMORY[0x1E69E6720]);
  *(inited + 272) = 0x736574617453;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = v11;
  *(inited + 296) = v13;
  *(inited + 304) = 0;
  *(inited + 312) = 1;
  *(inited + 314) = 0;
  v14 = swift_getKeyPath();
  sub_1AF44D0B8(0, &qword_1EB633220, sub_1AF44D11C, v12);
  *(inited + 320) = 0x6574617453;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = v14;
  *(inited + 344) = v15;
  *(inited + 352) = 0;
  *(inited + 360) = 1;
  *(inited + 362) = 0;

  sub_1AF48FF94(inited);
  return v0;
}

void sub_1AF44D0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF44D11C()
{
  result = qword_1EB633228;
  if (!qword_1EB633228)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB633228);
  }

  return result;
}

uint64_t sub_1AF44D18C()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C620;
  KeyPath = swift_getKeyPath();
  type metadata accessor for simd_float4x4(0);
  v3 = v2;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000001AFF28740;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v4 = swift_getKeyPath();
  *(v0 + 80) = 0x74614D2077656956;
  *(v0 + 88) = 0xEB00000000786972;
  *(v0 + 96) = v4;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  return v0;
}

uint64_t sub_1AF44D284()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C640;
  KeyPath = swift_getKeyPath();
  type metadata accessor for VFXLightType(0);
  *(v0 + 32) = 1701869908;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  *(v0 + 80) = 0x726F6C6F43;
  *(v0 + 88) = 0xE500000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  v6 = MEMORY[0x1E69E6448];
  *(v0 + 128) = 0x7469736E65746E49;
  *(v0 + 136) = 0xE900000000000079;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 176) = 0x74617265706D6554;
  *(v0 + 184) = 0xEB00000000657275;
  *(v0 + 192) = v7;
  *(v0 + 200) = v6;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E76D8];
  *(v0 + 224) = 0x70756F7247;
  *(v0 + 232) = 0xE500000000000000;
  *(v0 + 240) = v8;
  *(v0 + 248) = v9;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v10 = swift_getKeyPath();
  *(v0 + 272) = 0x65636E6174736944;
  *(v0 + 280) = 0xE800000000000000;
  *(v0 + 288) = v10;
  *(v0 + 296) = v6;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E6370];
  strcpy((v0 + 320), "Enable shadows");
  *(v0 + 335) = -18;
  *(v0 + 336) = v11;
  *(v0 + 344) = v12;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v13 = swift_getKeyPath();
  *(v0 + 368) = 0x6E412072656E6E49;
  *(v0 + 376) = 0xEB00000000656C67;
  *(v0 + 384) = v13;
  *(v0 + 392) = v6;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v14 = swift_getKeyPath();
  *(v0 + 416) = 0x6E4120726574754FLL;
  *(v0 + 424) = 0xEB00000000656C67;
  *(v0 + 432) = v14;
  *(v0 + 440) = v6;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v15 = swift_getKeyPath();
  sub_1AF450E5C(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  strcpy((v0 + 464), "Gobo Contents");
  *(v0 + 478) = -4864;
  *(v0 + 480) = v15;
  *(v0 + 488) = v16;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v17 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  *(v0 + 512) = 0x73746E65747845;
  *(v0 + 520) = 0xE700000000000000;
  *(v0 + 528) = v17;
  *(v0 + 536) = v18;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  *(v0 + 554) = 0;
  v19 = swift_getKeyPath();
  *(v0 + 560) = 0x7241207377617244;
  *(v0 + 568) = 0xEA00000000006165;
  *(v0 + 576) = v19;
  *(v0 + 584) = v12;
  *(v0 + 592) = 0;
  *(v0 + 600) = 1;
  *(v0 + 602) = 0;
  v20 = swift_getKeyPath();
  strcpy((v0 + 608), "Double Sided");
  *(v0 + 621) = 0;
  *(v0 + 622) = -5120;
  *(v0 + 624) = v20;
  *(v0 + 632) = v12;
  *(v0 + 640) = 0;
  *(v0 + 648) = 1;
  *(v0 + 650) = 0;
  v21 = swift_getKeyPath();
  sub_1AF450F88(0, &qword_1EB630D18, &qword_1EB630D20, &off_1E7A77AB0);
  *(v0 + 656) = 0x656C69666F7250;
  *(v0 + 664) = 0xE700000000000000;
  *(v0 + 672) = v21;
  *(v0 + 680) = v22;
  *(v0 + 688) = 0;
  *(v0 + 696) = 1;
  *(v0 + 698) = 0;
  v23 = swift_getKeyPath();
  type metadata accessor for VFXLightProbeType(0);
  *(v0 + 704) = 0x79542065626F7250;
  *(v0 + 712) = 0xEA00000000006570;
  *(v0 + 720) = v23;
  *(v0 + 728) = v24;
  *(v0 + 736) = 0;
  *(v0 + 744) = 1;
  *(v0 + 746) = 0;
  v25 = swift_getKeyPath();
  *(v0 + 752) = 0x654E2065626F7250;
  *(v0 + 760) = 0xEA00000000007261;
  *(v0 + 768) = v25;
  *(v0 + 776) = v6;
  *(v0 + 784) = 0;
  *(v0 + 792) = 1;
  *(v0 + 794) = 0;
  v26 = swift_getKeyPath();
  *(v0 + 800) = 0x61462065626F7250;
  *(v0 + 808) = 0xE900000000000072;
  *(v0 + 816) = v26;
  *(v0 + 824) = v6;
  *(v0 + 832) = 0;
  *(v0 + 840) = 1;
  *(v0 + 842) = 0;
  return v0;
}

uint64_t sub_1AF44D7A4()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C5E0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for VFXForceFieldType(0);
  *(v0 + 32) = 1701869908;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6370];
  *(v0 + 80) = 0x657669746341;
  *(v0 + 88) = 0xE600000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  v6 = MEMORY[0x1E69E6448];
  *(v0 + 128) = 0x6874676E65727453;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 176) = 0x6C61636F4CLL;
  *(v0 + 184) = 0xE500000000000000;
  *(v0 + 192) = v7;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v8 = swift_getKeyPath();
  *(v0 + 224) = 0xD000000000000010;
  *(v0 + 232) = 0x80000001AFF28720;
  *(v0 + 240) = v8;
  *(v0 + 248) = v6;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v9 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  *(v0 + 272) = 0x74657366664FLL;
  *(v0 + 280) = 0xE600000000000000;
  *(v0 + 288) = v9;
  *(v0 + 296) = v10;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v11 = swift_getKeyPath();
  type metadata accessor for VFXForceFieldShape(0);
  *(v0 + 320) = 0x6570616853;
  *(v0 + 328) = 0xE500000000000000;
  *(v0 + 336) = v11;
  *(v0 + 344) = v12;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v13 = swift_getKeyPath();
  type metadata accessor for VFXForceFieldCullMode(0);
  *(v0 + 368) = 0x65646F4D6C6C7543;
  *(v0 + 376) = 0xE800000000000000;
  *(v0 + 384) = v13;
  *(v0 + 392) = v14;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v15 = swift_getKeyPath();
  strcpy((v0 + 416), "Affect Group");
  *(v0 + 429) = 0;
  *(v0 + 430) = -5120;
  v16 = MEMORY[0x1E69E76D8];
  *(v0 + 432) = v15;
  *(v0 + 440) = v16;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  return v0;
}

uint64_t sub_1AF44DA48()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C650;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 1936941389;
  *(v0 + 40) = 0xE400000000000000;
  v2 = MEMORY[0x1E69E6448];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  *(v0 + 80) = 0x6E6F697463697246;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v4 = swift_getKeyPath();
  *(v0 + 128) = 0x7475746974736552;
  *(v0 + 136) = 0xEB000000006E6F69;
  *(v0 + 144) = v4;
  *(v0 + 152) = v2;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 176) = 0x676E69706D6144;
  *(v0 + 184) = 0xE700000000000000;
  *(v0 + 192) = v5;
  *(v0 + 200) = v2;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 224) = 0x2072616C75676E41;
  *(v0 + 232) = 0xEF676E69706D6144;
  *(v0 + 240) = v6;
  *(v0 + 248) = v2;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 272) = 0xD000000000000010;
  *(v0 + 280) = 0x80000001AFF28620;
  *(v0 + 288) = v7;
  *(v0 + 296) = v2;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v8 = swift_getKeyPath();
  *(v0 + 320) = 0x656772616843;
  *(v0 + 328) = 0xE600000000000000;
  *(v0 + 336) = v8;
  *(v0 + 344) = v2;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6370];
  *(v0 + 368) = 0xD000000000000013;
  *(v0 + 376) = 0x80000001AFF28640;
  *(v0 + 384) = v9;
  *(v0 + 392) = v10;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v11 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v13 = v12;
  strcpy((v0 + 416), "Center of Mass");
  *(v0 + 431) = -18;
  *(v0 + 432) = v11;
  *(v0 + 440) = v12;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v14 = swift_getKeyPath();
  *(v0 + 464) = 0x797469636F6C6556;
  *(v0 + 472) = 0xEF726F7463614620;
  *(v0 + 480) = v14;
  *(v0 + 488) = v13;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v15 = swift_getKeyPath();
  *(v0 + 512) = 0xD000000000000017;
  *(v0 + 520) = 0x80000001AFF28660;
  *(v0 + 528) = v15;
  *(v0 + 536) = v13;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  *(v0 + 554) = 0;
  v16 = swift_getKeyPath();
  *(v0 + 560) = 0xD00000000000001ELL;
  *(v0 + 568) = 0x80000001AFF28680;
  *(v0 + 576) = v16;
  *(v0 + 584) = v2;
  *(v0 + 592) = 0;
  *(v0 + 600) = 1;
  *(v0 + 602) = 0;
  v17 = swift_getKeyPath();
  strcpy((v0 + 608), "Category group");
  *(v0 + 623) = -18;
  *(v0 + 624) = v17;
  v18 = MEMORY[0x1E69E76D8];
  *(v0 + 632) = MEMORY[0x1E69E76D8];
  *(v0 + 640) = 0;
  *(v0 + 648) = 1;
  *(v0 + 650) = 0;
  v19 = swift_getKeyPath();
  *(v0 + 656) = 0x6F6973696C6C6F43;
  *(v0 + 664) = 0xEF70756F7267206ELL;
  *(v0 + 672) = v19;
  *(v0 + 680) = v18;
  *(v0 + 688) = 0;
  *(v0 + 696) = 1;
  *(v0 + 698) = 0;
  v20 = swift_getKeyPath();
  *(v0 + 704) = 0xD000000000000011;
  *(v0 + 712) = 0x80000001AFF286A0;
  *(v0 + 720) = v20;
  *(v0 + 728) = v18;
  *(v0 + 736) = 0;
  *(v0 + 744) = 1;
  *(v0 + 746) = 0;
  v21 = swift_getKeyPath();
  strcpy((v0 + 752), "Allow Resting");
  *(v0 + 766) = -4864;
  *(v0 + 768) = v21;
  *(v0 + 776) = v10;
  *(v0 + 784) = 0;
  *(v0 + 792) = 1;
  *(v0 + 794) = 0;
  v22 = swift_getKeyPath();
  *(v0 + 800) = 0xD000000000000011;
  *(v0 + 808) = 0x80000001AFF286C0;
  *(v0 + 816) = v22;
  *(v0 + 824) = v2;
  *(v0 + 832) = 0;
  *(v0 + 840) = 1;
  *(v0 + 842) = 0;
  v23 = swift_getKeyPath();
  *(v0 + 848) = 0xD000000000000019;
  *(v0 + 856) = 0x80000001AFF286E0;
  *(v0 + 864) = v23;
  *(v0 + 872) = v2;
  *(v0 + 880) = 0;
  *(v0 + 888) = 1;
  *(v0 + 890) = 0;
  v24 = swift_getKeyPath();
  *(v0 + 896) = 0x6563726F46;
  *(v0 + 904) = 0xE500000000000000;
  *(v0 + 912) = v24;
  *(v0 + 920) = v13;
  *(v0 + 928) = 0;
  *(v0 + 936) = 1;
  *(v0 + 938) = 0;
  v25 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v27 = v26;
  *(v0 + 944) = 0x657571726F54;
  *(v0 + 952) = 0xE600000000000000;
  *(v0 + 960) = v25;
  *(v0 + 968) = v26;
  *(v0 + 976) = 0;
  *(v0 + 984) = 1;
  *(v0 + 986) = 0;
  v28 = swift_getKeyPath();
  strcpy((v0 + 992), "Force Impulse");
  *(v0 + 1006) = -4864;
  *(v0 + 1008) = v28;
  *(v0 + 1016) = v13;
  *(v0 + 1024) = 0;
  *(v0 + 1032) = 1;
  *(v0 + 1034) = 0;
  v29 = swift_getKeyPath();
  strcpy((v0 + 1040), "Torque Impulse");
  *(v0 + 1055) = -18;
  *(v0 + 1056) = v29;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = 1;
  *(v0 + 1082) = 0;
  v30 = swift_getKeyPath();
  *(v0 + 1088) = 0x797469636F6C6556;
  *(v0 + 1096) = 0xE800000000000000;
  *(v0 + 1104) = v30;
  *(v0 + 1112) = v13;
  *(v0 + 1120) = 0;
  *(v0 + 1128) = 1;
  *(v0 + 1130) = 0;
  v31 = swift_getKeyPath();
  *(v0 + 1136) = 0xD000000000000010;
  *(v0 + 1144) = 0x80000001AFF28700;
  *(v0 + 1152) = v31;
  *(v0 + 1160) = v27;
  *(v0 + 1168) = 0;
  *(v0 + 1176) = 1;
  *(v0 + 1178) = 0;
  return v0;
}

uint64_t sub_1AF44E0D8()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C660;
  KeyPath = swift_getKeyPath();
  type metadata accessor for VFXParametricModelType(0);
  *(v0 + 32) = 1701869908;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x6874646957;
  *(v0 + 88) = 0xE500000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x746867696548;
  *(v0 + 136) = 0xE600000000000000;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 176) = 0x6874676E654CLL;
  *(v0 + 184) = 0xE600000000000000;
  *(v0 + 192) = v6;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v7 = swift_getKeyPath();
  strcpy((v0 + 224), "Chamfer radius");
  *(v0 + 239) = -18;
  *(v0 + 240) = v7;
  *(v0 + 248) = v4;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v8 = swift_getKeyPath();
  type metadata accessor for VFXMeshPrimitiveType(0);
  *(v0 + 272) = 0x79676F6C6F706F54;
  *(v0 + 280) = 0xE800000000000000;
  *(v0 + 288) = v8;
  *(v0 + 296) = v9;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E6530];
  strcpy((v0 + 320), "Width Segment");
  *(v0 + 334) = -4864;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v12 = swift_getKeyPath();
  strcpy((v0 + 368), "Height Segment");
  *(v0 + 383) = -18;
  *(v0 + 384) = v12;
  *(v0 + 392) = v11;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v13 = swift_getKeyPath();
  strcpy((v0 + 416), "Length Segment");
  *(v0 + 431) = -18;
  *(v0 + 432) = v13;
  *(v0 + 440) = v11;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v14 = swift_getKeyPath();
  *(v0 + 464) = 0x7265666D616843;
  *(v0 + 472) = 0xE700000000000000;
  *(v0 + 480) = v14;
  *(v0 + 488) = v11;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v15 = swift_getKeyPath();
  *(v0 + 512) = 0x737569646152;
  *(v0 + 520) = 0xE600000000000000;
  *(v0 + 528) = v15;
  *(v0 + 536) = v4;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  *(v0 + 554) = 0;
  v16 = swift_getKeyPath();
  strcpy((v0 + 560), "Segment Count");
  *(v0 + 574) = -4864;
  *(v0 + 576) = v16;
  *(v0 + 584) = v11;
  *(v0 + 592) = 0;
  *(v0 + 600) = 1;
  *(v0 + 602) = 0;
  v17 = swift_getKeyPath();
  *(v0 + 608) = 1851879507;
  *(v0 + 616) = 0xE400000000000000;
  *(v0 + 624) = v17;
  *(v0 + 632) = v4;
  *(v0 + 640) = 0;
  *(v0 + 648) = 1;
  *(v0 + 650) = 0;
  v18 = swift_getKeyPath();
  *(v0 + 656) = 0x65687073696D6548;
  *(v0 + 664) = 0xEB00000000636972;
  *(v0 + 672) = v18;
  v19 = MEMORY[0x1E69E6370];
  *(v0 + 680) = MEMORY[0x1E69E6370];
  *(v0 + 688) = 0;
  *(v0 + 696) = 1;
  *(v0 + 698) = 0;
  v20 = swift_getKeyPath();
  *(v0 + 704) = 0x63697365646F6547;
  *(v0 + 712) = 0xE800000000000000;
  *(v0 + 720) = v20;
  *(v0 + 728) = v19;
  *(v0 + 736) = 0;
  *(v0 + 744) = 1;
  *(v0 + 746) = 0;
  v21 = swift_getKeyPath();
  strcpy((v0 + 752), "Inner radius");
  *(v0 + 765) = 0;
  *(v0 + 766) = -5120;
  *(v0 + 768) = v21;
  *(v0 + 776) = v4;
  *(v0 + 784) = 0;
  *(v0 + 792) = 1;
  *(v0 + 794) = 0;
  v22 = swift_getKeyPath();
  *(v0 + 800) = 0x6C6169646152;
  *(v0 + 808) = 0xE600000000000000;
  *(v0 + 816) = v22;
  *(v0 + 824) = v11;
  *(v0 + 832) = 0;
  *(v0 + 840) = 1;
  *(v0 + 842) = 0;
  v23 = swift_getKeyPath();
  *(v0 + 848) = 0x6461722065706950;
  *(v0 + 856) = 0xEB00000000737569;
  *(v0 + 864) = v23;
  *(v0 + 872) = v4;
  *(v0 + 880) = 0;
  *(v0 + 888) = 1;
  *(v0 + 890) = 0;
  v24 = swift_getKeyPath();
  *(v0 + 896) = 1701865808;
  *(v0 + 904) = 0xE400000000000000;
  *(v0 + 912) = v24;
  *(v0 + 920) = v11;
  *(v0 + 928) = 0;
  *(v0 + 936) = 1;
  *(v0 + 938) = 0;
  return v0;
}

uint64_t sub_1AF44E5B0()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C5F0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for VFXShadingModel(0);
  *(v0 + 32) = 0x676E6964616853;
  *(v0 + 40) = 0xE700000000000000;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  type metadata accessor for VFXBlendMode(0);
  *(v0 + 80) = 0x676E69646E656C42;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  type metadata accessor for VFXTransparencyMode(0);
  *(v0 + 128) = 0xD000000000000011;
  *(v0 + 136) = 0x80000001AFF28580;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v7 = swift_getKeyPath();
  v8 = MEMORY[0x1E69E6448];
  strcpy((v0 + 176), "Alpha Cutoff");
  *(v0 + 189) = 0;
  *(v0 + 190) = -5120;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v9 = swift_getKeyPath();
  type metadata accessor for VFXColorMask(0);
  strcpy((v0 + 224), "Write to Color");
  *(v0 + 239) = -18;
  *(v0 + 240) = v9;
  *(v0 + 248) = v10;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E6370];
  strcpy((v0 + 272), "Write to Depth");
  *(v0 + 287) = -18;
  *(v0 + 288) = v11;
  *(v0 + 296) = v12;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v13 = swift_getKeyPath();
  *(v0 + 320) = 0x6F72662064616552;
  *(v0 + 328) = 0xEF6874706544206DLL;
  *(v0 + 336) = v13;
  *(v0 + 344) = v12;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v14 = swift_getKeyPath();
  *(v0 + 368) = 0xD000000000000013;
  *(v0 + 376) = 0x80000001AFF285A0;
  *(v0 + 384) = v14;
  *(v0 + 392) = v8;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v54 = v0;
  v22 = 0x6F6465626C41;
  v23 = 0xE600000000000000;
  v24[0] = swift_getKeyPath();
  v24[1] = 0x73656E6C6174654DLL;
  v24[2] = 0xE900000000000073;
  v24[3] = swift_getKeyPath();
  v24[4] = 0x73656E6867756F52;
  v24[5] = 0xE900000000000073;
  v24[6] = swift_getKeyPath();
  v24[7] = 0x72616C7563657053;
  v24[8] = 0xE800000000000000;
  v24[9] = swift_getKeyPath();
  v24[10] = 0x6C616D726F4ELL;
  v24[11] = 0xE600000000000000;
  v24[12] = swift_getKeyPath();
  v24[13] = 0x697463656C666552;
  v24[14] = 0xEA00000000006576;
  v24[15] = swift_getKeyPath();
  v24[16] = 0x726170736E617254;
  v24[17] = 0xEB00000000746E65;
  v24[18] = swift_getKeyPath();
  v24[19] = 0x6F6973756C63634FLL;
  v24[20] = 0xE90000000000006ELL;
  v24[21] = swift_getKeyPath();
  strcpy(v25, "Illumination");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v26 = swift_getKeyPath();
  v27 = 0x6E6F697373696D45;
  v28 = 0xE800000000000000;
  v29 = swift_getKeyPath();
  v30 = 0x796C7069746C754DLL;
  v31 = 0xE800000000000000;
  v32 = swift_getKeyPath();
  v33 = 1952542531;
  v34 = 0xE400000000000000;
  v35 = swift_getKeyPath();
  v36 = 0x726F4E2074616F43;
  v37 = 0xEB000000006C616DLL;
  v38 = swift_getKeyPath();
  strcpy(v39, "Coat Roughness");
  v39[15] = -18;
  v40 = swift_getKeyPath();
  v41 = 0x6166727573627553;
  v42 = 0xEA00000000006563;
  v43 = swift_getKeyPath();
  v44 = 0xD000000000000011;
  v45 = 0x80000001AFF285C0;
  v46 = swift_getKeyPath();
  strcpy(v47, "Transmission");
  HIBYTE(v47[6]) = 0;
  v47[7] = -5120;
  v48 = swift_getKeyPath();
  v49 = 0xD000000000000012;
  v50 = 0x80000001AFF285E0;
  v51 = swift_getKeyPath();
  strcpy(v52, "Displacement");
  HIBYTE(v52[6]) = 0;
  v52[7] = -5120;
  v15 = 0;
  v53 = swift_getKeyPath();
  do
  {
    v16 = *&v21[v15 * 8 + 32];
    v17 = v24[v15 - 1];
    v18 = v24[v15];

    v19 = sub_1AF44AA08(v16, v17, v18);

    sub_1AF48FF94(v19);

    v15 += 3;
  }

  while (v15 != 57);
  sub_1AF451180(0, &qword_1EB638E20, &unk_1EB638E28, sub_1AF0D4478, sub_1AF451204);
  swift_arrayDestroy();
  return v54;
}

uint64_t sub_1AF44EBF4()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C670;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 1701869908;
  *(v0 + 40) = 0xE400000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  *(v0 + 80) = 5391432;
  *(v0 + 88) = 0xE300000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v4 = swift_getKeyPath();
  strcpy((v0 + 128), "Focal length");
  *(v0 + 141) = 0;
  *(v0 + 142) = -5120;
  v5 = MEMORY[0x1E69E6448];
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 176) = 0xD000000000000014;
  *(v0 + 184) = 0x80000001AFF28520;
  *(v0 + 192) = v6;
  *(v0 + 200) = v5;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v7 = swift_getKeyPath();
  strcpy((v0 + 224), "Sensor height");
  *(v0 + 238) = -4864;
  *(v0 + 240) = v7;
  *(v0 + 248) = v5;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v8 = swift_getKeyPath();
  type metadata accessor for VFXCameraFillMode(0);
  *(v0 + 272) = 0x646F4D206C6C6946;
  *(v0 + 280) = 0xE900000000000065;
  *(v0 + 288) = v8;
  *(v0 + 296) = v9;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v10 = swift_getKeyPath();
  *(v0 + 320) = 1918985550;
  *(v0 + 328) = 0xE400000000000000;
  *(v0 + 336) = v10;
  *(v0 + 344) = v5;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v11 = swift_getKeyPath();
  *(v0 + 368) = 7496006;
  *(v0 + 376) = 0xE300000000000000;
  *(v0 + 384) = v11;
  *(v0 + 392) = v5;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v12 = swift_getKeyPath();
  v13 = MEMORY[0x1E69E76D8];
  *(v0 + 416) = 0x70756F7247;
  *(v0 + 424) = 0xE500000000000000;
  *(v0 + 432) = v12;
  *(v0 + 440) = v13;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v14 = swift_getKeyPath();
  sub_1AF44CAFC(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  *(v0 + 464) = 0x66666F206D6C6946;
  *(v0 + 472) = 0xEB00000000746573;
  *(v0 + 480) = v14;
  *(v0 + 488) = v15;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v16 = swift_getKeyPath();
  strcpy((v0 + 512), "Focus Distance");
  *(v0 + 527) = -18;
  *(v0 + 528) = v16;
  *(v0 + 536) = v5;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  *(v0 + 554) = 0;
  v17 = swift_getKeyPath();
  type metadata accessor for simd_float4x4(0);
  *(v0 + 560) = 0xD000000000000014;
  *(v0 + 568) = 0x80000001AFF28540;
  *(v0 + 576) = v17;
  *(v0 + 584) = v18;
  *(v0 + 592) = 0;
  *(v0 + 600) = 1;
  *(v0 + 602) = 0;
  v19 = swift_getKeyPath();
  *(v0 + 608) = 0xD000000000000012;
  *(v0 + 616) = 0x80000001AFF28560;
  *(v0 + 624) = v19;
  *(v0 + 632) = v5;
  *(v0 + 640) = 0;
  *(v0 + 648) = 1;
  *(v0 + 650) = 0;
  v20 = swift_getKeyPath();
  sub_1AF450F88(0, &qword_1EB638E18, &qword_1ED72F858, &off_1E7A77A18);
  *(v0 + 656) = 0x657275736F707845;
  *(v0 + 664) = 0xE800000000000000;
  *(v0 + 672) = v20;
  *(v0 + 680) = v21;
  *(v0 + 688) = 0;
  *(v0 + 696) = 1;
  *(v0 + 698) = 0;
  return v0;
}

uint64_t sub_1AF44EFEC()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C5E0;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x7469736E65746E49;
  *(v0 + 88) = 0xE900000000000079;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x6C6F687365726854;
  *(v0 + 136) = 0xE900000000000064;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 176) = 0xD000000000000014;
  *(v0 + 184) = 0x80000001AFF284E0;
  *(v0 + 192) = v6;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 224) = 0x6F69746172657449;
  *(v0 + 232) = 0xEA0000000000736ELL;
  v8 = MEMORY[0x1E69E6530];
  *(v0 + 240) = v7;
  *(v0 + 248) = v8;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v9 = swift_getKeyPath();
  *(v0 + 272) = 0xD000000000000010;
  *(v0 + 280) = 0x80000001AFF28500;
  *(v0 + 288) = v9;
  *(v0 + 296) = v2;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v10 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  strcpy((v0 + 320), "Color filter");
  *(v0 + 333) = 0;
  *(v0 + 334) = -5120;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v12 = swift_getKeyPath();
  *(v0 + 368) = 0x74736172746E6F43;
  *(v0 + 376) = 0xE800000000000000;
  *(v0 + 384) = v12;
  *(v0 + 392) = v4;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v13 = swift_getKeyPath();
  *(v0 + 416) = 0x6974617275746153;
  *(v0 + 424) = 0xEA00000000006E6FLL;
  *(v0 + 432) = v13;
  *(v0 + 440) = v4;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  return v0;
}

uint64_t sub_1AF44F298()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C680;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x706F745346;
  *(v0 + 88) = 0xE500000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  type metadata accessor for VFXCameraDepthOfFieldQuality(0);
  *(v0 + 128) = 0x7974696C617551;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  return v0;
}

uint64_t sub_1AF44F3BC()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C690;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x6974617275746153;
  *(v0 + 88) = 0xEA00000000006E6FLL;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x74736172746E6F43;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 176) = 0x74617265706D6554;
  *(v0 + 184) = 0xEB00000000657275;
  *(v0 + 192) = v6;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 224) = 1953392980;
  *(v0 + 232) = 0xE400000000000000;
  *(v0 + 240) = v7;
  *(v0 + 248) = v4;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v8 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v10 = v9;
  *(v0 + 272) = 0x6F6C6F437466694CLL;
  *(v0 + 280) = 0xE900000000000072;
  *(v0 + 288) = v8;
  *(v0 + 296) = v9;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v11 = swift_getKeyPath();
  *(v0 + 320) = 0x7366664F7466694CLL;
  *(v0 + 328) = 0xEA00000000007465;
  *(v0 + 336) = v11;
  *(v0 + 344) = v4;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v12 = swift_getKeyPath();
  *(v0 + 368) = 0x6F4320616D6D6147;
  *(v0 + 376) = 0xEB00000000726F6CLL;
  *(v0 + 384) = v12;
  *(v0 + 392) = v10;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v13 = swift_getKeyPath();
  strcpy((v0 + 416), "Gamma Offset");
  *(v0 + 429) = 0;
  *(v0 + 430) = -5120;
  *(v0 + 432) = v13;
  *(v0 + 440) = v4;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v14 = swift_getKeyPath();
  *(v0 + 464) = 0x6C6F43206E696147;
  *(v0 + 472) = 0xEA0000000000726FLL;
  *(v0 + 480) = v14;
  *(v0 + 488) = v10;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v15 = swift_getKeyPath();
  *(v0 + 512) = 0x66664F206E696147;
  *(v0 + 520) = 0xEB00000000746573;
  *(v0 + 528) = v15;
  *(v0 + 536) = v4;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  *(v0 + 554) = 0;
  return v0;
}

uint64_t sub_1AF44F6D8()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C5F0;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  type metadata accessor for VFXCameraToneMappingMode(0);
  *(v0 + 80) = 1701080909;
  *(v0 + 88) = 0xE400000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  v6 = MEMORY[0x1E69E6448];
  strcpy((v0 + 128), "Toe Strength");
  *(v0 + 141) = 0;
  *(v0 + 142) = -5120;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 176) = 0x676E654C20656F54;
  *(v0 + 184) = 0xEA00000000006874;
  *(v0 + 192) = v7;
  *(v0 + 200) = v6;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v8 = swift_getKeyPath();
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001AFF284C0;
  *(v0 + 240) = v8;
  *(v0 + 248) = v6;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v9 = swift_getKeyPath();
  *(v0 + 272) = 0x7265646C756F6853;
  *(v0 + 280) = 0xEF6874676E654C20;
  *(v0 + 288) = v9;
  *(v0 + 296) = v6;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v10 = swift_getKeyPath();
  strcpy((v0 + 320), "Shoulder Angle");
  *(v0 + 335) = -18;
  *(v0 + 336) = v10;
  *(v0 + 344) = v6;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v11 = swift_getKeyPath();
  *(v0 + 368) = 0x616D6D6147;
  *(v0 + 376) = 0xE500000000000000;
  *(v0 + 384) = v11;
  *(v0 + 392) = v6;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  return v0;
}

uint64_t sub_1AF44F914()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C680;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x6874676E65727453;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x7469736E65746E49;
  *(v0 + 136) = 0xE900000000000079;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  return v0;
}

uint64_t sub_1AF44FA38()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C6A0;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x7469736E65746E49;
  *(v0 + 88) = 0xE900000000000079;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x6870726F6D616E41;
  *(v0 + 136) = 0xEA00000000006369;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 176) = 0x7373656E74666F53;
  *(v0 + 184) = 0xE800000000000000;
  *(v0 + 192) = v6;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 224) = 0x737569646152;
  *(v0 + 232) = 0xE600000000000000;
  *(v0 + 240) = v7;
  *(v0 + 248) = v4;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  return v0;
}

uint64_t sub_1AF44FBC4()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C6B0;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x7469736E65746E49;
  *(v0 + 88) = 0xE900000000000079;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x656C616353;
  *(v0 + 136) = 0xE500000000000000;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  *(v0 + 176) = 0x6465726F6C6F43;
  *(v0 + 184) = 0xE700000000000000;
  *(v0 + 192) = v6;
  *(v0 + 200) = v2;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  return v0;
}

uint64_t sub_1AF44FD1C()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C680;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  type metadata accessor for VFXCameraLensBlurFilterQuality(0);
  *(v0 + 80) = 0x74736172746E6F43;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  *(v0 + 128) = 0x737569646152;
  *(v0 + 136) = 0xE600000000000000;
  v6 = MEMORY[0x1E69E6448];
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  return v0;
}

uint64_t sub_1AF44FE44()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C640;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6530];
  strcpy((v0 + 80), "Sample Count");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  v6 = MEMORY[0x1E69E6448];
  *(v0 + 128) = 0x7469736E65746E49;
  *(v0 + 136) = 0xE900000000000079;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v7 = swift_getKeyPath();
  sub_1AF44CAFC(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v9 = v8;
  *(v0 + 176) = 0x7265746E6543;
  *(v0 + 184) = 0xE600000000000000;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v10 = swift_getKeyPath();
  *(v0 + 224) = 0x5A206D6F7246;
  *(v0 + 232) = 0xE600000000000000;
  *(v0 + 240) = v10;
  *(v0 + 248) = v6;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v11 = swift_getKeyPath();
  *(v0 + 272) = 0x676E41206D6F7246;
  *(v0 + 280) = 0xEA0000000000656CLL;
  *(v0 + 288) = v11;
  *(v0 + 296) = v6;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v12 = swift_getKeyPath();
  *(v0 + 320) = 0x696853206D6F7246;
  *(v0 + 328) = 0xEA00000000007466;
  *(v0 + 336) = v12;
  *(v0 + 344) = v9;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v13 = swift_getKeyPath();
  *(v0 + 368) = 1512075092;
  *(v0 + 376) = 0xE400000000000000;
  *(v0 + 384) = v13;
  *(v0 + 392) = v6;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v14 = swift_getKeyPath();
  *(v0 + 416) = 0x656C676E41206F54;
  *(v0 + 424) = 0xE800000000000000;
  *(v0 + 432) = v14;
  *(v0 + 440) = v6;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v15 = swift_getKeyPath();
  *(v0 + 464) = 0x7466696853206F54;
  *(v0 + 472) = 0xE800000000000000;
  *(v0 + 480) = v15;
  *(v0 + 488) = v9;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v16 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v18 = v17;
  *(v0 + 512) = 0x31726F6C6F43;
  *(v0 + 520) = 0xE600000000000000;
  *(v0 + 528) = v16;
  *(v0 + 536) = v17;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  *(v0 + 554) = 0;
  v19 = swift_getKeyPath();
  *(v0 + 560) = 0x32726F6C6F43;
  *(v0 + 568) = 0xE600000000000000;
  *(v0 + 576) = v19;
  *(v0 + 584) = v18;
  *(v0 + 592) = 0;
  *(v0 + 600) = 1;
  *(v0 + 602) = 0;
  v20 = swift_getKeyPath();
  *(v0 + 608) = 0x33726F6C6F43;
  *(v0 + 616) = 0xE600000000000000;
  *(v0 + 624) = v20;
  *(v0 + 632) = v18;
  *(v0 + 640) = 0;
  *(v0 + 648) = 1;
  *(v0 + 650) = 0;
  v21 = swift_getKeyPath();
  strcpy((v0 + 656), "Mask Enabled");
  *(v0 + 669) = 0;
  *(v0 + 670) = -5120;
  *(v0 + 672) = v21;
  *(v0 + 680) = v2;
  *(v0 + 688) = 0;
  *(v0 + 696) = 1;
  *(v0 + 698) = 0;
  v22 = swift_getKeyPath();
  *(v0 + 704) = 0x6E6543206B73614DLL;
  *(v0 + 712) = 0xEB00000000726574;
  *(v0 + 720) = v22;
  *(v0 + 728) = v9;
  *(v0 + 736) = 0;
  *(v0 + 744) = 1;
  *(v0 + 746) = 0;
  v23 = swift_getKeyPath();
  *(v0 + 752) = 0x646152206B73614DLL;
  *(v0 + 760) = 0xEB00000000737569;
  *(v0 + 768) = v23;
  *(v0 + 776) = v6;
  *(v0 + 784) = 0;
  *(v0 + 792) = 1;
  *(v0 + 794) = 0;
  v24 = swift_getKeyPath();
  *(v0 + 800) = 0xD000000000000010;
  *(v0 + 808) = 0x80000001AFF284A0;
  *(v0 + 816) = v24;
  *(v0 + 824) = v6;
  *(v0 + 832) = 0;
  *(v0 + 840) = 1;
  *(v0 + 842) = 0;
  return v0;
}

uint64_t sub_1AF4502E0()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C6A0;
  KeyPath = swift_getKeyPath();
  *(v0 + 32) = 0x64656C62616E45;
  *(v0 + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6370];
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x737569646152;
  *(v0 + 88) = 0xE600000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  strcpy((v0 + 128), "Mask Enabled");
  *(v0 + 141) = 0;
  *(v0 + 142) = -5120;
  *(v0 + 144) = v5;
  *(v0 + 152) = v2;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v6 = swift_getKeyPath();
  sub_1AF44CAFC(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  *(v0 + 176) = 0x6E6543206B73614DLL;
  *(v0 + 184) = 0xEB00000000726574;
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v8 = swift_getKeyPath();
  *(v0 + 224) = 0x646152206B73614DLL;
  *(v0 + 232) = 0xEB00000000737569;
  *(v0 + 240) = v8;
  *(v0 + 248) = v4;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  return v0;
}

uint64_t sub_1AF4504A4()
{
  sub_1AF450E5C(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C600;
  KeyPath = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  *(v0 + 32) = 0x79746976617247;
  *(v0 + 40) = 0xE700000000000000;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6448];
  *(v0 + 80) = 0x6465657053;
  *(v0 + 88) = 0xE500000000000000;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  v5 = swift_getKeyPath();
  sub_1AF44CAFC(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  *(v0 + 128) = 0x6F6C6F4320676F46;
  *(v0 + 136) = 0xE900000000000072;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 170) = 0;
  v7 = swift_getKeyPath();
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x80000001AFF283E0;
  *(v0 + 192) = v7;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 218) = 0;
  v8 = swift_getKeyPath();
  *(v0 + 224) = 0xD000000000000010;
  *(v0 + 232) = 0x80000001AFF28400;
  *(v0 + 240) = v8;
  *(v0 + 248) = v4;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 266) = 0;
  v9 = swift_getKeyPath();
  *(v0 + 272) = 0xD00000000000001FLL;
  *(v0 + 280) = 0x80000001AFF28420;
  v10 = MEMORY[0x1E69E6370];
  *(v0 + 288) = v9;
  *(v0 + 296) = v10;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  *(v0 + 314) = 0;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E7CA0] + 8;
  sub_1AF450E5C(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v14 = v13;
  *(v0 + 320) = 0xD000000000000014;
  *(v0 + 328) = 0x80000001AFF28440;
  *(v0 + 336) = v11;
  *(v0 + 344) = v13;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 362) = 0;
  v15 = swift_getKeyPath();
  *(v0 + 368) = 0x756F72676B636142;
  *(v0 + 376) = 0xEA0000000000646ELL;
  *(v0 + 384) = v15;
  *(v0 + 392) = v14;
  *(v0 + 400) = 0;
  *(v0 + 408) = 1;
  *(v0 + 410) = 0;
  v16 = swift_getKeyPath();
  *(v0 + 416) = 0x726F6C6F43;
  *(v0 + 424) = 0xE500000000000000;
  *(v0 + 432) = v16;
  *(v0 + 440) = v12;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  v17 = swift_getKeyPath();
  *(v0 + 464) = 0xD000000000000013;
  *(v0 + 472) = 0x80000001AFF28460;
  *(v0 + 480) = v17;
  *(v0 + 488) = v10;
  *(v0 + 496) = 0;
  *(v0 + 504) = 1;
  *(v0 + 506) = 0;
  v23 = v0;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();

  v18 = sub_1AF44B234(0x756F72676B636142, 0xEA0000000000646ELL, v21);

  sub_1AF48FF94(v18);

  v19 = sub_1AF44B234(4997705, 0xE300000000000000, v22);

  sub_1AF48FF94(v19);

  sub_1AF451180(0, &qword_1EB630DC0, &unk_1EB6308D0, sub_1AF0D4478, sub_1AF4509A8);
  swift_arrayDestroy();
  return v23;
}

void sub_1AF4509A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF0D4478(255, &qword_1ED7307E8, &off_1E7A77C98);
    a5(255, a3, a4);
    v9 = sub_1AFDFF408();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AF450A58(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3, a4);
    a5(255);
    v7 = sub_1AFDFF408();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF450B0C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3, a4);
    v6 = sub_1AFDFF408();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF450E5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1AF450F30@<X0>(id *a1@<X0>, SEL *a2@<X3>, _OWORD *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

void sub_1AF450F88(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3, a4);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF451180(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *, void *, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, &qword_1ED72E078, &off_1E7A77B08, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF451204(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF0D4478(255, &qword_1ED72E0B0, &off_1E7A77B00);
    a5(255, a3, a4);
    v9 = sub_1AFDFF408();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF4515E4(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1AFDFEE28();

  if ((v2 & 1) == 0)
  {
    if (a1 == 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1AFDFEE28();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1AF451744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF4564D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF451774(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = 0xE500000000000000;
  v6 = 0x6C6174656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x7466697773;
  if (v2 != 3)
  {
    v8 = 29546;
    v7 = 0xE200000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7070636A626FLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *sub_1AF4517F0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF456664(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF45186C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF45192C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF4519D8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF451AA4()
{
  v1 = *v0;
  v2 = 0x4C28207466697753;
  if (v1 != 3)
  {
    v2 = 0x697263536176614ALL;
  }

  if (v1 == 2)
  {
    v2 = 0x6C6174654DLL;
  }

  v3 = 67;
  if (*v0)
  {
    v3 = 0x7070436A624FLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF451B3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v3 != 1)
      {
        swift_getErrorValue();
        return sub_1AFDFF1D8();
      }

      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v4 = 0x80000001AFF28B30;
      v5 = 0xD000000000000013;
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v4 = 0x80000001AFF28B50;
      v5 = 0xD000000000000015;
    }

    goto LABEL_15;
  }

  if (*(v0 + 32) > 4u)
  {
    if (v3 != 5)
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v4 = 0x80000001AFF28AD0;
      v5 = 0xD000000000000011;
      goto LABEL_15;
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1AFDFE218();

    v6 = "JavaScript error: ";
LABEL_13:
    v4 = (v6 - 32) | 0x8000000000000000;
    v5 = 0xD000000000000012;
LABEL_15:
    v8[0] = v5;
    v8[1] = v4;
    goto LABEL_16;
  }

  if (v3 != 3)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1AFDFE218();

    v6 = "image load error: ";
    goto LABEL_13;
  }

  strcpy(v8, "link error: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
LABEL_16:
  MEMORY[0x1B2718AE0](v1, v2);
  return v8[0];
}

uint64_t sub_1AF451D18()
{
  result = sub_1AF451D3C();
  qword_1EB638E70 = result;
  *algn_1EB638E78 = v1;
  return result;
}

uint64_t sub_1AF451D3C()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = sub_1AFDFC128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_1AFDFC0B8();
  sub_1AFDFC088();
  v10 = *(v1 + 8);
  v10(v3, v0);
  v11 = sub_1AFDFC0D8();
  v10(v6, v0);
  v12 = [v7 defaultManager];
  v13 = sub_1AFDFCEC8();
  v23 = 0;
  LODWORD(v6) = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v23];

  if (v6)
  {
    v14 = v23;
  }

  else
  {
    v15 = v23;
    v16 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF28A40);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v18 = v23;
    v17 = v24;
    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v21 = v19;
      swift_once();
      v19 = v21;
    }

    v23 = 0;
    sub_1AF0D4F18(v19, &v23, v18, v17);
  }

  return v11;
}

double sub_1AF45207C()
{
  *(v0 + 64) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 41) = 0u;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t sub_1AF452240(uint64_t a1, unint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = sub_1AFDFCF78();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AFDFC128();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = v2;
  v9 = *(v2 + 120);
  v10 = 0xE000000000000000;
  v46 = &v41 - v11;
  if (v9)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    LOBYTE(v55) = *(v9 + 24);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](95, 0xE100000000000000);
    v9 = v53;
    v10 = v54;
  }

  v44 = v7;
  v53 = v9;
  v54 = v10;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1AFC07154(0, 8, 0);
  v12 = 0;
  v13 = v55;
  do
  {
    if (("vaScriptCodeLoader" & 0x2F00000000000000) == 0x2000000000000000)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v16 = sub_1AFDFD048();
      v52 = 0;
      MEMORY[0x1B271DEC0](&v52, 8);
      if (v16 > v52 * v16)
      {
        v17 = -v16 % v16;
        while (v17 > v52 * v16)
        {
          v52 = 0;
          MEMORY[0x1B271DEC0](&v52, 8);
        }
      }

      sub_1AFDFD088();
      v14 = sub_1AFDFD1C8();
      v15 = v18;
    }

    v55 = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1AFC07154(v19 > 1, v20 + 1, 1);
      v13 = v55;
    }

    ++v12;
    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v14;
    *(v21 + 40) = v15;
  }

  while (v12 != 8);
  v55 = v13;
  v22 = MEMORY[0x1E69E5EE0];
  sub_1AF456CB0(0, &qword_1EB638F78, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1AF456478(&qword_1EB638F80, &qword_1EB638F78, v22, MEMORY[0x1E69E6328]);
  v23 = sub_1AFDFD1D8();
  MEMORY[0x1B2718AE0](v23);

  v24 = MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v25 = (*(*v41 + 440))(v24);
  if (v25 <= 1)
  {
    v26 = v45;
    v27 = v46;
    if (v25)
    {
      v28 = 0xE200000000000000;
      v29 = 28013;
    }

    else
    {
      v28 = 0xE300000000000000;
      v29 = 7368803;
    }
  }

  else
  {
    v26 = v45;
    v27 = v46;
    if (v25 == 2)
    {
      v28 = 0xE500000000000000;
      v29 = 0x6C6174656DLL;
    }

    else if (v25 == 3)
    {
      v28 = 0xE500000000000000;
      v29 = 0x7466697773;
    }

    else
    {
      v28 = 0xE200000000000000;
      v29 = 29546;
    }
  }

  MEMORY[0x1B2718AE0](v29, v28);

  v30 = [objc_opt_self() defaultManager];
  v31 = [v30 temporaryDirectory];

  sub_1AFDFC0B8();
  v32 = v44;
  sub_1AFDFC088();

  v53 = v42;
  v54 = v43;
  sub_1AFDFCF58();
  sub_1AF4486E4();
  v33 = v47;
  sub_1AFDFDF08();
  (*(v48 + 8))(v26, v49);
  if (v33)
  {
    v34 = v51;
    v35 = *(v50 + 8);
    v35(v32, v51);
    v35(v27, v34);
  }

  else
  {
    v34 = sub_1AFDFC0D8();
    v36 = *(v50 + 8);
    v37 = v32;
    v38 = v27;
    v39 = v51;
    v36(v37, v51);
    v36(v38, v39);
  }

  return v34;
}

uint64_t sub_1AF452804(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AF452240(a1, a2);
  if (!v3)
  {
    v2 = (*(*v2 + 448))(v4);
  }

  return v2;
}

uint64_t sub_1AF4528AC(uint64_t a1)
{
  v2 = v1;
  v49 = *MEMORY[0x1E69E9840];
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[2];
    v6 = v4;
  }

  else
  {
    sub_1AF456888(6449516, 0xE300000000000000);
    v5 = v7;
    v6 = v8;
  }

  v2[2] = v5;
  v2[3] = v6;

  if (qword_1EB636C38 != -1)
  {
    swift_once();
  }

  v48 = v6;

  MEMORY[0x1B2718AE0](0x656C646E75622ELL, 0xE700000000000000);

  v9 = sub_1AFDFCEC8();
  v10 = sub_1AFDFCEC8();

  v11 = [v9 stringByAppendingPathComponent_];

  v12 = sub_1AFDFCEF8();
  v14 = v13;

  v2[4] = v12;
  v2[5] = v14;

  v15 = [objc_opt_self() defaultManager];

  v16 = sub_1AFDFCEC8();

  v47 = 0;
  LODWORD(v11) = [v15 removeItemAtPath:v16 error:&v47];

  if (v11)
  {
    v17 = v47;
  }

  else
  {
    v18 = v47;
    v19 = sub_1AFDFBF58();

    swift_willThrow();
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v47 = 0x20676E696B6E696CLL;
  v48 = 0xE800000000000000;
  v20 = *(a1 + 16);
  if (v20)
  {
    v44 = v2;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v20, 0);
    v45 = a1;
    v21 = a1 + 40;
    do
    {

      v22 = sub_1AFDFCEC8();
      v23 = [v22 lastPathComponent];

      v24 = sub_1AFDFCEF8();
      v26 = v25;

      v28 = *(v46 + 16);
      v27 = *(v46 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1AFC05CE4(v27 > 1, v28 + 1, 1);
      }

      *(v46 + 16) = v28 + 1;
      v29 = v46 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 += 16;
      --v20;
    }

    while (v20);
    v2 = v44;
    a1 = v45;
  }

  v30 = MEMORY[0x1E69E6158];
  sub_1AF456CB0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF456478(&qword_1ED726C68, &qword_1ED726C70, v30, MEMORY[0x1E69E6310]);
  v31 = sub_1AFDFCD98();
  v33 = v32;

  MEMORY[0x1B2718AE0](v31, v33);

  v35 = v47;
  v34 = v48;
  v36 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    v43 = v36;
    swift_once();
    v36 = v43;
  }

  v47 = 0;
  sub_1AF0D4F18(v36, &v47, v35, v34);

  v38 = v2[4];
  v39 = v2[5];
  v40 = (*(*v2 + 440))(v37);

  sub_1AF4515E4(v40);
  sub_1AF45EE34(a1, v38, v39);

  sub_1AF4563A0();
  swift_allocError();
  *v41 = 0xD000000000000027;
  *(v41 + 8) = 0x80000001AFF28A10;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 3;
  return swift_willThrow();
}

uint64_t sub_1AF452E2C(uint64_t a1)
{
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF456888(0x6173726576696E75, 0xE90000000000006CLL);
  if (qword_1EB636C38 != -1)
  {
    swift_once();
  }

  v6 = sub_1AFDFCEC8();
  v7 = sub_1AFDFCEC8();

  v8 = [v6 stringByAppendingPathComponent_];

  v9 = sub_1AFDFCEF8();
  v11 = v10;

  v21 = v9;
  v22 = v11;

  MEMORY[0x1B2718AE0](0x656C646E75622ELL, 0xE700000000000000);

  sub_1AFDFC018();

  v12 = sub_1AFDFC028();
  v14 = v13;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1AFDFE218();

  v21 = 0xD00000000000001ALL;
  v22 = 0x80000001AFF28A70;
  MEMORY[0x1B2718AE0](v12, v14);

  v16 = v21;
  v15 = v22;
  v17 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    v20 = v17;
    swift_once();
    v17 = v20;
  }

  v21 = 0;
  sub_1AF0D4F18(v17, &v21, v16, v15);

  sub_1AF45E8B8(a1);

  sub_1AF432980(MEMORY[0x1E69E7CC0]);

  sub_1AF4563A0();
  swift_allocError();
  *v18 = 0xD000000000000027;
  *(v18 + 8) = 0x80000001AFF28A10;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 3;
  swift_willThrow();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AF4531AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = sub_1AFDFC128();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFCEC8();
  v9 = [v8 lastPathComponent];

  v10 = sub_1AFDFCEF8();
  v12 = v11;

  sub_1AF456888(v10, v12);
  v14 = v13;
  v16 = v15;

  *(v3 + 16) = v14;
  *(v3 + 24) = v16;

  v43 = v14;
  v44 = v16;

  MEMORY[0x1B2718AE0](28462, 0xE200000000000000);

  if (qword_1EB636C38 != -1)
  {
    swift_once();
  }

  v17 = sub_1AFDFCEC8();
  v18 = sub_1AFDFCEC8();

  v19 = [v17 stringByAppendingPathComponent_];

  v40 = sub_1AFDFCEF8();
  v21 = v20;

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v43 = 0x6E696C69706D6F63;
  v44 = 0xEA00000000002067;
  v22 = sub_1AFDFCEC8();
  v23 = [v22 lastPathComponent];

  v24 = sub_1AFDFCEF8();
  v26 = v25;

  MEMORY[0x1B2718AE0](v24, v26);

  v28 = v43;
  v27 = v44;
  v29 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v43 = 0;
  sub_1AF0D4F18(v29, &v43, v28, v27);

  v31 = *(v3 + 16);
  v30 = *(v3 + 24);

  sub_1AF45E2F4(a1, a2, v31, v30, v40, v21);

  sub_1AF432980(MEMORY[0x1E69E7CC0]);

  sub_1AFDFC018();
  v32 = v41;
  v33 = sub_1AFDFCEA8();
  if (v32)
  {

    v35 = 0;
    v36 = 0;
  }

  else
  {
    v35 = v33;
    v36 = v34;
  }

  (*(v42 + 8))(v7, v45);
  sub_1AF4563A0();
  swift_allocError();
  *v37 = 0xD000000000000027;
  *(v37 + 8) = 0x80000001AFF28A10;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *(v37 + 32) = 1;
  return swift_willThrow();
}

uint64_t sub_1AF4535DC(uint64_t a1, uint64_t a2)
{
  sub_1AF4531AC(a1, a2);
  if (!v2)
  {
    v3 = v6;
    sub_1AF456CB0(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AFE431C0;
    *(v4 + 32) = v7;
    *(v4 + 40) = v8;
    sub_1AF4528AC(v4);

    swift_bridgeObjectRelease_n();
  }

  return v3;
}

uint64_t sub_1AF4536DC()
{
  v2 = *(v0 + 32);

  v3 = sub_1AF456AC0(v2);

  if (!v1)
  {
    *(v0 + 80) = v3;
  }

  return result;
}

uint64_t sub_1AF453760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = sub_1AFDFC128();
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFCEC8();
  v9 = [v8 lastPathComponent];

  v10 = sub_1AFDFCEF8();
  v12 = v11;

  sub_1AF456888(v10, v12);
  v14 = v13;
  v16 = v15;

  *(v3 + 16) = v14;
  *(v3 + 24) = v16;

  v42 = v14;
  v43 = v16;

  MEMORY[0x1B2718AE0](28462, 0xE200000000000000);

  if (qword_1EB636C38 != -1)
  {
    swift_once();
  }

  v17 = sub_1AFDFCEC8();
  v18 = sub_1AFDFCEC8();

  v19 = [v17 stringByAppendingPathComponent_];

  v39 = sub_1AFDFCEF8();
  v21 = v20;

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v42 = 0x6E696C69706D6F63;
  v43 = 0xEA00000000002067;
  v22 = sub_1AFDFCEC8();
  v23 = [v22 lastPathComponent];

  v24 = sub_1AFDFCEF8();
  v26 = v25;

  MEMORY[0x1B2718AE0](v24, v26);

  v28 = v42;
  v27 = v43;
  v29 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v42 = 0;
  sub_1AF0D4F18(v29, &v42, v28, v27);

  v30 = *(v3 + 128);

  sub_1AF45D9EC(a1, a2, v39, v21, v30);

  sub_1AF432980(MEMORY[0x1E69E7CC0]);

  sub_1AFDFC018();
  v31 = v40;
  v32 = sub_1AFDFCEA8();
  if (v31)
  {

    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = v32;
    v35 = v33;
  }

  (*(v41 + 8))(v7, v44);
  sub_1AF4563A0();
  swift_allocError();
  *v36 = 0xD000000000000027;
  *(v36 + 8) = 0x80000001AFF28A10;
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  *(v36 + 32) = 1;
  return swift_willThrow();
}

uint64_t sub_1AF453B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = *MEMORY[0x1E69E9840];
  v50 = sub_1AFDFC128();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFCEC8();
  v10 = [v9 lastPathComponent];

  v11 = sub_1AFDFCEF8();
  v13 = v12;

  sub_1AF456888(v11, v13);
  v15 = v14;
  v17 = v16;

  *(v3 + 16) = v15;
  *(v3 + 24) = v17;

  if (qword_1EB636C38 != -1)
  {
    swift_once();
  }

  v18 = *(v3 + 24);
  v52 = *(v3 + 16);
  v53 = v18;

  MEMORY[0x1B2718AE0](0x656C646E75622ELL, 0xE700000000000000);
  v19 = sub_1AFDFCEC8();
  v20 = sub_1AFDFCEC8();

  v21 = [v19 stringByAppendingPathComponent_];

  v22 = sub_1AFDFCEF8();
  v24 = v23;

  *(v3 + 32) = v22;
  *(v3 + 40) = v24;

  v25 = [objc_opt_self() defaultManager];

  v26 = sub_1AFDFCEC8();

  v52 = 0;
  LODWORD(v21) = [v25 removeItemAtPath:v26 error:&v52];

  if (v21)
  {
    v27 = v52;
  }

  else
  {
    v28 = v52;
    v29 = sub_1AFDFBF58();

    swift_willThrow();
    v51 = 0;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v52 = 0x6E696C69706D6F63;
  v53 = 0xEA00000000002067;
  v30 = sub_1AFDFCEC8();
  v31 = [v30 lastPathComponent];

  v32 = sub_1AFDFCEF8();
  v34 = v33;

  MEMORY[0x1B2718AE0](v32, v34);

  v35 = v52;
  v36 = v53;
  v37 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    v48 = v37;
    swift_once();
    v37 = v48;
  }

  v52 = 0;
  sub_1AF0D4F18(v37, &v52, v35, v36);

  v38 = *(v3 + 32);
  v39 = *(v3 + 40);
  v40 = *(v3 + 128);

  sub_1AF45DDD8(a1, a2, v38, v39, v40);

  sub_1AF432980(MEMORY[0x1E69E7CC0]);

  sub_1AFDFC018();
  v41 = v51;
  v42 = sub_1AFDFCEA8();
  if (v41)
  {

    v44 = 0;
    v45 = 0;
  }

  else
  {
    v44 = v42;
    v45 = v43;
  }

  (*(v6 + 8))(v8, v50);
  sub_1AF4563A0();
  swift_allocError();
  *v46 = 0xD000000000000027;
  *(v46 + 8) = 0x80000001AFF28A10;
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  *(v46 + 32) = 1;
  return swift_willThrow();
}

uint64_t sub_1AF45408C()
{
  if (*(v0 + 40))
  {
    v1 = (sub_1AFDFCFB8() + 32);
  }

  else
  {
    v1 = 0;
  }

  v2 = dlopen(v1, 6);
  result = swift_unknownObjectRelease();
  *(v0 + 80) = v2;
  if (!v2)
  {
    dlerror();
    v4 = sub_1AFDFD0E8();
    v6 = v5;
    sub_1AF4563A0();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF454174(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFC128();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFCEC8();
  v9 = [v8 lastPathComponent];

  v10 = sub_1AFDFCEF8();
  v12 = v11;

  sub_1AF456888(v10, v12);
  v14 = v13;
  v16 = v15;

  v3[2] = v14;
  v3[3] = v16;

  if (qword_1EB636C38 != -1)
  {
    swift_once();
  }

  v17 = v3[3];
  v57 = v3[2];
  v58 = v17;

  MEMORY[0x1B2718AE0](1919508782, 0xE400000000000000);
  v18 = sub_1AFDFCEC8();
  v19 = sub_1AFDFCEC8();

  v20 = [v18 stringByAppendingPathComponent_];

  if (!v20)
  {
    sub_1AFDFCEF8();
  }

  v52 = sub_1AFDFCEF8();
  v22 = v21;

  v23 = v3[3];
  v57 = v3[2];
  v58 = v23;

  MEMORY[0x1B2718AE0](0x696C6C6174656D2ELL, 0xE900000000000062);
  v24 = sub_1AFDFCEC8();
  v25 = sub_1AFDFCEC8();

  v26 = [v24 stringByAppendingPathComponent_];

  v27 = sub_1AFDFCEF8();
  v29 = v28;

  v3[4] = v27;
  v3[5] = v29;

  v30 = [objc_opt_self() defaultManager];

  v31 = sub_1AFDFCEC8();

  v57 = 0;
  LODWORD(v27) = [v30 removeItemAtPath:v31 error:&v57];

  if (v27)
  {
    v32 = v57;
  }

  else
  {
    v33 = v57;
    v34 = sub_1AFDFBF58();

    swift_willThrow();
    v56 = 0;
  }

  v35 = v53;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v57 = 0x6E696C69706D6F63;
  v58 = 0xEA00000000002067;
  v36 = sub_1AFDFCEC8();
  v37 = [v36 lastPathComponent];

  v38 = sub_1AFDFCEF8();
  v40 = v39;

  MEMORY[0x1B2718AE0](v38, v40);

  v42 = v57;
  v41 = v58;
  v43 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    v51 = v43;
    swift_once();
    v43 = v51;
  }

  v57 = 0;
  sub_1AF0D4F18(v43, &v57, v42, v41);

  sub_1AF45F35C(a1, a2, v52, v22);

  sub_1AF432980(MEMORY[0x1E69E7CC0]);

  sub_1AFDFC018();
  v44 = v56;
  v45 = sub_1AFDFCEA8();
  if (v44)
  {

    v47 = 0;
    v48 = 0;
  }

  else
  {
    v47 = v45;
    v48 = v46;
  }

  (*(v54 + 8))(v35, v55);
  sub_1AF4563A0();
  swift_allocError();
  *v49 = 0xD000000000000027;
  *(v49 + 8) = 0x80000001AFF28A10;
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  *(v49 + 32) = 1;
  return swift_willThrow();
}

void sub_1AF454730()
{
  v2 = v0;
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 48))
  {
    v7 = swift_unknownObjectRetain();
    _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v7);
    v15 = v1;

    sub_1AFDFC018();

    v8 = *(v0 + 56);
    v9 = *(v2 + 64);
    v16 = v9;

    v10 = v15;
    v11 = sub_1AF744858(v6, v8, v9);
    if (v10)
    {
      (*(v4 + 8))(v6, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v11;
      (*(v4 + 8))(v6, v3);
      swift_unknownObjectRelease();

      *(v2 + 88) = v13;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1AF4563A0();
    swift_allocError();
    *v12 = 0xD000000000000013;
    *(v12 + 8) = 0x80000001AFF289F0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1AF454958()
{
  v1 = v0;
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 80);
    if (v2)
    {
      if (dlclose(v2) == -1)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v7[1] = 0xE900000000000020;
        dlerror();
        v3 = sub_1AFDFD0E8();
        MEMORY[0x1B2718AE0](v3);

        v4 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v6 = v4;
          swift_once();
          v4 = v6;
        }

        v7[0] = 0;
        sub_1AF0D4F18(v4, v7, 0x3A65736F6C636C64, 0xE900000000000020);
      }
    }
  }

  *(v1 + 80) = 0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF454B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF455364(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v47 - v10;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1AFDFE218();

  v49 = 0xD000000000000014;
  v50 = 0x80000001AFF289D0;
  v12 = sub_1AFDFCEC8();
  v13 = [v12 lastPathComponent];

  v14 = sub_1AFDFCEF8();
  v16 = v15;

  MEMORY[0x1B2718AE0](v14, v16);

  v17 = v49;
  v18 = v50;
  v19 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v49 = 0;
  sub_1AF0D4F18(v19, &v49, v17, v18);

  v20 = sub_1AFDFCEC8();
  v21 = [v20 lastPathComponent];

  v22 = sub_1AFDFCEF8();
  v24 = v23;

  sub_1AF456888(v22, v24);
  v26 = v25;
  v28 = v27;

  v3[2] = v26;
  v3[3] = v28;

  sub_1AFDFC018();
  v29 = sub_1AFDFC128();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v11, 0, 1, v29);
  v31 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
  sub_1AF456BE8(v11, v3 + OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL);
  sub_1AF456C4C(v3 + v31, v8);
  (*(v30 + 48))(v8, 1, v29);
  sub_1AFDFCF58();
  v32 = v47[1];
  sub_1AFDFCE98();
  if (v32)
  {
    return (*(v30 + 8))(v8, v29);
  }

  (*(v30 + 8))(v8, v29);
  if (v3[6])
  {
    v34 = v3[6];
  }

  else
  {
    v35 = CFXMTLCreateSystemDefaultDevice();
    if (!v35)
    {

      sub_1AF4563A0();
      swift_allocError();
      *v46 = 0xD000000000000013;
      *(v46 + 8) = 0x80000001AFF289F0;
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = 1;
      return swift_willThrow();
    }

    v34 = v35;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v36 = sub_1AFDFCEC8();

  v48 = 0;
  v49 = 0;
  v37 = [v34 newLibraryWithSource:v36 options:0 warnings:&v49 error:&v48];
  swift_unknownObjectRelease();

  v38 = v48;
  v39 = v49;
  if (v37)
  {
    v3[11] = v37;
    swift_unknownObjectRetain();
    v40 = v38;
    v41 = v39;
    swift_unknownObjectRelease();
    if (v3[3])
    {

      v42 = sub_1AFDFCEC8();
    }

    else
    {
      v42 = 0;
    }

    [v37 setLabel_];
    swift_unknownObjectRelease();

    if (v41)
    {
      v45 = [v41 localizedDescription];
      sub_1AFDFCEF8();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    v43 = v48;
    v44 = v39;
    sub_1AFDFBF58();

    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1AF4550CC()
{
  v1 = v0;
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 80);
    if (v2)
    {
      if (dlclose(v2) == -1)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v7[1] = 0xE900000000000020;
        dlerror();
        v3 = sub_1AFDFD0E8();
        MEMORY[0x1B2718AE0](v3);

        v4 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v6 = v4;
          swift_once();
          v4 = v6;
        }

        v7[0] = 0;
        sub_1AF0D4F18(v4, v7, 0x3A65736F6C636C64, 0xE900000000000020);
      }
    }
  }

  *(v1 + 80) = 0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1AF456B8C(v1 + OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetalAPICodeLoader(uint64_t a1)
{
  result = qword_1ED72A6C8;
  if (!qword_1ED72A6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF4552D4(uint64_t a1, double a2)
{
  sub_1AF455364(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AF455364(uint64_t a1)
{
  if (!qword_1ED7315E0)
  {
    sub_1AFDFC128();
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7315E0);
    }
  }
}

uint64_t sub_1AF4553C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 96);
  v7 = v6;
  v8 = v6;
  if (!v6)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696EB40]) init];
    v7 = *(v2 + 96);
  }

  *(v2 + 96) = v8;
  v9 = v6;

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  v10 = *(v2 + 96);
  v11 = sub_1AF455494(a1, a2);

  if (!v3)
  {
  }

  return 0;
}

id sub_1AF455494(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  [v2 setException_];
  v3 = sub_1AFDFCEC8();
  v4 = [v2 evaluateScript_];

  v5 = [v2 exception];
  if (v5)
  {
    v6 = v5;
    sub_1AF455954(v8, &unk_1EB638E80, v2);
    sub_1AF455E18(v6, v8[0], v8[1]);
  }

  return v4;
}

void sub_1AF455590(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
}

uint64_t sub_1AF4555B8(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 72) == 1)
  {
    v3 = *(v1 + 80);
    if (v3)
    {
      if (dlclose(v3) == -1)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v8[1] = 0xE900000000000020;
        dlerror();
        v4 = sub_1AFDFD0E8();
        MEMORY[0x1B2718AE0](v4);

        v5 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v7 = v5;
          swift_once();
          v5 = v7;
        }

        v8[0] = 0;
        sub_1AF0D4F18(v5, v8, 0x3A65736F6C636C64, 0xE900000000000020);
      }
    }
  }

  *(v2 + 80) = 0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Language(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

uint64_t storeEnumTagSinglePayload for Language(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
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
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF455900()
{
  result = qword_1EB638F68;
  if (!qword_1EB638F68)
  {
    result = swift_getWitnessTable(aA_24, &type metadata for Language, v0, v1);
    atomic_store(result, &qword_1EB638F68);
  }

  return result;
}

uint64_t *sub_1AF455954@<X0>(uint64_t *__return_ptr a1@<X8>, void *key@<X0>, id object@<X1>)
{
  if (objc_getAssociatedObject(object, key))
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    result = sub_1AF44CB60(v7);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1AF455A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v3 = sub_1AFDFCF78();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC128();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1E69E7CC0];
  sub_1AFC07154(0, 5, 0);
  v9 = 0;
  v10 = v32;
  do
  {
    if (("vaScriptCodeLoader" & 0x2F00000000000000) == 0x2000000000000000)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v13 = sub_1AFDFD048();
      v34 = 0;
      MEMORY[0x1B271DEC0](&v34, 8);
      if (v13 > v34 * v13)
      {
        v14 = -v13 % v13;
        while (v14 > v34 * v13)
        {
          v34 = 0;
          MEMORY[0x1B271DEC0](&v34, 8);
        }
      }

      sub_1AFDFD088();
      v11 = sub_1AFDFD1C8();
    }

    v32 = v10;
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      v24 = v11;
      v18 = v12;
      sub_1AFC07154(v15 > 1, v16 + 1, 1);
      v12 = v18;
      v11 = v24;
      v10 = v32;
    }

    ++v9;
    *(v10 + 16) = v16 + 1;
    v17 = v10 + 16 * v16;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
  }

  while (v9 != 5);
  v32 = v10;
  v19 = MEMORY[0x1E69E5EE0];
  sub_1AF456CB0(0, &qword_1EB638F78, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1AF456478(&qword_1EB638F80, &qword_1EB638F78, v19, MEMORY[0x1E69E6328]);
  v32 = sub_1AFDFD1D8();
  v33 = v20;

  MEMORY[0x1B2718AE0](7563822, 0xE300000000000000);

  v21 = [objc_opt_self() defaultManager];
  v22 = [v21 temporaryDirectory];

  sub_1AFDFC0B8();
  sub_1AFDFC088();

  (*(v25 + 8))(v8, v26);
  v32 = v27;
  v33 = v28;
  sub_1AFDFCF58();
  sub_1AF4486E4();
  sub_1AFDFDF08();
  return (*(v30 + 8))(v5, v31);
}

uint64_t sub_1AF455E18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1AF455A10(a2, a3, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = sub_1AFDFC0D8();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = 0xEC0000003E747069;
    v10 = 0x7263736176616A3CLL;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1AFDFE218();

  v32 = v10;
  v33 = v12;
  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v13 = sub_1AFDFCEC8();
  v14 = [a1 objectForKeyedSubscript_];

  if (v14)
  {
    v15 = [v14 toInt32];

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v34 = v16;
  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v18 = sub_1AFDFCEC8();
  v19 = [a1 objectForKeyedSubscript_];

  if (v19)
  {
    v20 = [v19 toInt32];

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v34 = v21;
  v22 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v22);

  MEMORY[0x1B2718AE0](0x3A726F727265203ALL, 0xE900000000000020);
  v23 = [a1 toString];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1AFDFCEF8();
    v27 = v26;
  }

  else
  {
    v27 = 0xE100000000000000;
    v25 = 63;
  }

  MEMORY[0x1B2718AE0](v25, v27);

  v28 = v32;
  v29 = v33;
  sub_1AF4563A0();
  swift_allocError();
  *v30 = v28;
  *(v30 + 8) = v29;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 5;
  return swift_willThrow();
}

void sub_1AF456138(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_getObjectType();
  [v3 setException_];
  sub_1AF456234(v3, a1, a2, a3, &v12);
  if (!v4)
  {
    v8 = [v3 exception];
    if (v8)
    {
      v9 = v8;
      sub_1AF455954(v11, &unk_1EB638E80, v3);
      sub_1AF455E18(v9, v11[0], v11[1]);
      v10 = v12;
    }
  }
}

void sub_1AF456234(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1AFDFCEC8();
  v11 = [a1 objectForKeyedSubscript_];

  if (v11)
  {
    sub_1AF3C414C(a4);
    v12 = sub_1AFDFD3F8();

    v13 = [v11 callWithArguments_];

    *a5 = v13;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a2, a3);
    sub_1AF4563A0();
    swift_allocError();
    *v14 = 0xD000000000000012;
    *(v14 + 8) = 0x80000001AFF28990;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 5;
    swift_willThrow();
  }
}

unint64_t sub_1AF4563A0()
{
  result = qword_1EB638F70;
  if (!qword_1EB638F70)
  {
    result = swift_getWitnessTable(aQ_27, &type metadata for CodeLoader.Error, v0, v1);
    atomic_store(result, &qword_1EB638F70);
  }

  return result;
}

uint64_t sub_1AF4563F4(unint64_t a1)
{
  v4 = 0;
  MEMORY[0x1B271DEC0](&v4, 8);
  result = (v4 * a1) >> 64;
  if (v4 * a1 < a1)
  {
    v3 = -a1 % a1;
    if (v3 > v4 * a1)
    {
      do
      {
        v4 = 0;
        MEMORY[0x1B271DEC0](&v4, 8);
      }

      while (v3 > v4 * a1);
      return (v4 * a1) >> 64;
    }
  }

  return result;
}

uint64_t sub_1AF456478(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF456CB0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF4564D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 99 && a2 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7070636A626FLL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6174656DLL && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7466697773 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 29546 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_1AF456664(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v10, v10[3]);
    v4 = sub_1AFDFEE38();
    v6 = v5;

    v7 = sub_1AF4564D0(v4, v6);
    if (v7 != 5)
    {
      v3 = v7;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v3;
    }

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](v4, v6);

    v3 = 0xD000000000000012;
    sub_1AF4567E0();
    swift_allocError();
    *v8 = 0xD000000000000012;
    *(v8 + 8) = 0x80000001AFF289B0;
    *(v8 + 16) = 32;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

unint64_t sub_1AF4567E0()
{
  result = qword_1EB638F88;
  if (!qword_1EB638F88)
  {
    result = swift_getWitnessTable(byte_1AFE716CC, &type metadata for SerializationError, v0, v1);
    atomic_store(result, &qword_1EB638F88);
  }

  return result;
}

unint64_t sub_1AF456834()
{
  result = qword_1EB6333A0;
  if (!qword_1EB6333A0)
  {
    result = swift_getWitnessTable(aQ_33, &type metadata for Language, v0, v1);
    atomic_store(result, &qword_1EB6333A0);
  }

  return result;
}

void sub_1AF456888(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;

  MEMORY[0x1B2718AE0](95, 0xE100000000000000);
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AFC07154(0, 5, 0);
  v2 = 0;
  v3 = v16;
  do
  {
    if (("vaScriptCodeLoader" & 0x2F00000000000000) == 0x2000000000000000)
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v6 = sub_1AFDFD048();
      v15 = 0;
      MEMORY[0x1B271DEC0](&v15, 8);
      if (v6 > v15 * v6)
      {
        v7 = -v6 % v6;
        while (v7 > v15 * v6)
        {
          v15 = 0;
          MEMORY[0x1B271DEC0](&v15, 8);
        }
      }

      sub_1AFDFD088();
      v4 = sub_1AFDFD1C8();
    }

    v16 = v3;
    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    if (v9 >= v8 >> 1)
    {
      v11 = v4;
      v12 = v5;
      sub_1AFC07154(v8 > 1, v9 + 1, 1);
      v5 = v12;
      v4 = v11;
      v3 = v16;
    }

    ++v2;
    *(v3 + 16) = v9 + 1;
    v10 = v3 + 16 * v9;
    *(v10 + 32) = v4;
    *(v10 + 40) = v5;
  }

  while (v2 != 5);
  v16 = v3;
  v13 = MEMORY[0x1E69E5EE0];
  sub_1AF456CB0(0, &qword_1EB638F78, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1AF456478(&qword_1EB638F80, &qword_1EB638F78, v13, MEMORY[0x1E69E6328]);
  v14 = sub_1AFDFD1D8();
  MEMORY[0x1B2718AE0](v14);
}

void *sub_1AF456AC0(uint64_t a1)
{
  v1 = sub_1AFDFCFB8();
  v2 = dlopen((v1 + 32), 6);

  if (v2)
  {
    v3 = dlsym(v2, "main");
    if (v3)
    {
      v3();
    }

    else
    {
      dlerror();
      sub_1AFDFD0E8();
    }
  }

  else
  {
    dlerror();
    v4 = sub_1AFDFD0E8();
    v6 = v5;
    sub_1AF4563A0();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 4;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1AF456B8C(uint64_t a1)
{
  sub_1AF455364(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF456BE8(uint64_t a1, uint64_t a2)
{
  sub_1AF455364(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF456C4C(uint64_t a1, uint64_t a2)
{
  sub_1AF455364(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF456CB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1AF456D00(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
    if (a5)
    {
      if (a5 == 1)
      {
      }

      else
      {
        if (a5 != 2)
        {
          return result;
        }

        v5 = result;
      }
    }
  }

  else if (a5 - 3 >= 4)
  {
    return result;
  }
}

void *sub_1AF456D9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
    if (a5)
    {
      if (a5 == 1)
      {
      }

      else
      {
        if (a5 != 2)
        {
          return result;
        }
      }
    }
  }

  else if (a5 - 3 >= 4)
  {
    return result;
  }
}

uint64_t initializeWithCopy for CodeLoader.Error(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AF456D00(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for CodeLoader.Error(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AF456D00(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1AF456D9C(v8, v9, v10, v11, v12);
  return a1;
}

__n128 initializeWithTake for MeshBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CodeLoader.Error(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_1AF456D9C(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderScriptParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderScriptParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF457014(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF4570D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    *(v10 + 9) = *(v11 + 9);
    v13 = ((v10 + 17) & 0xFFFFFFFFFFFFFFF8);
    v14 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
    v15 = *v14;
    v14 += 15;
    v16 = v15;
    *v13 = v15;
    v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *(v14 & 0xFFFFFFFFFFFFFFF8);
    v17[1] = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
    *((v17 + 23) & 0xFFFFFFFFFFFFFFF8) = *(((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_1AF457250(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
}

uint64_t sub_1AF4572E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v8 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  v13 = v12;
  *v10 = v12;
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  v14[1] = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *(((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1AF4573CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *v11;
  v14 = *v10;
  *v10 = v12;

  v15 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];

  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1AF4574D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF457594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v10;
  *v10 = *v11;

  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];

  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1AF457680(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
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

_BYTE *sub_1AF4577E4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

int *sub_1AF457A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 + 8) + 8))();
  result = type metadata accessor for ScriptCompileAttempt(0, a1, a2, v6);
  v8 = a3 + result[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a3 + result[10]) = 0;
  *(a3 + result[11]) = 0;
  v9 = (a3 + result[12]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(a3 + result[13]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AF457AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696E726177;
  if (v2 != 1)
  {
    v4 = 1702129518;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x726F727265;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696E726177;
  if (*a2 != 1)
  {
    v8 = 1702129518;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F727265;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}