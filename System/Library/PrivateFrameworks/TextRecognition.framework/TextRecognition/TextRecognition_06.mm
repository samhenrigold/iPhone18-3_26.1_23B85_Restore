uint64_t sub_1B4151E50()
{
  v1 = v0[17];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

void *sub_1B4151FA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0, &qword_1B42AD920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1B4152028(uint64_t a1)
{
  sub_1B429F6D8();
  sub_1B4155024(&unk_1EB884860, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1B429FB28();

  return sub_1B41520C0(a1, v2);
}

unint64_t sub_1B41520C0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B429F6D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1B4155024(&unk_1EB884850, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_1B429FB58();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1B4152280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B429F6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885620, &qword_1B42AE860);
  v40 = v4;
  v10 = sub_1B42A05D8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1B4155024(&unk_1EB884860, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = sub_1B429FB28();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1B415265C()
{
  v1 = v0;
  v32 = sub_1B429F6D8();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885620, &qword_1B42AE860);
  v3 = *v0;
  v4 = sub_1B42A05C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v25 = v23;
        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1B41528D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B429F6D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B4152028(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B415265C();
      goto LABEL_7;
    }

    sub_1B4152280(v17, a3 & 1);
    v23 = sub_1B4152028(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1B4152A9C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1B42A06E8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1B4152A9C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B429F6D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1B4152B54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL _s15TextRecognition18CRImageReaderErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

uint64_t sub_1B4152D78(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B429FB98();
  if (!*(a1 + 16))
  {

LABEL_11:
    sub_1B429FB98();
    goto LABEL_12;
  }

  v5 = sub_1B40F0030(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B40E2888(*(a1 + 56) + 32 * v5, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = sub_1B429FB98();
  if (!v23)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v22 == v9 && v23 == v8)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_1B42A0678();
  }

LABEL_13:

  v12 = sub_1B429FB98();
  if (!*(a1 + 16))
  {

LABEL_21:
    sub_1B429FB98();
    goto LABEL_22;
  }

  v14 = sub_1B40F0030(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1B40E2888(*(a1 + 56) + 32 * v14, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = sub_1B429FB98();
  if (!v23)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v22 == v17 && v23 == v18)
  {

    goto LABEL_27;
  }

  v21 = sub_1B42A0678();

  if ((v21 & 1) == 0)
  {
LABEL_23:
    if ((v11 & 1) == 0)
    {
      return type metadata accessor for CREngineFast();
    }

LABEL_24:
    sub_1B40DF594();
    swift_allocError();
    *v19 = 1;
    *(v19 + 4) = 1;
    return swift_willThrow();
  }

LABEL_27:
  if ((v11 & 1) == 0)
  {
    goto LABEL_24;
  }

  return type metadata accessor for CREngineAccurate(0);
}

uint64_t sub_1B415302C(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = sub_1B429FBD8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v3 = 0xD000000000000012;
  v4 = sub_1B429FB98();
  v6 = v5;

  sub_1B410AB70(v4, v6, v22);

  sub_1B40E26E8(v22, &qword_1EB884FE8, &qword_1B42AE710);
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
  v8 = sub_1B429FAE8();
  v9 = [v7 isValidJSONObject_];

  if (!v9)
  {
LABEL_9:

    return v3;
  }

  v10 = sub_1B429FAE8();
  *&v22[0] = 0;
  v11 = [v7 dataWithJSONObject:v10 options:2 error:v22];

  v12 = *&v22[0];
  if (!v11)
  {
    v19 = v12;
    v20 = sub_1B429F598();

    swift_willThrow();
    goto LABEL_9;
  }

  v13 = sub_1B429F668();
  v15 = v14;

  *&v22[0] = v13;
  *(&v22[0] + 1) = v15;
  sub_1B429FBC8();
  sub_1B4155188();
  v16 = sub_1B429FBA8();
  v18 = v17;
  sub_1B41551DC(v13, v15);

  if (v18)
  {
    return v16;
  }

  return v3;
}

unint64_t _sSo13CRImageReaderC15TextRecognitionE14defaultOptionsSDySSs8Sendable_pGyFZ_0()
{
  sub_1B4141614(0);
  sub_1B4141614(1u);
  sub_1B4141614(2u);
  v0 = sub_1B429FB98();
  v2 = v1;
  v3 = sub_1B429FB98();
  v5 = v4;
  sub_1B4141614(3u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FD0, &qword_1B42AE850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B42AE6B0;
  *(inited + 32) = sub_1B429FB98();
  *(inited + 40) = v7;
  v8 = sub_1B429FB98();
  v9 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 80) = sub_1B429FB98();
  *(inited + 88) = v11;
  v12 = sub_1B42A07B8();
  v13 = sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
  *(inited + 120) = v13;
  *(inited + 96) = v12;
  *(inited + 128) = sub_1B429FB98();
  *(inited + 136) = v14;
  v15 = sub_1B42A0748();
  *(inited + 168) = v13;
  *(inited + 144) = v15;
  *(inited + 176) = sub_1B429FB98();
  *(inited + 184) = v16;
  v17 = sub_1B429FB98();
  *(inited + 216) = v9;
  *(inited + 192) = v17;
  *(inited + 200) = v18;
  *(inited + 224) = sub_1B429FB98();
  *(inited + 232) = v19;
  *(inited + 264) = v9;
  *(inited + 240) = v0;
  *(inited + 248) = v2;
  *(inited + 272) = sub_1B429FB98();
  *(inited + 280) = v20;
  v21 = sub_1B42A0238();
  *(inited + 312) = v13;
  *(inited + 288) = v21;
  *(inited + 320) = sub_1B429FB98();
  *(inited + 328) = v22;
  *(inited + 360) = v9;
  *(inited + 336) = v3;
  *(inited + 344) = v5;
  *(inited + 368) = sub_1B429FB98();
  *(inited + 376) = v23;
  v24 = sub_1B42A0228();
  *(inited + 408) = v13;
  *(inited + 384) = v24;
  *(inited + 416) = sub_1B429FB98();
  *(inited + 424) = v25;
  v26 = sub_1B42A0238();
  *(inited + 456) = v13;
  *(inited + 432) = v26;
  *(inited + 464) = sub_1B429FB98();
  *(inited + 472) = v27;
  v43[3] = &type metadata for CRFeatureFlags;
  v43[4] = sub_1B4118C60();
  LOBYTE(v43[0]) = 0;
  sub_1B429F898();
  __swift_destroy_boxed_opaque_existential_0(v43);
  v28 = sub_1B429FE68();
  *(inited + 504) = v13;
  *(inited + 480) = v28;
  *(inited + 512) = sub_1B429FB98();
  *(inited + 520) = v29;
  v30 = sub_1B429FE68();
  *(inited + 552) = v13;
  *(inited + 528) = v30;
  *(inited + 560) = sub_1B429FB98();
  *(inited + 568) = v31;
  v32 = sub_1B42A0238();
  *(inited + 600) = v13;
  *(inited + 576) = v32;
  *(inited + 608) = sub_1B429FB98();
  *(inited + 616) = v33;
  v34 = sub_1B42A0238();
  *(inited + 648) = v13;
  *(inited + 624) = v34;
  *(inited + 656) = sub_1B429FB98();
  *(inited + 664) = v35;
  v36 = sub_1B429FE68();
  *(inited + 696) = v13;
  *(inited + 672) = v36;
  *(inited + 704) = sub_1B429FB98();
  *(inited + 712) = v37;
  v38 = sub_1B42A0238();
  *(inited + 744) = v13;
  *(inited + 720) = v38;
  *(inited + 752) = sub_1B429FB98();
  *(inited + 760) = v39;
  v40 = sub_1B42A0238();
  *(inited + 792) = v13;
  *(inited + 768) = v40;
  v41 = sub_1B40FC7D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885600, &qword_1B42ACD50);
  swift_arrayDestroy();
  return v41;
}

void *sub_1B41536B4(uint64_t a1)
{
  v2 = _sSo13CRImageReaderC15TextRecognitionE14defaultOptionsSDySSs8Sendable_pGyFZ_0();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = v7;
LABEL_14:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1B40E2888(*(a1 + 56) + 32 * v14, v34);
    *&v35 = v17;
    *(&v35 + 1) = v16;
    sub_1B40D4758(v34, &v36);

    v12 = v10;
LABEL_15:
    v38 = v35;
    v39[0] = v36;
    v39[1] = v37;
    v18 = *(&v35 + 1);
    if (!*(&v35 + 1))
    {

      return v2;
    }

    v19 = v38;
    sub_1B40D4758(v39, &v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = v2;
    v21 = sub_1B40F0030(v19, v18);
    v23 = v2[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v2[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v32 = v21;
      sub_1B410B07C();
      v21 = v32;
      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v8 = v21;

      v2 = *&v34[0];
      v9 = (*(*&v34[0] + 56) + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_1B40D4758(&v35, v9);
      v7 = v12;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1B410AC14(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1B40F0030(v19, v18);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_32;
      }

LABEL_21:
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_22:
      v2 = *&v34[0];
      *(*&v34[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v29 = (v2[6] + 16 * v21);
      *v29 = v19;
      v29[1] = v18;
      sub_1B40D4758(&v35, (v2[7] + 32 * v21));
      v30 = v2[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_31;
      }

      v2[2] = v31;
      v7 = v12;
      if (!v5)
      {
LABEL_7:
        if (v6 <= v7 + 1)
        {
          v11 = v7 + 1;
        }

        else
        {
          v11 = v6;
        }

        v12 = v11 - 1;
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= v6)
          {
            v5 = 0;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            goto LABEL_15;
          }

          v5 = *(a1 + 64 + 8 * v10);
          ++v7;
          if (v5)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1B42A06E8();
  __break(1u);
  return result;
}

uint64_t sub_1B4153950()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 11);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1B40E6828;

  return sub_1B414976C(v5, v6, v7, v8, v12, v2, v3, v4, v9, v10, v11);
}

uint64_t sub_1B4153A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageReaderConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4153AA0(unint64_t a1, void *a2, void **a3)
{
  v5 = v3;
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    sub_1B42A0488();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v72 = v7 & 0xC000000000000001;
      v66 = v7 + 32;
      v67 = v7 & 0xFFFFFFFFFFFFFF8;
      v69 = a3;
      v70 = v5;
      v68 = v7;
      v71 = v8;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_62;
        }

        if (v72)
        {
          v12 = MEMORY[0x1B8C72CD0]();
        }

        else
        {
          if (v10 >= *(v67 + 16))
          {
            goto LABEL_66;
          }

          v12 = *(v66 + 8 * v10);
        }

        v4 = v12;
        v13 = objc_opt_self();
        [a2 size];
        v74 = [v13 _lineRegionFromLineTextFeature_imageSize_];
        v14 = [v4 stringValue];
        if (!v14)
        {
          goto LABEL_54;
        }

        v15 = v14;
        v73 = v11;
        if (!*a3)
        {
          v16 = [objc_allocWithZone(CRMutableRecognitionResult) init];
          v17 = *a3;
          *a3 = v16;
        }

        v75 = [objc_allocWithZone(CRMutableRecognizedTextRegion) initWithType:2 detectedLineRegion:v74];
        [v75 setText_];

        v18 = [v4 candidateProbs];
        sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
        v19 = sub_1B429FDF8();

        if (v19 >> 62)
        {
          if (!sub_1B42A0518())
          {
LABEL_21:

            v23 = 0.0;
            goto LABEL_22;
          }
        }

        else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1B8C72CD0](0, v19);
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v20 = *(v19 + 32);
        }

        v21 = v20;

        [v21 doubleValue];
        v23 = v22;

LABEL_22:
        [v75 setConfidence_];
        v24 = [v4 candidateProbs];
        v25 = sub_1B429FDF8();

        if (v25 >> 62)
        {
          v26 = v75;
          if (!sub_1B42A0518())
          {
LABEL_29:

            v30 = 0.0;
            goto LABEL_30;
          }
        }

        else
        {
          v26 = v75;
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }
        }

        if ((v25 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1B8C72CD0](0, v25);
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v27 = *(v25 + 32);
        }

        v28 = v27;

        [v28 doubleValue];
        v30 = v29;

        v26 = v75;
LABEL_30:
        [v26 setActivationProbability_];
        v31 = [v4 selectedLocale];
        if (!v31)
        {
          sub_1B429FB98();
          v31 = sub_1B429FB88();
          v26 = v75;
        }

        [v26 setLocale_];

        v32 = [v4 subFeatures];
        if (v32)
        {
          v33 = v32;
          sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
          v34 = sub_1B429FDF8();

          if (v34 >> 62)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v34 = v9;
          if (v9 >> 62)
          {
LABEL_49:
            v35 = sub_1B42A0518();
            if (v35)
            {
LABEL_35:
              sub_1B42A0488();
              if (v35 < 0)
              {
                goto LABEL_64;
              }

              v7 = 0;
              while (1)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v36 = MEMORY[0x1B8C72CD0](v7, v34);
                }

                else
                {
                  if ((v7 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_61:
                    __break(1u);
LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
LABEL_64:
                    __break(1u);
LABEL_65:
                    __break(1u);
LABEL_66:
                    __break(1u);
LABEL_67:
                    v8 = sub_1B42A0518();
                    goto LABEL_3;
                  }

                  if (v7 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_61;
                  }

                  v36 = *(v34 + 8 * v7 + 32);
                }

                v37 = v36;
                v38 = [objc_allocWithZone(CRMutableRecognizedTextRegion) init];
                [v37 topLeft];
                v77 = v40;
                v78 = v39;
                [v37 topRight];
                v42 = v41;
                v44 = v43;
                [v37 bottomRight];
                v46 = v45;
                v48 = v47;
                [v37 bottomLeft];
                v50 = v49;
                v52 = v51;
                [a2 size];
                v55 = [objc_allocWithZone(CRNormalizedQuad) initWithNormalizedTopLeft:v78 topRight:v77 bottomRight:v42 bottomLeft:v44 size:{v46, v48, v50, v52, v53, v54}];
                [v38 setBoundingQuad_];

                v56 = [v37 stringValue];
                if (v56)
                {
                  v57 = v56;
                  sub_1B429FB98();
                }

                v58 = sub_1B429FB88();

                [v38 setText_];

                a3 = [v4 selectedLocale];
                if (!a3)
                {
                  sub_1B429FB98();
                  a3 = sub_1B429FB88();
                }

                [v38 setLocale_];

                [v38 setTextRegionType_];
                ++v7;
                sub_1B42A0458();
                v5 = *(v9 + 16);
                sub_1B42A0498();
                sub_1B42A04A8();
                sub_1B42A0468();
                if (v35 == v7)
                {

                  a3 = v69;
                  v5 = v70;
                  v7 = v68;
                  v9 = MEMORY[0x1E69E7CC0];
                  goto LABEL_51;
                }
              }
            }

            goto LABEL_50;
          }
        }

        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          goto LABEL_35;
        }

LABEL_50:

LABEL_51:
        sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
        v59 = sub_1B429FDE8();

        v60 = v75;
        [v75 setSubregions_];

        v61 = *a3;
        v8 = v71;
        if (*a3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_1B42AC090;
          *(v62 + 32) = v75;
          v63 = v61;
          v64 = v75;
          v65 = sub_1B429FDE8();
          v60 = v75;

          [v63 addRecognizedRegions:v65 detectedRegion:v74];
        }

        v11 = v73;
LABEL_54:
        if (v5)
        {
          goto LABEL_69;
        }

        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        v10 = v11;
        if (v11 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_69:

    __break(1u);
  }
}

char *sub_1B415432C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-1] - v4;
  v6 = type metadata accessor for ImageReaderConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4152D78(a1, v9);
  if (!v1)
  {
    v12 = v10;
    v13 = v11;

    ImageReaderConfiguration.init(options:)(v14, v8);
    v19[3] = v6;
    v19[4] = sub_1B4155024(&qword_1ED95E850, type metadata accessor for ImageReaderConfiguration, &protocol conformance descriptor for ImageReaderConfiguration);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
    sub_1B4153A3C(v8, boxed_opaque_existential_0);
    v16 = sub_1B429F6D8();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v5 = (*(v13 + 8))(v19, v5, v12, v13);
    sub_1B40FC988(v8);
  }

  return v5;
}

uint64_t sub_1B4154508(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B429FB98();
  v5 = v4;
  v6 = objc_opt_self();
  sub_1B40EFB78(a1);
  v7 = sub_1B429FAE8();

  v8 = [v6 computeDeviceTypeForOptions:v7 mtlDevice:0];

  v9 = sub_1B429FB98();
  if (*(a1 + 16))
  {
    v11 = sub_1B40F0030(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_1B40E2888(*(a1 + 56) + 32 * v11, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
      if (swift_dynamicCast())
      {

        v3 = v18;
        v5 = v19;
      }
    }
  }

  else
  {
  }

  if (v3 == sub_1B429FB98() && v5 == v14)
  {
  }

  else
  {
    v16 = sub_1B42A0678();

    if ((v16 & 1) == 0)
    {
      return v3;
    }
  }

  if ((v8 - 1) >= 2)
  {
    deviceHasAppleNeuralEngine();
  }

  return sub_1B429FB98();
}

void sub_1B41546F4(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_1B41536B4(a1);
  v11 = sub_1B4152D78(v9, v10);
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 1;
  v15 = sub_1B429FEE8();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v14;
  *(v16 + 32) = v11;
  *(v16 + 40) = v13;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;

  sub_1B40E6C14(v8, &unk_1B42AE870, v16, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v8, &unk_1EB884C70, &qword_1B42ACAB0);

  swift_beginAccess();
  if (*(v14 + 32))
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
  }
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1B4154934()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v12 = *(v0 + 11);
  v11 = *(v0 + 12);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1B40E6828;

  return sub_1B414E138(v5, v6, v7, v8, v13, v2, v3, v4, v9, v10, v12, v11);
}

uint64_t sub_1B4154A2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B40E6828;

  return sub_1B414EB24(v8, v2, v3, v4, v5, v7, v6);
}

void sub_1B4154AEC(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v9 = a1;
    v6 = [v5 detectedLineRegion];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      v8 = v7;
      MEMORY[0x1B8C72680]();
      if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1B4154C10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B40E6828;

  return sub_1B414FE10(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B4154CF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B40E6828;

  return sub_1B4151A88(v6, v2, v3, v5, v4);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRImageReaderError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRImageReaderError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B4154DFC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4154E18(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4154E90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B40E17D0;

  return sub_1B414CDEC(v8, v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1B4154F90()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E6828;

  return sub_1B41483BC(v3, v2);
}

uint64_t sub_1B4155024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_61Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1B41550C0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B40E6828;

  return sub_1B414D1B0(v6, v7, v8, v2, v3, v4, v5);
}

unint64_t sub_1B4155188()
{
  result = qword_1ED95E5C0;
  if (!qword_1ED95E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E5C0);
  }

  return result;
}

double sub_1B41551DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1B4155254()
{
  v2 = [v1 textFeatureFilter];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885640, &qword_1B42AE878);
  return swift_dynamicCast();
}

void CRNeuralRecognizerConfiguration.createTextFeatureFilter()(uint64_t *a1@<X8>)
{
  if ([v1 revision] - 1 > 1)
  {
    v3 = [v1 locale];
    v4 = sub_1B429FB98();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    CRLocale.init(rawValue:)(v7);
    if (v10 == 30)
    {
      __break(1u);
    }

    else
    {
      v9 = v10;
      a1[3] = &type metadata for CRRegionFilterMultiLocale;
      v8 = swift_allocObject();
      *a1 = v8;
      CRRegionFilterMultiLocale.init(locale:)(&v9, v8 + 16);
    }
  }

  else
  {
    nullsub_1();
    a1[3] = &type metadata for CRRegionFilterIdentity;
  }
}

void CRMultiLocaleRecognizerConfiguration.createTextFeatureFilter()(uint64_t *a1@<X8>)
{
  if ([v1 revision] - 1 > 1)
  {
    v3 = [v1 languages];
    v4 = [v3 objectAtIndexedSubscript_];

    sub_1B42A0348();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    CRLocale.init(rawValue:)(v6);
    if (v8 == 30)
    {
      __break(1u);
    }

    else
    {
      v7[0] = v8;
      a1[3] = &type metadata for CRRegionFilterMultiLocale;
      v5 = swift_allocObject();
      *a1 = v5;
      CRRegionFilterMultiLocale.init(locale:)(v7, v5 + 16);
    }
  }

  else
  {
    nullsub_1();
    a1[3] = &type metadata for CRRegionFilterIdentity;
  }
}

id sub_1B4155544(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_1B42A0668();
  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

void sub_1B41555BC(unint64_t isUniquelyReferenced_nonNull_native)
{
  v76 = isUniquelyReferenced_nonNull_native;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_72;
  }

  v1 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v73 = v1;
  if (v1)
  {
    while (1)
    {
      v2 = isUniquelyReferenced_nonNull_native;
      v77 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = sub_1B4155D30(0, v1 & ~(v1 >> 63), 0);
      if (v1 < 0)
      {
        __break(1u);
        goto LABEL_76;
      }

      v3 = 0;
      v4 = v77;
      v5 = v2;
      v6 = v2 & 0xC000000000000001;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v6)
        {
          v9 = MEMORY[0x1B8C72CD0](v3);
        }

        else
        {
          if (v3 >= *(v7 + 16))
          {
            goto LABEL_68;
          }

          v9 = *(v5 + 8 * v3 + 32);
        }

        v10 = v9;
        v11 = [v9 boundingQuad];
        if (!v11)
        {
          __break(1u);
LABEL_79:
          __break(1u);

          __break(1u);
          return;
        }

        v12 = v11;
        [v11 size];
        v14 = v13;

        v77 = v4;
        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1B4155D30((v15 > 1), v16 + 1, 1);
          v4 = v77;
        }

        *(v4 + 2) = v16 + 1;
        *&v4[8 * v16 + 32] = v14;
        ++v3;
        v5 = v76;
        if (v8 == v1)
        {
          v2 = v76;
          while (1)
          {
            v77 = v4;

            sub_1B4155F88(&v77);
            v17 = *(v77 + 2);
            if (v17)
            {
              break;
            }

LABEL_76:
            __break(1u);
LABEL_77:
            v4 = MEMORY[0x1E69E7CC0];
          }

          v18 = v2;
          v19 = *(v4 + 2);
          if (!v19)
          {
            v69 = MEMORY[0x1E69E7CC0];
            goto LABEL_35;
          }

          v20 = 0;
          v21 = *&v77[8 * (v17 >> 1) + 32] * 1.7;
          v22 = v18 & 0xC000000000000001;
          v23 = v18 & 0xFFFFFFFFFFFFFF8;
          v24 = v18 + 32;
          v25 = v19 - 1;
          v69 = MEMORY[0x1E69E7CC0];
LABEL_18:
          v26 = v20;
          while (1)
          {
            if (v26 >= *(v4 + 2))
            {
              goto LABEL_70;
            }

            if (v73 == v26)
            {
              goto LABEL_33;
            }

            v27 = *&v4[8 * v26 + 32];
            if (v22)
            {
              v28 = MEMORY[0x1B8C72CD0](v26, v76);
              if (v21 < v27)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (v26 >= *(v23 + 16))
              {
                goto LABEL_71;
              }

              v28 = *(v24 + 8 * v26);
              if (v21 < v27)
              {
LABEL_27:
                v70 = v25;
                v74 = v28;
                v29 = v69;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v77 = v69;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = sub_1B4155D10(0, *(v69 + 2) + 1, 1);
                  v29 = v77;
                }

                v31 = *(v29 + 2);
                v30 = *(v29 + 3);
                v32 = v31 + 1;
                v33 = v74;
                if (v31 >= v30 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = sub_1B4155D10((v30 > 1), v31 + 1, 1);
                  v32 = v31 + 1;
                  v33 = v74;
                  v29 = v77;
                }

                v20 = v26 + 1;
                *(v29 + 2) = v32;
                v69 = v29;
                v34 = &v29[16 * v31];
                *(v34 + 4) = v27;
                *(v34 + 5) = v33;
                v25 = v70;
                v18 = v76;
                if (v70 == v26)
                {
LABEL_35:
                  v71 = (v69 + 16);
                  v75 = *(v69 + 2);
                  if (v75)
                  {
                    v35 = *(v69 + 5);
                    v36 = [v35 boundingQuad];
                    if (v36)
                    {
                      v37 = v36;
                      swift_beginAccess();
                      v38 = *(**(v72 + 80) + 312);

                      v39 = v38(v35);

                      [v37 bottomLeft];
                      if (v40 >= 0.5 || ([v37 bottomRight], v41 >= 0.5) || (objc_msgSend(v37, sel_topLeft), v42 >= 0.5) || (objc_msgSend(v37, sel_topRight), v43 >= 0.5))
                      {
                      }

                      else
                      {
                        [v35 activationProbability];
                        v45 = v44;
                        [v39 minTitleProbability];
                        v47 = v46;

                        if (v45 < v47)
                        {

                          return;
                        }
                      }
                    }

                    v18 = v76;
                  }

                  v48 = v18;
                  isUniquelyReferenced_nonNull_native = swift_beginAccess();
                  v49 = v48;
                  v50 = 0;
                  v51 = v48 & 0xC000000000000001;
                  v52 = v48 & 0xFFFFFFFFFFFFFF8;
                  while (2)
                  {
                    if (v51)
                    {
                      isUniquelyReferenced_nonNull_native = MEMORY[0x1B8C72CD0](v50, v49);
                    }

                    else
                    {
                      if (v50 >= *(v52 + 16))
                      {
                        goto LABEL_67;
                      }

                      isUniquelyReferenced_nonNull_native = *(v49 + 8 * v50 + 32);
                    }

                    v53 = isUniquelyReferenced_nonNull_native;
                    v54 = v50 + 1;
                    if (__OFADD__(v50, 1))
                    {
                      goto LABEL_66;
                    }

                    v1 = *(**(v72 + 80) + 312);

                    v55 = (v1)(v53);

                    v56 = [v53 text];
                    if (!v56)
                    {
                      goto LABEL_79;
                    }

                    v57 = v56;
                    sub_1B429FB98();

                    v58 = sub_1B429FC68();

                    isUniquelyReferenced_nonNull_native = [v55 minTitleLength];
                    if (v58 >= isUniquelyReferenced_nonNull_native)
                    {
                      [v53 activationProbability];
                      v60 = v59;
                      isUniquelyReferenced_nonNull_native = [v55 minTitleProbability];
                      if (v60 > v61)
                      {

                        return;
                      }
                    }

                    if (v75)
                    {
                      if (v75 > *v71)
                      {
                        goto LABEL_69;
                      }

                      v62 = v71[2 * v75 + 1];
                      sub_1B41560BC();
                      v63 = v62;
                      if ((sub_1B42A0258() & 1) == 0)
                      {
                        [v53 activationProbability];
                        v65 = v64;
                        [v55 minTitleProbability];
                        v67 = v66;

                        if (v65 > v67)
                        {

                          return;
                        }

LABEL_48:

                        ++v50;
                        v49 = v76;
                        if (v54 == v73)
                        {

                          return;
                        }

                        continue;
                      }
                    }

                    break;
                  }

                  goto LABEL_48;
                }

                goto LABEL_18;
              }
            }

            ++v26;

            if (v19 == v26)
            {
LABEL_33:
              v18 = v76;
              goto LABEL_35;
            }
          }
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v2 = isUniquelyReferenced_nonNull_native;
      v73 = sub_1B42A0518();
      if (!v73)
      {
        break;
      }

      v68 = sub_1B42A0518();
      if (!v68)
      {
        goto LABEL_77;
      }

      v1 = v68;
      isUniquelyReferenced_nonNull_native = v2;
    }
  }
}

void *sub_1B4155D10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4155D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4155D30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4155E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4155D50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885648, &qword_1B42AE880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885650, &qword_1B42AE888);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4155E84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885658, &qword_1B42AE890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1B4155F88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4156858(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1B42A0638();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1B429FE28();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1B4156108(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

unint64_t sub_1B41560BC()
{
  result = qword_1ED95E670;
  if (!qword_1ED95E670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E670);
  }

  return result;
}

void sub_1B4156108(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1B40E05F0(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1B4156664((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B40DDD00(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_1B40DDD00((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1B4156664((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1B4156664(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1B415686C(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v55 = a3;
  v57 = a2;
  v60 = sub_1B429F9B8();
  v6 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  v11 = sub_1B429F9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B410F8A0();
  v16 = *(v12 + 16);
  v59 = v11;
  v16(v14, v15, v11);
  v17 = sub_1B410F9C4();
  v61 = *v17;
  v18 = *(v17 + 16);
  v19 = a1;
  sub_1B429F9A8();
  v20 = sub_1B429F9C8();
  v54 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v53[1] = v4;
  if (v18)
  {
    if (v61 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v61 & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v61 >> 16 <= 0x10)
      {
        v61 = &v63;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (!v61)
  {
    __break(1u);
LABEL_5:

    goto LABEL_13;
  }

LABEL_10:
  v22 = swift_slowAlloc();
  *v22 = 134217984;
  v23 = [v19 latestResult];
  v24 = [v23 trackedRegions];

  sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
  v25 = sub_1B429FDF8();

  if (v25 >> 62)
  {
    v26 = sub_1B42A0518();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v22 + 4) = v26;

  v27 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v20, v54, v27, v61, "tracked quads: %ld", v22, 0xCu);
  MEMORY[0x1B8C74FA0](v22, -1, -1);
LABEL_13:

  v28 = v60;
  (*(v6 + 16))(v58, v10, v60);
  sub_1B429FA28();
  swift_allocObject();
  v29 = sub_1B429FA18();
  (*(v6 + 8))(v10, v28);
  (*(v12 + 8))(v14, v59);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v31 = result;
  objc_sync_enter(result);

  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = v57;
  if (Strong)
  {
    v34 = Strong;
    [Strong setDidDispatchOCROnFrame_];
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    [v35 setDidRunAssociationOnFrame_];
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    [(CRImageReaderTrackingSession *)v37 applyOpticalFlowTrackingForFrame:v33];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = result;
    objc_sync_exit(result);

    if ([(CRImageReaderTrackingSession *)v19 shouldRunOCROnCurrentFrame])
    {
      v40 = swift_allocObject();
      v61 = v29;
      v41 = v56;
      v40[2] = v55;
      v40[3] = v33;
      v40[4] = v41;
      v40[5] = v30;
      v40[6] = v19;
      aBlock[4] = sub_1B4158EE0;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B40E7E24;
      aBlock[3] = &block_descriptor_7;
      v42 = _Block_copy(aBlock);
      v43 = v19;
      v29 = v61;

      v44 = v33;

      v45 = [(CRImageReaderTrackingSession *)v43 dispatchIfReady:v42];
      _Block_release(v42);
      if (v45)
      {
        [v43 setDidDispatchOCROnFrame_];
        [(CRImageReaderTrackingSession *)v43 prepareSessionForOCRDispatch];
      }
    }

    v46 = [v19 usesGroupedRegions];
    v47 = [v19 latestResult];
    v48 = v47;
    if (v46)
    {
      v49 = [v47 regionTrackingGroups];

      if (v49)
      {
        v50 = &selRef_documentWithTrackedRegionGroups_;
LABEL_32:
        v51 = [objc_opt_self() *v50];

        Current = CFAbsoluteTimeGetCurrent();
        [(CRImageReaderTrackingSession *)v19 setLastFrameTime:?];

        sub_1B4156F54(v29, v19);

        return v51;
      }

      sub_1B40E27B4(0, &qword_1EB885668, off_1E7BC1148);
      v50 = &selRef_documentWithTrackedRegionGroups_;
    }

    else
    {
      v49 = [v47 trackedRegions];

      if (v49)
      {
        v50 = &selRef_documentWithTrackedRegions_;
        goto LABEL_32;
      }

      sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
      v50 = &selRef_documentWithTrackedRegions_;
    }

    sub_1B429FDF8();
    v49 = sub_1B429FDE8();

    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B4156F54(uint64_t a1, void *a2)
{
  v3 = sub_1B429F9F8();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B429F9B8();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B429F9E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B410F8A0();
  v14 = *(v10 + 16);
  v36 = v9;
  v14(v12, v13, v9);
  v15 = sub_1B410F9C4();
  v16 = *v15;
  v17 = *(v15 + 16);
  v18 = a2;
  v19 = sub_1B429F9C8();
  sub_1B429FA08();
  v35 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {

    v19 = v18;
LABEL_16:

    (*(v37 + 8))(v8, v38);
    return (*(v10 + 8))(v12, v36);
  }

  if ((v17 & 1) == 0)
  {
    if (v16)
    {
      v21 = v16;
LABEL_10:

      sub_1B429FA38();

      v23 = v33;
      v22 = v34;
      if ((*(v33 + 88))(v5, v34) == *MEMORY[0x1E69E93E8])
      {
        v24 = 0;
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v5, v22);
        v25 = "tracked quads: %ld";
        v24 = 1;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      *(v26 + 1) = v24;
      *(v26 + 2) = 2048;
      v27 = [v18 latestResult];
      v28 = [v27 trackedRegions];

      sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
      v29 = sub_1B429FDF8();

      if (v29 >> 62)
      {
        v30 = sub_1B42A0518();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 4) = v30;

      v31 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v19, v35, v31, v21, v25, v26, 0xCu);
      MEMORY[0x1B8C74FA0](v26, -1, -1);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v16 >> 32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v16 & 0xFFFFF800) != 0xD800)
  {
    if (v16 >> 16 <= 0x10)
    {
      v21 = &v39;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1B415737C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v121 = a5;
  v144 = a4;
  *&v150 = a3;
  v143 = a2;
  *&v149 = a1;
  v124 = sub_1B429F9F8();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v120 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v131 = &v119 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v119 - v11;
  v12 = type metadata accessor for ImageReaderConfiguration(0);
  v139 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v141 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v13;
  MEMORY[0x1EEE9AC00](v14);
  *&v152 = &v119 - v15;
  v16 = sub_1B429F9B8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v119 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v119 - v23;
  v25 = sub_1B429F9E8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v119 - v29;
  v31 = sub_1B410F8A0();
  v32 = *(v26 + 16);
  v134 = v31;
  v135 = v26 + 16;
  v133 = v32;
  (v32)(v30);
  v33 = sub_1B410F934();
  v151 = *v33;
  v132 = v33;
  v34 = *(v33 + 16);
  sub_1B429F9A8();
  v35 = sub_1B429F9C8();
  LODWORD(v138) = sub_1B42A01C8();
  v36 = sub_1B42A0278();
  v147 = v16;
  if (v36)
  {
    v148 = v26;
    if ((v34 & 1) == 0)
    {
      v37 = v151;
      if (v151)
      {
LABEL_9:
        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v35, v138, v39, v37, "", v38, 2u);
        MEMORY[0x1B8C74FA0](v38, -1, -1);
        v16 = v147;
        v26 = v148;
        goto LABEL_10;
      }

      __break(1u);
    }

    if (HIDWORD(v151))
    {
      __break(1u);
    }

    else
    {
      if ((v151 & 0xFFFFF800) == 0xD800)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v151 >> 16 <= 0x10)
      {
        v37 = &v153;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_10:

  (*(v17 + 16))(v21, v24, v16);
  sub_1B429FA28();
  swift_allocObject();
  v151 = sub_1B429FA18();
  v40 = *(v17 + 8);
  v130 = v17 + 8;
  v126 = v40;
  v40(v24, v16);
  v41 = *(v26 + 8);
  v136 = v25;
  v148 = v26 + 8;
  v125 = v41;
  v41(v30, v25);

  v43 = v152;
  ImageReaderConfiguration.init(options:)(v42, v152);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v138 = (v44 + 16);
  v45 = sub_1B429FEE8();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v48 = v142;
  v129 = v45;
  v128 = v47;
  v127 = v46 + 56;
  (v47)(v142, 1, 1);
  v49 = v43;
  v50 = v141;
  sub_1B4153A3C(v49, v141);
  v51 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v52 = (v140 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v143;
  *(v54 + 16) = v150;
  *(v54 + 24) = v55;
  sub_1B4158F08(v50, v54 + v51);
  *(v54 + v52) = v144;
  *(v54 + v53) = v151;
  *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;

  v56 = v55;

  v137 = v44;

  sub_1B40E6C14(v48, &unk_1B42AE8A0, v54, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v48, &unk_1EB884C70, &qword_1B42ACAB0);

  v57 = v138;
  swift_beginAccess();
  v58 = *v57;
  v59 = v146;
  v60 = v145;
  if (!*v57)
  {
    sub_1B40FC988(v152);

LABEL_45:

    return;
  }

  v141 = v56;
  v142 = 0;
  v61 = v136;
  v133(v145, v134, v136);
  v62 = *v132;
  v63 = *(v132 + 16);
  v143 = v58;
  v64 = sub_1B429F9C8();
  sub_1B429FA08();
  v65 = sub_1B42A01B8();
  v66 = sub_1B42A0278();
  v67 = v59;
  v68 = v147;
  if ((v66 & 1) == 0)
  {
LABEL_24:

    v126(v67, v68);
    v125(v60, v61);
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    v76 = (v75 + 16);
    v77 = sub_1B429FB98();
    v79 = v149;
    if (*(v149 + 16))
    {
      v80 = sub_1B40F0030(v77, v78);
      v82 = v81;

      v83 = v150;
      v84 = v143;
      v85 = v141;
      if (v82)
      {
        sub_1B40E2888(*(v79 + 56) + 32 * v80, v155);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v86 = v131;
          if (v154[8])
          {
            type metadata accessor for CREngineAccurate.Result();
            v87 = CREngineAccurate.Result.__allocating_init()();
            v88 = sub_1B40F3450();
            v89 = sub_1B410F988();
            MEMORY[0x1EEE9AC00](v89);
            *(&v119 - 4) = v87;
            *(&v119 - 3) = v83;
            *(&v119 - 2) = v84;
            v90 = MEMORY[0x1E69E7CA8];
            sub_1B40FF6E8(v92, v91, sub_1B40FC480, (&v119 - 6), v92);

            [v85 size];
            v94 = v93;
            v96 = v95;
            v86 = v120;
            v128(v120, 1, 1, v129);
            v97 = swift_allocObject();
            v97[2] = v75;
            v97[3] = v83;
            v97[4] = v87;
            v97[5] = v94;
            v97[6] = v96;

            v98 = v90 + 8;
            v99 = v142;
            sub_1B40E6C14(v86, &unk_1B42AE8C0, v97, v98);
            if (v99)
            {

LABEL_34:

              sub_1B40E26E8(v86, &unk_1EB884C70, &qword_1B42ACAB0);
              sub_1B40FC988(v152);

LABEL_44:

              goto LABEL_45;
            }

            sub_1B40E26E8(v86, &unk_1EB884C70, &qword_1B42ACAB0);

            goto LABEL_36;
          }

LABEL_32:
          v128(v86, 1, 1, v129);
          v100 = swift_allocObject();
          v100[2] = v75;
          v100[3] = v83;
          v100[4] = v84;
          v100[5] = v85;

          v101 = v85;
          v102 = v84;

          v99 = v142;
          sub_1B40E6C14(v86, &unk_1B42AE8B0, v100, MEMORY[0x1E69E7CA8] + 8);
          if (v99)
          {

            goto LABEL_34;
          }

          sub_1B40E26E8(v86, &unk_1EB884C70, &qword_1B42ACAB0);
LABEL_36:

          v103 = v152;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            sub_1B40FC988(v103);

            return;
          }

          v105 = Strong;
          swift_beginAccess();
          v106 = *v76;
          if (*v76)
          {
            v107 = v106;
            v108 = [v107 trackingDocumentWithTrackedType:-[CRImageReaderTrackingSession trackedRegionType](v105) includeLines:{objc_msgSend(v105, sel_shouldIncludeLinesInTrackingResult)}];

            v106 = *v76;
          }

          else
          {
            v108 = 0;
          }

          *v76 = v108;

          objc_sync_enter(v105);
          v109.n128_f64[0] = [(CRImageReaderTrackingSession *)v105 sceneHomography];
          [(CRImageReaderTrackingSession *)v105 setAccumulatedSceneHomography:v109, v110, v111];
          if (*v76)
          {
            v112 = *v76;
            v113 = [v105 latestResult];
            *&v114 = [(CRImageReaderTrackingSession *)v105 accumulatedSceneHomography];
            v152 = v114;
            v150 = v115;
            v149 = v116;
            v117 = [v121 usesGroupedRegions];
            v118 = [v113 resultByUpdatingWithDocument:v112 sceneHomography:v117 usesGroupedRegions:{*&v152, *&v150, *&v149}];

            [v105 setLatestResult_];
            [v105 setDidRunAssociationOnFrame_];
            [(CRImageReaderTrackingSession *)v105 setSceneHomography:*(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)];
            [(CRImageReaderTrackingSession *)v105 saveQuadsAfterAssociation];
          }

          objc_sync_exit(v105);

          sub_1B40FC988(v103);
          goto LABEL_44;
        }
      }
    }

    else
    {

      v83 = v150;
      v84 = v143;
      v85 = v141;
    }

    v86 = v131;
    goto LABEL_32;
  }

  if ((v63 & 1) == 0)
  {
    if (v62)
    {
      v69 = v124;
      v70 = v123;
LABEL_20:

      v71 = v122;
      sub_1B429FA38();

      if ((*(v70 + 88))(v71, v69) == *MEMORY[0x1E69E93E8])
      {
        v72 = "[Error] Interval already ended";
      }

      else
      {
        (*(v70 + 8))(v71, v69);
        v72 = "";
      }

      v68 = v147;
      v73 = swift_slowAlloc();
      *v73 = 0;
      v67 = v146;
      v74 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v64, v65, v74, v62, v72, v73, 2u);
      MEMORY[0x1B8C74FA0](v73, -1, -1);
      v61 = v136;
      v60 = v145;
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  if (v62 >> 32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v69 = v124;
  v70 = v123;
  if ((v62 & 0xFFFFF800) != 0xD800)
  {
    if (v62 >> 16 <= 0x10)
    {
      v62 = v154;
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_53:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1B41582EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[14] = a2;
  v7[15] = a3;
  v8 = sub_1B429F9F8();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_1B429F9B8();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v10 = sub_1B429F9E8();
  v7[26] = v10;
  v7[27] = *(v10 - 8);
  v7[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0, &qword_1B42AC3F8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41584A4, 0, 0);
}

uint64_t sub_1B41584A4()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = sub_1B429F868();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[5] = type metadata accessor for ImageReaderConfiguration(0);
  v0[6] = sub_1B4159210();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B4153A3C(v2, boxed_opaque_existential_0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_1B41585E4;
  v7 = v0[29];
  v8 = v0[15];

  return sub_1B40F68E4(v8, v7, (v0 + 2), Strong);
}

uint64_t sub_1B41585E4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v7 = v4 + 29;
    v5 = v4[29];
    v6 = v7[1];

    sub_1B40E26E8(v5, &qword_1EB8855E0, &qword_1B42AC3F8);
    v8 = sub_1B4158760;
  }

  else
  {
    v9 = v4[29];
    v10 = v4[30];
    v4[32] = a1;
    sub_1B40E26E8(v9, &qword_1EB8855E0, &qword_1B42AC3F8);

    sub_1B40E26E8((v4 + 2), &unk_1EB8855F0, &qword_1B42AC400);
    v8 = sub_1B4158A18;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B4158760()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1B40E26E8((v0 + 2), &unk_1EB8855F0, &qword_1B42AC400);
  v4 = sub_1B410F8A0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1B410F934();
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = sub_1B429F9C8();
  sub_1B429FA08();
  v9 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = v9;
  if (v7)
  {
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 13);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v6)
  {
LABEL_10:
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];

    sub_1B429FA38();

    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x1E69E93E8])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[21] + 8))(v0[22], v0[20]);
      v20 = "";
    }

    v21 = v0[27];
    v29 = v0[28];
    v22 = v0[25];
    v23 = v0[26];
    v25 = v0[23];
    v24 = v0[24];
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1B429F998();
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v8, v30, v27, v6, v20, v26, 2u);
    MEMORY[0x1B8C74FA0](v26, -1, -1);

    (*(v24 + 8))(v22, v25);
    (*(v21 + 8))(v29, v23);
    goto LABEL_14;
  }

  __break(1u);
LABEL_5:
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[23];
  v16 = v0[24];

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);
LABEL_14:

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B4158A18()
{
  v1 = v0[32];
  v2 = v0[19];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4158ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = sub_1B4158B8C;

  return sub_1B40F714C(a4, a5, 0, 0, 0);
}

uint64_t sub_1B4158B8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B40F33CC, 0, 0);
  }
}

uint64_t sub_1B4158CD8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  v10 = swift_task_alloc();
  *(v6 + 48) = v10;
  *v10 = v6;
  v10[1] = sub_1B4158D94;
  v11.n128_f64[0] = a1;

  return CREngineAccurate._documentOutputRegionResult(_:imageSize:)(a6, v11, a2);
}

uint64_t sub_1B4158D94(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B40FD090, 0, 0);
  }
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1B4158F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageReaderConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4158F6C()
{
  v2 = *(type metadata accessor for ImageReaderConfiguration(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B40E6828;

  return sub_1B41582EC(v11, v6, v7, v0 + v3, v8, v9, v10);
}

uint64_t sub_1B41590A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B40E17D0;

  return sub_1B4158ACC(v6, v2, v3, v5, v4);
}

uint64_t sub_1B4159154()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B40E6828;

  return sub_1B4158CD8(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_1B4159210()
{
  result = qword_1ED95E850;
  if (!qword_1ED95E850)
  {
    type metadata accessor for ImageReaderConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E850);
  }

  return result;
}

double sub_1B4159268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A0, &unk_1B42AE980);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1B42ACFB0;
  *(v0 + 32) = &type metadata for CRCorrectLatinCyrillicAmbiguities;
  *(v0 + 40) = &off_1F2BB2DE0;
  qword_1ED95F8B8 = v0;
  return result;
}

uint64_t sub_1B41592C4(uint64_t a1)
{
  if (qword_1ED95F8B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED95F8B8;
  v3 = *(qword_1ED95F8B8 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = (*(*v4 + 8))(a1);

      v4 += 16;
      a1 = v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    return a1;
  }

  return v5;
}

void sub_1B4159388(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  v7 = sub_1B429FB98();
  v9 = v8;

  v10 = [a1 text];
  v11 = sub_1B429FB98();
  v13 = v12;

  _s15TextRecognition33CRCorrectLatinCyrillicAmbiguitiesV03fixE0011correctableA0S2S_tFZ_0(v11, v13);

  v14 = sub_1B429FB88();

  [a1 setText_];

  if (a3)
  {

    v15 = sub_1B429FB88();
    [a1 setLocale_];
  }

  else
  {
    v23 = [a1 text];
    v24 = sub_1B429FB98();
    v26 = v25;

    if (v7 == v24 && v9 == v26)
    {

      return;
    }

    v28 = sub_1B42A0678();

    if (v28)
    {
      return;
    }
  }

  v16 = [a1 subregions];
  if (v16)
  {
    v17 = v16;
    v49 = sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
    v18 = sub_1B429FDF8();

    if (v18 >> 62)
    {
      v19 = sub_1B42A0518();
      if (v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        v50 = MEMORY[0x1E69E7CC0];
        sub_1B42A0488();
        if (v19 < 0)
        {
          __break(1u);
          goto LABEL_75;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B8C72CD0](v20, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v22 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
            swift_dynamicCast();
          }

          ++v20;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v19 != v20);

        v27 = v50;
        goto LABEL_25;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (v27 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
    {
      v30 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1B8C72CD0](v30, v27);
        }

        else
        {
          if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v31 = *(v27 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_1B4159388(v31, a2, a3);

        ++v30;
        if (v33 == i)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:

    if (v27 >> 62)
    {
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    v34 = sub_1B429FDE8();

    [a1 setSubregions_];
  }

  v35 = [a1 candidates];
  if (!v35)
  {
    return;
  }

  v36 = v35;
  sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
  v37 = sub_1B429FDF8();

  if (v37 >> 62)
  {
    v38 = sub_1B42A0518();
    if (v38)
    {
LABEL_45:
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B42A0488();
      if ((v38 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1B8C72CD0](v39, v37);
          }

          else
          {
            v40 = *(v37 + 8 * v39 + 32);
          }

          v41 = v40;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v41 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
            swift_dynamicCast();
          }

          ++v39;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v38 != v39);

        v42 = v51;
        goto LABEL_56;
      }

LABEL_75:
      __break(1u);
      return;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_45;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_56:
  if (v42 >> 62)
  {
    goto LABEL_68;
  }

  for (j = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1B42A0518())
  {
    v44 = 0;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1B8C72CD0](v44, v42);
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      sub_1B4159388(v45, a2, a3);

      ++v44;
      if (v47 == j)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:

  if (v42 >> 62)
  {
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  v48 = sub_1B429FDE8();

  [a1 setCandidates_];
}

void sub_1B4159B0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 text];
  v7 = sub_1B429FB98();
  v9 = v8;

  v10 = [v5 text];
  v11 = sub_1B429FB98();
  v13 = v12;

  sub_1B415CDCC(v11, v13);
  sub_1B429FB78();

  v14 = sub_1B429FB88();

  [v5 setText_];

  if (a3)
  {

    v15 = sub_1B429FB88();
    [v5 setLocale_];
  }

  else
  {
    v23 = [v5 text];
    v24 = sub_1B429FB98();
    v26 = v25;

    if (v7 == v24 && v9 == v26)
    {

      return;
    }

    v28 = sub_1B42A0678();

    if (v28)
    {
      return;
    }
  }

  v16 = [v5 subregions];
  v49 = v5;
  if (v16)
  {
    v17 = v16;
    sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
    v18 = sub_1B429FDF8();

    if (v18 >> 62)
    {
      v19 = sub_1B42A0518();
      if (v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        v50 = MEMORY[0x1E69E7CC0];
        sub_1B42A0488();
        if (v19 < 0)
        {
          __break(1u);
          goto LABEL_75;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B8C72CD0](v20, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v22 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
            swift_dynamicCast();
          }

          ++v20;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v19 != v20);

        v27 = v50;
        goto LABEL_25;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (v27 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
    {
      v30 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1B8C72CD0](v30, v27);
        }

        else
        {
          if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v31 = *(v27 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_1B4159B0C(v31, a2, a3);

        ++v30;
        if (v33 == i)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:

    if (v27 >> 62)
    {
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    v5 = v49;

    v34 = sub_1B429FDE8();

    [v49 setSubregions_];
  }

  v35 = [v5 candidates];
  if (!v35)
  {
    return;
  }

  v36 = v35;
  sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
  v37 = sub_1B429FDF8();

  if (v37 >> 62)
  {
    v38 = sub_1B42A0518();
    if (v38)
    {
LABEL_45:
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B42A0488();
      if ((v38 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1B8C72CD0](v39, v37);
          }

          else
          {
            v40 = *(v37 + 8 * v39 + 32);
          }

          v41 = v40;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v41 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
            swift_dynamicCast();
          }

          ++v39;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v38 != v39);

        v42 = v51;
        goto LABEL_56;
      }

LABEL_75:
      __break(1u);
      return;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_45;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_56:
  if (v42 >> 62)
  {
    goto LABEL_68;
  }

  for (j = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1B42A0518())
  {
    v44 = 0;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1B8C72CD0](v44, v42);
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      sub_1B4159B0C(v45, a2, a3);

      ++v44;
      if (v47 == j)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:

  if (v42 >> 62)
  {
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  v48 = sub_1B429FDE8();

  [v49 setCandidates_];
}

unint64_t sub_1B415A2BC(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1B8C725A0]();
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1B415BBA8(0, v3 & ~(v3 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_56;
  }

  v7 = 0;
  v4 = v26;
  v8 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v24 = 4 << v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v10) = a1 < 0;
  }

  v21 = v10;
  v11 = 15;
  v22 = v9;
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v13 = v11;
    if ((v11 & 0xC) == v24)
    {
      v13 = sub_1B412A6EC(v11, a1, a2);
    }

    result = v13 >> 16;
    if (v13 >> 16 >= v9)
    {
      goto LABEL_52;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B429FCE8();
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        sub_1B412A5C8(v13, a1, a2);
      }

      result = sub_1B42A03C8();
      if ((v13 & 0xC000) == 0x4000)
      {
        if (result < 0x10000)
        {
          goto LABEL_54;
        }

        result = result & 0x3FF | 0xFFFFDC00;
      }

      else if (WORD1(result))
      {
        result = ((result + 67043328) >> 10) + 55296;
        if ((result & 0x10000) != 0)
        {
          goto LABEL_55;
        }
      }
    }

    v14 = v5;
    v26 = v4;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = result;
      sub_1B415BBA8((v15 > 1), v16 + 1, 1);
      result = v20;
      v4 = v26;
    }

    *(v4 + 16) = v16 + 1;
    *(v4 + 2 * v16 + 32) = result;
    if ((v11 & 0xC) == v24)
    {
      result = sub_1B412A6EC(v11, a1, a2);
      v11 = result;
    }

    v5 = v14;
    v17 = v11 >> 16;
    v9 = v22;
    if (v11 >> 16 >= v22)
    {
      goto LABEL_53;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = MEMORY[0x1B8C72580](v11, a1, a2);
      v11 = result;
      goto LABEL_12;
    }

    if (v21)
    {
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_12;
    }

    if ((v11 & 0xC001) != 0)
    {
      if ((a2 & 0x2000000000000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = sub_1B412A5C8(v11, a1, a2);
      v11 = result;
      v17 = result >> 16;
      if ((a2 & 0x2000000000000000) == 0)
      {
LABEL_37:
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = sub_1B42A0448();
        }

        v18 = *(result + v17);
        if ((v18 & 0x80) == 0)
        {
LABEL_48:
          v19 = 1;
          goto LABEL_49;
        }

        goto LABEL_40;
      }
    }

    v25[0] = a1;
    v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v18 = *(v25 + v17);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_48;
    }

LABEL_40:
    LODWORD(v19) = __clz(v18 ^ 0xFF) - 24;
    if (v19 != 4)
    {
      v19 = v19;
      goto LABEL_49;
    }

    if ((v11 & 0xC000) != 0)
    {
      v19 = 4;
LABEL_49:
      v11 = (v11 + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_12;
    }

    v11 = v11 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_12:
    ++v7;
    if (v12 == v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_1B415A610(unint64_t a1, uint64_t a2)
{
  v65 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  v2 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C72CD0](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v8 = *(a1 + 8 * v2 + 32);
    }

    v9 = v8;
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v6 = sub_1B42A0518();
      goto LABEL_3;
    }

    v11 = [v8 locale];
    if (!v11)
    {
      sub_1B429FB98();
      v11 = sub_1B429FB88();
    }

    v3 = [objc_opt_self() *a2];

    if (v3)
    {
      sub_1B42A0458();
      v3 = *(v65 + 16);
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
    }

    else
    {
    }

    ++v2;
  }

  while (v10 != v6);
  v12 = v65;
  v7 = MEMORY[0x1E69E7CC0];
  if ((v65 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v12 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_21;
    }

LABEL_34:

    a2 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v3 = *(a2 + 16);
    v25 = MEMORY[0x1E69E7CC8];
    if (!v3)
    {
      goto LABEL_40;
    }

    v13 = *(a2 + 32);
    v12 = *(a2 + 40);

    sub_1B40D6000(0, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v25;
    v14 = sub_1B40F0030(v13, v12);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    LOBYTE(v2) = v27;
    if (v25[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_1B412ED60(v31, isUniquelyReferenced_nonNull_native);
      v25 = v65;
      v14 = sub_1B40F0030(v13, v12);
      if ((v2 & 1) != (v32 & 1))
      {
LABEL_39:
        sub_1B42A06E8();
        __break(1u);
LABEL_40:
        v33 = 0;
        goto LABEL_65;
      }
    }

    if ((v2 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_33:
  v13 = sub_1B42A0518();
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_21:
  v65 = v7;
  v14 = sub_1B40FE1A8(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    a2 = v65;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8C72CD0](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v17 locale];
      v19 = sub_1B429FB98();
      v21 = v20;

      v65 = a2;
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B40FE1A8((v22 > 1), v23 + 1, 1);
        a2 = v65;
      }

      ++v15;
      *(a2 + 16) = v23 + 1;
      v24 = a2 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v13 != v15);

    goto LABEL_35;
  }

  __break(1u);
LABEL_45:
  v35 = v14;
  sub_1B412FA28();
  v14 = v35;
  v25 = v65;
  if (v2)
  {
LABEL_43:
    v34 = v14;

    v14 = v34;
    goto LABEL_48;
  }

LABEL_46:
  v25[(v14 >> 6) + 8] |= 1 << v14;
  v36 = (v25[6] + 16 * v14);
  *v36 = v13;
  v36[1] = v12;
  *(v25[7] + 8 * v14) = 0;
  v37 = v25[2];
  v30 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v30)
  {
LABEL_75:
    __break(1u);

    __break(1u);
    return;
  }

  v25[2] = v38;
LABEL_48:
  v39 = v25[7];
  v40 = *(v39 + 8 * v14);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  *(v39 + 8 * v14) = v41;
  if (v3 != 1)
  {
    v42 = (a2 + 56);
    v43 = 1;
    while (1)
    {
      if (v43 >= *(a2 + 16))
      {
        goto LABEL_74;
      }

      v44 = *(v42 - 1);
      v12 = *v42;

      sub_1B40D6000(sub_1B4140C80, 0);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v25;
      v46 = sub_1B40F0030(v44, v12);
      v48 = v25[2];
      v49 = (v47 & 1) == 0;
      v30 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v30)
      {
        goto LABEL_72;
      }

      v51 = v47;
      if (v25[3] < v50)
      {
        break;
      }

      if (v45)
      {
        goto LABEL_57;
      }

      v54 = v46;
      sub_1B412FA28();
      v46 = v54;
      v25 = v65;
      if ((v51 & 1) == 0)
      {
LABEL_60:
        v25[(v46 >> 6) + 8] |= 1 << v46;
        v55 = (v25[6] + 16 * v46);
        *v55 = v44;
        v55[1] = v12;
        *(v25[7] + 8 * v46) = 0;
        v56 = v25[2];
        v30 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v30)
        {
          goto LABEL_75;
        }

        v25[2] = v57;
        goto LABEL_62;
      }

LABEL_58:
      v53 = v46;

      v46 = v53;
LABEL_62:
      v58 = v25[7];
      v59 = *(v58 + 8 * v46);
      v30 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v30)
      {
        goto LABEL_73;
      }

      ++v43;
      *(v58 + 8 * v46) = v60;
      v42 += 2;
      if (v3 == v43)
      {
        goto LABEL_64;
      }
    }

    sub_1B412ED60(v50, v45);
    v25 = v65;
    v46 = sub_1B40F0030(v44, v12);
    if ((v51 & 1) != (v52 & 1))
    {
      goto LABEL_39;
    }

LABEL_57:
    if ((v51 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

LABEL_64:
  v33 = sub_1B4140C80;
LABEL_65:

  v61 = v25[2];
  if (v61)
  {
    v62 = sub_1B415BBC8(v25[2], 0);
    v63 = sub_1B415C8BC(&v65, v62 + 4, v61, v25);
    v64 = v65;

    sub_1B41187E8(v64);
    if (v63 != v61)
    {
      __break(1u);
      goto LABEL_68;
    }
  }

  else
  {
LABEL_68:
    v62 = MEMORY[0x1E69E7CC0];
  }

  v65 = v62;
  sub_1B415BEE4(&v65);

  if (*(v65 + 16))
  {
  }

  sub_1B40D6000(v33, 0);
}

unint64_t sub_1B415AC5C()
{
  result = sub_1B415CA2C(&unk_1F2BB2CB8);
  qword_1ED95F2F8 = result;
  return result;
}

unint64_t sub_1B415AC84()
{
  result = sub_1B415CA2C(&unk_1F2BB2D28);
  qword_1ED95F2E8 = result;
  return result;
}

unint64_t sub_1B415ACAC()
{
  result = sub_1B415CA2C(&unk_1F2BB2D70);
  qword_1ED95F6F8 = result;
  return result;
}

id static CRCorrectLatinCyrillicAmbiguities.postprocess(lineRegions:)(unint64_t a1)
{
  v104 = MEMORY[0x1E69E7CC0];
  v92 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_184;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v102 = a1;
    if (v1)
    {
      v3 = 0;
      v4 = a1 & 0xC000000000000001;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          a1 = MEMORY[0x1B8C72CD0](v3, a1);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_174;
          }

          a1 = *(a1 + 8 * v3 + 32);
        }

        v6 = a1;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [a1 locale];
        if (!v8)
        {
          sub_1B429FB98();
          v8 = sub_1B429FB88();
        }

        v9 = [objc_opt_self() languageIsCyrillic_];

        if (v9)
        {
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        else
        {
        }

        ++v3;
        a1 = v102;
        if (v7 == v1)
        {
          v2 = v104;
          goto LABEL_17;
        }
      }

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

LABEL_17:
    v10 = (v2 >> 62) & 1;
    if (v2 < 0)
    {
      LODWORD(v10) = 1;
    }

    v93 = v10;
    if (v10 == 1)
    {
      a1 = sub_1B42A0518();
      v100 = a1;
    }

    else
    {
      v100 = *(v2 + 16);
    }

    v11 = 0;
    v12 = 0;
    v94 = v2 & 0xC000000000000001;
    v97 = v2;
    v13 = v2 + 32;
    while (v12 != v100)
    {
      if (v94)
      {
        a1 = MEMORY[0x1B8C72CD0](v12, v2);
      }

      else
      {
        if (v12 >= *(v2 + 16))
        {
          goto LABEL_171;
        }

        a1 = *(v13 + 8 * v12);
      }

      v16 = a1;
      v15 = __OFADD__(v12++, 1);
      if (v15)
      {
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      result = [a1 text];
      if (!result)
      {
        goto LABEL_192;
      }

      v18 = result;
      v19 = sub_1B429FB98();

      v104 = v19;
      swift_bridgeObjectRetain_n();
      v20 = sub_1B429FD18();
      if ((v20 & 0x10000) != 0)
      {
LABEL_39:

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v21 = v20;
        while (1)
        {
          if (utf16CheckIsCyrillic(v21))
          {
            if (qword_1ED95F2F0 != -1)
            {
              swift_once();
            }

            if (!*(qword_1ED95F2F8 + 16))
            {
              break;
            }

            sub_1B415BE9C(v21);
            if ((v22 & 1) == 0)
            {
              break;
            }
          }

          v21 = sub_1B429FD18();
          if ((v21 & 0x10000) != 0)
          {
            goto LABEL_39;
          }
        }

        v104 = v19;

        while (1)
        {
          v23 = sub_1B429FD18();
          if ((v23 & 0x10000) != 0)
          {
            break;
          }

          if (qword_1ED95F2E0 != -1)
          {
            v25 = v23;
            swift_once();
            v23 = v25;
          }

          if (*(qword_1ED95F2E8 + 16))
          {
            sub_1B415BE9C(v23);
            if (v24)
            {
              continue;
            }
          }

          v14 = 0;
          goto LABEL_23;
        }
      }

      v14 = 1;
LABEL_23:
      v15 = __OFADD__(v11, v14);
      v11 += v14;
      v2 = v97;
      if (v15)
      {
        goto LABEL_172;
      }
    }

    v26 = MEMORY[0x1E69E7CC0];
    if (v11 > 0)
    {
      break;
    }

LABEL_53:
    v104 = v26;
    if (v1)
    {
      v27 = 0;
      while (1)
      {
        if ((v102 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x1B8C72CD0](v27, v102);
        }

        else
        {
          if (v27 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_179;
          }

          a1 = *(v102 + 8 * v27 + 32);
        }

        v28 = a1;
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v30 = [a1 locale];
        if (!v30)
        {
          sub_1B429FB98();
          v30 = sub_1B429FB88();
        }

        v31 = [objc_opt_self() languageIsLatin_];

        if (v31)
        {
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          a1 = sub_1B42A0468();
        }

        else
        {
        }

        ++v27;
        if (v29 == v1)
        {
          v26 = v104;
          goto LABEL_67;
        }
      }

LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

LABEL_67:
    v32 = (v26 >> 62) & 1;
    if (v26 < 0)
    {
      LODWORD(v32) = 1;
    }

    v95 = v32;
    if (v32 == 1)
    {
      a1 = sub_1B42A0518();
      v33 = a1;
    }

    else
    {
      v33 = *(v26 + 16);
    }

    v34 = 0;
    v35 = 0;
    while (v35 != v33)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x1B8C72CD0](v35, v26);
      }

      else
      {
        if (v35 >= *(v26 + 16))
        {
          goto LABEL_176;
        }

        a1 = *(v26 + 32 + 8 * v35);
      }

      v37 = a1;
      v15 = __OFADD__(v35++, 1);
      if (v15)
      {
        goto LABEL_175;
      }

      result = [a1 text];
      if (!result)
      {
        goto LABEL_193;
      }

      v38 = result;
      v39 = sub_1B429FB98();

      v104 = v39;

      v40 = sub_1B429FD18();
      if ((v40 & 0x10000) != 0)
      {
LABEL_72:
        v36 = 1;
      }

      else
      {
        v41 = v40;
        while (1)
        {
          if (utf16CheckIsLatin(v41))
          {
            if (qword_1ED95F6F0 != -1)
            {
              swift_once();
            }

            if (!*(qword_1ED95F6F8 + 16))
            {
              break;
            }

            sub_1B415BE9C(v41);
            if ((v42 & 1) == 0)
            {
              break;
            }
          }

          v41 = sub_1B429FD18();
          if ((v41 & 0x10000) != 0)
          {
            goto LABEL_72;
          }
        }

        v36 = 0;
      }

      v15 = __OFADD__(v34, v36);
      v34 += v36;
      if (v15)
      {
        goto LABEL_177;
      }
    }

    if (v34 <= 0)
    {

      v43 = v102;
LABEL_165:

      return v43;
    }

    v43 = v102;
    if (v95)
    {
      v44 = sub_1B42A0518();
    }

    else
    {
      v44 = *(v26 + 16);
    }

    if (!v100 || v34 != v44)
    {
      goto LABEL_165;
    }

    sub_1B415A610(v102, &selRef_languageIsCyrillic_);
    v99 = v72;
    v101 = v73;
    if (!v73)
    {
      v99 = sub_1B429FB98();
      v101 = v74;
    }

    if (v92)
    {
      v75 = sub_1B42A0518();
      if (!v75)
      {
LABEL_188:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v75 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_188;
      }
    }

    v105 = MEMORY[0x1E69E7CC0];
    result = sub_1B42A0488();
    if (v75 < 0)
    {
      goto LABEL_191;
    }

    v76 = objc_opt_self();
    a1 = 0;
    while (1)
    {
      v80 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if ((v102 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (a1 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_183;
        }

        v81 = *(v102 + 32 + 8 * a1);
      }

      v82 = v81;
      v83 = [v81 locale];
      if (!v83)
      {
        sub_1B429FB98();
        v83 = sub_1B429FB88();
      }

      v84 = [v76 languageIsLatin_];

      if (v84)
      {
        result = [v82 text];
        if (!result)
        {
          goto LABEL_195;
        }

        v85 = result;
        v86 = sub_1B429FB98();

        v104 = v86;

        v87 = sub_1B429FD18();
        if ((v87 & 0x10000) != 0)
        {
LABEL_141:

          objc_opt_self();
          v77 = swift_dynamicCastObjCClass();
          if (v77)
          {
            v78 = v77;
            v79 = v82;
          }

          else
          {
            [v82 mutableCopy];
            sub_1B42A0348();
            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
            swift_dynamicCast();
            v78 = v103;
          }

          sub_1B4159B0C(v78, v99, v101);
        }

        else
        {
          v88 = v87;
          while (1)
          {
            if (utf16CheckIsLatin(v88))
            {
              if (qword_1ED95F6F0 != -1)
              {
                swift_once();
              }

              if (!*(qword_1ED95F6F8 + 16))
              {
                break;
              }

              sub_1B415BE9C(v88);
              if ((v89 & 1) == 0)
              {
                break;
              }
            }

            v88 = sub_1B429FD18();
            if ((v88 & 0x10000) != 0)
            {
              goto LABEL_141;
            }
          }
        }
      }

      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      a1 = v80;
      if (v80 == v75)
      {
        goto LABEL_166;
      }
    }

LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v91 = a1;
    v1 = sub_1B42A0518();
    a1 = v91;
  }

  if (v93)
  {
    a1 = sub_1B42A0518();
    if (v11 == a1)
    {
      goto LABEL_94;
    }

    goto LABEL_53;
  }

  a1 = *(v2 + 16);
  if (v11 != a1)
  {
    goto LABEL_53;
  }

LABEL_94:

  sub_1B415A610(v102, &selRef_languageIsLatin_);
  v98 = v46;
  if (v46)
  {
    v47 = v45;
    if (!v92)
    {
LABEL_96:
      v48 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_188;
      }

      goto LABEL_97;
    }
  }

  else
  {
    v47 = sub_1B429FB98();
    v98 = v90;
    if (!v92)
    {
      goto LABEL_96;
    }
  }

  v48 = sub_1B42A0518();
  if (!v48)
  {
    goto LABEL_188;
  }

LABEL_97:
  v105 = v26;
  result = sub_1B42A0488();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v49 = objc_opt_self();
    a1 = 0;
    v50 = v102 & 0xC000000000000001;
    v92 = v102 + 32;
    v51 = &selRef_initWithOptions_error_;
    v96 = v47;
    while (1)
    {
      v53 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_180;
      }

      if (v50)
      {
        v54 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (a1 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_182;
        }

        v54 = *(v92 + 8 * a1);
      }

      v55 = v54;
      v56 = [v54 locale];
      if (!v56)
      {
        sub_1B429FB98();
        v56 = sub_1B429FB88();
      }

      v57 = [v49 v51[114]];

      if (v57)
      {
        v58 = v51;
        v59 = v50;
        v60 = v49;
        v61 = v48;
        result = [v55 text];
        if (!result)
        {
          goto LABEL_194;
        }

        v62 = result;
        v63 = sub_1B429FB98();

        v104 = v63;
        swift_bridgeObjectRetain_n();
        v64 = sub_1B429FD18();
        if ((v64 & 0x10000) != 0)
        {
LABEL_120:
          swift_bridgeObjectRelease_n();

          v48 = v61;
          v49 = v60;
          v50 = v59;
          v51 = v58;
        }

        else
        {
          v65 = v64;
          while (1)
          {
            if (utf16CheckIsCyrillic(v65))
            {
              if (qword_1ED95F2F0 != -1)
              {
                swift_once();
              }

              if (!*(qword_1ED95F2F8 + 16))
              {
                break;
              }

              sub_1B415BE9C(v65);
              if ((v66 & 1) == 0)
              {
                break;
              }
            }

            v65 = sub_1B429FD18();
            if ((v65 & 0x10000) != 0)
            {
              goto LABEL_120;
            }
          }

          v104 = v63;

          v48 = v61;
          v49 = v60;
          v50 = v59;
          v51 = v58;
          while (1)
          {
            v69 = sub_1B429FD18();
            if ((v69 & 0x10000) != 0)
            {
              break;
            }

            if (qword_1ED95F2E0 != -1)
            {
              v71 = v69;
              swift_once();
              v69 = v71;
            }

            if (*(qword_1ED95F2E8 + 16))
            {
              sub_1B415BE9C(v69);
              if (v70)
              {
                continue;
              }
            }

            goto LABEL_101;
          }
        }

        objc_opt_self();
        v67 = swift_dynamicCastObjCClass();
        if (v67)
        {
          v52 = v67;
          v68 = v55;
        }

        else
        {
          [v55 mutableCopy];
          sub_1B42A0348();
          swift_unknownObjectRelease();
          sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
          swift_dynamicCast();
          v52 = v103;
        }

        sub_1B4159388(v52, v96, v98);
      }

LABEL_101:
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      a1 = v53;
      if (v53 == v48)
      {
LABEL_166:

        return v105;
      }
    }
  }

  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
  return result;
}

uint64_t static CRCorrectLatinCyrillicAmbiguities.fixLatin(correctableText:)(uint64_t a1, unint64_t a2)
{
  sub_1B415CDCC(a1, a2);
  v2 = sub_1B429FB78();

  return v2;
}

char *sub_1B415BBA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B415BDA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B415BBC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885698, &unk_1B42AE970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1B415BC58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885698, &unk_1B42AE970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885690, &unk_1B42AE960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B415BDA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885680, &qword_1B42AE948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

unint64_t sub_1B415BE9C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1B8C73000](*(v1 + 40), a1, 2);

  return sub_1B415C84C(v2, v3);
}

void sub_1B415BEE4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B415CA18(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  v4 = sub_1B42A0638();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885690, &unk_1B42AE960);
      v7 = sub_1B429FE28();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    sub_1B415C054(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1B415C054(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1B40E05F0(v7);
    }

    v84 = v7 + 16;
    v85 = *(v7 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1B415C610((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1B40DDD00(0, *(v7 + 2) + 1, 1, v7);
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v7 = sub_1B40DDD00((v36 > 1), v37 + 1, 1, v7);
    }

    *(v7 + 2) = v38;
    v39 = v7 + 32;
    v40 = &v7[16 * v37 + 32];
    *v40 = v8;
    *(v40 + 1) = v6;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 4);
          v43 = *(v7 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[16 * v41 - 16];
        v80 = *v79;
        v81 = &v39[16 * v41];
        v82 = *(v81 + 1);
        sub_1B415C610((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v7 + 2);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        memmove(&v39[16 * v41], v81 + 16, 16 * (v83 - 1 - v41));
        *(v7 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[16 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1B415C610(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

unint64_t sub_1B415C84C(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1B415C8BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B415CA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885688, &unk_1B42AE950);
    v3 = sub_1B42A05F8();
    for (i = (a1 + 34); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B415BE9C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 2 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s15TextRecognition33CRCorrectLatinCyrillicAmbiguitiesV03fixE0011correctableA0S2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B415A2BC(a1, a2);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = &qword_1ED95F2E0;
  while (1)
  {
    v6 = *(v2 + 16);
    if (v4 == v3)
    {
      break;
    }

    if (v3 >= v6)
    {
      __break(1u);
LABEL_30:
      swift_once();
LABEL_10:
      v10 = qword_1ED95F2F8;
      v11 = 32;
      do
      {
        v12 = *(v2 + v11);
        if (*(v10 + 16))
        {
          v13 = sub_1B415BE9C(*(v2 + v11));
          if (v14)
          {
            v12 = *(*(v10 + 56) + 2 * v13);
          }
        }

        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          sub_1B415BBA8((v15 > 1), v16 + 1, 1);
        }

        v5[2] = v16 + 1;
        *(v5 + v16 + 16) = v12;
        v11 += 2;
        --v6;
      }

      while (v6);
      goto LABEL_28;
    }

    v7 = *(v2 + 2 * v3 + 32);
    if (qword_1ED95F2E0 != -1)
    {
      v9 = *(v2 + 2 * v3 + 32);
      swift_once();
      v7 = v9;
    }

    if (*(qword_1ED95F2E8 + 16))
    {
      sub_1B415BE9C(v7);
      ++v3;
      if (v8)
      {
        continue;
      }
    }

    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_28;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1B415BBA8(0, v6, 0);
    v5 = v26;
    if (qword_1ED95F2F0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (v6)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B415BBA8(0, v6, 0);
    if (qword_1ED95F2E0 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED95F2E8;
    v18 = 32;
    do
    {
      v19 = *(v2 + v18);
      if (*(v17 + 16))
      {
        v20 = sub_1B415BE9C(*(v2 + v18));
        if (v21)
        {
          v19 = *(*(v17 + 56) + 2 * v20);
        }
      }

      v23 = *(v27 + 16);
      v22 = *(v27 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B415BBA8((v22 > 1), v23 + 1, 1);
      }

      *(v27 + 16) = v23 + 1;
      *(v27 + 2 * v23 + 32) = v19;
      v18 += 2;
      --v6;
    }

    while (v6);
  }

LABEL_28:

  v24 = sub_1B429FB78();

  return v24;
}

unint64_t sub_1B415CDCC(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1B8C725A0]();
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1B415BBA8(0, v3 & ~(v3 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_62;
  }

  v7 = 0;
  v4 = v30;
  v8 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v11 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v11) = a1 < 0;
  }

  v24 = v11;
  v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v27 = a2;
  v25 = v9;
  v26 = v10;
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v14 = v12;
    if ((v12 & 0xC) == v9)
    {
      v14 = sub_1B412A6EC(v12, a1, a2);
    }

    result = v14 >> 16;
    if (v14 >> 16 >= v10)
    {
      goto LABEL_58;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B429FCE8();
LABEL_24:
      v15 = result;
      goto LABEL_25;
    }

    if ((v14 & 1) == 0)
    {
      sub_1B412A5C8(v14, a1, a2);
    }

    result = sub_1B42A03C8();
    if ((v14 & 0xC000) == 0x4000)
    {
      if (result < 0x10000)
      {
        goto LABEL_60;
      }

      v15 = result & 0x3FF | 0xFFFFDC00;
    }

    else
    {
      if (!WORD1(result))
      {
        goto LABEL_24;
      }

      v15 = ((result + 67043328) >> 10) + 55296;
      if ((v15 & 0x10000) != 0)
      {
        goto LABEL_61;
      }
    }

LABEL_25:
    if (qword_1ED95F6F0 != -1)
    {
      result = swift_once();
    }

    v16 = qword_1ED95F6F8;
    if (*(qword_1ED95F6F8 + 16))
    {
      result = sub_1B415BE9C(v15);
      if (v17)
      {
        LOWORD(v15) = *(*(v16 + 56) + 2 * result);
      }
    }

    v30 = v4;
    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1B415BBA8((v18 > 1), v19 + 1, 1);
      v4 = v30;
    }

    *(v4 + 16) = v19 + 1;
    *(v4 + 2 * v19 + 32) = v15;
    v9 = v25;
    a2 = v27;
    if ((v12 & 0xC) == v25)
    {
      result = sub_1B412A6EC(v12, a1, v27);
      v12 = result;
    }

    v10 = v26;
    v20 = v12 >> 16;
    if (v12 >> 16 >= v26)
    {
      goto LABEL_59;
    }

    if ((v27 & 0x1000000000000000) != 0)
    {
      result = MEMORY[0x1B8C72580](v12, a1, v27);
      v12 = result;
      goto LABEL_12;
    }

    if (v24)
    {
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_12;
    }

    if ((v12 & 0xC001) != 0)
    {
      if ((v27 & 0x2000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = sub_1B412A5C8(v12, a1, v27);
      v12 = result;
      v20 = result >> 16;
      if ((v27 & 0x2000000000000000) == 0)
      {
LABEL_43:
        result = v22;
        if ((a1 & 0x1000000000000000) != 0)
        {
          LODWORD(v21) = *(v22 + v20);
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          result = sub_1B42A0448();
          LODWORD(v21) = *(result + v20);
          if ((v21 & 0x80) == 0)
          {
LABEL_52:
            v21 = 1;
            goto LABEL_53;
          }
        }

        goto LABEL_45;
      }
    }

    v29[0] = a1;
    v29[1] = v23;
    LODWORD(v21) = *(v29 + v20);
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_52;
    }

LABEL_45:
    LODWORD(v21) = __clz(v21 ^ 0xFF) - 24;
    if (v21 != 4)
    {
      v21 = v21;
      goto LABEL_53;
    }

    if ((v12 & 0xC000) != 0)
    {
      v21 = 4;
LABEL_53:
      v12 = (v12 + (v21 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_12;
    }

    v12 = v12 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_12:
    ++v7;
    if (v13 == v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

id CRCTCTextDecoderV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRCTCTextDecoderV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRCTCTextDecoderV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRCTCTextDecoderV3.__allocating_init(configuration:model:)(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = [objc_allocWithZone(v2) initWithConfiguration:a1 model:a2 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1B429F598();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v4;
}

id CRCTCTextDecoderV3.init(configuration:model:)(void *a1, uint64_t a2)
{
  v3 = sub_1B415D8E4(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

id CRCTCTextDecoderV3.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRCTCTextDecoderV3();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1B415D4AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1B41232C0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t _s15TextRecognition18CRCTCTextDecoderV3C20lmSupportedLanguagesSaySSGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0, &qword_1B42AD920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B42AE990;
  *(v0 + 32) = sub_1B429FB98();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1B429FB98();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1B429FB98();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1B429FB98();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1B429FB98();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1B429FB98();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1B429FB98();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1B429FB98();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_1B429FB98();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_1B429FB98();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_1B429FB98();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_1B429FB98();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_1B429FB98();
  *(v0 + 232) = v13;
  *(v0 + 240) = sub_1B429FB98();
  *(v0 + 248) = v14;
  *(v0 + 256) = sub_1B429FB98();
  *(v0 + 264) = v15;
  *(v0 + 272) = sub_1B429FB98();
  *(v0 + 280) = v16;
  *(v0 + 288) = sub_1B429FB98();
  *(v0 + 296) = v17;
  *(v0 + 304) = sub_1B429FB98();
  *(v0 + 312) = v18;
  *(v0 + 320) = sub_1B429FB98();
  *(v0 + 328) = v19;
  *(v0 + 336) = sub_1B429FB98();
  *(v0 + 344) = v20;
  *(v0 + 352) = sub_1B429FB98();
  *(v0 + 360) = v21;
  *(v0 + 368) = sub_1B429FB98();
  *(v0 + 376) = v22;
  *(v0 + 384) = sub_1B429FB98();
  *(v0 + 392) = v23;
  *(v0 + 400) = sub_1B429FB98();
  *(v0 + 408) = v24;
  *(v0 + 416) = sub_1B429FB98();
  *(v0 + 424) = v25;
  *(v0 + 432) = sub_1B429FB98();
  *(v0 + 440) = v26;
  v34[3] = &type metadata for CRFeatureFlags;
  v34[4] = sub_1B4118C60();
  LOBYTE(v34[0]) = 1;
  v27 = sub_1B429F898();
  __swift_destroy_boxed_opaque_existential_0(v34);
  if (v27)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B42AD230;
    *(inited + 32) = sub_1B429FB98();
    *(inited + 40) = v29;
    *(inited + 48) = sub_1B429FB98();
    *(inited + 56) = v30;
    *(inited + 64) = sub_1B429FB98();
    *(inited + 72) = v31;
    *(inited + 80) = sub_1B429FB98();
    *(inited + 88) = v32;
    v34[0] = v0;
    sub_1B415D4AC(inited);
    return v34[0];
  }

  return v0;
}

id sub_1B415D8E4(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CRCTCTextDecoderV3();
  v5 = objc_msgSendSuper2(&v9, sel_initWithConfiguration_model_error_, a1, a2, v10);
  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1B415D9AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = v6(a2, a3);
  v8 = [v7 textFeatureOrder];

  if (a1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
  v9 = sub_1B429FDE8();

  v10 = [v8 orderAndGroupRegions_];

  swift_unknownObjectRelease();
  sub_1B40E27B4(0, &qword_1ED95E6E0, off_1E7BC0E88);
  v11 = sub_1B429FDF8();

  v12 = v6(a2, a3);
  LOBYTE(v10) = [v12 falsePositiveFilteringDisabled];

  if ((v10 & 1) == 0)
  {
    v13 = v6(a2, a3);
    sub_1B4155254();

    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v16 = (*(v15 + 16))(v11, v14, v15);

    __swift_destroy_boxed_opaque_existential_0(v18);
    return v16;
  }

  return v11;
}

uint64_t sub_1B415DBC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = v7(a3, a4);
  v9 = [v8 textFeatureOrder];

  if ([v9 respondsToSelector_])
  {

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
    v10 = sub_1B429FDE8();
    sub_1B40E27B4(0, &unk_1ED95E6B0, off_1E7BC1088);
    v11 = sub_1B429FDE8();
    v12 = [v9 orderAndGroupRegions:v10 tableGroups:v11];

    sub_1B40E27B4(0, &qword_1ED95E6E0, off_1E7BC0E88);
    v13 = sub_1B429FDF8();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = v7(a3, a4);
    v15 = [v14 textFeatureOrder];

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
    v16 = sub_1B429FDE8();

    v12 = [v15 orderAndGroupRegions_];

    swift_unknownObjectRelease();
    sub_1B40E27B4(0, &qword_1ED95E6E0, off_1E7BC0E88);
    v13 = sub_1B429FDF8();
  }

  v17 = v7(a3, a4);
  v18 = [v17 falsePositiveFilteringDisabled];

  if ((v18 & 1) == 0)
  {
    v19 = v7(a3, a4);
    sub_1B4155254();

    v20 = v25;
    v21 = v26;
    __swift_project_boxed_opaque_existential_0(v24, v25);
    v22 = (*(v21 + 16))(v13, v20, v21);

    __swift_destroy_boxed_opaque_existential_0(v24);
    return v22;
  }

  return v13;
}

id sub_1B415DF54(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B415E04C(a1, a2, a3, a4);
  v7 = *(a4 + 8);
  v8 = v7(a3, a4);
  v9 = [v8 falsePositiveFilteringDisabled];

  if ((v9 & 1) == 0)
  {
    v10 = v7(a3, a4);
    sub_1B4155254();

    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v13 = (*(v12 + 8))(v6, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  return v6;
}

id sub_1B415E04C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v52 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_58:
    v5 = sub_1B42A0518();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v44 = v4 & 0xC000000000000001;
    v40 = v4 + 32;
    v41 = v4 & 0xFFFFFFFFFFFFFF8;
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v4;
    while (1)
    {
      if (v44)
      {
        v8 = MEMORY[0x1B8C72CD0](v7, v4);
      }

      else
      {
        if (v7 >= *(v41 + 16))
        {
          goto LABEL_57;
        }

        v8 = *(v40 + 8 * v7);
      }

      v9 = v8;
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v47 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B42AC090;
      *(v12 + 32) = v9;
      sub_1B40E27B4(0, &unk_1ED95E680, off_1E7BC0D68);
      v46 = v9;
      v13 = sub_1B429FDE8();

      v14 = [a2 recognizedRegionsForDetectedLineRegions_];

      sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
      v15 = sub_1B429FDF8();

      v51 = v6;
      if (v15 >> 62)
      {
        v16 = sub_1B42A0518();
        if (v16)
        {
LABEL_13:
          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1B8C72CD0](v17, v15);
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_54;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            v4 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            result = [v18 text];
            if (!result)
            {
              break;
            }

            v21 = result;
            v22 = sub_1B429FB98();
            v24 = v23;

            v25 = HIBYTE(v24) & 0xF;
            if ((v24 & 0x2000000000000000) == 0)
            {
              v25 = v22 & 0xFFFFFFFFFFFFLL;
            }

            if (v25)
            {
              sub_1B42A0458();
              sub_1B42A0498();
              sub_1B42A04A8();
              sub_1B42A0468();
            }

            else
            {
            }

            ++v17;
            if (v4 == v16)
            {
              v6 = v51;
              goto LABEL_27;
            }
          }

          __break(1u);
          return result;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_13;
        }
      }

LABEL_27:

      if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
      {
        v26 = sub_1B42A0518();
        if (!v26)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v26 = *(v6 + 16);
        if (!v26)
        {
          goto LABEL_5;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_56;
      }

      v27 = 0;
      v28 = *(a4 + 8);
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1B8C72CD0](v27, v6);
        }

        else
        {
          v29 = *(v6 + 8 * v27 + 32);
        }

        v30 = v29;
        [v29 mutableCopy];
        sub_1B42A0348();
        swift_unknownObjectRelease();
        sub_1B40E27B4(0, &unk_1ED95E630, off_1E7BC0FB8);
        swift_dynamicCast();
        v31 = v28(a3, a4);
        v32 = [v31 falsePositiveFilteringDisabled];

        if ((v32 & 1) == 0)
        {
          v33 = v28(a3, a4);
          v34 = [v33 revision];

          if (v34 >= 3)
          {
            v35 = [v50 subregions];
            if (v35)
            {
              v36 = v35;
              v37 = sub_1B429FDF8();

              v38 = v37 >> 62 ? sub_1B42A0518() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v38)
              {
                [v50 adjustBoundsBasedOnSubregions];
              }
            }
          }
        }

        v39 = v50;
        MEMORY[0x1B8C72680]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B429FE08();
        }

        ++v27;
        sub_1B429FE38();
      }

      while (v26 != v27);
      v42 = v52;
LABEL_5:

      v4 = v43;
      v7 = v47;
      v6 = MEMORY[0x1E69E7CC0];
      if (v47 == v5)
      {
        return v42;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CRNonSplittingTextFeatureSplitter.split(lineRegions:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A8, &qword_1B42AE9C8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B42ACFB0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;

  return v2;
}

uint64_t sub_1B415E5F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A8, &qword_1B42AE9C8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B42ACFB0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;

  return v2;
}

void CRLocaleBasedTextFeatureSplitter.split(lineRegions:)(unint64_t a1)
{
  v106 = sub_1B429FA68();
  v3 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v101 - v7;
  v113 = *v1;
  v116 = v113;
  v9 = sub_1B415F524();
  v120 = MEMORY[0x1E69E7CC8];
  sub_1B40D96FC(a1);
  v10 = objc_allocWithZone(CROrderedIndexSet);
  v11 = sub_1B429FDE8();
  v12 = a1;

  v108 = [v10 initWithArray_];

  if (a1 >> 62)
  {
LABEL_125:
    v105 = v12 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_1B42A0518();
  }

  else
  {
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v5;
  v111 = (v3 + 8);
  v112 = (v3 + 16);
  v107 = v12;
  if (!v13)
  {
    v102 = MEMORY[0x1E69E7CC8];
    v3 = v106;
    goto LABEL_32;
  }

  v5 = 0;
  v102 = MEMORY[0x1E69E7CC8];
  v109 = v13;
  v110 = (v12 & 0xC000000000000001);
  v104 = v8;
  v8 = v105;
  v3 = v106;
  do
  {
    v14 = v5;
    while (1)
    {
      if (v110)
      {
        v15 = MEMORY[0x1B8C72CD0](v14, v12);
      }

      else
      {
        if (v14 >= *(v8 + 16))
        {
          goto LABEL_119;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v116 = v113;
      sub_1B415F6E4(v15);
      if (v17)
      {
        break;
      }

      [v108 addIndex_];

LABEL_7:
      ++v14;
      if (v5 == v109)
      {
        goto LABEL_32;
      }
    }

    v18 = v17;
    v19 = sub_1B40E682C();
    if (!*(v19 + 16))
    {

      [v108 addIndex_];

      v12 = v107;
      goto LABEL_7;
    }

    v119 = v113;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856B0, &qword_1B42AE9D0);
    v118 = sub_1B40E27FC(&qword_1ED95E0E0, &unk_1EB8856B0, &qword_1B42AE9D0, MEMORY[0x1E69E6340]);
    v116 = v19;
    sub_1B416013C(&v116, v114);
    __swift_destroy_boxed_opaque_existential_0(&v116);
    v20 = v114[0];
    if (v114[0] != 30)
    {
      goto LABEL_23;
    }

    if (!*(v9 + 16))
    {
      v21 = sub_1B41253CC();
      v22 = v104;
      (*v112)(v104, v21, v3);
      v23 = sub_1B429FA48();
      v24 = sub_1B42A0148();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1B40D2000, v23, v24, "Could not select locale.", v25, 2u);
        v26 = v25;
        v3 = v106;
        MEMORY[0x1B8C74FA0](v26, -1, -1);
      }

      (*v111)(v22, v3);
      v12 = v107;
      v8 = v105;
      goto LABEL_7;
    }

    v20 = *(v9 + 32);
LABEL_23:
    if (!*(v102 + 2) || (sub_1B4160594(v20), (v27 & 1) == 0))
    {
      sub_1B40D96FC(v107);
      v28 = objc_allocWithZone(CROrderedIndexSet);
      v29 = sub_1B429FDE8();

      v30 = [v28 initWithArray_];

      sub_1B4160218(v30, v20);
    }

    v31 = v120;
    if (*(v120 + 16))
    {
      v32 = sub_1B4160594(v20);
      if (v33)
      {
        v34 = *(*(v31 + 56) + 8 * v32);
        [v34 addIndex_];
      }
    }

    v102 = v31;

    v3 = v106;
    v12 = v107;
  }

  while (v5 != v109);
LABEL_32:
  if (CROrderedIndexSet.isEmpty.getter())
  {
    v35 = v102;
    goto LABEL_44;
  }

  v119 = v113;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856C0, &qword_1B42AE9D8);
  v118 = sub_1B40E27FC(&qword_1ED95E0E8, &unk_1EB8856C0, &qword_1B42AE9D8, MEMORY[0x1E69E5D98]);
  v36 = v102;
  v116 = v102;
  swift_bridgeObjectRetain_n();
  sub_1B416013C(&v116, v114);
  __swift_destroy_boxed_opaque_existential_0(&v116);
  v12 = v114[0];
  v37 = MEMORY[0x1E69E7CA0];
  if (v114[0] != 30)
  {
LABEL_37:
    if (!*(v36 + 2) || (sub_1B4160594(v12), (v38 & 1) == 0))
    {
      sub_1B40D96FC(v107);
      v39 = objc_allocWithZone(CROrderedIndexSet);
      v40 = sub_1B429FDE8();

      v41 = [v39 initWithArray_];

      v42 = v41;
      v3 = v106;
      sub_1B4160218(v42, v12);
    }

    v35 = v120;
    if (*(v120 + 16))
    {
      v43 = sub_1B4160594(v12);
      if (v44)
      {
        v12 = *(*(v35 + 56) + 8 * v43);
        [v12 addIndexSet_];
      }
    }

LABEL_44:
    v45 = v35;
    v46 = *(v9 + 16);
    if (v46)
    {
      v47 = 0;
      v5 = 3;
      while (v47 < *(v9 + 16))
      {
        LOBYTE(v116) = *(v9 + v47 + 32);
        CRLocale.script.getter(&v119);
        v114[0] = v119;
        v115 = 3;
        v3 = sub_1B410D624();
        v12 = sub_1B429FB58();
        if (v12)
        {
          goto LABEL_51;
        }

        if (v46 == ++v47)
        {
          v47 = 0;
LABEL_51:
          v49 = 0;
          v8 = 2;
          v5 = &type metadata for CRScript;
          while (v49 < *(v9 + 16))
          {
            LOBYTE(v116) = *(v9 + v49 + 32);
            CRLocale.script.getter(&v119);
            v114[0] = v119;
            v115 = 2;
            if (sub_1B429FB58())
            {

              v3 = v106;
              v48 = v103;
              if ((v12 & 1) == 0 || v47 >= v49)
              {
                goto LABEL_61;
              }

              goto LABEL_63;
            }

            if (v46 == ++v49)
            {

              v3 = v106;
              v48 = v103;
              if ((v12 & 1) != 0 && v47 < sub_1B429F4D8())
              {
                goto LABEL_63;
              }

              goto LABEL_61;
            }
          }

          goto LABEL_123;
        }
      }

      goto LABEL_122;
    }

    v48 = v103;
LABEL_61:
    v50 = v35;
    if (*(v35 + 16))
    {
      sub_1B4160594(27);
      if (v51)
      {
LABEL_63:
        v52 = 1 << *(v35 + 32);
        v53 = -1;
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        v9 = v53 & *(v35 + 64);
        v54 = (v52 + 63) >> 6;

        v5 = 0;
        v12 = &type metadata for CRScript;
        while (v9)
        {
          v55 = v5;
LABEL_72:
          v56 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v57 = v56 | (v55 << 6);
          LOBYTE(v56) = *(v45[6] + v57);
          v58 = *(v45[7] + 8 * v57);
          LOBYTE(v116) = v56;
          v59 = v58;
          CRLocale.script.getter(&v119);
          v114[0] = v119;
          v115 = 2;
          sub_1B410D624();
          v60 = sub_1B429FB58();

          v3 = v106;
          if (v60)
          {

            if (!v45[2] || (sub_1B4160594(27), (v61 & 1) == 0))
            {
              sub_1B40D96FC(v107);
              v62 = objc_allocWithZone(CROrderedIndexSet);
              v63 = sub_1B429FDE8();

              v12 = [v62 initWithArray_];

              sub_1B4160218(v12, 27);
            }

            v64 = v120;
            v37 = 0;
            sub_1B4160890(v120);
            v5 = 0;
            v66 = v65;
            v67 = 1 << *(v65 + 32);
            v68 = -1;
            if (v67 < 64)
            {
              v68 = ~(-1 << v67);
            }

            v69 = v65 + 64;
            v8 = v68 & *(v65 + 64);
            v9 = (v67 + 63) >> 6;
            while (v8)
            {
              v96 = v8;
LABEL_114:
              v8 = (v96 - 1) & v96;
              if (*(v64 + 16))
              {
                v12 = *(*(v66 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v96)))));
                v98 = sub_1B4160594(27);
                if (v99)
                {
                  v100 = *(*(v64 + 56) + 8 * v98);
                  [v100 addIndexSet_];

                  v3 = v106;
                }
              }
            }

            while (1)
            {
              v97 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_124;
              }

              if (v97 >= v9)
              {
                goto LABEL_80;
              }

              v96 = *(v69 + 8 * v97);
              ++v5;
              if (v96)
              {
                v5 = v97;
                goto LABEL_114;
              }
            }
          }
        }

        while (1)
        {
          v55 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v55 >= v54)
          {
            v37 = 0;
            v64 = v45;
LABEL_80:

            v50 = v64;
            v48 = v103;
            goto LABEL_83;
          }

          v9 = v45[v55 + 8];
          ++v5;
          if (v9)
          {
            v5 = v55;
            goto LABEL_72;
          }
        }

LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v37 = 0;
      v50 = v35;
    }

    else
    {
      v37 = 0;
    }

LABEL_83:
    v70 = *(v50 + 16);
    v71 = MEMORY[0x1E69E7CC0];
    v101 = v50;
    if (v70)
    {
      v12 = sub_1B416042C(v70, 0);
      v72 = sub_1B4162070(&v116, (v12 + 32), v70, v50);
      v73 = v116;

      sub_1B41187E8(v73);
      if (v72 != v70)
      {
        __break(1u);
        goto LABEL_127;
      }

      v3 = v106;
      v48 = v103;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v116 = v12;

    sub_1B41609F0(&v116);

    v5 = v116;
    v74 = v101;
    v113 = *(v116 + 2);
    if (!v113)
    {
LABEL_106:

      return;
    }

    v9 = 0;
    v109 = v116 + 32;
    v110 = v71;
    v8 = &unk_1ED95E680;
    v102 = v116;
    while (v9 < *(v5 + 16))
    {
      if (*(v74 + 16) && (v75 = v109[v9], v76 = sub_1B4160594(v75), (v77 & 1) != 0))
      {
        v78 = *(*(v74 + 56) + 8 * v76);
        v115 = v75;
        v79 = v78;
        v80 = CRLocale.rawValue.getter();
        v104 = v81;
        v105 = v80;
        v107 = v79;
        v82 = [v79 objects];
        v83 = sub_1B429FDF8();

        v84 = *(v83 + 16);
        if (v84)
        {
          v119 = MEMORY[0x1E69E7CC0];
          sub_1B42A0488();
          v85 = v83 + 32;
          do
          {
            sub_1B40E2888(v85, &v116);
            sub_1B40E27B4(0, &unk_1ED95E680, off_1E7BC0D68);
            swift_dynamicCast();
            sub_1B42A0458();
            sub_1B42A0498();
            sub_1B42A04A8();
            sub_1B42A0468();
            v85 += 32;
            --v84;
          }

          while (v84);

          v86 = v119;
          v3 = v106;
          v48 = v103;
          v74 = v101;
        }

        else
        {

          v86 = MEMORY[0x1E69E7CC0];
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = v102;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v110 = sub_1B41602E4(0, v110[2] + 1, 1, v110);
        }

        v92 = v110[2];
        v91 = v110[3];
        v12 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          v110 = sub_1B41602E4((v91 > 1), v92 + 1, 1, v110);
        }

        v93 = v110;
        v110[2] = v12;
        v94 = &v93[3 * v92];
        v95 = v104;
        v94[4] = v105;
        v94[5] = v95;
        v94[6] = v86;
      }

      else
      {
        v87 = sub_1B41253CC();
        (*v112)(v48, v87, v3);
        v12 = sub_1B429FA48();
        v88 = sub_1B42A0148();
        if (os_log_type_enabled(v12, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_1B40D2000, v12, v88, "Could not select index set for locale.", v89, 2u);
          MEMORY[0x1B8C74FA0](v89, -1, -1);
        }

        (*v111)(v48, v3);
      }

      if (++v9 == v113)
      {
        goto LABEL_106;
      }
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (*(v9 + 16))
  {
    v12 = *(v9 + 32);
    goto LABEL_37;
  }

LABEL_127:
  __break(1u);

  __break(1u);
}

char *sub_1B415F524()
{
  objc_opt_self();
  v0 = [swift_dynamicCastObjCClassUnconditional() languages];
  v1 = [v0 array];

  v2 = sub_1B429FDF8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B40E2888(v4, v13);
      sub_1B40E2888(v13, v11);
      swift_dynamicCast();
      CRLocale.init(rawValue:)(v10);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v6 = v12;
      if (v12 != 30)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B40E6B20(0, *(v5 + 2) + 1, 1, v5);
        }

        v8 = *(v5 + 2);
        v7 = *(v5 + 3);
        if (v8 >= v7 >> 1)
        {
          v5 = sub_1B40E6B20((v7 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        v5[v8 + 32] = v6;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void sub_1B415F6E4(void *a1)
{
  v84[0] = *v1;
  v3 = sub_1B415F524();
  if (!*(v3 + 2))
  {

    v30 = [objc_opt_self() unknown];
    goto LABEL_23;
  }

  v82 = v3[32];

  v4 = &selRef_scoreMapScaleFactor;
  v5 = [a1 scriptCategoryCounts];
  sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
  v6 = sub_1B429FAF8();

  v7 = objc_opt_self();
  v83 = [v7 latinCyrillic];
  sub_1B40E27B4(0, &qword_1ED95E6C0, off_1E7BC1070);
  sub_1B416216C();
  sub_1B42A03B8();
  if (*(v6 + 16) && (v8 = sub_1B4100E08(v84), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    sub_1B41012A0(v84);

    v11 = [v10 integerValue];

    v12 = v11;
  }

  else
  {

    sub_1B41012A0(v84);
    v12 = 0.0;
  }

  v13 = [a1 scriptCategoryCounts];
  v14 = sub_1B429FAF8();

  v83 = [v7 chinese];
  sub_1B42A03B8();
  if (*(v14 + 16) && (v15 = sub_1B4100E08(v84), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    sub_1B41012A0(v84);

    v18 = [v17 integerValue];

    v19 = v18;
  }

  else
  {

    sub_1B41012A0(v84);
    v19 = 0.0;
  }

  v20 = [a1 scriptCategoryCounts];
  v21 = sub_1B429FAF8();

  v83 = [v7 common];
  sub_1B42A03B8();
  if (*(v21 + 16) && (v22 = sub_1B4100E08(v84), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);
    sub_1B41012A0(v84);

    v25 = [v24 integerValue];

    v26 = v25;
  }

  else
  {

    sub_1B41012A0(v84);
    v26 = 0.0;
  }

  v27 = v82;
  LOBYTE(v84[0]) = v82;
  CRLocale.script.getter(&v83);
  sub_1B410D624();
  if (sub_1B429FB58())
  {
    v28 = [a1 topScriptCategory];
    v29 = [v7 chinese];

    swift_unknownObjectRelease();
    if (v28 != v29 && v12 < v19 * 80.0 + v26 && v19 > 0.0)
    {
      v30 = [v7 chinese];
LABEL_23:
      v38 = v30;
      return;
    }
  }

  v31 = [a1 scriptCategoryCounts];
  v32 = sub_1B429FAF8();

  v83 = [v7 korean];
  sub_1B42A03B8();
  if (*(v32 + 16) && (v33 = sub_1B4100E08(v84), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
    sub_1B41012A0(v84);

    v36 = [v35 integerValue];

    v37 = v36;
  }

  else
  {

    sub_1B41012A0(v84);
    v37 = 0.0;
  }

  v39 = [a1 scriptCategoryCounts];
  v40 = sub_1B429FAF8();

  v83 = [v7 unknown];
  sub_1B42A03B8();
  if (*(v40 + 16) && (v41 = sub_1B4100E08(v84), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + 8 * v41);
    sub_1B41012A0(v84);

    v44 = [v43 integerValue];

    v45 = v44;
  }

  else
  {

    sub_1B41012A0(v84);
    v45 = 0.0;
  }

  LOBYTE(v84[0]) = v82;
  CRLocale.script.getter(&v83);
  if (sub_1B429FB58())
  {
    v46 = [a1 topScriptCategory];
    v47 = [v7 korean];

    swift_unknownObjectRelease();
    if (v46 != v47)
    {
      v81 = v7;
      v48 = [a1 scriptCategoryCounts];
      v49 = sub_1B429FAF8();

      v50 = 1 << *(v49 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v49 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      v55 = 0;
      do
      {
        if (!v52)
        {
          while (1)
          {
            v56 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v56 >= v53)
            {
              goto LABEL_43;
            }

            v52 = *(v49 + 64 + 8 * v56);
            ++v54;
            if (v52)
            {
              v54 = v56;
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_69:
          __break(1u);
          return;
        }

        v56 = v54;
LABEL_40:
        v57 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v58 = [*(*(v49 + 56) + ((v56 << 9) | (8 * v57))) integerValue];
        v59 = __OFADD__(v55, v58);
        v55 += v58;
      }

      while (!v59);
      __break(1u);
LABEL_43:

      v7 = v81;
      v4 = &selRef_scoreMapScaleFactor;
      v27 = v82;
      if (v55 - v37 - v26 - v45 < v37 * 3.0)
      {
        v30 = [v81 korean];
        goto LABEL_23;
      }
    }
  }

  v60 = [a1 v4[2]];
  v61 = sub_1B429FAF8();

  v83 = [v7 japanese];
  sub_1B42A03B8();
  if (*(v61 + 16) && (v62 = sub_1B4100E08(v84), (v63 & 1) != 0))
  {
    v64 = *(*(v61 + 56) + 8 * v62);
    sub_1B41012A0(v84);

    v65 = [v64 integerValue];

    v66 = v65;
  }

  else
  {

    sub_1B41012A0(v84);
    v66 = 0.0;
  }

  LOBYTE(v84[0]) = v27;
  CRLocale.script.getter(&v83);
  if (sub_1B429FB58())
  {
    v67 = [a1 topScriptCategory];
    v68 = [v7 japanese];

    swift_unknownObjectRelease();
    if (v67 != v68)
    {
      v69 = [a1 v4[2]];
      v70 = sub_1B429FAF8();

      v71 = 1 << *(v70 + 32);
      v72 = -1;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      v73 = v72 & *(v70 + 64);
      v74 = (v71 + 63) >> 6;

      v75 = 0;
      v76 = 0;
      do
      {
        if (!v73)
        {
          while (1)
          {
            v77 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              goto LABEL_69;
            }

            if (v77 >= v74)
            {
              goto LABEL_63;
            }

            v73 = *(v70 + 64 + 8 * v77);
            ++v75;
            if (v73)
            {
              v75 = v77;
              goto LABEL_60;
            }
          }
        }

        v77 = v75;
LABEL_60:
        v78 = __clz(__rbit64(v73));
        v73 &= v73 - 1;
        v79 = [*(*(v70 + 56) + ((v77 << 9) | (8 * v78))) integerValue];
        v59 = __OFADD__(v76, v79);
        v76 += v79;
      }

      while (!v59);
      __break(1u);
LABEL_63:

      if (v76 - v66 - v26 - v45 < v66 * 3.0)
      {
        v30 = [v7 japanese];
        goto LABEL_23;
      }
    }
  }

  v80 = [a1 topScriptCategory];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
  }
}

void sub_1B416013C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B415F524();
  v5 = 0;
  v6 = *(v4 + 2);
  while (1)
  {
    if (v6 == v5)
    {
      v7 = 30;
LABEL_7:

      *a2 = v7;
      return;
    }

    if (v5 >= *(v4 + 2))
    {
      break;
    }

    v7 = v4[v5++ + 32];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_1B413EC3C();
    if (sub_1B429FDB8())
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1B4160218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B4161DCC(a1, v4, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1B4160594(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B4161F14();
        v11 = v13;
      }

      sub_1B4161C30(v9, v11);
      *v3 = v11;
    }
  }
}

void *sub_1B41602E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A8, &qword_1B42AE9C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856E0, &qword_1B42AD7D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B416042C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A60, &qword_1B42AC508);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}