uint64_t sub_1A461E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 96) = a4;
  *(v7 + 104) = v6;
  *(v7 + 113) = a6;
  *(v7 + 112) = a5;
  *(v7 + 80) = a2;
  *(v7 + 88) = a3;
  *(v7 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A461E60C, 0, 0);
}

void sub_1A461E60C()
{
  v47 = v0;
  v1 = v0[13];
  v2 = v0[10];
  if (v0[14])
  {
    v3 = 360.0;
  }

  else
  {
    v3 = *(v0 + 11);
  }

  if (v0[14])
  {
    v4 = 360.0;
  }

  else
  {
    v4 = *(v0 + 12);
  }

  sub_1A4622118(v0[10], *(v0 + 113), v3, v4);
  v6 = v5;
  [v5 setSynchronous_];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v9 = (*(*v1 + 160))();
  v0[6] = sub_1A3EE0BC0;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3DD5B38;
  v0[5] = &block_descriptor_226;
  v10 = _Block_copy(v0 + 2);
  v11 = v6;

  [v9 requestImageForAsset:v2 targetSize:0 contentMode:v11 options:v10 resultHandler:{v3, v4}];
  _Block_release(v10);
  v45 = v11;

  swift_beginAccess();
  if (!*(v7 + 16))
  {
    if (qword_1EB15B6A8 != -1)
    {
      swift_once();
    }

    v27 = v0[10];
    v28 = sub_1A5246F24();
    __swift_project_value_buffer(v28, qword_1EB15B6B0);
    v29 = v27;
    v30 = sub_1A5246F04();
    v31 = sub_1A524D224();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[10];
    if (v32)
    {
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v34 = 136315650;
      v35 = [v33 uuid];

      if (v35)
      {
        v36 = sub_1A524C674();
        v38 = v37;

        sub_1A3C2EF94(v36, v38, &v46);
      }

      goto LABEL_26;
    }

    v39 = *v8;
    if (v39)
    {
      goto LABEL_19;
    }

LABEL_21:
    v40 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_22;
  }

  v12 = qword_1EB15B6A8;
  v13 = *(v7 + 16);
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = v0[10];
  v15 = sub_1A5246F24();
  __swift_project_value_buffer(v15, qword_1EB15B6B0);
  v16 = v13;
  v17 = v14;
  v18 = sub_1A5246F04();
  v19 = sub_1A524D234();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[10];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v22 = 136316162;
    v23 = [v21 uuid];

    if (v23)
    {
      v24 = sub_1A524C674();
      v26 = v25;

      sub_1A3C2EF94(v24, v26, &v46);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v39 = *v8;
  if (!v39)
  {
    goto LABEL_21;
  }

LABEL_19:
  v40 = v39;
LABEL_22:
  v41 = v0[9];
  v0[8] = v40;
  v42 = sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
  v43 = v39;
  SendableTransfer.init(wrappedValue:)((v0 + 8), v42, v41);

  v44 = v0[1];

  v44();
}

uint64_t sub_1A461EBC8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A5246EA4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1A5246E54();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A461ECFC, 0, 0);
}

void sub_1A461ECFC(uint64_t a1)
{
  *(v1 + 104) = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource_signposter;
  sub_1A5246E84();
  sub_1A5246E24();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461EF9C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A461F2B8;
  }

  else
  {
    v2 = sub_1A461F0CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A461F0CC(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_1A5246E84();
  sub_1A5246EB4();
  v4 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    v6 = v1[6];
    v5 = v1[7];
    v7 = v1[5];

    sub_1A5246EE4();

    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69E93E8])
    {
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[6] + 8))(v1[7], v1[5]);
      v8 = "";
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, v4, v10, "Load Assets", v8, v9, 2u);
    MEMORY[0x1A590EEC0](v9, -1, -1);
  }

  v11 = v1[12];
  v13 = v1[9];
  v12 = v1[10];
  v14 = v1[8];

  v15 = *(v13 + 8);
  v15(v12, v14);
  v15(v11, v14);

  v16 = v1[1];

  return v16(v2);
}

uint64_t sub_1A461F2B8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A461F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_1A46227BC(0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1A3DB4F20(0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A461F46C, 0, 0);
}

uint64_t sub_1A461F46C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:
    sub_1A46229C0(0, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    sub_1A3DBD9A0();
    sub_1A524CE04();
    *(v4 + 152) = MEMORY[0x1E69E7CC0];
    v24 = sub_1A4622904(&unk_1EB120B60, sub_1A46227BC, MEMORY[0x1E69E8718]);
    v25 = swift_task_alloc();
    *(v4 + 160) = v25;
    *v25 = v4;
    v25[1] = sub_1A461F888;
    a3 = *(v4 + 112);
    v6 = v4 + 72;
    a4 = v24;

    return MEMORY[0x1EEE6D8C8](v6, a3, a4);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v27 = *(v4 + 96) + 32;
    v28 = **(v4 + 88);
    v29 = v5 & 0xC000000000000001;
    v30 = v6;
    while (1)
    {
      if (v29)
      {
        v10 = MEMORY[0x1A59097F0](v7, *(v4 + 96), a4, a1);
      }

      else
      {
        v10 = *(v27 + 8 * v7);
      }

      v11 = v10;
      v13 = *(v4 + 136);
      v12 = *(v4 + 144);
      v14 = *(v4 + 104);
      v15 = sub_1A524CCB4();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v11;
      sub_1A3D96FAC(v12, v13);
      LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);

      v19 = v11;
      v20 = *(v4 + 136);
      if (v12 == 1)
      {
        sub_1A3D97040(*(v4 + 136));
        if (!*v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1A524CCA4();
        (*(v16 + 8))(v20, v15);
        if (!*v18)
        {
LABEL_14:
          v21 = 0;
          v23 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_1A524CBC4();
      v23 = v22;
      swift_unknownObjectRelease();
LABEL_15:
      sub_1A46229C0(0, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);

      if (v23 | v21)
      {
        v8 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v21;
        *(v4 + 40) = v23;
      }

      else
      {
        v8 = 0;
      }

      ++v7;
      v9 = *(v4 + 144);
      *(v4 + 48) = 1;
      *(v4 + 56) = v8;
      *(v4 + 64) = v28;
      swift_task_create();

      sub_1A3D97040(v9);
      if (v30 == v7)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8C8](v6, a3, a4);
}

uint64_t sub_1A461F888()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[15] + 8))(v2[16], v2[14]);

    v3 = sub_1A461FBA8;
  }

  else
  {
    v3 = sub_1A461F9C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A461F9C0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 152);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1A4620150(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1A4620150((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v4[v6 + 4] = v1;
    *(v0 + 152) = v4;
    v7 = sub_1A4622904(&unk_1EB120B60, sub_1A46227BC, MEMORY[0x1E69E8718]);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1A461F888;
    v9 = *(v0 + 112);

    return MEMORY[0x1EEE6D8C8](v0 + 72, v9, v7);
  }

  else
  {
    v10 = *(v0 + 80);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    *v10 = v2;

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1A461FBA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A461FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A461FC44, 0, 0);
}

uint64_t sub_1A461FC44()
{
  v1 = v0[3];
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 vfxQualityUseBestCrop];

  v8 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1A4306A24;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v5, 0, 0, 1, v3);
}

id sub_1A461FDD8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v0 setDeliveryMode_];
  result = [v0 setNetworkAccessAllowed_];
  qword_1EB1EAE68 = v0;
  return result;
}

uint64_t sub_1A461FF7C()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource_signposter;
  v2 = sub_1A5246E94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4620080()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1579B0 = result;
  return result;
}

void sub_1A46200EC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B6B0);
  __swift_project_value_buffer(v0, qword_1EB15B6B0);
  sub_1A5246EF4();
}

void *sub_1A4620150(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A4622630(0, &qword_1EB120390, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A46229C0(0, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A46202B4(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A4444A10(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1A46203A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A462294C(0);
    v2 = sub_1A524E3C4();
    v15 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A4620C94(v9 + 1);
        }

        v2 = v15;
        result = sub_1A524DBE4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A4620584(unint64_t a1, uint64_t a2, __n128 a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1;
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      v4 = a1;
      sub_1A524E2B4();
      a1 = v4;
    }

    v6 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A4620A5C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A4620EB0(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

void sub_1A4620C94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A462294C(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1A524DBE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A4620EB0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A4620C94(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A4621020();
      goto LABEL_12;
    }

    sub_1A4621164(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

void sub_1A4621020()
{
  v1 = v0;
  sub_1A462294C(0);
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A4621164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A462294C(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A524DBE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1A462136C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, __n128 a6)
{
  v6 = a5;
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v9;
    do
    {
      while (1)
      {
        if (*v6 >> 62)
        {
          v10 = sub_1A524E2B4();
        }

        else
        {
          v10 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v6[1];
        if (v11 == v10)
        {

          sub_1A46215AC(a1, a2, v27, a3);
          return;
        }

        v12 = *v6;
        if ((*v6 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1A59097F0](v6[1], a6);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_26;
        }

        v6[1] = v11 + 1;
        v15 = sub_1A524DBE4();
        v16 = -1 << *(a3 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v30 + 8 * (v17 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v6 = a5;
      }

      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v20 = *(*(a3 + 48) + 8 * v17);
      v21 = sub_1A524DBF4();

      if ((v21 & 1) == 0)
      {
        v22 = ~v16;
        do
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          if (((1 << v17) & *(v30 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v23 = *(*(a3 + 48) + 8 * v17);
          v24 = sub_1A524DBF4();
        }

        while ((v24 & 1) == 0);
      }

      v6 = a5;

      v25 = a1[v18];
      a1[v18] = v25 & ~v19;
    }

    while ((v25 & v19) == 0);
    v9 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_28;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1A46215AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A462294C(0);
  result = sub_1A524E3D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1A524DBE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A4621794(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1A59097F0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1A59097F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1A524DBF4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1A524DBF4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v6 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

void sub_1A46219E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 40) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4621A48(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v6, v5);
      return;
    }

    v9 = v5;
    v8 = a2;
    goto LABEL_17;
  }

  if (v4)
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v7 = a2;
    }

    v8 = a1;
    v9 = v7;
LABEL_17:

    sub_1A3E2CAF8(v9, v8, a3);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v10 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(a1 + 56);
    v6 = sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v14 = 0;
    v15 = (v11 + 63) >> 6;
    v16 = a2 + 56;
    v28 = v15;
    v17 = a1;
    if (!v13)
    {
LABEL_27:
      v19 = v14;
      while (1)
      {
        v14 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v14 >= v15)
        {
          return;
        }

        v20 = *(v10 + 8 * v14);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v29 = (v20 - 1) & v20;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v18 = __clz(__rbit64(v13));
      v29 = (v13 - 1) & v13;
LABEL_32:
      v21 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
      v22 = sub_1A524DBE4();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1A524DBF4();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v15 = v28;
      v13 = v29;
      v17 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1A4621CC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C69BBC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1A4621DD0(unint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      sub_1A462294C(0);
      v4 = sub_1A524E3D4();
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = sub_1A524E2B4();
      if (!v6)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x1E69E7CD0];
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

LABEL_9:
  v7 = v4 + 56;
  v39 = v6;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v37 = v2;
    while (1)
    {
      v9 = MEMORY[0x1A59097F0](v8, v2);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = sub_1A524DBE4();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        while (1)
        {
          v19 = *(*(v4 + 48) + 8 * v14);
          v20 = sub_1A524DBF4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v7 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v2 = v37;
            v6 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v2 = v37;
        v6 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v7 + 8 * v15) = v17 | v16;
        *(*(v4 + 48) + 8 * v14) = v11;
        v21 = *(v4 + 16);
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_33;
        }

        *(v4 + 16) = v22;
        if (v8 == v6)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v36 = v2 + 32;
    v38 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v36 + 8 * v23);
      v25 = sub_1A524DBE4();
      v26 = -1 << *(v4 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v7 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        do
        {
          v32 = *(*(v4 + 48) + 8 * v27);
          v33 = sub_1A524DBF4();

          if (v33)
          {

            v6 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v7 + 8 * (v27 >> 6));
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v6 = v39;
      }

      *(v7 + 8 * v28) = v30 | v29;
      *(*(v4 + 48) + 8 * v27) = v24;
      v34 = *(v4 + 16);
      v10 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v10)
      {
        goto LABEL_35;
      }

      *(v4 + 16) = v35;
LABEL_23:
      if (++v23 == v6)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1A46220B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 48) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4622118(void *a1, char a2, double a3, double a4)
{
  if (qword_1EB165B40 != -1)
  {
    swift_once();
  }

  [qword_1EB1EAE68 copy];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &qword_1EB120860, 0x1E6978868);
  swift_dynamicCast();
  if ((a2 & 1) != 0 && (a3 != 0.0 || a4 != 0.0))
  {
    sub_1A524DA34();
  }

  [v7 setResizeMode_];
}

uint64_t sub_1A462243C(unint64_t a1, __n128 a2)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v5 = sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v6 = sub_1A43085A8();
    result = MEMORY[0x1A59082D0](i, v5, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A4620A5C(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = result;
  v8 = sub_1A524E2B4();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A462257C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A3CA8098;

  return sub_1A461F370(a1, a2, v7, v6);
}

void sub_1A4622630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46229C0(255, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46226C4(uint64_t a1)
{
  result = sub_1A5246E94();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A46227BC(uint64_t a1)
{
  if (!qword_1EB120B58)
  {
    sub_1A46229C0(255, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    sub_1A3DBD9A0();
    v1 = sub_1A524CE14();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120B58);
    }
  }
}

uint64_t sub_1A4622858(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3D60150;

  return sub_1A461FC20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A4622904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A462294C(uint64_t a1)
{
  if (!qword_1EB120528)
  {
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    sub_1A43085A8();
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120528);
    }
  }
}

void sub_1A46229C0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4622A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

__n128 sub_1A4622A44@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4622E20(a1, v5);
  swift_unknownObjectRelease();
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1A4622A98@<Q0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12)
{
  v27 = a1;
  v19 = sub_1A3C5D0E8(0, &qword_1EB13F2B8, &protocolRef_PXCMMInvitation);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v27, v19, &v28);
  *a9 = v28;
  *(a9 + 8) = a2;
  v20 = a3[3];
  *(a9 + 48) = a3[2];
  *(a9 + 64) = v20;
  *(a9 + 80) = a3[4];
  v21 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v21;
  v27 = a4;
  sub_1A4622F74(0, &qword_1EB126BC0, &qword_1EB12B190, &protocolRef_PXDisplayAsset);
  v23 = v22;
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v27, v23, &v28);
  *(a9 + 96) = v28;
  v27 = a5;
  sub_1A4622F74(0, &qword_1EB126A70, &qword_1EB126A80, &protocolRef_PXUIImageProvider);
  SendableTransfer.init(wrappedValue:)(&v27, v24, &v28);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a9 + 104) = v28;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  result = a11;
  *(a9 + 136) = a10;
  *(a9 + 152) = a11;
  *(a9 + 168) = a12;
  return result;
}

double sub_1A4622C1C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 owner];
  if (v4)
  {
    sub_1A4622E20(v4, v20);
    v16 = v20[1];
    v17 = v20[0];
    v14 = v20[3];
    v15 = v20[2];
    v5 = v21;
    v6 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v16 = 0u;
    v17 = xmmword_1A5301350;
    v14 = 0u;
    v15 = 0u;
  }

  v18 = a1;
  v7 = sub_1A3C5D0E8(0, &qword_1EB13F2B8, &protocolRef_PXCMMInvitation);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v18, v7, &v19);
  v8 = v19;
  v18 = 0;
  sub_1A4622F74(0, &qword_1EB126BC0, &qword_1EB12B190, &protocolRef_PXDisplayAsset);
  SendableTransfer.init(wrappedValue:)(&v18, v9, &v19);
  v10 = v19;
  v18 = 0;
  sub_1A4622F74(0, &qword_1EB126A70, &qword_1EB126A80, &protocolRef_PXUIImageProvider);
  SendableTransfer.init(wrappedValue:)(&v18, v11, &v19);
  swift_unknownObjectRelease();
  v12 = v19;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 96) = v10;
  *(a2 + 104) = v12;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  return result;
}

double sub_1A4622DA4@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = swift_getObjectType();
  *a1 = v3;

  swift_unknownObjectRetain();
  return result;
}

void sub_1A4622E20(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 emailAddressString];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v25 = v7;
    v27 = v6;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v8 = [a1 phoneNumberString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A524C674();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 firstName];
  v14 = sub_1A524C674();
  v16 = v15;

  v17 = [a1 lastName];
  v18 = sub_1A524C674();
  v20 = v19;

  v21 = [a1 localizedName];
  v22 = sub_1A524C674();
  v24 = v23;

  *a2 = v28;
  a2[1] = v26;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = v18;
  a2[7] = v20;
  a2[8] = v22;
  a2[9] = v24;
}

void sub_1A4622F74(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1A3C5D0E8(255, a3, a4);
    v5 = sub_1A524DF24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4622FCC()
{
  result = qword_1EB13F2C0;
  if (!qword_1EB13F2C0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB13F2C0);
  }

  return result;
}

unint64_t sub_1A4623018()
{
  result = qword_1EB12A648;
  if (!qword_1EB12A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A648);
  }

  return result;
}

unint64_t sub_1A4623070()
{
  result = qword_1EB12A640;
  if (!qword_1EB12A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A640);
  }

  return result;
}

unint64_t sub_1A46230C4()
{
  result = qword_1EB12A628;
  if (!qword_1EB12A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A628);
  }

  return result;
}

unint64_t sub_1A462311C()
{
  result = qword_1EB13F2D0;
  if (!qword_1EB13F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F2D0);
  }

  return result;
}

uint64_t sub_1A4623174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A46231D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1A462327C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1A46232C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A462334C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176968);
  v1 = __swift_project_value_buffer(v0, qword_1EB176968);
  v2 = sub_1A453191C();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A4623CAC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1A4623D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1A4623E40(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1A3C52C70(0, &qword_1EB1208F8, off_1E771E338);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
    sub_1A52415C4();
  }
}

double sub_1A4623FCC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4624074@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  *a2 = *(v3 + 24);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A4624144()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A46241EC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  *a2 = *(v3 + 48);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A46242BC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4624364@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  *a2 = *(v3 + 72);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A4624434()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A46244DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  *a2 = *(v3 + 96);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A46245AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415C4();

  return result;
}

void sub_1A4624674(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = a7;
  swift_allocObject();
  sub_1A462612C(a1, a2, a3, a4, a5, a6 & 1, v7);
}

double sub_1A4624708(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__changeDetailsRepository;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
    sub_1A52415C4();
  }

  return result;
}

double sub_1A4624838(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
    sub_1A52415C4();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1A46249B4(uint64_t a1)
{
  v1 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v15 = v3;
    swift_getKeyPath();
    v16 = v5;
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
    sub_1A52415D4();

    v6 = *(v5 + 16);
    v7 = *(v5 + 40);
    v8 = *(v5 + 64);
    v14 = *(v5 + 112);
    v13 = *(v5 + 120);
    v12 = *(v5 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager_logIdentifier);
    swift_getKeyPath();
    v16 = v5;
    v9 = v6;
    v10 = v7;
    v11 = v8;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A4624EC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__itemList;
  swift_beginAccess();
  return sub_1A4626AF8(v5 + v3, a1);
}

uint64_t sub_1A4624F90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__itemList;
  swift_beginAccess();
  return sub_1A4626AF8(v3 + v4, a2);
}

uint64_t sub_1A4625058(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4626AF8(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415C4();

  return sub_1A4626A9C(v6);
}

double sub_1A4625308()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  swift_beginAccess();

  return result;
}

double sub_1A46253C8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__changeDetailsRepository;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

void sub_1A46254BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t sub_1A4625534()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore39SharedLibrarySuggestionsItemListManagerP33_D2F94720D08141BFA5EE64498B9C6A727Mutator__itemList;
  sub_1A4626FA8(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A46255D8(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4626AF8(a1, v4);

  sub_1A52456B4();
}

void sub_1A46256A0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

double sub_1A4625744()
{
  if (([*(v0 + 40) hasAnySuggestions] & 1) == 0)
  {
    swift_allocObject();
    swift_weakInit();
    sub_1A4626BDC(&qword_1EB129488, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351B30);
    sub_1A5245F44();
  }

  return result;
}

void sub_1A46258DC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4625998(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C88);
  sub_1A52415D4();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id *sub_1A4625A90()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A4626A9C(v0 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__itemList);

  v1 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A4625B88()
{
  sub_1A4625A90();

  return swift_deallocClassInstance();
}

void sub_1A4625BE0()
{
  type metadata accessor for SharedLibrarySuggestionsItemListManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4626B7C();
  sub_1A52456D4();
}

void sub_1A4625C84(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1A4626BDC(&qword_1EB129488, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351B30);

  sub_1A5245F44();
}

id sub_1A4625D08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4625D20(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1A4626BDC(&qword_1EB129490, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351C08);

  sub_1A5245C54();
}

void sub_1A4625DA4(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4625E20(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  sub_1A4626AF8(a1, &v9 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4626AF8(v8, v5);

  sub_1A52456B4();
}

char *sub_1A4625F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB13F348, &type metadata for SharedLibrarySuggestionItem);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A4626040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1A3C4D548(0, &qword_1EB13F348, &type metadata for SharedLibrarySuggestionItem);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1A462612C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = a7;
  LODWORD(v10) = a6;
  v9 = *v7;
  sub_1A5245EC4();
}

void sub_1A46269A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__changeDetailsRepository;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1A4626A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4626A9C(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4626AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4626B7C()
{
  result = qword_1EB1786B0[0];
  if (!qword_1EB1786B0[0])
  {
    type metadata accessor for SharedLibrarySuggestionsItemListManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1786B0);
  }

  return result;
}

uint64_t sub_1A4626BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4626DE4(uint64_t a1)
{
  result = type metadata accessor for SharedLibrarySuggestionsItemList(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A4626F08(uint64_t a1, __n128 a2)
{
  sub_1A4626FA8(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A4626FA8(uint64_t a1)
{
  if (!qword_1EB128F50)
  {
    type metadata accessor for SharedLibrarySuggestionsItemListManager.Mutator(255);
    type metadata accessor for SharedLibrarySuggestionsItemList(255);
    sub_1A4626B7C();
    sub_1A52456C4();
  }
}

void sub_1A4627024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v6 = [v5 objectAtIndexPath_];
  v8[6] = &unk_1F19F6D78;
  v7 = swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectRetain();
  sub_1A42C08A0(v7, v8);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46271E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier);
  *v2 = v0[3];
  v2[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4627230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1A4627294()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EB176960 != -1)
    {
      swift_once();
    }

    v1 = sub_1A5246F24();
    __swift_project_value_buffer(v1, qword_1EB176968);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

double sub_1A4627608(uint64_t a1, char a2, const char *a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      if (qword_1EB176960 != -1)
      {
        swift_once();
      }

      v6 = sub_1A5246F24();
      __swift_project_value_buffer(v6, qword_1EB176968);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

double sub_1A4627964(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a2 & 1) != 0 && ([*(Strong + 40) hasAnySuggestions] & 1) == 0)
    {
      swift_allocObject();
      swift_weakInit();
      sub_1A4626BDC(&qword_1EB129488, type metadata accessor for SharedLibrarySuggestionsItemListManager, &unk_1A5351B30);
      sub_1A5245F44();
    }
  }

  return result;
}

uint64_t sub_1A4627B14()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4627B58()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1A4627C60(unint64_t a1, __n128 a2)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v5, a1, a2);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 isEligibleForSpatialGenerationIncludingStereo_])
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        v2 = &v14;
        sub_1A524E524();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v2 = v13;
        v9 = v14;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v10 = sub_1A4627E00(v9);
  v11 = (v2 + OBJC_IVAR___PXSpatialOverlayController_assetsToPrewarm);
  *v11 = v10;
  v11[1] = v12;

  sub_1A462843C();
}

uint64_t sub_1A4627E00(unint64_t a1)
{
  v5 = sub_1A3C6E9EC();
  v8 = sub_1A4629164(v20, a1, 0, 1, v5, v6);
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    v11 = sub_1A524E2B4();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v20[0];
  if (v20[0] != v11)
  {
    if ((v20[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v10)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          v1 = a1;
        }

        else
        {
          v1 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1A524E2B4() < 0)
        {
          goto LABEL_33;
        }

        v13 = sub_1A524E2B4();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= v12)
      {
        if ((a1 & 0xC000000000000001) != 0 && v12)
        {
          sub_1A3DB58C8(0, v7);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        __break(1u);
        swift_unknownObjectRelease();
        sub_1A4621CC0(v1, v18, v2, v3);
        v2 = v14;
        swift_unknownObjectRelease();
        v20[1] = v8;
        v20[2] = v2;
        if (v11 < v12)
        {
          break;
        }

        if (v10)
        {
          v16 = sub_1A524E2B4();
        }

        else
        {
          v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v16 < v11)
        {
          goto LABEL_31;
        }

        if (!v19)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (v12 < v11)
        {
          sub_1A3DB58C8(0, v15);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }
    }
  }

  sub_1A3D35BE4(a1, v9);
  return v8;
}

uint64_t sub_1A46281AC()
{
  if (!*(v0 + OBJC_IVAR___PXSpatialOverlayController____lazy_storage___overlayViewController))
  {
    ObjectType = swift_getObjectType();
    sub_1A462AC34(0, &qword_1EB12A180, sub_1A3D435C4, type metadata accessor for OverlayViewController);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OverlayViewController.__allocating_init(producer:recycler:)(sub_1A462A2CC, v4, sub_1A462A7B4, v5);
  }

  v1 = *(v0 + OBJC_IVAR___PXSpatialOverlayController____lazy_storage___overlayViewController);

  return v1;
}

void sub_1A462843C()
{
  v1 = OBJC_IVAR___PXSpatialOverlayController_contentSourcesByAsset;
  swift_beginAccess();
  if ((*(v0 + v1) & 0xC000000000000001) != 0)
  {
    sub_1A524E694();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4628C94(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1A524E6B4();

    if (v3)
    {
      type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource(0);
      swift_dynamicCast();
    }
  }

  else if (*(a2 + 16))
  {
    sub_1A4307020(a1);
    if (v4)
    {
    }
  }
}

uint64_t sub_1A4628D44(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXSpatialOverlayController_contentSourcesByAsset;
  swift_beginAccess();
  sub_1A4628C94(a1, *(v2 + v4));
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    v7 = *(v2 + OBJC_IVAR___PXSpatialOverlayController_currentPresentation);
    if (v7)
    {
      v8 = *(*(v7 + 16) + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = a1;
    v11 = v10;
    if (v8 == a1)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    if (v9 && v10)
    {
      v12 = [v9 isContentEqualTo:v10];
      if (!v12)
      {
        v12 = [v11 isContentEqualTo:v9];
      }

      swift_unknownObjectRelease();
      if (v12 == 2)
      {
        return v6;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_endAccess();
  }

  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource(0);
  v13 = a1;
  v6 = sub_1A43015D8(v13);
  swift_beginAccess();
  v14 = *(v2 + v4);
  if ((v14 & 0xC000000000000001) == 0)
  {

    goto LABEL_23;
  }

  if (v14 < 0)
  {
    v15 = *(v2 + v4);
  }

  else
  {
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1A524E2B4();
  if (!__OFADD__(result, 1))
  {
    *(v2 + v4) = sub_1A4629780(v15, result + 1);
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + v4);
    sub_1A4629BF8(v6, v13, isUniquelyReferenced_nonNull_native);
    *(v2 + v4) = v18;
    swift_endAccess();
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1A4628F3C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CAF38);
  __swift_project_value_buffer(v0, qword_1EB1CAF38);
  sub_1A5246EF4();
}

void *sub_1A46290C8(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (v2)
    {
LABEL_3:
      sub_1A444496C(v2, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A4629164(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
{
  v9 = a2 >> 62;
  if (a2 >> 62)
  {
    v21 = a3;
    v22 = a4;
    v10 = sub_1A524E2B4();
    a4 = v22;
    a3 = v21;
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x1A5901C30](v10, a6);
  if (v12 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14 <= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 4)
  {
    if (v9)
    {
      if (sub_1A524E2B4() >= 2)
      {
        v17 = sub_1A4629EBC(a2);
        goto LABEL_21;
      }

      v16 = sub_1A524E2B4();
    }

    else
    {
      v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= 2)
      {
        v17 = sub_1A4629294((a2 & 0xFFFFFFFFFFFFFF8) + 32, v16, v13);
LABEL_21:
        v20 = v17;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v16;
    return result;
  }

  v18 = MEMORY[0x1A5901C40]();
  sub_1A4629530(&v23, a2, (v18 + 16), v18 + 32);
  result = v18;
  v20 = v23;
LABEL_22:
  *a1 = v20;
  return result;
}

uint64_t sub_1A4629294(uint64_t a1, uint64_t a2, __n128 a3)
{
  v9 = sub_1A3D35BE4(MEMORY[0x1E69E7CC0], a3);
  result = sub_1A524E554();
  if (!a2)
  {
    v6 = 0;
LABEL_9:

    return v6;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8 * v6);
      if (sub_1A462938C(v7, v9))
      {
        break;
      }

      ++v6;
      v8 = v7;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();

      if (a2 == v6)
      {
        v6 = a2;
        goto LABEL_9;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

BOOL sub_1A462938C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    sub_1A3DB58C8(0, a2);
    v6 = *v3++;
    v7 = v6;
    v8 = sub_1A524DBF4();
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1A4629408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_1A524DBE4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    v9 = sub_1A5246864();
    if ((v8 & 1) == 0)
    {
      sub_1A3DB58C8(0, v8);
      do
      {
        v10 = *(a2 + 8 * v9);
        v11 = sub_1A524DBF4();

        if (v11)
        {
          break;
        }

        sub_1A5246884();
        v9 = sub_1A5246864();
      }

      while ((v12 & 1) == 0);
    }

    return v9;
  }

  return result;
}

uint64_t sub_1A4629530(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v5 = sub_1A462A938(a2, sub_1A462AC98);
  }

  else
  {
    v5 = sub_1A46295B0((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4);
  }

  *a1 = v6;
  return v5 & 1;
}

uint64_t sub_1A46295B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v18 = i + 1;
      v7 = *(v5 + 8 * i);
      result = sub_1A524DBE4();
      if (__OFSUB__(1 << *v4, 1))
      {
        goto LABEL_16;
      }

      sub_1A5246834();

      v8 = sub_1A5246864();
      if ((v9 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1A5246874();
      v4 = a3;
      if (v18 == a2)
      {
        return 1;
      }
    }

    v10 = v8;
    sub_1A3DB58C8(0, v9);
    v11 = v10;
    while (1)
    {
      v12 = *(v5 + 8 * i);
      v13 = *(v5 + 8 * v11);
      v14 = v12;
      LOBYTE(v12) = sub_1A524DBF4();

      if (v12)
      {
        return 0;
      }

      sub_1A5246884();
      v11 = sub_1A5246864();
      if (v15)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1A4629780(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A462A220(0, a2);
    v2 = sub_1A524E784();
    v20 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v5 = v3;
      sub_1A3DB58C8(0, v4);
      v6 = v5;
      do
      {
        v18 = v6;
        swift_dynamicCast();
        type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource(0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1A4629994(v13 + 1, 1);
        }

        v2 = v20;
        result = sub_1A524DBE4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v6 = sub_1A524E6C4();
      }

      while (v6);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1A4629994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A462A220(0, a2);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1A524DBE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4629BF8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A4307020(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A4629994(v13, a3 & 1);
      v8 = sub_1A4307020(a2);
      if ((v14 & 1) != (v9 & 1))
      {
LABEL_18:
        sub_1A3DB58C8(0, v9);
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1A4629D64(v8, v9);
      v8 = v16;
    }
  }

  v17 = *v4;
  if (v14)
  {
    *(v17[7] + 8 * v8) = a1;

    return;
  }

  v17[(v8 >> 6) + 8] |= 1 << v8;
  v9 = a2;
  *(v17[6] + 8 * v8) = a2;
  *(v17[7] + 8 * v8) = a1;
  v18 = v17[2];
  v12 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17[2] = v19;

  v20 = a2;
}

void sub_1A4629D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A462A220(0, a2);
  v4 = *v2;
  v5 = sub_1A524E764();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_1A4629EBC(int64_t a1)
{
  v1 = sub_1A4629F04(a1);
  v2 = v1[2];

  return sub_1A4629294((v1 + 4), v2, v3);
}

void *sub_1A4629F04(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1A46290C8(a1, v6);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1A4629FC0(void *a1)
{
  v2 = sub_1A5246B54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-1] - v8;
  if ([a1 mediaType] == 1 && (v10 = sub_1A5241C44(), v16[3] = v10, v16[4] = sub_1A462A8F0(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]), boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16), (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD58], v10), LOBYTE(v10) = sub_1A5241704(), __swift_destroy_boxed_opaque_existential_0(v16), (v10 & 1) != 0))
  {
    sub_1A5246B94();
    (*(v3 + 104))(v5, *MEMORY[0x1E69C1B88], v2);
    sub_1A462A8F0(&qword_1EB12EDD8, MEMORY[0x1E69C1B90], MEMORY[0x1E69C1B98]);
    v12 = sub_1A524C534();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v9, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1A462A220(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB13F3F0)
  {
    sub_1A3DB58C8(255, a2);
    type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource(255);
    sub_1A462A8F0(&qword_1EB1205D0, sub_1A3DB58C8, MEMORY[0x1E69E81B8]);
    v2 = sub_1A524E7A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13F3F0);
    }
  }
}

id sub_1A462A2CC(uint64_t *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v2 = Strong;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v2[OBJC_IVAR___PXSpatialOverlayController_currentPresentation];
    if (!v5)
    {
      swift_unknownObjectRetain();
      goto LABEL_22;
    }

    v6 = *(v5[2] + 16);
    swift_unknownObjectRetain();

    v7 = v6;
    v8 = v4;
    v9 = v8;
    if (v6 == v4)
    {
    }

    else
    {
      if (!v7)
      {

LABEL_21:

LABEL_22:
        if (qword_1EB1CAF30 != -1)
        {
          swift_once();
        }

        v22 = sub_1A5246F24();
        __swift_project_value_buffer(v22, qword_1EB1CAF38);
        swift_unknownObjectRetain();
        v23 = sub_1A5246F04();
        v24 = sub_1A524D224();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v25 = 136315138;
          sub_1A3D435C4();
          swift_unknownObjectRetain();
          v26 = sub_1A524C714();
          sub_1A3C2EF94(v26, v27, &v29);
        }

        v28 = sub_1A4628D44(v4);
        sub_1A462A85C(0);
        v29 = v28;

        sub_1A455556C(&v29);
      }

      v10 = [v7 isContentEqualTo:v8];
      if (!v10)
      {
        v10 = [v9 isContentEqualTo:v7];
      }

      if (v10 != 2)
      {
        goto LABEL_21;
      }
    }

    if (qword_1EB1CAF30 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB1CAF38);
    swift_unknownObjectRetain();
    v14 = sub_1A5246F04();
    v15 = sub_1A524D224();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v16 = 136315138;
      sub_1A3D435C4();
      swift_unknownObjectRetain();
      v17 = sub_1A524C714();
      sub_1A3C2EF94(v17, v18, &v29);
    }

    v19 = *(*v5[2] + 392);

    v19(v20);

    v12 = (*(*v5 + 200))(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  return v12;
}

void sub_1A462A7B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___PXSpatialOverlayController_currentPresentation);
    if (v4)
    {
      v5 = *(*v4 + 216);

      v5(a1);
    }
  }
}

void sub_1A462A85C(uint64_t a1)
{
  if (!qword_1EB13F400)
  {
    v2 = type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource(255);
    v3 = sub_1A462A8F0(&qword_1EB13F408, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource, &unk_1A532F170);
    v5 = type metadata accessor for SpatialPresentation(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13F400);
    }
  }
}

uint64_t sub_1A462A8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A462A938(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t, __n128))
{
  v4 = sub_1A4629F04(a1);
  v5 = v4[2];

  (a2)(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void sub_1A462A9B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v5 = v3;
  v6 = a2;
  v7 = a1;
  v31 = a3 >> 1;
  while (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    v12 = *(v9 + 16);
    if (*v5)
    {
      v13 = v8;

      sub_1A4629408(v13, v11, v12, (v10 + 16), v10 + 32);
      v15 = v14;

      if ((v15 & 1) == 0)
      {

        goto LABEL_5;
      }
    }

    else
    {
      v16 = v8;
      if (v12)
      {
        v18 = v16;
        sub_1A3DB58C8(0, v17);
        while (1)
        {
          v19 = *v11;
          v20 = sub_1A524DBF4();

          if (v20)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            v4 = v31;
            v7 = a1;
            goto LABEL_15;
          }
        }

        v4 = v31;
        v7 = a1;
        goto LABEL_5;
      }
    }

LABEL_15:
    v21 = v8;
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    v22 = v5[1];
    v23 = *(v22 + 16);
    if (!v10)
    {
      if (v23 > 0xF)
      {
        v24 = 0;
LABEL_22:
        v25 = MEMORY[0x1A5901C30](v23);
        if (v24 <= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        v27 = sub_1A3FB60D4(v22, v26, 0, v24);

        *v5 = v27;
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    swift_beginAccess();
    if (MEMORY[0x1A5901C00](*(v10 + 16) & 0x3FLL) >= v23)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v29 = *v5;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v29)
        {
          goto LABEL_35;
        }

        v30 = sub_1A52468B4();

        *v5 = v30;
        v29 = v30;
      }

      if (!v29)
      {
        goto LABEL_34;
      }

      sub_1A5246854();
LABEL_31:

      goto LABEL_5;
    }

    v24 = *(v10 + 24) & 0x3FLL;
    if (v23 > 0xF || v24)
    {
      goto LABEL_22;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1A462AC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A462AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A46295B0(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

void UIViewController.firstDescendant(where:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1A462BA50;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1A3D9C868;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_228;
  v7 = _Block_copy(aBlock);

  [v2 px:0 enumerateDescendantViewControllersWithOptions:v7 usingBlock:?];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1A462AE3C(void *a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4, void **a5)
{
  if (a3())
  {
    v8 = *a5;
    *a5 = a1;
    v9 = a1;

    *a2 = 1;
  }
}

void UIViewController.firstDescendant<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8[2] = a2;
  v10 = 0;
  v4 = swift_allocObject();
  v4[2] = sub_1A462BA5C;
  v4[3] = v8;
  v4[4] = &v10;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A462BD4C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1A42A5D18;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_14_4;
  v6 = _Block_copy(aBlock);

  [v3 px:0 enumerateDescendantViewControllersWithOptions:v6 usingBlock:?];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v7 = v10;

    if (v7)
    {
      if (!swift_dynamicCastUnknownClass())
      {
      }
    }
  }
}

void UIViewController.firstAncestor(where:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 parentViewController];
  if (v6 || (v6 = [v3 presentingViewController]) != 0)
  {
    v7 = v6;
    if ((a1() & 1) == 0)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;
      v10[4] = sub_1A462BA80;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1A462B1B0;
      v10[3] = &block_descriptor_20_2;
      v9 = _Block_copy(v10);

      [v7 firstAncestorWithWhere_];

      _Block_release(v9);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1A462B1B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_1A462B1F4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  v5 = a1;
  sub_1A462BB78(v5, v4);
  v7 = v6;
  _Block_release(v4);
  _Block_release(v4);

  return v7;
}

id UIViewController.platformView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void UIViewController.mainScrollView.getter()
{
  v1 = v0;
  if (![v0 contentScrollViewForEdge_])
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v3 = v2;
    UIView.firstDescendant(where:)(sub_1A462B72C, 0);
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = v5;
        [v7 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [v7 superview];

        if (v17)
        {
          [v3 convertRect:v17 fromCoordinateSpace:{v10, v12, v14, v16}];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;

          [v3 bounds];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          [v3 safeAreaInsets];
          v36 = UIEdgeInsetsInsetRect(v27, v29, v31, v33, v34, v35);
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v45.origin.x = v19;
          v45.origin.y = v21;
          v45.size.width = v23;
          v45.size.height = v25;
          v46.origin.x = v36;
          v46.origin.y = v38;
          v46.size.width = v40;
          v46.size.height = v42;
          CGRectIntersection(v45, v46);
          PXRectArea();
        }

        goto LABEL_11;
      }
    }

    sub_1A462BAAC();
    swift_allocError();
    *v43 = v1;
    *(v43 + 8) = 0;
    v44 = v1;
    swift_willThrow();
  }
}

void UIView.firstDescendant<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  UIView.firstDescendant(where:)(sub_1A462BD50, v4);
  if (v2)
  {
    v3 = v2;
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }
}

void UIView.firstDescendant(where:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1A462BB00;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1A42A5D18;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_29_5;
  v7 = _Block_copy(aBlock);

  [v2 px:v7 enumerateDescendantSubviewsUsingBlock:?];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t UIView.ancestors<A>(ofType:maxCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = MEMORY[0x1E69E7CC0];
  v7 = v4;
  v8 = 0;
  while (1)
  {
    v11 = v7;
    v7 = [v7 superview];

    if (!v7)
    {
      break;
    }

    if ((a3 & 1) == 0 && v8 < a2)
    {

      break;
    }

    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      v12 = v7;
      MEMORY[0x1A5907D70]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return result;
    }
  }

  sub_1A441CDE8();
  v13 = sub_1A524E804();

  result = v13;
  if (!v13)
  {
    return sub_1A524CAB4();
  }

  return result;
}

void UIView.ancestors(maxCount:where:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v13 = MEMORY[0x1E69E7CC0];
  v7 = v3;
  v8 = 0;
  while (1)
  {
    v10 = [v7 superview];

    if (!v10)
    {
      break;
    }

    if ((a2 & 1) == 0 && v8 < a1)
    {

      return;
    }

    v7 = v10;
    v11 = a3();

    if (v11)
    {
      v12 = v7;
      MEMORY[0x1A5907D70]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return;
    }
  }
}

double *UICoordinateSpace.convertOptional(_:to:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  v8 = result[3];
  v9 = *(result + 32);
  if ((v9 & 1) == 0)
  {
    result = [v3 convertRect:a2 toCoordinateSpace:{v5, v6, v7, v8}];
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9 & 1;
  return result;
}

unint64_t sub_1A462BAAC()
{
  result = qword_1EB1CAF50[0];
  if (!qword_1EB1CAF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CAF50);
  }

  return result;
}

void sub_1A462BB00(void *a1, _BYTE *a2)
{
  v5 = *(v2 + 32);
  if ((*(v2 + 16))())
  {
    v6 = *v5;
    *v5 = a1;
    v7 = a1;

    *a2 = 1;
  }
}

void sub_1A462BB78(void *a1, uint64_t a2)
{
  v9[2] = a2;
  v4 = [a1 parentViewController];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [a1 presentingViewController];
    if (!v5)
    {
      return;
    }
  }

  if (!(*(a2 + 16))(a2, v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A462BD18;
    *(v6 + 24) = v9;
    aBlock[4] = sub_1A462BD60;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A462B1B0;
    aBlock[3] = &block_descriptor_37_4;
    v7 = _Block_copy(aBlock);

    [v5 firstAncestorWithWhere_];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t type metadata accessor for GenerativeStoryInternalMenuView(uint64_t a1)
{
  result = qword_1EB1CB070;
  if (!qword_1EB1CB070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A462BDB0@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  sub_1A462F714(0, &qword_1EB13F418, sub_1A462C9D4, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v89 = v71 - v3;
  v4 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v79 = v5;
  v80 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CC50(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = (v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A462CC14(0);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CBD8(0);
  v84 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v75 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CAFC(0, v11);
  v86 = v13;
  v78 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v90 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462C9D4(0, v14);
  v87 = v16;
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5242D14();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v71 - v23;
  v76 = v4;
  v83 = *(v4 + 20);
  sub_1A3D61808(v71 - v23);
  v25 = *MEMORY[0x1E69C2200];
  v26 = *(v19 + 104);
  v26(v21, v25, v18);
  v71[1] = sub_1A5242D04();
  v27 = *(v19 + 8);
  v27(v21, v18);
  v27(v24, v18);
  sub_1A3D61808(v24);
  v26(v21, v25, v18);
  sub_1A5242D04();
  v27(v21, v18);
  v27(v24, v18);
  v28 = sub_1A462D6D8()[2];

  if (v28)
  {
    v29 = v84;
    v30 = sub_1A5249574();
    v31 = v72;
    *v72 = v30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    sub_1A462FA54(0, &qword_1EB13F508, sub_1A462CCE4, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A462DA54(v1, v31 + *(v32 + 44));
    v33 = sub_1A5248894();
    sub_1A462F1B8(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    v35 = sub_1A524A0B4();
    *(inited + 32) = v35;
    v36 = sub_1A524A074();
    *(inited + 33) = v36;
    v37 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v35)
    {
      v37 = sub_1A524A0A4();
    }

    sub_1A524A0A4();
    if (sub_1A524A0A4() != v36)
    {
      v37 = sub_1A524A0A4();
    }

    v38 = v74;
    sub_1A462FE40(v31, v74, sub_1A462CC50);
    v39 = v38 + *(v73 + 36);
    *v39 = v33;
    *(v39 + 8) = v37;
    sub_1A524BC04();
    sub_1A5248AD4();
    v40 = v75;
    sub_1A462FE40(v38, v75, sub_1A462CC14);
    v41 = (v40 + *(v29 + 36));
    v42 = v100;
    v43 = v102;
    v44 = v103;
    v41[4] = v101;
    v41[5] = v43;
    v41[6] = v44;
    v45 = v98;
    *v41 = v97;
    v41[1] = v45;
    v41[2] = v99;
    v41[3] = v42;
    sub_1A4497E7C();
    sub_1A524BD44();
    sub_1A524BCD4();

    MEMORY[0x1EEE9AC00](v46);
    sub_1A462F714(0, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v48 = v47;
    v49 = sub_1A462D424();
    v50 = sub_1A462D554();
    sub_1A524B184();

    sub_1A462FFD4(v40, sub_1A462CBD8);
    v51 = v1 + *(v76 + 32);
    v52 = *v51;
    v53 = *(v51 + 8);
    v95 = v52;
    v96 = v53;
    sub_1A462F1B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v54 = v80;
    sub_1A4630034(v1, v80, type metadata accessor for GenerativeStoryInternalMenuView);
    v55 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v56 = swift_allocObject();
    sub_1A462FE40(v54, v56 + v55, type metadata accessor for GenerativeStoryInternalMenuView);
    v91 = v29;
    v92 = v48;
    v93 = v49;
    v94 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v70 = sub_1A462D684();
    v58 = v81;
    v59 = v86;
    v60 = v90;
    sub_1A524AFF4();

    (*(v78 + 8))(v60, v59);
    v61 = v82;
    v62 = v87;
    (*(v82 + 16))(v89, v58, v87);
    swift_storeEnumTagMultiPayload();
    v91 = v59;
    v92 = &type metadata for GenerativeStoryInternalSuggestionListView;
    v93 = OpaqueTypeConformance2;
    v94 = v70;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v61 + 8))(v58, v62);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v65 = v64;
    v66 = sub_1A462D424();
    v67 = sub_1A462D554();
    *&v97 = v84;
    *(&v97 + 1) = v65;
    *&v98 = v66;
    *(&v98 + 1) = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = sub_1A462D684();
    *&v97 = v86;
    *(&v97 + 1) = &type metadata for GenerativeStoryInternalSuggestionListView;
    *&v98 = v68;
    *(&v98 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    return sub_1A5249744();
  }
}

void sub_1A462C9D4(uint64_t a1, double a2)
{
  if (!qword_1EB13F420)
  {
    sub_1A462CAFC(255, a2);
    sub_1A462CBD8(255);
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D424();
    sub_1A462D554();
    swift_getOpaqueTypeConformance2();
    sub_1A462D684();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F420);
    }
  }
}

void sub_1A462CAFC(uint64_t a1, double a2)
{
  if (!qword_1EB13F428)
  {
    sub_1A462CBD8(255);
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D424();
    sub_1A462D554();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F428);
    }
  }
}

void sub_1A462CC50(uint64_t a1)
{
  if (!qword_1EB13F440)
  {
    sub_1A462CCE4(255);
    sub_1A462D63C(&qword_1EB13F4C0, sub_1A462CCE4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F440);
    }
  }
}

void sub_1A462CD18(uint64_t a1)
{
  if (!qword_1EB13F450)
  {
    sub_1A462D200(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A462CDC4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13F450);
    }
  }
}

void sub_1A462CE00(uint64_t a1)
{
  if (!qword_1EB13F460)
  {
    sub_1A462CE94(255);
    sub_1A462D63C(&qword_1EB13F4B8, sub_1A462CE94, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F460);
    }
  }
}

void sub_1A462CE94(uint64_t a1)
{
  if (!qword_1EB13F468)
  {
    sub_1A462D194(255, &qword_1EB13F470, sub_1A462CF10, MEMORY[0x1E6981840]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F468);
    }
  }
}

void sub_1A462CF10(uint64_t a1)
{
  if (!qword_1EB13F478)
  {
    sub_1A462CF9C(255);
    sub_1A462D030(255);
    sub_1A462D2C8();
    sub_1A462D378();
    v1 = sub_1A524A2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F478);
    }
  }
}

void sub_1A462CF9C(uint64_t a1)
{
  if (!qword_1EB13F480)
  {
    sub_1A3E429B4();
    sub_1A462D200(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F480);
    }
  }
}

void sub_1A462D030(uint64_t a1)
{
  if (!qword_1EB13F488)
  {
    sub_1A462D110(255, &qword_1EB13F490, MEMORY[0x1E69E62F8]);
    sub_1A462D200(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A462D254();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F488);
    }
  }
}

void sub_1A462D110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A462D194(255, &qword_1EB13F498, sub_1A3C3637C, MEMORY[0x1E69E6158]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A462D194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A462D200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A462D254()
{
  result = qword_1EB13F4A0;
  if (!qword_1EB13F4A0)
  {
    sub_1A462D110(255, &qword_1EB13F490, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4A0);
  }

  return result;
}

unint64_t sub_1A462D2C8()
{
  result = qword_1EB13F4A8;
  if (!qword_1EB13F4A8)
  {
    sub_1A462CF9C(255);
    sub_1A462D63C(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A3F33024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4A8);
  }

  return result;
}

unint64_t sub_1A462D378()
{
  result = qword_1EB13F4B0;
  if (!qword_1EB13F4B0)
  {
    sub_1A462D030(255);
    sub_1A3D6E520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4B0);
  }

  return result;
}

unint64_t sub_1A462D424()
{
  result = qword_1EB13F4D8;
  if (!qword_1EB13F4D8)
  {
    sub_1A462CBD8(255);
    sub_1A462D4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4D8);
  }

  return result;
}

unint64_t sub_1A462D4A4()
{
  result = qword_1EB13F4E0;
  if (!qword_1EB13F4E0)
  {
    sub_1A462CC14(255);
    sub_1A462D63C(&qword_1EB13F4E8, sub_1A462CC50, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4E0);
  }

  return result;
}

unint64_t sub_1A462D554()
{
  result = qword_1EB13F4F0;
  if (!qword_1EB13F4F0)
  {
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D63C(&qword_1EB13F4F8, sub_1A462D3F0, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4F0);
  }

  return result;
}

uint64_t sub_1A462D63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A462D684()
{
  result = qword_1EB13F500;
  if (!qword_1EB13F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F500);
  }

  return result;
}

void *sub_1A462D6D8()
{
  v1 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata sharedInstance];
  v6 = [v5 suggestionToolEnabled];

  if (v6)
  {
    sub_1A4630034(v0, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryInternalMenuView);
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_1A462FE40(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GenerativeStoryInternalMenuView);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1A462FD34;
    *(v9 + 24) = v8;
    v10 = sub_1A462FBD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1A462FBD8((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v13 = &v10[4 * v12];
    v13[4] = 0x6C6C61206E7552;
    v13[5] = 0xE700000000000000;
    v13[6] = sub_1A3DDBE10;
    v13[7] = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = [ObjCClassFromMetadata sharedInstance];
  v15 = [v14 displayPromptListButton];

  if (v15)
  {
    sub_1A4630034(v0, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryInternalMenuView);
    v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v17 = swift_allocObject();
    sub_1A462FE40(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenerativeStoryInternalMenuView);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1A462FBC0;
    *(v18 + 24) = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A462FBD8(0, v10[2] + 1, 1, v10);
    }

    v20 = v10[2];
    v19 = v10[3];
    if (v20 >= v19 >> 1)
    {
      v10 = sub_1A462FBD8((v19 > 1), v20 + 1, 1, v10);
    }

    v10[2] = v20 + 1;
    v21 = &v10[4 * v20];
    v21[4] = 0x6974736567677553;
    v21[5] = 0xEF7473694C206E6FLL;
    v21[6] = sub_1A3C7146C;
    v21[7] = v18;
  }

  return v10;
}

uint64_t sub_1A462DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A462CF10(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  sub_1A462CE00(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CDC4(0);
  v55 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v50 - v22;
  sub_1A524BC74();
  sub_1A52481F4();
  v53 = v60;
  v52 = v62;
  v51 = v64;
  v50 = v65;
  v68 = 1;
  v67 = v61;
  v66 = v63;
  *v16 = sub_1A5249314();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1A462FA54(0, &qword_1EB13F520, sub_1A462CE94, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v24 = &v16[*(v23 + 44)];
  v58 = a1;
  sub_1A462CF9C(0);
  sub_1A462D030(0);
  sub_1A462D2C8();
  sub_1A462D378();
  sub_1A524A2E4();
  v59 = 1;
  v25 = *(v8 + 16);
  v25(v10, v13, v7);
  v26 = v59;
  *v24 = 0;
  v24[8] = v26;
  sub_1A462D194(0, &qword_1EB13F470, sub_1A462CF10, MEMORY[0x1E6981840]);
  v25(&v24[*(v27 + 48)], v10, v7);
  v28 = *(v8 + 8);
  v28(v13, v7);
  v28(v10, v7);
  LOBYTE(v10) = sub_1A524A0B4();
  v29 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v10)
  {
    v29 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v54;
  sub_1A462FE40(v16, v54, sub_1A462CE00);
  v39 = v56;
  v40 = v38 + *(v55 + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  sub_1A462FE40(v38, v39, sub_1A462CDC4);
  v41 = v68;
  v42 = v67;
  v43 = v66;
  v44 = v57;
  sub_1A4630034(v39, v57, sub_1A462CDC4);
  *a2 = 0;
  *(a2 + 8) = v41;
  *(a2 + 16) = v53;
  *(a2 + 24) = v42;
  *(a2 + 32) = v52;
  *(a2 + 40) = v43;
  v45 = v50;
  *(a2 + 48) = v51;
  *(a2 + 56) = v45;
  sub_1A462CD18(0);
  v47 = v46;
  sub_1A4630034(v44, a2 + *(v46 + 48), sub_1A462CDC4);
  v48 = a2 + *(v47 + 64);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_1A462FFD4(v39, sub_1A462CDC4);
  return sub_1A462FFD4(v44, sub_1A462CDC4);
}

uint64_t sub_1A462DF78(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = sub_1A3D6069C;
  v6[5] = v5;
  sub_1A3D5F9DC();
  swift_bridgeObjectRetain_n();

  return sub_1A524B754();
}

void sub_1A462E054(uint64_t a1@<X8>)
{
  sub_1A5249434();
  sub_1A524B604();
  v3 = sub_1A524B434();
  sub_1A462CF9C(0);
  *(a1 + *(v4 + 36)) = v3;
}

void *sub_1A462E0C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-v11];
  result = (*(**(a1 + *(v3 + 28)) + 1624))(v10);
  if (result)
  {
    v27 = *(result + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_internalSuggestionViewModel);

    v14 = (a1 + *(v3 + 32));
    v15 = *v14;
    v16 = *(v14 + 1);
    v30 = v15;
    v31 = v16;
    sub_1A462F1B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v26 = *(&v32 + 1);
    v17 = v32;
    v25 = v33;
    sub_1A3D61808(v12);
    (*(v6 + 104))(v8, *MEMORY[0x1E69C2200], v5);
    v18 = sub_1A5242D04();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v12, v5);
    sub_1A4630034(a1, &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GenerativeStoryInternalMenuView);
    v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v21 = swift_allocObject();
    sub_1A462FE40(&v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for GenerativeStoryInternalMenuView);
    result = sub_1A47FF5F8(v27, v17, v26, v25, v18 & 1, sub_1A462F9E4, v21, &v32);
    v22 = v33;
    v23 = v29;
    *v29 = v32;
    v23[1] = v22;
    v23[2] = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A462E410(uint64_t a1, uint64_t a2)
{
  sub_1A43C7D38(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4630034(a1, v9, sub_1A4499C00);
  v10 = type metadata accessor for GenerativeStorySuggestion(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    v11 = sub_1A4499C00;
    v12 = v9;
  }

  else
  {
    v13 = v9[2];
    sub_1A462FFD4(v9, type metadata accessor for GenerativeStorySuggestion);
    v14 = *(a2 + *(type metadata accessor for GenerativeStoryInternalMenuView(0) + 28));
    (*(*v14 + 2136))(v13);
    v15 = [v13 string];
    v16 = sub_1A524C674();
    v18 = v17;

    v19 = sub_1A5244854();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    (*(*v14 + 1896))(v16, v18, v6);

    v11 = sub_1A43C7D38;
    v12 = v6;
  }

  sub_1A462FFD4(v12, v11);
  v20 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  return (*(**(a2 + *(v20 + 28)) + 592))(0);
}

void sub_1A462E6E4(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462FDC0(a1, v8, &qword_1EB128A80, sub_1A3D63A58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A462FE40(v8, v11, sub_1A3D63A58);
  }

  else
  {
    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A462FFD4(v11, sub_1A3D63A58);
}

double sub_1A462EA08(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A4630034(a1, v5, type metadata accessor for GenerativeStoryInternalMenuView);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1A462FE40(v5, v12 + v11, type metadata accessor for GenerativeStoryInternalMenuView);
  sub_1A3D4D930(0, 0, v8, &unk_1A5352108, v12);

  return result;
}

uint64_t sub_1A462EBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A462EC78, v6, v5);
}

uint64_t sub_1A462EC78()
{
  v1 = v0[6];
  v2 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v0[10] = v2;
  result = (*(**(v1 + *(v2 + 28)) + 1624))();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_internalSuggestionViewModel);
    v0[11] = v4;

    v6 = (*(*v4 + 168) + **(*v4 + 168));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1A462EE10;

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A462EE10()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A462EF54, v3, v2);
}

uint64_t sub_1A462EF54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = (v2 + *(v1 + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v5;
  sub_1A462F1B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  v6 = *(v0 + 104);
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 105) = (v6 & 1) == 0;
  sub_1A524B6B4();

  v7 = *(v0 + 8);

  return v7();
}

void *sub_1A462F050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  v13 = MEMORY[0x1E697DCB8];
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v15 = v14[5];
  *(a7 + v15) = swift_getKeyPath();
  sub_1A462FEA8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v13);
  swift_storeEnumTagMultiPayload();
  *(a7 + v14[6]) = a1;
  *(a7 + v14[7]) = a2;
  v16 = a7 + v14[8];
  result = sub_1A524B694();
  *v16 = v19;
  *(v16 + 1) = v20;
  v18 = a7 + v14[9];
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = a6;
  return result;
}

void sub_1A462F1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A462F208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = (v5 + *(type metadata accessor for GenerativeStoryInternalMenuView(0) + 36));
  v7 = *v6;
  v8 = v6[1];
  LOBYTE(v6) = *(v6 + 16);
  v13 = v7;
  v14 = v8;
  v15 = v6;
  sub_1A462F1B8(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v12);
  if (v12)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  sub_1A462D3F0(0);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_1A462F714(0, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
  *(a2 + *(v11 + 36)) = v9;
}

void *sub_1A462F338@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for GenerativeStoryInternalMenuView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A462E0C4(v4, a1);
}

void sub_1A462F3EC(uint64_t a1)
{
  sub_1A462FEA8(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A462FEA8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GenerativeStoryCreationViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_1A462F1B8(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A462F1B8(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A462F588()
{
  result = qword_1EB13F510;
  if (!qword_1EB13F510)
  {
    sub_1A462F714(255, &qword_1EB13F518, sub_1A462C9D4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A462CAFC(255, v1);
    sub_1A462CBD8(255);
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D424();
    sub_1A462D554();
    swift_getOpaqueTypeConformance2();
    sub_1A462D684();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F510);
  }

  return result;
}

void sub_1A462F714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t objectdestroyTm_67()
{
  v1 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v4))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_1A462FEA8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A462F9E4(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeStoryInternalMenuView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A462E410(a1, v4);
}

void sub_1A462FA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A462FAC0()
{
  sub_1A462D6D8();
  swift_getKeyPath();
  sub_1A462D110(0, &qword_1EB13F490, MEMORY[0x1E69E62F8]);
  sub_1A462D200(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A462D254();
  sub_1A3D6E520();
  return sub_1A524B9B4();
}

void *sub_1A462FBD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A462D110(0, &qword_1EB13F528, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A462D194(0, &qword_1EB13F498, sub_1A3C3637C, MEMORY[0x1E69E6158]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A462FD4C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GenerativeStoryInternalMenuView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A462FDC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A462FEA8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A462FE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A462FEA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A462FF0C()
{
  v2 = *(type metadata accessor for GenerativeStoryInternalMenuView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A462EBE0(v4, v5, v6, v0 + v3);
}

uint64_t sub_1A462FFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4630034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t transformSupportedAttributes(for:)()
{
  sub_1A4630258();
  sub_1A4114188();
  return sub_1A5240784();
}

void sub_1A4630114()
{
  sub_1A46302AC(0, &qword_1EB13F538, sub_1A4630258, MEMORY[0x1E69DBDB0]);
  sub_1A5240794();
  if (v2)
  {
    v0 = v2;
    v2 = sub_1A524B284();
    sub_1A3EE4384();
    sub_1A52407A4();
  }

  sub_1A46302AC(0, &qword_1EB13F540, sub_1A4114188, MEMORY[0x1E69DBDF0]);
  sub_1A5240794();
  if (v2)
  {
    v1 = v2;
    sub_1A524A284();
    sub_1A3EE43D8();
    sub_1A52407A4();
  }
}

unint64_t sub_1A4630258()
{
  result = qword_1EB13F530;
  if (!qword_1EB13F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F530);
  }

  return result;
}

void sub_1A46302AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1A52407B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

PhotosUICore::PhotosLaunchConfiguration __swiftcall PhotosLaunchConfiguration.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1A524C634();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (qword_1EB15B750 != -1)
  {
    swift_once();
  }

  v5 = sub_1A5246F24();
  __swift_project_value_buffer(v5, qword_1EB15B758);
  sub_1A3EBECA4(v29, &v27);
  v6 = sub_1A5246F04();
  v7 = sub_1A524D264();
  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x1E69E7CA0];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v10 = 136315138;
    sub_1A3EBECA4(&v27, &v24);
    sub_1A3C37060(0, &qword_1EB126130, v9 + 8, MEMORY[0x1E69E6720]);
    v11 = sub_1A524C714();
    v13 = v12;
    sub_1A3C35B00(&v27);
    sub_1A3C2EF94(v11, v13, &v26);
  }

  sub_1A3C35B00(&v27);
  sub_1A3EBECA4(v29, &v27);
  if (!*(&v28 + 1))
  {
    sub_1A3C35B00(&v27);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_1A3C7E8B0(0, v14);
    v16 = [swift_getObjCClassFromMetadata() sharedInstance];
    if ([v16 enableCuratedLibrary])
    {
      v17 = [v16 enableTabs] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v16 enableShelves];

    v19.i32[1] = -1;
    v19.i16[0] = v17;
    v19.i16[1] = v18;
    v20 = vand_s8(v19, 0x1000100010001);
    goto LABEL_19;
  }

  if ((v24 != 0x6B6E616C62 || v25 != 0xE500000000000000) && (sub_1A524EAB4() & 1) == 0)
  {
    if (v24 == 0xD000000000000010 && 0x80000001A53E0DA0 == v25 || (sub_1A524EAB4() & 1) != 0)
    {

      v15 = 0;
      v23 = 0x1000000000001;
      goto LABEL_20;
    }

    if (v24 == 0x4F7365766C656873 && v25 == 0xEB00000000796C6ELL)
    {

LABEL_29:
      v20 = 0x10000;
LABEL_19:
      v23 = v20;
      v15 = 1;
      goto LABEL_20;
    }

    v22 = sub_1A524EAB4();

    if (v22)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v15 = 0;
  v23 = 0;
LABEL_20:
  v21 = sub_1A3C35B00(v29);
  *v1 = vuzp1_s8(v23, v23).u32[0];
  *(v1 + 4) = v15;
  return v21;
}

char *sub_1A4630760()
{
  if (qword_1EB173B20 != -1)
  {
    swift_once();
  }

  return &byte_1EB173B28;
}

uint64_t static PhotosLaunchConfiguration.current.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB173B20 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = byte_1EB173B29;
  v2 = byte_1EB173B2A;
  v3 = byte_1EB173B2B;
  v4 = byte_1EB173B2C;
  *a1 = byte_1EB173B28;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  return result;
}

void sub_1A4630868()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B758);
  __swift_project_value_buffer(v0, qword_1EB15B758);
  sub_1A5246EF4();
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosLaunchConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
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

uint64_t storeEnumTagSinglePayload for PhotosLaunchConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A4630A00()
{
  result = qword_1EB18D650[0];
  if (!qword_1EB18D650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18D650);
  }

  return result;
}

void (*EnvironmentValues.photoLibrary.modify(void *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  a1[2] = v1;
  a1[3] = sub_1A4630A00();
  sub_1A5249244();
  return sub_1A4630AD4;
}

unint64_t sub_1A4630B00()
{
  result = qword_1EB1885F8[0];
  if (!qword_1EB1885F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1885F8);
  }

  return result;
}

uint64_t (*EnvironmentValues.navigationContext.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1A4630B00();
  sub_1A5249244();
  return sub_1A4630BD4;
}

void sub_1A4630BD4(void *a1, char a2, __n128 a3)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1A5249254();
  }

  else
  {
    sub_1A5249254();
  }
}

unint64_t sub_1A4630C88()
{
  result = qword_1EB1865A0[0];
  if (!qword_1EB1865A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1865A0);
  }

  return result;
}

void (*EnvironmentValues.pickerConfiguration.modify(void *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  a1[2] = v1;
  a1[3] = sub_1A4630C88();
  sub_1A5249244();
  return sub_1A4630D5C;
}

uint64_t sub_1A4630D88(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1A5249244();
  return v3;
}

unint64_t sub_1A4630DD0()
{
  result = qword_1EB1CB118[0];
  if (!qword_1EB1CB118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CB118);
  }

  return result;
}

void (*EnvironmentValues.collectionList.modify(void *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  a1[2] = v1;
  a1[3] = sub_1A4630DD0();
  sub_1A5249244();
  return sub_1A4630EEC;
}

void sub_1A4630EF8(uint64_t a1, char a2, uint64_t a3, __n128 a4)
{
  v4 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v6 = v4;
    sub_1A5249254();
    v7 = *a1;
  }

  else
  {
    sub_1A5249254();
  }
}

uint64_t sub_1A4630FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A44FD29C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4631034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A46310FC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4631098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4444E20();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1A46310FC()
{
  result = qword_1EB125A10;
  if (!qword_1EB125A10)
  {
    sub_1A3F17950(255);
    sub_1A44FD6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A10);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSharedLibrarySuggestionCell(uint64_t a1)
{
  result = qword_1EB1CB230;
  if (!qword_1EB1CB230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46311C0(uint64_t a1, void *a2)
{
  v4 = sub_1A5244084();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1A463358C(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v13[1] = v14;
  sub_1A4633F64(0, &qword_1EB13F638, sub_1A4633620, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A46313FC(a2, a1, v13 + *(v15 + 44));
  type metadata accessor for LemonadeSharedLibrarySuggestionCell(0);
  sub_1A3F75AC0(v10);
  sub_1A5243F24();
  v16 = *(v5 + 8);
  v16(v10, v4);
  sub_1A4633C0C(&qword_1EB13F630, sub_1A463358C, MEMORY[0x1E6981880]);
  sub_1A524A784();
  v16(v7, v4);
  return sub_1A4633F04(v13, sub_1A463358C);
}

uint64_t sub_1A46313FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v77 = a2;
  v87 = a3;
  sub_1A4633690(0);
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A463377C(0);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  sub_1A4609F3C(0, v11);
  v72 = v12;
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4633748(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v70 - v17;
  sub_1A463365C(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v70 - v21;
  v22 = sub_1A5243834();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B7A4(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v70 - v27;
  v80 = sub_1A5243EC4();
  v29 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v70 - v33;
  v76 = a1;
  v35 = *a1;
  (*(*v35 + 200))(v32);
  v88 = 0u;
  v89 = 0u;
  v90 = 1;
  v36 = sub_1A52429A4();
  (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
  (*(v23 + 104))(v25, *MEMORY[0x1E69C2678], v22);
  v81 = v34;
  v37 = sub_1A5243ED4();
  v38 = (*(*v35 + 152))(v37);
  v40 = (*(*v35 + 248))();
  v41 = v39;
  if ((v38 & 1) == 0)
  {
    if (!v39)
    {
      v60 = 1;
      v43 = v83;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v39)
  {
LABEL_5:
    v47 = v70;
    sub_1A5242CC4();
    v46 = v71;
    v45 = v72;
    v44 = v73;
    (*(v71 + 32))(v73, v47, v72);
    v42 = 0;
    v43 = v83;
    goto LABEL_6;
  }

  v42 = 1;
  v43 = v83;
  v45 = v72;
  v44 = v73;
  v46 = v71;
LABEL_6:
  (*(v46 + 56))(v44, v42, 1, v45);
  *v10 = sub_1A5249584();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4633F64(0, &qword_1EB13F640, sub_1A463384C, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A4631CCC(v38 & 1, v41 != 0, v40, v41, v76, v77, &v10[*(v48 + 44)]);

  v49 = sub_1A524A064();
  v50 = v75;
  v51 = &v10[*(v74 + 36)];
  *v51 = v49;
  __asm { FMOV            V0.2D, #10.0 }

  *(v51 + 8) = _Q0;
  *(v51 + 24) = _Q0;
  v51[40] = 0;
  sub_1A463412C(v44, v50, sub_1A4633748);
  v57 = v78;
  sub_1A463412C(v10, v78, sub_1A463377C);
  v58 = v79;
  sub_1A463412C(v50, v79, sub_1A4633748);
  sub_1A46336CC(0, &qword_1EB13F588, sub_1A4633748, sub_1A463377C);
  sub_1A463412C(v57, v58 + *(v59 + 48), sub_1A463377C);
  sub_1A4633F04(v10, sub_1A463377C);
  sub_1A4633F04(v44, sub_1A4633748);
  sub_1A4633F04(v57, sub_1A463377C);
  sub_1A4633F04(v50, sub_1A4633748);
  sub_1A46340C4(v58, v43, sub_1A4633690);
  v60 = 0;
LABEL_7:
  (*(v85 + 56))(v43, v60, 1, v86);
  v61 = *(v29 + 16);
  v63 = v81;
  v62 = v82;
  v64 = v80;
  v61(v82, v81, v80);
  v65 = v84;
  sub_1A463412C(v43, v84, sub_1A463365C);
  v66 = v87;
  v61(v87, v62, v64);
  sub_1A46336CC(0, &qword_1EB13F570, MEMORY[0x1E69C2928], sub_1A463365C);
  sub_1A463412C(v65, &v66[*(v67 + 48)], sub_1A463365C);
  sub_1A4633F04(v43, sub_1A463365C);
  v68 = *(v29 + 8);
  v68(v63, v64);
  sub_1A4633F04(v65, sub_1A463365C);
  return (v68)(v62, v64);
}

uint64_t sub_1A4631CCC@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v128 = a6;
  v140 = a5;
  v157 = a4;
  v139 = a3;
  LODWORD(v156) = a2;
  v149 = a7;
  sub_1A4633C88(0);
  v154 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609AF0(0);
  v130 = v12;
  v129 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4633D10(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v117 - v18;
  sub_1A4633B2C(0, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550);
  v145 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v117 - v21;
  sub_1A4609C28(0);
  v146 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v117 - v25;
  sub_1A4609BA4(0);
  v138 = v26;
  v137 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609B24(0);
  v147 = v28;
  v126 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v144 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v117 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v148 = &v117 - v33;
  sub_1A4633C54(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v153 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v117 - v37;
  sub_1A4633918(0);
  v40 = v39;
  v155 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v143 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4633AC4(0, v41);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v141 = &v117 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v117 - v47;
  sub_1A4633994(0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v142 = (&v117 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v117 - v52;
  sub_1A46338E4(0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v151 = &v117 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v131 = v19;
  v152 = v38;
  v127 = v14;
  v150 = &v117 - v57;
  if (a1)
  {
    *v53 = sub_1A5249314();
    *(v53 + 1) = 0;
    v53[16] = 1;
    sub_1A4633F64(0, &qword_1EB13F648, sub_1A4633A28, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    v121 = &v53[*(v58 + 44)];
    v59 = [objc_opt_self() px:*MEMORY[0x1E69DDD08] preferredFontForTextStyle:32770 withSymbolicTraits:0 options:?];
    v60 = sub_1A524C634();
    v61 = PXLocalizedSharedLibraryString(v60);
    v123 = v11;
    v62 = v61;

    v63 = sub_1A524C674();
    v65 = v64;

    aBlock = v63;
    v160 = v65;
    sub_1A3D5F9DC();
    v66 = sub_1A524A464();
    v68 = v67;
    LOBYTE(v62) = v69;
    v122 = v40;
    v120 = v59;
    sub_1A524A284();
    v70 = sub_1A524A3C4();
    v124 = v9;
    v71 = v70;
    v119 = v72;
    v73 = v44;
    v75 = v74;
    v118 = v76;

    sub_1A3E04DF4(v66, v68, v62 & 1);

    LOBYTE(v66) = sub_1A524A064();
    LOBYTE(v62) = v75 & 1;
    LOBYTE(aBlock) = v75 & 1;
    v158 = 0;
    sub_1A4633AF8(0, v77);
    v79 = &v48[*(v78 + 36)];
    sub_1A524BBB4();
    LOBYTE(v68) = sub_1A524A064();
    sub_1A41CD494(0);
    v79[*(v80 + 36)] = v68;
    v38 = v152;
    *v48 = v71;
    v9 = v124;
    *(v48 + 1) = v119;
    v48[16] = v62;
    *(v48 + 3) = v118;
    v48[32] = v66;
    *(v48 + 40) = xmmword_1A53522F0;
    *(v48 + 56) = xmmword_1A53522F0;
    v48[72] = 0;
    v81 = &v48[*(v73 + 36)];
    v82 = *(sub_1A5248A14() + 20);
    v83 = *MEMORY[0x1E697F468];
    v84 = sub_1A52494A4();
    (*(*(v84 - 8) + 104))(&v81[v82], v83, v84);
    __asm { FMOV            V0.2D, #4.0 }

    *v81 = _Q0;
    sub_1A3E42C88(0);
    *&v81[*(v90 + 36)] = 256;
    v91 = v141;
    sub_1A46342B4(v48, v141, sub_1A4633AC4);
    v92 = v121;
    *v121 = 0;
    v92[8] = 1;
    v93 = v92;
    sub_1A4633A5C(0, v94);
    sub_1A46342B4(v91, &v93[*(v95 + 48)], sub_1A4633AC4);

    sub_1A4634064(v48, sub_1A4633AC4);
    sub_1A4634064(v91, sub_1A4633AC4);
    v96 = v142;
    sub_1A46342B4(v53, v142, sub_1A4633994);
    v97 = v143;
    sub_1A46342B4(v96, v143, sub_1A4633994);
    sub_1A46341FC(0, &qword_1EB13F5C8, sub_1A4633994, MEMORY[0x1E6981840]);
    v99 = v97 + *(v98 + 48);
    *v99 = 0;
    *(v99 + 8) = 1;
    sub_1A4634064(v53, sub_1A4633994);
    sub_1A4634064(v96, sub_1A4633994);
    v100 = v150;
    sub_1A4634194(v97, v150, sub_1A4633918);
    result = (*(v155 + 56))(v100, 0, 1, v122);
  }

  else
  {
    v100 = &v117 - v57;
    result = (*(v155 + 56))(&v117 - v57, 1, 1, v40);
  }

  v102 = v157;
  if (v156)
  {
    if (v157)
    {
      KeyPath = swift_getKeyPath();
      v104 = v135;
      v105 = &v135[*(v145 + 36)];
      sub_1A41E5550(0);
      v156 = v106;
      v107 = *(v106 + 28);
      v108 = *MEMORY[0x1E6980FA8];
      v109 = sub_1A524A354();
      v110 = *(v109 - 8);
      v111 = *(v110 + 104);
      LODWORD(v155) = v108;
      v143 = v110 + 104;
      v142 = v111;
      (v111)(v105 + v107, v108, v109);
      *v105 = swift_getKeyPath();
      *v104 = v139;
      *(v104 + 1) = v102;
      v112 = MEMORY[0x1E69E7CC0];
      v104[16] = 0;
      *(v104 + 3) = v112;
      *(v104 + 4) = KeyPath;
      *(v104 + 5) = 2;
      v104[48] = 0;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  else
  {
    (*(v9 + 56))(v38, 1, 1, v154);
    v113 = v151;
    sub_1A46342B4(v100, v151, sub_1A46338E4);
    v114 = v153;
    sub_1A463412C(v38, v153, sub_1A4633C54);
    v115 = v149;
    sub_1A46342B4(v113, v149, sub_1A46338E4);
    sub_1A46336CC(0, &qword_1EB13F5B0, sub_1A46338E4, sub_1A4633C54);
    sub_1A463412C(v114, v115 + *(v116 + 48), sub_1A4633C54);
    sub_1A4633F04(v38, sub_1A4633C54);
    sub_1A4634064(v100, sub_1A46338E4);
    sub_1A4633F04(v114, sub_1A4633C54);
    return sub_1A4634064(v113, sub_1A46338E4);
  }

  return result;
}

double sub_1A4632F48(uint64_t a1)
{
  v1 = sub_1A524C634();
  sub_1A3C6B7A4(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DDD28];
  v6 = v3;
  v7 = [v4 preferredFontForTextStyle_];
  *(inited + 64) = sub_1A4634268();
  *(inited + 40) = v7;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A4634064(inited + 32, sub_1A3C8BC40);
  type metadata accessor for Key(0);
  sub_1A4633C0C(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
  v8 = sub_1A524C3D4();

  [v1 sizeWithAttributes_];
  v10 = v9;

  return v10;
}

double sub_1A4633108(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1A524C674();
  v4 = v2(v3);

  return v4;
}

uint64_t sub_1A4633164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for LemonadeSharedLibrarySuggestionCell(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A3C6B7A4(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4633214@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A46342B4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSharedLibrarySuggestionCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A4634194(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
  *a2 = sub_1A463431C;
  a2[1] = v7;
  return result;
}

void sub_1A4633350(uint64_t a1)
{
  type metadata accessor for LemonadeSharedLibrarySuggestionModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C6B7A4(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4633404(uint64_t a1, double a2)
{
  if (!qword_1EB13F550)
  {
    sub_1A46334D8(255, a2);
    sub_1A463358C(255);
    sub_1A4633C0C(&qword_1EB13F630, sub_1A463358C, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A5248414();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13F550);
    }
  }
}

void sub_1A46334D8(uint64_t a1, double a2)
{
  if (!qword_1EB13F558)
  {
    sub_1A463358C(255);
    sub_1A4633C0C(&qword_1EB13F630, sub_1A463358C, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F558);
    }
  }
}

void sub_1A463358C(uint64_t a1)
{
  if (!qword_1EB13F560)
  {
    sub_1A4633620(255);
    sub_1A4633C0C(&qword_1EB13F628, sub_1A4633620, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F560);
    }
  }
}

void sub_1A46336CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A46337B8(uint64_t a1)
{
  if (!qword_1EB13F5A0)
  {
    sub_1A463384C(255);
    sub_1A4633C0C(&qword_1EB13F620, sub_1A463384C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F5A0);
    }
  }
}

void sub_1A4633888(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A46336CC(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4633918(uint64_t a1)
{
  if (!qword_1EB13F5C0)
  {
    sub_1A46341FC(255, &qword_1EB13F5C8, sub_1A4633994, MEMORY[0x1E6981840]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F5C0);
    }
  }
}

void sub_1A4633994(uint64_t a1)
{
  if (!qword_1EB13F5D0)
  {
    sub_1A4633A28(255);
    sub_1A4633C0C(&qword_1EB13F5F8, sub_1A4633A28, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F5D0);
    }
  }
}

void sub_1A4633A5C(uint64_t a1, double a2)
{
  if (!qword_1EB13F5E0)
  {
    sub_1A4633AC4(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F5E0);
    }
  }
}

void sub_1A4633B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4633BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4633C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4633C88(uint64_t a1)
{
  if (!qword_1EB13F608)
  {
    sub_1A46336CC(255, &qword_1EB13F610, sub_1A4609B24, sub_1A4633D10);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F608);
    }
  }
}

uint64_t objectdestroyTm_68()
{
  v1 = (type metadata accessor for LemonadeSharedLibrarySuggestionCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1A3C6B7A4(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5244084();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4633E84(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeSharedLibrarySuggestionCell(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A46311C0(a1, v4);
}

uint64_t sub_1A4633F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4633F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4633FD0(uint64_t a1, uint64_t a2)
{
  sub_1A4633B2C(0, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4634064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46340C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A463412C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4634194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A46341FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1A4634268()
{
  result = qword_1EB120610;
  if (!qword_1EB120610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120610);
  }

  return result;
}

uint64_t sub_1A46342B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1A46344D8@<D0>(void *a1@<X8>)
{

  return sub_1A41840CC(v2, a1);
}

id sub_1A4634510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  *a2 = v3;
  type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();

  return v3;
}

uint64_t sub_1A4634588(uint64_t a1)
{
  v1 = *((*(*a1 + 144))() + 16);

  v2 = [v1 name];

  v3 = sub_1A524C674();
  return v3;
}

unint64_t sub_1A4634628(uint64_t a1)
{
  v2 = sub_1A3C54394(&qword_1EB129A08, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider, &unk_1A5352474);

  return sub_1A42E6E80(a1, v2);
}

uint64_t StoryAsyncPlayer.Options.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A524ECB4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4634784()
{
  sub_1A524EC94();
  sub_1A524ECB4();
  return sub_1A524ECE4();
}

uint64_t sub_1A46347F8(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524ECB4();
  return sub_1A524ECE4();
}

void StoryAsyncPlayer.init(configuration:options:)(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  sub_1A52411B4();
  v6 = v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  *(v3 + v7) = [objc_opt_self() blackColor];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor) = 0x3FF0000000000000;
  v8 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  v9 = *MEMORY[0x1E69C1EF0];
  v10 = sub_1A52425F4();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  v11 = (v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished);
  *v11 = 0;
  v11[1] = 0;
  v12 = v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter) = 0;
  v13 = (v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize);
  *v13 = 0;
  v13[1] = 0;
  v14 = v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_session) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_onSessionLoad) = MEMORY[0x1E69E7CC0];
  if (qword_1EB18ABC0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB18ABC8;
  v35 = a1;
  v17 = [a1 copyWithStoryQueue_];
  [v17 setSongsProducerKind_];
  [v17 setOptions_];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v18 = sub_1A524D474();
  MEMORY[0x1EEE9AC00](v18);
  v34[16] = v5;
  v19 = objc_allocWithZone(PXGHostingController);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A4639BAC;
  *(v20 + 24) = v34;
  v40 = sub_1A3D78DD0;
  v41 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1A3D77CC4;
  v39 = &block_descriptor_230;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 initWithClientQueue:v18 layoutQueue:v16 initialConfiguration:v21];

  _Block_release(v21);

  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v23 = [objc_allocWithZone(PXStoryExtendedTraitCollection) initWithLayoutReferenceSize:100.0 displayScale:{100.0, 1.0}];
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_traitCollection) = v23;
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue) = v16;
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyConfiguration) = v17;
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    *(v24 + 24) = v3;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1A4639BBC;
    *(v25 + 24) = v24;
    v40 = sub_1A3D7B4F8;
    v41 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1A3D77CC4;
    v39 = &block_descriptor_10_10;
    v26 = _Block_copy(&aBlock);
    v27 = v17;
    v28 = v16;
    v29 = v22;

    [v29 performChanges_];
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v31 = swift_allocObject();
      swift_weakInit();
      v40 = sub_1A4639CCC;
      v41 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1A3C2E0D0;
      v39 = &block_descriptor_16_8;
      v32 = _Block_copy(&aBlock);

      [v29 setOnPresentersDidChange_];
      _Block_release(v32);
      if (qword_1EB18AC90 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_6:
  sub_1A463B040(0, &qword_1EB128C58, type metadata accessor for StoryAsyncPlayer, off_1E7721228);
  __swift_project_value_buffer(v33, qword_1EB18AC98);
  swift_beginAccess();
  sub_1A52464B4();
}

uint64_t StoryAsyncPlayer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_id;
  v4 = sub_1A52411C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A4634F60()
{
  swift_getMetatypeMetadata();
  v2 = sub_1A524C714();
  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  sub_1A52411C4();
  sub_1A4639DDC(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v0);

  return v2;
}

uint64_t sub_1A4635060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

double sub_1A4635104(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState);
  *v2 = a1;
  *(v2 + 8) = v3;
  return sub_1A4637ABC(v4, v3);
}

double (*sub_1A4635128(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_1A463515C;
}

double sub_1A463515C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 8);
  v4 = *v2;
  *v2 = v1;
  *(v2 + 8) = v3;
  return sub_1A4637ABC(v4, v3);
}

void *sub_1A4635198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 256))(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1A4635204(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 264))(&v5);
}

void sub_1A463526C(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

void sub_1A46352C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v6 == 1)
  {
    if (v5 != 0.0)
    {
      if (v2 == 0.0)
      {
        v7 = 0;
      }

      else
      {
        v7 = v3;
      }

      if (v7 == 1)
      {
        return;
      }

LABEL_12:
      sub_1A4637E00();
      return;
    }

    if (v2 == 0.0)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v5 == v2)
    {
      v8 = v3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_12;
    }
  }
}

void (*sub_1A463536C(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1A463540C;
}

void sub_1A463540C(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 40) + *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = *v5;
  v8 = *(v5 + 8);
  *v5 = v4;
  *(v5 + 8) = v6;
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      if (v7 != 0.0)
      {
LABEL_4:
        if (v4 == 0.0)
        {
          v6 = 0;
        }

        if (v6)
        {
          goto LABEL_18;
        }

LABEL_17:
        sub_1A4637E00();
        goto LABEL_18;
      }

      goto LABEL_10;
    }

LABEL_14:
    if (v7 != v4)
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  if (v7 != 0.0)
  {
    goto LABEL_4;
  }

LABEL_10:
  if (v4 != 0.0)
  {
    v6 = 0;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:

  free(v3);
}

uint64_t sub_1A46354B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

id sub_1A4635564()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A46355B8(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  v6 = v4;
  v7 = v5;
  if (v4 == a1)
  {
  }

  else
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      sub_1A4637E00();
    }
  }
}

void (*sub_1A4635668(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A4635704;
}

void sub_1A4635704(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v4;
  v9 = v5;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    v12 = v8;
    v13 = v11;
    v14 = v13;
    if (v8 == v5)
    {
    }

    else
    {
      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        sub_1A4637E00();
      }
    }

    v18 = *v4;
  }

  else
  {
    v16 = v8;
    v17 = v10;
    v18 = v17;
    if (v8 == v5)
    {
    }

    else
    {
      v19 = [v16 isEqual:v17];

      if ((v19 & 1) == 0)
      {
        sub_1A4637E00();
      }
    }
  }

  free(v3);
}

double sub_1A46358C8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A463590C(double a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  PXFloatApproximatelyEqualToFloat(v4);
}

void (*sub_1A4635970(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A4635A04;
}

void sub_1A4635A04(uint64_t a1)
{
  v2 = *(*a1 + 32);
  v1 = *(*a1 + 40);
  v3 = *(v2 + v1);
  *(v2 + v1) = *(*a1 + 24);
  PXFloatApproximatelyEqualToFloat(v3);
}

uint64_t static StoryAsyncPlayer.AspectRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1A4635AB0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1A4635B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4635BFC, 0, 0);
}

void sub_1A4635BFC()
{
  *(v0 + 16) = *(v0 + 56);
  type metadata accessor for StoryAsyncPlayer(0);

  sub_1A5245A64();
}

uint64_t sub_1A4635D50()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4635E68, 0, 0);
}

uint64_t sub_1A4635E68()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

double sub_1A4635EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v36 = a4;
  v37 = a5;
  v43 = a2;
  v40 = sub_1A524BEE4();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A524BF64();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524CBF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v33 - v19;
  (*(v16 + 16))(&v33 - v19, a3, v15, v18);
  (*(v11 + 16))(v13, a1, v10);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 16) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  (*(v16 + 32))(v24 + v21, v20, v15);
  v25 = (v24 + v22);
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;
  (*(v11 + 32))(v24 + v23, v13, v10);
  aBlock[4] = sub_1A463AABC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_151_0;
  v27 = _Block_copy(aBlock);

  v28 = v35;
  sub_1A524BF14();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v29 = MEMORY[0x1E69E7F60];
  sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v29);
  v30 = v38;
  v31 = v40;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v28, v30, v27);
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v28, v41);

  return result;
}

void sub_1A46363D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1A524CBF4();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  sub_1A5245A74();
}

uint64_t sub_1A463671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v14(*(v13 + 72), v10);
  (*(v6 + 16))(v8, v12, a5);
  sub_1A524CBF4();
  sub_1A524CBE4();
  return (*(v6 + 8))(v12, a5);
}

void sub_1A4636858(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1A4059450(sub_1A3C7146C, v4);
}

void static StoryAsyncPlayer.alivePlayers.getter()
{
  sub_1A463B040(0, &qword_1EB128C58, type metadata accessor for StoryAsyncPlayer, off_1E7721228);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  if (qword_1EB18AC90 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EB18AC98);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  sub_1A52464D4();
}

void sub_1A4636A50(void *a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524C634();
  v11 = [a1 beginCollectionOperationWithName:v10 timeout:600.0];

  v19[0] = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue);
  v12 = swift_allocObject();
  v19[1] = v11;
  v20 = a1;
  v12[2] = a1;
  v12[3] = v2;
  v12[4] = v11;
  aBlock[4] = sub_1A4639D7C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_26_3;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_1A524BF14();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v13);
  _Block_release(v13);
  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);

  v15 = [objc_allocWithZone(off_1E7721970) initWithRootProvider_];
  v16 = sub_1A524C634();
  [v15 setName_];

  sub_1A3C52C70(0, &unk_1EB120A90, off_1E77202B0);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 includeImagesInVisualDiagnosticsForTTR];

  [v15 setIsPrivateDataAllowed_];
  [v20 addSubprovider_];
  swift_unknownObjectRelease();
}

uint64_t sub_1A4636EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52425F4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 360))(v7);
}

uint64_t sub_1A4636FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v4 = sub_1A52425F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A4637078(uint64_t a1)
{
  v3 = sub_1A52425F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v10, a1, v3);
  swift_endAccess();
  (*(v4 + 16))(v9, v1 + v10, v3);
  (*(v4 + 32))(v6, v9, v3);
  v11 = (*(v4 + 88))(v6, v3);
  v12 = 0;
  if (v11 != *MEMORY[0x1E69C1EF0] && v11 != *MEMORY[0x1E69C1EF8] && v11 != *MEMORY[0x1E69C1EE0])
  {
    if (v11 == *MEMORY[0x1E69C1EE8])
    {
      v12 = 1;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v12 = 0;
    }
  }

  (*(*v1 + 240))(v12);
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A46372A4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1A52425F4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  v5[7] = v9;
  v5[8] = v10;
  swift_beginAccess();
  return sub_1A46373BC;
}

void sub_1A46373BC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[6];
    v4 = v3[7];
    goto LABEL_15;
  }

  v6 = v3[7];
  v8 = v3[5];
  v7 = v3[6];
  v9 = v3[4];
  (*(v8 + 16))(v6, v3[3] + v3[8], v9);
  (*(v8 + 32))(v7, v6, v9);
  v10 = (*(v8 + 88))(v7, v9);
  if (v10 == *MEMORY[0x1E69C1EF0] || v10 == *MEMORY[0x1E69C1EF8] || v10 == *MEMORY[0x1E69C1EE0])
  {
    goto LABEL_13;
  }

  if (v10 != *MEMORY[0x1E69C1EE8])
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 1;
LABEL_14:
  v5 = v3[6];
  v4 = v3[7];
  (*(*v3[3] + 240))(v13);
LABEL_15:
  free(v4);
  free(v5);

  free(v3);
}

uint64_t sub_1A4637524@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 376))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46375BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 384);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t sub_1A463767C()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A46376D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A46377B0()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4639DDC(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A463B040(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA28(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB18ABC8 = result;
  return result;
}

void sub_1A4637A34()
{
  sub_1A463B040(0, &qword_1EB128C58, type metadata accessor for StoryAsyncPlayer, off_1E7721228);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB18AC98);
  __swift_project_value_buffer(v1, qword_1EB18AC98);
  type metadata accessor for StoryAsyncPlayer(0);
  sub_1A52464E4();
}

double sub_1A4637ABC(uint64_t a1, int a2)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState);
  v16 = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8);
  if (v15 != a1 || ((v16 ^ a2) & 1) != 0)
  {
    v21 = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue);
    v22 = v11;
    v23 = v10;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v15;
    *(v18 + 32) = v16;
    aBlock[4] = sub_1A463AF20;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_187_0;
    v19 = _Block_copy(aBlock);

    sub_1A524BF14();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v20 = MEMORY[0x1E69E7F60];
    sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v20);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v14, v8, v19);
    _Block_release(v19);
    (*(v6 + 8))(v8, v5);
    (*(v22 + 8))(v14, v23);
  }

  return result;
}

void sub_1A4637E00()
{
  v1 = sub_1A524BEE4();
  v40 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v42 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BF64();
  v41 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter;
  v8 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter);
  if (v8)
  {
    v8 = [v8 size];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
  }

  v13 = (*(*v0 + 256))(&aBlock, v8);
  if (v45 == 1)
  {
    v14 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize;
    if (aBlock != 0.0)
    {
      if (*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize) == v10)
      {
        v10 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize);
        v12 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize + 8);
      }

      else if (*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize + 8) == v12)
      {
        v10 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize);
        v12 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize + 8);
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1A590D2F0](v13, aBlock, v10, v12);
    v12 = v15;
    v14 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize;
  }

  v16 = (v0 + v14);
  *v16 = v10;
  v16[1] = v12;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 inlinePlaybackSimulateMainPresenterDisappearanceOnDismissal];

  if (v18)
  {
    v19 = (v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize);
    if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize + 16) & 1) == 0 && v10 < *v19 && v12 < v19[1])
    {
      v10 = 0.0;
      v12 = 0.0;
    }
  }

  v20 = v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize;
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = 0;
  v21 = *(v0 + v7);
  if (v21)
  {
    v21 = [v21 displayScale];
    if (v22 <= 0.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v23 * (*(*v0 + 304))(v21);
  if (*(v0 + v7))
  {
    sub_1A524DA74();
  }

  v25 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v26 = swift_allocObject();
  *(v26 + 16) = v0;
  *(v26 + 24) = v10;
  *(v26 + 32) = v12;
  *(v26 + 40) = v24;
  *(v26 + 48) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A463AD08;
  *(v27 + 24) = v26;
  v48 = sub_1A3D7B4F8;
  v49 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1A3D77CC4;
  v47 = &block_descriptor_167_0;
  v28 = _Block_copy(&aBlock);

  [v25 performChanges_];
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState);
    v30 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8);
    *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8) = 0;
    sub_1A4637ABC(v29, v30);
    if (v24 > 0.0)
    {
      v39[1] = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue);
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v24;
      v48 = sub_1A463ADE8;
      v49 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1A3C2E0D0;
      v47 = &block_descriptor_174_0;
      v33 = _Block_copy(&aBlock);

      v34 = v6;
      sub_1A524BF14();
      v43 = MEMORY[0x1E69E7CC0];
      sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v39[0] = v3;
      v35 = v40;
      v36 = v1;
      v37 = MEMORY[0x1E69E7F60];
      sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v37);
      v38 = v42;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v34, v38, v33);
      _Block_release(v33);
      (*(v35 + 8))(v38, v36);
      (*(v41 + 8))(v34, v39[0]);
    }
  }
}

void sub_1A463847C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController) presenters];
  sub_1A463AA58();
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      return;
    }

    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    if (v3 >= 1)
    {
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = MEMORY[0x1A59097F0](0, v2);
  if (v3 < 1)
  {
    goto LABEL_24;
  }

LABEL_6:
  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](i, v2);
    }

    else
    {
      v6 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v6 size];
    v8 = v7;
    v10 = v9;
    v11 = [v4 size];
    if (MEMORY[0x1A590D220](v11, v8, v10, v12, v13))
    {
      swift_unknownObjectRelease();
      v4 = v6;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_16:

  v14 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter) = v4;
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = v4;
  if (v14 == v4)
  {
  }

  else
  {
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      sub_1A4637E00();
    }
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_1A4638680()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_traitCollection);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyConfiguration);
  v4 = v1;
  v5 = [v2 clientQueue];
  type metadata accessor for StoryAsyncPlayer.StoryAsyncSession();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 144) = 1;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 24) = v5;
  v5;
  v7 = [v3 storyQueue];
  *(v6 + 32) = v7;
  *(v6 + 96) = v3;
  *(v6 + 104) = v4;
  v8 = objc_allocWithZone(PXStoryModel);
  v22 = v7;
  v21 = v3;
  v9 = [v8 initWithConfiguration:v21 extendedTraitCollection:v4];
  *(v6 + 72) = v9;
  v10 = objc_allocWithZone(PXStoryPacingAutoIncrementingTimeSource);
  v11 = v9;
  *(v6 + 112) = [objc_allocWithZone(PXStoryPacingController) initWithModel:v11 timeSource:objc_msgSend(v10 cueSource:{sel_initWithLayoutQueue_, v22), 0}];
  v12 = v11;
  v13 = [v21 mediaProvider];
  v14 = [objc_allocWithZone(PXStoryResourcesPreloadingController) initWithModel:v12 mediaProvider:v13];

  [v14 setIsPreloadingEnabled_];
  v27 = sub_1A4638C5C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A421179C;
  v26 = &block_descriptor_135_4;
  v15 = _Block_copy(&aBlock);
  [v14 performChanges_];
  _Block_release(v15);
  *(v6 + 120) = v14;
  v16 = objc_allocWithZone(PXStoryBufferingController);
  v14;
  v17 = [v16 initWithModel_];
  *(v6 + 128) = v17;
  v18 = objc_allocWithZone(PXStorySongController);
  v19 = v17;
  *(v6 + 136) = [v18 initWithModel_];
  v27 = sub_1A4638C6C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A3D59380;
  v26 = &block_descriptor_138_1;
  v20 = _Block_copy(&aBlock);
  [v12 performChanges_];
  _Block_release(v20);
  *(v6 + 16) = [objc_allocWithZone(PXStoryLayout) initWithModel_];
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

uint64_t sub_1A4638C2C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_1A4638C6C(void *a1)
{
  [a1 setDesiredPlayState_];

  return [a1 setMusicReadinessStatus_];
}

void sub_1A4638CBC(uint64_t a1, int a2)
{
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  if (v4 != a1 || ((v5 ^ a2) & 1) != 0)
  {
    v6 = a2 & 1;
    sub_1A4638F4C(a1);
    v7 = *(v2 + 160);
    *(v2 + 160) = v6;
    if (v7 != v6)
    {
      sub_1A463903C();
    }

    v8 = *(v2 + 72);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v6;
    v11[4] = sub_1A463A7F8;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A3D59380;
    v11[3] = &block_descriptor_131_4;
    v10 = _Block_copy(v11);

    [v8 performChanges_];
    _Block_release(v10);
  }
}

id sub_1A4638E00(void *a1)
{
  v3 = *(v1 + 72);
  v4 = PXStoryDiagnosticDescriptionForAllHUDTypes(v3, 1);
  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  v5 = sub_1A524C634();
  [a1 addAttachmentWithText:v4 name:v5];

  [a1 addSubprovider_];
  v6 = *(v1 + 112);

  return [a1 addSubprovider_];
}

double sub_1A4638EE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();

  return result;
}

double sub_1A4638F4C(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v2 = *(v1 + 144);
    *(v1 + 144) = 0;
    if (v2 == 1)
    {
      sub_1A463903C();
    }

    *(v1 + 152) = 0;
  }

  else if (!*(v1 + 152))
  {
    swift_allocObject();
    swift_weakInit();
    sub_1A52458E4();
  }

  return result;
}

void sub_1A463903C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 17) = v2;
  v16 = sub_1A463A6D4;
  v17 = v4;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_110_2;
  v5 = _Block_copy(&v12);

  [v3 performChanges_];
  _Block_release(v5);
  v6 = *(v0 + 120);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v16 = sub_1A463B0F0;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_116_0;
  v8 = _Block_copy(&v12);

  [v6 performChanges_];
  _Block_release(v8);
  v9 = *(v0 + 128);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v16 = sub_1A463A6F0;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_122_0;
  v11 = _Block_copy(&v12);

  [v9 performChanges_];
  _Block_release(v11);
}

void sub_1A4639250()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v0 + 96) options] & 0x800) != 0)
  {
    v10 = *(v0 + 72);
    if ([v10 isAtPlaybackEnd])
    {
      v23 = sub_1A46395C4;
      v24 = 0;
      v17 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1A3D59380;
      v22 = &block_descriptor_101_2;
      v11 = _Block_copy(&aBlock);
      v16 = v2;
      v12 = v11;
      [v10 performChanges_];
      _Block_release(v12);
      v23 = sub_1A463A678;
      v24 = v0;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1A3C2E0D0;
      v22 = &block_descriptor_104_0;
      v13 = _Block_copy(&aBlock);

      sub_1A524BF14();
      v18 = MEMORY[0x1E69E7CC0];
      sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v14 = MEMORY[0x1E69E7F60];
      sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v9, v4, v13);
      _Block_release(v13);
      (*(v16 + 8))(v4, v1);
      (*(v17 + 8))(v9, v5);
    }
  }
}

id sub_1A46395C4(void *a1)
{
  [a1 rewindToBeginning];

  return [a1 setDesiredPlayState_];
}

uint64_t sub_1A4639610()
{
  sub_1A3C784D4(*(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t StoryAsyncPlayer.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  v4 = sub_1A52425F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished), *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished + 8));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t StoryAsyncPlayer.__deallocating_deinit()
{
  StoryAsyncPlayer.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1A463988C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 368))();
  return sub_1A3E62A10;
}

void (*sub_1A463997C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 392))();
  return sub_1A3E658B0;
}

double sub_1A4639A64@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x1A58FDC30](v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1A4639AA8@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x1A58FDC40](v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1A4639AEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1A4639BBC(void *a1)
{
  v3 = [*(v1 + 16) mediaProvider];
  [a1 setMediaProvider_];

  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1A463AFDC;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3F6EAB4;
  v6[3] = &block_descriptor_191;
  v5 = _Block_copy(v6);

  [a1 setRootLayoutPromise_];
  _Block_release(v5);
}

double sub_1A4639CCC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A463847C();
  }

  return result;
}

uint64_t type metadata accessor for StoryAsyncPlayer(uint64_t a1)
{
  result = qword_1EB18AB10;
  if (!qword_1EB18AB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A4639D7C()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) addSubprovider_];

  return [v1 endWithSuccess:1 error:0];
}

uint64_t sub_1A4639DDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4639E28()
{
  result = qword_1EB13F780;
  if (!qword_1EB13F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F780);
  }

  return result;
}

uint64_t sub_1A4639F14(uint64_t a1)
{
  result = sub_1A52411C4();
  if (v2 <= 0x3F)
  {
    result = sub_1A52425F4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}