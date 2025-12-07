void sub_1D8FAFC7C(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (qword_1ECAB3680 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB84D8;
  if (v2 && (type metadata accessor for CGColorSpace(0), sub_1D8FAFFCC(), v4 = v3, v5 = sub_1D917711C(), v2, v4, (v5 & 1) != 0))
  {
    CopyByMatchingToColorSpace = a1;
  }

  else
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentDefault, a1, 0);
    if (!CopyByMatchingToColorSpace)
    {

      return;
    }
  }

  v7 = CopyByMatchingToColorSpace;
  v8 = sub_1D9178C3C();

  if (!v8)
  {

    return;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v9 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < 3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = *(v8 + 32);
  v10 = *(v8 + 40);
  v12 = *(v8 + 48);

  Alpha = CGColorGetAlpha(a1);

  if (v11 * 255.0 <= -1.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v11 * 255.0 >= 256.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10 * 255.0 <= -1.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v10 * 255.0 >= 256.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v12 * 255.0 <= -1.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v12 * 255.0 >= 256.0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = COERCE_UNSIGNED_INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v15 = COERCE_UNSIGNED_INT64(fabs(v10 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v16 = Alpha * 255.0;
  v17 = COERCE__INT64(fabs(Alpha * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE_UNSIGNED_INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL || v15 || v14 || v17)
  {
    goto LABEL_35;
  }

  if (v16 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v16 >= 256.0)
  {
LABEL_37:
    __break(1u);
  }
}

unint64_t sub_1D8FAFF40()
{
  result = qword_1ECAB84E0;
  if (!qword_1ECAB84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84E0);
  }

  return result;
}

unint64_t sub_1D8FAFFCC()
{
  result = qword_1ECAB84E8;
  if (!qword_1ECAB84E8)
  {
    type metadata accessor for CGColorSpace(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84E8);
  }

  return result;
}

unint64_t sub_1D8FB0024()
{
  result = qword_1ECAB1100;
  if (!qword_1ECAB1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1100);
  }

  return result;
}

unint64_t static MTPodcast.importedShowArtworkURL(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  return 0xD000000000000016;
}

unint64_t MTCategory.hexColor.getter()
{
  v1 = [v0 color];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;

    LODWORD(v2) = sub_1D8D3E514(v3, v5);

    v6 = 0;
    v7 = v2;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v7 | (v6 << 32);
}

__n128 MTCategory.artwork.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 color];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v14 = sub_1D8D3E514(v6, v8);

  v15 = [v2 artworkTemplateURL];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = sub_1D917820C();
  v19 = v18;

  v20 = [v2 artworkWidthNumber];
  if (!v20 || (v21 = v20, [v20 doubleValue], v23 = v22, v21, (v24 = objc_msgSend(v2, sel_artworkHeightNumber)) == 0))
  {

LABEL_4:
    sub_1D8D39E08(&v31);
    goto LABEL_5;
  }

  v25 = v24;
  [v24 doubleValue];
  v27 = v26;

  v28 = v14;
  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v29 = word_1EDCD78A8;
  v30 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  *&v31 = v17;
  *(&v31 + 1) = v19;
  v32 = 0uLL;
  LOBYTE(v33) = -1;
  *(&v33 + 1) = v23;
  v34.n128_u64[0] = v27;
  v34.n128_u64[1] = v28;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = 0;
  LOBYTE(v36) = -1;
  *(&v36 + 1) = 0;
  LOBYTE(v37) = -1;
  *(&v37 + 1) = 0;
  LOBYTE(v38) = -1;
  *(&v38 + 1) = 0;
  LOWORD(v39) = 1279;
  BYTE2(v39) = v29;
  BYTE3(v39) = v30;
  *(&v39 + 1) = 0;
  *&v40 = 0;
  BYTE8(v40) = byte_1EDCD7898;
  *(&v40 + 9) = 0;
  v41 = 0uLL;
  nullsub_1();
LABEL_5:
  v9 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v9;
  *(a1 + 160) = v41;
  v10 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v10;
  v11 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v11;
  v12 = v32;
  *a1 = v31;
  *(a1 + 16) = v12;
  result = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = result;
  return result;
}

id MTCategory.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTCategory.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTCategory();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTCategory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTCategory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MTCategory.followedShowsCount.getter()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D917935C())
  {
    sub_1D8FB181C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v13 = v1;
  v2 = [v0 children];
  type metadata accessor for MTCategory();
  v3 = MEMORY[0x1E69E81B8];
  sub_1D8FB2D14(&qword_1ECAB43E8, type metadata accessor for MTCategory, MEMORY[0x1E69E81B8]);
  v4 = sub_1D9178A9C();

  sub_1D8FB0810(v4, &v13);

  v5 = [v0 podcasts];
  sub_1D8F46024();
  sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024, v3);
  v6 = sub_1D9178A9C();

  v7 = v0;
  v8 = sub_1D8FB1DC4(v6, v7);

  sub_1D8FB11F4(v9, v8);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_1D917935C();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  return v11;
}

id sub_1D8FB07AC(SEL *a1)
{
  result = [v1 *a1];
  v3 = result;
  if (result)
  {
    [result doubleValue];
    v5 = v4;

    return v5;
  }

  return result;
}

void sub_1D8FB0810(uint64_t a1, void **a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    type metadata accessor for MTCategory();
    sub_1D8FB2D14(&qword_1ECAB43E8, type metadata accessor for MTCategory, MEMORY[0x1E69E81B8]);
    sub_1D9178B3C();
    v2 = v52;
    v3 = v53;
    v4 = v54;
    v5 = v55;
    v6 = v56;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v8 = ~v7;
    v9 = -v7;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 56);

    v4 = v8;
    v5 = 0;
  }

  v11 = (v4 + 64) >> 6;
  v12 = MEMORY[0x1E69E7C98];
  v13 = &selRef_redirectURLForStoreCollectionId_;
  v44 = v11;
  v45 = v3;
  v43 = v2;
  while (v2 < 0)
  {
    v21 = sub_1D917938C();
    if (!v21 || (v51 = v21, type metadata accessor for MTCategory(), swift_dynamicCast(), v14 = v57, v19 = v5, v20 = v6, !v57))
    {
LABEL_41:
      sub_1D8D1B144(v2);
      return;
    }

LABEL_19:
    v48 = *a2;
    v49 = v20;

    v22 = [v14 podcasts];
    sub_1D8F46024();
    sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024, MEMORY[0x1E69E81B8]);
    v23 = sub_1D9178A9C();

    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1E69E7CD0];
      v57 = MEMORY[0x1E69E7CD0];
      v46 = v14;
      v50 = v14;
      sub_1D917931C();
      for (; sub_1D917938C(); ++*(v57 + 16))
      {
        while (1)
        {
          swift_dynamicCast();
          if ([v51 v13[488]])
          {
            v25 = [v51 primaryCategory];
            if (v25)
            {
              v26 = v25;
              type metadata accessor for MTCategory();
              v27 = v13;
              v28 = v12;
              v29 = v50;
              v30 = sub_1D917914C();

              v12 = v28;
              v13 = v27;

              if (v30)
              {
                break;
              }
            }
          }

          if (!sub_1D917938C())
          {
            goto LABEL_8;
          }
        }

        v31 = *(v24 + 16);
        if (*(v24 + 24) <= v31)
        {
          sub_1D8EFC174(v31 + 1);
        }

        v24 = v57;
        v32 = sub_1D917913C();
        v33 = v57 + 56;
        v34 = -1 << *(v57 + 32);
        v35 = v32 & ~v34;
        v36 = v35 >> 6;
        if (((-1 << v35) & ~*(v57 + 56 + 8 * (v35 >> 6))) != 0)
        {
          v37 = __clz(__rbit64((-1 << v35) & ~*(v57 + 56 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = 0;
          v39 = (63 - v34) >> 6;
          do
          {
            if (++v36 == v39 && (v38 & 1) != 0)
            {
              __break(1u);
              goto LABEL_42;
            }

            v40 = v36 == v39;
            if (v36 == v39)
            {
              v36 = 0;
            }

            v38 |= v40;
            v41 = *(v33 + 8 * v36);
          }

          while (v41 == -1);
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
        }

        *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        *(*(v57 + 48) + 8 * v37) = v51;
      }

LABEL_8:

      v14 = v46;
      v15 = a2;
      v2 = v43;
    }

    else
    {
      v42 = v14;
      v15 = a2;
      v24 = sub_1D8FB1AE8(v23, v42);
    }

    sub_1D8FB11F4(v24, v48);
    *v15 = v16;

    v5 = v19;
    v6 = v49;
    v11 = v44;
    v3 = v45;
  }

  v17 = v5;
  v18 = v6;
  v19 = v5;
  if (v6)
  {
LABEL_15:
    v20 = (v18 - 1) & v18;
    v14 = *(*(v2 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v14)
    {
      goto LABEL_41;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v11)
    {
      goto LABEL_41;
    }

    v18 = *(v3 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

LABEL_42:
  __break(1u);
}

id static MTCategory.createFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D8FB0DEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1D917820C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1D8FB0E44(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1D8FB0EA8(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_1D8FB0F18(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_1D8FB2D14(a4, a5, MEMORY[0x1E69E81B8]);
  v11 = sub_1D9178A9C();

  *a6 = v11;
}

void sub_1D8FB0FB8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_1D8FB2D14(a6, a7, MEMORY[0x1E69E81B8]);
  v12 = sub_1D9178A8C();
  [v11 *a8];
}

id MTCategory.interestValueIsFavorited.getter()
{
  result = [v0 interest];
  if (result)
  {
    v2 = result;
    [result interestValue];
    v4 = v3;

    return (v4 == 1.0);
  }

  return result;
}

id MTCategory.interestValueIsSuggestLess.getter()
{
  result = [v0 interest];
  if (result)
  {
    v2 = result;
    [result interestValue];
    v4 = v3;

    return (v4 == -1.0);
  }

  return result;
}

uint64_t MTCategory.followedShows.getter()
{
  v1 = [v0 podcasts];
  sub_1D8F46024();
  sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024, MEMORY[0x1E69E81B8]);
  v2 = sub_1D9178A9C();

  v3 = v0;
  v4 = sub_1D8FB1DC4(v2, v3);

  return v4;
}

void sub_1D8FB11F4(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D917931C();
    sub_1D8F46024();
    sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024, MEMORY[0x1E69E81B8]);
    sub_1D9178B3C();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1D8D1B144(v2);
      return;
    }

    while (1)
    {
      sub_1D8EFAA50(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D917938C())
      {
        sub_1D8F46024();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1D8FB13E8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1D8D19AFC(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
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
}

uint64_t sub_1D8FB14EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v18 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 24 * (v11 | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_1D8D02FE4(*v12, v14, *(v12 + 16));
      sub_1D8EFB338(v16, v13, v14, v15);
      result = sub_1D8D02FCC(v16[0], v16[1], v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v18;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8FB1634(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v25 = a1;
    v24 = a2;
    v8 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = a4;
    v26 = 0;
    v27 = a3;
    v13 = 0;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v17 = v14 | (v13 << 6);
      v18 = *(*(a3 + 48) + 8 * v17);
      if ([v18 subscribed] && (v19 = objc_msgSend(v18, sel_primaryCategory)) != 0)
      {
        v20 = v19;
        type metadata accessor for MTCategory();
        v21 = v28;
        v22 = sub_1D917914C();

        a3 = v27;
        if (v22)
        {
          *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          if (__OFADD__(v26++, 1))
          {
            __break(1u);
LABEL_21:
            sub_1D90A7AC4(v25, v24, v26, a3);

            return;
          }
        }
      }

      else
      {
      }
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_21;
      }

      v16 = *(v8 + 8 * v13);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D8FB181C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6850, &unk_1D9193790);
      v3 = sub_1D917942C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D917935C();
      if (!v5)
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

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA72AA90](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D917913C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D8F46024();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D917914C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1D917913C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D8F46024();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D917914C();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D8FB1AE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v32 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v32;
  v8 = a2;
  v36 = v8;
  v9 = v6 > 0xD;
  v10 = a1;
  if (v9)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31[0] = v31;
    v31[1] = v3;
    MEMORY[0x1EEE9AC00](v8);
    v33 = v31 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v7);
    v34 = 0;
    v35 = v10;
    v11 = 0;
    v3 = v10 + 56;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = *(*(v10 + 48) + 8 * v19);
      if ([v20 subscribed] && (v21 = objc_msgSend(v20, sel_primaryCategory)) != 0)
      {
        v22 = v21;
        type metadata accessor for MTCategory();
        v23 = v36;
        v7 = sub_1D917914C();

        v10 = v35;
        if (v7)
        {
          *&v33[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_19:
            v25 = sub_1D90A7AC4(v33, v32, v34, v10);

            return v25;
          }
        }
      }

      else
      {
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = v10;
  v28 = swift_slowAlloc();
  v29 = v36;
  sub_1D8FB1634(v28, v32, v27, v29);
  v25 = v30;

  MEMORY[0x1DA72CB90](v28, -1, -1);

  return v25;
}

uint64_t sub_1D8FB1DC4(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D8FB1AE8(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v20 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1D917931C();
  if (sub_1D917938C())
  {
    sub_1D8F46024();
    do
    {
      swift_dynamicCast();
      if ([v19 subscribed] && (v4 = objc_msgSend(v19, sel_primaryCategory)) != 0 && (v5 = v4, type metadata accessor for MTCategory(), v6 = v3, v7 = sub_1D917914C(), v6, v5, (v7 & 1) != 0))
      {
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_1D8EFC174(v8 + 1);
        }

        v2 = v20;
        result = sub_1D917913C();
        v10 = v20 + 56;
        v11 = -1 << *(v20 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v13 == v16;
            if (v13 == v16)
            {
              v13 = 0;
            }

            v15 |= v17;
            v18 = *(v10 + 8 * v13);
          }

          while (v18 == -1);
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v20 + 48) + 8 * v14) = v19;
        ++*(v20 + 16);
      }

      else
      {
      }
    }

    while (sub_1D917938C());
  }

  return v2;
}

uint64_t sub_1D8FB208C(uint64_t a1)
{
  v2 = sub_1D9176FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84F0, &qword_1D91A1A50);
    v9 = sub_1D917942C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D8FB2D14(&qword_1EDCD5910, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1D917813C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D8FB2D14(&qword_1EDCD5908, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1D91781BC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D8FB23AC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1D917935C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8500, &qword_1D91A1A60);
      result = sub_1D917942C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1D917935C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1DA72AA90](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1D917786C();
    sub_1D8FB2D14(&qword_1ECAB8508, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    result = sub_1D917813C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1D8FB2D14(&qword_1ECAB8510, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        result = sub_1D91781BC();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D8FB2640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
    v3 = sub_1D917942C();
    v4 = 0;
    v5 = v3 + 56;
    v35 = v1;
    v36 = a1 + 32;
    while (1)
    {
      v6 = v36 + 24 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      sub_1D9179DBC();
      if (v9 > 1)
      {
        break;
      }

      if (!v9)
      {
        v10 = 3;
LABEL_10:
        MEMORY[0x1DA72B390](v10);
        goto LABEL_12;
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_12:
      result = sub_1D9179E1C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v37 = v4;
        v17 = ~v12;
        v18 = v8 != 3;
        v19 = v8 != 2;
        v20 = v8 != 1;
        if (v7)
        {
          v18 = 1;
          v19 = 1;
          v20 = 1;
        }

        if (v9 != 3)
        {
          v18 = 1;
        }

        v41 = v18;
        v21 = v9 != 3 || v19;
        v40 = v21;
        v22 = v9 != 3 || v20;
        if (v7 | v8)
        {
          v23 = 0;
        }

        else
        {
          v23 = v9 == 3;
        }

        v38 = v23;
        v39 = v22;
        do
        {
          v24 = *(v3 + 48) + 24 * v13;
          v26 = *v24;
          v25 = *(v24 + 8);
          v27 = *(v24 + 16);
          if (v27 > 1)
          {
            if (v27 == 2)
            {
              if (v9 == 2)
              {
                sub_1D8D02FCC(*v24, *(v24 + 8), 2);
                v32 = v8;
                v33 = v7;
                v34 = 2;
                goto LABEL_3;
              }
            }

            else if (v26 > 1)
            {
              if (v26 ^ 2 | v25)
              {
                if (!v41)
                {
                  sub_1D8D02FCC(v26, v25, 3);
                  v32 = 3;
LABEL_57:
                  v33 = 0;
                  v34 = 3;
LABEL_3:
                  sub_1D8D02FCC(v32, v33, v34);
                  v1 = v35;
                  v4 = v37;
                  goto LABEL_4;
                }
              }

              else if ((v40 & 1) == 0)
              {
                sub_1D8D02FCC(v26, v25, 3);
                v32 = 2;
                goto LABEL_57;
              }
            }

            else if (v26 | v25)
            {
              if ((v39 & 1) == 0)
              {
                sub_1D8D02FCC(v26, v25, 3);
                v32 = 1;
                goto LABEL_57;
              }
            }

            else if (v38)
            {
              sub_1D8D02FCC(v26, v25, 3);
              v32 = 0;
              goto LABEL_57;
            }
          }

          else if (*(v24 + 16))
          {
          }

          else if (!v9)
          {
            sub_1D8D02FCC(*v24, *(v24 + 8), 0);
            v32 = v8;
            v33 = v7;
            v34 = 0;
            goto LABEL_3;
          }

          sub_1D8D02FE4(v8, v7, v9);
          sub_1D8D02FCC(v26, v25, v27);
          result = sub_1D8D02FCC(v8, v7, v9);
          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v1 = v35;
        v4 = v37;
      }

      *(v5 + 8 * v14) = v15 | v16;
      v28 = *(v3 + 48) + 24 * v13;
      *v28 = v8;
      *(v28 + 8) = v7;
      *(v28 + 16) = v9;
      v29 = *(v3 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v31;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    if (v9 == 2)
    {
      v10 = 8;
    }

    else if (v8 > 1)
    {
      if (v8 ^ 2 | v7)
      {
        v10 = 6;
      }

      else
      {
        v10 = 4;
      }
    }

    else if (v8 | v7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_10;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8FB29F4(uint64_t a1)
{
  v2 = sub_1D9179F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84F8, &qword_1D91A1A58);
    v9 = sub_1D917942C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D8FB2D14(&qword_1EDCD5A90, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = sub_1D917813C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D8FB2D14(&qword_1EDCD5A88, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1D91781BC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8FB2D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MTCategory.predicateForFavoritedCategories()()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 32) = 0x7473657265746E69;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x7473657265746E69;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  strcpy((v0 + 112), "interestValue");
  *(v0 + 126) = -4864;
  return sub_1D9178C8C();
}

uint64_t static MTCategory.predicateForCategory(withAdamID:)(uint64_t a1)
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 96) = MEMORY[0x1E69E76D8];
  *(v2 + 104) = v4;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  return sub_1D9178C8C();
}

uint64_t static MTCategory.predicateForNonFavoritedCategories()()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 32) = 0x7473657265746E69;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x7473657265746E69;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  strcpy((v0 + 112), "interestValue");
  *(v0 + 126) = -4864;
  return sub_1D9178C8C();
}

uint64_t static MTCategory.predicateForCategoriesWithRelationshipToPodcast(withAdamID:)(uint64_t a1)
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189060;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1D8D34978();
  *(v2 + 64) = v4;
  *(v2 + 32) = 0x7374736163646F70;
  *(v2 + 40) = 0xE800000000000000;
  v5 = sub_1D917820C();
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  v6 = MEMORY[0x1E69E7360];
  *(v2 + 72) = v5;
  *(v2 + 80) = v7;
  v8 = MEMORY[0x1E69E73D8];
  *(v2 + 136) = v6;
  *(v2 + 144) = v8;
  *(v2 + 112) = a1;
  return sub_1D9178C8C();
}

uint64_t _s18PodcastsFoundation10MTCategoryC22predicateForCategories4withSo11NSPredicateCSayAA6AdamIDVG_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v3, 0);
    v4 = v14;
    v5 = a1 + 32;
    sub_1D8E40D20();
    do
    {
      v5 += 8;
      v6 = sub_1D917927C();
      v15 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1D8D41BE0((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v4 = v15;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      --v3;
    }

    while (v3);
  }

  sub_1D8D4D430();
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  *(v2 + 104) = sub_1D8D6E8B8();
  *(v2 + 72) = v4;
  return sub_1D9178C8C();
}

id _s18PodcastsFoundation10MTCategoryC37predicateForLibraryCategoriesMatchingySo11NSPredicateCSSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v4 + 32) = 1701667182;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v23 = sub_1D9178C8C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918A530;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  *(v7 + 96) = v5;
  *(v7 + 104) = v6;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v8 = sub_1D9178C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D918C190;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D918C190;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9189060;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  *(v11 + 32) = 0x7473657265746E69;
  *(v11 + 40) = 0xE800000000000000;
  *(v11 + 96) = v5;
  *(v11 + 104) = v6;
  *(v11 + 72) = 0x7473657265746E69;
  *(v11 + 80) = 0xE800000000000000;
  *(v11 + 136) = v5;
  *(v11 + 144) = v6;
  strcpy((v11 + 112), "interestValue");
  *(v11 + 126) = -4864;
  *(v10 + 32) = sub_1D9178C8C();
  *(v10 + 40) = _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0();
  v12 = sub_1D91785DC();

  v13 = objc_opt_self();
  v14 = [v13 orPredicateWithSubpredicates_];

  *(v9 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D918C190;
  *(v15 + 32) = v23;
  *(v15 + 40) = v8;
  v16 = v23;
  v17 = v8;
  v18 = sub_1D91785DC();

  v19 = [v13 orPredicateWithSubpredicates_];

  *(v9 + 40) = v19;
  v20 = sub_1D91785DC();

  v21 = [v13 andPredicateWithSubpredicates_];

  return v21;
}

uint64_t static MTCategory.sortDescriptorsForCategoriesInLibrary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189070;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  return v0;
}

uint64_t _s18PodcastsFoundation10MTCategoryC36sortDescriptorsForCategoriesInSearchSaySo16NSSortDescriptorCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  return v0;
}

id MTChapter.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTChapter.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTChapter();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTChapter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTChapter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MTChapter.timeframes.getter()
{
  v1 = [v0 timeframesData];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1D9176C8C();
  v5 = v4;

  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D8FB425C(&qword_1ECAB8528, &qword_1ECAB8530, &protocol conformance descriptor for ServerTimeframe, MEMORY[0x1E69E6330]);
  sub_1D917654C();

  sub_1D8D7567C(v3, v5);
  return v7;
}

id MTChapter.chapterType.getter@<X0>(BOOL *a1@<X8>)
{
  result = [v1 chapterTypeIntValue];
  *a1 = result == 1;
  return result;
}

void MTChapter.FieldNames.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  v5 = 12;
  if (v4 < 0xC)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t MTChapter.FieldNames.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x486B726F77747261;
    v8 = 0xD000000000000016;
    if (v1 == 10)
    {
      v8 = 0xD000000000000012;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000013;
    if (v1 != 7)
    {
      v9 = 0x576B726F77747261;
    }

    if (v1 == 6)
    {
      v9 = 0x6D617266656D6974;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x657470616843544DLL;
    v3 = 0x65646F73697065;
    v4 = 25705;
    if (v1 != 4)
    {
      v4 = 0x656C746974;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7372657470616863;
    if (v1 != 1)
    {
      v5 = 0x5372657470616863;
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
}

uint64_t sub_1D8FB3D5C()
{
  v0 = MTChapter.FieldNames.rawValue.getter();
  v2 = v1;
  if (v0 == MTChapter.FieldNames.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9179ACC();
  }

  return v5 & 1;
}

uint64_t sub_1D8FB3DF8()
{
  sub_1D9179DBC();
  MTChapter.FieldNames.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FB3E60(uint64_t a1)
{
  MTChapter.FieldNames.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FB3EC4(uint64_t a1)
{
  sub_1D9179DBC();
  MTChapter.FieldNames.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FB3F34@<X0>(unint64_t *a1@<X8>)
{
  result = MTChapter.FieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id static MTChapter.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D8FB3FC8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 id];
  v4 = sub_1D917820C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1D8FB4020(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 timeframesData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D9176C8C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1D8FB4088(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  }

  v4 = v3;
  [v2 setTimeframesData_];
}

uint64_t MTChapter.timeframes.setter(uint64_t a1)
{
  v2 = v1;
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D8FB425C(&qword_1ECAB7650, &qword_1ECAB7658, &protocol conformance descriptor for ServerTimeframe, MEMORY[0x1E69E6300]);
  v3 = sub_1D91765AC();
  v5 = v4;

  sub_1D8D752C4(v3, v5);
  v6 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  sub_1D8D7567C(v3, v5);
  [v2 setTimeframesData_];

  return sub_1D8D75668(v3, v5);
}

uint64_t sub_1D8FB425C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D8FB42E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8FB42E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ServerTimeframe();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*MTChapter.timeframes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MTChapter.timeframes.getter();
  return sub_1D8FB4370;
}

void sub_1D8FB4370(uint64_t *a1, char a2)
{
  if (a2)
  {

    MTChapter.timeframes.setter(v2);
  }

  else
  {
    MTChapter.timeframes.setter(*a1);
  }
}

id (*MTChapter.chapterType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 chapterTypeIntValue] == 1;
  return sub_1D8FB4438;
}

__n128 MTChapter.artworkModel.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 artworkTemplateURL];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = [v2 artworkWidth];
  if (!v9)
  {

LABEL_9:
    sub_1D8D39E08(&v34);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v2 artworkHeight];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  sub_1D91770FC();
  v14 = v13;
  sub_1D91770FC();
  v16 = v15;
  v17 = [v2 artworkBackgroundColor];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D917820C();
    v21 = v20;

    v22 = sub_1D8D3707C(v19, v21);
    v24 = v23;
    v33 = v22;
  }

  else
  {
    v33 = 0;
    v24 = -1;
  }

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v25 = word_1EDCD78A8;
  v26 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v27 = byte_1EDCD7898;

  *&v34 = v6;
  *(&v34 + 1) = v8;
  v35 = 0uLL;
  LOBYTE(v36) = -1;
  *(&v36 + 1) = v14;
  v37.n128_u64[0] = v16;
  v37.n128_u64[1] = v33;
  LOBYTE(v38) = v24;
  *(&v38 + 1) = 0;
  LOBYTE(v39) = -1;
  *(&v39 + 1) = 0;
  LOBYTE(v40) = -1;
  *(&v40 + 1) = 0;
  LOBYTE(v41) = -1;
  *(&v41 + 1) = 0;
  LOWORD(v42) = 1279;
  BYTE2(v42) = v25;
  BYTE3(v42) = v26;
  *(&v42 + 1) = 0;
  *&v43 = 0;
  BYTE8(v43) = v27;
  *(&v43 + 9) = 0;
  v44 = 0uLL;
  nullsub_1();
LABEL_15:
  v28 = v43;
  *(a1 + 128) = v42;
  *(a1 + 144) = v28;
  *(a1 + 160) = v44;
  v29 = v39;
  *(a1 + 64) = v38;
  *(a1 + 80) = v29;
  v30 = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v30;
  v31 = v35;
  *a1 = v34;
  *(a1 + 16) = v31;
  result = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1D8FB46F4()
{
  result = qword_1ECAB8538;
  if (!qword_1ECAB8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8538);
  }

  return result;
}

void *sub_1D8FB47BC()
{
  v1 = [v0 entities];
  sub_1D8CF2154(0, &qword_1ECAB8540, 0x1E695D5B8);
  v2 = sub_1D91785FC();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA72AA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 name];
      if (!v8)
      {
        sub_1D917820C();
LABEL_5:

        goto LABEL_6;
      }

      v9 = v8;
      v10 = sub_1D917820C();
      v12 = v11;

      v13 = sub_1D917820C();
      if (!v12)
      {
        goto LABEL_5;
      }

      if (v10 == v13 && v12 == v14)
      {

LABEL_21:

        return v6;
      }

      v16 = sub_1D9179ACC();

      if (v16)
      {
        goto LABEL_21;
      }

LABEL_6:

      ++v4;
      if (v7 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  return 0;
}

uint64_t sub_1D8FB49B0(unint64_t a1)
{
  v1 = a1;
  v49 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v43 = v1;
    v44 = v1 & 0xC000000000000001;
    v40 = v1 + 32;
    v41 = v1 & 0xFFFFFFFFFFFFFF8;
    v42 = v2;
    while (1)
    {
      if (v44)
      {
        v5 = MEMORY[0x1DA72AA90](v4, v1);
        v6 = __OFADD__(v4, 1);
        v7 = v4 + 1;
        if (v6)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v4 >= *(v41 + 16))
        {
          goto LABEL_44;
        }

        v5 = *(v40 + 8 * v4);
        v6 = __OFADD__(v4, 1);
        v7 = v4 + 1;
        if (v6)
        {
          goto LABEL_43;
        }
      }

      v45 = v5;
      v46 = v7;
      v48 = v3;
      v8 = [v5 elements];
      sub_1D8CF2154(0, &qword_1ECAB8550, 0x1E695D5D8);
      v9 = sub_1D91785FC();

      if (!(v9 >> 62))
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          break;
        }

        goto LABEL_34;
      }

      v10 = sub_1D917935C();
      if (v10)
      {
        break;
      }

LABEL_34:

      v33 = [v45 name];
      if (!v33)
      {
        sub_1D917820C();
        v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      }

      v34 = objc_allocWithZone(MEMORY[0x1E695D5D0]);
      v35 = sub_1D91785DC();

      v36 = [v34 initWithName:v33 elements:v35];

      v37 = [v45 partialIndexPredicate];
      [v36 setPartialIndexPredicate_];

      v38 = v36;
      MEMORY[0x1DA729B90]();
      v4 = v46;
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();

      v1 = v43;
      v3 = MEMORY[0x1E69E7CC0];
      if (v46 == v42)
      {
        return v49;
      }
    }

    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA72AA90](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v2 = sub_1D917935C();
        goto LABEL_3;
      }

      v14 = [v12 propertyName];
      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = v14;
      v16 = sub_1D917820C();
      v18 = v17;

      v19 = [v47 propertiesByName];
      sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
      v20 = sub_1D917805C();

      if (!*(v20 + 16))
      {
        break;
      }

      v21 = sub_1D8D33C70(v16, v18);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_28;
      }

      v24 = *(*(v20 + 56) + 8 * v21);

      v25 = v24;
      v26 = [v13 collationType];
      v27 = [objc_allocWithZone(MEMORY[0x1E695D5D8]) initWithProperty:v25 collationType:v26];

      [v27 setAscending_];
      v28 = v27;
      MEMORY[0x1DA729B90]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();

LABEL_15:
      ++v11;
      if (v1 == v10)
      {
        goto LABEL_34;
      }
    }

LABEL_28:

LABEL_29:
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD0F88);
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "Missing property!", v32, 2u);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    goto LABEL_15;
  }

  return v3;
}

void *sub_1D8FB4F34()
{
  v0 = sub_1D917903C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5B8]) init];
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v1 setName_];

  type metadata accessor for MTChapter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    sub_1D917820C();
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v1 setManagedObjectClassName_];

  v28 = v1;
  v29 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v29 setName_];

  sub_1D917901C();
  sub_1D917904C();
  [v29 setOptional_];
  v25 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v25 setName_];

  sub_1D917901C();
  sub_1D917904C();
  [v25 setOptional_];
  v7 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v7 setName_];

  sub_1D917902C();
  sub_1D917904C();
  v9 = sub_1D9179D9C();
  v27 = v7;
  [v7 setDefaultValue_];

  [v7 setOptional_];
  v26 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v26 setName_];

  sub_1D9178FFC();
  sub_1D917904C();
  [v26 setOptional_];
  v11 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v11 setName_];

  sub_1D917900C();
  sub_1D917904C();
  [v11 setOptional_];
  v13 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v13 setName_];

  sub_1D917900C();
  sub_1D917904C();
  v24 = v13;
  [v13 setOptional_];
  v15 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v15 setName_];

  sub_1D917901C();
  v17 = v15;
  sub_1D917904C();
  [v11 setOptional_];
  v18 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v18 setName_];

  sub_1D917901C();
  sub_1D917904C();
  [v18 setOptional_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D91A1B90;
  *(inited + 32) = v29;
  *(inited + 40) = v25;
  *(inited + 48) = v27;
  *(inited + 56) = v26;
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = v17;
  *(inited + 88) = v18;
  v21 = [v28 properties];
  sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
  sub_1D91785FC();

  sub_1D8E30038(inited);
  v22 = sub_1D91785DC();

  [v28 setProperties_];

  return v28;
}

void _s18PodcastsFoundation9MTChapterC20addChapterPropertiesyySo20NSManagedObjectModelCFZ_0(void *a1)
{
  v2 = sub_1D917903C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD0F88);
  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Adding chapter properties.", v6, 2u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  v7 = sub_1D8FB47BC();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D8FB4F34();
    v10 = [a1 entities];
    sub_1D8CF2154(0, &qword_1ECAB8540, 0x1E695D5B8);
    v11 = sub_1D91785FC();

    MEMORY[0x1DA729B90]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D917863C();
    }

    sub_1D917869C();
    v12 = sub_1D91785DC();

    [a1 setEntities_];

    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v9 setVersionHashModifier_];

    v14 = [objc_allocWithZone(MEMORY[0x1E695D6E8]) init];
    v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v14 setName_];

    [v14 setDestinationEntity_];
    [v14 setOptional_];
    [v14 setMaxCount_];
    v16 = [objc_allocWithZone(MEMORY[0x1E695D6E8]) init];
    [v16 setDestinationEntity_];
    v17 = v16;
    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v17 setName_];

    [v17 setOrdered_];
    [v17 setOptional_];

    [v17 setDeleteRule_];
    [v14 setInverseRelationship_];
    [v17 setInverseRelationship_];
    v19 = [v9 properties];
    sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
    v20 = sub_1D91785FC();

    MEMORY[0x1DA729B90]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D917863C();
    }

    sub_1D917869C();
    v21 = sub_1D91785DC();

    [v9 setProperties_];

    v22 = [v8 indexes];
    sub_1D8CF2154(0, &qword_1ECAB8548, 0x1E695D5D0);
    v23 = sub_1D91785FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918C190;
    *(inited + 32) = v17;
    v25 = objc_allocWithZone(MEMORY[0x1E695D530]);
    v26 = v17;
    v27 = [v25 init];
    sub_1D917901C();
    sub_1D917904C();
    v28 = v27;
    v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v28 setName_];

    [v28 setOptional_];
    *(inited + 40) = v28;
    v30 = [v8 properties];
    sub_1D91785FC();

    sub_1D8E30038(inited);
    v31 = sub_1D91785DC();

    [v8 setProperties_];

    sub_1D8FB49B0(v23);

    v32 = sub_1D91785DC();

    [v8 setIndexes_];
  }

  else
  {
    v35 = sub_1D917741C();
    v33 = sub_1D9178CFC();
    if (os_log_type_enabled(v35, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8CEC000, v35, v33, "Unable to create chapter relationship. No chapter or episode entity found.", v34, 2u);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.unsafeDelete(chapters:)(NSOrderedSet chapters)
{
  v2 = v1;
  v3 = sub_1D9176A7C();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9178C9C();
  v6 = sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v32)
  {
    v8 = &selRef_allPlayedEpsWeight;
    v9 = &qword_1ECAB0000;
    *&v7 = 136446210;
    v26 = v7;
    do
    {
      sub_1D8D65618(&v31, v30);
      sub_1D8CFAD1C(v30, v29);
      type metadata accessor for MTChapter();
      if (swift_dynamicCast())
      {
        v10 = v33;
        [v2 v8[212]];
      }

      else
      {
        if (v9[395] != -1)
        {
          swift_once();
        }

        v11 = sub_1D917744C();
        __swift_project_value_buffer(v11, qword_1ECAB0C60);
        sub_1D8CFAD1C(v30, v29);
        v12 = sub_1D917741C();
        v13 = sub_1D9178D0C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33 = v27;
          *v14 = v26;
          __swift_project_boxed_opaque_existential_1(v29, v29[3]);
          DynamicType = swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4450, &qword_1D91891C0);
          v15 = sub_1D917826C();
          v16 = v5;
          v17 = v6;
          v18 = v3;
          v19 = v2;
          v21 = v20;
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v22 = sub_1D8CFA924(v15, v21, &v33);
          v2 = v19;
          v3 = v18;
          v6 = v17;
          v5 = v16;
          v8 = &selRef_allPlayedEpsWeight;

          *(v14 + 4) = v22;
          _os_log_impl(&dword_1D8CEC000, v12, v13, "Unexpected type %{public}s encountered while deleting chapters.", v14, 0xCu);
          v23 = v27;
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x1DA72CB90](v23, -1, -1);
          v24 = v14;
          v9 = &qword_1ECAB0000;
          MEMORY[0x1DA72CB90](v24, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      sub_1D91791DC();
    }

    while (v32);
  }

  (*(v25 + 8))(v5, v3);
}

uint64_t sub_1D8FB5F94(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NSManagedObjectContext.unsafeDelete(chapters:)(v4);

  return 1;
}

id static CoreDataFetcher.contextProvider.getter()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

void sub_1D8FB6074(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = [a1 objectInEntity:@"MTPodcast" predicate:a2];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  v6 = v4;
  a3();
}

uint64_t static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a4;
  v14[7] = a5;
  v15 = v13;

  v16 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(a3, sub_1D8FB635C, v14, a6);

  return v16;
}

void sub_1D8FB6234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = objc_opt_self();
  v7 = @"MTPodcast";
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [v6 predicateForPodcastUUID_];

  v10 = [a1 objectInEntity:v7 predicate:v9];
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_5:
  v12 = v11;
  a4();
}

void sub_1D8FB638C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14[2] = a4;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  NSManagedObjectContext.performAndWait<A>(_:)(a5, v14, a4, a6);
}

void sub_1D8FB6448()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 24) channelForStoreId_];
  v1();
}

void static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14[2] = a5;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  NSManagedObjectContext.performAndWait<A>(_:)(sub_1D8FB667C, v14, a5, a6);
}

void sub_1D8FB65E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 episodeForUuid_];

  a4(v7);
}

void static CoreDataFetcher.performAndWaitWithSaveOnEpisode(with:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v14[4] = sub_1D8FB68DC;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_18_0;
  v12 = _Block_copy(v14);

  v13 = v10;

  [v13 performBlockAndWaitWithSave_];
  _Block_release(v12);
}

void sub_1D8FB682C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a2 episodeForUuid_];

  swift_beginAccess();
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;

  v11 = v9;
  a5(v9);
}

void sub_1D8FB691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 privateQueueContext];

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v18[4] = a6;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D8CF5F60;
  v18[3] = a7;
  v16 = _Block_copy(v18);
  v17 = v14;

  [v17 performBlock_];
  _Block_release(v16);
}

void sub_1D8FB6A68(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, SEL *a6)
{
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [a1 *a6];

  a4(v10);
}

void static CoreDataFetcher.fetchStationShow(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 privateQueueContext];

  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = v10;
  v11[6] = a3;
  v11[7] = a4;
  v14[4] = sub_1D8FB6DFC;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_30_0;
  v12 = _Block_copy(v14);

  v13 = v10;

  [v13 performBlock_];
  _Block_release(v12);
}

void sub_1D8FB6C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  v15 = 0;
  v9 = swift_allocObject();
  v9[2] = &v15;
  v9[3] = a4;
  v9[4] = a2;
  v9[5] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8FBA214;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_189;
  v11 = _Block_copy(aBlock);
  v12 = a4;

  [v12 performBlockAndWait_];

  _Block_release(v11);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    a5(v13);
  }
}

uint64_t static CoreDataFetcher.fetchStationShow(stationShowUuid:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v6 = [v7 mainOrPrivateContext];
  }

  v8 = swift_allocObject();
  v8[2] = &v17;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8FB707C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_39_0;
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = v6;

  [v12 performBlockAndWait_];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

void sub_1D8FB7004(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a2 podcastPlaylistSettingsForUuid_];

  v8 = *a1;
  *a1 = v7;
}

void static CoreDataFetcher.fetchPodcast(adamId:feedUrl:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 privateQueueContext];

  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v12;
  v13[7] = a4;
  v13[8] = a5;
  v16[4] = sub_1D8FB71E4;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_45_0;
  v14 = _Block_copy(v16);

  v15 = v12;

  [v15 performBlock_];
  _Block_release(v14);
}

void sub_1D8FB71E4()
{
  v1 = *(v0 + 56);
  v2 = _s18PodcastsFoundation15CoreDataFetcherC12fetchPodcast6adamId7feedUrl4withSo9MTPodcastCSgs5Int64V_SSSgSo22NSManagedObjectContextCtFZ_0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1();
}

uint64_t static CoreDataFetcher.performAndWaitOnPodcast<A>(adamId:feedUrl:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 mainOrPrivateContext];

  (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = v7;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = v16;
  v17[8] = a7;
  v17[9] = a4;
  v17[10] = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D8FB8FD4;
  *(v18 + 24) = v17;
  v22[4] = sub_1D8EDCFE0;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D8D24488;
  v22[3] = &block_descriptor_55;
  v19 = _Block_copy(v22);

  v20 = v16;

  [v20 performBlockAndWait_];

  _Block_release(v19);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8FB7458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v14 = sub_1D91791BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = _s18PodcastsFoundation15CoreDataFetcherC12fetchPodcast6adamId7feedUrl4withSo9MTPodcastCSgs5Int64V_SSSgSo22NSManagedObjectContextCtFZ_0(a2, a3, a4, a5);
  a7();

  (*(*(a9 - 8) + 56))(v17, 0, 1, a9);
  return (*(v15 + 40))(v21, v17, v14);
}

double sub_1D8FB75B4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v4 = sub_1D917908C();
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = v4;
  v7 = sub_1D917935C();
  v4 = v6;
  if (v7 >= 1)
  {
LABEL_3:
    *a3 = v4;
  }

LABEL_4:

  return result;
}

void static CoreDataFetcher.fetchEpisode(contentId:guid:title:pubDate:podcastUuid:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v32 = a3;
  v33 = a4;
  HIDWORD(v31) = a2;
  v37 = a11;
  v38 = a8;
  v36 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v31 - v17;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 privateQueueContext];

  sub_1D8CF6B1C(a7, v18);
  v21 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  *(v24 + 24) = a1;
  *(v24 + 32) = BYTE4(v31) & 1;
  v25 = v33;
  *(v24 + 40) = v32;
  *(v24 + 48) = v25;
  *(v24 + 56) = v35;
  *(v24 + 64) = a6;
  sub_1D8E964A4(v18, v24 + v21);
  v26 = (v24 + v22);
  v27 = v37;
  *v26 = v38;
  v26[1] = a9;
  *(v24 + v23) = v20;
  v28 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v36;
  v28[1] = v27;
  aBlock[4] = sub_1D8FB900C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_61;
  v29 = _Block_copy(aBlock);

  v30 = v20;

  [v30 performBlock_];
  _Block_release(v29);
}

uint64_t static CoreDataFetcher.fetchEpisodes(for:sortDescriptors:fetchLimit:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v19 = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v9 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v10 = sub_1D91785DC();
  [v9 setSortDescriptors_];

  if ((a4 & 1) == 0)
  {
    [v9 setFetchLimit_];
  }

  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v9;
  v11[4] = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D8FBA0CC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_71;
  v13 = _Block_copy(aBlock);
  v14 = a5;
  v15 = v9;

  [v14 performBlockAndWait_];

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v17 = v19;

    return v17;
  }

  return result;
}

uint64_t static CoreDataFetcher.fetchEpisodes(fromSeason:newerThanEpisodeNumber:inPodcastWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 predicateForAllEpisodesOnPodcastUuid_];

  v11 = [v8 predicateForSeasonNumber_];
  v12 = [v8 predicateForEpisodesWithEpisodeNumbersGreaterThan_];
  v13 = [v10 AND_];
  v14 = [v13 AND_];

  v25 = 0;
  v15 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v15 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v16 = sub_1D91785DC();
  [v15 setSortDescriptors_];

  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v15;
  v17[4] = &v25;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D8FBA218;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_82_0;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  v21 = v15;

  [v20 performBlockAndWait_];

  _Block_release(v19);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v25;

    if (v23)
    {
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v23;
  }

  return result;
}

uint64_t static CoreDataFetcher.fetchEpisodes(newerThan:inPodcastWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 privateQueueContext];

  v5 = objc_opt_self();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v5 predicateForAllEpisodesOnPodcastUuid_];

  v8 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v9 = [v5 predicateForEpisodesPublishedAfterDate_];

  v10 = [v7 AND_];
  v21 = 0;
  v11 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v11 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v12 = sub_1D91785DC();
  [v11 setSortDescriptors_];

  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = v11;
  v13[4] = &v21;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D8FBA218;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_93;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  v17 = v11;

  [v16 performBlockAndWait_];

  _Block_release(v15);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v21;

    if (v19)
    {
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v19;
  }

  return result;
}

double sub_1D8FB819C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v4 = sub_1D917908C();
  if (v4 >> 62)
  {
    v5 = v4;
    v6 = sub_1D917935C();
    v4 = v5;
    if (v6 >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    *a3 = v4;
    goto LABEL_6;
  }

  *a3 = MEMORY[0x1E69E7CC0];
LABEL_6:

  return result;
}

void static CoreDataFetcher.episodeUuid(for:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if ([objc_opt_self() isNotEmpty_])
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 privateQueueContext];

    v8 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = a2;
    v9[5] = a3;
    v13[4] = sub_1D8FBA0D8;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D8CF5F60;
    v13[3] = &block_descriptor_99_1;
    v10 = _Block_copy(v13);
    v11 = v7;
    v12 = v8;

    [v11 performBlock_];
    _Block_release(v10);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_1D8FB844C(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = [a1 objectInEntity:@"MTEpisode" predicate:a2];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 uuid]) == 0)
  {

LABEL_8:
    a3(0, 0);
    return;
  }

  v8 = v7;
  v9 = sub_1D917820C();
  v11 = v10;

  a3(v9, v11);
}

void static CoreDataFetcher.fetchEpisode(for:on:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = objc_opt_self();
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = [v10 predicateForEpisodeGuid:v11 onFeedURL:v12];
  }

  else
  {
LABEL_6:
    v14 = objc_opt_self();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = [v14 predicateForEpisodeGuid_];
  }

  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 sharedInstance];
  v18 = [v17 privateQueueContext];

  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v16;
  v19[4] = v18;
  v19[5] = a5;
  v19[6] = a6;
  v22[4] = sub_1D8FBA0E4;
  v22[5] = v19;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D8CF5F60;
  v22[3] = &block_descriptor_105_0;
  v20 = _Block_copy(v22);
  v21 = v18;

  [v21 performBlock_];

  _Block_release(v20);
}

void sub_1D8FB8764(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, __n128))
{
  v18 = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v7 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v8 = sub_1D91785DC();
  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = v7;
  v9[4] = &v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8FBA218;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_124;
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v13 = v7;

  [v12 performBlockAndWait_];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    if (sub_1D917935C())
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  isEscapingClosureAtFileLocation = v18;

  if (!isEscapingClosureAtFileLocation)
  {
LABEL_12:
    (a4)(0);
    return;
  }

  v13 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_10;
  }

  if (!*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA72AA90](0, isEscapingClosureAtFileLocation);
    goto LABEL_8;
  }

  if (v13[2])
  {
    v15 = *(isEscapingClosureAtFileLocation + 32);
LABEL_8:
    v16 = v15;

    (a4)(v16);

    return;
  }

  __break(1u);
}

id MTPropertyChangeQueryObserver.firstResult.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  v7[4] = sub_1D8FBA0F4;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D8FB8BE4;
  v7[3] = &block_descriptor_111_0;
  v3 = _Block_copy(v7);

  [v0 results_];
  _Block_release(v3);
  swift_beginAccess();
  v4 = *v2;
  v5 = *v2;

  return v4;
}

void sub_1D8FB8B30(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_7:
    v3 = v4;
LABEL_10:
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v3;

    return;
  }

  __break(1u);
}

double sub_1D8FB8BE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v2 = sub_1D91785FC();
  }

  v3(v2);

  return result;
}

uint64_t _s18PodcastsFoundation15CoreDataFetcherC05fetchA03for2by4withSaySo9MTPodcastCGSgSo11NSPredicateC_SaySo16NSSortDescriptorCGSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v5 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v6 = sub_1D91785DC();
  [v5 setSortDescriptors_];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8FBA138;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_178;
  v9 = _Block_copy(aBlock);
  v10 = a3;
  v11 = v5;

  [v10 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

unint64_t _s18PodcastsFoundation15CoreDataFetcherC12fetchPodcast6adamId7feedUrl4withSo9MTPodcastCSgs5Int64V_SSSgSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  if (a3)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(MTStoreIdentifier) initWithFeedUrl:v7 storeIdentifier:v6];

  v9 = [objc_opt_self() predicateForIdentifer_];
  result = _s18PodcastsFoundation15CoreDataFetcherC05fetchA03for2by4withSaySo9MTPodcastCGSgSo11NSPredicateC_SaySo16NSSortDescriptorCGSo22NSManagedObjectContextCtFZ_0(v9, MEMORY[0x1E69E7CC0], a4);
  if (!result)
  {
    goto LABEL_13;
  }

  v11 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v14 = result;
    v15 = sub_1D917935C();
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

LABEL_13:

    return 0;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA72AA90](0);
    goto LABEL_10;
  }

  if (*(v11 + 16))
  {
    v12 = *(result + 32);
LABEL_10:
    v13 = v12;

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1D8FB900C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = sub_1D8FB922C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4));
  v5();
}

void sub_1D8FB9108(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_1D917935C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  sub_1D9176CCC();
  v5 = v4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA72AA90](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return;
    }

    v6 = *(a2 + 32);
  }

  v7 = v6;
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = 0;
  v9 = 1.79769313e308;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA72AA90](v8, a2);
    }

    else
    {
      v10 = *(a2 + 8 * v8 + 32);
    }

    v11 = v10;
    ++v8;
    [v10 pubDate];
    v13 = vabdd_f64(v12, v5);
    if (v13 >= v9)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }

    if (v13 < v9)
    {
      v9 = v13;
      v7 = v11;
    }
  }

  while (v3 != v8);
}

id sub_1D8FB922C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v107 = a6;
  v108 = a7;
  v106 = a5;
  v109 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v101 - v20);
  v22 = sub_1D9176E3C();
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v101 - v30;
  if (!a9)
  {
    goto LABEL_78;
  }

  v32 = HIBYTE(a9) & 0xF;
  if ((a9 & 0x2000000000000000) == 0)
  {
    v32 = a8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
LABEL_78:
    if ((a2 & 1) != 0 || ![objc_opt_self() isNotEmpty_])
    {
      return 0;
    }

    v47 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
    v116 = 0;
    v53 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    [v53 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v54 = sub_1D91785DC();
    [v53 setSortDescriptors_];

    v21 = swift_allocObject();
    v55 = v109;
    v21[2] = v109;
    v21[3] = v53;
    v21[4] = &v116;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1D8FBA218;
    *(v56 + 24) = v21;
    v114 = sub_1D8EDCFE0;
    v115 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1D8D24488;
    v113 = &block_descriptor_135_0;
    v57 = _Block_copy(&aBlock);
    v58 = v55;
    v59 = v53;

    [v58 performBlockAndWait_];

    _Block_release(v57);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      isEscapingClosureAtFileLocation = v116;

      if (!isEscapingClosureAtFileLocation)
      {
LABEL_56:

        return 0;
      }

      v21 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        if (!*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_55:

          goto LABEL_56;
        }

LABEL_21:
        if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x1DA72AA90](0, isEscapingClosureAtFileLocation);
        }

        else
        {
          if (!v21[2])
          {
            __break(1u);
            goto LABEL_62;
          }

          v60 = *(isEscapingClosureAtFileLocation + 32);
        }

        v61 = v60;

        return v61;
      }

LABEL_54:
      if (!sub_1D917935C())
      {
        goto LABEL_55;
      }

      goto LABEL_21;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v104 = v27;
  if (a4)
  {
    v33 = v28;
    v34 = objc_opt_self();
    v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v36 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    isEscapingClosureAtFileLocation = [v34 predicateForEpisodeGuid:v35 onPodcastUuid:v36];

    v116 = 0;
    v38 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    [v38 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v39 = sub_1D91785DC();
    [v38 setSortDescriptors_];

    v40 = swift_allocObject();
    v41 = v109;
    v40[2] = v109;
    v40[3] = v38;
    v40[4] = &v116;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1D8FBA218;
    *(v42 + 24) = v40;
    v114 = sub_1D8EDCFE0;
    v115 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1D8D24488;
    v113 = &block_descriptor_168;
    v43 = _Block_copy(&aBlock);
    v44 = v115;
    v45 = v41;
    v46 = v38;

    [v45 performBlockAndWait_];

    _Block_release(v43);
    v47 = swift_isEscapingClosureAtFileLocation();

    if ((v47 & 1) == 0)
    {
      v47 = v116;

      if (v47)
      {
        sub_1D8CF6B1C(v108, v21);
        v48 = v104;
        if ((*(v33 + 48))(v21, 1, v104) != 1)
        {
          (*(v33 + 32))(v31, v21, v48);
          sub_1D8FB9108(v31, v47);
          v81 = v80;

          (*(v33 + 8))(v31, v48);
          return v81;
        }

        sub_1D8CF5EF8(v21);
        v49 = (v47 & 0xFFFFFFFFFFFFFF8);
        if (!(v47 >> 62))
        {
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          goto LABEL_59;
        }

LABEL_58:
        if (sub_1D917935C())
        {
LABEL_11:
          if ((v47 & 0xC000000000000001) == 0)
          {
            if (v49[2])
            {
              v50 = *(v47 + 32);
LABEL_14:
              v51 = v50;

              return v51;
            }

            __break(1u);
            goto LABEL_64;
          }

LABEL_62:
          v50 = MEMORY[0x1DA72AA90](0, v47);
          goto LABEL_14;
        }

LABEL_59:

LABEL_67:

        return 0;
      }

      return 0;
    }

    __break(1u);
    goto LABEL_53;
  }

  if ((a2 & 1) == 0)
  {
    v102 = v29;
    v103 = v28;
    v62 = [objc_opt_self() isNotEmpty_];
    v29 = v102;
    v28 = v103;
    if (v62)
    {
      v63 = objc_opt_self();
      v64 = [v63 predicateForEpisodeStoreTrackId_];
      v65 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v66 = [v63 predicateForAllEpisodesOnPodcastUuid_];

      v67 = [v64 AND_];
      v116 = 0;
      v68 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
      v69 = v67;
      v101 = v69;
      v70 = [v68 initWithEntityName_];
      [v70 setPredicate_];
      sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
      v71 = sub_1D91785DC();
      [v70 setSortDescriptors_];

      v72 = swift_allocObject();
      v73 = v109;
      v72[2] = v109;
      v72[3] = v70;
      v72[4] = &v116;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1D8FBA218;
      *(isEscapingClosureAtFileLocation + 24) = v72;
      v114 = sub_1D8EDCFE0;
      v115 = isEscapingClosureAtFileLocation;
      aBlock = MEMORY[0x1E69E9820];
      v111 = 1107296256;
      v112 = sub_1D8D24488;
      v113 = &block_descriptor_157;
      v74 = _Block_copy(&aBlock);
      v49 = v73;
      v75 = v70;

      v44 = v101;

      [v49 performBlockAndWait_];

      _Block_release(v74);
      v47 = swift_isEscapingClosureAtFileLocation();

      if (v47)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v47 = v116;

      if (v47)
      {
        sub_1D8CF6B1C(v108, v18);
        v77 = v103;
        v76 = v104;
        if ((*(v103 + 48))(v18, 1, v104) != 1)
        {
          (*(v77 + 32))(v25, v18, v76);
          sub_1D8FB9108(v25, v47);
          v100 = v99;

          (*(v77 + 8))(v25, v76);
          return v100;
        }

        sub_1D8CF5EF8(v18);
        v49 = (v47 & 0xFFFFFFFFFFFFFF8);
        if (!(v47 >> 62))
        {
          result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
LABEL_73:

            return 0;
          }

LABEL_32:
          if ((v47 & 0xC000000000000001) != 0)
          {
            v78 = MEMORY[0x1DA72AA90](0, v47);
          }

          else
          {
            if (!v49[2])
            {
              __break(1u);
              return result;
            }

            v78 = *(v47 + 32);
          }

          v79 = v78;

          return v79;
        }

LABEL_72:
        result = sub_1D917935C();
        if (!result)
        {
          goto LABEL_73;
        }

        goto LABEL_32;
      }

      v29 = v102;
      v28 = v103;
    }
  }

  if (v107)
  {
    v82 = v29;
    v83 = v28;
    v84 = objc_opt_self();
    v85 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v86 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v49 = [v84 predicateForEpisodeTitle:v85 onPodcastUuid:v86];

    v116 = 0;
    v87 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    [v87 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v88 = sub_1D91785DC();
    [v87 setSortDescriptors_];

    v89 = swift_allocObject();
    v90 = v109;
    v89[2] = v109;
    v89[3] = v87;
    v89[4] = &v116;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_1D8FBA218;
    *(isEscapingClosureAtFileLocation + 24) = v89;
    v114 = sub_1D8EDCFE0;
    v115 = isEscapingClosureAtFileLocation;
    aBlock = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1D8D24488;
    v113 = &block_descriptor_146;
    v91 = _Block_copy(&aBlock);
    v44 = v90;
    v92 = v87;

    [v44 performBlockAndWait_];

    _Block_release(v91);
    v47 = swift_isEscapingClosureAtFileLocation();

    if (v47)
    {
      __break(1u);
      goto LABEL_58;
    }

    v47 = v116;

    v93 = v105;
    if (v47)
    {
      sub_1D8CF6B1C(v108, v105);
      v94 = v104;
      if ((*(v83 + 48))(v93, 1, v104) != 1)
      {
        (*(v83 + 32))(v82, v93, v94);
        sub_1D8FB9108(v82, v47);
        v98 = v97;

        (*(v83 + 8))(v82, v94);
        return v98;
      }

      sub_1D8CF5EF8(v93);
      isEscapingClosureAtFileLocation = v47 & 0xFFFFFFFFFFFFFF8;
      if (!(v47 >> 62))
      {
        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:

          goto LABEL_67;
        }

        goto LABEL_45;
      }

LABEL_65:
      if (!sub_1D917935C())
      {
        goto LABEL_66;
      }

LABEL_45:
      if ((v47 & 0xC000000000000001) != 0)
      {
        v95 = MEMORY[0x1DA72AA90](0, v47);
        goto LABEL_48;
      }

      if (*(isEscapingClosureAtFileLocation + 16))
      {
        v95 = *(v47 + 32);
LABEL_48:
        v96 = v95;

        return v96;
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  return 0;
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

void FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10)
{
  v16 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v18 = [v16 initWithEntityName_];

  [v18 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v19 = sub_1D91785DC();
  [v18 setSortDescriptors_];

  [v18 setFetchBatchSize_];
  [v18 setIncludesSubentities_];
  [v18 setIncludesPropertyValues_];
  [v18 setReturnsObjectsAsFaults_];
  if ((a8 & 1) == 0)
  {
    [v18 setFetchLimit_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4438, &qword_1D91891A0);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;

  v20[14] = v21;
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v18;
  v20[5] = a6;
  v20[6] = a10;
  v20[7] = sub_1D8D23164;
  v20[8] = 0;
  v20[9] = sub_1D8E3B050;
  v20[10] = 0;
  v20[11] = sub_1D8D38B78;
  v20[12] = 0;
  *a9 = v20;
}

void static FetchedResultsListPublisher.unsafeUnlimitedListPublisher(identifier:entityName:predicate:sortDescriptors:managedObjectContext:receiveOn:transform:updateRequiredComparator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  v20 = a5;

  v21 = a7;
  v22 = a8;

  sub_1D8D28C14(a1, a2, a3, a4, v20, 0x7FFFFFFFFFFFFFFFLL, v21, a9, v22, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1D8FBA574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for FRPSectionInfo(0, a3, a4, a5);
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t FRPOutput.init(content:hasMore:totalCount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for FRPOutput(0, a4, v9, v10);
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

void FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_1D8D28E48(a3, a4);
  [v20 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v21 = sub_1D91785DC();
  [v20 setSortDescriptors_];

  [v20 setFetchBatchSize_];
  [v20 setFetchLimit_];
  v29[0] = a13;
  v29[1] = MEMORY[0x1E69E6530];
  v29[2] = a14;
  v29[3] = MEMORY[0x1E69E6550];
  type metadata accessor for FetchedResultsPublisherImplementation(0, v29);
  v22 = swift_allocObject();
  *(v22 + 16) = a13;
  *(v22 + 24) = a14;
  swift_allocObject();
  *(&v24 + 1) = sub_1D8E29C9C;
  *&v24 = a12;
  v23 = sub_1D8D28EA0(a1, a2, v20, a6, a7, a8, a10, a11, v24, v22);

  *a9 = v23;
}

uint64_t FetchedResultsSingleItemPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v17 = a1;
  v5 = *(a2 + 24);
  v18[0] = *(a2 + 16);
  v4 = v18[0];
  v18[1] = MEMORY[0x1E69E6530];
  v18[2] = v5;
  v18[3] = MEMORY[0x1E69E6550];
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(255, v18);
  v14 = sub_1D91791BC();
  swift_getWitnessTable();
  v6 = sub_1D917768C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = sub_1D8D12EBC();
  v18[0] = v10;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v5;
  v12 = v16;
  v11[4] = v15;
  v11[5] = v12;
  sub_1D9177B9C();

  sub_1D917767C();
  return (*(v7 + 8))(v9, v6);
}

void sub_1D8FBAB54(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for FRPSectionInfo(255, a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550]);
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D9178BDC();
  if (v4)
  {
    sub_1D91786FC();
    swift_getWitnessTable();
    sub_1D9178BDC();
  }

  else
  {
    (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }
}

void FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_1D8D28E48(a3, a4);
  [v24 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v25 = sub_1D91785DC();

  [v24 setSortDescriptors_];

  if (a7 >= 100)
  {
    v26 = 100;
  }

  else
  {
    v26 = a7;
  }

  [v24 setFetchBatchSize_];
  v32[0] = a16;
  v32[1] = a17;
  v32[2] = a18;
  v32[3] = a19;
  type metadata accessor for FetchedResultsPublisherImplementation(0, v32);
  swift_allocObject();
  v27 = sub_1D8D28EA0(a1, a2, v24, a8, a10, a11, a12, a13, a14, a15);

  *a9 = v27;
}

void FetchedResultsSectionedPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D8D12EBC();
  v13 = v8;
  v9 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v9;
  v10 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(0, v12);
  WitnessTable = swift_getWitnessTable();
  PFProducer.receive<A>(subscriber:)(a1, v10, a3, WitnessTable, a4);
}

void *sub_1D8FBAEE8()
{
  result = sub_1D8FBB1E0();
  if (result)
  {
    v1 = result;
    v2 = sub_1D8D42180();
    v4 = v3;
    v6 = v5;

    return (v2 < v4 && v2 < v6);
  }

  return result;
}

void *sub_1D8FBAF38()
{
  result = sub_1D8FBB1E0();
  if (result)
  {
    v1 = result;
    v2 = sub_1D8D42180();
    v4 = v3;
    v6 = v5;

    if (v2 < v6)
    {
      return (v2 >= v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1D8FBAF90()
{
  v0 = sub_1D8FBB1E0();
  if (v0)
  {
    v1 = v0;
    sub_1D8FBAFEC();
  }
}

void sub_1D8FBAFEC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v23 = 0;
  v3 = qword_1ECAB8638;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v15 = v0;
  v16 = &v23;
  v5 = *((v2 & v1) + 0x50);
  v6 = *((v2 & v1) + 0x58);
  v7 = *((v2 & v1) + 0x60);
  v8 = *((v2 & v1) + 0x68);

  aBlock = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v9 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging(0, &aBlock);
  Synchronized.modify(_:)(sub_1D8FBD904, &v14, v4, v9);

  if (v23 == 1)
  {
    v10 = *(v0 + qword_1ECAB8608);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v7;
    v12[5] = v8;
    v12[6] = v11;
    v21 = sub_1D8FBD90C;
    v22 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D8CF5F60;
    v20 = &block_descriptor_102;
    v13 = _Block_copy(&aBlock);

    [v10 performBlock_];
    _Block_release(v13);
  }
}

uint64_t sub_1D8FBB1E0()
{
  v1 = v0[14];
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(255, v5);
  v3 = sub_1D91791BC();
  sub_1D8D0566C(sub_1D8FBD830, v0, v1, v3);
  return *&v5[0];
}

double sub_1D8FBB33C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_1ECAB8648 + 16);
  *a1 = *(v1 + qword_1ECAB8648);
  *(a1 + 16) = v2;

  return result;
}

uint64_t sub_1D8FBB360(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + qword_1ECAB8648;
  *v3 = *a1;
  *(v3 + 16) = v2;

  return sub_1D8D4BF5C();
}

uint64_t sub_1D8FBB3AC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCD15F8;
  swift_beginAccess();
  return sub_1D8D088B4(v1 + v3, a1, &qword_1ECAB6DE0, &qword_1D9195250);
}

double sub_1D8FBB414(uint64_t a1)
{
  *(v1 + qword_1EDCD1620) = a1;

  return result;
}

uint64_t sub_1D8FBB46C(char *a1, unint64_t a2, char *a3)
{
  v88 = a3;
  v83 = a1;
  v94 = *MEMORY[0x1E69E9840];
  v82 = sub_1D91773AC();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v15 = sub_1D917739C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB1078 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_1ECAB1080);
  v84 = v16;
  (*(v16 + 16))(v18, v19, v15);
  sub_1D917737C();
  sub_1D917731C();

  v87 = v18;
  v20 = sub_1D917737C();
  v21 = sub_1D9178F5C();

  v22 = sub_1D917918C();
  v85 = v15;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = v14;
    v25 = v6;
    v26 = swift_slowAlloc();
    *&v92[0] = v26;
    *v23 = 136446210;
    *(v23 + 4) = sub_1D8CFA924(v83, a2, v92);
    v27 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v21, v27, "FetchedResultsPublisher Initial Load", "id: %{name=FRPIdentifier,public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v28 = v26;
    v6 = v25;
    v14 = v24;
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  v29 = v5;
  (*(v6 + 16))(v11, v14, v5);
  sub_1D91773FC();
  swift_allocObject();
  v30 = sub_1D91773EC();
  v31 = *&v88[qword_1ECAB8630];
  *&v92[0] = 0;
  if (([v31 performFetch_] & 1) == 0)
  {
    v66 = *&v92[0];
    v67 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F80 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v68 = sub_1D917744C();
      __swift_project_value_buffer(v68, qword_1EDCD0F88);
      v69 = v88;
      v70 = v67;
      v71 = sub_1D917741C();
      v72 = sub_1D9178D0C();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v92[0] = v75;
        *v73 = 138412546;
        v76 = [v31 fetchRequest];
        *(v73 + 4) = v76;
        *v74 = v76;
        *(v73 + 12) = 2080;
        *&v89 = v67;
        v77 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v78 = sub_1D917826C();
        v80 = sub_1D8CFA924(v78, v79, v92);

        *(v73 + 14) = v80;
        _os_log_impl(&dword_1D8CEC000, v71, v72, "Failed to start FetchedResultsPublisher FRC: request: %@\nerror: %s", v73, 0x16u);
        sub_1D8D08A50(v74, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v74, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x1DA72CB90](v75, -1, -1);
        MEMORY[0x1DA72CB90](v73, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_24:
      swift_once();
    }
  }

  v32 = *&v92[0];
  v33 = [v31 fetchedObjects];
  v34 = v8;
  if (v33)
  {
    v35 = v33;
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v36 = sub_1D91785FC();
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = v86;
  v83 = v14;
  v38 = v6;
  if (v36 >> 62)
  {
    v39 = sub_1D917935C();
  }

  else
  {
    v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D8D32440();
  sub_1D8D3852C();
  sub_1D8D15664(v40, v41);
  v42 = sub_1D917737C();
  v86 = v30;
  sub_1D91773DC();
  v43 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v44 = v81;
    v45 = v82;
    if ((*(v81 + 88))(v37, v82) == *MEMORY[0x1E69E93E8])
    {
      v46 = 0;
      v47 = "[Error] Interval already ended";
    }

    else
    {
      (*(v44 + 8))(v37, v45);
      v47 = "Loaded %{name=ResultCount,public}ld model ids";
      v46 = 1;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    *(v48 + 1) = v46;
    *(v48 + 2) = 2050;
    *(v48 + 4) = v39;
    v49 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v42, v43, v49, "FetchedResultsPublisher Initial Load", v47, v48, 0xCu);
    MEMORY[0x1DA72CB90](v48, -1, -1);
  }

  v50 = *(v38 + 8);
  v50(v34, v29);
  v51 = v88;
  v52 = *&v88[qword_1ECAB8600];
  v53 = qword_1ECAB8638;
  swift_beginAccess();
  v54 = *&v51[v53];
  os_unfair_lock_lock((v54 + 40));
  *(v54 + 16) = 0;
  *(v54 + 24) = v52;
  *(v54 + 32) = 0;
  os_unfair_lock_unlock((v54 + 40));
  swift_endAccess();
  *&v89 = MEMORY[0x1E69E7CD0];
  *(&v89 + 1) = MEMORY[0x1E69E7CD0];
  v90 = 0u;
  memset(v91, 0, 25);
  v55 = v29;
  if (qword_1EDCD06D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v56 = qword_1EDCD06D8;
  v57 = v51;
  v58 = v56;
  sub_1D917730C();
  v59 = sub_1D9178F5C();
  v60 = qword_1EDCD06D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1D9189080;
  v63 = *&v57[qword_1ECAB85F8];
  v62 = *&v57[qword_1ECAB85F8 + 8];
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = sub_1D8D34978();
  *(v61 + 32) = v63;
  *(v61 + 40) = v62;
  v64 = v60;

  sub_1D91772EC(v59, &dword_1D8CEC000, v64, "FetchedResultsPublisher Initial Page", 36, 2, v11, "id: %s", 6);

  sub_1D8D50C90(&v89);
  v92[0] = v89;
  v92[1] = v90;
  v93[0] = v91[0];
  *(v93 + 9) = *(v91 + 9);
  sub_1D8D39084("FetchedResultsPublisher Initial Page", 36, 2, v11, v92);
  sub_1D8D08A50(v92, &unk_1ECAB8698, &qword_1D91A2240);

  v50(v11, v55);
  v50(v83, v55);
  return (*(v84 + 8))(v87, v85);
}

uint64_t sub_1D8FBBEF0(char *a1, unint64_t a2, NSObject *a3)
{
  v3 = a3;
  v86 = a1;
  v98 = *MEMORY[0x1E69E9840];
  v90 = (*MEMORY[0x1E69E7D40] & a3->isa);
  v83 = sub_1D91773AC();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v80 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v80 - v13;
  v15 = sub_1D917739C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB1078 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_1ECAB1080);
  v87 = v16;
  v20 = *(v16 + 16);
  v88 = v15;
  v20(v18, v19, v15);
  sub_1D917737C();
  sub_1D917731C();

  v21 = sub_1D917737C();
  v22 = sub_1D9178F5C();

  v23 = sub_1D917918C();
  v91 = v18;
  if (v23)
  {
    v24 = v11;
    v25 = swift_slowAlloc();
    v26 = v14;
    v27 = v7;
    v28 = swift_slowAlloc();
    *&v96[0] = v28;
    *v25 = 136446210;
    *(v25 + 4) = sub_1D8CFA924(v86, a2, v96);
    v29 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v22, v29, "FetchedResultsPublisher Initial Load", "id: %{name=FRPIdentifier,public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v30 = v28;
    v7 = v27;
    v14 = v26;
    MEMORY[0x1DA72CB90](v30, -1, -1);
    v31 = v25;
    v11 = v24;
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  (*(v7 + 16))(v11, v14, v6);
  sub_1D91773FC();
  swift_allocObject();
  v32 = sub_1D91773EC();
  v33 = *(&v3->isa + qword_1ECAB8630);
  *&v96[0] = 0;
  if (![v33 performFetch_])
  {
    v66 = *&v96[0];
    v67 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F80 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v68 = sub_1D917744C();
      __swift_project_value_buffer(v68, qword_1EDCD0F88);
      v69 = v3;
      v70 = v67;
      v3 = sub_1D917741C();
      v71 = sub_1D9178D0C();

      if (os_log_type_enabled(v3, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v96[0] = v74;
        *v72 = 138412546;
        v75 = [v33 fetchRequest];
        *(v72 + 4) = v75;
        *v73 = v75;
        *(v72 + 12) = 2080;
        *&v92 = v67;
        v76 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v77 = sub_1D917826C();
        v79 = sub_1D8CFA924(v77, v78, v96);

        *(v72 + 14) = v79;
        _os_log_impl(&dword_1D8CEC000, v3, v71, "Failed to start FetchedResultsPublisher FRC: request: %@\nerror: %s", v72, 0x16u);
        sub_1D8D08A50(v73, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v73, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x1DA72CB90](v74, -1, -1);
        MEMORY[0x1DA72CB90](v72, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_19:
      swift_once();
    }
  }

  v85 = v11;
  v34 = *&v96[0];
  v35 = [v33 fetchedObjects];
  v36 = v90[12];
  if (v35)
  {
    v37 = v35;
    sub_1D91785FC();
  }

  else
  {
    sub_1D917866C();
  }

  v86 = v14;
  v84 = v36;
  v38 = sub_1D91786AC();

  sub_1D8D32440();
  sub_1D8D3852C();
  sub_1D8D15664(v39, v40);
  v41 = sub_1D917737C();
  v42 = v89;
  sub_1D91773DC();
  v43 = v32;
  v44 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    v45 = v81;
    sub_1D917740C();
    v80[1] = v43;

    v46 = v82;
    v47 = v83;
    if ((*(v82 + 88))(v45, v83) == *MEMORY[0x1E69E93E8])
    {
      v48 = v7;
      v49 = 0;
      v50 = "[Error] Interval already ended";
    }

    else
    {
      v51 = v45;
      v48 = v7;
      (*(v46 + 8))(v51, v47);
      v50 = "Loaded %{name=ResultCount,public}ld model ids";
      v49 = 1;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    *(v52 + 1) = v49;
    *(v52 + 2) = 2050;
    *(v52 + 4) = v38;
    v53 = v89;
    v54 = sub_1D917732C();
    v55 = v50;
    v42 = v53;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v41, v44, v54, "FetchedResultsPublisher Initial Load", v55, v52, 0xCu);
    MEMORY[0x1DA72CB90](v52, -1, -1);
    v7 = v48;
  }

  v56 = *(v7 + 8);
  v56(v42, v6);
  v57 = *(&v3->isa + qword_1ECAB8600);
  v58 = v90[10];
  v59 = v90[11];
  v60 = v6;
  v61 = v90[13];
  sub_1D8D3859C(0, v57, 0);
  memset(v94, 0, 25);
  v93 = 0u;
  *&v92 = MEMORY[0x1E69E7CD0];
  *(&v92 + 1) = MEMORY[0x1E69E7CD0];
  v62 = v85;
  sub_1D8D32494("FetchedResultsPublisher Initial Page", 36, 2, v85);
  sub_1D8D13AD8(&v92);
  v96[0] = v92;
  v96[1] = v93;
  *v97 = v94[0];
  *&v97[9] = *(v94 + 9);
  v63 = v84;
  sub_1D8D39084("FetchedResultsPublisher Initial Page", 36, 2, v62, v96);
  v95[0] = v58;
  v95[1] = v59;
  v95[2] = v63;
  v95[3] = v61;
  v64 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, v95);
  (*(*(v64 - 8) + 8))(v96, v64);

  v56(v62, v60);
  v56(v86, v60);
  return (*(v87 + 8))(v91, v88);
}

void sub_1D8FBC8E4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_1D8D13AD8(a2 + 1);
    swift_endAccess();
    swift_beginAccess();
    v15 = a2[2];
    v19[0] = a2[1];
    v19[1] = v15;
    v20[0] = a2[3];
    *(v20 + 9) = *(a2 + 57);
    v18[0] = a4;
    v18[1] = a5;
    v18[2] = a6;
    v18[3] = a7;
    v16 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, v18);
    v17 = *(v16 - 8);
    (*(v17 + 16))(v18, v19, v16);
    sub_1D8D39084("FetchedResultsPublisher FRC Update", 34, 2, a3, v19);
    (*(v17 + 8))(v19, v16);
  }
}

id sub_1D8FBCAC8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

double sub_1D8FBCB40(uint64_t a1)
{

  sub_1D8D4F5BC(*(a1 + qword_1ECAB8650), *(a1 + qword_1ECAB8650 + 8));
  sub_1D8D08A50(a1 + qword_1EDCD15F8, &qword_1ECAB6DE0, &qword_1D9195250);

  return result;
}

uint64_t *sub_1D8FBCC90(uint64_t *result, uint64_t a2, _BYTE *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = result[2];
  if (*result < v5)
  {
    v7 = __OFSUB__(v4, v3);
    v6 = v4 - v3 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v9 = __OFSUB__(v4, v5);
    v8 = v4 - v5 < 0;
  }

  if (v8 != v9)
  {
    v10 = *(a2 + qword_1ECAB8600);
    v7 = __OFADD__(v3, v10);
    v11 = v3 + v10;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      if (v11 < v5)
      {
        v5 = v11;
      }

      result[1] = v5;
      *a3 = 1;
    }
  }

  return result;
}

void sub_1D8FBCCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1D8D42180();
    if (v15 >= v17 || v15 >= v16)
    {
    }

    else
    {
      memset(v23, 0, 25);
      v22 = 0u;
      *&v21 = MEMORY[0x1E69E7CD0];
      *(&v21 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D8D32494("FetchedResultsPublisher Load Next Page", 38, 2, v12);
      sub_1D8D13AD8(&v21);
      v24[0] = v21;
      v24[1] = v22;
      v25[0] = v23[0];
      *(v25 + 9) = *(v23 + 9);
      sub_1D8D39084("FetchedResultsPublisher Load Next Page", 38, 2, v12, v24);
      v20[0] = a2;
      v20[1] = a3;
      v20[2] = a4;
      v20[3] = a5;
      v18 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, v20);
      (*(*(v18 - 8) + 8))(v24, v18);

      (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_1D8FBCEEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v19[0] = *MEMORY[0x1E69E7D40] & *v1;
  v22 = sub_1D9177E0C();
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v20 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v19[1] = *(v1 + qword_1ECAB8610);
  (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *((v4 & v3) + 0x50);
  *(v13 + 24) = *(v19[0] + 88);
  *(v13 + 40) = *((v4 & v3) + 0x68);
  *(v13 + 48) = v1;
  (*(v9 + 32))(v13 + v12, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1D8FBD6A8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_53;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v16 = v20;
  v17 = v22;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v16, v14);
  _Block_release(v14);
  (*(v24 + 8))(v16, v17);
  (*(v21 + 8))(v7, v23);
}

uint64_t sub_1D8FBD308(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1D9176EAC();
  type metadata accessor for FRPSectionInfo(255, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), *((v3 & v2) + 0x68));
  v4 = sub_1D91786FC();
  type metadata accessor for FRPOutput(255, v4, v5, v6);
  swift_getFunctionTypeMetadata1();
  sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  return sub_1D8D15664(v8, v9);
}

uint64_t sub_1D8FBD488(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8FBD4C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

uint64_t sub_1D8FBD600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8FBD654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8FBD6A8()
{
  v1 = *(sub_1D9176EAC() - 8);
  v2 = *(v0 + 48);
  v3 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1D8FBD308(v2, v3);
}

unint64_t sub_1D8FBD718()
{
  result = qword_1ECAB8688;
  if (!qword_1ECAB8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8688);
  }

  return result;
}

void sub_1D8FBD79C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_1D917734C() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  sub_1D8FBC8E4(v6, v7, v8, v1, v2, v3, v4);
}

uint64_t sub_1D8FBD830@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_56Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_72Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

unint64_t sub_1D8FBD930()
{
  result = qword_1ECAB86A8;
  if (!qword_1ECAB86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86A8);
  }

  return result;
}

id NSManagedObjectContext.playlist(for:)(void *a1, uint64_t a2, id a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E8, &unk_1D9192140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  sub_1D8D5055C(a1, a2, a3);
  v8 = NSManagedObjectContext.playlists(for:sortDescriptors:limit:)(inited, MEMORY[0x1E69E7CC0], 1, 0);
  swift_setDeallocating();
  sub_1D8FBDC88(inited + 32);
  if (v3)
  {
    return a3;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA72AA90](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    a3 = v10;

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t NSManagedObjectContext.playlists(for:sortDescriptors:limit:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = Array<A>.playlistPredicate()(a1);
  [v8 setPredicate_];

  if (!(a2 >> 62))
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_1D917935C())
  {
LABEL_3:
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v10 = sub_1D91785DC();
    [v8 setSortDescriptors_];
  }

LABEL_4:
  if ((a4 & 1) == 0)
  {
    [v8 setFetchLimit_];
  }

  sub_1D8CF2154(0, &qword_1EDCD0A28, off_1E8567638);
  v11 = sub_1D917908C();

  return v11;
}

id sub_1D8FBDD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  swift_unknownObjectRetain();
  v7 = sub_1D8D2A908(a3, v6);

  return v7;
}

void sub_1D8FBDDC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
}

uint64_t DatabaseAccessError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FBDEAC()
{
  result = qword_1ECAB86B0;
  if (!qword_1ECAB86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86B0);
  }

  return result;
}

id sub_1D8FBDF10()
{
  v1 = [*(v0 + 24) mainQueueContext];

  return v1;
}

id sub_1D8FBDF48()
{
  v1 = [*(v0 + 24) privateQueueContext];

  return v1;
}

id sub_1D8FBDFC4(SEL *a1)
{
  result = [v1 podcast];
  if (result)
  {
    v4 = result;
    v5 = [result channel];

    if (v5 && (v6 = [v5 *a1], v5, v6))
    {
      v7 = sub_1D917820C();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MTEpisode.episodeTypeResolvedValue.setter(char a1)
{
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = sub_1D9179ACC();

    if (v2)
    {
      v3 = 0;
      [v1 setEpisodeType_];
      goto LABEL_7;
    }

    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v1 setEpisodeType_];
LABEL_7:
}

void (*MTEpisode.episodeTypeResolvedValue.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  if ([v2 isTrailer])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v2 isBonus] ^ 1;
  }

  *(a1 + 8) = v4;
  return sub_1D8FBE274;
}

id sub_1D8FBE2B4(SEL *a1)
{
  if ([v1 *a1] < 1)
  {
    return 0;
  }

  else
  {
    return [v1 *a1];
  }
}

uint64_t sub_1D8FBE3B0()
{
  v1 = *v0;
  if ([*v0 isTrailer])
  {
    return 2;
  }

  else
  {
    return [v1 isBonus] ^ 1;
  }
}

uint64_t sub_1D8FBE400()
{
  v1 = *v0;
  if ([*v0 isVideo])
  {
    return 1;
  }

  if ([v1 isExternalType])
  {
    return 2;
  }

  return 0;
}

id sub_1D8FBE47C()
{
  v1 = [*v0 podcast];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isSerialShowTypeInFeed];

  return v3;
}

id sub_1D8FBE51C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *v3;
  if ([v5 *a3] < 1)
  {
    return 0;
  }

  else
  {
    return [v5 *a3];
  }
}

uint64_t sub_1D8FBE57C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  [v3 pubDate];
  if (v4 <= 0.0)
  {
    v5 = 1;
  }

  else
  {
    [v3 pubDate];
    sub_1D9176CBC();
    v5 = 0;
  }

  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void NSManagedObjectContext.unsafeCategory(forAdamID:)(uint64_t a1)
{
  v2 = v1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918A530;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v5 + 32) = 0x44496D616461;
  *(v5 + 40) = 0xE600000000000000;
  v7 = MEMORY[0x1E69E7738];
  *(v5 + 96) = MEMORY[0x1E69E76D8];
  *(v5 + 104) = v7;
  *(v5 + 64) = v6;
  *(v5 + 72) = a1;
  v8 = sub_1D9178C8C();
  v9 = [v2 objectsInEntity:v4 predicate:v8 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  if (!v9)
  {
    goto LABEL_14;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v10 = sub_1D91785FC();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x1DA72AA90](0, v10);
LABEL_7:
  v12 = v11;

  type metadata accessor for MTCategory();
  if (!swift_dynamicCastClass())
  {
  }
}

uint64_t sub_1D8FBE858(uint64_t a1)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1D917935C();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1D8E31404(0, v7 & ~(v7 >> 63), 0);
    v47 = v52;
    if (v46)
    {
      result = sub_1D917930C();
    }

    else
    {
      result = sub_1D91792DC();
      v9 = *(a1 + 36);
    }

    v49 = result;
    v50 = v9;
    v51 = v46 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v43 = v6;
      v10 = 0;
      v41 = v7;
      v42 = v45 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v39 = a1 + 56;
      v40 = v11;
      v37 = v1;
      v38 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v49;
        v15 = v50;
        v16 = v51;
        v17 = a1;
        sub_1D9109330(v49, v50, v51, a1);
        v19 = v18;
        v20 = [v18 objectID];
        v21 = [v20 URIRepresentation];

        v22 = v43;
        sub_1D9176B9C();

        v23 = v47;
        v52 = v47;
        v25 = *(v47 + 16);
        v24 = *(v47 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D8E31404((v24 > 1), v25 + 1, 1);
          v23 = v52;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v47 = v23;
        result = (*(v45 + 32))(v23 + v26 + *(v45 + 72) * v25, v22, v44);
        if (v46)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86B8, &qword_1D91A2410);
          v12 = sub_1D9178AFC();
          sub_1D91793AC();
          result = v12(v48, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1D8D9B144(v49, v50, v51);
            return v47;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v27 = 1 << *(v17 + 32);
          if (v14 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v14 >> 6;
          v29 = *(v39 + 8 * (v14 >> 6));
          if (((v29 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v14 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_1D8D9B144(v14, v15, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_1D8D9B144(v14, v15, 0);
          }

LABEL_33:
          v36 = *(v17 + 36);
          v49 = v27;
          v50 = v36;
          v51 = 0;
          v7 = v41;
          if (v10 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_1D8FBEC8C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1D8FBED0C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8E31380(0, v3 & ~(v3 >> 63), 0);
  v4 = v11;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA72AA90](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_1D917935C();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D8E31380((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_1D917935C();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_1D8FBEF20(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D91795CC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA72AA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for MTCategory();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
  }

  return v8;
}

uint64_t sub_1D8FBF09C(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D91795CC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA72AA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
  }

  return v9;
}

uint64_t sub_1D8FBF210(unint64_t a1, void *a2)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
    v3 = sub_1D917935C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D91795CC();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA72AA90](v4, a1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        ++v4;
      }

      while (v5 != v3);
    }
  }

  return v7;
}

uint64_t sub_1D8FBF3CC(unint64_t a1, uint64_t (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
    v4 = sub_1D917935C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D91795CC();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA72AA90](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return v8;
}

Swift::OpaquePointer_optional __swiftcall NSManagedObjectContext.unsafeCategories(for:)(Swift::OpaquePointer a1)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = _s18PodcastsFoundation10MTCategoryC22predicateForCategories4withSo11NSPredicateCSayAA6AdamIDVG_tFZ_0(a1._rawValue);
  v5 = [v1 objectsInEntity:v3 predicate:v4 sortDescriptors:0 returnsObjectsAsFaults:1];

  if (v5)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v7 = sub_1D91785FC();

    v8 = sub_1D8FBEF20(v7);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result.value._rawValue = v9;
  result.is_nil = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSManagedObjectContext.unsafeCategories(withRelationshipToPodcastAdamID:)(Swift::Int64 withRelationshipToPodcastAdamID)
{
  v2 = v1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9189060;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D8D34978();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0x7374736163646F70;
  *(v5 + 40) = 0xE800000000000000;
  v8 = sub_1D917820C();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  v9 = MEMORY[0x1E69E7360];
  *(v5 + 72) = v8;
  *(v5 + 80) = v10;
  v11 = MEMORY[0x1E69E73D8];
  *(v5 + 136) = v9;
  *(v5 + 144) = v11;
  *(v5 + 112) = withRelationshipToPodcastAdamID;
  v12 = sub_1D9178C8C();
  v13 = [v2 objectsInEntity:v4 predicate:v12 sortDescriptors:0 returnsObjectsAsFaults:1];

  if (v13)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v15 = sub_1D91785FC();

    v16 = sub_1D8FBEF20(v15);

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result.value._rawValue = v17;
  result.is_nil = v14;
  return result;
}

id sub_1D8FBF7D0(void *a1, uint64_t a2, Swift::Int64 a3)
{
  v4 = a1;
  v5 = NSManagedObjectContext.unsafeCategories(withRelationshipToPodcastAdamID:)(a3);

  if (v5)
  {
    type metadata accessor for MTCategory();
    v6 = sub_1D91785DC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

char *NSManagedObjectContext.unsafeFromYourShowsEpisodeIdentifiers(forCategoryAdamID:)(uint64_t a1)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSManagedObjectContext.unsafeCategory(forAdamID:)(a1);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
    v10 = [v7 podcasts];
    sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    sub_1D8F74C20();
    v11 = sub_1D9178A9C();

    v12 = sub_1D8FBE858(v11);

    v13 = *(v12 + 16);
    if (v13)
    {
      v52 = v1;
      v53 = v9;
      v58 = v8;
      sub_1D8E3151C(0, v13, 0);
      v14 = v58;
      v16 = *(v4 + 16);
      v15 = v4 + 16;
      v17 = *(v15 + 64);
      v51[1] = v12;
      v18 = v12 + ((v17 + 32) & ~v17);
      v54 = *(v15 + 56);
      v55 = v16;
      v19 = (v15 - 8);
      do
      {
        v55(v6, v18, v3);
        v20 = sub_1D9176ACC();
        v57 = MEMORY[0x1E69E6158];
        *&v56 = v20;
        *(&v56 + 1) = v21;
        (*v19)(v6, v3);
        v58 = v14;
        v23 = *(v14 + 2);
        v22 = *(v14 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_1D8E3151C((v22 > 1), v23 + 1, 1);
          v14 = v58;
        }

        *(v14 + 2) = v23 + 1;
        sub_1D8D65618(&v56, &v14[32 * v23 + 32]);
        v18 += v54;
        --v13;
      }

      while (v13);

      v1 = v52;
      v9 = v53;
    }

    else
    {
    }

    v24 = objc_opt_self();
    v25 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v26 = sub_1D91785DC();

    v27 = [v25 initWithArray_];

    v28 = [v24 predicateForCategoryPageFromYourShows:v27 ctx:v1];
    v29 = @"MTEpisode";
    v30 = v28;
    v31 = [v24 sortDescriptorsForPubDateAscending_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v32 = sub_1D91785FC();

    sub_1D8F61018(v32);

    v33 = sub_1D91785DC();

    v34 = [v1 objectsInEntity:v29 predicate:v30 sortDescriptors:v33 returnsObjectsAsFaults:1 limit:15];

    if (v34)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v35 = sub_1D91785FC();

      v36 = sub_1D8FBF09C(v35, off_1E85675C8);

      if (v36)
      {
        if (v36 >> 62)
        {
LABEL_33:
          v37 = sub_1D917935C();
          v55 = v30;
          if (v37)
          {
LABEL_13:
            v38 = 0;
            v30 = (v36 & 0xC000000000000001);
            v8 = MEMORY[0x1E69E7CC0];
            do
            {
              v39 = v38;
              while (1)
              {
                if (v30)
                {
                  v40 = MEMORY[0x1DA72AA90](v39, v36);
                  v38 = v39 + 1;
                  if (__OFADD__(v39, 1))
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_32;
                  }

                  v40 = *(v36 + 8 * v39 + 32);
                  v38 = v39 + 1;
                  if (__OFADD__(v39, 1))
                  {
LABEL_31:
                    __break(1u);
LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }
                }

                v41 = v40;
                v42 = [v41 uuid];
                if (v42)
                {
                  break;
                }

                ++v39;
                if (v38 == v37)
                {
                  goto LABEL_35;
                }
              }

              v53 = v9;
              v43 = v42;
              v44 = sub_1D917820C();
              v54 = v45;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_1D8D4241C(0, *(v8 + 2) + 1, 1, v8);
              }

              v47 = *(v8 + 2);
              v46 = *(v8 + 3);
              if (v47 >= v46 >> 1)
              {
                v8 = sub_1D8D4241C((v46 > 1), v47 + 1, 1, v8);
              }

              *(v8 + 2) = v47 + 1;
              v48 = &v8[16 * v47];
              v9 = v53;
              v49 = v54;
              *(v48 + 4) = v44;
              *(v48 + 5) = v49;
            }

            while (v38 != v37);
            goto LABEL_35;
          }
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v55 = v30;
          if (v37)
          {
            goto LABEL_13;
          }
        }

        v8 = MEMORY[0x1E69E7CC0];
LABEL_35:

        return v8;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1D8FBFDC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1D917935C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void (*sub_1D8FBFDEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8FC0004;
  }

  __break(1u);
  return result;
}

void (*sub_1D8FBFE6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8FBFEEC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8FBFEF4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1D8FBFF74;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8FBFF7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D8FBFFFC;
  }

  __break(1u);
  return result;
}

uint64_t NSManagedObjectContext.channels<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);

  v10 = sub_1D9178E1C();
  v11 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(v10, sub_1D8FC03C8, v9, a4);

  return v11;
}

double sub_1D8FC0118(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(a4 + 16);
    if (v8)
    {
      v28 = Strong;
      v29 = MEMORY[0x1E69E7CC0];
      v9 = @"MTChannel";
      sub_1D8D41BE0(0, v8, 0);
      v10 = v29;
      v11 = a4 + 32;
      sub_1D8E40D20();
      do
      {
        v11 += 8;
        v12 = sub_1D917927C();
        v14 = v13;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D8D41BE0((v15 > 1), v16 + 1, 1);
        }

        *(v29 + 16) = v16 + 1;
        v17 = v29 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        --v8;
      }

      while (v8);
      v7 = v28;
    }

    else
    {
      v19 = @"MTChannel";
      v10 = MEMORY[0x1E69E7CC0];
    }

    v20 = objc_opt_self();
    sub_1D8FC0F28(v10);

    v21 = sub_1D9178A8C();

    v22 = [v20 predicateForChannelStoreIds_];

    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1D91785DC();
    v25 = [v7 objectsInEntity:@"MTChannel" predicate:v22 sortDescriptors:v24 returnsObjectsAsFaults:1];

    if (v25)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v26 = sub_1D91785FC();

      v27 = sub_1D8FBF090(v26);

      if (v27)
      {
        v23 = v27;
      }
    }

    a2(v23);
  }

  else
  {
    a2(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1D8FC03D8(uint64_t *a1)
{
  v2 = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  v3 = sub_1D8D54E74(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
  v4 = 0;
  v25 = MEMORY[0x1DA72A0A0](0, v2, v3);
  v5 = *a1;
  v19 = a1[1];
  v17 = a1[5];
  v18 = a1[3];
  v6 = -1 << *(*a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v5 + 56);
  v16 = a1[7];
  v9 = (63 - v6) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = *(v5 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8))));
    v13 = *(v12 + 8);
    v8 &= v8 - 1;
    v21 = *v12;
    v22 = v13;

    v19(&v20, &v21);

    v18(&v21, &v20);
    v14 = v21;
    v15 = v22;
    v23 = v21;
    v24 = v22;
    if (v17(&v23))
    {
      v21 = v14;
      LOBYTE(v22) = v15;
      v16(&v23, &v21);
      sub_1D8EFAB68(&v21, v23);
    }
  }

  v10 = v4;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      sub_1D8D1B144(v5);

      return;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v4 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D8FC0604(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8D4D2D8();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for AdamID, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1D8D1A770(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
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
  return result;
}

uint64_t NSManagedObjectContext.episodes(for:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v7 = v6;
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v8 = *(v1 + 16);
      if (v8)
      {
        v19 = v6;
        v20 = MEMORY[0x1E69E7CC0];
        result = sub_1D91795CC();
        v10 = 0;
        while (v10 < *(v1 + 16))
        {
          v11 = v10 + 1;
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithSerializedBackingStore_];
          swift_unknownObjectRelease();
          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          result = sub_1D91795AC();
          v10 = v11;
          if (v8 == v11)
          {
            v12 = objc_opt_self();
            sub_1D8FC1190(v20, qword_1EDCD0810, 0x1E696AD98, &qword_1EDCD0808, sub_1D8EFAB68);

            sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
            sub_1D8D54E74(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
            v13 = sub_1D9178A8C();

            v14 = [v12 predicateForEpisodeStoreTrackIds_];

            v7 = v19;
            [v19 setPredicate_];

            goto LABEL_10;
          }
        }

        __break(1u);
        return result;
      }
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v15 = objc_opt_self();
  sub_1D8D092C0(v1, v2, v3, v4, 2u);
  sub_1D8FC0F28(v1);
  sub_1D8CFEACC(v1, v2, v3, v4, 2u);
  v16 = sub_1D9178A8C();

  v17 = [v15 predicateForEpisodeUuids_];

  [v7 setPredicate_];
LABEL_10:
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v18 = sub_1D917908C();

  return v18;
}

uint64_t NSManagedObjectContext.episodes<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);

  v10 = sub_1D9178E1C();
  v11 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(v10, sub_1D8FC0FC0, v9, a4);

  return v11;
}

void sub_1D8FC0B60(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = @"MTEpisode";

    sub_1D8FC0F28(v9);

    v10 = sub_1D9178A8C();

    v11 = [v7 predicateForEpisodeUuids_];

    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_1D91785DC();
    v14 = [v6 objectsInEntity:v8 predicate:v11 sortDescriptors:v13 returnsObjectsAsFaults:1];

    if (v14)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v15 = sub_1D91785FC();

      v16 = sub_1D8FBF084(v15);

      if (v16)
      {
        v12 = v16;
      }
    }

    a2(v12);
  }

  else
  {
    a2(MEMORY[0x1E69E7CC0]);
  }
}

id NSManagedObjectContext.episode(for:)(void *a1, uint64_t a2, id a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E8, &unk_1D9192140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  sub_1D8D5055C(a1, a2, a3);
  v8 = NSManagedObjectContext.episodes(for:sortDescriptors:limit:)(inited, MEMORY[0x1E69E7CC0], 1, 0);
  swift_setDeallocating();
  sub_1D8FBDC88(inited + 32);
  if (v3)
  {
    return a3;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA72AA90](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    a3 = v10;

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FC0E84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8D4D2D8();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for AdamID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D8D1A770(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D8FC0F28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA72A0A0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D8D19AFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D8FC0FD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8FC149C();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for ContentID, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1D8D5055C(v7, v6, v8);
      sub_1D8EFAB8C(v9, v7, v6, v8);
      sub_1D8DA8564(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1D8FC1078(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA72A0A0](v2, MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D8D82034(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D8FC10EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8FC1448();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for PriceType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D8EFADF0(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_1D8FC1190(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v12 = sub_1D8CF2154(0, a2, a3);
    v13 = sub_1D8D54E74(a4, a2, a3);
    result = MEMORY[0x1DA72A0A0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1DA72AA90](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1D917935C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8FC12E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA72A0A0](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1D8D9A2A4(v4, v5);
      sub_1D8EFB1EC(v6, v5);
      sub_1D8D9A308(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D8FC1374(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8FC13F4();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for LibraryInterestStateDataSource.State, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 41);
    do
    {
      v6 = *(v5 - 9);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 16;
      sub_1D8EFBAF4(v9, v6, v7 | (v8 << 8));
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1D8FC13F4()
{
  result = qword_1ECAB1450;
  if (!qword_1ECAB1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1450);
  }

  return result;
}

unint64_t sub_1D8FC1448()
{
  result = qword_1ECAB86C0;
  if (!qword_1ECAB86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86C0);
  }

  return result;
}

unint64_t sub_1D8FC149C()
{
  result = qword_1ECAB10E8;
  if (!qword_1ECAB10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10E8);
  }

  return result;
}

void NSManagedObjectContext.unsafeInterest(forAdamID:)(uint64_t a1)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = 0x44496D616461;
  *(v4 + 40) = 0xE600000000000000;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8E96578();
  *(v4 + 72) = v5;
  v6 = sub_1D9178C8C();
  v7 = [v1 objectsInEntity:v3 predicate:v6 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  if (!v7)
  {
    goto LABEL_14;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v8 = sub_1D91785FC();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1DA72AA90](0, v8);
LABEL_7:
  v10 = v9;

  type metadata accessor for MTInterest();
  if (!swift_dynamicCastClass())
  {
  }
}

{
  v2 = v1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918A530;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D8D34978();
  *(v5 + 32) = 0x44496D616461;
  *(v5 + 40) = 0xE600000000000000;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(v5 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v5 + 104) = sub_1D8E96578();
  *(v5 + 72) = v6;
  v7 = sub_1D9178C8C();
  v8 = [v2 objectsInEntity:v4 predicate:v7 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  if (!v8)
  {
    goto LABEL_14;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v9 = sub_1D91785FC();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v10 = MEMORY[0x1DA72AA90](0, v9);
LABEL_7:
  v11 = v10;

  type metadata accessor for MTInterest();
  if (!swift_dynamicCastClass())
  {
  }
}

id sub_1D8FC1950(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  NSManagedObjectContext.unsafeInterest(forAdamID:)(a3);
  v6 = v5;

  return v6;
}

uint64_t NSManagedObjectContext.shows<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);

  v10 = sub_1D9178E1C();
  v11 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(v10, sub_1D8FC1C84, v9, a4);

  return v11;
}

void sub_1D8FC1AAC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = @"MTPodcast";

    sub_1D8FC0F28(v9);

    v10 = sub_1D9178A8C();

    v11 = [v7 predicateForPodcastUuids_];

    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_1D91785DC();
    v14 = [v6 objectsInEntity:v8 predicate:v11 sortDescriptors:v13 returnsObjectsAsFaults:1];

    if (v14)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v15 = sub_1D91785FC();

      v16 = sub_1D8FBEF14(v15);

      if (v16)
      {
        v12 = v16;
      }
    }

    a2(v12);
  }

  else
  {
    a2(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t NSManagedObjectContext.unsafeShows(for:sortDescriptors:limit:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = Array<A>.showCoreDataPredicate()(a1);
  [v8 setPredicate_];

  if (!(a2 >> 62))
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_1D917935C())
  {
LABEL_3:
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v10 = sub_1D91785DC();
    [v8 setSortDescriptors_];
  }

LABEL_4:
  if ((a4 & 1) == 0)
  {
    [v8 setFetchLimit_];
  }

  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v11 = sub_1D917908C();

  return v11;
}

uint64_t NSManagedObjectContext.unsafeShow(for:sortDescriptors:)(void *a1, uint64_t a2, char a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E8, &unk_1D9192140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  sub_1D8D5055C(a1, a2, a3);
  v10 = NSManagedObjectContext.unsafeShows(for:sortDescriptors:limit:)(inited, a4, 1, 0);
  swift_setDeallocating();
  sub_1D8FBDC88(inited + 32);
  if (v4)
  {
    return a4;
  }

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    sub_1D8FC1F60();
    swift_allocError();
    swift_willThrow();
    return a4;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA72AA90](0, v10);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_7:
    a4 = v12;

    return a4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8FC1F60()
{
  result = qword_1ECAB86C8;
  if (!qword_1ECAB86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86C8);
  }

  return result;
}

void *NSManagedObjectContext.unsafeShowUUID(for:)(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {

    return a1;
  }

  else
  {
    result = NSManagedObjectContext.unsafeShow(for:sortDescriptors:)(a1, a2, a3, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v6 = result;
      v7 = [result uuid];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1D917820C();

        return v9;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t ShowFetchError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FC20E8()
{
  result = qword_1ECAB86D0;
  if (!qword_1ECAB86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86D0);
  }

  return result;
}

uint64_t NSManagedObjectContext.performAndPublish<A>(queue:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9177A2C();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v4;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  v10 = v4;

  v11 = a1;
  return sub_1D9177A3C();
}

uint64_t NSManagedObjectContext.performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22 = a4;
  v23 = sub_1D91791BC();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *(a3 - 8);
  (*(v16 + 56))(&v22 - v14, 1, 1, a3, v13);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v15;
  v17[4] = a1;
  v17[5] = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D8FC2BEC;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1D8D244E0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_55;
  v19 = _Block_copy(aBlock);

  [v5 performBlockAndWait_];
  _Block_release(v19);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v21 = v23;
    (*(v9 + 16))(v11, v15, v23);
    result = (*(v16 + 48))(v11, 1, a3);
    if (result != 1)
    {
      (*(v16 + 32))(v22, v11, a3);
      (*(v9 + 8))(v15, v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FC24E4(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  a2(v9);
  (*(*(a4 - 8) + 56))(v11, 0, 1, a4);
  return (*(v8 + 40))(a1, v11, v7);
}

void sub_1D8FC2604(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  v17[4] = sub_1D8FC32AC;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D8CF5F60;
  v17[3] = &block_descriptor_36_0;
  v15 = _Block_copy(v17);

  v16 = a6;

  [a3 performBlock_];
  _Block_release(v15);
}

uint64_t sub_1D8FC272C(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a5;
  v34 = a3;
  v8 = sub_1D9177E0C();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  a1(v19);
  (*(v14 + 16))(v17, v21, a6);
  v22 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v29;
  v25 = v30;
  *(v23 + 2) = a6;
  *(v23 + 3) = v24;
  *(v23 + 4) = v25;
  (*(v14 + 32))(&v23[v22], v17, a6);
  aBlock[4] = sub_1D8FC32DC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_42;
  v26 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v26);
  _Block_release(v26);
  (*(v33 + 8))(v10, v8);
  (*(v31 + 8))(v13, v32);
  (*(v14 + 8))(v21, a6);
}

uint64_t sub_1D8FC2AB0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9179EAC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(*(a4 - 8) + 16))(&v13 - v10, a3, a4, v9);
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8FC2BF8(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v11 = sub_1D9179EAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16[-v13];
  v17 = a6;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_1D8D5D7BC(sub_1D8FC326C, &v16[-v13]);
  a1(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1D8FC2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v42 = a7;
  v39 = a5;
  v40 = a6;
  v38[1] = a4;
  v43 = a10;
  v44 = a11;
  v48 = a9;
  v16 = sub_1D9177E0C();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v47 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a12;
  v21 = *(a12 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v38 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);

  v28 = sub_1D8DAC0A4(a1, a2);
  [v28 setPredicate_];
  sub_1D8D28BC8();
  v29 = sub_1D91785DC();
  [v28 setSortDescriptors_];

  [v28 setFetchLimit_];
  sub_1D917908C();
  v42();

  v30 = v51;
  (*(v21 + 16))(v24, v27, v51);
  v31 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v30;
  *(v32 + 3) = a13;
  v33 = v44;
  *(v32 + 4) = v43;
  *(v32 + 5) = v33;
  (*(v21 + 32))(&v32[v31], v24, v30);
  aBlock[4] = sub_1D8FC3214;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_7;
  v34 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  v35 = v47;
  v36 = v50;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v20, v35, v34);
  _Block_release(v34);

  (*(v49 + 8))(v35, v36);
  (*(v45 + 8))(v20, v46);
  (*(v21 + 8))(v27, v30);
}

uint64_t sub_1D8FC326C(void *a1)
{
  result = (*(v1 + 24))(*(v1 + 40));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

unint64_t sub_1D8FC3338()
{
  result = qword_1ECAB86D8;
  if (!qword_1ECAB86D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB86D8);
  }

  return result;
}

id PFCoreDataUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PFCoreDataUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PFCoreDataUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PFCoreDataUtils.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PFCoreDataUtils();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D8FC35C0(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_1D8D33C70(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_1D90078D8(v16, i & 1);
    v11 = sub_1D8D33C70(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1D9179CFC();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v19[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    *(v19[7] + 8 * v11) = v9;
    v24 = v19[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v25;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v22 = v11;
  sub_1D8F842DC();
  v11 = v22;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = *(v19[7] + 8 * v11);
  v21 = v11;

  *(v19[7] + 8 * v21) = v20;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = v6 + 9; ; i += 3)
    {
      v7 = *(i - 2);
      v9 = *(i - 1);
      v6 = *i;
      v28 = *a3;

      v29 = sub_1D8D33C70(v7, v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        break;
      }

      v8 = v30;
      if (v28[3] < v33)
      {
        sub_1D90078D8(v33, 1);
        v29 = sub_1D8D33C70(v7, v9);
        if ((v8 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v26 = *(v3[7] + 8 * v29);
        v27 = v29;

        *(v3[7] + 8 * v27) = v26;
      }

      else
      {
        v3[(v29 >> 6) + 8] |= 1 << v29;
        v35 = (v3[6] + 16 * v29);
        *v35 = v7;
        v35[1] = v9;
        *(v3[7] + 8 * v29) = v6;
        v36 = v3[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v3[2] = v37;
      }

      if (!--v17)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

void *_s18PodcastsFoundation15PFCoreDataUtilsC18findDuplicateItems6entity19itemsToLookAtFilter017keysThatMustMatchK22BeConsideredADuplicate0op9ShouldNotS10Duplicated011keyValuesOfxhK6Return15sortDescriptorsSDySSSayyXlGGSS_So11NSPredicateCSaySSGA2OSaySo16NSSortDescriptorCGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v107 = *MEMORY[0x1E69E9840];
  v11 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v13 = [v11 initWithEntityName_];

  [v13 setPredicate_];
  [v13 setResultType_];

  v96 = a5;
  sub_1D8E2FE30(v14);
  v15 = a4[2];
  v101 = a6;
  v103 = a4;
  if (v15)
  {
    v105 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v16 = a4 + 5;
    do
    {
      v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);

      v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v17 initWithKey:v18 ascending:1];

      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      v16 += 2;
      --v15;
    }

    while (v15);

    a6 = v101;
  }

  else
  {
  }

  sub_1D8E30050(v19);
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v20 = sub_1D91785DC();

  [v13 setSortDescriptors_];

  sub_1D8E2FE30(v21);

  sub_1D8E2FE30(v22);
  sub_1D8F60B24(a4);

  v23 = sub_1D91785DC();

  [v13 setPropertiesToFetch_];

  v105 = 0;
  v24 = [v13 execute_];
  v25 = v105;
  if (!v24)
  {
    v88 = v105;
    v89 = sub_1D9176A6C();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);

    __break(1u);
LABEL_84:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v26 = v24;
  sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
  v27 = sub_1D91785FC();
  v28 = v25;

  v29 = sub_1D8F6102C(v27);

  v30 = MEMORY[0x1E69E7CC0];
  if (!*(v29 + 16))
  {

    v95 = sub_1D8E27068(MEMORY[0x1E69E7CC0]);
LABEL_21:

    return v95;
  }

  v31 = *(a6 + 16);
  v92 = v31;
  v93 = v29;
  if (v31)
  {
    v32 = v13;
    v105 = MEMORY[0x1E69E7CC0];
    sub_1D8E31660(0, v31, 0);
    v33 = v105;
    v34 = (a6 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      v105 = v33;
      v38 = v33[2];
      v37 = v33[3];

      if (v38 >= v37 >> 1)
      {
        sub_1D8E31660((v37 > 1), v38 + 1, 1);
        v33 = v105;
      }

      v33[2] = v38 + 1;
      v39 = &v33[3 * v38];
      v39[4] = v36;
      v39[5] = v35;
      v30 = MEMORY[0x1E69E7CC0];
      v39[6] = MEMORY[0x1E69E7CC0];
      v34 += 2;
      --v31;
    }

    while (v31);
    v13 = v32;
    v29 = v93;
    a4 = v103;
    goto LABEL_17;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42D8, &qword_1D91A2540);
    v40 = sub_1D91797AC();
    goto LABEL_18;
  }

  v40 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v105 = v40;
  sub_1D8FC35C0(v33, 1, &v105);

  v41 = *(v29 + 16);
  if (!v41)
  {
    goto LABEL_82;
  }

  v95 = v105;
  if (v41 == 1)
  {

    goto LABEL_21;
  }

  v91 = v13;
  v99 = v29 + 32;
  v42 = *(v29 + 32);
  v43 = a4[2];

  v44 = a4 + 5;
  v94 = (a5 + 40);
  v90 = (v101 + 40);
  v45 = 1;
  v100 = v44;
  v102 = v43;
  v98 = v41;
  while (2)
  {
    v46 = *(v99 + 8 * v45);
    if (v43)
    {
      v105 = v30;

      sub_1D91795CC();
      v47 = v100;
      do
      {
        if (*(v42 + 16))
        {
          v48 = *(v47 - 1);
          v49 = *v47;

          sub_1D8D33C70(v48, v49);
          if (v50)
          {
            swift_unknownObjectRetain();
          }
        }

        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v47 += 2;
        --v43;
      }

      while (v43);
      v43 = v102;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86E8, &qword_1D91A2548);
    v104 = sub_1D91785DC();

    if (v43)
    {
      v105 = v30;
      sub_1D91795CC();
      v51 = v43;
      v52 = v100;
      do
      {
        if (*(v46 + 16))
        {
          v53 = *(v52 - 1);
          v54 = *v52;

          sub_1D8D33C70(v53, v54);
          if (v55)
          {
            swift_unknownObjectRetain();
          }
        }

        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v52 += 2;
        --v51;
      }

      while (v51);
      v30 = MEMORY[0x1E69E7CC0];
      v43 = v102;
    }

    v56 = sub_1D91785DC();

    if (([v104 isEqual_] & 1) == 0)
    {

      v42 = v46;
      goto LABEL_24;
    }

    v97 = v56;
    v57 = *(v96 + 16);
    if (!v57)
    {
LABEL_54:

      v42 = v46;
      v43 = v102;
      goto LABEL_24;
    }

    v58 = v94;
    while (1)
    {
      if (!*(v42 + 16))
      {
        goto LABEL_46;
      }

      v59 = *(v58 - 1);
      v60 = *v58;

      v61 = sub_1D8D33C70(v59, v60);
      if ((v62 & 1) == 0 || !*(v46 + 16))
      {

        goto LABEL_46;
      }

      v63 = *(*(v42 + 56) + 8 * v61);
      swift_unknownObjectRetain();
      v64 = sub_1D8D33C70(v59, v60);
      v66 = v65;

      if ((v66 & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_46;
      }

      v67 = *(*(v46 + 56) + 8 * v64);
      swift_unknownObjectRetain();
      v68 = [v63 isEqual_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v68)
      {
        break;
      }

LABEL_46:
      v58 += 2;
      if (!--v57)
      {
        goto LABEL_54;
      }
    }

    v69 = v92;
    v43 = v102;
    if (v92)
    {
      v70 = v90;
      do
      {
        if (*(v46 + 16))
        {
          v71 = *(v70 - 1);
          v72 = *v70;

          sub_1D8D33C70(v71, v72);
          if (v73)
          {
            swift_unknownObjectRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v95;
            v76 = sub_1D8D33C70(v71, v72);
            v77 = v95[2];
            v78 = (v75 & 1) == 0;
            v79 = v77 + v78;
            if (__OFADD__(v77, v78))
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
            }

            v80 = v75;
            if (v95[3] >= v79)
            {
              v43 = v102;
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v75 & 1) == 0)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v86 = v76;
                sub_1D8F842DC();
                v76 = v86;
                if ((v80 & 1) == 0)
                {
                  goto LABEL_81;
                }
              }
            }

            else
            {
              sub_1D90078D8(v79, isUniquelyReferenced_nonNull_native);
              v81 = sub_1D8D33C70(v71, v72);
              if ((v80 & 1) != (v82 & 1))
              {
                goto LABEL_84;
              }

              v76 = v81;
              v43 = v102;
              if ((v80 & 1) == 0)
              {
                goto LABEL_81;
              }
            }

            v95 = v105;
            v83 = v76;
            v106 = *(*(v105 + 7) + 8 * v76);
            v84 = swift_unknownObjectRetain();
            MEMORY[0x1DA729B90](v84);
            if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D917863C();
            }

            sub_1D917869C();
            v85 = v106;
            if (v106)
            {

              *(v95[7] + 8 * v83) = v85;
            }

            else
            {

              sub_1D8D3F2D0(v95[6] + 16 * v83);
              sub_1D8DA2AF4();
            }

            swift_unknownObjectRelease();
            v30 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v30 = MEMORY[0x1E69E7CC0];
            v43 = v102;
          }
        }

        v70 += 2;
        --v69;
      }

      while (v69);
    }

LABEL_24:
    if (++v45 != v98)
    {
      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
  return v95;
}

uint64_t ContentID.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1DA72B390](1, a2, a3);
      return sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);

      return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0, a2, a3);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t ContentID.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC4464()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9179DBC();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC450C(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1DA72B390](1);
      return sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);

      return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v2);
  }
}

uint64_t sub_1D8FC45B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v2);
  }

  return sub_1D9179E1C();
}

void *ContentID.stringValue.getter(void *a1, uint64_t a2, char a3)
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      v11 = v7;
      v12 = [a1 URIRepresentation];
      sub_1D9176B9C();

      a1 = sub_1D9176ACC();
      (*(v6 + 8))(v10, v11);
    }

    else
    {
    }
  }

  else
  {
    v14[1] = a1;
    sub_1D8E40D20();
    return sub_1D917927C();
  }

  return a1;
}

uint64_t sub_1D8FC47C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0x80000001D91C8A10;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C8A10;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64496D616461;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 1684632949;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}