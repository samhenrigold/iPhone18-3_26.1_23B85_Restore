uint64_t sub_2E3AF8(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E03A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E3C44(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DF8C0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E3E04(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E04FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E3F50(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DFA1C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_155Tm()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2E41EC(unint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(__int128 *), double a5)
{
  v11 = *(sub_AB3430() - 8);
  v12 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  sub_2CFE88(*(v5 + 16), *(v5 + 24), *(v5 + 32), v5 + v12, a5, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2, a3, a4);
}

uint64_t objectdestroy_163Tm()
{
  v1 = sub_AB2BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2E4408(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DFB78(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E4514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2E4550(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_2E4954(uint64_t a1)
{
  sub_112854();
  result = sub_AB9B70();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1A094(&v10, *(*(a1 + 48) + (v9 | (v8 << 6)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
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

      return v11;
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

void sub_2E4A4C(uint64_t a1)
{
  v2 = 0;
  v12[2] = sub_AB9B70();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_1A9FC(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2E4B68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_9ACFC(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_913C0(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_8085C(a2);
    *v2 = v6;
  }

  else
  {
    sub_12E1C(a1, &unk_DE8E40, &unk_AF8050);
    sub_27B3D4(a2, v7);
    sub_8085C(a2);
    return sub_12E1C(v7, &unk_DE8E40, &unk_AF8050);
  }

  return result;
}

double sub_2E4C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 4)
  {
    v6 = sub_2EBF88(a2, a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_33069C();
        v10 = v16;
      }

      v11 = *(*(v10 + 56) + 8 * v8);
      sub_27C4A4(v8, v10);
      sub_9AE98(v11);

      *v4 = v10;
    }

    else
    {
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_91940(a1, a2, a3, v15);

    *v3 = v17;
  }

  return result;
}

double sub_2E4D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_92078(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_2EBF88(a3, a4);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v5;
      if (!v15)
      {
        sub_330E18();
        v16 = v18;
      }

      sub_27C654(v14, v16);

      *v5 = v16;
    }

    else
    {
    }
  }

  return result;
}

double sub_2E4E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_9264C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2EBF88(a2, a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_331574();
        v14 = v16;
      }

      sub_27C4A4(v12, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  return result;
}

void sub_2E4FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_92678(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
  }

  else
  {
    v7 = sub_2EC0E4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v15 = *v3;
      if (!v10)
      {
        sub_331588();
        v11 = v15;
      }

      v12 = v9;
      v13 = *(*(v11 + 56) + 8 * v9);
      sub_27CB1C(v12, v11);

      *v3 = v11;
    }
  }
}

uint64_t sub_2E5064(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_12E1C(a1, &unk_DE8E20, &qword_AF7990);
    sub_27B4A4(a2, v6);
    (*(v8 + 8))(a2, v7);
    return sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
  }

  else
  {
    (*(v8 + 32))(v11, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_927C0(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v8 + 8))(a2, v7);
    *v2 = v15;
  }

  return result;
}

double sub_2E5254(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 4)
  {
    v6 = sub_2EBF88(a2, a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_331B48();
        v10 = v15;
      }

      sub_27CE20(v8, v10);

      *v4 = v10;
    }

    else
    {
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_92CE0(a1, a2, a3, v14);

    *v3 = v16;
  }

  return result;
}

double sub_2E5370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_9ACFC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_9330C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_12E1C(a1, &unk_DE8E40, &unk_AF8050);
    sub_27B830(a2, a3, v9);
    sub_12E1C(v9, &unk_DE8E40, &unk_AF8050);
  }

  return result;
}

void sub_2E5440(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    sub_12E1C(a1, &qword_DEE460, qword_AFC890);
    sub_27B8D4(a2, v6);
    sub_12E1C(v6, &qword_DEE460, qword_AFC890);
  }

  else
  {
    sub_9AFE0(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_9345C(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

void sub_2E54F4(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_93590(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
  }

  else
  {
    v7 = sub_2EC5A8(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v15 = *v3;
      if (!v10)
      {
        sub_3322FC();
        v11 = v15;
      }

      v12 = v9;
      v13 = *(*(v11 + 56) + 8 * v9);
      sub_27D32C(v12, v11);

      *v3 = v11;
    }
  }
}

uint64_t sub_2E55B4(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_12E1C(a1, &unk_DF2AE0, &qword_AFC930);
    v15 = sub_2EC75C(a2, a3);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v4;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_3327AC();
        v19 = v23;
      }

      (*(v11 + 32))(v9, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_27D518(v17, v19);
      *v4 = v19;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    result = sub_939E4(v14, a2, a3, v20);
    *v4 = v23;
  }

  return result;
}

void sub_2E5810(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    sub_12E1C(a1, &unk_DF3640, qword_B01AC0);
    sub_27BA24(a2, v6);
    sub_12E1C(v6, &unk_DF3640, qword_B01AC0);
  }

  else
  {
    sub_9B150(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_93B5C(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

double sub_2E58C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_93C90(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_12E1C(a1, &qword_DF2BD0, &unk_AFDC00);
    sub_27BADC(a2, a3, v10);
    sub_12E1C(v10, &qword_DF2BD0, &unk_AFDC00);
  }

  return result;
}

double sub_2E599C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_93E4C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2EBF88(a2, a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_333040();
        v14 = v16;
      }

      sub_27F6EC(v12, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  return result;
}

void sub_2E5AFC(void *a1, void *a2)
{
  if (*a1 == 1)
  {
    sub_12E1C(a1, &unk_DFE1E0, qword_B09520);
    sub_27BE3C(a2, v6);
    sub_12E1C(v6, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    sub_9B098(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_94B20(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

uint64_t sub_2E5BF0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F98, &unk_B02800);
  __chkstk_darwin();
  v14 = &v21 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  v15 = __chkstk_darwin();
  v17 = &v21 - v16;
  if ((*(v18 + 48))(a1, 1, v15) == 1)
  {
    sub_12E1C(a1, &qword_DF4F98, &unk_B02800);
    a6(a2);
    sub_12E1C(a2, a4, a5);
    return sub_12E1C(v14, &qword_DF4F98, &unk_B02800);
  }

  else
  {
    sub_36B0C(a1, v17, &unk_E00040, &unk_AFA530);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    a3(v17, a2, isUniquelyReferenced_nonNull_native);
    result = sub_12E1C(a2, a4, a5);
    *v6 = v22;
  }

  return result;
}

uint64_t TextStackView.Component.__allocating_init(identifier:labelProperties:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[1];
  *(v6 + 64) = v8;
  *(v6 + 80) = v7;
  v10 = a3[3];
  *(v6 + 96) = a3[4];
  v11 = a3[1];
  v12 = *a3;
  *(v6 + 32) = *a3;
  *(v6 + 48) = v11;
  v13 = a3[4];
  *(v6 + 192) = v10;
  *(v6 + 208) = v13;
  *(v6 + 160) = v9;
  *(v6 + 176) = v8;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0xE000000000000000;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 224) = 0;
  *(v6 + 232) = 0xE000000000000000;
  *(v6 + 248) = 0;
  *(v6 + 256) = 0;
  *(v6 + 240) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 144) = v12;
  sub_2F118(a3, &v15);
  return v6;
}

uint64_t sub_2E5E98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2844EC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_C3D40(&v5[5 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2E5FA4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_2E60BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_284590(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 40 * a1);
    v9 = v8[2];
    v8 += 2;
    v10 = v7 - 1;
    v11 = *(v8 + 32);
    v12 = v8[1];
    result = memmove(v8, v8 + 40, 40 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
    *a2 = v9;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return result;
}

uint64_t sub_2E616C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(&stru_20.cmd + 8 * a1 + (v5 & 0xFFFFFFFFFFFFFF8));
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

double sub_2E6210(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v4);
  if (!a1)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (!v6)
    {
      v8 = 0;
LABEL_12:
      *(v2 + OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver) = v8;

      v12 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
      swift_beginAccess();
      *(v2 + v12) = _swiftEmptyDictionarySingleton;

      return result;
    }

LABEL_9:
    v9 = qword_DE6828;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = static TextDrawing.Cache.didInvalidateNotification;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v6, 1, 1, sub_161628, v11);
    goto LABEL_12;
  }

  return result;
}

void sub_2E6384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    v4 = Strong;
    swift_beginAccess();
    *&v4[v3] = _swiftEmptyDictionarySingleton;

    [v4 setNeedsLayout];
  }
}

double TextStackView.textDrawingCache.getter()
{
  swift_beginAccess();

  return result;
}

double TextStackView.textDrawingCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_2E6210(v4);

  return result;
}

void (*TextStackView.textDrawingCache.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_2E656C;
}

void sub_2E656C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_2E6210(v6);
  }

  else
  {
    sub_2E6210(v6);
  }

  free(v3);
}

uint64_t TextStackView.verticalAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

void TextStackView.verticalAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

__n128 TextStackView.exclusionRectangle.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

double TextStackView.exclusionRectangle.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  *(v1 + v5) = _swiftEmptyDictionarySingleton;

  return result;
}

double (*TextStackView.exclusionRectangle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2E6858;
}

double sub_2E6858(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *(v5 + v6) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

double TextStackView.firstBaselineOffsetFromTop.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(v13, v2, v4, v6, v8, v11);
  sub_3F250(v13);
  return *&v13[1];
}

double TextStackView.lastBaselineOffsetFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(v13, v2, v4, v6, v8, v11);
  sub_3F250(v13);
  return *&v13[2];
}

uint64_t TextStackView.isDisabled.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void TextStackView.isDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v17 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = a1 & 1;
    v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5 >> 62)
    {
      v6 = sub_ABB060();
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (!v6)
      {
        return;
      }
    }

    v7 = v6 - 1;
    if (v6 < 1)
    {
      __break(1u);
    }

    else
    {

      v9 = 0;
      if ((v5 & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }

LABEL_6:
      v10 = *(sub_36003C(v9, v5, v8) + 256);
      if (v10)
      {
LABEL_7:
        v11 = v10;
        if (([v11 isHidden] & 1) == 0)
        {
          v12 = *(v1 + v17);
          v13 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v14 = v11[v13];
          v11[v13] = v12;
          if (v12 != v14)
          {
            v15 = 1.0;
            if (v12)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v11 setAlpha:{v15, v17}];
          }
        }

        if (v7 != v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        while (1)
        {

          if (v7 == v9)
          {
            break;
          }

LABEL_16:
          ++v9;
          if ((v5 & 0xC000000000000001) != 0)
          {
            goto LABEL_6;
          }

LABEL_14:
          v16 = *(v5 + 8 * v9 + 32);

          v10 = *(v16 + 256);
          if (v10)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }
}

uint64_t (*TextStackView.isDisabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_2E6CE0;
}

void sub_2E6CE0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_20;
  }

  v18 = v3[6];
  v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v4 = *(v18 + v3[7]);
  if (*(v18 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) == v4)
  {
    goto LABEL_20;
  }

  *(v18 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = v4;
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v6 = *(v18 + v5);
  if (!(v6 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
LABEL_20:

    free(v3);
    return;
  }

LABEL_5:
  v8 = v7 - 1;
  if (v7 >= 1)
  {

    v10 = 0;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v11 = *(sub_36003C(v10, v6, v9) + 256);
      if (v11)
      {
LABEL_10:
        v13 = v11;
        if (([v13 isHidden] & 1) == 0)
        {
          v14 = *(v18 + v19);
          v15 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v16 = v13[v15];
          v13[v15] = v14;
          if (v14 != v16)
          {
            v17 = 1.0;
            if (v14)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v13 setAlpha:{v17, v18, v19}];
          }
        }
      }

      while (1)
      {

        if (v8 == v10)
        {

          goto LABEL_20;
        }

        ++v10;
        if ((v6 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_9:
        v12 = *(v6 + 8 * v10 + 32);

        v11 = *(v12 + 256);
        if (v11)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
}

id TextStackView.textShadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t TextStackView.textShadow.setter(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  *(v3 + 4) = *(a1 + 32);
  sub_15F84(a1, &v7, &qword_DFDFC0, &unk_B08E00);

  [v1 setNeedsLayout];
  return sub_12E1C(a1, &qword_DFDFC0, &unk_B08E00);
}

void (*TextStackView.textShadow.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2E702C;
}

void sub_2E702C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);

    [v4 setNeedsLayout];
  }
}

uint64_t TextStackView.contains(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {

    sub_2EBF88(v2, v3);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TextStackView.existingComponent(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2EBF88(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id TextStackView.add(_:)(void *a1)
{
  v2 = v1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  if (*(*&v1[v6] + 16) && (, sub_2EBF88(v5, v4), v8 = v7, , (v8 & 1) != 0))
  {
    sub_ABAD90(93);
    v17._object = 0x8000000000B5D7E0;
    v17._countAndFlagsBits = 0xD000000000000059;
    sub_AB94A0(v17);
    v18._countAndFlagsBits = v5;
    v18._object = v4;
    sub_AB94A0(v18);
    v19._countAndFlagsBits = 11810;
    v19._object = 0xE200000000000000;
    sub_AB94A0(v19);
    result = sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = a1[30];
    v11 = a1[31];
    a1[30] = sub_2F52DC;
    a1[31] = v9;

    sub_17654(v10, v11);

    v12 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();

    sub_AB9730();
    if (*(&dword_10 + (*(v2 + v12) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v12) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + v6);
    *(v2 + v6) = 0x8000000000000000;
    sub_9264C(a1, v5, v4, isUniquelyReferenced_nonNull_native);

    *(v2 + v6) = v16;
    swift_endAccess();
    v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *(v2 + v14) = _swiftEmptyDictionarySingleton;

    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_2E7450(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    v3 = Strong;
    swift_beginAccess();
    *&v3[v2] = _swiftEmptyDictionarySingleton;

    [v3 setNeedsLayout];
  }
}

Swift::Void __swiftcall TextStackView.add(_:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v3 = sub_ABB060();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (a1._rawValue & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v5 = sub_36003C(i, a1._rawValue, v1);
      }

      else
      {
        v5 = *(a1._rawValue + i + 4);
      }

      TextStackView.add(_:)(v5);
    }
  }
}

Swift::Void __swiftcall TextStackView.replace(with:)(Swift::OpaquePointer with)
{
  TextStackView.removeAll()();
  if (with._rawValue >> 62)
  {
    v3 = sub_ABB060();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (with._rawValue & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((with._rawValue & 0xC000000000000001) != 0)
      {
        v5 = sub_36003C(i, with._rawValue, v2);
      }

      else
      {
        v5 = *(with._rawValue + i + 4);
      }

      TextStackView.add(_:)(v5);
    }
  }
}

id TextStackView.remove(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v46 = v1;
  v4 = *&v1[v3];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  swift_beginAccess();
  swift_beginAccess();
  v8 = 0;
  v57 = v4 & 0xC000000000000001;
  v53 = v4 & 0xFFFFFFFFFFFFFF8;
  v54 = v4;
  v55 = v6;
  while (v6 != v8)
  {
    if (v57)
    {
      v10 = sub_36003C(v8, v4, v7);
      if (v10 == a1)
      {
LABEL_60:

        goto LABEL_61;
      }
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:

LABEL_61:
        v39 = v46;
        swift_beginAccess();
        sub_2E616C(v8, sub_28572C);
        swift_endAccess();

        goto LABEL_63;
      }

      v10 = *(v4 + 8 * v8 + 32);

      if (v10 == a1)
      {
        goto LABEL_60;
      }
    }

    v11 = *(v10 + 16) == *(a1 + 16) && *(v10 + 24) == *(a1 + 24);
    if (!v11 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v12 = *(v10 + 48);
    v13 = *(v10 + 80);
    v14 = *(v10 + 96);
    v61 = *(v10 + 64);
    v62 = v13;
    v16 = *(a1 + 32);
    v15 = *(a1 + 48);
    v63 = v14;
    v64 = v16;
    v59 = *(v10 + 32);
    v60 = v12;
    v17 = *(a1 + 64);
    v18 = *(a1 + 80);
    v65 = v15;
    v66 = v17;
    v19 = *(a1 + 96);
    v67 = v18;
    v68 = v19;
    v20 = BYTE8(v61);
    v21 = v16;
    v22 = BYTE8(v66);
    if ((*(&v61 + 1) & 0x8000000000000000) != 0)
    {
      if ((*(&v66 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      if (v59 == v64)
      {
        sub_2F118(&v64, v58);
        sub_2F118(&v59, v58);
      }

      else
      {
        v32 = sub_ABB3C0();
        sub_2F118(&v64, v58);
        sub_2F118(&v59, v58);
        if ((v32 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      if ((*(&v66 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_6;
      }

      v56 = v59;
      v51 = *(&v64 + 1);
      v52 = *(&v59 + 1);
      v50 = v65;
      v23 = v67;
      v24 = v61;
      v47 = *(&v60 + 1);
      v48 = *(&v65 + 1);
      v49 = v60;
      v25 = v62;
      sub_2F118(&v64, v58);
      sub_2F118(&v59, v58);
      v26 = [v25 _fontAdjustedForCurrentContentSizeCategory];
      if (v26)
      {
        v27 = v26;

        v25 = v27;
      }

      v28 = v23;
      v29 = [v28 _fontAdjustedForCurrentContentSizeCategory];
      if (v29)
      {
        v30 = v29;

        v28 = v30;
      }

      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v31 = sub_ABA790();

      if ((v31 & 1) == 0)
      {
        sub_2F174(&v64);
        sub_2F174(&v59);

        v5 = v53;
        v4 = v54;
LABEL_32:
        v6 = v55;
        goto LABEL_7;
      }

      if (v56)
      {
        v5 = v53;
        v4 = v54;
        v6 = v55;
        if (!v21 || (sub_ABA790() & 1) == 0)
        {
LABEL_50:
          sub_2F174(&v64);
          sub_2F174(&v59);
          goto LABEL_6;
        }
      }

      else
      {
        v5 = v53;
        v4 = v54;
        v6 = v55;
        if (v21)
        {
          goto LABEL_50;
        }
      }

      if (v52)
      {
        if (!v51 || (sub_ABA790() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (v51)
      {
        goto LABEL_50;
      }

      if (v49 != v50 || v47 != v48)
      {
        goto LABEL_5;
      }

      v58[0] = v24;
      sub_7FD28();
      if ((sub_AB38E0() & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v22 != v20)
      {
LABEL_5:
        sub_2F174(&v64);
        sub_2F174(&v59);
        goto LABEL_6;
      }
    }

    if (*(&v62 + 1) != *(&v67 + 1))
    {
      goto LABEL_5;
    }

    v58[0] = v63;
    sub_7FD28();
    if ((sub_AB38E0() & 1) == 0)
    {
      goto LABEL_50;
    }

    v58[0] = *(&v63 + 1);
    v33 = sub_AB38E0();
    sub_2F174(&v64);
    sub_2F174(&v59);
    if (v33)
    {
      if (swift_beginAccess(), *(v10 + 112) == *(a1 + 112)) && *(v10 + 120) == *(a1 + 120) || (sub_ABB3C0())
      {
        v34 = *(v10 + 256);
        v35 = *(a1 + 256);
        if (v34)
        {
          if (!v35)
          {

            v6 = v55;
            goto LABEL_7;
          }

          type metadata accessor for TextDrawing.View();
          v36 = v35;
          v37 = v34;
          v38 = sub_ABA790();

          if (v38)
          {
            goto LABEL_66;
          }

          goto LABEL_32;
        }

        v6 = v55;
        if (!v35)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_6:

LABEL_7:
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_65;
    }
  }

  v39 = v46;
LABEL_63:
  v40 = *(a1 + 240);
  v41 = *(a1 + 248);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_17654(v40, v41);
  v42 = *(a1 + 16);
  v43 = *(a1 + 24);
  swift_beginAccess();

  sub_2E4E80(0, v42, v43);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  *&v39[v44] = _swiftEmptyDictionarySingleton;

  return [v39 setNeedsLayout];
}

Swift::Void __swiftcall TextStackView.removeAll()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_ABB060();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v6 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_36003C(v6, v3, v5);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    ++v6;
    v8 = *(v7 + 240);
    v9 = *(v7 + 248);
    *(v7 + 240) = 0;
    *(v7 + 248) = 0;
    sub_17654(v8, v9);
  }

  while (v4 != v6);

LABEL_10:
  v10 = *&v1[v2];
  if (v10 >> 62)
  {
    v11 = sub_ABB060();
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v11)
  {
LABEL_22:
    v20 = sub_2F3B1C(_swiftEmptyArrayStorage);

    sub_2E927C(v20);

    *&v1[v2] = _swiftEmptyArrayStorage;

    v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
    swift_beginAccess();
    *&v1[v21] = _swiftEmptyDictionarySingleton;

    v22 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *&v1[v22] = _swiftEmptyDictionarySingleton;

    [v1 setNeedsLayout];
    return;
  }

  sub_6D5A0(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v23 = v2;
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_36003C(v13, v10, v12);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_6D5A0((v17 > 1), v18 + 1, 1);
      }

      ++v13;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
    }

    while (v11 != v13);

    v2 = v23;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

double TextStackView.fittingMetrics(for:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, double a3@<D1>)
{
  v7 = [v3 traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (a3 <= 5.99231045e307)
  {
    v10 = a3;
  }

  else
  {
    v10 = 5.99231045e307;
  }

  sub_2E94A4(v14, 0.0, 0.0, a2, v10, v9);
  sub_3F250(v14);
  v11 = v17;
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v11;
  return result;
}

char *TextStackView.componentMetrics()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(v13, v2, v4, v6, v8, v11);
  return v13[0];
}

__n128 TextStackView.componentMetrics(for:bounds:displayScale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, __n128 a6@<Q3>, double a7@<D4>)
{
  TextStackView.componentMetrics(forComponentIdentifier:bounds:displayScale:)(*(a1 + 16), *(a1 + 24), v13, a3, a4, a5, a6, a7);
  v8 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v8;
  *(a2 + 160) = v13[10];
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

__n128 TextStackView.componentMetrics(forComponentIdentifier:bounds:displayScale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, double a5@<D1>, CGFloat a6@<D2>, __n128 a7@<Q3>, double a8@<D4>)
{
  sub_2E94A4(v40, a4, a5, a6, a7.n128_f64[0], a8);
  v11 = *(v40[0] + 2);
  if (v11)
  {
    v12 = v40[0] + 32;
    while (1)
    {
      v13 = *v12;
      v14 = *(v12 + 2);
      v27[1] = *(v12 + 1);
      v27[2] = v14;
      v27[0] = v13;
      v15 = *(v12 + 3);
      v16 = *(v12 + 4);
      v17 = *(v12 + 6);
      v27[5] = *(v12 + 5);
      v27[6] = v17;
      v27[3] = v15;
      v27[4] = v16;
      v18 = *(v12 + 7);
      v19 = *(v12 + 8);
      v20 = *(v12 + 10);
      v27[9] = *(v12 + 9);
      v27[10] = v20;
      v27[7] = v18;
      v27[8] = v19;
      memmove(__dst, v12, 0xB0uLL);
      UIScreen.Dimensions.size.getter();
      if (*(*&v27[0] + 16) == a1 && *(*&v27[0] + 24) == a2)
      {
        break;
      }

      if (sub_ABB3C0())
      {
        break;
      }

      v12 += 176;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    sub_2F52E4(v27, &v26);
    sub_3F250(v40);
    v37 = __dst[8];
    v38 = __dst[9];
    v39 = __dst[10];
    v33 = __dst[4];
    v34 = __dst[5];
    v35 = __dst[6];
    v36 = __dst[7];
    v29 = __dst[0];
    v30 = __dst[1];
    v31 = __dst[2];
    v32 = __dst[3];
  }

  else
  {
LABEL_7:
    sub_3F250(v40);
    sub_2F531C(&v29);
  }

  v21 = v38;
  *(a3 + 128) = v37;
  *(a3 + 144) = v21;
  *(a3 + 160) = v39;
  v22 = v34;
  *(a3 + 64) = v33;
  *(a3 + 80) = v22;
  v23 = v36;
  *(a3 + 96) = v35;
  *(a3 + 112) = v23;
  v24 = v30;
  *a3 = v29;
  *(a3 + 16) = v24;
  result = v32;
  *(a3 + 32) = v31;
  *(a3 + 48) = result;
  return result;
}

Swift::Void __swiftcall TextStackView.layoutSubviews()()
{
  v1 = v0;
  v108.receiver = v0;
  v108.super_class = type metadata accessor for TextStackView();
  objc_msgSendSuper2(&v108, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  v12 = v11;

  [v1 effectiveUserInterfaceLayoutDirection];
  sub_2E94A4(v109, v3, v5, v7, v9, v12);
  v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v84 = v1[v13];
  swift_beginAccess();

  sub_2E4A4C(v14);
  v107 = v15;
  v16 = *(*&v109[0] + 16);
  if (!v16)
  {
LABEL_71:
    v80 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();

    *&v1[v80] = _swiftEmptyDictionarySingleton;
    *&v96 = v3;
    *(&v96 + 1) = v5;
    *&v97 = v7;
    *(&v97 + 1) = v9;
    *&v98 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87[0] = *&v1[v80];
    *&v1[v80] = 0x8000000000000000;
    sub_91D88(v109, &v96, isUniquelyReferenced_nonNull_native);
    *&v1[v80] = v87[0];
    swift_endAccess();
    sub_2E927C(v107);

    return;
  }

  v17 = OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews;
  v18 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  v19 = v1;
  v20 = (*&v109[0] + 32);
  sub_2F5360(v109, &v96);
  v82 = v18;
  swift_beginAccess();
  v83 = v19;
  swift_beginAccess();
  for (i = v16 - 1; ; --i)
  {
    v22 = v17;
    v23 = *v20;
    v24 = v20[2];
    v97 = v20[1];
    v98 = v24;
    v96 = v23;
    v25 = v20[3];
    v26 = v20[4];
    v27 = v20[6];
    v101 = v20[5];
    v102 = v27;
    v99 = v25;
    v100 = v26;
    v28 = v20[7];
    v29 = v20[8];
    v30 = v20[10];
    v105 = v20[9];
    v106 = v30;
    v103 = v28;
    v104 = v29;
    v31 = v96;
    v33 = *(&v97 + 1);
    v32 = v97;
    v34 = v24;
    if (BYTE8(v24))
    {
      sub_2F52E4(&v96, &v88);

      v35 = [v32 string];
      v36 = sub_AB92A0();
      v38 = v37;

      sub_E1E78(v32, v33, v34, 1);

      v33 = v38;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v32 = v36;
LABEL_7:
        v39 = v32 & 0xFFFFFFFFFFFFLL;
        goto LABEL_9;
      }
    }

    else
    {
      sub_2F52E4(&v96, &v88);

      sub_E1F1C(v32, v33, v34, 0);

      if ((v33 & 0x2000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    v39 = HIBYTE(v33) & 0xF;
LABEL_9:
    v40 = v31[32];
    v17 = v22;
    if (v39)
    {
      break;
    }

    if (v40)
    {
      v42 = v40;
      if (([v42 isHidden] & 1) == 0)
      {
        [v42 setHidden:1];
      }
    }

    else
    {
    }

LABEL_62:
    sub_2F5398(&v96);
    if (!i)
    {
      goto LABEL_70;
    }

    v20 += 11;
  }

  if (v40)
  {
    v41 = v31[32];
LABEL_39:
    v61 = v40;
    v62 = [v41 isHidden];

    if (v62)
    {
      [v41 setHidden:0];
    }

    v92 = v101;
    v93 = v102;
    v94 = v103;
    v95 = v104;
    v88 = v97;
    v89 = v98;
    v90 = v99;
    v91 = v100;
    UIScreen.Dimensions.size.getter();
    v113[4] = v92;
    v113[5] = v93;
    v113[6] = v94;
    v113[7] = v95;
    v113[0] = v88;
    v113[1] = v89;
    v113[2] = v90;
    v113[3] = v91;
    sub_109B04(&v97, v87);
    TextDrawing.View.textDrawingContext.setter(v113);
    v63 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
    swift_beginAccess();
    v64 = v41[v63];
    v41[v63] = v84;
    if (v84 != v64)
    {
      v65 = 1.0;
      if (v84)
      {
        UIInterfaceGetContentDisabledAlpha();
      }

      [v41 setAlpha:v65];
    }

    v66 = *v82;
    if (*v82)
    {
      v85 = *(v82 + 8);
      v86 = *(v82 + 24);
      v67 = v41;
      v68 = v66;
    }

    else
    {
      v69 = v41;
      v70 = UIView.Shadow.identity.unsafeMutableAddressor();
      v85 = *(v70 + 1);
      v86 = *(v70 + 3);
      v68 = *v70;
    }

    v110 = v68;
    v111 = v85;
    v112 = v86;
    v71 = BYTE8(v96);
    v72 = v66;
    UIView.shadow.setter(&v110);
    if (v71 > 2)
    {
      if (v71 == 3)
      {
        v75 = 4;
      }

      else if (v71 == 4)
      {
        v75 = 7;
      }

      else
      {
        v75 = 8;
      }
    }

    else if (v71 == 1)
    {
      v73 = [objc_opt_self() sharedApplication];
      v74 = [v73 userInterfaceLayoutDirection];

      if (v74 == &dword_0 + 1)
      {
        v75 = 7;
      }

      else
      {
        v75 = 8;
      }
    }

    else
    {
      v76 = [objc_opt_self() sharedApplication];
      v77 = [v76 userInterfaceLayoutDirection];

      if (v77 == &dword_0 + 1)
      {
        v75 = 8;
      }

      else
      {
        v75 = 7;
      }
    }

    [v41 setContentMode:v75];

    sub_2EF424(v31[2], v31[3]);

    sub_ABA490();
    [v41 setFrame:?];

    goto LABEL_62;
  }

  v43 = *&v83[v22];
  if (!(v43 >> 62))
  {
    v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
    if (v44)
    {
      goto LABEL_18;
    }

LABEL_32:
    type metadata accessor for TextDrawing.View();
    v54 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v55 = objc_opt_self();
    v48 = v54;
    v56 = [v55 clearColor];
    [v48 setBackgroundColor:v56];

    [v83 addSubview:v48];
LABEL_33:
    v57 = v31[32];
    v31[32] = v48;
    v41 = v48;

    v58 = v31[32];
    if (v58)
    {
      v59 = [v58 layer];
      swift_beginAccess();
      if (v31[17])
      {

        v60 = sub_AB9260();
      }

      else
      {
        v60 = 0;
      }

      [v59 setCompositingFilter:v60];

      swift_unknownObjectRelease();
    }

    goto LABEL_39;
  }

  v44 = sub_ABB060();
  if (!v44)
  {
    goto LABEL_32;
  }

LABEL_18:
  v45 = v44 - 1;
  if (!__OFSUB__(v44, 1))
  {
    if ((v43 & 0xC000000000000001) != 0)
    {

      v46 = sub_36167C(v45, v43, v78);
    }

    else
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v45 >= *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_75;
      }

      v46 = *(v43 + 8 * v45 + 32);
    }

    swift_beginAccess();
    v47 = *&v83[v22];
    if (v47 >> 62)
    {
      if (!sub_ABB060())
      {
        goto LABEL_74;
      }
    }

    else if (!*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_74;
    }

    v48 = v46;
    v49 = sub_2F32C4(sub_28572C);
    if (!v49)
    {
      v50 = *&v83[v22];
      if (v50 >> 62)
      {
        v79 = sub_ABB060();
        v52 = __OFSUB__(v79, 1);
        v53 = v79 - 1;
        if (v52)
        {
LABEL_69:
          __break(1u);
LABEL_70:
          sub_3F250(v109);
          v1 = v83;
          goto LABEL_71;
        }
      }

      else
      {
        v51 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
        v52 = __OFSUB__(v51, 1);
        v53 = v51 - 1;
        if (v52)
        {
          goto LABEL_69;
        }
      }

      v49 = sub_2E616C(v53, sub_28572C);
    }

    swift_endAccess();
    goto LABEL_33;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

double TextStackView.sizeThatFits(_:)(CGFloat a1, double a2)
{
  v5 = [v2 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (a2 <= 5.99231045e307)
  {
    v8 = a2;
  }

  else
  {
    v8 = 5.99231045e307;
  }

  sub_2E94A4(v10, 0.0, 0.0, a1, v8, v7);
  sub_3F250(v10);
  return *&v10[3];
}

Swift::Void __swiftcall TextStackView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for TextStackView();
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v4 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4)
  {
    v7 = sub_AB92A0();
    v9 = v8;
    if (v7 == sub_AB92A0() && v9 == v10)
    {

      goto LABEL_16;
    }

    v12 = sub_ABB3C0();

    if (v12)
    {
LABEL_16:
      if (!isa)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v14 = *&v2[v13];
  if (v14)
  {
    v15 = *(v14 + 64);

    [v15 removeAllObjects];
    [*(v14 + 80) removeAllObjects];
    if (*(v14 + 96))
    {
      *(v14 + 104) = 1;
    }

    else
    {
      v16 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v16 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v14];
    }
  }

  [v2 setNeedsLayout];
  if (isa)
  {
LABEL_17:
    [(objc_class *)isa displayScale];
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30, &qword_B016E0);
  v17 = [v2 traitCollection];
  [v17 displayScale];

  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v2 setNeedsLayout];
  }
}

Swift::Int sub_2E90D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_ABB5C0();
  sub_2F3228(v1, v2, v3, v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  sub_ABB600(*&v6);
  return sub_ABB610();
}

void sub_2E9164(uint64_t a1)
{
  v2 = v1[4];
  sub_2F3228(*v1, v1[1], v1[2], v1[3]);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_ABB600(*&v3);
}

Swift::Int sub_2E91B4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_ABB5C0();
  sub_2F3228(v2, v3, v4, v5);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  sub_ABB600(*&v7);
  return sub_ABB610();
}

uint64_t sub_2E923C(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_2E927C(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  v22 = OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews;

  swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
    v11 = v7;
LABEL_11:
    v7 = (v11 - 1) & v11;
    v13 = *(v2 + v8);
    if (*(v13 + 16))
    {
      v14 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_2EBF88(v15, v16);
      if (v18)
      {
        v19 = *(*(v13 + 56) + 8 * v17);

        v20 = *(v19 + 256);
        if (v20)
        {
          *(v19 + 256) = 0;
          [v20 setHidden:1];
          swift_beginAccess();
          v21 = v20;
          sub_AB9730();
          if (*(&dword_10 + (*(v2 + v22) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v22) & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v11 = *(v4 + 8 * v12);
    ++v9;
    if (v11)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2E94A4(char **a1@<X8>, CGFloat a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v295 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  __chkstk_darwin();
  v309 = &v291 - v12;
  v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  v296 = v6;
  v14 = *(v6 + v13);
  v411[0] = a2;
  v303 = a3;
  v304 = a5;
  v411[1] = a3;
  v411[2] = a4;
  v411[3] = a5;
  v311 = a6;
  v411[4] = a6;
  if (*(v14 + 16))
  {

    v15 = sub_2EC31C(v411);
    if (v16)
    {
      v17 = (*(v14 + 56) + (v15 << 6));
      v19 = v17[2];
      v18 = v17[3];
      v20 = v17[1];
      v358 = *v17;
      v359 = v20;
      v360 = v19;
      v361 = v18;
      sub_2F5360(&v358, &v347);

      v22 = *(&v358 + 1);
      v21 = v358;
      v24 = v359.n128_f64[1];
      v23 = v359.n128_f64[0];
      v26 = v360.n128_f64[1];
      v25 = v360.n128_f64[0];
      v27 = v361.n128_f64[1];
      v28 = v361.n128_f64[0];
LABEL_95:
      v290 = v295;
      *v295 = v21;
      v290[1] = v22;
      v290[2] = v23;
      v290[3] = v24;
      v290[4] = v25;
      v290[5] = v26;
      v290[6] = v28;
      v290[7] = v27;
      return;
    }
  }

  v294 = v13;
  v29 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  v30 = v296;
  swift_beginAccess();
  v31 = v30;
  v28 = 0.0;
  v310 = *(v30 + v29);
  if (!v310)
  {
    v146 = 0;
    v147 = 0;
    v27 = 0.0;
    v21 = _swiftEmptyArrayStorage;
    v26 = 0.0;
    v23 = 0.0;
    v22 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
LABEL_94:
    *&v358 = v21;
    *(&v358 + 1) = v22;
    v359.n128_f64[0] = v23;
    v359.n128_f64[1] = v24;
    v360.n128_f64[0] = v25;
    v360.n128_f64[1] = v26;
    v361.n128_f64[0] = v28;
    v361.n128_f64[1] = v27;
    v287 = v294;
    v288 = v31;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v395.n128_u64[0] = *(v288 + v287);
    *(v288 + v287) = 0x8000000000000000;
    sub_91D88(&v358, v411, isUniquelyReferenced_nonNull_native);
    *(v288 + v287) = v395.n128_u64[0];
    swift_endAccess();

    sub_17654(v146, v147);
    goto LABEL_95;
  }

  sub_11F44(&v395);
  v32 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v33 = *(v30 + v32);
  if (v33 >> 62)
  {
    goto LABEL_98;
  }

  v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
  v318 = a2;
  v319 = a4;
  if (!v34)
  {
    v391 = v399;
    v392 = v400;
    v393 = v401;
    v394 = v402;
    v387 = v395;
    v388 = v396;
    v389 = v397;
    v390 = v398;

    v299 = 0;
    v300 = 0;
    v27 = 0.0;
    v40 = _swiftEmptyArrayStorage;
    v129 = _swiftEmptyArrayStorage[2];
    if (v129)
    {
      goto LABEL_59;
    }

    goto LABEL_64;
  }

  v316 = v34 - 1;
  if (v34 < 1)
  {
    __break(1u);
    goto LABEL_100;
  }

  v35 = v296 + OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle;
  v317 = v33 & 0xC000000000000001;

  v315 = v35;
  swift_beginAccess();
  v299 = 0;
  v300 = 0;
  v27 = 0.0;
  v320 = 0.0;
  *&v36 = 0.0;
  v351 = v399;
  v352 = v400;
  v353 = v401;
  v354 = v402;
  v293 = &v359;
  v302 = (&v358 + 7);
  v347 = v395;
  v348 = v396;
  v349 = v397;
  v350 = v398;
  v41 = *&UIEdgeInsetsZero.top;
  v37 = *&UIEdgeInsetsZero.bottom;
  v297 = *&UIEdgeInsetsZero.top;
  v298 = v37;
  v38 = 0.0;
  MinY = 0.0;
  v39 = 0.0;
  v292 = NSParagraphStyleAttributeName;
  v40 = _swiftEmptyArrayStorage;
  v41.n128_f64[0] = v303;
  v42 = v304;
  v325 = v303;
  v301 = v33;
  while (1)
  {
    v324 = *&v36;
    if (v317)
    {
      v43 = sub_36003C(v36, v33, v41);
    }

    else
    {
      v43 = *(v33 + 8 * v36 + 32);
    }

    swift_beginAccess();
    v44 = *(v43 + 48);
    v45 = *(v43 + 80);
    v46 = *(v43 + 96);
    v413 = *(v43 + 64);
    v414 = v45;
    v415 = v46;
    v47 = *(v43 + 32);
    v412[1] = v44;
    v412[0] = v47;
    v322 = *&v44;
    v48 = *(&v413 + 1);
    swift_beginAccess();
    v49 = *(v43 + 112);
    v50 = *(v43 + 120);
    if ((v48 & ~(v48 >> 63)) != 0)
    {
      *&v326 = *(v43 + 112);
      *(&v326 + 1) = v50;
      sub_2F118(v412, &v358);
      sub_2F118(v412, &v358);

      v51 = v309;
      sub_AB3550();
      v52 = sub_AB35C0();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      sub_36A48();
      if ((v48 & ~(v48 >> 63)) == 1)
      {
        v53 = sub_ABAA50();
      }

      else
      {
        v53 = sub_ABAA40();
      }

      v49 = v53;
      v55 = v54;
      sub_12E1C(v51, &qword_DEAC40, &qword_AFA040);

      v50 = v55;
    }

    else
    {
      sub_2F118(v412, &v358);
      sub_2F118(v412, &v358);
    }

    v56 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v56 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v312 = v39;
      v313 = v28;
      v314 = v38;
      v57 = a4;
      v58 = a2;
      if ((*(v315 + 32) & 1) == 0)
      {
        v417.size.width = *(v315 + 16);
        v59 = *(v315 + 24);
        v60 = *v315;
        v61 = *(v315 + 8);
        v417.origin.x = *v315;
        v417.origin.y = v61;
        width = v417.size.width;
        v417.size.height = v59;
        v442.origin.x = a2;
        v442.origin.y = v325;
        v442.size.width = a4;
        v442.size.height = v42;
        v418 = CGRectIntersection(v417, v442);
        IsNull = CGRectIsNull(v418);
        v57 = a4;
        v58 = a2;
        if (!IsNull)
        {
          v419.origin.x = v60;
          v419.origin.y = v61;
          v64 = width;
          v419.size.width = width;
          v419.size.height = v59;
          *&v307 = CGRectGetMinX(v419);
          v420.origin.x = a2;
          v65 = v325;
          v420.origin.y = v325;
          v420.size.width = a4;
          v420.size.height = v42;
          MinX = CGRectGetMinX(v420);
          *&v308 = v59;
          v67 = *&v307 - MinX;
          v421.origin.x = a2;
          v421.origin.y = v65;
          v421.size.width = a4;
          v421.size.height = v42;
          MaxX = CGRectGetMaxX(v421);
          v422.origin.x = v60;
          v422.origin.y = v61;
          v422.size.width = v64;
          *&v422.size.height = v308;
          v69 = MaxX - CGRectGetMaxX(v422);
          v57 = v67;
          v58 = a2;
          if (v69 >= v67)
          {
            v423.origin.x = a2;
            v423.origin.y = v325;
            v423.size.width = a4;
            v423.size.height = v42;
            v58 = CGRectGetWidth(v423) - v69 + a2;
            v57 = v69;
          }
        }
      }

      v70 = v58;
      sub_2F3F88(v412, v49, v50);
      sub_AB3A00();
      v72 = v71;
      v342 = v351;
      v343 = v352;
      v344 = v353;
      v345 = v354;
      v338 = v347;
      v339 = v348;
      v340 = v349;
      v341 = v350;
      v73 = sub_11D03C(&v338);
      v74 = *(v43 + 48);
      v75 = *(v43 + 64);
      v76 = *(v43 + 96);
      v416[3] = *(v43 + 80);
      v416[4] = v76;
      if (v73 == 1)
      {
        v28 = v42;
      }

      else
      {
        v28 = v42 + v344.n128_f64[1] - v72;
      }

      v416[1] = v74;
      v416[2] = v75;
      v416[0] = *(v43 + 32);
      sub_2F118(v416, &v358);
      sub_2F4268(v416);
      v78 = v77;
      sub_2F174(v416);
      v321 = v40;
      if (v78)
      {
        _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(v49, v50, v78);
        v306 = v79;
        v307 = v80;
        v305 = v81;
        v308 = v82;

        *&v83.f64[0] = v306;
        *&v83.f64[1] = v307;
        *&v84.f64[0] = v305;
        *&v84.f64[1] = v308;
        a2 = v318;
        a4 = v319;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v83, v297), vceqq_f64(v84, v298)))) & 1) == 0)
        {
          v28 = v28 + *&v306 + *&v305;
        }
      }

      else
      {
        a2 = v318;
        a4 = v319;
      }

      v87 = *(v310 + 32);
      v88 = *(v310 + 64);
      v89 = *(v310 + 72);
      v33 = *(v310 + 80);
      v90 = *(v310 + 88);
      v91 = *(v310 + 40);
      sub_108594(v49, v50, v412, v91, v88, v89, v33, v90, &v403, v57, v28, v87);
      v383 = v407;
      v384 = v408;
      v385 = v409;
      v386 = v410;
      v379 = v403;
      v380 = v404;
      v381 = v405;
      v382 = v406;
      sub_2F174(v412);

      *&v27 = *&v320 + v410;
      if (__OFADD__(*&v320, v410))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        v34 = sub_ABB060();
        goto LABEL_8;
      }

      if (v48 < 0)
      {
        LOBYTE(v376[0]) = 0;
        if (BYTE8(v404))
        {
          *&v94 = *&v320 + v410;
          v33 = v403;
          v95 = [v403 length];
          v96 = swift_allocObject();
          *(v96 + 16) = v376;
          sub_17654(v300, v299);
          v97 = swift_allocObject();
          *(v97 + 16) = sub_2F5A64;
          *(v97 + 24) = v96;
          v360.n128_u64[0] = sub_18BC40;
          v360.n128_u64[1] = v97;
          *&v358 = _NSConcreteStackBlock;
          *(&v358 + 1) = 1107296256;
          v359.n128_u64[0] = sub_9B8A0;
          v359.n128_u64[1] = &block_descriptor_81;
          v98 = _Block_copy(&v358);

          [v33 enumerateAttribute:v292 inRange:0 options:v95 usingBlock:{0, v98}];
          _Block_release(v98);
          LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

          if (v95)
          {
            goto LABEL_97;
          }

          v99 = sub_2F5A64;
          v27 = v94;
          v92 = v376[0];
        }

        else
        {
          v92 = 0;
          v96 = v299;
          v99 = v300;
        }

        v93 = v70;
        v299 = v96;
        v300 = v99;
        v40 = v321;
        v33 = v301;
      }

      else
      {
        v40 = v321;
        v92 = LOBYTE(v322);
        v33 = v301;
        v93 = v70;
      }

      v39 = *(&v406 + 1);
      v28 = *&v406;
      if (((1 << v92) & 0x15) != 0)
      {
        v100 = v325;
        v101 = v57;
        v102 = v42;
        v38 = CGRectGetMinX(*&v93);
      }

      else if (((1 << v92) & 0x22) != 0)
      {
        v103 = v325;
        v104 = v57;
        v105 = v42;
        v106 = CGRectGetMaxX(*&v93);
        v424.origin.x = 0.0;
        v424.origin.y = 0.0;
        v424.size.width = v28;
        v424.size.height = v39;
        v38 = v106 - CGRectGetWidth(v424);
      }

      else
      {
        sub_ABA470();
        v38 = v107;
        v28 = v108;
        v39 = v109;
      }

      v376[4] = v351;
      v376[5] = v352;
      v377 = v353;
      v378 = v354;
      v376[0] = v347;
      v376[1] = v348;
      v376[2] = v349;
      v376[3] = v350;
      if (sub_11D03C(v376) == 1)
      {
        v425.origin.x = a2;
        v425.origin.y = v325;
        v425.size.width = a4;
        v425.size.height = v42;
        MinY = CGRectGetMinY(v425);
        v110 = 0.0;
      }

      else
      {
        v362 = v351;
        v363 = v352;
        v364 = v353;
        v365[0] = v354;
        v358 = v347;
        v359 = v348;
        v360 = v349;
        v361 = v350;
        sub_109B04(&v358, &v368);
        v426.size.width = v313;
        v426.origin.x = v314;
        v426.origin.y = MinY;
        v426.size.height = v312;
        MaxY = CGRectGetMaxY(v426);
        v427.origin.y = v72 + MaxY - v377.n128_f64[1];
        v427.origin.x = v38;
        MinY = v427.origin.y;
        v427.size.width = v28;
        v427.size.height = v39;
        v112 = CGRectGetMinY(v427);
        sub_12E1C(&v347, &qword_DF08F8, &unk_B09110);
        v110 = v112 - MaxY + 0.0;
      }

      sub_109B04(&v403, &v358);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_6AA40(0, *(v40 + 2) + 1, 1, v40);
      }

      v114 = *(v40 + 2);
      v113 = *(v40 + 3);
      if (v114 >= v113 >> 1)
      {
        v40 = sub_6AA40((v113 > 1), v114 + 1, 1, v40);
      }

      v115 = v380;
      v116 = v302;
      *v302 = v379;
      v116[1] = v115;
      v117 = v382;
      v116[2] = v381;
      v116[3] = v117;
      v118 = v386;
      v116[6] = v385;
      v116[7] = v118;
      v119 = v384;
      v116[4] = v383;
      v116[5] = v119;
      *(v40 + 2) = v114 + 1;
      v120 = &v40[176 * v114];
      *(v120 + 4) = v43;
      v120[40] = v92;
      *(v120 + 41) = v358;
      v121 = v359;
      v122 = v360;
      v123 = v361;
      *(v120 + 105) = v362;
      *(v120 + 89) = v123;
      *(v120 + 73) = v122;
      *(v120 + 57) = v121;
      v124 = v363;
      v125 = v364;
      v126 = v365[0];
      *(v120 + 21) = *(v365 + 15);
      *(v120 + 153) = v126;
      *(v120 + 137) = v125;
      *(v120 + 121) = v124;
      v125.n128_f64[0] = MinY;
      *(v120 + 22) = v38;
      *(v120 + 23) = v125.n128_u64[0];
      *(v120 + 24) = v28;
      *(v120 + 25) = v39;
      v124.n128_f64[0] = v38;
      *&v126 = v28;
      v127 = v39;
      Height = CGRectGetHeight(*v124.n128_u64);

      sub_12E1C(&v347, &qword_DF08F8, &unk_B09110);

      sub_2F174(v412);
      v325 = v325 + v110 + Height;
      v42 = v42 - (v110 + Height);
      v372 = v383;
      v373 = v384;
      v374 = v385;
      v375 = v386;
      v368 = v379;
      v369 = v380;
      v370 = v381;
      v371 = v382;
      UIScreen.Dimensions.size.getter();
      v330 = v372;
      v331 = v373;
      v332 = v374;
      v333 = v375;
      v326 = v368;
      v327 = v369;
      v85 = v370;
      v86 = v371;
      v320 = v27;
    }

    else
    {
      sub_2F174(v412);

      sub_2F174(v412);
      v330 = v351;
      v331 = v352;
      v332 = v353;
      v333 = v354;
      v326 = v347;
      v327 = v348;
      v85 = v349;
      v86 = v350;
    }

    v328 = v85;
    v329 = v86;
    if (v316 == *&v324)
    {
      break;
    }

    v351 = v330;
    v352 = v331;
    v353 = v332;
    v354 = v333;
    v347 = v326;
    v348 = v327;
    v41 = v328;
    v36 = *&v324 + 1;
    v349 = v328;
    v350 = v329;
  }

  v391 = v330;
  v392 = v331;
  v393 = v332;
  v394 = v333;
  v387 = v326;
  v388 = v327;
  v389 = v328;
  v390 = v329;
  v28 = 0.0;
  v129 = *(v40 + 2);
  if (!v129)
  {
LABEL_64:
    sub_12E1C(&v387, &qword_DF08F8, &unk_B09110);

    v26 = 0.0;
    v23 = 0.0;
    v22 = 0.0;
    v25 = 0.0;
    v21 = v40;
    v24 = 0.0;
    v31 = v296;
    v147 = v299;
    v146 = v300;
    goto LABEL_94;
  }

LABEL_59:
  v130 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  v131 = v296;
  swift_beginAccess();
  if (!*(v131 + v130))
  {
    v148 = *(v40 + 10);
    v365[0] = *(v40 + 9);
    v365[1] = v148;
    v149 = *(v40 + 12);
    v366 = *(v40 + 11);
    v367 = v149;
    v150 = *(v40 + 6);
    v361 = *(v40 + 5);
    v362 = v150;
    v151 = *(v40 + 8);
    v363 = *(v40 + 7);
    v364 = v151;
    v152 = *(v40 + 3);
    v358 = *(v40 + 2);
    v359 = v152;
    v360 = *(v40 + 4);
    v153 = v358;
    swift_beginAccess();
    v154 = *(v153 + 48);
    v155 = *(v153 + 80);
    v156 = *(v153 + 96);
    v381 = *(v153 + 64);
    v382 = v155;
    v383 = v156;
    v157 = *(v153 + 32);
    v380 = v154;
    v379 = v157;
    swift_beginAccess();
    v158 = *(v153 + 112);
    v159 = *(v153 + 120);
    v160 = *&v383;
    sub_2F52E4(&v358, &v347);

    sub_2F118(&v379, &v347);

    TextLabelProperties.scaledValue(forValue:text:)(v158, v159, v160);

    sub_2F174(&v379);
    sub_AB3A10();
    v145 = v161;

    goto LABEL_66;
  }

  if (*(v131 + v130) == 1)
  {
    v132 = &v40[176 * v129];
    v133 = *(v132 - 9);
    v134 = *(v132 - 7);
    v359 = *(v132 - 8);
    v360 = v134;
    v358 = v133;
    v135 = *(v132 - 6);
    v136 = *(v132 - 5);
    v137 = *(v132 - 4);
    v364 = *(v132 - 3);
    v363 = v137;
    v362 = v136;
    v361 = v135;
    v138 = *(v132 - 2);
    v139 = *(v132 - 1);
    v140 = *v132;
    v367 = *(v132 + 1);
    v366 = v140;
    v365[1] = v139;
    v365[0] = v138;
    v142 = *(&v140 + 1);
    v141 = *&v140;
    v143 = v367;
    sub_2F52E4(&v358, &v347);
    v428.origin.x = a2;
    v428.origin.y = v303;
    v428.size.height = v304;
    v428.size.width = a4;
    CGRectGetMaxY(v428);
    v429.origin.x = v141;
    v429.origin.y = v142;
    v429.size = v143;
    CGRectGetMaxY(v429);
    sub_AB3A00();
    v145 = v144;
LABEL_66:
    sub_2F5398(&v358);
    goto LABEL_68;
  }

  v162 = &v40[176 * v129];
  v163 = *(v162 - 9);
  v164 = *(v162 - 7);
  v359 = *(v162 - 8);
  v360 = v164;
  v358 = v163;
  v165 = *(v162 - 6);
  v166 = *(v162 - 5);
  v167 = *(v162 - 4);
  v364 = *(v162 - 3);
  v363 = v167;
  v362 = v166;
  v361 = v165;
  v168 = *(v162 - 2);
  v169 = *(v162 - 1);
  v170 = *v162;
  v367 = *(v162 + 1);
  v366 = v170;
  v365[1] = v169;
  v365[0] = v168;
  v172 = *(&v170 + 1);
  v171 = *&v170;
  v173 = v367;
  v174 = v358;
  sub_2F52E4(&v358, &v347);

  v430.origin.x = a2;
  v430.origin.y = v303;
  v430.size.height = v304;
  v430.size.width = a4;
  v175 = CGRectGetMaxY(v430);
  v431.origin.x = v171;
  v431.origin.y = v172;
  v431.size = v173;
  v176 = v175 - CGRectGetMaxY(v431);
  swift_beginAccess();
  v177 = *(v174 + 48);
  v178 = *(v174 + 80);
  v179 = *(v174 + 96);
  v381 = *(v174 + 64);
  v382 = v178;
  v383 = v179;
  v180 = *(v174 + 32);
  v380 = v177;
  v379 = v180;
  swift_beginAccess();
  v181 = *(v174 + 112);
  v182 = *(v174 + 120);
  sub_2F118(&v379, &v347);

  sub_2F45C4(&v379, v181, v182);
  v184 = v183;

  sub_2F174(&v379);

  sub_2F5398(&v358);
  v145 = v176 - v184;
LABEL_68:
  v185 = *(v40 + 2);
  v321 = v40;
  v324 = v27;
  v325 = v185;
  if (v185 != 0.0)
  {
    v186 = (v40 + 32);
    v21 = _swiftEmptyArrayStorage;
    v24 = 0.0;
    while (1)
    {
      v195 = *v186;
      v196 = v186[2];
      v348 = v186[1];
      v349 = v196;
      v347 = v195;
      v197 = v186[3];
      v198 = v186[4];
      v199 = v186[6];
      v352 = v186[5];
      v353 = v199;
      v350 = v197;
      v351 = v198;
      v200 = v186[7];
      v201 = v186[8];
      v202 = v186[10];
      v356 = v186[9];
      v357 = v202;
      v354 = v200;
      v355 = v201;
      v203 = v356;
      v204 = v202;
      sub_2F52E4(&v347, &v358);
      v433.origin = v203;
      v433.size = v204;
      v205 = CGRectGetMinX(v433);
      v434.origin = v203;
      v434.size = v204;
      v206 = CGRectGetMinY(v434);
      v344 = v353;
      v345 = v354;
      v346 = v355;
      v340 = v349;
      v341 = v350;
      v342 = v351;
      v343 = v352;
      v338 = v347;
      v339 = v348;
      v364 = v353;
      v365[0] = v354;
      v365[1] = v355;
      v360 = v349;
      v361 = v350;
      v363 = v352;
      v362 = v351;
      v207 = v145 + v206;
      v358 = v347;
      v359 = v348;
      *&v366 = v205;
      *(&v366 + 1) = v145 + v206;
      v367 = v204;
      sub_2F52E4(&v347, &v326);
      sub_2F52E4(&v358, &v326);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_6AA40(0, *(v21 + 2) + 1, 1, v21);
      }

      v209 = *(v21 + 2);
      v208 = *(v21 + 3);
      if (v209 >= v208 >> 1)
      {
        v21 = sub_6AA40((v208 > 1), v209 + 1, 1, v21);
      }

      v210 = v347.n128_i8[8];
      *(v21 + 2) = v209 + 1;
      v211 = &v21[176 * v209];
      v212 = v364;
      v213 = v362;
      v214 = v361;
      *(v211 + 7) = v363;
      *(v211 + 8) = v212;
      *(v211 + 5) = v214;
      *(v211 + 6) = v213;
      v215 = v367;
      v216 = v365[1];
      v217 = v365[0];
      *(v211 + 11) = v366;
      *(v211 + 12) = v215;
      *(v211 + 9) = v217;
      *(v211 + 10) = v216;
      v218 = v358;
      v219 = v360;
      *(v211 + 3) = v359;
      *(v211 + 4) = v219;
      *(v211 + 2) = v218;
      v220 = 1 << v210;
      if ((v220 & 0x15) != 0)
      {
        v432.origin.x = v205;
        v432.origin.y = v207;
        v432.size = v204;
        v187 = CGRectGetMaxX(v432);
        v188 = a2;
        v189 = v303;
        v190 = v304;
        v191 = v319;
      }

      else
      {
        if ((v220 & 0x22) == 0)
        {
          v436.origin.x = v205;
          v436.origin.y = v207;
          v436.size = v204;
          v221 = CGRectGetWidth(v436);
          if (v24 <= v221)
          {
            v24 = v221;
          }

          v332 = v344;
          v333 = v345;
          v334 = v346;
          v328 = v340;
          v329 = v341;
          v330 = v342;
          v331 = v343;
          v326 = v338;
          v327 = v339;
          v335 = v205;
          v336 = v207;
          v337 = v204;
          sub_2F5398(&v326);
          v194 = &v347;
          goto LABEL_74;
        }

        v435.origin.x = a2;
        v435.origin.y = v303;
        v435.size.height = v304;
        v435.size.width = v319;
        v187 = CGRectGetMaxX(v435);
        v188 = v205;
        v189 = v207;
        v190 = v204.height;
        v191 = v204.width;
      }

      v192 = CGRectGetMinX(*&v188);
      sub_2F5398(&v347);
      v193 = v187 - v192;
      a2 = v318;
      if (v24 <= v193)
      {
        v24 = v193;
      }

      v332 = v344;
      v333 = v345;
      v334 = v346;
      v328 = v340;
      v329 = v341;
      v330 = v342;
      v331 = v343;
      v326 = v338;
      v327 = v339;
      v335 = v205;
      v336 = v207;
      v337 = v204;
      v194 = &v326;
LABEL_74:
      sub_2F5398(v194);
      v186 += 11;
      --*&v185;
      if (v185 == 0.0)
      {
        goto LABEL_86;
      }
    }
  }

  v21 = _swiftEmptyArrayStorage;
  v24 = 0.0;
LABEL_86:
  v222 = *(v21 + 2);
  if (v222)
  {
    v223 = *(v21 + 18);
    v224 = *(v21 + 22);
    v225 = *(v21 + 23);
    v226 = *(v21 + 24);
    v227 = *(v21 + 25);

    v437.origin.x = v224;
    v437.origin.y = v225;
    v437.size.width = v226;
    v437.size.height = v227;
    v228 = CGRectGetMinY(v437);
    v229 = v321;
    if (v222 <= *(v21 + 2))
    {
      v322 = v223 + v228;
      MinY = v223;
      v230 = &v21[176 * v222];
      v231 = *(v230 - 9);
      v232 = *(v230 - 7);
      v359 = *(v230 - 8);
      v360 = v232;
      v358 = v231;
      v233 = *(v230 - 6);
      v234 = *(v230 - 5);
      v235 = *(v230 - 4);
      v364 = *(v230 - 3);
      v363 = v235;
      v362 = v234;
      v361 = v233;
      v236 = *(v230 - 2);
      v237 = *(v230 - 1);
      v238 = *v230;
      v367 = *(v230 + 1);
      v366 = v238;
      v365[1] = v237;
      v365[0] = v236;
      v239 = *(&v238 + 1);
      v241 = v367.height;
      v240 = v367.width;
      v242 = *&v238;
      v243 = *(&v236 + 1);
      sub_2F52E4(&v358, &v347);
      v438.origin.x = a2;
      v438.origin.y = v303;
      v438.size.height = v304;
      v438.size.width = v319;
      v244 = CGRectGetHeight(v438);
      v439.origin.x = v242;
      v439.origin.y = v239;
      v439.size.width = v240;
      v439.size.height = v241;
      v28 = v243;
      v245 = CGRectGetMaxY(v439);
      sub_2F5398(&v358);
      v23 = v243 + v244 - v245;
      if (v325 != 0.0)
      {
        goto LABEL_89;
      }

LABEL_92:
      sub_12E1C(&v387, &qword_DF08F8, &unk_B09110);

      v25 = 0.0;
      goto LABEL_93;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v28 = 0.0;
  v23 = 0.0;
  v322 = 0.0;
  MinY = 0.0;
  v229 = v321;
  if (v325 == 0.0)
  {
    goto LABEL_92;
  }

LABEL_89:
  v325 = v28;
  v246 = *(v229 + 2);
  if (v246)
  {
    v247 = *(v229 + 10);
    v365[0] = *(v229 + 9);
    v365[1] = v247;
    v248 = *(v229 + 12);
    v366 = *(v229 + 11);
    v367 = v248;
    v249 = *(v229 + 6);
    v361 = *(v229 + 5);
    v362 = v249;
    v250 = *(v229 + 8);
    v363 = *(v229 + 7);
    v364 = v250;
    v251 = *(v229 + 3);
    v358 = *(v229 + 2);
    v359 = v251;
    v360 = *(v229 + 4);
    v317 = *&v367.width;
    v318 = *(&v366 + 1);
    v252 = v367.height;
    v253 = v358;
    v254 = *&v366;
    v319 = *v365;
    v255 = &v229[176 * v246 + 32];
    v257 = *(v255 - 160);
    v256 = *(v255 - 144);
    v347 = *(v255 - 176);
    v348 = v257;
    v349 = v256;
    v258 = *(v255 - 80);
    v260 = *(v255 - 128);
    v259 = *(v255 - 112);
    v352 = *(v255 - 96);
    v353 = v258;
    v350 = v260;
    v351 = v259;
    v261 = *(v255 - 16);
    v263 = *(v255 - 64);
    v262 = *(v255 - 48);
    v356 = *(v255 - 32);
    v357 = v261;
    v354 = v263;
    v355 = v262;
    y = v356.y;
    v265 = v261;
    v266 = v347.n128_u64[0];
    x = v356.x;
    v320 = v263.n128_f64[1];
    sub_2F52E4(&v358, &v326);
    sub_2F52E4(&v347, &v326);
    v440.origin.x = x;
    v440.origin.y = y;
    v440.size = v265;
    v268 = CGRectGetMaxY(v440);
    v441.origin.x = v254;
    *&v441.size.width = v317;
    v441.origin.y = v318;
    v441.size.height = v252;
    v269 = v268 - CGRectGetMinY(v441) + 0.0;
    swift_beginAccess();
    v270 = *(v253 + 48);
    v271 = *(v253 + 80);
    v272 = *(v253 + 96);
    v328 = *(v253 + 64);
    v329 = v271;
    v330 = v272;
    v326 = *(v253 + 32);
    v327 = v270;
    swift_beginAccess();
    v273 = *(v253 + 112);
    v274 = *(v253 + 120);
    v275 = *&v330;

    sub_2F118(&v326, &v338);

    TextLabelProperties.scaledValue(forValue:text:)(v273, v274, v275);
    v277 = v276;

    sub_2F174(&v326);
    v278 = v269 + v277 - v319;
    swift_beginAccess();
    v279 = v266[3];
    v280 = v266[5];
    v281 = v266[6];
    v340 = v266[4];
    v341 = v280;
    v342 = v281;
    v338 = v266[2];
    v339 = v279;
    swift_beginAccess();
    v282 = v266[7].n128_i64[0];
    v283 = v266[7].n128_i64[1];
    v284 = v342.n128_f64[1];

    sub_2F118(&v338, v376);

    TextLabelProperties.scaledValue(forValue:text:)(v282, v283, v284);
    v286 = v285;
    sub_12E1C(&v387, &qword_DF08F8, &unk_B09110);

    sub_2F174(&v338);

    sub_2F5398(&v347);
    sub_2F5398(&v358);

    v25 = v278 + v286 - v320;
    v28 = v325;
LABEL_93:

    v31 = v296;
    v147 = v299;
    v146 = v300;
    v27 = v324;
    v22 = v322;
    v26 = MinY;
    goto LABEL_94;
  }

LABEL_101:
  __break(1u);
}

void sub_2EADD4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  sub_15F84(a1, v9, &unk_DE8E40, &unk_AF8050);
  if (v9[3])
  {
    sub_13C80(0, &qword_DF0930, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      v7 = [v8 alignment];
      if (v7 >= 5)
      {
        v9[0] = 0;
        v9[1] = 0xE000000000000000;
        sub_ABAD90(24);
        v10._object = 0x8000000000B4AB80;
        v10._countAndFlagsBits = 0xD000000000000013;
        sub_AB94A0(v10);
        [v8 alignment];
        v11._countAndFlagsBits = 0x6C4174786554534ELL;
        v11._object = 0xEF746E656D6E6769;
        sub_AB94A0(v11);
        v12._countAndFlagsBits = 32;
        v12._object = 0xE100000000000000;
        sub_AB94A0(v12);
        [v8 alignment];
        type metadata accessor for NSTextAlignment(0);
        sub_ABAF70();
        sub_ABAFD0();
        __break(1u);
      }

      else
      {
        *a5 = 0x2010300uLL >> (8 * v7);
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_12E1C(v9, &unk_DE8E40, &unk_AF8050);
  }
}

id TextStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment] = 1;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  *&v4[v11] = sub_99104(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  *&v4[v12] = sub_99214(_swiftEmptyArrayStorage);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TextStackView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id TextStackView.init(coder:)(void *a1)
{
  v2 = sub_2F53C8(a1);

  return v2;
}

id TextStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextStackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t TextStackView.Component.init(identifier:labelProperties:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = a3[2];
  v4 = a3[3];
  v6 = a3[1];
  *(v3 + 64) = v5;
  *(v3 + 80) = v4;
  v7 = a3[3];
  *(v3 + 96) = a3[4];
  v8 = a3[1];
  v9 = *a3;
  *(v3 + 32) = *a3;
  *(v3 + 48) = v8;
  v10 = a3[4];
  *(v3 + 192) = v7;
  *(v3 + 208) = v10;
  *(v3 + 160) = v6;
  *(v3 + 176) = v5;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0xE000000000000000;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 240) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 144) = v9;
  sub_2F118(a3, &v12);
  return v3;
}

uint64_t sub_2EB2A8()
{
  v1 = *(v0 + 192);
  v41 = *(v0 + 176);
  v42 = v1;
  v43 = *(v0 + 208);
  v2 = *(v0 + 160);
  v39 = *(v0 + 144);
  v40 = v2;
  swift_beginAccess();
  v3 = *(v0 + 48);
  v44 = *(v0 + 32);
  v45 = v3;
  v4 = *(v0 + 80);
  v46 = *(v0 + 64);
  v47 = v4;
  v48 = *(v0 + 96);
  if ((*(&v41 + 1) & 0x8000000000000000) == 0)
  {
    v27 = v39;
    v28 = v40;
    v29 = *(&v40 + 1);
    v30 = v41;
    v31 = BYTE8(v41);
    v32 = v42;
    if ((*(&v46 + 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    v33 = v44;
    v34 = v45;
    v35 = *(&v45 + 1);
    v36 = v46;
    v37 = BYTE8(v46);
    v38 = v47;
    sub_2F118(&v44, v26);
    sub_2F118(&v39, v26);
    if (!_s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(&v27, &v33))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ((*(&v46 + 1) & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  if (v39 == v44)
  {
    sub_2F118(&v44, v26);
    sub_2F118(&v39, v26);
LABEL_9:
    if (*(&v42 + 1) == *(&v47 + 1))
    {
      *&v26[0] = v43;
      *&v22[0] = v48;
      sub_7FD28();
      if (sub_AB38E0())
      {
        *&v26[0] = *(&v43 + 1);
        *&v22[0] = *(&v48 + 1);
        v6 = sub_AB38E0();
        sub_2F174(&v44);
        result = sub_2F174(&v39);
        if (v6)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v5 = sub_ABB3C0();
  sub_2F118(&v44, v26);
  sub_2F118(&v39, v26);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_2F174(&v44);
  sub_2F174(&v39);
LABEL_14:
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v23 = *(v0 + 64);
  v9 = v23;
  v24 = v8;
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 48);
  v22[0] = *(v0 + 32);
  v14 = v22[0];
  v22[1] = v13;
  v15 = *(v0 + 192);
  v26[2] = *(v0 + 176);
  v26[3] = v15;
  v26[4] = *(v0 + 208);
  v16 = *(v0 + 144);
  v26[1] = *(v0 + 160);
  v25 = v12;
  v26[0] = v16;
  v17 = *(v0 + 96);
  *(v0 + 192) = v11;
  *(v0 + 208) = v17;
  *(v0 + 160) = v10;
  *(v0 + 176) = v9;
  *(v0 + 144) = v14;
  sub_2F118(v22, &v21);
  result = sub_2F174(v26);
  v18 = *(v0 + 240);
  if (v18)
  {
    v19 = *(v0 + 248);

    v18(v20);
    return sub_17654(v18, v19);
  }

  return result;
}

__n128 TextStackView.Component.labelProperties.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v10 = v1[4];
  v11 = v3;
  v12 = v1[6];
  v4 = v1[3];
  v8 = v1[2];
  v9 = v4;
  sub_2F118(&v8, v7);
  v5 = v11;
  a1[2] = v10;
  a1[3] = v5;
  a1[4] = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t TextStackView.Component.labelProperties.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = a1[3];
  *(v1 + 64) = a1[2];
  *(v1 + 80) = v10;
  *(v1 + 96) = a1[4];
  v11 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v11;
  sub_2F118(a1, v13);
  sub_C7504(v3, v4, v5, v6, v7, v8, v9);
  sub_2EB2A8();
  return sub_2F174(a1);
}

void (*TextStackView.Component.labelProperties.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2EB6D0;
}

void sub_2EB6D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2EB2A8();
  }
}

void sub_2EB704()
{
  v2 = v0[28];
  v1 = v0[29];
  swift_beginAccess();
  v4 = v0[14];
  v3 = v0[15];
  v5 = v2 == v4 && v1 == v3;
  if (!v5 && (sub_ABB3C0() & 1) == 0)
  {
    v0[28] = v4;
    v0[29] = v3;

    v6 = v0[30];
    if (v6)
    {
      v7 = v0[31];

      v6(v8);
      sub_17654(v6, v7);
    }
  }
}

uint64_t TextStackView.Component.textValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

void TextStackView.Component.textValue.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[14] = a1;
  v2[15] = a2;

  v6 = v2[14];
  v5 = v2[15];
  v7 = v2[28] == v6 && v2[29] == v5;
  if (!v7 && (sub_ABB3C0() & 1) == 0)
  {
    v2[28] = v6;
    v2[29] = v5;

    v8 = v2[30];
    if (v8)
    {
      v9 = v2[31];

      v8(v10);
      sub_17654(v8, v9);
    }
  }
}

void (*TextStackView.Component.textValue.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2EB914;
}

void sub_2EB914(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v6 = v4[14];
    v5 = v4[15];
    if ((v4[28] != v6 || v4[29] != v5) && (sub_ABB3C0() & 1) == 0)
    {
      v8 = *(a1 + 24);
      v4[28] = v6;
      v4[29] = v5;

      v9 = *(v8 + 240);
      if (v9)
      {
        v10 = *(*(a1 + 24) + 248);

        v9(v11);

        sub_17654(v9, v10);
      }
    }
  }
}

uint64_t TextStackView.Component.compositingFilter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

void *TextStackView.Component.compositingFilter.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[16] = a1;
  v2[17] = a2;

  result = v2[32];
  if (result)
  {
    v6 = [result layer];
    if (v2[17])
    {

      v7 = sub_AB9260();
    }

    else
    {
      v7 = 0;
    }

    [v6 setCompositingFilter:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*TextStackView.Component.compositingFilter.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2EBB4C;
}

void sub_2EBB4C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 256);
    if (v5)
    {
      v7 = [v5 layer];
      if (*(v4 + 136))
      {

        v6 = sub_AB9260();
      }

      else
      {
        v6 = 0;
      }

      [v7 setCompositingFilter:v6];
      swift_unknownObjectRelease();
    }
  }
}

void TextStackView.Component.hash(into:)(uint64_t a1)
{
  sub_AB93F0();
  swift_beginAccess();
  v3 = *(v1 + 80);
  v8[2] = *(v1 + 64);
  v8[3] = v3;
  v8[4] = *(v1 + 96);
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v8[1] = v4;
  sub_2F118(v8, v7);
  TextLabelProperties.hash(into:)(a1);
  sub_2F174(v8);
  swift_beginAccess();

  sub_AB93F0();

  v5 = *(v1 + 256);
  if (v5)
  {
    sub_ABB5E0(1u);
    v6 = v5;
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5E0(0);
  }
}

uint64_t TextStackView.Component.deinit()
{

  sub_C7504(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  sub_C7504(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  sub_17654(*(v0 + 240), *(v0 + 248));

  return v0;
}

uint64_t TextStackView.Component.__deallocating_deinit()
{
  TextStackView.Component.deinit();

  return swift_deallocClassInstance();
}

Swift::Int TextStackView.Component.hashValue.getter()
{
  sub_ABB5C0();
  sub_AB93F0();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v8[2] = *(v0 + 64);
  v8[3] = v1;
  v8[4] = *(v0 + 96);
  v2 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v8[1] = v2;
  sub_2F118(v8, &v6);
  TextLabelProperties.hash(into:)(v7);
  sub_2F174(v8);
  swift_beginAccess();

  sub_AB93F0();

  v3 = *(v0 + 256);
  if (v3)
  {
    sub_ABB5E0(1u);
    v4 = v3;
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

Swift::Int sub_2EBF14(uint64_t a1)
{
  sub_ABB5C0();
  (*(**v1 + 320))(v3);
  return sub_ABB610();
}

unint64_t sub_2EBF88(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  sub_AB93F0();
  v4 = sub_ABB610();

  return sub_2ECE20(a1, a2, v4);
}

unint64_t sub_2EC004(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABACF0(*(v2 + 40));

  return sub_2ECED8(a1, v4);
}

unint64_t sub_2EC048(uint64_t a1)
{
  sub_AB3820();
  sub_2F587C(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v2 = sub_AB90D0();

  return sub_2ECFA0(a1, v2);
}

unint64_t sub_2EC120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DEA550, MPPropertySet_ptr);
}

unint64_t sub_2EC170(void *a1, uint64_t a2, char a3)
{
  sub_ABB5C0();
  if (a3)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  v6 = sub_ABB610();

  return sub_2ED164(a1, a2, a3 & 1, v6);
}

unint64_t sub_2EC220(unint64_t a1)
{
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v4, a1);
  v2 = sub_ABB610();

  return sub_2ED2B0(a1, v2);
}

unint64_t sub_2EC28C(uint64_t a1)
{
  sub_AB92A0();
  sub_ABB5C0();
  sub_AB93F0();
  v2 = sub_ABB610();

  return sub_2EEEA8(a1, v2);
}

unint64_t sub_2EC31C(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_ABB5C0();
  sub_2F3228(v2, v3, v4, v5);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  sub_ABB600(*&v7);
  v8 = sub_ABB610();

  return sub_2ED374(a1, v8);
}

unint64_t sub_2EC3D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DE7500, UIViewController_ptr);
}

unint64_t sub_2EC420(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSBarButtonItem);
}

unint64_t sub_2EC474(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &unk_DE8180, MPIdentifierSet_ptr);
}

unint64_t sub_2EC4C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_E02D50, UIKeyCommand_ptr);
}

unint64_t sub_2EC514(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  sub_ABB5C0();
  if (v2 == 2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    sub_ABB5E0(v1 & 1);
  }

  v3 = sub_ABB610();

  return sub_2ED5E8(v1, v3);
}

unint64_t sub_2EC5A8(char a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2ED678(a1 & 1, v2);
}

unint64_t sub_2EC668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  v8 = sub_ABB610();

  return sub_2ED7DC(a1, a2, a3, a4, v8);
}

unint64_t sub_2EC708(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSStoreFlowSegue);
}

unint64_t sub_2EC75C(Swift::UInt a1, Swift::UInt a2)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  sub_ABB5D0(a2);
  v4 = sub_ABB610();

  return sub_2ED8DC(a1, a2, v4);
}

unint64_t sub_2EC7DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSUserNotificationAuthorizationSegue);
}

unint64_t sub_2EC830(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DE9C10, MPModelPlaylistEntry_ptr);
}

unint64_t sub_2EC880(uint64_t a1)
{
  v1 = a1;
  sub_ABB5C0();
  sub_1BDE98(v1);
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2ED9C0(v1, v2);
}

unint64_t sub_2EC908(char a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2EDF48(a1 & 1, v2);
}

unint64_t sub_2EC9AC(uint64_t a1)
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(*(a1 + 8));
  sub_AB93F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  sub_AB3430();
  sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();
  v2 = sub_ABB610();

  return sub_2EE08C(a1, v2);
}

unint64_t sub_2ECAB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DEBCB0, NSOperation_ptr);
}

unint64_t sub_2ECB00(uint64_t a1)
{
  v1 = a1;
  sub_ABB5C0();
  v2 = v1 - 3;
  if ((v1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v2 = v1;
  }

  sub_ABB5D0(v2);
  v3 = sub_ABB610();

  return sub_2EE78C(v1, v3);
}

unint64_t sub_2ECB8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSSubscriptionPurchaseSegue);
}

unint64_t sub_2ECBE0(uint64_t a1)
{
  v1 = a1;
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2EE888(v1, v2);
}

unint64_t sub_2ECCE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DE7580, MPModelKind_ptr);
}

unint64_t sub_2ECD38(uint64_t a1)
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_4BF8AC(v4, *(a1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
  sub_AB3430();
  sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();
  v2 = sub_ABB610();

  return sub_2EEA74(a1, v2);
}

unint64_t sub_2ECE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_ABB3C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2ECED8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_9ACA0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_ABAD00();
      sub_8085C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2ECFA0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
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
      sub_2F587C(&qword_DF7940, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v16 = sub_AB91C0();
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

unint64_t sub_2ED164(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      if (*(v10 + 16))
      {
        if (a3)
        {
          sub_13C80(0, &qword_DFA720, NSObject_ptr);
          v13 = v11;
          v14 = sub_ABA790();
          sub_13CC8(v11, v12, 1);
          if (v14)
          {
            return v6;
          }
        }
      }

      else if ((a3 & 1) == 0)
      {
        v15 = v11 == a1 && v12 == a2;
        if (v15 || (sub_ABB3C0() & 1) != 0)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2ED2B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      v8 = (v7 & 0xFFFFFFFFFFFFFF9);
      LOBYTE(v7) = static JSViewModelKind.__derived_enum_equals(_:_:)(v7, a1);

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2ED374(CGFloat *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    do
    {
      v11 = (*(v2 + 48) + 40 * v4);
      x = v11[1].origin.x;
      v16.origin.x = v6;
      v16.origin.y = v7;
      v16.size.width = v8;
      v16.size.height = v9;
      v13 = CGRectEqualToRect(*v11, v16);
      if (x == v10 && v13)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2ED454(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_13C80(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_ABA790();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2ED520(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_ABA790();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2ED5E8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 2)
      {
        if (a1 == 2)
        {
          return result;
        }
      }

      else if (a1 != 2 && ((v7 ^ a1) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2ED678(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v6 = 0x487972617262696CLL;
    }

    if (a1)
    {
      v7 = 0xEF72656461654877;
    }

    else
    {
      v7 = 0xED00007265646165;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F4E6E657473696CLL : 0x487972617262696CLL;
      v9 = *(*(v2 + 48) + v4) ? 0xEF72656461654877 : 0xED00007265646165;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_2ED7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_ABB3C0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_ABB3C0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_2ED8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2ED954(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2ED9C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000007365;
      v8 = 0x6974697669746361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x736D75626C61;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x73747369747261;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x73726F7461727563;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x73676E6F73;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x736E6F6974617473;
          break;
        case 6:
          v8 = 0x75632D656C707061;
          v7 = 0xEE0073726F746172;
          break;
        case 7:
          v8 = 0x6169726F74696465;
          v7 = 0xEF736D6574692D6CLL;
          break;
        case 8:
          v8 = 0x6F6D2D636973756DLL;
          v9 = 1936025974;
          goto LABEL_19;
        case 9:
          v8 = 0x69762D636973756DLL;
          v9 = 1936680292;
LABEL_19:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0xA:
          v8 = 0x6F736970652D7674;
          v7 = 0xEB00000000736564;
          break;
        case 0xB:
          v7 = 0xE800000000000000;
          v8 = 0x73776F68732D7674;
          break;
        case 0xC:
          v8 = 0x646564616F6C7075;
          v7 = 0xEF736F656469762DLL;
          break;
        case 0xD:
          v8 = 0x6C2D64726F636572;
          v7 = 0xED0000736C656261;
          break;
        case 0xE:
          v8 = 0x702D6C6169636F73;
          v7 = 0xEF73656C69666F72;
          break;
        case 0xF:
          v8 = 0x7473696C79616C70;
          v7 = 0xE900000000000073;
          break;
        default:
          break;
      }

      v10 = 0x6974697669746361;
      v11 = 0xEA00000000007365;
      switch(a1)
      {
        case 1:
          v11 = 0xE600000000000000;
          if (v8 == 0x736D75626C61)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        case 2:
          v11 = 0xE700000000000000;
          if (v8 != 0x73747369747261)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 3:
          v11 = 0xE800000000000000;
          if (v8 != 0x73726F7461727563)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 4:
          v11 = 0xE500000000000000;
          if (v8 != 0x73676E6F73)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 5:
          v11 = 0xE800000000000000;
          if (v8 != 0x736E6F6974617473)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 6:
          v11 = 0xEE0073726F746172;
          if (v8 != 0x75632D656C707061)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 7:
          v12 = 0x6169726F74696465;
          v13 = 0x6D6574692D6CLL;
          goto LABEL_37;
        case 8:
          v14 = 0x6F6D2D636973756DLL;
          v15 = 1936025974;
          goto LABEL_52;
        case 9:
          v14 = 0x69762D636973756DLL;
          v15 = 1936680292;
LABEL_52:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 10:
          v10 = 0x6F736970652D7674;
          v11 = 0xEB00000000736564;
          goto LABEL_46;
        case 11:
          v11 = 0xE800000000000000;
          if (v8 != 0x73776F68732D7674)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 12:
          v12 = 0x646564616F6C7075;
          v13 = 0x6F656469762DLL;
          goto LABEL_37;
        case 13:
          v11 = 0xED0000736C656261;
          if (v8 != 0x6C2D64726F636572)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 14:
          v12 = 0x702D6C6169636F73;
          v13 = 0x656C69666F72;
LABEL_37:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          if (v8 != v12)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 15:
          v11 = 0xE900000000000073;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        default:
LABEL_46:
          if (v8 != v10)
          {
            goto LABEL_48;
          }

LABEL_47:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_48:
          v16 = sub_ABB3C0();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2EDF48(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C6169636F73;
    }

    else
    {
      v6 = 0x676F6C61746163;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C6169636F73 : 0x676F6C61746163;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_2EE08C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  v6 = *(v31 - 8);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v14 = *(v6 + 72);
    v32 = *a1;
    v33 = v13;
    while (1)
    {
      sub_15F84(*(v3 + 48) + v14 * v11, v8, &unk_DFEEE0, &qword_AF7AF0);
      if (sub_ABA790())
      {
        break;
      }

LABEL_5:
      sub_12E1C(v8, &unk_DFEEE0, &qword_AF7AF0);
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    v15 = a1;
    v16 = *(a1 + 8);
    v17 = 0xEA00000000007365;
    v18 = v14;
    v19 = 0x6974697669746361;
    switch(v8[8])
    {
      case 1:
        v17 = 0xE600000000000000;
        v19 = 0x736D75626C61;
        break;
      case 2:
        v17 = 0xE700000000000000;
        v19 = 0x73747369747261;
        break;
      case 3:
        v17 = 0xE800000000000000;
        v19 = 0x73726F7461727563;
        break;
      case 4:
        v17 = 0xE500000000000000;
        v19 = 0x73676E6F73;
        break;
      case 5:
        v17 = 0xE800000000000000;
        v19 = 0x736E6F6974617473;
        break;
      case 6:
        v19 = 0x75632D656C707061;
        v17 = 0xEE0073726F746172;
        break;
      case 7:
        v19 = 0x6169726F74696465;
        v17 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v19 = 0x6F6D2D636973756DLL;
        v20 = 1936025974;
        goto LABEL_23;
      case 9:
        v19 = 0x69762D636973756DLL;
        v20 = 1936680292;
LABEL_23:
        v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v19 = 0x6F736970652D7674;
        v17 = 0xEB00000000736564;
        break;
      case 11:
        v17 = 0xE800000000000000;
        v19 = 0x73776F68732D7674;
        break;
      case 12:
        v19 = 0x646564616F6C7075;
        v17 = 0xEF736F656469762DLL;
        break;
      case 13:
        v19 = 0x6C2D64726F636572;
        v17 = 0xED0000736C656261;
        break;
      case 14:
        v19 = 0x702D6C6169636F73;
        v17 = 0xEF73656C69666F72;
        break;
      case 15:
        v19 = 0x7473696C79616C70;
        v17 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v21 = v3;
    v22 = 0x6974697669746361;
    v23 = 0xEA00000000007365;
    switch(v16)
    {
      case 1:
        v23 = 0xE600000000000000;
        if (v19 == 0x736D75626C61)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      case 2:
        v23 = 0xE700000000000000;
        if (v19 != 0x73747369747261)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 3:
        v23 = 0xE800000000000000;
        if (v19 != 0x73726F7461727563)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 4:
        v23 = 0xE500000000000000;
        if (v19 != 0x73676E6F73)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 5:
        v23 = 0xE800000000000000;
        if (v19 != 0x736E6F6974617473)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 6:
        v23 = 0xEE0073726F746172;
        if (v19 != 0x75632D656C707061)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 7:
        v24 = 0x6169726F74696465;
        v25 = 0x6D6574692D6CLL;
        goto LABEL_41;
      case 8:
        v26 = 0x6F6D2D636973756DLL;
        v27 = 1936025974;
        goto LABEL_55;
      case 9:
        v26 = 0x69762D636973756DLL;
        v27 = 1936680292;
LABEL_55:
        v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v19 != v26)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 10:
        v22 = 0x6F736970652D7674;
        v23 = 0xEB00000000736564;
        goto LABEL_50;
      case 11:
        v23 = 0xE800000000000000;
        if (v19 != 0x73776F68732D7674)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 12:
        v24 = 0x646564616F6C7075;
        v25 = 0x6F656469762DLL;
        goto LABEL_41;
      case 13:
        v23 = 0xED0000736C656261;
        if (v19 != 0x6C2D64726F636572)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 14:
        v24 = 0x702D6C6169636F73;
        v25 = 0x656C69666F72;
LABEL_41:
        v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v19 != v24)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 15:
        v23 = 0xE900000000000073;
        if (v19 != 0x7473696C79616C70)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v19 != v22)
        {
          goto LABEL_52;
        }

LABEL_51:
        if (v17 == v23)
        {

          v3 = v21;
          a1 = v15;
          v14 = v18;
        }

        else
        {
LABEL_52:
          v28 = sub_ABB3C0();

          v3 = v21;
          a1 = v15;
          v14 = v18;
          if ((v28 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if ((sub_AB33E0() & 1) == 0)
        {
          goto LABEL_5;
        }

        sub_12E1C(v8, &unk_DFEEE0, &qword_AF7AF0);
        break;
    }
  }

  return v11;
}

unint64_t sub_2EE78C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6u:
            if (a1 == 6)
            {
              return result;
            }

            goto LABEL_4;
          case 7u:
            if (a1 == 7)
            {
              return result;
            }

            goto LABEL_4;
          case 8u:
            if (a1 == 8)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      else
      {
        switch(v7)
        {
          case 3u:
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          case 4u:
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5u:
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 9 <= 0xFFFFFFF9 && v7 == a1)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2EE888(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    v6 = 0xE700000000000000;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x6D75626C61;
        }

        else
        {
          v8 = 1735290739;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE800000000000000;
        v8 = 0x7473696C79616C70;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x69762D636973756DLL;
        }

        else
        {
          v8 = 0x6E6F6974617473;
        }

        if (v7 == 3)
        {
          v9 = 0xEB000000006F6564;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      if (v5 == 3)
      {
        v10 = 0x69762D636973756DLL;
      }

      else
      {
        v10 = 0x6E6F6974617473;
      }

      if (v5 == 3)
      {
        v6 = 0xEB000000006F6564;
      }

      if (v5 == 2)
      {
        v10 = 0x7473696C79616C70;
        v6 = 0xE800000000000000;
      }

      v11 = v5 ? 0x6D75626C61 : 1735290739;
      v12 = v5 ? 0xE500000000000000 : 0xE400000000000000;
      v13 = v5 <= 1 ? v11 : v10;
      v14 = v5 <= 1 ? v12 : v6;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_ABB3C0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v6 = 0xE700000000000000;
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

unint64_t sub_2EEA74(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
  v6 = *(v34 - 8);
  __chkstk_darwin();
  v8 = &v33 - v7;
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v38 = ~v10;
    sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v36 = v3;
    v37 = a1;
    v12 = *(v6 + 72);
    v35 = v3 + 64;
    do
    {
      sub_15F84(*(v3 + 48) + v12 * v11, v8, &unk_DFEF20, &qword_AFA570);
      if (sub_ABA790())
      {
        v13 = v8[8];
        if (v13 <= 3)
        {
          if (v13 == 2)
          {
            v16 = 1735290739;
          }

          else
          {
            v16 = 0x7473696C79616C70;
          }

          if (v13 == 2)
          {
            v17 = 0xE400000000000000;
          }

          else
          {
            v17 = 0xE800000000000000;
          }

          if (v8[8])
          {
            v18 = 0x6D75626C61;
          }

          else
          {
            v18 = 0x747369747261;
          }

          if (v8[8])
          {
            v19 = 0xE500000000000000;
          }

          else
          {
            v19 = 0xE600000000000000;
          }

          if (v8[8] <= 1u)
          {
            v14 = v18;
          }

          else
          {
            v14 = v16;
          }

          if (v8[8] <= 1u)
          {
            v15 = v19;
          }

          else
          {
            v15 = v17;
          }
        }

        else if (v8[8] <= 5u)
        {
          if (v13 == 4)
          {
            v14 = 0x646956636973756DLL;
          }

          else
          {
            v14 = 0x7265736F706D6F63;
          }

          if (v13 == 4)
          {
            v15 = 0xEA00000000006F65;
          }

          else
          {
            v15 = 0xE800000000000000;
          }
        }

        else if (v13 == 6)
        {
          v15 = 0xE600000000000000;
          v14 = 0x776F68537674;
        }

        else if (v13 == 7)
        {
          v14 = 0x646F736970457674;
          v15 = 0xE900000000000065;
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x6569766F6DLL;
        }

        v20 = *(v37 + 8);
        v21 = 0x646F736970457674;
        if (v20 != 7)
        {
          v21 = 0x6569766F6DLL;
        }

        v22 = 0xE900000000000065;
        if (v20 != 7)
        {
          v22 = 0xE500000000000000;
        }

        if (v20 == 6)
        {
          v21 = 0x776F68537674;
          v22 = 0xE600000000000000;
        }

        v23 = 0x7265736F706D6F63;
        if (v20 == 4)
        {
          v23 = 0x646956636973756DLL;
        }

        v24 = 0xEA00000000006F65;
        if (v20 != 4)
        {
          v24 = 0xE800000000000000;
        }

        if (*(v37 + 8) <= 5u)
        {
          v21 = v23;
          v22 = v24;
        }

        if (v20 == 2)
        {
          v25 = 1735290739;
        }

        else
        {
          v25 = 0x7473696C79616C70;
        }

        if (v20 == 2)
        {
          v26 = 0xE400000000000000;
        }

        else
        {
          v26 = 0xE800000000000000;
        }

        if (*(v37 + 8))
        {
          v27 = 0x6D75626C61;
        }

        else
        {
          v27 = 0x747369747261;
        }

        if (*(v37 + 8))
        {
          v28 = 0xE500000000000000;
        }

        else
        {
          v28 = 0xE600000000000000;
        }

        if (*(v37 + 8) <= 1u)
        {
          v25 = v27;
          v26 = v28;
        }

        if (*(v37 + 8) <= 3u)
        {
          v29 = v25;
        }

        else
        {
          v29 = v21;
        }

        if (*(v37 + 8) <= 3u)
        {
          v30 = v26;
        }

        else
        {
          v30 = v22;
        }

        if (v14 == v29 && v15 == v30)
        {

          v9 = v35;
          v3 = v36;
        }

        else
        {
          v31 = sub_ABB3C0();

          v9 = v35;
          v3 = v36;
          if ((v31 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (sub_AB33E0())
        {
          sub_12E1C(v8, &unk_DFEF20, &qword_AFA570);
          return v11;
        }
      }

LABEL_5:
      sub_12E1C(v8, &unk_DFEF20, &qword_AFA570);
      v11 = (v11 + 1) & v38;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2EEEA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_AB92A0();
      v8 = v7;
      if (v6 == sub_AB92A0() && v8 == v9)
      {
        break;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t sub_2EEFAC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_ABACA0();

    if (v6)
    {
      v7 = sub_2F1328(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v10 = sub_ABA780(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_ABA790();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25138();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2F1490(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_2EF144(void *a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_ABB5C0();
  if (a3)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  v8 = sub_ABB610();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v22 = v3;
  v11 = ~v9;
  while (1)
  {
    v12 = *(v7 + 48) + 24 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    if ((*(v12 + 16) & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v15 = v13;
      v16 = sub_ABA790();
      sub_13CC8(v13, v14, 1);
      if (v16)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    goto LABEL_6;
  }

  v17 = v13 == a1 && v14 == a2;
  if (!v17 && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v22;
  v23 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2514C();
    v19 = v23;
  }

  v20 = *(*(v19 + 48) + 24 * v10);
  sub_2F1630(v10);
  result = v20;
  *v22 = v23;
  return result;
}

uint64_t sub_2EF334(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_ABB5B0();
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
    sub_252B4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2F187C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_2EF424(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_ABB5C0();
  sub_AB93F0();
  v6 = sub_ABB610();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_ABB3C0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25418();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2F1A00(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2EF560(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  sub_1BDE98(a1);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 16;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEA00000000007365;
    v10 = 0x6974697669746361;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x736D75626C61;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v10 = 0x73747369747261;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x73726F7461727563;
        break;
      case 4:
        v9 = 0xE500000000000000;
        v10 = 0x73676E6F73;
        break;
      case 5:
        v9 = 0xE800000000000000;
        v10 = 0x736E6F6974617473;
        break;
      case 6:
        v10 = 0x75632D656C707061;
        v9 = 0xEE0073726F746172;
        break;
      case 7:
        v10 = 0x6169726F74696465;
        v9 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v10 = 0x6F6D2D636973756DLL;
        v11 = 1936025974;
        goto LABEL_19;
      case 9:
        v10 = 0x69762D636973756DLL;
        v11 = 1936680292;
LABEL_19:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0xA:
        v10 = 0x6F736970652D7674;
        v9 = 0xEB00000000736564;
        break;
      case 0xB:
        v9 = 0xE800000000000000;
        v10 = 0x73776F68732D7674;
        break;
      case 0xC:
        v10 = 0x646564616F6C7075;
        v9 = 0xEF736F656469762DLL;
        break;
      case 0xD:
        v10 = 0x6C2D64726F636572;
        v9 = 0xED0000736C656261;
        break;
      case 0xE:
        v10 = 0x702D6C6169636F73;
        v9 = 0xEF73656C69666F72;
        break;
      case 0xF:
        v10 = 0x7473696C79616C70;
        v9 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v12 = 0x6974697669746361;
    v13 = 0xEA00000000007365;
    switch(a1)
    {
      case 1:
        v13 = 0xE600000000000000;
        if (v10 == 0x736D75626C61)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        v13 = 0xE700000000000000;
        if (v10 != 0x73747369747261)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x73726F7461727563)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        v13 = 0xE500000000000000;
        if (v10 != 0x73676E6F73)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 5:
        v13 = 0xE800000000000000;
        if (v10 != 0x736E6F6974617473)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 6:
        v13 = 0xEE0073726F746172;
        if (v10 != 0x75632D656C707061)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 7:
        v14 = 0x6169726F74696465;
        v15 = 0x6D6574692D6CLL;
        goto LABEL_37;
      case 8:
        v16 = 0x6F6D2D636973756DLL;
        v17 = 1936025974;
        goto LABEL_52;
      case 9:
        v16 = 0x69762D636973756DLL;
        v17 = 1936680292;
LABEL_52:
        v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v16)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 10:
        v12 = 0x6F736970652D7674;
        v13 = 0xEB00000000736564;
        goto LABEL_46;
      case 11:
        v13 = 0xE800000000000000;
        if (v10 != 0x73776F68732D7674)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 12:
        v14 = 0x646564616F6C7075;
        v15 = 0x6F656469762DLL;
        goto LABEL_37;
      case 13:
        v13 = 0xED0000736C656261;
        if (v10 != 0x6C2D64726F636572)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 14:
        v14 = 0x702D6C6169636F73;
        v15 = 0x656C69666F72;
LABEL_37:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v10 != v14)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 15:
        v13 = 0xE900000000000073;
        if (v10 != 0x7473696C79616C70)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v10 != v12)
        {
          goto LABEL_48;
        }

LABEL_47:
        if (v9 != v13)
        {
LABEL_48:
          v18 = sub_ABB3C0();

          if (v18)
          {
            goto LABEL_56;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return 16;
          }

          continue;
        }

LABEL_56:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v2;
        v23 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25D68();
          v21 = v23;
        }

        v19 = *(*(v21 + 48) + v7);
        sub_2F1BC4(v7);
        *v2 = v23;
        return v19;
    }
  }
}

uint64_t sub_2EFB70(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  sub_ABB5C0();
  sub_ABA7A0();
  v34 = a2;
  v7 = a2;
  v8 = v6;
  sub_1BDE98(v7);
  sub_AB93F0();

  v9 = sub_ABB610();
  v10 = v6 + 56;
  v11 = -1 << *(v6 + 32);
  v12 = v9 & ~v11;
  if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v33 = v2;
  v13 = ~v11;
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  while (2)
  {
    v14 = *(v8 + 48) + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *v14;
    if ((sub_ABA790() & 1) == 0)
    {

      goto LABEL_4;
    }

    v17 = v8;
    v18 = a1;
    v19 = 0xEA00000000007365;
    v20 = 0x6974697669746361;
    v21 = 0x6974697669746361;
    switch(v15)
    {
      case 1:
        v19 = 0xE600000000000000;
        v21 = 0x736D75626C61;
        break;
      case 2:
        v19 = 0xE700000000000000;
        v21 = 0x73747369747261;
        break;
      case 3:
        v19 = 0xE800000000000000;
        v21 = 0x73726F7461727563;
        break;
      case 4:
        v19 = 0xE500000000000000;
        v21 = 0x73676E6F73;
        break;
      case 5:
        v19 = 0xE800000000000000;
        v21 = 0x736E6F6974617473;
        break;
      case 6:
        v21 = 0x75632D656C707061;
        v19 = 0xEE0073726F746172;
        break;
      case 7:
        v21 = 0x6169726F74696465;
        v19 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v21 = 0x6F6D2D636973756DLL;
        v22 = 1936025974;
        goto LABEL_22;
      case 9:
        v21 = 0x69762D636973756DLL;
        v22 = 1936680292;
LABEL_22:
        v19 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v21 = 0x6F736970652D7674;
        v19 = 0xEB00000000736564;
        break;
      case 11:
        v19 = 0xE800000000000000;
        v21 = 0x73776F68732D7674;
        break;
      case 12:
        v21 = 0x646564616F6C7075;
        v19 = 0xEF736F656469762DLL;
        break;
      case 13:
        v21 = 0x6C2D64726F636572;
        v19 = 0xED0000736C656261;
        break;
      case 14:
        v21 = 0x702D6C6169636F73;
        v19 = 0xEF73656C69666F72;
        break;
      case 15:
        v21 = 0x7473696C79616C70;
        v19 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v23 = 0xEA00000000007365;
    switch(v34)
    {
      case 1:
        v23 = 0xE600000000000000;
        if (v21 == 0x736D75626C61)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      case 2:
        v23 = 0xE700000000000000;
        if (v21 != 0x73747369747261)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 3:
        v23 = 0xE800000000000000;
        if (v21 != 0x73726F7461727563)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 4:
        v23 = 0xE500000000000000;
        if (v21 != 0x73676E6F73)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 5:
        v23 = 0xE800000000000000;
        if (v21 != 0x736E6F6974617473)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 6:
        v23 = 0xEE0073726F746172;
        if (v21 != 0x75632D656C707061)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 7:
        v24 = 0x6169726F74696465;
        v25 = 0x6D6574692D6CLL;
        goto LABEL_40;
      case 8:
        v26 = 0x6F6D2D636973756DLL;
        v27 = 1936025974;
        goto LABEL_54;
      case 9:
        v26 = 0x69762D636973756DLL;
        v27 = 1936680292;
LABEL_54:
        v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v21 != v26)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 10:
        v20 = 0x6F736970652D7674;
        v23 = 0xEB00000000736564;
        goto LABEL_49;
      case 11:
        v23 = 0xE800000000000000;
        if (v21 != 0x73776F68732D7674)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 12:
        v24 = 0x646564616F6C7075;
        v25 = 0x6F656469762DLL;
        goto LABEL_40;
      case 13:
        v23 = 0xED0000736C656261;
        if (v21 != 0x6C2D64726F636572)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 14:
        v24 = 0x702D6C6169636F73;
        v25 = 0x656C69666F72;
LABEL_40:
        v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v21 != v24)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 15:
        v23 = 0xE900000000000073;
        if (v21 != 0x7473696C79616C70)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v21 != v20)
        {
          goto LABEL_51;
        }

LABEL_50:
        if (v19 != v23)
        {
LABEL_51:
          v28 = sub_ABB3C0();

          a1 = v18;
          v8 = v17;
          if (v28)
          {
            goto LABEL_58;
          }

LABEL_4:
          v12 = (v12 + 1) & v13;
          if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

LABEL_58:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *v3;
        v35 = *v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25C04();
          v31 = v35;
        }

        v32 = *(*(v31 + 48) + 16 * v12);
        sub_2F1FB0(v12);
        result = v32;
        *v33 = v35;
        return result;
    }
  }
}

uint64_t sub_2F0214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  v36 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v34 - v5;
  v34 = v2;
  v7 = *v2;
  sub_ABB5C0();
  v42 = *a1;
  sub_ABA7A0();
  v41 = *(a1 + 8);
  sub_1BDE98(v41);
  sub_AB93F0();

  v39 = v4;
  v8 = *(v4 + 40);
  sub_AB3430();
  sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v37 = v8;
  v38 = a1;
  sub_AB90E0();
  v9 = sub_ABB610();
  v10 = v7 + 56;
  v43 = v7;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return (*(v36 + 56))(v35, 1, 1, v39);
  }

  v13 = ~v11;
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  v14 = *(v36 + 72);
  v15 = &unk_DFEEE0;
  v40 = v14;
  while (1)
  {
    v16 = v14 * v12;
    sub_15F84(*(v43 + 48) + v14 * v12, v6, v15, &qword_AF7AF0);
    if (sub_ABA790())
    {
      break;
    }

LABEL_5:
    sub_12E1C(v6, v15, &qword_AF7AF0);
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return (*(v36 + 56))(v35, 1, 1, v39);
    }
  }

  v17 = v15;
  v18 = 0xEA00000000007365;
  v19 = 0x6974697669746361;
  switch(v6[8])
  {
    case 1:
      v18 = 0xE600000000000000;
      v19 = 0x736D75626C61;
      break;
    case 2:
      v18 = 0xE700000000000000;
      v19 = 0x73747369747261;
      break;
    case 3:
      v18 = 0xE800000000000000;
      v19 = 0x73726F7461727563;
      break;
    case 4:
      v18 = 0xE500000000000000;
      v19 = 0x73676E6F73;
      break;
    case 5:
      v18 = 0xE800000000000000;
      v19 = 0x736E6F6974617473;
      break;
    case 6:
      v19 = 0x75632D656C707061;
      v18 = 0xEE0073726F746172;
      break;
    case 7:
      v19 = 0x6169726F74696465;
      v18 = 0xEF736D6574692D6CLL;
      break;
    case 8:
      v19 = 0x6F6D2D636973756DLL;
      v20 = 1936025974;
      goto LABEL_23;
    case 9:
      v19 = 0x69762D636973756DLL;
      v20 = 1936680292;
LABEL_23:
      v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 10:
      v19 = 0x6F736970652D7674;
      v18 = 0xEB00000000736564;
      break;
    case 11:
      v18 = 0xE800000000000000;
      v19 = 0x73776F68732D7674;
      break;
    case 12:
      v19 = 0x646564616F6C7075;
      v18 = 0xEF736F656469762DLL;
      break;
    case 13:
      v19 = 0x6C2D64726F636572;
      v18 = 0xED0000736C656261;
      break;
    case 14:
      v19 = 0x702D6C6169636F73;
      v18 = 0xEF73656C69666F72;
      break;
    case 15:
      v19 = 0x7473696C79616C70;
      v18 = 0xE900000000000073;
      break;
    default:
      break;
  }

  v21 = v10;
  v22 = 0x6974697669746361;
  v23 = 0xEA00000000007365;
  switch(v41)
  {
    case 1:
      v23 = 0xE600000000000000;
      if (v19 == 0x736D75626C61)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    case 2:
      v23 = 0xE700000000000000;
      if (v19 != 0x73747369747261)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 3:
      v23 = 0xE800000000000000;
      if (v19 != 0x73726F7461727563)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 4:
      v23 = 0xE500000000000000;
      if (v19 != 0x73676E6F73)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 5:
      v23 = 0xE800000000000000;
      if (v19 != 0x736E6F6974617473)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 6:
      v23 = 0xEE0073726F746172;
      if (v19 != 0x75632D656C707061)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 7:
      v24 = 0x6169726F74696465;
      v25 = 0x6D6574692D6CLL;
      goto LABEL_41;
    case 8:
      v26 = 0x6F6D2D636973756DLL;
      v27 = 1936025974;
      goto LABEL_55;
    case 9:
      v26 = 0x69762D636973756DLL;
      v27 = 1936680292;
LABEL_55:
      v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v19 != v26)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 10:
      v22 = 0x6F736970652D7674;
      v23 = 0xEB00000000736564;
      goto LABEL_50;
    case 11:
      v23 = 0xE800000000000000;
      if (v19 != 0x73776F68732D7674)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 12:
      v24 = 0x646564616F6C7075;
      v25 = 0x6F656469762DLL;
      goto LABEL_41;
    case 13:
      v23 = 0xED0000736C656261;
      if (v19 != 0x6C2D64726F636572)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 14:
      v24 = 0x702D6C6169636F73;
      v25 = 0x656C69666F72;
LABEL_41:
      v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
      if (v19 != v24)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 15:
      v23 = 0xE900000000000073;
      if (v19 != 0x7473696C79616C70)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    default:
LABEL_50:
      if (v19 != v22)
      {
        goto LABEL_52;
      }

LABEL_51:
      if (v18 == v23)
      {

        v10 = v21;
        v15 = v17;
        v14 = v40;
      }

      else
      {
LABEL_52:
        v28 = sub_ABB3C0();

        v10 = v21;
        v15 = v17;
        v14 = v40;
        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ((sub_AB33E0() & 1) == 0)
      {
        goto LABEL_5;
      }

      sub_12E1C(v6, &unk_DFEEE0, &qword_AF7AF0);
      v30 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v30;
      v44 = *v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25D7C();
        v32 = v44;
      }

      v33 = v35;
      sub_36B0C(*(v32 + 48) + v16, v35, &unk_DFEEE0, &qword_AF7AF0);
      sub_2F23C4(v12);
      *v30 = v44;
      result = (*(v36 + 56))(v33, 0, 1, v39);
      break;
  }

  return result;
}

uint64_t sub_2F0A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2F587C(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v31 = a1;
  v10 = sub_AB90D0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_2F587C(&qword_DF7940, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v19 = sub_AB91C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F68();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2F2934(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_2F0D00(unsigned __int8 a1)
{
  v3 = *v1;
  sub_ABB5C0();
  v4 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v4 = a1;
  }

  sub_ABB5D0(v4);
  v5 = sub_ABB610();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 9;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = *(*(v3 + 48) + v7);
    if (v9 > 5)
    {
      break;
    }

    switch(v9)
    {
      case 3u:
        if (a1 == 3)
        {
          goto LABEL_26;
        }

        break;
      case 4u:
        if (a1 == 4)
        {
          goto LABEL_26;
        }

        break;
      case 5u:
        if (a1 == 5)
        {
          goto LABEL_26;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_6:
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 9;
    }
  }

  switch(v9)
  {
    case 6u:
      if (a1 == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    case 7u:
      if (a1 == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    case 8u:
      if (a1 == 8)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
  }

LABEL_20:
  if ((a1 - 9) > 0xF9u || v9 != a1)
  {
    goto LABEL_6;
  }

LABEL_26:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24FF8();
    v11 = v14;
  }

  v12 = *(*(v11 + 48) + v7);
  sub_2F2C40(v7);
  result = v12;
  *v1 = v14;
  return result;
}

void sub_2F0ECC(_OWORD *a2@<X8>)
{
  v4 = *v2;
  sub_ABB5C0();
  sub_AB93F0();
  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = (*(v4 + 48) + 240 * v7);
      v11 = v9[1];
      v10 = v9[2];
      v34 = *v9;
      v35 = v11;
      v36 = v10;
      v12 = v9[3];
      v13 = v9[4];
      v14 = v9[6];
      v39 = v9[5];
      v40 = v14;
      v37 = v12;
      v38 = v13;
      v15 = v9[7];
      v16 = v9[8];
      v17 = v9[10];
      v43 = v9[9];
      v44 = v17;
      v41 = v15;
      v42 = v16;
      v18 = v9[11];
      v19 = v9[12];
      v20 = v9[14];
      v47 = v9[13];
      v48 = v20;
      v45 = v18;
      v46 = v19;
      sub_ABB5C0();
      sub_2B990(&v34, v33);
      sub_AB93F0();
      v21 = sub_ABB610();
      sub_ABB5C0();
      sub_AB93F0();
      v22 = sub_ABB610();
      sub_2B9EC(&v34);
      if (v21 == v22)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v32;
    v33[0] = *v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26448();
      v31 = v33[0];
    }

    memmove(a2, (*(v31 + 48) + 240 * v7), 0xF0uLL);
    sub_2F2E04(v7);
    *v32 = v33[0];
    UIScreen.Dimensions.size.getter();
  }

  else
  {
LABEL_5:
    sub_2F58C4(&v34);
    v23 = v47;
    a2[12] = v46;
    a2[13] = v23;
    a2[14] = v48;
    v24 = v43;
    a2[8] = v42;
    a2[9] = v24;
    v25 = v45;
    a2[10] = v44;
    a2[11] = v25;
    v26 = v39;
    a2[4] = v38;
    a2[5] = v26;
    v27 = v41;
    a2[6] = v40;
    a2[7] = v27;
    v28 = v35;
    *a2 = v34;
    a2[1] = v28;
    v29 = v37;
    a2[2] = v36;
    a2[3] = v29;
  }
}

uint64_t sub_2F10F8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 3;
  }

  v19 = v1;
  v8 = ~v6;
  while (!*(*(v4 + 48) + v7))
  {
    v10 = 0xE300000000000000;
    v9 = 7105633;
    v11 = a1;
    if (a1)
    {
      goto LABEL_11;
    }

LABEL_7:
    v12 = 0xE300000000000000;
    if (v9 == 7105633)
    {
      goto LABEL_15;
    }

LABEL_16:
    v14 = sub_ABB3C0();

    if (v14)
    {
      goto LABEL_20;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 3;
    }
  }

  if (*(*(v4 + 48) + v7) == 1)
  {
    v9 = 0x657469726F766166;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  v10 = 0xE900000000000073;
  v11 = a1;
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v11 == 1)
  {
    v13 = 0x657469726F766166;
  }

  else
  {
    v13 = 0x64616F6C6E776F64;
  }

  v12 = 0xE900000000000073;
  if (v9 != v13)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (v10 != v12)
  {
    goto LABEL_16;
  }

LABEL_20:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_265F8();
    v17 = v20;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_2F3020(v7);
  *v19 = v20;
  return v15;
}

uint64_t sub_2F1328(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_ABAC50();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1D5D8(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_ABA780(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_ABA790();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_2F1490(v10);
  result = sub_ABA790();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2F1490(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_ABA780(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_2F1630(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v28 = v4;
      do
      {
        v11 = v2;
        v12 = v9;
        v13 = 24 * v6;
        v14 = v3;
        v15 = *(v3 + 48) + 24 * v6;
        v17 = *v15;
        v16 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_ABB5C0();
        if (v18)
        {
          sub_ABB5D0(1uLL);
          v19 = v17;
          sub_ABA7A0();
        }

        else
        {
          sub_ABB5D0(0);

          sub_AB93F0();
        }

        v20 = sub_ABB610();
        sub_13CC8(v17, v16, v18);
        v21 = v20 & v7;
        v9 = v12;
        v2 = v11;
        if (v11 >= v9)
        {
          v4 = v28;
          v3 = v14;
          if (v21 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v28;
          v3 = v14;
          if (v21 >= v9)
          {
            goto LABEL_14;
          }
        }

        if (v2 >= v21)
        {
LABEL_14:
          v22 = *(v3 + 48);
          v23 = v22 + 24 * v2;
          v24 = (v22 + v13);
          if ((24 * v2) < v13 || v23 >= v24 + 24 || v2 != v6)
          {
            v10 = *v24;
            *(v23 + 16) = *(v24 + 2);
            *v23 = v10;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }
}

void sub_2F187C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_ABB5B0() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_2F1A00(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();

        sub_AB93F0();
        v10 = sub_ABB610();

        v11 = v10 & v7;
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
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_2F1BC4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();
        sub_AB93F0();

        v10 = sub_ABB610() & v7;
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
          v12 = (v11 + v2);
          v13 = (v11 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x2F1F70);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
}

void sub_2F1FB0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(*(v3 + 48) + 16 * v6);
        sub_ABB5C0();
        v12 = v11;
        sub_ABA7A0();
        sub_AB93F0();

        v13 = sub_ABB610();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    JUMPOUT(0x2F2384);
  }

  *(v3 + 16) = v20;
  ++*(v3 + 36);
}

void sub_2F23C4(unint64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  v3 = *(v25 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = a1;
    v12 = sub_ABABD0();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v23 = v7;
      v24 = (v12 + 1) & v10;
      v13 = *(v3 + 72);
      v22 = v13;
      while (1)
      {
        v14 = v13 * v9;
        sub_15F84(*(v6 + 48) + v13 * v9, v5, &unk_DFEEE0, &qword_AF7AF0);
        sub_ABB5C0();
        sub_ABA7A0();
        sub_AB93F0();

        sub_AB3430();
        sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_AB90E0();
        v15 = sub_ABB610();
        sub_12E1C(v5, &unk_DFEEE0, &qword_AF7AF0);
        v16 = v15 & v10;
        if (v11 >= v24)
        {
          break;
        }

        v13 = v22;
        if (v16 < v24)
        {
          goto LABEL_11;
        }

LABEL_12:
        v17 = v13 * v11;
        if (v13 * v11 < v14 || *(v6 + 48) + v13 * v11 >= (*(v6 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v11 = v9;
          if (v17 == v14)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v11 = v9;
LABEL_6:
        v9 = (v9 + 1) & v10;
        v7 = v23;
        if (((*(v23 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v13 = v22;
      if (v16 < v24)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v11 < v16)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v11) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    JUMPOUT(0x2F28F4);
  }

  *(v6 + 16) = v20;
  ++*(v6 + 36);
}

void sub_2F2934(int64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_ABABD0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_2F587C(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v23 = sub_AB90D0();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_2F2C40(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_ABB5C0();
        v11 = v10 - 3;
        if ((v10 - 3) >= 6)
        {
          sub_ABB5D0(6uLL);
          v11 = v10;
        }

        sub_ABB5D0(v11);
        v12 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_13;
        }

        if (v2 >= v12)
        {
LABEL_13:
          v13 = *(v3 + 48);
          v14 = (v13 + v2);
          v15 = (v13 + v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_2F2E04(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 240 * v6);
        v12 = *v10;
        v11 = v10[1];
        v31[2] = v10[2];
        v13 = v10[3];
        v14 = v10[4];
        v15 = v10[6];
        v31[5] = v10[5];
        v31[6] = v15;
        v31[3] = v13;
        v31[4] = v14;
        v16 = v10[7];
        v17 = v10[8];
        v18 = v10[10];
        v31[9] = v10[9];
        v31[10] = v18;
        v31[7] = v16;
        v31[8] = v17;
        v19 = v10[11];
        v20 = v10[12];
        v21 = v10[14];
        v31[13] = v10[13];
        v31[14] = v21;
        v31[11] = v19;
        v31[12] = v20;
        v31[0] = v12;
        v31[1] = v11;
        sub_ABB5C0();
        sub_2B990(v31, v30);
        sub_AB93F0();
        v22 = sub_ABB610();
        sub_2B9EC(v31);
        v23 = v22 & v7;
        if (v2 >= v9)
        {
          if (v23 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v23 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v23)
        {
LABEL_11:
          v24 = *(v3 + 48);
          v25 = (v24 + 240 * v2);
          v26 = (v24 + 240 * v6);
          if (v2 != v6 || v25 >= v26 + 240)
          {
            memmove(v25, v26, 0xF0uLL);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }
}

void sub_2F3020(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();
        sub_AB93F0();

        v10 = sub_ABB610() & v7;
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
          v12 = (v11 + v2);
          v13 = (v11 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_2F3228(double a1, double a2, double a3, double a4)
{
  v10 = CGRectStandardize(*&a1);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v10.origin.x == 0.0)
  {
    v10.origin.x = 0.0;
  }

  sub_ABB600(*&v10.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  sub_ABB600(*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  sub_ABB600(*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  sub_ABB600(*&v9);
}

uint64_t sub_2F32C4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    v6 = v5 - 1;
    result = *(&stru_20.cmd + 8 * v6 + (v3 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s16MusicApplication13TextStackViewC9ComponentC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v14 = 1;
  }

  else
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (sub_ABB3C0()) && (swift_beginAccess(), v5 = *(a1 + 80), v19[2] = *(a1 + 64), v19[3] = v5, v19[4] = *(a1 + 96), v6 = *(a1 + 48), v19[0] = *(a1 + 32), v19[1] = v6, swift_beginAccess(), v7 = *(a2 + 80), v20[2] = *(a2 + 64), v20[3] = v7, v20[4] = *(a2 + 96), v8 = *(a2 + 48), v20[0] = *(a2 + 32), v20[1] = v8, sub_2F118(v19, v18), sub_2F118(v20, v18), v9 = _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v19, v20), sub_2F174(v20), sub_2F174(v19), (v9) && ((swift_beginAccess(), v10 = *(a1 + 112), v11 = *(a1 + 120), swift_beginAccess(), v10 == *(a2 + 112)) && v11 == *(a2 + 120) || (sub_ABB3C0()))
    {
      v12 = *(a1 + 256);
      v13 = *(a2 + 256);
      v14 = (v12 | v13) == 0;
      if (v12 && v13)
      {
        type metadata accessor for TextDrawing.View();
        v15 = v13;
        v16 = v12;
        v14 = sub_ABA790();
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_2F34EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_112854();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A094(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2F3560(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A254(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2F35D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F5940();
  result = sub_AB9B70();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      sub_2BA40(v7, v6, *v4);
      sub_1A35C(v8, v7, v6, v5);
      sub_13CC8(v8[0], v8[1], v9);
      v4 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2F3680(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_47:
    sub_ABB060();
  }

  type metadata accessor for ImpressionTracker();
  sub_2F587C(&qword_DF1270, 255, type metadata accessor for ImpressionTracker, &unk_AFF550);
  v3 = sub_AB9B70();
  if (!v2)
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return v3;
    }

LABEL_6:
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = v1 + 32;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1;
    v29 = v1 + 32;
    while (1)
    {
LABEL_7:
      v1 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v8 = v3;
      }

      v31 = v8;
      while (1)
      {
        if (v5)
        {
          v9 = sub_35FAB8(v4, v28);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_45;
          }

          v9 = *(v7 + 8 * v4);

          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        if (!v1)
        {
          v12 = v2;
          sub_ABB5C0();
          v13 = sub_127604();
          sub_ABB5D0(v13);
          v14 = sub_ABB610();
          v15 = ~(-1 << *(v3 + 32));
          for (i = v14 & v15; ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v15)
          {
            if (sub_127604() == *(v9 + 56))
            {

              v2 = v12;
              v7 = v29;
              v6 = v30;
              goto LABEL_21;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v3 + 16);
          v1 = *(v3 + 24);

          if (v1 > v2)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_252C8();
            }

            goto LABEL_36;
          }

          v18 = v2 + 1;
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_1E12C(v18);
          }

          else
          {
            sub_26DE0(v18);
          }

          sub_ABB5C0();
          sub_ABB5D0(*(v9 + 56));
          v19 = sub_ABB610();
          v1 = v3 + 56;
          v20 = -1 << *(v3 + 32);
          i = v19 & ~v20;
          if (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
LABEL_36:
            *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
            *(*(v3 + 48) + 8 * i) = v9;
            v21 = *(v3 + 16);
            v10 = __OFADD__(v21, 1);
            v22 = v21 + 1;
            if (v10)
            {
              goto LABEL_46;
            }

            *(v3 + 16) = v22;

            v2 = v12;
            v7 = v29;
            v6 = v30;
            if (v4 != v2)
            {
              goto LABEL_7;
            }

            return v3;
          }

          v2 = ~v20;
          while (sub_127604() != *(v9 + 56))
          {
            i = (i + 1) & v2;
            if (((*(v1 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

LABEL_49:
          result = sub_ABB4B0();
          __break(1u);
          return result;
        }

        v11 = sub_ABAC60();

        if (!v11)
        {
          break;
        }

        swift_unknownObjectRetain();
        swift_dynamicCast();

        swift_unknownObjectRelease();
LABEL_21:
        if (v4 == v2)
        {
          return v3;
        }
      }

      v23 = sub_ABAC50();
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v24 = sub_1D5FC(v31, v23 + 1);
      v25 = *(v24 + 16);
      if (*(v24 + 24) <= v25)
      {
        sub_1E12C(v25 + 1);
      }

      sub_2178C(v26, v24);

      v3 = v24;
      if (v4 == v2)
      {
        return v3;
      }
    }
  }

  v2 = sub_ABB060();
  if (v2)
  {
    goto LABEL_6;
  }

  return v3;
}

uint64_t sub_2F3AA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F57D4();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A904(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2F3B1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_AB9B70();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A9FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2F3BB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_2F5828();
  v12[2] = sub_AB9B70();
  v6 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7 - a2;
    v9 = (a1 + 16 * a2 + 8);
    while (v8)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 16;
      sub_1B38C(v12, v10, v11);

      --v8;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2F3C78(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F5828();
  result = sub_AB9B70();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 16;
      sub_1B38C(v7, v5, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2F3D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F5994();
  result = sub_AB9B70();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[5];
      v12[4] = v4[4];
      v12[5] = v5;
      v6 = v4[7];
      v12[6] = v4[6];
      v12[7] = v6;
      v7 = v4[1];
      v12[0] = *v4;
      v12[1] = v7;
      v8 = v4[3];
      v12[2] = v4[2];
      v12[3] = v8;
      sub_2B7BC(v12, v10);
      sub_1ADEC(v9, v12);
      v10[4] = v9[4];
      v10[5] = v9[5];
      v10[6] = v9[6];
      v10[7] = v9[7];
      v10[0] = v9[0];
      v10[1] = v9[1];
      v10[2] = v9[2];
      v10[3] = v9[3];
      sub_2B818(v10);
      v4 += 8;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2F3DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F59E8();
  result = sub_AB9B70();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 2);
      sub_2BB90(v7, v6, *v4);
      sub_1CC18(v8, v7, v6, v5);
      sub_2BBCC(v8[0], v8[1], v8[2]);
      v4 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_2F3E7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F58EC();
  result = sub_AB9B70();
  v14 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[13];
      v15[12] = v4[12];
      v15[13] = v5;
      v15[14] = v4[14];
      v6 = v4[9];
      v15[8] = v4[8];
      v15[9] = v6;
      v7 = v4[11];
      v15[10] = v4[10];
      v15[11] = v7;
      v8 = v4[5];
      v15[4] = v4[4];
      v15[5] = v8;
      v9 = v4[7];
      v15[6] = v4[6];
      v15[7] = v9;
      v10 = v4[1];
      v15[0] = *v4;
      v15[1] = v10;
      v11 = v4[3];
      v15[2] = v4[2];
      v15[3] = v11;
      sub_2B990(v15, v13);
      sub_1D014(v12, v15);
      v13[12] = v12[12];
      v13[13] = v12[13];
      v13[14] = v12[14];
      v13[8] = v12[8];
      v13[9] = v12[9];
      v13[10] = v12[10];
      v13[11] = v12[11];
      v13[4] = v12[4];
      v13[5] = v12[5];
      v13[6] = v12[6];
      v13[7] = v12[7];
      v13[0] = v12[0];
      v13[1] = v12[1];
      v13[2] = v12[2];
      v13[3] = v12[3];
      sub_2B9EC(v13);
      v4 += 15;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

void sub_2F3F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v9 = *(a1 + 16);
    sub_2F118(a1, aBlock);
    v10 = v9(a2, a3);
    v11 = [v10 length];
    if (v11 < 1)
    {
    }

    else
    {
      v12 = v11;
      v17 = 0;
      v18 = 0;
      v13 = swift_allocObject();
      *(v13 + 16) = &v17;
      *(v13 + 24) = &v18;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_18BC3C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_18BC40;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_114_0;
      v15 = _Block_copy(aBlock);

      [v10 enumerateAttribute:NSFontAttributeName inRange:0 options:v12 usingBlock:{0, v15, v17}];
      _Block_release(v15);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        __break(1u);
      }

      else
      {
        v16 = v18;

        if (v16)
        {
          [v16 _scaledValueForValue:*(a1 + 64)];
          [v16 ascender];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v4 = *(a1 + 48);
    sub_2F118(a1, aBlock);
    v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];
    if (v5)
    {
      v6 = v5;

      v4 = v6;
    }

    [v4 _scaledValueForValue:*(a1 + 64)];
    [v4 ascender];

    sub_2F174(a1);
  }
}

void sub_2F4268(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  v2 = sub_AB9320();
  v4 = v3;
  if ((*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
    v7 = v2;
    sub_2F118(a1, aBlock);
    v8 = v6(v7, v4);
    v9 = [v8 length];
    if (v9 < 1)
    {
    }

    else
    {
      v10 = v9;
      v14 = 0;
      v15 = 0;
      v11 = swift_allocObject();
      *(v11 + 16) = &v14;
      *(v11 + 24) = &v15;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_18BC3C;
      *(v12 + 24) = v11;
      aBlock[4] = sub_18BC40;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_103;
      v13 = _Block_copy(aBlock);

      [v8 enumerateAttribute:NSFontAttributeName inRange:0 options:v10 usingBlock:{0, v13}];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    v5 = *(a1 + 48);
    sub_2F118(a1, aBlock);
    if ([v5 _fontAdjustedForCurrentContentSizeCategory])
    {
    }

    sub_2F174(a1);
  }
}