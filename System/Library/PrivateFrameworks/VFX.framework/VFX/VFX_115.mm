uint64_t sub_1AF9F2924()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(4);
  *(v0 + 88) = sub_1AF9F20C0;
  *(v0 + 96) = 0;

  return v0;
}

uint64_t sub_1AF9F2984(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 96);
  *(result + 16) = 4;
  *(a2 + 24) = 2 * v4 + 4;
  if (v3 <= 0xFF)
  {
    *(result + 112) = v3;
    *(result + 116) = v3;
  }

  return result;
}

uint64_t sub_1AF9F2A04()
{
  sub_1AFDFF288();
  sub_1AF9F1F18();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9F2AD8()
{
  sub_1AF9F1F18();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF9F2B80(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF9F1F18();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9F2C54(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 8);
  v5(v2 + 28, 0, ObjectType, a2);
  v5(v2 + 36, 0, ObjectType, a2);
  v5(v2 + 120, 0, ObjectType, a2);
  return (v5)(v2 + 128, 0, ObjectType, a2);
}

BOOL sub_1AF9F2D0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 11) = *(a1 + 123);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 11) = *(a2 + 123);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1AF9F366C(v11, v13);
}

__n128 sub_1AF9F2D94@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF9F3A08(v6);
  v2 = v7[0];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 123) = *(v7 + 11);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9F2DF0()
{
  result = qword_1ED724FB0;
  if (!qword_1ED724FB0)
  {
    result = swift_getWitnessTable(byte_1AFE8FE98, &type metadata for ParticleQuadRenderer, v0, v1);
    atomic_store(result, &qword_1ED724FB0);
  }

  return result;
}

unint64_t sub_1AF9F2E44(uint64_t a1)
{
  result = sub_1AF9F2E6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F2E6C()
{
  result = qword_1ED724FB8;
  if (!qword_1ED724FB8)
  {
    result = swift_getWitnessTable(aY_78, &type metadata for ParticleQuadRenderer, v0, v1);
    atomic_store(result, &qword_1ED724FB8);
  }

  return result;
}

unint64_t sub_1AF9F2EC0(uint64_t a1)
{
  result = sub_1AF9F2EE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9F2EE8()
{
  result = qword_1ED724F98;
  if (!qword_1ED724F98)
  {
    result = swift_getWitnessTable(aAyebt, &type metadata for ParticleQuadRenderer, v0, v1);
    atomic_store(result, &qword_1ED724F98);
  }

  return result;
}

unint64_t sub_1AF9F2F3C(uint64_t a1)
{
  result = sub_1AF9F2F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F2F64()
{
  result = qword_1ED724F90;
  if (!qword_1ED724F90)
  {
    result = swift_getWitnessTable(aYebx, &type metadata for ParticleQuadRenderer, v0, v1);
    atomic_store(result, &qword_1ED724F90);
  }

  return result;
}

uint64_t sub_1AF9F2FB8(void *a1)
{
  v3 = v1;
  sub_1AF9F44B4(0, &qword_1EB641BA8, sub_1AF9EA83C, &type metadata for ParticleDefaultRendererableCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  result = sub_1AF9E7F5C(a1, &v13 - v8);
  if (!v2)
  {
    *&v13 = *(v3 + 48);
    v14 = 11;
    v11 = MEMORY[0x1E69E7428];
    sub_1AF9F44B4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF9F4450(&qword_1ED72F798, &unk_1ED72F770, v11, MEMORY[0x1E69E7430]);
    sub_1AFDFE918();
    *&v13 = *(v3 + 56);
    v14 = 12;
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 76);
    v14 = 13;
    sub_1AF51D2F8();
    sub_1AFDFE918();
    v13 = *(v3 + 80);
    v14 = 14;
    v12 = MEMORY[0x1E69E7450];
    sub_1AF9F44B4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF9F4450(&qword_1ED72F758, &qword_1ED72F740, v12, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 96);
    v14 = 15;
    sub_1AF51D574();
    sub_1AFDFE918();
    LOBYTE(v13) = 16;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 25;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 17;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 18;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 19;
    sub_1AFDFE8C8();
    *&v13 = *(v3 + 120);
    v14 = 20;
    sub_1AF480018();
    sub_1AFDFE918();
    *&v13 = *(v3 + 128);
    v14 = 21;
    sub_1AFDFE918();
    LOBYTE(v13) = 22;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 23;
    sub_1AFDFE8C8();
    LOBYTE(v13) = *(v3 + 138);
    v14 = 24;
    sub_1AF51CA58();
    sub_1AFDFE918();
    LOBYTE(v13) = 26;
    sub_1AFDFE8C8();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

__n128 sub_1AF9F3510@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF9F3CE4(a2, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 123) = *(v9 + 11);
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

void *sub_1AF9F35C0(const void *a1, void *a2, unsigned int a3, size_t a4)
{
  swift_unknownObjectRetain();
  v8 = [a2 storageMode];
  swift_unknownObjectRelease();
  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    v10 = [swift_unknownObjectRetain() contents];
    v11 = a2;
    v9 = &v10[a3];
  }

  return memcpy(v9, a1, a4);
}

BOOL sub_1AF9F366C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4))
  {
    if (v2 == 0.0)
    {
      v4 = 0;
      if ((*(a2 + 4) & 1) == 0 || v3 != 0.0)
      {
        return v4;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      v4 = 0;
      if ((*(a2 + 4) & 1) == 0 || LODWORD(v3) != 1)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      if ((*(a2 + 4) & 1) == 0 || LODWORD(v3) <= 1)
      {
        return v4;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a2 + 4) & 1) != 0 || v3 != v2)
    {
      return v4;
    }
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || ((*(a1 + 44) ^ *(a2 + 44)) & 1) != 0 || ((*(a1 + 45) ^ *(a2 + 45)) & 1) != 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  while (1)
  {
    v28 = v7;
    v14 = *(&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
    v29 = v8;
    v15 = *(&v29 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
    v9 = v14 == v15;
    if (v6 == 1)
    {
      break;
    }

    while (1)
    {
      ++v6;
      if (v9)
      {
        break;
      }

      v9 = 0;
      v4 = 0;
      if (v6 == 1)
      {
        return v4;
      }
    }
  }

  if (v14 != v15)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  while (1)
  {
    v26 = v11;
    v20 = *(&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v10 & 1)));
    v27 = v12;
    v21 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v10 & 1)));
    v13 = v20 == v21;
    if (v10 == 1)
    {
      break;
    }

    while (1)
    {
      ++v10;
      if (v13)
      {
        break;
      }

      v13 = 0;
      v4 = 0;
      if (v10 == 1)
      {
        return v4;
      }
    }
  }

  if (v20 != v21 || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68) || ((*(a1 + 69) ^ *(a2 + 69)) & 1) != 0 || *(a1 + 72) != *(a2 + 72) || *(a1 + 76) != *(a2 + 76))
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a1 + 80);
  v18 = *(a2 + 80);
  while (1)
  {
    v24 = v17;
    v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
    v25 = v18;
    v23 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
    v19 = v22 == v23;
    if (v16 == 2)
    {
      break;
    }

    while (1)
    {
      ++v16;
      if (v19)
      {
        break;
      }

      v19 = 0;
      v4 = 0;
      if (v16 == 2)
      {
        return v4;
      }
    }
  }

  return v22 == v23 && *(a1 + 96) == *(a2 + 96) && *(a1 + 100) == *(a2 + 100) && ((*(a1 + 104) ^ *(a2 + 104)) & 1) == 0 && ((*(a1 + 105) ^ *(a2 + 105)) & 1) == 0 && *(a1 + 108) == *(a2 + 108) && ((*(a1 + 112) ^ *(a2 + 112)) & 1) == 0 && *(a1 + 116) == *(a2 + 116) && *(a1 + 120) == *(a2 + 120) && *(a1 + 124) == *(a2 + 124) && *(a1 + 128) == *(a2 + 128) && *(a1 + 132) == *(a2 + 132) && ((*(a1 + 136) ^ *(a2 + 136)) & 1) == 0 && ((*(a1 + 137) ^ *(a2 + 137)) & 1) == 0 && *(a1 + 138) == *(a2 + 138);
}

double sub_1AF9F3A08@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 8) = -1082130432;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *&_Q0 = 0xFFFFFFFFLL;
  *(&_Q0 + 1) = 0xFFFFFFFFLL;
  *(a1 + 28) = _Q0;
  *(a1 + 44) = 256;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _Q0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 256;
  *(a1 + 68) = 256;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = xmmword_1AFE20160;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 256;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 1065353216;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 120) = 0xFFFFFFFFLL;
  *(a1 + 135) = 0;
  *(a1 + 128) = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_1AF9F3A98(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (*(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || ((*(a1 + 44) ^ *(a2 + 44)) & 1) != 0 || ((*(a1 + 45) ^ *(a2 + 45)) & 1) != 0)
  {
    return v2 & 1;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v10 = *(a1 + 68);
  v11 = *(a1 + 69);
  v12 = *(a1 + 72);
  v13 = *(a1 + 76);
  v14 = *(a1 + 96);
  v15 = *(a1 + 100);
  v16 = *(a1 + 104);
  v17 = *(a1 + 105);
  v18 = *a2;
  v19 = *(a2 + 8);
  v20 = *(a2 + 100);
  v21 = *(a2 + 104);
  if (*(a1 + 4) == 1)
  {
    if (v3 == 0.0)
    {
      if (v18 == 0.0)
      {
        v24 = *(a2 + 4);
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (LODWORD(v3) == 1)
    {
      if (LODWORD(v18) == 1)
      {
        v22 = *(a2 + 4);
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (LODWORD(v18) > 1)
      {
        v25 = *(a2 + 4);
      }

      else
      {
        v25 = 0;
      }

      if (v25 != 1)
      {
        goto LABEL_41;
      }
    }

    v2 = 1;
    if (v4 != v19)
    {
      return v2 & 1;
    }
  }

  else
  {
    if (v3 == v18)
    {
      v23 = *(a2 + 4);
    }

    else
    {
      v23 = 1;
    }

    v2 = 1;
    if ((v23 & 1) != 0 || v4 != v19)
    {
      return v2 & 1;
    }
  }

  if (v6 == *(a2 + 24) && v9 == *(a2 + 64) && v10 == *(a2 + 68) && ((v11 ^ *(a2 + 69)) & 1) == 0 && v12 > 0.0 != *(a2 + 72) <= 0.0 && v14 == *(a2 + 96) && v13 == *(a2 + 76))
  {
    if (v15 == 0.0)
    {
      if (v20 == 0.0)
      {
        if (v16 != v21)
        {
          return v2 & 1;
        }
      }

      else if ((v16 & 1) == 0)
      {
        return v2 & 1;
      }
    }

    else if (!((v20 != 0.0) | v21 & 1))
    {
LABEL_41:
      v2 = 1;
      return v2 & 1;
    }

    v28 = v5 != *(a2 + 16) || v7 != *(a2 + 28) || v8 != *(a2 + 32);
    v2 = v28 | v17 ^ *(a2 + 105);
  }

  return v2 & 1;
}

unint64_t sub_1AF9F3C90()
{
  result = qword_1ED724FD0[0];
  if (!qword_1ED724FD0[0])
  {
    result = swift_getWitnessTable(aU_50, &type metadata for ParticleQuadRenderer.Shape, v0, v1);
    atomic_store(result, qword_1ED724FD0);
  }

  return result;
}

uint64_t sub_1AF9F3CE4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9F44B4(0, &qword_1ED722FA0, sub_1AF9EA83C, &type metadata for ParticleDefaultRendererableCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  LODWORD(v41) = 1;
  BYTE4(v41) = 1;
  DWORD2(v41) = -1082130432;
  *v42 = 0;
  v42[8] = 0;
  *&_Q0 = 0xFFFFFFFFLL;
  *(&_Q0 + 1) = 0xFFFFFFFFLL;
  *&v42[12] = _Q0;
  *&v42[28] = 256;
  __asm { FMOV            V0.2S, #1.0 }

  v43 = _Q0;
  LODWORD(v44) = 256;
  WORD2(v44) = 256;
  DWORD2(v44) = 0;
  *&v47[24] = 0;
  v47[26] = 0;
  sub_1AF9E8FF4(a1);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_1AF441150(a1, v15);
  if (sub_1AF694FF8(1046, v15, v16))
  {
    v17 = MEMORY[0x1E69E7428];
    sub_1AF9F44B4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v48 = 11;
    sub_1AF9F4450(&qword_1ED72F780, &unk_1ED72F770, v17, MEMORY[0x1E69E7440]);
    sub_1AFDFE768();
    *&v43 = v39;
    v48 = 12;
    sub_1AFDFE768();
    *(&v43 + 1) = v39;
  }

  v48 = 13;
  sub_1AF51D2A4();
  sub_1AFDFE768();
  BYTE12(v44) = v39;
  v18 = MEMORY[0x1E69E7450];
  sub_1AF9F44B4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v48 = 14;
  sub_1AF9F4450(&qword_1ED72F748, &qword_1ED72F740, v18, MEMORY[0x1E69E7468]);
  sub_1AFDFE6E8();
  if (v40)
  {
    v19 = xmmword_1AFE20160;
  }

  else
  {
    v19 = v39;
  }

  v45 = v19;
  v48 = 15;
  sub_1AF51D520();
  sub_1AFDFE768();
  LOBYTE(v46) = v39;
  LOBYTE(v39) = 25;
  BYTE8(v46) = sub_1AFDFE6A8() & 1;
  LOBYTE(v39) = 16;
  sub_1AFDFE738();
  DWORD1(v46) = v20;
  LOBYTE(v39) = 17;
  v21 = sub_1AFDFE6C8();
  v22 = *&v21;
  if ((v21 & 0x100000000) != 0)
  {
    v22 = 0.0;
  }

  *(&v46 + 3) = v22;
  LOBYTE(v39) = 18;
  v23 = sub_1AFDFE6C8();
  v24 = *&v23;
  if ((v23 & 0x100000000) != 0)
  {
    v24 = 1.0;
  }

  *&v47[4] = v24;
  LOBYTE(v39) = 19;
  v47[0] = sub_1AFDFE6A8() & 1;
  v48 = 20;
  sub_1AF47FEB4();
  sub_1AFDFE6E8();
  v25 = DWORD1(v39);
  v26 = v39;
  if (BYTE8(v39))
  {
    v26 = -1;
    v25 = 0;
  }

  *&v47[8] = v26;
  *&v47[12] = v25;
  v48 = 21;
  sub_1AFDFE6E8();
  v28 = DWORD1(v39);
  v29 = v39;
  if (BYTE8(v39))
  {
    v29 = -1;
    v28 = 0;
  }

  *&v47[16] = v29;
  *&v47[20] = v28;
  v30 = a1[3];
  v31 = a1[4];
  sub_1AF441150(a1, v30);
  if (sub_1AF694FF8(1077, v30, v31))
  {
    LOBYTE(v39) = 22;
    v47[24] = sub_1AFDFE718() & 1;
  }

  v32 = a1[3];
  v33 = a1[4];
  sub_1AF441150(a1, v32);
  if (sub_1AF694FF8(1076, v32, v33))
  {
    LOBYTE(v39) = 23;
    v47[25] = sub_1AFDFE718() & 1;
    v48 = 24;
    sub_1AF51CA04();
    sub_1AFDFE768();
    v47[26] = v39;
  }

  LOBYTE(v39) = 26;
  v34 = sub_1AFDFE6A8();
  (*(v7 + 8))(v9, v6);
  BYTE9(v46) = (v34 == 2) | v34 & 1;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v35 = *v47;
  a2[6] = v46;
  a2[7] = v35;
  *(a2 + 123) = *&v47[11];
  v36 = v43;
  a2[2] = *&v42[16];
  a2[3] = v36;
  v37 = v45;
  a2[4] = v44;
  a2[5] = v37;
  v38 = *v42;
  *a2 = v41;
  a2[1] = v38;
  return result;
}

uint64_t sub_1AF9F4450(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9F44B4(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF9F44B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF9F4530()
{
  result = qword_1EB641CD0;
  if (!qword_1EB641CD0)
  {
    sub_1AF9F4588();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB641CD0);
  }

  return result;
}

void sub_1AF9F4588()
{
  if (!qword_1EB641CD8)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641CD8);
    }
  }
}

unint64_t sub_1AF9F45DC()
{
  result = qword_1EB641CE0;
  if (!qword_1EB641CE0)
  {
    result = swift_getWitnessTable(byte_1AFE900A4, &type metadata for ParticleQuadRenderer.Shape, v0, v1);
    atomic_store(result, &qword_1EB641CE0);
  }

  return result;
}

unint64_t sub_1AF9F4630()
{
  result = qword_1EB641CE8;
  if (!qword_1EB641CE8)
  {
    result = swift_getWitnessTable(byte_1AFE90368, &type metadata for ParticleRibbonRenderer, v0, v1);
    atomic_store(result, &qword_1EB641CE8);
  }

  return result;
}

uint64_t sub_1AF9F469C()
{
  if (*(v0 + 96) > 1)
  {
    return 5;
  }

  if (*(v0 + 88))
  {
    return 5;
  }

  return *(v0 + 20);
}

uint64_t sub_1AF9F46C8(uint64_t a1)
{
  if (*v1 != *a1 || *(v1 + 4) != *(a1 + 4) || ((*(v1 + 37) ^ *(a1 + 37)) & 1) != 0 || ((*(v1 + 38) ^ *(a1 + 38)) & 1) != 0)
  {
    return 1;
  }

  v3 = *(v1 + 8);
  v4 = *(a1 + 8);
  if (*(v1 + 12))
  {
    if (v3 == 0.0)
    {
      v5 = 1;
      if ((*(a1 + 12) & 1) == 0 || v4 != 0.0)
      {
        return v5;
      }
    }

    else
    {
      v5 = 1;
      if (LODWORD(v3) == 1)
      {
        if ((*(a1 + 12) & 1) == 0 || LODWORD(v4) != 1)
        {
          return v5;
        }
      }

      else if ((*(a1 + 12) & 1) == 0 || LODWORD(v4) <= 1)
      {
        return v5;
      }
    }
  }

  else
  {
    v5 = 1;
    if ((*(a1 + 12) & 1) != 0 || v4 != v3)
    {
      return v5;
    }
  }

  if (*(v1 + 16) == *(a1 + 16))
  {
    if (*(v1 + 96) > 1 || *(v1 + 88))
    {
      v6 = 5;
    }

    else
    {
      v6 = *(v1 + 20);
    }

    if (*(a1 + 96) > 1 || *(a1 + 88))
    {
      if (v6 != 5)
      {
        return 1;
      }
    }

    else if (v6 != *(a1 + 20))
    {
      return 1;
    }

    if (*(v1 + 24) == *(a1 + 24) && *(v1 + 28) == *(a1 + 28) && ((*(v1 + 29) ^ *(a1 + 29)) & 1) == 0)
    {
      return (*(v1 + 32) > 0.0) ^ (*(a1 + 32) > 0.0);
    }

    return 1;
  }

  return v5;
}

double sub_1AF9F48FC()
{
  sub_1AF442F60(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C680;
  __asm { FMOV            V1.2S, #1.0 }

  *(v0 + 32) = 0xBF80000000000000;
  *(v0 + 40) = _D1;
  __asm { FMOV            V0.2S, #-1.0 }

  result = -_D0;
  *(v0 + 48) = result;
  qword_1EB6C3490 = v0;
  return result;
}

double sub_1AF9F4954()
{
  sub_1AF442F60(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C6B0;
  __asm
  {
    FMOV            V0.2S, #-1.0
    FMOV            V1.2S, #1.0
  }

  *(v0 + 32) = _D0;
  *(v0 + 40) = -_D1;
  result = -_D0;
  *(v0 + 48) = _D1;
  *(v0 + 56) = result;
  qword_1EB6C3498 = v0;
  return result;
}

char *sub_1AF9F49A8()
{
  result = sub_1AF9F49C8();
  qword_1EB6C34A0 = result;
  return result;
}

char *sub_1AF9F49C8()
{
  v0 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  for (i = 0; i != 5; ++i)
  {
    v4 = __sincosf_stret((i * 1.2566) + 3.1416);
    *&v3 = v4.__cosval;
    sinval = v4.__sinval;
    v5 = *(v0 + 2);
    v6 = *(v0 + 3);
    v7 = v6 >> 1;
    v8 = v5 + 1;
    if (v6 >> 1 <= v5)
    {
      v13 = sub_1AF42242C(v6 > 1, v5 + 1, 1, v0);
      sinval = v4.__sinval;
      *&v3 = v4.__cosval;
      v0 = v13;
      v6 = *(v13 + 3);
      v7 = v6 >> 1;
    }

    *(&v3 + 1) = sinval;
    *(v0 + 2) = v8;
    *&v0[8 * v5 + 32] = v3;
    v11 = __sincosf_stret(((i * 1.2566) + 3.1416) + 0.62832);
    v10.f32[0] = v11.__cosval;
    v9 = v11.__sinval;
    v12 = v5 + 2;
    if (v7 < v12)
    {
      v14 = sub_1AF42242C(v6 > 1, v12, 1, v0);
      v9 = v11.__sinval;
      v10.i32[0] = LODWORD(v11.__cosval);
      v0 = v14;
    }

    v10.f32[1] = v9;
    *(v0 + 2) = v12;
    *&v0[8 * v8 + 32] = vmul_f32(v10, 0x3F0000003F000000);
  }

  return v0;
}

char *sub_1AF9F4B28()
{
  result = sub_1AF9F4B48();
  qword_1EB6C34A8 = result;
  return result;
}

char *sub_1AF9F4B48()
{
  v0 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v1 = 0;
  v2 = *(v0 + 2);
  do
  {
    v3 = *(v0 + 3);
    if (v2 >= v3 >> 1)
    {
      v0 = sub_1AF42242C(v3 > 1, v2 + 1, 1, v0);
    }

    v6 = cosf(((v1 * -3.1416) + (v1 * -3.1416)) * 0.0625);
    v4 = sinf(((v1 * -3.1416) + (v1 * -3.1416)) * 0.0625);
    *(v0 + 2) = v2 + 1;
    *&v0[8 * v2++ + 32] = __PAIR64__(LODWORD(v4), LODWORD(v6));
    ++v1;
  }

  while (v1 != 16);
  return v0;
}

uint64_t sub_1AF9F4C48(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return 1;
    }

    if (qword_1EB637208 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB6C3490;
  }

  else if (a1 == 2)
  {
    if (qword_1EB637210 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB6C3498;
  }

  else if (a1 == 3)
  {
    if (qword_1EB637218 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB6C34A0;
  }

  else
  {
    if (qword_1EB637220 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB6C34A8;
  }

  return *(*v1 + 16);
}

uint64_t sub_1AF9F4E3C()
{
  v1 = *(v0 + 64);
  if (v1 <= 1)
  {
    if (!*(v0 + 64))
    {
LABEL_19:
      v3 = 4;
      return v3 + 2 * *(v0 + 56);
    }

    if (qword_1EB637208 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB6C3490;
  }

  else if (v1 == 2)
  {
    if (qword_1EB637210 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB6C3498;
  }

  else if (v1 == 3)
  {
    if (qword_1EB637218 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB6C34A0;
  }

  else
  {
    if (qword_1EB637220 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB6C34A8;
  }

  if (*(v2 + 16) <= 1uLL)
  {
    goto LABEL_19;
  }

  v3 = 6;
  return v3 + 2 * *(v0 + 56);
}

__n128 sub_1AF9F4F7C@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = "particle_quad_deferred_frag";
  if (*(a2 + 96) > 1 || *(a2 + 88))
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v6 = "particle_ribbon_deferred_frag";
    v7 = 0xD000000000000020;
    if (!*(a2 + 56) && !*(a2 + 64))
    {
      v7 = 0xD000000000000019;
      v6 = "quad_subdiv_vert";
    }
  }

  sub_1AF9F7638(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  v9 = *(a2 + 64);
  if (*(a2 + 64))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + 68) != -1 || *(a2 + 72) != 0;
  }

  v11 = 0;
  v20 = 0;
  *(v8 + 32) = xmmword_1AFE90120;
  *(v8 + 48) = 0;
  *(v8 + 64) = v10;
  *(v8 + 128) = 13;
  if (!v9)
  {
    v11 = *(a2 + 76) != -1 || *(a2 + 80) != 0;
  }

  if ((a1 & 0x4800) == 0x4000)
  {
    v12 = "particle_ribbon_frag";
  }

  else
  {
    v12 = "particle_ribbon_vert";
  }

  *(v8 + 144) = xmmword_1AFE90130;
  *(v8 + 160) = 0;
  if ((a1 & 0x4800) == 0x4000)
  {
    v13 = 0xD00000000000001DLL;
  }

  else
  {
    v13 = 0xD000000000000014;
  }

  *(v8 + 176) = v11;
  *(v8 + 240) = 13;
  sub_1AF8989FC(v7, v6 | 0x8000000000000000, v13, v12 | 0x8000000000000000, v8, v19);

  nullsub_106();
  v14 = v19[9];
  *(a3 + 128) = v19[8];
  *(a3 + 144) = v14;
  *(a3 + 160) = v19[10];
  v15 = v19[5];
  *(a3 + 64) = v19[4];
  *(a3 + 80) = v15;
  v16 = v19[7];
  *(a3 + 96) = v19[6];
  *(a3 + 112) = v16;
  v17 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v17;
  result = v19[3];
  *(a3 + 32) = v19[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1AF9F51A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v13 = a2[4];

  v14 = sub_1AF67D708(v13, v12);

  v15 = a2[1];

  sub_1AF3C9244(v15, v66);

  if (v67)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = vdupq_n_s32(v16);
  v56 = vbslq_s8(v17, xmmword_1AFE20150, v66[0]);
  v54 = vbslq_s8(v17, xmmword_1AFE20160, v66[1]);
  v53 = vbslq_s8(v17, xmmword_1AFE20180, v66[2]);
  v52 = vbslq_s8(v17, xmmword_1AFE201A0, v66[3]);
  v18 = *(v6 + 24);
  v19 = -1.0;
  if (v18 - 11 <= 0xF4)
  {
    v19 = 1.0 / v18;
  }

  v20 = *(v6 + 16);
  if (v20 > v19)
  {
    v21 = *(v6 + 16);
  }

  else
  {
    v21 = v19;
  }

  if (v20 < 0.0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v6 + 32);
  *&v24 = -*(v6 + 96);
  *&v25 = 1.0 / (*(v6 + 56) + 1);
  *&v26 = *(v6 + 40);
  *(&v26 + 1) = -*(&v26 + 1);
  DWORD2(v26) = *(v6 + 48);
  *(&v26 + 3) = COERCE_FLOAT(HIDWORD(*(v6 + 48))) + 1.0;
  v51 = v26;
  v27 = sub_1AF9F4E3C();
  v28 = sub_1AF9F4C48(*(v6 + 64));
  v29 = *(v6 + 36);
  v30 = *(v6 + 39);
  v59 = v56;
  v60 = v54;
  v61 = v53;
  v62 = v52;
  *&v63 = __PAIR64__(v23, LODWORD(v22));
  *(&v63 + 1) = __PAIR64__(v25, v24);
  v64 = v51;
  LOWORD(v65) = v27;
  BYTE2(v65) = v28;
  BYTE3(v65) = v29;
  BYTE4(v65) = v30;
  *(&v65 + 1) = v14;
  if (!a4)
  {
    return 0;
  }

  v57 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return 0;
  }

  v32 = v31[22];
  if (v32 <= 0)
  {
    v32 = v31[25];
    if (v32 < 1)
    {
      return 0;
    }
  }

  v33 = *(a4 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v33, v32);
  v36 = v34;
  v37 = v35;
  v55 = v35;
  if (v31[21])
  {
    v38 = v31[21];
  }

  else
  {
    if (!v31[24])
    {
      v58[4] = v63;
      v58[5] = v64;
      v58[6] = v65;
      v58[0] = v59;
      v58[1] = v60;
      v58[2] = v61;
      v58[3] = v62;
      sub_1AF9F4684(v58, v34, v35, 0x70uLL);

      return v36;
    }

    v38 = swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_26;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v40 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_26:
    swift_unknownObjectRetain();
    goto LABEL_27;
  }

  v41 = v40;
  v38 = sub_1AF22D744(v40);

LABEL_27:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v32)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v43 = sub_1AFDFDA08();
    *&v58[0] = 1;
    sub_1AF75A4B4(v43, 0xD00000000000002ELL, 0x80000001AFF435B0, v58, v44);
    v37 = v55;
  }

  swift_unknownObjectRetain();
  sub_1AF471B58(v36, v37, 0);
  type metadata accessor for particle_ribbon_material_constants(0);
  v46 = v45;
  swift_unknownObjectRetain();
  sub_1AF471D6C(&v59, 0, ObjectType, v46);
  swift_unknownObjectRelease();
  v47 = sub_1AF9F1914(a3, a4, a5, *(v6 + 28));
  v49 = v48;
  swift_unknownObjectRetain();
  sub_1AF471D54(v49, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v47, 201, (v57 + 136));
  swift_unknownObjectRelease();
  sub_1AF9F56AC(v38, (v57 + 136), v6, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v36;
}

double sub_1AF9F56AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a3 + 64))
  {
    v8 = *(a3 + 68);
    v9 = *(a3 + 72);
    if (v8 != -1 || v9 != 0)
    {
      v11 = a3;
      swift_getObjectType();
      v12 = sub_1AF8D93C8(v8 | (v9 << 32), &v19, a4, a5);
      sub_1AF471CC4(v12, 240, a2);
      swift_unknownObjectRelease();
      a3 = v11;
    }

    v14 = *(a3 + 76);
    v15 = *(a3 + 80);
    if (v14 != -1 || v15 != 0)
    {
      swift_getObjectType();
      v17 = sub_1AF8D93C8(v14 | (v15 << 32), &v18, a4, a5);
      sub_1AF471CC4(v17, 241, a2);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AF9F57E0()
{
  sub_1AF9F1E14();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t (*sub_1AF9F5918(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 20);
  if (*(v1 + 88))
  {
    v2 = 5;
  }

  if (*(v1 + 96) > 1)
  {
    v2 = 5;
  }

  *(a1 + 8) = v2;
  return sub_1AF9F595C;
}

uint64_t sub_1AF9F59B8()
{
  v1 = *(v0 + 20);
  if (*(v0 + 88))
  {
    v1 = 5;
  }

  if (*(v0 + 96) <= 1)
  {
    return v1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1AF9F59D8()
{
  v1 = v0;
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v2 = sub_1AF89DCA8(4);
  v3 = swift_allocObject();
  v4 = v1[5];
  v3[5] = v1[4];
  v3[6] = v4;
  *(v3 + 105) = *(v1 + 89);
  v5 = v1[1];
  v3[1] = *v1;
  v3[2] = v5;
  v6 = v1[3];
  v3[3] = v1[2];
  v3[4] = v6;
  *(v2 + 88) = sub_1AF9F7630;
  *(v2 + 96) = v3;

  return v2;
}

uint64_t sub_1AF9F5B10()
{
  sub_1AFDFF288();
  sub_1AF9F57E0();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9F5BC4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF9F57E0();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9F5C2C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = 0xFFFFFFFFLL;
  v5 = *(a2 + 8);
  v5(&v7, 0, ObjectType, a2);
  v5(v2, 0, ObjectType, a2);
  v5(v2 + 68, 0, ObjectType, a2);
  return v5(v2 + 76, 0, ObjectType, a2);
}

uint64_t sub_1AF9F5CF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_1AF9F622C(v10, v12) & 1;
}

double sub_1AF9F5D60@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 1;
  *(a1 + 12) = 1;
  *(a1 + 16) = -1082130432;
  *(a1 + 20) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 256;
  *(a1 + 32) = 0;
  *(a1 + 36) = 33619968;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 40) = _D0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *&v6 = 0xFFFFFFFFLL;
  *(&v6 + 1) = 0xFFFFFFFFLL;
  *(a1 + 68) = v6;
  result = 0.0;
  *(a1 + 88) = xmmword_1AFE21110;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1AF9F5DD0(void *a1)
{
  v3 = v1;
  sub_1AF9F6D04(0, &qword_1EB641BA8, sub_1AF9EA83C, &type metadata for ParticleDefaultRendererableCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  result = sub_1AF9E8520(a1, &v11 - v8);
  if (!v2)
  {
    LOBYTE(v11) = 27;
    sub_1AFDFE8F8();
    LOBYTE(v11) = 28;
    sub_1AFDFE8F8();
    LOBYTE(v11) = 29;
    sub_1AFDFE8F8();
    LOBYTE(v11) = *(v3 + 64);
    v12 = 30;
    sub_1AF51D224();
    sub_1AFDFE918();
    v11 = *(v3 + 68);
    v12 = 34;
    sub_1AF480018();
    sub_1AFDFE918();
    v11 = *(v3 + 76);
    v12 = 35;
    sub_1AFDFE918();
    LOBYTE(v11) = *(v3 + 39);
    v12 = 31;
    sub_1AF51D150();
    sub_1AFDFE918();
    v11 = *(v3 + 40);
    v12 = 11;
    sub_1AF9F6D04(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF9F6D6C(&qword_1ED72F798, MEMORY[0x1E69E7430]);
    sub_1AFDFE918();
    v11 = *(v3 + 48);
    v12 = 12;
    sub_1AFDFE918();
    LOBYTE(v11) = 32;
    sub_1AFDFE8C8();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

__n128 sub_1AF9F618C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF9F6778(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1AF9F622C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
LABEL_30:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 12))
  {
    if (v2 == 0.0)
    {
      v4 = 0;
      if ((*(a2 + 12) & 1) != 0 && v3 == 0.0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (LODWORD(v2) == 1)
      {
        v4 = 0;
        if ((*(a2 + 12) & 1) == 0 || LODWORD(v3) != 1)
        {
          return v4 & 1;
        }

        goto LABEL_17;
      }

      v4 = 0;
      if ((*(a2 + 12) & 1) != 0 && LODWORD(v3) > 1)
      {
LABEL_17:
        if (*(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && ((*(a1 + 29) ^ *(a2 + 29)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && ((*(a1 + 37) ^ *(a2 + 37)) & 1) == 0 && ((*(a1 + 38) ^ *(a2 + 38)) & 1) == 0 && *(a1 + 39) == *(a2 + 39))
        {
          v5 = 0;
          v6 = *(a1 + 40);
          v7 = *(a2 + 40);
          while (1)
          {
            v20 = v6;
            v14 = *(&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
            v21 = v7;
            v15 = *(&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
            v8 = v14 == v15;
            if (v5 == 1)
            {
              break;
            }

            while (1)
            {
              ++v5;
              if (v8)
              {
                break;
              }

              v8 = 0;
              v4 = 0;
              if (v5 == 1)
              {
                return v4 & 1;
              }
            }
          }

          if (v14 == v15)
          {
            v10 = 0;
            v11 = *(a1 + 48);
            v12 = *(a2 + 48);
            while (1)
            {
              v18 = v11;
              v16 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v10 & 1)));
              v19 = v12;
              v17 = *(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v10 & 1)));
              v13 = v16 == v17;
              if (v10 == 1)
              {
                break;
              }

              while (1)
              {
                ++v10;
                if (v13)
                {
                  break;
                }

                v13 = 0;
                v4 = 0;
                if (v10 == 1)
                {
                  return v4 & 1;
                }
              }
            }

            if (v16 == v17 && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96))
            {
              v4 = *(a1 + 104) ^ *(a2 + 104) ^ 1;
              return v4 & 1;
            }
          }
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a2 + 12) & 1) == 0 && v3 == v2)
    {
      goto LABEL_17;
    }
  }

  return v4 & 1;
}

uint64_t sub_1AF9F64EC(__int128 *a1, _OWORD *a2)
{
  v2 = a1[5];
  v23 = a1[4];
  *v24 = v2;
  *&v24[9] = *(a1 + 89);
  v3 = a1[1];
  v19 = *a1;
  v20 = v3;
  v4 = a1[3];
  v21 = a1[2];
  v22 = v4;
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v18[9] = *(a2 + 89);
  v8 = a2[5];
  v17 = a2[4];
  *v18 = v8;
  v15 = v6;
  v16 = v7;
  if (sub_1AF9F46C8(v14))
  {
    return 1;
  }

  if (*&v24[16] < 2)
  {
    v10 = *&v18[16];
    if (*&v18[16] < 2)
    {
      if ((*&v24[8] != 0) == (*&v18[8] == 0))
      {
        return 1;
      }
    }

    else if (!*&v24[8])
    {
      return 1;
    }

    if (!*(&v22 + 1))
    {
      goto LABEL_17;
    }

    if (*(&v16 + 1) && *&v18[16] < 2)
    {
      if ((*&v24[8] == 0) != (*&v18[8] != 0))
      {
        goto LABEL_20;
      }
    }

    else if (*&v24[8])
    {
      goto LABEL_20;
    }

    return 1;
  }

  v10 = *&v18[16];
  if (*&v18[16] <= 1 && !*&v18[8])
  {
    return 1;
  }

LABEL_17:
  if (*(&v16 + 1) && v10 <= 1 && !*&v18[8])
  {
    return 1;
  }

LABEL_20:
  if (v23 != 0) != (v17 != 0) || (BYTE7(v21) == 1) == (BYTE7(v15) != 1) || ((v24[24] ^ v18[24]))
  {
    return 1;
  }

  if (!v23)
  {
    if (*(&v23 + 4) == 0xFFFFFFFFLL)
    {
      if (v17)
      {
        v11 = 0;
        v12 = HIDWORD(v23) != -1 || *v24 != 0;
        return v11 ^ v12;
      }

      result = 1;
      if (*(&v17 + 4) != 0xFFFFFFFFLL)
      {
        return result;
      }
    }

    else if (v17 || *(&v17 + 4) == 0xFFFFFFFFLL)
    {
      return 1;
    }

    if (HIDWORD(v23) == -1)
    {
      if (!*v24)
      {
        if (HIDWORD(v17) != -1)
        {
          goto LABEL_34;
        }

        goto LABEL_51;
      }

      if (HIDWORD(v17) != -1)
      {
LABEL_45:
        v11 = 1;
        v12 = 1;
        return v11 ^ v12;
      }
    }

    else if (HIDWORD(v17) != -1)
    {
      goto LABEL_45;
    }

    v11 = *v18;
    v12 = 1;
    if (!*v18)
    {
      return v11 ^ v12;
    }

    goto LABEL_52;
  }

  if (v17)
  {
    v11 = 0;
    v12 = 0;
    return v11 ^ v12;
  }

  result = 1;
  if (*(&v17 + 4) == 0xFFFFFFFFLL)
  {
    if (HIDWORD(v17) != -1)
    {
LABEL_34:
      v12 = 0;
      goto LABEL_52;
    }

LABEL_51:
    v12 = 0;
    v11 = 0;
    if (!*v18)
    {
      return v11 ^ v12;
    }

LABEL_52:
    v11 = 1;
    return v11 ^ v12;
  }

  return result;
}

uint64_t sub_1AF9F6778@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9F6D04(0, &qword_1ED722FA0, sub_1AF9EA83C, &type metadata for ParticleDefaultRendererableCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  *&v41 = 0xFFFFFFFFLL;
  DWORD2(v41) = 1;
  BYTE12(v41) = 1;
  LODWORD(v42) = -1082130432;
  BYTE4(v42) = 0;
  DWORD2(v42) = 256;
  WORD6(v42) = 256;
  *&v43 = 0x201000000000000;
  __asm { FMOV            V8.2S, #1.0 }

  *(&v43 + 1) = _D8;
  v44 = 0uLL;
  v45[0] = 0;
  *&v15 = 0xFFFFFFFFLL;
  *(&v15 + 1) = 0xFFFFFFFFLL;
  *&v45[4] = v15;
  *&v45[24] = xmmword_1AFE21110;
  v45[40] = 0;
  sub_1AF9E9A10(a1);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v38.i8[0] = 27;
  v17 = sub_1AFDFE6D8();
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  *&v45[24] = v19;
  v38.i8[0] = 28;
  v20 = sub_1AFDFE6D8();
  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = v20;
  }

  *&v45[32] = v22;
  v38.i8[0] = 29;
  v23 = sub_1AFDFE6D8();
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  *(&v44 + 1) = v25;
  v40 = 30;
  sub_1AF51D1D0();
  sub_1AFDFE6E8();
  v26 = v38.i8[0];
  if (v38.u8[0] == 5)
  {
    v26 = 0;
  }

  v45[0] = v26;
  v40 = 34;
  sub_1AF47FEB4();
  sub_1AFDFE6E8();
  v28 = v38.i32[0];
  v27 = v38.i32[1];
  if (v39)
  {
    v28 = -1;
    v27 = 0;
  }

  *&v45[4] = v28;
  *&v45[8] = v27;
  v40 = 35;
  sub_1AFDFE6E8();
  v30 = v38.i32[0];
  v29 = v38.i32[1];
  if (v39)
  {
    v30 = -1;
    v29 = 0;
  }

  *&v45[12] = v30;
  *&v45[16] = v29;
  v40 = 31;
  sub_1AF51D0FC();
  sub_1AFDFE6E8();
  v31 = v38.i8[0];
  if (v38.u8[0] == 3)
  {
    v31 = 2;
  }

  BYTE7(v43) = v31;
  sub_1AF9F6D04(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v40 = 11;
  sub_1AF9F6D6C(&qword_1ED72F780, MEMORY[0x1E69E7440]);
  sub_1AFDFE6E8();
  if (v39)
  {
    v32 = -1;
  }

  else
  {
    v32 = 0;
  }

  *(&v43 + 1) = vbsl_s8(vdup_n_s32(v32), _D8, v38);
  v40 = 12;
  sub_1AFDFE6E8();
  if (v39)
  {
    v33 = -1;
  }

  else
  {
    v33 = 0;
  }

  *&v44 = vbic_s8(v38, vdup_n_s32(v33));
  v38.i8[0] = 32;
  v34 = sub_1AFDFE6A8();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  result = (*(v7 + 8))(v9, v6);
  v45[40] = v34 & 1;
  v35 = *&v45[16];
  a2[4] = *v45;
  a2[5] = v35;
  v36 = v42;
  *a2 = v41;
  a2[1] = v36;
  v37 = v44;
  a2[2] = v43;
  a2[3] = v37;
  *(a2 + 89) = *&v45[25];
  return result;
}

unint64_t sub_1AF9F6C5C()
{
  result = qword_1EB6335A0;
  if (!qword_1EB6335A0)
  {
    result = swift_getWitnessTable(aE_52, &type metadata for ParticleRibbonProfile, v0, v1);
    atomic_store(result, &qword_1EB6335A0);
  }

  return result;
}

unint64_t sub_1AF9F6CB0()
{
  result = qword_1EB633450;
  if (!qword_1EB633450)
  {
    result = swift_getWitnessTable(asc_1AFE904C4, &type metadata for ParticleRibbonTextureMode, v0, v1);
    atomic_store(result, &qword_1EB633450);
  }

  return result;
}

void sub_1AF9F6D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF9F6D6C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9F6D04(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

__n128 initializeWithCopy for ParticleRibbonRenderer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleRibbonRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 29);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleRibbonRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 29) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF9F6EFC()
{
  result = qword_1EB631670;
  if (!qword_1EB631670)
  {
    result = swift_getWitnessTable(byte_1AFE902A8, &type metadata for ParticleRibbonRenderer, v0, v1);
    atomic_store(result, &qword_1EB631670);
  }

  return result;
}

unint64_t sub_1AF9F6F50(uint64_t a1)
{
  result = sub_1AF9F6F78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F6F78()
{
  result = qword_1EB631678;
  if (!qword_1EB631678)
  {
    result = swift_getWitnessTable(aI_54, &type metadata for ParticleRibbonRenderer, v0, v1);
    atomic_store(result, &qword_1EB631678);
  }

  return result;
}

unint64_t sub_1AF9F6FCC(uint64_t a1)
{
  result = sub_1AF9F6FF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9F6FF4()
{
  result = qword_1EB631668;
  if (!qword_1EB631668)
  {
    result = swift_getWitnessTable(aAueb, &type metadata for ParticleRibbonRenderer, v0, v1);
    atomic_store(result, &qword_1EB631668);
  }

  return result;
}

unint64_t sub_1AF9F7048(uint64_t a1)
{
  result = sub_1AF9F7070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F7070()
{
  result = qword_1EB631660;
  if (!qword_1EB631660)
  {
    result = swift_getWitnessTable(aUeb, &type metadata for ParticleRibbonRenderer, v0, v1);
    atomic_store(result, &qword_1EB631660);
  }

  return result;
}

uint64_t sub_1AF9F70F4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9F7638(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9F715C()
{
  result = qword_1EB641D00;
  if (!qword_1EB641D00)
  {
    result = swift_getWitnessTable(aM_50, &type metadata for ParticleRibbonTextureMode, v0, v1);
    atomic_store(result, &qword_1EB641D00);
  }

  return result;
}

unint64_t sub_1AF9F71E4()
{
  result = qword_1EB641D18;
  if (!qword_1EB641D18)
  {
    result = swift_getWitnessTable(byte_1AFE9049C, &type metadata for ParticleRibbonProfile, v0, v1);
    atomic_store(result, &qword_1EB641D18);
  }

  return result;
}

uint64_t sub_1AF9F7238()
{
  v1 = *(v0 + 96);
  if (*(v0 + 39) == 1)
  {
    if (v1 > 1 || *(v0 + 88))
    {
      sub_1AF47BBFC(0);
      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE4C620;
      *(result + 32) = &type metadata for ParticleID;
      *(result + 40) = &off_1F252DFA8;
      *(result + 48) = &type metadata for ParticleRibbonLength;
      *(result + 56) = &off_1F252D8A8;
      return result;
    }

    sub_1AF47BBFC(0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1AFE431C0;
    v3 = &type metadata for ParticleRibbonLength;
    v4 = &off_1F252D8A8;
    goto LABEL_8;
  }

  if (v1 > 1 || *(v0 + 88))
  {
    sub_1AF47BBFC(0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1AFE431C0;
    v3 = &type metadata for ParticleID;
    v4 = &off_1F252DFA8;
LABEL_8:
    *(result + 32) = v3;
    *(result + 40) = v4;
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1AF9F7344(void *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v4 = v3;
  v6 = result;
  v7 = *(v3 + 96);
  if (v7 < 2)
  {
    v8 = *(v4 + 88);
    result[2] = 4;
    if (!v8)
    {
      v15 = *(v4 + 64);

      v17 = sub_1AF9F4C48(v15);
      *(a2 + 24) = sub_1AF9F4E3C() * v17;
      goto LABEL_19;
    }

    *(a2 + 8) = xmmword_1AFE22A20;
    if (v8 < 2)
    {
      *(a2 + 32) = 2;

      goto LABEL_19;
    }
  }

  else
  {
    result[2] = 4;
    *(a2 + 8) = xmmword_1AFE22A20;
    v8 = *(v4 + 88);
  }

  v9 = *a2;
  if (v8 <= 0)
  {
    v8 = (v7 + *a2 - 1) / v7;
  }

  if (v8 >= (v7 + *a2 - 1) / v7)
  {
    v10 = (v7 + *a2 - 1) / v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = sub_1AF70B130(v9, v7, v10);
  if (!v11)
  {
    goto LABEL_36;
  }

  v13 = v12;
  v6[4] = v11;
  v6[5] = (v9 * v12) << 32;
  if (v10 < 1)
  {
    v14 = 2 * v9;
  }

  else
  {
    v14 = 2 * ((v9 + v10 - 1) / v10 + v9) - 2;
  }

  v6[7] = v14;
  swift_unknownObjectRelease();
  v6[6] = v13 != 2;
LABEL_19:
  v18 = *(v4 + 64);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (qword_1EB637210 != -1)
      {
        swift_once();
      }

      v19 = &qword_1EB6C3498;
    }

    else if (v18 == 3)
    {
      if (qword_1EB637218 != -1)
      {
        swift_once();
      }

      v19 = &qword_1EB6C34A0;
    }

    else
    {
      if (qword_1EB637220 != -1)
      {
        swift_once();
      }

      v19 = &qword_1EB6C34A8;
    }

LABEL_35:
    v20 = *v19;

    v21 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(a3 + 232), (v20 + 32), 8 * *(v20 + 16));
    v23 = v22;

    v24[0] = v21;
    v24[1] = v23;
    v24[2] = 0;
    v24[3] = 0;
    v25 = 64;
    sub_1AF88BB90(v24, 8, 0);
    goto LABEL_36;
  }

  if (*(v4 + 64))
  {
    if (qword_1EB637208 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EB6C3490;
    goto LABEL_35;
  }

LABEL_36:
}

void sub_1AF9F7638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_1AF9F7698@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  sub_1AF9EFA0C(a1, 4u, v8);
  v3 = v8[9];
  *(a2 + 128) = v8[8];
  *(a2 + 144) = v3;
  *(a2 + 160) = v8[10];
  v4 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v4;
  v5 = v8[7];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v5;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1AF9F76FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v57 = *MEMORY[0x1E69E9840];
  v11 = a2[1];

  sub_1AF3C9244(v11, v55);

  if (v56)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = vdupq_n_s32(v12);
  v14 = vbslq_s8(v13, xmmword_1AFE20150, v55[0]);
  v15 = vbslq_s8(v13, xmmword_1AFE20160, v55[1]);
  v16 = vbslq_s8(v13, xmmword_1AFE20180, v55[2]);
  v17 = vbslq_s8(v13, xmmword_1AFE201A0, v55[3]);
  v18 = *(v5 + 24);
  v19 = -1.0;
  if (v18 - 11 <= 0xF4)
  {
    v19 = 1.0 / v18;
  }

  v20 = *(v5 + 16);
  if (v20 > v19)
  {
    v21 = *(v5 + 16);
  }

  else
  {
    v21 = v19;
  }

  v22 = *(v5 + 32);
  if (v20 < 0.0)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  v52[0] = v14;
  v52[1] = v15;
  v52[2] = v16;
  v52[3] = v17;
  v53 = v23;
  v54 = v22;
  if (!a4)
  {
    return 0;
  }

  v24 = *(a1 + 16);
  if (!v24)
  {
    return 0;
  }

  v25 = v24[22];
  if (v25 <= 0)
  {
    v25 = v24[25];
    if (v25 < 1)
    {
      return 0;
    }
  }

  v42 = v17;
  v43 = v16;
  v44 = v15;
  v45 = v14;
  v47 = a3;
  v48 = a5;
  v26 = *(a4 + 232);

  CFXBufferAllocatorPerFrameAllocateWithLength(v26, v25);
  v29 = v27;
  v30 = v28;
  if (v24[21])
  {
    v46 = a1;
  }

  else
  {
    if (!v24[24])
    {
      v49[0] = v45;
      v49[1] = v44;
      v49[2] = v43;
      v49[3] = v42;
      v50 = v23;
      v51 = v22;
      sub_1AF9F4684(v49, v27, v28, 0x50uLL);

      return v29;
    }

    v46 = a1;
    swift_unknownObjectRetain();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong)
  {
    goto LABEL_26;
  }

  if ((sub_1AF12E2A0(Strong) & 1) == 0 || (v32 = sub_1AF1310A0(Strong)) == 0)
  {

LABEL_26:
    swift_unknownObjectRetain();
    goto LABEL_27;
  }

  v33 = v32;
  sub_1AF22D744(v32);

LABEL_27:
  ObjectType = swift_getObjectType();
  if ([swift_unknownObjectRetain() encodedLength] != v25)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v35 = sub_1AFDFDA08();
    *&v49[0] = 1;
    sub_1AF75A4B4(v35, 0xD00000000000002ELL, 0x80000001AFF435B0, v49, v36);
  }

  swift_unknownObjectRetain_n();
  sub_1AF471B58(v29, v30, 0);
  swift_unknownObjectRelease();
  type metadata accessor for particle_primitive_material_constants(0);
  v38 = v37;
  swift_unknownObjectRetain();
  sub_1AF471D6C(v52, 0, ObjectType, v38);
  swift_unknownObjectRelease();
  v39 = sub_1AF9F1ABC(v47, a4, v48, *(v6 + 28));
  sub_1AF471D54(v40, 200);
  swift_unknownObjectRelease();
  sub_1AF471CC4(v39, 201, (v46 + 136));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v29;
}

uint64_t sub_1AF9F7AF0()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(7);
  *(v0 + 88) = sub_1AF9F7698;
  *(v0 + 96) = 0;

  return v0;
}

unint64_t sub_1AF9F7B90()
{
  result = qword_1EB641D20;
  if (!qword_1EB641D20)
  {
    result = swift_getWitnessTable(byte_1AFE90588, &type metadata for ParticleSphereRenderer, v0, v1);
    atomic_store(result, &qword_1EB641D20);
  }

  return result;
}

unint64_t sub_1AF9F7BE4(uint64_t a1)
{
  result = sub_1AF9F7C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F7C0C()
{
  result = qword_1EB641D28;
  if (!qword_1EB641D28)
  {
    result = swift_getWitnessTable(byte_1AFE905B0, &type metadata for ParticleSphereRenderer, v0, v1);
    atomic_store(result, &qword_1EB641D28);
  }

  return result;
}

unint64_t sub_1AF9F7C60(uint64_t a1)
{
  result = sub_1AF9F7C88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9F7C88()
{
  result = qword_1EB641D30;
  if (!qword_1EB641D30)
  {
    result = swift_getWitnessTable(aQreb, &type metadata for ParticleSphereRenderer, v0, v1);
    atomic_store(result, &qword_1EB641D30);
  }

  return result;
}

unint64_t sub_1AF9F7CDC(uint64_t a1)
{
  result = sub_1AF9F7D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F7D04()
{
  result = qword_1EB641DB0;
  if (!qword_1EB641DB0)
  {
    result = swift_getWitnessTable(aReb, &type metadata for ParticleSphereRenderer, v0, v1);
    atomic_store(result, &qword_1EB641DB0);
  }

  return result;
}

double sub_1AF9F7D58@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF9F7EB4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF9F7DA0(void *a1)
{
  sub_1AF9EA890(0, &qword_1EB641BA8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v9;
  v12 = *(v1 + 32);
  result = sub_1AF9E881C(a1, v11 - v7);
  if (!v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_1AF9F7EB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9EA890(0, &qword_1ED722FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  *&v13 = 0xFFFFFFFFLL;
  DWORD2(v13) = 0;
  BYTE12(v13) = 1;
  *v14 = -1082130432;
  v14[4] = 0;
  *&v14[8] = 256;
  *&v14[12] = 16843008;
  sub_1AF9E9F48(a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (!v2)
  {
    (*(v7 + 8))(v9, v6);
    result = *&v13;
    v11 = *v14;
    *a2 = v13;
    *(a2 + 16) = v11;
    *(a2 + 32) = *&v14[16];
  }

  return result;
}

__n128 sub_1AF9F8018@<Q0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x4000) != 0)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if ((a1 & 0x4000) != 0)
  {
    v4 = "particle_surface_frag";
  }

  else
  {
    v4 = "particle_surface_vert";
  }

  sub_1AF8989FC(0xD000000000000015, 0x80000001AFF439B0, v3, v4 | 0x8000000000000000, MEMORY[0x1E69E7CC0], v10);

  nullsub_106();
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

void *sub_1AF9F80DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  sub_1AF3CCD70(*(a2 + 32), v11);
  if (v12)
  {
    return 0;
  }

  v7 = *(a4 + 232);
  v8[0] = v11[0];
  v8[1] = v11[1];
  v8[2] = *v4;
  v9 = *(v4 + 16);
  v10 = 0;
  return CFXBufferAllocatorPerFrameAllocateWithBytes(v7, v8, 0x40uLL);
}

uint64_t sub_1AF9F8190(void *a1)
{
  sub_1AF9F8D7C(0, &qword_1EB641D60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9F8D28();
  sub_1AFDFF3F8();
  v9[15] = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v9[14] = 1;
    sub_1AFDFE8E8();
    v9[13] = 2;
    sub_1AFDFE8E8();
    v9[12] = 3;
    sub_1AFDFE8E8();
    v9[11] = 4;
    sub_1AFDFE8E8();
    v9[10] = 5;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AF9F8388()
{
  v1 = *v0;
  v2 = 0x656E68746F6F6D73;
  v3 = 0xD000000000000015;
  if (v1 != 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF9F8454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF9F87EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF9F847C(uint64_t a1)
{
  v2 = sub_1AF9F8D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9F84B8(uint64_t a1)
{
  v2 = sub_1AF9F8D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9F84F4()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(7);
  *(v0 + 88) = sub_1AF9F8018;
  *(v0 + 96) = 0;

  return v0;
}

double sub_1AF9F855C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF9F89F4(a2, &v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1AF9F85B8(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 2);
  return sub_1AF9F8780(&v3, &v5);
}

double sub_1AF9F8604@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE906D0;
  result = 524288.0;
  *(a1 + 16) = 0x4120000000000000;
  return result;
}

unint64_t sub_1AF9F8634()
{
  result = qword_1EB641D38;
  if (!qword_1EB641D38)
  {
    result = swift_getWitnessTable(aA_65, &type metadata for ParticleSurfaceRenderer, v0, v1);
    atomic_store(result, &qword_1EB641D38);
  }

  return result;
}

unint64_t sub_1AF9F8688(uint64_t a1)
{
  result = sub_1AF9F86B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF9F86B0()
{
  result = qword_1EB641D40;
  if (!qword_1EB641D40)
  {
    result = swift_getWitnessTable(asc_1AFE90730, &type metadata for ParticleSurfaceRenderer, v0, v1);
    atomic_store(result, &qword_1EB641D40);
  }

  return result;
}

unint64_t sub_1AF9F8704(uint64_t a1)
{
  result = sub_1AF9F872C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9F872C()
{
  result = qword_1EB641D48;
  if (!qword_1EB641D48)
  {
    result = swift_getWitnessTable(byte_1AFE90770, &type metadata for ParticleSurfaceRenderer, v0, v1);
    atomic_store(result, &qword_1EB641D48);
  }

  return result;
}

uint64_t sub_1AF9F87EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E68746F6F6D73 && a2 == 0xEA00000000007373;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AFF29620 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AFF29600 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF295E0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AFF295C0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AFF295A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AF9F89F4@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1AF9F8D7C(0, &qword_1EB641D50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9F8D28();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v29 = 0;
  sub_1AFDFE738();
  v11 = v10;
  v28 = 1;
  sub_1AFDFE738();
  v13 = v12;
  v27 = 2;
  sub_1AFDFE738();
  v15 = v14;
  v26 = 3;
  sub_1AFDFE738();
  v17 = v16;
  v25 = 4;
  sub_1AFDFE738();
  v19 = v18;
  v24 = 5;
  sub_1AFDFE738();
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v21;
  return result;
}

uint64_t sub_1AF9F8C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 4;
  *(a2 + 24) = 14;
  *(a2 + 8) = xmmword_1AFE22A20;
  sub_1AF74F2D4(a3, a4, 1, 3, 1, v6);
  if (v6[7])
  {

    swift_unknownObjectRelease();
  }

  v4 = swift_unknownObjectRetain();
  sub_1AF88BF14(v4, 0, 0, 0, 11, 0);
  return swift_unknownObjectRelease_n();
}

unint64_t sub_1AF9F8D28()
{
  result = qword_1EB641D58;
  if (!qword_1EB641D58)
  {
    result = swift_getWitnessTable("͘", &type metadata for ParticleSurfaceRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641D58);
  }

  return result;
}

void sub_1AF9F8D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9F8D28();
    v7 = a3(a1, &type metadata for ParticleSurfaceRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9F8DF4()
{
  result = qword_1EB641D68;
  if (!qword_1EB641D68)
  {
    result = swift_getWitnessTable(byte_1AFE908C4, &type metadata for ParticleSurfaceRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641D68);
  }

  return result;
}

unint64_t sub_1AF9F8E4C()
{
  result = qword_1EB641D70;
  if (!qword_1EB641D70)
  {
    result = swift_getWitnessTable(byte_1AFE90834, &type metadata for ParticleSurfaceRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641D70);
  }

  return result;
}

unint64_t sub_1AF9F8EA4()
{
  result = qword_1EB641D78;
  if (!qword_1EB641D78)
  {
    result = swift_getWitnessTable("Վ", &type metadata for ParticleSurfaceRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641D78);
  }

  return result;
}

uint64_t sub_1AF9F8EF8(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFF00000000;
  v3 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  sub_1AF3CB0C0(v4 | v2, v163);
  if (!*(&v164 + 1))
  {
    sub_1AF9FA1C4(v163, &qword_1ED722AC0, &type metadata for EmitterRuntime);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF9FA090(v163, v171);
  if (v175 == 1 || (v195 = v172, v196 = v173, v197 = v174, sub_1AF5C9204(v176), v191[0] = v176[0], v191[1] = v176[1], v192 = v177, sub_1AF6B06C0(v3, v191, 0x200000000, &v178), sub_1AF9FA0EC(v176), (v5 = v178) == 0))
  {
LABEL_124:
    sub_1AF58D38C(v171);
    return MEMORY[0x1E69E7CC0];
  }

  v138 = v181;
  v139 = v182;
  v128 = v183;
  v6 = v184;
  v7 = v185;
  v186 = v179;
  v187 = v180;
  v8 = CFXGPUDeviceCreate(0);
  if (!v8)
  {
LABEL_123:
    sub_1AF9FA1C4(&v178, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_124;
  }

  v9 = v8;
  v129 = v7;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v8, 24 * v7, 0);
  if (!BufferWithLength)
  {

    goto LABEL_123;
  }

  v11 = BufferWithLength;
  sub_1AF3CA1CC(v4 | v2, v161);
  if (!v161[0])
  {

    sub_1AF9FA1C4(&v178, &qword_1ED725EA0, &type metadata for QueryResult);
    swift_unknownObjectRelease();
    goto LABEL_124;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v160 = MEMORY[0x1E69E7CC0];
  v133 = *(v162 + 16);
  if (!v133)
  {
    goto LABEL_127;
  }

  v125 = v5;
  v132 = v162 + 32;
  v13 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);

  v14 = v13;
  v147 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  v140 = v6;
  v130 = v14;
  v126 = v11;
  v127 = v3;
  do
  {
    v18 = (v132 + 8 * v15);
    v19 = v18[1];
    v20 = *v18;
    if (v20 == -1 && v19 == 0)
    {
      goto LABEL_51;
    }

    if ((v20 & 0x80000000) != 0 || v14[1] <= v20)
    {
      goto LABEL_38;
    }

    v22 = (*v14 + 12 * v20);
    if (v19 != -1 && v22[2] != v19)
    {
      goto LABEL_38;
    }

    if (*(*(*(v3 + 144) + 8 * *v22 + 32) + 120) != 1)
    {
      v6 = v140;
      goto LABEL_13;
    }

    v24 = *(*(*(v3 + 88) + 8 * *(v22 + 3) + 32) + 16);
    v25 = *(v24 + 128);
    if (*(v25 + 16) && (v136 = v15, v26 = sub_1AF449CB8(&type metadata for ParticleQuadRenderer), v15 = v136, v14 = v130, (v27 & 1) != 0) && *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) == &type metadata for ParticleQuadRenderer)
    {
      v147 = 0;
      v6 = v140;
    }

    else
    {
LABEL_38:
      if (v20 & 0x80000000) == 0 && v14[1] > v20 && ((v28 = *v14 + 12 * v20, v19 != -1) ? (v29 = *(v28 + 8) == v19) : (v29 = 1), v29 && (v30 = *(*(*(v3 + 88) + 8 * *(v28 + 6) + 32) + 16), v31 = *(v30 + 128), *(v31 + 16)) && (v136 = v15, v32 = sub_1AF449CB8(&type metadata for ParticleSphereRenderer), v15 = v136, v14 = v130, (v33) && *(*(v30 + 24) + 16 * *(*(v31 + 56) + 8 * v32) + 32) == &type metadata for ParticleSphereRenderer))
      {
        v122 = 1;
      }

      else
      {
        if ((v20 & 0x80000000) != 0 || v14[1] <= v20 || (v34 = *v14 + 12 * v20, v19 != -1) && *(v34 + 8) != v19 || (v35 = *(*(*(v3 + 88) + 8 * *(v34 + 6) + 32) + 16), v36 = *(v35 + 128), !*(v36 + 16)) || (v136 = v15, v37 = sub_1AF449CB8(&type metadata for ParticleBoxRenderer), v15 = v136, v14 = v130, (v38 & 1) == 0) || *(*(v35 + 24) + 16 * *(*(v36 + 56) + 8 * v37) + 32) != &type metadata for ParticleBoxRenderer)
        {
          if ((v20 & 0x80000000) == 0 && v14[1] > v20 && ((v39 = (*v14 + 12 * v20), v40 = *(v39 + 2), v19 == -1) || v39[2] == v19))
          {
            v116 = *(*(v3 + 144) + 8 * *v39 + 32);
            v117 = *(v116 + 48);
            v118 = (v117 + 32);
            v119 = *(v117 + 16) + 1;
            v6 = v140;
            while (--v119)
            {
              v120 = v118 + 5;
              v121 = *v118;
              v118 += 5;
              if (v121 == &type metadata for ParticleMeshRenderer)
              {
                v136 = v15;
                sub_1AF3CCE74(*(&(*(v120 - 2))->Kind + 40 * v40 + *(v116 + 128)), &v148);
                v158[8] = v156;
                v159[0] = v157[0];
                *(v159 + 9) = *(v157 + 9);
                v158[4] = v152;
                v158[5] = v153;
                v158[6] = v154;
                v158[7] = v155;
                v158[0] = v148;
                v158[1] = v149;
                v158[2] = v150;
                v158[3] = v151;
                v169 = v156;
                v170[0] = v157[0];
                *(v170 + 9) = *(v157 + 9);
                v165 = v152;
                v166 = v153;
                v167 = v154;
                v168 = v155;
                v163[0] = v148;
                v163[1] = v149;
                v163[2] = v150;
                v164 = v151;
                if (sub_1AF9FA2D8(v163) == 1)
                {
                  v14 = v130;
                  v15 = v136;
                  break;
                }

                sub_1AF9FA1C4(v158, &unk_1EB641D88, &type metadata for PrimitiveGenerator);
                if (LOBYTE(v163[0]) < 3u)
                {
                  v147 = 2 - LOBYTE(v163[0]);
                  goto LABEL_53;
                }

                goto LABEL_108;
              }
            }
          }

          else
          {
            v6 = v140;
          }

LABEL_51:
          if (v17)
          {
            v17 = 1;
            goto LABEL_13;
          }

          v136 = v15;
          goto LABEL_53;
        }

        v122 = 2;
      }

      v147 = v122;
      v6 = v140;
    }

LABEL_53:
    v41 = [objc_allocWithZone(MEMORY[0x1E6973FC0]) init];
    [v41 setIntersectionFunctionTableOffset_];
    [v41 setBoundingBoxBuffer_];
    [v41 setBoundingBoxBufferOffset_];
    [v41 setBoundingBoxStride_];
    v131 = v41;
    [v41 setBoundingBoxCount_];
    v137 = [swift_unknownObjectRetain() contents];
    v42 = v11;
    if (v129 > 0 && v139)
    {
      v43 = v16;
      v144 = *(v128 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v143 = *(v6 + 32);
      v188 = v125;
      v189 = v186;
      v190 = v187;
      sub_1AF5D15C0(&v178, v163);
      v44 = 0;
      do
      {
        v45 = (v138 + 48 * v44);
        v46 = *v45;
        v141 = v45[1];
        v142 = v44;
        v145 = v45[2];
        v47 = *(v45 + 2);
        v48 = *(v45 + 3);
        v49 = *(v45 + 4);
        v50 = *(v45 + 5);
        if (v144)
        {
          v51 = *(v50 + 376);

          os_unfair_lock_lock(v51);
          os_unfair_lock_lock(*(v50 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v143);
        v6 = v140;
        v52 = *(v140 + 64);
        v193[0] = *(v140 + 48);
        v193[1] = v52;
        v194 = *(v140 + 80);
        v53 = *(*(*(*(v50 + 40) + 16) + 32) + 16) + 1;
        *(v140 + 48) = ecs_stack_allocator_allocate(*(v140 + 32), 48 * v53, 8);
        *(v140 + 56) = v53;
        *(v140 + 72) = 0;
        *(v140 + 80) = 0;
        *(v140 + 64) = 0;
        sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v47, v48, v49, v140);
        sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v47, v48, v49, v140);
        if (v47)
        {
          if (v49)
          {
            for (i = 0; i != v49; ++i)
            {
              v65 = *(v50 + 48);
              v66 = (v65 + 32);
              v67 = *(v65 + 16) + 1;
              do
              {
                if (!--v67)
                {
                  break;
                }

                v68 = *v66;
                v66 += 5;
              }

              while (v68 != &type metadata for Orientation);
              nullsub_106();
              v56 = v55;
              v58 = v57;
              v60 = v59;
              nullsub_106();
              v61 = &v137[24 * v145 + 24 * i];
              *v61 = v56;
              *(v61 + 1) = v58;
              *(v61 + 2) = v60;
              *(v61 + 3) = v62;
              *(v61 + 4) = v63;
              *(v61 + 5) = v64;
            }
          }
        }

        else if (v46 != v141)
        {
          v82 = &v137[24 * (v145 - v46)];
          do
          {
            v93 = v46++;
            v94 = *(v50 + 48);
            v95 = (v94 + 32);
            v96 = *(v94 + 16) + 1;
            do
            {
              if (!--v96)
              {
                break;
              }

              v97 = *v95;
              v95 += 5;
            }

            while (v97 != &type metadata for Orientation);
            nullsub_106();
            v84 = v83;
            v86 = v85;
            v88 = v87;
            nullsub_106();
            v89 = &v82[24 * v93];
            *v89 = v84;
            *(v89 + 1) = v86;
            *(v89 + 2) = v88;
            *(v89 + 3) = v90;
            *(v89 + 4) = v91;
            *(v89 + 5) = v92;
          }

          while (v46 != v141);
        }

        sub_1AF630994(v140, &v188, v193);
        if (*(*(v140 + 104) + 16))
        {

          sub_1AF62F348(v69, v50);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = *(v140 + 104);
          if (isUniquelyReferenced_nonNull_native)
          {
            v72 = v71[2];
            v73 = swift_isUniquelyReferenced_nonNull_native();
            *(v140 + 104) = v71;
            if ((v73 & 1) == 0)
            {
              v71 = sub_1AF420EA0(0, v72, 1, v71);
              *(v140 + 104) = v71;
            }

            sub_1AF43A540(0);
            swift_arrayDestroy();
            if (v72)
            {
              v74 = v43;
              v75 = v71[2] - v72;
              memmove(v71 + 4, &v71[9 * v72 + 4], 72 * v75);
              v71[2] = v75;
              v43 = v74;
            }

            *(v140 + 104) = v71;
          }

          else
          {
            v76 = MEMORY[0x1E69E7CC0];
            if (v71[3] >= 2uLL)
            {
              sub_1AF9FA280(0);
              v76 = swift_allocObject();
              v77 = j__malloc_size_0(v76);
              v76[2] = 0;
              v76[3] = 2 * ((v77 - 32) / 72);
            }

            *(v140 + 104) = v76;
          }

          if (*(*(v140 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v78 = *(v50 + 232);
            v79 = *(v50 + 256);
            v80 = v78 - v79;
            if (v78 == v79)
            {
              v81 = *(v50 + 240);
            }

            else
            {
              v98 = v43;
              v99 = *(v50 + 56);
              v100 = *(v99 + 16);
              v146 = *(v50 + 232);
              if (v100)
              {
                v101 = *(v50 + 128);

                swift_retain_n();

                v102 = (v99 + 56);
                do
                {
                  sub_1AF640BC8(v101 + *(v102 - 1) * v79 + *v102, v80);
                  v102 += 5;
                  --v100;
                }

                while (v100);

                v78 = v146;
              }

              if ((*(v50 + 184) & 1) == 0)
              {
                v134 = *(v50 + 168);
                v103 = *(v50 + 16);
                v104 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                os_unfair_lock_lock(v104);

                v105 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                v106 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                v107 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                v135 = v79 + *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                v108 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                v109 = (v134 + 4 * v79);
                do
                {
                  v110 = *v109++;
                  v111 = (v107 + 12 * v110);
                  *v111 = v108;
                  v111[1] = -1;
                  ++v111[2];
                  *(v103 + v105) = v110;
                  v108 = v110;
                  --v80;
                }

                while (v80);
                v78 = v146;
                *(v103 + v106) = v135 - v146;

                v112 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                os_unfair_lock_unlock(v112);
              }

              v113 = *(v50 + 192);
              if (v113)
              {
                v114 = *(v50 + 208);
                sub_1AF75D364(v79, v78, v113);
                sub_1AF75D364(v79, v78, v114);
              }

              v79 = *(v50 + 232);
              v81 = *(v50 + 240);
              v6 = v140;
              if (v81 == v79)
              {
                v81 = 0;
                v79 = 0;
                *(v50 + 232) = 0;
                *(v50 + 240) = 0;
              }

              v43 = v98;
            }

            *(v50 + 248) = v81;
            *(v50 + 256) = v79;
          }
        }

        ecs_stack_allocator_pop_snapshot(v143);
        if (v144)
        {
          os_unfair_lock_unlock(*(v50 + 344));
          os_unfair_lock_unlock(*(v50 + 376));
        }

        v44 = v142 + 1;
      }

      while (v142 + 1 != v139);
      v16 = v43;
      sub_1AF9FA1C4(&v178, &qword_1ED725EA0, &type metadata for QueryResult);
      v11 = v126;
      v3 = v127;
    }

    v115 = v131;
    MEMORY[0x1B2718E00]();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    v17 = 0;
    v12 = v160;
LABEL_108:
    v14 = v130;
    v15 = v136;
LABEL_13:
    ++v15;
  }

  while (v15 != v133);

LABEL_127:
  if (v12 >> 62)
  {
    sub_1AF9FA234();

    v124 = sub_1AFDFE528();
  }

  else
  {

    sub_1AFDFEF88();

    v124 = v12;
  }

  sub_1AF9FA1C4(&v178, &qword_1ED725EA0, &type metadata for QueryResult);
  swift_unknownObjectRelease();
  sub_1AF9FA1C4(v161, &unk_1EB634140, &type metadata for EmitterDescription);
  sub_1AF58D38C(v171);
  return v124;
}

uint64_t sub_1AF9FA0EC(uint64_t a1)
{
  sub_1AF9FA148();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF9FA148()
{
  if (!qword_1EB642A20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Position;
    v4[1] = &type metadata for Scale;
    v4[2] = &off_1F252EE70;
    v4[3] = &off_1F252F8E8;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A20);
    }
  }
}

uint64_t sub_1AF9FA1C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF9FA2F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF9FA234()
{
  result = qword_1EB641D80;
  if (!qword_1EB641D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB641D80);
  }

  return result;
}

void sub_1AF9FA280(uint64_t a1)
{
  if (!qword_1ED7269C0)
  {
    sub_1AF43A540(255);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7269C0);
    }
  }
}

uint64_t sub_1AF9FA2D8(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AF9FA2F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1AF9FA3BC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], v1);
  swift_dynamicCast();
  return result;
}

void sub_1AF9FA488(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v5 + 16);
  v10(&v12[-v11], v2, a1, v9);
  if ((swift_dynamicCast() & 1) != 0 || ((v10)(v7, v2, a1), swift_dynamicCast()))
  {
    (*(a2 + 24))(a1, a2);
  }
}

unint64_t sub_1AF9FA5F4(unint64_t result, void *(*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  if (result == 0xFFFFFFFF)
  {
    LOBYTE(result) = 1;
    return result & 1;
  }

  v5 = result;
  LOBYTE(result) = 1;
  if ((v5 & 0x80000000) != 0)
  {
    return result & 1;
  }

  if (v5 >= *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return result & 1;
  }

  v6 = HIDWORD(v5);
  v7 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
  if (v6 != 0xFFFFFFFF && v7[2] != v6)
  {
    return result & 1;
  }

  result = sub_1AFA020FC(*(*(v3 + 144) + 8 * *v7 + 32), *(v7 + 2), 240, a2);
  if (!v4)
  {
    return result & 1;
  }

  return result;
}

uint64_t sub_1AF9FA69C(unint64_t a1, void *(*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  if ((a1 & 0x80000000) != 0)
  {
    return 2;
  }

  if (a1 >= *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return 2;
  }

  v5 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v5[2] != HIDWORD(a1))
  {
    return 2;
  }

  else
  {
    return sub_1AFA02188(*(*(v3 + 144) + 8 * *v5 + 32), *(v5 + 2), 8, a2);
  }
}

uint64_t sub_1AF9FA77C(void (*a1)(char *, uint64_t))
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 9);
  v3 = *(v2 + 32);
  v4 = *(v1 + 5);
  v64 = *(v1 + 7);
  if (v64 != 1)
  {
    ecs_stack_allocator_push_snapshot(v3);
    v12 = *(v1 + 10);
    v58 = v3;
    v63 = ecs_stack_allocator_allocate(v3, 16 * v12, 16);
    v57 = (16 * v12) >> 4;
    if (v12 <= 0 || !v64)
    {
LABEL_48:
      a1(v63, v57);
      return ecs_stack_allocator_pop_snapshot(v58);
    }

    v13 = 0;
    v14 = *(*(v1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v15 = *(v2 + 32);
    v16 = v1[1];
    v71 = *v1;
    v72 = v16;
    v73 = *(v1 + 4);
    v62 = v4;
    v61 = v14;
    v60 = v15;
LABEL_10:
    v17 = &v4[12 * v13];
    v19 = *v17;
    v18 = v17[1];
    v20 = v17[2];
    v21 = *(v17 + 5);
    if (v14)
    {
      v22 = *(v21 + 376);

      os_unfair_lock_lock(v22);
      os_unfair_lock_lock(*(v21 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v15);
    v67 = *(v2 + 64);
    v68 = *(v2 + 48);
    v66 = *(v2 + 80);
    v23 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
    *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v23, 8);
    *(v2 + 56) = v23;
    v24 = &v63[16 * v20];
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 64) = 0;

    v25 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v2);
    v27 = v26;
    v28 = 16 * (v18 - v19);
    v69 = v21;
    if (v27)
    {
      v70 = xmmword_1AFE201A0;
      memset_pattern16_nocache(v24, &v70, v28);
    }

    else
    {
      memcpy(v24, &v25[16 * v19], v28);
    }

    v29 = *(v2 + 48);
    v30 = *(v2 + 64);
    if (!v30)
    {
      v52 = *(v2 + 56);
      v53 = *(v2 + 32);
      v55 = v69;
      v54 = v66;
      goto LABEL_46;
    }

    v65 = v13;
    v31 = 0;
    while (1)
    {
      v33 = (v29 + 48 * v31);
      v34 = *v33;
      v35 = v33[4];
      v36 = *(v2 + 72);
      if (v36)
      {
        v37 = v34 == v36;
      }

      else
      {
        v37 = 0;
      }

      if (!v37)
      {
        v38 = v71;
        if (*(v71 + 22))
        {
          v39 = v33[2];
          v40 = v71 + 41;
          v41 = *(v71 + 18);
          if (v41 < 0x10)
          {
            goto LABEL_34;
          }

          v42 = (v40 + *(v71 + 16));
          v43 = v41 >> 4;
          v44 = v71 + 41;
          while (*v42 != v34)
          {
            ++v44;
            v42 += 2;
            if (!--v43)
            {
              goto LABEL_34;
            }
          }

          v45 = *(v44 + *(v71 + 20));
          v46 = v45 > 5;
          v47 = (1 << v45) & 0x23;
          if (!v46 && v47 != 0)
          {
LABEL_34:
            if (!swift_conformsToProtocol2() || !v39)
            {
              goto LABEL_19;
            }

            if ((sub_1AF5FC8D8(v39) & 1) == 0)
            {
              v49 = *(v38 + 18);
              if (v49 >= 0x10)
              {
                v50 = (v40 + *(v38 + 16));
                v51 = 16 * (v49 >> 4);
                while (*v50 != v39)
                {
                  v50 += 2;
                  v51 -= 16;
                  if (!v51)
                  {
                    goto LABEL_18;
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_18:

      v35(v32);

LABEL_19:
      if (++v31 == v30)
      {
        v52 = *(v2 + 56);
        v29 = *(v2 + 48);
        v53 = *(v2 + 32);
        v15 = v60;
        v54 = v66;
        if (*(v2 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v4 = v62;
        v13 = v65;
        v14 = v61;
        v55 = v69;
LABEL_46:
        ecs_stack_allocator_deallocate(v53, v29, 48 * v52);
        *(v2 + 48) = v68;
        *(v2 + 64) = v67;
        *(v2 + 80) = v54;
        sub_1AF62D29C(v55);
        ecs_stack_allocator_pop_snapshot(v15);
        if (v14)
        {
          os_unfair_lock_unlock(*(v55 + 344));
          os_unfair_lock_unlock(*(v55 + 376));
        }

        if (++v13 == v64)
        {
          goto LABEL_48;
        }

        goto LABEL_10;
      }
    }
  }

  v5 = *v4;
  v6 = v4[1];

  v7 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, 0, 0, 0, v2);
  if (v8)
  {
    ecs_stack_allocator_push_snapshot(v3);
    v9 = 16 * *(v1 + 10);
    v10 = ecs_stack_allocator_allocate(v3, v9, 16);
    if (v9)
    {
      v11 = v10;
      memset_pattern16(v10, &xmmword_1AFE201A0, v9);
      v10 = v11;
    }

    a1(v10, v9 >> 4);
    ecs_stack_allocator_pop_snapshot(v3);
  }

  else
  {
    a1(&v7[16 * v5], v6 - v5);
  }
}

uint64_t sub_1AF9FADB8(float *a1, uint64_t a2)
{
  v3 = *a1;
  result = 1;
  if (v3 != *a2 || *(a1 + 1) != *(a2 + 4) || ((*(a1 + 20) ^ *(a2 + 20)) & 1) != 0 || ((*(a1 + 21) ^ *(a2 + 21)) & 1) != 0)
  {
    return result;
  }

  v5 = a1[2];
  v6 = a1[4];
  v7 = *(a1 + 22);
  v8 = *(a1 + 6);
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  v11 = a1[8];
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (*(a1 + 12) == 1)
  {
    if (v5 == 0.0)
    {
      if (v12 == 0.0)
      {
        v16 = *(a2 + 12);
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v5) == 1)
      {
        if (LODWORD(v12) == 1)
        {
          v14 = *(a2 + 12);
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          goto LABEL_12;
        }

        return 1;
      }

      if (LODWORD(v12) > 1)
      {
        v17 = *(a2 + 12);
      }

      else
      {
        v17 = 0;
      }

      if (v17 != 1)
      {
        return 1;
      }
    }

LABEL_12:
    result = 1;
    if (v6 != v13)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 == v12)
  {
    v15 = *(a2 + 12);
  }

  else
  {
    v15 = 1;
  }

  result = 1;
  if ((v15 & 1) == 0 && v6 == v13)
  {
LABEL_19:
    if (v7 == *(a2 + 22) && v8 == *(a2 + 24) && v9 == *(a2 + 28) && ((v10 ^ *(a2 + 29)) & 1) == 0)
    {
      return (v11 > 0.0) ^ (*(a2 + 32) > 0.0);
    }
  }

  return result;
}

uint64_t sub_1AF9FAEF0(float *a1, uint64_t a2)
{
  v3 = *a1;
  result = 1;
  if (v3 != *a2 || *(a1 + 1) != *(a2 + 4) || ((*(a1 + 30) ^ *(a2 + 30)) & 1) != 0 || ((*(a1 + 31) ^ *(a2 + 31)) & 1) != 0)
  {
    return result;
  }

  v5 = a1[2];
  v6 = a1[4];
  v7 = *(a1 + 20);
  v8 = *(a1 + 6);
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  v11 = a1[8];
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (*(a1 + 12) == 1)
  {
    if (v5 == 0.0)
    {
      if (v12 == 0.0)
      {
        v16 = *(a2 + 12);
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v5) == 1)
      {
        if (LODWORD(v12) == 1)
        {
          v14 = *(a2 + 12);
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          goto LABEL_12;
        }

        return 1;
      }

      if (LODWORD(v12) > 1)
      {
        v17 = *(a2 + 12);
      }

      else
      {
        v17 = 0;
      }

      if (v17 != 1)
      {
        return 1;
      }
    }

LABEL_12:
    result = 1;
    if (v6 != v13)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 == v12)
  {
    v15 = *(a2 + 12);
  }

  else
  {
    v15 = 1;
  }

  result = 1;
  if ((v15 & 1) == 0 && v6 == v13)
  {
LABEL_19:
    if (v7 == *(a2 + 20) && v8 == *(a2 + 24) && v9 == *(a2 + 28) && ((v10 ^ *(a2 + 29)) & 1) == 0)
    {
      return (v11 > 0.0) ^ (*(a2 + 32) > 0.0);
    }
  }

  return result;
}

uint64_t sub_1AF9FB13C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = 0xFFFFFFFFLL;
  v5 = *(a2 + 8);
  v5(&v7, 0, ObjectType, a2);
  return (v5)(v2 + 36, 0, ObjectType, a2);
}

uint64_t sub_1AF9FB288(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = 0xFFFFFFFFLL;
  v5 = *(a2 + 8);
  v5(&v7, 0, ObjectType, a2);
  return (v5)(v2, 0, ObjectType, a2);
}

id sub_1AF9FB4E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AF8D93C8(a1, &v9, a2, a3);
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = [v4 pixelFormat];
  if ((v6 - 160) >= 0x3B || ((0x7FDF1FF7CFD54FFuLL >> (v6 + 96)) & 1) == 0)
  {
    sub_1AF67CACC(&type metadata for TextureRequireUnpremultiply, &off_1F2545E58, a1);
  }

  v7 = [v5 textureType];
  swift_unknownObjectRelease();
  return v7;
}

void sub_1AF9FB74C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v245 = a7;
  v243 = *(a7 - 8);
  v244 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v232 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v205 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v235 = &v205 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v28 = &v205 - v27;
  if (!v29)
  {
    return;
  }

  *&v236 = v26;
  v231 = v25;
  v241 = v22;
  v242 = v21;
  v219 = v24;
  v234 = v23;
  v30 = *(v21 + 16);
  if (v30)
  {
  }

  else
  {
    v31 = v244;
    v32 = *(v244 + 72);

    v30 = v32(v245, v31);
  }

  v33 = a5[393];
  v238 = v30;
  v208 = v14;
  if (v33 == 1)
  {
    v34 = *(v30 + 80);
    if ((v34 & 2) == 0)
    {
      *(v30 + 80) = v34 | 2;
    }

    *(v242 + 16) = v30;
    v35 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v221 = 1;
    v36 = a4;
  }

  else
  {
    *(v242 + 16) = v30;
    v35 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v37 = a5[395];
    if (v37 != 1)
    {
      v37 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) | a5[396];
    }

    v221 = v37;
    v36 = a4;
  }

  v226 = a2[1];
  v233 = v36;
  v38 = sub_1AF67CACC(&type metadata for WorldTransform, &off_1F2529AF8, v226);
  v240 = a5;
  v39 = a5[392];
  v229 = v38;
  v230 = v39;
  v40 = v244;
  v41 = *(v244 + 64);
  v222 = v35;
  v227 = v35;

  v42 = v245;
  v43 = v246;
  v44 = v41(v245, v40);
  v45 = *a2;
  v46 = a2[4];

  v217 = v46;
  v220 = sub_1AF67D8F0(v46, v45, v44);
  v216 = 0;

  v47 = sub_1AF442470(&v345);
  v48 = v243 + 16;
  v239 = *(v243 + 16);
  v239(v28, v43, v42, v47);
  sub_1AFA0264C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v344 = 0;
    memset(v343, 0, sizeof(v343));
  }

  sub_1AF88A2FC(&v360);
  v342[1] = v364;
  v342[2] = v365;
  *&v342[3] = v366;
  v341[0] = v360;
  v341[1] = v361;
  v342[0] = v363;
  v341[2] = v362;
  v49 = v238;

  *(&v341[0] + 1) = v49;
  v50 = v244;
  v51 = v245;
  v52 = *(v244 + 32);
  v53 = v246;
  v54 = v52(v245, v244);
  DWORD2(v341[2]) = v54;
  BYTE12(v341[2]) = BYTE4(v54) & 1;
  *&v342[2] = (*(v50 + 48))(v51, v50);
  v55 = *(v50 + 40);
  LODWORD(v342[0]) = v55(v51, v50);
  *(&v342[1] + 1) = (*(v50 + 56))(v51, v50);
  v237 = v48;
  v56 = v239;
  (v239)(v236, v53, v51);
  v57 = v51;
  if (swift_dynamicCast())
  {
    BYTE5(v342[0]) = 1;
    LOBYTE(v342[1]) = 1;
  }

  v58 = v241;
  v59 = v233;
  if (!HIDWORD(v241) && v241 == -1)
  {
    v58 = (*(v244 + 24))(v51);
  }

  v241 = v58;
  *&v228 = HIDWORD(v58);
  sub_1AFA026B0(v343, &v311, &unk_1ED724120, sub_1AFA0264C);
  if (!*(&v312 + 1))
  {
    sub_1AFA0271C(&v311);
    v69 = v246;
    v56(v231, v246, v57);
    LODWORD(v236) = swift_dynamicCast();
    v218 = 0;
    v225 = 0;
    v223 = 0;
    v214 = 0;
    v215 = 0;
    v70 = 0;
    v71 = v240;
    v72 = v238;
    v73 = v235;
    goto LABEL_41;
  }

  sub_1AF616568(&v311, &v326);
  v60 = *(&v327 + 1);
  v61 = v328;
  sub_1AF441150(&v326, *(&v327 + 1));
  v62 = (*(v61 + 32))(v60, v61);
  v215 = sub_1AF9FB4E4(v62, v59, v240);
  v64 = v63;
  v65 = *(&v327 + 1);
  v66 = v328;
  sub_1AF441150(&v326, *(&v327 + 1));
  LODWORD(v236) = (*(v66 + 56))(v65, v66);
  v67 = *(&v327 + 1);
  v68 = v328;
  sub_1AF441150(&v326, *(&v327 + 1));
  if ((*(v68 + 80))(v67, v68))
  {
    v223 = 0;
  }

  else
  {
    v74 = *(&v327 + 1);
    v75 = v328;
    sub_1AF441150(&v326, *(&v327 + 1));
    v223 = (*(v75 + 56))(v74, v75);
  }

  v76 = v245;
  if ((v52(v245, v244) & 0x1FFFFFFFFLL) == 0x100000000)
  {
    v218 = 0;
    v71 = v240;
    v72 = v238;
  }

  else
  {
    v77 = *(&v327 + 1);
    v78 = v328;
    sub_1AF441150(&v326, *(&v327 + 1));
    v79 = (*(v78 + 224))(v77, v78);
    v71 = v240;
    v72 = v238;
    if (v79 <= 0.0)
    {
      v218 = 0;
      v76 = v245;
    }

    else
    {
      v76 = v245;
      sub_1AF9FA488(v245, v244);
      if ((v80 & 1) != 0 && (v71[393] & 1) == 0)
      {
        v218 = v71[395] ^ 1;
      }

      else
      {
        v218 = 0;
      }
    }
  }

  if (v55(v76, v244) >= 0.0)
  {
    v84 = 1;
  }

  else
  {
    v81 = *(&v327 + 1);
    v82 = v328;
    sub_1AF441150(&v326, *(&v327 + 1));
    v83 = *(v82 + 152);
    if (v83(v81, v82) > 0xFF)
    {
      HIDWORD(v225) = 0;
      goto LABEL_37;
    }

    v84 = v83(v81, v82) > 0xA;
  }

  HIDWORD(v225) = v84;
LABEL_37:
  HIDWORD(v214) = (v64 >> 8) & 1;
  v85 = *(&v327 + 1);
  v86 = v328;
  sub_1AF441150(&v326, *(&v327 + 1));
  v87 = (*(v86 + 32))(v85, v86);
  v88 = sub_1AF67CACC(&type metadata for TextureRequireAnimationRepresentation, &off_1F2544470, v87);
  v73 = v235;
  if (v88)
  {
    v89 = *(&v327 + 1);
    v90 = v328;
    sub_1AF441150(&v326, *(&v327 + 1));
    LOBYTE(v89) = (*(v90 + 176))(v89, v90);
    v91 = *(&v327 + 1);
    v92 = v328;
    sub_1AF441150(&v326, *(&v327 + 1));
    LODWORD(v225) = (*(v92 + 200))(v91, v92);
    v70 = v89;
  }

  else
  {
    LODWORD(v225) = 0;
    v70 = -1;
  }

  v57 = v245;
  v69 = v246;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v326);
  LODWORD(v214) = v64 ^ 1;
  v56 = v239;
LABEL_41:
  v224 = *(&v361 + 1);
  *&v209 = v362;
  v56(v73, v69, v57);
  if (swift_dynamicCast())
  {
    v94 = v319;
    HIDWORD(v211) = BYTE12(v315);
    LODWORD(v212) = v317;
    if (BYTE9(v319) == 1)
    {
      v95 = BYTE10(v319);
      v229 |= BYTE8(v319);
    }

    else
    {
      if ((BYTE8(v319) & 1) == 0)
      {
        if ((v236 & 1) == 0)
        {
          v210 = 5;
LABEL_63:
          HIDWORD(v213) = 0;
          v96 = 0;
LABEL_64:
          HIDWORD(v212) = 0;
          LODWORD(v213) = 0;
          LODWORD(v211) = 0;
          v230 = 0;
          LODWORD(v231) = 0;
          goto LABEL_65;
        }

        v210 = 5;
LABEL_57:
        HIDWORD(v213) = BYTE9(v317);
        if (sub_1AF8D93C8(*(&v318 + 1), &v296, v59, v71) && (swift_unknownObjectRelease(), sub_1AF8D93C8(v94, &v296, v59, v71)))
        {
          swift_unknownObjectRelease();
          v96 = 1;
          v223 = 1;
        }

        else
        {
          v96 = 0;
        }

        v73 = v235;
        goto LABEL_64;
      }

      v95 = 5;
      v229 = 1;
    }

    v210 = v95;
    if ((v236 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (swift_dynamicCast())
  {
    v212 = 0;
    v213 = 0;
    v230 = 0;
    LODWORD(v231) = 0;
    v96 = 0;
    v93.n128_u32[0] = HIDWORD(v312);
    v211 = *(&v312 + 3) > 0.0;
LABEL_46:
    v210 = 5;
    goto LABEL_65;
  }

  LODWORD(v231) = v230 ^ 1;
  if (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast())
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    v96 = 0;
    v210 = 5;
    v230 = 1;
    goto LABEL_65;
  }

  if (!swift_dynamicCast())
  {
    if (!swift_dynamicCast())
    {
      (*(v243 + 8))(v73, v57);
      v97 = v241;
      if (v241 == -1)
      {
        v98 = v228;
        if (!v228)
        {
          LODWORD(v235) = v70;
          v206 = 0;
          v212 = 0;
          v213 = 0;
          v211 = 0;
          v230 = 0;
          LODWORD(v231) = 0;
          LODWORD(v228) = 0;
          v338 = v357;
          v339 = v358;
          v340 = v359;
          v334 = v353;
          v335 = v354;
          v337 = v356;
          v336 = v355;
          v330 = v349;
          v331 = v350;
          v333 = v352;
          v332 = v351;
          v326 = v345;
          v327 = v346;
          v100 = v347;
          v99 = v348;
          v210 = 5;
          goto LABEL_68;
        }

        v210 = 5;
        v211 = 0;
        v212 = 0;
        v230 = 0;
        LODWORD(v231) = 0;
        v213 = 0;
        v96 = 0;
LABEL_92:
        v207 = v97;
        v108 = v97 | (v98 << 32);
        if (sub_1AF65A128(v108))
        {
          v206 = v98 << 32;
        }

        else
        {
          v108 = sub_1AF88C660();
          v206 = v108 & 0xFFFFFFFF00000000;
          v207 = v108;
        }

        sub_1AF3CB184(v108, &v367);
        v247[0] = v367;
        v247[1] = v368;
        v247[2] = v369;
        v248 = v370[0];
        v249 = v370[1];
        v250 = v370[2];
        v251 = *&v370[3];
        v241 = *(&v367 + 1);
        if (!*(&v367 + 1))
        {
          goto LABEL_162;
        }

        v236 = *(v247 + 8);
        LODWORD(v235) = v70;
        v109 = LOBYTE(v247[0]);
        v209 = *(&v247[1] + 8);
        v110 = *(&v247[2] + 1);
        v111 = *&v248;
        sub_1AF3CA6C0(v108, &v296);
        v323 = v308;
        v324 = v309;
        v325 = v310;
        v319 = v304;
        v320 = v305;
        v322 = v307;
        v321 = v306;
        v315 = v300;
        v316 = v301;
        v318 = v303;
        v317 = v302;
        v311 = v296;
        v312 = v297;
        v314 = v299;
        v313 = v298;
        if (sub_1AF448314(&v311) == 1)
        {

          sub_1AFA02474(v247, &qword_1ED7220C0, &type metadata for Material);

          v375 = v342[1];
          v376 = v342[2];
          v377 = *&v342[3];
          v371 = v341[0];
          v372 = v341[1];
          v373 = v341[2];
          v374 = v342[0];
          v112 = &v371;
          goto LABEL_164;
        }

        v293 = v342[1];
        v294 = v342[2];
        v295 = *&v342[3];
        v289 = v341[0];
        v290 = v341[1];
        v292 = v342[0];
        v291 = v341[2];
        v371 = v247[0];
        v372 = v247[1];
        v377 = v251;
        v375 = v249;
        v376 = v250;
        v373 = v247[2];
        v374 = v248;
        sub_1AF4424F4(&v371, v288);
        sub_1AF584F68(&v289);
        LOBYTE(v341[0]) = v109;
        *(v341 + 1) = *(&v367 + 1);
        DWORD1(v341[0]) = DWORD1(v367);
        *(&v341[1] + 8) = v209;
        *(v341 + 8) = v236;
        *(&v341[2] + 1) = v110;
        *v342 = v111;
        *(v342 + 4) = *(v370 + 4);
        *(&v342[1] + 4) = *(&v370[1] + 4);
        *(&v342[2] + 4) = *(&v370[2] + 4);
        DWORD1(v342[3]) = DWORD1(v370[3]);
        v228 = *(v72 + 88);
        v113 = v241;
        v236 = *(v241 + 88);
        v114 = swift_allocObject();
        v115 = v228;
        *(v114 + 16) = v236;
        *(v114 + 32) = v115;
        *(v72 + 88) = sub_1AFA02794;
        *(v72 + 96) = v114;

        v116 = *(v113 + 80);
        if ((v116 & 0x20) != 0)
        {
          v119 = *(v72 + 80);
          v57 = v245;
          v117 = v225;
          v118 = HIDWORD(v225);
          if ((v119 & 0x20) == 0)
          {
            *(v72 + 80) = v119 | 0x20;
            v116 = *(v241 + 80);
          }
        }

        else
        {
          v57 = v245;
          v117 = v225;
          v118 = HIDWORD(v225);
        }

        LODWORD(v225) = v117;
        if ((v116 & 0x10) != 0)
        {
          v120 = *(v72 + 80);
          if ((v120 & 0x10) == 0)
          {
            *(v72 + 80) = v120 | 0x10;
          }
        }

        LODWORD(v228) = v96;
        sub_1AFA02474(v247, &qword_1ED7220C0, &type metadata for Material);
        if (v111 >= 0.0)
        {
          v118 = 1;
        }

        HIDWORD(v225) = v118;
        LODWORD(v236) = v109 == 0;
        v338 = v308;
        v339 = v309;
        v340 = v310;
        v334 = v304;
        v335 = v305;
        v337 = v307;
        v336 = v306;
        v330 = v300;
        v331 = v301;
        v333 = v303;
        v332 = v302;
        v326 = v296;
        v327 = v297;
        v329 = v299;
        v328 = v298;
        v224 = v209;
        *&v209 = *(&v209 + 1);
        goto LABEL_108;
      }

      v210 = 5;
      v211 = 0;
      v212 = 0;
      v230 = 0;
      LODWORD(v231) = 0;
      v213 = 0;
      v96 = 0;
LABEL_91:
      v98 = v228;
      goto LABEL_92;
    }

    if (v315)
    {
      v106 = 0;
      HIDWORD(v212) = 0;
LABEL_78:
      v213 = v106;
      v211 = 0;
      v230 = 0;
      LODWORD(v231) = 0;
      LODWORD(v212) = 0;
      v96 = 0;
      goto LABEL_46;
    }

    if (DWORD1(v315) == -1)
    {
      HIDWORD(v212) = DWORD2(v315) != 0;
      if (HIDWORD(v315) != -1)
      {
        v106 = 1;
        goto LABEL_78;
      }
    }

    else
    {
      v106 = 1;
      HIDWORD(v212) = 1;
      if (HIDWORD(v315) != -1)
      {
        goto LABEL_78;
      }
    }

    v106 = v316 != 0;
    goto LABEL_78;
  }

  v101 = DWORD2(v311);
  v102 = HIDWORD(v311);
  v103 = *(&v312 + 1);
  v104 = sub_1AF3CA3E4(v311);
  if (v105)
  {
    if (!v104)
    {

      goto LABEL_174;
    }

    if (v241 != -1)
    {
      goto LABEL_74;
    }

    if (v228)
    {
    }

    else
    {
      if (v101 != -1)
      {

        v107 = v101;
LABEL_173:
        v241 = v107;
        *&v228 = v102;
        goto LABEL_174;
      }

      if (v102)
      {

        v107 = 0xFFFFFFFFLL;
        goto LABEL_173;
      }

      if ((v103 & 0x8000000000000000) == 0 && v103 < *(v105 + 16))
      {
        v202 = v105 + 8 * v103;
        v204 = *(v202 + 32);
        v203 = *(v202 + 36);
        v241 = v204;
        *&v228 = v203;
LABEL_74:

        goto LABEL_174;
      }

      *&v228 = 0;
    }

    v241 = 0xFFFFFFFFLL;
  }

LABEL_174:
  v57 = v245;
  v212 = 0;
  v213 = 0;
  v211 = 0;
  v230 = 0;
  LODWORD(v231) = 0;
  v96 = 0;
  v210 = 5;
  v73 = v235;
LABEL_65:
  (*(v243 + 8))(v73, v57, v93);
  v97 = v241;
  if (v241 != -1)
  {
    goto LABEL_91;
  }

  v98 = v228;
  if (v228)
  {
    goto LABEL_92;
  }

  LODWORD(v228) = v96;
  LODWORD(v235) = v70;
  v206 = 0;
  v338 = v357;
  v339 = v358;
  v340 = v359;
  v334 = v353;
  v335 = v354;
  v337 = v356;
  v336 = v355;
  v330 = v349;
  v331 = v350;
  v333 = v352;
  v332 = v351;
  v326 = v345;
  v327 = v346;
  v100 = v347;
  v99 = v348;
LABEL_68:
  v207 = 0xFFFFFFFFLL;
  v241 = v72;
  v329 = v99;
  v328 = v100;
LABEL_108:
  v121 = v216;
  v122 = v59;
  v123 = sub_1AF67E94C(v217, v59);
  v217 = v121;
  if (v123)
  {
    v124 = v123;
  }

  else
  {
    v124 = MEMORY[0x1E69E7CC0];
  }

  v125 = v72;
  v126 = *(v72 + 80);
  v127 = v246;
  v128 = v239;
  (v239)(v219, v246, v57);
  if (swift_dynamicCast())
  {
    v129 = 1;
  }

  else
  {
    v128(v208, v127, v57);
    v130 = swift_dynamicCast();
    if ((v126 & 0x30) == 0x10)
    {
      v129 = 1;
    }

    else
    {
      v129 = v130;
    }
  }

  v131 = MEMORY[0x1E69E7CC0];
  v132 = v240;
  v133 = v125;
  if (v224)
  {
    ObjectType = swift_getObjectType();
    v375 = v342[1];
    v376 = v342[2];
    v377 = *&v342[3];
    v371 = v341[0];
    v372 = v341[1];
    v373 = v341[2];
    v374 = v342[0];
    v241 = *(&v341[0] + 1);
    v131 = (*(v209 + 32))(&v371, ObjectType);
  }

  v135 = v122;
  v136 = v225;
  *&v311 = v131;
  sub_1AF490060(v124);
  v137 = v311;
  sub_1AFA03190(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v138 = swift_allocObject();
  v286 = 0;
  *(v138 + 16) = xmmword_1AFE85230;
  *(v138 + 32) = xmmword_1AFE90940;
  *(v138 + 48) = 0;
  *(v138 + 64) = 0;
  *(v138 + 128) = 13;
  v139 = v229 & 1;
  v287 = 0;
  *(v138 + 144) = xmmword_1AFE90950;
  *(v138 + 160) = 0;
  *(v138 + 176) = v139;
  *(v138 + 240) = 13;
  v140 = v215;
  v141 = v215 == 2;
  v142 = v214;
  v285 = 0;
  *(v138 + 256) = xmmword_1AFE90960;
  *(v138 + 272) = 0;
  *(v138 + 288) = v142 & v141;
  *(v138 + 352) = 13;
  v284 = 0;
  *(v138 + 368) = xmmword_1AFE90970;
  *(v138 + 384) = 0;
  *(v138 + 400) = v142 & (v140 == 7);
  *(v138 + 464) = 13;
  v283 = 0;
  *(v138 + 480) = xmmword_1AFE90980;
  *(v138 + 496) = 0;
  *(v138 + 512) = v142 & (v140 == 3);
  *(v138 + 576) = 13;
  v252 = 0;
  *(v138 + 592) = xmmword_1AFE90990;
  *(v138 + 608) = 0;
  *(v138 + 624) = v142 & (v140 == 5);
  *(v138 + 688) = 13;
  v253 = 0;
  *(v138 + 704) = xmmword_1AFE909A0;
  *(v138 + 720) = 0;
  *(v138 + 736) = BYTE4(v214);
  *(v138 + 800) = 13;
  v143 = v236 & 1;
  v254 = 0;
  *(v138 + 816) = xmmword_1AFE909B0;
  *(v138 + 832) = 0;
  *(v138 + 848) = v143;
  *(v138 + 912) = 13;
  v144 = v223 & 1;
  v255 = 0;
  *(v138 + 928) = xmmword_1AFE909C0;
  *(v138 + 944) = 0;
  *(v138 + 960) = v144;
  *(v138 + 1024) = 13;
  v256 = 0;
  *(v138 + 1040) = xmmword_1AFE909D0;
  *(v138 + 1056) = 0;
  *(v138 + 1072) = v235;
  *(v138 + 1136) = 14;
  v257 = 0;
  *(v138 + 1152) = xmmword_1AFE909E0;
  *(v138 + 1168) = 0;
  *(v138 + 1184) = v136 & 1;
  *(v138 + 1248) = 13;
  v145 = v218;
  v258 = 0;
  *(v138 + 1264) = xmmword_1AFE909F0;
  *(v138 + 1280) = 0;
  *(v138 + 1296) = v145 & 1;
  *(v138 + 1360) = 13;
  v259 = 0;
  *(v138 + 1376) = xmmword_1AFE90A00;
  *(v138 + 1392) = 0;
  *(v138 + 1408) = BYTE4(v225);
  *(v138 + 1472) = 13;
  v146 = v220 & 1;
  v260 = 0;
  *(v138 + 1488) = xmmword_1AFE90A10;
  *(v138 + 1504) = 0;
  *(v138 + 1520) = v146;
  *(v138 + 1584) = 13;
  v261 = 0;
  *(v138 + 1600) = xmmword_1AFE90A20;
  *(v138 + 1616) = 0;
  *(v138 + 1632) = v228;
  *(v138 + 1696) = 13;
  v147 = v210;
  v263 = 0;
  *(v138 + 1712) = xmmword_1AFE90A30;
  *(v138 + 1728) = 0;
  v148 = *v262;
  *(v138 + 1736) = *&v262[7];
  *(v138 + 1729) = v148;
  *(v138 + 1744) = v147;
  *(v138 + 1808) = 14;
  v149 = SBYTE4(v211);
  v265 = 0;
  *(v138 + 1824) = xmmword_1AFE90A40;
  *(v138 + 1840) = 0;
  v150 = *v264;
  *(v138 + 1848) = *&v264[7];
  *(v138 + 1841) = v150;
  *(v138 + 1856) = v149;
  *(v138 + 1920) = 14;
  v151 = v212;
  v267 = 0;
  *(v138 + 1936) = xmmword_1AFE90A50;
  *(v138 + 1952) = 0;
  v152 = *v266;
  *(v138 + 1960) = *&v266[7];
  *(v138 + 1953) = v152;
  *(v138 + 1968) = v151;
  *(v138 + 2032) = 14;
  v269 = 0;
  *(v138 + 2048) = xmmword_1AFE90A60;
  *(v138 + 2064) = 0;
  v153 = v268[0];
  *(v138 + 2072) = *(v268 + 7);
  *(v138 + 2065) = v153;
  *(v138 + 2080) = 0;
  *(v138 + 2144) = 13;
  v271 = 0;
  *(v138 + 2160) = xmmword_1AFE90A70;
  *(v138 + 2176) = 0;
  v154 = *v270;
  *(v138 + 2184) = *&v270[7];
  *(v138 + 2177) = v154;
  *(v138 + 2192) = BYTE4(v213);
  *(v138 + 2256) = 13;
  v273 = 0;
  *(v138 + 2272) = xmmword_1AFE90A80;
  *(v138 + 2288) = 0;
  v155 = *v272;
  *(v138 + 2296) = *&v272[7];
  *(v138 + 2289) = v155;
  v156 = v231;
  *(v138 + 2304) = v230;
  *(v138 + 2368) = 13;
  v275 = 0;
  *(v138 + 2384) = xmmword_1AFE90A90;
  *(v138 + 2400) = 0;
  v157 = *v274;
  *(v138 + 2408) = *&v274[7];
  *(v138 + 2401) = v157;
  *(v138 + 2416) = v156 & 1;
  *(v138 + 2480) = 13;
  v277 = 0;
  *(v138 + 2496) = xmmword_1AFE90AA0;
  *(v138 + 2512) = 0;
  v158 = *v276;
  *(v138 + 2520) = *&v276[7];
  *(v138 + 2513) = v158;
  *(v138 + 2528) = v211;
  *(v138 + 2592) = 13;
  v279 = 0;
  *(v138 + 2608) = xmmword_1AFE90120;
  *(v138 + 2624) = 0;
  v159 = *v278;
  *(v138 + 2632) = *&v278[7];
  *(v138 + 2625) = v159;
  *(v138 + 2640) = BYTE4(v212);
  *(v138 + 2704) = 13;
  v281 = 0;
  *(v138 + 2720) = xmmword_1AFE90130;
  *(v138 + 2736) = 0;
  v160 = *v280;
  *(v138 + 2744) = *&v280[7];
  *(v138 + 2737) = v160;
  *(v138 + 2752) = v213;
  *(v138 + 2816) = 13;
  v282 = 0;
  *(v138 + 2832) = xmmword_1AFE7CEE0;
  *(v138 + 2848) = 0;
  v161 = v288[0];
  *(v138 + 2856) = *(v288 + 7);
  *(v138 + 2849) = v161;
  *(v138 + 2864) = v129;
  *(v138 + 2928) = 13;
  *&v311 = v137;
  sub_1AF490060(v138);
  v162 = v242;
  if (v145)
  {
    v163 = *(v242 + 130);
    if ((v163 & 4) == 0)
    {
      *(v242 + 130) = v163 | 4;
    }
  }

  v164 = v246;
  if (v230)
  {
    v165 = *(v162 + 130);
    if ((v165 & 2) == 0)
    {
      *(v162 + 130) = v165 | 2;
    }
  }

  v166 = v311;
  if (v231)
  {
    v167 = *(v162 + 130);
    if ((v167 & 1) == 0)
    {
      *(v162 + 130) = v167 | 1;
    }
  }

  if (v236)
  {
    v168 = *(v133 + 80);
    if ((v168 & 8) == 0)
    {
      *(v133 + 80) = v168 | 8;
    }
  }

  v169 = sub_1AF68B28C(v226, v135);
  *(v162 + 232) = sub_1AFDFCD18();
  if (v169)
  {
    v170 = v169;
  }

  else
  {
    v170 = MEMORY[0x1E69E7CC0];
  }

  v171 = sub_1AF89BCC0(v341, v162, v170, v166, v135, v132, v234, v221 & 1, v222);
  v172 = v245;

  v173 = v232;
  (v239)(v232, v164, v172);
  if (!swift_dynamicCast() || BYTE8(v317) != 1)
  {
    goto LABEL_153;
  }

  LODWORD(v244) = v171;
  v174 = *(v162 + 8);
  v175 = 1 << *(v174 + 32);
  v176 = -1;
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  v177 = v176 & *(v174 + 64);
  v178 = (v175 + 63) >> 6;

  v179 = 0;
  while (v177)
  {
LABEL_144:
    v183 = __clz(__rbit64(v177)) | (v179 << 6);
    v184 = *(v174 + 48) + 96 * v183;
    v291 = *(v184 + 32);
    v292 = *(v184 + 48);
    v293 = *(v184 + 64);
    v294 = *(v184 + 80);
    v289 = *v184;
    v290 = *(v184 + 16);
    v185 = (*(v174 + 56) + 24 * v183);
    v186 = *v185;
    v187 = v185[1];
    v188 = *(v132 + 18);
    swift_unknownObjectRetain_n();
    v246 = v187;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v296 = *(v242 + 8);
    v190 = v296;
    v191 = sub_1AF419A14(&v289);
    v193 = v192;
    v194 = *(v190 + 16) + ((v192 & 1) == 0);
    if (*(v190 + 24) < v194)
    {
      sub_1AF83D2FC(v194, isUniquelyReferenced_nonNull_native);
      v191 = sub_1AF419A14(&v289);
      if ((v193 & 1) != (v195 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }

LABEL_148:
      v196 = v296;
      if ((v193 & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_149;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_148;
    }

    v198 = v191;
    sub_1AF84D7CC();
    v191 = v198;
    v196 = v296;
    if ((v193 & 1) == 0)
    {
LABEL_138:
      v196[(v191 >> 6) + 8] |= 1 << v191;
      v180 = v196[6] + 96 * v191;
      *(v180 + 32) = v291;
      *(v180 + 48) = v292;
      *(v180 + 64) = v293;
      *(v180 + 80) = v294;
      *v180 = v289;
      *(v180 + 16) = v290;
      v181 = v196[7] + 24 * v191;
      *v181 = v186;
      *(v181 + 8) = v188;
      *(v181 + 16) = 0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      ++v196[2];
      goto LABEL_139;
    }

LABEL_149:
    v197 = v196[7] + 24 * v191;
    *v197 = v186;
    *(v197 + 8) = v188;
    *(v197 + 16) = 0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_139:
    v132 = v240;
    v177 &= v177 - 1;
    *(v242 + 8) = v196;
    v172 = v245;
  }

  while (1)
  {
    v182 = v179 + 1;
    if (v179 + 1 >= v178)
    {
      break;
    }

    v177 = *(v174 + 8 * v179++ + 72);
    if (v177)
    {
      v179 = v182;
      goto LABEL_144;
    }
  }

  v133 = v238;
  v162 = v242;
  v173 = v232;
  LOBYTE(v171) = v244;
LABEL_153:
  (*(v243 + 8))(v173, v172);
  if (v171)
  {
    sub_1AF678B44(v226, v199);
    sub_1AFA02474(&v326, &qword_1ED7255C8, &type metadata for MaterialRuntime);
LABEL_162:

    v315 = v342[1];
    v316 = v342[2];
    *&v317 = *&v342[3];
    v311 = v341[0];
    v312 = v341[1];
    v314 = v342[0];
    v313 = v341[2];
    v112 = &v311;
    goto LABEL_164;
  }

  v323 = v338;
  v324 = v339;
  v325 = v340;
  v319 = v334;
  v320 = v335;
  v322 = v337;
  v321 = v336;
  v315 = v330;
  v316 = v331;
  v318 = v333;
  v317 = v332;
  v311 = v326;
  v312 = v327;
  v314 = v329;
  v313 = v328;
  if (sub_1AF448314(&v311) != 1)
  {
    v201 = v319;
    *(v162 + 192) = v323;
    *(v162 + 208) = v324;
    v370[1] = v317;
    v370[2] = v318;
    v370[3] = v201;
    v367 = v313;
    v368 = v314;
    v370[0] = v316;
    v369 = v315;
    v308 = v338;
    v309 = v339;
    v310 = v340;
    v304 = v334;
    v305 = v335;
    v307 = v337;
    v306 = v336;
    v300 = v330;
    v301 = v331;
    v303 = v333;
    v302 = v332;
    v296 = v326;
    v297 = v327;
    v299 = v329;
    v298 = v328;
    sub_1AF442498(&v296, v247);
    sub_1AF894900(&v367);
    sub_1AFA02474(&v326, &qword_1ED7255C8, &type metadata for MaterialRuntime);
  }

  if ((v171 & 4) != 0 && (*(v133 + 209) & 1) != 0 && (*(v241 + 209) & 1) == 0)
  {
    sub_1AF678B44(v206 | v207, v200);
  }

  sub_1AFA02474(&v326, &qword_1ED7255C8, &type metadata for MaterialRuntime);

  v300 = v342[1];
  v301 = v342[2];
  *&v302 = *&v342[3];
  v296 = v341[0];
  v297 = v341[1];
  v299 = v342[0];
  v298 = v341[2];
  v112 = &v296;
LABEL_164:
  sub_1AF584F68(v112);
  sub_1AFA0271C(v343);
}

__n128 sub_1AF9FD660@<Q0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  a2(v51);
  v80 = v51[8];
  v81 = v51[9];
  v82 = v51[10];
  v76 = v51[4];
  v77 = v51[5];
  v79 = v51[7];
  v78 = v51[6];
  v72 = v51[0];
  v73 = v51[1];
  v75 = v51[3];
  v74 = v51[2];
  if (sub_1AF8A036C(&v72) == 1)
  {
    a3(&v90, a1);
  }

  else
  {
    v7 = v72;
    v8 = v73;
    v9 = v74;
    v21 = v75;
    v22 = v76;
    v48 = v79;
    v49 = v80;
    v50 = v81;
    v46 = v77;
    v47 = v78;
    v20 = v82;
    if (*(&v72 + 1) && (v10 = *(&v82 + 1), sub_1AF898C0C(v72, *(&v72 + 1), v73, *(&v73 + 1), v74), , , swift_unknownObjectRelease(), *(&v8 + 1)))
    {
      swift_unknownObjectRelease();
      v63 = v7;
      v64 = v8;
      v65 = v9;
      v66 = v21;
      v67 = v22;
      *v70 = v48;
      *&v70[16] = v49;
      *&v70[32] = v50;
      v69 = v47;
      v68 = v46;
      *&v71 = v20;
      *(&v71 + 1) = v10;
      nullsub_106();
      v98 = *&v70[16];
      v99 = *&v70[32];
      v100 = v71;
      v94 = v67;
      v95 = v68;
      v97 = *v70;
      v96 = v69;
      v90 = v63;
      v91 = v64;
      v12 = v65;
      v11 = v66;
    }

    else
    {
      a3(&v52, a1);
      v43 = v60;
      v44 = v61;
      v45 = v62;
      v39 = v56;
      v40 = v57;
      v41 = v58;
      v42 = v59;
      v35 = v52;
      v36 = v53;
      v37 = v54;
      v38 = v55;
      *&v70[16] = v60;
      *&v70[32] = v61;
      v71 = v62;
      v67 = v56;
      v68 = v57;
      *v70 = v59;
      v69 = v58;
      v63 = v52;
      v64 = v53;
      v65 = v54;
      v66 = v55;
      if (sub_1AF8A036C(&v63) == 1)
      {
        sub_1AFA02474(v51, &qword_1ED7255C0, &type metadata for RenderFunctions);
        v98 = v43;
        v99 = v44;
        v100 = v45;
        v94 = v39;
        v95 = v40;
        v97 = v42;
        v96 = v41;
        v90 = v35;
        v91 = v36;
        v12 = v37;
        v11 = v38;
      }

      else
      {
        v13 = *(&v71 + 1);
        v14 = v20;
        if (!v20)
        {
          v14 = v71;
        }

        v83[0] = v63;
        v83[1] = v64;
        v85[0] = v68;
        v85[1] = v69;
        v87[1] = *&v70[24];
        v87[0] = *&v70[8];
        v29 = v63;
        v30 = v64;
        v84 = v65;
        v86 = *v70;
        v88 = *&v70[40];
        v31 = v65;
        v28 = *v70;
        v89 = v13;
        v26 = v68;
        v27 = v69;
        v25 = *&v70[40];
        v23 = *&v70[8];
        v24 = *&v70[24];
        sub_1AFA027A0(v83, &v90, &qword_1ED7225F0, &type metadata for FunctionDescriptor);
        sub_1AFA027A0(v85, &v90, &qword_1ED7225F0, &type metadata for FunctionDescriptor);
        sub_1AFA027A0(v87, &v90, &qword_1ED7225F0, &type metadata for FunctionDescriptor);

        sub_1AFA026B0(&v89, &v90, &qword_1ED723180, sub_1AF898B44);
        sub_1AF898C0C(*(&v9 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1));
        sub_1AFA02474(&v52, &qword_1ED7255C0, &type metadata for RenderFunctions);
        sub_1AFA02474(v51, &qword_1ED7255C0, &type metadata for RenderFunctions);
        *&v33[24] = v24;
        *&v32 = v31;
        *(&v32 + 1) = *(&v9 + 1);
        *v33 = v28;
        *&v33[40] = v25;
        *&v34 = v14;
        *&v33[8] = v23;
        *(&v34 + 1) = v13;
        nullsub_106();
        v98 = *&v33[16];
        v99 = *&v33[32];
        v100 = v34;
        v94 = v22;
        v95 = v26;
        v97 = *v33;
        v96 = v27;
        v90 = v29;
        v91 = v30;
        v12 = v32;
        v11 = v21;
      }
    }

    v93 = v11;
    v92 = v12;
  }

  v15 = v99;
  *(a4 + 128) = v98;
  *(a4 + 144) = v15;
  *(a4 + 160) = v100;
  v16 = v95;
  *(a4 + 64) = v94;
  *(a4 + 80) = v16;
  v17 = v97;
  *(a4 + 96) = v96;
  *(a4 + 112) = v17;
  v18 = v91;
  *a4 = v90;
  *(a4 + 16) = v18;
  result = v93;
  *(a4 + 32) = v92;
  *(a4 + 48) = result;
  return result;
}

unint64_t sub_1AF9FDBB0(char a1)
{
  result = 0x65727574786574;
  switch(a1)
  {
    case 1:
      return 0x676E69746867696CLL;
    case 2:
      return 0x72616C7563657073;
    case 3:
      return 0x646F4D646E656C62;
    case 4:
      return 0x66666F747563;
    case 5:
      return 0x65646F4D74726F73;
    case 6:
      return 0x647265764F78616DLL;
    case 7:
      return 0x6F6974616D696E61;
    case 8:
      return 0x7473694474666F73;
    case 9:
      return 0xD000000000000017;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x5365727574786574;
    case 12:
      return 0x4265727574786574;
    case 13:
      return 0x7461746E6569726FLL;
    case 14:
      return 0x736978417075;
    case 15:
      return 0x6570616873;
    case 16:
      return 0x4668637465727473;
    case 17:
      return 0x7275746176727563;
    case 18:
      return 0x73656E6B63696874;
    case 19:
      return 0xD000000000000018;
    case 20:
    case 21:
      v3 = 11;
      goto LABEL_37;
    case 22:
      v3 = 5;
      goto LABEL_37;
    case 23:
    case 26:
      v3 = 9;
LABEL_37:
      result = v3 | 0xD000000000000010;
      break;
    case 24:
      result = 0x6C656E6E616863;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0x6F436E6F62626972;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x656C69666F7270;
      break;
    case 31:
      result = 0x4D65727574786574;
      break;
    case 32:
      result = 0x65764F64696F7661;
      break;
    case 33:
      result = 0x6143656C62616E65;
      break;
    case 34:
      result = 0x6E69676542706163;
      break;
    case 35:
      result = 0x6554646E45706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF9FDFB4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF9FDBB0(*a1);
  v5 = v4;
  if (v3 == sub_1AF9FDBB0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF9FE03C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9FDBB0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9FE0A0(uint64_t a1)
{
  sub_1AF9FDBB0(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AF9FE0F4(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF9FDBB0(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF9FE154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA020A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF9FE184@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF9FDBB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF9FE1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA020A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9FE1EC(uint64_t a1)
{
  v2 = sub_1AF9EA83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9FE228(uint64_t a1)
{
  v2 = sub_1AF9EA83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF9FE264(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v103 = a1;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - v11;
  v101 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v86 - v16;
  if (!a3)
  {
    return;
  }

  v97 = v8;
  v98 = v9;
  v92 = v15;
  v93 = v14;
  v95 = v4;
  v100 = v17;
  v102 = a2;
  v99 = a4;
  v18 = *(a3 + 656);
  v123[6] = *(a3 + 640);
  v123[7] = v18;
  v124[0] = *(a3 + 672);
  v19 = *(a3 + 592);
  v123[2] = *(a3 + 576);
  v123[3] = v19;
  v20 = *(a3 + 624);
  v123[4] = *(a3 + 608);
  v123[5] = v20;
  v21 = *(a3 + 560);
  v123[0] = *(a3 + 544);
  v123[1] = v21;
  *(v124 + 9) = *(a3 + 681);
  if (sub_1AF448314(v123) == 1)
  {
    goto LABEL_59;
  }

  v22 = *(&v123[0] + 1);
  ObjectType = swift_getObjectType();
  v24 = *(v22 + 152);
  swift_unknownObjectRetain();

  v25 = v24(ObjectType, v22);
  swift_unknownObjectRelease();
  v26 = v102;
  if (BYTE4(v25) != 2 || v25)
  {
    if (BYTE4(v25))
    {
      if (BYTE4(v25) == 1 || (*(v103 + 44) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((*(v103 + 44) & 1) != 0 || *(v103 + 40) != v25)
    {
      goto LABEL_35;
    }
  }

  v27 = *(v103 + 8);
  v94 = *(v103 + 12);
  v28 = v27 | (v94 << 32);
  v29 = sub_1AF67CACC(&type metadata for WorldAABB, &off_1F2510390, v28);
  v96 = v28;
  if (v29)
  {
    v30 = *(v26 + 184);

    os_unfair_recursive_lock_lock_with_options();
    v31 = sub_1AF6D2A6C(&type metadata for MainCullGroup);
    if (v32 == 2 || (v32 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v34 = v31;
      v35 = *(v30 + 16);
      v36 = 32 * v33;
      os_unfair_lock_lock(*(*(v30 + 32) + 32 * v33 + 24));
      os_unfair_recursive_lock_unlock();
      v37 = *(v35 + v34);
      v28 = v96;
      os_unfair_lock_unlock(*(*(v30 + 32) + v36 + 24));

      if ((sub_1AF66D724(*(v103 + 32), v37) & 1) == 0)
      {
LABEL_35:

        return;
      }
    }
  }

  v38 = v98;
  v39 = *(v97 + 88);
  v9 = *(v39 + 16);
  sub_1AF67CB9C(v28, v98, v12);
  v40 = v101;
  if ((*(v101 + 48))(v12, 1, v38) == 1)
  {

    (*(v92 + 8))(v12, v93);
    return;
  }

  v93 = v9;
  v97 = v39;
  (*(v40 + 32))(v100, v12, v38);
  v41 = *(a3 + 656);
  v121[6] = *(a3 + 640);
  v121[7] = v41;
  v122[0] = *(a3 + 672);
  *(v122 + 9) = *(a3 + 681);
  v42 = *(a3 + 592);
  v121[2] = *(a3 + 576);
  v121[3] = v42;
  v43 = *(a3 + 624);
  v121[4] = *(a3 + 608);
  v121[5] = v43;
  v44 = *(a3 + 560);
  v121[0] = *(a3 + 544);
  v121[1] = v44;
  if (sub_1AF448314(v121) == 1)
  {
LABEL_59:
    LODWORD(v85) = 0;
    v84 = 1347;
    sub_1AFDFE518();
    __break(1u);
    os_unfair_lock_unlock(*(v9 + 344));
    __break(1u);
    return;
  }

  v45 = v27;
  v46 = *(&v121[0] + 1);
  v47 = swift_getObjectType();
  v48 = *(v46 + 72);
  swift_unknownObjectRetain();
  v49 = v48(v47, v46);
  v88 = v49;
  v89 = v45;
  if (HIDWORD(v49))
  {
    v50 = -1;
  }

  else
  {
    v50 = v45;
  }

  if (v49 == -1)
  {
    v51 = v50;
  }

  else
  {
    v51 = v49;
  }

  v52 = v49 == -1 && HIDWORD(v49) == 0;
  v87 = HIDWORD(v49);
  if (v52)
  {
    v53 = v94;
  }

  else
  {
    v53 = HIDWORD(v49);
  }

  swift_unknownObjectRelease();
  v54 = v100;
  v90 = sub_1AFDFCD18();
  v55 = v96;
  v56 = v102;
  v57 = sub_1AF68B28C(v96, v102);
  v91 = &v86;
  MEMORY[0x1EEE9AC00](v57);
  v58 = v97;
  *(&v86 - 10) = v38;
  *(&v86 - 9) = v58;
  v92 = v51;
  v93 = v53;
  *(&v86 - 16) = v51;
  *(&v86 - 15) = v53;
  *(&v86 - 7) = a3;
  *(&v86 - 6) = v54;
  *(&v86 - 5) = v56;
  *(&v86 - 4) = v59;
  v60 = v103;
  *(&v86 - 3) = v90;
  v84 = v60;
  v61 = sub_1AF9FA69C(v55, sub_1AFA023FC, (&v86 - 12));

  v62 = v38;
  if (v61 == 2 || (v61 & 1) != 0)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_1AF679254(v92 | (v93 << 32));
  }

  v64 = v96;
  v65 = v102;
  v66 = sub_1AF65CA4C(v96);
  v67 = sub_1AF679254(v64);
  if (v66 != *(v95 + 4))
  {
    sub_1AFB7C708(v65, v64);
    v68 = v97;
    goto LABEL_41;
  }

  v68 = v97;
  if ((v67 | v63))
  {
LABEL_41:
    sub_1AF442470(v120);
    v117 = v120[12];
    v118 = v120[13];
    v119 = v120[14];
    v113 = v120[8];
    v114 = v120[9];
    v115 = v120[10];
    v116 = v120[11];
    v109 = v120[4];
    v110 = v120[5];
    v111 = v120[6];
    v112 = v120[7];
    v105 = v120[0];
    v106 = v120[1];
    v107 = v120[2];
    v108 = v120[3];
    MEMORY[0x1EEE9AC00](v69);
    *(&v86 - 10) = v62;
    *(&v86 - 9) = v68;
    v71 = v92;
    v70 = v93;
    *(&v86 - 16) = v92;
    *(&v86 - 15) = v70;
    v72 = v103;
    *(&v86 - 7) = v100;
    *(&v86 - 6) = v72;
    LODWORD(v72) = v87;
    *(&v86 - 10) = v88;
    *(&v86 - 9) = v72;
    *(&v86 - 4) = v65;
    *(&v86 - 3) = a3;
    LOBYTE(v84) = v99;
    v85 = &v105;
    v73 = v89;
    if ((v89 != -1 || v94) && (v89 & 0x80000000) == 0 && *(v102 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v89)
    {
      v77 = (*(v102 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v89);
      if (v94 == -1 || v77[2] == v94)
      {
        v78 = *(v77 + 2);
        v79 = *(*(v102 + 144) + 8 * *v77 + 32);
        if (*(v79 + 232) <= v78 && *(v79 + 240) > v78)
        {
          v80 = v102;
          v97 = **(v102 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v81 = *(v79 + 344);

          v82 = v81;
          v83 = v97;
          os_unfair_lock_lock(v82);
          ecs_stack_allocator_push_snapshot(*(v83 + 32));

          sub_1AFCC7338(v83, v79, v78, v80, v96, sub_1AFA02434, (&v86 - 12));

          ecs_stack_allocator_pop_snapshot(*(v83 + 32));
          os_unfair_lock_unlock(*(v79 + 344));

          v62 = v98;
          v73 = v89;
          v71 = v92;
          v70 = v93;
        }
      }
    }

    v74 = v96;
    if (v73 == v71 && v94 == v70)
    {
      v125[12] = v117;
      v125[13] = v118;
      v125[14] = v119;
      v125[8] = v113;
      v125[9] = v114;
      v125[11] = v116;
      v125[10] = v115;
      v125[4] = v109;
      v125[5] = v110;
      v125[7] = v112;
      v125[6] = v111;
      v125[0] = v105;
      v125[1] = v106;
      v125[3] = v108;
      v125[2] = v107;
      sub_1AFBFE6E8(v125, v96);
    }

    v75 = sub_1AF65CA4C(v74);
    *(v95 + 4) = v75;
    v104[12] = v117;
    v104[13] = v118;
    v104[14] = v119;
    v104[8] = v113;
    v104[9] = v114;
    v104[10] = v115;
    v104[11] = v116;
    v104[4] = v109;
    v104[5] = v110;
    v104[6] = v111;
    v104[7] = v112;
    v104[0] = v105;
    v104[1] = v106;
    v104[2] = v107;
    v104[3] = v108;
    sub_1AFA02474(v104, &qword_1ED7255C8, &type metadata for MaterialRuntime);
  }

  v76 = v100;
  sub_1AF9FF2DC(v103);
  if (*(a3 + 393) == 1 && qword_1EB63E310 <= 0x2540BE409)
  {
    sub_1AF9FF2DC(v103);
  }

  (*(v101 + 8))(v76, v62);
}

uint64_t sub_1AF9FEC14@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v9 = *result;
  if (!*(*result + 16) || (result = sub_1AF449CB8(a2), (v13 & 1) == 0))
  {
    v48 = 1;
LABEL_28:
    *a6 = v48;
    return result;
  }

  v14 = (*(v9 + 56) + 240 * result);
  v16 = v14[1];
  v15 = v14[2];
  v63[0] = *v14;
  v63[1] = v16;
  v63[2] = v15;
  v17 = v14[3];
  v18 = v14[4];
  v19 = v14[6];
  v63[5] = v14[5];
  v63[6] = v19;
  v63[3] = v17;
  v63[4] = v18;
  v20 = v14[7];
  v21 = v14[8];
  v22 = v14[10];
  v63[9] = v14[9];
  v63[10] = v22;
  v63[7] = v20;
  v63[8] = v21;
  v23 = v14[11];
  v24 = v14[12];
  v25 = v14[14];
  v63[13] = v14[13];
  v64 = v25;
  v63[11] = v23;
  v63[12] = v24;
  v26 = *(a3 + 520);
  v27 = *(v26 + 56);
  sub_1AF442498(v63, v57);

  os_unfair_lock_lock(v27);
  v28 = *(v26 + 16);

  os_unfair_lock_unlock(v27);

  v53 = *(v28 + 16);
  if (!v53)
  {

LABEL_33:
    result = sub_1AF644CB8(v63);
    v48 = *(&v64 + 1) != a5;
    goto LABEL_28;
  }

  v49 = a5;
  v51 = a6;
  v29 = 0;
  v30 = a7;
  v66 = *(&v63[0] + 1);
  v52 = a4;
  v50 = (a4 + 32);
  while (1)
  {
    v31 = v28 + 32 + 96 * v29;
    v32 = *(v31 + 48);
    v65[2] = *(v31 + 32);
    v65[3] = v32;
    v33 = *(v31 + 80);
    v65[4] = *(v31 + 64);
    v65[5] = v33;
    v34 = *(v31 + 16);
    v65[0] = *v31;
    v65[1] = v34;
    if (!*(v66 + 16) || (sub_1AF419A14(v65), (v35 & 1) == 0))
    {
      v36 = (*(a8 + 32))(v30, a8);
      v37 = v36;
      v54 = HIDWORD(v36) & 1;
      v38 = *(a8 + 24);
      if (v38(v30, a8) == 0xFFFFFFFFLL || (v39 = v38(v30, a8), sub_1AF3CB184(v39, v55), v60 = v55[4], v61 = v55[5], v62 = v56, v57[0] = v55[0], v57[1] = v55[1], v58 = v55[2], v59 = v55[3], !*(&v55[0] + 1)))
      {
        v40 = v54;
      }

      else
      {
        v40 = BYTE12(v58);
        v37 = DWORD2(v58);
        sub_1AFA02474(v57, &qword_1ED7220C0, &type metadata for Material);
      }

      v30 = a7;
      if (((v40 & (v37 == 0)) != 0 || (v65[0].i16[0] & 0x5000) == 0) && ((v65[0].i16[0] & 0x1800) != 0x1000 || v40 & (v37 == 0)))
      {
        break;
      }
    }

LABEL_5:
    if (++v29 == v53)
    {

      a6 = v51;
      a5 = v49;
      goto LABEL_33;
    }
  }

  if (v52 && (v42 = *(v52 + 16)) != 0)
  {
    v43 = *&v63[0];
    v44 = v50;
    while (*(v43 + 16))
    {
      v45 = sub_1AF449CB8(*v44);
      if ((v46 & 1) == 0)
      {
        break;
      }

      if (!*(*(*(v43 + 56) + 8 * v45) + 16))
      {
        break;
      }

      sub_1AF419A14(v65);
      if ((v47 & 1) == 0)
      {
        break;
      }

      v44 += 2;
      if (!--v42)
      {
        goto LABEL_5;
      }
    }

    result = sub_1AF644CB8(v63);
  }

  else
  {
    sub_1AF644CB8(v63);
  }

  *v51 = 1;
  return result;
}

uint64_t sub_1AF9FEFB4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, unsigned int a8, __int128 *a9, uint64_t a10, uint64_t a11)
{
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_1AF449CB8(a2), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 240 * v16);
    v20 = v18[1];
    v19 = v18[2];
    v88 = *v18;
    v89 = v20;
    v90 = v19;
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    v94 = v18[6];
    v93 = v23;
    v92 = v22;
    v91 = v21;
    v24 = v18[7];
    v25 = v18[8];
    v26 = v18[9];
    v98 = v18[10];
    v97 = v26;
    v96 = v25;
    v95 = v24;
    v27 = v18[11];
    v28 = v18[12];
    v29 = v18[13];
    v102 = v18[14];
    v101 = v29;
    v100 = v28;
    v99 = v27;
    v30 = v18[13];
    v85 = v18[12];
    v86 = v30;
    v87 = v18[14];
    v31 = v18[9];
    v81 = v18[8];
    v82 = v31;
    v32 = v18[11];
    v83 = v18[10];
    v84 = v32;
    v33 = v18[5];
    v77 = v18[4];
    v78 = v33;
    v34 = v18[7];
    v79 = v18[6];
    v80 = v34;
    v35 = v18[1];
    v73 = *v18;
    v74 = v35;
    v36 = v18[3];
    v75 = v18[2];
    v76 = v36;
    sub_1AF442498(&v88, v72);
  }

  else
  {
    sub_1AF88E91C(&v73);
  }

  v56[12] = v85;
  v56[13] = v86;
  v56[14] = v87;
  v56[8] = v81;
  v56[9] = v82;
  v56[10] = v83;
  v56[11] = v84;
  v56[4] = v77;
  v56[5] = v78;
  v56[6] = v79;
  v56[7] = v80;
  v56[0] = v73;
  v56[1] = v74;
  v56[2] = v75;
  v56[3] = v76;
  sub_1AF644CB8(v56);
  sub_1AF88E91C(&v73);
  sub_1AF9FB74C(&v73, a4, a5, a6, a7, a8, a10, a11);
  v100 = v85;
  v101 = v86;
  v102 = v87;
  v96 = v81;
  v97 = v82;
  v99 = v84;
  v98 = v83;
  v92 = v77;
  v93 = v78;
  v95 = v80;
  v94 = v79;
  v88 = v73;
  v89 = v74;
  v91 = v76;
  v90 = v75;
  sub_1AF442498(&v88, v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v72[0] = *a1;
  sub_1AF858C2C(&v88, a2, isUniquelyReferenced_nonNull_native);
  *a1 = *&v72[0];
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v65 = v81;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v60 = v76;
  nullsub_106();
  v38 = a9[13];
  v72[12] = a9[12];
  v72[13] = v38;
  v72[14] = a9[14];
  v39 = a9[9];
  v72[8] = a9[8];
  v72[9] = v39;
  v40 = a9[11];
  v72[10] = a9[10];
  v72[11] = v40;
  v41 = a9[5];
  v72[4] = a9[4];
  v72[5] = v41;
  v42 = a9[7];
  v72[6] = a9[6];
  v72[7] = v42;
  v43 = a9[1];
  v72[0] = *a9;
  v72[1] = v43;
  v44 = a9[3];
  v72[2] = a9[2];
  v72[3] = v44;
  v45 = v70;
  a9[12] = v69;
  a9[13] = v45;
  a9[14] = v71;
  v46 = v66;
  a9[8] = v65;
  a9[9] = v46;
  v47 = v68;
  a9[10] = v67;
  a9[11] = v47;
  v48 = v62;
  a9[4] = v61;
  a9[5] = v48;
  v49 = v64;
  a9[6] = v63;
  a9[7] = v49;
  v50 = v58;
  *a9 = v57;
  a9[1] = v50;
  v51 = v60;
  a9[2] = v59;
  a9[3] = v51;
  return sub_1AFA02474(v72, &qword_1ED7255C8, &type metadata for MaterialRuntime);
}

void sub_1AF9FF2DC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v493 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v17 = &v301 - v16;
  if (v18)
  {
    v19 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    v21 = *(v7 + 32);
    v20 = *(v7 + 36);
    v22 = v21 == 0xFFFFFFFFLL && v20 == 0;
    v23 = v22;
    if (v22 || (v21 & 0x80000000) != 0 || *(v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v21 || (v34 = (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(v7 + 32)), v20 != -1) && v34[2] != v20 || *(*(*(v8 + 144) + 8 * *v34 + 32) + 120) == 1)
    {
      v329 = v10;
      LODWORD(v330) = v23;
      v331 = v21;
      v337 = v20;
      v338 = v7;
      v326 = v15;
      v327 = v19;
      v328 = v14;
      v333 = v13;
      v334 = v1;
      *&v336 = v11;
      *&v335 = v12;
      v339 = v8;
      v332 = v9;
      v24 = *(v7 + 64);
      v368[0] = *(v7 + 48);
      v368[1] = v24;
      v369 = *(v7 + 80);
      v25 = *(v3 + 656);
      v456[6] = *(v3 + 640);
      v456[7] = v25;
      v457[0] = *(v3 + 672);
      v26 = *(v3 + 592);
      v456[2] = *(v3 + 576);
      v456[3] = v26;
      v27 = *(v3 + 624);
      v456[4] = *(v3 + 608);
      v456[5] = v27;
      v28 = *(v3 + 560);
      v456[0] = *(v3 + 544);
      v456[1] = v28;
      *(v457 + 9) = *(v3 + 681);
      if (sub_1AF448314(v456) == 1)
      {
        goto LABEL_212;
      }

      v29 = *(&v456[0] + 1);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 152);
      swift_retain_n();
      swift_unknownObjectRetain();
      v32 = v31(ObjectType, v29);
      swift_unknownObjectRelease();
      v33 = sub_1AFA01B54(DWORD2(v368[0]) | (BYTE12(v368[0]) << 32), v32 & 0xFFFFFFFFFFLL);
      if ((~v33 & 0xFF00000000) == 0)
      {
LABEL_12:

        return;
      }

      v35 = v339;
      v325 = v33;
      sub_1AF6B06C0(v339, v368, v33 & 0xFFFFFFFFFFLL, v458);
      v452 = v458[2];
      v453 = v458[3];
      v454 = v458[4];
      v455 = v458[5];
      v450 = v458[0];
      v451 = v458[1];
      if (*&v458[0])
      {
        v36 = *&v458[5];
      }

      else
      {
        v36 = 0;
      }

      v346 = 0;
      v37 = v338;
      sub_1AF68A8E0(v338, &v390);
      v38 = v21 | (v337 << 32);
      v324 = v36;
      v39 = sub_1AF68580C(v38, v35, &v346, v37, v36);
      v41 = v40;
      sub_1AF688940(v37);
      if ((v41 & 1) != 0 || v39 < 1 || (v321 = v39, v322 = 0, v323 = v38, v43 = *(v37 + 8), v42 = *(v37 + 12), v44 = v43 | (v42 << 32), (v45 = sub_1AF3CD020(v44)) == 0))
      {

        sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);

        return;
      }

      v46 = v45;
      v47 = sub_1AF3CD0F8(v43 | (v42 << 32));
      v318 = v48;
      v320 = v43;
      if (v48)
      {
        v314 = 0;
        v49 = 0;
        v50 = 0;
        v317 = 0;
      }

      else
      {
        if ((v346 & 1) == 0)
        {
          if (!*&v458[0])
          {

            goto LABEL_12;
          }

          v364 = *(&v458[2] + 8);
          v365 = *(&v458[3] + 8);
          v366 = *(&v458[4] + 8);
          v361 = *&v458[0];
          v367 = *(&v458[5] + 1);
          v362 = *(v458 + 8);
          v363 = *(&v458[1] + 8);
          v392 = v452;
          v393 = v453;
          v394 = v454;
          v395 = v455;
          v390 = v450;
          v391 = v451;
          v106 = v47;
          sub_1AF5DD298(&v390, &v373);
          v317 = v106;
          v49 = sub_1AFA019FC(v106);
          v50 = v107;
          v109 = v108;
          sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
          if (v109)
          {

            sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
            return;
          }

          v314 = v50 - v49 != v324;
          v315 = 0;
LABEL_31:
          v312 = v50;
          v313 = v49;
          v319 = v44;
          v51 = *(v3 + 656);
          v448[6] = *(v3 + 640);
          v448[7] = v51;
          v449[0] = *(v3 + 672);
          *(v449 + 9) = *(v3 + 681);
          v52 = *(v3 + 592);
          v448[2] = *(v3 + 576);
          v448[3] = v52;
          v53 = *(v3 + 624);
          v448[4] = *(v3 + 608);
          v448[5] = v53;
          v54 = *(v3 + 560);
          v448[0] = *(v3 + 544);
          v448[1] = v54;
          if (sub_1AF448314(v448) != 1)
          {
            v55 = *(&v448[0] + 1);
            v56 = swift_getObjectType();
            v57 = *(v55 + 72);
            swift_unknownObjectRetain();
            v58 = v57(v56, v55);
            swift_unknownObjectRelease();
            v59 = v334;
            v60 = (*(v335 + 24))(v336);
            if (HIDWORD(v58))
            {
              v61 = 0;
            }

            else
            {
              v61 = v58 == -1;
            }

            v62 = v61;
            v316 = v62;
            v63 = v58;
            v64 = HIDWORD(v58);
            v65 = v58;
            v66 = HIDWORD(v58);
            if (v61)
            {
              v63 = v320;
              v64 = v42;
              v65 = v60;
              v66 = HIDWORD(v60);
            }

            LODWORD(v320) = v65;
            v345 = __PAIR64__(v64, v63);
            v67 = v339;
            if (!*(v46 + 16) || (v68 = sub_1AF449CB8(v63 | (v64 << 32)), (v69 & 1) == 0))
            {

              sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);

              return;
            }

            *&v311 = v66;
            v70 = (*(v46 + 56) + 240 * v68);
            v72 = v70[1];
            v71 = v70[2];
            v418 = *v70;
            v419 = v72;
            v420 = v71;
            v73 = v70[3];
            v74 = v70[4];
            v75 = v70[5];
            v424 = v70[6];
            v423 = v75;
            v422 = v74;
            v421 = v73;
            v76 = v70[7];
            v77 = v70[8];
            v78 = v70[9];
            v428 = v70[10];
            v427 = v78;
            v426 = v77;
            v425 = v76;
            v79 = v70[11];
            v80 = v70[12];
            v81 = v70[13];
            v432 = v70[14];
            v431 = v81;
            v430 = v80;
            v429 = v79;
            sub_1AF442498(&v418, &v390);

            v445 = v430;
            v446 = v431;
            v447 = v432;
            v441 = v426;
            v442 = v427;
            v444 = v429;
            v443 = v428;
            v437 = v422;
            v438 = v423;
            v440 = v425;
            v439 = v424;
            v433 = v418;
            v434 = v419;
            v436 = v421;
            v435 = v420;
            v82 = *(v67 + 184);

            v83 = v322;
            v84 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v82);

            *(v84 + 368) = v58;
            v85 = v333 + 2;
            v310 = v333[2];
            v310(v17, v59, v336);
            if (swift_dynamicCast())
            {
              v86 = v391.i64[1];
              v87 = v392.i64[0];
              v88 = sub_1AF3CA3E4(v390);
              if (v89)
              {
                if (v88)
                {
                  if ((v86 & 0x8000000000000000) == 0)
                  {
                    v90 = *(v88 + 40);
                    if (v86 < *(v90 + 16))
                    {
                      v333 = v85;
                      v91 = (v90 + 176 * v86);
                      v92 = v91[2];
                      v93 = v91[3];
                      v492[2] = v91[4];
                      v492[1] = v93;
                      v492[0] = v92;
                      v94 = v91[5];
                      v95 = v91[6];
                      v96 = v91[7];
                      v492[6] = v91[8];
                      v492[5] = v96;
                      v492[4] = v95;
                      v492[3] = v94;
                      v97 = v91[9];
                      v98 = v91[10];
                      v99 = v91[11];
                      v492[10] = v91[12];
                      v492[9] = v99;
                      v492[8] = v98;
                      v492[7] = v97;
                      v100 = v84;
                      v101 = v88;

                      sub_1AF6E52F0(v492, &v390);
                      sub_1AFB44B0C(v101, v100, v3);

                      sub_1AFB499A4(v492, v100, v87);
                      v102 = *(v101 + 16);
                      v103 = *(v101 + 24);

                      sub_1AFB49A68(&v433, v102, v103, v100);
                      sub_1AF6E534C(v492);

                      v84 = v100;

                      DWORD2(v311) = 1;
                      v104 = v320;
                      v105 = v311;
                      goto LABEL_61;
                    }
                  }

                  sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                }

                else
                {

                  sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                }
              }

              else
              {

                sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
              }

              v402 = v445;
              v403 = v446;
              v404 = v447;
              v398 = v441;
              v399 = v442;
              v401 = v444;
              v400 = v443;
              v394 = v437;
              v395 = v438;
              v397 = v440;
              v396 = v439;
              v390 = v433;
              v391 = v434;
              v393 = v436;
              v392 = v435;
              sub_1AF644CB8(&v390);
              return;
            }

            v333 = v85;

            *(v84 + 232) = *(&v418 + 1);

            v104 = v320;
            v105 = v311;
            v111 = v320 != -1 || v311 != 0;
            DWORD2(v311) = v111;
LABEL_61:
            v112 = v104 | (v105 << 32);
            v113 = v339;
            v114 = sub_1AF67EA08(v112, v339);
            v115 = BYTE2(v431);
            v116 = v431;
            *(v84 + 120) = v430;
            *(v84 + 224) = v116;
            *(v84 + 225) = v115;
            v370[0] = v435;
            v370[1] = v436;
            v370[2] = v437;
            v370[3] = v438;
            v370[4] = v439;
            v370[5] = v440;
            v371 = v441;
            v117 = sub_1AF894900(v370);
            MEMORY[0x1EEE9AC00](v117);
            *(&v301 - 4) = v113;
            *(&v301 - 3) = v3;
            LOBYTE(v299) = v332;
            v300 = v84;
            sub_1AF9FA5F4(v112, sub_1AFA024E4, (&v301 - 6));
            v322 = v83;
            sub_1AF3C9244(v319, v459);
            if (v461)
            {
              v118 = 0;
            }

            else
            {
              v119 = v460[2];
              v120 = v460[1];
              v494 = vld2_f32(v459);
              v121 = v460;
              v122 = *v121;
              v123 = vextq_s8(v120, v120, 8uLL);
              v124 = vextq_s8(v119, v119, 0xCuLL);
              v125 = vextq_s8(v120, v120, 0xCuLL);
              v126 = vextq_s8(v119, v119, 8uLL);
              v127 = vextq_s8(v119, v119, 4uLL);
              v128 = vextq_s8(v120, v120, 4uLL);
              v129 = vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v122, v122, 8uLL), vmlaq_f32(vmulq_f32(v124, vnegq_f32(v128)), v127, v125)), vmlaq_f32(vmulq_f32(v126, vnegq_f32(v125)), v124, v123), vextq_s8(v122, v122, 4uLL)), vmlaq_f32(vmulq_f32(v127, vnegq_f32(v123)), v126, v128), vextq_s8(v122, v122, 0xCuLL));
              v127.i64[0] = vextq_s8(v129, v129, 8uLL).u64[0];
              v118 = vaddv_f32(vsub_f32(vmul_f32(v494.val[0], vzip1_s32(*v129.i8, *v127.f32)), vmul_f32(v494.val[1], vzip2_s32(*v129.i8, *v127.f32)))) < 0.0;
            }

            v131 = v338;
            v130 = v339;
            v132 = v335;
            *(v84 + 152) = v118;
            if (v114 & DWORD2(v311))
            {
LABEL_76:
              if ((BYTE2(v426) & 7) != 0)
              {
                v486[0] = xmmword_1AFE90AB0;
                v486[1] = xmmword_1AFE90AC0;
                v487 = -64;
                sub_1AF88BB90(v486, 6, 0);
              }

              v140 = sub_1AF3CD1CC(v319);
              if ((v140 & 0x100000000) == 0 || (v140 = sub_1AF3CD1CC(v323), (v140 & 0x100000000) == 0))
              {
                *(v84 + 24) = v140;
              }

              v141 = sub_1AFB948C0();
              v142 = sub_1AFB7A4DC(v141);
              if (*&v458[0])
              {
                v359 = *(&v458[4] + 8);
                v358 = *(&v458[3] + 8);
                v357 = *(&v458[2] + 8);
                v354 = *&v458[0];
                v360 = *(&v458[5] + 1);
                v355 = *(v458 + 8);
                v356 = *(&v458[1] + 8);
                if (v330 || (v331 & 0x80000000) != 0 || *(*(&v358 + 1) + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v331 || (v143 = v142, v144 = *(&v359 + 1), v145 = (*(*(&v358 + 1) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v331), v146 = *(v145 + 2), v337 != -1) && v145[2] != v337)
                {
LABEL_213:
                  *&v373 = 0;
                  *(&v373 + 1) = 0xE000000000000000;

                  sub_1AF68A8E0(v131, &v390);
                  sub_1AFA027A0(v458, &v390, &qword_1ED725EA0, &type metadata for QueryResult);
                  sub_1AFDFE218();
                  v390 = v373;
                  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
                  v298 = sub_1AF656F38();
                  MEMORY[0x1B2718AE0](v298);

                  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
                  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
                  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

                  sub_1AF688940(v131);
                  sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                  LODWORD(v300) = 0;
                  v299 = 194;
                  goto LABEL_214;
                }

                v147 = *(*(*(&v358 + 1) + 144) + 8 * *v145 + 32);
                v148 = *(v147 + 48);
                v149 = (v148 + 32);
                v150 = *(v148 + 16) + 1;
                do
                {
                  if (!--v150)
                  {
                    goto LABEL_213;
                  }

                  v151 = v149 + 5;
                  v152 = *v149;
                  v149 += 5;
                }

                while (v152 != &type metadata for EmitterRuntime);
                v153 = &(*(v151 - 2))[53 * v146] + *(v147 + 128);

                sub_1AF68A8E0(v131, &v390);
                sub_1AFA027A0(v458, &v390, &qword_1ED725EA0, &type metadata for QueryResult);
                v154 = v153;
                v155 = v322;
                sub_1AFB96830(v154, v143, v3, v144, v131, &v354, v143);
                v322 = v155;
                v130 = v339;
                v132 = v335;
                sub_1AF688940(v131);

                sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
              }

              sub_1AF3CB0C0(v323, &v373);
              v156 = v336;
              if (!*(&v376 + 1))
              {
                sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);

                sub_1AFA02474(&v373, &qword_1ED722AC0, &type metadata for EmitterRuntime);
LABEL_209:
                v372[12] = v445;
                v372[13] = v446;
                v372[14] = v447;
                v372[8] = v441;
                v372[9] = v442;
                v372[11] = v444;
                v372[10] = v443;
                v372[4] = v437;
                v372[5] = v438;
                v372[6] = v439;
                v372[7] = v440;
                v372[0] = v433;
                v372[1] = v434;
                v372[2] = v435;
                v372[3] = v436;
                sub_1AF644CB8(v372);
                return;
              }

              sub_1AF9FA090(&v373, &v390);
              LODWORD(v337) = v408;
              if (v408 == 1)
              {
                v309 = v84;
                v157 = v413;
                v158 = v338;
                if (v413)
                {
                  v159 = v409;
                  if (v409)
                  {
                    v320 = v414;
                    v330 = v410;
                    v331 = v415;
                    v160 = v411;
                    Strong = swift_unknownObjectUnownedLoadStrong();
                    if (Strong)
                    {
                      v162 = Strong;
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      if (sub_1AF12E2A0(v162))
                      {
                        v308 = v162;
                        v163 = v160;
                        CFXBufferAllocatorPerFrameAllocateWithLength(*(v3 + 232), v160);
                        v307 = v164;
                        v166 = v165;
                        CFXBufferAllocatorPerFrameAllocateWithLength(*(v3 + 232), v331);
                        v306 = v167;
                        v169 = v168;
                        sub_1AF7180FC();

                        v170 = v322;
                        v172 = sub_1AF6F3F0C(v311, v171);
                        v322 = v170;
                        v303 = v163;
                        if (v170)
                        {
                          swift_unexpectedError();
                          __break(1u);
                          return;
                        }

                        v173 = v172;
                        v174 = HIDWORD(v169);
                        v175 = v169;
                        v176 = v166;
                        v304 = v174;
                        v305 = HIDWORD(v166);
                        swift_getObjectType();
                        v177 = sub_1AFDFCEC8();
                        [v173 pushDebugGroup_];

                        sub_1AF6F3BD8(v178, v179);
                        swift_unknownObjectRelease();
                        v302 = v175;
                        v180 = v306;
                        sub_1AF471F18(v157, v320, v331, v306, v175, 0);
                        v331 = v176;
                        v181 = v307;
                        sub_1AF471F18(v159, v330, v303, v307, v176, 0);
                        [v173 popDebugGroup];

                        swift_unknownObjectRelease();
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        v413 = v180;
                        v414 = v302;
                        v415 = v304;
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease_n();
                        swift_unknownObjectRelease();

                        v409 = v181;
                        v410 = v331;
                        v411 = v305;
                        v158 = v338;
                        v130 = v339;
                        v132 = v335;
                        v156 = v336;
                      }

                      else
                      {
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                      }
                    }
                  }
                }

                v84 = v309;
              }

              else
              {
                v158 = v338;
              }

              v340 = v321;
              v341 = xmmword_1AFE21110;
              v342 = 0u;
              v343 = 0u;
              v344 = 0u;
              v182 = v130;
              (*(v132 + 80))(v84, &v340, v130, v3, v332, v156, v132);
              v183 = v413;
              if (v413)
              {
                v184 = v84;
                v331 = v415;
                v185 = v416;
                v186 = v409;
                v187 = v410;
                v188 = v414;
                v189 = v412;
                v190 = v337;
                if (!v337)
                {
                  v185 = 0;
                }

                v191 = (v410 + v412 * v185) | (v412 << 32);
                if (v343 == 0)
                {
                  v330 = v412 << 32;
                  v481 = v409;
                  v482 = v191;
                  v484 = 0;
                  v483 = 0;
                  v485 = 64;
                  swift_unknownObjectRetain();
                  sub_1AF88BB90(&v481, 4, 0);
                  v474[0] = v183;
                  v474[1] = v188;
                  v474[2] = v331;
                  v474[3] = 0;
                  v475 = 0;
                  sub_1AF88BB90(v474, 5, 0);
                  v192 = v416;
                  if (!v190)
                  {
                    v192 = 0;
                  }

                  v193 = (v187 + v192 * v189);
                  v84 = v184;
                  v182 = v339;
                  v476 = v186;
                  v477 = v193 | v330;
                  v479 = 0;
                  v478 = 0;
                  v480 = 64;
                  sub_1AF88BB90(&v476, 4, 0);
                  v194 = v474;
                }

                else
                {
                  v481 = v409;
                  v482 = v191;
                  v484 = 0;
                  v483 = 0;
                  v485 = 64;
                  swift_unknownObjectRetain();
                  v84 = v184;
                  sub_1AF88BB90(&v481, 4, 0);
                  sub_1AF88BB90(&v481, 4, 0);
                  sub_1AF88BB90(&v481, 4, 0);
                  v476 = v183;
                  v477 = v188;
                  v478 = v331;
                  v479 = 0;
                  v480 = 0;
                  sub_1AF88BB90(&v476, 5, 0);
                  sub_1AF88BB90(&v476, 5, 0);
                  v194 = &v476;
                }

                sub_1AF88BB90(v194, 5, 0);
                swift_unknownObjectRelease();
                v158 = v338;
                v132 = v335;
                v156 = v336;
              }

              sub_1AFB948D8();
              v198 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v195, v195), v195, 0xCuLL), vnegq_f32(v197)), v195, vextq_s8(vuzp1q_s32(v197, v197), v197, 0xCuLL));
              v200 = vmulq_f32(v199, vextq_s8(vuzp1q_s32(v198, v198), v198, 0xCuLL));
              v201 = vmulq_f32(v199, v199);
              v202 = sqrtf(v201.f32[2] + vaddv_f32(*v201.f32));
              v203 = *(v3 + 232);
              v373 = v199;
              v374 = v197;
              if ((v200.f32[2] + vaddv_f32(*v200.f32)) >= 0.0)
              {
                v204 = v202;
              }

              else
              {
                v204 = -v202;
              }

              v375 = v195;
              v376 = v196;
              *&v377 = v204;
              v205 = CFXBufferAllocatorPerFrameAllocateWithBytes(v203, &v373, 0x50uLL);
              v207 = v205;
              v208 = v206;
              if ((BYTE8(v311) & 1) == 0)
              {
                v472[0] = v205;
                v472[1] = v206;
                v472[3] = 0;
                v472[2] = 0;
                v473 = 64;
                sub_1AF88BB90(v472, 3, 0);
              }

              v320 = v341;
              v311 = v343;
              LODWORD(v331) = v343 == 0;
              v470[0] = v207;
              v470[1] = v208;
              v470[3] = 0;
              v470[2] = 0;
              v471 = 64;
              sub_1AF88BB90(v470, 3, 0);
              v209 = v334;
              v330 = *(v132 + 64);
              v210 = (v330)(v156, v132);
              v211 = *v158;

              v212 = v210;
              v213 = v322;
              v214 = sub_1AF67D8F0(v323, v211, v212);

              if (v214)
              {
                v215 = (v330)(v156, v335);
                v216 = v405;
                if (!*(v405 + 16) || ((v318 & 1) == 0 ? (v217 = 256) : (v217 = 0), v218 = sub_1AF41B2A8(v217 & 0xFFFFFF00 | v215), (v219 & 1) == 0))
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v223 = "missing prevNext buffer";
                  v224 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    v296 = v224;
                    swift_once();
                    v224 = v296;
                  }

                  *&v373 = 0;
                  v225 = 0xD00000000000001BLL;
                  goto LABEL_134;
                }

                v220 = (*(v216 + 56) + 16 * v218);
                v222 = *v220;
                v221 = v220[1];
                v310(v326, v334, v156);
                if (swift_dynamicCast())
                {
                  *(v84 + 32) = v222;
                  *(v84 + 40) = v221;
                  *(v84 + 48) = 1;
                  *(v84 + 56) = v321;
                }

                else
                {
                  v468[0] = v222;
                  v468[1] = v221;
                  v468[3] = 0;
                  v468[2] = 0;
                  v469 = 64;
                  if ((v331 & 1) == 0)
                  {
                    sub_1AF88BB90(v468, 9, 0);
                  }

                  sub_1AF88BB90(v468, 9, 0);
                }

                v209 = v334;
              }

              v310(v328, v209, v156);
              if (swift_dynamicCast())
              {
                v226 = v325;
                if (v379 <= 1)
                {
                  v227 = v321;
                  if (*(&v378 + 1))
                  {
                    goto LABEL_159;
                  }

                  if (v406)
                  {
                    v228 = v377;
                    v229 = DWORD1(v377);
                    v230 = DWORD2(v377);
                    LODWORD(v333) = HIDWORD(v377);
                    v231 = v378;
                    v466[0] = v406;
                    v466[1] = v407;
                    v466[3] = 0;
                    v466[2] = 0;
                    v467 = 64;
                    sub_1AF88BB90(v466, 13, 0);
                    v232 = 0;
                    v233 = 0;
                    *(v84 + 112) = 0x100000001;
                    if (!v228)
                    {
                      v233 = v229 != -1 || v230 != 0;
                      v232 = v333 != -1 || v231 != 0;
                    }

                    v320 += v232 + v233;
                    *&v341 = v320;
                    v182 = v339;
                    v226 = v325;
                    goto LABEL_158;
                  }

                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v223 = "PrepareIndirectDraw";
                  v224 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    v297 = v224;
                    swift_once();
                    v224 = v297;
                  }

                  *&v373 = 0;
                  v225 = 0xD000000000000017;
LABEL_134:
                  sub_1AF0D4F18(v224, &v373, v225, v223 | 0x8000000000000000);

                  sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                  sub_1AF58D38C(&v390);
                  v385 = v445;
                  v386 = v446;
                  v387 = v447;
                  v381 = v441;
                  v382 = v442;
                  v384 = v444;
                  v383 = v443;
                  v377 = v437;
                  v378 = v438;
                  v380 = v440;
                  v379 = v439;
                  v373 = v433;
                  v374 = v434;
                  v376 = v436;
                  v375 = v435;
                  sub_1AF644CB8(&v373);
                  return;
                }
              }

              else
              {
                v226 = v325;
              }

LABEL_158:
              v227 = v321;
LABEL_159:
              *(v84 + 352) = 0;
              *(v84 + 360) = 0;
              v236 = *(&v341 + 1);
              v237 = v342;
              if (v331)
              {
                if (v337)
                {
                  v309 = v84;
                  v322 = *(&v342 + 1);
                  v310 = v342;
                  v326 = *(&v341 + 1);
                  v238 = *(v84 + 96);
                  v239 = *(v84 + 88);
                  v240 = *(v84 + 104);
                  v241 = *(v3 + 232);
                  if (*(v84 + 32))
                  {
                    LODWORD(v373) = *(v84 + 56);
                    *(&v373 + 4) = v238;
                    HIDWORD(v373) = v239;
                    v374.i32[0] = v240;
                    v333 = CFXBufferAllocatorPerFrameAllocateWithBytes(v241, &v373, 0x14uLL);
                    v328 = v242;
                    v243 = 0;
                  }

                  else
                  {
                    LODWORD(v373) = *(v84 + 80);
                    *(&v373 + 4) = __PAIR64__(v239, v238);
                    HIDWORD(v373) = v240;
                    v333 = CFXBufferAllocatorPerFrameAllocateWithBytes(v241, &v373, 0x10uLL);
                    v328 = v249;
                    v243 = 1;
                  }

LABEL_172:
                  sub_1AF7180FC();

                  v250 = sub_1AF6F4158();
                  if (v213)
                  {
                    goto LABEL_215;
                  }

                  v251 = v250;
                  v252 = swift_getObjectType();
                  swift_unknownObjectRetain();
                  v253 = sub_1AFDFCEC8();
                  [v251 pushDebugGroup_];

                  sub_1AF6F3BD8(v254, v255);
                  swift_unknownObjectRelease();
                  if (v331)
                  {
                    v256 = 648;
                    if (v243)
                    {
                      v256 = 640;
                    }

                    v257 = *(&v390 + v256);
                    if (!v257)
                    {
                      goto LABEL_184;
                    }

                    sub_1AF442324(&v390, &v373);
                    v258 = v388;
                    v259 = (v389 + 28);
                    swift_unknownObjectRetain();
                    sub_1AF58D38C(&v373);
                    sub_1AF6F458C(v258, v259 | 0x400000000, 0, 0);
                    sub_1AF442324(&v390, &v373);
                    v260 = v388;
                    v261 = (v389 + 124);
                    sub_1AF58D38C(&v373);
                    sub_1AF6F458C(v260, v261 | 0x4000000000, 0, 3);
                    sub_1AF442324(&v390, &v373);
                    v262 = v388;
                    v263 = (v389 + 188);
                    sub_1AF58D38C(&v373);
                    sub_1AF6F458C(v262, v263 | 0x4000000000, 0, 4);
                    if (v318)
                    {
                      v264 = -1;
                    }

                    else
                    {
                      v264 = v317;
                    }

                    *&v373 = __PAIR64__(v326, v320);
                    *(&v373 + 1) = __PAIR64__(v322, v310);
                    v374.i32[0] = v264;
                    type metadata accessor for indirect_draw_arguments_uniforms(0);
                  }

                  else
                  {
                    v257 = v417;
                    if (!v417)
                    {
LABEL_184:
                      [v251 popDebugGroup];

                      swift_unknownObjectRelease();
                      v84 = v309;
                      v273 = v328;
                      *(v309 + 352) = v333;
                      *(v84 + 360) = v273;
                      v226 = v325;
                      v227 = v321;
LABEL_185:
                      if (BYTE4(v226))
                      {
                        if (BYTE4(v226) != 2)
                        {
                          while (1)
                          {
                            LODWORD(v300) = 0;
                            v299 = 981;
LABEL_214:
                            sub_1AFDFE518();
                            __break(1u);
LABEL_215:
                            swift_unexpectedError();
                            __break(1u);
                          }
                        }

                        v325 = 0;
                        v274 = 1;
                      }

                      else
                      {
                        v274 = v226 == 0;
                      }

                      v275 = sub_1AFB4204C(v3);
                      sub_1AF3CCD70(v323, v462);
                      if (v463)
                      {
                        *&v276 = sub_1AF6DE28C();
                      }

                      else
                      {
                        v276 = v462[0];
                        v277 = v462[1];
                      }

                      if ((v315 & 1) == 0)
                      {
                        if (v314 && (v278 = v335, v279 = v336, v335 = v276, v336 = v277, v280 = (v330)(v279, v278), *&v276 = v335, v280))
                        {
                          if ((v337 & 1) == 0)
                          {
                            v281 = sub_1AF719044(v324);
                            if (v281)
                            {
                              v464[0] = v281;
                              v464[1] = v282;
                              v464[2] = v283;
                              v464[3] = 0;
                              v465 = 0;
                              swift_unknownObjectRetain();
                              sub_1AF88BB90(v464, 9, 0);
                              v281 = swift_unknownObjectRelease();
                            }

                            if (*&v458[0])
                            {
                              v347 = *&v458[0];
                              v350 = *(&v458[2] + 8);
                              v351 = *(&v458[3] + 8);
                              v352 = *(&v458[4] + 8);
                              v353 = *(&v458[5] + 1);
                              v348 = *(v458 + 8);
                              v349 = *(&v458[1] + 8);
                              MEMORY[0x1EEE9AC00](v281);
                              *(&v301 - 18) = v182;
                              *(&v301 - 17) = v275;
                              *(&v301 - 32) = v325;
                              *(&v301 - 124) = v274;
                              v284 = v312;
                              *(&v301 - 15) = v313;
                              *(&v301 - 14) = v284;
                              *(&v301 - 13) = v84;
                              *(&v301 - 12) = v3;
                              *(&v301 - 5) = v335;
                              *(&v301 - 4) = v285;
                              *(&v301 - 6) = v182;
                              *(&v301 - 5) = v3;
                              *(&v301 - 32) = v286;
                              *(&v301 - 3) = v338;
                              v299 = &v433;
                              LOBYTE(v300) = v287 & 1;
                              v373 = v450;
                              v374 = v451;
                              v378 = v455;
                              v377 = v454;
                              v376 = v453;
                              v375 = v452;
                              sub_1AF5DD298(&v373, v372);
                              sub_1AF9FA77C(sub_1AFA02590);
                              sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                            }

                            goto LABEL_205;
                          }
                        }

                        else if ((v337 & 1) == 0)
                        {
                          v288 = v313;
                          v289 = v312 - v313;
                          if (v312 - v313 == v324)
                          {
                            v289 = v227;
                          }

                          *(v84 + 96) = v289;
                          *(v84 + 104) = v288;
                        }
                      }

                      v290 = thread_worker_index(*&v276);
                      *&v291 = MEMORY[0x1EEE9AC00](v290);
                      *(&v301 - 6) = v291;
                      *(&v301 - 5) = v292;
                      *(&v301 - 8) = v84;
                      *(&v301 - 7) = v182;
                      *(&v301 - 6) = v3;
                      *(&v301 - 40) = v293;
                      *(&v301 - 4) = v338;
                      *(&v301 - 3) = &v433;
                      LOBYTE(v299) = v294 & 1;
                      LOBYTE(v373) = v274;
                      sub_1AF63291C(0, v275, 1, v325 | (v274 << 32), 1, sub_1AFA02560, (&v301 - 14), v295);
LABEL_205:
                      if (v316)
                      {
                        v385 = v445;
                        v386 = v446;
                        v387 = v447;
                        v381 = v441;
                        v382 = v442;
                        v384 = v444;
                        v383 = v443;
                        v377 = v437;
                        v378 = v438;
                        v380 = v440;
                        v379 = v439;
                        v373 = v433;
                        v374 = v434;
                        v376 = v436;
                        v375 = v435;
                        sub_1AFBFE6E8(&v373, v319);

                        sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                      }

                      else
                      {
                        sub_1AF6813A4(v319, v182, &v345, &v433);
                        sub_1AFA02474(v458, &qword_1ED725EA0, &type metadata for QueryResult);
                      }

                      sub_1AF58D38C(&v390);
                      goto LABEL_209;
                    }

                    sub_1AF442324(&v390, &v373);
                    v270 = v388;
                    v271 = (v389 + 28);
                    swift_unknownObjectRetain();
                    sub_1AF58D38C(&v373);
                    sub_1AF6F458C(v270, v271 | 0x400000000, 0, 0);
                    v272 = *(v309 + 208);
                    *&v373 = __PAIR64__(DWORD2(v311), v311);
                    v374 = v272;
                    type metadata accessor for indirect_draw_mesh_arguments_uniforms(0);
                  }

                  sub_1AF6F4524(&v373, 1, v252, v265, v266, v267, v268, v269);
                  sub_1AF6F458C(v333, v328, 0, 2);
                  sub_1AF6F466C(v257);
                  swift_unknownObjectRelease();
                  v182 = v339;
                  goto LABEL_184;
                }
              }

              else
              {
                LODWORD(v244) = v344 + DWORD2(v344) * v227;
                DWORD1(v244) = 1;
                *(&v244 + 1) = 1;
                *(v84 + 192) = v244;
                *(v84 + 208) = xmmword_1AFE90AD0;
                if (v337)
                {
                  v309 = v84;
                  v322 = *(&v237 + 1);
                  v310 = v237;
                  v326 = v236;
                  v245 = *(v84 + 32);
                  CFXBufferAllocatorPerFrameAllocateWithLength(*(v3 + 232), 12);
                  v333 = v246;
                  v328 = v247;
                  v243 = v245 == 0;
                  goto LABEL_172;
                }
              }

              *(v84 + 80) = v237 + *(&v237 + 1) * v227;
              LODWORD(v248) = v311 + DWORD2(v311) * v227;
              DWORD1(v248) = 1;
              *(v84 + 96) = v320 + v236 * v227;
              *(&v248 + 1) = 1;
              *(v84 + 176) = v248;
              goto LABEL_185;
            }

            v133 = v84;
            v134 = *(&v371 + 1);
            *(&v441 + 1) = MEMORY[0x1E69E7CC0];
            v135 = (*(v132 + 88))(&v433, v131, v130, v3, v332, v336, v132);
            if (!v135)
            {
LABEL_75:

              *(&v441 + 1) = v134;
              v131 = v338;
              v130 = v339;
              v84 = v133;
              goto LABEL_76;
            }

            v137 = v135;
            v138 = v136;
            if (*(&v441 + 1) >> 62)
            {
              if (!sub_1AFDFE108())
              {
                goto LABEL_71;
              }
            }

            else if (!*((*(&v441 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_71:
              if ((v114 & 1) == 0)
              {
                v490[0] = v137;
                v490[1] = v138;
                v490[3] = 0;
                v490[2] = 0;
                v491 = 64;
                sub_1AF88BB90(v490, 2, 0);
                sub_1AF88BB90(v490, 2, 0);
                sub_1AF88BB90(v490, 2, 0);
              }

              if ((BYTE8(v311) & 1) == 0)
              {
                v488[0] = v137;
                v488[1] = v138;
                v488[3] = 0;
                v488[2] = 0;
                v489 = 64;
                sub_1AF88BB90(v488, 2, 0);
              }

              goto LABEL_75;
            }

            sub_1AF490B34(v139);
            goto LABEL_71;
          }

LABEL_212:
          LODWORD(v300) = 0;
          v299 = 1347;
          goto LABEL_214;
        }

        v317 = v47;
        v314 = 0;
        v49 = 0;
        v50 = 0;
      }

      v315 = 1;
      goto LABEL_31;
    }
  }
}

uint64_t sub_1AFA017F4()
{
  result = swift_allocObject();
  *(result + 16) = -2;
  return result;
}

uint64_t sub_1AFA01844(uint64_t a1)
{
  v2 = sub_1AFA03590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA01880(uint64_t a1)
{
  v2 = sub_1AFA03590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA018BC(void *a1)
{
  sub_1AFA035E4(0, &qword_1EB641E60, sub_1AFA03590, &type metadata for FluidRenderer.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA03590();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AFA019FC(uint64_t a1)
{
  if (v1[10] >= 1)
  {
    v2 = v1[7];
    if (v2)
    {
      v4 = 0;
      v5 = 0;
      v6 = v1[5];
      v7 = v6 + 48 * v2;
      v8 = -2;
      do
      {
LABEL_4:
        v9 = v8;
        v10 = *(v6 + 40);
        v6 += 48;
        v8 = *(v10 + 24);
        if (v9 != v8 && (v5 & 1) == 0)
        {
          v11 = *(v10 + 40);
          v12 = sub_1AF621684(*(v11 + 204));
          v13 = *(v11 + 112);
          v14 = (v13 + 32);
          v15 = *(v13 + 16) + 1;
          do
          {
            if (!--v15)
            {
              goto LABEL_12;
            }

            v16 = v14 + 5;
            v17 = *v14;
            v14 += 5;
          }

          while (v17 != &type metadata for ParticleClassSpawnID);
          if (*(&(*(v16 - 2))->Kind + *(v11 + 96)) != a1)
          {
LABEL_12:
            v4 += v12;
            continue;
          }

          v5 = 1;
          if (v6 != v7)
          {
            goto LABEL_4;
          }

          return v4;
        }
      }

      while (v6 != v7);
      if (v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_1AFA01B54(uint64_t a1, uint64_t a2)
{
  v2 = BYTE4(a1);
  if (!a1 && BYTE4(a1) == 2)
  {
    if (a2)
    {
      v3 = 0;
    }

    else
    {
      v3 = BYTE4(a2) == 2;
    }

    if (v3)
    {
      a1 = 0x200000000;
    }

    else
    {
      a1 = a2;
    }

    return a1 & 0xFFFFFFFFFFLL;
  }

  if (BYTE4(a2))
  {
    if (BYTE4(a2) == 2)
    {
      return a1 & 0xFFFFFFFFFFLL;
    }

LABEL_15:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (!BYTE4(a1))
  {
    if (a1 == a2)
    {
      a1 = a1;
    }

    else
    {
      a1 = 0xFF00000000;
    }

    return a1 & 0xFFFFFFFFFFLL;
  }

  a1 = 0xFF00000000;
  if (v2 == 1)
  {
    goto LABEL_15;
  }

  return a1 & 0xFFFFFFFFFFLL;
}

uint64_t sub_1AFA01C38(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = thread_worker_index(a1);
  if (*v11 == -1)
  {
    v27 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v27 = (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v11 + 8);
  }

  v28 = *v27;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = a10;
  v31 = v25;
  v32 = v26;
  v33 = v19;
  v34 = v12;
  v35 = v13;
  v36 = a11;
  v37 = v14;
  v38 = v24;
  v39 = v23;
  v40 = v22;
  v41 = v21;
  return sub_1AF63291C(0, v20, 1, v15 | ((HIDWORD(v15) & 1) << 32), v17 - v16, sub_1AFA025F8, v30, v28);
}

unint64_t sub_1AFA01D20(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v20 = sub_1AF9C5DC8();
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = v23 - v22;
  v35 = a1;
  if (v23 != v22)
  {
    v26 = v21;
    v27 = &v20[32 * v22 + 16];
    v28 = *(a1 + 24) + a2;
    v29 = &v19[8 * v22];
    do
    {
      *(a6 + 96) = 1;
      *(a6 + 104) = v28;
      if (*(a7 + 396) == 1)
      {
        v30 = a3;
        v31 = a4;
        if (v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v34 = *(a8 + 16 * v28);
        v34.n128_u32[3] = v39;
        if (v26)
        {
          goto LABEL_6;
        }

        v30 = v34;
        v30.n128_u32[3] = 1.0;
        v31 = xmmword_1AFE90AE0;
      }

      *(v27 - 1) = v30;
      *v27 = v31;
LABEL_6:
      v32 = *(a10 + 184);

      v33 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v32);

      sub_1AFB437B0(a6);
      *v29++ = v33;

      v27 += 2;
      ++v28;
      --v24;
    }

    while (v24);
  }

  return sub_1AFB42154(*(a14 + 32), 0, *(a15 + 211), a16 & 1, v35, a11, a12);
}

unint64_t sub_1AFA01EFC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8, __n128 a9, __n128 a10)
{
  v17 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v18 = sub_1AF9C5DC8();
  v19 = *(a1 + 48);
  if ((v20 & 1) == 0)
  {
    v21 = &v18[32 * v19];
    *v21 = a9;
    v21[1] = a10;
  }

  *&v17[8 * v19] = a2;

  return sub_1AFB42154(*(a6 + 32), 0, *(a7 + 211), a8 & 1, a1, a3, a4);
}

unint64_t sub_1AFA020A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFF118();

  if (v2 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v2;
  }
}

void *sub_1AFA020FC(uint64_t a1, __int16 a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, char *))
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  v8 = v6 + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for MaterialRuntime)
    {
      result = a4(&v12, *(v9 - 2) + *(a1 + 128) + a2 * a3);
      if (v4)
      {
        return result;
      }

      return (v8 == 0);
    }
  }

  return (v8 == 0);
}

uint64_t sub_1AFA02188(uint64_t a1, __int16 a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, char *))
{
  v5 = *(a1 + 48);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      return 2;
    }

    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
  }

  while (v9 != &type metadata for MaterialRuntimeTable);
  result = a4(&var1, *(v8 - 2) + *(a1 + 128) + a2 * a3);
  if (!v4)
  {
    return var1;
  }

  return result;
}

void *sub_1AFA02210(uint64_t a1, __int16 a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t))
{
  v9 = *(a1 + 48);
  v10 = type metadata accessor for GraphScript(0);
  v11 = (v9 + 32);
  v12 = *(v9 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = *v11;
    v11 += 5;
    if (v14 == v10)
    {
      result = a4(&v16, *(a1 + 128) + *(v13 - 2) + a2 * a3);
      if (v4)
      {
        return result;
      }

      return (v12 == 0);
    }
  }

  return (v12 == 0);
}

void *sub_1AFA022C8(uint64_t a1, __int16 a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, char *))
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  v8 = v6 + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for MeshModel)
    {
      result = a4(&v12, *(v9 - 2) + *(a1 + 128) + a2 * a3);
      if (v4)
      {
        return result;
      }

      return (v8 == 0);
    }
  }

  return (v8 == 0);
}

unint64_t sub_1AFA02354()
{
  result = qword_1ED724ED8;
  if (!qword_1ED724ED8)
  {
    result = swift_getWitnessTable(")~", &type metadata for ParticleAnimationMode, v0, v1);
    atomic_store(result, &qword_1ED724ED8);
  }

  return result;
}

unint64_t sub_1AFA023A8()
{
  result = qword_1ED724A90;
  if (!qword_1ED724A90)
  {
    result = swift_getWitnessTable("a~", &type metadata for ParticleOrientationMode, v0, v1);
    atomic_store(result, &qword_1ED724A90);
  }

  return result;
}

uint64_t sub_1AFA02474(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFA03190(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFA024E4(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v2 + 128) = *(a1 + 200);
  *(v2 + 120) = *(a1 + 192);
  *(v2 + 224) = *(a1 + 208);
  *(v2 + 225) = *(a1 + 210);
  v3 = *(a1 + 112);
  v7[4] = *(a1 + 96);
  v7[5] = v3;
  v7[6] = *(a1 + 128);
  v4 = *(a1 + 48);
  v7[0] = *(a1 + 32);
  v7[1] = v4;
  v5 = *(a1 + 80);
  v7[2] = *(a1 + 64);
  v7[3] = v5;
  return sub_1AF894900(v7);
}

unint64_t sub_1AFA0264C()
{
  result = qword_1ED724130;
  if (!qword_1ED724130)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED724130);
  }

  return result;
}

uint64_t sub_1AFA026B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AFA02820(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AFA0271C(uint64_t a1)
{
  sub_1AFA02820(0, &unk_1ED724120, sub_1AFA0264C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFA027A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFA03190(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AFA02820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFA02874(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 104);
  v64 = *(a1 + 88);
  v65 = v3;
  v66 = *(a1 + 120);

  sub_1AFCC6FA4(1, 2, v52);
  v62[0] = v52[0];
  v62[1] = v52[1];
  v63 = v53;
  sub_1AF6B06C0(v2, v62, 0x200000000, v54);
  v69 = *&v54[32];
  v70 = *&v54[48];
  v71 = *&v54[64];
  v72 = *&v54[80];
  v67 = *v54;
  v68 = *&v54[16];
  if (!*v54)
  {
LABEL_30:
    sub_1AFA02DB8(v52);
  }

  v56 = *&v54[40];
  v57 = *&v54[56];
  v58 = *&v54[72];
  *v55 = *v54;
  v59 = *&v54[88];
  *&v55[8] = *&v54[8];
  *&v55[24] = *&v54[24];
  v4 = sub_1AF67EAD8(*(a1 + 32), v2);
  if (v4 >= 2)
  {
    v8 = v4;
    v9 = v5;
    v10 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v10 == 2)
    {
      v12 = 0;
    }

    else
    {
      v13 = [swift_unknownObjectRetain() contents];
      v14 = v8;
      v12 = v13 + v9;
    }

    v15 = *(&v58 + 1);
    v16 = *(*(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v11) + 8) + 32);
    ecs_stack_allocator_push_snapshot(v16);
    v17 = ecs_stack_allocator_allocate(v16, 8 * v15, 8);
    v50 = 0;
    v49 = 0;
    v51[2] = v69;
    v51[3] = v70;
    v51[4] = v71;
    v51[5] = v72;
    v51[0] = v67;
    v51[1] = v68;
    sub_1AF5DD298(v51, v48);
    v40 = v17;
    sub_1AF6BC130(v55, v15, v12, v17, &v49, &v50);
    sub_1AFA02474(v54, &qword_1ED725EA0, &type metadata for QueryResult);
    if (v15 > 0)
    {
      v43 = v57;
      if (v57)
      {
        v39 = v16;
        v18 = v58;
        v45 = *(v58 + 32);
        v19 = *(*(&v57 + 1) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v60[0] = *v55;
        v60[1] = *&v55[16];
        v41 = v56;
        v61 = *&v55[32];
        v48[2] = v69;
        v48[3] = v70;
        v48[4] = v71;
        v48[5] = v72;
        v48[0] = v67;
        v48[1] = v68;
        sub_1AF5DD298(v48, v46);
        v20 = 0;
        v42 = v19;
        do
        {
          v21 = (v41 + 48 * v20);
          v23 = *v21;
          v22 = v21[1];
          v44 = v21[2];
          v24 = *(v21 + 2);
          v25 = *(v21 + 3);
          v26 = *(v21 + 4);
          v27 = *(v21 + 5);
          if (v19)
          {
            v28 = *(v27 + 376);

            os_unfair_lock_lock(v28);
            os_unfair_lock_lock(*(v27 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v45);
          v29 = *(v18 + 64);
          v46[0] = *(v18 + 48);
          v46[1] = v29;
          v47 = *(v18 + 80);
          v30 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
          *(v18 + 48) = ecs_stack_allocator_allocate(*(v18 + 32), 48 * v30, 8);
          *(v18 + 56) = v30;
          *(v18 + 72) = 0;
          *(v18 + 80) = 0;
          *(v18 + 64) = 0;
          sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v24, v25, v26, v18);
          v31 = sub_1AF64B110(&type metadata for ParticleRibbonLength, &off_1F252D8A8, v24, v25, v26, v18);
          if (v24)
          {
            if (v26)
            {
              v32 = &v40[v44];
              do
              {
                v33 = *v32++;
                *v31 = v33;
                v31 += 8;
                --v26;
              }

              while (v26);
            }
          }

          else if (v23 != v22)
          {
            v34 = &v40[v44];
            v35 = v22 - v23;
            v36 = &v31[8 * v23];
            do
            {
              v37 = *v34++;
              *v36 = v37;
              v36 += 8;
              --v35;
            }

            while (v35);
          }

          sub_1AF630994(v18, v60, v46);
          sub_1AF62D29C(v27);
          ecs_stack_allocator_pop_snapshot(v45);
          v19 = v42;
          if (v42)
          {
            os_unfair_lock_unlock(*(v27 + 344));
            os_unfair_lock_unlock(*(v27 + 376));
          }

          ++v20;
        }

        while (v20 != v43);
        sub_1AFA02474(v54, &qword_1ED725EA0, &type metadata for QueryResult);
        v16 = v39;
      }
    }

    ecs_stack_allocator_pop_snapshot(v16);
    sub_1AFA02474(v54, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_30;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v6 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v38 = v6;
    swift_once();
    v6 = v38;
  }

  *&v51[0] = 0;
  sub_1AF0D4F18(v6, v51, 0xD000000000000017, 0x80000001AFF43A80);
  sub_1AFA02474(v54, &qword_1ED725EA0, &type metadata for QueryResult);

  return sub_1AFA02DB8(v52);
}

uint64_t sub_1AFA02DB8(uint64_t a1)
{
  sub_1AFA02E14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA02E14()
{
  if (!qword_1EB6312A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Position;
    v4[1] = &type metadata for ParticleRibbonLength;
    v4[2] = &off_1F252EE70;
    v4[3] = &off_1F252D8A8;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB6312A0);
    }
  }
}

unint64_t sub_1AFA02E90()
{
  result = qword_1EB631830;
  if (!qword_1EB631830)
  {
    result = swift_getWitnessTable(byte_1AFE8F88C, &type metadata for ParticleMeshRenderer, v0, v1);
    atomic_store(result, &qword_1EB631830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleDefaultRendererableCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleDefaultRendererableCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AFA030A8()
{
  result = qword_1EB641DC8;
  if (!qword_1EB641DC8)
  {
    result = swift_getWitnessTable(byte_1AFE90DB0, &type metadata for ParticleAnimationMode, v0, v1);
    atomic_store(result, &qword_1EB641DC8);
  }

  return result;
}

uint64_t sub_1AFA0312C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA03190(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AFA03190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AFA031E4()
{
  result = qword_1EB641DE0;
  if (!qword_1EB641DE0)
  {
    result = swift_getWitnessTable(byte_1AFE90E50, &type metadata for ParticleOrientationMode, v0, v1);
    atomic_store(result, &qword_1EB641DE0);
  }

  return result;
}

unint64_t sub_1AFA0323C()
{
  result = qword_1EB641DE8;
  if (!qword_1EB641DE8)
  {
    result = swift_getWitnessTable(byte_1AFE90E78, &type metadata for FluidRenderer, v0, v1);
    atomic_store(result, &qword_1EB641DE8);
  }

  return result;
}

unint64_t sub_1AFA03294()
{
  result = qword_1EB641DF0;
  if (!qword_1EB641DF0)
  {
    result = swift_getWitnessTable("1~", &type metadata for ParticleDefaultRendererableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641DF0);
  }

  return result;
}

unint64_t sub_1AFA032EC()
{
  result = qword_1ED7240E8;
  if (!qword_1ED7240E8)
  {
    result = swift_getWitnessTable(byte_1AFE90F50, &type metadata for ParticleDefaultRendererableCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240E8);
  }

  return result;
}

unint64_t sub_1AFA03344()
{
  result = qword_1ED7240F0;
  if (!qword_1ED7240F0)
  {
    result = swift_getWitnessTable(byte_1AFE90F78, &type metadata for ParticleDefaultRendererableCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240F0);
  }

  return result;
}

unint64_t sub_1AFA03398()
{
  result = qword_1EB641E08;
  if (!qword_1EB641E08)
  {
    result = swift_getWitnessTable(aPebp, &type metadata for ParticleSurfaceRenderer, v0, v1);
    atomic_store(result, &qword_1EB641E08);
  }

  return result;
}

unint64_t sub_1AFA033EC()
{
  result = qword_1EB641E18;
  if (!qword_1EB641E18)
  {
    result = swift_getWitnessTable(aIeeb, &type metadata for ParticleVolumetricRenderer, v0, v1);
    atomic_store(result, &qword_1EB641E18);
  }

  return result;
}

unint64_t sub_1AFA03440()
{
  result = qword_1EB641E28;
  if (!qword_1EB641E28)
  {
    result = swift_getWitnessTable(byte_1AFE8EEC0, &type metadata for ParticleAOSphereRenderer, v0, v1);
    atomic_store(result, &qword_1EB641E28);
  }

  return result;
}

unint64_t sub_1AFA03494()
{
  result = qword_1EB641E38;
  if (!qword_1EB641E38)
  {
    result = swift_getWitnessTable(byte_1AFE8EC4C, &type metadata for ParticleAOBoxRenderer, v0, v1);
    atomic_store(result, &qword_1EB641E38);
  }

  return result;
}

unint64_t sub_1AFA034E8()
{
  result = qword_1EB641E48;
  if (!qword_1EB641E48)
  {
    result = swift_getWitnessTable(byte_1AFE8F27C, &type metadata for ParticleDecalRenderer, v0, v1);
    atomic_store(result, &qword_1EB641E48);
  }

  return result;
}

unint64_t sub_1AFA0353C()
{
  result = qword_1EB641E58;
  if (!qword_1EB641E58)
  {
    result = swift_getWitnessTable(byte_1AFE8F4E0, &type metadata for ParticleGaussianRenderer, v0, v1);
    atomic_store(result, &qword_1EB641E58);
  }

  return result;
}

unint64_t sub_1AFA03590()
{
  result = qword_1EB641E68;
  if (!qword_1EB641E68)
  {
    result = swift_getWitnessTable(asc_1AFE911AC, &type metadata for FluidRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641E68);
  }

  return result;
}

void sub_1AFA035E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFA03660()
{
  result = qword_1EB641EB0;
  if (!qword_1EB641EB0)
  {
    result = swift_getWitnessTable(byte_1AFE9115C, &type metadata for FluidRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641EB0);
  }

  return result;
}

unint64_t sub_1AFA036B8()
{
  result = qword_1EB641EB8;
  if (!qword_1EB641EB8)
  {
    result = swift_getWitnessTable(byte_1AFE91184, &type metadata for FluidRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641EB8);
  }

  return result;
}

__n128 sub_1AFA03718@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF8989FC(0xD000000000000015, 0x80000001AFF439B0, 0xD000000000000018, 0x80000001AFF43B40, MEMORY[0x1E69E7CC0], v7);
  nullsub_106();
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v7[10];
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

void *sub_1AFA037BC(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    return 0;
  }

  sub_1AF3CCD70(*(a5 + 32), v20);
  if (v21)
  {
    return 0;
  }

  v12 = *(a7 + 232);
  v13[0] = v20[0];
  v13[1] = v20[1];
  v14 = a1;
  v16 = 0;
  v15 = 0;
  v17 = a2;
  v18 = a3;
  v19 = 0;
  return CFXBufferAllocatorPerFrameAllocateWithBytes(v12, v13, 0x40uLL);
}

uint64_t sub_1AFA03880(void *a1, float a2, float a3, float a4)
{
  sub_1AFA043A8(0, &qword_1EB641EE8, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA04354();
  sub_1AFDFF3F8();
  v12[15] = 0;
  sub_1AFDFE8E8();
  if (!v4)
  {
    v12[14] = 1;
    sub_1AFDFE8E8();
    v12[13] = 2;
    sub_1AFDFE8E8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AFA03A24(float a1, float a2, float a3)
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AFA03A90(float a1, float a2, float a3)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA03B24(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001AFF295C0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001AFF295C0;
  }

  else
  {
    v6 = 0x80000001AFF295A0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E68746F6F6D73;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA00000000007373;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x80000001AFF295A0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656E68746F6F6D73;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007373;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

unint64_t sub_1AFA03C04()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E68746F6F6D73;
  }
}

uint64_t sub_1AFA03C70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFA04038(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFA03C98(uint64_t a1)
{
  v2 = sub_1AFA04354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA03CD4(uint64_t a1)
{
  v2 = sub_1AFA04354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA03D10()
{
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v0 = sub_1AF89DCA8(7);
  *(v0 + 88) = sub_1AFA03718;
  *(v0 + 96) = 0;

  return v0;
}

double sub_1AFA03D70(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 4;
  *(a2 + 24) = 14;
  *&result = 1;
  *(a2 + 8) = xmmword_1AFE22A20;
  return result;
}

void sub_1AFA03D9C(float *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1AFA04168(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_1AFA03E04(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

double sub_1AFA03EC0@<D0>(uint64_t a1@<X8>)
{
  *&result = 1036831949;
  *a1 = 1036831949;
  *(a1 + 8) = 1092616192;
  return result;
}

unint64_t sub_1AFA03EEC()
{
  result = qword_1EB641EC0;
  if (!qword_1EB641EC0)
  {
    result = swift_getWitnessTable("\r|", &type metadata for ParticleVolumetricRenderer, v0, v1);
    atomic_store(result, &qword_1EB641EC0);
  }

  return result;
}

unint64_t sub_1AFA03F40(uint64_t a1)
{
  result = sub_1AFA03F68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AFA03F68()
{
  result = qword_1EB641EC8;
  if (!qword_1EB641EC8)
  {
    result = swift_getWitnessTable(byte_1AFE91264, &type metadata for ParticleVolumetricRenderer, v0, v1);
    atomic_store(result, &qword_1EB641EC8);
  }

  return result;
}

unint64_t sub_1AFA03FBC(uint64_t a1)
{
  result = sub_1AFA03FE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AFA03FE4()
{
  result = qword_1EB641ED0;
  if (!qword_1EB641ED0)
  {
    result = swift_getWitnessTable(byte_1AFE912A4, &type metadata for ParticleVolumetricRenderer, v0, v1);
    atomic_store(result, &qword_1EB641ED0);
  }

  return result;
}

uint64_t sub_1AFA04038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E68746F6F6D73 && a2 == 0xEA00000000007373;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AFF295C0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AFF295A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

float sub_1AFA04168(void *a1)
{
  sub_1AFA043A8(0, &qword_1EB641ED8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA04354();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AFDFE738();
    v2 = v9;
    v13 = 1;
    sub_1AFDFE738();
    v12 = 2;
    sub_1AFDFE738();
    (*(v6 + 8))(v8, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AFA04354()
{
  result = qword_1EB641EE0;
  if (!qword_1EB641EE0)
  {
    result = swift_getWitnessTable(byte_1AFE91420, &type metadata for ParticleVolumetricRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641EE0);
  }

  return result;
}

void sub_1AFA043A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA04354();
    v7 = a3(a1, &type metadata for ParticleVolumetricRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA04420()
{
  result = qword_1EB641EF0;
  if (!qword_1EB641EF0)
  {
    result = swift_getWitnessTable("Qz", &type metadata for ParticleVolumetricRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641EF0);
  }

  return result;
}

unint64_t sub_1AFA04478()
{
  result = qword_1EB641EF8;
  if (!qword_1EB641EF8)
  {
    result = swift_getWitnessTable(byte_1AFE91368, &type metadata for ParticleVolumetricRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641EF8);
  }

  return result;
}

unint64_t sub_1AFA044D0()
{
  result = qword_1EB641F00;
  if (!qword_1EB641F00)
  {
    result = swift_getWitnessTable(byte_1AFE91390, &type metadata for ParticleVolumetricRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB641F00);
  }

  return result;
}

uint64_t sub_1AFA04524(void *a1, unsigned int a2)
{
  sub_1AFA04E9C(0, &qword_1EB641F28, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA04E48();
  sub_1AFDFF3F8();
  v10[15] = 0;
  sub_1AFDFE8C8();
  if (!v2)
  {
    v10[14] = 1;
    sub_1AFDFE8C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AFA04690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F6C6F63;
  }

  else
  {
    v3 = 0x7974696361706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F6C6F63;
  }

  else
  {
    v5 = 0x7974696361706FLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA04734()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x7974696361706FLL;
  }
}