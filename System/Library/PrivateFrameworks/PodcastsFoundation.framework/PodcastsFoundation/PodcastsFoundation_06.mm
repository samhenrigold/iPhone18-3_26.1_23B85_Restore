uint64_t sub_1D8D8D204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_1D9179DAC();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D8D8D46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v5 = 0xE800000000000000;
    v6 = 0xD000000000000010;
    if (a1 == 1)
    {
      v6 = 0x7374736163646F70;
    }

    else
    {
      v5 = 0x80000001D91C7F40;
    }

    if (a1)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0x80000001D91C7F20;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = 0x69726F6765746163;
      v4 = 0xEA00000000007365;
    }

    else
    {
      v3 = 0x6970652D7478656ELL;
      v4 = 0xED00007365646F73;
    }
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D91C7F60;
  }

  else
  {
    v3 = 0x697263736E617274;
    v4 = 0xEB00000000737470;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x7374736163646F70;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (a2 == 1)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0x80000001D91C7F40;
      }

      if (v3 != v8)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v7 = "podcast-episodes";
LABEL_35:
    v9 = (v7 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v9 = 0xEB00000000737470;
      if (v3 != 0x697263736E617274)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v7 = "podcast-channels";
    goto LABEL_35;
  }

  if (a2 == 5)
  {
    v9 = 0xEA00000000007365;
    if (v3 != 0x69726F6765746163)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v9 = 0xED00007365646F73;
    if (v3 != 0x6970652D7478656ELL)
    {
LABEL_42:
      v10 = sub_1D9179ACC();
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v4 != v9)
  {
    goto LABEL_42;
  }

  v10 = 1;
LABEL_43:

  return v10 & 1;
}

uint64_t sub_1D8D8D6CC(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 != 7 && (sub_1D8D8D46C(v2, 0) & 1) != 0)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v8 >= 4)
    {
      if (!(v5 | v4 | v3 | v6 | v7))
      {
        sub_1D8D85E5C(0, 0, 0, 0, v7, 4u);
        sub_1D8D85E5C(0, 0, 0, 0, 0, 4u);
        return 1;
      }

      sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(0, 0, 0, 0, 0, 4u);
      if (v3 == 1 && !(v5 | v4 | v6 | v7))
      {
        v9 = 1;
        sub_1D8D85E5C(1, 0, 0, 0, v7, 4u);
        sub_1D8D85E5C(1, 0, 0, 0, 0, 4u);
        sub_1D8D85E5C(1, 0, 0, 0, v7, 4u);
        return v9;
      }
    }

    else
    {
      sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(0, 0, 0, 0, 0, 4u);
    }

    sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
    sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
    sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
    sub_1D8D85E5C(1, 0, 0, 0, 0, 4u);
    sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
  }

  return 0;
}

uint64_t Array<A>.cacheKey.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v1, 0);
    v2 = *(v9 + 16);
    v3 = 16 * v2;
    do
    {
      v4 = *(v9 + 24);
      v5 = v2 + 1;
      if (v2 >= v4 >> 1)
      {
        sub_1D8D41BE0((v4 > 1), v2 + 1, 1);
      }

      *(v9 + 16) = v5;
      v6 = v9 + v3;
      *(v6 + 32) = 0x64657272756C62;
      *(v6 + 40) = 0xE700000000000000;
      v3 += 16;
      v2 = v5;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
  v7 = sub_1D917817C();

  return v7;
}

uint64_t _s18PodcastsFoundation12MediaRequestC0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v58[0] = v3;
  v58[1] = v4;
  v58[2] = v6;
  v58[3] = v5;
  v58[4] = v7;
  v59 = v8;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v65 = v14;
  if (v8 <= 1)
  {
    if (!v8)
    {
      if (v14)
      {
        goto LABEL_45;
      }

      sub_1D8D8DFD4(v9, v10, v11, v12, v13, 0);
      sub_1D8D8DFD4(v3, v4, v6, v5, v7, 0);
      goto LABEL_61;
    }

    if (v14 != 1)
    {
      goto LABEL_45;
    }

    v27 = 1;
    sub_1D8D8DFD4(v9, v10, v11, v12, v13, 1u);
    v29 = v3;
    v30 = v4;
    v31 = v6;
    v32 = v5;
    v33 = v7;
    v34 = 1;
LABEL_56:
    sub_1D8D8DFD4(v29, v30, v31, v32, v33, v34);
    sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
    return v27 & 1;
  }

  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_45;
    }

    if (!v4)
    {
      v38 = v9;
      v39 = v13;
      v40 = v12;
      v41 = v11;
      v42 = v10;

      sub_1D8D8DFD4(v38, v42, v41, v40, v39, 2u);
      sub_1D8D8DFD4(v3, 0, v6, v5, v7, 2u);
      sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
      if (!v42)
      {
        v27 = 1;
        return v27 & 1;
      }

      sub_1D8D85E5C(v38, v42, v41, v40, v39, 2u);
      goto LABEL_48;
    }

    if (!v10)
    {
      v47 = v9;
      v48 = v11;
      v49 = v12;
      v50 = v13;
      sub_1D8D8DFD4(v9, 0, v11, v12, v13, 2u);
      sub_1D8D8DFD4(v47, 0, v48, v49, v50, 2u);
      v35 = v3;
      v36 = v4;
      v37 = v6;
      v43 = v5;
      v44 = v7;
      v45 = 2;
      goto LABEL_46;
    }

    if (v3 == v9 && v4 == v10)
    {
      v27 = 1;
    }

    else
    {
      v51 = v9;
      v52 = v10;
      v53 = v11;
      v54 = v12;
      v55 = v13;
      v56 = sub_1D9179ACC();
      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v27 = v56;
      v9 = v51;
    }

    sub_1D8D8DFD4(v9, v10, v11, v12, v13, 2u);
    v29 = v3;
    v30 = v4;
    v31 = v6;
    v32 = v5;
    v33 = v7;
    v34 = 2;
    goto LABEL_56;
  }

  if (v8 != 3)
  {
    if (!(v6 | v4 | v3 | v5 | v7))
    {
      if (v14 == 4 && !(v11 | v10 | v9 | v12 | v13))
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

    v28 = v6 | v4 | v5 | v7;
    if (v3 != 1 || v28)
    {
      if (v3 != 2 || v28)
      {
        if (v3 == 3 && !v28 || v14 != 4 || v9 != 4)
        {
          goto LABEL_45;
        }
      }

      else if (v14 != 4 || v9 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v14 != 4 || v9 != 1)
    {
      goto LABEL_45;
    }

    if (v11 | v10 | v12 | v13)
    {
LABEL_45:
      sub_1D8D8DFD4(v9, v10, v11, v12, v13, v14);
      v35 = v3;
      v36 = v4;
      v37 = v6;
      v43 = v5;
      v44 = v7;
      v45 = v8;
LABEL_46:
      sub_1D8D8DFD4(v35, v36, v37, v43, v44, v45);
LABEL_47:
      sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
LABEL_48:
      v27 = 0;
      return v27 & 1;
    }

LABEL_61:
    sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
    v27 = 1;
    return v27 & 1;
  }

  if (v14 != 3)
  {
    goto LABEL_45;
  }

  if (v3 != v9 || v4 != v10)
  {
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = sub_1D9179ACC();
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v21 = v20;
    v9 = v15;
    if ((v21 & 1) == 0)
    {
LABEL_37:
      sub_1D8D8DFD4(v9, v10, v11, v12, v13, 3u);
      v35 = v3;
      v36 = v4;
      v37 = v6;
LABEL_52:
      v43 = v5;
      v44 = v7;
      v45 = 3;
      goto LABEL_46;
    }
  }

  if (v6)
  {
    if (v11)
    {
      v22 = v11;
      v23 = v12;
      v24 = v13;
      sub_1D8D8DFD4(v9, v10, v11, v12, v13, 3u);
      sub_1D8D8DFD4(v3, v4, v6, v5, v7, 3u);

      v26 = sub_1D8E84348(v25, v22);

      if (v26)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (v11)
  {
    sub_1D8D8DFD4(v9, v10, v11, v12, v13, 3u);
    v35 = v3;
    v36 = v4;
    v37 = 0;
    goto LABEL_52;
  }

  v23 = v12;
  v24 = v13;
  sub_1D8D8DFD4(v9, v10, 0, v12, v13, 3u);
  sub_1D8D8DFD4(v3, v4, 0, v5, v7, 3u);
LABEL_59:
  if (v5 == v23 && v7 == v24)
  {
    goto LABEL_61;
  }

  v57 = sub_1D9179ACC();
  sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
  return v57 & 1;
}

uint64_t sub_1D8D8DFD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >= 2u)
  {
    if (a6 == 3)
    {
    }

    else
    {
      v7 = a2;
      if (a6 != 2)
      {
        return v7;
      }
    }
  }
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2()
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v2 = (*(*(updated - 1) + 80) + 24) & ~*(*(updated - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = updated[5];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = updated[6];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  if (*(v3 + updated[14]))
  {
  }

  if (*(v3 + updated[15]))
  {
  }

  if (*(v3 + updated[16]))
  {
  }

  if (*(v3 + updated[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3()
{

  sub_1D8CFEACC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  if (*(v0 + 168) != 2)
  {
    sub_1D90AB0F8(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  }

  v1 = *(v0 + 232);
  if (v1 != 255)
  {
    sub_1D8CFEACC(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), v1);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D8E508(_OWORD *a1)
{
  v2 = a1[10];
  v19[8] = a1[9];
  v20[0] = v2;
  *(v20 + 10) = *(a1 + 170);
  v3 = a1[6];
  v19[4] = a1[5];
  v19[5] = v3;
  v4 = a1[8];
  v19[6] = a1[7];
  v19[7] = v4;
  v5 = a1[2];
  v19[0] = a1[1];
  v19[1] = v5;
  v6 = a1[4];
  v19[2] = a1[3];
  v19[3] = v6;
  result = sub_1D8D8EB0C(v19);
  if (result == 8)
  {
    v8 = (a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
    v10 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
    v9 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion + 8);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 2) = v11;
    *(v12 + 3) = v10;
    *(v12 + 4) = v9;
    *v8 = sub_1D8F6F6C4;
    v8[1] = v12;
    swift_retain_n();

    v13 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    if (v13[*(type metadata accessor for StoreFeedUpdater.Update(0) + 28)])
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    LOBYTE(v15[0]) = v14;
    sub_1D8D76684(v15, v17);
    *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval) = v17[0];

    sub_1D8D8EE50(v17);
    v15[8] = v17[8];
    v16[0] = v18[0];
    *(v16 + 10) = *(v18 + 10);
    v15[4] = v17[4];
    v15[5] = v17[5];
    v15[6] = v17[6];
    v15[7] = v17[7];
    v15[0] = v17[0];
    v15[1] = v17[1];
    v15[2] = v17[2];
    v15[3] = v17[3];
    sub_1D8D8EBEC(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D8E6A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D8E6DC()
{

  return swift_deallocObject();
}

char *sub_1D8D8E71C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1D8D41BE0(result, v5, 0);
  }

  return result;
}

uint64_t sub_1D8D8E79C(uint64_t a1)
{
  sub_1D8D8EB34(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t MediaRequest.IncludeExtendTypes.rawValue.getter()
{
  result = 0x6B726F77747261;
  switch(*v0)
  {
    case 1:
      result = 0x7263736275537369;
      break;
    case 2:
      result = 0x72617262694C6E69;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 6:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x7365646F73697065;
      break;
    case 9:
      result = 0x74736163646F70;
      break;
    case 0xA:
      result = 0x7374736163646F70;
      break;
    case 0xB:
      result = 0x637365446C6C7566;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x6C725564656566;
      break;
    case 0xE:
      result = 0x6C656E6E616863;
      break;
    case 0xF:
      result = 0x6C6C65737075;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0x697263736E617274;
      break;
    case 0x14:
      result = 0x74657070696E73;
      break;
    case 0x15:
      result = 0x69726F6765746163;
      break;
    case 0x16:
      result = 0x746E65726170;
      break;
    case 0x17:
      result = 0x6E6572646C696863;
      break;
    case 0x18:
      result = 0x7372657470616863;
      break;
    case 0x19:
      result = 0x6D617266656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8D8EB0C(uint64_t a1)
{
  if (*(a1 + 169))
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFF8 | (*(a1 + 168) >> 3) & 7;
  if (*(a1 + 169))
  {
    return (*a1 + 8);
  }

  else
  {
    return v2;
  }
}

void sub_1D8D8EB34(uint64_t a1)
{
  if (!qword_1ECAAFFC0)
  {
    sub_1D9176E3C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECAAFFC0);
    }
  }
}

void *sub_1D8D8EBA0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1D8D8EDF4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_1D8D8EBEC(__int128 *a1)
{
  v2 = a1[9];
  v27 = a1[8];
  v28[0] = v2;
  *(v28 + 10) = *(a1 + 154);
  v3 = a1[5];
  v23 = a1[4];
  v24 = v3;
  v4 = a1[7];
  v25 = a1[6];
  v26 = v4;
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  v6 = a1[3];
  v21 = a1[2];
  v22 = v6;
  v7 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
  v8 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
  if (v8)
  {
    LOBYTE(v17[0]) = *v7;
    *(&v17[0] + 1) = v8;

    sub_1D8D7FAB4();
  }

  v9 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v18 = 24;
  sub_1D8D76684(&v18, v17);
  *v7 = v17[0];

  v10 = swift_allocObject();
  v11 = v25;
  *(v10 + 136) = v26;
  v12 = v28[0];
  *(v10 + 152) = v27;
  *(v10 + 168) = v12;
  *(v10 + 178) = *(v28 + 10);
  v13 = v21;
  *(v10 + 72) = v22;
  v14 = v24;
  *(v10 + 88) = v23;
  *(v10 + 104) = v14;
  *(v10 + 120) = v11;
  v15 = v20;
  *(v10 + 24) = v19;
  *(v10 + 40) = v15;
  *(v10 + 16) = v1;
  *(v10 + 56) = v13;

  sub_1D8D8F64C(&v19, v17);
  OS_dispatch_queue.asyncWithTelemetry(for:_:)(v1 + v9, sub_1D8D8F920, v10);
}

uint64_t sub_1D8D8ED64()
{

  sub_1D8D96FF0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 193));

  return swift_deallocObject();
}

double sub_1D8D8EE50(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 256;
  return result;
}

void *sub_1D8D8EE90(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1D8D8EDF4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

id PendingDownloadRemovals.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D917820C();
  v7 = v6;
  v8 = @"MTEpisodesPendingDeletionDefaultKey";
  v9 = sub_1D8D8F25C(v5, v7);

  if (v9)
  {

    v10 = *(v9 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
    os_unfair_lock_lock((v10 + 24));
    v11 = *(v10 + 16);

    os_unfair_lock_unlock((v10 + 24));
    v12 = objc_allocWithZone(ObjectType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 16) = v11;
    *&v12[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v13;
    v36.receiver = v12;
    v36.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v36, sel_init);

LABEL_20:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = [a1 objectForKey_];

  if (v15)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {
    sub_1D8D64450(v42);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v27 = objc_allocWithZone(ObjectType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
    v28 = swift_allocObject();
    *(v28 + 24) = 0;
    *(v28 + 16) = MEMORY[0x1E69E7CD0];
    *&v27[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v28;
    v39.receiver = v27;
    v39.super_class = ObjectType;
    v29 = objc_msgSendSuper2(&v39, sel_init);
LABEL_19:
    v14 = v29;
    goto LABEL_20;
  }

  v16 = v38;
  v17 = *(v38 + 16);
  if (!v17)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v30 = sub_1D8FC0FD0(v20);

    v31 = objc_allocWithZone(ObjectType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 16) = v30;
    *&v31[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v32;
    v37.receiver = v31;
    v37.super_class = ObjectType;
    v29 = objc_msgSendSuper2(&v37, sel_init, v33, v34, v35);
    goto LABEL_19;
  }

  v33 = ObjectType;
  v34 = a1;
  v35 = v2;
  *&v42[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D8E358F8(0, v17, 0);
  v19 = 0;
  v20 = *&v42[0];
  v21 = (v38 + 40);
  while (v19 < *(v16 + 16))
  {
    v22 = *(v21 - 1);
    v23 = *v21;
    *&v42[0] = v20;
    v24 = *(v20 + 16);
    v25 = *(v20 + 24);

    if (v24 >= v25 >> 1)
    {
      result = sub_1D8E358F8(v25 > 1, v24 + 1, 1);
      v20 = *&v42[0];
    }

    ++v19;
    *(v20 + 16) = v24 + 1;
    v26 = v20 + 24 * v24;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    *(v26 + 48) = 2;
    v21 += 2;
    if (v17 == v19)
    {

      a1 = v34;
      ObjectType = v33;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D8D8F25C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for PendingDownloadRemovals();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v2 dataForKey_];

  if (v6)
  {
    v7 = sub_1D9176C8C();
    v9 = v8;

    sub_1D91769AC();
    swift_allocObject();
    sub_1D917699C();
    sub_1D8D8F8E0(&qword_1ECAB1B08, &protocol conformance descriptor for PendingDownloadRemovals);
    sub_1D917698C();

    sub_1D8D7567C(v7, v9);
    return v16;
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v10 = sub_1D917744C();
    __swift_project_value_buffer(v10, qword_1EDCD0F88);

    v11 = sub_1D917741C();
    v12 = sub_1D9178CEC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D8CFA924(a1, a2, &v16);
      _os_log_impl(&dword_1D8CEC000, v11, v12, "No user defaults value for key '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1DA72CB90](v14, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1D8D8F684(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = a1 + 1;
  v6 = sub_1D91766EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v9 = v6;
  v10 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1;

  return v8(v10, a2, v9);
}

unint64_t MediaRequest.ContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7374736163646F70;
  v3 = 0x69726F6765746163;
  if (v1 != 5)
  {
    v3 = 0x6970652D7478656ELL;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x697263736E617274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19StoreFeedUpdaterJobC5State33_FBF799961955A5A2E70C121347D0D776LLO(uint64_t a1)
{
  if (*(a1 + 169))
  {
    return (*a1 + 8);
  }

  else
  {
    return (*(a1 + 168) >> 3) & 7;
  }
}

uint64_t sub_1D8D8F860(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
  if (*(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8))
  {

    sub_1D8D7FAB4();
  }

  *v3 = 0;
  v3[1] = 0;

  return sub_1D8D8FE60(a2);
}

uint64_t sub_1D8D8F8E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PendingDownloadRemovals();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D8F92C(uint64_t a1)
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)(v9, v1, v2, v3, v4, v5, v6, v7);
  return sub_1D9179E1C();
}

uint64_t sub_1D8D8F968(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v4 = (a1 + 32);
    result = v20;
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = 0xEC00000073747361;
      v8 = v6 == 5;
      if (v6 == 5)
      {
        v9 = 0x69726F6765746163;
      }

      else
      {
        v9 = 0x7372657470616863;
      }

      if (v8)
      {
        v10 = 0xEA00000000007365;
      }

      else
      {
        v10 = 0xE800000000000000;
      }

      if (v5 == 3)
      {
        v11 = 0x697263736E617274;
      }

      else
      {
        v11 = 0x6E79536E61656C63;
      }

      if (v5 == 3)
      {
        v12 = 0xEB00000000737470;
      }

      else
      {
        v12 = 0xE900000000000063;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0xE900000000000073;
      if (v5 == 1)
      {
        v14 = 0x6D656C7469746E65;
      }

      else
      {
        v14 = 0x726566664F707061;
      }

      if (v5 == 1)
      {
        v13 = 0xEC00000073746E65;
      }

      if (v5)
      {
        v7 = v13;
      }

      else
      {
        v14 = 0x63646F507377656ELL;
      }

      if (v5 <= 2)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      if (v5 <= 2)
      {
        v16 = v7;
      }

      else
      {
        v16 = v10;
      }

      v21 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D8D41BE0((v17 > 1), v18 + 1, 1);
        result = v21;
      }

      *(result + 16) = v18 + 1;
      v19 = result + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D8D8FBAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v4 = (a1 + 32);
    result = v17;
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 <= 3)
      {
        v7 = 0xD000000000000016;
        if (v5 == 2)
        {
          v8 = 0x80000001D91C87D0;
        }

        else
        {
          v7 = 0x6143656E696C6E69;
          v8 = 0xEE0079726F676574;
        }

        if (v5)
        {
          v9 = 0xD000000000000014;
        }

        else
        {
          v9 = 0x6C656E6E616863;
        }

        if (v5)
        {
          v10 = 0x80000001D91C87B0;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        v11 = v5 <= 1;
      }

      else
      {
        if (v5 == 7)
        {
          v7 = 0x4865646F73697065;
        }

        else
        {
          v7 = 0x6F726548776F6873;
        }

        if (v5 == 7)
        {
          v8 = 0xEB000000006F7265;
        }

        else
        {
          v8 = 0xE800000000000000;
        }

        if (v5 == 6)
        {
          v7 = 2003789939;
          v8 = 0xE400000000000000;
        }

        if (v5 == 4)
        {
          v9 = 0x6F77537265776F70;
        }

        else
        {
          v9 = 0x6867696C68676968;
        }

        if (v5 == 4)
        {
          v10 = 0xEB0000000068736FLL;
        }

        else
        {
          v10 = 0xEF6D657449646574;
        }

        v11 = v5 <= 5;
      }

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = v7;
      }

      if (v11)
      {
        v13 = v10;
      }

      else
      {
        v13 = v8;
      }

      v18 = result;
      v15 = *(result + 16);
      v14 = *(result + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D8D41BE0((v14 > 1), v15 + 1, 1);
        result = v18;
      }

      *(result + 16) = v15 + 1;
      v16 = result + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D8D8FE60(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[7];
  v8 = a1[9];
  v131 = a1[8];
  v132[0] = v8;
  *(v132 + 10) = *(a1 + 154);
  v9 = a1[3];
  v11 = a1[5];
  v127 = a1[4];
  v10 = v127;
  v128 = v11;
  v12 = a1[5];
  v14 = a1[7];
  v129 = a1[6];
  v13 = v129;
  v130 = v14;
  v15 = a1[1];
  v123 = *a1;
  v124 = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v125 = a1[2];
  v19 = v125;
  v126 = v16;
  v20 = v2[8];
  v21 = v2[10];
  v141 = v2[9];
  v142[0] = v21;
  *(v142 + 10) = *(v2 + 170);
  v22 = v2[4];
  v23 = v2[6];
  v137 = v2[5];
  v138 = v23;
  v25 = v2[6];
  v24 = v2[7];
  v26 = v24;
  v140 = v2[8];
  v139 = v24;
  v27 = v2[2];
  v133 = v2[1];
  v134 = v27;
  v28 = v2[4];
  v30 = v2[1];
  v29 = v2[2];
  v135 = v2[3];
  v136 = v28;
  v31 = v2[10];
  v143[8] = v141;
  v144[0] = v31;
  *(v144 + 10) = *(v2 + 170);
  v143[4] = v137;
  v143[5] = v25;
  v143[7] = v20;
  v143[6] = v26;
  v143[0] = v30;
  v143[1] = v29;
  v143[3] = v22;
  v143[2] = v135;
  v32 = a1[9];
  v2[9] = v131;
  v2[10] = v32;
  *(v2 + 170) = *(a1 + 154);
  v2[5] = v10;
  v2[6] = v12;
  v2[7] = v13;
  v2[8] = v7;
  v2[1] = v18;
  v2[2] = v17;
  v2[3] = v19;
  v2[4] = v9;
  sub_1D8D8F64C(&v133, &v113);
  sub_1D8D8F64C(&v123, &v113);
  sub_1D8D90C48(v143);
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v33 = sub_1D917744C();
  __swift_project_value_buffer(v33, qword_1EDCD1050);
  sub_1D8D8F64C(&v123, &v113);

  v34 = sub_1D917741C();
  v35 = sub_1D9178D1C();

  sub_1D8D90C48(&v123);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v93 = v37;
    *v36 = 141558531;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    sub_1D8D800E0(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v6, type metadata accessor for StoreFeedUpdater.Update);
    v38 = &v6[*(v4 + 32)];
    v39 = *v38;
    v40 = v38[1];

    sub_1D8D90C88(v6, type metadata accessor for StoreFeedUpdater.Update);
    v41 = sub_1D8CFA924(v39, v40, &v93);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2082;
    v111 = v131;
    v112[0] = v132[0];
    *(v112 + 10) = *(v132 + 10);
    v107 = v127;
    v108 = v128;
    v109 = v129;
    v110 = v130;
    v103 = v123;
    v104 = v124;
    v105 = v125;
    v106 = v126;
    sub_1D8D8F64C(&v123, &v113);
    v42 = sub_1D8D90DB0();
    v44 = v43;
    v121 = v111;
    v122[0] = v112[0];
    *(v122 + 10) = *(v112 + 10);
    v117 = v107;
    v118 = v108;
    v119 = v109;
    v120 = v110;
    v113 = v103;
    v114 = v104;
    v115 = v105;
    v116 = v106;
    sub_1D8D90C48(&v113);
    v45 = sub_1D8CFA924(v42, v44, &v93);

    *(v36 + 24) = v45;
    _os_log_impl(&dword_1D8CEC000, v34, v35, "Job %{private,mask.hash}s: %{public}s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v37, -1, -1);
    MEMORY[0x1DA72CB90](v36, -1, -1);
  }

  v121 = v131;
  v122[0] = v132[0];
  *(v122 + 10) = *(v132 + 10);
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v116 = v126;
  result = sub_1D8D8EB0C(&v113);
  if (result <= 4)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v64 = sub_1D8D90978(&v113);
        v65 = *v64;
        LOBYTE(v93) = 16;
        sub_1D8D76684(&v93, &v103);
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

        v110 = *(v64 + 120);
        v111 = *(v64 + 136);
        v112[0] = *(v64 + 152);
        LOBYTE(v112[1]) = *(v64 + 168);
        v106 = *(v64 + 56);
        v107 = *(v64 + 72);
        v108 = *(v64 + 88);
        v109 = *(v64 + 104);
        v103 = *(v64 + 8);
        v104 = *(v64 + 24);
        v105 = *(v64 + 40);
        sub_1D8F67994(v65, &v103);
      }

      else
      {
        if (result == 3)
        {
          v47 = sub_1D8D90978(&v113);
          v48 = *(v47 + 32);
          v49 = *(v47 + 40);
          LOBYTE(v93) = 17;
          v50 = *v47;
          v78 = *(v47 + 16);
          v79 = v50;
          sub_1D8D76684(&v93, &v103);
          *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

          v103 = v79;
          v104 = v78;
          *&v105 = v48;
          BYTE8(v105) = v49;
          v51 = swift_allocObject();
          swift_weakInit();

          sub_1D8F68B4C(&v103, sub_1D8F6F0DC, v51);
          sub_1D8D90C48(&v133);
        }

        v69 = sub_1D8D90978(&v113);
        LOBYTE(v93) = 19;
        sub_1D8D76684(&v93, &v103);
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

        v110 = *(v69 + 112);
        v111 = *(v69 + 128);
        v112[0] = *(v69 + 144);
        LOBYTE(v112[1]) = *(v69 + 160);
        v106 = *(v69 + 48);
        v107 = *(v69 + 64);
        v108 = *(v69 + 80);
        v109 = *(v69 + 96);
        v103 = *v69;
        v104 = *(v69 + 16);
        v105 = *(v69 + 32);
        sub_1D8F69C58(&v103, 0, 0);
      }

      return sub_1D8D90C48(&v133);
    }

    if (!result)
    {
      v62 = *sub_1D8D90978(&v113);
      LOBYTE(v93) = 14;
      sub_1D8D76684(&v93, &v103);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

      sub_1D8F67818(v62);
      return sub_1D8D90C48(&v133);
    }

    v70 = sub_1D8D90978(&v113);
    v71 = *(v70 + 32);
    v72 = *(v70 + 40);
    v73 = *(v70 + 48);
    LOBYTE(v93) = 15;
    v74 = *v70;
    v78 = *(v70 + 16);
    v79 = v74;
    sub_1D8D76684(&v93, &v103);
    *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

    v103 = v79;
    v104 = v78;
    *&v105 = v71;
    BYTE8(v105) = v72;
    v75 = swift_allocObject();
    swift_weakInit();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v73;

    v77 = v73;
    sub_1D8F68B4C(&v103, sub_1D8F6F0E4, v76);
    sub_1D8D90C48(&v133);
  }

  if (result <= 6)
  {
    if (result != 5)
    {
      v63 = *sub_1D8D90978(&v113);
      LOBYTE(v93) = 21;
      sub_1D8D76684(&v93, &v103);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

      v111 = v141;
      v112[0] = v142[0];
      *(v112 + 10) = *(v142 + 10);
      v107 = v137;
      v108 = v138;
      v109 = v139;
      v110 = v140;
      v103 = v133;
      v104 = v134;
      v105 = v135;
      v106 = v136;
      sub_1D8F67B90(&v103, v63);
      return sub_1D8D90C48(&v133);
    }

    v52 = sub_1D8D90978(&v113);
    v53 = *v52;
    v54 = v52[1];
    v55 = v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    LOBYTE(v93) = 20;
    sub_1D8D76684(&v93, &v103);
    *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

    v56 = &v55[*(type metadata accessor for FeedUpdateRequest(0) + 64)];
    v57 = *v56;
    if (*v56)
    {
      v58 = *(v56 + 1);
      v59 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);

      v57(v53, v54, v59);
      sub_1D8D15664(v57, v58);
    }

    v60 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 16);
    v90[0] = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData);
    v90[1] = v60;
    v61 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 48);
    v91 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 32);
    v92 = v61;
    v93 = v90[0];
    v94 = v60;
    v95 = v91;
    v96 = v61;
    LOBYTE(v97) = 0;
    sub_1D8F6F0C8(&v93);
    v88 = v101;
    v89[0] = v102[0];
    *(v89 + 10) = *(v102 + 10);
    v84 = v97;
    v85 = v98;
    v86 = v99;
    v87 = v100;
    v80 = v93;
    v81 = v94;
    v82 = v95;
    v83 = v96;
    sub_1D8F674F8(v90, &v103);
    sub_1D8D8EBEC(&v80);
    sub_1D8D90C48(&v133);
    v111 = v88;
    v112[0] = v89[0];
    *(v112 + 10) = *(v89 + 10);
    v107 = v84;
    v108 = v85;
    v109 = v86;
    v110 = v87;
    v103 = v80;
    v104 = v81;
    v105 = v82;
    v106 = v83;
    return sub_1D8D90C48(&v103);
  }

  else
  {
    if (result == 7)
    {
      v66 = sub_1D8D90978(&v113);
      v104 = *(v66 + 16);
      v105 = *(v66 + 32);
      v106 = *(v66 + 48);
      LOBYTE(v107) = *(v66 + 64);
      v103 = *v66;
      v67 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
      LOBYTE(v80) = 22;
      sub_1D8D76684(&v80, &v93);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v93;

      v68 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);

      v68(v2 + v67, &v103);
      sub_1D8D90C48(&v133);
    }

    if (result == 9)
    {
      LOBYTE(v93) = 13;
      sub_1D8D76684(&v93, &v103);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v103;

      sub_1D8D910A4();
      return sub_1D8D90C48(&v133);
    }

    __break(1u);
  }

  return result;
}

void *sub_1D8D9098C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = PendingDownloadRemovals.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void *PendingDownloadRemovals.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FB8, &qword_1D918DE50);
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D91FCC();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FA8, &qword_1D918DE40);
    sub_1D8D9395C(&qword_1ECAB0ED8, &protocol conformance descriptor for <A> OSAllocatedUnfairLock<A>);
    v11 = v14;
    sub_1D91798FC();
    *&v3[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v16;
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

uint64_t sub_1D8D90BEC(uint64_t a1)
{
  v2 = type metadata accessor for MediaRequest.Params(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D90C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8D90CE8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8D915F4(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_1D8D90DB0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v30[7] = v0[7];
  v30[8] = v1;
  v31[0] = v2;
  *(v31 + 10) = *(v0 + 154);
  v4 = v0[5];
  v30[4] = v0[4];
  v30[5] = v4;
  v30[6] = v3;
  v5 = v0[1];
  v30[0] = *v0;
  v30[1] = v5;
  v6 = v0[3];
  v30[2] = v0[2];
  v30[3] = v6;
  v7 = sub_1D8D8EB0C(v30);
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        sub_1D8D90978(v30);
        return 0xD000000000000014;
      }

      else
      {
        sub_1D8D90978(v30);
        return 0x64656C696146;
      }
    }

    else if (v7 == 7)
    {
      v9 = sub_1D8D90978(v30);
      v26 = 0x64656873696E6946;
      v27 = 0xEA0000000000203ALL;
      v21 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      v25 = *(v9 + 64);
      v23 = v11;
      v24 = v12;
      v22 = v10;
      v13 = v0[9];
      v28[8] = v0[8];
      v29[0] = v13;
      *(v29 + 10) = *(v0 + 154);
      v14 = v0[5];
      v28[4] = v0[4];
      v28[5] = v14;
      v15 = v0[7];
      v28[6] = v0[6];
      v28[7] = v15;
      v16 = v0[1];
      v28[0] = *v0;
      v28[1] = v16;
      v17 = v0[3];
      v28[2] = v0[2];
      v28[3] = v17;
      v18 = sub_1D8D90978(v28);
      sub_1D8F6F06C(v18, v20);
      v19 = sub_1D917826C();
      MEMORY[0x1DA7298F0](v19);

      return v26;
    }

    else if (v7 == 8)
    {
      return 0x206C616974696E49;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  else if (v7 <= 1)
  {
    if (v7)
    {
      sub_1D8D90978(v30);
      return 0xD00000000000001BLL;
    }

    else
    {
      sub_1D8D90978(v30);
      return 0xD000000000000026;
    }
  }

  else if (v7 == 2)
  {
    sub_1D8D90978(v30);
    return 0xD00000000000002DLL;
  }

  else if (v7 == 3)
  {
    sub_1D8D90978(v30);
    return 0xD000000000000013;
  }

  else
  {
    sub_1D8D90978(v30);
    return 0xD000000000000013;
  }
}

unint64_t sub_1D8D91050()
{
  result = qword_1ECAB1B10;
  if (!qword_1ECAB1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1B10);
  }

  return result;
}

uint64_t sub_1D8D910A4()
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v57 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D8D946F4(&unk_1F545E128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9189080;
  v10 = v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v11 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update + updated[7]);
  v58 = v0;
  v59 = v11;
  *(v9 + 32) = sub_1D9179A4C();
  *(v9 + 40) = v12;
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v56 = v5;
  v14(v5, 1, 1, v13);
  v15 = *(v10 + updated[9]);
  v54 = v10;
  if (v15)
  {
    v53 = 0;
  }

  else
  {
    v53 = *(v10 + updated[11]);
  }

  v16 = MEMORY[0x1E69E7CC0];
  v52 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v51 = sub_1D8D94DF8(v16);
  v50 = sub_1D8D951E0(v16);
  v49 = sub_1D8D9503C(v16);
  v48 = sub_1D8D9536C(v16);
  v47 = sub_1D8D953C4(v16);
  v45 = sub_1D8D952D8(v16);
  v46 = sub_1D8D95394(v16);
  v43 = sub_1D8D957C4(v16);
  *(v8 + 41) = 263;
  v8[43] = 5;
  v8[152] = 1;
  v8[201] = 1;
  v17 = v6[28];
  v14(&v8[v17], 1, 1, v13);
  v18 = &v8[v6[29]];
  v19 = &v8[v6[31]];
  v20 = v6[33];
  v44 = v6[34];
  v21 = &v8[v20];
  v22 = &v8[v6[35]];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 10) = 83951876;
  v23 = v51;
  *(v8 + 6) = v52;
  *(v8 + 7) = v23;
  *(v8 + 8) = v50;
  *(v8 + 9) = &unk_1F545E0B0;
  v24 = v48;
  *(v8 + 10) = v49;
  *(v8 + 11) = v24;
  v25 = v47;
  *(v8 + 12) = v55;
  *(v8 + 13) = v25;
  v26 = v45;
  v27 = v46;
  *(v8 + 14) = v16;
  *(v8 + 15) = v26;
  *(v8 + 16) = v16;
  *(v8 + 17) = v16;
  *(v8 + 18) = v9;
  v8[152] = 1;
  *(v8 + 20) = 0;
  v8[168] = 1;
  v28 = v43;
  *(v8 + 22) = v27;
  *(v8 + 23) = v28;
  *(v8 + 24) = 0;
  *(v8 + 100) = 257;
  v8[202] = 0;
  sub_1D8E26828(v56, &v8[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v8[v6[30]] = v53;
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v8[v6[32]] = v16;
  *v21 = 0;
  *(v21 + 1) = 0;
  v8[v44] = 2;
  *v22 = 0;
  *(v22 + 1) = 0;
  v29 = v57;
  sub_1D8D800E0(v54, v57, type metadata accessor for FeedUpdateRequest);
  _s21MediaRequestTelemetryCMa(0);
  v30 = swift_allocObject();
  v31 = (v30 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v30 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v30 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v30 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v30 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState);
  *v35 = 0;
  v35[1] = 0;
  sub_1D8D79960(v29, v30 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_request);
  *(v30 + 16) = 0;
  v36 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 24);
  v37 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 32);
  __swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController), v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76E8, &unk_1D9198848);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = sub_1D8D95AE8();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v8, 0, v30, v38, sub_1D8F6F0EC, v39, v36, v38, v37, v40);

  return sub_1D8D90C88(v8, type metadata accessor for MediaRequest.Params);
}

void sub_1D8D915F4(void *a1, uint64_t a2, void *a3, void (*a4)(void, unint64_t, void, char *, uint64_t), uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v63 = a8;
  v69 = a4;
  v70 = a7;
  v68 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v56 - v13;
  v64 = sub_1D9176EAC();
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D917653C();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9176C2C();
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v56 - v26;
  if (a3)
  {
    if (a2)
    {
      v27 = sub_1D9176A5C();
    }

    else
    {
      v27 = 0;
    }

    [a3 endBuildingRequestWithError_];
  }

  if (a1)
  {
    v28 = a1;
    v29 = [v28 URL];
    if (v29)
    {
      v58 = v28;
      v30 = v29;
      sub_1D9176B9C();

      v32 = v65;
      v31 = v66;
      v33 = v67;
      (*(v66 + 32))(v65, v24, v67);
      (*(v31 + 16))(v21, v32, v33);
      sub_1D91764EC();
      v34 = *a6;
      v36 = *(a6 + 24);
      v35 = *(a6 + 32);
      v37 = *(a6 + 40);
      if (v37 == 3)
      {
      }

      sub_1D917648C();
      v39 = *(a6 + 8);
      v40 = *(a6 + 16);
      aBlock = v34;
      v72 = v39;
      v73 = v40;
      v74 = v36;
      v75 = v35;
      LOBYTE(v76) = v37;
      sub_1D8D8DFD4(v34, v39, v40, v36, v35, v37);
      sub_1D8D92B9C(&aBlock);
      sub_1D8D85E5C(aBlock, v72, v73, v74, v75, v76);
      sub_1D917651C();
      swift_beginAccess();
      sub_1D917649C();
      if (v37 == 1)
      {
        sub_1D917652C();
      }

      v57 = swift_allocBox();
      v42 = v41;
      v43 = *(v14 + 56);
      v44 = v64;
      v43(v41, 1, 1, v64);
      if (a3)
      {
        swift_unknownObjectRetain();
        v45 = v59;
        v46 = sub_1D9176E9C();
        v56 = &v56;
        v47 = *&v70[OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry];
        MEMORY[0x1EEE9AC00](v46);
        *(&v56 - 2) = v45;
        *(&v56 - 1) = a3;
        swift_unknownObjectRetain();

        os_unfair_lock_lock(v47 + 6);
        sub_1D8D92F64(&v47[4]);
        os_unfair_lock_unlock(v47 + 6);
        swift_unknownObjectRelease_n();
        v44 = v64;

        sub_1D8D798AC(v42);
        (*(v14 + 32))(v42, v45, v44);
        v43(v42, 0, 1, v44);
      }

      v48 = sub_1D91764BC();
      v49 = v60;
      sub_1D8D76CE0(v42, v60);
      if ((*(v14 + 48))(v49, 1, v44) == 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = sub_1D9176E6C();
        (*(v14 + 8))(v49, v44);
      }

      v51 = swift_allocObject();
      v52 = v70;
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      v54 = v68;
      v53[2] = v69;
      v53[3] = v54;
      v53[4] = v57;
      v53[5] = v51;
      v75 = sub_1D904FF94;
      v76 = v53;
      aBlock = MEMORY[0x1E69E9820];
      v72 = 1107296256;
      v73 = sub_1D90F1C50;
      v74 = &block_descriptor_135_1;
      v55 = _Block_copy(&aBlock);

      [v52 performDataRequest:v48 account:v63 telemetryIdentifier:v50 callback:v55];

      _Block_release(v55);
      (*(v61 + 8))(v18, v62);
      (*(v66 + 8))(v65, v67);

      return;
    }
  }

  v70 = [objc_allocWithZone(MEMORY[0x1E696AC68]) init];
  v69(0, 0xF000000000000000, 0, v70, a2);
  v38 = v70;
}

uint64_t sub_1D8D91E1C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D91E54()
{

  return swift_deallocObject();
}

void sub_1D8D91EB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D8D91F08()
{
  result = qword_1ECAB1B18;
  if (!qword_1ECAB1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1B18);
  }

  return result;
}

void sub_1D8D91F5C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *))
{

  v6 = a3;
  a4(a3);
}

unint64_t sub_1D8D91FCC()
{
  result = qword_1ECAB1B20;
  if (!qword_1ECAB1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1B20);
  }

  return result;
}

void sub_1D8D92020(uint64_t a1)
{
  sub_1D8D91EB8(319, &qword_1ECAB2A08, &type metadata for MediaRequest.ContentType, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D8D91EB8(319, &qword_1ECAB29C8, &type metadata for MediaRequest.ViewType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D8D91EB8(319, &qword_1ECAB29E8, &type metadata for MediaRequest.Relationship, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D8D925E0(319, &qword_1ECAB0160, sub_1D8D926D8, &type metadata for MediaRequest.Relationship);
        if (v4 <= 0x3F)
        {
          sub_1D8D92F00(319);
          if (v5 <= 0x3F)
          {
            sub_1D8D91EB8(319, &qword_1ECAAFFA0, &type metadata for MediaRequest.IncludeExtendTypes, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1D8D93268(319);
              if (v7 <= 0x3F)
              {
                sub_1D8D925E0(319, &qword_1ECAB0178, sub_1D8D93908, &type metadata for MediaRequest.ContentType);
                if (v8 <= 0x3F)
                {
                  sub_1D8D925E0(319, &qword_1ECAB0180, sub_1D8D93C2C, &type metadata for MediaRequest.Association);
                  if (v9 <= 0x3F)
                  {
                    sub_1D8D91EB8(319, &qword_1ECAAFF98, &type metadata for MediaRequest.Field, MEMORY[0x1E69E62F8]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D907C5E8(319);
                      if (v11 <= 0x3F)
                      {
                        sub_1D8D91EB8(319, &qword_1ECAAFF90, &type metadata for MediaRequest.WithTypes, MEMORY[0x1E69E62F8]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D8D91EB8(319, &qword_1ECAAFF10, &type metadata for RecommendationsDisplayKind, MEMORY[0x1E69E62F8]);
                          if (v13 <= 0x3F)
                          {
                            sub_1D8D91EB8(319, &qword_1EDCD5C10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                            if (v14 <= 0x3F)
                            {
                              sub_1D8D91EB8(319, &qword_1ECAB2A00, &type metadata for MediaRequest.URLFragment, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1D8D91EB8(319, &qword_1ECAAFE40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1D907C660(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1D907C6D8(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1D8D91EB8(319, &qword_1ECAB29D0, &type metadata for MediaRequest.PageName, MEMORY[0x1E69E6720]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1D8CF307C(319);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1D8D91EB8(319, &qword_1EDCD7710, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1D8D91EB8(319, &unk_1ECAAFFA8, &type metadata for MediaRequest.ContentType, MEMORY[0x1E69E62F8]);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1D8D91EB8(319, &unk_1ECAAFEA8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                                              if (v23 <= 0x3F)
                                              {
                                                swift_cvw_initStructMetadataWithLayoutString();
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D8D92554(uint64_t a1, void *a2)
{
  v3 = (v2 + *a2);
  if (v3[1])
  {
    v4 = a1 == 0;

    sub_1D8D92750(v4);
  }

  *v3 = 0;
  v3[1] = 0;
}

void sub_1D8D925E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9B08, &unk_1D91AE1F8);
    a3();
    v6 = sub_1D91780DC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D8D92684()
{
  result = qword_1EDCD5ED8;
  if (!qword_1EDCD5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5ED8);
  }

  return result;
}

unint64_t sub_1D8D926D8()
{
  result = qword_1ECAB29F8;
  if (!qword_1ECAB29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29F8);
  }

  return result;
}

uint64_t sub_1D8D92750(uint64_t a1)
{
  v29 = a1;
  v2 = sub_1D91773AC();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D917734C();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D917739C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  LODWORD(v15) = *v1;
  if ((v15 - 24) >= 4 && v15 != 8)
  {
    if (qword_1ECAB1030 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (qword_1ECAB1008 != -1)
  {
    swift_once();
  }

  for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
  {
    v17 = __swift_project_value_buffer(v8, i);
    (*(v9 + 16))(v11, v17, v8);
    (*(v9 + 32))(v14, v11, v8);
    v32 = v15;
    v11 = sub_1D8D76D50();
    sub_1D8D32440();
    sub_1D8D3852C();
    sub_1D8D15664(v18, v19);
    v15 = sub_1D917737C();
    sub_1D91773DC();
    v27 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {
      break;
    }

    if (v11)
    {

      sub_1D917740C();

      v20 = v28;
      if ((*(v28 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v21 = 0;
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v4, v2);
        v22 = "[result=%{name=success,public}ld]";
        v21 = 1;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      *(v23 + 1) = v21;
      *(v23 + 2) = 2050;
      *(v23 + 4) = v29 & 1;
      v24 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v15, v27, v24, v11, v22, v23, 0xCu);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_14:
    ;
  }

  (*(v30 + 8))(v7, v31);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1D8D92B9C(uint64_t *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) <= 1u)
  {
    v2 = objc_opt_self();
    v3 = sub_1D917802C();
    v9[0] = 0;
    v4 = [v2 dataWithJSONObject:v3 options:1 error:v9];

    v5 = v9[0];
    if (v4)
    {
      v6 = sub_1D9176C8C();

      return v6;
    }

    v7 = v5;
    v8 = sub_1D9176A6C();

    swift_willThrow();
  }

  else if (*(a1 + 40) - 2 >= 2)
  {
    return 0;
  }

  return 0;
}

void sub_1D8D92D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D8D92DC4()
{
  result = qword_1ECAB29F0;
  if (!qword_1ECAB29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29F0);
  }

  return result;
}

uint64_t sub_1D8D92E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D9176EAC();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  v9 = swift_unknownObjectRetain();
  return sub_1D8D930A8(v9, v7);
}

void sub_1D8D92F00(uint64_t a1)
{
  if (!qword_1ECAB0158)
  {
    sub_1D8D926D8();
    v1 = sub_1D91780DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB0158);
    }
  }
}

void sub_1D8D92F80(uint64_t a1)
{
  sub_1D8D92D64(319, &qword_1ECAAFE90, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1D8D92D64(319, &qword_1ECAAFEA0, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D8D930A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D8D9373C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D9176EAC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1D8D93AB0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1D8F84A14();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1D9176EAC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      swift_unknownObjectRelease();
      sub_1D8F7F950(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1D9176EAC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_1D8D93268(uint64_t a1)
{
  if (!qword_1ECAB0138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v1 = sub_1D91780DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB0138);
    }
  }
}

char *CacheDeleteNotifications.init(paths:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B80, &qword_1D918C540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B88, &qword_1D918C548);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B90, &qword_1D918C550);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer] = 0;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_paths] = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  v33 = v15;
  type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v30[1] = a1;

  sub_1D91788FC();
  (*(v31 + 32))(&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_stream], v9, v32);
  sub_1D8D088B4(v15, v12, &qword_1ECAB4B90, &qword_1D918C550);
  result = (*(v17 + 48))(v12, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_continuation], v12, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
    v19 = swift_allocObject();
    *(v19 + 20) = 0;
    *(v19 + 16) = 0;
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_completedCheck] = v19;
    v20 = type metadata accessor for CacheDeleteNotifications(0);
    v34.receiver = v1;
    v34.super_class = v20;
    v21 = objc_msgSendSuper2(&v34, sel_init);
    v22 = qword_1EDCD09A8;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDCD09B0;
    v25 = objc_allocWithZone(CacheDeleteNotificationObserver);
    sub_1D9176C2C();
    v26 = v24;
    v27 = sub_1D91785DC();

    v28 = [v25 initWithDelegate:v23 observedPaths:v27 notificationQueue:v26];

    v29 = *&v23[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer];
    *&v23[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer] = v28;

    sub_1D8D08A50(v15, &qword_1ECAB4B90, &qword_1D918C550);
    return v23;
  }

  return result;
}

uint64_t sub_1D8D9373C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D8D93AB0(a2);
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
      sub_1D8F84A14();
      goto LABEL_7;
    }

    sub_1D8D93CD8(v17, a3 & 1);
    v22 = sub_1D8D93AB0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D8D940B8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1D8D93908()
{
  result = qword_1ECAB2A10;
  if (!qword_1ECAB2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A10);
  }

  return result;
}

uint64_t sub_1D8D9395C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4FA8, &qword_1D918DE40);
    sub_1D8D93A38(&qword_1ECAAFE50, sub_1D8D93BD8, MEMORY[0x1E69E6510]);
    sub_1D8D93A38(&qword_1ECAAFE58, sub_1D8D93C80, MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D93A38(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4FB0, &qword_1D918DE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8D93AB0(uint64_t a1)
{
  sub_1D9176EAC();
  v2 = MEMORY[0x1E69695A8];
  sub_1D8F0CA8C(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1D917813C();
  return sub_1D8F08B6C(a1, v3, MEMORY[0x1E69695A8], &qword_1ECAB2C78, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D8D93B84()
{
  result = qword_1EDCD7038[0];
  if (!qword_1EDCD7038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD7038);
  }

  return result;
}

unint64_t sub_1D8D93BD8()
{
  result = qword_1EDCD5ED0;
  if (!qword_1EDCD5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5ED0);
  }

  return result;
}

unint64_t sub_1D8D93C2C()
{
  result = qword_1ECAB2A20;
  if (!qword_1ECAB2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A20);
  }

  return result;
}

unint64_t sub_1D8D93C80()
{
  result = qword_1ECAB10F0;
  if (!qword_1ECAB10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10F0);
  }

  return result;
}

uint64_t sub_1D8D93CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4298, &qword_1D9188DF0);
  v39 = v4;
  result = sub_1D917978C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_1D8D111F4(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D917813C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D8D940B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9176EAC();
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

unint64_t sub_1D8D9418C()
{
  result = qword_1ECAB2A18;
  if (!qword_1ECAB2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A18);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for ChapterProvider.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChapterProvider.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1D8D942BC()
{
  result = qword_1ECAB29E0;
  if (!qword_1ECAB29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29E0);
  }

  return result;
}

uint64_t OSAllocatedUnfairLock<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1D9179EDC();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1D9179B2C();
    v10 = sub_1D8D0790C(v8, a2);
    (*(v6 + 8))(v8, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

unint64_t sub_1D8D9449C()
{
  result = qword_1ECAB29D8;
  if (!qword_1ECAB29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29D8);
  }

  return result;
}

uint64_t sub_1D8D944F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = OSAllocatedUnfairLock<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1D8D94524(uint64_t a1, uint64_t a2)
{
  sub_1D8D08A50(a2, &qword_1ECAB4B90, &qword_1D918C550);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

unint64_t sub_1D8D94600(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1D8D94734(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1D8D947C0(*(v1 + 40), a1);

  return sub_1D8D9494C(v2, v3);
}

uint64_t sub_1D8D947C0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8D9494C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7374736163646F70;
          }

          else
          {
            v7 = 0xD000000000000010;
          }

          if (v6 == 1)
          {
            v8 = 0xE800000000000000;
          }

          else
          {
            v8 = 0x80000001D91C7F40;
          }
        }

        else
        {
          v7 = 0xD000000000000010;
          v8 = 0x80000001D91C7F20;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0x69726F6765746163;
          v8 = 0xEA00000000007365;
        }

        else
        {
          v7 = 0x6970652D7478656ELL;
          v8 = 0xED00007365646F73;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0x697263736E617274;
        }

        if (v6 == 3)
        {
          v8 = 0x80000001D91C7F60;
        }

        else
        {
          v8 = 0xEB00000000737470;
        }
      }

      v9 = 0x69726F6765746163;
      if (v5 != 5)
      {
        v9 = 0x6970652D7478656ELL;
      }

      v10 = 0xED00007365646F73;
      if (v5 == 5)
      {
        v10 = 0xEA00000000007365;
      }

      v11 = 0x697263736E617274;
      if (v5 == 3)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0xEB00000000737470;
      if (v5 == 3)
      {
        v12 = 0x80000001D91C7F60;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x7374736163646F70;
      if (v5 != 1)
      {
        v13 = 0xD000000000000010;
      }

      v14 = 0xE800000000000000;
      if (v5 != 1)
      {
        v14 = 0x80000001D91C7F40;
      }

      if (!v5)
      {
        v13 = 0xD000000000000010;
        v14 = 0x80000001D91C7F20;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_1D9179ACC();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1D8D94C08()
{
  v1 = v0;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = sub_1D917741C();
  v4 = sub_1D9178CFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Starting observer", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer);
  if (v6)
  {
    v7 = v6;
    if (([v7 beginObserving] & 1) == 0)
    {
      v8 = sub_1D917741C();
      v9 = sub_1D9178CFC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Unable to start observing cache delete notifications! Features that rely upon these notifications may not work.", v10, 2u);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      v11 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_completedCheck);
      os_unfair_lock_lock((v11 + 20));
      *(v11 + 16) = 1;
      os_unfair_lock_unlock((v11 + 20));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
      sub_1D91788BC();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B88, &qword_1D918C548);
  return sub_1D91788DC();
}

unint64_t sub_1D8D94EFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(_BYTE *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v15[0] = *(i - 8);
      v16 = v9;

      result = a4(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v15[0];
      *(v7[7] + 8 * result) = v9;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1D8D95090(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1D8D951E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42B0, &qword_1D9188E08);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v11[0] = *(i - 8);
      v12 = v5;
      result = sub_1D8F06430(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v11[0];
      *(v3[7] + 8 * result) = v5;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1D8D953C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      v5 = *(v4 + 8);
      *v11 = *v4;
      v12 = v5;

      result = sub_1D8F06598(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = *v11;
      *(v3[7] + 8 * result) = v5;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 16;
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

id NSManagedObjectContextProvider.managedObjectContext(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D917886C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  (*(v5 + 16))(&v20 - v10, a1, v4, v9);
  sub_1D91787FC();
  sub_1D8D957EC();
  v12 = sub_1D91781BC();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v12 & 1) == 0)
  {
    sub_1D917881C();
    v14 = sub_1D91781BC();
    v13(v7, v4);
    if ((v14 & 1) == 0)
    {
      sub_1D917884C();
      v16 = sub_1D91781BC();
      v13(v7, v4);
      if (v16 & 1) != 0 || (sub_1D917881C(), v17 = sub_1D91781BC(), v13(v7, v4), (v17))
      {
        v13(v11, v4);
        return NSManagedObjectContextProvider.privateManagedObjectContext.getter(a2);
      }

      sub_1D917880C();
      v18 = sub_1D91781BC();
      v13(v7, v4);
      if (v18)
      {
        v13(v11, v4);
      }

      else
      {
        sub_1D917880C();
        v19 = sub_1D91781BC();
        v13(v7, v4);
        v13(v11, v4);
        if ((v19 & 1) == 0)
        {
          return NSManagedObjectContextProvider.privateManagedObjectContext.getter(a2);
        }
      }

      return NSManagedObjectContextProvider.mainManagedObjectContext.getter(a2);
    }
  }

  v13(v11, v4);
  return NSManagedObjectContextProvider.importManagedObjectContext.getter(a2);
}

unint64_t sub_1D8D957EC()
{
  result = qword_1ECAB01D8;
  if (!qword_1ECAB01D8)
  {
    sub_1D917886C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01D8);
  }

  return result;
}

uint64_t _s21MediaRequestTelemetryCMa(uint64_t a1)
{
  result = qword_1ECAB20D0;
  if (!qword_1ECAB20D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D95890(uint64_t a1)
{
  result = type metadata accessor for FeedUpdateRequest(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NSManagedObjectContext.episodes(for:sortDescriptors:limit:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = Array<A>.episodeCoreDataPredicate()(a1);
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

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();

  return v11;
}

uint64_t sub_1D8D95AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D8D95AE8()
{
  result = qword_1EDCD35B0[0];
  if (!qword_1EDCD35B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB76E8, &unk_1D9198848);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD35B0);
  }

  return result;
}

char *Array<A>.group()(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (a1 + 48);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(v3 - 2);
    if (*v3)
    {
      v7 = *(v3 - 1);
      v8 = *(v3 - 2);
      if (*v3 == 1)
      {
        sub_1D8D5055C(v8, v7, 1);
        v5 = v6;
        MEMORY[0x1DA729B90]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        sub_1D8DA8564(v6, v7, 1);
      }

      else
      {
        sub_1D8D5055C(v8, v7, 2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1D8D4241C(0, *(v1 + 2) + 1, 1, v1);
        }

        v10 = *(v1 + 2);
        v9 = *(v1 + 3);
        if (v10 >= v9 >> 1)
        {
          v1 = sub_1D8D4241C((v9 > 1), v10 + 1, 1, v1);
        }

        *(v1 + 2) = v10 + 1;
        v11 = &v1[16 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v7;
        sub_1D8DA8564(v6, v7, 2);
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D8ECC958(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_1D8ECC958((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      *&v4[8 * v13 + 32] = v6;
    }

    v3 += 24;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = a3;
  swift_unknownObjectRetain();

  MediaRequestControllerProtocol.perform(params:account:telemetry:callback:)(a1, a2, a3, sub_1D904E304, v17, a7, a9);
}

uint64_t sub_1D8D95E5C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t MediaRequestControllerProtocol.perform(params:account:telemetry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a7 + 72);

  v15(a1, a2, a3, sub_1D9014D5C, v14, a6, a7);
}

uint64_t sub_1D8D95F6C()
{

  return swift_deallocObject();
}

uint64_t EpisodeMediaType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F69647561;
  }

  if (a1 == 1)
  {
    return 0x6F65646976;
  }

  return 0x6C616E7265747865;
}

void sub_1D8D95FF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v27 = a4;
  v28 = a2;
  v7 = type metadata accessor for MediaRequest.Params(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    [a3 beginBuildingRequest];
  }

  v12 = type metadata accessor for MediaRequestBuilder();
  sub_1D8D96644(a1);
  v13 = sub_1D8D963C0(a1);
  sub_1D8D85B08(a1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  sub_1D8D85D0C(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + ((v14 + 24) & ~v14));
  v35 = sub_1D905064C;
  v36 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D8D85118;
  v34 = &block_descriptor_77_0;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 thenWithBlock_];
  _Block_release(v16);

  sub_1D8D85B08(a1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (v14 + 40) & ~v14;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = a3;
  v20[3] = v21;
  v20[4] = v29;
  sub_1D8D85D0C(v11, v20 + v18);
  v22 = v30;
  *(v20 + v19) = v30;
  v23 = v28;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v35 = sub_1D9050650;
  v36 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D8D5960C;
  v34 = &block_descriptor_84_1;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  swift_unknownObjectRetain();

  v26 = v22;

  [v17 addFinishBlock_];
  _Block_release(v24);
}

id sub_1D8D963C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaRequest.Params(0);
  sub_1D8ECA48C(a1 + *(v9 + 112), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D8E677CC(v4);
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 podcastsMediaAPIHostUrl];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v12 = [v11 asyncValuePromiseOnQueue_];

    return v12;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = sub_1D9176B1C();
    v15 = [objc_opt_self() promiseWithResult_];

    (*(v6 + 8))(v8, v5);
    return v15;
  }
}

uint64_t sub_1D8D96644(uint64_t result)
{
  v1 = *(result + 43);
  if (v1 != 5)
  {
    v2 = result;
    if (sub_1D8FDE630(*(result + 43), 0) & 1) == 0 || (result = *(v2 + 41), result != 7) && (result = sub_1D8D8D46C(result, 1u), (result))
    {

      return sub_1D8FDE630(v1, 0);
    }
  }

  return result;
}

uint64_t sub_1D8D96724(void *a1, char a2, uint64_t (*a3)(void *), uint64_t a4, void *a5)
{
  v6 = a1;
  if (a2)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD0F68);
    v9 = a5;
    sub_1D8D81A00(v6, 1);
    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();

    sub_1D8D99898(v6, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315651;
      v14 = sub_1D8D6FDF8();
      v16 = sub_1D8CFA924(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      swift_getErrorValue();
      v17 = sub_1D9179D2C();
      v19 = sub_1D8CFA924(v17, v18, &v21);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Unable to fetch downloaded FairPlay episodes with error: %{private,mask.hash}s.", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    a1 = MEMORY[0x1E69E7CC0];
  }

  return a3(a1);
}

uint64_t sub_1D8D96940()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E4C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAB1E50 = result;
  return result;
}

void sub_1D8D96BA0(unint64_t a1, void *a2, void (*a3)(id, void), uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = a2;
    v8[5] = a1;
    sub_1D8D1F93C(a3, a4);
    v9 = a2;

    sub_1D8EAC264(v10, sub_1D8EAD9DC, v8);

    return;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1EDCD0F68);
  v12 = a2;
  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_1D8D6FDF8();
    v19 = sub_1D8CFA924(v17, v18, &v24);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "%s No episodes found requiring renewal.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  if (a3)
  {
    v20 = type metadata accessor for FairPlayValidationManager.Response();
    v21 = objc_allocWithZone(v20);
    v22 = MEMORY[0x1E69E7CC0];
    *&v21[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = MEMORY[0x1E69E7CC0];
    *&v21[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v22;
    *&v21[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v22;
    v25.receiver = v21;
    v25.super_class = v20;
    v23 = objc_msgSendSuper2(&v25, sel_init);
    a3(v23, 0);
  }
}

uint64_t sub_1D8D96E20()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8D96E70(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  if (a4)
  {
    sub_1D9176E8C();
    v12 = sub_1D9176EAC();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D9176EAC();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  a5(v11);

  return sub_1D8D798AC(v11);
}

void sub_1D8D96FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, char a23)
{
  if (a23)
  {
    v23 = 8;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 & 0xFFFFFFF8 | (a22 >> 3) & 7;
  if (v24 <= 3)
  {
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 != 1)
        {
          return;
        }

        sub_1D8F6F1DC(a1, a2, a3, a4, a5, a6);
        a1 = a7;
      }

      goto LABEL_11;
    }

    if (v24 == 2)
    {
      v28 = a5;
      v29 = a6;
      v26 = a3;
      v27 = a4;
      v25 = a2;
      v31 = a7;

      sub_1D8F6F1DC(v25, v26, v27, v28, v29, v31);

      sub_1D8F6F690(a11, a12, a13, a14, a15, a16);
      LOBYTE(a6) = a22 & 0xC7;
      a1 = a17;
      a2 = a18;
      a3 = a19;
      a4 = a20;
      a5 = a21;
    }

    goto LABEL_26;
  }

  if (v24 > 5)
  {
    if (v24 == 6)
    {

LABEL_11:

      return;
    }

    if (v24 == 7)
    {

      sub_1D8F6F6A4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }

  else
  {
    if (v24 == 4)
    {
      sub_1D8F6F1DC(a1, a2, a3, a4, a5, a6);

      sub_1D8F6F690(a10, a11, a12, a13, a14, a15);
      a1 = a16;
      a2 = a17;
      a3 = a18;
      a4 = a19;
      a5 = a20;
      LOBYTE(a6) = a21;
LABEL_26:

      sub_1D8F6F1DC(a1, a2, a3, a4, a5, a6);
      return;
    }
  }
}

void sub_1D8D97288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D9176A5C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1D8D972F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D8D798AC(v5);
  }

  v11 = (*(v7 + 32))(v9, v5, v6);
  v12 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v11);
  *(&v14 - 2) = v9;

  os_unfair_lock_lock((v12 + 24));
  sub_1D9050608((v12 + 16), &v15);
  os_unfair_lock_unlock((v12 + 24));
  v13 = v15;

  result = (*(v7 + 8))(v9, v6);
  if (v13)
  {
    [v13 beginRequestEncoding];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8D97588()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t FairPlayRolloutController.didRollbackStatusChange(completion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D9177E0C();
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8D978EC();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = ObjectType;
  aBlock[4] = sub_1D8D983E0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v7, v13);
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_1D8D978B4()
{

  return swift_deallocObject();
}

id sub_1D8D978EC()
{
  v1 = v0;
  v2 = sub_1D9178E0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue;
  v9 = *(v0 + OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue);
  }

  else
  {
    v11 = sub_1D8CFD888();
    v18 = "ion/ActiveSessionStore]:";
    v19 = v11;
    sub_1D9177E5C();
    v20 = MEMORY[0x1E69E7CC0];
    v16[1] = sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
    v17 = v2;
    sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D91792CC();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v17);
    v12 = sub_1D9178E4C();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

uint64_t sub_1D8D97B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_1D8D93AB0(a2);
    if (v4)
    {
      result = swift_unknownObjectRetain();
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1D8D97BDC()
{
  v2 = 7;
  sub_1D8D76684(&v2, &v3);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState) = v3;

  v2 = 8;
  sub_1D8D76684(&v2, &v3);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState) = v3;
}

uint64_t sub_1D8D97CE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

id sub_1D8D97D28()
{
  result = [objc_allocWithZone(type metadata accessor for FairPlayMigrationController()) init];
  qword_1EDCD2918 = result;
  return result;
}

uint64_t sub_1D8D97F90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8D97FCC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1D8D98060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  ObjectType = swift_getObjectType();
  v9 = sub_1D9177E0C();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = ObjectType;
  aBlock[4] = v19;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v17);
  _Block_release(v17);
  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

uint64_t sub_1D8D98368()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D983EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8D99070;
  *(v8 + 24) = v7;
  v11[4] = sub_1D8D597EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D5960C;
  v11[3] = &block_descriptor_13;
  v9 = _Block_copy(v11);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8D98540()
{

  return swift_deallocObject();
}

void sub_1D8D98588(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1D8D98628(v8, v8, a2, a3, a4);
  }

  else
  {
    (a2)();
  }
}

uint64_t sub_1D8D98628(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177F1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v15 = *(a1 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v13 = v15;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v16 = a2;

  v17 = v15;
  LOBYTE(v15) = sub_1D9177F4C();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_1D917744C();
  __swift_project_value_buffer(v18, qword_1EDCD0F68);
  v19 = sub_1D917741C();
  v20 = sub_1D9178CEC();
  v21 = os_log_type_enabled(v19, v20);
  v37 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v38);
    _os_log_impl(&dword_1D8CEC000, v19, v20, "%s Determining migration status.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  if (qword_1EDCD2AD8 != -1)
  {
    swift_once();
    if (_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0())
    {
      goto LABEL_7;
    }

LABEL_20:
    v31 = sub_1D917741C();
    v32 = sub_1D9178CEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v38);
      *(v33 + 12) = 1026;
      *(v33 + 14) = 0;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "%s Migration unnecessary, fairPlayV2Enabled: %{BOOL,public}d.", v33, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    a3(v35);
  }

  if ((_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  NSUserDefaults.fairPlayVersion.getter(&v38);

  if (v38)
  {
    v25 = 12918;
  }

  else
  {
    v25 = 12662;
  }

  if (v38)
  {
    v26 = sub_1D9179ACC();

    if ((v26 & 1) == 0)
    {
      sub_1D8D98C80(sub_1D8D99CA8, v14);
    }
  }

  else
  {
  }

  v27 = sub_1D917741C();
  v28 = sub_1D9178CEC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D8CFA924(v25, 0xE200000000000000, &v38);
    _os_log_impl(&dword_1D8CEC000, v27, v28, "%s Should attempt migration, fairPlayVersion: %{public}s.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  sub_1D8D99CB4(1, v37, a3, a4, a5);
}

uint64_t sub_1D8D98B74()
{

  return swift_deallocObject();
}

void NSUserDefaults.fairPlayVersion.getter(BOOL *a1@<X8>)
{

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v1 stringForKey_];

  v6 = 0;
  if (v4)
  {
    sub_1D917820C();

    v5 = sub_1D917980C();

    if (v5 == 1)
    {
      v6 = 1;
    }
  }

  *a1 = v6;
}

uint64_t sub_1D8D98C80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_1EDCD0F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD0F68);
  v15 = sub_1D917741C();
  v16 = sub_1D9178CEC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
    _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Determining reattempting migration status.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1DA72CB90](v18, -1, -1);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 privateQueueContext];

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = ObjectType;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_1D8D998C8;
  v23[4] = v21;
  v23[5] = v20;
  v23[6] = ObjectType;
  aBlock[4] = sub_1D8EA9864;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_85_1;
  v24 = _Block_copy(aBlock);

  v25 = v20;

  [v25 performBlock_];
  _Block_release(v24);
}

uint64_t sub_1D8D99024()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D99080(id *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = a1;
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    sub_1D8EAA118(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v40 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
      *(v9 + 12) = 2082;
      swift_getErrorValue();
      v11 = sub_1D9179D2C();
      v13 = sub_1D8CFA924(v11, v12, &v40);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Unable to create local bag snapshot, cannot determine rollback status %{public}s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    goto LABEL_27;
  }

  v14 = [a1[2] BOOLForKey_];
  v15 = [v14 unsafeSnapshotSyncValue];

  if (!v15)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD0F68);
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_26;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
    goto LABEL_25;
  }

  v16 = [v15 BOOLValue];

  v17 = objc_opt_self();
  v18 = [v17 _applePodcastsFoundationSharedUserDefaults];
  v19 = sub_1D8D6D320();
  if (v19 == 2)
  {
    v20 = qword_1ECAB5808;
    v21 = off_1ECAB5810;

    v22 = sub_1D8D6D934(v20, v21, 1);
  }

  else
  {
    v22 = v19;
  }

  if (v16 == (v22 & 1))
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v38 = sub_1D917744C();
    __swift_project_value_buffer(v38, qword_1EDCD0F68);
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_26;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
    v28 = "%s Rollback status unchanged.";
LABEL_25:
    _os_log_impl(&dword_1D8CEC000, v24, v25, v28, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1DA72CB90](v27, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
LABEL_26:

LABEL_27:
    v37 = 0;
    return a3(v37);
  }

  v29 = [v17 _applePodcastsFoundationSharedUserDefaults];
  v30 = sub_1D917873C();

  v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v29 setValue:v30 forKey:v31];

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917744C();
  __swift_project_value_buffer(v32, qword_1EDCD0F68);
  v33 = sub_1D917741C();
  v34 = sub_1D9178CFC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
    _os_log_impl(&dword_1D8CEC000, v33, v34, "%s Rollback status changed.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v37 = 1;
  return a3(v37);
}

uint64_t objectdestroy_6Tm()
{

  sub_1D8D99898(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v6 = (v1 + v3 + *(v2 + 36));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return swift_deallocObject();
}

void sub_1D8D99898(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D8D998D4(char a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v6 = sub_1D917741C();
    v12 = sub_1D9178CEC();
    if (!os_log_type_enabled(v6, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v22);
    *(v13 + 12) = 1026;
    *(v13 + 14) = 0;
    _os_log_impl(&dword_1D8CEC000, v6, v12, "%s Should not reattempt migration, hasLegacyKeys: %{BOOL,public}d.", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    v10 = v13;
    goto LABEL_11;
  }

  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 fairPlayMigrationRetryCount];

  if (v4 > 5)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = sub_1D917741C();
    v7 = sub_1D9178CEC();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v22);
    *(v8 + 12) = 2050;
    *(v8 + 14) = v4;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Should not reattempt migration, migrationRetryCount: %{public}ld.", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    v10 = v8;
LABEL_11:
    MEMORY[0x1DA72CB90](v10, -1, -1);
LABEL_12:

    v15 = 0;
    return a2(v15);
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD0F68);
  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v22);
    *(v19 + 12) = 2048;
    *(v19 + 14) = v4;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Migration should be reattempted, migrationRetryCount: %ld.", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v15 = 1;
  return a2(v15);
}

uint64_t sub_1D8D99CB4(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    return a3();
  }

  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;

  sub_1D8EA0680(sub_1D8EA98D8, v8);
}

uint64_t sub_1D8D99D6C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D99F4C()
{
  v1 = v0[1];
  v30[0] = *v0;
  v30[1] = v1;
  v30[2] = v0[2];
  result = sub_1D917669C();
  if (result)
  {
    v3 = result;
    v29 = MEMORY[0x1E69E7CC0];
    v26 = sub_1D917820C();
    v27 = v4;
    sub_1D91793EC();
    if (*(v3 + 16) && (v5 = sub_1D8D6550C(v25), (v6 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v5, v28);
      sub_1D8D9A308(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v7 = v26;
        sub_1D8D461A0(v30, v25);
        v8 = sub_1D8D9A9AC(v7, v30);
        sub_1D8D9AE34(v30);
        sub_1D8F3C290(v8, 0);
        v10 = v9;

        sub_1D8D9B2F8(v10);
      }
    }

    else
    {
      sub_1D8D9A308(v25);
    }

    v26 = sub_1D917820C();
    v27 = v11;
    sub_1D91793EC();
    if (*(v3 + 16) && (v12 = sub_1D8D6550C(v25), (v13 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v12, v28);
      sub_1D8D9A308(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v14 = v26;
        sub_1D8D461A0(v30, v25);
        v15 = sub_1D8D9A9AC(v14, v30);
        sub_1D8D9AE34(v30);
        sub_1D8F3C290(v15, 1);
        v17 = v16;

        sub_1D8D9B2F8(v17);
      }
    }

    else
    {
      sub_1D8D9A308(v25);
    }

    v26 = sub_1D917820C();
    v27 = v18;
    sub_1D91793EC();
    if (*(v3 + 16) && (v19 = sub_1D8D6550C(v25), (v20 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v19, v28);
      sub_1D8D9A308(v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v21 = v26;
        sub_1D8D461A0(v30, v25);
        v22 = sub_1D8D9A9AC(v21, v30);
        sub_1D8D9AE34(v30);
        sub_1D8F3C290(v22, 2);
        v24 = v23;

        sub_1D8D9B2F8(v24);
      }
    }

    else
    {

      sub_1D8D9A308(v25);
    }

    v25[0] = v29;
    sub_1D91778BC();
  }

  return result;
}

uint64_t sub_1D8D9A35C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8D9A43C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_48;
  }

  v7 = sub_1D8D461A0(a2, v54);
  while (2)
  {
    v44 = &v42;
    MEMORY[0x1EEE9AC00](v7);
    v46 = &v42 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v6);
    v8 = 0;
    v5 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v47 = 0;
    v48 = (v9 + 63) >> 6;
    v49 = v3;
    v50 = v2;
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v15 = v12 | (v8 << 6);
      v16 = *(v3 + 48);
      v51 = v15;
      v17 = *(v16 + 8 * v15);
      v6 = [v17 entity];
      v18 = [v6 name];

      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v17;
      v53 = v11;
      v20 = v2[1];
      v6 = sub_1D917820C();
      v22 = v21;

      if (*(v20 + 16))
      {
        sub_1D9179DBC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v23 = sub_1D9179E1C();
        v24 = -1 << *(v20 + 32);
        v25 = v23 & ~v24;
        if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_24:

          goto LABEL_37;
        }

        v26 = ~v24;
        while (1)
        {
          v27 = (*(v20 + 48) + 16 * v25);
          v28 = *v27 == v6 && v27[1] == v22;
          if (v28 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v3 = v49;
        v2 = v50;
        v11 = v53;
        v17 = v19;
LABEL_27:
        v29 = v2;
        v30 = *v2;
        if (v30)
        {
          v31 = [v17 objectID];
          if ((v30 & 0xC000000000000001) != 0)
          {
            v32 = v31;
            v6 = sub_1D917939C();

            v2 = v29;
            if (v6)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v6 = v31;
            v43 = v17;
            if (*(v30 + 16))
            {
              v53 = v11;
              v52 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
              v17 = v6;
              v33 = sub_1D917913C();
              v34 = -1 << *(v30 + 32);
              v6 = v33 & ~v34;
              if ((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
              {
                v35 = ~v34;
                while (1)
                {
                  v36 = *(*(v30 + 48) + 8 * v6);
                  v37 = sub_1D917914C();

                  if (v37)
                  {
                    break;
                  }

                  v6 = (v6 + 1) & v35;
                  if (((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                v3 = v49;
                v2 = v50;
                v11 = v53;
                goto LABEL_41;
              }

LABEL_36:

LABEL_37:
              v3 = v49;
              v2 = v50;
              v11 = v53;
            }

            else
            {

              v2 = v29;
            }
          }
        }

        else
        {
          v2 = v29;
LABEL_41:

LABEL_42:
          *&v46[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
LABEL_45:
            v39 = sub_1D8D9ADFC(v46, v45, v47, v3);
            goto LABEL_46;
          }
        }
      }

      else
      {

        v11 = v53;
      }
    }

    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v8 >= v48)
      {
        goto LABEL_45;
      }

      v14 = *(v5 + 8 * v8);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v11 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_48:
    sub_1D8D461A0(v2, v54);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v41 = swift_slowAlloc();
  sub_1D8D461A0(v2, v54);
  v39 = sub_1D8F3CAF8(v41, v5, v3, v2);

  MEMORY[0x1DA72CB90](v41, -1, -1);
LABEL_46:
  sub_1D8D9AE34(v2);
  return v39;
}

id sub_1D8D9A97C()
{
  result = [objc_allocWithZone(type metadata accessor for AnalyticsIdentifierManager()) init];
  qword_1EDCD2A80 = result;
  return result;
}

uint64_t sub_1D8D9A9AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D8D9A43C(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v46 = MEMORY[0x1E69E7CD0];
  sub_1D8D461A0(a2, v44);
  sub_1D917931C();
  v4 = sub_1D917938C();
  if (v4)
  {
    v43 = v2;
    v5 = v4;
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v6 = v5;
    v2 = v43;
    do
    {
      v44[0] = v6;
      swift_dynamicCast();
      v7 = v45;
      v8 = [v45 entity];
      v9 = [v8 name];

      if (v9)
      {
        v10 = v2[1];
        v11 = sub_1D917820C();
        v13 = v12;

        if (!*(v10 + 16) || (sub_1D9179DBC(), _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0(), v14 = sub_1D9179E1C(), v15 = -1 << *(v10 + 32), v16 = v14 & ~v15, ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
        {
LABEL_4:

          goto LABEL_5;
        }

        v17 = ~v15;
        while (1)
        {
          v18 = (*(v10 + 48) + 16 * v16);
          v19 = *v18 == v11 && v18[1] == v13;
          if (v19 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      v20 = *v2;
      if (!*v2)
      {
        goto LABEL_22;
      }

      v21 = [v7 objectID];
      v22 = v21;
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = v21;
        v24 = sub_1D917939C();

        if (v24)
        {
          goto LABEL_22;
        }
      }

      else if (*(v20 + 16))
      {
        sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
        v33 = sub_1D917913C();
        v34 = -1 << *(v20 + 32);
        v35 = v33 & ~v34;
        if ((*(v20 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            v37 = *(*(v20 + 48) + 8 * v35);
            v38 = sub_1D917914C();

            if (v38)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v20 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v2 = v43;
LABEL_22:
          v25 = v45;
          v26 = *(v3 + 16);
          if (*(v3 + 24) <= v26)
          {
            sub_1D8EFCB04(v26 + 1);
          }

          v3 = v46;
          result = sub_1D917913C();
          v28 = v3 + 56;
          v29 = -1 << *(v3 + 32);
          v30 = result & ~v29;
          v31 = v30 >> 6;
          if (((-1 << v30) & ~*(v3 + 56 + 8 * (v30 >> 6))) != 0)
          {
            v32 = __clz(__rbit64((-1 << v30) & ~*(v3 + 56 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v39 = 0;
            v40 = (63 - v29) >> 6;
            do
            {
              if (++v31 == v40 && (v39 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v41 = v31 == v40;
              if (v31 == v40)
              {
                v31 = 0;
              }

              v39 |= v41;
              v42 = *(v28 + 8 * v31);
            }

            while (v42 == -1);
            v32 = __clz(__rbit64(~v42)) + (v31 << 6);
          }

          *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
          *(*(v3 + 48) + 8 * v32) = v25;
          ++*(v3 + 16);
          goto LABEL_6;
        }

LABEL_31:

        v2 = v43;
      }

      else
      {
      }

LABEL_5:

LABEL_6:
      v6 = sub_1D917938C();
    }

    while (v6);
  }

  sub_1D8D9AE34(v2);
  return v3;
}

id sub_1D8D9AE64()
{
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store] = 0;
  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_accountStore;
  *&v0[v1] = [objc_opt_self() ams_sharedAccountStore];
  v2 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E698CA58]) init];
  v3 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_promiseLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v0[v3] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AnalyticsIdentifierManager();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1D8DB2F50();

  return v5;
}

char *sub_1D8D9AF48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8D9AF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8D9AF68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46F8, &qword_1D918A118);
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
    v10 = MEMORY[0x1E69E7CC0];
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

os_log_t _MTLogCategoryDownload()
{
  v0 = os_log_create("com.apple.podcasts", "Downloads");

  return v0;
}

id PendingDownloadRemovals.init(episodesPendingDeletion:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  *&v1[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1D8D9B144(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t PendingDownloadRemovals.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FA0, &qword_1D918DE38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D91FCC();
  sub_1D9179F1C();
  v9[1] = *(v2 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FA8, &qword_1D918DE40);
  sub_1D8D9395C(&qword_1ECAB0EE0, &protocol conformance descriptor for <A> OSAllocatedUnfairLock<A>);
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D8D9B2F8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D8D9B3EC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D8D9B3EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46F8, &qword_1D918A118);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t OSAllocatedUnfairLock<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSAllocatedUnfairLock.current.getter(v10, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D9179BBC();
  (*(v7 + 8))(v9, a3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

void sub_1D8D9B6E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D8D9BB54();
}

uint64_t NSUserDefaults.setCodable<A>(value:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1D91769EC();
  swift_allocObject();
  sub_1D91769DC();
  sub_1D91769BC();
  v10 = sub_1D91769CC();
  v12 = v11;
  v13 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v7 setValue:v13 forKey:v14];

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F88);

  v16 = sub_1D917741C();
  v17 = sub_1D9178CEC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D8CFA924(a2, a3, &v21);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Stored value for key '%s'", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
    sub_1D8D7567C(v10, v12);
  }

  else
  {
    sub_1D8D7567C(v10, v12);
  }
}

uint64_t sub_1D8D9BB54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v5 - v1;
  memset(&v5[1], 0, 41);
  *&v5[0] = MEMORY[0x1E69E7CD0];
  *(&v5[0] + 1) = MEMORY[0x1E69E7CD0];
  sub_1D8D9BDC0(v5);
  sub_1D8D32494("FetchedResultsPublisher FRC Update", 34, 2, v2);
  v3 = sub_1D917734C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_1D8D9BE38(v2);
}

uint64_t NSUserDefaults.observeChanges(for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB360, &qword_1D91BC170);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v11 = a1;
  v12 = a2;
  v13 = v2;
  (*(v8 + 104))(&v10[-v7], *MEMORY[0x1E69E8650], v6);
  return sub_1D91788FC();
}

unint64_t sub_1D8D9BD5C()
{
  result = qword_1ECAAFE88;
  if (!qword_1ECAAFE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4550, &qword_1D91BC180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFE88);
  }

  return result;
}

uint64_t sub_1D8D9BDC0(_OWORD *a1)
{
  v3 = v1 + qword_1ECAB8650;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = a1[2];
  *(v3 + 41) = *(a1 + 41);
  return sub_1D8D4F5BC(v4, v5);
}

uint64_t sub_1D8D9BE38(uint64_t a1)
{
  v3 = qword_1EDCD15F8;
  swift_beginAccess();
  sub_1D8D25E44(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D8D9BE98()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8D9BF94, 0, 0);
}

uint64_t sub_1D8D9BF94(uint64_t a1)
{
  v2 = sub_1D917737C();
  sub_1D91773DC();
  v3 = sub_1D9178F4C();
  result = sub_1D917918C();
  if (result)
  {
    v5 = *(v1 + 48);
    if ((*(v1 + 168) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v7 = *(v1 + 80);
        v6 = *(v1 + 88);
        v8 = *(v1 + 72);

        sub_1D917740C();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
          v9 = "SUCCESS";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 144);
  v13 = *(v1 + 112);
  v14 = *(v1 + 96);

  v12(v13, v14);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_1D8D9C194(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8668, &qword_1D91A2218);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = a3;
  swift_unknownObjectRetain();
  v19 = a1;
  v20 = a5;
  v21 = a7;
  sub_1D917928C();
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1D917704C();

    v22 = sub_1D917705C();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = sub_1D917705C();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (v21)
  {
    sub_1D917704C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1D917705C();
  (*(*(v25 - 8) + 56))(v14, v24, 1, v25);
  sub_1D8D9C3D8(v27, v17, a6);

  sub_1D8D08A50(v14, &qword_1ECAB8668, &qword_1D91A2218);
  sub_1D8D08A50(v17, &qword_1ECAB8668, &qword_1D91A2218);
  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

void sub_1D8D9C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8CFAD1C(a1, v8);
  swift_dynamicCast();
  v4 = [v7 objectID];

  if ((a3 - 3) < 2)
  {
    v5 = sub_1D8D9C618(v8);
    if (*v6)
    {
      v4 = v4;
      sub_1D8D418D4(&v7, v4);
    }

    (v5)(v8, 0);
    goto LABEL_7;
  }

  if (a3 == 1 || a3 == 2)
  {
LABEL_7:

    return;
  }

  sub_1D91796DC();
  __break(1u);
}

uint64_t sub_1D8D9C520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8D9C678()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v39 - v5;
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  v13 = swift_allocObject();
  v14 = v0 + qword_1ECAB8650;
  swift_beginAccess();
  v15 = *(v14 + 1);
  v50[0] = *v14;
  v16 = *(v14 + 2);
  v50[1] = v15;
  v51[0] = v16;
  *(v51 + 9) = *(v14 + 41);
  if (!*&v50[0])
  {
    return swift_deallocUninitializedObject();
  }

  v45 = v1;
  *(v13 + 16) = *&v50[0];
  *(v13 + 24) = *(v14 + 8);
  *(v13 + 40) = *(v14 + 24);
  *(v13 + 56) = *(v14 + 40);
  *(v13 + 72) = v14[56];
  v17 = qword_1EDCD15F8;
  swift_beginAccess();
  sub_1D8D088B4(v0 + v17, v6, &qword_1ECAB6DE0, &qword_1D9195250);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1D8D08A50(v6, &qword_1ECAB6DE0, &qword_1D9195250);
  }

  else
  {
    v19 = v8;
    v42 = v8;
    v41 = *(v8 + 32);
    v44 = v12;
    v41(v12, v6, v7);
    v43 = *(v0 + qword_1ECAB8608);
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(v8 + 16);
    v21 = v46;
    v20(v46, v12, v7);
    v22 = (*(v19 + 80) + 64) & ~*(v19 + 80);
    v23 = swift_allocObject();
    v39[1] = v49;
    v24 = v45;
    v25 = v45[10];
    v23[2] = v25;
    v26 = v7;
    v27 = v24[11];
    v23[3] = v27;
    v28 = v24[12];
    v23[4] = v28;
    v29 = v24[13];
    v30 = v40;
    v23[5] = v29;
    v23[6] = v30;
    v23[7] = v13;
    v31 = v21;
    v32 = v26;
    (v41)(v23 + v22, v31);
    v49[2] = sub_1D8FBD79C;
    v49[3] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v49[0] = sub_1D8CF5F60;
    v49[1] = &block_descriptor_80_1;
    v33 = _Block_copy(aBlock);
    *&v34 = v25;
    *(&v34 + 1) = v27;
    *&v35 = v28;
    *(&v35 + 1) = v29;
    v52 = v34;
    v53 = v35;
    type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(255, &v52);
    v36 = sub_1D91791BC();
    (*(*(v36 - 8) + 16))(&v52, v50, v36);

    [v43 performBlock_];
    _Block_release(v33);
    v53 = 0u;
    memset(v54, 0, sizeof(v54));
    v52 = 0u;
    sub_1D8D9BDC0(&v52);
    v37 = v42;
    v38 = v47;
    (*(v42 + 56))(v47, 1, 1, v32);
    sub_1D8D9BE38(v38);
    (*(v37 + 8))(v44, v32);
  }
}

uint64_t sub_1D8D9CC20()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8D9CCEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8D9CE64, 0, 0);
}

void sub_1D8D9CE04(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D8D9C678();
}

uint64_t sub_1D8D9CE64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8D9CEE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D8D9CF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D9CF7C()
{
  v1 = v0;
  result = sub_1D917669C();
  if (result)
  {
    v3 = result;
    v34 = sub_1D917820C();
    sub_1D91793EC();
    if (*(v3 + 16) && (v4 = sub_1D8D6550C(v37), (v5 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v4, v38);
      sub_1D8D9A308(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v6 = v0[4];
        v7 = v0[5];
        v8 = v0[2];
        v9 = v0[3];
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        sub_1D8D9D4E8(v34, 0);
        v11 = v10;
        v13 = v12;

        if (*(v11 + 16))
        {
          sub_1D8E7496C(v11, v6, v7, 0);
        }

        if (*(v13 + 16))
        {
          sub_1D8E7496C(v13, v8, v9, 0);
        }
      }
    }

    else
    {
      sub_1D8D9A308(v37);
    }

    v35 = sub_1D917820C();
    sub_1D91793EC();
    if (*(v3 + 16) && (v14 = sub_1D8D6550C(v37), (v15 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v14, v38);
      sub_1D8D9A308(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v16 = v1[4];
        v17 = v1[5];
        v18 = v1[2];
        v19 = v1[3];
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        sub_1D8D9D4E8(v35, 1);
        v21 = v20;
        v23 = v22;

        if (*(v21 + 16))
        {
          sub_1D8E7496C(v21, v16, v17, 1u);
        }

        if (*(v23 + 16))
        {
          sub_1D8E7496C(v23, v18, v19, 1u);
        }
      }
    }

    else
    {
      sub_1D8D9A308(v37);
    }

    v36 = sub_1D917820C();
    sub_1D91793EC();
    if (*(v3 + 16) && (v24 = sub_1D8D6550C(v37), (v25 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v24, v38);
      sub_1D8D9A308(v37);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      result = swift_dynamicCast();
      if (result)
      {
        v26 = v1[4];
        v27 = v1[5];
        v28 = v1[2];
        v29 = v1[3];
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        sub_1D8D9D4E8(v36, 1);
        v31 = v30;
        v33 = v32;

        if (*(v31 + 16))
        {
          sub_1D8E7496C(v31, v26, v27, 2u);
        }

        if (*(v33 + 16))
        {
          sub_1D8E7496C(v33, v28, v29, 2u);
        }
      }
    }

    else
    {

      return sub_1D8D9A308(v37);
    }
  }

  return result;
}

void sub_1D8D9D4E8(uint64_t a1, char a2)
{
  v2 = a1;
  v37[2] = MEMORY[0x1E69E7CD0];
  v37[3] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    sub_1D8E74DF0();
    sub_1D9178B3C();
    v2 = v37[4];
    v3 = v37[5];
    v4 = v37[6];
    v5 = v37[7];
    v6 = v37[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!sub_1D917938C() || (sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), swift_dynamicCast(), v15 = v37[0], v13 = v5, v14 = v6, !v37[0]))
  {
LABEL_37:
    sub_1D8D1B144(v2);
    return;
  }

  while (1)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = [v17 uuid];
      if (v19)
      {
        v20 = v19;
        v35 = sub_1D917820C();
        v22 = v21;

        if (a2)
        {
          swift_beginAccess();
          v23 = *(v34 + 48);
        }

        else
        {
          v23 = 0;
        }

        v24 = sub_1D8D9D894(v17, v23);

        if (v24)
        {
          sub_1D8D19AFC(v37, v35, v22);

LABEL_10:
          v5 = v13;
          v6 = v14;
          if (v2 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (!v25 || (v26 = v25, (v27 = [v25 uuid]) == 0))
    {

      goto LABEL_10;
    }

    v6 = v14;
    v28 = v27;
    v29 = sub_1D917820C();
    v31 = v30;

    if (a2)
    {
      swift_beginAccess();
      v32 = *(v34 + 48);
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_1D8D9D894(v26, v32);

    if (v33)
    {
      sub_1D8D19AFC(v37, v29, v31);
    }

    v5 = v13;
    if (v2 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_37;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1D8D9D894(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [a1 changedValues];
    v5 = sub_1D917805C();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v11 = 0;
    v23 = a2;
    if (v8)
    {
      while (1)
      {
        v12 = v11;
LABEL_9:
        v13 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
        v2 = *v13;
        v4 = v13[1];
        v24[0] = *v13;
        v24[1] = v4;
        MEMORY[0x1EEE9AC00](v10);
        v22[2] = v24;

        if (sub_1D8D9DF90(sub_1D8D9E220, v22, v23))
        {
          break;
        }

        v8 &= v8 - 1;

        v11 = v12;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      swift_bridgeObjectRelease_n();
      v15 = qword_1EDCD0F80;

      if (v15 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          swift_bridgeObjectRelease_n();
          return 0;
        }

        v8 = *(v5 + 64 + 8 * v12);
        ++v11;
        if (v8)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_14:
    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F88);

    v17 = sub_1D917741C();
    v18 = sub_1D9178CDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[0] = v20;
      *v19 = 136315138;
      v21 = sub_1D8CFA924(v2, v4, v24);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "Found requested key in notification: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  return 1;
}

uint64_t ArtworkRequest.resized(to:displayScale:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *(v5 + 9);
  v55 = *(v5 + 8);
  v56 = v9;
  v57 = *(v5 + 10);
  v10 = *(v5 + 5);
  v51 = *(v5 + 4);
  v52 = v10;
  v11 = *(v5 + 7);
  v53 = *(v5 + 6);
  v54 = v11;
  v12 = *(v5 + 1);
  v47 = *v5;
  v48 = v12;
  v13 = *(v5 + 3);
  v49 = *(v5 + 2);
  v50 = v13;
  if (a2)
  {
    v14 = v5[24];
  }

  else
  {
    v14 = a1;
  }

  v43 = *(v5 + 201);
  v44 = *(v5 + 200);
  v15 = *(v5 + 202);
  v16 = *(v5 + 26);
  v17 = *(v5 + 216);
  v18 = *(v5 + 203);
  sub_1D8D728EC((v5 + 28), v46);
  *(a3 + 224) = 0u;
  *(a3 + 201) = 16;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0;
  sub_1D8D36E5C(&v47, v45);

  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, v14);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a4);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a5);
  v19 = *(&v49 + 1);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, *(&v49 + 1));
  v20 = *&v50;
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, *&v50);
  v59.width = 0.0;
  v59.height = 0.0;
  v58.width = a4;
  v58.height = a5;
  if (CGSizeEqualToSize(v58, v59))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD5E28);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v18;
      v25 = v17;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v26, 2u);
      v27 = v26;
      v17 = v25;
      v18 = v24;
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }
  }

  if (v19 == 0.0 || v20 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1EDCD5E28);
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v18;
      v32 = v16;
      v33 = v15;
      v34 = v17;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v35, 2u);
      v36 = v35;
      v17 = v34;
      v15 = v33;
      v16 = v32;
      v18 = v31;
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }
  }

  v37 = v56;
  *(a3 + 128) = v55;
  *(a3 + 144) = v37;
  *(a3 + 160) = v57;
  v38 = v52;
  *(a3 + 64) = v51;
  *(a3 + 80) = v38;
  v39 = v54;
  *(a3 + 96) = v53;
  *(a3 + 112) = v39;
  v40 = v48;
  *a3 = v47;
  *(a3 + 16) = v40;
  v41 = v50;
  *(a3 + 32) = v49;
  *(a3 + 48) = v41;
  *(a3 + 176) = a4;
  *(a3 + 184) = a5;
  *(a3 + 192) = v14;
  *(a3 + 200) = v44;
  *(a3 + 201) = v43;
  *(a3 + 202) = v15;
  *(a3 + 203) = v18;
  *(a3 + 208) = v16;
  *(a3 + 216) = v17;
  return sub_1D8D412B0(v46, a3 + 224);
}

uint64_t sub_1D8D9DF90(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v1 = sub_1D917877C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t ArtworkRequest.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1D8D36E5C(v18, &v17);
}

uint64_t sub_1D8D9E220(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC() & 1;
  }
}

uint64_t sub_1D8D9E288(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC() & 1;
  }
}

uint64_t ArtworkRequest.withoutEffects.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D8D41388(v1, a1);

  *(a1 + 208) = MEMORY[0x1E69E7CC0];
  return result;
}

void *ArtworkRequest.with(format:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (*(v2 + 152) == a1)
  {

    return sub_1D8D41388(v2, a2);
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 144);
    v64 = *(v2 + 128);
    v65 = v6;
    v7 = *(v2 + 144);
    v66 = *(v2 + 160);
    v8 = *(v2 + 48);
    v9 = *(v2 + 80);
    v60 = *(v2 + 64);
    v61 = v9;
    v10 = *(v2 + 80);
    v11 = *(v2 + 112);
    v62 = *(v2 + 96);
    v63 = v11;
    v12 = *(v2 + 16);
    v57[0] = *v2;
    v57[1] = v12;
    v13 = *(v2 + 48);
    v15 = *v2;
    v14 = *(v2 + 16);
    v58 = *(v2 + 32);
    v59 = v13;
    *&__src[128] = v64;
    *&__src[144] = v7;
    *&__src[160] = *(v2 + 160);
    *&__src[64] = v60;
    *&__src[80] = v10;
    *&__src[96] = v62;
    *&__src[112] = v5;
    *__src = v15;
    *&__src[16] = v14;
    *&__src[32] = v58;
    *&__src[48] = v8;
    ArtworkModel.with(format:)(a1, v45);
    v67[8] = *&__src[128];
    v67[9] = *&__src[144];
    v67[10] = *&__src[160];
    v67[4] = *&__src[64];
    v67[5] = *&__src[80];
    v67[6] = *&__src[96];
    v67[7] = *&__src[112];
    v67[0] = *__src;
    v67[1] = *&__src[16];
    v67[2] = *&__src[32];
    v67[3] = *&__src[48];
    sub_1D8D36E5C(v57, &v37);
    sub_1D8DB15B0(v67);
    v68 = v45[0];
    v69 = v45[1];
    v70 = v46;
    v16 = v47;
    v17 = v48;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v18 = *(v2 + 176);
    v19 = *(v2 + 184);
    v20 = *(v2 + 192);
    v21 = *(v2 + 201);
    v22 = *(v2 + 202);
    v23 = *(v2 + 208);
    v33 = *(v2 + 200);
    v34 = *(v2 + 216);
    v24 = *(v2 + 203);
    sub_1D8D728EC(v2 + 224, v36);
    __src[201] = 16;
    memset(&__src[224], 0, 40);

    sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, v20);
    sub_1D8D410BC(0x6874646977, 0xE500000000000000, v18);
    sub_1D8D410BC(0x746867696568, 0xE600000000000000, v19);
    sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v16);
    sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v17);
    v73.width = 0.0;
    v73.height = 0.0;
    v72.width = v18;
    v72.height = v19;
    if (CGSizeEqualToSize(v72, v73))
    {
      if (qword_1EDCD5E20 != -1)
      {
        swift_once();
      }

      v25 = sub_1D917744C();
      __swift_project_value_buffer(v25, qword_1EDCD5E28);
      v26 = sub_1D917741C();
      v27 = sub_1D9178CFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D8CEC000, v26, v27, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v28, 2u);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }
    }

    if (v16 == 0.0 || v17 == 0.0)
    {
      if (qword_1EDCD5E20 != -1)
      {
        swift_once();
      }

      v29 = sub_1D917744C();
      __swift_project_value_buffer(v29, qword_1EDCD5E28);
      v30 = sub_1D917741C();
      v31 = sub_1D9178CFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1D8CEC000, v30, v31, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v32, 2u);
        MEMORY[0x1DA72CB90](v32, -1, -1);
      }
    }

    *__src = v68;
    *&__src[16] = v69;
    *&__src[32] = v70;
    *&__src[40] = v16;
    *&__src[48] = v17;
    *&__src[120] = v41;
    *&__src[136] = v42;
    *&__src[152] = v43;
    *&__src[168] = v44;
    *&__src[56] = v37;
    *&__src[72] = v38;
    *&__src[88] = v39;
    *&__src[104] = v40;
    *&__src[176] = v18;
    *&__src[184] = v19;
    *&__src[192] = v20;
    __src[200] = v33;
    __src[201] = v21;
    __src[202] = v22;
    __src[203] = v24;
    *&__src[208] = v23;
    __src[216] = v34;
    sub_1D8D412B0(v36, &__src[224]);
    return memcpy(a2, __src, 0x108uLL);
  }
}

uint64_t AssetMetadata.fetch<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return sub_1D8D9E96C(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t sub_1D8D9E96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AssetSourceStep(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t AssetProcessingStep.fallback<A>(to:rethrow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, v18);
  (*(v14 + 16))(v16, a1, a4);
  return FallbackProcessingStep.init(upstream:fallback:rethrow:)(v20, v16, v11, a3, a4, a5, a6, a7);
}

uint64_t FallbackProcessingStep.init(upstream:fallback:rethrow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v15 = type metadata accessor for FallbackProcessingStep(0, v17);
  result = (*(*(a5 - 8) + 32))(a8 + *(v15 + 52), a2, a5);
  *(a8 + *(v15 + 56)) = a3;
  return result;
}

uint64_t AssetProcessingStep.fallback<A>(source:rethrow:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a1;
  v23 = a4;
  v24 = a6;
  v28 = a2;
  v27 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v22 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29[0] = AssociatedTypeWitness;
  v29[1] = a4;
  v29[2] = AssociatedConformanceWitness;
  v29[3] = a6;
  v15 = type metadata accessor for AssetSourceStep(0, v29);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(a5 + 40))(a3, a5, v17);
  AssetMetadata.fetch<A>(source:)(v26, AssociatedTypeWitness, v23, AssociatedConformanceWitness, v24, v19);
  (*(v25 + 8))(v13, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  AssetProcessingStep.fallback<A>(to:rethrow:)(v19, v28, a3, v15, a5, WitnessTable, v27);
  return (*(v16 + 8))(v19, v15);
}

id AssetProcessingStep.receiveAndSubscribe(on:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v17 = a1;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v4, a2, v9);
  v13 = type metadata accessor for ReceiveAndSubscribeOnAssetProcessingStep(0, a2, a3, v12);
  (*(v8 + 32))(&a4[*(v13 + 36)], v11, a2);
  v14 = v17;
  *a4 = v17;

  return v14;
}

uint64_t ArtworkRequest.replacingEffects(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8D41388(v2, a2);

  *(a2 + 208) = a1;
  return result;
}

uint64_t CacheDomain.disk.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for CacheDomain.DiskCaches(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t AssetProcessingStep<>.cache<A>(_:format:overwrite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v49 = a7;
  v50 = a8;
  v45 = a3;
  v46 = a9;
  v47 = a1;
  v48 = a10;
  v42 = a11;
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = sub_1D91791BC();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v18 = &v37 - v17;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v12, a4, v27);
  (*(v22 + 16))(v25, v47, a5);
  v52 = a4;
  v53 = a5;
  v47 = a5;
  v44 = a6;
  v54 = a6;
  v55 = v49;
  v56 = v50;
  v57 = v48;
  v58 = v42;
  v59 = v12;
  v40 = v12;
  swift_getAssociatedTypeWitness();
  sub_1D91791BC();
  sub_1D8D349E4(sub_1D8E5A928, v51, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v31, v18);
  v32 = v41;
  v33 = *(v41 + 48);
  if (v33(v18, 1, AssociatedTypeWitness) == 1)
  {
    v34 = v44;
    (*(v44 + 40))(a4, v44);
    if (v33(v18, 1, AssociatedTypeWitness) != 1)
    {
      (*(v38 + 8))(v18, v39);
    }
  }

  else
  {
    (*(v32 + 32))(v21, v18, AssociatedTypeWitness);
    v34 = v44;
  }

  *(&v36 + 1) = v34;
  *&v36 = v48;
  return sub_1D8DA0154(v29, v25, v45 & 1, v21, AssociatedTypeWitness, a4, v47, v50, v46, v36, v49);
}

uint64_t sub_1D8D9F804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D9FA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

void _s18PodcastsFoundation14RSSFeedUpdaterC24didDownloadFeedWithError_4data4task12requestedUrl18useBackgroundFetchys0I0_pSg_0B04DataVSgSo16NSURLSessionTaskCSgAK3URLVSgSbtF_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v47 = a1;
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v45 = sub_1D9177E0C();
  v51 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D9177E9C();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  sub_1D8D088B4(a5, v10, &unk_1ECAB5910, &qword_1D9188C90);
  v18 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D8D08A50(v10, &unk_1ECAB5910, &qword_1D9188C90);
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD1070);
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Tried to perform an RSS feed update without a URL.", v22, 2u);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }
  }

  else
  {
    v23 = *(v12 + 32);
    v44 = v17;
    v23(v17, v10, v11);
    v24 = v12;
    v43 = v12;
    v25 = v46;
    v42 = *&v46[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue];
    (*(v24 + 16))(v14, v17, v18);
    v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    v23((v29 + v26), v14, v18);
    v31 = v47;
    v30 = v48;
    *(v29 + v27) = v47;
    v32 = (v29 + v28);
    v34 = v49;
    v33 = v50;
    *v32 = v30;
    v32[1] = v34;
    *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v33;
    aBlock[4] = sub_1D8DA04C8;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_84;
    v35 = _Block_copy(aBlock);
    v36 = v25;
    v37 = v31;
    sub_1D8DA04B0(v30, v34);
    v38 = v33;
    v39 = v52;
    sub_1D9177E4C();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v40 = v54;
    v41 = v45;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v39, v40, v35);
    _Block_release(v35);
    (*(v51 + 8))(v40, v41);
    (*(v53 + 8))(v39, v55);
    (*(v43 + 8))(v44, v18);
  }
}

uint64_t sub_1D8DA0040()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_1D8D7567C(*(v0 + v5), v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DA0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  v22 = a10;
  v23 = a11;
  v19 = type metadata accessor for CacheAssetProcessingStep(0, v21);
  (*(*(a5 - 8) + 32))(a9 + v19[20], a4, a5);
  result = (*(*(a7 - 8) + 32))(a9 + v19[19], a2, a7);
  *(a9 + v19[21]) = a3;
  return result;
}

uint64_t AssetProcessingStep<>.uniquePipeline(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2, v11);

  return UniquePipeline.init(upstream:sharedCache:)(v13, a1, a2, a3, a4, a5);
}

uint64_t UniquePipeline.init(upstream:sharedCache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for UniquePipeline(0, a3, a4, a5);
  *(a6 + *(v11 + 48)) = a2;
  v14 = *(a3 - 8);
  (*(v14 + 16))(a6 + *(v11 + 44), a1, a3);
  (*(a4 + 40))(a3, a4);
  v12 = *(v14 + 8);

  return v12(a1, a3);
}

uint64_t sub_1D8DA04B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8D752C4(result, a2);
  }

  return result;
}

void sub_1D8DA04C8()
{
  v1 = *(sub_1D9176C2C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8DA05F0(v6, v0 + v2, v5, v7, v8, v9);
}

uint64_t UniquePipeline.metadata.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

void sub_1D8DA05F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v27 = a6;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9176ACC();
  v16 = sub_1D8DA0CBC(v14, v15);

  if (v16)
  {
    sub_1D8DA1170(a3, a4, a5, v27);
  }

  else
  {
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD1070);
    v18 = v13;
    (*(v11 + 16))(v13, a2, v10);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v23 = sub_1D9176ACC();
      v25 = v24;
      (*(v11 + 8))(v18, v10);
      v26 = sub_1D8CFA924(v23, v25, &v28);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Got a feed downloaded completion but the job does not exist in the queue for feedUrl: %{private,mask.hash}s. Cannot continue.", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1DA72CB90](v22, -1, -1);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t CacheAssetProcessingStep.publisher.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 + 32);
  v30 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 56);
  v8 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v29 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(a1 + 64);
  v40[0] = AssociatedTypeWitness;
  v40[1] = v4;
  v40[2] = AssociatedConformanceWitness;
  v40[3] = v13;
  v33 = type metadata accessor for Publishers.CachedAssetPublisher(0, v40);
  v36 = *(v33 - 8);
  v14 = MEMORY[0x1EEE9AC00](v33);
  v16 = &v29 - v15;
  (*(v7 + 48))(v8, v7, v14);
  v17 = *(a1 + 76);
  v31 = *(a1 + 80);
  v18 = v30;
  Publisher.cache<A>(location:cache:overwrite:alwaysAttemptRefresh:)(v2 + v31, v2 + v17, *(v2 + *(a1 + 84)), 0, AssociatedTypeWitness, v30, AssociatedConformanceWitness, v13, v16);
  (*(v32 + 8))(v11, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v20 = AssetProcessingStep.metadataTrace.getter(a1, WitnessTable, v40);
  (*(v35 + 16))(v34, v2 + v17, v18, v20);
  v38 = sub_1D917826C();
  v39 = v21;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  v22 = (*(*(a1 + 40) + 16))(*(a1 + 16));
  MEMORY[0x1DA7298F0](v22);

  v23 = v38;
  v24 = v39;
  v25 = v33;
  v26 = swift_getWitnessTable();
  v27 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(v25, v26);
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v40, "Cache", 5, 2, 0, v23, v24, v27 & 1, v37, v25, v26);

  sub_1D8D7621C(v40);
  return (*(v36 + 8))(v16, v25);
}

uint64_t sub_1D8DA0C94@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = UniquePipeline.publisher.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D8DA0CBC(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D9177F1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 96);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1D9177F4C();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v12 = *(v2 + 112);
  if (*(v12 + 16))
  {

    v13 = sub_1D8D33C70(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      return v15;
    }
  }

  if (qword_1EDCD1068 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = sub_1D917744C();
  __swift_project_value_buffer(v17, qword_1EDCD1070);

  v18 = sub_1D917741C();
  v19 = sub_1D9178CFC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    *(v20 + 14) = sub_1D8CFA924(a1, a2, &v22);
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Job does not exist in the queue: %{private,mask.hash}s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1DA72CB90](v21, -1, -1);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  return 0;
}

uint64_t UniquePipeline.publisher.getter(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14[-v9];
  (*(v4 + 48))(v5, v4, v8);
  v11 = *(v1 + *(a1 + 48));
  v15 = v5;
  v16 = v4;
  v17 = *(a1 + 32);
  v18 = v2;
  v19 = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917781C();
  sub_1D91780DC();
  sub_1D8D056BC(sub_1D8DA3B10, v14, v11);
  v12 = v20;
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

void sub_1D8DA1170(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v8 = a1;
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD1070);
    v10 = a1;

    v11 = sub_1D917741C();
    v12 = sub_1D9178CFC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 141558531;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      type metadata accessor for FeedUpdateRequest(0);
      v15 = sub_1D9176ACC();
      v17 = sub_1D8CFA924(v15, v16, &aBlock);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_1D9179D2C();
      v20 = sub_1D8CFA924(v18, v19, &aBlock);

      *(v13 + 24) = v20;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "Job %{private,mask.hash}s: Error downloading feed: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v14, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    aBlock = a1;
    v37 = a4;
    v38 = 0;
    v39 = 0;
    LOBYTE(v40) = 96;
    sub_1D8DA168C(&aBlock);
  }

  else if (a3 >> 60 == 15)
  {
    sub_1D8D77098();
    v21 = swift_allocError();
    *v22 = 9;
    aBlock = v21;
    v37 = a4;
    v38 = 0;
    v39 = 0;
    LOBYTE(v40) = 96;
    sub_1D8DA168C(&aBlock);
  }

  else
  {
    sub_1D8D752C4(a2, a3);
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD1070);

    v26 = sub_1D917741C();
    v27 = sub_1D9178D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      type metadata accessor for FeedUpdateRequest(0);
      v30 = sub_1D9176ACC();
      v32 = sub_1D8CFA924(v30, v31, &aBlock);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1D8CEC000, v26, v27, "Job %{private,mask.hash}s: Successfully downloaded feed.", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1DA72CB90](v29, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    v33 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
    v34 = swift_allocObject();
    v34[2] = v5;
    v34[3] = a2;
    v34[4] = a3;
    v40 = sub_1D8F60934;
    v41 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1D8CF5F60;
    v39 = &block_descriptor_41;
    v35 = _Block_copy(&aBlock);

    sub_1D8DA04B0(a2, a3);

    [v33 performBlock_];
    _Block_release(v35);
    sub_1D8D75668(a2, a3);
  }
}

uint64_t sub_1D8DA164C()
{

  sub_1D8D7567C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8DA168C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 24) = *a1;
  *(v11 + 16) = v2;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a1 + 32);
  aBlock[4] = sub_1D8DA1F8C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_32;
  v13 = _Block_copy(aBlock);

  sub_1D8DA19F4(a1, v17);
  sub_1D9177E4C();
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1D8DA1F0C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_1D8DA1988()
{

  sub_1D8D7DD58(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17RSSFeedUpdaterJobC5State33_40D298AD9317E87CF0B27FB222FDB0F4LLO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t ReceiveAndSubscribeOnAssetProcessingStep.publisher.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v37 - v3;
  v4 = a1;
  v5 = *(a1 + 24);
  v6 = *(v4 + 16);
  v38 = v4;
  v39 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v37 - v8;
  v10 = sub_1D8CFD888();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = AssociatedConformanceWitness;
  v12 = sub_1D8D02DF0();
  v48 = AssociatedTypeWitness;
  v49 = v10;
  v40 = v10;
  v50 = AssociatedConformanceWitness;
  v51 = v12;
  v13 = sub_1D91775DC();
  WitnessTable = swift_getWitnessTable();
  v48 = v13;
  v49 = v10;
  v50 = WitnessTable;
  v51 = v12;
  v15 = sub_1D917777C();
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = swift_getWitnessTable();
  v42 = type metadata accessor for EmitLifecycle(0, v15, v18, v19);
  v44 = *(v42 - 8);
  v20 = MEMORY[0x1EEE9AC00](v42);
  v22 = &v37 - v21;
  v23 = v47;
  (*(v5 + 48))(v39, v5, v20);
  v48 = *v23;
  v24 = v48;
  v25 = sub_1D9178DBC();
  v26 = v43;
  (*(*(v25 - 8) + 56))(v43, 1, 1, v25);
  v27 = v24;
  Publisher.receiveAndSubscribe<A>(on:options:)(AssociatedTypeWitness, v40, v41, v12, v17);
  sub_1D8D08A50(v26, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v45 + 8))(v9, AssociatedTypeWitness);
  v28 = v38;
  v29 = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v28, v29, &v48);
  v30 = sub_1D9178E5C();
  v32 = v31;
  v33 = static EmitLifecycle.defaultVerbosity.getter();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v48, "QueueHop", 8, 2, 0, v30, v32, v33 & 1, v22, v15, v18);

  sub_1D8D08A50(&v48, &qword_1ECAB4928, &qword_1D918B380);
  (*(v46 + 8))(v17, v15);
  v34 = v42;
  swift_getWitnessTable();
  v35 = sub_1D9177B1C();
  (*(v44 + 8))(v22, v34);
  return v35;
}

uint64_t sub_1D8DA1F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8DA1F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ReceiveAndSubscribeOnAssetProcessingStep.publisher.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8DA1FB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FallbackProcessingStep.publisher.getter(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D8DA2014()
{
  v1 = *(v0 + 32);
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      return 0x64656C696146;
    }

    else
    {
      v5 = *v0;
      v6 = *(v0 + 8);
      v7 = *(v0 + 16);
      v8 = *(v0 + 24);
      if (v2 == 4)
      {
        sub_1D8F5DD6C(v5, v6, v7, v8, v1 & 1);
        v9 = sub_1D917826C();
        MEMORY[0x1DA7298F0](v9);

        return 0x64656873696E6946;
      }

      else if ((v6 | v5 | v7 | v8) == 0 && v1 == 160)
      {
        return 0x206C616974696E49;
      }

      else
      {
        return 0x64616F6C6E776F44;
      }
    }
  }

  else
  {
    v3 = 0x20737365636F7250;
    if (v2 != 1)
    {
      v3 = 0xD000000000000014;
    }

    if (v2)
    {
      return v3;
    }

    else
    {
      return 0x6546206573726150;
    }
  }
}

uint64_t AssetSourceStep.publisher.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  v11 = *(a1 + 24);
  *(v6 + 24) = v11;
  *(v6 + 40) = *(a1 + 40);
  (*(v2 + 32))(v6 + v5, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for EmitLifecycle(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  swift_getWitnessTable();
  return sub_1D9177A7C();
}

uint64_t sub_1D8DA2374()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for AssetSourceStep(0, &v7) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  (*(*(v6 - 8) + 8))(v0 + v4 + v3[15]);
  return swift_deallocObject();
}

uint64_t sub_1D8DA24D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8DA2548(a1, a2);
  }

  return result;
}

uint64_t sub_1D8DA2548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[12];
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    type metadata accessor for FeedUpdateRequest(0);
    v14 = sub_1D9176ACC();
    v16 = v15;
    swift_beginAccess();
    sub_1D8DA2840(0, v14, v16);
    swift_endAccess();
    v17 = v3[15];
    if (v17)
    {
      v18 = v3[16];

      v17(a1, a2);
      sub_1D8D15664(v17, v18);
    }

    return sub_1D8D801B0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a8;
  v25 = a6;
  v13 = a4;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, a9, v18);
  sub_1D8D088B4(a1, v27, &qword_1ECAB4928, &qword_1D918B380);

  return EmitLifecycle.init(upstream:trace:name:verbose:context:definesInterval:)(v20, v27, a2, a3, v13, v26, v25, a7, x8_0, a5, a9, a10);
}

uint64_t sub_1D8DA2840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D8D7A5B8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1D8D33C70(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1D8F85824(&qword_1ECAB7AC8, &qword_1D9199720);
        v14 = v16;
      }

      result = sub_1D8DA2AFC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t EmitLifecycle.init(upstream:trace:name:verbose:context:definesInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v18 = *(a11 - 8);
  (*(v18 + 16))(a9);
  v20 = type metadata accessor for EmitLifecycle(0, a11, a12, v19);
  sub_1D8D088B4(a2, a9 + v20[9], &qword_1ECAB4928, &qword_1D918B380);
  v21 = a9 + v20[10];
  *v21 = a3;
  *(v21 + 8) = a4;
  *(v21 + 16) = a5;
  *(a9 + v20[12]) = a10;
  if (a8)
  {

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v22 = a7;
    v23 = a8;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  sub_1D8D08A50(a2, &qword_1ECAB4928, &qword_1D918B380);
  result = (*(v18 + 8))(a1, a11);
  v25 = (a9 + v20[11]);
  *v25 = v22;
  v25[1] = v23;
  *(a9 + v20[13]) = a6 & 1;
  return result;
}

uint64_t sub_1D8DA2AFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1D9179E1C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t Publisher.cache<A>(location:cache:overwrite:alwaysAttemptRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v33 = a7;
  v31 = a3;
  v32 = a4;
  v28 = a1;
  v29 = a2;
  v30 = a9;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v27 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v10, a5, v22);
  (*(v18 + 16))(v20, v28, AssociatedTypeWitness);
  (*(v14 + 16))(v16, v29, a6);
  return Publishers.CachedAssetPublisher.init(upstream:location:cache:overwrite:alwaysAttemptRefresh:)(v24, v20, v16, v31, v32, a5, a6, v33, v30, a8);
}

void sub_1D8DA2EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D8DA30C0(a1, a2);
  }
}

uint64_t Publishers.CachedAssetPublisher.init(upstream:location:cache:overwrite:alwaysAttemptRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v22[0] = a6;
  v22[1] = a7;
  v22[2] = a8;
  v22[3] = a10;
  v18 = type metadata accessor for Publishers.CachedAssetPublisher(0, v22);
  v19 = v18[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v19, a2, AssociatedTypeWitness);
  result = (*(*(a7 - 8) + 32))(a9 + v18[14], a3, a7);
  *(a9 + v18[15]) = a4;
  *(a9 + v18[16]) = a5;
  return result;
}

uint64_t sub_1D8DA30C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = sub_1D9177F1C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1D9177F4C();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *a2;
  if (*(a2 + 32))
  {
    if (qword_1EDCD1068 == -1)
    {
LABEL_4:
      v19 = sub_1D917744C();
      __swift_project_value_buffer(v19, qword_1EDCD1070);
      sub_1D8D7A3C4(a1, v8);
      v20 = sub_1D917741C();
      v21 = sub_1D9178D1C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v55 = v12;
        v56 = v23;
        v24 = v23;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v25 = sub_1D9176ACC();
        v27 = v26;
        sub_1D8D7A55C(v8);
        v28 = sub_1D8CFA924(v25, v27, &v56);

        *(v22 + 14) = v28;
        _os_log_impl(&dword_1D8CEC000, v20, v21, "Update %{private,mask.hash}s failed", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        v29 = v24;
        v12 = v55;
        MEMORY[0x1DA72CB90](v29, -1, -1);
        MEMORY[0x1DA72CB90](v22, -1, -1);
      }

      else
      {

        sub_1D8D7A55C(v8);
      }

      v46 = sub_1D9176ACC();
      v48 = v12;
      v49 = 1;
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v55 = *(a2 + 24);
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917744C();
  __swift_project_value_buffer(v32, qword_1EDCD1070);
  sub_1D8D7A3C4(a1, v11);
  v33 = sub_1D917741C();
  v34 = sub_1D9178D1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v53 = v30;
    v36 = v35;
    v37 = swift_slowAlloc();
    v52 = v31;
    v38 = v37;
    v56 = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    v39 = sub_1D9176ACC();
    v54 = updated;
    v40 = v12;
    v42 = v41;
    sub_1D8D7A55C(v11);
    v43 = sub_1D8CFA924(v39, v42, &v56);
    v12 = v40;

    *(v36 + 14) = v43;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "Update %{private,mask.hash}s completed", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v44 = v38;
    v31 = v52;
    MEMORY[0x1DA72CB90](v44, -1, -1);
    v45 = v36;
    v30 = v53;
    MEMORY[0x1DA72CB90](v45, -1, -1);
  }

  else
  {

    sub_1D8D7A55C(v11);
  }

  sub_1D8F59A6C(v12, v30, v31, v55, a1);
  v46 = sub_1D9176ACC();
  v48 = 0;
  v49 = 0;
LABEL_14:
  sub_1D8DA37C4(v46, v47, v48, v49);
}

uint64_t DiskAssetCache.description.getter()
{
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x657373416B736944, 0xEF3C656863614374);
  v1 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v1);

  MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
  v2 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v2);

  MEMORY[0x1DA7298F0](10302, 0xE200000000000000);
  if (*(v0 + qword_1EDCDE888 + 4))
  {
    goto LABEL_2;
  }

  v4 = *(v0 + qword_1EDCDE888);
  if (v4 > 2047)
  {
    if (v4 == 2048 || v4 == 0x8000)
    {
      goto LABEL_2;
    }
  }

  else if (v4 == 512 || v4 == 1024)
  {
LABEL_2:
    sub_1D917964C();
    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return 0;
  }

  result = sub_1D91796DC();
  __break(1u);
  return result;
}

uint64_t sub_1D8DA37C4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v9 = sub_1D9177E0C();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a1;
  v30[1] = a2;
  v15 = *(v4 + 32);
  v27 = v4;
  v28 = v30;
  v24 = sub_1D8DA40D8;
  v25 = &v26;
  os_unfair_lock_lock(v15 + 4);
  sub_1D8DA3B34(aBlock);
  os_unfair_lock_unlock(v15 + 4);
  v16 = aBlock[0];
  sub_1D8CFD888();
  v17 = sub_1D9178E1C();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a3;
  v19 = a4 & 1;
  *(v18 + 32) = a4 & 1;
  aBlock[4] = sub_1D8F67698;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_86_1;
  v20 = _Block_copy(aBlock);
  sub_1D8DA4A44(a3, v19);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v20);
  _Block_release(v20);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

uint64_t ArtworkRequest.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ArtworkModel.hash(into:)(a1);
  v9 = *(v8 + 176);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v9);
  v10 = *(v8 + 184);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v10);
  v11 = *(v8 + 192);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v11);
  sub_1D9179DDC();
  if (*(v8 + 201) == 16)
  {
    sub_1D9179DDC();
  }

  else
  {
    sub_1D9179DDC();
    CropCode.rawValue.getter();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v12 = *(v8 + 208);
  MEMORY[0x1DA72B390](*(v12 + 16));
  for (i = *(v12 + 16); i; --i)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v14 = *(v8 + 216);
  if (v14 == 3)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  return MEMORY[0x1DA72B390](qword_1D91A0E10[v14]);
}

BOOL _s18PodcastsFoundation14ArtworkRequestV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = *(a1 + 7);
  v5 = *(a1 + 9);
  v70 = *(a1 + 8);
  v71 = v5;
  v6 = *(a1 + 9);
  v72 = *(a1 + 10);
  v7 = *(a1 + 3);
  v8 = *(a1 + 5);
  v66 = *(a1 + 4);
  v67 = v8;
  v9 = *(a1 + 5);
  v10 = *(a1 + 7);
  v68 = *(a1 + 6);
  v69 = v10;
  v11 = *(a1 + 1);
  v63[0] = *a1;
  v63[1] = v11;
  v12 = *(a1 + 3);
  v14 = *a1;
  v13 = *(a1 + 1);
  v64 = *(a1 + 2);
  v65 = v12;
  v60 = v70;
  v61 = v6;
  v62 = *(a1 + 10);
  v56 = v66;
  v57 = v9;
  v58 = v68;
  v59 = v4;
  v52 = v14;
  v53 = v13;
  v54 = v64;
  v55 = v7;
  v15 = *(a2 + 7);
  v16 = *(a2 + 9);
  v80 = *(a2 + 8);
  v81 = v16;
  v17 = *(a2 + 9);
  v82 = *(a2 + 10);
  v18 = *(a2 + 3);
  v19 = *(a2 + 5);
  v76 = *(a2 + 4);
  v77 = v19;
  v20 = *(a2 + 5);
  v21 = *(a2 + 7);
  v78 = *(a2 + 6);
  v79 = v21;
  v22 = *(a2 + 1);
  v73[0] = *a2;
  v73[1] = v22;
  v23 = *(a2 + 3);
  v25 = *a2;
  v24 = *(a2 + 1);
  v74 = *(a2 + 2);
  v75 = v23;
  v49 = v80;
  v50 = v17;
  v51 = *(a2 + 10);
  v45 = v76;
  v46 = v20;
  v47 = v78;
  v48 = v15;
  v41 = v25;
  v42 = v24;
  v43 = v74;
  v44 = v18;
  sub_1D8D36E5C(v63, v84);
  sub_1D8D36E5C(v73, v84);
  v26 = _s18PodcastsFoundation12ArtworkModelV2eeoiySbAC_ACtFZ_0(&v52, &v41);
  v83[8] = v49;
  v83[9] = v50;
  v83[10] = v51;
  v83[4] = v45;
  v83[5] = v46;
  v83[6] = v47;
  v83[7] = v48;
  v83[0] = v41;
  v83[1] = v42;
  v83[2] = v43;
  v83[3] = v44;
  sub_1D8DB15B0(v83);
  v84[8] = v60;
  v84[9] = v61;
  v84[10] = v62;
  v84[4] = v56;
  v84[5] = v57;
  v84[6] = v58;
  v84[7] = v59;
  v84[0] = v52;
  v84[1] = v53;
  v84[2] = v54;
  v84[3] = v55;
  sub_1D8DB15B0(v84);
  result = 0;
  if (!v26 || a1[22] != a2[22] || a1[23] != a2[23])
  {
    return result;
  }

  if (a1[24] != a2[24] || *(a1 + 200) != *(a2 + 200))
  {
    return 0;
  }

  v28 = *(a2 + 201);
  if (*(a1 + 201) == 16)
  {
    if (v28 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == 16)
    {
      return 0;
    }

    LOBYTE(v52) = *(a1 + 201);
    LOBYTE(v41) = v28;
    v29 = CropCode.rawValue.getter();
    v31 = v30;
    if (v29 == CropCode.rawValue.getter() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_1D9179ACC();

      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (*(a1 + 202))
  {
    v34 = 0x6669636570736E75;
  }

  else
  {
    v34 = 0x79616C70736964;
  }

  if (*(a1 + 202))
  {
    v35 = 0xEB00000000646569;
  }

  else
  {
    v35 = 0xE700000000000000;
  }

  if (*(a2 + 202))
  {
    v36 = 0x6669636570736E75;
  }

  else
  {
    v36 = 0x79616C70736964;
  }

  if (*(a2 + 202))
  {
    v37 = 0xEB00000000646569;
  }

  else
  {
    v37 = 0xE700000000000000;
  }

  if (v34 == v36 && v35 == v37)
  {

    goto LABEL_32;
  }

  v38 = sub_1D9179ACC();

  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  if (!sub_1D8DB2AA4(*(a1 + 26), *(a2 + 26)))
  {
    return 0;
  }

  v39 = *(a1 + 216);
  v40 = *(a2 + 216);
  result = v40 == 3 && v39 == 3;
  if (v39 != 3 && *(a2 + 216) != 3)
  {
    return qword_1D91A0E10[v39] == qword_1D91A0E10[v40];
  }

  return result;
}

void *sub_1D8DA40F4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL _s18PodcastsFoundation12ArtworkModelV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v6 = a1[5];
  v5 = a1[6];
  v7 = *(a1 + 129);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 129);
  v26 = *(a2 + 131);
  v27 = *(a1 + 131);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 255)
  {
    result = 0;
    if (v10 != 255)
    {
      return result;
    }

LABEL_6:
    if (v6 != v12)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v10 == 255)
  {
    return 0;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      if (v10 != 2)
      {
        return 0;
      }

      result = 0;
      if (v2 == v8)
      {
        goto LABEL_6;
      }

      return result;
    }

    if (v10 != 1)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v2 == v8 && v3 == v9)
  {
    result = 0;
    if (v6 == v12)
    {
LABEL_7:
      if (v5 != v11)
      {
        return result;
      }

      if (v7 == 4)
      {
        if (v13 != 4)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == 4)
        {
          return 0;
        }

        v15 = 0xEB00000000746365;
        v16 = 0x526465646E756F72;
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v18 = 0xE400000000000000;
            v17 = 1819044208;
          }

          else
          {
            v17 = 0xD000000000000012;
            v18 = 0x80000001D91C7EF0;
          }
        }

        else
        {
          v17 = 0x526465646E756F72;
          v18 = 0xEB00000000746365;
          if (v7)
          {
            v18 = 0xE500000000000000;
            v17 = 0x646E756F72;
          }
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v15 = 0xE400000000000000;
            v16 = 1819044208;
          }

          else
          {
            v16 = 0xD000000000000012;
            v15 = 0x80000001D91C7EF0;
          }
        }

        else if (v13)
        {
          v15 = 0xE500000000000000;
          v16 = 0x646E756F72;
        }

        if (v17 == v16 && v18 == v15)
        {
        }

        else
        {
          v20 = sub_1D9179ACC();

          if ((v20 & 1) == 0)
          {
            return 0;
          }
        }
      }

      v21 = CropCode.rawValue.getter();
      v23 = v22;
      if (v21 == CropCode.rawValue.getter() && v23 == v24)
      {

        return v27 == v26;
      }

      v25 = sub_1D9179ACC();

      if (v25)
      {
        return v27 == v26;
      }

      return 0;
    }
  }

  else
  {
    v19 = sub_1D9179ACC();
    result = 0;
    if (v19)
    {
      goto LABEL_6;
    }
  }

  return result;
}