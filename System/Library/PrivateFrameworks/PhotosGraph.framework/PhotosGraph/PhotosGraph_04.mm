char *sub_22F13FB00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0DB8, &qword_22F771158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F13FC0C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1140, &qword_22F771148);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0DB0, &qword_22F771150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F13FD40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1150, &unk_22F771580);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DA0, &qword_22F771140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F13FEE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22F140060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D38, &unk_22F7715D0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22F1401B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0CD0, &unk_22F771060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F140334(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_22F140544(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22F140724(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_22F146558(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_22F741980();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(*(a1 + 56) + 8 * result) + 16);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_22F146558((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_22F107D18(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_22F107D18(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F140944(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_22F146454(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_22F741980();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_22F146454((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_22F107D18(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t RecentlyUsedSongs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_22F1229E8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v12 - 1;
      v14 = sub_22F73F690();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a3, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, v14);
      return (*(v15 + 56))(a3, 0, 1, v14);
    }
  }

  else
  {
    swift_endAccess();
  }

  v17 = sub_22F73F690();
  return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
}

uint64_t RecentlyUsedSongs.count.getter()
{
  v1 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

id RecentlyUsedSongs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentlyUsedSongs.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_recentlyUsedToExclude] = MEMORY[0x277D84FA0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id RecentlyUsedSongs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RecentlyUsedSongs.add(songIDDateMap:)(Swift::OpaquePointer songIDDateMap)
{
  v38 = sub_22F73F690();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0F80, &unk_22F771380);
  v4 = sub_22F741DC0();
  v5._rawValue = v4;
  v6 = 0;
  rawValue = songIDDateMap._rawValue;
  v9 = *(songIDDateMap._rawValue + 8);
  v8 = songIDDateMap._rawValue + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = v2;
  v33 = v2 + 32;
  v34 = v2 + 16;
  v32 = v4 + 64;
  v31 = xmmword_22F771340;
  v35 = v4;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v41 = 16 * v17;
      v18 = v38;
      v19 = rawValue[7];
      v20 = (rawValue[6] + 16 * v17);
      v21 = v20[1];
      v42 = *v20;
      v23 = v36;
      v22 = v37;
      (*(v37 + 16))(v36, v19 + *(v37 + 72) * v17, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v31;
      (*(v22 + 32))(v25 + v24, v23, v18);
      *(v32 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5._rawValue = v35;
      v26 = (v35[6] + v41);
      *v26 = v42;
      v26[1] = v21;
      *(*(v5._rawValue + 7) + 8 * v17) = v25;
      v27 = *(v5._rawValue + 2);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v5._rawValue + 2) = v29;

      v12 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        RecentlyUsedSongs.append(from:)(v5);

        return;
      }

      v16 = *&v8[8 * v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall RecentlyUsedSongs.append(from:)(Swift::OpaquePointer from)
{
  v2 = v1;
  *&v2[OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_recentlyUsedToExclude] = MEMORY[0x277D84FA0];

  v4 = from._rawValue + 64;
  v5 = 1 << *(from._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(from._rawValue + 8);
  rawValue = from._rawValue;
  v66 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v63 = from._rawValue + 64;
  v64 = v8;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v9 << 6);
    v15 = (rawValue[6] + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(rawValue[7] + 8 * v14);
    swift_beginAccess();
    v19 = *&v2[v66];
    v20 = *(v19 + 16);

    if (v20 && (v21 = sub_22F1229E8(v16, v17), (v22 & 1) != 0))
    {
      v62 = v16;
      v23 = *(*(v19 + 56) + 8 * v21);
      swift_endAccess();
      v68[0] = v23;
      swift_bridgeObjectRetain_n();

      sub_22F1459EC(v24, sub_22F13E15C, MEMORY[0x277CC9578]);

      sub_22F145C24(v68);

      v25 = v68[0];
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *&v2[v66];
      *&v2[v66] = 0x8000000000000000;
      sub_22F12FEC0(v25, v62, v17, isUniquelyReferenced_nonNull_native);

      *&v2[v66] = v67;
      swift_endAccess();
      v27 = *(v23 + 16);

      if (v27 >= 0xA)
      {
        if (qword_2810A9460 != -1)
        {
          swift_once();
        }

        v46 = sub_22F740B90();
        __swift_project_value_buffer(v46, qword_2810B4D90);

        v47 = v2;
        v48 = sub_22F740B70();
        v49 = sub_22F7415E0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v67 = v61;
          *v50 = 136315394;
          *(v50 + 4) = sub_22F145F20(v62, v17, &v67);
          *(v50 + 12) = 2080;
          swift_beginAccess();
          v51 = *&v2[v66];
          if (*(v51 + 16) && (v52 = sub_22F1229E8(v62, v17), (v53 & 1) != 0))
          {
            v54 = *(*(v51 + 56) + 8 * v52);
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
            v54 = MEMORY[0x277D84F90];
          }

          v55 = sub_22F73F690();
          v56 = MEMORY[0x231900D40](v54, v55);
          v58 = v57;

          v59 = sub_22F145F20(v56, v58, &v67);

          *(v50 + 14) = v59;
          _os_log_impl(&dword_22F0FC000, v48, v49, "RecentlyUsedSongs mostRecentlyUsedSongIDDateMap has 10 or more entries for songID %s: %s", v50, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v61, -1, -1);
          MEMORY[0x2319033A0](v50, -1, -1);
        }

        else
        {
        }

        v8 = v64;
      }

      else
      {

        v8 = v64;
      }
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v16;
      v30 = v28;
      v67 = *&v2[v66];
      v31 = v67;
      v32 = v2;
      *&v2[v66] = 0x8000000000000000;
      v33 = v29;
      v34 = sub_22F1229E8(v29, v17);
      v36 = *(v31 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_37;
      }

      v40 = v35;
      if (*(v31 + 24) >= v39)
      {
        if ((v30 & 1) == 0)
        {
          v60 = v34;
          sub_22F133FF0();
          v34 = v60;
        }

        v41 = v33;
      }

      else
      {
        sub_22F125414(v39, v30);
        v41 = v33;
        v34 = sub_22F1229E8(v33, v17);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_39;
        }
      }

      v2 = v32;
      v4 = v63;
      if (v40)
      {
        v10 = v34;

        v11 = v67;
        *(v67[7] + 8 * v10) = v18;
      }

      else
      {
        v11 = v67;
        v67[(v34 >> 6) + 8] |= 1 << v34;
        v43 = (v11[6] + 16 * v34);
        *v43 = v41;
        v43[1] = v17;
        *(v11[7] + 8 * v34) = v18;
        v44 = v11[2];
        v38 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v38)
        {
          goto LABEL_38;
        }

        v11[2] = v45;
      }

      *&v2[v66] = v11;
      swift_endAccess();
      v8 = v64;
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return;
    }

    v7 = *&v4[8 * v12];
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);

  __break(1u);
LABEL_39:
  sub_22F7420C0();
  __break(1u);
}

uint64_t RecentlyUsedSongs.add(songIDs:date:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F15001C(MEMORY[0x277D84F90], &unk_27DAB0F80, &unk_22F771380);
  v7[2] = a2;
  v5 = sub_22F141AB4(v4, sub_22F14E318, v7, a1);
  RecentlyUsedSongs.append(from:)(v5);
}

uint64_t sub_22F141974(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771340;
  (*(v8 + 16))(v10 + v9, a3, v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  sub_22F12FEC0(v10, v6, v5, isUniquelyReferenced_nonNull_native);

  *a1 = v13;
  return result;
}

uint64_t sub_22F141AB4(uint64_t result, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      (a2)(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_22F141B5C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_22F740460() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t RecentlyUsedSongs.add(curation:date:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (*(v2 + 16))
  {
    v4 = *(type metadata accessor for Song(0) - 8);
    v5 = (v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F90, &qword_22F771390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F771340;
    v7 = v5[1];
    *(inited + 32) = *v5;
    *(inited + 40) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
    v8 = sub_22F73F690();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22F771340;
    (*(v9 + 16))(v11 + v10, a2, v8);
    *(inited + 48) = v11;

    v12 = sub_22F15001C(inited, &unk_27DAB0F80, &unk_22F771380);
    swift_setDeallocating();
    sub_22F120ADC(inited + 32, &qword_27DAB0F98, &qword_22F771398);
    RecentlyUsedSongs.append(from:)(v12);
  }

  return result;
}

uint64_t RecentlyUsedSongs.add(flexCuration:date:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  if (v3 >> 62)
  {
    result = sub_22F741A00();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2319016F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F90, &qword_22F771390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  v7 = [v5 uid];
  v8 = sub_22F740E20();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F771340;
  (*(v12 + 16))(v14 + v13, a2, v11);
  *(inited + 48) = v14;
  v15 = sub_22F15001C(inited, &unk_27DAB0F80, &unk_22F771380);
  swift_setDeallocating();
  sub_22F120ADC(inited + 32, &qword_27DAB0F98, &qword_22F771398);
  RecentlyUsedSongs.append(from:)(v15);
  swift_unknownObjectRelease();
}

uint64_t sub_22F1421DC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F640();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t RecentlyUsedSongs.append(otherRecentlyUsed:)(uint64_t a1)
{
  swift_beginAccess();

  RecentlyUsedSongs.append(from:)(v1);
}

uint64_t RecentlyUsedSongs.description.getter()
{
  v1 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_22F10B310(*(v2 + 16), 0);
  v5 = sub_22F11A294(v9, v4 + 4, v3, v2);
  v6 = v9[0];
  swift_bridgeObjectRetain_n();
  sub_22F0FF590(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = MEMORY[0x277D84F90];
  }

  v9[0] = v4;
  sub_22F145CCC(v9);

  v9[1] = sub_22F1425AC;
  v9[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FA0, &qword_22F7713A0);
  sub_22F14E334();
  v7 = sub_22F740DA0();

  return v7;
}

uint64_t sub_22F1425AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v7 = *a1;
  v8 = a1[1];

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v4 = sub_22F73F690();
  v5 = MEMORY[0x231900D40](v3, v4);
  MEMORY[0x231900B10](v5);

  *a2 = v7;
  a2[1] = v8;
  return result;
}

void sub_22F14263C(void *a1, char a2)
{
  swift_getObjectType();
  v5 = objc_autoreleasePoolPush();
  sub_22F14279C(a1, v2, a2 & 1);

  objc_autoreleasePoolPop(v5);
}

id sub_22F1426C8(void *a1, char a2)
{
  v5 = [objc_allocWithZone(v2) init];
  sub_22F14263C(a1, a2);
  return v5;
}

id sub_22F142724(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassMetadata());
  v7 = a3;
  v8 = [v6 init];
  sub_22F14263C(v7, a4);

  return v8;
}

uint64_t sub_22F14279C(void *a1, uint64_t a2, int a3)
{
  v98 = a2;
  v107 = a3;
  v104 = sub_22F73F690();
  v95 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v99 = &v91 - v7;
  v8 = [a1 librarySpecificFetchOptions];
  [v8 setFetchLimit_];
  [v8 setIncludeStoryMemories_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  v108 = xmmword_22F771350;
  *(v9 + 16) = xmmword_22F771350;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22F740DF0();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v9 + 40) = v15;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v16 = sub_22F741160();

  [v8 setSortDescriptors_];

  v17 = objc_opt_self();
  v97 = v8;
  v18 = [v17 fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
  v19 = [v18 fetchedObjects];

  if (v19)
  {
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v20 = sub_22F741180();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = [a1 librarySpecificFetchOptions];
  [v21 setFetchLimit_];
  [v21 setIncludeStoryMemories_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F770DF0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_22F153470();
  v23 = MEMORY[0x277D84C58];
  strcpy((v22 + 32), "creationType");
  *(v22 + 45) = 0;
  *(v22 + 46) = -5120;
  v24 = MEMORY[0x277D84CB8];
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 72) = 1;
  v25 = sub_22F741560();
  [v21 setPredicate_];

  v26 = swift_allocObject();
  *(v26 + 16) = v108;
  v27 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v28 = sub_22F740DF0();
  v29 = [v27 initWithKey:v28 ascending:0];

  *(v26 + 32) = v29;
  v30 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v31 = sub_22F740DF0();
  v32 = [v30 initWithKey:v31 ascending:0];

  *(v26 + 40) = v32;
  v33 = sub_22F741160();

  [v21 setSortDescriptors_];

  v96 = v21;
  v34 = [v17 fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v21];
  v35 = [v34 fetchedObjects];

  if (v35)
  {
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v36 = sub_22F741180();
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v37 = v99;
  v109 = v20;

  sub_22F14491C(v38, sub_22F3CC72C);
  v39 = v109;
  if (qword_2810A9460 != -1)
  {
LABEL_57:
    swift_once();
  }

  v40 = sub_22F740B90();
  __swift_project_value_buffer(v40, qword_2810B4D90);

  v41 = sub_22F740B70();
  v42 = sub_22F7415C0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134218240;
    if (v20 >> 62)
    {
      v44 = sub_22F741A00();
    }

    else
    {
      v44 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 4) = v44;

    *(v43 + 12) = 2048;
    if (v36 >> 62)
    {
      v45 = sub_22F741A00();
    }

    else
    {
      v45 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 14) = v45;

    _os_log_impl(&dword_22F0FC000, v41, v42, "RecentlyUsedSongs calculated from %ld overnight memories and %ld story memories", v43, 0x16u);
    MEMORY[0x2319033A0](v43, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v20 = v39 & 0xFFFFFFFFFFFFFF8;
  if (!(v39 >> 62))
  {
    v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_17;
    }

LABEL_59:
    v100._rawValue = MEMORY[0x277D84F98];
    goto LABEL_60;
  }

  v46 = sub_22F741A00();
  if (!v46)
  {
    goto LABEL_59;
  }

LABEL_17:
  v47 = 0;
  *&v108 = v39 & 0xC000000000000001;
  v101 = (v95 + 8);
  v102 = (v95 + 32);
  v94 = (v95 + 16);
  v100._rawValue = MEMORY[0x277D84F98];
  v93 = xmmword_22F771340;
  v105 = v46;
  v106 = v39 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    v48 = v47;
    while (1)
    {
      if (v108)
      {
        v49 = MEMORY[0x2319016F0](v48, v39);
      }

      else
      {
        if (v48 >= *(v20 + 16))
        {
          goto LABEL_56;
        }

        v49 = *(v39 + 8 * v48 + 32);
      }

      v36 = v49;
      v47 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (!v50)
      {
        goto LABEL_19;
      }

      v51 = v50;
      v52 = objc_opt_self();
      if ((v107 & 1) == 0)
      {
        break;
      }

      v53 = [v52 flexMusicKeySongIDFromMemory_];
      if (v53)
      {
        goto LABEL_30;
      }

LABEL_19:

LABEL_20:
      ++v48;
      if (v47 == v46)
      {
        goto LABEL_60;
      }
    }

    v53 = [v52 appleMusicKeySongIDFromMemory_];
    if (!v53)
    {
      goto LABEL_19;
    }

LABEL_30:
    v54 = v53;
    v55 = sub_22F740E20();
    v57 = v56;

    v58 = [v36 creationDate];
    if (!v58)
    {

      goto LABEL_36;
    }

    v59 = v39;
    v60 = v103;
    v61 = v58;
    sub_22F73F640();

    v62 = v104;
    (*v102)(v37, v60, v104);
    v63 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v63 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (!v63)
    {

      (*v101)(v37, v62);
      v39 = v59;
LABEL_36:
      v46 = v105;
      v20 = v106;
      goto LABEL_20;
    }

    rawValue = v100._rawValue;
    v39 = v59;
    if (!*(v100._rawValue + 2))
    {
      v92 = *(v95 + 72);
      LODWORD(v66) = *(v95 + 80);
      v37 = v99;
      v67 = v100._rawValue;
LABEL_42:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
      v74 = (v66 + 32) & ~v66;
      v75 = swift_allocObject();
      *(v75 + 16) = v93;
      (*v94)(v75 + v74, v37, v104);
      LODWORD(v100._rawValue) = swift_isUniquelyReferenced_nonNull_native();
      v109 = v67;
      v77 = sub_22F1229E8(v55, v57);
      v78 = v67[2];
      v79 = (v76 & 1) == 0;
      v80 = v78 + v79;
      if (__OFADD__(v78, v79))
      {
        __break(1u);
      }

      else
      {
        if (v67[3] >= v80)
        {
          if ((v100._rawValue & 1) == 0)
          {
            v100._rawValue = v77;
            v89 = v76;
            sub_22F133FF0();
            v76 = v89;
            v77 = v100._rawValue;
          }
        }

        else
        {
          v81 = v76;
          sub_22F125414(v80, LODWORD(v100._rawValue));
          v82 = sub_22F1229E8(v55, v57);
          if ((v81 & 1) != (v83 & 1))
          {
LABEL_65:
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v77 = v82;
          v76 = v81;
        }

        v84 = v109;
        v100._rawValue = v109;
        if (v76)
        {
          *(v109[7] + 8 * v77) = v75;

LABEL_52:
          v73 = v104;
          goto LABEL_53;
        }

        v109[(v77 >> 6) + 8] |= 1 << v77;
        v85 = (v84[6] + 16 * v77);
        *v85 = v55;
        v85[1] = v57;
        *(v84[7] + 8 * v77) = v75;
        v86 = v84[2];
        v87 = __OFADD__(v86, 1);
        v88 = v86 + 1;
        if (!v87)
        {
          v84[2] = v88;

          goto LABEL_52;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v65 = sub_22F1229E8(v55, v57);
    v92 = *(v95 + 72);
    v66 = *(v95 + 80);
    v37 = v99;
    v67 = rawValue;
    if ((v68 & 1) == 0)
    {
      goto LABEL_42;
    }

    v91 = *(rawValue[7] + 8 * v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
    v69 = (v66 + 32) & ~v66;
    v70 = swift_allocObject();
    *(v70 + 16) = v93;
    (*v94)(v70 + v69, v37, v104);
    v109 = v91;

    sub_22F1459EC(v70, sub_22F13E15C, MEMORY[0x277CC9578]);
    v71 = v109;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v67;
    sub_22F12FEC0(v71, v55, v57, isUniquelyReferenced_nonNull_native);

    v73 = v104;
    v100._rawValue = v109;
LABEL_53:
    v46 = v105;
    v20 = v106;
    (*v101)(v37, v73);
    if (v47 != v46)
    {
      continue;
    }

    break;
  }

LABEL_60:

  RecentlyUsedSongs.append(from:)(v100);
}

id sub_22F14342C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a3;
  v7 = a5();

  return v7;
}

uint64_t RecentlyUsedSongs.songIdsRecommendedForExclusion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v119 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v119 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v17 = &v119 - v16;
  v18 = *(v1 + OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_recentlyUsedToExclude);
  if (*(v18 + 16))
  {

    return v18;
  }

  v138 = v15;
  v132 = v5;
  v123 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_recentlyUsedToExclude;
  v133 = v2;
  if (qword_2810A9460 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v19 = sub_22F740B90();
    v143 = __swift_project_value_buffer(v19, qword_2810B4D90);
    v20 = sub_22F740B70();
    v21 = sub_22F7415C0();
    v22 = os_log_type_enabled(v20, v21);
    v142 = v3;
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "(songIdsRecommendedForExclusion) Recalculating", v23, 2u);
      v24 = v23;
      v3 = v142;
      MEMORY[0x2319033A0](v24, -1, -1);
    }

    v25 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
    swift_beginAccess();
    v141 = v25;
    v126 = v1;

    v27 = sub_22F150C30(v26);

    v28 = v27[2];
    v140 = v12;
    v125 = v17;
    v134 = v13;
    v135 = v11;
    if (v28)
    {
      v29 = sub_22F10B324(v28, 0);
      sub_22F11A410(v145, v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v28, v27);
      v31 = v30;
      v32 = v145[0];
      v3 = v145[2];
      v33 = v145[3];
      v34 = v145[4];

      sub_22F0FF590(v32);
      if (v31 != v28)
      {
        __break(1u);
LABEL_56:
        sub_22F146454((v35 > 1), v33, 1);
        v63 = v133;
        v62 = v145[0];
        goto LABEL_18;
      }

      v12 = v140;
      v17 = v125;
      v13 = v134;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v139 = v8;
    v145[0] = v29;
    sub_22F145E6C(v145);
    v124 = v145[0];
    v36 = 3;
    v144 = *(v145[0] + 16);
    if (v144 < 3)
    {
      v36 = v144;
    }

    v131 = v36;
    v37 = v138;
    sub_22F73F680();
    sub_22F7413A0();
    sub_22F73F5A0();
    v137 = *(v13 + 8);
    v138 = v13 + 8;
    v38 = v137(v37, v12);
    MEMORY[0x28223BE20](v38);
    *(&v119 - 2) = v17;
    sub_22F14D97C(sub_22F15128C, (&v119 - 4), v27);
    v40 = v39;

    v41 = sub_22F740B70();
    v42 = sub_22F7415D0();

    v43 = os_log_type_enabled(v41, v42);
    v136 = v40;
    v122 = 0;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v145[0] = v45;
      *v44 = 136315138;
      v46 = sub_22F740CB0();
      v48 = sub_22F145F20(v46, v47, v145);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_22F0FC000, v41, v42, "(songIdsRecommendedForExclusion) lastFewHours=%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x2319033A0](v45, -1, -1);
      MEMORY[0x2319033A0](v44, -1, -1);
    }

    v8 = v139;

    v50 = sub_22F1512AC(v49, 3);

    v51 = sub_22F740B70();
    v52 = sub_22F7415D0();

    v53 = os_log_type_enabled(v51, v52);
    v121 = v50;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v145[0] = v55;
      *v54 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC8, &qword_22F7713B8);
      v56 = sub_22F740CB0();
      v58 = sub_22F145F20(v56, v57, v145);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_22F0FC000, v51, v52, "(songIdsRecommendedForExclusion) frequentlyUsedSongsByDate=%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x2319033A0](v55, -1, -1);
      MEMORY[0x2319033A0](v54, -1, -1);
    }

    v59 = v135;
    v12 = v136;
    v3 = MEMORY[0x277D84F90];
    if (!v144)
    {
      v62 = MEMORY[0x277D84F90];
      v73 = v140;
      v1 = v126;
      goto LABEL_27;
    }

    v34 = v126;
    v145[0] = MEMORY[0x277D84F90];
    v60 = v142;
    v28 = v124 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    sub_22F146454(0, v131, 0);
    v61 = v8;
    v8 = *(v60 + 72);
    v62 = v145[0];
    sub_22F13BA9C(v28, v59, &qword_27DAB0FC0, &qword_22F7713B0);
    sub_22F151588(v59, v61);
    v27 = *v61;
    v32 = v61[1];
    v63 = v133;
    v137(v61 + *(v133 + 48), v140);
    v145[0] = v62;
    v31 = *(v62 + 16);
    v35 = *(v62 + 24);
    v33 = v31 + 1;
    if (v31 >= v35 >> 1)
    {
      goto LABEL_56;
    }

LABEL_18:
    *(v62 + 16) = v33;
    v64 = v62 + 16 * v31;
    *(v64 + 32) = v27;
    *(v64 + 40) = v32;
    if (v144 == 1)
    {
      goto LABEL_22;
    }

    v65 = v135;
    sub_22F13BA9C(v28 + v8, v135, &qword_27DAB0FC0, &qword_22F7713B0);
    v66 = v65;
    v67 = v139;
    sub_22F151588(v66, v139);
    v68 = *v67;
    v69 = v67[1];
    v137(v67 + *(v63 + 48), v140);
    v145[0] = v62;
    v71 = *(v62 + 16);
    v70 = *(v62 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_22F146454((v70 > 1), v71 + 1, 1);
      v63 = v133;
      v62 = v145[0];
    }

    *(v62 + 16) = v71 + 1;
    v72 = v62 + 16 * v71;
    *(v72 + 32) = v68;
    *(v72 + 40) = v69;
    if (v144 == 2)
    {
LABEL_22:
      v1 = v34;
      v8 = v139;
      v73 = v140;
      v12 = v136;
    }

    else
    {
      v74 = v28 + 2 * v8;
      v75 = v135;
      sub_22F13BA9C(v74, v135, &qword_27DAB0FC0, &qword_22F7713B0);
      v76 = v75;
      v77 = v139;
      sub_22F151588(v76, v139);
      v78 = *v77;
      v79 = v77[1];
      v73 = v140;
      v137(v77 + *(v63 + 48), v140);
      v145[0] = v62;
      v81 = *(v62 + 16);
      v80 = *(v62 + 24);
      v82 = v34;
      if (v81 >= v80 >> 1)
      {
        sub_22F146454((v80 > 1), v81 + 1, 1);
        v62 = v145[0];
      }

      *(v62 + 16) = v81 + 1;
      v83 = v62 + 16 * v81;
      *(v83 + 32) = v78;
      *(v83 + 40) = v79;
      v12 = v136;
      v1 = v82;
      v8 = v139;
    }

LABEL_27:
    v84 = sub_22F1515F8(v62);

    v85 = *(v12 + 16);
    if (!v85)
    {
      break;
    }

    v120 = v84;
    v145[0] = v3;
    sub_22F146454(0, v85, 0);
    v17 = v145[0];
    v86 = v12 + 64;
    v13 = sub_22F741980();
    v87 = 0;
    v130 = v134 + 16;
    v129 = v134 + 32;
    v127 = v12 + 72;
    v11 = 1;
    v128 = v85;
    v131 = v12 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v12 + 32))
    {
      v1 = 1 << v13;
      if ((*(v86 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_50;
      }

      v141 = v87;
      v142 = *(v12 + 36);
      v143 = v13 >> 6;
      v88 = v133;
      v89 = *(v133 + 48);
      v90 = *(v12 + 56);
      v91 = (*(v12 + 48) + 16 * v13);
      v93 = *v91;
      v92 = v91[1];
      v94 = v8;
      v95 = v134;
      v96 = v135;
      v97 = v90 + *(v134 + 72) * v13;
      v98 = *(v134 + 16);
      v144 = v17;
      v99 = v140;
      v98(v135 + v89, v97, v140);
      *v94 = v93;
      *(v94 + 1) = v92;
      (*(v95 + 32))(&v94[*(v88 + 48)], v96 + v89, v99);
      v100 = v132;
      sub_22F151588(v94, v132);
      v8 = *v100;
      v101 = v100[1];
      v102 = *(v88 + 48);

      v103 = v99;
      v17 = v144;
      v137(v100 + v102, v103);
      v145[0] = v17;
      v105 = *(v17 + 2);
      v104 = *(v17 + 3);
      if (v105 >= v104 >> 1)
      {
        sub_22F146454((v104 > 1), v105 + 1, 1);
        v17 = v145[0];
      }

      *(v17 + 2) = v105 + 1;
      v106 = &v17[16 * v105];
      *(v106 + 4) = v8;
      *(v106 + 5) = v101;
      v12 = v136;
      v11 = 1;
      v3 = 1 << *(v136 + 32);
      v86 = v131;
      if (v13 >= v3)
      {
        goto LABEL_51;
      }

      v107 = *(v131 + 8 * v143);
      if ((v107 & v1) == 0)
      {
        goto LABEL_52;
      }

      if (v142 != *(v136 + 36))
      {
        goto LABEL_53;
      }

      v108 = v107 & (-2 << (v13 & 0x3F));
      if (v108)
      {
        v3 = __clz(__rbit64(v108)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v8 = v139;
      }

      else
      {
        v109 = v143 << 6;
        v110 = v143 + 1;
        v111 = (v127 + 8 * v143);
        v8 = v139;
        while (v110 < (v3 + 63) >> 6)
        {
          v113 = *v111++;
          v112 = v113;
          v109 += 64;
          ++v110;
          if (v113)
          {
            sub_22F107D18(v13, v142, 0);
            v3 = __clz(__rbit64(v112)) + v109;
            goto LABEL_30;
          }
        }

        sub_22F107D18(v13, v142, 0);
      }

LABEL_30:
      v87 = v141 + 1;
      v13 = v3;
      if (v141 + 1 == v128)
      {

        v1 = v126;
        v73 = v140;
        v114 = v121;
        v84 = v120;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v17 = MEMORY[0x277D84F90];
  v114 = v121;
LABEL_47:
  v115 = sub_22F1515F8(v17);

  v116 = sub_22F144608(v115, v84);
  v117 = sub_22F140944(v114);

  v18 = sub_22F151690(v117, v116);

  *(v1 + v123) = v18;

  v137(v125, v73);
  return v18;
}

uint64_t sub_22F144180(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = a1[1];
  *v7 = v8;
  *(v7 + 1) = v9;
  v11 = *(v10 + 56);
  v12 = sub_22F73F690();
  (*(*(v12 - 8) + 16))(&v7[v11], a2, v12);

  v13 = sub_22F73F5C0();
  sub_22F120ADC(v7, &qword_27DAB0FC0, &qword_22F7713B0);
  return v13 & 1;
}

uint64_t sub_22F144294(uint64_t a1)
{
  result = MEMORY[0x231901000](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22F10BBDC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1443B0(uint64_t a1)
{
  result = MEMORY[0x231901000](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22F10BBDC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22F1444CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v4 = sub_22F11FA28(&unk_2810A9040, &unk_2810A9050, off_27887B3D8);
  v5 = 0;
  v12[1] = MEMORY[0x231901000](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_22F10F368(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22F144608(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22F10BBDC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22F14470C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0);
  v20[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = 0;
  v20[1] = a2;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_22F1533A8(*(a1 + 48) + *(v20[0] + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for Song);
    sub_22F153340(v12, v6, type metadata accessor for Song);
    sub_22F10C40C(v9, v6);
    sub_22F153410(v9, type metadata accessor for Song);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22F14491C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_22F741A00();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_22F741A00();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22F14D770(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_22F144A14(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22F13E1A8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22F144B34(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_22F13E910(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
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
  return result;
}

void *sub_22F144C4C(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_22F11A438(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_22F13E1A8((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_22F0FF590(result);
  *v1 = v4;
  return result;
}

uint64_t sub_22F144F8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22F741A00();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_22F741A00();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22F14D770(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22F3CCD7C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_22F14507C(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22F13EDE0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22F14519C(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22F13F194(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22F145294(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v53 = a2;
  v9 = type metadata accessor for Song(0);
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = v45 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v18 = v45;
  v20 = v45 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = a1;
  v5 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v5[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v5 = sub_22F13E558(isUniquelyReferenced_nonNull_native, v27, 1, v5);
    v18 = (v5[3] >> 1);
  }

  v28 = v18 - v5[2];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v50 = v18;
    v23 = v5[2];
    v32 = v54;
    v45[0] = *(v54 + 56);
    v45[1] = v54 + 56;
    (v45[0])(v20, 1, 1, v9, v17);
    v33 = v52;
    sub_22F13BA9C(v20, v52, &qword_27DAB1250, &qword_22F781A10);
    v34 = v32;
    v25 = v33;
    v48 = *(v34 + 48);
    v49 = v34 + 48;
    if (v48(v33, 1, v9) == 1)
    {
LABEL_24:
      sub_22F120ADC(v20, &qword_27DAB1250, &qword_22F781A10);
      swift_unknownObjectRelease();
      result = sub_22F120ADC(v25, &qword_27DAB1250, &qword_22F781A10);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_22F120ADC(v25, &qword_27DAB1250, &qword_22F781A10);
      v36 = v5[3];
      v37 = v36 >> 1;
      if ((v36 >> 1) < v23 + 1)
      {
        v5 = sub_22F13E558((v36 > 1), v23 + 1, 1, v5);
        v37 = v5[3] >> 1;
      }

      v38 = *(v54 + 80);
      sub_22F13BA9C(v20, v13, &qword_27DAB1250, &qword_22F781A10);
      if (v48(v13, 1, v9) == 1)
      {
LABEL_32:
        sub_22F120ADC(v13, &qword_27DAB1250, &qword_22F781A10);
        v35 = v23;
      }

      else
      {
        v46 = v5 + ((v38 + 32) & ~v38);
        if (v23 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v23;
        }

        v47 = v39;
        v40 = v51;
        while (1)
        {
          sub_22F153340(v13, v40, type metadata accessor for Song);
          if (v47 == v23)
          {
            break;
          }

          sub_22F120ADC(v20, &qword_27DAB1250, &qword_22F781A10);
          v42 = *(v54 + 72);
          result = sub_22F153340(v40, &v46[v42 * v23], type metadata accessor for Song);
          if (v50 == v21)
          {
            v41 = 1;
            v50 = v21;
          }

          else
          {
            if (v50 < a3 || v50 >= v21)
            {
              goto LABEL_45;
            }

            v43 = v53 + v42 * v50;
            v44 = v50;
            sub_22F1533A8(v43, v20, type metadata accessor for Song);
            v41 = 0;
            v50 = v44 + 1;
          }

          (v45[0])(v20, v41, 1, v9);
          sub_22F13BA9C(v20, v13, &qword_27DAB1250, &qword_22F781A10);
          ++v23;
          if (v48(v13, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_22F153410(v40, type metadata accessor for Song);
        v35 = v47;
        v23 = v47;
      }

      v5[2] = v35;
      v25 = v52;
      sub_22F13BA9C(v20, v52, &qword_27DAB1250, &qword_22F781A10);
    }

    while (v48(v25, 1, v9) != 1);
    goto LABEL_24;
  }

  v30 = v5[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v5[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

char *sub_22F1458B4(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22F13FB00(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22F1459EC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_22F145B30(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22F1401B4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_22F145C24(uint64_t *a1)
{
  v2 = *(sub_22F73F690() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6440(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1494A4(v5);
  *a1 = v3;
}

uint64_t sub_22F145CCC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F6454(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22F1495D0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22F145D38(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F6468(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22F742000();
  if (result >= v3)
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
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
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
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22F741200();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22F14ADCC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_22F145E6C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F647C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1496D8(v5);
  *a1 = v3;
}

unint64_t sub_22F145F20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22F145FEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22F13A100(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22F145FEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22F1460F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22F741B80();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_22F1460F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22F146144(a1, a2);
  sub_22F146274(&unk_2843D8580);
  return v3;
}

void *sub_22F146144(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22F29C214(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22F741B80();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22F740F90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22F29C214(v10, 0);
        result = sub_22F741AE0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22F146274(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_22F146360(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22F146360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13E8, &qword_22F771808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22F146454(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F146F24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F146474(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F146494(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F1464B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14726C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F1464D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14738C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F1464F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F1474AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB0570, &qword_22F770810, type metadata accessor for Song);
  *v3 = result;
  return result;
}

char *sub_22F146558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146578(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14919C(a1, a2, a3, *v3, &qword_27DAB1398, &unk_22F7717B0, &qword_27DAB13A0, &unk_22F7718B0);
  *v3 = result;
  return result;
}

void *sub_22F1465B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB13A8, &unk_22F7717C0, type metadata accessor for NamedGroundedLocation);
  *v3 = result;
  return result;
}

void *sub_22F1465FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F1479B0(a1, a2, a3, *v3, &qword_27DAB12D0, &qword_22F7716D0, &qword_27DAB12D8, &qword_22F7716D8);
  *v3 = result;
  return result;
}

void *sub_22F14663C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14830C(a1, a2, a3, *v3, &qword_27DAB11C8, qword_22F783CB0, &qword_27DAB11D0, &qword_22F771600);
  *v3 = result;
  return result;
}

void *sub_22F14667C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148454(a1, a2, a3, *v3, &qword_27DAB1208, &qword_22F771638, &unk_27DAB1210, &unk_22F771640);
  *v3 = result;
  return result;
}

void *sub_22F1466BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB06E0, &qword_22F7711B0, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_22F146700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147E64(a1, a2, a3, *v3, &qword_27DAB1200, &qword_22F771630);
  *v3 = result;
  return result;
}

void *sub_22F146730(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &unk_27DAB1340, &unk_22F7712D0, MEMORY[0x277D3C0E0]);
  *v3 = result;
  return result;
}

void *sub_22F146774(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &unk_27DAB0EA8, &unk_22F771250, MEMORY[0x277D3C218]);
  *v3 = result;
  return result;
}

void *sub_22F1467B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &unk_27DAB0720, &unk_22F771730, _s29IntermediateTimeExtendedTokenVMa);
  *v3 = result;
  return result;
}

void *sub_22F1467FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14919C(a1, a2, a3, *v3, &qword_27DAB1300, &unk_22F771700, &qword_27DAB1308, &qword_22F7789B0);
  *v3 = result;
  return result;
}

void *sub_22F14683C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14919C(a1, a2, a3, *v3, &qword_27DAB1310, &unk_22F771710, &qword_27DAB1318, &unk_22F772030);
  *v3 = result;
  return result;
}

void *sub_22F14687C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148454(a1, a2, a3, *v3, &unk_27DAB1330, &qword_22F771190, &unk_27DAB0DF0, &qword_22F771198);
  *v3 = result;
  return result;
}

char *sub_22F1468BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F1468DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F1468FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148070(a1, a2, a3, *v3, &qword_27DAB12A0, &qword_22F7711D0, &type metadata for MusicKitCatalogSong);
  *v3 = result;
  return result;
}

char *sub_22F146934(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146954(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148BEC(a1, a2, a3, *v3, &qword_27DAB06E8, &unk_22F771230, &qword_27DAB0E90, &qword_22F7714A0);
  *v3 = result;
  return result;
}

char *sub_22F146994(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F147F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F1469B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148070(a1, a2, a3, *v3, &unk_27DAB12A8, &unk_22F7716B0, &type metadata for MusicKitTesseractSong);
  *v3 = result;
  return result;
}

void *sub_22F1469EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148454(a1, a2, a3, *v3, &qword_27DAB1130, &qword_22F771568, &qword_27DAB1138, &unk_22F771570);
  *v3 = result;
  return result;
}

void *sub_22F146A2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148BEC(a1, a2, a3, *v3, &qword_27DAB1068, &qword_22F7714A8, &unk_27DAB1070, &unk_22F7714B0);
  *v3 = result;
  return result;
}

char *sub_22F146A6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F1481E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146A8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14919C(a1, a2, a3, *v3, &qword_27DAB11F0, &unk_22F771620, &qword_27DAB11F8, &unk_22F783C90);
  *v3 = result;
  return result;
}

void *sub_22F146ACC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB11C0, &unk_22F7715F0, MEMORY[0x277D3C060]);
  *v3 = result;
  return result;
}

void *sub_22F146B10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14830C(a1, a2, a3, *v3, &qword_27DAB11D8, &qword_22F771608, &unk_27DAB11E0, &unk_22F771610);
  *v3 = result;
  return result;
}

void *sub_22F146B50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB06D8, &qword_22F771180, type metadata accessor for PersonalTraitInfo);
  *v3 = result;
  return result;
}

void *sub_22F146B94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148454(a1, a2, a3, *v3, &qword_27DAB11A0, &qword_22F772940, &qword_27DAB11A8, &unk_22F7715E0);
  *v3 = result;
  return result;
}

void *sub_22F146BD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F1485E4(a1, a2, a3, *v3, &qword_27DAB1180, &qword_22F7715B8, &qword_27DAB1188, &unk_22F7715C0);
  *v3 = result;
  return result;
}

char *sub_22F146C14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146C34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F1485E4(a1, a2, a3, *v3, &unk_27DAB1150, &unk_22F771580, &unk_27DAB0DA0, &qword_22F771140);
  *v3 = result;
  return result;
}

void *sub_22F146C74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146C94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB13C8, &unk_22F780230, type metadata accessor for CollectionCuration);
  *v3 = result;
  return result;
}

char *sub_22F146CD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146CF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB0EB8, &unk_22F771260, MEMORY[0x277D3C348]);
  *v3 = result;
  return result;
}

void *sub_22F146D3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148BEC(a1, a2, a3, *v3, &unk_27DAB10A0, &unk_22F7711A0, &unk_27DAB0E00, &unk_22F7727C0);
  *v3 = result;
  return result;
}

void *sub_22F146D7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148BEC(a1, a2, a3, *v3, &qword_27DAB1090, &qword_22F7714D0, &qword_27DAB1098, &qword_22F7714D8);
  *v3 = result;
  return result;
}

void *sub_22F146DBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &qword_27DAB0ED0, &unk_22F771760, MEMORY[0x277D3C228]);
  *v3 = result;
  return result;
}

void *sub_22F146E00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148D20(a1, a2, a3, *v3, &unk_27DAB1050, &unk_22F771480, MEMORY[0x277D3BF98]);
  *v3 = result;
  return result;
}

void *sub_22F146E44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F148F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146E64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F149054(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22F146E84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F1485E4(a1, a2, a3, *v3, &qword_27DAB1020, &qword_22F771450, &qword_27DAB1028, &qword_22F771458);
  *v3 = result;
  return result;
}

void *sub_22F146EC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F14919C(a1, a2, a3, *v3, &qword_27DAB1010, &qword_22F771440, &qword_27DAB1018, &qword_22F771448);
  *v3 = result;
  return result;
}

char *sub_22F146F04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F149384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22F146F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F147030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1370, &unk_22F771780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F147150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DE0, &qword_22F771188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F14726C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1360, &unk_22F771770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F14738C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0CC0, &unk_22F771050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F1474AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22F147624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F30, &qword_22F771670);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22F1477BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0610, &qword_22F771500);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10C8, &qword_22F771508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F1479B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22F147AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1298, &unk_22F7716A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F147C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB12F0, &unk_22F7716F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 28);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[28 * v8])
    {
      memmove(v12, v13, 28 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 28 * v8);
  }

  return v10;
}

char *sub_22F147D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD8, qword_22F7723F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F147E64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_22F147F50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E30, &qword_22F7711D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F148070(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 296);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[296 * v11])
    {
      memmove(v15, v16, 296 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22F1481E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D38, &unk_22F7715D0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22F14830C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22F148454(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22F1485E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22F148718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0DB8, &qword_22F771158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F148824(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1140, &qword_22F771148);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0DB0, &qword_22F771150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F148958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0EC0, &unk_22F771510);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22F148A80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0620, &qword_22F770848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10D0, &unk_22F771520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F148BEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22F148D20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_22F148F20(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1040, &unk_22F771470);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F149054(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1030, &qword_22F771460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1038, &qword_22F771468);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F14919C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_22F149384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1000, &qword_22F771420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22F1494A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F73F690();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F73F690() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F149DD4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F14981C(0, v2, 1, a1);
  }
}

uint64_t sub_22F1495D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D8, &qword_22F7717F8);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F14A7C0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F149AA0(0, v2, 1, a1);
  }

  return result;
}

void sub_22F1496D8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F14B318(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F149B84(0, v2, 1, a1);
  }
}

void sub_22F14981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73F690();
  MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_22F73F5D0();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F149AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_22F742040(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F149B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  MEMORY[0x28223BE20](v34);
  v33 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_22F13BA9C(v20, v15, &qword_27DAB0FC0, &qword_22F7713B0);
      sub_22F13BA9C(v18, v11, &qword_27DAB0FC0, &qword_22F7713B0);
      v21 = sub_22F73F5C0();
      sub_22F120ADC(v11, &qword_27DAB0FC0, &qword_22F7713B0);
      sub_22F120ADC(v15, &qword_27DAB0FC0, &qword_22F7713B0);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_22F151588(v20, v33);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F151588(v22, v18);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F149DD4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v118 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v118 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_22F3F5F98(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_22F14BC40(*v10 + a3[9] * v115, (*v10 + a3[9] * *&v112[16 * a4 + 16]), *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_22F3F5F98(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_22F3F5F0C(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = sub_22F73F5D0();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = sub_22F73F5D0() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_22F13D970(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_22F13D970((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_22F14BC40(*a3 + v10[9] * v95, (*a3 + v10[9] * *&v21[16 * v56 + 32]), *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_22F3F5F98(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_22F3F5F0C(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = sub_22F73F5D0();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_22F14A7C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_22F3F5F98(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_22F14C1D0((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_22F742040();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22F742040();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_22F13D970((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_22F14C1D0((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_22F3F5F0C(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_22F742040(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_22F14ADCC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22F3F5F98(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22F14C430((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
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
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_22F13D970((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22F14C430((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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
  return result;
}

void sub_22F14B318(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v104 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v100 - v10;
  MEMORY[0x28223BE20](v11);
  v118 = &v100 - v12;
  MEMORY[0x28223BE20](v13);
  v117 = &v100 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_139;
    }

    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v105;
    if (isUniquelyReferenced_nonNull_native)
    {
      v95 = v6;
LABEL_102:
      v120 = v95;
      v6 = *(v95 + 2);
      if (v6 >= 2)
      {
        v96 = v7;
        while (*a3)
        {
          v97 = *&v95[16 * v6];
          v98 = v95;
          v7 = *&v95[16 * v6 + 24];
          sub_22F14C624(*a3 + *(v96 + 72) * v97, *a3 + *(v96 + 72) * *&v95[16 * v6 + 16], *a3 + *(v96 + 72) * v7, a4);
          if (v29)
          {
            goto LABEL_111;
          }

          if (v7 < v97)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_22F3F5F98(v98);
          }

          if (v6 - 2 >= *(v98 + 2))
          {
            goto LABEL_127;
          }

          v99 = &v98[16 * v6];
          *v99 = v97;
          *(v99 + 1) = v7;
          v120 = v98;
          sub_22F3F5F0C(v6 - 1);
          v95 = v120;
          v6 = *(v120 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v95 = sub_22F3F5F98(v6);
    goto LABEL_102;
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v103 = a4;
  v119 = v6;
  v106 = a3;
  v101 = v7;
  while (1)
  {
    v18 = v16 + 1;
    v109 = v17;
    if (v16 + 1 >= v15)
    {
      v28 = v16 + 1;
      v29 = v105;
    }

    else
    {
      v19 = v16;
      v6 = *a3;
      v20 = *(v7 + 72);
      v21 = *a3 + v20 * v18;
      v22 = v117;
      sub_22F13BA9C(v21, v117, &qword_27DAB0FC0, &qword_22F7713B0);
      v23 = v118;
      sub_22F13BA9C(v6 + v20 * v19, v118, &qword_27DAB0FC0, &qword_22F7713B0);
      LODWORD(v114) = sub_22F73F5C0();
      sub_22F120ADC(v23, &qword_27DAB0FC0, &qword_22F7713B0);
      sub_22F120ADC(v22, &qword_27DAB0FC0, &qword_22F7713B0);
      v102 = v19;
      v24 = v19 + 2;
      v115 = v20;
      v25 = v6 + v20 * (v19 + 2);
      while (v15 != v24)
      {
        v26 = v117;
        sub_22F13BA9C(v25, v117, &qword_27DAB0FC0, &qword_22F7713B0);
        v27 = v118;
        sub_22F13BA9C(v21, v118, &qword_27DAB0FC0, &qword_22F7713B0);
        v6 = sub_22F73F5C0() & 1;
        sub_22F120ADC(v27, &qword_27DAB0FC0, &qword_22F7713B0);
        sub_22F120ADC(v26, &qword_27DAB0FC0, &qword_22F7713B0);
        ++v24;
        v25 += v115;
        v21 += v115;
        if ((v114 & 1) != v6)
        {
          v28 = v24 - 1;
          goto LABEL_12;
        }
      }

      v28 = v15;
LABEL_12:
      v16 = v102;
      a4 = v103;
      v29 = v105;
      a3 = v106;
      v7 = v101;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v28 < v102)
      {
        goto LABEL_130;
      }

      if (v102 < v28)
      {
        v30 = v115 * (v28 - 1);
        v31 = v28 * v115;
        v114 = v28;
        v32 = v28;
        v33 = v102;
        v34 = v102 * v115;
        v6 = v119;
        do
        {
          if (v33 != --v32)
          {
            v35 = *v106;
            if (!*v106)
            {
              goto LABEL_136;
            }

            sub_22F151588(v35 + v34, v108);
            if (v34 < v30 || v35 + v34 >= v35 + v31)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22F151588(v108, v35 + v30);
            v6 = v119;
          }

          ++v33;
          v30 -= v115;
          v31 -= v115;
          v34 += v115;
        }

        while (v33 < v32);
        v29 = v105;
        a3 = v106;
        v7 = v101;
        v16 = v102;
        a4 = v103;
        v28 = v114;
      }

      else
      {
LABEL_25:
        v6 = v119;
      }
    }

    v36 = a3[1];
    if (v28 >= v36)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v28, v16))
    {
      goto LABEL_129;
    }

    if (v28 - v16 >= a4)
    {
LABEL_35:
      v37 = v28;
      if (v28 < v16)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v16, a4))
    {
      goto LABEL_131;
    }

    if (v16 + a4 < v36)
    {
      v36 = v16 + a4;
    }

    if (v36 < v16)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v28 == v36)
    {
      goto LABEL_35;
    }

    v110 = v36;
    v105 = v29;
    v83 = *a3;
    v84 = *(v7 + 72);
    v85 = *a3 + v84 * (v28 - 1);
    v86 = -v84;
    v102 = v16;
    v87 = v16 - v28;
    v107 = v84;
    v115 = v83;
    a4 = v83 + v28 * v84;
LABEL_89:
    v113 = v85;
    v114 = v28;
    v111 = a4;
    v112 = v87;
    v88 = v85;
LABEL_90:
    v89 = v117;
    sub_22F13BA9C(a4, v117, &qword_27DAB0FC0, &qword_22F7713B0);
    v90 = v118;
    sub_22F13BA9C(v88, v118, &qword_27DAB0FC0, &qword_22F7713B0);
    v91 = sub_22F73F5C0();
    sub_22F120ADC(v90, &qword_27DAB0FC0, &qword_22F7713B0);
    sub_22F120ADC(v89, &qword_27DAB0FC0, &qword_22F7713B0);
    if (v91)
    {
      break;
    }

    v6 = v119;
LABEL_88:
    v28 = v114 + 1;
    v85 = v113 + v107;
    v87 = v112 - 1;
    a4 = v111 + v107;
    if (v114 + 1 != v110)
    {
      goto LABEL_89;
    }

    v29 = v105;
    a3 = v106;
    v7 = v101;
    v16 = v102;
    v37 = v110;
    if (v110 < v102)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v109;
    }

    else
    {
      v17 = sub_22F13D970(0, *(v109 + 2) + 1, 1, v109);
    }

    v39 = *(v17 + 2);
    v38 = *(v17 + 3);
    a4 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v17 = sub_22F13D970((v38 > 1), v39 + 1, 1, v17);
    }

    *(v17 + 2) = a4;
    v40 = &v17[16 * v39];
    *(v40 + 4) = v16;
    *(v40 + 5) = v37;
    v110 = v37;
    if (!*v104)
    {
      goto LABEL_138;
    }

    if (v39)
    {
      v41 = *v104;
      v6 = v119;
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v17 + 4);
          v44 = *(v17 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_56:
          if (v46)
          {
            goto LABEL_117;
          }

          v59 = &v17[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_120;
          }

          v65 = &v17[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_124;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v69 = &v17[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_70:
        if (v64)
        {
          goto LABEL_119;
        }

        v72 = &v17[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v75 < v63)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v80 = v17;
        a4 = *&v17[16 * v6 + 32];
        v81 = *&v17[16 * v42 + 40];
        sub_22F14C624(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v17[16 * v42 + 32], *a3 + *(v7 + 72) * v81, v41);
        if (v29)
        {
          goto LABEL_111;
        }

        if (v81 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_22F3F5F98(v80);
        }

        if (v6 >= *(v80 + 2))
        {
          goto LABEL_114;
        }

        v82 = &v80[16 * v6];
        *(v82 + 4) = a4;
        *(v82 + 5) = v81;
        v120 = v80;
        sub_22F3F5F0C(v42);
        v17 = v120;
        a4 = *(v120 + 2);
        v6 = v119;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v47 = &v17[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_115;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_116;
      }

      v54 = &v17[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_118;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_121;
      }

      if (v58 >= v50)
      {
        v76 = &v17[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_125;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v119;
LABEL_4:
    v105 = v29;
    v15 = a3[1];
    v16 = v110;
    a4 = v103;
    if (v110 >= v15)
    {
      goto LABEL_99;
    }
  }

  if (v115)
  {
    v92 = v116;
    sub_22F151588(a4, v116);
    v6 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_22F151588(v92, v88);
    v88 += v86;
    a4 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_22F14BC40(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v56 = sub_22F73F690();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = &a2[-a1] / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || &a2[v17] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = &a4[v17];
    if (v17 < 1)
    {
      v32 = &a4[v17];
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = &a4[v17];
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = &a2[v29];
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = &v30[v29];
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = sub_22F73F5D0();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = &a4[v16];
    v57 = &a4[v16];
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = (v8 + 16);
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = sub_22F73F5D0();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = &v48[v22];
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = &v48[a4];
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 = &v26[a4];
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_22F3B662C(&v59, &v58, &v57);
}

uint64_t sub_22F14C1D0(char *__dst, char *__src, unint64_t a3, char *a4)
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
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
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
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_22F742040() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}