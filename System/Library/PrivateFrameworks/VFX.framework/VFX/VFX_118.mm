uint64_t initializeWithCopy for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

uint64_t assignWithCopy for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 initializeWithTake for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleColorOverLife(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for ParticleColorOverLife(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFA260D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFA26124@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a2;
  sub_1AFA2661C(0, &qword_1EB633AD8, sub_1AFA265C8, &type metadata for ParticleColorOverLife.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C6A0;
  v33 = xmmword_1AFE42AB0;
  v8 = _simd_pow_f4(xmmword_1AFE93380, xmmword_1AFE42AB0);
  v8.i32[3] = 0;
  *(v7 + 32) = v8;
  *(v7 + 48) = 0;
  v9 = _simd_pow_f4(xmmword_1AFE93390, v33);
  v9.i32[3] = 1.0;
  *(v7 + 64) = v9;
  *(v7 + 80) = 1048576000;
  v10 = _simd_pow_f4(xmmword_1AFE933A0, v33);
  v10.i32[3] = 1.0;
  *(v7 + 96) = v10;
  *(v7 + 112) = 1056964608;
  v11 = _simd_pow_f4(xmmword_1AFE933B0, v33);
  LODWORD(v12) = 1.0;
  v32 = v12;
  v11.i32[3] = 1.0;
  *(v7 + 128) = v11;
  *(v7 + 144) = 1061158912;
  v13 = _simd_pow_f4(xmmword_1AFE933C0, v33);
  v13.i32[3] = 0;
  *(v7 + 160) = v13;
  *(v7 + 176) = 1065353216;
  v14 = sub_1AF3C3D64(v7);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v15 = sub_1AF9D3A24(v14);
  v17 = v16;

  sub_1AF441150(a1, a1[3]);
  sub_1AFA265C8();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    LOBYTE(v37) = 0;
    *(&v37 + 1) = v43;
    BYTE3(v37) = v44;
    HIDWORD(v37) = v32;
    v38 = v15;
    v39 = v17;
    v40 = 1;
    v41 = 1;
    v42 = 0xFFFFFFFFLL;
    return sub_1AF58F86C(&v37);
  }

  else
  {
    v18 = v30;
    LOBYTE(v34) = 0;
    sub_1AF9D6798();
    sub_1AFDFE768();
    v19 = v37;
    LODWORD(v20) = HIDWORD(v37);
    v32 = v20;
    LOBYTE(v34) = 1;
    sub_1AF80A7AC();
    sub_1AFDFE768();

    v22 = v37;
    v21 = v38;
    v23 = v39;
    v36 = 2;
    v24 = sub_1AFDFE718();
    (*(v18 + 8))(v6, v31);
    v24 &= 1u;
    LOBYTE(v34) = v19;
    *(&v34 + 1) = v43;
    BYTE3(v34) = v44;
    DWORD1(v34) = v32;
    *(&v34 + 1) = v22;
    *v35 = v21;
    v35[8] = v23;
    v35[9] = v24;
    *&v35[12] = 0xFFFFFFFFLL;
    sub_1AF4425A0(&v34, &v37);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    LOBYTE(v37) = v19;
    *(&v37 + 1) = v43;
    BYTE3(v37) = v44;
    HIDWORD(v37) = v32;
    v38 = v22;
    v39 = v21;
    v40 = v23;
    v41 = v24;
    v42 = 0xFFFFFFFFLL;
    result = sub_1AF58F86C(&v37);
    v26 = *v35;
    v27 = v29;
    *v29 = v34;
    v27[1] = v26;
    *(v27 + 8) = *&v35[16];
  }

  return result;
}

unint64_t sub_1AFA265C8()
{
  result = qword_1EB633E30;
  if (!qword_1EB633E30)
  {
    result = swift_getWitnessTable(byte_1AFE93634, &type metadata for ParticleColorOverLife.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633E30);
  }

  return result;
}

void sub_1AFA2661C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFA26684()
{
  v1 = *v0;
  sub_1AF9D6924(0, &qword_1ED72F7D0, sub_1AF47BC54);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = xmmword_1AFE4C620;
    *(result + 32) = &type metadata for TransientOriginColor;
    *(result + 40) = &off_1F2569988;
    *(result + 48) = &type metadata for Color;
    v3 = (result + 56);
  }

  else
  {
    *(result + 16) = xmmword_1AFE431C0;
    *(result + 32) = &type metadata for Color;
    v3 = (result + 40);
  }

  *v3 = &off_1F252CA88;
  return result;
}

unint64_t sub_1AFA26754()
{
  result = qword_1EB642198;
  if (!qword_1EB642198)
  {
    result = swift_getWitnessTable("=X", &type metadata for ParticleColorOverLife.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642198);
  }

  return result;
}

unint64_t sub_1AFA267AC()
{
  result = qword_1EB633E20;
  if (!qword_1EB633E20)
  {
    result = swift_getWitnessTable(byte_1AFE93544, &type metadata for ParticleColorOverLife.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633E20);
  }

  return result;
}

unint64_t sub_1AFA26804()
{
  result = qword_1EB633E28;
  if (!qword_1EB633E28)
  {
    result = swift_getWitnessTable(byte_1AFE9356C, &type metadata for ParticleColorOverLife.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633E28);
  }

  return result;
}

uint64_t sub_1AFA2693C(void *a1)
{
  v3 = v1;
  sub_1AFA28F7C(0, &qword_1EB6421D8, sub_1AFA28F28, &type metadata for ParticleColorOverPosition.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA28F28();
  sub_1AFDFF3F8();
  LOBYTE(v11) = *v3;
  v13 = 0;
  sub_1AF51CB2C();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v11) = *(v3 + 1);
    v13 = 1;
    sub_1AF51DC40();
    sub_1AFDFE918();
    *&v11 = *(v3 + 4);
    v13 = 2;
    sub_1AF9D68D0();
    sub_1AFDFE918();
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = 3;
    sub_1AF80BC20();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFA26BB4()
{
  v1 = 1701080941;
  v2 = 0x7469736F706D6F63;
  if (*v0 != 2)
  {
    v2 = 1886216562;
  }

  if (*v0)
  {
    v1 = 0x4D73736572646461;
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

uint64_t sub_1AFA26C30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFA26F1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFA26C58(uint64_t a1)
{
  v2 = sub_1AFA28F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA26C94(uint64_t a1)
{
  v2 = sub_1AFA28F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA26CD0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFA27088(a2, v6);
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

double sub_1AFA26DAC@<D0>(uint64_t a1@<X8>)
{
  sub_1AFA26DF0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1AFA26DF0@<X0>(uint64_t a1@<X8>)
{
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = _simd_pow_f4(xmmword_1AFE93690, xmmword_1AFE42AB0).u32[0];
  DWORD2(v4) = 0;
  *&v4 = v3;
  HIDWORD(v4) = 1.0;
  *(v2 + 32) = v4;
  *(v2 + 48) = 0;
  v5 = _simd_pow_f4(xmmword_1AFE936A0, xmmword_1AFE42AB0);
  LODWORD(v6) = 0;
  DWORD2(v6) = 0;
  DWORD1(v6) = v5.i32[1];
  HIDWORD(v6) = 1.0;
  *(v2 + 64) = v6;
  *(v2 + 80) = 1065353216;
  v7 = sub_1AF3C3D64(v2);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v8 = sub_1AF9D3A24(v7);
  v10 = v9;

  *a1 = 259;
  *(a1 + 4) = 0;
  *(a1 + 8) = 1065353216;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1AFA26F1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D73736572646461 && a2 == 0xEB0000000065646FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1886216562 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AFA27088@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1AFA28F7C(0, &qword_1EB6421C8, sub_1AFA28F28, &type metadata for ParticleColorOverPosition.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  v29 = xmmword_1AFE42AB0;
  v9 = _simd_pow_f4(xmmword_1AFE93690, xmmword_1AFE42AB0).u32[0];
  DWORD2(v10) = 0;
  *&v10 = v9;
  HIDWORD(v10) = 1.0;
  *(v8 + 32) = v10;
  *(v8 + 48) = 0;
  v11 = _simd_pow_f4(xmmword_1AFE936A0, v29);
  LODWORD(v12) = 0;
  DWORD2(v12) = 0;
  DWORD1(v12) = v11.i32[1];
  HIDWORD(v12) = 1.0;
  *(v8 + 64) = v12;
  *(v8 + 80) = 1065353216;
  v13 = sub_1AF3C3D64(v8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v29.i64[0] = sub_1AF9D3A24(v13);

  sub_1AF441150(a1, a1[3]);
  sub_1AFA28F28();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v14 = v27;
    v15 = v28;
    v33 = 0;
    sub_1AF51CAD8();
    sub_1AFDFE768();
    v16 = v30;
    v33 = 1;
    sub_1AF51DBEC();
    sub_1AFDFE768();
    v26 = v16;
    v17 = v30;
    v33 = 2;
    sub_1AF9D6798();
    sub_1AFDFE768();
    v25 = v17;
    LOBYTE(v17) = v30;
    v18 = HIDWORD(v30);
    v33 = 3;
    sub_1AF80A7AC();
    sub_1AFDFE768();
    (*(v14 + 8))(v7, v5);

    v19 = v30;
    v20 = v31;
    v21 = v32;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    v23 = v25;
    *v15 = v26;
    *(v15 + 1) = v23;
    *(v15 + 4) = v17;
    *(v15 + 8) = v18;
    *(v15 + 16) = v19;
    *(v15 + 24) = v20;
    *(v15 + 32) = v21;
  }

  return result;
}

uint64_t sub_1AFA2745C()
{
  v1 = *(v0 + 4);
  sub_1AF9D6924(0, &qword_1ED72F7D0, sub_1AF47BC54);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = xmmword_1AFE4C620;
    *(result + 32) = &type metadata for TransientOriginColor;
    *(result + 40) = &off_1F2569988;
    *(result + 48) = &type metadata for Color;
    v3 = (result + 56);
  }

  else
  {
    *(result + 16) = xmmword_1AFE431C0;
    *(result + 32) = &type metadata for Color;
    v3 = (result + 40);
  }

  *v3 = &off_1F252CA88;
  return result;
}

unint64_t sub_1AFA27518()
{
  result = qword_1EB6421A0;
  if (!qword_1EB6421A0)
  {
    result = swift_getWitnessTable(byte_1AFE9388C, &type metadata for ParticleColorOverPosition.GradientMode, v0, v1);
    atomic_store(result, &qword_1EB6421A0);
  }

  return result;
}

uint64_t sub_1AFA2756C(void *a1, uint64_t a2)
{
  v246 = *MEMORY[0x1E69E9840];
  v4 = *a1;

  if (a2)
  {
    v5 = a1[1];

    sub_1AF3CDBEC(v5, &v235);

    v7 = *(&v236 + 1);
    if (*(&v236 + 1))
    {
      v8 = v235;
      v9 = v237;
      v10 = BYTE8(v237);
      v11 = v235 >> 8;
      v12 = v235 >> 32;
      v6.i32[0] = v236;
      v203 = v6;
    }

    else
    {
      sub_1AFA26DF0(v204);
      v8 = v204[0];
      LOBYTE(v11) = v204[1];
      LOBYTE(v12) = v204[4];
      v14.i32[0] = v205;
      v203 = v14;
      v7 = v206;
      v9 = v207;
      v10 = v208;
    }

    sub_1AF8B4B2C(v7, v9, v10, v228);

    if (v230)
    {
      v243[0] = v228[0];
      v243[1] = v228[1];
      v243[2] = v228[2];
      v244 = v229;
      v245 = v230;
      sub_1AF44222C(v243, &v235);
      sub_1AF4783C0(v243, v11, 1, &v231);
      if (v233 == 1)
      {
        sub_1AF7751B8(v228, &unk_1ED725420, &type metadata for TextureCPURuntime);

LABEL_11:
      }

      v15 = 0;
      v224 = v231;
      v225 = v232;
      v226 = v233;
      v227 = v234;
      v16 = *(a1 + 13);
      v218 = *(a1 + 11);
      v219 = v16;
      v220 = a1[15];
      sub_1AF5C92B8(&v209);
      *v248.columns[0].i64 = sub_1AFB94C78();
      v167 = v248.columns[1];
      v173 = v248.columns[0];
      v179 = v248.columns[2];
      v185 = v248.columns[3];
      v249 = __invert_f4(v248);
      v195 = v249.columns[1];
      v198 = v249.columns[0];
      v189 = v249.columns[3];
      v192 = v249.columns[2];
      if (v8 > 1u)
      {
        if (v8 == 2)
        {
          v215 = v209;
          v216 = v210;
          v217 = v211;
          sub_1AF6B06C0(v4, &v215, 0x200000000, &v235);
          if (v235)
          {
            if (v242 > 0)
            {
              v169 = v239;
              if (v239)
              {
                v49 = 0;
                v164 = v238;
                v50 = v241;
                v51 = *(v241 + 32);
                v52 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                v212 = v235;
                v213 = v236;
                v214 = v237;
                v186 = vdupq_lane_s32(v203, 0);
                v158 = v52;
                v161 = v51;
                do
                {
                  v181 = v15;
                  v53 = (v164 + 48 * v49);
                  v54 = *v53;
                  v175 = v53[1];
                  v55 = *(v53 + 2);
                  v56 = *(v53 + 3);
                  v58 = *(v53 + 4);
                  v57 = *(v53 + 5);
                  if (v52)
                  {
                    v59 = *(v57 + 376);

                    os_unfair_lock_lock(v59);
                    os_unfair_lock_lock(*(v57 + 344));
                  }

                  else
                  {
                  }

                  ecs_stack_allocator_push_snapshot(v51);
                  v60 = *(v50 + 64);
                  v221 = *(v50 + 48);
                  v222 = v60;
                  v223 = *(v50 + 80);
                  v61 = *(*(*(*(v57 + 40) + 16) + 32) + 16) + 1;
                  *(v50 + 48) = ecs_stack_allocator_allocate(*(v50 + 32), 48 * v61, 8);
                  *(v50 + 56) = v61;
                  *(v50 + 72) = 0;
                  *(v50 + 80) = 0;
                  *(v50 + 64) = 0;
                  v62 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v55, v56, v58, v50);
                  v63 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v55, v56, v58, v50);
                  v64 = v63;
                  if (v55)
                  {
                    for (; v58; --v58)
                    {
                      v66 = vabsq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v64->f32)), v195, *v64, 1), v192, *v64->f32, 2), v189, *v64->f32, 3));
                      v226(&v224, v66.f32[2] + vaddv_f32(*v66.f32));
                      if (v12 > 1u)
                      {
                        if (v12 == 2)
                        {
                          v65 = vmulq_f32(vmulq_n_f32(v67, *v203.i32), *v62);
                        }

                        else
                        {
                          v65 = vmlaq_f32(*v62, v186, vsubq_f32(v67, *v62));
                        }
                      }

                      else if (v12)
                      {
                        v65 = vaddq_f32(vmulq_n_f32(v67, *v203.i32), *v62);
                      }

                      else
                      {
                        v65 = vmulq_n_f32(v67, *v203.i32);
                      }

                      *v62++ = v65;
                      v64 += 2;
                    }
                  }

                  else if (v54 != v175)
                  {
                    v68 = v175 - v54;
                    v69 = &v63[16 * v54];
                    v70 = &v62[v54];
                    do
                    {
                      v72 = vabsq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v69->f32)), v195, *v69, 1), v192, *v69->f32, 2), v189, *v69->f32, 3));
                      v226(&v224, v72.f32[2] + vaddv_f32(*v72.f32));
                      if (v12 > 1u)
                      {
                        if (v12 == 2)
                        {
                          v71 = vmulq_f32(vmulq_n_f32(v73, *v203.i32), *v70);
                        }

                        else
                        {
                          v71 = vmlaq_f32(*v70, v186, vsubq_f32(v73, *v70));
                        }
                      }

                      else if (v12)
                      {
                        v71 = vaddq_f32(vmulq_n_f32(v73, *v203.i32), *v70);
                      }

                      else
                      {
                        v71 = vmulq_n_f32(v73, *v203.i32);
                      }

                      *v70++ = v71;
                      v69 += 2;
                      --v68;
                    }

                    while (v68);
                  }

                  v15 = v181;
                  sub_1AF630994(v50, &v212, &v221);
                  sub_1AF62D29C(v57);
                  v51 = v161;
                  ecs_stack_allocator_pop_snapshot(v161);
                  v52 = v158;
                  if (v158)
                  {
                    os_unfair_lock_unlock(*(v57 + 344));
                    os_unfair_lock_unlock(*(v57 + 376));
                  }

                  ++v49;
                }

                while (v49 != v169);
              }

              goto LABEL_177;
            }

            goto LABEL_176;
          }
        }

        else
        {
          v215 = v209;
          v216 = v210;
          v217 = v211;
          sub_1AF6B06C0(v4, &v215, 0x200000000, &v235);
          if (v235)
          {
            if (v242 > 0)
            {
              v165 = v239;
              if (v239)
              {
                v103 = 0;
                v162 = v238;
                v104 = v241;
                v105 = *(v241 + 32);
                v106 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                v212 = v235;
                v213 = v236;
                v187 = vdupq_lane_s32(v203, 0);
                v214 = v237;
                v157 = v106;
                v159 = v105;
                do
                {
                  v183 = v15;
                  v177 = v103;
                  v107 = (v162 + 48 * v103);
                  v108 = *v107;
                  v171 = v107[1];
                  v109 = *(v107 + 2);
                  v110 = *(v107 + 3);
                  v112 = *(v107 + 4);
                  v111 = *(v107 + 5);
                  if (v106)
                  {
                    v113 = *(v111 + 376);

                    os_unfair_lock_lock(v113);
                    os_unfair_lock_lock(*(v111 + 344));
                  }

                  else
                  {
                  }

                  ecs_stack_allocator_push_snapshot(v105);
                  v114 = *(v104 + 64);
                  v221 = *(v104 + 48);
                  v222 = v114;
                  v223 = *(v104 + 80);
                  v115 = *(*(*(*(v111 + 40) + 16) + 32) + 16) + 1;
                  *(v104 + 48) = ecs_stack_allocator_allocate(*(v104 + 32), 48 * v115, 8);
                  *(v104 + 56) = v115;
                  *(v104 + 72) = 0;
                  *(v104 + 80) = 0;
                  *(v104 + 64) = 0;
                  v116 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v109, v110, v112, v104);
                  v117 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v109, v110, v112, v104);
                  v118 = v117;
                  if (v109)
                  {
                    for (; v112; --v112)
                    {
                      v120 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v118->f32)), v195, *v118, 1), v192, *v118->f32, 2), v189, *v118->f32, 3).u64[0];
                      v121 = atan2f(*(&v120 + 1), *&v120);
                      v226(&v224, (v121 * 0.15915) + 0.5);
                      if (v12 > 1u)
                      {
                        if (v12 == 2)
                        {
                          v119 = vmulq_f32(vmulq_n_f32(v122, *v203.i32), *v116);
                        }

                        else
                        {
                          v119 = vmlaq_f32(*v116, v187, vsubq_f32(v122, *v116));
                        }
                      }

                      else if (v12)
                      {
                        v119 = vaddq_f32(vmulq_n_f32(v122, *v203.i32), *v116);
                      }

                      else
                      {
                        v119 = vmulq_n_f32(v122, *v203.i32);
                      }

                      *v116++ = v119;
                      v118 += 2;
                    }
                  }

                  else if (v108 != v171)
                  {
                    v123 = v171 - v108;
                    v124 = &v117[16 * v108];
                    v125 = &v116[v108];
                    do
                    {
                      v127 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v124->f32)), v195, *v124, 1), v192, *v124->f32, 2), v189, *v124->f32, 3).u64[0];
                      v128 = atan2f(*(&v127 + 1), *&v127);
                      v226(&v224, (v128 * 0.15915) + 0.5);
                      if (v12 > 1u)
                      {
                        if (v12 == 2)
                        {
                          v126 = vmulq_f32(vmulq_n_f32(v129, *v203.i32), *v125);
                        }

                        else
                        {
                          v126 = vmlaq_f32(*v125, v187, vsubq_f32(v129, *v125));
                        }
                      }

                      else if (v12)
                      {
                        v126 = vaddq_f32(vmulq_n_f32(v129, *v203.i32), *v125);
                      }

                      else
                      {
                        v126 = vmulq_n_f32(v129, *v203.i32);
                      }

                      *v125++ = v126;
                      v124 += 2;
                      --v123;
                    }

                    while (v123);
                  }

                  v15 = v183;
                  sub_1AF630994(v104, &v212, &v221);
                  sub_1AF62D29C(v111);
                  v105 = v159;
                  ecs_stack_allocator_pop_snapshot(v159);
                  v106 = v157;
                  if (v157)
                  {
                    os_unfair_lock_unlock(*(v111 + 344));
                    os_unfair_lock_unlock(*(v111 + 376));
                  }

                  v103 = v177 + 1;
                }

                while (v177 + 1 != v165);
              }

              goto LABEL_177;
            }

            goto LABEL_176;
          }
        }
      }

      else
      {
        v17 = vmulq_f32(v173, v173);
        v18 = vmulq_f32(v179, v179);
        v19 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vadd_f32(vzip1_s32(*v17.i8, *v18.i8), vzip2_s32(*v17.i8, *v18.i8))));
        if (v8)
        {
          v74 = vmulq_f32(v167, v167);
          v74.f32[0] = sqrtf(v74.f32[2] + vaddv_f32(*v74.f32));
          *v74.f32 = vceq_f32(vdup_lane_s32(*v74.f32, 0), v19);
          if (v74.i32[0] & v74.i32[1])
          {
            v200 = v19.f32[0];
            v215 = v209;
            v216 = v210;
            v217 = v211;
            sub_1AF6B06C0(v4, &v215, 0x200000000, &v235);
            if (v235)
            {
              if (v242 > 0)
              {
                v194 = v239;
                if (v239)
                {
                  v75 = 0;
                  v76 = 1.0 / v200;
                  v191 = v238;
                  v77 = v241;
                  v78 = *(v241 + 32);
                  v79 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                  v212 = v235;
                  v213 = v236;
                  v214 = v237;
                  v201 = vdupq_lane_s32(v203, 0);
                  v170 = v79;
                  v176 = v78;
                  do
                  {
                    v182 = v15;
                    v80 = (v191 + 48 * v75);
                    v81 = *v80;
                    v197 = v80[1];
                    v82 = *(v80 + 2);
                    v83 = *(v80 + 3);
                    v85 = *(v80 + 4);
                    v84 = *(v80 + 5);
                    if (v79)
                    {
                      v86 = *(v84 + 376);

                      os_unfair_lock_lock(v86);
                      os_unfair_lock_lock(*(v84 + 344));
                    }

                    else
                    {
                    }

                    ecs_stack_allocator_push_snapshot(v78);
                    v87 = *(v77 + 64);
                    v221 = *(v77 + 48);
                    v222 = v87;
                    v223 = *(v77 + 80);
                    v88 = *(*(*(*(v84 + 40) + 16) + 32) + 16) + 1;
                    *(v77 + 48) = ecs_stack_allocator_allocate(*(v77 + 32), 48 * v88, 8);
                    *(v77 + 56) = v88;
                    *(v77 + 72) = 0;
                    *(v77 + 80) = 0;
                    *(v77 + 64) = 0;
                    v89 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v82, v83, v85, v77);
                    v90 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v82, v83, v85, v77);
                    v91 = v90;
                    if (v82)
                    {
                      for (; v85; --v85)
                      {
                        v93 = vsubq_f32(*v91, v185);
                        v94 = vmulq_f32(v93, v93);
                        v226(&v224, v76 * sqrtf(v94.f32[2] + vaddv_f32(*v94.f32)));
                        if (v12 > 1u)
                        {
                          if (v12 == 2)
                          {
                            v92 = vmulq_f32(vmulq_n_f32(v95, *v203.i32), *v89);
                          }

                          else
                          {
                            v92 = vmlaq_f32(*v89, v201, vsubq_f32(v95, *v89));
                          }
                        }

                        else if (v12)
                        {
                          v92 = vaddq_f32(vmulq_n_f32(v95, *v203.i32), *v89);
                        }

                        else
                        {
                          v92 = vmulq_n_f32(v95, *v203.i32);
                        }

                        *v89++ = v92;
                        ++v91;
                      }
                    }

                    else if (v81 != v197)
                    {
                      v96 = v197 - v81;
                      v97 = &v90[16 * v81];
                      v98 = &v89[v81];
                      do
                      {
                        v100 = vsubq_f32(*v97, v185);
                        v101 = vmulq_f32(v100, v100);
                        v226(&v224, v76 * sqrtf(v101.f32[2] + vaddv_f32(*v101.f32)));
                        if (v12 > 1u)
                        {
                          if (v12 == 2)
                          {
                            v99 = vmulq_f32(vmulq_n_f32(v102, *v203.i32), *v98);
                          }

                          else
                          {
                            v99 = vmlaq_f32(*v98, v201, vsubq_f32(v102, *v98));
                          }
                        }

                        else if (v12)
                        {
                          v99 = vaddq_f32(vmulq_n_f32(v102, *v203.i32), *v98);
                        }

                        else
                        {
                          v99 = vmulq_n_f32(v102, *v203.i32);
                        }

                        *v98++ = v99;
                        ++v97;
                        --v96;
                      }

                      while (v96);
                    }

                    v15 = v182;
                    sub_1AF630994(v77, &v212, &v221);
                    sub_1AF62D29C(v84);
                    v78 = v176;
                    ecs_stack_allocator_pop_snapshot(v176);
                    v79 = v170;
                    if (v170)
                    {
                      os_unfair_lock_unlock(*(v84 + 344));
                      os_unfair_lock_unlock(*(v84 + 376));
                    }

                    ++v75;
                  }

                  while (v75 != v194);
                }

                goto LABEL_177;
              }

LABEL_176:
              sub_1AF5D15C0(&v235, &v221);
              sub_1AF7751B8(v228, &unk_1ED725420, &type metadata for TextureCPURuntime);
              sub_1AFA28B94(&v209);

              sub_1AF7751B8(&v235, &qword_1ED725EA0, &type metadata for QueryResult);
              sub_1AF7751B8(&v235, &qword_1ED725EA0, &type metadata for QueryResult);
              goto LABEL_11;
            }
          }

          else
          {
            v215 = v209;
            v216 = v210;
            v217 = v211;
            sub_1AF6B06C0(v4, &v215, 0x200000000, &v235);
            if (v235)
            {
              if (v242 > 0)
              {
                v172 = v239;
                if (v239)
                {
                  v130 = 0;
                  v166 = v238;
                  v131 = v241;
                  v132 = *(v241 + 32);
                  v133 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                  v212 = v235;
                  v213 = v236;
                  v214 = v237;
                  v188 = vdupq_lane_s32(v203, 0);
                  v160 = v133;
                  v163 = v132;
                  do
                  {
                    v184 = v15;
                    v134 = (v166 + 48 * v130);
                    v135 = *v134;
                    v178 = v134[1];
                    v136 = *(v134 + 2);
                    v137 = *(v134 + 3);
                    v139 = *(v134 + 4);
                    v138 = *(v134 + 5);
                    if (v133)
                    {
                      v140 = *(v138 + 376);

                      os_unfair_lock_lock(v140);
                      os_unfair_lock_lock(*(v138 + 344));
                    }

                    else
                    {
                    }

                    ecs_stack_allocator_push_snapshot(v132);
                    v141 = *(v131 + 64);
                    v221 = *(v131 + 48);
                    v222 = v141;
                    v223 = *(v131 + 80);
                    v142 = *(*(*(*(v138 + 40) + 16) + 32) + 16) + 1;
                    *(v131 + 48) = ecs_stack_allocator_allocate(*(v131 + 32), 48 * v142, 8);
                    *(v131 + 56) = v142;
                    *(v131 + 72) = 0;
                    *(v131 + 80) = 0;
                    *(v131 + 64) = 0;
                    v143 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v136, v137, v139, v131);
                    v144 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v136, v137, v139, v131);
                    v145 = v144;
                    if (v136)
                    {
                      for (; v139; --v139)
                      {
                        v147 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v145->f32)), v195, *v145, 1), v192, *v145->f32, 2), v189, *v145->f32, 3);
                        v148 = vmulq_f32(v147, v147);
                        v226(&v224, sqrtf(v148.f32[2] + vaddv_f32(*v148.f32)));
                        if (v12 > 1u)
                        {
                          if (v12 == 2)
                          {
                            v146 = vmulq_f32(vmulq_n_f32(v149, *v203.i32), *v143);
                          }

                          else
                          {
                            v146 = vmlaq_f32(*v143, v188, vsubq_f32(v149, *v143));
                          }
                        }

                        else if (v12)
                        {
                          v146 = vaddq_f32(vmulq_n_f32(v149, *v203.i32), *v143);
                        }

                        else
                        {
                          v146 = vmulq_n_f32(v149, *v203.i32);
                        }

                        *v143++ = v146;
                        v145 += 2;
                      }
                    }

                    else if (v135 != v178)
                    {
                      v150 = v178 - v135;
                      v151 = &v144[16 * v135];
                      v152 = &v143[v135];
                      do
                      {
                        v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v151->f32)), v195, *v151, 1), v192, *v151->f32, 2), v189, *v151->f32, 3);
                        v155 = vmulq_f32(v154, v154);
                        v226(&v224, sqrtf(v155.f32[2] + vaddv_f32(*v155.f32)));
                        if (v12 > 1u)
                        {
                          if (v12 == 2)
                          {
                            v153 = vmulq_f32(vmulq_n_f32(v156, *v203.i32), *v152);
                          }

                          else
                          {
                            v153 = vmlaq_f32(*v152, v188, vsubq_f32(v156, *v152));
                          }
                        }

                        else if (v12)
                        {
                          v153 = vaddq_f32(vmulq_n_f32(v156, *v203.i32), *v152);
                        }

                        else
                        {
                          v153 = vmulq_n_f32(v156, *v203.i32);
                        }

                        *v152++ = v153;
                        v151 += 2;
                        --v150;
                      }

                      while (v150);
                    }

                    v15 = v184;
                    sub_1AF630994(v131, &v212, &v221);
                    sub_1AF62D29C(v138);
                    v132 = v163;
                    ecs_stack_allocator_pop_snapshot(v163);
                    v133 = v160;
                    if (v160)
                    {
                      os_unfair_lock_unlock(*(v138 + 344));
                      os_unfair_lock_unlock(*(v138 + 376));
                    }

                    ++v130;
                  }

                  while (v130 != v172);
                }

                goto LABEL_177;
              }

              goto LABEL_176;
            }
          }
        }

        else
        {
          v202 = v19.f32[1];
          v215 = v209;
          v216 = v210;
          v217 = v211;
          sub_1AF6B06C0(v4, &v215, 0x200000000, &v235);
          if (v235)
          {
            if (v242 > 0)
            {
              v193 = v239;
              if (v239)
              {
                v20 = 0;
                v21 = 1.0 / v202;
                v22 = (1.0 / v202) * v179.f32[0];
                v23 = vmuls_lane_f32(1.0 / v202, *v179.f32, 1);
                v24 = vmuls_lane_f32(1.0 / v202, v179, 2);
                v190 = v238;
                v25 = v241;
                v26 = *(v241 + 32);
                v27 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                v212 = v235;
                v213 = v236;
                v214 = v237;
                v199 = vdupq_lane_s32(v203, 0);
                v168 = v27;
                v174 = v26;
                do
                {
                  v180 = v15;
                  v28 = (v190 + 48 * v20);
                  v29 = *v28;
                  v196 = v28[1];
                  v30 = *(v28 + 2);
                  v31 = *(v28 + 3);
                  v33 = *(v28 + 4);
                  v32 = *(v28 + 5);
                  if (v27)
                  {
                    v34 = *(v32 + 376);

                    os_unfair_lock_lock(v34);
                    os_unfair_lock_lock(*(v32 + 344));
                  }

                  else
                  {
                  }

                  ecs_stack_allocator_push_snapshot(v26);
                  v35 = *(v25 + 64);
                  v221 = *(v25 + 48);
                  v222 = v35;
                  v223 = *(v25 + 80);
                  v36 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
                  *(v25 + 48) = ecs_stack_allocator_allocate(*(v25 + 32), 48 * v36, 8);
                  *(v25 + 56) = v36;
                  *(v25 + 72) = 0;
                  *(v25 + 80) = 0;
                  *(v25 + 64) = 0;
                  v37 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v30, v31, v33, v25);
                  v38 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v30, v31, v33, v25);
                  v39 = v38;
                  if (v30)
                  {
                    for (; v33; --v33)
                    {
                      v41 = vsubq_f32(*v39, v185);
                      v226(&v224, v21 * (vmuls_lane_f32(v24, v41, 2) + ((v22 * v41.f32[0]) + vmuls_lane_f32(v23, *v41.f32, 1))));
                      if (v12 > 1u)
                      {
                        if (v12 == 2)
                        {
                          v40 = vmulq_f32(vmulq_n_f32(v42, *v203.i32), *v37);
                        }

                        else
                        {
                          v40 = vmlaq_f32(*v37, v199, vsubq_f32(v42, *v37));
                        }
                      }

                      else if (v12)
                      {
                        v40 = vaddq_f32(vmulq_n_f32(v42, *v203.i32), *v37);
                      }

                      else
                      {
                        v40 = vmulq_n_f32(v42, *v203.i32);
                      }

                      *v37++ = v40;
                      ++v39;
                    }
                  }

                  else if (v29 != v196)
                  {
                    v43 = v196 - v29;
                    v44 = &v38[16 * v29];
                    v45 = &v37[v29];
                    do
                    {
                      v47 = vsubq_f32(*v44, v185);
                      v226(&v224, v21 * (vmuls_lane_f32(v24, v47, 2) + ((v22 * v47.f32[0]) + vmuls_lane_f32(v23, *v47.f32, 1))));
                      if (v12 > 1u)
                      {
                        if (v12 == 2)
                        {
                          v46 = vmulq_f32(vmulq_n_f32(v48, *v203.i32), *v45);
                        }

                        else
                        {
                          v46 = vmlaq_f32(*v45, v199, vsubq_f32(v48, *v45));
                        }
                      }

                      else if (v12)
                      {
                        v46 = vaddq_f32(vmulq_n_f32(v48, *v203.i32), *v45);
                      }

                      else
                      {
                        v46 = vmulq_n_f32(v48, *v203.i32);
                      }

                      *v45++ = v46;
                      ++v44;
                      --v43;
                    }

                    while (v43);
                  }

                  v15 = v180;
                  sub_1AF630994(v25, &v212, &v221);
                  sub_1AF62D29C(v32);
                  v26 = v174;
                  ecs_stack_allocator_pop_snapshot(v174);
                  v27 = v168;
                  if (v168)
                  {
                    os_unfair_lock_unlock(*(v32 + 344));
                    os_unfair_lock_unlock(*(v32 + 376));
                  }

                  ++v20;
                }

                while (v20 != v193);
              }

LABEL_177:

              sub_1AFA28B94(&v209);

              sub_1AF7751B8(v228, &unk_1ED725420, &type metadata for TextureCPURuntime);
              return sub_1AF7751B8(&v235, &qword_1ED725EA0, &type metadata for QueryResult);
            }

            goto LABEL_176;
          }
        }
      }

      sub_1AF7751B8(v228, &unk_1ED725420, &type metadata for TextureCPURuntime);
      sub_1AFA28B94(&v209);
    }
  }

  else
  {
  }
}

uint64_t sub_1AFA28B94(uint64_t a1)
{
  sub_1AFA28BF0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA28BF0()
{
  if (!qword_1EB6421A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Color;
    v4[1] = &type metadata for Position;
    v4[2] = &off_1F252CA88;
    v4[3] = &off_1F252EE70;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB6421A8);
    }
  }
}

uint64_t initializeWithCopy for ParticleColorOverPosition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ParticleColorOverPosition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for ParticleColorOverPosition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleColorOverPosition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleColorOverPosition(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1AFA28E54()
{
  result = qword_1EB6421B0;
  if (!qword_1EB6421B0)
  {
    sub_1AF775BA4(255, &qword_1EB6421B8, &type metadata for ParticleColorOverPosition.GradientMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB6421B0);
  }

  return result;
}

unint64_t sub_1AFA28ED4()
{
  result = qword_1EB6421C0;
  if (!qword_1EB6421C0)
  {
    result = swift_getWitnessTable("eV", &type metadata for ParticleColorOverPosition.GradientMode, v0, v1);
    atomic_store(result, &qword_1EB6421C0);
  }

  return result;
}

unint64_t sub_1AFA28F28()
{
  result = qword_1EB6421D0;
  if (!qword_1EB6421D0)
  {
    result = swift_getWitnessTable(byte_1AFE939A8, &type metadata for ParticleColorOverPosition.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6421D0);
  }

  return result;
}

void sub_1AFA28F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFA28FF8()
{
  result = qword_1EB6421E0;
  if (!qword_1EB6421E0)
  {
    result = swift_getWitnessTable(byte_1AFE93980, &type metadata for ParticleColorOverPosition.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6421E0);
  }

  return result;
}

unint64_t sub_1AFA29050()
{
  result = qword_1EB6421E8;
  if (!qword_1EB6421E8)
  {
    result = swift_getWitnessTable(byte_1AFE938F0, &type metadata for ParticleColorOverPosition.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6421E8);
  }

  return result;
}

unint64_t sub_1AFA290A8()
{
  result = qword_1EB6421F0;
  if (!qword_1EB6421F0)
  {
    result = swift_getWitnessTable(byte_1AFE93918, &type metadata for ParticleColorOverPosition.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6421F0);
  }

  return result;
}

uint64_t sub_1AFA29120(void *a1)
{
  v3 = v1;
  sub_1AFA2A488(0, &qword_1EB642208, sub_1AFA2A434, &type metadata for ParticleColorOverTexture.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA2A434();
  sub_1AFDFF3F8();
  v13 = *v3;
  v12 = 0;
  sub_1AF9D68D0();
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    v12 = 1;
    sub_1AF480018();
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 16);
    v12 = 2;
    sub_1AF51DC40();
    sub_1AFDFE918();
    v13 = v3[3];
    v12 = 3;
    sub_1AFA2A488(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AFA2A4F0(&qword_1ED72F798, MEMORY[0x1E69E7430]);
    sub_1AFDFE918();
    v13 = v3[4];
    v12 = 4;
    sub_1AFDFE918();
    LOBYTE(v13) = 5;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFA2944C()
{
  v1 = *v0;
  v2 = 0x7469736F706D6F63;
  v3 = 0x656C616373;
  v4 = 1935763810;
  if (v1 != 4)
  {
    v4 = 0x656C676E61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65727574786574;
  if (v1 != 1)
  {
    v5 = 0x4D73736572646461;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1AFA29508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFA296E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFA29530(uint64_t a1)
{
  v2 = sub_1AFA2A434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA2956C(uint64_t a1)
{
  v2 = sub_1AFA2A434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA295A8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AFA298E4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 12);
    *(a1 + 28) = *(v7 + 12);
  }

  return result;
}

double sub_1AFA296B8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1065353216;
  *(a1 + 8) = 0xFFFFFFFFLL;
  *(a1 + 16) = 2;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AFA296E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65727574786574 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D73736572646461 && a2 == 0xEB0000000065646FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000)
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

uint64_t sub_1AFA298E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA2A488(0, &qword_1EB6421F8, sub_1AFA2A434, &type metadata for ParticleColorOverTexture.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[3];
  v22 = a1;
  sub_1AF441150(a1, v10);
  sub_1AFA2A434();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  }

  v11 = v7;
  v23 = 0;
  sub_1AF9D6798();
  v12 = v6;
  sub_1AFDFE768();
  v13 = v24;
  v14 = HIDWORD(v24);
  v23 = 1;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v15 = v24;
  v23 = 2;
  sub_1AF51DBEC();
  sub_1AFDFE768();
  HIDWORD(v21) = v24;
  sub_1AFA2A488(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v23 = 3;
  sub_1AFA2A4F0(&qword_1ED72F780, MEMORY[0x1E69E7440]);
  sub_1AFDFE768();
  v16 = v24;
  v23 = 4;
  sub_1AFDFE768();
  v17 = v24;
  LOBYTE(v24) = 5;
  sub_1AFDFE738();
  v19 = v18;
  (*(v11 + 8))(v9, v12);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  *a2 = v13;
  *(a2 + 4) = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = BYTE4(v21);
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  return result;
}

uint64_t sub_1AFA29C94()
{
  v1 = *v0;
  sub_1AF47BBFC(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = xmmword_1AFE4C620;
    *(result + 32) = &type metadata for TransientOriginColor;
    *(result + 40) = &off_1F2569988;
    *(result + 48) = &type metadata for Color;
    v3 = (result + 56);
  }

  else
  {
    *(result + 16) = xmmword_1AFE431C0;
    *(result + 32) = &type metadata for Color;
    v3 = (result + 40);
  }

  *v3 = &off_1F252CA88;
  return result;
}

uint64_t sub_1AFA29D34(void *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *a1;

  v3 = a1[1];

  sub_1AF3CDD0C(v3, &v71);

  v4 = v71;
  if (v71 == 4 || v72 == 0xFFFFFFFFLL || (v5 = *v74, v6 = *(&v73 + 1), v7 = *&v73, v8 = BYTE8(v72), sub_1AF8E60EC(v72, 1, v64), !v66))
  {
  }

  else
  {
    v79[0] = v64[0];
    v79[1] = v64[1];
    v79[2] = v64[2];
    v80 = v65;
    v81 = v66;
    sub_1AF44222C(v79, &v71);
    sub_1AF478700(v79, v8, 1, v67);
    if (v69 == 1)
    {
      sub_1AF0D9DB0(v64, &unk_1ED725420, &type metadata for TextureCPURuntime);
    }

    v60[0] = v67[0];
    v60[1] = v67[1];
    v61 = v68;
    v62 = v69;
    v63 = v70;
    v10 = *(a1 + 13);
    v55 = *(a1 + 11);
    v56 = v10;
    v57 = a1[15];
    sub_1AF5C92B8(v48);
    sub_1AF6AB600(&v45, v7, v5, v6);
    v53[0] = v48[0];
    v53[1] = v48[1];
    v54 = v49;
    sub_1AF6B06C0(v2, v53, 0x200000000, &v71);
    if (!v71)
    {
      sub_1AF0D9DB0(v64, &unk_1ED725420, &type metadata for TextureCPURuntime);
      sub_1AFA28B94(v48);
    }

    if (v78 <= 0)
    {
      sub_1AF5D15C0(&v71, v58);
      sub_1AF0D9DB0(v64, &unk_1ED725420, &type metadata for TextureCPURuntime);
      sub_1AFA28B94(v48);

      sub_1AF0D9DB0(&v71, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      v40 = v75;
      if (v75)
      {
        v12 = 0;
        v13 = 0;
        v11.i32[0] = HIDWORD(v4);
        v39 = v74[0];
        v14 = v77;
        v43 = *(v77 + 32);
        v15 = *(v76 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v50 = v71;
        v51 = v72;
        v52 = v73;
        v44 = vdupq_lane_s32(v11, 0);
        v16 = v47;
        v17 = *v45.f32;
        v18 = v46;
        v38 = v15;
        do
        {
          v42 = v13;
          v19 = (v39 + 48 * v12);
          v20 = *v19;
          v41 = v19[1];
          v21 = *(v19 + 2);
          v22 = *(v19 + 3);
          v23 = *(v19 + 4);
          v24 = *(v19 + 5);
          if (v15)
          {
            v25 = *(v24 + 376);

            os_unfair_lock_lock(v25);
            os_unfair_lock_lock(*(v24 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v43);
          v26 = *(v14 + 64);
          v58[0] = *(v14 + 48);
          v58[1] = v26;
          v59 = *(v14 + 80);
          v27 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
          *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v27, 8);
          *(v14 + 56) = v27;
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v14 + 64) = 0;
          v28 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v21, v22, v23, v14);
          v29 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v21, v22, v23, v14);
          v30 = v29;
          if (v21)
          {
            if (v23)
            {
              v13 = v42;
              do
              {
                v62(v60, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v18, *v30, 2), vadd_f32(v16, vmul_n_f32(v17, COERCE_FLOAT(*v30))))));
                if (v4 > 1u)
                {
                  if (v4 == 2)
                  {
                    v31 = vmulq_f32(vmulq_n_f32(v32, *(&v4 + 1)), *v28);
                  }

                  else
                  {
                    v31 = vmlaq_f32(*v28, v44, vsubq_f32(v32, *v28));
                  }
                }

                else if (v4)
                {
                  v31 = vaddq_f32(vmulq_n_f32(v32, *(&v4 + 1)), *v28);
                }

                else
                {
                  v31 = vmulq_n_f32(v32, *(&v4 + 1));
                }

                *v28++ = v31;
                ++v30;
                --v23;
              }

              while (v23);
              goto LABEL_30;
            }
          }

          else if (v20 != v41)
          {
            v33 = v41 - v20;
            v34 = &v29[16 * v20];
            v35 = &v28[v20];
            v13 = v42;
            do
            {
              v62(v60, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v18, *v34, 2), vadd_f32(v16, vmul_n_f32(v17, COERCE_FLOAT(*v34))))));
              if (v4 > 1u)
              {
                if (v4 == 2)
                {
                  v36 = vmulq_f32(vmulq_n_f32(v37, *(&v4 + 1)), *v35);
                }

                else
                {
                  v36 = vmlaq_f32(*v35, v44, vsubq_f32(v37, *v35));
                }
              }

              else if (v4)
              {
                v36 = vaddq_f32(vmulq_n_f32(v37, *(&v4 + 1)), *v35);
              }

              else
              {
                v36 = vmulq_n_f32(v37, *(&v4 + 1));
              }

              *v35++ = v36;
              ++v34;
              --v33;
            }

            while (v33);
            goto LABEL_30;
          }

          v13 = v42;
LABEL_30:
          sub_1AF630994(v14, &v50, v58);
          sub_1AF62D29C(v24);
          ecs_stack_allocator_pop_snapshot(v43);
          v15 = v38;
          if (v38)
          {
            os_unfair_lock_unlock(*(v24 + 344));
            os_unfair_lock_unlock(*(v24 + 376));
          }

          ++v12;
        }

        while (v12 != v40);
      }

      sub_1AFA28B94(v48);
      sub_1AF0D9DB0(v64, &unk_1ED725420, &type metadata for TextureCPURuntime);
    }

    return sub_1AF0D9DB0(&v71, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

__n128 initializeWithTake for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleColorOverTexture(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[44])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleColorOverTexture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AFA2A434()
{
  result = qword_1EB642200;
  if (!qword_1EB642200)
  {
    result = swift_getWitnessTable(byte_1AFE93BC0, &type metadata for ParticleColorOverTexture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642200);
  }

  return result;
}

void sub_1AFA2A488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFA2A4F0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA2A488(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFA2A580()
{
  result = qword_1EB642210;
  if (!qword_1EB642210)
  {
    result = swift_getWitnessTable(byte_1AFE93B98, &type metadata for ParticleColorOverTexture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642210);
  }

  return result;
}

unint64_t sub_1AFA2A5D8()
{
  result = qword_1EB642218;
  if (!qword_1EB642218)
  {
    result = swift_getWitnessTable(byte_1AFE93B08, &type metadata for ParticleColorOverTexture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642218);
  }

  return result;
}

unint64_t sub_1AFA2A630()
{
  result = qword_1EB642220;
  if (!qword_1EB642220)
  {
    result = swift_getWitnessTable(byte_1AFE93B30, &type metadata for ParticleColorOverTexture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642220);
  }

  return result;
}

uint64_t sub_1AFA2A6A8(void *a1)
{
  v3 = v1;
  sub_1AFA2BBF4(0, &qword_1EB642240, sub_1AFA2BBA0, &type metadata for ParticleColorOverVelocity.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA2BBA0();
  sub_1AFDFF3F8();
  *&v11 = *v3;
  v13 = 0;
  sub_1AF9D68D0();
  sub_1AFDFE918();
  if (!v2)
  {
    *&v11 = *(v3 + 8);
    v13 = 1;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0, MEMORY[0x1E69E6458], MEMORY[0x1E69E66B0]);
    sub_1AFDFE918();
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = 2;
    sub_1AF80BC20();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFA2A8FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65676E6172;
  if (v2 != 1)
  {
    v4 = 1886216562;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7469736F706D6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6172;
  if (*a2 != 1)
  {
    v8 = 1886216562;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7469736F706D6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
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

uint64_t sub_1AFA2A9EC()
{
  v1 = 0x65676E6172;
  if (*v0 != 1)
  {
    v1 = 1886216562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7469736F706D6F63;
  }
}

uint64_t sub_1AFA2AA44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFA2AD68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFA2AA6C(uint64_t a1)
{
  v2 = sub_1AFA2BBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA2AAA8(uint64_t a1)
{
  v2 = sub_1AFA2BBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA2AAE4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFA2AE80(a2, v6);
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

double sub_1AFA2ABA0@<D0>(uint64_t a1@<X8>)
{
  sub_1AFA2ABE4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1AFA2ABE4@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6A0;
  v3 = _simd_pow_f4(xmmword_1AFE93380, xmmword_1AFE42AB0);
  v3.i32[3] = 0;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = _simd_pow_f4(xmmword_1AFE93390, xmmword_1AFE42AB0);
  v4.i32[3] = 1.0;
  *(v2 + 64) = v4;
  *(v2 + 80) = 1048576000;
  v5 = _simd_pow_f4(xmmword_1AFE933A0, xmmword_1AFE42AB0);
  v5.i32[3] = 1.0;
  *(v2 + 96) = v5;
  *(v2 + 112) = 1056964608;
  v6 = _simd_pow_f4(xmmword_1AFE933B0, xmmword_1AFE42AB0);
  v6.i32[3] = 1.0;
  *(v2 + 128) = v6;
  *(v2 + 144) = 1061158912;
  v7 = _simd_pow_f4(xmmword_1AFE933C0, xmmword_1AFE42AB0);
  v7.i32[3] = 0;
  *(v2 + 160) = v7;
  *(v2 + 176) = 1065353216;
  v8 = sub_1AF3C3D64(v2);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v9 = sub_1AF9D3A24(v8);
  v11 = v10;

  *a1 = 0;
  *&result = 1065353216;
  *(a1 + 4) = 1065353216;
  *(a1 + 12) = 1065353216;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1AFA2AD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1886216562 && a2 == 0xE400000000000000)
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

uint64_t sub_1AFA2AE80@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  sub_1AFA2BBF4(0, &qword_1EB642230, sub_1AFA2BBA0, &type metadata for ParticleColorOverVelocity.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C6A0;
  v28 = xmmword_1AFE42AB0;
  v8 = _simd_pow_f4(xmmword_1AFE93380, xmmword_1AFE42AB0);
  v8.i32[3] = 0;
  *(v7 + 32) = v8;
  *(v7 + 48) = 0;
  v9 = _simd_pow_f4(xmmword_1AFE93390, v28);
  v9.i32[3] = 1.0;
  *(v7 + 64) = v9;
  *(v7 + 80) = 1048576000;
  v10 = _simd_pow_f4(xmmword_1AFE933A0, v28);
  v10.i32[3] = 1.0;
  *(v7 + 96) = v10;
  *(v7 + 112) = 1056964608;
  v11 = _simd_pow_f4(xmmword_1AFE933B0, v28);
  v11.i32[3] = 1.0;
  *(v7 + 128) = v11;
  *(v7 + 144) = 1061158912;
  v12 = _simd_pow_f4(xmmword_1AFE933C0, v28);
  v12.i32[3] = 0;
  *(v7 + 160) = v12;
  *(v7 + 176) = 1065353216;
  v13 = sub_1AF3C3D64(v7);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF9D3A24(v13);

  sub_1AF441150(a1, a1[3]);
  sub_1AFA2BBA0();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v14 = v26;
    v32 = 0;
    sub_1AF9D6798();
    v15 = v27;
    sub_1AFDFE768();
    v16 = v29;
    v17 = HIDWORD(v29);
    sub_1AF48C324();
    v32 = 1;
    sub_1AF48C3D0(&qword_1ED7231A0, MEMORY[0x1E69E6478], MEMORY[0x1E69E66E0]);
    sub_1AFDFE768();
    v28.i32[0] = v16;
    v18 = v29;
    v32 = 2;
    sub_1AF80A7AC();
    sub_1AFDFE768();
    (*(v14 + 8))(v6, v15);

    v19 = v29;
    v20 = v30;
    v21 = v31;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    v23 = v25;
    *v25 = v28.i8[0];
    *(v23 + 1) = v17;
    *(v23 + 1) = v18;
    *(v23 + 2) = v19;
    *(v23 + 3) = v20;
    v23[32] = v21;
  }

  return result;
}

void *sub_1AFA2B290(void *result, uint64_t a2, uint64_t a3)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = result;
    v5 = result[1];

    sub_1AF3CDDF4(v5, &v81);

    v7 = *(&v82 + 1);
    if (*(&v82 + 1))
    {
      v8 = v81;
      v9 = v83;
      v10 = BYTE8(v83);
      v6.i32[0] = HIDWORD(v81);
      v50 = v6;
      v11 = *(&v82 + 1);
      v12 = *&v82;
    }

    else
    {
      *&v13 = sub_1AFA2ABE4(v51);
      v8 = v51[0];
      v13.i32[0] = v52;
      v12 = v53;
      v50 = v13;
      v11 = v54;
      v7 = v55;
      v9 = v56;
      v10 = v57;
    }

    sub_1AF8B4B2C(v7, v9, v10, v74);

    if (v76)
    {
      v89[0] = v74[0];
      v89[1] = v74[1];
      v89[2] = v74[2];
      v90 = v75;
      v91 = v76;
      sub_1AF44222C(v89, &v81);
      sub_1AF4783C0(v89, 1, 1, &v77);
      if (v79 == 1)
      {
        sub_1AF0D9DB0(v74, &unk_1ED725420, &type metadata for TextureCPURuntime);
      }

      v70 = v77;
      v71 = v78;
      v72 = v79;
      v73 = v80;
      v14 = *(v4 + 13);
      v65 = *(v4 + 11);
      v66 = v14;
      v67 = v4[15];
      sub_1AF5C92DC(v58);
      v63[0] = v58[0];
      v63[1] = v58[1];
      v64 = v59;
      sub_1AF6B06C0(a2, v63, 0x200000000, &v81);
      if (v81)
      {
        if (v88 <= 0)
        {
          sub_1AF5D15C0(&v81, v68);
          sub_1AF0D9DB0(v74, &unk_1ED725420, &type metadata for TextureCPURuntime);
          sub_1AFA2B988(v58);

          sub_1AF0D9DB0(&v81, &qword_1ED725EA0, &type metadata for QueryResult);
        }

        else
        {
          v46 = v85;
          if (v85)
          {
            v15 = 0;
            v16 = 0;
            v17 = 1.0 / (v11 - v12);
            v18 = -(v12 * v17);
            v45 = v84;
            v19 = v87;
            v20 = *(v87 + 32);
            v21 = *(v86 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v60 = v81;
            v61 = v82;
            v62 = v83;
            v49 = vdupq_lane_s32(v50, 0);
            v43 = v21;
            v44 = v20;
            do
            {
              v48 = v16;
              v22 = (v45 + 48 * v15);
              v23 = *v22;
              v47 = v22[1];
              v25 = *(v22 + 2);
              v24 = *(v22 + 3);
              v27 = *(v22 + 4);
              v26 = *(v22 + 5);
              if (v21)
              {
                v28 = *(v26 + 376);

                os_unfair_lock_lock(v28);
                os_unfair_lock_lock(*(v26 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v20);
              v29 = *(v19 + 64);
              v68[0] = *(v19 + 48);
              v68[1] = v29;
              v69 = *(v19 + 80);
              v30 = *(*(*(*(v26 + 40) + 16) + 32) + 16) + 1;
              *(v19 + 48) = ecs_stack_allocator_allocate(*(v19 + 32), 48 * v30, 8);
              *(v19 + 56) = v30;
              *(v19 + 72) = 0;
              *(v19 + 80) = 0;
              *(v19 + 64) = 0;
              v31 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v25, v24, v27, v19);
              v32 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v25, v24, v27, v19);
              v33 = v32;
              if (v25)
              {
                if (v27)
                {
                  v16 = v48;
                  do
                  {
                    v35 = vmulq_f32(*v33, *v33);
                    v72(&v70, v18 + (v17 * sqrtf(vaddv_f32(vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL))))));
                    if (v8 > 1u)
                    {
                      if (v8 == 2)
                      {
                        v34 = vmulq_f32(vmulq_n_f32(v36, *v50.i32), *v31);
                      }

                      else
                      {
                        v34 = vmlaq_f32(*v31, v49, vsubq_f32(v36, *v31));
                      }
                    }

                    else if (v8)
                    {
                      v34 = vaddq_f32(vmulq_n_f32(v36, *v50.i32), *v31);
                    }

                    else
                    {
                      v34 = vmulq_n_f32(v36, *v50.i32);
                    }

                    *v31++ = v34;
                    ++v33;
                    --v27;
                  }

                  while (v27);
                  goto LABEL_32;
                }
              }

              else if (v23 != v47)
              {
                v37 = v47 - v23;
                v38 = &v32[16 * v23];
                v39 = &v31[v23];
                v16 = v48;
                do
                {
                  v41 = vmulq_f32(*v38, *v38);
                  v72(&v70, v18 + (v17 * sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL))))));
                  if (v8 > 1u)
                  {
                    if (v8 == 2)
                    {
                      v40 = vmulq_f32(vmulq_n_f32(v42, *v50.i32), *v39);
                    }

                    else
                    {
                      v40 = vmlaq_f32(*v39, v49, vsubq_f32(v42, *v39));
                    }
                  }

                  else if (v8)
                  {
                    v40 = vaddq_f32(vmulq_n_f32(v42, *v50.i32), *v39);
                  }

                  else
                  {
                    v40 = vmulq_n_f32(v42, *v50.i32);
                  }

                  *v39++ = v40;
                  ++v38;
                  --v37;
                }

                while (v37);
                goto LABEL_32;
              }

              v16 = v48;
LABEL_32:
              sub_1AF630994(v19, &v60, v68);
              sub_1AF62D29C(v26);
              v20 = v44;
              ecs_stack_allocator_pop_snapshot(v44);
              v21 = v43;
              if (v43)
              {
                os_unfair_lock_unlock(*(v26 + 344));
                os_unfair_lock_unlock(*(v26 + 376));
              }

              ++v15;
            }

            while (v15 != v46);
          }

          sub_1AFA2B988(v58);
          sub_1AF0D9DB0(v74, &unk_1ED725420, &type metadata for TextureCPURuntime);
        }

        return sub_1AF0D9DB0(&v81, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      else
      {
        sub_1AF0D9DB0(v74, &unk_1ED725420, &type metadata for TextureCPURuntime);
        sub_1AFA2B988(v58);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AFA2B988(uint64_t a1)
{
  sub_1AFA2B9E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA2B9E4()
{
  if (!qword_1EB642228)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Color;
    v4[1] = &type metadata for Velocity;
    v4[2] = &off_1F252CA88;
    v4[3] = &off_1F2530AF8;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642228);
    }
  }
}

uint64_t initializeWithCopy for ParticleColorOverVelocity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ParticleColorOverVelocity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for ParticleColorOverVelocity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

unint64_t sub_1AFA2BBA0()
{
  result = qword_1EB642238;
  if (!qword_1EB642238)
  {
    result = swift_getWitnessTable(byte_1AFE93DD0, &type metadata for ParticleColorOverVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642238);
  }

  return result;
}

void sub_1AFA2BBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFA2BC70()
{
  result = qword_1EB642248;
  if (!qword_1EB642248)
  {
    result = swift_getWitnessTable(byte_1AFE93DA8, &type metadata for ParticleColorOverVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642248);
  }

  return result;
}

unint64_t sub_1AFA2BCC8()
{
  result = qword_1EB642250;
  if (!qword_1EB642250)
  {
    result = swift_getWitnessTable(byte_1AFE93D18, &type metadata for ParticleColorOverVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642250);
  }

  return result;
}

unint64_t sub_1AFA2BD20()
{
  result = qword_1EB642258;
  if (!qword_1EB642258)
  {
    result = swift_getWitnessTable(byte_1AFE93D40, &type metadata for ParticleColorOverVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642258);
  }

  return result;
}

uint64_t sub_1AFA2BD80()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA2BE5C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFA2BF24(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFA2BFFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA2C508(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFA2C02C(unint64_t *a1@<X8>)
{
  v2 = 0xED00007265747469;
  v3 = 0x6D45656372756F73;
  v4 = 0x6144746567726174;
  v5 = 0xEA00000000006174;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000001AFF234A0;
  }

  if (*v1)
  {
    v3 = 0x6144656372756F73;
    v2 = 0xEA00000000006174;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1AFA2C0C4()
{
  v1 = 0x6D45656372756F73;
  v2 = 0x6144746567726174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6144656372756F73;
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

unint64_t sub_1AFA2C158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA2C508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA2C180(uint64_t a1)
{
  v2 = sub_1AFA2D49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA2C1BC(uint64_t a1)
{
  v2 = sub_1AFA2D49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA2C1F8(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v15 = a5;
  v16 = a3;
  sub_1AFA2D598(0, &qword_1EB642280, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA2D49C();
  sub_1AFDFF3F8();
  v23 = a2;
  v22 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v5)
  {
    v13 = BYTE1(v16);
    v21 = v16;
    v20 = 1;
    sub_1AFA2D5FC();
    sub_1AFDFE918();
    v19 = v13;
    v18 = 2;
    sub_1AFA2D650();
    sub_1AFDFE918();
    v17 = 3;
    sub_1AFDFE898();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AFA2C434@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFA2C554(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

double sub_1AFA2C4AC@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

unint64_t sub_1AFA2C508(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFA2C554(void *a1)
{
  sub_1AFA2D598(0, &qword_1EB642260, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AFA2D49C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v15 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v16;
    v14 = 1;
    sub_1AFA2D4F0();
    sub_1AFDFE768();
    v12 = 2;
    sub_1AFA2D544();
    sub_1AFDFE768();
    v10[1] = v13;
    v11 = 3;
    sub_1AFDFE6D8();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AFA2C7BC(uint64_t *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CDF14(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if ((v6 & 0xFF00) == 0x400)
  {
    v8 = 0;
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if ((v6 & 0xFF00) == 0x400)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6 >> 8;
  }

  if ((v6 & 0xFF00) == 0x400)
  {
    v13 = 3;
  }

  else
  {
    v13 = v6;
  }

  if ((v6 & 0xFF00) == 0x400)
  {
    v14 = -1;
  }

  else
  {
    v14 = v4;
  }

  if ((v6 & 0xFF00) == 0x400)
  {
    v15 = 0;
  }

  else
  {
    v15 = HIDWORD(v4);
  }

  if (v14 != -1 || v15)
  {
    sub_1AF5C52A8(0);
    v34 = off_1E7A7FF40[v12];
    v35 = off_1E7A7FF60[v12];
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE431C0;
    if (v13 > 3u)
    {
      if (v13 > 5u)
      {
        if (v13 == 6)
        {
          *(v17 + 32) = &type metadata for UserData4;
          *(v17 + 40) = &off_1F252DA28;
          sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
          swift_setDeallocating();
          swift_deallocClassInstance();
          sub_1AFA1CF6C(0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1AFE431C0;
          *(v24 + 56) = &type metadata for EmitterReference;
          *(v24 + 64) = &off_1F2563D20;
          *(v24 + 32) = v14;
          v25 = (v24 + 32);
          *(v24 + 36) = v15;
          sub_1AF5FC13C(v24, v38, xmmword_1AFE431C0);
          sub_1AF692DB0(v37);
          swift_setDeallocating();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
          swift_deallocClassInstance();
          sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
          if (v46)
          {
            v42 = v49;
            v43 = v50;
            v44 = v51;
            v39 = v46;
            v45 = v52;
            v40 = v47;
            v41 = v48;
            sub_1AF68A8E0(a1, v36);

            sub_1AF6BDD48(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
            goto LABEL_44;
          }
        }

        else
        {
          *(v17 + 32) = &type metadata for Velocity;
          *(v17 + 40) = &off_1F2530A78;
          sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
          swift_setDeallocating();
          swift_deallocClassInstance();
          sub_1AFA1CF6C(0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1AFE431C0;
          *(v32 + 56) = &type metadata for EmitterReference;
          *(v32 + 64) = &off_1F2563D20;
          *(v32 + 32) = v14;
          v33 = (v32 + 32);
          *(v32 + 36) = v15;
          sub_1AF5FC13C(v32, v38, xmmword_1AFE431C0);
          sub_1AF692DB0(v37);
          swift_setDeallocating();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
          swift_deallocClassInstance();
          sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
          if (v46)
          {
            v42 = v49;
            v43 = v50;
            v44 = v51;
            v39 = v46;
            v45 = v52;
            v40 = v47;
            v41 = v48;
            sub_1AF68A8E0(a1, v36);

            sub_1AF6BDCE8(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
            goto LABEL_44;
          }
        }
      }

      else if (v13 == 4)
      {
        *(v17 + 32) = &type metadata for UserData2;
        *(v17 + 40) = &off_1F252DB68;
        sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1AFA1CF6C(0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1AFE431C0;
        *(v20 + 56) = &type metadata for EmitterReference;
        *(v20 + 64) = &off_1F2563D20;
        *(v20 + 32) = v14;
        v21 = (v20 + 32);
        *(v20 + 36) = v15;
        sub_1AF5FC13C(v20, v38, xmmword_1AFE431C0);
        sub_1AF692DB0(v37);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
        swift_deallocClassInstance();
        sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
        if (v46)
        {
          v42 = v49;
          v43 = v50;
          v44 = v51;
          v39 = v46;
          v45 = v52;
          v40 = v47;
          v41 = v48;
          sub_1AF68A8E0(a1, v36);

          sub_1AF6BE358(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
          goto LABEL_44;
        }
      }

      else
      {
        *(v17 + 32) = &type metadata for UserData3;
        *(v17 + 40) = &off_1F252DAC8;
        sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1AFA1CF6C(0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AFE431C0;
        *(v28 + 56) = &type metadata for EmitterReference;
        *(v28 + 64) = &off_1F2563D20;
        *(v28 + 32) = v14;
        v29 = (v28 + 32);
        *(v28 + 36) = v15;
        sub_1AF5FC13C(v28, v38, xmmword_1AFE431C0);
        sub_1AF692DB0(v37);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
        swift_deallocClassInstance();
        sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
        if (v46)
        {
          v42 = v49;
          v43 = v50;
          v44 = v51;
          v39 = v46;
          v45 = v52;
          v40 = v47;
          v41 = v48;
          sub_1AF68A8E0(a1, v36);

          sub_1AF6BE2F8(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
          goto LABEL_44;
        }
      }
    }

    else if (v13 > 1u)
    {
      if (v13 == 2)
      {
        *(v17 + 32) = &type metadata for Position;
        *(v17 + 40) = &off_1F252EDF0;
        sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1AFA1CF6C(0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1AFE431C0;
        *(v22 + 56) = &type metadata for EmitterReference;
        *(v22 + 64) = &off_1F2563D20;
        *(v22 + 32) = v14;
        v23 = (v22 + 32);
        *(v22 + 36) = v15;
        sub_1AF5FC13C(v22, v38, xmmword_1AFE431C0);
        sub_1AF692DB0(v37);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v23);
        swift_deallocClassInstance();
        sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
        if (v46)
        {
          v42 = v49;
          v43 = v50;
          v44 = v51;
          v39 = v46;
          v45 = v52;
          v40 = v47;
          v41 = v48;
          sub_1AF68A8E0(a1, v36);

          sub_1AF6BC8F4(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
          goto LABEL_44;
        }
      }

      else
      {
        *(v17 + 32) = &type metadata for UserData1;
        *(v17 + 40) = &off_1F252DC08;
        sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1AFA1CF6C(0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1AFE431C0;
        *(v30 + 56) = &type metadata for EmitterReference;
        *(v30 + 64) = &off_1F2563D20;
        *(v30 + 32) = v14;
        v31 = (v30 + 32);
        *(v30 + 36) = v15;
        sub_1AF5FC13C(v30, v38, xmmword_1AFE431C0);
        sub_1AF692DB0(v37);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
        swift_deallocClassInstance();
        sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
        if (v46)
        {
          v42 = v49;
          v43 = v50;
          v44 = v51;
          v39 = v46;
          v45 = v52;
          v40 = v47;
          v41 = v48;
          sub_1AF68A8E0(a1, v36);

          sub_1AF6BE3B8(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
          goto LABEL_44;
        }
      }
    }

    else if (v13)
    {
      *(v17 + 32) = &type metadata for Orientation;
      *(v17 + 40) = &off_1F252C828;
      sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AFA1CF6C(0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AFE431C0;
      *(v26 + 56) = &type metadata for EmitterReference;
      *(v26 + 64) = &off_1F2563D20;
      *(v26 + 32) = v14;
      v27 = (v26 + 32);
      *(v26 + 36) = v15;
      sub_1AF5FC13C(v26, v38, xmmword_1AFE431C0);
      sub_1AF692DB0(v37);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
      swift_deallocClassInstance();
      sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
      if (v46)
      {
        v42 = v49;
        v43 = v50;
        v44 = v51;
        v39 = v46;
        v45 = v52;
        v40 = v47;
        v41 = v48;
        sub_1AF68A8E0(a1, v36);

        sub_1AF6BE418(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
        goto LABEL_44;
      }
    }

    else
    {
      *(v17 + 32) = &type metadata for Color;
      *(v17 + 40) = &off_1F252CA08;
      sub_1AF6B8120(v17, MEMORY[0x1E69E7CC0], v37, xmmword_1AFE431C0);
      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AFA1CF6C(0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AFE431C0;
      *(v18 + 56) = &type metadata for EmitterReference;
      *(v18 + 64) = &off_1F2563D20;
      *(v18 + 32) = v14;
      v19 = (v18 + 32);
      *(v18 + 36) = v15;
      sub_1AF5FC13C(v18, v38, xmmword_1AFE431C0);
      sub_1AF692DB0(v37);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
      swift_deallocClassInstance();
      sub_1AF6B06C0(v2, v38, 0x200000000, &v46);
      if (v46)
      {
        v42 = v49;
        v43 = v50;
        v44 = v51;
        v39 = v46;
        v45 = v52;
        v40 = v47;
        v41 = v48;
        sub_1AF68A8E0(a1, v36);

        sub_1AF6BEF6C(&v39, a1, v34, v35, v2, v8, v11 & 1, &v39);
LABEL_44:

        sub_1AF688940(a1);
        sub_1AF692DB0(v38);
        sub_1AF5D1564(&v46);
      }
    }

    sub_1AF692DB0(v38);
  }
}

uint64_t getEnumTagSinglePayload for ParticleCopyData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleCopyData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AFA2D49C()
{
  result = qword_1EB642268;
  if (!qword_1EB642268)
  {
    result = swift_getWitnessTable(byte_1AFE94000, &type metadata for ParticleCopyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642268);
  }

  return result;
}

unint64_t sub_1AFA2D4F0()
{
  result = qword_1EB642270;
  if (!qword_1EB642270)
  {
    result = swift_getWitnessTable(asc_1AFEA02B0, &type metadata for SourceDataKind, v0, v1);
    atomic_store(result, &qword_1EB642270);
  }

  return result;
}

unint64_t sub_1AFA2D544()
{
  result = qword_1EB642278;
  if (!qword_1EB642278)
  {
    result = swift_getWitnessTable(byte_1AFEA03D8, &type metadata for TargetDataKind, v0, v1);
    atomic_store(result, &qword_1EB642278);
  }

  return result;
}

void sub_1AFA2D598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA2D49C();
    v7 = a3(a1, &type metadata for ParticleCopyData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA2D5FC()
{
  result = qword_1EB642288;
  if (!qword_1EB642288)
  {
    result = swift_getWitnessTable(asc_1AFEA0288, &type metadata for SourceDataKind, v0, v1);
    atomic_store(result, &qword_1EB642288);
  }

  return result;
}

unint64_t sub_1AFA2D650()
{
  result = qword_1EB642290;
  if (!qword_1EB642290)
  {
    result = swift_getWitnessTable(byte_1AFEA03B0, &type metadata for TargetDataKind, v0, v1);
    atomic_store(result, &qword_1EB642290);
  }

  return result;
}

unint64_t sub_1AFA2D6B8()
{
  result = qword_1EB642298;
  if (!qword_1EB642298)
  {
    result = swift_getWitnessTable("qN", &type metadata for ParticleCopyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642298);
  }

  return result;
}

unint64_t sub_1AFA2D710()
{
  result = qword_1EB6422A0;
  if (!qword_1EB6422A0)
  {
    result = swift_getWitnessTable(byte_1AFE93F10, &type metadata for ParticleCopyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6422A0);
  }

  return result;
}

unint64_t sub_1AFA2D768()
{
  result = qword_1EB6422A8;
  if (!qword_1EB6422A8)
  {
    result = swift_getWitnessTable(byte_1AFE93F38, &type metadata for ParticleCopyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6422A8);
  }

  return result;
}

float sub_1AFA2D7BC(__n128 a1)
{
  v1 = a1;
  a1.n128_u32[0] = a1.n128_u32[1];
  if (a1.n128_f32[1] >= v1.n128_f32[0])
  {
    if ((a1.n128_u32[1] & 0x7FFFFF) != 0)
    {
      v2 = v1.n128_f32[0];
    }

    else
    {
      v2 = a1.n128_f32[1];
    }

    if ((~a1.n128_u32[1] & 0x7F800000) == 0)
    {
      a1.n128_f32[0] = v2;
    }
  }

  else
  {
    a1.n128_u32[0] = v1.n128_u32[0];
  }

  if (v1.n128_f32[2] >= a1.n128_f32[0])
  {
    if ((v1.n128_u32[2] & 0x7FFFFF) == 0)
    {
      a1.n128_f32[0] = v1.n128_f32[2];
    }

    if ((~v1.n128_u32[2] & 0x7F800000) != 0)
    {
      a1.n128_f32[0] = v1.n128_f32[2];
    }
  }

  if (v1.n128_f32[3] >= a1.n128_f32[0])
  {
    if ((v1.n128_u32[3] & 0x7FFFFF) == 0)
    {
      a1.n128_f32[0] = v1.n128_f32[3];
    }

    if ((~v1.n128_u32[3] & 0x7F800000) != 0)
    {
      a1.n128_f32[0] = v1.n128_f32[3];
    }
  }

  return a1.n128_f32[0];
}

float sub_1AFA2D838(__n128 a1)
{
  v1 = a1;
  a1.n128_u32[0] = a1.n128_u32[1];
  if (a1.n128_f32[1] >= v1.n128_f32[0])
  {
    if ((a1.n128_u32[1] & 0x7FFFFF) != 0)
    {
      v2 = v1.n128_f32[0];
    }

    else
    {
      v2 = a1.n128_f32[1];
    }

    if ((~a1.n128_u32[1] & 0x7F800000) == 0)
    {
      a1.n128_f32[0] = v2;
    }
  }

  else
  {
    a1.n128_u32[0] = v1.n128_u32[0];
  }

  if (v1.n128_f32[2] >= a1.n128_f32[0])
  {
    if ((v1.n128_u32[2] & 0x7FFFFF) == 0)
    {
      a1.n128_f32[0] = v1.n128_f32[2];
    }

    if ((~v1.n128_u32[2] & 0x7F800000) != 0)
    {
      a1.n128_f32[0] = v1.n128_f32[2];
    }
  }

  return a1.n128_f32[0];
}

uint64_t sub_1AFA2D890(void *a1, char a2, float a3)
{
  sub_1AFA2EB18(0, &qword_1EB6422B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA2EAC4();
  sub_1AFDFF3F8();
  v13 = 0;
  sub_1AFDFE8E8();
  if (!v3)
  {
    v12 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFA2DA04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001AFF2B550;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF2B550;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1AFA2DAAC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1AFA2DAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF2B550 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AFA2DBC8(uint64_t a1)
{
  v2 = sub_1AFA2EAC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA2DC04(uint64_t a1)
{
  v2 = sub_1AFA2EAC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFA2DC40(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_1AFA2E470(a2);
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 4) = v4 & 1;
  }
}

uint64_t sub_1AFA2DCC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v28 = *(a1 + 72);
  v29 = v3;
  v4 = *(a1 + 120);
  v30 = *(a1 + 104);
  v31 = v4;
  v5 = *(a1 + 24);
  v24 = v2;
  v25 = v5;
  v6 = *(a1 + 56);
  v26 = *(a1 + 40);
  v27 = v6;
  v7 = v2;

  v8 = sub_1AF3CE018(*(&v7 + 1));

  if ((v8 & 0xFF00000000) == 0x200000000)
  {
    v9 = 0.1;
  }

  else
  {
    v9 = *&v8;
  }

  sub_1AFB943A8();
  v23 = v10 * v9;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_drag_uniforms(0);
    sub_1AF6F4524(&v23, 1, ObjectType, v12, v13, v14, v15, v16);
  }

  sub_1AF6D259C(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  *(v17 + 32) = xmmword_1AFE94050;
  *(v17 + 48) = 0;
  *(v17 + 64) = BYTE4(v8) & 1;
  *(v17 + 128) = 13;
  v18 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v19 = v26;

  v20 = v18;

  MEMORY[0x1EEE9AC00](v21);
  sub_1AFCBF008(v19, sub_1AF9D17D4);
}

uint64_t sub_1AFA2DF78(void *a1, char a2, float a3, float a4)
{
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[1];
  v12 = a1[2];
  v13 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v8, v9, v10, v12);
  sub_1AF649C6C(*(v11 + 40), &type metadata for Mass, &v69);
  v15 = a3 * a4;
  if (v69 == 1)
  {
    v16 = sub_1AF64B110(&type metadata for Mass, &off_1F252DF08, v8, v9, v10, v12);
    result = sub_1AF649C6C(*(v11 + 40), &type metadata for Scale, &v67);
    if (v67 == 1)
    {
      if (a2)
      {
        result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v8, v9, v10, v12);
        v19 = a1[6];
        v20 = a1[7] - v19;
        if (v20)
        {
          v21 = 16 * v19;
          v22 = &v13[16 * v19];
          v23 = &v16[4 * v19];
          v24 = (result + v21);
          do
          {
            v25 = *v24++;
            v26 = v25;
            v27 = *(&v25 + 1);
            v28 = DWORD1(v25);
            if ((DWORD1(v25) & 0x7FFFFF) != 0)
            {
              v29 = *&v26;
            }

            else
            {
              v29 = v27;
            }

            if ((~v28 & 0x7F800000) != 0)
            {
              v29 = v27;
            }

            if (v27 >= *&v26)
            {
              v30 = v29;
            }

            else
            {
              v30 = *&v26;
            }

            if ((DWORD2(v26) & 0x7FFFFF) != 0)
            {
              v31 = v30;
            }

            else
            {
              v31 = *(&v26 + 2);
            }

            if ((~DWORD2(v26) & 0x7F800000) != 0)
            {
              v31 = *(&v26 + 2);
            }

            if (*(&v26 + 2) >= v30)
            {
              v32 = v31;
            }

            else
            {
              v32 = v30;
            }

            v33 = *v23++;
            *v22 = vsubq_f32(*v22, vmulq_n_f32(*v22, (v32 * v32) * fminf(v15 * v33, 1.0)));
            ++v22;
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        v54 = a1[6];
        v55 = a1[7] - v54;
        if (v55)
        {
          v56 = &v13[16 * v54];
          v57 = &v16[4 * v54];
          do
          {
            v58 = *v57++;
            *v56 = vsubq_f32(*v56, vmulq_n_f32(*v56, fminf(v15 * v58, 1.0)));
            ++v56;
            --v55;
          }

          while (v55);
        }
      }
    }

    else
    {
      v42 = a1[6];
      v43 = a1[7] - v42;
      if (a2)
      {
        if (v43)
        {
          v44 = &v13[16 * v42];
          v45 = &v16[4 * v42];
          do
          {
            v46 = *v45++;
            v18.f32[0] = fminf(v15 * v46, 1.0);
            v47 = v18;
            *&v47.i32[1] = v18.f32[0] * 0.0;
            v48 = vzip1q_s32(v47, v47);
            v48.i32[2] = v18.i32[0];
            v18 = vsubq_f32(*v44, vmulq_f32(*v44, v48));
            *v44++ = v18;
            --v43;
          }

          while (v43);
        }
      }

      else if (v43)
      {
        v62 = &v13[16 * v42];
        v63 = &v16[4 * v42];
        do
        {
          v64 = *v63++;
          *v62 = vsubq_f32(*v62, vmulq_n_f32(*v62, fminf(v15 * v64, 1.0)));
          ++v62;
          --v43;
        }

        while (v43);
      }
    }
  }

  else
  {
    *v14.i32 = fminf(v15, 1.0);
    v66 = v14;
    result = sub_1AF649C6C(*(v11 + 40), &type metadata for Scale, v68);
    if (v68[0] == 1)
    {
      if (a2)
      {
        result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v8, v9, v10, v12);
        v34 = a1[6];
        v35 = a1[7] - v34;
        if (v35)
        {
          v36 = 16 * v34;
          v37 = &v13[16 * v34];
          v38 = (result + v36);
          do
          {
            v39 = *v38;
            LODWORD(v40) = HIDWORD(*v38);
            if (v40 >= COERCE_FLOAT(*v38))
            {
              if ((LODWORD(v40) & 0x7FFFFF) != 0)
              {
                LODWORD(v41) = *v38;
              }

              else
              {
                LODWORD(v41) = HIDWORD(*v38);
              }

              if ((~LODWORD(v40) & 0x7F800000) == 0)
              {
                v40 = v41;
              }
            }

            else
            {
              LODWORD(v40) = *v38;
            }

            if (*(&v39 + 2) >= v40)
            {
              if ((DWORD2(v39) & 0x7FFFFF) == 0)
              {
                LODWORD(v40) = *(v38 + 1);
              }

              if ((~DWORD2(v39) & 0x7F800000) != 0)
              {
                LODWORD(v40) = *(v38 + 1);
              }
            }

            *v37 = vsubq_f32(*v37, vmulq_n_f32(*v37, *v66.i32 * (v40 * v40)));
            ++v37;
            ++v38;
            --v35;
          }

          while (v35);
        }
      }

      else
      {
        v59 = a1[6];
        v60 = a1[7] - v59;
        if (v60)
        {
          v61 = &v13[16 * v59];
          do
          {
            *v61 = vsubq_f32(*v61, vmulq_n_f32(*v61, *v66.i32));
            ++v61;
            --v60;
          }

          while (v60);
        }
      }
    }

    else
    {
      v49 = a1[6];
      v50 = a1[7] - v49;
      if (a2)
      {
        if (v50)
        {
          v51 = v66;
          *&v51.i32[1] = *v66.i32 * 0.0;
          v52 = vzip1q_s32(v51, v51);
          v52.i32[2] = v66.i32[0];
          v53 = &v13[16 * v49];
          do
          {
            *v53 = vsubq_f32(*v53, vmulq_f32(v52, *v53));
            ++v53;
            --v50;
          }

          while (v50);
        }
      }

      else if (v50)
      {
        v65 = &v13[16 * v49];
        do
        {
          *v65 = vsubq_f32(*v65, vmulq_n_f32(*v65, *v66.i32));
          ++v65;
          --v50;
        }

        while (v50);
      }
    }
  }

  return result;
}

uint64_t sub_1AFA2E3D4(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v8 = *(a1 + 88);
  v9 = v3;
  v10 = *(a1 + 120);
  sub_1AF82917C(v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

float sub_1AFA2E470(void *a1)
{
  sub_1AFA2EB18(0, &unk_1EB630B48, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA2EAC4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    sub_1AFDFE738();
    v2 = v9;
    v12 = 1;
    sub_1AFDFE718();
    (*(v6 + 8))(v8, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFA2E628(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v5 = sub_1AF3CE018(v3);

  if ((v5 & 0xFF00000000) == 0x200000000)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = *&v5;
  }

  sub_1AFB93E58();
  v8 = v7;
  v9 = *(v2 + 32);
  v78[0] = *(v2 + 16);
  v78[1] = v9;
  v79 = *(v2 + 48);
  sub_1AF6B06C0(v4, v78, 0x200000000, &v62);
  if (v62)
  {
    v56 = v69;
    if (v69 > 0)
    {
      v55 = v66;
      if (v66)
      {
        v10 = 0;
        v11 = v5 & 0xFFFFFFFFFFLL;
        v54 = v65;
        v12 = v68;
        v13 = *(v68 + 32);
        v53 = v67;
        v14 = *(v67 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v70 = v62;
        v71 = v63;
        v72 = v64;
        v50 = v13;
        v51 = HIDWORD(v11) & 1;
        v52 = v14;
        do
        {
          v15 = (v54 + 48 * v10);
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[2];
          v19 = *(v15 + 3);
          v57 = *(v15 + 2);
          v20 = *(v15 + 4);
          v21 = *(v15 + 5);
          if (v14)
          {
            v22 = *(v21 + 376);

            os_unfair_lock_lock(v22);
            os_unfair_lock_lock(*(v21 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v13);
          v59 = *(v12 + 64);
          v60 = *(v12 + 48);
          v58 = *(v12 + 80);
          v23 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
          *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v23, 8);
          *(v12 + 56) = v23;
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
          *(v12 + 64) = 0;
          v73[0] = v53;
          v73[1] = v21;
          v61 = v21;
          v73[2] = v12;
          v73[3] = v18;
          v73[4] = (v17 - v16 + v18);
          v73[5] = v56;
          v73[6] = v16;
          v73[7] = v17;
          v73[8] = 0;
          v73[9] = 0;
          v74 = 1;
          v75 = v57;
          v76 = v19;
          v77 = v20;
          sub_1AFA2DF78(v73, v51, v6, v8);
          v24 = *(v12 + 48);
          v25 = *(v12 + 64);
          if (!v25)
          {
            v47 = *(v12 + 56);
            v48 = *(v12 + 32);
            goto LABEL_42;
          }

          for (i = 0; i != v25; ++i)
          {
            v28 = (v24 + 48 * i);
            v29 = *v28;
            v30 = v28[4];
            v31 = *(v12 + 72);
            if (v31)
            {
              v32 = v29 == v31;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              goto LABEL_14;
            }

            v33 = v70;
            if (!v70[11])
            {
              goto LABEL_14;
            }

            v34 = v28[2];
            v35 = v70 + 41;
            v36 = v70[9];
            if (v36 >= 0x10)
            {
              v37 = &v35[v70[8]];
              v38 = v36 >> 4;
              v39 = v70 + 41;
              while (*v37 != v29)
              {
                ++v39;
                v37 += 16;
                if (!--v38)
                {
                  goto LABEL_30;
                }
              }

              v40 = v39[v70[10]];
              v41 = v40 > 5;
              v42 = (1 << v40) & 0x23;
              if (v41 || v42 == 0)
              {
LABEL_14:

                v30(v27);

                continue;
              }
            }

LABEL_30:
            if (swift_conformsToProtocol2() && v34)
            {
              if (sub_1AF5FC8D8(v34))
              {
                goto LABEL_14;
              }

              v44 = v33[9];
              if (v44 < 0x10)
              {
                goto LABEL_14;
              }

              v45 = &v35[v33[8]];
              v46 = 16 * (v44 >> 4);
              while (*v45 != v34)
              {
                v45 += 16;
                v46 -= 16;
                if (!v46)
                {
                  goto LABEL_14;
                }
              }
            }
          }

          v47 = *(v12 + 56);
          v24 = *(v12 + 48);
          v48 = *(v12 + 32);
          if (*(v12 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v13 = v50;
LABEL_42:
          ecs_stack_allocator_deallocate(v48, v24, 48 * v47);
          *(v12 + 48) = v60;
          *(v12 + 64) = v59;
          *(v12 + 80) = v58;
          sub_1AF62D29C(v61);
          ecs_stack_allocator_pop_snapshot(v13);
          v14 = v52;
          if (v52)
          {
            os_unfair_lock_unlock(*(v61 + 344));
            os_unfair_lock_unlock(*(v61 + 376));
          }

          ++v10;
        }

        while (v10 != v55);
      }
    }

    return sub_1AF5D1564(&v62);
  }

  else
  {
  }
}

unint64_t sub_1AFA2EAC4()
{
  result = qword_1EB6324A0;
  if (!qword_1EB6324A0)
  {
    result = swift_getWitnessTable("e_", &type metadata for ParticleDrag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6324A0);
  }

  return result;
}

void sub_1AFA2EB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA2EAC4();
    v7 = a3(a1, &type metadata for ParticleDrag.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA2EB90()
{
  result = qword_1EB6422B8;
  if (!qword_1EB6422B8)
  {
    result = swift_getWitnessTable(byte_1AFE9422C, &type metadata for ParticleDrag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6422B8);
  }

  return result;
}

unint64_t sub_1AFA2EBE8()
{
  result = qword_1EB632490;
  if (!qword_1EB632490)
  {
    result = swift_getWitnessTable("UY", &type metadata for ParticleDrag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632490);
  }

  return result;
}

unint64_t sub_1AFA2EC40()
{
  result = qword_1EB632498;
  if (!qword_1EB632498)
  {
    result = swift_getWitnessTable("mU", &type metadata for ParticleDrag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632498);
  }

  return result;
}

uint64_t sub_1AFA2EC94(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6563617073;
  }

  else
  {
    v2 = 0x6563726F66;
  }

  if (*a2)
  {
    v3 = 0x6563617073;
  }

  else
  {
    v3 = 0x6563726F66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1AFA2ED14()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA2ED84(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFA2EDD8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA2EE44@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AFA2EEA4(uint64_t *a1@<X8>)
{
  v2 = 0x6563726F66;
  if (*v1)
  {
    v2 = 0x6563617073;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1AFA2EED4()
{
  if (*v0)
  {
    return 0x6563617073;
  }

  else
  {
    return 0x6563726F66;
  }
}

uint64_t sub_1AFA2EF00@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AFA2EF64(uint64_t a1)
{
  v2 = sub_1AFA300BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA2EFA0(uint64_t a1)
{
  v2 = sub_1AFA300BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA2EFDC(void *a1, unsigned __int8 a2, __n128 a3)
{
  v12 = a3;
  sub_1AFA30110(0, &qword_1EB6422C0, sub_1AFA300BC, &type metadata for ParticleForce.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA300BC();
  sub_1AFDFF3F8();
  v13 = v12;
  v14 = 0;
  sub_1AFA30110(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AFA30178(&qword_1ED72F758, MEMORY[0x1E69E7458]);
  sub_1AFDFE918();
  if (!v3)
  {
    v13.n128_u8[0] = a2;
    v14 = 1;
    sub_1AF51DD14();
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v10, v7);
}

double sub_1AFA2F200(void *a1, unsigned __int8 a2, float32x4_t a3)
{

  if (a2 - 1 < 2)
  {
    v5 = a1[4];

    sub_1AFB95040(v5, &v42);
    v26 = v42.columns[0];
    v29 = v42.columns[1];
    v32 = v42.columns[2];

    if (v43)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    v7 = vdupq_n_s32(v6);
    v8 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(vbslq_s8(v7, xmmword_1AFE20180, v32), a3, 2), vbslq_s8(v7, xmmword_1AFE20160, v29), *a3.f32, 1), vbslq_s8(v7, xmmword_1AFE20150, v26), a3.f32[0]);
LABEL_6:
    v9 = v8;
    goto LABEL_22;
  }

  if (a2)
  {
    v9 = a3;
    goto LABEL_22;
  }

  sub_1AF5B0170(a1[1], 0, 0, 1, 0, 0, 1, 0, &v38, 0, 1);
  if (!sub_1AFB9402C())
  {
    v9 = a3;
    if (v41)
    {
      goto LABEL_22;
    }

    v8 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v40, a3, 2), v39, *a3.f32, 1), v38, a3.f32[0]);
    goto LABEL_6;
  }

  if (v41)
  {
    v10 = a1[4];

    sub_1AFB95E64(v10, &v42);
    v27 = v42.columns[0];
    v30 = v42.columns[1];
    v33 = v42.columns[2];

    if (v43)
    {
      v11 = -1;
    }

    else
    {
      v11 = 0;
    }

    v12 = vdupq_n_s32(v11);
    v13 = vbslq_s8(v12, xmmword_1AFE20150, v27);
    v14 = vbslq_s8(v12, xmmword_1AFE20160, v30);
    v15 = vbslq_s8(v12, xmmword_1AFE20180, v33);
  }

  else
  {
    v31 = v39;
    v34 = v40;
    v28 = v38;
    v16 = a1[4];

    sub_1AFB95E64(v16, &v42);
    v25 = v42;

    if (v43)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    v18 = vdupq_n_s32(v17);
    v19 = vbslq_s8(v18, xmmword_1AFE20150, v25.columns[0]);
    v20 = vbslq_s8(v18, xmmword_1AFE20160, v25.columns[1]);
    v21 = vbslq_s8(v18, xmmword_1AFE20180, v25.columns[2]);
    v22 = vbslq_s8(v18, xmmword_1AFE201A0, v25.columns[3]);
    v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v28.f32[0]), v20, *v28.f32, 1), v21, v28, 2), v22, v28, 3);
    v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v31.f32[0]), v20, *v31.f32, 1), v21, v31, 2), v22, v31, 3);
    v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v34.f32[0]), v20, *v34.f32, 1), v21, v34, 2), v22, v34, 3);
  }

  v9 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v15, a3, 2), v14, *a3.f32, 1), v13, a3.f32[0]);
LABEL_22:
  v37 = v9;
  sub_1AFB93E58();
  v35 = v23;

  *&result = vmulq_n_f32(v37, v35).u64[0];
  return result;
}

float32x4_t sub_1AFA2F4D0(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v3, v4, v5, v7);
  sub_1AF649C6C(*(v6 + 40), &type metadata for Mass, &v21);
  if (v21 == 1)
  {
    v10 = sub_1AF64B110(&type metadata for Mass, &off_1F252DF08, v3, v4, v5, v7);
    v11 = a1[6];
    v12 = a1[7] - v11;
    if (v12)
    {
      result.i32[0] = a2.i32[2];
      v13 = &v8[16 * v11];
      v14 = &v10[4 * v11];
      do
      {
        v15 = *v14++;
        v16.i64[0] = vaddq_f32(vmulq_n_f32(a2, v15), *v13).u64[0];
        v16.f32[2] = (a2.f32[2] * v15) + COERCE_FLOAT(v13->i64[1]);
        v16.i32[3] = 0;
        *v13++ = v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = a1[6];
    v18 = a1[7] - v17;
    if (v18)
    {
      v19 = &v8[16 * v17];
      do
      {
        result = vaddq_f32(*v19, a2);
        result.i32[3] = 0;
        *v19++ = result;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

unint64_t sub_1AFA2F650@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFA2F924(a2);
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 16) = result;
  }

  return result;
}

double sub_1AFA2F6C0@<D0>(uint64_t a1@<X8>)
{
  *&result = 1065353216;
  *a1 = xmmword_1AFE20150;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1AFA2F6D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v35 = *(a1 + 72);
  v36 = v3;
  v4 = *(a1 + 120);
  v37 = *(a1 + 104);
  v38 = v4;
  v5 = *(a1 + 24);
  v32[0] = v2;
  v32[1] = v5;
  v6 = *(a1 + 56);
  v33 = *(a1 + 40);
  v34 = v6;
  v7 = v2;

  v8 = sub_1AF3CE0F0(*(&v7 + 1));
  v10 = v9;
  v12 = v11;
  v13 = v11;

  v14.i32[0] = v12;
  v15.i32[0] = 5;
  v16 = vdupq_lane_s8(*&vceqq_s8(v14, v15), 0);
  v15.i64[0] = v8;
  v15.i64[1] = v10;
  v17 = vbslq_s8(v16, xmmword_1AFE20150, v15);
  if (v13 == 5)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  *&v19 = sub_1AFA2F200(v32, v18, v17);
  v31 = v19;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_force_uniforms(0);
    sub_1AF6F4524(&v31, 1, ObjectType, v21, v22, v23, v24, v25);
  }

  v26 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v27 = v33;

  v28 = v26;

  MEMORY[0x1EEE9AC00](v29);
  sub_1AFCBF008(v27, sub_1AF9D17D4);
}

unint64_t sub_1AFA2F924(void *a1)
{
  sub_1AFA30110(0, &unk_1EB630B18, sub_1AFA300BC, &type metadata for ParticleForce.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AFA300BC();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AFA30110(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v13 = 0;
    sub_1AFA30178(&qword_1ED72F748, MEMORY[0x1E69E7468]);
    sub_1AFDFE768();
    v11 = v12;
    v13 = 1;
    sub_1AF51DCC0();
    sub_1AFDFE6E8();
    (*(v5 + 8))(v7, v4);
    if (v12 == 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v12;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFA2FB98(uint64_t *a1)
{
  v2 = v1;
  v5 = *a1;
  v4 = a1[1];
  swift_retain_n();
  v6 = sub_1AF3CE0F0(v4);
  v8 = v7;
  v10 = v9;
  v11 = v9;

  v12.i32[0] = v10;
  v13.i32[0] = 5;
  v14 = vdupq_lane_s8(*&vceqq_s8(v12, v13), 0);
  v13.i64[0] = v6;
  v13.i64[1] = v8;
  v15 = vbslq_s8(v14, xmmword_1AFE20150, v13);
  if (v11 == 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  *v17.i64 = sub_1AFA2F200(a1, v16, v15);
  v66 = v17;
  v18 = *(v2 + 32);
  v89[0] = *(v2 + 16);
  v89[1] = v18;
  v90 = *(v2 + 48);
  sub_1AF6B06C0(v5, v89, 0x200000000, &v73);
  if (v73)
  {
    v65 = v80;
    if (v80 > 0)
    {
      v64 = v77;
      if (v77)
      {
        v19 = 0;
        v63 = v76;
        v20 = v79;
        v62 = v78;
        v21 = *(v78 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v72 = *(v79 + 32);
        v81 = v73;
        v82 = v74;
        v83 = v75;
        v61 = v21;
        do
        {
          v22 = (v63 + 48 * v19);
          v23 = *v22;
          v24 = v22[1];
          v25 = v22[2];
          v26 = *(v22 + 2);
          v27 = *(v22 + 3);
          v28 = *(v22 + 4);
          v29 = *(v22 + 5);
          if (v21)
          {
            v30 = *(v29 + 376);

            os_unfair_lock_lock(v30);
            os_unfair_lock_lock(*(v29 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v72);
          v69 = *(v20 + 64);
          v70 = *(v20 + 48);
          v68 = *(v20 + 80);
          v31 = *(*(*(*(v29 + 40) + 16) + 32) + 16) + 1;
          *(v20 + 48) = ecs_stack_allocator_allocate(*(v20 + 32), 48 * v31, 8);
          *(v20 + 56) = v31;
          *(v20 + 72) = 0;
          *(v20 + 80) = 0;
          *(v20 + 64) = 0;
          v84[0] = v62;
          v84[1] = v29;
          v71 = v29;
          v84[2] = v20;
          v84[3] = v25;
          v84[4] = (v24 - v23 + v25);
          v84[5] = v65;
          v84[6] = v23;
          v84[7] = v24;
          v84[8] = 0;
          v84[9] = 0;
          v85 = 1;
          v86 = v26;
          v87 = v27;
          v88 = v28;
          sub_1AFA2F4D0(v84, v66);
          v32 = *(v20 + 48);
          v33 = *(v20 + 64);
          if (!v33)
          {
            v55 = *(v20 + 56);
            v56 = *(v20 + 32);
            v59 = v29;
            v57 = v68;
            v58 = v61;
            goto LABEL_42;
          }

          v67 = v19;
          for (i = 0; i != v33; ++i)
          {
            v36 = (v32 + 48 * i);
            v37 = *v36;
            v38 = v36[4];
            v39 = *(v20 + 72);
            if (v39)
            {
              v40 = v37 == v39;
            }

            else
            {
              v40 = 0;
            }

            if (v40)
            {
              goto LABEL_14;
            }

            v41 = v81;
            if (!v81[11])
            {
              goto LABEL_14;
            }

            v42 = v36[2];
            v43 = v81 + 41;
            v44 = v81[9];
            if (v44 >= 0x10)
            {
              v45 = &v43[v81[8]];
              v46 = v44 >> 4;
              v47 = v81 + 41;
              while (*v45 != v37)
              {
                ++v47;
                v45 += 16;
                if (!--v46)
                {
                  goto LABEL_30;
                }
              }

              v48 = v47[v81[10]];
              v49 = v48 > 5;
              v50 = (1 << v48) & 0x23;
              if (v49 || v50 == 0)
              {
LABEL_14:

                v38(v35);

                continue;
              }
            }

LABEL_30:
            if (swift_conformsToProtocol2() && v42)
            {
              if (sub_1AF5FC8D8(v42))
              {
                goto LABEL_14;
              }

              v52 = v41[9];
              if (v52 < 0x10)
              {
                goto LABEL_14;
              }

              v53 = &v43[v41[8]];
              v54 = 16 * (v52 >> 4);
              while (*v53 != v42)
              {
                v53 += 16;
                v54 -= 16;
                if (!v54)
                {
                  goto LABEL_14;
                }
              }
            }
          }

          v55 = *(v20 + 56);
          v32 = *(v20 + 48);
          v56 = *(v20 + 32);
          if (*(v20 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v19 = v67;
          v57 = v68;
          v58 = v61;
          v59 = v71;
LABEL_42:
          ecs_stack_allocator_deallocate(v56, v32, 48 * v55);
          *(v20 + 48) = v70;
          *(v20 + 64) = v69;
          *(v20 + 80) = v57;
          sub_1AF62D29C(v59);
          ecs_stack_allocator_pop_snapshot(v72);
          v21 = v58;
          if (v58)
          {
            os_unfair_lock_unlock(*(v59 + 344));
            os_unfair_lock_unlock(*(v59 + 376));
          }

          ++v19;
        }

        while (v19 != v64);
      }
    }

    return sub_1AF5D1564(&v73);
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for ParticleForce(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleForce(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1AFA300BC()
{
  result = qword_1EB6322B0;
  if (!qword_1EB6322B0)
  {
    result = swift_getWitnessTable(byte_1AFE944C4, &type metadata for ParticleForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322B0);
  }

  return result;
}

void sub_1AFA30110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFA30178(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA30110(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFA30208()
{
  result = qword_1EB6422C8;
  if (!qword_1EB6422C8)
  {
    result = swift_getWitnessTable(byte_1AFE9449C, &type metadata for ParticleForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6422C8);
  }

  return result;
}

unint64_t sub_1AFA30260()
{
  result = qword_1EB6322A0;
  if (!qword_1EB6322A0)
  {
    result = swift_getWitnessTable(byte_1AFE943D4, &type metadata for ParticleForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322A0);
  }

  return result;
}

unint64_t sub_1AFA302B8()
{
  result = qword_1EB6322A8;
  if (!qword_1EB6322A8)
  {
    result = swift_getWitnessTable("5S", &type metadata for ParticleForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6322A8);
  }

  return result;
}

uint64_t sub_1AFA30330(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 80);
  sub_1AF705094(1, v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AFA30448(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 9);
  v4 = *(a1 + 8);

  v5 = v4 == -1 && v3 == 0;
  if (v5 || (v4 & 0x80000000) != 0 || *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v4 || ((v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4), v3 != -1) ? (v7 = v6[2] == v3) : (v7 = 1), !v7 || (v8 = sub_1AF685CCC(*(*(v2 + 144) + 8 * *v6 + 32), *(v6 + 2), 48), (v8 & 0x100000000) != 0) || ((v9 = v8, v10 = 0, v11 = v1, sub_1AF3CCD70(v4 | (v3 << 32), v40), (v41 & 1) == 0) ? (v12 = 0) : (v12 = -1), v13 = vbslq_s8(vdupq_n_s32(v12), xmmword_1AFE52680, v40[1]), v14 = vcltzq_f32(v13), (v14.i32[2] | v14.i32[1] | v14.i32[0]) < 0)))
  {
  }

  else
  {
    v38 = v13;
    if (v41)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    v36 = vbslq_s8(vdupq_n_s32(v15), xmmword_1AFE201A0, v40[0]);
    v16 = *(sub_1AFB94E48() + 16);

    v17 = v36;
    v34 = v16;
    v17.n128_u32[0] = v9;
    vfx_uniform_grid_init(v16, vsubq_f32(v36, v38), vaddq_f32(v36, v38), v17);
    v18 = *(v11 + 32);
    v55[0] = *(v11 + 16);
    v55[1] = v18;
    v56 = *(v11 + 48);
    sub_1AF6B06C0(v2, v55, 0x200000000, &v42);
    if (v42)
    {
      if (v49 >= 1)
      {
        v19 = v46;
        if (v46)
        {
          v20 = v48;
          v33 = *(v48 + 32);
          v21 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v50 = v42;
          v51 = v43;
          v52 = v44;
          v22 = (v45 + 24);
          v32 = v21;
          do
          {
            v39 = v10;
            v24 = *(v22 - 6);
            v37 = *(v22 - 5);
            v25 = *(v22 - 1);
            v35 = *v22;
            v26 = v22[1];
            v27 = v22[2];
            if (v21)
            {
              v28 = *(v27 + 376);

              os_unfair_lock_lock(v28);
              os_unfair_lock_lock(*(v27 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v33);
            v29 = *(v20 + 64);
            v53[0] = *(v20 + 48);
            v53[1] = v29;
            v54 = *(v20 + 80);
            v30 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
            *(v20 + 48) = ecs_stack_allocator_allocate(*(v20 + 32), 48 * v30, 8);
            *(v20 + 56) = v30;
            *(v20 + 72) = 0;
            *(v20 + 80) = 0;
            *(v20 + 64) = 0;
            v31 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v25, v35, v26, v20);
            vfx_uniform_grid_add_points(v34, &v31[16 * v24], v37 - v24);
            sub_1AF630994(v20, &v50, v53);
            v10 = v39;
            sub_1AF62D29C(v27);
            ecs_stack_allocator_pop_snapshot(v33);
            v21 = v32;
            if (v32)
            {
              os_unfair_lock_unlock(*(v27 + 344));
              os_unfair_lock_unlock(*(v27 + 376));
            }

            v22 += 6;
            --v19;
          }

          while (v19);
        }
      }

      sub_1AF0D9DB0(&v42, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    vfx_uniform_grid_finalize(v34);
  }
}

uint64_t sub_1AFA307F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[5];

  sub_1AF3CB0C0(v3, v31);

  if (*(&v32 + 1))
  {
    sub_1AF9FA090(v31, v33);
    v27 = v41;
    v4 = sub_1AF67E090(v3, v2);
    v5 = 0uLL;
    if ((v33[49] & 1) == 0)
    {
      sub_1AF3C9244(v3, v31);
      v5 = v32;
    }

    v6 = v42;
    if (v42)
    {
      v7 = v43;
      if (v43)
      {
        if (*a1)
        {
          v29 = v5;
          v30 = v4;
          ObjectType = swift_getObjectType();
          type metadata accessor for particle_fill_grid_uniforms(0);
          v10 = v9;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_1AF6F4524(&v29, 1, ObjectType, v10, v11, v12, v13, v14);
          v15 = v37;
          if (v37)
          {
            v25 = v39;
            v26 = v38;

            v28 = (v27 * DWORD1(v27) * DWORD2(v27));
            v16 = sub_1AF6F4158();
            v17 = swift_getObjectType();
            swift_unknownObjectRetain();
            v18 = sub_1AFDFCEC8();
            [v16 pushDebugGroup_];

            sub_1AF6F3BD8(v19, v20);
            swift_unknownObjectRelease();
            v21 = v34;
            if (v33[336])
            {
              v22 = v40;
            }

            else
            {
              v22 = 0;
            }

            v23 = (v35 + v36 * v22) | (v36 << 32);
            swift_unknownObjectRetain();
            sub_1AF6F34C4(v21, v23, 0, 4, v17);
            sub_1AF6F353C(v15, v26, v25, 0);
            swift_unknownObjectRelease();
            swift_getObjectType();
            sub_1AF6F4798(v6, v28);
            [v16 popDebugGroup];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return sub_1AF58D38C(v33);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }

    return sub_1AF58D38C(v33);
  }

  sub_1AF0D9DB0(v31, &qword_1ED722AC0, &type metadata for EmitterRuntime);
  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double sub_1AFA30B5C(uint64_t a1)
{
  sub_1AFB93E58();
  v3 = v2;
  v4 = *(v1 + 32);

  sub_1AFB95040(v4, &v11);
  v8 = v11.columns[0];
  v9 = v11.columns[1];
  v10 = v11.columns[2];

  if (v12)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vdupq_n_s32(v5);
  *&result = vmlaq_f32(vmlaq_n_f32(vbslq_s8(v6, 0, vmulq_f32(v10, 0)), vbslq_s8(v6, xmmword_1AFE20160, v9), v3 * -9.8), 0, vbslq_s8(v6, xmmword_1AFE20150, v8)).u64[0];
  return result;
}

uint64_t sub_1AFA30C1C(uint64_t a1)
{
  v3 = *(a1 + 104);
  v11 = *(a1 + 88);
  v12 = v3;
  v13 = *(a1 + 120);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for Position;
  *(inited + 40) = &off_1F252EDF0;
  *(inited + 48) = &type metadata for Velocity;
  *(inited + 56) = &off_1F2530A78;
  sub_1AF5B4630(inited, v8);
  swift_setDeallocating();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  *(v5 + 32) = &type metadata for Anchored;
  *(v5 + 40) = &off_1F2510B60;
  sub_1AF5C5EFC(v5, v9);
  sub_1AF692DB0(v8);
  sub_1AF688940(a1);
  swift_setDeallocating();
  v6 = v9[1];
  *(v1 + 16) = v9[0];
  *(v1 + 32) = v6;
  *(v1 + 48) = v10;
  return v1;
}

float32x4_t sub_1AFA30D40(void *a1, char a2, float32x4_t a3, float32x4_t a4)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v6, v7, v8, v9);
  v11 = v10;
  if (a2)
  {
    v12 = a1[6];
    v13 = a1[7] - v12;
    if (v13)
    {
      v14 = &v10[16 * v12];
      do
      {
        *v14 = vaddq_f32(*v14, a3);
        ++v14;
        --v13;
      }

      while (v13);
    }
  }

  v15 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v6, v7, v8, v9);
  v16 = sub_1AF9C5E4C();
  v18 = a1[6];
  v19 = a1[7] - v18;
  if (v20)
  {
    if (v19)
    {
      v21 = 16 * v18;
      v22 = &v15[16 * v18];
      v23 = &v11[v21];
      do
      {
        v24 = *v23++;
        result.i64[0] = v24.i64[0];
        *v22 = vmlaq_f32(*v22, a4, v24);
        ++v22;
        --v19;
      }

      while (v19);
    }
  }

  else if (v19)
  {
    v25 = 16 * v18;
    v26 = &v15[16 * v18];
    v27 = &v16[v25];
    v28 = &v11[v25];
    do
    {
      v29 = *v28++;
      result = v29;
      v30 = *v27++;
      v31 = vmulq_f32(v30, a4);
      v31.i32[3] = a4.i32[3];
      *v26 = vmlaq_f32(*v26, v31, result);
      ++v26;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_1AFA30EB4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1AFA30C1C(a1);
  return v2;
}

uint64_t sub_1AFA30F2C(uint64_t a1)
{
  v2 = *(a1 + 88);
  v28 = *(a1 + 72);
  v29 = v2;
  v3 = *(a1 + 120);
  v30 = *(a1 + 104);
  v31 = v3;
  v4 = *(a1 + 24);
  v24 = *(a1 + 8);
  v25 = v4;
  v5 = *(a1 + 56);
  v26 = *(a1 + 40);
  v27 = v5;
  sub_1AFB948C0();
  v6 = sub_1AF657F68(&type metadata for ParticleAffectedByGravity);

  sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v32 = 0;
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = xmmword_1AFE945F0;
  *(v7 + 48) = 0;
  *(v7 + 64) = v6;
  *(v7 + 128) = 13;
  *&v8 = sub_1AFA30B5C(v7);
  v21 = v8;
  sub_1AFB943A8();
  v22 = v21;
  v23 = v9;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_integrate_uniforms(0);
    sub_1AF6F4524(&v22, 1, ObjectType, v11, v12, v13, v14, v15);
  }

  v16 = v26;
  v17 = *(v24 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

  v18 = v17;

  MEMORY[0x1EEE9AC00](v19);
  sub_1AFCBF008(v16, sub_1AF9D17D4);
}

uint64_t sub_1AFA311E0(uint64_t *a1)
{
  v2 = *a1;

  sub_1AFB93E58();
  v63 = v3;
  sub_1AFB948C0();
  v56 = sub_1AF657F68(&type metadata for ParticleAffectedByGravity);

  *v5.i64 = sub_1AFA30B5C(v4);
  v57 = v5;
  v6 = *(v1 + 32);
  v81[0] = *(v1 + 16);
  v81[1] = v6;
  v82 = *(v1 + 48);
  sub_1AF6B06C0(v2, v81, 0x200000000, &v65);
  if (v65)
  {
    v55 = v72;
    if (v72 > 0)
    {
      v54 = v69;
      if (v69)
      {
        v7 = 0;
        v53 = vdupq_lane_s32(v63, 0);
        v8 = v57;
        v8.i32[3] = 0;
        v58 = v8;
        v52 = v68;
        v9 = v71;
        v51 = v70;
        v10 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v64 = *(v71 + 32);
        v73 = v65;
        v74 = v66;
        v75 = v67;
        v50 = v10;
        do
        {
          v11 = (v52 + 48 * v7);
          v12 = *v11;
          v13 = v11[1];
          v14 = v11[2];
          v15 = *(v11 + 2);
          v16 = *(v11 + 3);
          v17 = *(v11 + 4);
          v18 = *(v11 + 5);
          if (v10)
          {
            v19 = *(v18 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v64);
          v60 = *(v9 + 64);
          v61 = *(v9 + 48);
          v59 = *(v9 + 80);
          v20 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
          *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v20, 8);
          *(v9 + 56) = v20;
          *(v9 + 72) = 0;
          *(v9 + 80) = 0;
          *(v9 + 64) = 0;
          v76[0] = v51;
          v76[1] = v18;
          v62 = v18;
          v76[2] = v9;
          v76[3] = v14;
          v76[4] = (v13 - v12 + v14);
          v76[5] = v55;
          v76[6] = v12;
          v76[7] = v13;
          v76[8] = 0;
          v76[9] = 0;
          v77 = 1;
          v78 = v15;
          v79 = v16;
          v80 = v17;
          sub_1AFA30D40(v76, v56, v58, v53);
          v21 = *(v9 + 48);
          v22 = *(v9 + 64);
          if (!v22)
          {
            v44 = *(v9 + 56);
            v45 = *(v9 + 32);
            v48 = v18;
            v46 = v59;
            v47 = v50;
            goto LABEL_39;
          }

          for (i = 0; i != v22; ++i)
          {
            v25 = (v21 + 48 * i);
            v26 = *v25;
            v27 = v25[4];
            v28 = *(v9 + 72);
            if (v28)
            {
              v29 = v26 == v28;
            }

            else
            {
              v29 = 0;
            }

            if (v29)
            {
              goto LABEL_11;
            }

            v30 = v73;
            if (!v73[11])
            {
              goto LABEL_11;
            }

            v31 = v25[2];
            v32 = v73 + 41;
            v33 = v73[9];
            if (v33 >= 0x10)
            {
              v34 = &v32[v73[8]];
              v35 = v33 >> 4;
              v36 = v73 + 41;
              while (*v34 != v26)
              {
                ++v36;
                v34 += 16;
                if (!--v35)
                {
                  goto LABEL_27;
                }
              }

              v37 = v36[v73[10]];
              v38 = v37 > 5;
              v39 = (1 << v37) & 0x23;
              if (v38 || v39 == 0)
              {
LABEL_11:

                v27(v24);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v31)
            {
              if (sub_1AF5FC8D8(v31))
              {
                goto LABEL_11;
              }

              v41 = v30[9];
              if (v41 < 0x10)
              {
                goto LABEL_11;
              }

              v42 = &v32[v30[8]];
              v43 = 16 * (v41 >> 4);
              while (*v42 != v31)
              {
                v42 += 16;
                v43 -= 16;
                if (!v43)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v44 = *(v9 + 56);
          v21 = *(v9 + 48);
          v45 = *(v9 + 32);
          if (*(v9 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v46 = v59;
          v47 = v50;
          v48 = v62;
LABEL_39:
          ecs_stack_allocator_deallocate(v45, v21, 48 * v44);
          *(v9 + 48) = v61;
          *(v9 + 64) = v60;
          *(v9 + 80) = v46;
          sub_1AF62D29C(v48);
          ecs_stack_allocator_pop_snapshot(v64);
          v10 = v47;
          if (v47)
          {
            os_unfair_lock_unlock(*(v48 + 344));
            os_unfair_lock_unlock(*(v48 + 376));
          }

          ++v7;
        }

        while (v7 != v54);
      }
    }

    return sub_1AF5D1564(&v65);
  }

  else
  {
  }
}

uint64_t sub_1AFA316A4(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v8 = *(a1 + 88);
  v9 = v3;
  v10 = *(a1 + 120);
  sub_1AF5C9300(v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AFA31760(uint64_t *a1)
{
  sub_1AFB93E58();
  v35 = v2;
  v3 = *(v1 + 32);
  v54[0] = *(v1 + 16);
  v54[1] = v3;
  v55 = *(v1 + 48);

  sub_1AF6B06C0(v4, v54, 0x200000000, &v41);

  if (v41)
  {
    if (v48 >= 1)
    {
      v39 = v45;
      if (v45)
      {
        v6 = 0;
        v7 = 0;
        v38 = v44;
        v8 = v47;
        v9 = *(v47 + 32);
        v10 = *(v46 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v49 = v41;
        v50 = v42;
        v51 = v43;
        v36 = v10;
        v37 = v9;
        do
        {
          v40 = v7;
          v11 = (v38 + 48 * v6);
          v13 = *v11;
          v12 = v11[1];
          v14 = *(v11 + 2);
          v15 = *(v11 + 3);
          v16 = *(v11 + 4);
          v17 = *(v11 + 5);
          if (v10)
          {
            v18 = *(v17 + 376);

            os_unfair_lock_lock(v18);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v9);
          v19 = *(v8 + 64);
          v52[0] = *(v8 + 48);
          v52[1] = v19;
          v53 = *(v8 + 80);
          v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
          *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v20, 8);
          *(v8 + 56) = v20;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;
          v21 = sub_1AF64B110(&type metadata for ParticleAngle, &off_1F252E0E8, v14, v15, v16, v8);
          v22 = sub_1AF64B110(&type metadata for ParticleAngleVelocity, &off_1F252E048, v14, v15, v16, v8);
          if (v13 != v12)
          {
            v23 = v12 - v13;
            if ((v12 - v13) <= 7)
            {
              goto LABEL_19;
            }

            v24 = &v21[4 * v13];
            v25 = &v22[4 * v13];
            if (v24 < &v22[4 * v12] && v25 < &v21[4 * v12])
            {
              goto LABEL_19;
            }

            v13 += v23 & 0xFFFFFFFFFFFFFFF8;
            v27 = (v25 + 16);
            v28 = (v24 + 16);
            v29 = v23 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v30 = vaddq_f32(*v28, vmulq_n_f32(*v27, v35));
              v28[-1] = vaddq_f32(v28[-1], vmulq_n_f32(v27[-1], v35));
              *v28 = v30;
              v27 += 2;
              v28 += 2;
              v29 -= 8;
            }

            while (v29);
            if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_19:
              v31 = v12 - v13;
              v32 = &v21[4 * v13];
              v33 = &v22[4 * v13];
              do
              {
                v34 = *v33++;
                *v32 = *v32 + (v35 * v34);
                ++v32;
                --v31;
              }

              while (v31);
            }
          }

          v7 = v40;
          sub_1AF630994(v8, &v49, v52);
          sub_1AF62D29C(v17);
          v9 = v37;
          ecs_stack_allocator_pop_snapshot(v37);
          v10 = v36;
          if (v36)
          {
            os_unfair_lock_unlock(*(v17 + 344));
            os_unfair_lock_unlock(*(v17 + 376));
          }

          ++v6;
        }

        while (v6 != v39);
      }
    }

    return sub_1AF5D1564(&v41);
  }

  return result;
}

void sub_1AFA31A6C(void *a1, float a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v4, v5, v6, v7);
  v9 = sub_1AF64B110(&type metadata for AngularVelocity, &off_1F2530A48, v4, v5, v6, v7);
  v10 = sub_1AF9C5E60();
  v12 = a1[6];
  v13 = a1[7];
  v14 = v13 - v12;
  if (v13 != v12)
  {
    v15 = v11;
    v16 = 16 * v12;
    v17 = &v10[v16];
    v18 = &v9[v16];
    v19 = &v8[v16];
    do
    {
      v23 = *v18;
      v20 = vmuls_lane_f32(a2, *v18, 3);
      v21 = vmuls_lane_f32(v20, *v18->f32, 1);
      v22.i32[0] = vextq_s8(v23, v23, 8uLL).u32[0];
      v22.i32[1] = *v18;
      *v23.i8 = vmul_n_f32(v22, v20);
      if (v15)
      {
        v24 = vtrn2q_s32(v23, 0);
        *&v24.i32[1] = v21;
        v24.i32[2] = v23.i32[0];
        v45 = v24;
      }

      else
      {
        v25 = *v17->f32;
        v26.i32[0] = vextq_s8(v25, v25, 8uLL).u32[0];
        v26.i32[1] = *v17->f32;
        *v25.i8 = vmul_f32(*v23.i8, v26);
        v27 = vtrn2q_s32(v25, 0);
        v27.i32[1] = vmuls_lane_f32(v21, *v17, 1);
        v27.i32[2] = v25.i32[0];
        v45 = v27;
        *v25.i8 = vmul_f32(*v25.i8, *v25.i8);
        v20 = sqrtf(*v25.i32 + (*&v25.i32[1] + (*&v27.i32[1] * *&v27.i32[1])));
      }

      v44 = *v19;
      v28 = fmaxf(v20, 0.0001);
      _KR00_8 = __sincosf_stret(v28);
      _Q6 = v44;
      _Q2 = vmulq_n_f32(v45, _KR00_8.__sinval / v28);
      _Q2.i32[2] = vmuls_lane_f32(_KR00_8.__sinval / v28, v45, 2);
      v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v44, 0xCuLL), vnegq_f32(_Q2)), v44, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
      v37 = vaddq_f32(vmlaq_n_f32(vmulq_laneq_f32(_Q2, v44, 3), v44, _KR00_8.__cosval), vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL));
      __asm { FMLA            S2, S1, V6.S[3] }

      v37.i32[3] = _Q2.i32[0];
      v38 = vmulq_f32(v37, v37);
      v39 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
      v40 = xmmword_1AFE201A0;
      if (vaddv_f32(v39) != 0.0)
      {
        v41 = vadd_f32(v39, vdup_lane_s32(v39, 1)).u32[0];
        v42 = vrsqrte_f32(v41);
        v43 = vmul_f32(v42, vrsqrts_f32(v41, vmul_f32(v42, v42)));
        v40 = vmulq_n_f32(v37, vmul_f32(v43, vrsqrts_f32(v41, vmul_f32(v43, v43))).f32[0]);
      }

      *v19++ = v40;
      v17 += 2;
      ++v18;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_1AFA31CCC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v8 = *(a1 + 88);
  v9 = v3;
  v10 = *(a1 + 120);
  sub_1AF5C9324(v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AFA31D88(uint64_t *a1)
{
  sub_1AFB93E58();
  v3 = v2;
  v4 = *(v1 + 32);
  v75[0] = *(v1 + 16);
  v75[1] = v4;
  v76 = *(v1 + 48);

  sub_1AF6B06C0(v5, v75, 0x200000000, v63);

  if (*v63)
  {
    v56 = v66;
    if (v66 > 0)
    {
      v55 = *(&v64 + 1);
      if (*(&v64 + 1))
      {
        v7 = v3 * 0.5;
        v54 = *&v63[40];
        v8 = *(&v65 + 1);
        v53 = v65;
        v9 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v10 = *(*(&v65 + 1) + 32);
        v67 = *v63;
        v68 = *&v63[8];
        v69 = *&v63[24];
        v62[2] = *&v63[32];
        v62[3] = v64;
        v62[4] = v65;
        v62[5] = v66;
        v62[0] = *v63;
        v62[1] = *&v63[16];
        sub_1AF5DD298(v62, v70);
        v11 = 0;
        v52 = v9;
        v51 = v10;
        while (1)
        {
          v61 = v11;
          v12 = (v54 + 48 * v11);
          v13 = *v12;
          v14 = v12[1];
          v15 = v12[2];
          v16 = *(v12 + 2);
          v17 = *(v12 + 3);
          v18 = *(v12 + 4);
          v19 = *(v12 + 5);
          if (v9)
          {
            v20 = *(v19 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v19 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v10);
          v58 = *(v8 + 64);
          v59 = *(v8 + 48);
          v57 = *(v8 + 80);
          v21 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
          *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v21, 8);
          *(v8 + 56) = v21;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;
          v70[0] = v53;
          v70[1] = v19;
          v60 = v19;
          v70[2] = v8;
          v70[3] = v15;
          v70[4] = (v14 - v13 + v15);
          v70[5] = v56;
          v70[6] = v13;
          v70[7] = v14;
          v70[8] = 0;
          v70[9] = 0;
          v71 = 1;
          v72 = v16;
          v73 = v17;
          v74 = v18;
          sub_1AFA31A6C(v70, v7);
          v22 = *(v8 + 48);
          v23 = *(v8 + 64);
          if (!v23)
          {
            v45 = *(v8 + 56);
            v46 = *(v8 + 32);
            v49 = v19;
            v47 = v61;
            v50 = v57;
            v48 = v52;
            goto LABEL_39;
          }

          for (i = 0; i != v23; ++i)
          {
            v26 = (v22 + 48 * i);
            v27 = *v26;
            v28 = v26[4];
            v29 = *(v8 + 72);
            if (v29)
            {
              v30 = v27 == v29;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              goto LABEL_11;
            }

            v31 = v67;
            if (!v67[11])
            {
              goto LABEL_11;
            }

            v32 = v26[2];
            v33 = v67 + 41;
            v34 = v67[9];
            if (v34 >= 0x10)
            {
              v35 = &v33[v67[8]];
              v36 = v34 >> 4;
              v37 = v67 + 41;
              while (*v35 != v27)
              {
                ++v37;
                v35 += 16;
                if (!--v36)
                {
                  goto LABEL_27;
                }
              }

              v38 = v37[v67[10]];
              v39 = v38 > 5;
              v40 = (1 << v38) & 0x23;
              if (v39 || v40 == 0)
              {
LABEL_11:

                v28(v25);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v32)
            {
              if (sub_1AF5FC8D8(v32))
              {
                goto LABEL_11;
              }

              v42 = v31[9];
              if (v42 < 0x10)
              {
                goto LABEL_11;
              }

              v43 = &v33[v31[8]];
              v44 = 16 * (v42 >> 4);
              while (*v43 != v32)
              {
                v43 += 16;
                v44 -= 16;
                if (!v44)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v45 = *(v8 + 56);
          v22 = *(v8 + 48);
          v46 = *(v8 + 32);
          v47 = v61;
          if (*(v8 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v48 = v52;
          v10 = v51;
          v49 = v60;
          v50 = v57;
LABEL_39:
          ecs_stack_allocator_deallocate(v46, v22, 48 * v45);
          *(v8 + 48) = v59;
          *(v8 + 64) = v58;
          *(v8 + 80) = v50;
          sub_1AF62D29C(v49);
          ecs_stack_allocator_pop_snapshot(v10);
          v9 = v48;
          if (v48)
          {
            os_unfair_lock_unlock(*(v49 + 344));
            os_unfair_lock_unlock(*(v49 + 376));
          }

          v11 = v47 + 1;
          if (v11 == v55)
          {
            sub_1AF5D1564(v63);
            return sub_1AF5D1564(v63);
          }
        }
      }
    }

    return sub_1AF5D1564(v63);
  }

  return result;
}

uint64_t sub_1AFA321E8(void *a1, float a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v8 = a1[1];
  v7 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v4, v5, v6, v7);
  v10 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v4, v5, v6, v7);
  v11 = a1[6];
  v12 = a1[7];
  v13 = ecs_stack_allocator_allocate(v7[4], 8 * (v12 - v11), 8);
  v14 = 0;
  for (i = v12 - v11; v12 != v11; ++v11)
  {
    v16 = *&v9[4 * v11] + (*&v10[4 * v11] * a2);
    if (v16 >= 1.0)
    {
      v13[v14++] = v11;
    }

    else
    {
      *&v9[4 * v11] = v16;
    }
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v33 = 5;
  if (v14 >= 1)
  {
    if (v14 == *(v8 + 240) - *(v8 + 232))
    {
      sub_1AF63515C(v31, v28);
      v30 = 0;
      v29 = 0uLL;
    }

    else
    {
      v17 = v13;
      sub_1AF63515C(v31, v28);
      *&v29 = v17;
      *(&v29 + 1) = i;
      v30 = v14;
    }

    v18 = v7[13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7[13] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1AF420EA0(0, v18[2] + 1, 1, v18);
      v7[13] = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v7[13] = sub_1AF420EA0(v20 > 1, v21 + 1, 1, v18);
    }

    v22 = v7[13];
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 72 * v21;
    *(v23 + 32) = v28[0];
    v24 = v28[1];
    v25 = v28[2];
    v26 = v29;
    *(v23 + 96) = v30;
    *(v23 + 64) = v25;
    *(v23 + 80) = v26;
    *(v23 + 48) = v24;
    v7[13] = v22;
  }

  return sub_1AF635250(v31);
}

uint64_t sub_1AFA32428(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 80);
  sub_1AF5C9348(v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AFA324E0(uint64_t *a1)
{
  v2 = *a1;

  sub_1AFB93E58();
  v4 = v3;
  v5 = *(v1 + 32);
  v75[0] = *(v1 + 16);
  v75[1] = v5;
  v76 = *(v1 + 48);
  sub_1AF6B06C0(v2, v75, 0x200000000, &v59);
  if (v59)
  {
    v52 = v66;
    if (v66 > 0)
    {
      v51 = v63;
      if (v63)
      {
        v6 = 0;
        v50 = v62;
        v7 = v65;
        v49 = v64;
        v8 = *(v64 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v58 = *(v65 + 32);
        v67 = v59;
        v68 = v60;
        v69 = v61;
        v48 = v8;
        do
        {
          v9 = (v50 + 48 * v6);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[2];
          v13 = *(v9 + 2);
          v14 = *(v9 + 3);
          v15 = *(v9 + 4);
          v16 = *(v9 + 5);
          if (v8)
          {
            v17 = *(v16 + 376);

            os_unfair_lock_lock(v17);
            os_unfair_lock_lock(*(v16 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v58);
          v55 = *(v7 + 64);
          v56 = *(v7 + 48);
          v54 = *(v7 + 80);
          v18 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
          *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v18, 8);
          *(v7 + 56) = v18;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;
          v70[0] = v49;
          v70[1] = v16;
          v57 = v16;
          v70[2] = v7;
          v70[3] = v12;
          v70[4] = (v11 - v10 + v12);
          v70[5] = v52;
          v70[6] = v10;
          v70[7] = v11;
          v70[8] = 0;
          v70[9] = 0;
          v71 = 1;
          v72 = v13;
          v73 = v14;
          v74 = v15;
          sub_1AFA321E8(v70, v4);
          v19 = *(v7 + 48);
          v20 = *(v7 + 64);
          if (!v20)
          {
            v42 = *(v7 + 56);
            v43 = *(v7 + 32);
            v46 = v16;
            v44 = v54;
            v45 = v48;
            goto LABEL_39;
          }

          v53 = v6;
          for (i = 0; i != v20; ++i)
          {
            v23 = (v19 + 48 * i);
            v24 = *v23;
            v25 = v23[4];
            v26 = *(v7 + 72);
            if (v26)
            {
              v27 = v24 == v26;
            }

            else
            {
              v27 = 0;
            }

            if (v27)
            {
              goto LABEL_11;
            }

            v28 = v67;
            if (!v67[11])
            {
              goto LABEL_11;
            }

            v29 = v23[2];
            v30 = v67 + 41;
            v31 = v67[9];
            if (v31 >= 0x10)
            {
              v32 = &v30[v67[8]];
              v33 = v31 >> 4;
              v34 = v67 + 41;
              while (*v32 != v24)
              {
                ++v34;
                v32 += 16;
                if (!--v33)
                {
                  goto LABEL_27;
                }
              }

              v35 = v34[v67[10]];
              v36 = v35 > 5;
              v37 = (1 << v35) & 0x23;
              if (v36 || v37 == 0)
              {
LABEL_11:

                v25(v22);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v29)
            {
              if (sub_1AF5FC8D8(v29))
              {
                goto LABEL_11;
              }

              v39 = v28[9];
              if (v39 < 0x10)
              {
                goto LABEL_11;
              }

              v40 = &v30[v28[8]];
              v41 = 16 * (v39 >> 4);
              while (*v40 != v29)
              {
                v40 += 16;
                v41 -= 16;
                if (!v41)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v42 = *(v7 + 56);
          v19 = *(v7 + 48);
          v43 = *(v7 + 32);
          if (*(v7 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v6 = v53;
          v44 = v54;
          v45 = v48;
          v46 = v57;
LABEL_39:
          ecs_stack_allocator_deallocate(v43, v19, 48 * v42);
          *(v7 + 48) = v56;
          *(v7 + 64) = v55;
          *(v7 + 80) = v44;
          sub_1AF62D29C(v46);
          ecs_stack_allocator_pop_snapshot(v58);
          v8 = v45;
          if (v45)
          {
            os_unfair_lock_unlock(*(v46 + 344));
            os_unfair_lock_unlock(*(v46 + 376));
          }

          ++v6;
        }

        while (v6 != v51);
      }
    }

    return sub_1AF5D1564(&v59);
  }

  else
  {
  }
}

uint64_t sub_1AFA32924(char a1, uint64_t a2)
{
  v2 = 0x62665F44316E6567;
  v3 = 0x62665F44336E6567;
  if (a2 == 2)
  {
    v3 = 0x62665F44326E6567;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a1 == 1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1AFA329F4(uint64_t a1@<X8>)
{
  *a1 = 1036831949;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1042536202;
  *(a1 + 36) = 0;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
}

uint64_t sub_1AFA32A38(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AFA32B28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA3538C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFA32B58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C616373;
  v5 = 0xE500000000000000;
  v6 = 0x6573696F6ELL;
  v7 = 0x657A6974726F6D61;
  v8 = 0xEA0000000000736ELL;
  if (v2 == 4)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x6F69736E656D6964;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1935763810;
  if (v2 != 1)
  {
    v10 = 0x7469736E65746E69;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AFA32C10()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x6573696F6ELL;
  v4 = 0x657A6974726F6D61;
  if (v1 != 4)
  {
    v4 = 0x6F69736E656D6964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1935763810;
  if (v1 != 1)
  {
    v5 = 0x7469736E65746E69;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_1AFA32CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA3538C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA32CEC(uint64_t a1)
{
  v2 = sub_1AFA35798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA32D28(uint64_t a1)
{
  v2 = sub_1AFA35798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA32D64(void *a1)
{
  v3 = v1;
  sub_1AFA357EC(0, &qword_1EB6422D0, sub_1AFA35798, &type metadata for ParticleNoise.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA35798();
  sub_1AFDFF3F8();
  LOBYTE(v11) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = 1;
    sub_1AFA357EC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFA35854(&qword_1ED72F758, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
    LOBYTE(v11) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v11) = *(v3 + 36);
    v12 = 3;
    sub_1AF51D07C();
    sub_1AFDFE918();
    LOBYTE(v11) = 4;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 5;
    sub_1AFDFE8F8();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AFA33028@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFA353D8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1AFA3308C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v60 = *(a1 + 72);
  v61 = v3;
  v4 = *(a1 + 120);
  v62 = *(a1 + 104);
  v63 = v4;
  v5 = *(a1 + 24);
  v56 = v2;
  v57 = v5;
  v6 = *(a1 + 56);
  v58 = *(a1 + 40);
  v59 = v6;
  v7 = v2;
  swift_retain_n();
  sub_1AF3CE1DC(*(&v7 + 1), v52);
  v8 = v52[0];
  v9 = v52[2];
  v10 = v52[3];
  v11 = v52[4];
  v12 = v52[5];

  if (v53 == 2)
  {
    v13 = 0;
    v8 = 1036831949;
    v44 = 0u;
    v14 = 0.16;
    v12 = 3;
LABEL_8:
    sub_1AF5B0170(*(&v7 + 1), 0, 0, 1, 0, 0, 1, 0, v54, 0, 1);
    v40 = v54[0];
    v41 = v54[1];
    v42 = v54[2];
    v43 = v54[3];
    v17 = v55;
    v51 = v55;
    sub_1AFB943A8();
    v19 = v14 * v18;
    if (v17)
    {
      v20 = -1;
    }

    else
    {
      v20 = 0;
    }

    v21 = vdupq_n_s32(v20);
    v45[0] = v19;
    LODWORD(v45[1]) = v8;
    v46 = v44;
    v47 = vbslq_s8(v21, xmmword_1AFE20150, v40);
    v48 = vbslq_s8(v21, xmmword_1AFE20160, v41);
    v49 = vbslq_s8(v21, xmmword_1AFE20180, v42);
    v50 = vbslq_s8(v21, xmmword_1AFE201A0, v43);
    v22 = *a1;
    if (*a1)
    {
      ObjectType = swift_getObjectType();
      type metadata accessor for particle_noise_uniforms(0);
      sub_1AF6F4524(v45, 1, ObjectType, v24, v25, v26, v27, v28);
    }

    if (v13 == 2)
    {
      v29 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
      v30 = v58;

      v31 = v29;

      MEMORY[0x1EEE9AC00](v32);
      sub_1AFCBF008(v30, sub_1AFA09F2C);
    }

    else
    {
      sub_1AF74F2D4(*(a1 + 136), *(a1 + 144), v13, v12, 1, v45);
      if (v48.i64[1])
      {
        v33 = v49.i64[0];

        swift_unknownObjectRelease();
        if (v22)
        {
          [v22 setTexture:v33 atIndex:0];
        }

        sub_1AFA35960(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
        v34 = swift_allocObject();
        v35 = (v51 & 1) == 0;
        *(v34 + 16) = xmmword_1AFE431C0;
        *(v34 + 32) = xmmword_1AFE948C0;
        *(v34 + 48) = 0;
        *(v34 + 64) = v35;
        *(v34 + 128) = 13;
        v36 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v37 = v58;

        v38 = v36;

        MEMORY[0x1EEE9AC00](v39);
        sub_1AFCBF008(v37, sub_1AFA09E00);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  v14 = *&v11;
  if (*&v11 != 0.0)
  {
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v44 = v16;
    v13 = HIDWORD(v11);
    goto LABEL_8;
  }
}

__n128 sub_1AFA33604@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  return result;
}

uint64_t sub_1AFA33614()
{
  v1 = *(v0 + 8);
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA33674()
{
  v1 = *(v0 + 8);
  sub_1AFDFF2A8();
  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AFA336B4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

void sub_1AFA3373C(void *a1, uint64_t a2, uint64_t a3)
{
  v335 = *MEMORY[0x1E69E9840];
  v5 = a1[1];

  v284 = v5;
  sub_1AF3CE1DC(v5, v311);
  v6 = v311[0];
  v7 = v311[2];
  v8 = v311[3];
  v9 = v311[4];
  v10 = v311[5];
  v11 = v312;

  if (v11 == 2)
  {
    sub_1AFB93E58();
    v11 = 0;
    v12 = 0;
    *v14.i32 = v13 * 0.16;
    v296 = v14;
    v14.i32[0] = 1036831949;
    v273 = v14;
    v278 = 0u;
    v15 = 3;
    v16 = a2;
LABEL_3:
    v17 = v15;
    sub_1AF74F2D4(v16, a3, v12, v15, 0, &v313);
    if (!*(&v316 + 1))
    {
      return;
    }

    *v308 = v313;
    *&v308[16] = v314;
    *&v308[32] = v315;
    v309 = v316;
    v310 = v317;
    v331[0] = v313;
    v331[1] = v314;
    v331[2] = v315;
    v331[3] = v316;
    swift_unknownObjectRelease();
    v18 = vdupq_lane_s32(v273, 0);
    v18.i32[3] = 1.0;
    v294 = v18;
    v297 = vdupq_lane_s32(v296, 0);
    v19 = v278;
    v19.i32[3] = 0;
    v292 = v19;
    v20 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) & 3;
    v21 = sub_1AF3CA0E0(v284);
    v23 = v16;
    if (v24)
    {
LABEL_50:
      sub_1AF5B00E0(v284);
      if ((v65 & 1) == 0)
      {
        v64.i64[1] = v63;
        *v66.f32 = vmul_n_f32(v62, *v273.i32);
        v66.i64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(vmuls_lane_f32(*v273.i32, v64, 2)));
        v294 = v66;
      }

      v67 = sub_1AF3C9FF4(v284);
      if ((v69 & 1) == 0)
      {
        *v70.f32 = vadd_f32(*v278.f32, v67);
        v70.i64[1] = vaddq_f32(v278, vdupq_n_s64(v68)).u32[2];
        v292 = v70;
      }

      v71 = 1;
      v280 = 0u;
      v286 = 0u;
      v269 = 0u;
      v274 = 0u;
      goto LABEL_56;
    }

    v25 = 0;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v27 = 1;
    while (!v27)
    {
      if (v25 == 3)
      {
        goto LABEL_55;
      }

      v27 = 0;
LABEL_7:
      ++v25;
    }

    v299 = v26;
    v28 = *(&v299 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
    v300 = xmmword_1AFE201A0;
    v29 = *(&v300 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
    v27 = v28 == v29;
    if (v25 != 3)
    {
      goto LABEL_7;
    }

    if (v28 == v29)
    {
      goto LABEL_50;
    }

LABEL_55:
    sub_1AF5B0170(v284, 0, 0, 1, v21, v22, 0, 0, v318, 0, 1);
    v280 = v318[1];
    v286 = v318[0];
    v269 = v318[3];
    v274 = v318[2];
    v71 = v319;
LABEL_56:
    v72 = v297;
    v72.i32[3] = 0;
    v298 = v72;
    if (v17 == 2)
    {
      sub_1AF44222C(v308, v326);
      sub_1AF478700(v331, 2, 1, &v320);
      if (*(&v322 + 1) == 1)
      {
        goto LABEL_106;
      }

      v302 = v320;
      v303 = v321;
      v304 = v322;
      *&v305 = v323;
      if (v71)
      {
        v96 = *(v260 + 72);
        *v301 = *(v260 + 56);
        *&v301[16] = v96;
        *&v301[32] = *(v260 + 88);
        sub_1AF6B06C0(v23, v301, 0x200000000, v326);
        if (!*v326)
        {
          goto LABEL_106;
        }

        if (v329 > 0)
        {
          v255 = *(&v327 + 1);
          if (*(&v327 + 1))
          {
            v97 = 0;
            v98 = 0;
            v249 = *&v326[40];
            v99 = *(&v328 + 1);
            v288 = *(*(&v328 + 1) + 32);
            v100 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            *v330 = *v326;
            *&v330[8] = *&v326[8];
            *&v330[24] = *&v326[24];
            v243 = v100;
            do
            {
              v276 = v98;
              v101 = (v249 + 48 * v97);
              v271 = *v101;
              v102 = v101[2];
              v262 = v101[1];
              v104 = *(v101 + 2);
              v103 = *(v101 + 3);
              v106 = *(v101 + 4);
              v105 = *(v101 + 5);
              v282 = v97;
              if (v100)
              {
                v107 = *(v105 + 376);

                os_unfair_lock_lock(v107);
                os_unfair_lock_lock(*(v105 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v288);
              v108 = *(v99 + 64);
              v332 = *(v99 + 48);
              v333 = v108;
              v334 = *(v99 + 80);
              v109 = *(*(*(*(v105 + 40) + 16) + 32) + 16) + 1;
              *(v99 + 48) = ecs_stack_allocator_allocate(*(v99 + 32), 48 * v109, 8);
              *(v99 + 56) = v109;
              *(v99 + 72) = 0;
              *(v99 + 80) = 0;
              *(v99 + 64) = 0;
              v110 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v104, v103, v106, v99);
              v111 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v104, v103, v106, v99);
              v112 = v111;
              if (v104)
              {
                for (; v106; --v106)
                {
                  if ((v11 & ((v102 & 3) != v20)) == 0)
                  {
                    *v113.i64 = (*(&v304 + 1))(&v302, vmlaq_f32(v292, v294, *v110));
                    *v112 = vmlaq_f32(*v112, v298, v113);
                  }

                  LOBYTE(v102) = v102 + 1;
                  ++v112;
                  ++v110;
                }
              }

              else if (v271 != v262)
              {
                v114 = v262 - v271;
                v115 = &v111[16 * v271];
                v116 = &v110[v271];
                do
                {
                  if ((v11 & ((v102 & 3) != v20)) == 0)
                  {
                    *v117.i64 = (*(&v304 + 1))(&v302, vmlaq_f32(v292, v294, *v116));
                    *v115 = vmlaq_f32(*v115, v298, v117);
                  }

                  LOBYTE(v102) = v102 + 1;
                  ++v115;
                  ++v116;
                  --v114;
                }

                while (v114);
              }

              v98 = v276;
              sub_1AF630994(v99, v330, &v332);
              sub_1AF62D29C(v105);
              ecs_stack_allocator_pop_snapshot(v288);
              v100 = v243;
              if (v243)
              {
                os_unfair_lock_unlock(*(v105 + 344));
                os_unfair_lock_unlock(*(v105 + 376));
              }

              v97 = v282 + 1;
            }

            while (v282 + 1 != v255);
          }
        }
      }

      else
      {
        v170 = *(v260 + 72);
        *v301 = *(v260 + 56);
        *&v301[16] = v170;
        *&v301[32] = *(v260 + 88);
        sub_1AF6B06C0(v23, v301, 0x200000000, v326);
        if (!*v326)
        {
          goto LABEL_106;
        }

        if (v329 > 0)
        {
          v236 = *(&v327 + 1);
          if (*(&v327 + 1))
          {
            v171 = 0;
            v172 = 0;
            v232 = *&v326[40];
            v173 = *(&v328 + 1);
            v265 = *(*(&v328 + 1) + 32);
            v174 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            *v330 = *v326;
            *&v330[8] = *&v326[8];
            *&v330[24] = *&v326[24];
            v229 = v174;
            do
            {
              v175 = (v232 + 48 * v171);
              v246 = *v175;
              v252 = v172;
              v176 = v175[2];
              v240 = v175[1];
              v178 = *(v175 + 2);
              v177 = *(v175 + 3);
              v180 = *(v175 + 4);
              v179 = *(v175 + 5);
              v258 = v171;
              if (v174)
              {
                v181 = *(v179 + 376);

                os_unfair_lock_lock(v181);
                os_unfair_lock_lock(*(v179 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v265);
              v182 = *(v173 + 64);
              v332 = *(v173 + 48);
              v333 = v182;
              v334 = *(v173 + 80);
              v183 = *(*(*(*(v179 + 40) + 16) + 32) + 16) + 1;
              *(v173 + 48) = ecs_stack_allocator_allocate(*(v173 + 32), 48 * v183, 8);
              *(v173 + 56) = v183;
              *(v173 + 72) = 0;
              *(v173 + 80) = 0;
              *(v173 + 64) = 0;
              v184 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v178, v177, v180, v173);
              v185 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v178, v177, v180, v173);
              v186 = v185;
              if (v178)
              {
                for (; v180; --v180)
                {
                  if ((v11 & ((v176 & 3) != v20)) == 0)
                  {
                    v187 = vmlaq_f32(v292, v294, *v184);
                    *v188.i64 = (*(&v304 + 1))(&v302, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v187.f32[0]), v280, *v187.f32, 1), v274, v187, 2), v269, v187, 3));
                    *v186 = vmlaq_f32(*v186, v298, v188);
                  }

                  LOBYTE(v176) = v176 + 1;
                  ++v186;
                  ++v184;
                }
              }

              else if (v246 != v240)
              {
                v189 = v240 - v246;
                v190 = &v185[16 * v246];
                v191 = &v184[v246];
                do
                {
                  if ((v11 & ((v176 & 3) != v20)) == 0)
                  {
                    v192 = vmlaq_f32(v292, v294, *v191);
                    *v193.i64 = (*(&v304 + 1))(&v302, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v192.f32[0]), v280, *v192.f32, 1), v274, v192, 2), v269, v192, 3));
                    *v190 = vmlaq_f32(*v190, v298, v193);
                  }

                  LOBYTE(v176) = v176 + 1;
                  ++v190;
                  ++v191;
                  --v189;
                }

                while (v189);
              }

              v172 = v252;
              sub_1AF630994(v173, v330, &v332);
              sub_1AF62D29C(v179);
              ecs_stack_allocator_pop_snapshot(v265);
              v174 = v229;
              if (v229)
              {
                os_unfair_lock_unlock(*(v179 + 344));
                os_unfair_lock_unlock(*(v179 + 376));
              }

              v171 = v258 + 1;
            }

            while (v258 + 1 != v236);
          }
        }
      }

      goto LABEL_202;
    }

    if (v17 == 1)
    {
      sub_1AF44222C(v308, v326);
      sub_1AF4783C0(v331, 2, 1, &v332);
      if (*(&v333 + 1) == 1)
      {
        goto LABEL_106;
      }

      *v330 = v332;
      *&v330[16] = v333;
      *&v330[32] = v334;
      if (v71)
      {
        v73 = *(v260 + 72);
        v320 = *(v260 + 56);
        v321 = v73;
        *&v322 = *(v260 + 88);
        sub_1AF6B06C0(v23, &v320, 0x200000000, v326);
        if (*v326)
        {
          if (v329 > 0)
          {
            v254 = *(&v327 + 1);
            if (*(&v327 + 1))
            {
              v74 = 0;
              v75 = 0;
              v248 = *&v326[40];
              v76 = *(&v328 + 1);
              v287 = *(*(&v328 + 1) + 32);
              v77 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              *v301 = *v326;
              *&v301[8] = *&v326[8];
              *&v301[24] = *&v326[24];
              v242 = v77;
              while (1)
              {
                v275 = v75;
                v281 = v74;
                v78 = (v248 + 48 * v74);
                v270 = *v78;
                v79 = v78[2];
                v261 = v78[1];
                v81 = *(v78 + 2);
                v80 = *(v78 + 3);
                v83 = *(v78 + 4);
                v82 = *(v78 + 5);
                if (v77)
                {
                  v84 = *(v82 + 376);

                  os_unfair_lock_lock(v84);
                  os_unfair_lock_lock(*(v82 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v287);
                v85 = *(v76 + 64);
                v302 = *(v76 + 48);
                v303 = v85;
                *&v304 = *(v76 + 80);
                v86 = *(*(*(*(v82 + 40) + 16) + 32) + 16) + 1;
                *(v76 + 48) = ecs_stack_allocator_allocate(*(v76 + 32), 48 * v86, 8);
                *(v76 + 56) = v86;
                *(v76 + 72) = 0;
                *(v76 + 80) = 0;
                *(v76 + 64) = 0;
                v87 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v81, v80, v83, v76);
                v88 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v81, v80, v83, v76);
                v89 = v88;
                if (v81)
                {
                  if (v83)
                  {
                    v90 = v281;
                    do
                    {
                      if ((v11 & ((v79 & 3) != v20)) == 0)
                      {
                        *v91.i64 = (*&v330[24])(v330, vmlaq_f32(v292, v294, *v87));
                        *v89 = vmlaq_f32(*v89, v298, v91);
                      }

                      LOBYTE(v79) = v79 + 1;
                      ++v89;
                      ++v87;
                      --v83;
                    }

                    while (v83);
                    goto LABEL_76;
                  }
                }

                else if (v270 != v261)
                {
                  v92 = v261 - v270;
                  v93 = &v88[16 * v270];
                  v94 = &v87[v270];
                  v90 = v281;
                  do
                  {
                    if ((v11 & ((v79 & 3) != v20)) == 0)
                    {
                      *v95.i64 = (*&v330[24])(v330, vmlaq_f32(v292, v294, *v94));
                      *v93 = vmlaq_f32(*v93, v298, v95);
                    }

                    LOBYTE(v79) = v79 + 1;
                    ++v93;
                    ++v94;
                    --v92;
                  }

                  while (v92);
                  goto LABEL_76;
                }

                v90 = v281;
LABEL_76:
                v75 = v275;
                sub_1AF630994(v76, v301, &v302);
                sub_1AF62D29C(v82);
                ecs_stack_allocator_pop_snapshot(v287);
                v77 = v242;
                if (v242)
                {
                  os_unfair_lock_unlock(*(v82 + 344));
                  os_unfair_lock_unlock(*(v82 + 376));
                }

                v74 = v90 + 1;
                if (v74 == v254)
                {
                  goto LABEL_202;
                }
              }
            }
          }

          goto LABEL_202;
        }

LABEL_106:
        sub_1AF478A6C(v308);
        return;
      }

      v145 = *(v260 + 72);
      v320 = *(v260 + 56);
      v321 = v145;
      *&v322 = *(v260 + 88);
      sub_1AF6B06C0(v23, &v320, 0x200000000, v326);
      if (!*v326)
      {
        goto LABEL_106;
      }

      if (v329 > 0)
      {
        v235 = *(&v327 + 1);
        if (*(&v327 + 1))
        {
          v146 = 0;
          v147 = 0;
          v231 = *&v326[40];
          v148 = *(&v328 + 1);
          v264 = *(*(&v328 + 1) + 32);
          v149 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          *v301 = *v326;
          *&v301[8] = *&v326[8];
          *&v301[24] = *&v326[24];
          v228 = v149;
          do
          {
            v251 = v147;
            v257 = v146;
            v150 = (v231 + 48 * v146);
            v245 = *v150;
            v151 = v150[2];
            v239 = v150[1];
            v153 = *(v150 + 2);
            v152 = *(v150 + 3);
            v155 = *(v150 + 4);
            v154 = *(v150 + 5);
            if (v149)
            {
              v156 = *(v154 + 376);

              os_unfair_lock_lock(v156);
              os_unfair_lock_lock(*(v154 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v264);
            v157 = *(v148 + 64);
            v302 = *(v148 + 48);
            v303 = v157;
            *&v304 = *(v148 + 80);
            v158 = *(*(*(*(v154 + 40) + 16) + 32) + 16) + 1;
            *(v148 + 48) = ecs_stack_allocator_allocate(*(v148 + 32), 48 * v158, 8);
            *(v148 + 56) = v158;
            *(v148 + 72) = 0;
            *(v148 + 80) = 0;
            *(v148 + 64) = 0;
            v159 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v153, v152, v155, v148);
            v160 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v153, v152, v155, v148);
            v161 = v160;
            if (v153)
            {
              if (v155)
              {
                v162 = v257;
                do
                {
                  if ((v11 & ((v151 & 3) != v20)) == 0)
                  {
                    v163 = vmlaq_f32(v292, v294, *v159);
                    *v164.i64 = (*&v330[24])(v330, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v163.f32[0]), v280, *v163.f32, 1), v274, v163, 2), v269, v163, 3));
                    *v161 = vmlaq_f32(*v161, v298, v164);
                  }

                  LOBYTE(v151) = v151 + 1;
                  ++v161;
                  ++v159;
                  --v155;
                }

                while (v155);
                goto LABEL_149;
              }
            }

            else if (v245 != v239)
            {
              v165 = v239 - v245;
              v166 = &v160[16 * v245];
              v167 = &v159[v245];
              v162 = v257;
              do
              {
                if ((v11 & ((v151 & 3) != v20)) == 0)
                {
                  v168 = vmlaq_f32(v292, v294, *v167);
                  *v169.i64 = (*&v330[24])(v330, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v168.f32[0]), v280, *v168.f32, 1), v274, v168, 2), v269, v168, 3));
                  *v166 = vmlaq_f32(*v166, v298, v169);
                }

                LOBYTE(v151) = v151 + 1;
                ++v166;
                ++v167;
                --v165;
              }

              while (v165);
              goto LABEL_149;
            }

            v162 = v257;
LABEL_149:
            v147 = v251;
            sub_1AF630994(v148, v301, &v302);
            sub_1AF62D29C(v154);
            ecs_stack_allocator_pop_snapshot(v264);
            v149 = v228;
            if (v228)
            {
              os_unfair_lock_unlock(*(v154 + 344));
              os_unfair_lock_unlock(*(v154 + 376));
            }

            v146 = v162 + 1;
          }

          while (v146 != v235);
        }
      }

LABEL_202:
      sub_1AF478A6C(v308);
      goto LABEL_203;
    }

    sub_1AF44222C(v308, v326);
    sub_1AF478ACC(v331, 2, 1, &v320);
    if (*(&v324 + 1) == 1)
    {
      goto LABEL_106;
    }

    v304 = v322;
    v305 = v323;
    v302 = v320;
    v303 = v321;
    v306 = v324;
    v307 = v325;
    if (v71)
    {
      v118 = *(v260 + 72);
      *v301 = *(v260 + 56);
      *&v301[16] = v118;
      *&v301[32] = *(v260 + 88);
      sub_1AF6B06C0(v23, v301, 0x200000000, v326);
      if (!*v326)
      {
        goto LABEL_106;
      }

      if (v329 > 0)
      {
        v256 = *(&v327 + 1);
        if (*(&v327 + 1))
        {
          v119 = 0;
          v120 = 0;
          v250 = *&v326[40];
          v121 = *(&v328 + 1);
          v283 = *(*(&v328 + 1) + 32);
          v122 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          *v330 = *v326;
          *&v330[8] = *&v326[8];
          *&v330[24] = *&v326[24];
          v244 = v122;
          do
          {
            v272 = v120;
            v277 = v119;
            v123 = (v250 + 48 * v119);
            v289 = *v123;
            v124 = v123[2];
            v263 = v123[1];
            v126 = *(v123 + 2);
            v125 = *(v123 + 3);
            v128 = *(v123 + 4);
            v127 = *(v123 + 5);
            if (v122)
            {
              v129 = *(v127 + 376);

              os_unfair_lock_lock(v129);
              os_unfair_lock_lock(*(v127 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v283);
            v130 = *(v121 + 64);
            v332 = *(v121 + 48);
            v333 = v130;
            v334 = *(v121 + 80);
            v131 = *(*(*(*(v127 + 40) + 16) + 32) + 16) + 1;
            *(v121 + 48) = ecs_stack_allocator_allocate(*(v121 + 32), 48 * v131, 8);
            *(v121 + 56) = v131;
            *(v121 + 72) = 0;
            *(v121 + 80) = 0;
            *(v121 + 64) = 0;
            v132 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v126, v125, v128, v121);
            v133 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v126, v125, v128, v121);
            v134 = v133;
            if (v126)
            {
              v135 = v238;
              if (v128)
              {
                v136 = v277;
                do
                {
                  if ((v11 & ((v124 & 3) != v20)) == 0)
                  {
                    v137 = vmlaq_f32(v292, v294, *v132);
                    v137.i32[3] = v135.i32[3];
                    v290 = v137;
                    *v138.i64 = (*(&v306 + 1))(&v302);
                    *v134 = vmlaq_f32(*v134, v298, v138);
                    v135 = v290;
                  }

                  LOBYTE(v124) = v124 + 1;
                  ++v134;
                  ++v132;
                  --v128;
                }

                while (v128);
                v238 = v135;
                v120 = v272;
              }

              else
              {
                v136 = v277;
                v120 = v272;
              }
            }

            else
            {
              v120 = v272;
              if (v289 == v263)
              {
                v136 = v277;
              }

              else
              {
                v139 = v263 - v289;
                v140 = &v133[16 * v289];
                v141 = &v132[v289];
                v136 = v277;
                v142 = v234;
                do
                {
                  if ((v11 & ((v124 & 3) != v20)) == 0)
                  {
                    v143 = vmlaq_f32(v292, v294, *v141);
                    v143.i32[3] = v142.i32[3];
                    v291 = v143;
                    *v144.i64 = (*(&v306 + 1))(&v302);
                    *v140 = vmlaq_f32(*v140, v298, v144);
                    v142 = v291;
                  }

                  LOBYTE(v124) = v124 + 1;
                  ++v140;
                  ++v141;
                  --v139;
                }

                while (v139);
                v234 = v142;
              }
            }

            sub_1AF630994(v121, v330, &v332);
            sub_1AF62D29C(v127);
            ecs_stack_allocator_pop_snapshot(v283);
            v122 = v244;
            if (v244)
            {
              os_unfair_lock_unlock(*(v127 + 344));
              os_unfair_lock_unlock(*(v127 + 376));
            }

            v119 = v136 + 1;
          }

          while (v119 != v256);
        }
      }

      goto LABEL_202;
    }

    v194 = *(v260 + 72);
    *v301 = *(v260 + 56);
    *&v301[16] = v194;
    *&v301[32] = *(v260 + 88);
    sub_1AF6B06C0(v23, v301, 0x200000000, v326);
    if (!*v326)
    {
      goto LABEL_106;
    }

    if (v329 <= 0)
    {
      goto LABEL_202;
    }

    v237 = *(&v327 + 1);
    if (!*(&v327 + 1))
    {
      goto LABEL_202;
    }

    v195 = 0;
    v196 = 0;
    v233 = *&v326[40];
    v197 = *(&v328 + 1);
    v259 = *(*(&v328 + 1) + 32);
    v198 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    *v330 = *v326;
    *&v330[8] = *&v326[8];
    *&v330[24] = *&v326[24];
    v230 = v198;
    while (1)
    {
      v247 = v196;
      v253 = v195;
      v199 = (v233 + 48 * v195);
      v200 = *v199;
      v266 = v199[1];
      v201 = v199[2];
      v203 = *(v199 + 2);
      v202 = *(v199 + 3);
      v205 = *(v199 + 4);
      v204 = *(v199 + 5);
      if (v198)
      {
        v206 = *(v204 + 376);

        os_unfair_lock_lock(v206);
        os_unfair_lock_lock(*(v204 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v259);
      v207 = *(v197 + 64);
      v332 = *(v197 + 48);
      v333 = v207;
      v334 = *(v197 + 80);
      v208 = *(*(*(*(v204 + 40) + 16) + 32) + 16) + 1;
      *(v197 + 48) = ecs_stack_allocator_allocate(*(v197 + 32), 48 * v208, 8);
      *(v197 + 56) = v208;
      *(v197 + 72) = 0;
      *(v197 + 80) = 0;
      *(v197 + 64) = 0;
      v209 = v204;
      v210 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v203, v202, v205, v197);
      v241 = v209;
      v211 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v203, v202, v205, v197);
      v212 = v211;
      if (v203)
      {
        v196 = v247;
        v213 = v227;
        if (v205)
        {
          v214 = v253;
          do
          {
            if ((v11 & ((v201 & 3) != v20)) == 0)
            {
              v215 = vmlaq_f32(v292, v294, *v210);
              v216 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v215.f32[0]), v280, *v215.f32, 1), v274, v215, 2), v269, v215, 3);
              v216.n128_u32[3] = v213.n128_u32[3];
              v267 = v216;
              *v217.i64 = (*(&v306 + 1))(&v302, v216);
              *v212 = vmlaq_f32(*v212, v298, v217);
              v213 = v267;
            }

            LOBYTE(v201) = v201 + 1;
            ++v212;
            ++v210;
            --v205;
          }

          while (v205);
          v227 = v213;
        }

        else
        {
          v214 = v253;
        }
      }

      else
      {
        if (v200 != v266)
        {
          v219 = v266 - v200;
          v220 = &v211[16 * v200];
          v221 = &v210[v200];
          v214 = v253;
          v222 = v226;
          v218 = v241;
          do
          {
            if ((v11 & ((v201 & 3) != v20)) == 0)
            {
              v223 = vmlaq_f32(v292, v294, *v221);
              v224 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v223.f32[0]), v280, *v223.f32, 1), v274, v223, 2), v269, v223, 3);
              v224.n128_u32[3] = v222.n128_u32[3];
              v268 = v224;
              *v225.i64 = (*(&v306 + 1))(&v302, v224);
              *v220 = vmlaq_f32(*v220, v298, v225);
              v222 = v268;
            }

            LOBYTE(v201) = v201 + 1;
            ++v220;
            ++v221;
            --v219;
          }

          while (v219);
          v226 = v222;
          v196 = v247;
          goto LABEL_195;
        }

        v196 = v247;
        v214 = v253;
      }

      v218 = v241;
LABEL_195:
      sub_1AF630994(v197, v330, &v332);
      sub_1AF62D29C(v218);
      ecs_stack_allocator_pop_snapshot(v259);
      v198 = v230;
      if (v230)
      {
        os_unfair_lock_unlock(*(v218 + 344));
        os_unfair_lock_unlock(*(v218 + 376));
      }

      v195 = v214 + 1;
      if (v195 == v237)
      {
        goto LABEL_202;
      }
    }
  }

  if (*&v9 == 0.0)
  {
    return;
  }

  sub_1AFB93E58();
  v31 = 1.0;
  if (v11)
  {
    v31 = 4.0;
  }

  *v30.i32 = v31 * (*v30.i32 * *&v9);
  v296 = v30;
  if (BYTE4(v9) != 2)
  {
    v12 = HIDWORD(v9);
    v61.i64[0] = v7;
    v61.i64[1] = v8;
    v278 = v61;
    v61.i32[0] = v6;
    v273 = *v61.f32;
    v16 = a2;
    v15 = v10;
    goto LABEL_3;
  }

  v32 = *(v260 + 32);
  v313 = *(v260 + 16);
  v314 = v32;
  *&v315 = *(v260 + 48);
  sub_1AF6B06C0(a2, &v313, 0x200000000, v326);
  if (!*v326)
  {
    return;
  }

  if (v329 > 0)
  {
    v293 = *(&v327 + 1);
    if (*(&v327 + 1))
    {
      v285 = *&v326[40];
      v33 = *(&v328 + 1);
      i = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v295 = *(*(&v328 + 1) + 32);
      *v308 = *v326;
      *&v308[8] = *&v326[8];
      *&v308[24] = *&v326[24];
      v322 = *&v326[32];
      v323 = v327;
      v324 = v328;
      v325 = v329;
      v320 = *v326;
      v321 = *&v326[16];
      sub_1AF5DD298(&v320, &v302);
      v35 = 0;
      v279 = i;
      do
      {
        v36 = (v285 + 48 * v35);
        v38 = *v36;
        v37 = v36[1];
        v40 = *(v36 + 2);
        v39 = *(v36 + 3);
        v42 = *(v36 + 4);
        v41 = *(v36 + 5);
        if (i)
        {
          v43 = *(v41 + 376);

          os_unfair_lock_lock(v43);
          os_unfair_lock_lock(*(v41 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v295);
        v44 = *(v33 + 64);
        v302 = *(v33 + 48);
        v303 = v44;
        *&v304 = *(v33 + 80);
        v45 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
        *(v33 + 48) = ecs_stack_allocator_allocate(*(v33 + 32), 48 * v45, 8);
        *(v33 + 56) = v45;
        *(v33 + 72) = 0;
        *(v33 + 80) = 0;
        *(v33 + 64) = 0;
        v46 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v40, v39, v42, v33);
        v47 = v46;
        if (v40)
        {
          for (i = v279; v42; --v42)
          {
            sub_1AFA358D0(v47, *v296.i32);
            v47 += 2;
          }
        }

        else
        {
          i = v279;
          if (v38 != v37)
          {
            v48 = v37 - v38;
            v49 = &v46[16 * v38];
            do
            {
              sub_1AFA358D0(v49, *v296.i32);
              v49 += 2;
              --v48;
            }

            while (v48);
          }
        }

        sub_1AF630994(v33, v308, &v302);
        if (*(*(v33 + 104) + 16))
        {

          sub_1AF62F348(v50, v41);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v33 + 104);
          if (isUniquelyReferenced_nonNull_native)
          {
            v53 = v52[2];
            v54 = swift_isUniquelyReferenced_nonNull_native();
            *(v33 + 104) = v52;
            if ((v54 & 1) == 0)
            {
              v52 = sub_1AF420EA0(0, v53, 1, v52);
              *(v33 + 104) = v52;
            }

            sub_1AF43A540(0);
            swift_arrayDestroy();
            if (v53)
            {
              v55 = v52[2] - v53;
              memmove(v52 + 4, &v52[9 * v53 + 4], 72 * v55);
              v52[2] = v55;
            }

            *(v33 + 104) = v52;
          }

          else
          {
            v56 = MEMORY[0x1E69E7CC0];
            if (v52[3] >= 2uLL)
            {
              sub_1AF9FA280(0);
              v56 = swift_allocObject();
              v57 = j__malloc_size_0(v56);
              v56[2] = 0;
              v56[3] = 2 * ((v57 - 32) / 72);
            }

            *(v33 + 104) = v56;
          }

          if (*(*(v33 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v58 = *(v41 + 232);
            v59 = *(v41 + 256);
            if (v58 == v59)
            {
              v60 = *(v41 + 240);
            }

            else
            {
              sub_1AF6497A0(v59, v58);
              v59 = *(v41 + 232);
              v60 = *(v41 + 240);
              if (v60 == v59)
              {
                v60 = 0;
                v59 = 0;
                *(v41 + 232) = 0;
                *(v41 + 240) = 0;
              }
            }

            *(v41 + 248) = v60;
            *(v41 + 256) = v59;
          }
        }

        ecs_stack_allocator_pop_snapshot(v295);
        if (i)
        {
          os_unfair_lock_unlock(*(v41 + 344));
          os_unfair_lock_unlock(*(v41 + 376));
        }

        ++v35;
      }

      while (v35 != v293);
      sub_1AF5D1564(v326);
    }
  }

LABEL_203:
  sub_1AF5D1564(v326);
}

uint64_t getEnumTagSinglePayload for NoiseParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NoiseParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AFA3527C()
{
  result = qword_1EB631EF0;
  if (!qword_1EB631EF0)
  {
    result = swift_getWitnessTable("%E", v0);
    atomic_store(result, &qword_1EB631EF0);
  }

  return result;
}

uint64_t sub_1AFA352D0(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v11 = *(a1 + 88);
  v12 = v3;
  v13 = *(a1 + 120);
  sub_1AF82917C(v7);
  v4 = v7[1];
  *(v2 + 16) = v7[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v8;
  sub_1AF5C9174(v9);
  sub_1AF688940(a1);
  v5 = v9[1];
  *(v2 + 56) = v9[0];
  *(v2 + 72) = v5;
  *(v2 + 88) = v10;
  return v2;
}

unint64_t sub_1AFA3538C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFA353D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1AFA357EC(0, &qword_1EB633140, sub_1AFA35798, &type metadata for ParticleNoise.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA35798();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v10 = v23;
  LOBYTE(v24) = 0;
  sub_1AFDFE738();
  v12 = v11;
  LOBYTE(v24) = 2;
  sub_1AFDFE738();
  v14 = v13;
  v27 = 3;
  sub_1AF51D028();
  sub_1AFDFE768();
  v15 = v24;
  sub_1AFA357EC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v27 = 1;
  sub_1AFA35854(&qword_1ED72F748, MEMORY[0x1E69E7468]);
  sub_1AFDFE6E8();
  v16 = 0uLL;
  if ((v25 & 1) == 0)
  {
    v16 = v24;
  }

  v22 = v16;
  LOBYTE(v24) = 4;
  v17 = sub_1AFDFE6A8();
  v26 = v17;
  v19 = a1[3];
  v20 = a1[4];
  sub_1AF441150(a1, v19);
  if (sub_1AF694FF8(1100, v19, v20))
  {
    LOBYTE(v24) = 5;
    v21 = sub_1AFDFE748();
    (*(v9 + 8))(v8, v5);
  }

  else
  {
    (*(v9 + 8))(v8, v5);
    v21 = 3;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  *(v10 + 16) = v22;
  *(v10 + 32) = v14;
  *(v10 + 36) = v15;
  *(v10 + 40) = v21;
  *(v10 + 48) = v26 & 1;
  return result;
}

unint64_t sub_1AFA35798()
{
  result = qword_1EB633808;
  if (!qword_1EB633808)
  {
    result = swift_getWitnessTable("\tV", &type metadata for ParticleNoise.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633808);
  }

  return result;
}

void sub_1AFA357EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFA35854(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA357EC(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

float sub_1AFA358D0(float32x2_t *a1, float a2)
{
  v12 = drand48();
  v11 = drand48();
  v3 = drand48();
  v4.f64[0] = v12;
  v4.f64[1] = v11;
  *&v4.f64[0] = vcvt_f32_f64(v4);
  __asm { FMOV            V3.2S, #-1.0 }

  *&v4.f64[0] = vadd_f32(*a1, vmul_n_f32(vadd_f32(vadd_f32(*&v4.f64[0], *&v4.f64[0]), _D3), a2));
  result = COERCE_FLOAT(*&a1[1]) + (((v3 + v3) + -1.0) * a2);
  *&v4.f64[1] = LODWORD(result);
  *a1->f32 = v4;
  return result;
}

void sub_1AFA35960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 initializeWithCopy for ParticleNoise(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ParticleNoise(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleNoise(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA35AA8()
{
  result = qword_1EB6422D8;
  if (!qword_1EB6422D8)
  {
    result = swift_getWitnessTable(byte_1AFE94B48, &type metadata for ParticleNoise.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6422D8);
  }

  return result;
}

unint64_t sub_1AFA35B00()
{
  result = qword_1EB6337F8;
  if (!qword_1EB6337F8)
  {
    result = swift_getWitnessTable("qP", &type metadata for ParticleNoise.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6337F8);
  }

  return result;
}

unint64_t sub_1AFA35B58()
{
  result = qword_1EB633800;
  if (!qword_1EB633800)
  {
    result = swift_getWitnessTable(byte_1AFE94AA8, &type metadata for ParticleNoise.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633800);
  }

  return result;
}

BOOL sub_1AFA35BAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    return !*(a2 + 8) && *&v2 == *&v3;
  }

  if (*(a1 + 8) != 1)
  {
    return v4 == 2 && v3 == 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

  return *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
}

uint64_t sub_1AFA35C40(void *a1, uint64_t a2, char a3)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v7, v8);
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AFDFEC28();
      if (!v3)
      {
        v9 = a2;
        sub_1AF448018(v7, v8);
        sub_1AFA37CD0(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        sub_1AFA365F8(&qword_1EB6398A0, MEMORY[0x1E69E6458], MEMORY[0x1E69E66B0]);
        sub_1AFDFEC38();
      }
    }

    else
    {
      sub_1AFDFEC28();
    }
  }

  else
  {
    sub_1AFDFEC28();
    if (!v3)
    {
      sub_1AF448018(v7, v8);
      sub_1AFDFEC18();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
}

unint64_t sub_1AFA35DF0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFA363D8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1AFA35E40(void *a1)
{
  v3 = v1;
  sub_1AFA37D94(0, &qword_1EB642310, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA37C7C();
  sub_1AFDFF3F8();
  *v11 = *v3;
  v11[8] = *(v3 + 8);
  v12 = 0;
  sub_1AF51DDE8();
  sub_1AFDFE918();
  if (!v2)
  {
    *v11 = *(v3 + 16);
    *&v11[9] = *(v3 + 25);
    v12 = 1;
    sub_1AFA37CD0(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    sub_1AFA37D24(&qword_1EB63F018, byte_1AFE6CCB4);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFA36044(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6576727563;
  }

  else
  {
    v3 = 1701080941;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6576727563;
  }

  else
  {
    v5 = 1701080941;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1AFA360E0()
{
  if (*v0)
  {
    return 0x6576727563;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_1AFA36110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AFA361E8(uint64_t a1)
{
  v2 = sub_1AFA37C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA36224(uint64_t a1)
{
  v2 = sub_1AFA37C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA36260@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AFA36684(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_1AFA362DC()
{
  sub_1AF9D7EF0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = &type metadata for TransientOriginColor;
  *(v0 + 40) = &off_1F2569988;
  *(v0 + 48) = &type metadata for Color;
  *(v0 + 56) = &off_1F252CA88;
  return result;
}

char *sub_1AFA36354@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF9D3914(&unk_1F24F3DC0);
  *a1 = 0;
  *(a1 + 8) = 2;
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return result;
}

unint64_t sub_1AFA363D8(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    sub_1AF448018(v8, v9);
    v4 = sub_1AFDFEAB8();
    v3 = v4;
    switch(v4)
    {
      case 0:
        goto LABEL_10;
      case 2:
        sub_1AFA37CD0(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        sub_1AF448018(v8, v9);
        sub_1AFA365F8(&qword_1ED7231A0, MEMORY[0x1E69E6478], MEMORY[0x1E69E66E0]);
        sub_1AFDFEAD8();
        v3 = v7;
        goto LABEL_10;
      case 1:
        sub_1AF448018(v8, v9);
        sub_1AFDFEAA8();
        v3 = v6;
LABEL_10:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
        return v3;
    }

    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t sub_1AFA365F8(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA37CD0(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFA36684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA37D94(0, &qword_1EB642300, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA37C7C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v19 = 0;
  sub_1AF51DD94();
  sub_1AFDFE768();
  v10 = v16;
  v11 = BYTE8(v16);
  sub_1AFA37CD0(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v19 = 1;
  sub_1AFA37D24(qword_1ED724010, byte_1AFE6CCDC);
  sub_1AFDFE768();
  (*(v7 + 8))(v9, v6);
  v12 = v17;
  v13 = v18;
  v15 = v16;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_1AFA368E4(void *a1)
{
  v146 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  swift_retain_n();
  sub_1AF3CE308(v2, &v136);
  v4 = v136;
  v5 = v137;
  v6 = v138;
  v7 = v139;
  v8 = v140;
  v9 = v141;
  v103 = v3;

  if (v6)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
  }

  else
  {
    v10 = sub_1AF9D3914(&unk_1F2506C70);
    v11 = v13;
    v4 = 0;
    v12 = 0;
    v9 = 1;
    v5 = 2;
  }

  sub_1AF478E70(v10, v11, v12, v9, 32, v120);
  v118[6] = v120[6];
  v118[7] = v120[7];
  v118[8] = v120[8];
  v119 = v121;
  v118[2] = v120[2];
  v118[3] = v120[3];
  v118[4] = v120[4];
  v118[5] = v120[5];
  v118[0] = v120[0];
  v118[1] = v120[1];
  if (!v5)
  {
    v42 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
    v43 = *(a1 + 13);
    v126 = *(a1 + 11);
    v127 = v43;
    v128 = a1[15];
    sub_1AF829190(v122);
    *v125 = v122[0];
    *&v125[16] = v122[1];
    *&v125[32] = v123;
    sub_1AF6B06C0(v103, v125, 0x200000000, v142);
    if (!*v142)
    {
      sub_1AFA37860(v122);
LABEL_84:
    }

    if (v145 > 0)
    {
      v113 = *(&v143 + 1);
      if (*(&v143 + 1))
      {
        v110 = *&v142[40];
        v44 = *(&v144 + 1);
        v116 = *(*(&v144 + 1) + 32);
        i = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *v124 = *v142;
        *&v124[8] = *&v142[8];
        *&v124[24] = *&v142[24];
        v46 = v42;
        v132 = *&v142[32];
        v133 = v143;
        v134 = v144;
        v135 = v145;
        v130 = *v142;
        v131 = *&v142[16];
        sub_1AF5DD298(&v130, v129);
        v47 = 0;
        v48 = fminf(((1.0 / *&v4) * v46) - floorf((1.0 / *&v4) * v46), 1.0);
        v107 = i;
        do
        {
          v49 = (v110 + 48 * v47);
          v51 = *v49;
          v50 = v49[1];
          v53 = *(v49 + 2);
          v52 = *(v49 + 3);
          v54 = *(v49 + 4);
          v55 = *(v49 + 5);
          if (i)
          {
            v56 = *(v55 + 376);

            os_unfair_lock_lock(v56);
            os_unfair_lock_lock(*(v55 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v116);
          v57 = *(v44 + 64);
          *v129 = *(v44 + 48);
          *&v129[16] = v57;
          *&v129[32] = *(v44 + 80);
          v58 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
          *(v44 + 48) = ecs_stack_allocator_allocate(*(v44 + 32), 48 * v58, 8);
          *(v44 + 56) = v58;
          *(v44 + 72) = 0;
          *(v44 + 80) = 0;
          *(v44 + 64) = 0;
          v59 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v53, v52, v54, v44);
          v60 = v59;
          if (v53)
          {
            for (i = v107; v54; --v54)
            {
              *v60 = vmulq_n_f32(*v60, fminf(fmaxf(sample_curve(v118, v48), 0.0), 1.0));
              ++v60;
            }
          }

          else
          {
            i = v107;
            if (v51 != v50)
            {
              v61 = v50 - v51;
              v62 = &v59[16 * v51];
              do
              {
                *v62 = vmulq_n_f32(*v62, fminf(fmaxf(sample_curve(v118, v48), 0.0), 1.0));
                ++v62;
                --v61;
              }

              while (v61);
            }
          }

          sub_1AF630994(v44, v124, v129);
          if (*(*(v44 + 104) + 16))
          {

            sub_1AF62F348(v63, v55);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = *(v44 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v66 = v65[2];
              v67 = swift_isUniquelyReferenced_nonNull_native();
              *(v44 + 104) = v65;
              if ((v67 & 1) == 0)
              {
                v65 = sub_1AF420EA0(0, v66, 1, v65);
                *(v44 + 104) = v65;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v66)
              {
                v68 = v65[2] - v66;
                memmove(v65 + 4, &v65[9 * v66 + 4], 72 * v68);
                v65[2] = v68;
              }

              *(v44 + 104) = v65;
            }

            else
            {
              v69 = MEMORY[0x1E69E7CC0];
              if (v65[3] >= 2uLL)
              {
                sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
                v69 = swift_allocObject();
                v70 = j__malloc_size_0(v69);
                v69[2] = 0;
                v69[3] = 2 * ((v70 - 32) / 72);
              }

              *(v44 + 104) = v69;
            }

            if (*(*(v44 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v71 = *(v55 + 232);
              v72 = *(v55 + 256);
              if (v71 == v72)
              {
                v73 = *(v55 + 240);
              }

              else
              {
                sub_1AF6497A0(v72, v71);
                v72 = *(v55 + 232);
                v73 = *(v55 + 240);
                if (v73 == v72)
                {
                  v73 = 0;
                  v72 = 0;
                  *(v55 + 232) = 0;
                  *(v55 + 240) = 0;
                }
              }

              *(v55 + 248) = v73;
              *(v55 + 256) = v72;
            }
          }

          ecs_stack_allocator_pop_snapshot(v116);
          if (i)
          {
            os_unfair_lock_unlock(*(v55 + 344));
            os_unfair_lock_unlock(*(v55 + 376));
          }

          ++v47;
        }

        while (v47 != v113);
        sub_1AFA37800(v142, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFA37C2C);
        sub_1AFA37860(v122);
      }

      else
      {
        sub_1AFA37860(v122);
      }

      goto LABEL_93;
    }

    sub_1AFA37860(v122);
    goto LABEL_82;
  }

  if (v5 != 1)
  {
    v74 = *(a1 + 13);
    v126 = *(a1 + 11);
    v127 = v74;
    v128 = a1[15];
    sub_1AF5C9294(v124);
    *v125 = *v124;
    *&v125[16] = *&v124[16];
    *&v125[32] = *&v124[32];
    sub_1AF6B06C0(v103, v125, 0x200000000, v142);
    if (*v142)
    {
      if (v145 <= 0)
      {
        v132 = *&v142[32];
        v133 = v143;
        v134 = v144;
        v135 = v145;
        v130 = *v142;
        v131 = *&v142[16];
        sub_1AF5DD298(&v130, v129);
        sub_1AFA37800(v124, &unk_1EB6422E8, &type metadata for ParticleAge, &off_1F252CBE8, sub_1AFA378E8);

        v102 = MEMORY[0x1E69E6720];
        sub_1AFA37800(v142, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFA37C2C);
        sub_1AFA37800(v142, &qword_1ED725EA0, &type metadata for QueryResult, v102, sub_1AFA37C2C);
      }

      v114 = *(&v143 + 1);
      if (*(&v143 + 1))
      {
        v75 = 0;
        v111 = *&v142[40];
        v76 = *(&v144 + 1);
        v77 = *(*(&v144 + 1) + 32);
        v78 = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *v129 = *v142;
        *&v129[8] = *&v142[8];
        *&v129[24] = *&v142[24];
        v105 = v78;
        v108 = v77;
        do
        {
          v79 = (v111 + 48 * v75);
          v80 = *v79;
          v117 = v79[1];
          v81 = *(v79 + 2);
          v82 = *(v79 + 3);
          v84 = *(v79 + 4);
          v83 = *(v79 + 5);
          if (v78)
          {
            v85 = *(v83 + 376);

            os_unfair_lock_lock(v85);
            os_unfair_lock_lock(*(v83 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v77);
          v86 = *(v76 + 64);
          v130 = *(v76 + 48);
          v131 = v86;
          *&v132 = *(v76 + 80);
          v87 = *(*(*(*(v83 + 40) + 16) + 32) + 16) + 1;
          *(v76 + 48) = ecs_stack_allocator_allocate(*(v76 + 32), 48 * v87, 8);
          *(v76 + 56) = v87;
          *(v76 + 72) = 0;
          *(v76 + 80) = 0;
          *(v76 + 64) = 0;
          v88 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v81, v82, v84, v76);
          v89 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v81, v82, v84, v76);
          v90 = v89;
          if (v81)
          {
            for (; v84; --v84)
            {
              v91 = *v90++;
              *v88 = vmulq_n_f32(*v88, fminf(fmaxf(sample_curve(v118, v91), 0.0), 1.0));
              ++v88;
            }
          }

          else if (v80 != v117)
          {
            v92 = v117 - v80;
            v93 = &v89[4 * v80];
            v94 = &v88[v80];
            do
            {
              v95 = *v93++;
              *v94 = vmulq_n_f32(*v94, fminf(fmaxf(sample_curve(v118, v95), 0.0), 1.0));
              ++v94;
              --v92;
            }

            while (v92);
          }

          sub_1AF630994(v76, v129, &v130);
          sub_1AF62D29C(v83);
          v77 = v108;
          ecs_stack_allocator_pop_snapshot(v108);
          v78 = v105;
          if (v105)
          {
            os_unfair_lock_unlock(*(v83 + 344));
            os_unfair_lock_unlock(*(v83 + 376));
          }

          ++v75;
        }

        while (v75 != v114);
      }

      else
      {
      }

      sub_1AFA37800(v124, &unk_1EB6422E8, &type metadata for ParticleAge, &off_1F252CBE8, sub_1AFA378E8);

      goto LABEL_92;
    }

    v96 = &unk_1EB6422E8;
    v97 = &type metadata for ParticleAge;
    v98 = &off_1F252CBE8;
    goto LABEL_76;
  }

  v14 = *(a1 + 13);
  *v129 = *(a1 + 11);
  *&v129[16] = v14;
  *&v129[32] = a1[15];
  sub_1AF5C92DC(v124);
  v126 = *v124;
  v127 = *&v124[16];
  v128 = *&v124[32];
  sub_1AF6B06C0(v103, &v126, 0x200000000, v142);
  if (!*v142)
  {
    v96 = &qword_1EB642228;
    v97 = &type metadata for Velocity;
    v98 = &off_1F2530AF8;
LABEL_76:
    v99 = sub_1AFA378E8;
    v100 = v124;
LABEL_83:
    sub_1AFA37800(v100, v96, v97, v98, v99);
    goto LABEL_84;
  }

  if (v145 <= 0)
  {
    sub_1AFA37800(v124, &qword_1EB642228, &type metadata for Velocity, &off_1F2530AF8, sub_1AFA378E8);
LABEL_82:
    v96 = &qword_1ED725EA0;
    v97 = &type metadata for QueryResult;
    v98 = MEMORY[0x1E69E6720];
    v99 = sub_1AFA37C2C;
    v100 = v142;
    goto LABEL_83;
  }

  v112 = *(&v143 + 1);
  if (*(&v143 + 1))
  {
    v15 = 0;
    v16 = *&v4;
    v17 = *(&v4 + 1) - *&v4;
    v109 = *&v142[40];
    v18 = *(&v144 + 1);
    v19 = *(*(&v144 + 1) + 32);
    v20 = 1.0 / v17;
    v21 = -(v16 * (1.0 / v17));
    v22 = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    *v125 = *v142;
    *&v125[8] = *&v142[8];
    *&v125[24] = *&v142[24];
    v104 = v22;
    v106 = v19;
    do
    {
      v23 = (v109 + 48 * v15);
      v24 = *v23;
      v115 = v23[1];
      v25 = *(v23 + 2);
      v26 = *(v23 + 3);
      v28 = *(v23 + 4);
      v27 = *(v23 + 5);
      if (v22)
      {
        v29 = *(v27 + 376);

        os_unfair_lock_lock(v29);
        os_unfair_lock_lock(*(v27 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v19);
      v30 = *(v18 + 64);
      v130 = *(v18 + 48);
      v131 = v30;
      *&v132 = *(v18 + 80);
      v31 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
      *(v18 + 48) = ecs_stack_allocator_allocate(*(v18 + 32), 48 * v31, 8);
      *(v18 + 56) = v31;
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      *(v18 + 64) = 0;
      v32 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v25, v26, v28, v18);
      v33 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v25, v26, v28, v18);
      v34 = v33;
      if (v25)
      {
        for (; v28; --v28)
        {
          v35 = *v34++;
          v36 = vmulq_f32(v35, v35);
          *v32 = vmulq_n_f32(*v32, fminf(fmaxf(sample_curve(v118, v21 + (v20 * sqrtf(vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)))))), 0.0), 1.0));
          ++v32;
        }
      }

      else if (v24 != v115)
      {
        v37 = v115 - v24;
        v38 = &v33[16 * v24];
        v39 = &v32[v24];
        do
        {
          v40 = *v38++;
          v41 = vmulq_f32(v40, v40);
          *v39 = vmulq_n_f32(*v39, fminf(fmaxf(sample_curve(v118, v21 + (v20 * sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)))))), 0.0), 1.0));
          ++v39;
          --v37;
        }

        while (v37);
      }

      sub_1AF630994(v18, v125, &v130);
      sub_1AF62D29C(v27);
      v19 = v106;
      ecs_stack_allocator_pop_snapshot(v106);
      v22 = v104;
      if (v104)
      {
        os_unfair_lock_unlock(*(v27 + 344));
        os_unfair_lock_unlock(*(v27 + 376));
      }

      ++v15;
    }

    while (v15 != v112);
    sub_1AFA37800(v124, &qword_1EB642228, &type metadata for Velocity, &off_1F2530AF8, sub_1AFA378E8);
  }

  else
  {
    sub_1AFA37800(v124, &qword_1EB642228, &type metadata for Velocity, &off_1F2530AF8, sub_1AFA378E8);
  }

LABEL_92:

LABEL_93:

  return sub_1AFA37800(v142, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFA37C2C);
}