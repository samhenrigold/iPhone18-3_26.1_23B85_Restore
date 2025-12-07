double sub_1AF8EE67C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v41 = a3;
  v40 = a2;
  v57 = sub_1AFDFC128();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFC4F8();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v14 = sub_1AFDFC538();
  sub_1AF477C68(v14, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  CFXTextureDescriptorMakeDefault(&v55);
  *(v52 + 7) = v55;
  *(&v52[1] + 7) = v56;
  *v54 = 0;
  v53 = 0uLL;
  v54[8] = 0;
  *&v54[9] = v52[0];
  *&v54[24] = *(v52 + 15);
  *&v54[40] = MEMORY[0x1E69E7CC0];
  v15 = *(v6 + 16);
  v39 = a1;
  v15(v8, a1, v57);
  v16 = sub_1AFDFC528();
  v37 = sub_1AFDFDB88();
  if (sub_1AFDFDCE8())
  {
    v17 = swift_slowAlloc();
    v35 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = a4;
    v20 = v19;
    *&v48 = v19;
    *v18 = 136315138;
    v21 = sub_1AFDFBFE8();
    v23 = v22;
    (*(v6 + 8))(v8, v57);
    v24 = sub_1AF740B70(v21, v23, &v48);

    *(v18 + 4) = v24;
    v25 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v16, v37, v25, "loadTextureFromDisk", "URL: %s", v18, 0xCu);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
    v26 = v20;
    a4 = v36;
    MEMORY[0x1B271DEA0](v26, -1, -1);
    v27 = v18;
    v9 = v35;
    MEMORY[0x1B271DEA0](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v57);
  }

  v28 = v43;
  (*(v43 + 16))(v38, v13, v9);
  sub_1AFDFC578();
  swift_allocObject();
  v29 = sub_1AFDFC568();
  v30 = v42;
  sub_1AF8E7DE4(v39, v40, v41, 0, 1);
  if (v30)
  {
    sub_1AF8F7290(v29, "loadTextureFromDisk");

    v48 = v53;
    v49 = *v54;
    v50 = *&v54[16];
    v51 = *&v54[32];
    sub_1AF478A6C(&v48);
    (*(v28 + 8))(v13, v9);
  }

  else
  {
    v44 = v53;
    v45 = *v54;
    v46 = *&v54[16];
    v47 = *&v54[32];
    sub_1AF44222C(&v44, &v48);
    sub_1AF8F7290(v29, "loadTextureFromDisk");

    v48 = v53;
    v49 = *v54;
    v50 = *&v54[16];
    v51 = *&v54[32];
    sub_1AF478A6C(&v48);
    (*(v28 + 8))(v13, v9);
    v32 = v45;
    *a4 = v44;
    a4[1] = v32;
    result = *&v46;
    v33 = v47;
    a4[2] = v46;
    a4[3] = v33;
  }

  return result;
}

NSObject *sub_1AF8EEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AFDFC128();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 0x100) != 0)
  {
    v17 = 0;
    v13 = *a2 & 0x104;
    v16 = 0uLL;
    v18 = 768;
    v15 = -2;
    v14 = 0uLL;
  }

  else
  {
    v13 = *a2 & 0xFCLL;
    v14 = *(a2 + 8);
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    v18 = *(a2 + 56);
  }

  v55 = v13;
  v56 = v14;
  v57 = v15;
  v58 = v16;
  v59 = v17;
  v60 = v18;
  if (v13 >= 0x100)
  {
    *&v42 = v11;
    v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    result = sub_1AF8EDB38(a1, &v55, a3);
    if (!v4)
    {
      return result;
    }

    v41 = a4;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v20 = sub_1AFDFF1D8();
    v22 = v21;
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v39 = v23;
      swift_once();
      v23 = v39;
    }

    v61 = a2;
    v44 = 0;
    sub_1AF0D4F18(v23, &v44, v20, v22);

    *&v43 = 0;
    v12 = v40;
    v11 = v42;
  }

  else
  {
    v61 = a2;
    v41 = a4;
    *&v43 = v4;
  }

  v24 = v11;
  (*(v11 + 16))(v12, a1, v9);
  v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  *&v42 = a1;
  v27 = swift_allocObject();
  (*(v24 + 32))(v27 + v25, v12, v9);
  v28 = (v27 + v26);
  v29 = v61;
  v30 = v61[1];
  *v28 = *v61;
  v28[1] = v30;
  v28[2] = v29[2];
  *(v28 + 42) = *(v29 + 42);
  *(v27 + ((v26 + 65) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v31 = v43;
  sub_1AF74D574(0, &v55, sub_1AF9070A0, v27, 0, 0, v45);
  if (v31)
  {
  }

  else
  {
    v43 = v45[1];
    v42 = v45[0];
    v32 = v46;
    v33 = v47;
    v35 = v48;
    v34 = v49;

    if (v35 < 0)
    {
      v50[0] = v42;
      v50[1] = v43;
      v51 = v32;
      v52 = v33;
      v53 = v35 & 0x7FFFFFFFFFFFFFFFLL;
      v54 = v34;
      v36 = sub_1AF8E9A5C(v50, v29, a3, 0, v41);
      if (v36)
      {
        v37 = v36;
        sub_1AF8FE1E4(v45, &unk_1ED725A60, &type metadata for TextureCache.Texture, MEMORY[0x1E69E6720], sub_1AF90540C);
        return v37;
      }

      else
      {
        sub_1AF902768();
        swift_allocError();
        *v38 = 0xD000000000000017;
        *(v38 + 8) = 0x80000001AFF39CB0;
        *(v38 + 16) = 1;
        swift_willThrow();
        return sub_1AF8FE1E4(v45, &unk_1ED725A60, &type metadata for TextureCache.Texture, MEMORY[0x1E69E6720], sub_1AF90540C);
      }
    }

    else
    {
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

double sub_1AF8EF03C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF8EE67C(a1, a2, *(a3 + 16), &v11);
  if (!v4)
  {
    v7 = v12;
    v8 = v16;
    v9 = v13 & 1;
    v10 = v15 & 0xFFFFFF | 0x8000000000000000;
    *a4 = v11;
    *(a4 + 16) = v7;
    *(a4 + 24) = v9;
    result = *&v14;
    *(a4 + 32) = v14;
    *(a4 + 48) = v10;
    *(a4 + 56) = v8;
  }

  return result;
}

uint64_t sub_1AF8EF0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a5@<X8>)
{
  type metadata accessor for CommandBufferHelper();
  swift_initStackObject();
  v10 = swift_unknownObjectRetain();
  v11 = sub_1AF0D82B4(v10, 0xD000000000000013, 0x80000001AFF39C90);
  swift_unknownObjectRelease();
  v12 = sub_1AF8EEB08(a1, a2, a3, v11);

  if (!v5)
  {
    *a5 = v12;
    a5[3] = 0;
    a5[6] = 0;
  }

  return result;
}

void sub_1AF8EF174(uint64_t a1)
{
  v3 = v1[5];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[20];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[15];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[25];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v4 + 40));
  v12 = v1[30];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  os_unfair_lock_unlock(*(v4 + 40));
  v14 = v1[35];
  swift_getObjectType();
  v15 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v14);

  sub_1AF6B1B20(a1, v15, v14);
  os_unfair_lock_unlock(*(v4 + 40));
  v16 = v1[40];
  swift_getObjectType();
  v17 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v16);

  sub_1AF6B1B20(a1, v17, v16);
  os_unfair_lock_unlock(*(v4 + 40));
  v18 = v1[45];
  swift_getObjectType();
  v19 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v18);

  sub_1AF6B1B20(a1, v19, v18);
  os_unfair_lock_unlock(*(v4 + 40));
  v20 = v1[50];
  swift_getObjectType();
  v21 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v20);

  sub_1AF6B1B20(a1, v21, v20);
  os_unfair_lock_unlock(*(v4 + 40));
  v22 = v1[55];
  swift_getObjectType();
  v23 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v22);

  sub_1AF6B1B20(a1, v23, v22);
  os_unfair_lock_unlock(*(v4 + 40));
  v24 = v1[60];
  swift_getObjectType();
  v25 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v24);

  sub_1AF6B1B20(a1, v25, v24);
  os_unfair_lock_unlock(*(v4 + 40));
  v26 = v1[65];
  swift_getObjectType();
  v27 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v26);

  sub_1AF6B1B20(a1, v27, v26);
  os_unfair_lock_unlock(*(v4 + 40));
  v28 = v1[70];
  swift_getObjectType();
  v29 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v28);

  sub_1AF6B1B20(a1, v29, v28);
  os_unfair_lock_unlock(*(v4 + 40));
  v30 = v1[75];
  swift_getObjectType();
  v31 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v30);

  sub_1AF6B1B20(a1, v31, v30);
  os_unfair_lock_unlock(*(v4 + 40));
  v32 = v1[80];
  swift_getObjectType();
  v33 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v32);

  sub_1AF6B1B20(a1, v33, v32);
  os_unfair_lock_unlock(*(v4 + 40));
  v34 = v1[85];
  swift_getObjectType();
  v35 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v34);

  sub_1AF6B1B20(a1, v35, v34);
  os_unfair_lock_unlock(*(v4 + 40));
  v36 = v1[10];
  swift_getObjectType();
  v37 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v36);

  sub_1AF6B1B20(a1, v37, v36);
  v38 = *(v4 + 40);

  os_unfair_lock_unlock(v38);
}

void sub_1AF8EF900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) == 1 && a2 != 0)
  {
    v5 = *(a2 + 112);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = v5 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
    v8 = *(v5 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);

    os_unfair_lock_lock(v8);
    v9 = (v5 + OBJC_IVAR____TtC3VFX11ShaderCache_reloadCallback);
    *v9 = sub_1AF8FF534;
    v9[1] = v6;

    os_unfair_lock_unlock(*(v7 + 24));
  }

  sub_1AF8EFD18(a1);
}

uint64_t sub_1AF8EFA0C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v2 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock;
    v5 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock + 24);

    os_unfair_lock_lock(v5);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1AF8FF53C;
    *(v6 + 24) = v3;
    v7 = OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks;
    v8 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1AF4221DC(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1AF4221DC(v10 > 1, v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1AF464154;
    v12[5] = v6;
    *(v2 + v7) = v8;
    os_unfair_lock_unlock(*(v4 + 24));
  }

  return result;
}

uint64_t sub_1AF8EFB74(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v21 = qword_1ED73B840;
    v22 = 0;
    v23 = 2;
    v24 = 0;
    v25 = 2;
    v26 = 0;
    sub_1AF703280(3, v3);
    v19[0] = v3[0];
    v19[1] = v3[1];
    v20 = v4;
    sub_1AF6B06C0(v2, v19, 0x200000000, &v5);
    if (v5)
    {
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v12 = v5;
      v18 = v11;
      v13 = v6;
      v14 = v7;
      sub_1AF6B9BF4();
      sub_1AF8FE1E4(&v5, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    sub_1AF885E08(v2);
    sub_1AF8FE1E4(v3, &unk_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30, sub_1AF5DD590);
  }

  return result;
}

void sub_1AF8EFD18(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v314 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v2;
  LODWORD(v313) = v3;

  CACurrentMediaTime();
  v6 = *(v1 + 136);
  v599[0] = *(v1 + 120);
  v599[1] = v6;
  v307 = v1;
  v600 = *(v1 + 152);
  v304 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v5, v599, 0x200000000, &v338);
  if (v338)
  {
    v444 = v341;
    v445 = v342;
    v446 = v343;
    v441 = v338;
    v447 = v344;
    v442 = v339;
    v443 = v340;
    sub_1AF8DAFC8(0);
    sub_1AF8FE1E4(&v338, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v7 = *(v307 + 176);
  v597[0] = *(v307 + 160);
  v597[1] = v7;
  v598 = *(v307 + 192);
  sub_1AF6B06C0(v5, v597, 0x200000000, &v345);
  v312 = v5;
  if (!v345)
  {
    goto LABEL_21;
  }

  if (v352 <= 0 || (v315 = v349) == 0)
  {
    sub_1AF8FE1E4(&v345, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
LABEL_21:
    v12 = 0;
    v24 = v307;
    goto LABEL_23;
  }

  v311 = v348;
  v8 = v350;
  v9 = v351;
  i = *(v350 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v317 = *(v351 + 32);
  v448 = v345;
  v449 = v346;
  v450 = v347;

  v11 = 0;
  v12 = 0;
  LODWORD(v310) = i;
  do
  {
    v318 = v12;
    v316 = v11;
    v13 = (v311 + 48 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(v13 + 2);
    v19 = *(v13 + 4);
    v18 = *(v13 + 5);
    if (i)
    {
      v20 = *(v18 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v18 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v317);
    v21 = *(v9 + 64);
    v593[0] = *(v9 + 48);
    v593[1] = v21;
    v594 = *(v9 + 80);
    v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
    *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v22, 8);
    *(v9 + 56) = v22;
    *(v9 + 72) = 0;
    *(v9 + 80) = 0;
    *(v9 + 64) = 0;
    if (v17)
    {
      for (i = v310; v19; --v19)
      {
        v23 = *v17++;
        v595[0] = v8;
        v595[1] = v18;
        v595[2] = v9;
        v595[3] = v16;
        v595[4] = v23;
        sub_1AF901CCC(v595);
        ++v16;
      }
    }

    else
    {
      i = v310;
      if (v15 != v14)
      {
        do
        {
          v596[0] = v8;
          v596[1] = v18;
          v596[2] = v9;
          v596[3] = v16;
          v596[4] = v15;
          sub_1AF901CCC(v596);
          ++v16;
          ++v15;
        }

        while (v14 != v15);
      }
    }

    v12 = v318;
    sub_1AF630994(v9, &v448, v593);
    sub_1AF62D29C(v18);
    ecs_stack_allocator_pop_snapshot(v317);
    if (i)
    {
      os_unfair_lock_unlock(*(v18 + 344));
      os_unfair_lock_unlock(*(v18 + 376));
    }

    v11 = (v316 + 1);
  }

  while (v316 + 1 != v315);
  sub_1AF8FE1E4(&v345, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  v24 = v307;

  v5 = v312;
LABEL_23:
  v592 = *(v24 + 312);
  v25 = *(v24 + 296);
  v591[0] = *(v24 + 280);
  v591[1] = v25;
  sub_1AF6B06C0(v5, v591, 0x200000000, &v353);
  if (v353)
  {
    if (v360 > 0)
    {
      v311 = v357;
      if (v357)
      {
        v310 = v356;
        v26 = v358;
        v27 = v359;
        LODWORD(v317) = *(v358 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v316 = *(v359 + 32);
        v451 = v353;
        v452 = v354;
        v453 = v355;

        v28 = 0;
        do
        {
          v315 = v28;
          v29 = &v310[24 * v28];
          v30 = *v29;
          v31 = *(v29 + 1);
          v32 = *(v29 + 2);
          v33 = *(v29 + 2);
          v35 = *(v29 + 4);
          v34 = *(v29 + 5);
          v318 = v12;
          if (v317)
          {
            v36 = *(v34 + 376);

            os_unfair_lock_lock(v36);
            os_unfair_lock_lock(*(v34 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v316);
          v37 = *(v27 + 64);
          v587[0] = *(v27 + 48);
          v587[1] = v37;
          v588 = *(v27 + 80);
          v38 = *(*(*(*(v34 + 40) + 16) + 32) + 16) + 1;
          *(v27 + 48) = ecs_stack_allocator_allocate(*(v27 + 32), 48 * v38, 8);
          *(v27 + 56) = v38;
          *(v27 + 72) = 0;
          *(v27 + 80) = 0;
          *(v27 + 64) = 0;
          if (v33)
          {
            for (; v35; --v35)
            {
              v39 = *v33++;
              v589[0] = v26;
              v589[1] = v34;
              v589[2] = v27;
              v589[3] = v32;
              v589[4] = v39;
              sub_1AF901CCC(v589);
              ++v32;
            }
          }

          else if (v30 != v31)
          {
            do
            {
              v590[0] = v26;
              v590[1] = v34;
              v590[2] = v27;
              v590[3] = v32;
              v590[4] = v30;
              sub_1AF901CCC(v590);
              ++v32;
              ++v30;
            }

            while (v31 != v30);
          }

          v12 = v318;
          sub_1AF630994(v27, &v451, v587);
          sub_1AF62D29C(v34);
          ecs_stack_allocator_pop_snapshot(v316);
          if (v317)
          {
            os_unfair_lock_unlock(*(v34 + 344));
            os_unfair_lock_unlock(*(v34 + 376));
          }

          v28 = v315 + 1;
        }

        while (v315 + 1 != v311);
        sub_1AF8FE1E4(&v353, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
        v40 = v307;

        v5 = v312;
        goto LABEL_42;
      }
    }

    sub_1AF8FE1E4(&v353, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v40 = v307;
LABEL_42:
  v41 = *(v40 + 56);
  v585[0] = *(v40 + 40);
  v585[1] = v41;
  v586 = *(v40 + 72);
  sub_1AF6B06C0(v5, v585, 0x200000000, v361);
  v311 = *&v361[0];
  if (!*&v361[0])
  {
    v44 = v307;
    goto LABEL_66;
  }

  v310 = *(&v361[2] + 1);
  v42 = *(&v362 + 1);
  v43 = *(&v363 + 1);
  v318 = v363;
  v439 = *(v361 + 8);
  v440 = *(&v361[1] + 8);
  v44 = v307;
  if (v364 <= 0 || !*(&v362 + 1))
  {
    sub_1AF8FE1E4(v361, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    goto LABEL_66;
  }

  v317 = *(*(&v363 + 1) + 32);
  v45 = v318[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];
  v560 = v361[2];
  v561 = v362;
  v562 = v363;
  v563 = v364;
  v558 = v361[0];
  v559 = v361[1];
  sub_1AF5DD298(&v558, v540);
  v46 = 0;
  LODWORD(v308) = v45;
  v309 = v42;
  do
  {
    v316 = v46;
    v47 = &v310[24 * v46];
    v48 = *v47;
    v49 = *(v47 + 1);
    v50 = *(v47 + 2);
    v51 = *(v47 + 2);
    v315 = *(v47 + 3);
    v52 = *(v47 + 4);
    v5 = *(v47 + 5);
    if (v45)
    {
      v53 = *(v5 + 376);

      os_unfair_lock_lock(v53);
      os_unfair_lock_lock(*(v5 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v317);
    v54 = *(v43 + 64);
    v581[0] = *(v43 + 48);
    v581[1] = v54;
    v582 = *(v43 + 80);
    v55 = *(*(*(*(v5 + 40) + 16) + 32) + 16) + 1;
    *(v43 + 48) = ecs_stack_allocator_allocate(*(v43 + 32), 48 * v55, 8);
    *(v43 + 56) = v55;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    *(v43 + 64) = 0;
    v56 = sub_1AF64B110(&type metadata for TextureLoadingOptions, &off_1F2543FE0, v51, v315, v52, v43);
    v57 = v56;
    if (!v51)
    {
      v60 = &v56[64 * v48];
      while (v49 != v48)
      {
        v51 = (v48 + 1);
        v584[0] = v318;
        v584[1] = v5;
        v584[2] = v43;
        v584[3] = v50;
        v584[4] = v48;
        sub_1AF901FA0(v584, v60);
        v60 += 8;
        ++v50;
        ++v48;
        if (v12)
        {
          goto LABEL_274;
        }
      }

LABEL_60:
      v58 = v309;
      goto LABEL_61;
    }

    if (!v52)
    {
      goto LABEL_60;
    }

    v58 = v309;
    do
    {
      v59 = *v51;
      v51 += 8;
      v583[0] = v318;
      v583[1] = v5;
      v583[2] = v43;
      v583[3] = v50;
      v583[4] = v59;
      sub_1AF901FA0(v583, v57);
      if (v12)
      {
        goto LABEL_274;
      }

      ++v50;
      v57 += 8;
      --v52;
    }

    while (v52);
LABEL_61:
    v454 = v311;
    v455 = v439;
    v456 = v440;
    sub_1AF630994(v43, &v454, v581);
    sub_1AF62D29C(v5);
    ecs_stack_allocator_pop_snapshot(v317);
    v45 = v308;
    if (v308)
    {
      os_unfair_lock_unlock(*(v5 + 344));
      os_unfair_lock_unlock(*(v5 + 376));
    }

    v46 = (v316 + 1);
  }

  while (v316 + 1 != v58);
  v61 = MEMORY[0x1E69E6720];
  sub_1AF8FE1E4(v361, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  sub_1AF8FE1E4(v361, &qword_1ED725EA0, &type metadata for QueryResult, v61, sub_1AF90540C);
  v5 = v312;
  v44 = v307;
LABEL_66:
  if (*(v5 + 56) == 1)
  {
    v62 = *(v44 + 96);
    v579[0] = *(v44 + 80);
    v579[1] = v62;
    v580 = *(v44 + 112);
    sub_1AF6B06C0(v5, v579, 0x200000000, &v365);
    if (v365)
    {
      v575 = v368;
      v576 = v369;
      v577 = v370;
      v573 = v366;
      v574 = v367;
      v578 = v371;
      v572 = v365;

      sub_1AFD1A5E4(&v572, v5, v314);

      sub_1AF8FE1E4(&v365, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    v44 = v307;
  }

  v63 = *(v44 + 216);
  v570[0] = *(v44 + 200);
  v570[1] = v63;
  v571 = *(v44 + 232);
  sub_1AF6B06C0(v5, v570, 0x200000000, v372);
  if (*&v372[0])
  {
    if (v376 >= 1 && v374)
    {
      v64 = v373;
      v309 = v375;
      v65 = v373 + 48 * v374;
      v300 = v65;
      do
      {
        v66 = *(v64 + 40);
        v67 = *(v66 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v67);
        os_unfair_lock_lock(*(v66 + 344));
        v68 = *(v66 + 24);

        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        memset(v540, 0, 40);
        v69 = sub_1AF65A4B4(v68, &type metadata for TextureGPURepresentationDoNotUpload, &off_1F25461B8, 0, 0, &v558, v540);

        sub_1AF5DD41C(v540);
        sub_1AF5DD41C(&v558);
        if (sub_1AF649CEC(v69))
        {
          sub_1AF649D40(v69, v309);
          v5 = v312;
        }

        else
        {
          v70 = v12;
          v72 = *(v66 + 232);
          v71 = *(v66 + 240);
          LODWORD(v303) = *(v66 + 120);
          v317 = *(v66 + 28);
          LODWORD(v316) = *(v66 + 32);
          v73 = *(v66 + 16);
          v74 = *(v66 + 40);
          v75 = v74[200];
          v315 = *(*(v73 + 88) + 8 * v69 + 32);

          if ((v75 & 1) != 0 || *(v315 + 200) == 1)
          {
            *(v73 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v74 = *(v66 + 40);
          }

          v76 = v74[212];
          v308 = v64;
          if (v76)
          {
            LODWORD(v306) = 0;
          }

          else
          {
            LODWORD(v306) = *(v315 + 212);
          }

          v77 = v70;
          LODWORD(v305) = v74[208];
          v311 = *(v66 + 128);
          v78 = *(v66 + 256);
          sub_1AF5B4FCC(v74, v72, v71, 0, v66);
          v79 = v77;
          v80 = *(v66 + 256);
          v81 = v80 - v78;
          v310 = v78;
          if (v80 == v78)
          {
            v82 = 0;
          }

          else
          {
            v82 = v78;
          }

          *&v540[0] = v82;
          v83 = *(*(v66 + 40) + 24);
          v84 = *(v83 + 16);
          if (v84)
          {
            v318 = v79;
            v301 = v83;
            v302 = v80;
            v85 = v83 + 32;

            for (j = 0; j != v84; ++j)
            {
              v87 = (v85 + 40 * j);
              if ((v87[4] & 1) == 0)
              {
                v88 = *v87;
                v90 = v87[2];
                v89 = v87[3];
                v91 = *(v315 + 24);
                v92 = *(v91 + 16);
                if (v92)
                {
                  v93 = (v91 + 32);
                  while (*v93 != v88)
                  {
                    v93 += 5;
                    if (!--v92)
                    {
                      goto LABEL_88;
                    }
                  }
                }

                else
                {
LABEL_88:
                  sub_1AF640BC8(v311 + v90 * v82 + v89, v81);
                }
              }
            }

            v80 = v302;
            v79 = v318;
          }

          v64 = v308;
          if (*(v73 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v73 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v66 + 72) * v81);
          }

          if (*(v66 + 184))
          {
            v94 = 0;
          }

          else
          {
            v94 = *(v66 + 168);
          }

          *&v524 = 0;

          MEMORY[0x1EEE9AC00](v95);
          v96 = v317;
          v97 = v316;
          v290 = 0u;
          v291 = v540;
          v292 = v311;
          v293 = &v524;
          LOBYTE(v294) = v305;
          HIDWORD(v294) = v69;
          LOBYTE(v295) = v306;
          v296 = v309;
          *&v559 = v94;
          DWORD2(v559) = -1;
          *&v560 = v310;
          *(&v560 + 1) = v80;
          *&v561 = v310;
          *(&v561 + 1) = v80;
          *&v558 = v310;
          *(&v558 + 1) = v80;
          if (v81 >= 1)
          {
            do
            {
              LOBYTE(v483) = v97;
              sub_1AF6248A8(v69, v96 | (v97 << 32), v303, v73, &v558, sub_1AF5C5E08);
              v97 = v316;
              v96 = v317;
            }

            while ((*(&v558 + 1) - v558) > 0);
          }

          v12 = v79;
          v98 = *(v66 + 192);
          v5 = v312;
          v65 = v300;
          if (v98)
          {
            v99 = *(v66 + 208);
            sub_1AF75D364(v310, v80, v98);
            sub_1AF75D364(v310, v80, v99);
          }
        }

        v64 += 48;
        os_unfair_lock_unlock(*(v66 + 344));
        os_unfair_lock_unlock(*(v66 + 376));
      }

      while (v64 != v65);
    }

    sub_1AF8FE1E4(v372, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v100 = *(v307 + 256);
  v568[0] = *(v307 + 240);
  v568[1] = v100;
  v569 = *(v307 + 272);
  sub_1AF6B06C0(v5, v568, 0x200000000, v377);
  if (*&v377[0])
  {
    if (v381 >= 1 && v379)
    {
      v101 = v378;
      v102 = v380;
      v103 = &v378[24 * v379];
      v300 = v103;
      v301 = v380;
      do
      {
        v104 = *(v101 + 5);
        v105 = *(v104 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v105);
        os_unfair_lock_lock(*(v104 + 344));
        v106 = *(v104 + 24);

        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        memset(v540, 0, 40);
        v107 = sub_1AF65A4B4(v106, &type metadata for TextureGPURepresentationDoNotDownload, &off_1F2546118, 0, 0, &v558, v540);

        sub_1AF5DD41C(v540);
        sub_1AF5DD41C(&v558);
        if (sub_1AF649CEC(v107))
        {
          sub_1AF649D40(v107, v102);
          v5 = v312;
        }

        else
        {
          v108 = v12;
          v110 = *(v104 + 232);
          v109 = *(v104 + 240);
          LODWORD(v305) = *(v104 + 120);
          v317 = *(v104 + 28);
          LODWORD(v316) = *(v104 + 32);
          v111 = *(v104 + 16);
          v112 = *(v104 + 40);
          v113 = v112[200];
          v315 = *(*(v111 + 88) + 8 * v107 + 32);

          if ((v113 & 1) != 0 || *(v315 + 200) == 1)
          {
            *(v111 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v112 = *(v104 + 40);
          }

          v114 = v112[212];
          v309 = v101;
          if (v114)
          {
            LODWORD(v308) = 0;
          }

          else
          {
            LODWORD(v308) = *(v315 + 212);
          }

          v115 = v108;
          LODWORD(v306) = v112[208];
          v311 = *(v104 + 128);
          v116 = *(v104 + 256);
          sub_1AF5B4FCC(v112, v110, v109, 0, v104);
          v117 = *(v104 + 256);
          v118 = v117 - v116;
          v310 = v116;
          if (v117 == v116)
          {
            v119 = 0;
          }

          else
          {
            v119 = v116;
          }

          v120 = v119;
          *&v540[0] = v119;
          v121 = *(*(v104 + 40) + 24);
          v122 = *(v121 + 16);
          v318 = v115;
          if (v122)
          {
            v302 = v121;
            v303 = v117;
            v123 = v121 + 32;

            for (k = 0; k != v122; ++k)
            {
              v125 = (v123 + 40 * k);
              if ((v125[4] & 1) == 0)
              {
                v126 = *v125;
                v128 = v125[2];
                v127 = v125[3];
                v129 = *(v315 + 24);
                v130 = *(v129 + 16);
                if (v130)
                {
                  v131 = (v129 + 32);
                  while (*v131 != v126)
                  {
                    v131 += 5;
                    if (!--v130)
                    {
                      goto LABEL_126;
                    }
                  }
                }

                else
                {
LABEL_126:
                  sub_1AF640BC8(v311 + v128 * v120 + v127, v118);
                }
              }
            }

            v117 = v303;
          }

          v101 = v309;
          v102 = v301;
          if (*(v111 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v104 + 72) * v118);
          }

          if (*(v104 + 184))
          {
            v132 = 0;
          }

          else
          {
            v132 = *(v104 + 168);
          }

          *&v524 = 0;

          MEMORY[0x1EEE9AC00](v133);
          v134 = v317;
          v135 = v316;
          v290 = 0u;
          v291 = v540;
          v292 = v311;
          v293 = &v524;
          LOBYTE(v294) = v306;
          HIDWORD(v294) = v107;
          LOBYTE(v295) = v308;
          v296 = v301;
          *&v559 = v132;
          DWORD2(v559) = -1;
          *&v560 = v310;
          *(&v560 + 1) = v117;
          *&v561 = v310;
          *(&v561 + 1) = v117;
          *&v558 = v310;
          *(&v558 + 1) = v117;
          if (v118 >= 1)
          {
            do
            {
              LOBYTE(v483) = v135;
              sub_1AF6248A8(v107, v134 | (v135 << 32), v305, v111, &v558, sub_1AF5C5E08);
              v135 = v316;
              v134 = v317;
            }

            while ((*(&v558 + 1) - v558) > 0);
          }

          v12 = v318;
          v136 = *(v104 + 192);
          v5 = v312;
          v103 = v300;
          if (v136)
          {
            v137 = *(v104 + 208);
            v317 = *(v104 + 216);
            sub_1AF75D364(v310, v117, v136);
            v103 = v300;
            sub_1AF75D364(v310, v117, v137);
          }
        }

        v101 += 24;
        os_unfair_lock_unlock(*(v104 + 344));
        os_unfair_lock_unlock(*(v104 + 376));
      }

      while (v101 != v103);
    }

    sub_1AF8FE1E4(v377, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v138 = *(v307 + 336);
  v566[0] = *(v307 + 320);
  v566[1] = v138;
  v567 = *(v307 + 352);
  sub_1AF6B06C0(v5, v566, 0x200000000, v382);
  v334 = v382[2];
  v335 = v382[3];
  v336 = v382[4];
  v337 = v382[5];
  v332 = v382[0];
  v333 = v382[1];
  if (*&v382[0])
  {
    v435 = *(&v382[2] + 8);
    v436 = *(&v382[3] + 8);
    v437 = *(&v382[4] + 8);
    *v434 = *&v382[0];
    v438 = *(&v382[5] + 1);
    *&v434[8] = *(v382 + 8);
    *&v434[24] = *(&v382[1] + 8);
    v139 = *(v314 + 120);
    v140 = *(v139 + 48);

    os_unfair_lock_lock(v140);
    v141 = *(v139 + 96) + 1;
    *(v139 + 96) = v141;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v558 = *(v139 + 64);
    *(v139 + 64) = 0x8000000000000000;
    sub_1AF8556AC(MEMORY[0x1E69E7CC8], v141, isUniquelyReferenced_nonNull_native);
    *(v139 + 64) = v558;
    v311 = *(v139 + 96);
    os_unfair_lock_unlock(*(v139 + 48));

    v308 = *(&v437 + 1);
    if (*(&v437 + 1) >= 1)
    {
      v303 = v436;
      if (v436)
      {
        v306 = v437;
        v143 = *(v437 + 32);
        v301 = v435;
        v302 = *(&v436 + 1);
        v144 = *(*(&v436 + 1) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v540[2] = v334;
        v541 = v335;
        v542 = v336;
        v543 = v337;
        v540[0] = v332;
        v540[1] = v333;
        sub_1AF5DD298(v540, &v558);
        v145 = 0;
        v299 = v144;
        v300 = v143;
        while (1)
        {
          v146 = (v301 + 48 * v145);
          v147 = *v146;
          v148 = v146[1];
          v49 = v146[2];
          v50 = *(v146 + 2);
          v149 = *(v146 + 3);
          v150 = *(v146 + 4);
          v151 = *(v146 + 5);
          v305 = v145;
          v317 = v150;
          v318 = v149;
          if (v144)
          {
            v152 = *(v151 + 376);

            os_unfair_lock_lock(v152);
            os_unfair_lock_lock(*(v151 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v143);
          v153 = v306;
          v154 = *(v306 + 4);
          v43 = v540;
          v546[0] = *(v306 + 3);
          v546[1] = v154;
          v547 = v306[10];
          v155 = *(*(*(*(v151 + 40) + 16) + 32) + 16) + 1;
          v153[6] = ecs_stack_allocator_allocate(v306[4], 48 * v155, 8);
          v153[7] = v155;
          v153[9] = 0;
          v153[10] = 0;
          v153[8] = 0;
          LOBYTE(v524) = 1;
          *&v558 = v302;
          *(&v558 + 1) = v151;
          *&v559 = v153;
          *(&v559 + 1) = v49;
          *&v560 = (v148 - v147 + v49);
          *(&v560 + 1) = v308;
          *&v561 = v147;
          *(&v561 + 1) = v148;
          v562 = 0uLL;
          LOBYTE(v563) = 1;
          *(&v563 + 1) = v50;
          v564 = v318;
          v565 = v317;
          v156 = sub_1AF705C60(v151, &v558);
          v51 = v156;
          v157 = *(&v563 + 1);
          v318 = v151;
          if (*(&v563 + 1))
          {
            v158 = v565;
            v5 = v312;
            if (v565)
            {
              v159 = *(&v559 + 1);
              v310 = v558;
              v309 = v559;
              do
              {
                v160 = *v157;
                v316 = v158;
                v317 = v157 + 1;
                v548 = v310;
                v549 = v151;
                v550 = v309;
                v315 = v159;
                v551 = v159;
                v552 = v160;
                sub_1AF8DE828(v383);

                if (*(v151 + 184))
                {
                  goto LABEL_273;
                }

                v162 = *(*(v151 + 168) + 4 * v160);
                v163 = *(*(v161 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v162 + 8);

                v43 = v298;
                MEMORY[0x1EEE9AC00](v164);
                v50 = v311;
                *(&v290 + 1) = v51;
                v291 = v383;
                v292 = v311;
                LOBYTE(v293) = 0;
                v49 = v314;
                v294 = v312;
                v295 = v314;
                v165 = v162 | (v163 << 32);
                v166 = v312;
                v5 = v313;
                LOBYTE(v296) = v313;
                sub_1AFC3F950(v165, sub_1AF907070);

                if (*(v151 + 184))
                {
                  goto LABEL_273;
                }

                v168 = *(*(v151 + 168) + 4 * v160);
                v43 = *(*(v167 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v168 + 8);

                MEMORY[0x1EEE9AC00](v169);
                *(&v290 + 1) = v51;
                v291 = v383;
                v292 = v50;
                LOBYTE(v293) = 0;
                v294 = v166;
                v295 = v49;
                LOBYTE(v296) = v5;
                v170 = v168 | (v43 << 32);
                v151 = v318;
                v297 = v49;
                sub_1AFC3F3D8(v170, sub_1AF907088);
                v51 += 48;
                v159 = v315 + 1;
                v158 = (v316 - 1);
                v5 = v166;
                v157 = v317;
              }

              while (v316 != 1);
            }
          }

          else
          {
            v315 = *(&v561 + 1);
            v49 = v561;
            v5 = v312;
            if (v561 != *(&v561 + 1))
            {
              v171 = *(&v559 + 1);
              v51 = &v156[48 * v561];
              v309 = v559;
              v310 = v558;
              while (1)
              {
                v553 = v310;
                v554 = v151;
                v555 = v309;
                v317 = v171;
                v556 = v171;
                v557 = v49;
                sub_1AF8DE828(v384);

                if (*(v151 + 184))
                {
                  break;
                }

                v173 = *(*(v151 + 168) + 4 * v49);
                v43 = *(*(v172 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v173 + 8);

                v316 = v298;
                MEMORY[0x1EEE9AC00](v174);
                *(&v290 + 1) = v51;
                v291 = v384;
                v175 = v311;
                v292 = v311;
                LOBYTE(v293) = 0;
                v294 = v5;
                v176 = v5;
                v5 = v314;
                v295 = v314;
                v177 = v173 | (v43 << 32);
                v178 = v318;
                v50 = v313;
                LOBYTE(v296) = v313;
                sub_1AFC3F950(v177, sub_1AF902698);

                if (v178[184])
                {
                  break;
                }

                v180 = *(*(v178 + 21) + 4 * v49);
                v43 = v49 + 1;
                v181 = *(*(v179 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v180 + 8);

                v316 = v298;
                MEMORY[0x1EEE9AC00](v182);
                *(&v290 + 1) = v51;
                v291 = v384;
                v292 = v175;
                LOBYTE(v293) = 0;
                v294 = v176;
                v295 = v5;
                LOBYTE(v296) = v50;
                v183 = v180 | (v181 << 32);
                v151 = v318;
                v297 = v5;
                sub_1AFC3F3D8(v183, sub_1AF9026B0);
                v51 += 48;
                v171 = v317 + 1;
                v49 = v43;
                v5 = v176;
                if (v315 == v43)
                {
                  goto LABEL_166;
                }
              }

LABEL_273:
              LODWORD(v297) = 0;
              v296 = 204;
              sub_1AFDFE518();
              __break(1u);
LABEL_274:

              *&v540[0] = v311;
              *(v540 + 8) = v439;
              *(&v540[1] + 8) = v440;
              v12 = 0;
              sub_1AF630994(v43, v540, v581);
              v191 = v43;
              sub_1AF62D29C(v5);
              ecs_stack_allocator_pop_snapshot(v317);
              os_unfair_lock_unlock(*(v5 + 344));
              os_unfair_lock_unlock(*(v5 + 376));
              __break(1u);
LABEL_275:

              v524 = *v434;
              v525 = *&v434[16];
              v526 = *&v434[32];
              v288 = &v524;
              v289 = v538;
LABEL_278:
              v12 = 0;
              sub_1AF630994(v191, v288, v289);
              sub_1AF62D29C(v50);
              ecs_stack_allocator_pop_snapshot(v49);
              os_unfair_lock_unlock(*(v50 + 344));
              os_unfair_lock_unlock(*(v50 + 376));
              __break(1u);
LABEL_279:

              v467 = v310;
              v468 = v428;
              v469 = v429;
              sub_1AF630994(v191, &v467, v473);
              sub_1AF62D29C(v51);
              ecs_stack_allocator_pop_snapshot(v43);
              os_unfair_lock_unlock(*(v51 + 43));
              os_unfair_lock_unlock(*(v51 + 47));
              __break(1u);
              return;
            }
          }

LABEL_166:
          v459[0] = *v434;
          v459[1] = *&v434[16];
          v460 = *&v434[32];
          sub_1AF630994(v306, v459, v546);
          sub_1AF62D29C(v151);
          v143 = v300;
          ecs_stack_allocator_pop_snapshot(v300);
          v144 = v299;
          if (v299)
          {
            os_unfair_lock_unlock(*(v151 + 344));
            os_unfair_lock_unlock(*(v151 + 376));
          }

          v145 = v305 + 1;
          if ((v305 + 1) == v303)
          {
            sub_1AF8FE1E4(v382, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
            break;
          }
        }
      }
    }

    v184 = v314;

    sub_1AF74C154(v311);

    v185 = sub_1AF6B9944();
    sub_1AF9024D0(v5, v184, v185);

    v187 = *(v184 + 528);
    v188 = *(v187 + 16);
    if (v188)
    {
      swift_unknownObjectRetain();
      [v188 commit];
      swift_unknownObjectRelease();
      *(v187 + 16) = 0;
      v186 = swift_unknownObjectRelease();
    }

    MEMORY[0x1EEE9AC00](v186);
    v306 = &v290 + 1;
    v292 = v5;
    v293 = v5;
    v294 = v314;
    LOBYTE(v295) = v313;
    v296 = v307;
    v297 = v314;
    if (v308 >= 1)
    {
      v190 = v436;
      if (v436)
      {
        v303 = v189;
        v191 = v437;
        v49 = *(v437 + 32);
        v192 = v12;
        v193 = v435;
        v305 = *(&v436 + 1);
        LODWORD(v317) = *(*(&v436 + 1) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        sub_1AF8FF144(v382, v540, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
        v194 = (v193 + 24);
        v12 = v192;
        while (1)
        {
          v316 = v190;
          v51 = *(v194 - 6);
          v43 = *(v194 - 5);
          v195 = *(v194 - 4);
          v196 = *v194;
          v315 = *(v194 - 1);
          v50 = v194[2];
          v309 = v194[1];
          v310 = v196;
          v318 = v12;
          if (v317)
          {
            v197 = *(v50 + 376);

            os_unfair_lock_lock(v197);
            os_unfair_lock_lock(*(v50 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v49);
          v198 = *(v191 + 64);
          v538[0] = *(v191 + 48);
          v538[1] = v198;
          v539 = *(v191 + 80);
          v199 = *(*(*(*(v50 + 40) + 16) + 32) + 16) + 1;
          *(v191 + 48) = ecs_stack_allocator_allocate(*(v191 + 32), 48 * v199, 8);
          *(v191 + 56) = v199;
          *(v191 + 72) = 0;
          *(v191 + 80) = 0;
          *(v191 + 64) = 0;
          LOBYTE(v524) = 1;
          *&v540[0] = v305;
          *(&v540[0] + 1) = v50;
          *&v540[1] = v191;
          *(&v540[1] + 1) = v195;
          *&v540[2] = (v43 - v51 + v195);
          *(&v540[2] + 1) = v308;
          *&v541 = v51;
          *(&v541 + 1) = v43;
          v542 = 0uLL;
          LOBYTE(v543) = 1;
          *(&v543 + 1) = v315;
          v544 = v310;
          v545 = v309;
          v12 = v318;
          sub_1AF8F9DC8(v540, sub_1AF902670, v306);
          if (v12)
          {
            goto LABEL_275;
          }

          v457[0] = *v434;
          v457[1] = *&v434[16];
          v458 = *&v434[32];
          sub_1AF630994(v191, v457, v538);
          sub_1AF62D29C(v50);
          ecs_stack_allocator_pop_snapshot(v49);
          v5 = v312;
          v200 = v316;
          if (v317)
          {
            os_unfair_lock_unlock(*(v50 + 344));
            os_unfair_lock_unlock(*(v50 + 376));
          }

          v194 += 6;
          v190 = v200 - 1;
          if (!v190)
          {
            sub_1AF8FE1E4(v382, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
            v201 = v311;
            goto LABEL_183;
          }
        }
      }
    }

    v201 = v311;
LABEL_183:

    sub_1AF74C750(v201);
    sub_1AF8FE1E4(v382, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v325 = MEMORY[0x1E69E7CC0];
  v202 = *(v307 + 376);
  v536[0] = *(v307 + 360);
  v536[1] = v202;
  v537 = *(v307 + 392);
  sub_1AF6B06C0(v5, v536, 0x200000000, v385);
  v329 = v386;
  v330 = v387;
  v331 = v388;
  v326 = v385[0];
  v327 = v385[1];
  v328 = v385[2];
  v309 = *&v385[0];
  if (*&v385[0])
  {
    v204 = *(&v385[2] + 1);
    v205 = *(&v386 + 1);
    v191 = *(&v387 + 1);
    v308 = v387;
    v432 = *(v385 + 8);
    v433 = *(&v385[1] + 8);
    MEMORY[0x1EEE9AC00](v203);
    v305 = &v290 + 8;
    v306 = v206;
    v292 = &v325;
    v293 = v5;
    v294 = v5;
    v295 = v314;
    LOBYTE(v296) = v313;
    v297 = v314;
    if (v206 > 0 && v205)
    {
      v303 = v298;
      v207 = *(v191 + 32);
      LODWORD(v317) = *(v308 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v485 = v328;
      v486 = v329;
      v487 = v330;
      v488 = v331;
      v483 = v326;
      v484 = v327;
      sub_1AF5DD298(&v483, &v524);
      v208 = (v204 + 24);
      while (1)
      {
        v316 = v205;
        v49 = v207;
        v51 = *(v208 - 6);
        v209 = *(v208 - 5);
        v43 = *(v208 - 4);
        v210 = *v208;
        v315 = *(v208 - 1);
        v50 = v208[2];
        v310 = v208[1];
        v311 = v210;
        v318 = v12;
        if (v317)
        {
          v211 = *(v50 + 376);

          os_unfair_lock_lock(v211);
          os_unfair_lock_lock(*(v50 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v49);
        v212 = *(v191 + 64);
        v522[0] = *(v191 + 48);
        v522[1] = v212;
        v523 = *(v191 + 80);
        v213 = *(*(*(*(v50 + 40) + 16) + 32) + 16) + 1;
        *(v191 + 48) = ecs_stack_allocator_allocate(*(v191 + 32), 48 * v213, 8);
        *(v191 + 56) = v213;
        *(v191 + 72) = 0;
        *(v191 + 80) = 0;
        *(v191 + 64) = 0;
        LOBYTE(v475[0]) = 1;
        *&v524 = v308;
        *(&v524 + 1) = v50;
        *&v525 = v191;
        *(&v525 + 1) = v43;
        v526 = (v209 - v51 + v43);
        v527 = v306;
        v528 = v51;
        v529 = v209;
        v530 = 0;
        v531 = 0;
        v532 = 1;
        v533 = v315;
        v534 = v311;
        v535 = v310;
        v12 = v318;
        sub_1AF8F9EFC(&v524, sub_1AF902648, v305);
        if (v12)
        {
          break;
        }

        v461 = v309;
        v462 = v432;
        v463 = v433;
        sub_1AF630994(v191, &v461, v522);
        sub_1AF62D29C(v50);
        ecs_stack_allocator_pop_snapshot(v49);
        v207 = v49;
        v214 = v316;
        if (v317)
        {
          os_unfair_lock_unlock(*(v50 + 344));
          os_unfair_lock_unlock(*(v50 + 376));
        }

        v208 += 6;
        v205 = v214 - 1;
        if (!v205)
        {
          v216 = MEMORY[0x1E69E6720];
          sub_1AF8FE1E4(v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
          sub_1AF8FE1E4(v385, &qword_1ED725EA0, &type metadata for QueryResult, v216, sub_1AF90540C);
          v5 = v312;
          goto LABEL_198;
        }
      }

      *&v475[0] = v309;
      *(v475 + 8) = v432;
      *(&v475[1] + 8) = v433;
      v288 = v475;
      v289 = v522;
      goto LABEL_278;
    }

    sub_1AF8FE1E4(v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
LABEL_198:
    v215 = v307;
  }

  else
  {
    v215 = v307;
  }

  v217 = *(v215 + 496);
  v520[0] = *(v215 + 480);
  v520[1] = v217;
  v521 = *(v215 + 512);
  sub_1AF6B06C0(v5, v520, 0x200000000, &v389);
  if (v389)
  {
    v516 = v392;
    v517 = v393;
    v518 = v394;
    v514 = v390;
    v515 = v391;
    v519 = v395;
    v513 = v389;
    v218 = v314;

    sub_1AFD1B464(&v513, v218);

    sub_1AF8FE1E4(&v389, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v512 = *(v307 + 472);
  v219 = *(v307 + 456);
  v511[0] = *(v307 + 440);
  v511[1] = v219;
  sub_1AF6B06C0(v5, v511, 0x200000000, &v396);
  if (v396)
  {
    v507 = v399;
    v508 = v400;
    v509 = v401;
    v505 = v397;
    v506 = v398;
    v510 = v402;
    v504 = v396;
    v220 = v314;

    sub_1AFD1C044(&v504, v220);

    sub_1AF8FE1E4(&v396, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v503 = *(v307 + 712);
  v221 = *(v307 + 696);
  v502[0] = *(v307 + 680);
  v502[1] = v221;
  sub_1AF6B06C0(v5, v502, 0x200000000, &v403);
  if (v403)
  {
    v498 = v406;
    v499 = v407;
    v500 = v408;
    v496 = v404;
    v497 = v405;
    v501 = v409;
    v495 = v403;
    v222 = v314;

    sub_1AFD15768(&v495, &v325, v222);

    sub_1AF8FE1E4(&v403, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v223 = *(v307 + 576);
  v493[0] = *(v307 + 560);
  v493[1] = v223;
  v494 = *(v307 + 592);
  sub_1AF6B06C0(v5, v493, 0x200000000, v410);
  if (*&v410[0])
  {
    if (v414 >= 1 && v412)
    {
      v224 = v411;
      v309 = v413;
      v225 = v411 + 48 * v412;
      v300 = v225;
      do
      {
        v226 = *(v224 + 40);
        v227 = *(v226 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v227);
        os_unfair_lock_lock(*(v226 + 344));
        v228 = *(v226 + 24);

        *&v485 = 0;
        v483 = 0u;
        v484 = 0u;
        memset(v475, 0, 40);
        v229 = sub_1AF65A4B4(v228, &type metadata for TextureGPURuntime, &off_1F2544388, 0, 0, &v483, v475);

        sub_1AF5DD41C(v475);
        sub_1AF5DD41C(&v483);
        if (sub_1AF649CEC(v229))
        {
          sub_1AF649D40(v229, v309);
          v5 = v312;
        }

        else
        {
          v308 = v224;
          v230 = v12;
          v232 = *(v226 + 232);
          v231 = *(v226 + 240);
          LODWORD(v303) = *(v226 + 120);
          v317 = *(v226 + 28);
          LODWORD(v316) = *(v226 + 32);
          v233 = *(v226 + 16);
          v234 = *(v226 + 40);
          v235 = v234[200];
          v315 = *(*(v233 + 88) + 8 * v229 + 32);

          if ((v235 & 1) != 0 || *(v315 + 200) == 1)
          {
            *(v233 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v234 = *(v226 + 40);
          }

          if (v234[212])
          {
            LODWORD(v306) = 0;
          }

          else
          {
            LODWORD(v306) = *(v315 + 212);
          }

          LODWORD(v305) = v234[208];
          v311 = *(v226 + 128);
          v236 = *(v226 + 256);
          sub_1AF5B4FCC(v234, v232, v231, 0, v226);
          v237 = v230;
          v310 = *(v226 + 256);
          v238 = v310 - v236;
          if (v310 == v236)
          {
            v239 = 0;
          }

          else
          {
            v239 = v236;
          }

          *&v475[0] = v239;
          v240 = *(*(v226 + 40) + 24);
          v241 = *(v240 + 16);
          if (v241)
          {
            v318 = v230;
            v301 = v240;
            v302 = v236;
            v242 = v240 + 32;

            for (m = 0; m != v241; ++m)
            {
              v244 = (v242 + 40 * m);
              if ((v244[4] & 1) == 0)
              {
                v245 = *v244;
                v247 = v244[2];
                v246 = v244[3];
                v248 = *(v315 + 24);
                v249 = *(v248 + 16);
                if (v249)
                {
                  v250 = (v248 + 32);
                  while (*v250 != v245)
                  {
                    v250 += 5;
                    if (!--v249)
                    {
                      goto LABEL_223;
                    }
                  }
                }

                else
                {
LABEL_223:
                  sub_1AF640BC8(v311 + v247 * v239 + v246, v238);
                }
              }
            }

            v236 = v302;
            v237 = v318;
          }

          v224 = v308;
          if (*(v233 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v233 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v226 + 72) * v238);
          }

          if (*(v226 + 184))
          {
            v251 = 0;
          }

          else
          {
            v251 = *(v226 + 168);
          }

          v420 = 0;

          MEMORY[0x1EEE9AC00](v252);
          v253 = v317;
          v254 = v316;
          v290 = 0u;
          v291 = v475;
          v292 = v311;
          v293 = &v420;
          LOBYTE(v294) = v305;
          HIDWORD(v294) = v229;
          LOBYTE(v295) = v306;
          v296 = v309;
          *&v484 = v251;
          DWORD2(v484) = -1;
          *&v485 = v236;
          *(&v485 + 1) = v310;
          *&v486 = v236;
          *(&v486 + 1) = v310;
          *&v483 = v236;
          *(&v483 + 1) = v310;
          if (v238 >= 1)
          {
            v255 = v303;
            do
            {
              LOBYTE(v415[0]) = v254;
              sub_1AF6248A8(v229, v253 | (v254 << 32), v255, v233, &v483, sub_1AF5C44B0);
              v254 = v316;
              v253 = v317;
            }

            while ((*(&v483 + 1) - v483) > 0);
          }

          v12 = v237;
          v256 = *(v226 + 192);
          v5 = v312;
          v225 = v300;
          if (v256)
          {
            v257 = *(v226 + 208);
            v258 = v310;
            sub_1AF75D364(v236, v310, v256);
            sub_1AF75D364(v236, v258, v257);
          }
        }

        v224 += 48;
        os_unfair_lock_unlock(*(v226 + 344));
        os_unfair_lock_unlock(*(v226 + 376));
      }

      while (v224 != v225);
    }

    sub_1AF8FE1E4(v410, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v492 = *(v307 + 632);
  v259 = *(v307 + 616);
  v491[0] = *(v307 + 600);
  v491[1] = v259;
  sub_1AF6B06C0(v5, v491, 0x200000000, v415);
  v321 = v415[2];
  v322 = v416;
  v323 = v417;
  v324 = v418;
  v319 = v415[0];
  v320 = v415[1];
  v311 = *&v415[0];
  if (*&v415[0])
  {
    v261 = *(&v415[2] + 1);
    v262 = *(&v416 + 1);
    v263 = *(&v417 + 1);
    v310 = v417;
    v430 = *(v415 + 8);
    v431 = *(&v415[1] + 8);
    MEMORY[0x1EEE9AC00](v260);
    v308 = &v290 + 8;
    v309 = v264;
    v292 = v5;
    v293 = &v325;
    v294 = v5;
    v295 = v314;
    LOBYTE(v296) = v313;
    v297 = v314;
    v265 = v307;
    if (v264 > 0 && v262)
    {
      v306 = v298;
      v49 = *(v263 + 32);
      LODWORD(v318) = *(v310 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v475[2] = v321;
      v476 = v322;
      v477 = v323;
      v478 = v324;
      v475[0] = v319;
      v475[1] = v320;
      sub_1AF5DD298(v475, &v483);
      v266 = (v261 + 24);
      while (1)
      {
        v191 = v263;
        v43 = *(v266 - 6);
        v51 = *(v266 - 5);
        v267 = *(v266 - 4);
        v268 = *v266;
        v316 = *(v266 - 1);
        v317 = v262;
        v315 = v268;
        v50 = v266[2];
        v313 = v266[1];
        if (v318)
        {
          v269 = *(v50 + 376);

          os_unfair_lock_lock(v269);
          os_unfair_lock_lock(*(v50 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v49);

        sub_1AF630914(v270, v191, v419);

        LOBYTE(v420) = 1;
        *&v483 = v310;
        *(&v483 + 1) = v50;
        *&v484 = v191;
        *(&v484 + 1) = v267;
        *&v485 = (v51 - v43 + v267);
        *(&v485 + 1) = v309;
        *&v486 = v43;
        *(&v486 + 1) = v51;
        v487 = 0uLL;
        LOBYTE(v488) = 1;
        *(&v488 + 1) = v316;
        v489 = v315;
        v490 = v313;
        sub_1AF889804(&v483, sub_1AF902614, v308);
        if (v12)
        {
          break;
        }

        v464 = v311;
        v465 = v430;
        v466 = v431;
        sub_1AF630994(v191, &v464, v419);
        sub_1AF62D29C(v50);
        ecs_stack_allocator_pop_snapshot(v49);
        v263 = v191;
        if (v318)
        {
          os_unfair_lock_unlock(*(v50 + 344));
          os_unfair_lock_unlock(*(v50 + 376));
        }

        v266 += 6;
        v262 = v317 - 1;
        if (v317 == 1)
        {
          v271 = MEMORY[0x1E69E6720];
          sub_1AF8FE1E4(v415, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
          sub_1AF8FE1E4(v415, &qword_1ED725EA0, &type metadata for QueryResult, v271, sub_1AF90540C);
          v5 = v312;
          v265 = v307;
          goto LABEL_258;
        }
      }

      v420 = v311;
      v421 = v430;
      v422 = v431;
      v288 = &v420;
      v289 = v419;
      goto LABEL_278;
    }

    sub_1AF8FE1E4(v415, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  else
  {
    v265 = v307;
  }

LABEL_258:
  v272 = *(v265 + 656);
  v481[0] = *(v265 + 640);
  v481[1] = v272;
  v482 = *(v265 + 672);
  sub_1AF6B06C0(v5, v481, 0x200000000, &v420);
  v310 = v420;
  if (v420)
  {
    v273 = v423;
    v274 = v424;
    v191 = v426;
    v428 = v421;
    v429 = v422;
    v308 = v427;
    v309 = v425;
    if (v427 > 0 && v424)
    {
      v275 = *(v426 + 32);
      v276 = *(v309 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF8FF144(&v420, v475, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      v277 = (v273 + 24);
      LODWORD(v307) = v276;
      while (1)
      {
        v278 = *(v277 - 5);
        v311 = *(v277 - 6);
        v279 = *(v277 - 4);
        v280 = *(v277 - 1);
        v315 = *v277;
        v316 = v280;
        v51 = v277[2];
        v313 = v277[1];
        v317 = v274;
        v318 = v12;
        if (v276)
        {
          v281 = *(v51 + 47);

          os_unfair_lock_lock(v281);
          os_unfair_lock_lock(*(v51 + 43));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v275);
        v282 = *(v191 + 64);
        v473[0] = *(v191 + 48);
        v473[1] = v282;
        v474 = *(v191 + 80);
        v283 = *(v191 + 32);
        v284 = *(*(*(*(v51 + 5) + 16) + 32) + 16) + 1;
        v43 = v275;

        *(v191 + 48) = ecs_stack_allocator_allocate(v283, 48 * v284, 8);
        *(v191 + 56) = v284;
        *(v191 + 72) = 0;
        *(v191 + 80) = 0;
        *(v191 + 64) = 0;

        LOBYTE(v467) = 1;
        *&v475[0] = v309;
        *(&v475[0] + 1) = v51;
        *&v475[1] = v191;
        *(&v475[1] + 1) = v279;
        *&v475[2] = (v278 - v311 + v279);
        *(&v475[2] + 1) = v308;
        *&v476 = v311;
        *(&v476 + 1) = v278;
        v477 = 0uLL;
        LOBYTE(v478) = 1;
        *(&v478 + 1) = v316;
        v479 = v315;
        v285 = v314;
        v480 = v313;

        v286 = v285;
        v12 = v318;
        sub_1AFD26420(v475, &v325, v286);
        if (v12)
        {
          goto LABEL_279;
        }

        v470 = v310;
        v471 = v428;
        v472 = v429;
        sub_1AF630994(v191, &v470, v473);
        sub_1AF62D29C(v51);
        ecs_stack_allocator_pop_snapshot(v275);
        v5 = v312;
        v276 = v307;
        if (v307)
        {
          os_unfair_lock_unlock(*(v51 + 43));
          os_unfair_lock_unlock(*(v51 + 47));
        }

        v277 += 6;
        v274 = v317 - 1;
        if (v317 == 1)
        {
          v287 = MEMORY[0x1E69E6720];
          sub_1AF8FE1E4(&v420, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
          sub_1AF8FE1E4(&v420, &qword_1ED725EA0, &type metadata for QueryResult, v287, sub_1AF90540C);

          goto LABEL_271;
        }
      }
    }

    sub_1AF8FE1E4(&v420, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

LABEL_271:
  sub_1AF9024D0(v5, v314, v325);
}

unint64_t sub_1AF8F3060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (result = sub_1AF41A390(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * result);
    if (v9 > 2)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_1AF858034(v9 + 1, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 32) = v15;

  v11 = *(a2 + 32);
  v12 = *(a2 + 8);
  v13 = *(v12 + 192);

  if (v13)
  {
    v14 = *(v12 + 208);
    *(v13 + 8 * (v11 >> 6)) |= 1 << v11;
    *(v14 + 8 * (v11 >> 6)) &= ~(1 << v11);
  }

  sub_1AF705804(v11);
}

id sub_1AF8F3174(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) != 0 || (result = [a1 status], result == 5))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = swift_allocObject();
      v9[2] = a4;
      v9[3] = a3;
      v9[4] = a5;

      sub_1AF66D948(sub_1AF90427C, v9);
    }
  }

  return result;
}

void sub_1AF8F325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v4 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_61:
    byte_1EB6C31AB = 0;
    return;
  }

  v8 = 0;
  v92 = 0;
  v9 = a1 + 32;
  v82 = "rl of an asset (";
  v83 = "_TtC3VFX19MeshReferenceSystem";
  v88 = "atus clear texture ";
  v89 = "equirectangularToCubeMipGen";
  v87 = (v5 + 8);
  v10 = &unk_1ED72C000;
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v4;
  while (1)
  {
    v11 = (v9 + 8 * v8);
    v12 = v11[1];
    v13 = *v11;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      break;
    }

LABEL_28:
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      if ((v13 != -1 || v12 != 0) && (v13 & 0x80000000) == 0)
      {
        v34 = (v32 + v10[284]);
        if (v34[1] > v13)
        {
          v35 = (*v34 + 12 * v13);
          v36 = *(v35 + 2);
          if (v12 == -1 || v35[2] == v12)
          {
            v37 = *(*(v32 + 144) + 8 * *v35 + 32);
            v38 = *(v37 + 48);
            v39 = (v38 + 32);
            v40 = *(v38 + 16) + 1;
            while (--v40)
            {
              v41 = v39 + 5;
              v42 = *v39;
              v39 += 5;
              if (v42 == &type metadata for TextureFileAsset)
              {
                v43 = (&(*(v41 - 2))[3 * v36].Kind + *(v37 + 128));
                v44 = v43[1];
                v84 = v43[2];
                v45 = v43[3];
                v46 = v43[4];
                v86 = v43[5];
                v90 = v32;
                v47 = v46;

                v95 = v45;

                v90 = v44;
                v85 = v47;
                if (v46)
                {
                  ObjectType = swift_getObjectType();
                  v80 = *(v86 + 8);
                  v81 = ObjectType;

                  v49 = v95;

                  v50 = v47;
                  v80(v84, v49, v81, v86);
                }

                else
                {
                  v60 = qword_1ED730EA0;

                  v61 = v95;

                  if (v60 != -1)
                  {
                    swift_once();
                  }

                  v96 = 0;
                  v97 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000020, v83 | 0x8000000000000000);
                  MEMORY[0x1B2718AE0](v84, v61);
                  MEMORY[0x1B2718AE0](0xD000000000000016, v82 | 0x8000000000000000);
                  v62 = v97;
                  v86 = v96;
                  v63 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    v77 = v63;
                    swift_once();
                    v63 = v77;
                  }

                  v96 = 0;
                  sub_1AF0D4F18(v63, &v96, v86, v62);

                  sub_1AFDFC018();
                }

                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v96 = 0;
                v97 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000033, v89 | 0x8000000000000000);
                v64 = sub_1AF656F38();
                MEMORY[0x1B2718AE0](v64);

                MEMORY[0x1B2718AE0](0xD000000000000012, v88 | 0x8000000000000000);
                sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
                v65 = v93;
                v66 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v66);

                v68 = v96;
                v67 = v97;
                v69 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  v76 = v69;
                  swift_once();
                  v69 = v76;
                }

                v96 = 0;
                sub_1AF0D4F18(v69, &v96, v68, v67);

                v70 = *(v91 + 120);
                v71 = *(v70 + 48);

                os_unfair_lock_lock(v71);
                v72 = *(v70 + 72);
                MEMORY[0x1EEE9AC00](v73);
                v78 = v65;

                v74 = v92;
                v75 = sub_1AF8FA484(sub_1AF751E78, (&v80 - 4), v72);
                v92 = v74;

                *(v70 + 72) = v75;

                os_unfair_lock_unlock(*(v70 + 48));

                (*v87)(v65, v94);
                v10 = &unk_1ED72C000;
                goto LABEL_4;
              }
            }
          }
        }
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      goto LABEL_61;
    }
  }

  if (v13 == -1 && v12 == 0)
  {
    goto LABEL_27;
  }

  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v17 = (Strong + v10[284]);
  if (v17[1] <= v13)
  {
    goto LABEL_27;
  }

  v18 = (*v17 + 12 * v13);
  if (v12 != -1 && v18[2] != v12)
  {
    goto LABEL_27;
  }

  v20 = *(v18 + 2);
  v21 = *(*(Strong + 144) + 8 * *v18 + 32);
  v95 = Strong;
  v22 = thread_worker_index(v15);
  if (*v22 == -1)
  {
    v23 = *(v95 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v23 = (*(v95 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v22 + 8);
  }

  v24 = *v23;
  v25 = *(v21 + 192);
  if (v25)
  {
    v26 = *(v21 + 208);
    *(v25 + 8 * (v20 >> 6)) |= 1 << v20;
    *(v26 + 8 * (v20 >> 6)) &= ~(1 << v20);
  }

  if (*(*(v21 + 40) + 213) != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

  v27 = *(v21 + 48);
  v28 = (v27 + 32);
  v29 = *(v27 + 16) + 1;
  v86 = v24;
  while (--v29)
  {
    v30 = v28 + 5;
    v31 = *v28;
    v28 += 5;
    if (v31 == &type metadata for PropagateDirtiness)
    {
      v90 = *(v30 - 2);
      goto LABEL_44;
    }
  }

  v90 = 0;
LABEL_44:
  v51 = *(v21 + 128);
  v52 = *(v21 + 184);

  if ((v52 & 1) == 0)
  {
    v54 = *(*(v21 + 168) + 4 * v20);
    v55 = (v51 + v90 + 8 * v20);
    v56 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v54 + 8);

    v57 = *v55;
    v58 = v55[1];
    if (v57 != -1 || v58 != 0)
    {
      sub_1AF70D248(&v96, v54 | (v56 << 32), v57 | (v58 << 32));
    }

    v10 = &unk_1ED72C000;
    goto LABEL_28;
  }

  v79 = 0;
  v78 = 204;
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF8F3A5C(__n128 *a1, uint64_t a2, unint64_t a3, void *a4, _OWORD *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v52 = a7;
  v53 = a6;
  v54 = a5;
  v57.n128_u64[0] = a3;
  v51 = a1;
  v55 = a9;
  v59 = sub_1AFDFC128();
  v58 = *(v59 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v17 = a4[2];
  v16 = a4[3];
  v18 = a4[4];
  v56.n128_u64[0] = v9;
  if (v18)
  {
    v19 = a4[5];
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(v17, v16, ObjectType, v19);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v62.n128_u64[0] = 0;
    v62.n128_u64[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v17, v16);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v21 = v62;
    v22 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v62.n128_u64[0] = 0;
    sub_1AF0D4F18(v22, &v62, v21.n128_i64[0], v21.n128_i64[1]);

    sub_1AFDFC018();
  }

  v60 = v15;
  if (*(*(v57.n128_u64[0] + 8) + 32) == 1)
  {
    v62.n128_u8[0] = 0;
    sub_1AF80F414(0);
  }

  v23 = v55;
  if (!v55)
  {
    return (*(v58 + 8))(v60, v59);
  }

  v57.n128_u64[0] = *(v55 + 120);
  v24 = v58;
  v25 = v59;
  (*(v58 + 16))(v12, v60, v59);
  v26 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v24 + 32))(v28 + v26, v12, v25);
  v29 = (v28 + v27);
  v30 = v54;
  v31 = v54[1];
  *v29 = *v54;
  v29[1] = v31;
  v29[2] = v30[2];
  *(v29 + 42) = *(v30 + 42);
  *(v28 + ((v27 + 65) & 0xFFFFFFFFFFFFFFF8)) = v23;
  if (v52)
  {
    v32 = v56.n128_u64[0];
    if (v53)
    {
      v33 = 2;
      swift_retain_n();

      v34 = 0;
      v28 = 0;
      v35 = 0;
    }

    else
    {
      swift_retain_n();

      v35 = 0;
      v33 = 0;
      v34 = sub_1AF903EE0;
    }
  }

  else
  {
    swift_retain_n();

    v33 = 1;
    v34 = sub_1AF903EE0;
    v32 = v56.n128_u64[0];
    v35 = v53;
  }

  sub_1AF74D574(0, v30, v34, v28, v35, v33, &v62);
  if (v32)
  {
    sub_1AF74E888(v34, v28, v35, v33);

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v37 = sub_1AFDFF1D8();
    v39 = v38;
    v40 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v49 = v40;
      swift_once();
      v40 = v49;
    }

    *&v61[0] = 0;
    sub_1AF0D4F18(v40, v61, v37, v39);

    return (*(v58 + 8))(v60, v59);
  }

  else
  {
    sub_1AF74E888(v34, v28, v35, v33);

    v41 = v64;
    v42 = v65;
    v43 = v67;
    if (v63.n128_u64[1] >> 1 != 0xFFFFFFFF || v66 >> 24)
    {
      v56 = v63;
      v57 = v62;
      if ((v66 & 0x8000000000000000) != 0)
      {
        v44 = v66 & 0x7FFFFFFFFFFFFFFFLL;
        (*(v58 + 8))(v60, v59);

        v45 = v51;
        v46 = v51[1];
        v61[0] = *v51;
        v61[1] = v46;
        v47 = v51[3];
        v61[2] = v51[2];
        v61[3] = v47;
        result = sub_1AF478A6C(v61);
        v48 = v56;
        *v45 = v57;
        v45[1] = v48;
        v45[2].n128_u64[0] = v41;
        v45[2].n128_u64[1] = v42;
        v45[3].n128_u64[0] = v44;
        v45[3].n128_u64[1] = v43;
      }

      else
      {
        result = sub_1AFDFE518();
        __break(1u);
      }
    }

    else
    {
      (*(v58 + 8))(v60, v59, v62);
    }
  }

  return result;
}

void sub_1AF8F4120(void *a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a7;
  v52 = a6;
  v53 = a5;
  v54 = a3;
  v56 = a1;
  v59 = a9;
  v13 = sub_1AFDFC128();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = a4[2];
  v16 = a4[3];
  v18 = a4[4];
  v55 = v11;
  v58 = &v49 - v19;
  if (v18)
  {
    v20 = a4[5];
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v17, v16, ObjectType, v20);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v17, v16);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v22 = v61;
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v61 = 0;
    sub_1AF0D4F18(v23, &v61, v22, *(&v22 + 1));

    sub_1AFDFC018();
  }

  v24 = v59;
  if (*(*(v54 + 8) + 32) == 1)
  {
    LOBYTE(v61) = 0;
    sub_1AF80F414(0);
  }

  if (!v24)
  {
    (*(v57 + 8))(v58, v13);
LABEL_27:
    v46 = 0;
LABEL_28:
    v47 = v56;
    swift_unknownObjectRelease();
    *v47 = v46;
    return;
  }

  v25 = *(a11 + 264);
  v49 = *(v24 + 120);
  v26 = v57;
  v27 = v50;
  (*(v57 + 16))(v50, v58, v13);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 65) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = *(v26 + 32);
  v54 = v13;
  v32(v31 + v28, v27, v13);
  v33 = (v31 + v29);
  v34 = v53;
  v35 = v53[1];
  *v33 = *v53;
  v33[1] = v35;
  v33[2] = v34[2];
  *(v33 + 42) = *(v34 + 42);
  *(v31 + v30) = v59;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  if (v51)
  {
    v36 = v55;
    if (v52)
    {
      v37 = 2;
      swift_retain_n();

      swift_unknownObjectRetain();

      v38 = 0;
      v31 = 0;
      v39 = 0;
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      v39 = 0;
      v37 = 0;
      v38 = sub_1AF902750;
    }

    v40 = v54;
    v41 = v58;
  }

  else
  {
    swift_retain_n();

    swift_unknownObjectRetain();
    v37 = 1;
    v38 = sub_1AF902750;
    v40 = v54;
    v36 = v55;
    v41 = v58;
    v39 = v52;
  }

  sub_1AF74D574(1, v34, v38, v31, v39, v37, &v61);
  if (v36)
  {
    sub_1AF74E888(v38, v31, v39, v37);

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v42 = sub_1AFDFF1D8();
    v44 = v43;
    v45 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v48 = v45;
      swift_once();
      v45 = v48;
    }

    v60 = 0;
    sub_1AF0D4F18(v45, &v60, v42, v44);

    (*(v57 + 8))(v41, v40);
    v46 = 0;
    goto LABEL_28;
  }

  sub_1AF74E888(v38, v31, v39, v37);

  v46 = v61;
  if (v62 >> 1 == 0xFFFFFFFF && !(v63 >> 24))
  {

    (*(v57 + 8))(v41, v40);
    goto LABEL_27;
  }

  if ((v63 & 0x8000000000000000) == 0)
  {

    (*(v57 + 8))(v41, v40);
    goto LABEL_28;
  }

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF8F4788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a8;
  sub_1AF8DE828(v13);
  v9 = *(a1 + 32);

  v10 = sub_1AF6496EC(v9);

  sub_1AFC3F950(v10, sub_1AF903F9C);

  v11 = sub_1AF6496EC(v9);

  return sub_1AFC3F3D8(v11, sub_1AF903FC8);
}

uint64_t sub_1AF8F48E0(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v39 = a8;
  v40 = a6;
  *&v38 = a4;
  v37 = a1;
  v11 = sub_1AFDFC128();
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[2];
  v15 = a2[3];
  if (a2[4])
  {
    v16 = a2[5];
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v14, v15, ObjectType, v16);
  }

  else
  {
    v36 = v11;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v14, v15);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v18 = v43;
    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v43 = 0;
    sub_1AF0D4F18(v19, &v43, v18, *(&v18 + 1));

    sub_1AFDFC018();
    v11 = v36;
  }

  if (*(*(a3 + 8) + 32) == 1)
  {
    LOBYTE(v43) = 0;
    sub_1AF80F414(0);
  }

  if (!v40)
  {
    goto LABEL_24;
  }

  sub_1AF74D574(0, v38, 0, 0, 0, 2u, &v43);
  if (v8)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v20 = sub_1AFDFF1D8();
    v22 = v21;
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v35 = v23;
      swift_once();
      v23 = v35;
    }

    *&v42[0] = 0;
    sub_1AF0D4F18(v23, v42, v20, v22);

    goto LABEL_24;
  }

  v24 = v47;
  if (*(&v44 + 1) >> 1 == 0xFFFFFFFFLL && v47 >> 24 == 0)
  {

LABEL_24:
    sub_1AF8F3060(v13, a3);
    return (*(v41 + 8))(v13, v11);
  }

  v39 = v44;
  if ((v47 & 0x8000000000000000) != 0)
  {
    v26 = v11;
    v38 = v43;
    v27 = v45;
    v28 = v46;
    v29 = v48;

    v30 = v37;
    v31 = v37[1];
    v42[0] = *v37;
    v42[1] = v31;
    v32 = v37[3];
    v42[2] = v37[2];
    v42[3] = v32;
    sub_1AF478A6C(v42);
    result = (*(v41 + 8))(v13, v26);
    v34 = v39;
    *v30 = v38;
    v30[1] = v34;
    *(v30 + 4) = v27;
    *(v30 + 5) = v28;
    *(v30 + 6) = v24 & 0x7FFFFFFFFFFFFFFFLL;
    *(v30 + 7) = v29;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF8F4DAC(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a6;
  v31 = a1;
  v9 = sub_1AFDFC128();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[2];
  v12 = a2[3];
  if (a2[4])
  {
    v14 = a2[5];
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v13, v12, ObjectType, v14);
  }

  else
  {
    v28 = v9;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v13, v12);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v16 = v34;
    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v34 = 0;
    sub_1AF0D4F18(v17, &v34, v16, *(&v16 + 1));

    sub_1AFDFC018();
    v9 = v28;
  }

  if (*(*(a3 + 8) + 32) == 1)
  {
    LOBYTE(v34) = 0;
    sub_1AF80F414(0);
  }

  if (!v30)
  {
    goto LABEL_20;
  }

  sub_1AF74D574(1, v29, 0, 0, 0, 2u, &v34);
  if (v6)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v18 = sub_1AFDFF1D8();
    v20 = v19;
    v21 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v26 = v21;
      swift_once();
      v21 = v26;
    }

    v33 = 0;
    sub_1AF0D4F18(v21, &v33, v18, v20);

    goto LABEL_20;
  }

  v22 = v34;
  if (v35 >> 1 == 0xFFFFFFFF && !(v36 >> 24))
  {

LABEL_20:
    v23 = v31;
    swift_unknownObjectRelease();
    *v23 = 0;
    sub_1AF8F3060(v11, a3);
    return (*(v32 + 8))(v11, v9);
  }

  if ((v36 & 0x8000000000000000) == 0)
  {

    v25 = v31;
    swift_unknownObjectRelease();
    *v25 = v22;
    return (*(v32 + 8))(v11, v9);
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF8F51F8(uint64_t a1, uint64_t a2, char **a3)
{
  sub_1AF8DE828(v14);
  v5 = *(a1 + 32);

  v6 = sub_1AF6496EC(v5);

  v7 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1AF4217DC(0, *(v7 + 2) + 1, 1, v7);
    *a3 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1AF4217DC(v9 > 1, v10 + 1, 1, v7);
    *a3 = v7;
  }

  *(v7 + 2) = v10 + 1;
  *&v7[8 * v10 + 32] = v6;

  v11 = sub_1AF6496EC(v5);

  MEMORY[0x1EEE9AC00](v12);
  return sub_1AFC3F3D8(v11, sub_1AF904000);
}

void sub_1AF8F538C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v130 = a6;
  sub_1AF0D4E74(0);
  v111 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1AFDFC298();
  v17 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1AFDFC128();
  v19 = *(v122 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v102 - v22;
  v23 = sub_1AF8D9EB0(*a2);
  v24 = v23[2];
  if (!v24)
  {

LABEL_45:

    return;
  }

  v102 = a1;
  v143 = MEMORY[0x1E69E7CC0];
  v25 = v23;
  v149 = v24;
  sub_1AFDFE368();
  v120 = 0uLL;
  v121 = 0;
  v27 = *(v19 + 16);
  v26 = v19 + 16;
  v132 = v27;
  v28 = *(v26 + 64);
  v127 = *(a4 + 8);
  v105 = v25;
  v29 = v25 + ((v28 + 32) & ~v28);
  v103 = a8;
  v117 = *(a8 + 264);
  v118 = v28;
  v126 = *(v26 + 56);
  v116 = (v28 + 16) & ~v28;
  v115 = (v20 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v115 + 65) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v26 + 16);
  v107 = (v17 + 32);
  v125 = (v26 - 8);
  v104 = 0x80000001AFF3A370;
  LODWORD(v131) = 1;
  v106 = xmmword_1AFE431C0;
  v30 = v130;
  v128 = a3;
  v31 = v122;
  v129 = v26;
  v32 = v124;
  do
  {
    v135 = v29;
    v132(v32);
    v34 = *a3;
    if (v131)
    {
      v35 = a3[2];
      v134 = a3[1];
      v36 = *(a3 + 24);
    }

    else
    {
      v37 = v120;
      v139 = v120;
      v38 = v120 >> 8;
      v39 = v120 >> 16;
      v40 = v120 >> 24;
      v41 = DWORD1(v120);
      v42 = DWORD2(v120);
      v43 = HIDWORD(*(&v120 + 1));
      v123 = v34;
      v44 = v121;
      LOWORD(v140) = v121;
      v133 = v9;
      v45 = BYTE2(v121);
      BYTE2(v140) = BYTE2(v121);
      v134 = sub_1AF445CA8(&v139);
      LOBYTE(v139) = v37;
      BYTE1(v139) = v38;
      BYTE2(v139) = v39;
      BYTE3(v139) = v40;
      v26 = v129;
      *(&v139 + 4) = __PAIR64__(v42, v41);
      v32 = v124;
      HIDWORD(v139) = v43;
      a3 = v128;
      BYTE2(v140) = v45;
      v9 = v133;
      v31 = v122;
      v30 = v130;
      LOWORD(v140) = v44;
      v34 = v123;
      v35 = sub_1AF445CB0(&v139);
      v36 = 0x80;
    }

    if (*(v127 + 32) == 1)
    {
      LOBYTE(v139) = 0;
      sub_1AF80F414(0);
    }

    *&v147 = v34;
    *(&v147 + 1) = v134;
    *v148 = v35;
    v148[8] = v36;
    *&v148[9] = *(a3 + 25);
    *&v148[25] = *(a3 + 41);
    v148[41] = *(a3 + 57);
    if (!v30)
    {
      v33 = v26;
      (*v125)(v32, v31);
      goto LABEL_4;
    }

    v46 = v119;
    (v132)(v119, v32, v31);
    v47 = v9;
    v48 = v113;
    v49 = swift_allocObject();
    (*v112)(v49 + v116, v46, v31);
    v50 = (v49 + v115);
    v51 = *v148;
    *v50 = v147;
    v50[1] = v51;
    v50[2] = *&v148[16];
    *(v50 + 42) = *&v148[26];
    *(v49 + v114) = v30;
    *(v49 + v48) = v117;
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_1AF74D574(1, &v147, sub_1AF9070B8, v49, 0, 0, &v144);
    v9 = v47;
    if (v47)
    {

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      swift_getErrorValue();
      v52 = sub_1AFDFF1D8();
      v54 = v53;
      v55 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v133 = v47;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v56 = qword_1ED73B890;
      sub_1AF8FE14C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v57 = swift_allocObject();
      *(v57 + 16) = v106;
      *(v57 + 56) = MEMORY[0x1E69E6158];
      *(v57 + 64) = sub_1AF0D544C();
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;

      sub_1AFDFC4C8(v55, &dword_1AF0CE000, v56, "%{public}s", 10, 2, v57);

      v58 = v108;
      sub_1AFDFC288();
      v59 = v111[12];
      v60 = v111[16];
      v61 = v110;
      v62 = &v110[v111[20]];
      (*v107)(v110, v58, v109);
      *(v61 + v59) = v55;
      *(v61 + v60) = 0;
      *v62 = v52;
      v62[1] = v54;
      sub_1AFDFC608();

      v30 = v130;

      sub_1AF904B7C(v61, sub_1AF0D4E74);
      v32 = v124;
      v31 = v122;
      (*v125)(v124, v122);
      v9 = 0;
      a3 = v128;
      v33 = v129;
    }

    else
    {
      v33 = v129;

      v63 = v144;
      if (v145 >> 1 == 0xFFFFFFFF && !(v146 >> 24))
      {
        v30 = v130;

        (*v125)(v32, v31);
        a3 = v128;
        goto LABEL_4;
      }

      v30 = v130;
      if ((v146 & 0x8000000000000000) != 0)
      {
        sub_1AFDFE518();
        __break(1u);
        goto LABEL_53;
      }

      a3 = v128;
      if (v131)
      {
        goto LABEL_26;
      }

      v139 = v120;
      v66 = v120 >> 8;
      v134 = v120 >> 16;
      v133 = (v120 >> 24);
      v67 = DWORD1(v120);
      v68 = HIDWORD(*(&v120 + 1));
      LOWORD(v140) = v121;
      BYTE2(v140) = BYTE2(v121);
      v69 = sub_1AF467494(&v139);
      if (v69 == [v63 pixelFormat])
      {
        v33 = v129;
        v30 = v130;
LABEL_26:
        CFXTextureDescriptorFromMTLTexture(v63, &v139, v64, v65);
        v120 = v139;
        v121 = v140;
        (*v125)(v32, v31);
        LODWORD(v131) = 0;
        goto LABEL_4;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v139 = 0;
      *(&v139 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v138 = 0xD000000000000026;
      *(&v138 + 1) = v104;
      v70 = [v63 label];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1AFDFCEF8();
        v131 = v67;
        v73 = v68;
        v74 = v66;
        v66 = v72;
        v76 = v75;

        v77 = v66;
        LOBYTE(v66) = v74;
        LODWORD(v68) = v73;
        LODWORD(v67) = v131;
      }

      else
      {
        v76 = 0xE300000000000000;
        v77 = 4271950;
      }

      MEMORY[0x1B2718AE0](v77, v76);

      MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
      LOBYTE(v139) = v120;
      BYTE1(v139) = v66;
      BYTE2(v139) = v134;
      BYTE3(v139) = v133;
      *(&v139 + 4) = __PAIR64__(DWORD2(v120), v67);
      HIDWORD(v139) = v68;
      BYTE2(v140) = BYTE2(v121);
      LOWORD(v140) = v121;
      *(&v140 + 3) = v136;
      HIBYTE(v140) = v137;
      v78 = sub_1AF467494(&v139);
      v79 = sub_1AF4720E8(v78);
      MEMORY[0x1B2718AE0](v79);

      MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
      v80 = sub_1AF4720E8([v63 pixelFormat]);
      MEMORY[0x1B2718AE0](v80);

      v81 = v138;
      v82 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v83 = v82;
        swift_once();
        v82 = v83;
      }

      *&v139 = 0;
      sub_1AF0D4F18(v82, &v139, v81, *(&v81 + 1));

      sub_1AF8FE1E4(&v144, &unk_1ED725A60, &type metadata for TextureCache.Texture, MEMORY[0x1E69E6720], sub_1AF90540C);
      v32 = v124;
      (*v125)(v124, v31);
      LODWORD(v131) = 0;
      v33 = v129;
      v30 = v130;
    }

LABEL_4:
    sub_1AFDFE328();
    sub_1AFDFE398();
    sub_1AFDFE3A8();
    sub_1AFDFE348();
    v29 = &v135[v126];
    --v149;
    v26 = v33;
  }

  while (v149);

  v84 = v143;
  if (v131)
  {
    goto LABEL_45;
  }

  v141 = v120;
  LOWORD(v142) = v121;
  BYTE2(v142) = BYTE2(v121);
  v85 = *(v143 + 16);
  if (!v85)
  {
    goto LABEL_45;
  }

  sub_1AF466BDC(3, &v141);
  sub_1AF4674C8(v85, &v141);
  v86 = *(v103 + 16);
  v139 = v141;
  v140 = v142;
  v87 = CFXGPUDeviceCreateTexture(v86, &v139);
  if (!v87)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v138 = v139;
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3A330);
    v139 = v141;
    v140 = v142;
    type metadata accessor for TextureDescriptor(0);
    sub_1AFDFE458();
    v99 = v138;
    v100 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v101 = v100;
      swift_once();
      v100 = v101;
    }

    *&v139 = 0;
    sub_1AF0D4F18(v100, &v139, v99, *(&v99 + 1));
    goto LABEL_45;
  }

  v89 = v87;
  v90 = sub_1AF6F3F0C(v87, v88);
  v133 = v9;
  if (v9)
  {
LABEL_53:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v91 = v90;
  v92 = sub_1AFDFCEC8();
  [v91 pushDebugGroup_];

  sub_1AF6F3BD8(v93, v94);
  v95 = *(v84 + 16);
  if (v95)
  {
    for (i = 0; i != v95; ++i)
    {
      v97 = *(v84 + 32 + 8 * i);
      if (v97)
      {
        [v91 copyFromTexture:v97 sourceSlice:0 sourceLevel:0 toTexture:v89 destinationSlice:i destinationLevel:0 sliceCount:1 levelCount:1];
      }
    }
  }

  swift_unknownObjectRelease();

  [v91 popDebugGroup];
  swift_unknownObjectRelease();
  v98 = v102;
  swift_unknownObjectRelease();
  *v98 = v89;
}

void sub_1AF8F6528(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v14 = *(a1 + 32);

  v15 = sub_1AF64F35C();

  if (v15 & 1) != 0 || (sub_1AF679254(*a2))
  {
    v24 = a8;

    v16 = sub_1AF6496EC(v14);

    v17 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v17;
    v23 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1AF4217DC(0, *(v17 + 2) + 1, 1, v17);
      *a5 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1AF4217DC(v19 > 1, v20 + 1, 1, v17);
      *a5 = v17;
    }

    *(v17 + 2) = v20 + 1;
    *&v17[8 * v20 + 32] = v16;

    v21 = sub_1AF6496EC(v14);

    sub_1AF8EB9E8(a3, a2, v21, a4, v23, a7, v24, *(a9 + 528), v22);
  }
}

uint64_t sub_1AF8F66D4()
{

  return v0;
}

uint64_t sub_1AF8F6784()
{
  sub_1AF8F66D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF8F67DC(double a1)
{
  v2 = v1;
  v3 = sub_1AFDFDAF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFDAC8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1AFDFCAC8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1AF615168();
  sub_1AFDFCAB8();
  sub_1AFDFDAB8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v3);
  *(v2 + 16) = sub_1AFDFDB28();
  *(v2 + 24) = 3;
  *(v2 + 32) = MEMORY[0x1E69E7CC8];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v164 = qword_1ED73B840;
  v165 = 0;
  v166 = 2;
  v167 = 0;
  v168 = 2;
  v169 = 0;
  sub_1AF703208(1, &v82);
  v9 = v83;
  v10 = v84;
  v11 = v86;
  v12 = v85 | 4;
  *(v2 + 40) = v82;
  *(v2 + 48) = v9;
  *(v2 + 52) = v10;
  *(v2 + 56) = v12;
  *(v2 + 64) = 2;
  *(v2 + 72) = v11;
  sub_1AF70321C(1, v87);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  v81 = xmmword_1AFE431C0;
  *(v13 + 16) = xmmword_1AFE431C0;
  *(v13 + 32) = &type metadata for FileWatcher;
  *(v13 + 40) = &off_1F2545FD8;
  sub_1AF5D1EC0(v13);
  sub_1AF8FE1E4(v87, &unk_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v14 = v88;
  *(v2 + 80) = *&v87[40];
  *(v2 + 96) = v14;
  *(v2 + 112) = v89;
  v15 = swift_allocObject();
  *(v15 + 16) = v81;
  *(v15 + 32) = &type metadata for TextureFileAsset;
  *(v15 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v15, 1, v90);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v16 = swift_allocObject();
  *(v16 + 16) = v81;
  *(v16 + 32) = &type metadata for TextureLoadingOptions;
  *(v16 + 40) = &off_1F2543F60;
  sub_1AF5C5EFC(v16, v91);
  sub_1AF692DB0(v90);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v17 = v91[1];
  *(v2 + 120) = v91[0];
  *(v2 + 136) = v17;
  *(v2 + 152) = v92;
  v18 = swift_allocObject();
  *(v18 + 16) = v81;
  *(v18 + 32) = &type metadata for TextureFileAsset;
  *(v18 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v18, 1, &v93);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v19 = v97;
  v20 = v96 | 4;
  v21 = v94;
  v22 = v95;
  *(v2 + 160) = v93;
  *(v2 + 168) = v21;
  *(v2 + 172) = v22;
  *(v2 + 176) = v20;
  *(v2 + 184) = 2;
  *(v2 + 192) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = v81;
  *(v23 + 32) = &type metadata for TextureFileAsset;
  *(v23 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v23, 1, v98);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v24 = swift_allocObject();
  *(v24 + 16) = v81;
  *(v24 + 32) = &type metadata for TextureGPURepresentationDoNotUpload;
  *(v24 + 40) = &off_1F2546138;
  sub_1AF5C5EFC(v24, &v99);
  sub_1AF692DB0(v98);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v25 = v103;
  v26 = v102 | 4;
  v27 = v100;
  v28 = v101;
  *(v2 + 200) = v99;
  *(v2 + 208) = v27;
  *(v2 + 212) = v28;
  *(v2 + 216) = v26;
  *(v2 + 224) = 2;
  *(v2 + 232) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = v81;
  *(v29 + 32) = &type metadata for TextureFileAsset;
  *(v29 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v29, 1, v104);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v30 = swift_allocObject();
  *(v30 + 16) = v81;
  *(v30 + 32) = &type metadata for TextureGPURepresentationDoNotDownload;
  *(v30 + 40) = &off_1F2545F58;
  sub_1AF5C5EFC(v30, &v105);
  sub_1AF692DB0(v104);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v31 = v109;
  v32 = v108 | 4;
  v33 = v106;
  v34 = v107;
  *(v2 + 240) = v105;
  *(v2 + 248) = v33;
  *(v2 + 252) = v34;
  *(v2 + 256) = v32;
  *(v2 + 264) = 2;
  *(v2 + 272) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = v81;
  *(v35 + 32) = &type metadata for TextureArrayFileAsset;
  *(v35 + 40) = &off_1F25440E8;
  sub_1AF5F58E4(v35, 1, &v110);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v36 = v114;
  v37 = v113 | 4;
  v38 = v111;
  v39 = v112;
  *(v2 + 280) = v110;
  *(v2 + 288) = v38;
  *(v2 + 292) = v39;
  *(v2 + 296) = v37;
  *(v2 + 304) = 2;
  *(v2 + 312) = v36;
  sub_1AF70321C(1, &v115);
  v40 = v116;
  v41 = v117;
  v42 = v119;
  v43 = v118 | 4;
  *(v2 + 320) = v115;
  *(v2 + 328) = v40;
  *(v2 + 332) = v41;
  *(v2 + 336) = v43;
  *(v2 + 344) = 2;
  *(v2 + 352) = v42;
  sub_1AF703230(1, &v120);
  v44 = v121;
  v45 = v122;
  v46 = v124;
  v47 = v123 | 4;
  *(v2 + 360) = v120;
  *(v2 + 368) = v44;
  *(v2 + 372) = v45;
  *(v2 + 376) = v47;
  *(v2 + 384) = 2;
  *(v2 + 392) = v46;
  sub_1AFCC39F4(1, 2, &v125);
  v48 = v126;
  v49 = v127;
  v50 = v129;
  v51 = v128 | 4;
  *(v2 + 400) = v125;
  *(v2 + 408) = v48;
  *(v2 + 412) = v49;
  *(v2 + 416) = v51;
  *(v2 + 424) = 2;
  *(v2 + 432) = v50;
  sub_1AF703244(1, &v130);
  v52 = v131;
  v53 = v132;
  v54 = v134;
  v55 = v133 | 4;
  *(v2 + 440) = v130;
  *(v2 + 448) = v52;
  *(v2 + 452) = v53;
  *(v2 + 456) = v55;
  *(v2 + 464) = 2;
  *(v2 + 472) = v54;
  sub_1AF703258(1, &v135);
  v56 = v136;
  v57 = v137;
  v58 = v139;
  v59 = v138 | 4;
  *(v2 + 480) = v135;
  *(v2 + 488) = v56;
  *(v2 + 492) = v57;
  *(v2 + 496) = v59;
  *(v2 + 504) = 2;
  *(v2 + 512) = v58;
  sub_1AF70326C(1, &v140);
  v60 = v141;
  v61 = v142;
  v62 = v144;
  v63 = v143 | 4;
  *(v2 + 520) = v140;
  *(v2 + 528) = v60;
  *(v2 + 532) = v61;
  *(v2 + 536) = v63;
  *(v2 + 544) = 2;
  *(v2 + 552) = v62;
  sub_1AF703280(1, v145);
  v64 = swift_allocObject();
  *(v64 + 16) = v81;
  *(v64 + 32) = &type metadata for TextureGPURuntime;
  *(v64 + 40) = &off_1F2544300;
  sub_1AF5D1EC0(v64);
  sub_1AF8FE1E4(v145, &unk_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v65 = v146;
  *(v2 + 560) = *&v145[40];
  *(v2 + 576) = v65;
  *(v2 + 592) = v147;
  sub_1AFCC3A18(4, 2, &v148);
  v66 = v149;
  v67 = v150;
  v68 = v152;
  v69 = v151 | 4;
  *(v2 + 600) = v148;
  *(v2 + 608) = v66;
  *(v2 + 612) = v67;
  *(v2 + 616) = v69;
  *(v2 + 624) = 2;
  *(v2 + 632) = v68;
  sub_1AF703294(2, v153);
  v70 = swift_allocObject();
  *(v70 + 16) = v81;
  *(v70 + 32) = &type metadata for TextureRequireCubemap;
  *(v70 + 40) = &off_1F2545ED8;
  sub_1AF5F9038();
  sub_1AF8FE1E4(v153, &qword_1ED723D50, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v71 = v154;
  v72 = v155;
  v73 = v157;
  v74 = v156 | 4;
  *(v2 + 640) = v153[5];
  *(v2 + 648) = v71;
  *(v2 + 652) = v72;
  *(v2 + 656) = v74;
  *(v2 + 664) = 2;
  *(v2 + 672) = v73;
  sub_1AFCC3A3C(1, 1, v158);
  v75 = swift_allocObject();
  *(v75 + 16) = v81;
  *(v75 + 32) = &type metadata for TextureGPURepresentationDoNotUpload;
  *(v75 + 40) = &off_1F2546138;
  sub_1AF5D1EC0(v75);
  sub_1AF904B7C(v158, sub_1AF904288);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v76 = v160;
  v77 = v161;
  v78 = v163;
  v79 = v162 | 4;
  *(v2 + 680) = v159;
  *(v2 + 688) = v76;
  *(v2 + 692) = v77;
  *(v2 + 696) = v79;
  *(v2 + 704) = 2;
  *(v2 + 712) = v78;
  return v2;
}

uint64_t sub_1AF8F7240()
{
  v0 = swift_allocObject();
  sub_1AF8F67DC(v1);
  return v0;
}

uint64_t sub_1AF8F7290(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1AFDFC548();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1AFDFC538();
  sub_1AF477C68(v10, qword_1ED73B608);
  v11 = sub_1AFDFC528();
  sub_1AFDFC558();
  v12 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1B271DEA0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF8F7520(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v5 = *(a2 + 528);
    v6 = *(v2 + 32);
    v38[0] = *(v2 + 16);
    v38[1] = v6;
    v39 = *(v2 + 48);

    sub_1AF6B06C0(v4, v38, 0x200000000, &v8);
    if (v8)
    {
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v22 = v8;
      v28 = v14;
      v23 = v9;
      v24 = v10;
      sub_1AF6B9BF4();
      sub_1AF8FE1E4(&v8, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    v7 = *(v2 + 72);
    v36[0] = *(v2 + 56);
    v36[1] = v7;
    v37 = *(v2 + 88);
    sub_1AF6B06C0(v4, v36, 0x200000000, &v15);
    if (v15)
    {
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v30 = v16;
      v31 = v17;
      v35 = v21;
      v29 = v15;

      sub_1AFD1616C(&v29, v4, v5, a2);

      return sub_1AF8FE1E4(&v15, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF8F7758(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v7 = v4 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock;
    v8 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock + 24);

    os_unfair_lock_lock(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1AF904304;
    *(v9 + 24) = v6;
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks;
    v11 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1AF4221DC(0, v11[2] + 1, 1, v11);
      *(v4 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1AF4221DC(v13 > 1, v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1AF6D25EC;
    v15[5] = v9;
    *(v4 + v10) = v11;
    os_unfair_lock_unlock(*(v7 + 24));
  }

  return result;
}

uint64_t sub_1AF8F791C(uint64_t a1, unint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AF67F7C0(a2, result);
  }

  return result;
}

uint64_t sub_1AF8F79B8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED73B840;
  v20 = 0;
  v21 = 2;
  v22 = 0;
  v23 = 2;
  v24 = 0;
  sub_1AFCC515C(1, 1, v9);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for TextureCPURuntime;
  *(inited + 40) = &off_1F2543DF8;
  *(inited + 48) = &type metadata for TextureGPURepresentationDoNotDownload;
  *(inited + 56) = &off_1F2545F58;
  sub_1AF5D1EC0(inited);
  sub_1AF904B7C(v9, sub_1AF90430C);
  swift_setDeallocating();
  v2 = v11;
  *(v0 + 16) = v10;
  *(v0 + 32) = v2;
  *(v0 + 48) = v12;
  sub_1AFCC515C(1, 1, v13);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  *(v3 + 32) = &type metadata for TextureGPURepresentationDoNotDownload;
  *(v3 + 40) = &off_1F2545F58;
  *(v3 + 48) = &type metadata for ColorRampComponent;
  *(v3 + 56) = &off_1F2541A28;
  *(v3 + 64) = &type metadata for CurveComponent;
  *(v3 + 72) = &off_1F2541D98;
  sub_1AF5D1EC0(v3);
  sub_1AF904B7C(v13, sub_1AF90430C);
  swift_setDeallocating();
  v4 = v15;
  v5 = v16;
  v6 = v18;
  v7 = v17 | 4;
  *(v0 + 56) = v14;
  *(v0 + 64) = v4;
  *(v0 + 68) = v5;
  *(v0 + 72) = v7;
  *(v0 + 80) = 2;
  *(v0 + 88) = v6;
  return v0;
}

uint64_t sub_1AF8F7BDC()
{
  v0 = swift_allocObject();
  sub_1AF8F79B8();
  return v0;
}

void sub_1AF8F7C48(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1AF8F7DA4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED73B840;
  v29 = 0;
  v30 = 2;
  v31 = 0;
  v32 = 2;
  v33 = 0;
  sub_1AF7049A4(1, v14);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for TextureRequireCPURepresentation;
  *(inited + 40) = &off_1F25443B8;
  sub_1AF5D1EC0(inited);
  sub_1AF8FE1E4(v14, &unk_1ED723D58, &type metadata for TextureCPURuntime, &off_1F2543E80, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v16;
  v3 = v17;
  v4 = v19;
  v5 = v20;
  v6 = v18 | 0x20;
  *(v0 + 16) = v15;
  *(v0 + 24) = v2;
  *(v0 + 28) = v3;
  *(v0 + 32) = v6;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  sub_1AF703294(1, v21);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for TextureRequireGPURepresentation;
  *(v7 + 40) = &off_1F2544248;
  sub_1AF5D1EC0(v7);
  sub_1AF8FE1E4(v21, &qword_1ED723D50, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF5DD590);
  swift_setDeallocating();
  v8 = v23;
  v9 = v24;
  v10 = v26;
  v11 = v27;
  v12 = v25 | 0x20;
  *(v0 + 56) = v22;
  *(v0 + 64) = v8;
  *(v0 + 68) = v9;
  *(v0 + 72) = v12;
  *(v0 + 80) = v10;
  *(v0 + 88) = v11;
  return v0;
}

uint64_t sub_1AF8F7FDC()
{
  v0 = swift_allocObject();
  sub_1AF8F7DA4();
  return v0;
}

void sub_1AF8F8048(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 16);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

void sub_1AF8F8180(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1;
  v7 = 0;
  v54 = *v3;
  v8 = *(v3 + 2);
  v85[0] = *(v3 + 1);
  v85[1] = v8;
  v56 = v3;
  v86 = v3[6];
  v55 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v85, 0x200000000, v72);
  if (*&v72[0])
  {
    v53 = a3;
    v51 = v6;
    v52 = a2;
    if (v76 >= 1 && v74)
    {
      v9 = v73;
      v10 = v75;
      v64 = v73 + 48 * v74;
      v57 = v75;
      do
      {
        v11 = *(v9 + 40);
        v12 = *(v11 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v12);
        os_unfair_lock_lock(*(v11 + 344));
        v13 = *(v11 + 232);
        v14 = *(v11 + 240);
        if (v14 != v13)
        {
          v15 = *(v11 + 192);
          if (v15)
          {
            v16 = *(v11 + 208);
            sub_1AF75D408(*(v11 + 232), *(v11 + 240), v15);
            sub_1AF75D364(v13, v14, v16);
          }

          sub_1AF705690(v13, v14);
        }

        v17 = *(v11 + 24);

        memset(v78, 0, sizeof(v78));
        memset(v77, 0, 40);
        v18 = sub_1AF65A4B4(v17, &type metadata for TextureRequireGPURepresentation, &off_1F25442D0, 0, 0, v78, v77);

        sub_1AF5DD41C(v77);
        sub_1AF5DD41C(v78);
        if (sub_1AF649CEC(v18))
        {
          sub_1AF649D40(v18, v10);
        }

        else
        {
          v63 = v9;
          v19 = *(v11 + 232);
          v20 = *(v11 + 240);
          v60 = *(v11 + 120);
          v70 = *(v11 + 28);
          v69 = *(v11 + 32);
          v21 = *(v11 + 16);
          v22 = *(v11 + 40);
          v23 = v22[200];
          v68 = *(*(v21 + 88) + 8 * v18 + 32);

          if ((v23 & 1) != 0 || *(v68 + 200) == 1)
          {
            *(v21 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v22 = *(v11 + 40);
          }

          if (v22[212])
          {
            v62 = 0;
          }

          else
          {
            v62 = *(v68 + 212);
          }

          v61 = v22[208];
          v65 = *(v11 + 128);
          v24 = *(v11 + 256);
          sub_1AF5B4FCC(v22, v19, v20, 0, v11);
          *&v66 = *(v11 + 256);
          *(&v66 + 1) = v24;
          v25 = v66 - v24;
          if (v66 == v24)
          {
            v26 = 0;
          }

          else
          {
            v26 = v24;
          }

          v67 = v26;
          v77[0] = v26;
          v27 = *(*(v11 + 40) + 24);
          v28 = *(v27 + 16);
          if (v28)
          {
            v58 = *(*(v11 + 40) + 24);
            v59 = v7;
            v29 = v27 + 32;

            for (i = 0; i != v28; ++i)
            {
              v31 = (v29 + 40 * i);
              if ((v31[4] & 1) == 0)
              {
                v32 = *v31;
                v34 = v31[2];
                v33 = v31[3];
                v35 = *(v68 + 24);
                v36 = *(v35 + 16);
                if (v36)
                {
                  v37 = (v35 + 32);
                  while (*v37 != v32)
                  {
                    v37 += 5;
                    if (!--v36)
                    {
                      goto LABEL_23;
                    }
                  }
                }

                else
                {
LABEL_23:
                  sub_1AF640BC8(v65 + v34 * v67 + v33, v25);
                }
              }
            }

            v7 = v59;
          }

          v10 = v57;
          if (*(v21 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v21 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v11 + 72) * v25);
          }

          if (*(v11 + 184))
          {
            v38 = 0;
          }

          else
          {
            v38 = *(v11 + 168);
          }

          *&v83[0] = 0;

          MEMORY[0x1EEE9AC00](v39);
          v40 = v70;
          v41 = v69;
          v46[0] = v65;
          v46[1] = v83;
          LOBYTE(v47) = v61;
          HIDWORD(v47) = v18;
          LOBYTE(v48) = v62;
          v49 = v57;
          LODWORD(v78[3]) = -1;
          v78[4] = *(&v66 + 1);
          v79 = v66;
          v78[0] = *(&v66 + 1);
          *&v80 = v66;
          v78[1] = v66;
          v78[2] = v38;
          if (v25 >= 1)
          {
            do
            {
              v71 = v41;
              sub_1AF6248A8(v18, v40 | (v41 << 32), v60, v21, v78, sub_1AF5C5E08);
              v41 = v69;
              v40 = v70;
            }

            while ((v78[1] - v78[0]) > 0);
          }

          v42 = *(v11 + 192);
          if (v42)
          {
            v43 = *(v11 + 208);
            sub_1AF75D364(*(&v66 + 1), v66, v42);
            sub_1AF75D364(*(&v66 + 1), v66, v43);
          }

          v9 = v63;
        }

        v9 += 48;
        os_unfair_lock_unlock(*(v11 + 344));
        os_unfair_lock_unlock(*(v11 + 376));
      }

      while (v9 != v64);
    }

    sub_1AF8FE1E4(v72, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    LOBYTE(a3) = v53;
    v6 = v51;
    a2 = v52;
  }

  v44 = *(v56 + 9);
  v83[0] = *(v56 + 7);
  v83[1] = v44;
  v84 = v56[11];
  sub_1AF6B06C0(v6, v83, 0x200000000, v77);
  if (v77[0])
  {
    v79 = *&v77[5];
    v80 = *&v77[7];
    v81 = *&v77[9];
    v82 = v77[11];
    *&v78[1] = *&v77[1];
    *&v78[3] = *&v77[3];
    v78[0] = v77[0];
    MEMORY[0x1EEE9AC00](v45);
    v47 = v6;
    v48 = a2;
    LOBYTE(v49) = a3;
    v50 = v54;
    sub_1AF5D5DF8(sub_1AF904388, v46);
    sub_1AF8FE1E4(v77, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }
}

void sub_1AF8F87F4(uint64_t a1, unsigned int *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  if (*a3)
  {
    v11 = [swift_unknownObjectRetain() label];
    if (!v11)
    {
      swift_unknownObjectRelease();
      return;
    }

    v12 = v11;
    v13 = sub_1AFDFCEF8();
    v15 = v14;

    if (v13 == 0xD00000000000001BLL && 0x80000001AFF3A580 == v15)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = sub_1AFDFEE28();

      swift_unknownObjectRelease();
      if ((v17 & 1) == 0)
      {
        return;
      }
    }
  }

  v18 = *a2;
  v19 = a2[1];
  if (v18 == -1 && v19 == 0)
  {
LABEL_24:
    swift_unknownObjectRelease();
    *a3 = 0;
    return;
  }

  v27 = 1;
  v21 = sub_1AF8D93C8(v18 | (v19 << 32), &v27, a4, a5);
  if (v27 == 1)
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 8);
    v24 = *(v23 + 192);

    if (v24)
    {
      v25 = *(v23 + 208);
      *(v24 + 8 * (v22 >> 6)) |= 1 << v22;
      *(v25 + 8 * (v22 >> 6)) &= ~(1 << v22);
    }

    sub_1AF705804(v22);
  }

  if (!v21)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v10 && v21 == v10)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = sub_1AFDFCEC8();
    [v21 setLabel_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *a3 = v21;
  }
}

__n128 initializeWithCopy for TextureRequireAnimationRepresentation(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureRequireAnimationRepresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureRequireAnimationRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t *sub_1AF8F8B18(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for TextureGPURuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for TextureGPURuntime(void *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureGPURuntime(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TextureGPURuntime(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *destroy for TextureFileData(uint64_t *result)
{
  v1 = result[1];
  if (v1 >> 60 != 15)
  {
    return sub_1AF439ED8(*result, v1);
  }

  return result;
}

_OWORD *sub_1AF8F8CD8(_OWORD *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2 >> 60 == 15)
  {
    *result = *a2;
  }

  else
  {
    v3 = *a2;
    v4 = result;
    sub_1AF43C9F0(*a2, a2[1]);
    *v4 = v3;
    v4[1] = v2;
    return v4;
  }

  return result;
}

uint64_t *assignWithCopy for TextureFileData(uint64_t *a1, __int128 *a2)
{
  v3 = *(a2 + 1);
  if (a1[1] >> 60 == 15)
  {
    if (v3 >> 60 != 15)
    {
      v6 = *a2;
      sub_1AF43C9F0(*a2, *(a2 + 1));
      *a1 = v6;
      a1[1] = v3;
      return a1;
    }

    v4 = *a2;
  }

  else
  {
    if (v3 >> 60 != 15)
    {
      v7 = *a2;
      sub_1AF43C9F0(*a2, *(a2 + 1));
      v8 = *a1;
      v9 = a1[1];
      *a1 = v7;
      a1[1] = v3;
      sub_1AF439ED8(v8, v9);
      return a1;
    }

    sub_1AF8F8DE0(a1);
    v4 = *a2;
  }

  *a1 = v4;
  return a1;
}

_OWORD *assignWithTake for TextureFileData(_OWORD *result, uint64_t *a2)
{
  v3 = *(result + 1);
  if (v3 >> 60 == 15)
  {
    *result = *a2;
  }

  else
  {
    v4 = a2[1];
    if (v4 >> 60 == 15)
    {
      v5 = result;
      v6 = a2;
      sub_1AF8F8DE0(result);
      *v5 = *v6;
    }

    else
    {
      v7 = *a2;
      v8 = *result;
      *result = v7;
      *(result + 1) = v4;
      v5 = result;
      sub_1AF439ED8(v8, v3);
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureFileData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureFileData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

__n128 initializeWithCopy for TextureOptions(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t destroy for TextureShaderAsset(void *a1)
{
}

uint64_t initializeWithCopy for TextureShaderAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for TextureShaderAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for TextureShaderAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  v5 = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureShaderAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TextureShaderAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TextureCPURuntime(void *a1)
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TextureCPURuntime(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 2);
  v3 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v3;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t *assignWithCopy for TextureCPURuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 35) = *(a2 + 35);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  v4 = *(a2 + 24);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 24) = v4;
  a1[7] = a2[7];

  return a1;
}

uint64_t *assignWithTake for TextureCPURuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 11) = *(a2 + 11);
  v4 = *(a2 + 24);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 24) = v4;
  a1[7] = a2[7];

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCPURuntime(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCPURuntime(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureLoadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 3);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureLoadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF8F970C()
{
  result = qword_1EB640120;
  if (!qword_1EB640120)
  {
    result = swift_getWitnessTable(byte_1AFE81E90, &type metadata for TextureRequireAnimationRepresentation, v0, v1);
    atomic_store(result, &qword_1EB640120);
  }

  return result;
}

uint64_t sub_1AF8F9760()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED73B840;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  v21 = 2;
  v22 = 0;
  sub_1AF704CE0(1, v8);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for TextureRequireGPURepresentation;
  *(inited + 40) = &off_1F2544248;
  sub_1AF5D1EC0(inited);
  sub_1AF8FE1E4(v8, &unk_1ED723D20, &type metadata for TexturePlaceholder, &off_1F2546C68, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v10;
  *(v0 + 16) = v9;
  *(v0 + 32) = v2;
  *(v0 + 48) = v11;
  sub_1AF704CE0(1, &v12);
  v3 = v13;
  v4 = v14;
  v5 = v16;
  v6 = v15 | 4;
  *(v0 + 56) = v12;
  *(v0 + 64) = v3;
  *(v0 + 68) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 2;
  *(v0 + 88) = v5;
  return v0;
}

uint64_t sub_1AF8F9900()
{
  v0 = swift_allocObject();
  sub_1AF8F9760();
  return v0;
}

uint64_t sub_1AF8F9950(__n128 a1, uint64_t a2, uint64_t a3)
{

  return sub_1AF8F9AC0(2, a3, a1);
}

uint64_t sub_1AF8F99AC(__n128 a1, uint64_t a2, uint64_t a3)
{

  return sub_1AF8F9AC0(3, a3, a1);
}

uint64_t sub_1AF8F9A08(__n128 a1, uint64_t a2, uint64_t a3)
{

  return sub_1AF8F9AC0(0, a3, a1);
}

uint64_t sub_1AF8F9A64(__n128 a1, uint64_t a2, uint64_t a3)
{

  return sub_1AF8F9AC0(1, a3, a1);
}

uint64_t sub_1AF8F9AC0(char a1, uint64_t a2, __n128 a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *(v3 + 8);
  if ([swift_unknownObjectRetain() storageMode] == 2)
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  else
  {
    v8 = [v5 contents];
    v9 = v5;
    v7 = v8 + v6;
  }

  v23 = *(v3 + 32);
  v24 = *(v3 + 48);
  v25 = *(v3 + 32);
  v26 = *(v3 + 48);
  v10 = sub_1AF445CA8(&v25);
  v25 = *(v3 + 32);
  v26 = *(v3 + 48);
  v11 = sub_1AF445CB0(&v25);
  v25 = *(v3 + 32);
  v26 = *(v3 + 48);
  v12 = sub_1AF478AC0(&v25);
  v13 = sub_1AF467494(&v23);
  if (v13 > 0x46u)
  {
    if (v13 <= 0x50u)
    {
      if (v13 == 71)
      {
        v15 = 7;
        goto LABEL_32;
      }

      if (v13 == 80)
      {
        v15 = 8;
        goto LABEL_32;
      }
    }

    else
    {
      switch(v13)
      {
        case 'Q':
          v15 = 9;
          goto LABEL_32;
        case 's':
          v15 = 2;
          goto LABEL_32;
        case '}':
          v15 = 3;
          goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  if (v13 <= 0x18u)
  {
    if (v13 == 10)
    {
      v15 = 4;
      goto LABEL_32;
    }

    if (v13 == 11)
    {
      v15 = 5;
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v13 == 25)
  {
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  if (v13 == 55)
  {
    v15 = 1;
    goto LABEL_32;
  }

  if (v13 != 70)
  {
LABEL_26:
    v16 = v13;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v25 = 0xD00000000000001ALL;
    *(&v25 + 1) = 0x80000001AFF29870;
    v17 = sub_1AF4720E8(v16);
    MEMORY[0x1B2718AE0](v17);

    v18 = v25;
    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v21 = v19;
      swift_once();
      v19 = v21;
    }

    *&v25 = 0;
    sub_1AF0D4F18(v19, &v25, v18, *(&v18 + 1));

    goto LABEL_31;
  }

  v15 = 6;
LABEL_32:
  v14.i64[0] = __PAIR64__(v11, v10);
  v14.i32[2] = v12;
  vfx_sampler3d_make(v7, v15, a1, 1, &v25, v14);
  return v27(&v25, a3);
}

char *sub_1AF8F9DC8(uint64_t *a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v21[6] = a3;
  v5 = a1[11];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  result = sub_1AF64B110(&type metadata for TextureFileAsset, &off_1F2544090, v5, a1[12], v6, v8);
  v10 = result;
  if (v5)
  {
    if (v6)
    {
      v11 = a1[3];
      v12 = *a1;
      do
      {
        v13 = *v5++;
        v20[0] = v12;
        v20[1] = v7;
        v20[2] = v8;
        v20[3] = v11;
        v20[4] = v13;
        result = a2(v20, v10);
        if (v19)
        {
          break;
        }

        v10 += 48;
        ++v11;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[6];
    v16 = a1[7];
    v17 = &result[48 * v15];
    do
    {
      if (v16 == v15)
      {
        break;
      }

      v18 = v15 + 1;
      v21[0] = *a1;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v14;
      v21[4] = v15;
      result = a2(v21, v17);
      ++v14;
      v17 += 48;
      v15 = v18;
    }

    while (!v19);
  }

  return result;
}

char *sub_1AF8F9EFC(uint64_t *a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v21[6] = a3;
  v5 = a1[11];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  result = sub_1AF64B110(&type metadata for TextureArrayFileAsset, &off_1F2544168, v5, a1[12], v6, v8);
  v10 = result;
  if (v5)
  {
    if (v6)
    {
      v11 = a1[3];
      v12 = *a1;
      do
      {
        v13 = *v5++;
        v20[0] = v12;
        v20[1] = v7;
        v20[2] = v8;
        v20[3] = v11;
        v20[4] = v13;
        result = a2(v20, v10);
        if (v19)
        {
          break;
        }

        v10 += 8;
        ++v11;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[6];
    v16 = a1[7];
    v17 = &result[8 * v15];
    do
    {
      if (v16 == v15)
      {
        break;
      }

      v18 = v15 + 1;
      v21[0] = *a1;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v14;
      v21[4] = v15;
      result = a2(v21, v17);
      ++v14;
      v17 += 8;
      v15 = v18;
    }

    while (!v19);
  }

  return result;
}

uint64_t sub_1AF8FA02C(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*a1);
  v5 = type metadata accessor for TextureCache.TextureKey(0);
  sub_1AFDFC128();
  sub_1AF9027C4(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1AFDFCD08();
  v6 = &a1[*(v5 + 24)];
  v7 = *(v6 + 1);
  v8 = *(v6 + 2);
  v9 = v6[24];
  v11 = *(v6 + 4);
  v10 = *(v6 + 5);
  v15 = *(v6 + 6);
  v12 = *(v6 + 28);
  MEMORY[0x1B271ACB0](*v6);
  if (v9 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v9 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v7);
      MEMORY[0x1B271ACB0](v8);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v7);
      MEMORY[0x1B271ACB0](v8);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v12 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v11);
    MEMORY[0x1B271ACB0](v10);
    sub_1AFDFF2A8();
    if ((v12 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v15);
    }
  }

  sub_1AFDFF2A8();
  sub_1AFDFF2F8();
  v13 = sub_1AFDFE088();
  *(a3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
  sub_1AF0D6DF0(a1, a3[6] + *(*(v5 - 8) + 72) * v13, type metadata accessor for TextureCache.TextureKey);
  result = sub_1AF446690(a2, a3[7] + 104 * v13);
  ++a3[2];
  return result;
}

void sub_1AF8FA2AC(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v18, 0, 14);
      v7 = v18;
      v6 = v18;
      goto LABEL_19;
    }

    v8 = a3;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v9 - sub_1AFDFBDE8();
    }

    v12 = v10 - v9;
  }

  else
  {
    if (!v5)
    {
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      BYTE4(v18[1]) = BYTE4(a2);
      BYTE5(v18[1]) = BYTE5(a2);
      v6 = v18 + BYTE6(a2);
      v7 = v18;
      goto LABEL_19;
    }

    v8 = a3;
    v14 = a1;
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v14 - sub_1AFDFBDE8();
    }

    v12 = (a1 >> 32) - v14;
  }

  v15 = sub_1AFDFBDD8();
  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v16 + v11);
  if (v11)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  a3 = v8;
  a4 = v4;
LABEL_19:
  sub_1AF6052A4(v7, v6, a3, a4);
}

void *sub_1AF8FA484(uint64_t (*a1)(char *, _BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1AF8FA9C8(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1AF8FABF0(v11, v7, a3, v5);
  result = MEMORY[0x1B271DEA0](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1AF8FA604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v26 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v30 = (v9 - 1) & v9;
    v11 = __clz(__rbit64(v9)) | (v6 << 6);
LABEL_10:
    v15 = v11;
    v16 = 16 * v11;
    v17 = *(a3 + 56);
    v18 = (*(a3 + 48) + v16);
    v19 = v18[1];
    v29[0] = *v18;
    v29[1] = v19;
    v20 = (v17 + v16);
    v21 = v20[1];
    v28[0] = *v20;
    v28[1] = v21;

    v22 = a4(v29, v28);

    if (v4)
    {
      return result;
    }

    v9 = v30;
    if (v22)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++v26;
    }
  }

  v12 = v6 << 6;
  while (1)
  {
    v13 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FB190(a1, a2, v26, a3);
    }

    v14 = *(a3 + 8 * v6 + 72);
    v12 += 64;
    ++v6;
    if (v14)
    {
      v30 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v6 = v13;
      goto LABEL_10;
    }
  }
}

void *sub_1AF8FA7A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = v14 | (v9 << 6);
LABEL_10:
    v19 = *(a3 + 56);
    v20 = *(a3 + 48) + 8 * v15;
    v21 = *v20;
    LOBYTE(v20) = *(v20 + 4);
    v30 = v21;
    v31 = v20;
    sub_1AF904B14(v19 + *(v28 + 72) * v15, v8, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v22 = v29(&v30, v8);
    result = sub_1AF904B7C(v8, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++v27;
    }
  }

  v16 = v9 << 6;
  while (1)
  {
    v17 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      return sub_1AF8FB3D0(v26, v25, v27, a3);
    }

    v18 = *(a3 + 8 * v9 + 72);
    v16 += 64;
    ++v9;
    if (v18)
    {
      v12 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) + v16;
      v9 = v17;
      goto LABEL_10;
    }
  }
}

void *sub_1AF8FA9C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, _BYTE *))
{
  v27 = a4;
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for TextureCache.TextureKey(0);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = v14 | (v9 << 6);
LABEL_10:
    sub_1AF904B14(*(a3 + 48) + *(v25 + 72) * v15, v8, type metadata accessor for TextureCache.TextureKey);
    sub_1AF74EA6C(*(a3 + 56) + 104 * v15, v26);
    v19 = v27(v8, v26);
    sub_1AF74EA3C(v26);
    result = sub_1AF904B7C(v8, type metadata accessor for TextureCache.TextureKey);
    if (v4)
    {
      return result;
    }

    if (v19)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++v24;
    }
  }

  v16 = v9 << 6;
  while (1)
  {
    v17 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      return sub_1AF8FB9A8(v23, v22, v24, a3);
    }

    v18 = *(a3 + 8 * v9 + 72);
    v16 += 64;
    ++v9;
    if (v18)
    {
      v12 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) + v16;
      v9 = v17;
      goto LABEL_10;
    }
  }
}

void *sub_1AF8FABF0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, _BYTE *))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    bzero(a1, 8 * a2);
    a1 = v5;
    a2 = v6;
    a4 = v7;
  }

  v8 = sub_1AF8FA9C8(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1AF8FAC78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF444C24();
    v8 = sub_1AFDFE5C8();
    v9 = a2;
    v10 = v8;
    if (a2 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *a1;
    }

    v12 = 0;
    v13 = v8 + 64;
    v14 = a1 + 1;
    v40 = a2;
    v41 = v4;
    while (v11)
    {
      v42 = v5;
      v47 = (v11 - 1) & v11;
      v19 = __clz(__rbit64(v11)) | (v12 << 6);
LABEL_17:
      v23 = (*(v4 + 48) + 16 * v19);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v4 + 56) + 56 * v19);
      v27 = v26[1];
      v28 = v26[3];
      v44 = v26[2];
      v45 = *v26;
      v29 = v26[5];
      v43 = v26[4];
      v30 = v26[6];
      v31 = v10;
      sub_1AFDFF288();
      v46 = v30;
      v32 = v24;

      sub_1AFDFD038();
      v33 = sub_1AFDFF2F8();
      v10 = v31;
      v34 = -1 << *(v31 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
        v16 = v42;
      }

      else
      {
        v37 = (63 - v34) >> 6;
        v16 = v42;
        do
        {
          if (v36 + 1 == v37)
          {
            v36 = 0;
          }

          else
          {
            ++v36;
          }

          v38 = *(v13 + 8 * v36);
        }

        while (v38 == -1);
        v15 = __clz(__rbit64(~v38)) + (v36 << 6);
      }

      v9 = v40;
      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v31 + 48) + 16 * v15);
      *v17 = v32;
      v17[1] = v25;
      v18 = (*(v31 + 56) + 56 * v15);
      *v18 = v45;
      v18[1] = v27;
      v18[2] = v44;
      v18[3] = v28;
      v18[4] = v43;
      v18[5] = v29;
      v18[6] = v46;
      ++*(v31 + 16);
      v5 = v16 - 1;
      v4 = v41;
      v11 = v47;
      if (!v5)
      {
        return v10;
      }
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= v9)
      {
        return v10;
      }

      v22 = v14[v12];
      v20 += 64;
      ++v12;
      if (v22)
      {
        v42 = v5;
        v47 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF8FAF28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF445010();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v13 = a1 + 1;
    v33 = v4;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v11 << 6);
LABEL_17:
      v22 = *(v4 + 56);
      v23 = (*(v4 + 48) + 16 * v18);
      v24 = *v23;
      v25 = v23[1];
      sub_1AF4455CC(v22 + 88 * v18, v40);
      v36 = v40[2];
      v37 = v40[3];
      v38 = v40[4];
      v39 = v41;
      v34 = v40[0];
      v35 = v40[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v26 = sub_1AFDFF2F8();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = (63 - v27) >> 6;
        do
        {
          if (v29 + 1 == v30)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          v31 = *(v12 + 8 * v29);
        }

        while (v31 == -1);
        v14 = __clz(__rbit64(~v31)) + (v29 << 6);
      }

      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v9 + 48) + 16 * v14);
      *v15 = v24;
      v15[1] = v25;
      v16 = *(v9 + 56) + 88 * v14;
      *(v16 + 32) = v36;
      *(v16 + 48) = v37;
      *(v16 + 64) = v38;
      *(v16 + 80) = v39;
      *v16 = v34;
      *(v16 + 16) = v35;
      ++*(v9 + 16);
      --v5;
      v4 = v33;
      if (!v5)
      {
        return v9;
      }
    }

    v19 = v11 << 6;
    while (1)
    {
      v20 = v11 + 1;
      if (v11 + 1 >= a2)
      {
        return v9;
      }

      v21 = v13[v11];
      v19 += 64;
      ++v11;
      if (v21)
      {
        v10 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v11 = v20;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF8FB190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF4437DC();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v11 = 0;
      v10 = a1;
    }

    else
    {
      v10 = a1;
      v11 = *a1;
    }

    v12 = 0;
    v13 = v8 + 64;
    v14 = v10 + 1;
    v37 = v4;
    while (v11)
    {
      v38 = (v11 - 1) & v11;
      v19 = __clz(__rbit64(v11)) | (v12 << 6);
LABEL_17:
      v23 = 16 * v19;
      v24 = (*(v4 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v4 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v30 = sub_1AFDFF2F8();
      v31 = -1 << *(v9 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = (63 - v31) >> 6;
        do
        {
          if (v33 + 1 == v34)
          {
            v33 = 0;
          }

          else
          {
            ++v33;
          }

          v35 = *(v13 + 8 * v33);
        }

        while (v35 == -1);
        v15 = __clz(__rbit64(~v35)) + (v33 << 6);
      }

      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v9 + 48) + v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v9 + 56) + v16);
      *v18 = v28;
      v18[1] = v29;
      ++*(v9 + 16);
      --v5;
      v4 = v37;
      v11 = v38;
      if (!v5)
      {
        return v9;
      }
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= a2)
      {
        return v9;
      }

      v22 = v14[v12];
      v20 += 64;
      ++v12;
      if (v22)
      {
        v38 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

void *sub_1AF8FB3D0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
  }

  else
  {
    v43 = v10;
    sub_1AF68B08C(0);
    v12 = sub_1AFDFE5C8();
    v13 = v12;
    if (a2 < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *a1;
    }

    v15 = v43;
    v16 = 0;
    v17 = v12 + 64;
    v18 = a1 + 1;
    v41 = v12;
    v42 = a4;
    while (v14)
    {
      v21 = v15;
      v46 = (v14 - 1) & v14;
      v22 = __clz(__rbit64(v14)) | (v16 << 6);
LABEL_17:
      v26 = a4[7];
      v27 = a4[6] + 8 * v22;
      v28 = *v27;
      v29 = *(v27 + 4);
      v30 = v44;
      v31 = *(v45 + 72);
      sub_1AF904B14(v26 + v31 * v22, v44, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF0D6DF0(v30, v21, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v13 = v41;
      sub_1AFDFF288();
      if (v29 == 1)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = 3;
          }
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x1B271ACB0](v32);
      }

      else
      {
        MEMORY[0x1B271ACB0](2);
        sub_1AFDFF2C8();
      }

      v33 = sub_1AFDFF2F8();
      v34 = -1 << *(v13 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) != 0)
      {
        v19 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
        v15 = v43;
      }

      else
      {
        v37 = (63 - v34) >> 6;
        v15 = v43;
        do
        {
          if (v36 + 1 == v37)
          {
            v36 = 0;
          }

          else
          {
            ++v36;
          }

          v38 = *(v17 + 8 * v36);
        }

        while (v38 == -1);
        v19 = __clz(__rbit64(~v38)) + (v36 << 6);
      }

      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = *(v13 + 48) + 8 * v19;
      *v20 = v28;
      *(v20 + 4) = v29;
      sub_1AF0D6DF0(v15, *(v13 + 56) + v19 * v31, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++*(v13 + 16);
      --a3;
      a4 = v42;
      v14 = v46;
      if (!a3)
      {
        return v13;
      }
    }

    v23 = v16 << 6;
    while (1)
    {
      v24 = v16 + 1;
      if (v16 + 1 >= a2)
      {
        return v13;
      }

      v25 = v18[v16];
      v23 += 64;
      ++v16;
      if (v25)
      {
        v21 = v15;
        v46 = (v25 - 1) & v25;
        v22 = __clz(__rbit64(v25)) + v23;
        v16 = v24;
        goto LABEL_17;
      }
    }
  }

  return a4;
}

uint64_t sub_1AF8FB72C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF446DE8(0);
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v13 = a1 + 1;
    v33 = v4;
    while (v10)
    {
      v34 = (v10 - 1) & v10;
      v17 = __clz(__rbit64(v10)) | (v11 << 6);
LABEL_17:
      v21 = *(v4 + 56);
      v22 = *(v4 + 48) + 16 * v17;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 12);
      sub_1AF85B3D4(v21 + 96 * v17, v40);
      v37 = v40[2];
      v38 = v40[3];
      *v39 = v41[0];
      *&v39[9] = *(v41 + 9);
      v35 = v40[0];
      v36 = v40[1];
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v23);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v26 = sub_1AFDFF2F8();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = (63 - v27) >> 6;
        do
        {
          if (v29 + 1 == v30)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          v31 = *(v12 + 8 * v29);
        }

        while (v31 == -1);
        v14 = __clz(__rbit64(~v31)) + (v29 << 6);
      }

      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v9 + 48) + 16 * v14;
      *v15 = v23;
      *(v15 + 8) = v24;
      *(v15 + 12) = v25;
      v16 = (*(v9 + 56) + 96 * v14);
      v16[2] = v37;
      v16[3] = v38;
      v16[4] = *v39;
      *(v16 + 73) = *&v39[9];
      *v16 = v35;
      v16[1] = v36;
      ++*(v9 + 16);
      --v5;
      v4 = v33;
      v10 = v34;
      if (!v5)
      {
        return v9;
      }
    }

    v18 = v11 << 6;
    while (1)
    {
      v19 = v11 + 1;
      if (v11 + 1 >= a2)
      {
        return v9;
      }

      v20 = v13[v11];
      v18 += 64;
      ++v11;
      if (v20)
      {
        v34 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v11 = v19;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

void *sub_1AF8FB9A8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TextureCache.TextureKey(0);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25[-v12 - 8];
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
  }

  else
  {
    sub_1AF4465F4(0);
    v14 = sub_1AFDFE5C8();
    if (a2 < 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *a1;
    }

    v16 = 0;
    v17 = a1 + 1;
    while (v15)
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v16 << 6);
LABEL_15:
      sub_1AF904B14(a4[6] + *(v24 + 72) * v19, v13, type metadata accessor for TextureCache.TextureKey);
      sub_1AF74EA6C(a4[7] + 104 * v19, v26);
      sub_1AF0D6DF0(v13, v10, type metadata accessor for TextureCache.TextureKey);
      sub_1AF446690(v26, v25);
      sub_1AF8FA02C(v10, v25, v14);
      if (!--a3)
      {
        return v14;
      }
    }

    v20 = v16 << 6;
    while (1)
    {
      v21 = v16 + 1;
      if (v16 + 1 >= a2)
      {
        return v14;
      }

      v22 = v17[v16];
      v20 += 64;
      ++v16;
      if (v22)
      {
        v15 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v16 = v21;
        goto LABEL_15;
      }
    }
  }

  return a4;
}

uint64_t sub_1AF8FBBD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF904AA0(0, &unk_1EB63F530, sub_1AF444CB4, MEMORY[0x1E69E6EC8]);
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v13 = a1 + 1;
    v34 = v4;
    while (v10)
    {
      v36 = (v10 - 1) & v10;
      v17 = __clz(__rbit64(v10)) | (v11 << 6);
LABEL_17:
      v21 = (*(v4 + 48) + 16 * v17);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v4 + 56) + 24 * v17);
      v25 = v24[1];
      v35 = *v24;
      v26 = v24[2];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v27 = sub_1AFDFF2F8();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v28) >> 6;
        do
        {
          if (v30 + 1 == v31)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          v32 = *(v12 + 8 * v30);
        }

        while (v32 == -1);
        v14 = __clz(__rbit64(~v32)) + (v30 << 6);
      }

      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v9 + 48) + 16 * v14);
      *v15 = v22;
      v15[1] = v23;
      v16 = (*(v9 + 56) + 24 * v14);
      *v16 = v35;
      v16[1] = v25;
      v16[2] = v26;
      ++*(v9 + 16);
      --v5;
      v4 = v34;
      v10 = v36;
      if (!v5)
      {
        return v9;
      }
    }

    v18 = v11 << 6;
    while (1)
    {
      v19 = v11 + 1;
      if (v11 + 1 >= a2)
      {
        return v9;
      }

      v20 = v13[v11];
      v18 += 64;
      ++v11;
      if (v20)
      {
        v36 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v11 = v19;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF8FBE88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF904AA0(0, a5, a6, MEMORY[0x1E69E6EC8]);
    v10 = sub_1AFDFE5C8();
    v11 = v10;
    if (a2 < 1)
    {
      v13 = 0;
      v12 = a1;
    }

    else
    {
      v12 = a1;
      v13 = *a1;
    }

    v14 = 0;
    v15 = v10 + 64;
    v16 = v12 + 1;
    v34 = v6;
    while (v13)
    {
      v35 = (v13 - 1) & v13;
      v19 = __clz(__rbit64(v13)) | (v14 << 6);
LABEL_17:
      v23 = (*(v6 + 48) + 16 * v19);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v6 + 56) + 8 * v19);
      sub_1AFDFF288();

      sub_1AFDFD038();
      v27 = sub_1AFDFF2F8();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v28) >> 6;
        do
        {
          if (v30 + 1 == v31)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          v32 = *(v15 + 8 * v30);
        }

        while (v32 == -1);
        v17 = __clz(__rbit64(~v32)) + (v30 << 6);
      }

      *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v11 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v11 + 56) + 8 * v17) = v26;
      ++*(v11 + 16);
      --v7;
      v6 = v34;
      v13 = v35;
      if (!v7)
      {
        return v11;
      }
    }

    v20 = v14 << 6;
    while (1)
    {
      v21 = v14 + 1;
      if (v14 + 1 >= a2)
      {
        return v11;
      }

      v22 = v16[v14];
      v20 += 64;
      ++v14;
      if (v22)
      {
        v35 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v14 = v21;
        goto LABEL_17;
      }
    }
  }

  return v6;
}

uint64_t sub_1AF8FC1E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF43D0F8();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v11 = 0;
      v10 = a1;
    }

    else
    {
      v10 = a1;
      v11 = *a1;
    }

    v12 = 0;
    v13 = v8 + 64;
    v14 = v10 + 1;
    v36 = v4;
    while (v11)
    {
      v38 = (v11 - 1) & v11;
      v19 = __clz(__rbit64(v11)) | (v12 << 6);
LABEL_17:
      v23 = 16 * v19;
      v24 = (*(v4 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v4 + 56) + v23);
      v28 = v27[1];
      v37 = *v27;
      sub_1AFDFF288();

      sub_1AFDFD038();
      v29 = sub_1AFDFF2F8();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = (63 - v30) >> 6;
        do
        {
          if (v32 + 1 == v33)
          {
            v32 = 0;
          }

          else
          {
            ++v32;
          }

          v34 = *(v13 + 8 * v32);
        }

        while (v34 == -1);
        v15 = __clz(__rbit64(~v34)) + (v32 << 6);
      }

      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v9 + 48) + v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v9 + 56) + v16);
      v11 = v38;
      *v18 = v37;
      v18[1] = v28;
      ++*(v9 + 16);
      --v5;
      v4 = v36;
      if (!v5)
      {
        return v9;
      }
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= a2)
      {
        return v9;
      }

      v22 = v14[v12];
      v20 += 64;
      ++v12;
      if (v22)
      {
        v38 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

unint64_t sub_1AF8FC41C(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  v4 = sub_1AFDFF2F8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != v2)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF714348();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_1AF8FC724(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

uint64_t sub_1AF8FC530(uint64_t a1)
{
  v3 = *v1;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v4 = sub_1AFDFF2F8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AF7141C8();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1AF8FC8C4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1AF8FC634(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AFDFF278();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AF713788();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1AF8FCA64(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_1AF8FC724(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AFDFE078();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1AFDFF288();
        sub_1AFDFF2C8();
        v10 = sub_1AFDFF2F8() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 4 * v2);
          v13 = (v11 + 4 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  --*(v3 + 16);
  ++*(v3 + 36);
  return result;
}

unint64_t sub_1AF8FC8C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AFDFE078();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1AFDFF288();
        MEMORY[0x1B271ACB0](v10);
        v11 = sub_1AFDFF2F8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  --*(v3 + 16);
  ++*(v3 + 36);
  return result;
}

unint64_t sub_1AF8FCA64(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AFDFE078();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1AFDFF278() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9 || v2 < v12)
          {
            goto LABEL_5;
          }
        }

        else if (v12 < v9 && v2 < v12)
        {
          goto LABEL_5;
        }

        v15 = (v10 + 8 * v2);
        if (v2 != v6 || v15 >= v11 + 1)
        {
          *v15 = *v11;
          v2 = v6;
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  --*(v3 + 16);
  ++*(v3 + 36);
  return result;
}

uint64_t sub_1AF8FCBE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AF52C850(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AF8FCC08(unint64_t result, uint64_t a2)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v2);
    sub_1AFC75668(0, sub_1AF8FF330);
  }

  return result;
}

uint64_t sub_1AF8FCCC8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF5AA598();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1AF8FCD00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AF52C94C(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

unint64_t sub_1AF8FCD2C(unint64_t result, uint64_t a2)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v2);
    sub_1AFC75668(0, sub_1AF8FF36C);
  }

  return result;
}

uint64_t sub_1AF8FCDEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52CA48(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AF8FCE2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AF52CB58(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

unint64_t sub_1AF8FCE54(unint64_t result, uint64_t a2)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v2);
    sub_1AFC75668(0, sub_1AF8FF3AC);
  }

  return result;
}

uint64_t sub_1AF8FCF14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52CC48(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

unint64_t sub_1AF8FCF40(unint64_t result, uint64_t a2)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v2);
    sub_1AFC75668(0, sub_1AF8FF3E8);
  }

  return result;
}

uint64_t sub_1AF8FD008(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 <= 0xFD)
  {
    if (v3 > 0xFD)
    {
      return 0;
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    if ((v2 & 0x80) != 0)
    {
      if ((v3 & 0x80) == 0)
      {
        return 0;
      }

      v7 = 0;
      if (v10 != v12 || v9 != v11)
      {
        return v7;
      }
    }

    else
    {
      if ((v3 & 0x80) != 0)
      {
        return 0;
      }

      v7 = 0;
      if (v10 != v12 || v9 != v11 || ((v3 ^ v2) & 1) != 0)
      {
        return v7;
      }
    }
  }

  else if (v3 <= 0xFD)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  v6 = v5 & 0xFF00;
  if ((v4 & 0xFF00) == 0x300)
  {
    if (v6 == 768)
    {
      return 1;
    }
  }

  else if (v6 != 768 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v13 = v4 >> 8;
    v14 = v5 >> 8;
    if (v4)
    {
      if (v13 == v14 && (v5 & 1) != 0)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && *(a1 + 48) == *(a2 + 48) && v13 == v14)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1AF8FD11C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5 && a6 < 0;
  v9 = a6 ^ a3 ^ 1;
  if (a2 != a5)
  {
    v9 = 0;
  }

  if (a1 != a4)
  {
    v9 = 0;
  }

  if (a6 < 0)
  {
    v9 = 0;
  }

  if ((a3 & 0x80) == 0)
  {
    return v9;
  }

  return v8;
}

BOOL sub_1AF8FD160(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      return !a6 && *&a1 == *&a4;
    }

    if (a6 == 1)
    {
      v11 = 0;
      while (1)
      {
        v21 = a1;
        v18 = *(&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        v22 = a4;
        v13 = v18 == *(&v22 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        result = v13;
        if (v11 == 1)
        {
          break;
        }

        while (1)
        {
          ++v11;
          if (v13)
          {
            break;
          }

          v13 = 0;
          result = 0;
          if (v11 == 1)
          {
            return result;
          }
        }
      }

      return result;
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }

    v7 = 0;
    *&v8 = a1;
    *(&v8 + 1) = a2;
    *&v9 = a4;
    *(&v9 + 1) = a5;
    while (1)
    {
      v23 = v8;
      v19 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v24 = v9;
      v10 = v19 == *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      result = v10;
      if (v7 == 2)
      {
        break;
      }

      while (1)
      {
        ++v7;
        if (v10)
        {
          break;
        }

        v10 = 0;
        result = 0;
        if (v7 == 2)
        {
          return result;
        }
      }
    }
  }

  else
  {
    if (a6 != 3)
    {
      return 0;
    }

    v14 = 0;
    *&v15 = a1;
    *(&v15 + 1) = a2;
    *&v16 = a4;
    *(&v16 + 1) = a5;
    while (1)
    {
      v25 = v15;
      v20 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
      v26 = v16;
      v17 = v20 == *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
      result = v17;
      if (v14 == 3)
      {
        break;
      }

      while (1)
      {
        ++v14;
        if (v17)
        {
          break;
        }

        v17 = 0;
        result = 0;
        if (v14 == 3)
        {
          return result;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AF8FD320(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }

      return (a8 ^ a4) < 0x100u;
    }

    result = 0;
    if ((a8 & 1) == 0 && a3 == a7)
    {
      return (a8 ^ a4) < 0x100u;
    }
  }

  return result;
}

uint64_t sub_1AF8FD36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == a5 && a2 == a6 || (v9 = sub_1AFDFEE28(), result = 0, (v9 & 1) != 0))
  {
    if (a7)
    {
      v11 = a3 == a7;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (a3)
    {
      return v12;
    }

    else
    {
      return a7 == 0;
    }
  }

  return result;
}

uint64_t sub_1AF8FD3D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1AFDFD048();
  sub_1AFDFD078();

  return sub_1AFDFD1F8();
}

uint64_t sub_1AF8FD490(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v52 = a1[4];
  v53 = v2;
  v54 = a1[6];
  v3 = a1[1];
  *v49 = *a1;
  *&v49[16] = v3;
  v4 = a1[3];
  v50 = a1[2];
  v51 = v4;
  v5 = a2[1];
  v55 = *a2;
  v56 = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  v60 = a2[5];
  v61 = v8;
  v9 = a2[4];
  v58 = v7;
  v59 = v9;
  v57 = v6;
  v10 = v49[24];
  v11 = v49[25];
  v12 = v49[26];
  v13 = v49[27];
  v14 = *&v49[28];
  v15 = v50;
  v16 = DWORD1(v50);
  v17 = BYTE10(v50);
  v18 = WORD4(v50);
  sub_1AF5A57D8(v49, &v45);
  sub_1AF5A57D8(&v55, &v45);
  v43 = v11;
  v44 = v10;
  LOBYTE(v45) = v10;
  BYTE1(v45) = v11;
  v41 = v14;
  v42 = v12;
  BYTE2(v45) = v12;
  v38 = v13;
  v39 = v16;
  BYTE3(v45) = v13;
  HIDWORD(v45) = v14;
  v46 = __PAIR64__(v16, v15);
  v40 = v15;
  v48 = v17;
  v47 = v18;
  v19 = sub_1AF467494(&v45);
  v20 = BYTE10(v57);
  v21 = WORD4(v57);
  v22 = BYTE8(v56);
  v45 = *(&v56 + 1);
  v23 = BYTE9(v56);
  v24 = BYTE10(v56);
  v25 = BYTE11(v56);
  v26 = HIDWORD(v56);
  v46 = v57;
  v37 = v57;
  v48 = BYTE10(v57);
  v47 = WORD4(v57);
  if (v19 == sub_1AF467494(&v45) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, v27 = v21 | (v20 << 16), HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v18, v36 = v18 | (v17 << 16), v48 = BYTE2(v36), v28 = sub_1AF445CA8(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v28 == sub_1AF445CA8(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v29 = sub_1AF445CB0(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v29 == sub_1AF445CB0(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v30 = sub_1AF478AC0(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v30 == sub_1AF478AC0(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v31 = sub_1AF8FE1D8(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v31 == sub_1AF8FE1D8(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v32 = sub_1AF467494(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v32 == sub_1AF467494(&v45)) && *v49 == v55 && (*&v49[8] == __PAIR128__(v56, *(&v55 + 1)) || (sub_1AFDFEE28() & 1) != 0) && (sub_1AF776548(v53, v60) & 1) != 0)
  {
    v33 = sub_1AF7766FC(*(&v53 + 1), *(&v60 + 1));
    sub_1AF5A5834(&v55);
    sub_1AF5A5834(v49);
    v34 = v33 ^ 1;
  }

  else
  {
    sub_1AF5A5834(&v55);
    sub_1AF5A5834(v49);
    v34 = 1;
  }

  return v34 & 1;
}

unint64_t sub_1AF8FD90C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF8FD958(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF8FD9A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5465727574786574 && a2 == 0xEB00000000657079 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEB0000000074616DLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF242F0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43656C706D6173 && a2 == 0xEB00000000746E75 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E654C7961727261 && a2 == 0xEB00000000687467 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AFF24330 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C7A7A697773 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D656761726F7473 && a2 == 0xEB0000000065646FLL)
  {

    return 11;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1AF8FDD7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF8FDDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687464695778616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686769654878616DLL && a2 == 0xE900000000000074 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657073417065656BLL && a2 == 0xEF6F697461527463)
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

unint64_t sub_1AF8FDEF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF8FDF3C(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 12;
  }

  else
  {
    return byte_1AFE849E8[a1];
  }
}

double sub_1AF8FDF5C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF0D5A54(a1, v20);
  if (swift_dynamicCast())
  {
    *&v4 = v19;
    v18 = v4;
    v5 = 0x80;
  }

  else
  {
    v6 = a1[3];
    v7 = sub_1AF441150(a1, v6);
    v8 = MEMORY[0x1EEE9AC00](v7);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    sub_1AF879030(v10, v6, v20);
    if (v21 == 255)
    {
      v17 = 0u;
      v18 = 0u;
      v5 = -16;
      v15 = 0u;
      v16 = 0u;
    }

    else
    {
      v16 = v20[3];
      v17 = v20[2];
      v5 = v21 & 0xF;
      v15 = v20[1];
      v18 = v20[0];
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v12 = v15;
  *a2 = v18;
  *(a2 + 16) = v12;
  v14 = v16;
  result = *&v17;
  *(a2 + 32) = v17;
  *(a2 + 48) = v14;
  *(a2 + 64) = v5;
  return result;
}

void sub_1AF8FE0E0(uint64_t a1)
{
  if (!qword_1EB632E50)
  {
    sub_1AF4498F4(255, &qword_1EB632E60, &protocol descriptor for AssetPathResolver, 0);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB632E50);
    }
  }
}

void sub_1AF8FE14C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF4498F4(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF8FE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF8FE244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9061B8(0, &qword_1EB633B20, sub_1AF905D9C, &type metadata for TextureOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v13 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF905D9C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v13;
  sub_1AF905DF0();
  sub_1AFDFE768();
  (*(v10 + 8))(v8, v6);
  v11 = v14;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v11;
  *(a2 + 24) = -2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 768;
  return result;
}

uint64_t sub_1AF8FE43C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9061B8(0, &qword_1ED721F00, sub_1AF8FF428, &_s10CodingKeysON_0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (!sub_1AF694FF8(1077, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      v14 = *(&v23 + 1);
      sub_1AF441150(&v22, *(&v23 + 1));
      sub_1AFDFEE58();
      v21 = v16;
      v15 = 0;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v22);
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v29 = a2;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FF428();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v28) = 0;
  sub_1AF882388();
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v21 = v22;
  v19 = v24;
  v20 = v23;
  v7 = v25;
  v14 = v26;
  v15 = v27 & 0xF;
  a2 = v29;
LABEL_7:
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v17 = v19;
  v18 = v20;
  *a2 = v21;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v7;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  return result;
}

void *sub_1AF8FEAE4(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640210, sub_1AF90455C, &type metadata for TextureFileData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF90455C();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8710A0();
    sub_1AFDFE6E8();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF8FECA8(void *a1)
{
  sub_1AF9061B8(0, &qword_1ED722FD0, sub_1AF8FEFA0, &type metadata for TextureLoadPolicy.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FEFA0();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if (sub_1AF69504C(2040, v8, v9))
  {
    v16[15] = 0;
    sub_1AF8FEFF4();
    sub_1AFDFE768();
    v10 = v17;
    v11 = v17;
  }

  else
  {
    v23 = 1;
    sub_1AF8FEFF4();
    sub_1AFDFE768();
    v11 = v24;
    v21 = 2;
    sub_1AFDFE768();
    v10 = v22;
  }

  v19 = 3;
  sub_1AF8FF048();
  sub_1AFDFE768();
  v12 = v20;
  v18 = 4;
  v14 = sub_1AFDFE718();
  (*(v5 + 8))(v7, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v14)
  {
    v15 = 0x1000000;
  }

  else
  {
    v15 = 0;
  }

  return v15 | (v12 << 16) | (v10 << 8) | v11;
}

unint64_t sub_1AF8FEFA0()
{
  result = qword_1ED725418;
  if (!qword_1ED725418)
  {
    result = swift_getWitnessTable(byte_1AFE8392C, &type metadata for TextureLoadPolicy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED725418);
  }

  return result;
}

unint64_t sub_1AF8FEFF4()
{
  result = qword_1ED725610;
  if (!qword_1ED725610)
  {
    result = swift_getWitnessTable(byte_1AFE83904, &type metadata for LoadPolicyMode, v0, v1);
    atomic_store(result, &qword_1ED725610);
  }

  return result;
}

unint64_t sub_1AF8FF048()
{
  result = qword_1ED72B2A8;
  if (!qword_1ED72B2A8)
  {
    result = swift_getWitnessTable(byte_1AFE838DC, &type metadata for TextureFallback, v0, v1);
    atomic_store(result, &qword_1ED72B2A8);
  }

  return result;
}

unint64_t sub_1AF8FF09C()
{
  result = qword_1EB640138;
  if (!qword_1EB640138)
  {
    result = swift_getWitnessTable(byte_1AFE838B4, &type metadata for LoadPolicyMode, v0, v1);
    atomic_store(result, &qword_1EB640138);
  }

  return result;
}

unint64_t sub_1AF8FF0F0()
{
  result = qword_1EB640140;
  if (!qword_1EB640140)
  {
    result = swift_getWitnessTable(byte_1AFE8388C, &type metadata for TextureFallback, v0, v1);
    atomic_store(result, &qword_1EB640140);
  }

  return result;
}

uint64_t sub_1AF8FF144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AF90540C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AF8FF1B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52CC48(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1AF8FF1EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52CB58(a1, a2, v3);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1AF8FF220@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF5AA598();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1AF8FF268@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52CA48(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AF8FF2B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52C94C(a1, a2, v3);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t sub_1AF8FF2FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52C850(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AF8FF428()
{
  result = qword_1ED7229B8;
  if (!qword_1ED7229B8)
  {
    result = swift_getWitnessTable(aI_45, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1ED7229B8);
  }

  return result;
}

uint64_t sub_1AF8FF47C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9061B8(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8FF4E0()
{
  result = qword_1EB640158;
  if (!qword_1EB640158)
  {
    result = swift_getWitnessTable(byte_1AFE837FC, &_s19PostTypeCodingErrorON, v0, v1);
    atomic_store(result, &qword_1EB640158);
  }

  return result;
}

float sub_1AF8FF544(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640418, sub_1AF906164, &type metadata for TextureRequireMask.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AF906164();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11[14] = 0;
    sub_1AF51CA04();
    sub_1AFDFE768();
    v11[13] = 1;
    sub_1AFDFE738();
    v2 = v10;
    (*(v6 + 8))(v8, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF8FF740(void *a1)
{
  v3 = a1[3];
  sub_1AF441150(a1, v3);
  sub_1AFDFF398();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF441150(v6, v6[3]);
    sub_1AFDFEE58();
    v3 = v4;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF8FFAD0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v88 = a2;
  sub_1AF9061B8(0, &qword_1EB632878, sub_1AF9047C4, &type metadata for TextureShaderAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v89 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - v6;
  CFXTextureDescriptorMakeDefault(&v116);
  v8 = MEMORY[0x1E69E7CC0];
  *&v93 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
  v92 = sub_1AF42C520(v8);
  v90 = sub_1AF42CA3C(v8);
  v91 = v9;
  v10 = a1[3];
  v133 = a1;
  sub_1AF441150(a1, v10);
  sub_1AF9047C4();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v133);
    v103 = 0xFFFFFFFFLL;
    v104 = 0;
    v105 = 0xE000000000000000;
    v106 = v116;
    v107 = v117;
    v108 = MEMORY[0x1E69E7CC8];
    v109 = MEMORY[0x1E69E7CC0];
    v110 = MEMORY[0x1E69E7CC0];
    v111 = MEMORY[0x1E69E7CC0];
    v112 = v93;
    v113 = v92;
    v114 = v90;
    v115 = v91;
    return sub_1AF5A5834(&v103);
  }

  LOBYTE(v103) = 0;
  v12 = sub_1AFDFE708();
  v14 = v13;
  v87 = v7;
  v15 = v133[3];
  v16 = v133[4];
  sub_1AF441150(v133, v15);
  if (sub_1AF694FF8(1048, v15, v16))
  {
    LOBYTE(v94) = 3;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v86 = v103;
  }

  else
  {
    v86 = 0xFFFFFFFFLL;
  }

  v17 = v133[3];
  v18 = v133[4];
  sub_1AF441150(v133, v17);
  if (sub_1AF694FF8(1081, v17, v18))
  {
    sub_1AF5A56DC();
    LOBYTE(v94) = 2;
    sub_1AF90492C(&qword_1EB632AF8, sub_1AF5A56DC, sub_1AF8AB790);
    sub_1AFDFE6E8();
    v19 = v89;
    v20 = v103;
    if (!v103)
    {
      v20 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
    }

    *&v93 = v20;
    goto LABEL_60;
  }

  sub_1AF904818();
  LOBYTE(v94) = 2;
  sub_1AF90492C(&qword_1EB640290, sub_1AF904818, sub_1AF904878);
  sub_1AFDFE6E8();
  v21 = v103;
  v83 = v12;
  if (!v103)
  {
    v21 = sub_1AF43DE28(MEMORY[0x1E69E7CC0]);
  }

  v22 = 0;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21[8];
  v26 = (v23 + 63) >> 6;
  v27 = v93;
  v84 = v26;
  v85 = v21;
  while (v25)
  {
    v30 = v22;
LABEL_24:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = v31 | (v30 << 6);
    v33 = *(v21[6] + 8 * v32);
    v34 = v21[7] + 32 * v32;
    v93 = *v34;
    v35 = *(v34 + 16);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
        v103 = v27;
        v42 = sub_1AF449CB8(v33);
        v43 = v27[2] + ((v41 & 1) == 0);
        if (v27[3] >= v43)
        {
          if ((v82 & 1) == 0)
          {
            v82 = v42;
            v64 = v41;
            sub_1AF846FA0();
            LOBYTE(v41) = v64;
            v42 = v82;
          }
        }

        else
        {
          HIDWORD(v81) = v41;
          sub_1AF830CA0(v43, v82);
          v44 = sub_1AF449CB8(v33);
          v45 = v41 & 1;
          LOBYTE(v41) = BYTE4(v81);
          if ((BYTE4(v81) & 1) != v45)
          {
            goto LABEL_63;
          }

          v42 = v44;
        }

        v21 = v85;
        v27 = v103;
        if ((v41 & 1) == 0)
        {
          *(v103 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          *(v27[6] + 8 * v42) = v33;
          v28 = v27[7] + 80 * v42;
          *v28 = v93;
          v29 = 2;
          goto LABEL_17;
        }

        v58 = *(v103 + 56) + 80 * v42;
        *v58 = v93;
        v59 = 2;
      }

      else
      {
        LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
        v103 = v27;
        v52 = sub_1AF449CB8(v33);
        v53 = v27[2] + ((v51 & 1) == 0);
        if (v27[3] >= v53)
        {
          if ((v82 & 1) == 0)
          {
            v82 = v52;
            v66 = v51;
            sub_1AF846FA0();
            LOBYTE(v51) = v66;
            v52 = v82;
          }
        }

        else
        {
          HIDWORD(v81) = v51;
          sub_1AF830CA0(v53, v82);
          v54 = sub_1AF449CB8(v33);
          v55 = v51 & 1;
          LOBYTE(v51) = BYTE4(v81);
          if ((BYTE4(v81) & 1) != v55)
          {
LABEL_63:
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v52 = v54;
        }

        v21 = v85;
        v27 = v103;
        if ((v51 & 1) == 0)
        {
          *(v103 + 8 * (v52 >> 6) + 64) |= 1 << v52;
          *(v27[6] + 8 * v52) = v33;
          v28 = v27[7] + 80 * v52;
          *v28 = v93;
          v29 = 3;
LABEL_17:
          *(v28 + 64) = v29;
LABEL_18:
          ++v27[2];
          goto LABEL_19;
        }

        v58 = *(v103 + 56) + 80 * v52;
        *v58 = v93;
        v59 = 3;
      }

      *(v58 + 64) = v59;
    }

    else if (v35)
    {
      LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
      v103 = v27;
      v47 = sub_1AF449CB8(v33);
      v48 = v27[2] + ((v46 & 1) == 0);
      if (v27[3] >= v48)
      {
        if ((v82 & 1) == 0)
        {
          v82 = v47;
          v65 = v46;
          sub_1AF846FA0();
          LOBYTE(v46) = v65;
          v47 = v82;
        }
      }

      else
      {
        HIDWORD(v81) = v46;
        sub_1AF830CA0(v48, v82);
        v49 = sub_1AF449CB8(v33);
        v50 = v46 & 1;
        LOBYTE(v46) = BYTE4(v81);
        if ((BYTE4(v81) & 1) != v50)
        {
          goto LABEL_63;
        }

        v47 = v49;
      }

      v21 = v85;
      v27 = v103;
      if ((v46 & 1) == 0)
      {
        *(v103 + 8 * (v47 >> 6) + 64) |= 1 << v47;
        *(v27[6] + 8 * v47) = v33;
        v62 = v27[7] + 80 * v47;
        *v62 = v93;
        *(v62 + 64) = 1;
        goto LABEL_18;
      }

      v60 = *(v103 + 56) + 80 * v47;
      *v60 = v93;
      *(v60 + 64) = 1;
    }

    else
    {
      LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
      v103 = v27;
      v37 = sub_1AF449CB8(v33);
      v38 = v27[2] + ((v36 & 1) == 0);
      if (v27[3] >= v38)
      {
        if ((v82 & 1) == 0)
        {
          v82 = v37;
          v63 = v36;
          sub_1AF846FA0();
          LOBYTE(v36) = v63;
          v37 = v82;
        }
      }

      else
      {
        HIDWORD(v81) = v36;
        sub_1AF830CA0(v38, v82);
        v39 = sub_1AF449CB8(v33);
        v40 = v36 & 1;
        LOBYTE(v36) = BYTE4(v81);
        if ((BYTE4(v81) & 1) != v40)
        {
          goto LABEL_63;
        }

        v37 = v39;
      }

      v21 = v85;
      v56 = v93;
      v27 = v103;
      if ((v36 & 1) == 0)
      {
        *(v103 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        *(v27[6] + 8 * v37) = v33;
        v61 = v27[7] + 80 * v37;
        *v61 = v56;
        *(v61 + 64) = 0;
        goto LABEL_18;
      }

      v57 = *(v103 + 56) + 80 * v37;
      *v57 = v93;
      *(v57 + 64) = 0;
    }

LABEL_19:
    v22 = v30;
    v26 = v84;
  }

  while (1)
  {
    v30 = v22 + 1;
    if (v22 + 1 >= v26)
    {
      break;
    }

    v25 = v21[v22++ + 9];
    if (v25)
    {
      goto LABEL_24;
    }
  }

  *&v93 = v27;

  v12 = v83;
  v19 = v89;
LABEL_60:
  sub_1AF9048CC();
  LOBYTE(v94) = 4;
  sub_1AF90492C(&qword_1EB632AE8, sub_1AF9048CC, sub_1AF47FEB4);
  sub_1AFDFE6E8();
  v67 = v103;
  if (!v103)
  {
    v67 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);
  }

  v92 = v67;
  v100 = 1;
  sub_1AF6086F8();
  v68 = v87;
  sub_1AFDFE768();
  v116 = v101;
  v117 = v102;
  v118 = v86;
  v119 = v12;
  v120 = v14;
  v121 = v101;
  v122 = v102;
  v123 = MEMORY[0x1E69E7CC8];
  v89 = v5;
  v69 = v19;
  v70 = MEMORY[0x1E69E7CC0];
  v124 = MEMORY[0x1E69E7CC0];
  v125 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  v127 = v93;
  v71 = v12;
  v83 = v12;
  v72 = v92;
  v128 = v92;
  v129 = v90;
  v130 = v91;
  v131 = v91;
  v132[0] = v90;
  v73 = sub_1AF8E5418();
  v91 = v74;
  (*(v69 + 8))(v68, v89);
  sub_1AF8FE1E4(v132, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
  sub_1AF8FE1E4(&v131, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
  LODWORD(v68) = v86;
  LODWORD(v69) = HIDWORD(v86);
  *&v94 = v86;
  *(&v94 + 1) = v71;
  *&v95[0] = v14;
  *(v95 + 8) = v116;
  *(&v95[1] + 1) = v117;
  *&v96 = MEMORY[0x1E69E7CC8];
  *(&v96 + 1) = v70;
  *&v97 = v70;
  *(&v97 + 1) = v70;
  v75 = v93;
  *&v98 = v93;
  *(&v98 + 1) = v72;
  v76 = v91;
  *&v99 = v73;
  *(&v99 + 1) = v91;
  sub_1AF5A57D8(&v94, &v103);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v133);
  v103 = __PAIR64__(v69, v68);
  v104 = v83;
  v105 = v14;
  v106 = v116;
  v107 = v117;
  v108 = MEMORY[0x1E69E7CC8];
  v109 = v70;
  v110 = v70;
  v111 = v70;
  v112 = v75;
  v113 = v92;
  v114 = v73;
  v115 = v76;
  result = sub_1AF5A5834(&v103);
  v77 = v98;
  v78 = v88;
  v88[4] = v97;
  v78[5] = v77;
  v78[6] = v99;
  v79 = v95[0];
  *v78 = v94;
  v78[1] = v79;
  v80 = v96;
  v78[2] = v95[1];
  v78[3] = v80;
  return result;
}

void *sub_1AF9006C8(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640238, sub_1AF9045B0, &type metadata for TextureArrayFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v12 = MEMORY[0x1E69E7CC0];
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF9045B0();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8D9EB0(MEMORY[0x1E69E7CC0]);

    sub_1AF0D0F04(0, &qword_1EB63A870, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1AF904604(&unk_1EB640250, &qword_1EB633060, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    sub_1AF8DA164(v11[1]);
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF900920@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = a2;
  sub_1AF9061B8(0, &qword_1EB633AD0, sub_1AF9046C8, &type metadata for TextureLoadingOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9046C8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v16;
  sub_1AF90471C();
  sub_1AFDFE768();
  (*(v6 + 8))(v8, v5);
  v12 = v14[2];
  v13 = v14[3];
  v14[0] = v15[0];
  *(v14 + 10) = *(v15 + 10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v11 = v13;
  *v9 = v12;
  v9[1] = v11;
  v9[2] = v14[0];
  *(v9 + 42) = *(v14 + 10);
  return result;
}

uint64_t sub_1AF900B10(void *a1)
{
  v3 = MEMORY[0x1E69E6F48];
  sub_1AF9061B8(0, &qword_1EB632868, sub_1AF905E98, &type metadata for TextureDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  sub_1AF9061B8(0, &unk_1EB632858, sub_1AF905EEC, &type metadata for TextureDescriptorCoder.CodingKeys_pre2019, v3);
  v8 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  CFXTextureDescriptorMakeDefault(&v36);
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  v13 = sub_1AF69504C(2019, v11, v12);
  sub_1AF441150(a1, a1[3]);
  if (v13)
  {
    sub_1AF905EEC();
    sub_1AFDFF3B8();
    if (!v1)
    {
      type metadata accessor for MTLTextureType(0);
      v35 = 0;
      sub_1AF9027C4(&unk_1ED721FB0, type metadata accessor for MTLTextureType, protocol conformance descriptor for MTLTextureType);
      sub_1AFDFE768();
      sub_1AF466BDC(v37, &v36);
      type metadata accessor for MTLPixelFormat(0);
      v35 = 1;
      sub_1AF9027C4(&qword_1EB632A40, type metadata accessor for MTLPixelFormat, protocol conformance descriptor for MTLPixelFormat);
      sub_1AFDFE768();
      sub_1AF46748C(v37, &v36);
      LOBYTE(v37) = 2;
      v14 = sub_1AFDFE748();
      sub_1AF46749C(v14, &v36);
      LOBYTE(v37) = 3;
      v15 = sub_1AFDFE748();
      sub_1AF4674A4(v15, &v36);
      LOBYTE(v37) = 4;
      v16 = sub_1AFDFE748();
      sub_1AF4674AC(v16, &v36);
      LOBYTE(v37) = 5;
      v17 = sub_1AFDFE748();
      sub_1AF4674B4(v17, &v36);
      LOBYTE(v37) = 6;
      v18 = sub_1AFDFE748();
      sub_1AF9027BC(v18, &v36);
      LOBYTE(v37) = 7;
      v19 = sub_1AFDFE748();
      sub_1AF4674C8(v19, &v36);
      type metadata accessor for MTLTextureUsage(0);
      v35 = 9;
      sub_1AF9027C4(&unk_1EB6329F8, type metadata accessor for MTLTextureUsage, protocol conformance descriptor for MTLTextureUsage);
      sub_1AFDFE768();
      sub_1AF5F7484(v37, &v36);
      LOBYTE(v37) = 10;
      v20 = sub_1AFDFE718();
      sub_1AF905F40(v20 & 1, &v36);
      type metadata accessor for MTLTextureSwizzleChannels(0);
      v35 = 11;
      sub_1AF9027C4(&qword_1EB632970, type metadata accessor for MTLTextureSwizzleChannels, protocol conformance descriptor for MTLTextureSwizzleChannels);
      sub_1AFDFE768();
      LODWORD(v36) = v37;
      type metadata accessor for MTLResourceOptions(0);
      v35 = 8;
      sub_1AF9027C4(&qword_1EB640378, type metadata accessor for MTLResourceOptions, protocol conformance descriptor for MTLResourceOptions);
      sub_1AFDFE768();
      sub_1AF5F7474((v37 >> 4) & 2, &v36);
      (*(v32 + 8))(v10, v8);
LABEL_12:
      v8 = v36;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v8;
    }
  }

  else
  {
    sub_1AF905E98();
    sub_1AFDFF3B8();
    if (!v1)
    {
      type metadata accessor for MTLTextureType(0);
      v35 = 0;
      sub_1AF9027C4(&unk_1ED721FB0, type metadata accessor for MTLTextureType, protocol conformance descriptor for MTLTextureType);
      sub_1AFDFE768();
      sub_1AF466BDC(v37, &v36);
      type metadata accessor for MTLPixelFormat(0);
      v35 = 1;
      sub_1AF9027C4(&qword_1EB632A40, type metadata accessor for MTLPixelFormat, protocol conformance descriptor for MTLPixelFormat);
      sub_1AFDFE768();
      sub_1AF46748C(v37, &v36);
      LOBYTE(v37) = 2;
      v21 = sub_1AFDFE748();
      sub_1AF46749C(v21, &v36);
      LOBYTE(v37) = 3;
      v22 = sub_1AFDFE748();
      sub_1AF4674A4(v22, &v36);
      LOBYTE(v37) = 4;
      v23 = sub_1AFDFE748();
      sub_1AF4674AC(v23, &v36);
      LOBYTE(v37) = 5;
      v24 = sub_1AFDFE748();
      sub_1AF4674B4(v24, &v36);
      LOBYTE(v37) = 6;
      v25 = sub_1AFDFE748();
      sub_1AF9027BC(v25, &v36);
      LOBYTE(v37) = 7;
      v26 = sub_1AFDFE748();
      sub_1AF4674C8(v26, &v36);
      type metadata accessor for MTLTextureUsage(0);
      v35 = 8;
      sub_1AF9027C4(&unk_1EB6329F8, type metadata accessor for MTLTextureUsage, protocol conformance descriptor for MTLTextureUsage);
      sub_1AFDFE768();
      sub_1AF5F7484(v37, &v36);
      LOBYTE(v37) = 9;
      v28 = sub_1AFDFE718();
      sub_1AF905F40(v28 & 1, &v36);
      type metadata accessor for MTLTextureSwizzleChannels(0);
      v35 = 10;
      sub_1AF9027C4(&qword_1EB632970, type metadata accessor for MTLTextureSwizzleChannels, protocol conformance descriptor for MTLTextureSwizzleChannels);
      sub_1AFDFE768();
      LODWORD(v36) = v37;
      LOBYTE(v37) = 11;
      v29 = sub_1AFDFE7B8();
      if (v29 == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      sub_1AF5F7474(v30, &v36);
      (*(v33 + 8))(v6, v34);
      goto LABEL_12;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF901518(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB6403D8, sub_1AF906068, &type metadata for TextureRequireSizeLimit.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF906068();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1AFDFE748();
    v12 = 1;
    sub_1AFDFE748();
    v11 = 2;
    sub_1AFDFE718();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF90171C(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640400, sub_1AF906110, &type metadata for RenderGraphTextureTarget.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF906110();
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v14 = 0;
    sub_1AF8FF048();
    sub_1AFDFE768();
    v9 = v15;
    v13 = 1;
    v11 = sub_1AFDFE6A8();
    (*(v5 + 8))(v7, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v9 & 0xFFFFFEFF | ((v11 & 1) << 8);
  }

  return v8;
}

uint64_t sub_1AF90190C(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB633AC0, sub_1AF9043DC, &type metadata for TextureRequireAnimationRepresentation.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9043DC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF90540C(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v18 = 0;
    sub_1AF904484(&qword_1ED7231B0, MEMORY[0x1E69E6560], MEMORY[0x1E69E7C88]);
    sub_1AFDFE768();
    v9 = v17;
    LOBYTE(v16) = 1;
    v8 = sub_1AFDFE748();
    v15 = v9;
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    if (!sub_1AF69504C(1009, v11, v12))
    {
      LOBYTE(v16) = 2;
      sub_1AFDFE748();
    }

    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF69504C(2011, v13, v14))
    {
      LOBYTE(v16) = 4;
      sub_1AFDFE718();
    }

    else
    {
      v18 = 3;
      sub_1AF904430();
      sub_1AFDFE768();
    }

    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF901CCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);

  v3 = sub_1AF64B03C(&type metadata for TextureLoadPolicy, &off_1F25447A8);
  v5 = v4;

  if ((v5 & 1) != 0 || !*(v3 + 4 * v2))
  {

    v6 = sub_1AF64B03C(&type metadata for TextureLoadingOptions, &off_1F2543F60);
    v8 = v7;

    if (v8)
    {
      goto LABEL_22;
    }

    v9 = *(v6 + (v2 << 6));
    if ((v9 & 1) == 0)
    {
      *(v6 + (v2 << 6)) = v9 | 1;
    }
  }

  else
  {
    if (*(v3 + 4 * v2) != 1)
    {
      sub_1AF8DAED8(0, &type metadata for TextureCPURuntime, &off_1F2543E80, sub_1AF6AFAF8);
      goto LABEL_10;
    }

    sub_1AF649C6C(*(v1 + 40), &type metadata for TextureLoadRequestCPU, v18);
    if (v18[0] != 1)
    {
      goto LABEL_10;
    }
  }

  sub_1AF8DB780(0, &type metadata for TextureCPURuntime, &off_1F2543E80, sub_1AF90705C);
LABEL_10:

  v10 = sub_1AF64B03C(&type metadata for TextureLoadPolicy, &off_1F25447A8);
  v12 = v11;

  if ((v12 & 1) != 0 || !*(v10 + 4 * v2 + 1))
  {

    v14 = sub_1AF64B03C(&type metadata for TextureLoadingOptions, &off_1F2543F60);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v17 = *(v14 + (v2 << 6));
      if ((v17 & 2) == 0)
      {
        *(v14 + (v2 << 6)) = v17 | 2;
      }

      return sub_1AF8DB780(0, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF90705C);
    }

LABEL_22:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (*(v10 + 4 * v2 + 1) != 1)
  {
    return sub_1AF8DAED8(0, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF90705C);
  }

  result = sub_1AF649C6C(*(v1 + 40), &type metadata for TextureLoadRequestGPU, &v19);
  if (v19 == 1)
  {
    return sub_1AF8DB780(0, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF90705C);
  }

  return result;
}

void sub_1AF901FA0(uint64_t a1, uint64_t *a2)
{
  sub_1AF0D4E74(0);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v38 = 0x80000001AFF39BE0;
  v31 = (v8 + 32);
  v9 = 0x20u;
  v30 = xmmword_1AFE431C0;
  v32 = a1;
  v33 = v7;
  do
  {
    v10 = *(&unk_1F24FEB28 + v9);
    if (v10 <= 15)
    {
      if (v10 > 3)
      {
        if (v10 == 4)
        {
          v11 = &type metadata for TextureRequireNonSRGB;
          v12 = &off_1F25461D8;
          goto LABEL_32;
        }

        if (v10 == 8)
        {
          v11 = &type metadata for TextureRequireUnpremultiply;
          v12 = &off_1F25461F8;
          goto LABEL_32;
        }
      }

      else
      {
        if (v10 == 1)
        {
          v11 = &type metadata for TextureRequireCPURepresentation;
          v12 = &off_1F2544440;
          goto LABEL_32;
        }

        if (v10 == 2)
        {
          v11 = &type metadata for TextureRequireGPURepresentation;
          v12 = &off_1F25442D0;
          goto LABEL_32;
        }
      }
    }

    else if (v10 <= 63)
    {
      if (v10 == 16)
      {
        v11 = &type metadata for TextureRequireCubemap;
        v12 = &off_1F2546218;
        goto LABEL_32;
      }

      if (v10 == 32)
      {
        v11 = &type metadata for TextureRequireMipmap;
        v12 = &off_1F2546458;
        goto LABEL_32;
      }
    }

    else
    {
      switch(v10)
      {
        case 64:
          v11 = &type metadata for TextureRequireMipmapGeneration;
          v12 = &off_1F2546238;
          goto LABEL_32;
        case 128:
          v11 = &type metadata for TextureRequirePremultiplyWithLinearAlpha;
          v12 = &off_1F2546258;
          goto LABEL_32;
        case 256:
          v11 = &type metadata for TextureRequireIOSurface;
          v12 = &off_1F2546278;
          goto LABEL_32;
      }
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v13 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED73B890;
    sub_1AF8FE14C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = v30;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1AF0D544C();
    *(v15 + 32) = 0xD000000000000016;
    *(v15 + 40) = v38;
    sub_1AFDFC4C8(v13, &dword_1AF0CE000, v14, "%{public}s", 10, 2, v15);

    v16 = v34;
    sub_1AFDFC288();
    v17 = v37[12];
    v18 = v37[16];
    v19 = v13;
    v20 = v36;
    v21 = &v36[v37[20]];
    (*v31)(v36, v16, v35);
    *(v20 + v17) = v19;
    *(v20 + v18) = 0;
    *v21 = 0xD000000000000016;
    *(v21 + 1) = v38;
    sub_1AFDFC608();

    sub_1AF904B7C(v20, sub_1AF0D4E74);
    v11 = &type metadata for NullEntityComponent;
    v12 = &off_1F2532748;
    a1 = v32;
    v7 = v33;
LABEL_32:
    v22 = *(*(*(a1 + 8) + 40) + 16);
    v23 = *(v22 + 128);
    v24 = *(v23 + 16);
    if ((v10 & ~v7) != 0)
    {
      if (v24)
      {
        v27 = sub_1AF449CB8(v11);
        if ((v28 & 1) != 0 && *(*(v22 + 24) + 16 * *(*(v23 + 56) + 8 * v27) + 32) == v11)
        {
          sub_1AF6AF8F4(v11, 0, v11, v12);
        }
      }
    }

    else if (!v24 || (v25 = sub_1AF449CB8(v11), (v26 & 1) == 0) || *(*(v22 + 24) + 16 * *(*(v23 + 56) + 8 * v25) + 32) != v11)
    {
      sub_1AF6AF9F8(v11, 0, v11, v12);
    }

    v9 += 8;
  }

  while (v9 != 104);
}